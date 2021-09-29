;=======================================================
;InfoHUD timers and stuff
;=======================================================

org $809490
    jmp $9497    ; skip resetting player 2 inputs

org $8094DF
    PLP          ; patch out resetting of controller 2 buttons and enable debug mode
    RTL

org $828B4B      ; disable debug functions
    JML ih_debug_patch

org $828115
    JSL ih_max_etank_code

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
org $A0B9BE      ; update timers when Ridley drops spawn
else
org $A0B9AE      ; update timers when Ridley drops spawn
endif
    JSL ih_drops_segment

if !FEATURE_PAL
org $A0B9F1      ; update timers when Crocomire drops spawn
else
org $A0B9E1      ; update timers when Crocomire drops spawn
endif
    JSL ih_drops_segment

if !FEATURE_PAL
org $A0BA24      ; update timers when Phantoon drops spawn
else
org $A0BA14      ; update timers when Phantoon drops spawn
endif
    JSL ih_drops_segment

if !FEATURE_PAL
org $A0BA57      ; update timers when Botwoon drops spawn
else
org $A0BA47      ; update timers when Botwoon drops spawn
endif
    JSL ih_drops_segment

if !FEATURE_PAL
org $A0BA8A      ; update timers when Kraid drops spawn
else
org $A0BA7A      ; update timers when Kraid drops spawn
endif
    JSL ih_drops_segment

if !FEATURE_PAL
org $A0BABD      ; update timers when Bomb Torizo drops spawn
else
org $A0BAAD      ; update timers when Bomb Torizo drops spawn
endif
    JSL ih_drops_segment

if !FEATURE_PAL
org $A0BAF0      ; update timers when Golden Torizo drops spawn
else
org $A0BAE0      ; update timers when Golden Torizo drops spawn
endif
    JSL ih_drops_segment

if !FEATURE_PAL
org $A0BB23      ; update timers when Spore Spawn drops spawn
else
org $A0BB13      ; update timers when Spore Spawn drops spawn
endif
    JSL ih_drops_segment

if !FEATURE_PAL
org $A0BB56      ; update timers when Draygon drops spawn
else
org $A0BB46      ; update timers when Draygon drops spawn
endif
    JSL ih_drops_segment

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
ih_max_etank_code:
{
    ; Reset max-etanks value
    LDA #$0000 : STA !ram_etanks
    LDA $7EC200,X
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
    LDA !ram_gametime_room : CMP #$EA5F : BEQ +
    INC : STA !ram_gametime_room

+   PLA
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
    LDA #$0000 : STA !ram_transition_flag

    ; Check if MBHP needs to be disabled
    LDA !sram_display_mode : CMP #$0001 : BNE +
    LDA !sram_room_strat : CMP #$0007 : BNE +
    LDA $079B : CMP #$DD58 : BEQ +
    LDA #$0000 : STA !sram_display_mode

    ; Maybe reset segment timer
+   LDA !ram_reset_segment_later : BEQ +
    LDA #$0000 : STA !ram_reset_segment_later
    STA !ram_seg_rt_frames : STA !ram_seg_rt_seconds
    STA !ram_seg_rt_minutes

    ; Update HUD
+   JSL ih_update_hud_code

    ; Reset gametime/transition timer
    LDA #$0000 : STA !ram_transition_counter

    ; Reset realtime timer
    LDA #$0000 : STA !ram_realtime_room

    PLY
    PLX

    ; original hijacked code
    LDA #$0008
    STA $0998
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

    ; Save temp variables
    LDA $12 : PHA
    LDA $14 : PHA

    ; Update HUD
    JSL ih_update_hud_code

    ; Restore temp variables
    PLA : STA $14
    PLA : STA $12

  .done
    ; Run standard code and return
    PLY
    PLX
    PLA
    STA $0998
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

ih_elevator_activation:
{
    PHA
    ; Only update if we're in a room and activate an elevator.
    ; Otherwise this will also run when you enter a room already riding one.
    LDA $0998 : CMP #$0008 : BNE .done

    JSL ih_update_hud_early

  .done
    PLA
    STZ $0A56
    SEC
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
    JML $808111 ; overwritten code
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
    JML $90F081 ; overwritten code
else
    JML $90F084 ; overwritten code
endif
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

ih_update_hud_code:
{
    PHX
    PHY
    PHP
    PHB
    ; Bank 80
    PEA $8080 : PLB : PLB

    LDA !ram_minimap : BNE .minimap_hud
    BRL .start_update

  .minimap_hud
    ; Map visible, so draw map counter over item%
    LDA !ram_map_counter : LDX #$0014 : JSR Draw3
    LDA !sram_display_mode : CMP #$0007 : BNE .minimap_roomtimer
    BRL .map_doorlag

  .minimap_roomtimer
    LDA !sram_frame_counter_mode : BNE .ingameRoomMap

    ; Real time with minimap
    {
        ; Divide real time by 60/50, save seconds, frame seperately
        {
            STZ $4205
            LDA !ram_last_realtime_room : STA $4204
            %a8()
            if !FEATURE_PAL
                LDA #$32
            else
                LDA #$3C
            endif
            STA $4206
            PHA : PLA : PHA : PLA
            %a16()
            LDA $4214 : STA !ram_tmp_1
            LDA $4216 : STA !ram_tmp_2
        }
        ; Draw seconds
        LDA !ram_tmp_1 : LDX #$00B0 : JSR Draw2

        ; Draw decimal seperator
        LDA !IH_DECIMAL : STA $7EC6B4

        ; Draw frames
        LDA !ram_tmp_2 : ASL : TAX
        LDA HexToNumberGFX1,X : STA $7EC6B6
        LDA HexToNumberGFX2,X : STA $7EC6B8

        BRA .map_doorlag
    }

    ; Room time with minimap
    .ingameRoomMap
    {
        ; Divide game time by 60/50, save seconds, frames seperately
        {
            STZ $4205
            LDA !ram_last_gametime_room : STA $4204
            %a8()
            if !FEATURE_PAL
                LDA #$32
            else
                LDA #$3C
            endif
            STA $4206
            PHA : PLA : PHA : PLA
            %a16()
            LDA $4214 : STA !ram_tmp_3
            LDA $4216 : STA !ram_tmp_4
        }
        ; Draw seconds
        LDA !ram_tmp_3 : LDX #$0080 : JSR Draw2

        ; Draw decimal seperator
        LDA !IH_DECIMAL : STA $7EC6B4

        ; Draw frames
        LDA !ram_tmp_4 : ASL : TAX
        LDA HexToNumberGFX1,X : STA $7EC6B6
        LDA HexToNumberGFX2,X : STA $7EC6B8
    }

  .map_doorlag
    ; Lag
    LDA !ram_last_door_lag_frames : LDX #$0054 : JSR Draw3

  .minimap_end
    BRL .end

  .start_update
    LDA #$FFFF : STA !ram_last_hp : STA !ram_enemy_hp

    LDA !sram_frame_counter_mode : BNE .ingameRoom

    ; Real time
    {
        ; Divide real time by 60/50, save seconds, frame seperately
        {
            STZ $4205
            LDA !ram_last_realtime_room : STA $4204
            %a8()
            if !FEATURE_PAL
                LDA #$32
            else
                LDA #$3C
            endif
            STA $4206
            PHA : PLA : PHA : PLA
            %a16()
            LDA $4214 : STA !ram_tmp_1
            LDA $4216 : STA !ram_tmp_2
        }

        ; Draw seconds
        LDA !ram_tmp_1 : LDX #$003C : JSR Draw3

        ; Draw decimal seperator
        LDA !IH_DECIMAL : STA $7EC642

        ; Draw frames
        LDA !ram_tmp_2 : ASL : TAX
        LDA HexToNumberGFX1,X : STA $7EC644
        LDA HexToNumberGFX2,X : STA $7EC646

        BRA .pct
    }

    ; Room time
    .ingameRoom
    {
        ; Divide game time by 60/50, save seconds, frames seperately
        {
            STZ $4205
            LDA !ram_last_gametime_room : STA $4204
            %a8()
            if !FEATURE_PAL
                LDA #$32
            else
                LDA #$3C
            endif
            STA $4206
            PHA : PLA : PHA : PLA
            %a16()
            LDA $4214 : STA !ram_tmp_3
            LDA $4216 : STA !ram_tmp_4
        }

        ; Draw seconds
        LDA !ram_tmp_3 : LDX #$003C : JSR Draw3

        ; Draw decimal seperator
        LDA !IH_DECIMAL : STA $7EC642

        ; Draw frames
        LDA !ram_tmp_4 : ASL : TAX
        LDA HexToNumberGFX1,X : STA $7EC644
        LDA HexToNumberGFX2,X : STA $7EC646
    }

    ; Draw Item percent
    .pct
    {
        LDA #$0000 : STA !ram_pct_1

        ; Max HP (E tanks)
        LDA $09C4 : JSR CalcEtank : LDA $4214 : STA !ram_etanks

        ; skip item% if display mode = vspeed
        LDA !sram_display_mode : CMP #$000E : BEQ .skipToEtanks

        ; Max Reserve Tanks
        LDA $09D4 : JSR CalcEtank

        ; Max Missiles, Supers & Power Bombs
        LDA $09C8 : CLC : ADC $09CC : CLC : ADC $09D0 : JSR CalcItem

        ; Collected items
        JSR CalcLargeItem

        ; Collected beams & charge
        JSR CalcBeams

        ; Percent counter -> decimal form and drawn on HUD
        LDA !ram_pct_1 : LDX #$0012 : JSR Draw3

        ; Percent symbol on HUD
        LDA !IH_PERCENT : STA $7EC618
    }

  .skipToEtanks
    ; E-tanks
    LDA !ram_etanks : LDX #$0054 : JSR Draw3

    ; Lag
    LDA !ram_last_room_lag : LDX #$0080 : JSR Draw4

    ; Skip door lag and segment timer when shinetune enabled
    LDA !sram_display_mode : CMP #$0007 : BEQ .end

    ; Door lag
    LDA !ram_last_door_lag_frames : LDX #$00C2 : JSR Draw3

    ; Segment timer
    {
        LDA !sram_frame_counter_mode : BNE .ingameSeg
        LDA.w #!ram_seg_rt_frames : STA $00
        LDA #$007F : STA $02
        BRA .drawSeg

      .ingameSeg
        LDA #$09DA : STA $00
        LDA #$007E : STA $02

      .drawSeg
        ; Frames
        LDA [$00] : INC $00 : INC $00 : ASL : TAX
        LDA HexToNumberGFX1, X : STA $7EC6BC
        LDA HexToNumberGFX2, X : STA $7EC6BE

        ; Seconds
        LDA [$00] : INC $00 : INC $00 : ASL : TAX
        LDA HexToNumberGFX1, X : STA $7EC6B6
        LDA HexToNumberGFX2, X : STA $7EC6B8

        ; Minutes
        LDA [$00] : LDX #$00AE : JSR Draw3

        ; Draw decimal seperators
        LDA !IH_DECIMAL : STA $7EC6B4 : STA $7EC6BA
    }

  .end
    PLB
    PLP
    PLY
    PLX
    RTL
}

ih_update_hud_early:
{
    PHA
    PHX
    PHY

    ; calculate lag frames
    LDA !ram_realtime_room : SEC : SBC !ram_transition_counter : STA !ram_last_room_lag

    LDA !ram_gametime_room : STA !ram_last_gametime_room
    LDA !ram_realtime_room : STA !ram_last_realtime_room

    ; save temp variables
    LDA $12 : PHA
    LDA $14 : PHA

    ; Update HUD
    JSL ih_update_hud_code

    ; restore temp variables
    PLA : STA $14
    PLA : STA $12

    ; Run standard code and return
    PLY
    PLX
    PLA
    RTL
}

ih_hud_code:
{
    %ai16()

    ; fix data bank register
    PHB
    PEA $8080
    PLB
    PLB

    ; -- input display--
    ; -- check if we want to update --
    LDA !IH_CONTROLLER_PRI : CMP !ram_ih_controller : BEQ .status_display

    ; -- read input
    TAY
    LDX #$0000

-   TYA
    AND ControllerTable1, X
    BEQ +
    LDA ControllerGfx1, X
    JMP ++
+   LDA #$2C0F
++  STA $7EC608, X
    INX
    INX
    CPX #$000C
    BNE -

    LDX #$0000

-   TYA
    AND ControllerTable2, X
    BEQ +
    LDA ControllerGfx2, X
    JMP ++
+   LDA #$2C0F
++  STA $7EC648, X
    INX
    INX
    CPX #$000C
    BNE -

    TYA
    STA !ram_ih_controller

  .status_display
    LDA !sram_display_mode : ASL : TAX
    JSR (.status_display_table,X)

    ; Samus' HP
    LDA $09C2 : CMP !ram_last_hp : BEQ .end : STA !ram_last_hp
    LDX #$0092 : JSR Draw4
    LDA !IH_BLANK : STA $7EC690

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
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC602,X

    ; Tens digit
    LDA $16 : BEQ .blanktens : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC600,X

  .done
    INX #4
    RTS

  .blanktens
    LDA #$0057 : STA $7EC600,X
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
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC604,X

    LDA $16 : BEQ .blanktens
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $14

    ; Tens digit
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC602,X

    ; Hundreds digit
    LDA $14 : BEQ .blankhundreds : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC600,X

  .done
    INX #6
    RTS

  .blanktens
    LDA #$0057 : STA $7EC600,X : STA $7EC602,X
    BRA .done

  .blankhundreds
    LDA #$0057 : STA $7EC600,X
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
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC606,X

    LDA $16 : BEQ .blanktens
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $14

    ; Tens digit
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC604,X

    LDA $14 : BEQ .blankhundreds
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $12

    ; Hundreds digit
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC602,X

    ; Thousands digit
    LDA $12 : BEQ .blankthousands : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC600,X

  .done
    INX #8
    RTS

  .blanktens
    LDA #$0057 : STA $7EC600,X : STA $7EC602,X : STA $7EC604,X
    BRA .done

  .blankhundreds
    LDA #$0057 : STA $7EC600,X : STA $7EC602,X
    BRA .done

  .blankthousands
    LDA #$0057 : STA $7EC600,X
    BRA .done
}

Draw4Hex:
{
    STA $12 : AND #$F000              ; get first digit (X000)
    XBA : LSR #3                      ; move it to last digit (000X) and shift left one
    TAY : LDA.w HexGFXTable,Y         ; load tilemap address with 2x digit as index
    STA $7EC600,X                     ; draw digit to HUD

    LDA $12 : AND #$0F00              ; (0X00)
    XBA : ASL
    TAY : LDA.w HexGFXTable,Y
    STA $7EC602,X

    LDA $12 : AND #$00F0              ; (00X0)
    LSR #3 : TAY : LDA.w HexGFXTable,Y
    STA $7EC604,X

    LDA $12 : AND #$000F              ; (000X)
    ASL : TAY : LDA.w HexGFXTable,Y
    STA $7EC606,X
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
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC606,X

    LDA $14 : BEQ .zerohundreds
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $12

    ; Hundreds digit
    LDA $4216 : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC604,X

    ; Thousands digit
    LDA $12 : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC600,X

  .done
    LDA !IH_DECIMAL : STA $7EC602,X
    INX #8
    RTS

  .zerotens
    LDA #$0C09 : STA $7EC600,X : STA $7EC604,X : STA $7EC606,X
    BRA .done

  .zerohundreds
    LDA #$0C09 : STA $7EC600,X : STA $7EC604,X
    BRA .done
}

CalcEtank:
{
    STA $4204
    %a8()
    LDA #$64 : STA $4206
    %a16()
    PEA $0000 : PLA
    LDA $4214 : CLC : ADC !ram_pct_1 : STA !ram_pct_1
    RTS
}

CalcItem:
{
    STZ $4214 : STA $4204
    %a8()
    LDA #$05 : STA $4206
    %a16()
    PEA $0000 : PLA
    LDA $4214 : CLC : ADC !ram_pct_1 : STA !ram_pct_1
    RTS
}

CalcLargeItem:
{
    LDA $09A4
    LDX #$0000
  .loop
    BIT #$0001 : BEQ .noItem

    INX

  .noItem
    LSR : BNE .loop
    TXA : CLC : ADC !ram_pct_1 : STA !ram_pct_1
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
    TXA : CLC : ADC !ram_pct_1 : STA !ram_pct_1

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

+   LDA !ram_magic_pants_enabled : BEQ .handleinputs
    CMP #$0001 : BEQ .magicpants
    CMP #$0002 : BEQ .spacepants

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
    LDA #$FFFF
    STA !ram_slowdown_mode
    LDA #$0000
    STA !ram_slowdown_frames
    JMP .done

  .toggle_slowdown
    LDA !ram_slowdown_mode
    INC A
    STA !ram_slowdown_mode
    JMP .done

  .toggle_speedup
    LDA !ram_slowdown_mode
    BEQ +
    DEC A
    STA !ram_slowdown_mode
+   JMP .done

  .reset_slowdown
    LDA #$0000
    STA !ram_slowdown_mode
    STA !ram_slowdown_frames
    JMP .done

  .inc_statusdisplay
    LDA !sram_display_mode
    INC A
    CMP #$0013
    BNE +
    LDA #$0000
+   STA !sram_display_mode
    JMP .update_status

  .dec_statusdisplay
    LDA !sram_display_mode
    DEC A
    CMP #$FFFF
    BNE +
    LDA #$0012
+   STA !sram_display_mode
    JMP .update_status


  .update_status
    LDA #$0000
    STA !ram_HUD_check
    STA !ram_armed_shine_duration
    INC A
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
    LDA !IH_BLANK : STA $7EC662
    RTS

  .tick
    LDA !IH_LETTER_X : STA $7EC662
    LDA #$0000 : STA !ram_metronome_counter
    LDA !sram_metronome_sfx : ASL : TAX
    LDA.l MetronomeSFX,X : JSL !SFX_LIB1
    RTS

MetronomeSFX:
    ; missile, click, beep, shot, spazer
    dw #$0003, #$0039, #$0036, #$000B, #$000F
}

magic_pants:
{
    LDA $0A96 : CMP #$0009 : BEQ .check
    LDA !ram_magic_pants_state : BEQ +
    LDA !ram_magic_pants_pal1 : STA $7EC194
    LDA !ram_magic_pants_pal2 : STA $7EC196
    LDA !ram_magic_pants_pal3 : STA $7EC19E
    LDA #$0000 : STA !ram_magic_pants_state
+   RTS

  .check
    LDA $0A1C : CMP #$0009 : BEQ .flash
    CMP #$000A : BEQ .flash
    RTS

  .flash
    LDA !ram_magic_pants_state : BNE +
    LDA $7EC194 : STA !ram_magic_pants_pal1
    LDA $7EC196 : STA !ram_magic_pants_pal2
    LDA $7EC19E : STA !ram_magic_pants_pal3
+   LDA #$FFFF
    STA $7EC194 : STA $7EC196 : STA $7EC19E
    STA !ram_magic_pants_state
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
    LDA !ram_magic_pants_pal1 : STA $7EC194
    LDA !ram_magic_pants_pal2 : STA $7EC196
    LDA !ram_magic_pants_pal3 : STA $7EC198
    LDA #$0000 : STA !ram_magic_pants_state
  .done
    RTS

  .checkFalling
    LDA $0B36 : CMP #$0002 : BNE .reset    ; check if falling

  .checkLiquid
    LDA $0AD2 : BNE .SJliquid             ; check if air

  .SJair
    LDA $0B2D : CMP $909E97 : BPL +       ; check against min SJ vspeed for air
    BRA .reset
+   CMP $909E99 : BPL .reset              ; check against max SJ vspeed for air
    BRA .flash

  .SJliquid
    LDA $0B2D : CMP $909E9B : BPL +       ; check against min SJ vspeed for liquids
    BRA .reset
+   CMP $909E9D : BPL .reset              ; check against max SJ vspeed for liquids

; Screw Attack seems to write new palette data every frame, which overwrites the flash
  .flash
    LDA !ram_magic_pants_state : BNE .done
    ; preserve palettes first
    LDA $7EC194 : STA !ram_magic_pants_pal1
    LDA $7EC196 : STA !ram_magic_pants_pal2
    LDA $7EC198 : STA !ram_magic_pants_pal3
    ; then flash
    LDA #$FFFF
    STA $7EC194 : STA $7EC196 : STA $7EC198
    STA !ram_magic_pants_state
    RTS
}

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

    ; restore temp variables
    PLA : STA $14
    PLA : STA $12

    PLA
    JSL $80818E
    RTL
}

ih_shinespark_code:
{
    DEC
    STA !ram_armed_shine_duration
    STA $0A68
    RTL
}

print pc, " infohud end"


; Stuff that needs to be placed in bank 80
org $80FC00
print pc, " infohud bank80 start"

NumberGFXTable:
    dw #$0C09, #$0C00, #$0C01, #$0C02, #$0C03, #$0C04, #$0C05, #$0C06, #$0C07, #$0C08
    dw #$0C70, #$0C71, #$0C72, #$0C73, #$0C74, #$0C75, #$0C78, #$0C79, #$0C7A, #$0C7B
    dw #$0C7C, #$0C7D, #$0C7E, #$0C7F, #$0CD2, #$0CD4, #$0CD5, #$0CD6, #$0CD7, #$0CD8
    dw #$0CD9, #$0CDA, #$0CDB, #$0C5C, #$0C5D, #$0CB8, #$0C8D, #$0C12, #$0C13, #$0C14
    dw #$0C15, #$0C16, #$0C17, #$0C18, #$0C19, #$0C1A, #$0C1B, #$0C20, #$0C21, #$0C22
    dw #$0C23, #$0C24, #$0C25, #$0C26, #$0C27, #$0C28, #$0C29, #$0C2A, #$0C2B, #$0C2C
    dw #$0C2D, #$0C2E, #$0C2F, #$0C30, #$0C31, #$0CCA

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
warnpc $80FFC0 ; header

