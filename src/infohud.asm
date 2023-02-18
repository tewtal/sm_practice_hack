;=======================================================
;InfoHUD timers and stuff
;=======================================================

org $809490
    JMP $9497    ; skip resetting player 2 inputs

org $8094DF
    PLP          ; patch out resetting of controller 2 buttons and enable debug mode
    RTL

org $80AE29      ; fix for scroll offset misalignment
    JSR ih_fix_scroll_offsets

org $828B4B      ; disable debug functions
    JML ih_debug_patch

org $82EE92      ; runs on START GAME
    JSL startgame_seg_timer

org $828B34      ; reset room timers for first room of Ceres
    JML ceres_start_timers : NOP #2 : ceres_start_timers_return:
        
org $90E6AA      ; hijack, runs on gamestate = 08 (main gameplay), handles most updating HUD information
    JSL ih_gamemode_frame : NOP : NOP

org $9493FB      ; hijack, runs when Samus hits a door BTS
    JSL ih_before_room_transition

org $9493B8      ; hijack, runs when Samus hits a door BTS
    JSL ih_before_room_transition

org $82E764      ; hijack, runs when Samus is coming out of a room transition
    JSL ih_after_room_transition : RTS

org $809B4C      ; hijack, HUD routine (game timer by Quote58)
    JSL ih_hud_code : NOP

org $8290F6      ; hijack, HUD routine while paused
    JSL ih_hud_code_paused

org $80A16B      ; hijack, adjust room times and update HUD when unpausing
    JSL ih_unpause

org $82894F      ; hijack, main game loop: runs EVERY frame (used for room transition timer)
    JSL ih_game_loop_code

org $84889F      ; hijack, runs every time an item is picked up
    JSL ih_get_item_code

org $8095FC      ; hijack, end of NMI routine to update realtime frames
    JML ih_nmi_end

if !FEATURE_PAL
org $91DA3D      ; hijack, runs after a shinespark has been charged
else
org $91DAD8      ; hijack, runs after a shinespark has been charged
endif
    JSL ih_shinespark_code

if !FEATURE_PAL
org $90F1E1      ; hijack, runs when an elevator is activated
else
org $90F1E4      ; hijack, runs when an elevator is activated
endif
    JSL ih_elevator_activation

if !FEATURE_PAL
org $A9F053
else             ; hijack, runs when the screen locks to start the hopper/baby cutscene
org $A9F006
endif
    JSL ih_babyskip_segment

if !FEATURE_PAL
org $A98884      ; update timers after MB1 fight
else
org $A98874      ; update timers after MB1 fight
endif
    JSL ih_mb1_segment

if !FEATURE_PAL
org $A9BE70      ; update timers when baby spawns (off-screen) in MB2 fight
else
org $A9BE23      ; update timers when baby spawns (off-screen) in MB2 fight
endif
    JSL ih_mb2_segment

if !FEATURE_PAL
org $A0B937      ; update timers when Ridley drops spawn
else
org $A0B9D4      ; update timers when Ridley drops spawn
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BA17      ; update timers when Crocomire drops spawn
else
org $A0BA07      ; update timers when Crocomire drops spawn
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BA4A      ; update timers when Phantoon drops spawn
else
org $A0BA3A      ; update timers when Phantoon drops spawn
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BA7D      ; update timers when Botwoon drops spawn
else
org $A0BA6D      ; update timers when Botwoon drops spawn
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BAB0      ; update timers when Kraid drops spawn
else
org $A0BAA0      ; update timers when Kraid drops spawn
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BAE3      ; update timers when Bomb Torizo drops spawn
else
org $A0BAD3      ; update timers when Bomb Torizo drops spawn
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BB16      ; update timers when Golden Torizo drops spawn
else
org $A0BB06      ; update timers when Golden Torizo drops spawn
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BB49      ; update timers when Spore Spawn drops spawn
else
org $A0BB39      ; update timers when Spore Spawn drops spawn
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $A0BB7C      ; update timers when Draygon drops spawn
else
org $A0BB6C      ; update timers when Draygon drops spawn
endif
    JML ih_drops_segment

if !FEATURE_PAL
org $AAE592      ; update timers when statue grabs Samus
else
org $AAE582      ; update timers when statue grabs Samus
endif
    JSL ih_chozo_segment

org $89AD0A      ; update timers when Samus escapes Ceres
    JSL ih_ceres_elevator_segment

if !FEATURE_PAL
org $A2AA38
else
org $A2AA20      ; update timers when Samus enters ship
endif
    JSL ih_ship_elevator_segment


; Main bank stuff
org $F08000
print pc, " infohud start"

; List this first since it affects bank $84 where we are trying to minimize change
ih_get_item_code:
{
    PHA

    ; calculate lag frames
    LDA !ram_realtime_room : SEC : SBC !ram_transition_counter : STA !ram_last_room_lag

    LDA !ram_gametime_room : STA !ram_last_gametime_room
    LDA !ram_realtime_room : STA !ram_last_realtime_room

    ; save temp variables
    LDA $12 : PHA
    LDA $14 : PHA

    ; Update HUD
    JSL ih_update_hud_code
    JSL init_heat_damage_ram
    JSL init_water_physics_ram

    ; restore temp variables
    PLA : STA $14
    PLA : STA $12

    PLA
    JSL $80818E
    RTL
}

ih_debug_patch:
{
    LDA $05D1
    BNE +
    JML $828B54
+   JSL $B49809
    JML $828B4F
}

ih_nmi_end:
{
    %ai16()

    LDA !ram_realtime_room : INC : STA !ram_realtime_room

    ; Segment real timer
    {
        LDA !ram_seg_rt_frames : INC : STA !ram_seg_rt_frames : CMP.w #60 : BNE +
        LDA #$0000 : STA !ram_seg_rt_frames
        LDA !ram_seg_rt_seconds : INC : STA !ram_seg_rt_seconds : CMP.w #60 : BNE +
        LDA #$0000 : STA !ram_seg_rt_seconds
        LDA !ram_seg_rt_minutes : INC : STA !ram_seg_rt_minutes
        +
    }

    LDA !ram_slowdown_mode : BNE +

    JMP .done

+   CMP #$FFFF
    BEQ .pause

    LDA !ram_slowdown_frames : BNE .delay
    LDA !ram_slowdown_mode : STA !ram_slowdown_frames
    LDA !ram_slowdown_controller_1 : STA !IH_CONTROLLER_PRI_PREV
    LDA !ram_slowdown_controller_2 : STA !IH_CONTROLLER_SEC_PREV

    JSL $809459
    JMP .done

  .delay
    CMP !ram_slowdown_mode : BNE +

    LDA !IH_CONTROLLER_PRI : EOR !IH_CONTROLLER_PRI_NEW : STA !ram_slowdown_controller_1
    LDA !IH_CONTROLLER_SEC : EOR !IH_CONTROLLER_SEC_NEW : STA !ram_slowdown_controller_2

    LDA !ram_slowdown_frames

+   DEC : STA !ram_slowdown_frames

    %a8() : LDA #$01 : STA $05B4 : %a16()
    JMP .done

  .pause
    LDA !ram_slowdown_frames : BNE +

    INC : STA !ram_slowdown_frames
    LDA !IH_CONTROLLER_PRI : EOR !IH_CONTROLLER_PRI_NEW : STA !ram_slowdown_controller_1
    LDA !IH_CONTROLLER_SEC : EOR !IH_CONTROLLER_SEC_NEW : STA !ram_slowdown_controller_2

+   LDA !IH_CONTROLLER_SEC_NEW : CMP !IH_PAUSE : BEQ .frameAdvance

    CMP !IH_RESET : BNE +

    LDA #$0000 : STA !ram_slowdown_mode : STA !ram_slowdown_frames
    JMP .done

+   LDA !ram_freeze_on_load : BEQ +
    LDA !IH_CONTROLLER_PRI_NEW : BEQ +

    LDA #$0000 : STA !ram_reset_segment_later
    STA !ram_seg_rt_frames : STA !ram_seg_rt_seconds
    STA !ram_seg_rt_minutes : STA !ram_slowdown_mode : STA !ram_slowdown_frames
    JMP .done

+   %a8() : LDA #$01 : STA $05B4 : %a16()
    JMP .done

  .frameAdvance
    LDA #$0000 : STA !ram_slowdown_frames
    LDA !ram_slowdown_controller_1 : STA $97
    LDA !ram_slowdown_controller_2 : STA $99
    JSL $809459

  .done
    PLY
    PLX
    PLA
    PLD
    PLB
    RTI
}

ih_gamemode_frame:
{
    PHA
    LDA !ram_gametime_room : INC : STA !ram_gametime_room
    PLA

    ; overwritten code
    STZ $0A30
    STZ $0A32
    RTL
}

ih_after_room_transition:
{
    PHX
    PHY

    LDA !ram_transition_counter : STA !ram_last_door_lag_frames
    LDA !ram_realtime_room : STA !ram_last_realtime_door

    LDA #$0000 : STA !ram_transition_flag

    ; Check if MBHP needs to be disabled
    LDA !sram_display_mode : CMP #!IH_MODE_ROOMSTRAT_INDEX : BNE .check_reset_segment_timer
    LDA !sram_room_strat : CMP #!IH_STRAT_MBHP_INDEX : BNE .check_reset_segment_timer
    LDA !ROOM_ID : CMP #$DD58 : BEQ .check_reset_segment_timer
    LDA #$0000 : STA !sram_display_mode

  .check_reset_segment_timer
    LDA !ram_reset_segment_later : BEQ .update_hud
    LDA #$0000 : STA !ram_reset_segment_later
    STA !ram_seg_rt_frames : STA !ram_seg_rt_seconds
    STA !ram_seg_rt_minutes

  .update_hud
    JSL ih_update_hud_code

    ; Reset gametime/transition timer
    LDA #$0000 : STA !ram_transition_counter

    ; Reset realtime timer
    LDA #$0000 : STA !ram_realtime_room

    JSL init_heat_damage_ram
    JSL init_water_physics_after_room_transition
    PLY
    PLX

    ; original hijacked code
    LDA #$0008
    STA !GAMEMODE
    RTL
}

ih_before_room_transition:
{
    PHA
    PHX
    PHY

    ; Save and reset timers
    LDA !ram_transition_flag : CMP #$0001 : BEQ .done
    LDA #$0001 : STA !ram_transition_flag
    LDA #$0000 : STA !ram_room_has_set_rng

    ; Lag
    LDA !ram_realtime_room : SEC : SBC !ram_transition_counter : STA !ram_last_room_lag
    LDA #$0000 : STA !ram_transition_counter

    ; Gametime
    LDA !ram_gametime_room : STA !ram_last_gametime_room
    LDA #$0000 : STA !ram_gametime_room

    ; Realtime
    LDA !ram_realtime_room : STA !ram_last_realtime_room
    LDA #$0000 : STA !ram_realtime_room
    LDA #$0000 : STA !ram_last_realtime_door

    ; Save temp variables
    LDA $12 : PHA
    LDA $14 : PHA

    ; Update HUD
    JSL ih_update_hud_code_before_transition

    ; Restore temp variables
    PLA : STA $14
    PLA : STA $12

  .done
    ; Run standard code and return
    PLY
    PLX
    PLA
    STA !GAMEMODE
    CLC
    RTL
}

ceres_start_timers:
{
    LDA #$0000
    STA !ram_realtime_room : STA !ram_last_realtime_room
    STA !ram_gametime_room : STA !ram_last_gametime_room
    STA !ram_last_room_lag : STA !ram_last_door_lag_frames : STA !ram_transition_counter

    STZ $0723 ; overwritten code
    STZ $0725
    
    JML ceres_start_timers_return
}

ih_unpause:
; Adds frames when unpausing (nmi is turned off during vram transfers)
{
    ; RT room
    LDA !ram_realtime_room : CLC : ADC.w #41 : STA !ram_realtime_room

    ; RT seg
    LDA !ram_seg_rt_frames : CLC : ADC.w #41 : STA !ram_seg_rt_frames
    CMP.w #60 : BCC .updateHUD
    SEC : SBC.w #60 : STA !ram_seg_rt_frames

    LDA !ram_seg_rt_seconds : INC : STA !ram_seg_rt_seconds
    CMP.w #60 : BCC .updateHUD
    LDA #$0000 : STA !ram_seg_rt_seconds

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

    JSL ih_update_hud_early

  .done
    PLA
    STZ $0A56
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
    JSL $90F081 ; overwritten code
else
    JSL $90F084 ; overwritten code
endif

    JML ih_update_hud_early
}

ih_mb2_segment:
{
    ; runs during baby spawn routine for MB2
    STA $7E7854    ; we overwrote this instruction to get here

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
if !FEATURE_PAL
    JSL $90F081 ; overwritten code
else
    JSL $90F084 ; overwritten code
endif
    JML ih_update_hud_early
}

ih_ship_elevator_segment:
{
    JSL ih_update_hud_early
if !FEATURE_PAL
    JML $91E35B ; overwritten code
else
    JML $91E3F6 ; overwritten code
endif
}

ih_update_hud_code_before_transition:
{
    PHX
    PHY
    PHP
    PHB
    ; Bank 80
    PEA $8080 : PLB : PLB

    LDA !sram_display_mode : CMP #!IH_MODE_ARMPUMP_INDEX : BNE .update_hud_code

    ; Report armpump room totals
    LDA !ram_momentum_sum : CLC : ADC !ram_momentum_count : LDX #$0088 : JSR Draw4
    LDA !ram_fail_sum : CLC : ADC !ram_fail_count : LDX #$0092 : JSR Draw4
    LDA #$0000 : STA !ram_momentum_count : STA !ram_fail_count
    STA !ram_momentum_sum : STA !ram_fail_sum : STA !ram_roomstrat_counter

  .update_hud_code
    BRA ih_update_hud_code_start
}

ih_update_hud_code:
{
    PHX
    PHY
    PHP
    PHB
    ; Bank 80
    PEA $8080 : PLB : PLB

  .start
    LDA !ram_minimap : BNE .minimap_hud
    BRL .start_update

  .minimap_vanilla_infohud
    BRL .end

  .minimap_hud
    ; Map visible, so draw map counter over item%
    LDA !sram_top_display_mode : CMP !TOP_DISPLAY_VANILLA : BEQ .minimap_vanilla_infohud
    LDA !ram_map_counter : LDX #$0014 : JSR Draw3
    LDA !sram_display_mode : CMP #!IH_MODE_SHINETUNE_INDEX : BNE .minimap_roomtimer
    BRL .pick_minimap_transition_time

  .minimap_roomtimer
    STZ $4205
    LDA !sram_frame_counter_mode : BNE .minimap_ingame_roomtimer
    LDA !ram_last_realtime_room
    BRA .minimap_calculate_roomtimer
  .minimap_ingame_roomtimer
    LDA !ram_last_gametime_room
  .minimap_calculate_roomtimer
    ; Divide time by 60 or 50 and draw seconds and frames
    STA $4204
    %a8()
if !FEATURE_PAL
    LDA #$32
else
    LDA #$3C
endif
    STA $4206
    PHA : PLA : PHA : PLA
    %a16()
    LDA $4216 : STA $C1
    LDA $4214 : LDX #$00B0 : JSR Draw2
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$B4
    LDA $C1 : ASL : TAX
    LDA HexToNumberGFX1,X : STA !HUD_TILEMAP+$B6
    LDA HexToNumberGFX2,X : STA !HUD_TILEMAP+$B8

  .pick_minimap_transition_time
    LDA !sram_lag_counter_mode : BNE .minimap_transition_time_full
    LDA !ram_last_door_lag_frames
    BRA .draw_minimap_transition_time
  .minimap_transition_time_full
    LDA !ram_last_realtime_door
  .draw_minimap_transition_time
    LDX #$0054 : JSR Draw3
    BRL .end

  .start_update
    LDA #$FFFF : STA !ram_last_hp : STA !ram_enemy_hp

    ; Determine starting point of time display
    LDX #$003C
    LDA !sram_top_display_mode : CMP !TOP_DISPLAY_VANILLA : BNE .pick_roomtimer
    LDX #$003A

  .pick_roomtimer
    STZ $4205
    LDA !sram_frame_counter_mode : BNE .ingame_roomtimer
    LDA !ram_last_realtime_room
    BRA .calculate_roomtimer
  .ingame_roomtimer
    LDA !ram_last_gametime_room
  .calculate_roomtimer
    ; Divide time by 60 or 50 and draw seconds and frames
    STA $4204
    %a8()
if !FEATURE_PAL
    LDA #$32
else
    LDA #$3C
endif
    STA $4206
    PHA : PLA : PHA : PLA
    %a16()
    LDA $4216 : STA $C1
    LDA $4214 : JSR Draw3 : TXY
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$00,X
    LDA $C1 : ASL : TAX
    LDA HexToNumberGFX1,X : PHX : TYX : STA !HUD_TILEMAP+$02,X
    PLX : LDA HexToNumberGFX2,X : TYX : STA !HUD_TILEMAP+$04,X

    ; 3 tiles between input display and missile icon
    ; skip item% if display mode = vspeed
    LDA !sram_display_mode : CMP #!IH_MODE_VSPEED_INDEX : BEQ .skipToLag
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
    LDA !sram_top_display_mode : CMP !TOP_DISPLAY_VANILLA : BEQ .vanilla_infohud_draw_lag_and_reserves
    LDA !ram_last_room_lag : LDX #$0080 : JSR Draw4

    ; Skip door lag and segment timer when shinetune enabled
    LDA !sram_display_mode : CMP #!IH_MODE_SHINETUNE_INDEX : BEQ .end

    ; Door lag / transition time
    LDA !sram_lag_counter_mode : BNE .transition_time_full
    LDA !ram_last_door_lag_frames
    BRA .infohud_transition_time
  .transition_time_full
    LDA !ram_last_realtime_door
  .infohud_transition_time
    LDX #$00C2 : JSR Draw3
    BRA .pick_segment_timer

  .end
    PLB
    PLP
    PLY
    PLX
    RTL

  .vanilla_infohud_draw_lag_and_reserves
    LDA !SAMUS_RESERVE_MODE : CMP #$0001 : BNE .vanilla_infohud_draw_lag

    ; Draw reserve icon
    LDY #$998B : LDA !SAMUS_RESERVE_ENERGY : BNE .vanilla_draw_reserve_icon
    LDY #$9997
  .vanilla_draw_reserve_icon
    LDA $0000,Y : STA !HUD_TILEMAP+$18 : LDA $0002,Y : STA !HUD_TILEMAP+$1A
    LDA $0004,Y : STA !HUD_TILEMAP+$58 : LDA $0006,Y : STA !HUD_TILEMAP+$5A

  .vanilla_infohud_draw_lag
    LDA !ram_last_room_lag : LDX #$007E : JSR Draw4

    ; Skip door lag and segment timer when shinetune enabled
    LDA !sram_display_mode : CMP #!IH_MODE_SHINETUNE_INDEX : BEQ .end

    ; Door lag / transition time
    LDA !sram_lag_counter_mode : BNE .vanilla_infohud_transition_time_full
    LDA !ram_last_door_lag_frames
    BRA .draw_vanilla_infohud_transition_time
  .vanilla_infohud_transition_time_full
    LDA !ram_last_realtime_door
  .draw_vanilla_infohud_transition_time
    LDX #$00C2 : JSR Draw2

  .pick_segment_timer
    LDA !sram_frame_counter_mode : BNE .ingame_segment_timer
    LDA.w #!ram_seg_rt_frames : STA $00
    LDA !WRAM_BANK : STA $02
    BRA .draw_segment_timer

  .ingame_segment_timer
    LDA #$09DA : STA $00
    LDA #$007E : STA $02
    BRA .draw_segment_timer

  .draw_segment_timer
    ; Frames
    LDA [$00] : INC $00 : INC $00 : ASL : TAX
    LDA HexToNumberGFX1,X : STA !HUD_TILEMAP+$BC
    LDA HexToNumberGFX2,X : STA !HUD_TILEMAP+$BE

    ; Seconds
    LDA [$00] : INC $00 : INC $00 : ASL : TAX
    LDA HexToNumberGFX1,X : STA !HUD_TILEMAP+$B6
    LDA HexToNumberGFX2,X : STA !HUD_TILEMAP+$B8

    ; Minutes
    LDA [$00] : LDX #$00AE : JSR Draw3

    ; Draw decimal seperators
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$B4 : STA !HUD_TILEMAP+$BA
    LDA !IH_BLANK : STA !HUD_TILEMAP+$C0
    BRL .end
}

ih_update_hud_early:
{
    ; calculate lag frames
    LDA !ram_realtime_room : SEC : SBC !ram_transition_counter : STA !ram_last_room_lag

    LDA !ram_gametime_room : STA !ram_last_gametime_room
    LDA !ram_realtime_room : STA !ram_last_realtime_room

    ; update HUD
    LDA $12 : PHA : LDA $14 : PHA
    JSL ih_update_hud_code
    PLA : STA $14 : PLA : STA $12

    RTL
}

ih_hud_vanilla_health:
{
    LDA !SAMUS_HP : STA !SAMUS_LAST_HP : STA $4204
    %a8()
    LDA #$64 : STA $4206
    %a16()
    PHA : PLA : PHA : PLA
    LDA $4214 : STA $14
    LDA $4216 : STA $12
    LDA !SAMUS_HP_MAX : STA $4204
    %a8()
    LDA #$64 : STA $4206
    %ai16()
    PHA : PLA : PHA : PLA
    LDY #$0000 : LDA $4214
    INC : STA $16

  .vanilla_loop_tanks
    DEC $16 : BEQ .vanilla_draw_empty_tanks
    LDX #$3430
    LDA $14 : BEQ .vanilla_draw_tank_health
    DEC $14 : LDX #$2831
  .vanilla_draw_tank_health
    TXA : LDX $9CCE,Y : STA !HUD_TILEMAP+$08,X
    INY : INY : CPY #$001C : BMI .vanilla_loop_tanks
    BRA .vanilla_subtank_health

  .vanilla_draw_empty_tanks
     LDA !IH_BLANK
  .vanilla_loop_empty_tanks
     LDX $9CCE,Y : STA !HUD_TILEMAP+$08,X
     INY : INY : CPY #$001C : BMI .vanilla_loop_empty_tanks

  .vanilla_subtank_health
    LDA $12 : LDX #$0094 : JSR Draw2
    LDA $16 : BNE .vanilla_subtank_whitespace
    ; Draw the leading zero
    LDA.w NumberGFXTable : STA !HUD_TILEMAP+$94

  .vanilla_subtank_whitespace
    LDA !IH_BLANK : STA !HUD_TILEMAP+$92 : STA !HUD_TILEMAP+$98 : STA !HUD_TILEMAP+$9A
    STA !HUD_TILEMAP+$08 : STA !HUD_TILEMAP+$48 : STA !HUD_TILEMAP+$88

    LDA !SAMUS_RESERVE_MODE : CMP #$0001 : BNE .vanilla_no_reserves

    ; Draw reserve icon
    LDY #$998B : LDA !SAMUS_RESERVE_ENERGY : BNE .vanilla_draw_reserve_icon
    LDY #$9997
  .vanilla_draw_reserve_icon
    LDA $0000,Y : STA !HUD_TILEMAP+$18 : LDA $0002,Y : STA !HUD_TILEMAP+$1A
    LDA $0004,Y : STA !HUD_TILEMAP+$58 : LDA $0006,Y : STA !HUD_TILEMAP+$5A
    RTS

  .vanilla_no_reserves
    LDA !IH_BLANK : STA !HUD_TILEMAP+$18 : STA !HUD_TILEMAP+$1A : STA !HUD_TILEMAP+$58 : STA !HUD_TILEMAP+$5A
    RTS
}

ih_hud_code:
{
    %ai16()

    ; fix data bank register
    PHB
    PEA $8080
    PLB
    PLB

    LDA !sram_top_display_mode : CMP !TOP_DISPLAY_VANILLA : BEQ .vanilla_infohud

    ; -- input display --
    ; -- check if we want to update --
    LDA !IH_CONTROLLER_PRI : CMP !ram_ih_controller : BNE .controller_update
    BRL .status_display

  .controller_update
    ; -- read input
    TAY : LDX #$0000
  .controller_row_1_loop
    TYA : AND ControllerTable1,X
    BEQ .controller_row_1_blank
    LDA ControllerGfx1,X
    BRA .controller_row_1_draw
  .controller_row_1_blank
    LDA !IH_BLANK
  .controller_row_1_draw
    STA !HUD_TILEMAP+$08,X
    INX : INX : CPX #$000C : BNE .controller_row_1_loop

    LDX #$0000
  .controller_row_2_loop
    TYA : AND ControllerTable2,X
    BEQ .controller_row_2_blank
    LDA ControllerGfx2,X
    BRA .controller_row_2_draw
  .controller_row_2_blank
    LDA !IH_BLANK
  .controller_row_2_draw
    STA !HUD_TILEMAP+$48,X
    INX : INX : CPX #$000C : BNE .controller_row_2_loop

    TYA : STA !ram_ih_controller
    BRA .status_display

  .vanilla_infohud
    ; Shift infohud status left by one
    LDA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$88
    LDA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8A
    LDA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$8C
    LDA !HUD_TILEMAP+$90 : STA !HUD_TILEMAP+$8E

  .status_display
    LDA !sram_display_mode : ASL : TAX
    JSR (.status_display_table,X)

    ; Samus' HP
    LDA !SAMUS_HP : CMP !ram_last_hp : BEQ .reserves : STA !ram_last_hp
    LDA !sram_top_display_mode : CMP !TOP_DISPLAY_VANILLA : BEQ .vanilla_draw_health
    LDA !SAMUS_HP : LDX #$0092 : JSR Draw4
    LDA !IH_BLANK : STA !HUD_TILEMAP+$90 : STA !HUD_TILEMAP+$9A
    BRA .reserves

  .vanilla_check_health
    LDA !SAMUS_HP : CMP !SAMUS_LAST_HP : BEQ .vanilla_health_end
  .vanilla_draw_health
    JSR ih_hud_vanilla_health
  .vanilla_health_end
    ; Shift infohud status right by one
    LDA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    LDA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E
    LDA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C
    LDA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88
    BRL .end

    ; Reserve energy counter
  .reserves
    LDA !sram_top_display_mode : BEQ .statusIcons
    CMP !TOP_DISPLAY_VANILLA : BEQ .vanilla_check_health

    LDA !SAMUS_RESERVE_MAX : BEQ .noReserves
    LDA !SAMUS_RESERVE_ENERGY : CMP !ram_reserves_last : BEQ .checkAuto
    STA !ram_reserves_last : LDX #$0014 : JSR Draw3

  .checkAuto
    LDA !SAMUS_RESERVE_MODE : CMP #$0001 : BEQ .autoOn
    LDA !IH_BLANK : STA !HUD_TILEMAP+$1A : BRA .statusIcons

  .autoOn
    LDA !SAMUS_RESERVE_ENERGY : BEQ .autoEmpty
    LDA !IH_RESERVE_AUTO : STA !HUD_TILEMAP+$1A : BRA .statusIcons

  .autoEmpty
    LDA !IH_RESERVE_EMPTY : STA !HUD_TILEMAP+$1A : BRA .statusIcons

  .noReserves
    LDA !IH_BLANK : STA !HUD_TILEMAP+$14 : STA !HUD_TILEMAP+$16 : STA !HUD_TILEMAP+$18 : STA !HUD_TILEMAP+$1A

    ; Status Icons
  .statusIcons
    LDA !sram_status_icons : BNE .check_healthbomb
    JMP .end

  .check_healthbomb
    ; health bomb
    LDA $0E1A : BEQ .clear_healthbomb
    LDA !SAMUS_HP : CMP #$0032 : BMI .pink
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$54
    BRA .check_elevator

  .pink
    LDA !IH_HEALTHBOMB : STA !HUD_TILEMAP+$54
    BRA .check_elevator

  .clear_healthbomb
    LDA !IH_BLANK : STA !HUD_TILEMAP+$54

  .check_elevator
    ; Elevator
    LDA $0E16 : BEQ .clear_elevator
    LDA !IH_ELEVATOR : STA !HUD_TILEMAP+$56
    BRA .check_shinetimer

  .clear_elevator
    LDA !IH_BLANK : STA !HUD_TILEMAP+$56

    ; Shine timer
  .check_shinetimer
    LDA $0A68 : BEQ .clear_shinetimer
    LDA !IH_SHINETIMER : STA !HUD_TILEMAP+$58
    BRA .check_reserves

  .clear_shinetimer
    LDA !IH_BLANK : STA !HUD_TILEMAP+$58

    ; reserve tank
  .check_reserves
    LDA !sram_top_display_mode : BNE .end
    LDA !SAMUS_RESERVE_MODE : CMP #$0001 : BNE .clearReserve
    LDA !SAMUS_RESERVE_ENERGY : BEQ .empty
    LDA !SAMUS_RESERVE_MAX : BEQ .clearReserve

    LDA !IH_RESERVE_AUTO : STA !HUD_TILEMAP+$1A
    BRA .end

  .empty
    LDA !SAMUS_RESERVE_MAX : BEQ .clearReserve
    LDA !IH_RESERVE_EMPTY : STA !HUD_TILEMAP+$1A
    BRA .end

  .clearReserve
    LDA !IH_BLANK : STA !HUD_TILEMAP+$1A

  .end
    PLB
    ; overwritten code
    REP #$30
    LDA $7E09C0
    RTL
}

incsrc infohudmodes.asm

;---SUBROUTINES---
Draw2:
{
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $16

    ; Ones digit
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$02,X

    ; Tens digit
    LDA $16 : BEQ .blanktens : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$00,X

  .done
    INX #4
    RTS

  .blanktens
    LDA !IH_BLANK : STA !HUD_TILEMAP+$00,X
    BRA .done
}

Draw3:
{
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $16

    ; Ones digit
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$04,X

    LDA $16 : BEQ .blanktens
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $14

    ; Tens digit
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$02,X

    ; Hundreds digit
    LDA $14 : BEQ .blankhundreds : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$00,X

  .done
    INX #6
    RTS

  .blanktens
    LDA !IH_BLANK : STA !HUD_TILEMAP+$00,X : STA !HUD_TILEMAP+$02,X
    BRA .done

  .blankhundreds
    LDA !IH_BLANK : STA !HUD_TILEMAP+$00,X
    BRA .done
}

Draw4:
{
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $16

    ; Ones digit
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$06,X

    LDA $16 : BEQ .blanktens
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $14

    ; Tens digit
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$04,X

    LDA $14 : BEQ .blankhundreds
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $12

    ; Hundreds digit
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$02,X

    ; Thousands digit
    LDA $12 : BEQ .blankthousands : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$00,X

  .done
    INX #8
    RTS

  .blanktens
    LDA !IH_BLANK : STA !HUD_TILEMAP+$00,X : STA !HUD_TILEMAP+$02,X : STA !HUD_TILEMAP+$04,X
    BRA .done

  .blankhundreds
    LDA !IH_BLANK : STA !HUD_TILEMAP+$00,X : STA !HUD_TILEMAP+$02,X
    BRA .done

  .blankthousands
    LDA !IH_BLANK : STA !HUD_TILEMAP+$00,X
    BRA .done
}

DrawHealthPaused:
{
    LDA !sram_top_display_mode : BEQ .draw_health
    CMP !TOP_DISPLAY_VANILLA : BEQ .vanilla_draw_health

    LDA !SAMUS_RESERVE_MAX : BEQ .noReserves
    LDA !SAMUS_RESERVE_ENERGY : STA !ram_reserves_last : LDX #$0014 : JSR Draw3
    LDA !SAMUS_RESERVE_MODE : CMP #$0001 : BEQ .autoOn
    LDA !IH_BLANK : STA !HUD_TILEMAP+$1A : BRA .draw_health

  .autoOn
    LDA !SAMUS_RESERVE_ENERGY : BEQ .autoEmpty
    LDA !IH_RESERVE_AUTO : STA !HUD_TILEMAP+$1A : BRA .draw_health

  .autoEmpty
    LDA !IH_RESERVE_EMPTY : STA !HUD_TILEMAP+$1A : BRA .draw_health

  .noReserves
    LDA !IH_BLANK : STA !HUD_TILEMAP+$14 : STA !HUD_TILEMAP+$16 : STA !HUD_TILEMAP+$18 : STA !HUD_TILEMAP+$1A
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
    STA !HUD_TILEMAP+$00,X                     ; draw digit to HUD

    LDA $12 : AND #$0F00              ; (0X00)
    XBA : ASL
    TAY : LDA.w HexGFXTable,Y
    STA !HUD_TILEMAP+$02,X

    LDA $12 : AND #$00F0              ; (00X0)
    LSR #3 : TAY : LDA.w HexGFXTable,Y
    STA !HUD_TILEMAP+$04,X

    LDA $12 : AND #$000F              ; (000X)
    ASL : TAY : LDA.w HexGFXTable,Y
    STA !HUD_TILEMAP+$06,X
    RTS
}

Draw4Hundredths:
{
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA

    ; Ones digit ignored, go straight to tens digit
    LDA $4214 : BEQ .zerotens
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $14

    ; Tens digit
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$06,X

    LDA $14 : BEQ .zerohundreds
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $12

    ; Hundreds digit
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$04,X

    ; Thousands digit
    LDA $12 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$00,X

  .done
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$02,X
    INX #8
    RTS

  .zerotens
    LDA #$0C09 : STA !HUD_TILEMAP+$00,X : STA !HUD_TILEMAP+$04,X : STA !HUD_TILEMAP+$06,X
    BRA .done

  .zerohundreds
    LDA #$0C09 : STA !HUD_TILEMAP+$00,X : STA !HUD_TILEMAP+$04,X
    BRA .done
}

CalcEtank:
{
    STA $4204
    %a8()
    LDA #$64 : STA $4206
    %a16()
    PEA $0000 : PLA
    LDA $4214
    RTS
}

CalcItem:
{
    STZ $4214 : STA $4204
    %a8()
    LDA #$05 : STA $4206
    %a16()
    PEA $0000 : PLA
    LDA $4214
    RTS
}

CalcLargeItem:
{
    LDA $09A4
    AND #$F32F ; GT Code adds an unused item (10h)
    LDX #$0000
  .loop
    BIT #$0001 : BEQ .noItem

    INX

  .noItem
    LSR : BNE .loop
    TXA
    RTS
}

CalcBeams:
{
    PHP
    %a8()
    LDA $09A8
    LDX #$0000
  .loop
    BIT #$01 : BEQ .noItem

    INX

  .noItem
    LSR : BNE .loop

    LDA $09A9 : CMP #$10 : BNE .done

    INX

  .done
    TXA

    PLP
    RTS
}

ih_game_loop_code:
{
    PHA

    LDA !ram_transition_counter : INC : STA !ram_transition_counter

    LDA !ram_game_loop_extras : BEQ .handleinputs

    LDA !ram_metronome : BEQ +
    JSR metronome

+   LDA !ram_magic_pants_enabled : XBA : ORA !ram_space_pants_enabled
    BEQ .handleinputs

    BIT #$00FF : BEQ .magicpants    ; if spacepants are disabled, handle magicpants
    BIT #$FF00 : BEQ .spacepants    ; if magicpants are disabled, handle spacepants

    ; both are enabled, check Samus movement type to decide
    LDA $0A1F : AND #$00FF : CMP #$0001 : BEQ .magicpants    ; check if running

  .spacepants
    JSR space_pants
    BRA .handleinputs

  .magicpants
    JSR magic_pants

  .handleinputs
    LDA !IH_CONTROLLER_SEC_NEW : BEQ .done
    CMP !IH_PAUSE : BEQ .toggle_pause
    CMP !IH_SLOWDOWN : BEQ .toggle_slowdown
    CMP !IH_SPEEDUP : BEQ .toggle_speedup
    CMP !IH_RESET : BEQ .reset_slowdown
    CMP !IH_STATUS_R : BEQ .inc_statusdisplay
    CMP !IH_STATUS_L : BEQ .dec_statusdisplay

  .done
    PLA
    JSL $808111
    RTL

  .toggle_pause
    TDC : STA !ram_slowdown_frames
    DEC : STA !ram_slowdown_mode
    JMP .done

  .toggle_slowdown
    LDA !ram_slowdown_mode
    INC : STA !ram_slowdown_mode
    JMP .done

  .toggle_speedup
    LDA !ram_slowdown_mode : BEQ +
    DEC : STA !ram_slowdown_mode
+   JMP .done

  .reset_slowdown
    TDC
    STA !ram_slowdown_mode
    STA !ram_slowdown_frames
    JMP .done

  .inc_statusdisplay
    LDA !sram_display_mode : INC
    CMP #$0014 : BNE +
    TDC : STA !sram_display_mode
    BRA .update_status

  .dec_statusdisplay
    LDA !sram_display_mode : DEC
    CMP #$FFFF : BNE +
    LDA #$0013
+   STA !sram_display_mode

  .update_status
    TDC
    STA !ram_momentum_sum
    STA !ram_momentum_count
    STA !ram_HUD_check
    STA !ram_roomstrat_counter
    STA !ram_roomstrat_state
    STA !ram_armed_shine_duration
    STA !ram_fail_count
    STA !ram_fail_sum
    INC
    STA !ram_dash_counter
    STA !ram_xpos
    STA !ram_ypos
    STA !ram_horizontal_speed
    STA !ram_vertical_speed
    STA !ram_subpixel_pos
    STA !ram_mb_hp
    STA !ram_enemy_hp
    STA !ram_shine_counter
    JMP .done
}

metronome:
{
    LDA !ram_metronome_counter : INC
    CMP !sram_metronome_tickrate : BEQ .tick
    CMP #$0002 : BEQ .eraseHUD
    STA !ram_metronome_counter
    RTS

  .eraseHUD
    STA !ram_metronome_counter
    LDA !IH_BLANK : STA !HUD_TILEMAP+$62
    RTS

  .tick
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$62
    LDA #$0000 : STA !ram_metronome_counter
    LDA !sram_metronome_sfx : ASL : TAX
    LDA.l MetronomeSFX,X : JSL !SFX_LIB1
    RTS
}

MetronomeSFX:
    ; missile, click, beep, shot, spazer
    dw #$0003, #$0039, #$0036, #$000B, #$000F

magic_pants:
{
    LDA $0A96 : CMP #$0009 : BEQ .check
    LDA !ram_magic_pants_state : BEQ +
    TDC : STA !ram_magic_pants_state

    LDA !ram_magic_pants_enabled : AND #$0001 : BEQ +
    LDA !ram_magic_pants_pal1 : STA $7EC194
    LDA !ram_magic_pants_pal2 : STA $7EC196
    LDA !ram_magic_pants_pal3 : STA $7EC19E
+   RTS

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
    LDA $0A1C : CMP #$0009 : BCC .done
    CMP #$0013 : BCS .done

    LDA !ram_magic_pants_state : BNE +

    ; if loudpants are enabled, click
    LDA !ram_magic_pants_enabled : AND #$0002 : BEQ +
    LDA !sram_metronome_sfx : ASL : TAX
    LDA.l MetronomeSFX,X : JSL !SFX_LIB1

    ; if flashpants are enabled, flash
+   LDA !ram_magic_pants_enabled : AND #$0001 : BEQ .done
    LDA !ram_magic_pants_state : BNE ++

    LDA $7EC194 : STA !ram_magic_pants_pal1
    LDA $7EC196 : STA !ram_magic_pants_pal2
    LDA $7EC19E : STA !ram_magic_pants_pal3
++  LDA #$FFFF
    STA $7EC194 : STA $7EC196 : STA $7EC19E

  .done
    LDA #$FFFF : STA !ram_magic_pants_state
    RTS
}

space_pants:
{
+   LDA $0A1C : CMP #$001B : BEQ .checkFalling
    CMP #$001C : BEQ .checkFalling
    CMP #$0081 : BEQ .done
    CMP #$0082 : BEQ .done
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
    LDA $0B36 : CMP #$0002 : BNE .reset    ; check if falling

  .checkLiquid
    LDA $0AD2 : BNE .SJliquid             ; check if air

  .SJair
    LDA $0B2D : CMP $909E97 : BMI .reset  ; check against min SJ vspeed for air
    CMP $909E99 : BPL .reset              ; check against max SJ vspeed for air
    BRA .go

  .SJliquid
    LDA $0B2D : CMP $909E9B : BMI .reset  ; check against min SJ vspeed for liquids
    CMP $909E9D : BPL .reset              ; check against max SJ vspeed for liquids

    ; Screw Attack seems to write new palette data every frame, which overwrites the flash
  .go
    LDA !ram_magic_pants_state : BNE .done

    ; if loudpants are enabled, click
    LDA !ram_space_pants_enabled : AND #$0002 : BEQ +
    LDA !sram_metronome_sfx : ASL : TAX
    LDA.l MetronomeSFX,X : JSL !SFX_LIB1

    ; if flashpants are enabled, flash
+   LDA !ram_space_pants_enabled : AND #$0001 : BEQ ++
    ; preserve palettes first
    LDA $7EC194 : STA !ram_magic_pants_pal1
    LDA $7EC196 : STA !ram_magic_pants_pal2
    LDA $7EC198 : STA !ram_magic_pants_pal3
    ; then flash
    LDA #$FFFF
    STA $7EC194 : STA $7EC196 : STA $7EC198

++  LDA #$FFFF : STA !ram_magic_pants_state
    RTS
}

ih_shinespark_code:
{
    DEC
    STA !ram_armed_shine_duration
    STA $0A68
    RTL
}

print pc, " infohud end"
warnpc $F0E000 ; spritefeat.asm


; Stuff that needs to be placed in bank 80
org $80FD00
print pc, " infohud bank80 start"

ih_fix_scroll_offsets:
{
    LDA !ram_fix_scroll_offsets : BEQ .done
    %a8()
    LDA $0911 : STA $B1 : STA $B5
    LDA $0915 : STA $B3 : STA $B7
    %a16()

  .done
    ; overwritten code
    LDA $B1 : SEC
    RTS
}

ih_hud_code_paused:
{
    ; overwritten code
    PHP
    PHB
    PHK
    PLB
    %a8()
    STZ $02
    %ai16()

    ; Update Samus' HP and reserves
    LDA $7E09C2 : CMP !ram_last_hp : BEQ .check_reserves : STA !ram_last_hp
    BRA .draw_health
  .check_reserves
    LDA $7E09D6 : CMP !ram_reserves_last : BEQ .end
  .draw_health
    PHY : PHX
    LDX #$0092 : JSL DrawHealthPaused
    PLX : PLY

  .end
    JSL init_heat_damage_ram
    JSL init_water_physics_ram
    LDA $7E09C0 ; overwritten code
    JMP $9B51
}

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
    dw #$0020, #$0800, #$0010, #$4000, #$0040, #$2000
ControllerTable2:
    dw #$0200, #$0400, #$0100, #$8000, #$0080, #$1000
ControllerGfx1:
    dw #$0C68, #$0C61, #$0C69, #$0C67, #$0C66, #$0C6A
ControllerGfx2:
    dw #$0C60, #$0C63, #$0C62, #$0C65, #$0C64, #$0C6B

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

print pc, " infohud bank80 end"
warnpc $80FF80 ; cutscenes.asm door transition code

