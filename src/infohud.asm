;=======================================================
;InfoHUD timers and stuff
;=======================================================

org $809490
    jmp $9497    ; skip resetting player 2 inputs

org $8094DF
    plp          ; patch out resetting of controller 2 buttons and enable debug mode
    rtl

org $828B4B      ; disable debug functions
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

org $90F1E4      ;hijack, runs when an elevator is activated
    JSL ih_elevator_activation

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

org $A98874         ; update seg timer after MB1 fight
    JSL ih_mb1_segment

org $A9BE23         ; update seg timer when baby spawns (off-screen) in MB2 fight
    JSL ih_mb2_segment

org $9AB200         ; graphics for HUD
incbin ../resources/hudgfx.bin


; Main bank stuff
org $E08000
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
    JSL $90F084    ; we overwrote this instruction to get here

    JSL ih_update_hud_early
    RTL
}

ih_mb2_segment:
{
    ; runs during baby spawn routine for MB2
    STA $7E7854    ; we overwrote this instruction to get here

    JSL ih_update_hud_early
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
        LDA !ram_tmp_1 : LDX #$003C : JSR Draw3

        ; Draw decimal seperator
        LDA !IH_DECIMAL : STA $7EC642

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
        LDA !ram_tmp_3 : LDX #$003C : JSR Draw3

        ; Draw decimal seperator
        LDA !IH_DECIMAL : STA $7EC642

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
        LDA !ram_pct_1 : LDX #$0012 : JSR Draw3

        ; Percent symbol on HUD
        LDA !IH_PERCENT : STA $7EC618
    }

    ; E-tanks
    LDA !ram_etanks : LDX #$0054 : JSR Draw3

    ; Lag
    LDA !ram_last_room_lag : LDX #$0082 : JSR Draw3

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
    LDX #$0092 : JSR Draw4
    LDA #$0C0E : STA $7EC690 ; erase stale decimal tile

  .end
    PLB
    ; overwritten code
    REP #$30
    LDA $7E09C0
    RTL

  .status_display_table
    dw status_enemyhp
    dw status_roomstrat
    dw status_chargetimer
    dw status_xfactor
    dw status_cooldowncounter
    dw status_shinetimer
    dw status_dashcounter
    dw status_shinetune
    dw status_iframecounter
    dw status_spikesuit
    dw status_lagcounter
    dw status_xpos
    dw status_ypos
    dw status_hspeed
    dw status_vspeed
    dw status_quickdrop
    dw status_walljump
    dw status_shottimer
}


status_roomstrat:
{
    LDA !sram_room_strat : ASL : TAX
    JSR (.status_room_table,X)
    RTS

  .status_room_table
    dw status_tacotank
    dw status_gateglitch
    dw status_moatcwj
    dw status_robotflush
    dw status_shinetopb
    dw status_elevatorcf
    dw status_botwooncf
    dw status_mbhp
}

status_shinetimer:
{
    LDA !ram_armed_shine_duration : CMP !ram_shine_counter : BEQ .done
    STA !ram_shine_counter : BNE .charge : LDA #$00B4

  .charge
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_shinetopb:
{
    ; Suppress Samus HP display
    LDA $09C2 : STA !ram_last_hp

    LDA !ram_armed_shine_duration : CMP !ram_shine_counter : BEQ .clearcounter
    STA !ram_shine_counter : BNE .charge : LDA #$00B4

  .charge
    LDX #$0088 : JSR Draw4

    ; If we just charged the spark, time to start checking for the power bomb
    LDA !ram_roomstrat_counter : CMP #$FFFF : BEQ .clearpb

    ; If we're here, PB count was initialized, now check if the count has changed
    CMP $09CE : BNE .drawpb

  .done
    RTS

  .clearcounter
    CMP #$00B4 : BNE .done
    LDA #$FFFF : STA !ram_roomstrat_counter
    RTS

  .clearpb
    LDA !IH_BLANK : STA $7EC690 : STA $7EC692 : STA $7EC694 : STA $7EC696 : STA $7EC698
    BRA .setcounter

  .drawpb
    LDA !ram_armed_shine_duration : LDX #$0092 : JSR Draw4

  .setcounter
    LDA $09CE : STA !ram_roomstrat_counter
    RTS
}

status_botwooncf:
{
    ; Counter used to check if a power bomb has been laid
    LDA !ram_roomstrat_counter : CMP $09CE : BNE .pbcheck
    LDA !ram_roomstrat_state : BEQ .setxy

    ; Check if we have returned to PB location with zero vertical speed
    ; (we assume horizontal speed is also zero)
    ; Arbitrary wait of 90 frames before checking
    CMP #$005A : BMI .inc
    LDA $0AF6 : CMP !ram_xpos : BNE .inc
    LDA $0AFA : CMP #$00B7 : BNE .inc
    LDA $0B2E : CMP #$0000 : BNE .inc
    LDA $0B2C : CMP #$0000 : BNE .inc
    LDA !IH_LETTER_Y : STA $7EC68A
    BRA .timecheck

  .pbcheck
    ; Height check specific for botwoon hallway
    LDA !ram_ypos : CMP #$00B7 : BEQ .startpb
    LDA !IH_BLANK : STA $7EC688
    BRA .setpb

  .startpb
    LDA #$0001 : STA !ram_roomstrat_state
    LDA !IH_LETTER_Y : STA $7EC688

  .setpb
    LDA $09CE : STA !ram_roomstrat_counter
    LDA !IH_BLANK : STA $7EC68A : STA $7EC68C : STA $7EC68E : STA $7EC690
    RTS

  .setxy
    LDA $0AF6 : STA !ram_xpos
    LDA $0AFA : STA !ram_ypos
    RTS

  .inc
    ; Arbitrary give up waiting after 192 frames
    LDA !ram_roomstrat_state : CMP #$00C0 : BPL .reset
    INC : STA !ram_roomstrat_state
    RTS

  .timecheck
    ; Need to be in position 153 frames after laying the power bomb
    LDA !ram_roomstrat_state : CMP #$0099 : BEQ .frameperfect : BMI .early

    ; Late
    SEC : SBC #$0099
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    LDA !IH_LETTER_L : STA $7EC68C

  .reset
    LDA #$0000 : STA !ram_roomstrat_state
    RTS

  .early
    LDA #$0099 : SEC : SBC !ram_roomstrat_state
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    LDA !IH_LETTER_E : STA $7EC68C
    ; Keep waiting if we are early
    BRA .inc

  .frameperfect
    LDA !IH_LETTER_Y : STA $7EC68C : STA $7EC68E
    BRA .reset
}

status_elevatorcf:
{
    ; Counter used to check if a power bomb has been laid
    LDA !ram_roomstrat_counter : CMP $09CE : BNE .roomcheck
    LDA !ram_roomstrat_state : CMP #$0000 : BEQ .setxy

    ; Check if we have returned to PB location with zero vertical speed
    ; (we assume horizontal speed is also zero)
    ; Arbitrary wait of 90 frames before checking
    CMP #$005A : BMI .inc
    LDA $0AF6 : CMP !ram_xpos : BNE .downcheck
    LDA $0AFA : CMP !ram_ypos : BNE .downcheck
    LDA $0B2E : CMP #$0000 : BNE .downcheck
    LDA $0B2C : CMP #$0000 : BNE .downcheck
    LDA !IH_LETTER_Y : STA $7EC68A

  .downcheck
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_DOWN : BEQ .inc
    BRA .timecheck

  .setxy
    LDA $0AF6 : STA !ram_xpos
    LDA $0AFA : STA !ram_ypos
    RTS

  .roomcheck
    LDA $079B : CMP #$94CC : BEQ .forgotten : CMP #$962A : BEQ .redbrin : CMP #$97B5 : BEQ .morph
    CMP #$9938 : BEQ .greenbrin : CMP #$AF3F : BEQ .lowernorfair : CMP #$A6A1 : BEQ .warehouse
    LDA !IH_BLANK : STA $7EC688
    BRA .setpb

  .inc
    ; Arbitrary give up waiting after 192 frames
    LDA !ram_roomstrat_state : CMP #$00C0 : BPL .reset
    INC : STA !ram_roomstrat_state
    RTS

  .forgotten
  .redbrin
    LDA #$0080 : CMP !ram_xpos : BEQ .questionpb
    LDA #$00AB : CMP !ram_ypos : BEQ .goodpb
    BRA .badpb

  .morph
  .greenbrin
  .lowernorfair
  .warehouse
    LDA #$0080 : CMP !ram_xpos : BEQ .questionpb
    LDA #$008B : CMP !ram_ypos : BEQ .goodpb
    BRA .badpb

  .questionpb
    ; Draw a percent character (laying the PB dead-center on the elevator is questionable)
    LDA !IH_PERCENT : STA $7EC688
    BRA .setpb

  .timecheck
    ; Need to activate the elevator 154 frames after laying the power bomb
    LDA !ram_roomstrat_state : CMP #$009A : BEQ .frameperfect : BMI .early

    ; Late
    SEC : SBC #$009A
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    LDA !IH_LETTER_L : STA $7EC68C

  .reset
    LDA #$0000 : STA !ram_roomstrat_state
    RTS

  .badpb
    LDA !IH_LETTER_X : STA $7EC688
    BRA .setpb

  .goodpb
    LDA !IH_LETTER_Y : STA $7EC688

  .setpb
    LDA $09CE : STA !ram_roomstrat_counter
    LDA #$0001 : STA !ram_roomstrat_state
    LDA !IH_BLANK : STA $7EC68A : STA $7EC68C : STA $7EC68E : STA $7EC690
    RTS

  .early
    LDA #$009A : SEC : SBC !ram_roomstrat_state
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    LDA !IH_LETTER_E : STA $7EC68C
    BRA .reset

  .frameperfect
    LDA !IH_LETTER_Y : STA $7EC68C : STA $7EC68E
    BRA .reset
}

status_gateglitch:
{
    ; Arbitrarily expecting shot and gate events to be within 20 frames of each other
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_SHOOT : BEQ .incshot

    ; Clear shot counter when shot fired
    LDA #$0000 : STA !ram_shot_timer
    LDA !ram_roomstrat_counter : BEQ .inccounter : CMP #$0014 : BPL .clearstate
    BRL .late

  .clearprint
    LDA #$0000 : TAY : LDA.w NumberGFXTable,Y : STA $7EC688
    LDA !IH_BLANK : STA $7EC68A : STA $7EC68C : STA $7EC68E : STA $7EC690
    BRA .checkcounter

  .incshot
    LDA !ram_shot_timer : CMP #$0014 : BPL .checkcounter
    INC : STA !ram_shot_timer : CMP #$0014 : BPL .clearprint

  .checkcounter
    LDA !ram_roomstrat_counter : CMP #$0014 : BPL .clearstate

  .inccounter
    INC : STA !ram_roomstrat_counter
    BRA .roomcheck

  .greenhills
    LDA #$0654 : STA !ram_xpos
    BRA .checkglitch

  .grappletutorial
    LDA #$02B4 : STA !ram_xpos
    BRA .checkglitch

  .doublechamber
    LDA #$01B4 : STA !ram_xpos
    BRA .checkglitch

  .kronic
    LDA #$0084 : STA !ram_xpos
    BRA .checkglitch

  .clearstate
    LDA #$0000 : STA !ram_roomstrat_state

  .roomcheck
    ; The gate location is hard-coded depending on the room
    LDA $079B : CMP #$9E52 : BEQ .greenhills : CMP #$AB64 : BEQ .grappletutorial
    CMP #$ADAD : BEQ .doublechamber : CMP #$AE74 : BEQ .kronic
    CMP #$AF72 : BEQ .unfarm : CMP #$B2DA : BEQ .fastripper : CMP #$D08A : BEQ .crabtunnel
    BRA .done

  .unfarm
    LDA #$0074 : STA !ram_xpos
    BRA .checkglitch

  .fastripper
    LDA #$0354 : STA !ram_xpos
    BRA .checkglitch

  .crabtunnel
    LDA #$00F4 : STA !ram_xpos
    BRA .checkglitch

  .checkglitch
    ; If we are left of the gate, or if facing right, then no chance to glitch
    CMP $0AF6 : BPL .checkjusthappened
    LDA $0A1E : AND #$0004 : CMP #$0004 : BNE .checkjusthappened

    ; Now predict if the missile would go through the gate
    LDA $0AF6 : CLC : ADC $0DAA : CMP !ram_xpos : BPL .checkjusthappened

    ; It would, so clear gate event counter and increment state
    ; State tracks the number of frames that you can get the glitch
    LDA #$0000 : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .done
    RTS

  .checkjusthappened
    ; Check if the gate glitch just happened
    LDA !ram_roomstrat_counter : CMP #$0001 : BNE .done

    ; It did, and if a missile was just fired, it should glitch the gate
    LDA !ram_shot_timer : BEQ .gotit

    ; If not, but if shot timer is less than state counter,
    ; then shot timer must be 1 and state counter 2 and we glitched the gate
    CMP !ram_roomstrat_state : BMI .gottwoframe

    ; Otherwise we either shot early or not at all
    CMP #$0014 : BMI .early
    RTS

  .early
    LDA !ram_shot_timer : INC : SEC : SBC !ram_roomstrat_state
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    LDA !IH_LETTER_E : STA $7EC68C

  .reset
    ; Print number of frames where you could have glitched
    LDA !ram_roomstrat_state : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC688
    LDA !IH_BLANK : STA $7EC68A
    LDA #$0000 : STA !ram_roomstrat_state
    LDA #$0014 : STA !ram_roomstrat_counter : STA !ram_shot_timer
    RTS

  .gotit
    ; Check if this should be YY or Y2
    LDA !ram_roomstrat_state : CMP #$0001 : BNE .gottwoframe
    LDA !IH_LETTER_Y : STA $7EC68C : STA $7EC68E
    BRA .reset

  .gottwoframe
    LDA !IH_LETTER_Y : STA $7EC68C
    LDA #$0002 : SEC : SBC !ram_shot_timer
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    BRA .reset

  .late
    LDA !ram_roomstrat_counter : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    LDA !IH_LETTER_L : STA $7EC68C
    BRA .reset
}

status_tacotank:
{
    ; Suppress Samus HP display
    LDA $09C2 : STA !ram_last_hp
    LDA #$DEAD : LDX #$0088 : JSR Draw4Hex
    LDA !IH_BLANK : STA $7EC690
    LDA #$BEEF : LDX #$0092 : JSR Draw4Hex
    RTS
}

status_chargetimer:
{
    LDA #$003D : SEC : SBC $0CD0 : CMP !ram_charge_counter : BEQ .done : STA !ram_charge_counter
    CMP #$0000 : BPL .charging : LDA #$0000

  .charging
    LDX #$008A : JSR Draw3

  .done
    RTS
}

status_xfactor:
{
    LDA #$0079 : SEC : SBC $0CD0 : CMP !ram_xfac_counter : BEQ .done : STA !ram_xfac_counter
    LDX #$008A : JSR Draw3

  .done
    RTS
}

status_dashcounter:
{
    LDA $0B3F : AND #$00FF : CMP !ram_dash_counter : BEQ .done : STA !ram_dash_counter
    LDX #$008A : JSR Draw3

  .done
    RTS
}

status_mbhp:
{
    LDA $0FCC : CMP !ram_mb_hp : BEQ .done : STA !ram_mb_hp
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_robotflush:
{
    ; Checking hit on first robot
    LDA !IH_BLANK : STA $7EC688
    LDA $0FEA : CMP #$0030 : BMI .checkfirstfall
    LDA #$0C3C : STA $7EC688

  .checkfirstfall
    LDA #$0C0E : STA $7EC68A
    LDA $0FBE : CMP #$0280 : BMI .checksecondhit
    LDA #$0C3C : STA $7EC68A

  .checksecondhit
    LDA #$0C0E : STA $7EC68C
    LDA $102A : CMP #$0030 : BMI .checksecondfall
    LDA #$0C3D : STA $7EC68C

  .checksecondfall
    LDA #$0C0E : STA $7EC68E
    LDA $0FFE : CMP #$0280 : BMI .done
    LDA #$0C3D : STA $7EC68E

  .done
    RTS
}

status_moatcwj:
{
    LDA $0AFA : CMP !ram_ypos : BEQ .didxchange : STA !ram_ypos
    LDA $0AF6

  .onchange
    STA !ram_xpos

    ; If position moving and we haven't started yet, nothing to do
    LDA !ram_roomstrat_state : BEQ .done

    ; If we haven't jumped yet, increment counter
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BEQ .inc

    ; We jumped, check if it was on time
    LDA !ram_roomstrat_state : CMP #$0002 : BNE .checkfirstjump
    BRL .checksecondjump

  .checkfirstjump
    LDA !ram_roomstrat_counter : CMP #$0013 : BEQ .firstframeperfect : BMI .firstjumpearly
    SEC : SBC #$0013 : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68A

    ; First jump late
    LDA !IH_LETTER_L : STA $7EC688
    LDA #$0000 : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    RTS

  .inc
    LDA !ram_roomstrat_counter : INC : STA !ram_roomstrat_counter
    RTS

  .didxchange
    LDA $0AF6 : CMP !ram_xpos : BNE .onchange
    BRL .nochange

  .firstframeperfect
    LDA !IH_LETTER_Y : STA $7EC688 : STA $7EC68A
    LDA #$0002 : STA !ram_roomstrat_counter : STA !ram_roomstrat_state

  .done
    RTS

  .firstjumpearly
    LDA #$0013 : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68A
    LDA !IH_LETTER_E : STA $7EC688
    LDA #$0000 : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    RTS

  .inccheck
    ; If our X and Y whole pixels did not change, but we are holding a direction,
    ; we may still want to increment the counter
    CMP !ram_xpos : BEQ .done
    LDA !ram_xpos : CMP #$00EB : BNE .incconfirm
    LDA !ram_ypos : CMP #$0084 : BEQ .done

  .incconfirm
    LDA !ram_roomstrat_counter : INC : STA !ram_roomstrat_counter
    RTS

  .nochange
    ; Check if we are at a valid starting position
    LDA !ram_ypos : CMP #$008B : BNE .incorrectstartpos
    LDA !ram_xpos : CMP #$0015 : BEQ .startcounter : CMP #$02DB : BEQ .startcounter

  .incorrectstartpos
    LDA !ram_roomstrat_state : BEQ .done

    ; If our X and Y whole pixels did not change, but we are holding a direction,
    ; we may still want to increment the counter
    LDA !IH_CONTROLLER_PRI : AND #$0300 : BNE .inccheck

    ; If X and Y did not change and we aren't holding a direction, reset
    LDA #$0000 : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    LDA !IH_BLANK : STA $7EC688 : STA $7EC68A : STA $7EC68C : STA $7EC68E : STA $7EC690
    RTS

  .startcounter
    ; Prevent redundacy on start
    CMP !ram_roomstrat_state : BEQ .resetcounter
    STA !ram_roomstrat_state
    LDA !IH_LETTER_Y : STA $7EC688
    LDA !IH_BLANK : STA $7EC68A : STA $7EC68C : STA $7EC68E : STA $7EC690

  .resetcounter
    LDA #$0000 : STA !ram_roomstrat_counter
    RTS

  .checksecondjump
    LDA !ram_roomstrat_counter : CMP #$0049 : BEQ .secondframe1 : BMI .secondjumpearly
    CMP #$004A : BEQ .secondframe2

    ; Second jump late
    SEC : SBC #$004A : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    LDA !IH_LETTER_L : STA $7EC68C
    BRA .clear

  .secondframe1
    LDA #$0C00 : STA $7EC68E
    BRA .secondgotit

  .secondframe2
    LDA #$0C01 : STA $7EC68E

  .secondgotit
    LDA !IH_LETTER_Y : STA $7EC68C

  .clear
    LDA #$0000 : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    RTS

  .secondjumpearly
    LDA #$0049 : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    LDA !IH_LETTER_E : STA $7EC68C
    BRA .clear
}

status_hspeed:
{
    ; Suppress Samus HP display
    LDA $09C2 : STA !ram_last_hp

    ; Speed plus momentum, pixels and subpixels
    LDA $0B44 : CLC : ADC $0B48 : TAY
    LDA $0B42 : ADC $0B46 : CMP !ram_horizontal_speed : BEQ .checksubpixel
    STA !ram_horizontal_speed : TYA : STA !ram_subpixel_pos
    LDA !ram_horizontal_speed : LDX #$0088 : JSR Draw4
    LDA !ram_subpixel_pos : BRA .drawsubpixel

  .checksubpixel
    TYA : CMP !ram_subpixel_pos : BEQ .done : STA !ram_subpixel_pos

  .drawsubpixel
    LDX #$0092 : JSR Draw4Hex
    LDA !IH_DECIMAL : STA $7EC690

  .done
    RTS
}

status_vspeed:
{
    ; Suppress Samus HP display
    LDA $09C2 : STA !ram_last_hp

    LDA $0B2E : CMP !ram_vertical_speed : BEQ .checksubpixel
    STA !ram_vertical_speed : LDX #$0088 : JSR Draw4
    LDA $0B2C : BRA .drawsubpixel

  .checksubpixel
    LDA $0B2C : CMP !ram_subpixel_pos : BEQ .done

  .drawsubpixel
    STA !ram_subpixel_pos : LDX #$0092 : JSR Draw4Hex
    LDA !IH_DECIMAL : STA $7EC690

  .done
    RTS
}

status_iframecounter:
{
    LDA $18A8 : CMP !ram_iframe_counter : BEQ .done : STA !ram_iframe_counter
    LDX #$008A : JSR Draw3

  .done
    RTS
}

status_spikesuit:
{
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BEQ .nojump

    ; If springball unequipped then jump can be for spark or unmorph
    LDA $09A2 : AND #$0002 : BEQ .checksparkunmorph

    ; If springball equipped and holding up, ignore jump
    ; This is because it is common to press both up and jump to unmorph
    ; even though only up is required
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_UP : BNE .nojump

    ; Handle jump with springball depending on state
    LDA !ram_roomstrat_state : BEQ .nojumpnoup
    CMP #$0002 : BEQ .checkspark : CMP #$0004 : BEQ .checkspark
    BRA .donewait

  .checksparkunmorph
    LDA !ram_roomstrat_state : CMP #$0006 : BEQ .donewait
    CMP #$0002 : BEQ .checkspark : CMP #$0004 : BEQ .checkspark
    BRL .checkunmorph

  .nojump
    ; Only check for up if we are looking to unmorph
    LDA !ram_roomstrat_state : BNE .donewait
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_UP : BEQ .nojumpnoup
    BRL .checkunmorph

  .nojumpnoup
    ; Arbitrary reset counter after 20 frames
    LDA !ram_roomstrat_counter : BEQ .done : CMP #$0014 : BPL .resetstate
    INC : STA !ram_roomstrat_counter

    ; If counter running when we first take damage, then we unmorphed early
    LDA $18A8 : CMP #$003C : BEQ .unmorphearly

  .done
    RTS

  .donewait
    ; If our state machine is running (we've at least seen the unmorph)
    ; and our i-frames run out, then reset state
    LDA $18A8 : BNE .done

  .resetstate
    LDA #$0000 : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    RTS

  .checkspark
    LDA $18A8 : CMP #$0033 : BEQ .sparkframeperfect : BPL .sparkearly

    ; Sparked late
    LDA !IH_LETTER_L : STA $7EC68C
    LDA #$0033 : SEC : SBC $18A8
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    BRA .endstate

  .unmorphearly
    LDA !IH_LETTER_E : STA $7EC688
    LDA !IH_BLANK : STA $7EC68A : STA $7EC68C : STA $7EC68E : STA $7EC690
    LDA #$0002 : STA !ram_roomstrat_state
    RTS

  .sparkframeperfect
    LDA !IH_LETTER_Y : STA $7EC68C : STA $7EC68E
    BRA .endstate

  .sparkearly
    LDA !IH_LETTER_E : STA $7EC68C
    LDA $18A8 : SEC : SBC #$0033
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E

  .endstate
    LDA #$0006 : STA !ram_roomstrat_state
    RTS

  .checkunmorph
    LDA $18A8 : BEQ .damagewait : CMP #$003C : BEQ .damageunmorph
    CMP #$003B : BEQ .prepspark1 : CMP #$003A : BEQ .prepspark2

    ; Unmorphed late
    LDA !IH_LETTER_L : STA $7EC688
    LDA #$003A : SEC : SBC $18A8
    ASL A : TAY : LDA.w NumberGFXTable,Y : STA $7EC68A
    LDA !IH_BLANK : STA $7EC68C : STA $7EC68E : STA $7EC690
    LDA #$0002 : STA !ram_roomstrat_state
    RTS

  .damagewait
    ; We unmorphed but have not taken damage
    ; We're either early or we're not attempting spikesuit right now
    LDA #$0001 : STA !ram_roomstrat_counter
    LDA !IH_BLANK : STA $7EC688 : STA $7EC68A : STA $7EC68C : STA $7EC68E : STA $7EC690
    RTS

  .damageunmorph
    ; We unmorphed on the same frame we took damage, which is one frame early
    LDA !IH_LETTER_E : STA $7EC688
    LDY #$0002 : LDA.w NumberGFXTable,Y : STA $7EC68A
    LDA !IH_BLANK : STA $7EC68C : STA $7EC68E : STA $7EC690
    LDA #$0002 : STA !ram_roomstrat_state
    RTS

  .prepspark1
    LDA #$0002 : STA !ram_roomstrat_state
    BRA .prepspark

  .prepspark2
    LDA #$0004 : STA !ram_roomstrat_state

  .prepspark
    ; We unmorphed on one of the two good frames
    TAY : LDA.w NumberGFXTable,Y : STA $7EC68A
    LDA !IH_LETTER_Y : STA $7EC688
    LDA !IH_BLANK : STA $7EC68C : STA $7EC68E : STA $7EC690
    RTS
}

status_lagcounter:
{
    LDA !ram_lag_counter : CMP !ram_last_lag_counter : BEQ .done : STA !ram_last_lag_counter
    %a8() : STA $211B : XBA : STA $211B : LDA #$64 : STA $211C : %a16()
    LDA $2134 : STA $4204
    %a8() : LDA #$E1 : STA $4206 : %a16()
    PHA : PLA : PHA : PLA : LDA $4214
    LDX #$0088 : JSR Draw3
    LDA !IH_PERCENT : STA $7EC68E

  .done
    RTS
}

status_xpos:
{
    ; Suppress Samus HP display
    LDA $09C2 : STA !ram_last_hp

    LDA $0AF6 : CMP !ram_xpos : BEQ .checksubpixel
    STA !ram_xpos : LDX #$0088 : JSR Draw4
    LDA $0AF8 : BRA .drawsubpixel

  .checksubpixel
    LDA $0AF8 : CMP !ram_subpixel_pos : BEQ .done

  .drawsubpixel
    STA !ram_subpixel_pos : LDX #$0092 : JSR Draw4Hex
    LDA !IH_DECIMAL : STA $7EC690

  .done
    RTS
}

status_ypos:
{
    ; Suppress Samus HP display
    LDA $09C2 : STA !ram_last_hp

    LDA $0AFA : CMP !ram_ypos : BEQ .checksubpixel
    STA !ram_ypos : LDX #$0088 : JSR Draw4
    LDA $0AFC : BRA .drawsubpixel

  .checksubpixel
    LDA $0AFC : CMP !ram_subpixel_pos : BEQ .done

  .drawsubpixel
    STA !ram_subpixel_pos : LDX #$0092 : JSR Draw4Hex
    LDA !IH_DECIMAL : STA $7EC690

  .done
    RTS
}

status_cooldowncounter:
{
    LDA $0CCC : CMP !ram_cooldown_counter : BEQ .done : STA !ram_cooldown_counter
    LDX #$008A : JSR Draw3

  .done
    RTS
}

status_shinetune:
{
    ; Suppress Samus HP display
    ; The segment timer is also suppressed elsewhere just for shinetune
    LDA $09C2 : STA !ram_last_hp

    ; Think of Samus as a five-speed bike with gears 0-4 (dash counter)
    LDA !ram_dash_counter : CMP #$0003 : BEQ .checkgearshift3
    CMP #$00FF : BEQ .checkgearshiftinvalid : CMP #$0004 : BNE .checkgearshift012

    ; Samus has reached fourth gear and is ready to charge the shinespark by pressing down
    ; When this happens, the gear resets to zero, so check for that
    LDA $0B3F : AND #$00FF : CMP !ram_dash_counter : BEQ .chargespark : STA !ram_dash_counter
    LDA !ram_shinetune_late_4 : LDX #$00C0 : JSR Draw4

  .reset
    LDA #$0000 : STA !ram_shine_counter
    STA !ram_shinetune_early_1 : STA !ram_shinetune_late_1
    STA !ram_shinetune_early_2 : STA !ram_shinetune_late_2
    STA !ram_shinetune_early_3 : STA !ram_shinetune_late_3
    STA !ram_shinetune_early_4 : STA !ram_shinetune_late_4
    RTS

  .chargespark
    LDA !ram_shinetune_late_4 : INC : STA !ram_shinetune_late_4
    RTS

  .checkgearshiftinvalid
    ; After a failed attempt to charge a shinespark, we will sit in this invalid state
    ; and wait until Samus goes back to 0 gear before checking again
    LDA $0B3F : AND #$00FF : BNE .donegearshift

  .checkgearshift012
    ; Samus can jump from gear 0 to 4 when using a shinespark, so ignore that
    LDA $0B3F : AND #$00FF : CMP #$0004 : BEQ .donegearshift

  .checkgearshift3
    LDA $0B3F : AND #$00FF : CMP !ram_dash_counter : BEQ .check0123

    ; Gear changed, if we went back to 0 gear then reset
    STA !ram_dash_counter : CMP #$0000 : BEQ .reset

    ; Assume we gear shifted up, so set flag indicating we are holding dash for this transition
    ; Also reset our shine counter
    ; For efficiency the shine counter is set to the dash counter instead of zero,
    ; so keep that in mind when reviewing the logic to follo
    STA !ram_shine_dash_held_late : STA !ram_shine_counter

    ; On gear shift, we have some numbers to draw
    BRL .draw1234

  .check0123
    CMP #$0000 : BNE .check123

    ; Sitting in gear 0, either increment early count or reset it
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RUN : BEQ .nodash0
    LDA !ram_shinetune_early_1 : INC : STA !ram_shinetune_early_1

  .donegearshift
    RTS

  .nodash0
    STA !ram_shinetune_early_1
    RTS

  .check123
    ; Sitting in a gear between 0 and 4
    LDA !ram_shine_counter : INC : STA !ram_shine_counter
    LDA !ram_dash_counter : CMP #$0003 : BNE .check12
    BRL .check3

  .check12
    CMP #$0001 : BEQ .check1
    CMP #$0002 : BNE .donegearshift
    BRL .check2

  .nodash1
    ; Gear 1, not holding dash, check if we were still holding dash from the last transition
    CMP !ram_shine_dash_held_late : BNE .nodashheldlate1

    ; Now check if we were already holding dash for the next transition
    LDA !ram_shinetune_early_2 : BEQ .checklatemiss1

    ; We were, which means we let go of dash early
    LDA #$00FF : STA !ram_dash_counter
    LDA #$001A : SEC : SBC !ram_shinetune_early_2 : LDX #$0090 : JSR Draw3
    LDA !IH_LETTER_E : STA $7EC696
    LDA #$001B : SEC : SBC !ram_shine_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC698
    RTS

  .nodashheldlate1
    STA !ram_shine_dash_held_late
    LDA !ram_shinetune_late_1 : LDX #$008C : JSR Draw2
    RTS

  .check1
    ; Gear 1, check if we let go of dash
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RUN : BEQ .nodash1

    ; Now check if we just pressed dash
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_RUN : BNE .setnextearly1

    ; If we are still holding dash from the last transition, increment late count
    LDA !ram_shine_dash_held_late : BEQ .donecheck1
    LDA !ram_shinetune_late_1 : INC : STA !ram_shinetune_late_1

  .donecheck1
    RTS

  .checklatemiss1
    ; Arbitrary give up waiting after 49 frames (23 past the time we should have pressed dash)
    LDA !ram_shine_counter : CMP #$0031 : BMI .donecheck1
    LDA #$00FF : STA !ram_dash_counter
    LDA !IH_LETTER_L : STA $7EC692
    LDA !IH_LETTER_X : STA $7EC694
    BRL .clear2

  .checklate1
    ; Gear 1, pressed dash too late to reach gear 2
    LDA #$00FF : STA !ram_dash_counter
    LDA !IH_LETTER_L : STA $7EC692
    LDA !ram_shine_counter : SEC : SBC #$001A
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC694
    BRL .clear2

  .setnextearly1
    ; Gear 1, just pressed dash when trying to reach gear 2
    LDA !ram_shine_counter : CMP #$001A : BPL .checklate1
    LDA !ram_shine_counter : STA !ram_shinetune_early_2
    RTS

  .nodash2
    ; Gear 2, not holding dash, check if we were still holding dash from the last transition
    CMP !ram_shine_dash_held_late : BNE .nodashheldlate2

    ; Now check if we were already holding dash for the next transition
    LDA !ram_shinetune_early_3 : BEQ .checklatemiss2

    ; We were, which means we let go of dash early
    LDA #$00FF : STA !ram_dash_counter
    LDA #$0016 : SEC : SBC !ram_shinetune_early_3 : LDX #$00AE : JSR Draw3
    LDA !IH_LETTER_E : STA $7EC6B4
    LDA #$0017 : SEC : SBC !ram_shine_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC6B6
    RTS

  .nodashheldlate2
    STA !ram_shine_dash_held_late
    LDA !ram_shinetune_late_2 : LDX #$0096 : JSR Draw2
    RTS

  .check2
    ; Gear 2, check if we let go of dash
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RUN : BEQ .nodash2

    ; Now check if we just pressed dash
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_RUN : BNE .setnextearly2

    ; If we are still holding dash from the last transition, increment late count
    LDA !ram_shine_dash_held_late : BEQ .donecheck2
    LDA !ram_shinetune_late_2 : INC : STA !ram_shinetune_late_2

  .donecheck2
    RTS

  .checklatemiss2
    ; Arbitrary give up waiting after 40 frames (18 past the time we should have pressed dash)
    LDA !ram_shine_counter : CMP #$0028 : BMI .donecheck2
    LDA #$00FF : STA !ram_dash_counter
    LDA !IH_LETTER_L : STA $7EC6B0
    LDA !IH_LETTER_X : STA $7EC6B2
    BRL .clear3

  .checklate2
    ; Gear 2, pressed dash too late to reach gear 3
    LDA #$00FF : STA !ram_dash_counter
    LDA !IH_LETTER_L : STA $7EC6B0
    LDA !ram_shine_counter : SEC : SBC #$0016
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC6B2
    BRL .clear3

  .setnextearly2
    ; Gear 2, just pressed dash when trying to reach gear 3
    LDA !ram_shine_counter : CMP #$0016 : BPL .checklate2
    LDA !ram_shine_counter : STA !ram_shinetune_early_3
    RTS

  .nodash3
    ; Gear 3, not holding dash, check if we were still holding dash from the last transition
    CMP !ram_shine_dash_held_late : BNE .nodashheldlate3

    ; Now check if we were already holding dash for the next transition
    LDA !ram_shinetune_early_4 : CMP #$0000 : BEQ .checklatemiss3

    ; We had, which means we let go of dash early
    LDA #$00FF : STA !ram_dash_counter
    LDA #$0012 : SEC : SBC !ram_shinetune_early_4 : LDX #$00B8 : JSR Draw3
    LDA !IH_LETTER_E : STA $7EC6BE
    LDA #$0013 : SEC : SBC !ram_shine_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC6C0
    RTS

  .nodashheldlate3
    STA !ram_shine_dash_held_late
    LDA !ram_shinetune_late_3 : LDX #$00B4 : JSR Draw2
    RTS

  .check3
    ; Gear 3, check if we let go of dash
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RUN : BEQ .nodash3

    ; Now check if we just pressed dash
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_RUN : BNE .setnextearly3

    ; If we are still holding dash from the last transition, increment late count
    LDA !ram_shine_dash_held_late : CMP #$0000 : BEQ .donecheck3
    LDA !ram_shinetune_late_3 : INC : STA !ram_shinetune_late_3

  .donecheck3
    RTS

  .checklatemiss3
    ; Arbitrary give up waiting after 31 frames (13 past the time we should have pressed dash)
    LDA !ram_shine_counter : CMP #$001F : BMI .donecheck3
    LDA #$00FF : STA !ram_dash_counter
    LDA !IH_LETTER_L : STA $7EC6BA
    LDA !IH_LETTER_X : STA $7EC6BC
    BRA .clear4

  .checklate3
    ; Gear 3, pressed dash too late to reach gear 4
    LDA #$00FF : STA !ram_dash_counter
    LDA !IH_LETTER_L : STA $7EC6BA
    LDA !ram_shine_counter : SEC : SBC #$0012
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC6BC
    BRA .clear4

  .setnextearly3
    ; Gear 3, just pressed dash when trying to reach gear 4
    LDA !ram_shine_counter : CMP #$0012 : BPL .checklate3
    LDA !ram_shine_counter : STA !ram_shinetune_early_4
    RTS

  .clear1
    LDA !IH_BLANK : STA $7EC68C : STA $7EC68E : STA $7EC690 : STA $7EC692 : STA $7EC694

  .clear2
    LDA !IH_BLANK : STA $7EC696 : STA $7EC698 : STA $7EC6AE : STA $7EC6B0 : STA $7EC6B2

  .clear3
    LDA !IH_BLANK : STA $7EC6B4 : STA $7EC6B6 : STA $7EC6B8 : STA $7EC6BA : STA $7EC6BC

  .clear4
    LDA !IH_BLANK : STA $7EC6BE : STA $7EC6C0 : STA $7EC6C2 : STA $7EC6C4 : STA $7EC6C6
    RTS

  .drawearly4
    LDA #$0012 : SEC : SBC !ram_shinetune_early_4 : JSR Draw3
    BRA .clear4

  .drawearly3
    LDA #$0016 : SEC : SBC !ram_shinetune_early_3 : LDX #$00AE : JSR Draw3
    BRA .clear3

  .draw4
    LDA !ram_shinetune_late_3 : LDX #$00B4 : JSR Draw2
    LDA !ram_shinetune_early_4 : BNE .drawearly4
    LDA !ram_shine_counter : STA !ram_shinetune_early_4
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_RUN : BEQ .drawearly4
    LDA #$0012 : STA !ram_shinetune_early_4
    BRA .drawearly4

  .draw3
    LDA !ram_shinetune_late_2 : LDX #$0096 : JSR Draw2
    LDA !ram_shinetune_early_3 : BNE .drawearly3
    LDA !ram_shine_counter : STA !ram_shinetune_early_3
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_RUN : BEQ .drawearly3
    LDA #$0016 : STA !ram_shinetune_early_3
    BRA .drawearly3

  .draw1234
    CMP #$0004 : BEQ .draw4
    CMP #$0003 : BEQ .draw3
    CMP #$0002 : BEQ .draw2
    CMP #$0001 : BEQ .draw1
    RTS

  .draw2
    LDA !ram_shinetune_late_1 : LDX #$008C : JSR Draw2
    LDA !ram_shinetune_early_2 : BNE .drawearly2
    LDA !ram_shine_counter : STA !ram_shinetune_early_2
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_RUN : BEQ .drawearly2
    LDA #$001A : STA !ram_shinetune_early_2

  .drawearly2
    LDA #$001A : SEC : SBC !ram_shinetune_early_2 : JSR Draw3
    BRL .clear2

  .draw1
    LDA !ram_shinetune_early_1 : CMP #$0064 : BPL .draw1miss
    LDX #$0088 : JSR Draw2
    BRL .clear1

  .draw1miss
    LDA !IH_LETTER_X : STA $7EC688 : STA $7EC68A
    BRL .clear1
}

status_quickdrop:
{
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_LEFT : BNE .leftright
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_RIGHT : BNE .leftright

    ; Arbitrary wait of 20 frames before resetting
    LDA !ram_quickdrop_counter : BEQ .done : CMP #$0014 : BPL .reset
    LDA !ram_quickdrop_counter : INC : STA !ram_quickdrop_counter
    RTS

  .leftright
    LDA !IH_BLANK : STA $7EC688 : STA $7EC68A
    LDA !ram_quickdrop_counter : BEQ .firstleftright
    LDX #$008C : JSR Draw2

  .setcounter
    LDA #$0001 : STA !ram_quickdrop_counter

  .done
    RTS

  .firstleftright
    LDA !IH_BLANK : STA $7EC68C : STA $7EC68E : STA $7EC690
    BRA .setcounter

  .reset
    LDA #$0000 : STA !ram_quickdrop_counter
    RTS
}

status_walljump:
{
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_LEFT : BNE .leftright
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_RIGHT : BNE .leftright

    ; Arbitrary wait of 20 frames before resetting
    LDA !ram_walljump_counter : BEQ .done : CMP #$0014 : BPL .reset
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BNE .jump
    LDA !ram_walljump_counter : INC : STA !ram_walljump_counter
    RTS

  .leftright
    LDA #$0001 : STA !ram_walljump_counter

  .done
    RTS

  .jump
    LDA !ram_walljump_counter : LDX #$008C : JSR Draw2
    BRA .roomcheck

  .ignore
    ; We can provide extra feedback on max-delayed walljumps near the target position
    ; Only clear that information if we have another max-delayed walljump
    LDA !ram_walljump_counter : CMP #$0009 : BNE .reset

  .clear
    LDA !IH_BLANK : STA $7EC688 : STA $7EC68A

  .reset
    LDA #$0000 : STA !ram_walljump_counter
    RTS

  .low
    ; If we are more than 65 pixels away from the target walljump position,
    ; assume this is a regular walljump and ignore the target position
    SEC : SBC !ram_ypos : CMP #$0042 : BPL .ignore
    ASL : TAY : LDA !ram_walljump_counter : CMP #$0009 : BNE .clear
    LDA.w NumberGFXTable,Y : STA $7EC68A
    LDA !IH_LETTER_L : STA $7EC688
    BRA .reset

  .heightcheck
    LDA $0AFA : CMP !ram_ypos : BPL .low

    ; We must be high
    ; If we are more than 65 pixels away from the target walljump position,
    ; assume this is a regular walljump and ignore the target position
    LDA !ram_ypos : DEC : SEC : SBC $0AFA : CMP #$0042 : BPL .ignore
    ASL : TAY : LDA !ram_walljump_counter : CMP #$0009 : BNE .clear
    LDA.w NumberGFXTable,Y : STA $7EC68A
    LDA !IH_LETTER_H : STA $7EC688
    BRA .reset

  .roomcheck
    LDA $079B : CMP #$B4AE : BEQ .writg : CMP #$D2AB : BEQ .plasma : CMP #$ACB4 : BEQ .bubble
    BRA .clear

  .writg
    LDA #$042E : STA !ram_ypos
    BRA .heightcheck

  .plasma
    LDA #$014E : STA !ram_ypos
    BRA .heightcheck

  .bubble
    LDA #$0116 : STA !ram_ypos
    BRA .heightcheck
}

status_shottimer:
{
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_SHOOT : BEQ .inc
    LDA !ram_shot_timer : LDX #$0088 : JSR Draw4
    LDA #$0000 : STA !ram_shot_timer

  .inc
    LDA !ram_shot_timer : INC : STA !ram_shot_timer
    RTS
}

status_enemyhp:
{
    LDA $0F8C : CMP !ram_enemy_hp : BEQ .done : STA !ram_enemy_hp
    LDX #$0088 : JSR Draw4

  .done
    RTS
}


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
    LDA $4216 : ASL A : TAY : LDA.w NumberGFXTable,Y : STA $7EC602,X

    ; Tens digit
    LDA $16 : BEQ .blanktens : ASL A : TAY : LDA.w NumberGFXTable,Y : STA $7EC600,X

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
    LDA $4216 : ASL A : TAY : LDA.w NumberGFXTable,Y : STA $7EC604,X

    LDA $16 : BEQ .blanktens
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $14

    ; Tens digit
    LDA $4216 : ASL A : TAY : LDA.w NumberGFXTable,Y : STA $7EC602,X

    ; Hundreds digit
    LDA $14 : BEQ .blankhundreds : ASL A : TAY : LDA.w NumberGFXTable,Y : STA $7EC600,X

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
    LDA $4216 : ASL A : TAY : LDA.w NumberGFXTable,Y : STA $7EC606,X

    LDA $16 : BEQ .blanktens
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $14

    ; Tens digit
    LDA $4216 : ASL A : TAY : LDA.w NumberGFXTable,Y : STA $7EC604,X

    LDA $14 : BEQ .blankhundreds
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA
    LDA $4214 : STA $12

    ; Hundreds digit
    LDA $4216 : ASL A : TAY : LDA.w NumberGFXTable,Y : STA $7EC602,X

    ; Thousands digit
    LDA $12 : BEQ .blankthousands : ASL A : TAY : LDA.w NumberGFXTable,Y : STA $7EC600,X

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
    CMP #$0010
    BNE +
    LDA #$0000
+   STA !sram_display_mode
    JMP .update_status

  .dec_statusdisplay
    LDA !sram_display_mode
    DEC A
    CMP #$FFFF
    BNE +
    LDA #$000F
+   STA !sram_display_mode
    JMP .update_status


  .update_status
    LDA #$0000
    STA !ram_armed_shine_duration
    STA !ram_charge_counter
    STA !ram_xfac_counter
    INC A
    STA !ram_dash_counter
    STA !ram_iframe_counter
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
    STA !ram_armed_shine_duration
    STA $0A68
    RTL
}

print pc, " infohud end"

; Stuff that needs to be placed in bank 80
org $80D300
print pc, " infohud bank80 start"
NumberGFXTable:
    dw #$0C09, #$0C00, #$0C01, #$0C02, #$0C03, #$0C04, #$0C05, #$0C06, #$0C07, #$0C08
    dw #$0C10, #$0C11, #$0C12, #$0C13, #$0C14, #$0C15, #$0C16, #$0C17, #$0C18, #$0C19
    dw #$0C1A, #$0C20, #$0C21, #$0C22, #$0C23, #$0C24, #$0C25, #$0C26, #$0C27, #$0C28
    dw #$0C29, #$0C2A, #$0C2B, #$0C2C, #$0C2D, #$0C2E, #$0C2F, #$0C30, #$0C31, #$0C33
    dw #$0C4D, #$0C6E, #$0C4F, #$0C55, #$0C56, #$0C58, #$0C59, #$0C5A, #$0C5B, #$0C5C
    dw #$0C5D, #$0C5E, #$0C5F, #$0C8D, #$0C8E, #$0C8F, #$0CD2, #$0CD4, #$0CD5, #$0CD6
    dw #$0CD7, #$0CD8, #$0CD9, #$0CDA, #$0CDB, #$0CCA

HexGFXTable:
    dw #$0C70, #$0C71, #$0C72, #$0C73, #$0C74, #$0C75, #$0C76, #$0C77
    dw #$0C78, #$0C79, #$0C7A, #$0C7B, #$0C7C, #$0C7D, #$0C7E, #$0C7F

ControllerTable1:
    dw #$0020, #$0800, #$0010, #$4000, #$0040, #$2000
ControllerTable2:
    dw #$0200, #$0400, #$0100, #$8000, #$0080, #$1000
ControllerGfx1:
    dw #$0C68, #$0C61, #$0C69, #$0C67, #$0C66, #$0C6A
ControllerGfx2:
    dw #$0C60, #$0C63, #$0C62, #$0C7B, #$0C7A, #$0C6B

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
warnpc $80F000

org $8098CB  ; Initial HUD tilemap
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C09, #$2C0F
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F

