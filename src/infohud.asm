; =======================================================
; InfoHUD timers and stuff
; =======================================================

org $809490
    JMP $9497    ; skip resetting player 2 inputs

org $8094DF
    PLP          ; patch out resetting of controller 2 buttons and enable debug mode
    RTL

org $8095FC      ; hijack, end of NMI routine to update realtime frames
    JML ih_nmi_end

org $809609      ; inc counter if NMI lag branch
    INC !REALTIME_LAG_COUNTER

org $809DFD
hook_start_escape_timers:
    dw #ih_set_ceres_timer
    dw #ih_set_zebes_timer

if !FEATURE_VANILLAHUD
else
org $809B48      ; hijack, HUD routine (game timer by Quote58)
    JSL ih_hud_code

org $80A16B      ; hijack, adjust room times and update HUD when unpausing
    JSL ih_unpause
endif

org $80ADB5      ; fix for scroll offset misalignment when going down through door
    JSR ih_fix_scroll_down_offsets

org $80AE29      ; fix for scroll offset misalignment
    JSR ih_fix_scroll_offsets

org $828B4B      ; optional debug functions
    JML ih_debug_routine

org $90BEBF
    JML infidoppler_hook_fire_missile

if !FEATURE_PAL
org $A09CD8
else
org $A09CC8
endif
    JSL infidoppler_hook_projectile_collision
    NOP : NOP

if !FEATURE_VANILLAHUD
; skip the rest of the hijacks if Vanilla HUD build
else
org $828B34      ; reset room timers for first room of Ceres
    JML ceres_start_timers

org $828B3A
ceres_start_timers_return:

org $8290F6      ; hijack, HUD routine while paused
    JSL ih_hud_code_paused

org $82DBB2      ; hijack, runs when in-game time is ticked
    JML ih_gamemode_frame

org $82E764      ; hijack, runs when Samus is coming out of a room transition
    JSL ih_after_room_transition
    RTS

org $82EE92      ; runs on START GAME
    JSL startgame_seg_timer

org $84889F      ; hijack, runs every time an item is picked up
    JSL ih_get_item_code

org $89AD0A      ; update timers when Samus escapes Ceres
    JSL ih_ceres_elevator_segment

org $90D340      ; update timers when shinespark bonk sound plays
    JSL ih_shinespark_segment

if !FEATURE_PAL
org $90F1E1
else             ; hijack, runs when an elevator is activated
org $90F1E4
endif
    JSL ih_elevator_activation

if !FEATURE_PAL
org $91DA3D
else             ; hijack, runs after a shinespark has been charged
org $91DAD8
endif
    JSL ih_shinespark_code

org $9493B8      ; hijack, runs when Samus hits a door BTS
    JSL ih_before_room_transition

org $9493FB      ; hijack, runs when Samus hits a door BTS
    JSL ih_before_room_transition

if !FEATURE_PAL
org $A0B937
else             ; update timers when Ridley drops spawn
org $A0B9D4
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BA17
else             ; update timers when Crocomire drops spawn
org $A0BA07
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BA4A
else             ; update timers when Phantoon drops spawn
org $A0BA3A
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BA7D
else             ; update timers when Botwoon drops spawn
org $A0BA6D
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BAB0
else             ; update timers when Kraid drops spawn
org $A0BAA0
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BAE3
else             ; update timers when Bomb Torizo drops spawn
org $A0BAD3
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BB16
else             ; update timers when Golden Torizo drops spawn
org $A0BB06
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BB49
else             ; update timers when Spore Spawn drops spawn
org $A0BB39
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BB7C
else             ; update timers when Draygon drops spawn
org $A0BB6C
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A2AA38
else             ; update timers when Samus enters ship
org $A2AA20
endif
    JSL ih_ship_elevator_segment

if !FEATURE_PAL
org $A490BD
else             ; hijack, runs on music changes during Crocomire fight
org $A490AD
endif
    JSL ih_croc_segments

if !FEATURE_PAL
org $A497F0
else             ; hijack, runs on music changes during Crocomire fight
org $A497E0
endif
    JSL ih_croc_segments

if !FEATURE_PAL
org $A9F053
else             ; hijack, runs when the screen locks to start the hopper/baby cutscene
org $A9F006
endif
    JSL ih_babyskip_segment

if !FEATURE_PAL
org $A98884
else             ; update timers after MB1 fight
org $A98874
endif
    JSL ih_mb1_segment

if !FEATURE_PAL
org $A9B657
else             ; update timers when MB2's health is depleted
org $A9B60A
endif
    JML ih_mb2_segment_dead

if !FEATURE_PAL
org $A9BE70
else             ; update timers when baby spawns (off-screen) in MB2 fight
org $A9BE23
endif
    JSL ih_mb2_segment_rainbow

if !FEATURE_PAL
org $AAE592
else             ; update timers when statue grabs Samus
org $AAE582
endif
    JSL ih_chozo_segment
endif ; !FEATURE_VANILLAHUD


; Main bank stuff
%startfree(F0)

; List this first since it affects bank $84 where we are trying to minimize change
ih_get_item_code:
{
    PHA
    LDA !ram_timers_autoupdate : BNE .done

    ; calculate lag frames
    LDA !ram_realtime_room : SEC : SBC !ram_transition_counter : STA !ram_last_room_lag

    LDA !ram_gametime_room : STA !ram_last_gametime_room
    LDA !ram_realtime_room : STA !ram_last_realtime_room

    ; save temp variables
    LDA $12 : PHA
    LDA $14 : PHA

    ; check if segment timer should be reset
    LDA !ram_reset_segment_later : BPL .fanfare_timing
    LDA !sram_frame_counter_mode : BEQ .reset_RTA
    STZ !IGT_FRAMES : STZ !IGT_SECONDS
    STZ !IGT_MINUTES : STZ !IGT_HOURS

  .reset_RTA
    TDC : STA !ram_reset_segment_later : STA !ram_lag_counter
    STA !ram_seg_rt_frames : STA !ram_seg_rt_seconds : STA !ram_seg_rt_minutes

  .fanfare_timing
    PHY
    LDY #$0148 : JSL ih_adjust_realtime
    PLY
if !FEATURE_VANILLAHUD
else
    JSL ih_update_hud_code
endif
    JSL init_heat_damage_ram
    JSL init_physics_ram

    ; restore temp variables
    PLA : STA $14
    PLA : STA $12

  .done
    PLA
    JML $80818E ; overwritten code
}

ih_debug_routine:
{
    LDA !DEBUG_MODE : BNE .enabled
    JML $828B54 ; return past debug handler

  .enabled
    JSL $B49809 ; Debug handler
    JML $828B4F ; return
}

ih_nmi_end:
{
if !FEATURE_VANILLAHUD
else
    ; Room timer
    LDA !ram_realtime_room : INC : STA !ram_realtime_room

    ; Segment real timer
    LDA !ram_seg_rt_frames : INC : STA !ram_seg_rt_frames : CMP !FRAMERATE : BNE .doneTimer
    TDC : STA !ram_seg_rt_frames
    LDA !ram_seg_rt_seconds : INC : STA !ram_seg_rt_seconds : CMP #$003C : BNE .doneTimer
    TDC : STA !ram_seg_rt_seconds
    LDA !ram_seg_rt_minutes : INC : STA !ram_seg_rt_minutes
endif

    ; Slowdown / Pause / Frame Advance on P2 Dpad
  .doneTimer
    LDA !ram_slowdown_mode : BNE .slowdown
    JMP .done

  .slowdown
    CMP #$FFFF : BEQ .pause
    LDA !ram_slowdown_frames : BNE .delay

    ; reset slowdown timer and restore previous inputs
    LDA !ram_slowdown_mode : STA !ram_slowdown_frames
    LDA !ram_slowdown_controller_1 : STA !IH_CONTROLLER_PRI_PREV
    LDA !ram_slowdown_controller_2 : STA !IH_CONTROLLER_SEC_PREV

    JSL $809459 ; Read controller input
    JMP .done

  .delay
    CMP !ram_slowdown_mode : BNE .decTimer

    ; we just ran a new frame, store previous inputs
    LDA !IH_CONTROLLER_PRI : EOR !IH_CONTROLLER_PRI_NEW : STA !ram_slowdown_controller_1
    LDA !IH_CONTROLLER_SEC : EOR !IH_CONTROLLER_SEC_NEW : STA !ram_slowdown_controller_2

    LDA !ram_slowdown_frames

  .decTimer
    DEC : STA !ram_slowdown_frames

    ; request a lag frame
    %a8() : LDA #$01 : STA !NMI_REQUEST_FLAG : %a16()
    JMP .done

  .pause
    ; TODO make pause work properly
    ; LDA !IH_CONTROLLER_PRI : CMP !sram_ctrl_menu : BNE .noMenu
    ; LDA !IH_PAUSE : STA !IH_CONTROLLER_SEC_NEW
    BRA .frameAdvance

  .noMenu
    LDA !ram_slowdown_frames : BNE .checkFrameAdvance
    ; remain paused, store inputs
    INC : STA !ram_slowdown_frames

  .storeInputs
    LDA !IH_CONTROLLER_PRI : EOR !IH_CONTROLLER_PRI_NEW : STA !ram_slowdown_controller_1
    LDA !IH_CONTROLLER_SEC : EOR !IH_CONTROLLER_SEC_NEW : STA !ram_slowdown_controller_2

  .checkFrameAdvance
    ; TODO make resume work properly
    ; LDA !IH_CONTROLLER_SEC_NEW : CMP !IH_PAUSE : BEQ .frameAdvance
    ; CMP !IH_RESET : BNE .checkFreezeOnLoad
    ; resume normal play
    TDC : STA !ram_slowdown_mode : STA !ram_slowdown_frames
    BRA .done

  .checkFreezeOnLoad
    ; option to pause on loadstate
    LDA !ram_freeze_on_load : BEQ .frozen
    LDA !IH_CONTROLLER_PRI_NEW : BEQ .frozen
    ; unfreeze
    TDC : STA !ram_slowdown_mode : STA !ram_slowdown_frames
if !FEATURE_SD2SNES
    LDA !SRAM_SEG_TIMER_F : STA !ram_seg_rt_frames
    LDA !SRAM_SEG_TIMER_S : STA !ram_seg_rt_seconds
    LDA !SRAM_SEG_TIMER_M : STA !ram_seg_rt_minutes
else
    STA !ram_seg_rt_frames
    STA !ram_seg_rt_seconds
    STA !ram_seg_rt_minutes
endif
    BRA .done

  .frozen
    ; request a lag frame
    %a8() : LDA #$01 : STA !NMI_REQUEST_FLAG : %a16()
    BRA .done

  .frameAdvance
    ; run a new frame
    TDC : STA !ram_slowdown_frames
    LDA !ram_slowdown_controller_1 : STA !IH_CONTROLLER_PRI_PREV
    LDA !ram_slowdown_controller_2 : STA !IH_CONTROLLER_SEC_PREV
    JSL $809459 ; Read controller input

  .done
    PLY : PLX : PLA
    PLD : PLB
    RTI
}

ih_gamemode_frame:
{
    LDA !ram_gametime_room : INC : STA !ram_gametime_room

    ; overwritten code + return
    LDA !IGT_FRAMES : CLC
    JML $82DBB6
}

if !FEATURE_VANILLAHUD
else
ih_after_room_transition:
{
    ; update last door times
    LDA !ram_transition_counter : STA !ram_last_door_lag_frames
    LDA !ram_realtime_room : STA !ram_last_realtime_door

    ; clear transition variables
    TDC : STA !ram_transition_flag : STA !ram_lag_counter
    STA !REALTIME_LAG_COUNTER ; for lagcounter HUD mode

    ; Check if MBHP needs to be disabled
    LDA !sram_display_mode : CMP !IH_MODE_ROOMSTRAT_INDEX : BNE .segmentTimer
    LDA !sram_room_strat : CMP !IH_STRAT_MBHP_INDEX : BNE .segmentTimer
    LDA !ROOM_ID : CMP.w #ROOM_MotherBrainRoom : BEQ .segmentTimer
    TDC : STA !sram_display_mode

  .segmentTimer
    LDA !ram_reset_segment_later : AND #$0001 : BEQ .updateHud
    TDC : STA !ram_reset_segment_later : STA !ram_lag_counter
    STA !ram_seg_rt_frames : STA !ram_seg_rt_seconds : STA !ram_seg_rt_minutes

  .updateHud
    JSL ih_update_hud_code

    ; Reset realtime and gametime/transition timers
    TDC : STA !ram_realtime_room : STA !ram_transition_counter

    LDA !ram_kraid_adjust_timer : BEQ .skipKraidTimer
if !FEATURE_PAL
    LDY #$00F9
else
    LDY #$012B
endif
    JSL ih_adjust_realtime
    TDC : STA !ram_kraid_adjust_timer

  .skipKraidTimer
    JSL init_heat_damage_ram
    JSL init_physics_after_transition

    ; original hijacked code
    LDA #$0008 : STA !GAMEMODE
    RTL
}

ih_before_room_transition:
{
    STA !GAMEMODE ; overwritten code

    ; Check if we've already run on this frame
    LDA !ram_transition_flag : BEQ .firstRun
    CLC ; overwritten code
    RTL

  .firstRun
    ; Lag
    LDA !ram_realtime_room : SEC : SBC !ram_transition_counter : STA !ram_last_room_lag

    ; Room timers
    LDA !ram_gametime_room : STA !ram_last_gametime_room
    LDA !ram_realtime_room : STA !ram_last_realtime_room

    ; Reset variables
    TDC : STA !ram_room_has_set_rng
    STA !ram_transition_counter : STA !ram_gametime_room
    STA !ram_realtime_room : STA !ram_last_realtime_door
    INC : STA !ram_transition_flag

    ; Save temp variables
    LDA $12 : PHA
    LDA $14 : PHA

    ; Update HUD
    JSL ih_update_hud_before_transition

    ; Calculate door alignment time
    LDX !DOOR_ID : AND #$00FF
    %a8() ; Draw3 returns a16
    LDA $830003,X : BIT #$02 : BNE .verticalDoor
    LDA !LAYER1_Y : BRA .checkAlignment
  .verticalDoor
    LDA !LAYER1_X
  .checkAlignment
    BPL .drawDoorLag
    EOR #$FF : INC
  .drawDoorLag
    TAY ; preserve A
    PHB : LDA #$80 : PHA : PLB
    LDX #$00C2
    LDA !sram_top_display_mode : BIT.b !TOP_HUD_VANILLA_BIT : BNE .vanillaDoorLag
    LDA !ram_minimap : BEQ .draw3
    LDX #$0054
  .draw3
    TYA : JSR Draw3

  .doorDisplay
    %a16()
    ; Door HUD mode can only overwrite Enemy HP
    LDA !sram_display_mode : BNE .done
    LDA !sram_door_display_mode : BEQ .done
    ASL : TAX
    JSR (.doorDisplayTable,X)
    ; Suppress Enemy HP display
    LDA !ENEMY_HP : STA !ram_enemy_hp

  .done
    PLB

    ; Restore temp variables
    PLA : STA $14
    PLA : STA $12

    CLC ; overwritten code
    RTL

  .vanillaDoorLag
    LDA !ram_minimap : BNE .doorDisplay
    TYA : JSR Draw2
    BRA .doorDisplay

  .doorDisplayTable
    dw #$0000 ; off/dummy
    dw status_door_hspeed
    dw status_door_vspeed
    dw status_door_chargetimer
    dw status_door_shinetimer
    dw status_door_dashcounter
    dw status_door_xpos
    dw status_door_ypos
}
endif ; !FEATURE_VANILLAHUD

ceres_start_timers:
{
    TDC : STA !ram_realtime_room : STA !ram_last_realtime_room
    STA !ram_gametime_room : STA !ram_last_gametime_room
    STA !ram_last_room_lag : STA !ram_last_door_lag_frames : STA !ram_transition_counter

    ; overwritten code
    STZ !SCREEN_FADE_DELAY : STZ !SCREEN_FADE_COUNTER
if !FEATURE_VANILLAHUD
else
    JML ceres_start_timers_return
endif
}

if !FEATURE_VANILLAHUD
else
ih_unpause:
; Adds frames when unpausing (nmi is turned off during vram transfers)
{
    ; RT room
    LDA !ram_realtime_room : CLC : ADC #$0029 : STA !ram_realtime_room

    ; RT seg
    LDA !ram_seg_rt_frames : CLC : ADC #$0029 : STA !ram_seg_rt_frames
    CMP !FRAMERATE : BCC .updateHUD
    SEC : SBC !FRAMERATE : STA !ram_seg_rt_frames

    LDA !ram_seg_rt_seconds : INC : STA !ram_seg_rt_seconds
    CMP #$003C : BCC .updateHUD
    TDC : STA !ram_seg_rt_seconds

    LDA !ram_seg_rt_minutes : INC : STA !ram_seg_rt_minutes

  .updateHUD
    JSL ih_update_hud_early

    ; Replace overwritten logic to enable NMI
    JML $80834B
}

ih_elevator_activation:
{
    PHA
    ; Only update if we're in a room and activate an elevator.
    ; Otherwise this will also run when you enter a room already riding one.
    LDA !GAMEMODE : CMP #$0008 : BNE .done
    LDA !ram_timers_autoupdate : BNE .done

    JSL ih_update_hud_early

  .done
    PLA
    STZ !SAMUS_BOMB_JUMP_DIRECTION
    SEC
    RTL
}

ih_babyskip_segment:
{
    ; runs when the screen locks to start the hopper/baby cutscene
    STA $7ECD22 ; overwritten code
    JSL ih_update_hud_early
    RTL
}

ih_mb1_segment:
{
    ; runs during MB1 cutscene when you regain control of Samus, just before music change
if !FEATURE_PAL
    JSL $90F081
else            ; overwritten code
    JSL $90F084
endif

    TDC : STA !DAMAGE_COUNTER
    JML ih_update_hud_early
}

ih_mb2_segment_dead:
{
    ; runs when MB2 realizes she has zero HP
    JSL ih_update_hud_early
    ; overwritten code
if !FEATURE_PAL
    LDA #$B938 : STA !ENEMY_FUNCTION_POINTER
    JML $A9B938
else
    LDA #$B8EB : STA !ENEMY_FUNCTION_POINTER
    JML $A9B8EB
endif
}

ih_mb2_segment_rainbow:
{
    ; runs during baby spawn routine for MB2
    STA $7E7854 ; overwritten code

    TDC : STA !DAMAGE_COUNTER
    JML ih_update_hud_early
}

ih_shinespark_segment:
{
    ; runs when shinespark bonk sound plays
    JSL $80914D ; overwritten code

    ; skip printing remaining spark frames if Vanilla HUD mode
    LDA !sram_top_display_mode : BIT !TOP_HUD_VANILLA_BIT : BNE .done

    PHB
    ; set index to $7C and DB to $00
    LDX #$007C : PHX : PLB : PLB
    LDA !ram_activated_shine_duration
    JSR Draw2
    TDC : STA !ram_activated_shine_duration
    PLB

  .done
    JML ih_update_hud_early
}

ih_drops_segment:
{
    ; runs when boss drops spawn
    JSL ih_update_hud_early
    ; overwritten code
    PLP : PLY : PLX
    RTL
}

ih_chozo_segment:
{
    JSL $8090CB ; overwritten code
    JML ih_update_hud_early
}

ih_ceres_elevator_segment:
{
    JSL ih_update_hud_early
if !FEATURE_PAL
    JML $90F081
else ; overwritten code
    JML $90F084
endif
}

ih_ship_elevator_segment:
{
    JSL ih_update_hud_early
if !FEATURE_PAL
    JML $91E35B
else ; overwritten code
    JML $91E3F6
endif
}

ih_croc_segments:
{
    ; runs on two music changes post-fight
    JSL !MUSIC_ROUTINE ; overwritten code
    JML ih_update_hud_early
}

ih_update_hud_before_transition:
{
    PHX : PHY : PHP : PHB
    ; Bank 80
    PEA $8080 : PLB : PLB

    LDA !sram_display_mode : CMP !IH_MODE_ARMPUMP_INDEX : BNE .start

    ; Report armpump room totals
    LDA !ram_momentum_sum : CLC : ADC !ram_momentum_count : LDX #$0088 : JSR Draw4
    LDA !ram_fail_sum : CLC : ADC !ram_fail_count : LDX #$0092 : JSR Draw4
    TDC : STA !ram_momentum_count : STA !ram_fail_count
    STA !ram_momentum_sum : STA !ram_fail_sum : STA !ram_roomstrat_counter

  .start
    BRA ih_update_hud_code_start
}

ih_update_hud_code:
{
    PHX : PHY : PHP : PHB
    ; Bank 80
    PEA $8080 : PLB : PLB

  .start
    LDA !ram_minimap : BNE .mmHud
    JMP .startUpdate

  .mmVanilla
    JMP .end

  .mmHud
    ; Map visible, so draw map counter over item%
    LDA !sram_top_display_mode : BIT !TOP_HUD_VANILLA_BIT : BNE .mmVanilla
    LDA !MAP_COUNTER : LDX #$0014 : JSR Draw3
    LDA !ram_print_segment_timer : BEQ .mmRoomTimer

    LDA !sram_lag_counter_mode : BNE .mmFullTransitionTime
    LDA !ram_last_door_lag_frames
    BRA .mmDrawTransitionTime
  .mmFullTransitionTime
    LDA !ram_last_realtime_door
  .mmDrawTransitionTime
    LDX #$0054 : JSR Draw3

  .mmRoomTimer
    STZ $4205
    LDA !sram_frame_counter_mode : BIT #$0001 : BNE .mmInGameTimer
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$B4
    LDA !ram_last_realtime_room
    BRA .mmCalculateTimer
  .mmInGameTimer
    LDA !IH_HYPHEN : STA !HUD_TILEMAP+$B4
    LDA !ram_last_gametime_room
  .mmCalculateTimer
    ; Divide time by 60 or 50 and draw seconds and frames
    STA $4204
    %a8()
    LDA.b !FRAMERATE : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4216 : STA $C1
    LDA $4214 : LDX #$00B0 : JSR Draw2
    LDA $C1 : ASL : TAX
    LDA HexToNumberGFX1,X : STA !HUD_TILEMAP+$B6
    LDA HexToNumberGFX2,X : STA !HUD_TILEMAP+$B8
    JMP .end

  .startUpdate
    LDA #$FFFF : STA !ram_last_hp : STA !ram_enemy_hp

    ; Determine starting point of time display
    LDX #$003C
    LDA !sram_top_display_mode : BIT !TOP_HUD_VANILLA_BIT : BEQ .pickRoomTimer
    LDX #$003A

  .pickRoomTimer
    STZ $4205
    LDA !sram_frame_counter_mode : BIT #$0001 : BNE .inGameRoomTimer
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+6,X
    LDA !ram_last_realtime_room
    BRA .calculateRoomTimer
  .inGameRoomTimer
    LDA !IH_HYPHEN : STA !HUD_TILEMAP+6,X
    LDA !ram_last_gametime_room
  .calculateRoomTimer
    ; Divide time by 60 or 50 and draw seconds and frames
    STA $4204
    %a8()
    LDA.b !FRAMERATE : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4216 : STA $C1
    LDA $4214 : JSR Draw3 : TXY
    LDA $C1 : ASL : TAX
    LDA HexToNumberGFX1,X : PHX : TYX : STA !HUD_TILEMAP+2,X
    PLX : LDA HexToNumberGFX2,X : TYX : STA !HUD_TILEMAP+4,X

    ; 3 tiles between input display and missile icon
    ; skip item% if display mode = vspeed
    LDA !sram_display_mode : CMP !IH_MODE_VSPEED_INDEX : BEQ .skipToLag
    LDA !sram_top_display_mode : BNE .skipToLag

    ; Draw Item percent
    ; Max HP and Reserves
    LDA !SAMUS_HP_MAX : CLC : ADC !SAMUS_RESERVE_MAX
    JSR CalcEtank : STA $C1

    ; Max Missiles, Supers & Power Bombs
    LDA !SAMUS_MISSILES_MAX : CLC : ADC !SAMUS_SUPERS_MAX : CLC : ADC !SAMUS_PBS_MAX
    JSR CalcItem : CLC : ADC $C1 : STA $C1

    ; Collected items
    JSR CalcLargeItem : CLC : ADC $C1 : STA $C1

    ; Collected beams and charge
    JSR CalcBeams : CLC : ADC $C1

    ; Percent counter -> decimal form and drawn on HUD
    LDX #$0012 : JSR Draw3
    LDA !IH_PERCENT : STA !HUD_TILEMAP+$18

  .skipToLag
    LDA !sram_top_display_mode : BIT !TOP_HUD_VANILLA_BIT : BNE .vanillaLagReserves
    LDA !ram_last_room_lag : LDX #$0080 : JSR Draw4
    ; Skip door lag and segment timer when certain HUD modes enabled
    LDA !ram_print_segment_timer : BEQ .end

    ; Door lag / transition time
    LDA !sram_lag_counter_mode : BNE .fullTransitionTime
    LDA !ram_last_door_lag_frames
    BRA .drawTransitionTime
  .fullTransitionTime
    LDA !ram_last_realtime_door
  .drawTransitionTime
    LDX #$00C2 : JSR Draw3
    BRA .pickSegmentTimer

  .end
    PLB : PLP : PLY : PLX
    RTL

  .vanillaLagReserves
    LDA !SAMUS_RESERVE_MODE : CMP #$0001 : BNE .vanillaDrawLag

    ; Draw reserve icon
    LDY #$998B : LDA !SAMUS_RESERVE_ENERGY : BNE .vanillaDrawReserve
    LDY #$9997

  .vanillaDrawReserve
    LDA $0000,Y : STA !HUD_TILEMAP+$18 : LDA $0002,Y : STA !HUD_TILEMAP+$1A
    LDA $0004,Y : STA !HUD_TILEMAP+$58 : LDA $0006,Y : STA !HUD_TILEMAP+$5A

  .vanillaDrawLag
    LDA !ram_last_room_lag : LDX #$007E : JSR Draw4

    ; Skip door lag and segment timer when certain HUD modes enabled
    LDA !ram_print_segment_timer : BEQ .end

    ; Door lag / transition time
    LDA !sram_lag_counter_mode : BNE .vanillaFullTransitionTime
    LDA !ram_last_door_lag_frames
    BRA .vanillaDrawTransitiontime
  .vanillaFullTransitionTime
    LDA !ram_last_realtime_door
  .vanillaDrawTransitiontime
    LDX #$00C2 : JSR Draw2

  .pickSegmentTimer
    LDA !sram_frame_counter_mode : BIT #$0001 : BNE .inGameSegmentTimer
    LDA.w #!ram_seg_rt_frames : STA $C1
    LDA.w #!WRAM_BANK : STA $C3
    BRA .drawSegmentTimer

  .inGameSegmentTimer
    LDA.w #!IGT_FRAMES : STA $C1
    LDA.w #!WRAM_BANK : STA $C3

  .drawSegmentTimer
    ; Frames
    LDA [$C1] : INC $C1 : INC $C1 : ASL : TAX
    LDA HexToNumberGFX1,X : STA !HUD_TILEMAP+$BC
    LDA HexToNumberGFX2,X : STA !HUD_TILEMAP+$BE

    ; Seconds
    LDA [$C1] : INC $C1 : INC $C1 : ASL : TAX
    LDA HexToNumberGFX1,X : STA !HUD_TILEMAP+$B6
    LDA HexToNumberGFX2,X : STA !HUD_TILEMAP+$B8

    ; Minutes
    LDA [$C1] : LDX #$00AE : JSR Draw3

    ; Draw decimal/hyphen seperators
    LDA !sram_frame_counter_mode : BIT #$0001 : BNE .ingameSeparators
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$B4 : STA !HUD_TILEMAP+$BA
    BRA .blankEnd

  .ingameSeparators
    LDA !IH_HYPHEN : STA !HUD_TILEMAP+$B4 : STA !HUD_TILEMAP+$BA

  .blankEnd
    LDA !IH_BLANK : STA !HUD_TILEMAP+$C0
    JMP .end
}

ih_update_hud_early:
{
    PHA : PHX : PHY

    ; calculate lag frames
    LDA !ram_realtime_room : SEC : SBC !ram_transition_counter : STA !ram_last_room_lag

    LDA !ram_gametime_room : STA !ram_last_gametime_room
    LDA !ram_realtime_room : STA !ram_last_realtime_room

    ; update HUD
    LDA $12 : PHA
    LDA $14 : PHA

    JSL ih_update_hud_code

    PLA : STA $14
    PLA : STA $12

    PLY : PLX : PLA
    RTL
}

ih_hud_vanilla_health:
{
    LDA !SAMUS_HP : STA !SAMUS_LAST_HP : STA $4204
    %a8()
    LDA #$64 : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4214 : STA $14
    LDA $4216 : STA $12
    LDA !SAMUS_HP_MAX : STA $4204
    %a8()
    LDA #$64 : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDY #$0000 : LDA $4214
    INC : STA $16

  .loopTanks
    DEC $16 : BEQ .drawEmptyTanks
    LDX #$3430
    LDA $14 : BEQ .drawTankHealth
    DEC $14 : LDX #$2831
  .drawTankHealth
    TXA : LDX $9CCE,Y : STA !HUD_TILEMAP+$08,X
    INY #2 : CPY #$001C : BMI .loopTanks
    BRA .subtankHealth

  .drawEmptyTanks
    LDA !IH_BLANK

  .loopEmptyTanks
    LDX $9CCE,Y : STA !HUD_TILEMAP+$08,X
    INY #2 : CPY #$001C : BMI .loopEmptyTanks

  .subtankHealth
    LDA $12 : LDX #$0094 : JSR Draw2
    LDA $16 : BNE .subtankWhitespace
    ; Draw the leading zero
    LDA.w NumberGFXTable : STA !HUD_TILEMAP+$94

  .subtankWhitespace
    LDA !IH_BLANK : STA !HUD_TILEMAP+$92 : STA !HUD_TILEMAP+$98
    STA !HUD_TILEMAP+$9A : STA !HUD_TILEMAP+$08 : STA !HUD_TILEMAP+$48
    LDA !SAMUS_RESERVE_MODE : CMP #$0001 : BNE .noReserves

    ; Draw reserve icon
    LDY #$998B : LDA !SAMUS_RESERVE_ENERGY : BNE .drawReserveIcon
    LDY #$9997

  .drawReserveIcon
    LDA $0000,Y : STA !HUD_TILEMAP+$18 : LDA $0002,Y : STA !HUD_TILEMAP+$1A
    LDA $0004,Y : STA !HUD_TILEMAP+$58 : LDA $0006,Y : STA !HUD_TILEMAP+$5A
    LDA !sram_top_display_mode : CMP !TOP_HUD_VANILLA_BIT : BEQ .done
    LDA $0008,Y : STA !HUD_TILEMAP+$98 : LDA $000A,Y : STA !HUD_TILEMAP+$9A

  .drawEnergy
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88
    LDA #$2CFB : STA !HUD_TILEMAP+$8A
    INC : STA !HUD_TILEMAP+$8C
    INC : STA !HUD_TILEMAP+$8E
    INC : INC : STA !HUD_TILEMAP+$90
    ; Set carry flag indicating energy drawn
    SEC : RTS

  .noReserves
    LDA !IH_BLANK : STA !HUD_TILEMAP+$18 : STA !HUD_TILEMAP+$1A
    STA !HUD_TILEMAP+$58 : STA !HUD_TILEMAP+$5A
    LDA !sram_top_display_mode : CMP !TOP_HUD_VANILLA_BIT : BNE .drawEnergy

  .done
    ; Clear carry flag indicating infohud status contents can be shifted
    CLC : RTS
}

ih_hud_code:
{
    ; overwritten code
    STZ $02
    %ai16()

    LDA !sram_top_display_mode : BIT !TOP_HUD_VANILLA_BIT : BNE .vanilla_infohud

    ; -- input display --
    ; -- check if we want to update --
    LDA !ram_frames_held : BNE .frames_help_update
    LDA !IH_CONTROLLER_PRI : CMP !ram_ih_controller : BNE .controller_update
    JMP .status_display

  .frames_help_update
    JMP .framesHeld

  .controller_update
    ; -- read input
    TAY : LDX #$000C

  .ctrl_row_loop
    TYA : AND ControllerTable1,X : BEQ .ctrl_1_blank
    LDA ControllerGfx1,X : BRA .ctrl_1_draw
  .ctrl_1_blank
    LDA !IH_BLANK
  .ctrl_1_draw
    STA !HUD_TILEMAP+$06,X
    TYA : AND ControllerTable2,X : BEQ .ctrl_2_blank
    LDA ControllerGfx2,X : BRA .ctrl_2_draw
  .ctrl_2_blank
    LDA !IH_BLANK
  .ctrl_2_draw
    STA !HUD_TILEMAP+$46,X
    DEX #2 : BNE .ctrl_row_loop

    TYA : STA !ram_ih_controller
    BRA .status_display

  .vanilla_infohud
    ; Shift infohud status left by one
    LDA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$88
    LDA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8A
    LDA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$8C
    LDA !HUD_TILEMAP+$90 : STA !HUD_TILEMAP+$8E
    LDA !sram_top_display_mode : CMP !TOP_HUD_VANILLA_BIT : BNE .status_display_done

  .status_display
    LDA !sram_display_mode : ASL : TAX
    JSR (.status_display_table,X)

  .status_display_done
if !INFOHUD_ALWAYS_SHOW_X_Y
    LDA !SAMUS_X : LDX #$0070 : JSR Draw4
    LDA !SAMUS_X_SUBPX : INX : INX : JSR Draw4Hex
    LDA !SAMUS_Y : LDX #$00B0 : JSR Draw4
    LDA !SAMUS_Y_SUBPX : INX : INX : JSR Draw4Hex
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$78 : STA !HUD_TILEMAP+$B8
    LDA !IH_BLANK : STA !HUD_TILEMAP+$6E : STA !HUD_TILEMAP+$82
    STA !HUD_TILEMAP+$AE : STA !HUD_TILEMAP+$C2
endif

    ; Samus' HP
    LDA !SAMUS_HP : CMP !ram_last_hp : BEQ .reserves : STA !ram_last_hp
    LDA !sram_top_display_mode : BIT !TOP_HUD_VANILLA_BIT : BNE .vanilla_draw_health
    LDA !SAMUS_HP : LDX #$0092 : JSR Draw4
    LDA !IH_BLANK : STA !HUD_TILEMAP+$90 : STA !HUD_TILEMAP+$9A
    BRA .reserves

  .vanilla_check_health
    LDA !SAMUS_HP : CMP !SAMUS_LAST_HP : BNE .vanilla_draw_health

  .vanilla_shift_infohud
    ; Shift infohud status right by one
    LDA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    LDA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E
    LDA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C
    LDA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88
    RTL

  .vanilla_draw_health
    JSR ih_hud_vanilla_health : BCC .vanilla_shift_infohud
    RTL

    ; Reserve energy counter
  .reserves
    LDA !sram_top_display_mode : BEQ .statusIcons
    BIT !TOP_HUD_VANILLA_BIT : BNE .vanilla_check_health

    LDA !SAMUS_RESERVE_MAX : BEQ .noReserves
    LDA !SAMUS_RESERVE_ENERGY : CMP !ram_reserves_last : BEQ .checkAuto
    STA !ram_reserves_last : LDX #$0014 : JSR Draw3

  .checkAuto
    LDA !SAMUS_RESERVE_MODE : CMP #$0001 : BEQ .autoOn
    LDA !IH_BLANK : STA !HUD_TILEMAP+$1A
    BRA .statusIcons

  .autoOn
    LDA !SAMUS_RESERVE_ENERGY : BEQ .autoEmpty
    LDA !IH_RESERVE_AUTO : STA !HUD_TILEMAP+$1A
    BRA .statusIcons

  .autoEmpty
    LDA !IH_RESERVE_EMPTY : STA !HUD_TILEMAP+$1A
    BRA .statusIcons

  .noReserves
    LDA !IH_BLANK
    STA !HUD_TILEMAP+$14 : STA !HUD_TILEMAP+$16
    STA !HUD_TILEMAP+$18 : STA !HUD_TILEMAP+$1A

    ; Status Icons
  .statusIcons
    LDA !sram_status_icons : BNE .checkSuperHUD
    RTL

    ; Super HUD
  .checkSuperHUD
    LDA !sram_display_mode : CMP !IH_MODE_ROOMSTRAT_INDEX : BNE .checkHealthBomb
    LDA !sram_room_strat : BNE .checkHealthBomb
    RTL

    ; health bomb
  .checkHealthBomb
    LDA !HEALTH_BOMB_FLAG : BEQ .clearHealthBomb
    LDA !SAMUS_HP : CMP #$0032 : BMI .inHealthBomb
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$54
    BRA .checkElevator

  .inHealthBomb
    LDA !IH_HEALTHBOMB : STA !HUD_TILEMAP+$54
    BRA .checkElevator

  .clearHealthBomb
    LDA !IH_BLANK : STA !HUD_TILEMAP+$54

    ; elevator
  .checkElevator
    LDA !ELEVATOR_PROPERTIES : BEQ .clearElevator
    LDA !IH_ELEVATOR : STA !HUD_TILEMAP+$56
    BRA .checkSpark

  .clearElevator
    LDA !IH_BLANK : STA !HUD_TILEMAP+$56

    ; shinespark
  .checkSpark
    LDA !SAMUS_SHINE_TIMER : BEQ .clearSpark
    LDA !IH_SHINESPARK : STA !HUD_TILEMAP+$58
    BRA .checkReserves

  .clearSpark
    LDA !IH_BLANK : STA !HUD_TILEMAP+$58

    ; reserve tank
  .checkReserves
    LDA !SAMUS_RESERVE_MODE : CMP #$0001 : BNE .clearReserve
    LDA !SAMUS_RESERVE_ENERGY : BEQ .empty
    LDA !SAMUS_RESERVE_MAX : BEQ .clearReserve
    LDA !IH_RESERVE_AUTO : STA !HUD_TILEMAP+$1A
    RTL

  .empty
    LDA !SAMUS_RESERVE_MAX : BEQ .clearReserve
    LDA !IH_RESERVE_EMPTY : STA !HUD_TILEMAP+$1A
    RTL

  .clearReserve
    LDA !IH_BLANK : STA !HUD_TILEMAP+$1A

  .end
    RTL

  .framesHeld
    LDA !IH_CONTROLLER_PRI_NEW : TAY : LDX #$000C
  .clearCountersLoop
    TYA : AND ControllerTable1,X : BEQ .clearCountersRow2
    PHX : LDA FramesHeldTable1,X : TAX
    TDC : STA !WRAM_MENU_START,X : PLX
  .clearCountersRow2
    TYA : AND ControllerTable2,X : BEQ .clearCountersNext
    PHX : LDA FramesHeldTable2,X : TAX
    TDC : STA !WRAM_MENU_START,X : PLX
  .clearCountersNext
    DEX #2 : BNE .clearCountersLoop

    LDA !IH_CONTROLLER_PRI : TAY : LDX #$000C
  .drawFramesHeldLoop
    LDA !ram_frames_held : AND ControllerTable1,X : BNE .useFramesHeldRow1
    TYA : AND ControllerTable1,X : BEQ .blankFramesHeldRow1
  .nonBlankFramesHeldRow1
    LDA ControllerGfx1,X
    BRA .drawFramesHeldRow1
  .blankFramesHeldRow1
    LDA !IH_BLANK
  .drawFramesHeldRow1
    STA !HUD_TILEMAP+$06,X
    LDA !ram_frames_held : AND ControllerTable2,X : BNE .useFramesHeldRow2
    TYA : AND ControllerTable2,X : BEQ .blankFramesHeldRow2
  .nonBlankFramesHeldRow2
    LDA ControllerGfx2,X
    BRA .drawFramesHeldRow2
  .blankFramesHeldRow2
    LDA !IH_BLANK
  .drawFramesHeldRow2
    STA !HUD_TILEMAP+$46,X
    DEX #2 : BNE .drawFramesHeldLoop
    JMP .status_display

  .useFramesHeldRow1
    PHX : TYA : AND ControllerTable1,X : BNE .incFramesHeldRow1
    LDA FramesHeldTable1,X : TAX
    LDA !WRAM_MENU_START,X : BEQ .plxBlankFramesHeldRow1
    CMP #$0042 : BCC .loadFramesHeldRow1
  .plxBlankFramesHeldRow1
    PLX : BRA .blankFramesHeldRow1
  .incFramesHeldRow1
    LDA FramesHeldTable1,X : TAX
    LDA !WRAM_MENU_START,X : INC : STA !WRAM_MENU_START,X
    CMP #$0042 : BCC .loadFramesHeldRow1
    PLX : BRA .nonBlankFramesHeldRow1
  .loadFramesHeldRow1
    ASL : TAX : LDA NumberGFXTable,X : PLX
    BRA .drawFramesHeldRow1

  .useFramesHeldRow2
    PHX : TYA : AND ControllerTable2,X : BNE .incFramesHeldRow2
    LDA FramesHeldTable2,X : TAX
    LDA !WRAM_MENU_START,X : BEQ .plxBlankFramesHeldRow2
    CMP #$0042 : BCC .loadFramesHeldRow2
  .plxBlankFramesHeldRow2
    PLX : BRA .blankFramesHeldRow2
  .incFramesHeldRow2
    LDA FramesHeldTable2,X : TAX
    LDA !WRAM_MENU_START,X : INC : STA !WRAM_MENU_START,X
    CMP #$0042 : BCC .loadFramesHeldRow2
    PLX : BRA .nonBlankFramesHeldRow2
  .loadFramesHeldRow2
    ASL : TAX : LDA NumberGFXTable,X : PLX
    BRA .drawFramesHeldRow2
}

incsrc infohudmodes.asm

;---SUBROUTINES---
Draw2:
{
    STA $4204
    %a8()
    ; divide by 10
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4214 : STA $12 ; tens

    ; Ones digit
    LDA $4216 : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+2,X

    ; Tens digit
    LDA $12 : BEQ .blanktens : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP,X

  .done
    INX #4
    RTS

  .blanktens
    LDA !IH_BLANK : STA !HUD_TILEMAP,X
    BRA .done
}

Draw3:
{
    STA $4204
    %a8()

    ; divide by 10
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4214 : STA $12 ; tens

    ; Ones digit
    LDA $4216 : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+4,X

    LDA $12 : BEQ .blanktens
    STA $4204
    %a8()

    ; divide by 10
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4214 : STA $12 ; hundreds

    ; Tens digit
    LDA $4216 : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+2,X

    ; Hundreds digit
    LDA $12 : BEQ .blankhundreds : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP,X

  .done
    INX #6
    RTS

  .blanktens
    LDA !IH_BLANK : STA !HUD_TILEMAP,X : STA !HUD_TILEMAP+2,X
    BRA .done

  .blankhundreds
    LDA !IH_BLANK : STA !HUD_TILEMAP,X
    BRA .done
}

Draw4:
{
    STA $4204
    %a8()

    ; divide by 10
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4214 : STA $12 ; tens

    ; Ones digit
    LDA $4216 : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+6,X

    LDA $12 : BEQ .blanktens
    STA $4204
    %a8()

    ; divide by 10
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4214 : STA $12 ; hundreds

    ; Tens digit
    LDA $4216 : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+4,X

    LDA $12 : BEQ .blankhundreds
    STA $4204
    %a8()

    ; divide by 10
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4214 : STA $12 ; thousands

    ; Hundreds digit
    LDA $4216 : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+2,X

    ; Thousands digit
    LDA $12 : BEQ .blankthousands : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP,X

  .done
    INX #8
    RTS

  .blanktens
    LDA !IH_BLANK
    STA !HUD_TILEMAP,X : STA !HUD_TILEMAP+2,X : STA !HUD_TILEMAP+4,X
    BRA .done

  .blankhundreds
    LDA !IH_BLANK : STA !HUD_TILEMAP,X : STA !HUD_TILEMAP+2,X
    BRA .done

  .blankthousands
    LDA !IH_BLANK : STA !HUD_TILEMAP,X
    BRA .done
}

DrawHealthPaused:
{
    LDA !sram_top_display_mode : BEQ .draw_health
    BIT !TOP_HUD_VANILLA_BIT : BNE .vanilla_draw_health

    LDA !SAMUS_RESERVE_MAX : BEQ .noReserves
    LDA !SAMUS_RESERVE_ENERGY : STA !ram_reserves_last
    LDX #$0014 : JSR Draw3
    LDA !SAMUS_RESERVE_MODE : CMP #$0001 : BEQ .autoOn
    LDA !IH_BLANK : STA !HUD_TILEMAP+$1A
    BRA .draw_health

  .autoOn
    LDA !SAMUS_RESERVE_ENERGY : BEQ .autoEmpty
    LDA !IH_RESERVE_AUTO : STA !HUD_TILEMAP+$1A
    BRA .draw_health

  .autoEmpty
    LDA !IH_RESERVE_EMPTY : STA !HUD_TILEMAP+$1A
    BRA .draw_health

  .noReserves
    LDA !IH_BLANK
    STA !HUD_TILEMAP+$14 : STA !HUD_TILEMAP+$16
    STA !HUD_TILEMAP+$18 : STA !HUD_TILEMAP+$1A
    LDA !SAMUS_RESERVE_ENERGY : STA !ram_reserves_last

  .draw_health
    LDA !SAMUS_HP : LDX #$0092 : JSR Draw4
    LDA !IH_BLANK : STA !HUD_TILEMAP+$90 : STA !HUD_TILEMAP+$9A
    RTL

  .vanilla_draw_health
    JSR ih_hud_vanilla_health
    RTL
}

Draw4Hex:
{
    STA $12 : AND #$F000              ; get first digit (X000)
    XBA : LSR #3                      ; move it to last digit (000X) and shift left one
    TAY : LDA.w HexGFXTable,Y         ; load tilemap address with 2x digit as index
    STA !HUD_TILEMAP,X                ; draw digit to HUD

    LDA $12 : AND #$0F00              ; (0X00)
    XBA : ASL
    TAY : LDA.w HexGFXTable,Y
    STA !HUD_TILEMAP+2,X

    LDA $12 : AND #$00F0              ; (00X0)
    LSR #3 : TAY : LDA.w HexGFXTable,Y
    STA !HUD_TILEMAP+4,X

    LDA $12 : AND #$000F              ; (000X)
    ASL : TAY : LDA.w HexGFXTable,Y
    STA !HUD_TILEMAP+6,X
    RTS
}

Draw4Hundredths:
{
    STA $4204
    %a8()

    ; divide by 10
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math

    ; Ones digit ignored, go straight to tens digit
    LDA $4214 : BEQ .zerotens
    STA $4204
    %a8()

    ; divide by 10
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4214 : STA $12 ; hundreds

    ; Tens digit
    LDA $4216 : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+6,X

    LDA $12 : BEQ .zerohundreds
    STA $4204
    %a8()

    ; divide by 10
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4214 : STA $12 ; thousands

    ; Hundreds digit
    LDA $4216 : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+4,X

    ; Thousands digit
    LDA $12 : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP,X

  .done
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+2,X
    INX #8
    RTS

  .zerotens
    LDA !IH_NUMBER_ZERO
    STA !HUD_TILEMAP,X : STA !HUD_TILEMAP+4,X : STA !HUD_TILEMAP+6,X
    BRA .done

  .zerohundreds
    LDA !IH_NUMBER_ZERO : STA !HUD_TILEMAP,X : STA !HUD_TILEMAP+4,X
    BRA .done
}

CalcEtank:
{
    STA $4204
    %a8()

    ; divide by 100
    LDA #$64 : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4214
    RTS
}

CalcItem:
{
    STZ $4214 : STA $4204
    %a8()

    ; divide by 5
    LDA #$05 : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4214
    RTS
}

CalcLargeItem:
{
    ; GT Code adds an unused item (10h)
    LDA !SAMUS_ITEMS_COLLECTED : AND #$F32F

    LDX #$0000
  .loop
    BIT #$0001 : BEQ .noItem
    INX ; count items in X

  .noItem
    LSR : BNE .loop
    TXA
    RTS
}

CalcBeams:
{
    PHP : %a8()
    LDA !SAMUS_BEAMS_COLLECTED : LDX #$0000
  .loop
    BIT #$01 : BEQ .noItem
    INX ; count beams in X

  .noItem
    LSR : BNE .loop

    ; check for Charge
    LDA !SAMUS_BEAMS_COLLECTED+1 : CMP #$10 : BNE .done
    INX

  .done
    TXA

    PLP
    RTS
}
endif ; !FEATURE_VANILLAHUD

ih_game_loop_code:
{
    ; inc transition timer
    LDA !ram_transition_counter : INC : STA !ram_transition_counter

    LDA !ram_game_loop_extras : BNE .extrafeatures

    ; overwritten code + return
    JML $808111

  .extrafeatures
    LDA !ram_metronome : BEQ .metronome_done
    JSR metronome
  .metronome_done

    LDA !ram_magic_pants_enabled : XBA : ORA !ram_space_pants_enabled : BEQ .pants_done
    BIT #$00FF : BEQ .magicpants    ; if spacepants are disabled, handle magicpants
    BIT #$FF00 : BEQ .spacepants    ; if magicpants are disabled, handle spacepants

    ; both are enabled, check Samus movement type to decide
    LDA !SAMUS_MOVEMENT_TYPE : AND #$00FF : CMP #$0001 : BEQ .magicpants    ; check if running
  .spacepants
    JSR space_pants
    BRA .pants_done
  .magicpants
    JSR magic_pants
  .pants_done

    LDA !ram_infinite_ammo : BEQ .infinite_ammo_done
    LDA !SAMUS_MISSILES_MAX : STA !SAMUS_MISSILES
    LDA !SAMUS_SUPERS_MAX : STA !SAMUS_SUPERS
    LDA !SAMUS_PBS_MAX : STA !SAMUS_PBS
  .infinite_ammo_done

    ; overwritten code + return
    JML $808111
}

if !FEATURE_VANILLAHUD
else
ih_update_status:
{
    TDC
    STA !ram_momentum_sum : STA !ram_momentum_count
    STA !ram_HUD_check
    STA !ram_roomstrat_counter : STA !ram_roomstrat_state
    STA !ram_armed_shine_duration
    STA !ram_fail_count : STA !ram_fail_sum
    INC
    STA !ram_enemy_hp : STA !ram_mb_hp
    STA !ram_dash_counter : STA !ram_shine_counter
    STA !ram_xpos : STA !ram_ypos : STA !ram_subpixel_pos
    LDA !ram_seed_X : LSR
    STA !ram_HUD_top : STA !ram_HUD_middle
    STA !ram_HUD_top_counter : STA !ram_HUD_middle_counter
    JML init_print_segment_timer
}
endif ; !FEATURE_VANILLAHUD

metronome:
{
    LDA !ram_metronome_counter : INC
    CMP !sram_metronome_tickrate : BEQ .tick
    CMP #$0002 : BEQ .eraseHUD
    STA !ram_metronome_counter
    RTS

  .eraseHUD
    STA !ram_metronome_counter
if !FEATURE_VANILLAHUD
else
    LDA !IH_BLANK : STA !HUD_TILEMAP+$62
endif
    RTS

  .tick
if !FEATURE_VANILLAHUD
else
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$62
endif
    TDC : STA !ram_metronome_counter
    LDA !sram_metronome_sfx : ASL : TAX
    LDA.l MetronomeSFX,X : JSL !SFX_LIB1
    RTS
}

MetronomeSFX:
    ; missile, click,  beep,   shot,   spazer
    dw #$0003, #$0039, #$0036, #$000B, #$000F

magic_pants:
{
    LDA !SAMUS_ANIMATION_FRAME : CMP #$0009 : BEQ .check
    LDA !ram_magic_pants_state : BEQ .skip_magic_pants
    TDC : STA !ram_magic_pants_state

    LDA !ram_magic_pants_enabled : AND #$0001 : BEQ .skip_magic_pants
    LDA !ram_magic_pants_pal1 : STA $7EC194
    LDA !ram_magic_pants_pal2 : STA $7EC196
    LDA !ram_magic_pants_pal3 : STA $7EC19E
  .skip_magic_pants
    RTS

  .check
    ; Enable magic pants in the following states:
    ; 9: Moving right - not aiming
    ; Ah: Moving left  - not aiming
    ; Bh: Moving right - gun extended
    ; Ch: Moving left  - gun extended
    ; Dh: Moving right - aiming up (unused)
    ; Eh: Moving left  - aiming up (unused)
    ; Fh: Moving right - aiming up-right
    ; 10h: Moving left  - aiming up-left
    ; 11h: Moving right - aiming down-right
    ; 12h: Moving left  - aiming down-left
    LDA !SAMUS_POSE : CMP #$0009 : BCC .done
    CMP #$0013 : BCS .done

    LDA !ram_magic_pants_state : BNE .check_flash_pants

    ; if loudpants are enabled, play sfx
    LDA !ram_magic_pants_enabled : AND #$0002 : BEQ .check_flash_pants
    LDA !sram_metronome_sfx : ASL : TAX
    LDA.l MetronomeSFX,X : JSL !SFX_LIB1

  .check_flash_pants
    ; if flashpants are enabled, flash
    LDA !ram_magic_pants_enabled : AND #$0001 : BEQ .done
    LDA !ram_magic_pants_state : BNE .flash
    ; backup palettes
    LDA $7EC194 : STA !ram_magic_pants_pal1
    LDA $7EC196 : STA !ram_magic_pants_pal2
    LDA $7EC19E : STA !ram_magic_pants_pal3
  .flash
    LDA #$FFFF
    STA $7EC194 : STA $7EC196 : STA $7EC19E

  .done
    LDA #$FFFF : STA !ram_magic_pants_state
    RTS
}

space_pants:
{
    LDA !SAMUS_POSE : CMP #$001B : BEQ .checkFalling
    CMP #$001C : BEQ .checkFalling
    CMP #$0081 : BEQ .checkFalling
    CMP #$0082 : BEQ .checkFalling
  .reset
    ; restore palettes if needed
    LDA !ram_magic_pants_state : BEQ .done
    TDC : STA !ram_magic_pants_state

    LDA !ram_space_pants_enabled : AND #$0001 : BEQ .done
    LDA !ram_magic_pants_pal1 : STA $7EC194
    LDA !ram_magic_pants_pal2 : STA $7EC196
    LDA !ram_magic_pants_pal3 : STA $7EC198
  .done
    RTS

  .checkFalling
    LDA !SAMUS_Y_DIRECTION : CMP #$0002 : BNE .reset

  .checkLiquid
    LDA !LIQUID_PHYSICS_TYPE : BNE .SJliquid

    ; check against min SJ vspeed for air
    LDA !SAMUS_Y_SPEEDCOMBINED : CMP $909E97 : BMI .reset

    ; check against max SJ vspeed for air
    CMP $909E99 : BPL .reset
    BRA .flash

  .SJliquid
    ; check against min SJ vspeed for liquids
    LDA !SAMUS_Y_SPEEDCOMBINED : CMP $909E9B : BMI .reset

    ; check against max SJ vspeed for liquids
    CMP $909E9D : BPL .reset

  .flash
    ; Screw Attack seems to write new palette data every frame, which overwrites the flash
    LDA !ram_magic_pants_state : BNE .done

    ; if loudpants are enabled, click
    LDA !ram_space_pants_enabled : AND #$0002 : BEQ .check_flash_pants
    LDA !sram_metronome_sfx : ASL : TAX
    LDA.l MetronomeSFX,X : JSL !SFX_LIB1

  .check_flash_pants
    ; if flashpants are enabled, flash
    LDA !ram_space_pants_enabled : AND #$0001 : BEQ .finish
    ; preserve palettes first
    LDA $7EC194 : STA !ram_magic_pants_pal1
    LDA $7EC196 : STA !ram_magic_pants_pal2
    LDA $7EC198 : STA !ram_magic_pants_pal3
    ; then flash
    LDA #$FFFF
    STA $7EC194 : STA $7EC196 : STA $7EC198

  .finish
    LDA #$FFFF : STA !ram_magic_pants_state
    RTS
}

ih_shinespark_code:
{
    DEC
    STA !SAMUS_SHINE_TIMER : STA !ram_armed_shine_duration
    RTL
}

ih_adjust_realtime:
{
    ; If the frame counter is set to "SPEEDRUN" mode, adds the number of frames in Y to the room and segment timers.
    ; X must be preserved if used
    LDA !sram_frame_counter_mode : BIT !FRAME_COUNTER_ADJUST_REALTIME : BEQ .done
    LDA !sram_fanfare : BNE .done

    TYA
    ; add time to segment timer frames, and divide by 60
    CLC : ADC !ram_seg_rt_frames : STA $4204
    TYA
    %i8()
    LDY.b !FRAMERATE : STY $4206

    PHA : CLC : ADC !ram_realtime_room : STA !ram_realtime_room
    LDA $4216 : STA !ram_seg_rt_frames
    LDA $4214 : CLC : ADC !ram_seg_rt_seconds : STA $4204 : STY $4206
    PLA : CLC : ADC !ram_transition_counter : STA !ram_transition_counter

    LDA !ram_seg_rt_minutes : CLC : ADC $4214 : STA !ram_seg_rt_minutes
    LDA $4216 : STA !ram_seg_rt_seconds
    %i16()

  .done
    RTL
}

NumberGFXChoice:
incbin ../resources/num_gfx_choice.bin

overwrite_HUD_numbers:
{
    ; runs after cm_transfer_original_tileset
    LDA !sram_number_gfx_choice : BNE .custom
    RTL

  .custom
    PHP : %ai16()
    PHB : PEA $0000 : PLB : PLB
    ; multiply by 100h and add to addr
    LDA !sram_number_gfx_choice : XBA : CLC : ADC.w #NumberGFXChoice : TAY
    %a8()

    ; DMA tiles 1-9, 0
    LDA #$80 : STA $2115 ; word access, inc by 1
    LDX #$4000 : STX $2116 ; VRAM addr ($4000 x 2 = $8000)
    STY $4302 ; src addr
    LDA.b #NumberGFXChoice>>16 : STA $4304 ; src bank
    LDX #$00A0 : STX $4305 ; size
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)

    ; fix src addr in Y
    %a16()
    TYA : CLC : ADC #$00A0 : TAY
    %a8()

    ; DMA tiles A-B
    LDX #$43B0 : STX $2116 ; VRAM addr ($43B0 x 2 = $8760)
    STY $4302 ; src addr
    LDA.b #NumberGFXChoice>>16 : STA $4304 ; src bank
    LDX #$0020 : STX $4305 ; size
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)

    ; fix src addr in Y again
    %a16()
    TYA : CLC : ADC #$0020 : TAY
    %a8()

    ; DMA tiles C-F
    LDX #$42C0 : STX $2116 ; VRAM addr ($42C0 x 2 = $8580)
    STY $4302 ; src addr
    LDA.b #NumberGFXChoice>>16 : STA $4304 ; src bank
    LDX #$0040 : STX $4305 ; size
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)

    PLB : PLP
    RTL
}

; Infidoppler routines.
;
; When Samus fires a missile during a Phantoon swoop, record her position.
; Each successive time she fires a missile, teleport her back to the initial
; position. Each time a missile hits, teleport it back by the amount Samus
; moved before firing it, and allow it to hit again. This way, Phantoon's
; cooldowns behave as if we were dopplering, but we never run out of room.
infidoppler_hook_fire_missile:
{
    ; Is infidoppler active?
    LDA !ram_infidoppler_active : BEQ .done

    ; Are we in phantoon's room?
    LDA !ROOM_ID : CMP.w #ROOM_PhantoonRoom : BEQ .active

    TDC : STA !ram_infidoppler_active
    BRA .done

  .active
    LDX $14     ; projectile index
    SEC

    LDA !SAMUS_X_SUBPX : SBC !ram_infidoppler_subx
    AND #$FF00 : STA !ram_infidoppler_offsets,X
    LDA !SAMUS_X : SBC !ram_infidoppler_x
    AND #$00FF : ORA !ram_infidoppler_offsets,X : STA !ram_infidoppler_offsets,X

    LDA !ram_infidoppler_x : STA !SAMUS_X
    LDA !ram_infidoppler_subx : STA !SAMUS_X_SUBPX

    LDA !ram_infidoppler_y : STA !SAMUS_Y
    LDA !ram_infidoppler_suby : STA !SAMUS_Y_SUBPX

  .done
    DEC !SAMUS_MISSILES
    JML $90BEC7
}

infidoppler_hook_projectile_collision:
{
    ; Is infidoppler enabled?
    LDA !sram_infidoppler_enabled : BNE .check

  .no
    ; Vanilla logic
    LDA !SAMUS_PROJ_PROPERTIES,Y
    BIT #$0008
    RTL

  .disable
    TDC : STA !ram_infidoppler_active
    BRA .no

  .check
    ; Are we in phantoon's room?
    LDA !ROOM_ID : CMP.w #ROOM_PhantoonRoom : BNE .disable

    ; Is infidoppler already active?
    LDA !ram_infidoppler_active : BNE .active

    LDA !SAMUS_PROJ_PROPERTIES,Y
    AND #$0F00 : CMP #$0100 : BNE .no ; Is this a missile?
    CPX #$0000 : BNE .no              ; Is this phantoon?

    ; Is phantoon in a swoop?
if !FEATURE_PAL
    LDA !ENEMY_VAR_5 : CMP #$D6AC : BNE .no
else
    LDA !ENEMY_VAR_5 : CMP #$D678 : BNE .no
endif

    ; Stop infidoppler if health is 100 or less
    LDA !ENEMY_HP : CMP #$0065 : BCC .disable

    ; Initialize infidoppler
    LDA #$FFFF : STA !ram_infidoppler_active
    LDA !SAMUS_X : STA !ram_infidoppler_x
    LDA !SAMUS_X_SUBPX : STA !ram_infidoppler_subx
    LDA !SAMUS_Y : STA !ram_infidoppler_y
    LDA !SAMUS_Y_SUBPX : STA !ram_infidoppler_suby

    BRA .no

  .active
    TYX

    ; We've shot Phantoon with a missile in infidoppler mode.
    ; if projectile variable is 0, this missile has already hit
    LDA !ram_infidoppler_offsets,X
    BEQ .done

    ; Stop infidoppler if health is 100 or less
    LDA !ENEMY_HP : CMP #$0065 : BCC .disable

    ; Subtract projectile variable from missile position
    ; the LOW 8 bits are pixels, the HIGH 8 bits are fractional
    ; yes, it's weird. but it saves a couple XBAs
    LDA !ram_infidoppler_offsets,X : PHA : AND #$FF00 : SEC
    EOR #$FFFF : ADC !SAMUS_PROJ_X_SUBPX,Y : STA !SAMUS_PROJ_X_SUBPX,Y
    PLA : AND #$00FF
    EOR #$FFFF : ADC !SAMUS_PROJ_X,Y : STA !SAMUS_PROJ_X,Y

    ; halve damage, since it will double hit
    LSR !SAMUS_PROJ_DAMAGE,X
    TDC : STA !ram_infidoppler_offsets,X
    TAX : INC

  .done
    ; if zero flag is set, the projectile despawns
    RTL
}

infidoppler_hook_phantoon_swoop_end:
{
    TDC : STA !ram_infidoppler_active

    ; Hijacked code
if !FEATURE_PAL
    LDA #$D6ED
    STA !ENEMY_VAR_5,X
    JML $A7D6BF
else
    LDA #$D6B9
    STA !ENEMY_VAR_5,X
    JML $A7D68B
endif
}

%endfree(F0)


; Stuff that needs to be placed in bank 80
%startfree(80)

; Used by room layout
ih_set_picky_chozo_event_and_enemy_speed:
{
    LDA #$0001 : STA $0FB4
    LDA #$000C : JMP $81FA
}

ih_fix_scroll_offsets:
{
    ; Custom doors are defined for incompatible door alignment,
    ; which sometimes breakings the scroll offsets
    ; Per layout.asm, these door definitions begin at 83:C000,
    ; so BIT #$4000 can be used to detect them
    LDA !DOOR_ID : BIT #$4000 : BNE .fix
    LDA !ram_fix_scroll_offsets : BEQ .nofix

  .fix
    LDA !REG_210E_BG1_Y : AND #$FF00 : STA !REG_210E_BG1_Y
    LDA !REG_210D_BG1_X : AND #$FF00 : SEC
    RTS

  .nofix
    ; overwritten code
    LDA !REG_210D_BG1_X : SEC
    RTS
}

ih_fix_scroll_down_offsets:
{
    ; Same fix as above, except $B3 must end in #$20
    LDA !DOOR_ID : BIT #$4000 : BNE .fix
    LDA !ram_fix_scroll_offsets : BEQ .nofix

  .fix
    LDA !REG_210E_BG1_Y : AND #$FF00 : ORA #$0020 : STA !REG_210E_BG1_Y
    LDA !REG_210D_BG1_X : AND #$FF00
    SEC
    ; From here, we need to jump into the AE29 method
    JMP $AE2C

  .nofix
    LDA $B1 : SEC
    JMP $AE2C
}

ih_hud_code_paused:
{
    ; overwritten code
    PHP : PHB : PHK : PLB
    %a8() : STZ $02 : %ai16()

    ; Update Samus' HP and reserves
    LDA !SAMUS_HP : CMP !ram_last_hp : BEQ .check_reserves
    STA !ram_last_hp
    BRA .draw_health

  .check_reserves
    LDA !SAMUS_RESERVE_ENERGY : CMP !ram_reserves_last : BEQ .end

  .draw_health
if !FEATURE_VANILLAHUD
else
    PHY : PHX
    LDX #$0092 : JSL DrawHealthPaused
    PLX : PLY
endif

  .end
    JSL init_heat_damage_ram
    JSL init_physics_ram
    LDA !SAMUS_RESERVE_MODE ; overwritten code
    JMP $9B51
}

ih_set_ceres_timer:
{
    JSL $809E93
    LDA !sram_ceres_timer
    JSL $809E8C
    LDA #$8003
    STA !TIMER_STATUS
    CLC
    RTS
}

ih_set_zebes_timer:
{
    JSL $809E93
    LDA !sram_zebes_timer
    JSL $809E8C
    LDA #$8003
    STA !TIMER_STATUS
    CLC
    RTS
}

if !FEATURE_VANILLAHUD
else
NumberGFXTable:
    dw #$0C09, #$0C00, #$0C01, #$0C02, #$0C03, #$0C04, #$0C05, #$0C06, #$0C07, #$0C08
    dw #$0C70, #$0C71, #$0C72, #$0C73, #$0C74, #$0C75, #$0C78, #$0C79, #$0C7A, #$0C7B
    dw #$0C7C, #$0C7D, #$0C7E, #$0C7F, #$0CD2, #$0CD4, #$0CD5, #$0CD6, #$0CD7, #$0CD8
    dw #$0CD9, #$0CDA, #$0CDB, #$0C5C, #$0C5D, #$0CB8, #$0C8D, #$0C12, #$0C13, #$0C14
    dw #$0C15, #$0C16, #$0C17, #$0C18, #$0C19, #$0C1A, #$0C1B, #$0C20, #$0C21, #$0C22
    dw #$0C23, #$0C24, #$0C25, #$0C26, #$0C27, #$0C28, #$0C29, #$0C2A, #$0C2B, #$0C2C
    dw #$0C2D, #$0C2E, #$0C2F, #$0C5E, #$0C5F, #$0CCA

HexGFXTable:
    dw #$0C09, #$0C00, #$0C01, #$0C02, #$0C03, #$0C04, #$0C05, #$0C06, #$0C07, #$0C08
    dw #$0C64, #$0C65, #$0C58, #$0C59, #$0C5A, #$0C5B

ControllerTable1:
    dw #$0000, #$0020, #$0800, #$0010, #$4000, #$0040, #$2000
ControllerTable2:
    dw #$0000, #$0200, #$0400, #$0100, #$8000, #$0080, #$1000
ControllerGfx1:
    dw #$0000, #$0C68, #$0C61, #$0C69, #$0C67, #$0C66, #$0C6A
ControllerGfx2:
    dw #$0000, #$0C60, #$0C63, #$0C62, #$0C65, #$0C64, #$0C6B
FramesHeldTable1:
    dw #$0000, #$00BA, #$00C6, #$00B8, #$00CC, #$00BC, #$00CA
FramesHeldTable2:
    dw #$0000, #$00C2, #$00C4, #$00C0, #$00CE, #$00BE, #$00C8

HexToNumberGFX1:
    dw #$0C09, #$0C09, #$0C09, #$0C09, #$0C09, #$0C09, #$0C09, #$0C09, #$0C09, #$0C09
    dw #$0C00, #$0C00, #$0C00, #$0C00, #$0C00, #$0C00, #$0C00, #$0C00, #$0C00, #$0C00
    dw #$0C01, #$0C01, #$0C01, #$0C01, #$0C01, #$0C01, #$0C01, #$0C01, #$0C01, #$0C01
    dw #$0C02, #$0C02, #$0C02, #$0C02, #$0C02, #$0C02, #$0C02, #$0C02, #$0C02, #$0C02
    dw #$0C03, #$0C03, #$0C03, #$0C03, #$0C03, #$0C03, #$0C03, #$0C03, #$0C03, #$0C03
    dw #$0C04, #$0C04, #$0C04, #$0C04, #$0C04, #$0C04, #$0C04, #$0C04, #$0C04, #$0C04

HexToNumberGFX2:
    dw #$0C09, #$0C00, #$0C01, #$0C02, #$0C03, #$0C04, #$0C05, #$0C06, #$0C07, #$0C08
    dw #$0C09, #$0C00, #$0C01, #$0C02, #$0C03, #$0C04, #$0C05, #$0C06, #$0C07, #$0C08
    dw #$0C09, #$0C00, #$0C01, #$0C02, #$0C03, #$0C04, #$0C05, #$0C06, #$0C07, #$0C08
    dw #$0C09, #$0C00, #$0C01, #$0C02, #$0C03, #$0C04, #$0C05, #$0C06, #$0C07, #$0C08
    dw #$0C09, #$0C00, #$0C01, #$0C02, #$0C03, #$0C04, #$0C05, #$0C06, #$0C07, #$0C08
    dw #$0C09, #$0C00, #$0C01, #$0C02, #$0C03, #$0C04, #$0C05, #$0C06, #$0C07, #$0C08
endif

%endfree(80)

