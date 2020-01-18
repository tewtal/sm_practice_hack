;=======================================================
;InfoHUD timers and stuff
;=======================================================

org $809490
    jmp $9497    ; skip resetting player 2 inputs

org $8094DF
    plp            ; patch out resetting of controller 2 buttons and enable debug mode
    rtl

org $828B4B        ; disable debug functions
    JML ih_debug_patch

org $809B51
    JMP $9BFB    ;skip drawing auto reserve icon and normal energy numbers and tanks during HUD routine

org $82AED9      ;routine to draw auto reserve icon on HUD from equip screen
    NOP : NOP : NOP

org $82AEAF      ;routine to remove auto reserve icon on HUD from equip screen
    NOP : NOP : NOP

org $828115
    JSL ih_max_etank_code

org $90A91B      ;minimap drawing routine
    RTL

org $90A8EF      ;minimap update during HUD loading
    ; Make sure it only runs when you start a new game
    LDA $0998 : AND #$00FF : CMP #$0006 : BNE +
    JSL reset_all_counters
    +
    RTL

org $90E6AA      ;hijack, runs on gamestate = 08 (main gameplay), handles most updating HUD information
    JSL ih_gamemode_frame : NOP : NOP

org $9493FB      ;hijack, runs when Samus hits a door BTS
    JSL ih_before_room_transition

org $9493B8      ;hijack, runs when Samus hits a door BTS
    JSL ih_before_room_transition

org $82E764      ;hijack, runs when Samus is coming out of a room transition
    JSL ih_after_room_transition : RTS

org $90A7F7      ;skip drawing minimap grid when entering boss rooms
    BRA FinishDrawMinimap

org $90A80A      ;normally runs after minimap grid has been drawn
    FinishDrawMinimap:
    LDA $179C

org $809B4C      ;hijack, HUD routine (game timer by Quote58)
    JSL ih_hud_code : NOP

org $82894F      ;hijack, main game loop: runs EVERY frame (used for room transition timer)
    JSL ih_game_loop_code

org $84889F      ;hijack, runs every time an item is picked up
    JSL ih_get_item_code

org $91DAD8      ;hijack, runs after a shinespark has been charged
    JSL ih_shinespark_code

org $8095fc         ;hijack, end of NMI routine to update realtime frames
    JML ih_nmi_end

org $9AB800         ;graphics for menu cursor and input display
incbin ../resources/menugfx.bin

; Main bank stuff
org $DFE000
print pc, " infohud start"
ih_max_etank_code:
{
    ; Reset max-etanks value
    LDA #$0000 : STA !ram_max_etanks
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
    LDA #$0000 : STA !ram_shine_counter_1

    ; Update HUD
    JSL ih_update_hud_code

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

    ; save and reset timers
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

ih_update_hud_code:
{
    PHX
    PHY
    PHP
    PHB

    ; Bank 80
    PEA $8080 : PLB : PLB

    LDA #$FFFF : STA !ram_last_hp : STA !ram_enemy_hp

    LDA !sram_frame_counter_mode : BNE .ingameRoom

    ; Real time
    {
        ; Divide real time by 60, save seconds, frame seperately
        {
            STZ $4205
            LDA !ram_last_realtime_room : STA $4204
            %a8()
            LDA #$3C : STA $4206
            PHA : PLA : PHA : PLA
            %a16()
            LDA $4214 : STA !ram_tmp_1
            LDA $4216 : STA !ram_tmp_2
        }

        ; Draw seconds
        LDA !ram_tmp_1 : JSR Hex2Dec : LDX #$003C : JSR Draw3

        ; Draw decimal seperator
        LDA #$0CCB : STA $7EC642

        ; Draw frames
        LDA !ram_tmp_2 : ASL : TAX
        LDA HexToNumberGFX1, X : STA $7EC644
        LDA HexToNumberGFX2, X : STA $7EC646

        BRA .pct
    }

    ; Room time
    .ingameRoom
    {
        ; Divide game time by 60, save seconds, frames seperately
        {
            STZ $4205
            LDA !ram_last_gametime_room : STA $4204
            %a8()
            LDA #$3C : STA $4206
            PHA : PLA : PHA : PLA
            %a16()
            LDA $4214 : STA !ram_tmp_3
            LDA $4216 : STA !ram_tmp_4
        }

        ; Draw seconds
        LDA !ram_tmp_3 : JSR Hex2Dec : LDX #$003C : JSR Draw3

        ; Draw decimal seperator
        LDA #$0CCB : STA $7EC642

        ; Draw frames
        LDA !ram_tmp_4 : ASL : TAX
        LDA HexToNumberGFX1, X : STA $7EC644
        LDA HexToNumberGFX2, X : STA $7EC646
    }

    ; Draw Item percent
    .pct
    {
        LDA #$0000 : STA !ram_pct_1

        ; Max HP (E tanks)
        LDA $09C4 : SEC : SBC #$0063 : CLC : INC : JSR CalcEtank : LDA $4214 : STA !ram_etanks

        ; Max Reserve Tanks
        LDA $09D4 : JSR CalcEtank

        ; Max Missiles, Supers & Power Bombs
        LDA $09C8 : CLC : ADC $09CC : CLC : ADC $09D0 : JSR CalcItem

        ; Collected items
        JSR CalcLargeItem

        ; Collected beams & charge
        JSR CalcBeams

        ; Percent counter -> decimal form and drawn on HUD
        LDA !ram_pct_1 : JSR Hex2Dec : LDX #$0012 : JSR Draw3

        ; Percent symbol on HUD
        LDA #$0C0A : STA $7EC618
    }

    ; E-tanks
    LDA !ram_etanks : JSR Hex2Dec : LDX #$0054 : JSR Draw3

    ; Door lag
    LDA !ram_last_door_lag_frames : JSR Hex2Dec : LDX #$00C2 : JSR Draw3

    ; Lag
    LDA !ram_last_room_lag : JSR Hex2Dec : LDX #$0082 : JSR Draw3

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
        LDA [$00] : ASL : TAX
        LDA HexToNumberGFX1, X : STA $7EC6B0
        LDA HexToNumberGFX2, X : STA $7EC6B2

        ; Draw decimal seperators
        LDA #$0CCB : STA $7EC6B4 : STA $7EC6BA
    }

    .end
    PLB
    PLP
    PLY
    PLX

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
    LDX #$0000;

-   TYA
    AND ControllerTable1, X
    BEQ +
    LDA ControllerGfx1, X
    JMP ++
+   LDA #$2C0F
++  STA $7EC608, X
    INX
    INX
    CPX #$00C
    BNE -

    LDX #$0000;

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
    JSR Hex2Dec : LDX #$0092 : JSR Draw4

  .end
    PLB
    ; overwritten code
    REP #$30
    LDA $7E09C0
    RTL

  .status_display_table
    dw status_enemyhp
    dw status_shinetimer
    dw status_chargetimer
    dw status_xfactor
    dw status_mbhp
    dw status_dashcounter
    dw status_vspeed
    dw status_iframecounter
    dw status_lagcounter
    dw status_xpos
    dw status_ypos
    dw status_cooldowncounter
}


status_shinetimer:
{
    LDA !ram_shine_counter_1 : CMP #$000A : BNE .continue
    LDA #$0000 : STA !ram_shine_counter_1

  .continue
    LDA !ram_shine_counter_1 : INC : STA !ram_shine_counter_1

    LDA !ram_shine_counter_2 : CMP !ram_shine_counter_3 : BEQ .done : STA !ram_shine_counter_3
    CMP #$0000 : BNE .charge : LDA #$00B4

  .charge
    JSR Hex2Dec : LDX #$008A : JSR Draw3

  .done
    RTS
}

status_chargetimer:
{
    LDA #$003D : SEC : SBC $0CD0 : CMP !ram_charge_counter : BEQ .done : STA !ram_charge_counter
    CMP #$0000 : BPL .charging : LDA #$0000

  .charging
    JSR Hex2Dec : LDX #$008A : JSR Draw3

  .done
    RTS
}

status_xfactor:
{
    LDA #$0079 : SEC : SBC $0CD0 : CMP !ram_xfac_counter : BEQ .done : STA !ram_xfac_counter
    JSR Hex2Dec : LDX #$008A : JSR Draw3

  .done
    RTS
}

status_dashcounter:
{
    LDA $0B3F : AND #$00FF : CMP !ram_dash_counter : BEQ .done : STA !ram_dash_counter
    JSR Hex2Dec : LDX #$008A : JSR Draw3

  .done
    RTS
}

status_mbhp:
{
    LDY #$0014
    LDA $0FCC : CMP !ram_mb_hp : BEQ .done : STA !ram_mb_hp
    JSR Hex2Dec : LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_vspeed:
{
    LDA $0B2E : CMP !ram_vertical_speed : BEQ .done : STA !ram_vertical_speed
    JSR Hex2Dec : LDX #$008A : JSR Draw3

  .done
    RTS
}

status_iframecounter:
{
    LDA $18A8 : CMP !ram_iframe_counter : BEQ .done : STA !ram_iframe_counter
    JSR Hex2Dec : LDX #$008A : JSR Draw3

  .done
    RTS
}

status_lagcounter:
{
    LDA !ram_lag_counter : CMP !ram_last_lag_counter : BEQ .done : STA !ram_last_lag_counter
    JSR Hex2Dec : LDX #$008A : JSR Draw3

  .done
    RTS
}

status_xpos:
{
    LDA $0AF6 : CMP !ram_xpos : BEQ .done : STA !ram_xpos
    JSR Hex2Dec : LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_ypos:
{
    LDA $0AFA : CMP !ram_ypos : BEQ .done : STA !ram_ypos
    JSR Hex2Dec : LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_cooldowncounter:
{
    LDA $0CCC : CMP !ram_cooldown_counter : BEQ .done : STA !ram_cooldown_counter
    JSR Hex2Dec : LDX #$008A : JSR Draw3

  .done
    RTS
}

status_enemyhp:
{
    LDA $0F8C : CMP !ram_enemy_hp : BEQ .done : STA !ram_enemy_hp
    JSR Hex2Dec : LDX #$0088 : JSR Draw4

  .done
    RTS
}


;---SUBROUTINES---
Hex2Dec:
{
    STA $4204

    %a8()
    LDA #$64 : STA $4206 ; divide by 100d
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $12
    LDA $4216 : STA $4204

    %a8()
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA
    LDA $4214 : ASL A : STA $16
    LDA $4216 : ASL A : STA $18
    LDA $12 : STA $4204

    %a8()
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA
    LDA $4214 : ASL A : STA $12
    LDA $4216 : ASL A : STA $14
    RTS
}

Draw3:
{
    LDA #$0057 : STA $7EC600,X : STA $7EC602,X

    ; Third digit
    LDY $18 : LDA.w NumberGFXTable,Y : STA $7EC604,X

    ; Check if done
    LDA $16 : ORA $14 : BEQ .done

    ; Second digit
    LDY $16 : LDA.w NumberGFXTable,Y : STA $7EC602,X

    ; First digit (if non-zero)
    LDY $14 : BEQ .done : LDA.w NumberGFXTable,Y : STA $7EC600,X

  .done
    INX #6
    RTS
}

Draw4:
{
    LDA #$0057 : STA $7EC600,X : STA $7EC602,X : STA $7EC604,X

    ; Forth digit
    LDY $18 : LDA.w NumberGFXTable,Y : STA $7EC606,X

    ; Check if done
    LDA $16 : ORA $14 : ORA $12 : BEQ .done

    ; third digit
    LDY $16 : LDA.w NumberGFXTable,Y : STA $7EC604,X

    ; Check if done
    LDA $14 : ORA $12 : BEQ .done

    ; Second digit
    LDY $14 : LDA.w NumberGFXTable,Y : STA $7EC602,X

    ; First digit
    LDY $12 : BEQ .done : LDA.w NumberGFXTable,Y : STA $7EC600,X

  .done
    INX #8
    RTS
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

    LDA !ram_magic_pants_1 : BEQ +
    JSR magic_pants

    ; handle inputs
+   LDA !IH_CONTROLLER_SEC_NEW : BEQ .done
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
    CMP #$000C
    BNE +
    LDA #$0000
+   STA !sram_display_mode
    JMP .update_status

  .dec_statusdisplay
    LDA !sram_display_mode
    DEC A
    CMP #$FFFF
    BNE +
    LDA #$000B
+   STA !sram_display_mode
    JMP .update_status


  .update_status
    LDA #$0000
    STA !ram_shine_counter_1
    STA !ram_shine_counter_2
    STA !ram_charge_counter
    STA !ram_xfac_counter
    INC A
    STA !ram_dash_counter
    STA !ram_iframe_counter
    STA !ram_vertical_speed
    STA !ram_mb_hp
    STA !ram_enemy_hp
    STA !ram_shine_counter_3
    JMP .done
}

magic_pants:
{
    LDA $0A96 : CMP #$0009 : BEQ .check
    LDA !ram_magic_pants_2 : BEQ +
    LDA !ram_magic_pants_3 : STA $7EC194
    LDA !ram_magic_pants_4 : STA $7EC196
    LDA !ram_magic_pants_5 : STA $7EC19E
    LDA #$0000 : STA !ram_magic_pants_2
+   RTS

  .check
    LDA $0A1C : CMP #$0009 : BEQ .flash
    CMP #$000A : BEQ .flash
    RTS

  .flash
    LDA !ram_magic_pants_2 : BNE +
    LDA $7EC194 : STA !ram_magic_pants_3
    LDA $7EC196 : STA !ram_magic_pants_4
    LDA $7EC19E : STA !ram_magic_pants_5
+   LDA #$FFFF : STA $7EC194 : STA $7EC196 : STA $7EC19E : STA !ram_magic_pants_2
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
    STA !ram_shine_counter_2
    STA $0A68
    RTL
}

print pc, " infohud end"

; Stuff that needs to be placed in bank 80
org $80D300
print pc, " infohud bank80 start"
NumberGFXTable:
    dw #$0C09, #$0C00, #$0C01, #$0C02, #$0C03, #$0C04, #$0C05, #$0C06, #$0C07, #$0C08
    dw #$0C45, #$0C3C, #$0C3D, #$0C3E, #$0C3F, #$0C40, #$0C41, #$0C42, #$0C43, #$0C44

ControllerTable1:
    dw $0020, $0800, $0010, $4000, $0040, $2000
ControllerTable2:
    dw $0200, $0400, $0100, $8000, $0080, $1000
ControllerGfx1:
    dw $0C68, $0C61, $0C69, $0C67, $0C66, $0C6A
ControllerGfx2:
    dw $0C60, $0C63, $0C62, $0C65, $0C64, $0C6B

HexToNumberGFX1:
    dw $0C09, $0C09, $0C09, $0C09, $0C09, $0C09, $0C09, $0C09, $0C09, $0C09
    dw $0C00, $0C00, $0C00, $0C00, $0C00, $0C00, $0C00, $0C00, $0C00, $0C00
    dw $0C01, $0C01, $0C01, $0C01, $0C01, $0C01, $0C01, $0C01, $0C01, $0C01
    dw $0C02, $0C02, $0C02, $0C02, $0C02, $0C02, $0C02, $0C02, $0C02, $0C02
    dw $0C03, $0C03, $0C03, $0C03, $0C03, $0C03, $0C03, $0C03, $0C03, $0C03
    dw $0C04, $0C04, $0C04, $0C04, $0C04, $0C04, $0C04, $0C04, $0C04, $0C04

HexToNumberGFX2:
    dw $0C09, $0C00, $0C01, $0C02, $0C03, $0C04, $0C05, $0C06, $0C07, $0C08
    dw $0C09, $0C00, $0C01, $0C02, $0C03, $0C04, $0C05, $0C06, $0C07, $0C08
    dw $0C09, $0C00, $0C01, $0C02, $0C03, $0C04, $0C05, $0C06, $0C07, $0C08
    dw $0C09, $0C00, $0C01, $0C02, $0C03, $0C04, $0C05, $0C06, $0C07, $0C08
    dw $0C09, $0C00, $0C01, $0C02, $0C03, $0C04, $0C05, $0C06, $0C07, $0C08
    dw $0C09, $0C00, $0C01, $0C02, $0C03, $0C04, $0C05, $0C06, $0C07, $0C08

print pc, " infohud bank80 end"

org $8098CB  ; Initial HUD tilemap
    dw $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F
    dw $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F
    dw $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F
    dw $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F
    dw $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F
    dw $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F
    dw $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F
    dw $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F
    dw $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C09, $2C0F
    dw $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F
    dw $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F
    dw $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F, $2C0F

org $9AB320  ; HUD graphics table
    dw $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF
    dw $FF3F, $3FCF, $0FF3, $03FC, $00FF, $00FF, $00FF, $00FF
    dw $FFFF, $FFFF, $FFFF, $FFFF, $FF3F, $3FCF, $0FF3, $03FC
    dw $C03F, $F0CF, $FCF3, $FFFC, $FFFF, $FFFF, $FFFF, $FFFF
    dw $00FF, $00FF, $00FF, $00FF, $C03F, $F0CF, $FCF3, $FFFC
    dw $FFFF, $FFFF, $FFFF, $FFFF, $FF3F, $BF4F, $8F73, $837C
    dw $807F, $807F, $807F, $807F, $C03F, $F0CF, $FCF3, $FFFC
    dw $FF3F, $3FCF, $0FF3, $03FC, $01FE, $01FE, $01FE, $01FE
    dw $837C, $8F73, $BF4F, $FF3F, $FFFF, $FFFF, $FFFF, $FFFF
    dw $00FF, $00FF, $00FF, $00FF, $00FF, $00FF, $00FF, $00FF
    dw $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF
    dw $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF
    dw $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF
    dw $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF, $FFFF
    dw $FF00, $817E, $817E, $817E, $817E, $817E, $817E, $FF00
    dw $FF00, $807F, $807F, $807F, $807F, $807F, $807F, $FF00
    dw $FF00, $00FF, $00FF, $00FF, $00FF, $00FF, $00FF, $FF00
    dw $817E, $817E, $817E, $817E, $817E, $817E, $817E, $817E
    dw $FF00, $817E, $817E, $817E, $817E, $817E, $817E, $817E
    dw $FF00, $807F, $807F, $807F, $807F, $807F, $807F, $807F
    dw $FF00, $00FF, $00FF, $00FF, $00FF, $00FF, $00FF, $00FF
    dw $01FE, $01FE, $01FE, $01FE, $01FE, $01FE, $01FE, $01FE
    dw $00FF, $00FF, $00FF, $00FF, $03FC, $0FF3, $3FCF, $FF3F
    dw $FFFF, $FFFF, $FFFF, $FFFF, $FFFC, $FCF3, $F0CF, $C03F
    dw $03FC, $0FF3, $3FCF, $FF3F, $FFFF, $FFFF, $FFFF, $FFFF
    dw $FFFC, $FCF3, $F0CF, $C03F, $00FF, $00FF, $00FF, $00FF
    dw $FFFF, $FFFF, $FFFF, $FFFF, $FFFC, $FDF2, $F1CE, $C13E
    dw $01FE, $01FE, $01FE, $01FE, $03FC, $0FF3, $3FCF, $FF3F
    dw $FFFC, $FCF3, $F0CF, $C03F, $807F, $807F, $807F, $807F
    dw $837C, $8F73, $BF4F, $FF3F, $FFFF, $FFFF, $FFFF, $FFFF
