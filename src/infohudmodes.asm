;=======================================================
;InfoHUD modes and room strats
;=======================================================

; When adding or removing infohud modes,
; also update infohud.asm: inc_statusdisplay and dec_statusdisplay
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

status_enemyhp:
{
    LDA $0F8C : CMP !ram_enemy_hp : BEQ .done : STA !ram_enemy_hp
    LDX #$0088 : JSR Draw4

  .done
    RTS
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

status_chargetimer:
{
    LDA #$003D : SEC : SBC $0CD0 : CMP !ram_charge_counter : BEQ .done : STA !ram_charge_counter
    CMP #$0000 : BPL .charging : LDA #$0000

  .charging
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_xfactor:
{
    LDA #$0079 : SEC : SBC $0CD0 : CMP !ram_xfac_counter : BEQ .done : STA !ram_xfac_counter
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_cooldowncounter:
{
    LDA $0CCC : CMP !ram_cooldown_counter : BEQ .done : STA !ram_cooldown_counter
    LDX #$0088 : JSR Draw4

  .done
    RTS
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

status_dashcounter:
{
    LDA $0B3F : AND #$00FF : CMP !ram_dash_counter : BEQ .done : STA !ram_dash_counter
    LDX #$0088 : JSR Draw4

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

    ; We were, which means we let go of dash early
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

status_iframecounter:
{
    LDA $18A8 : CMP !ram_iframe_counter : BEQ .done : STA !ram_iframe_counter
    LDX #$0088 : JSR Draw4

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

    LDA $0B2E : CMP !ram_vertical_speed : BEQ .checkfalling : CMP #$FFFF : BNE .drawspeed

    ; At the peak of a normal jump, speed will go negative for one frame
    ; Instead of drawing 65535 for one frame, draw a hyphen
    ; We can detect this if our speed was previously positive
    ; If speed was previously negative, then proceed as normal to draw 65535
    TAY : LDA !ram_vertical_speed : AND #$8000 : BNE .restorespeed

    LDA !IH_BLANK : STA $7EC688 : STA $7EC68A : STA $7EC68C : STA $7EC690
    LDA !IH_HYPHEN : STA $7EC68E

    ; Store speed as some negative value that isn't FFFF,
    ; so if it is negative again we'll update it to 65535
    LDA #$8000 : STA !ram_vertical_speed
    BRA .checkfalling

  .restorespeed
    TYA

  .drawspeed
    STA !ram_vertical_speed : LDX #$0088 : JSR Draw4
    LDA !IH_BLANK : STA $7EC690

  .checkfalling
    ; If we're not falling reset counters
    LDA $0B36 : CMP #$0002 : BNE .prepareresetcounters

    ; Check if we are falling and have enough vertical speed for space jump
    LDA $0B2C : CMP #$8C00 : BNE .incstate

    ; We are, so initialize state
    ; Note this sets the state one larger than it should be
    LDA #$0001 : STA !ram_roomstrat_state

    ; If we just pressed jump, or if we haven't jumped yet, nothing more to do
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BNE .preparenewjump
    LDA !ram_roomstrat_counter : BEQ .preparecheckjump

    ; Time to compare, but since we haven't done anything with the jump counter yet,
    ; we need to increment that now first
    INC : STA !ram_roomstrat_counter

  .preparecompare
    ; Compare when we jumped to when we are allowed to jump
    LDA $0AD2 : BNE .compare

    ; If in air, we needed to jump 18 frames later
    LDA !ram_roomstrat_counter : CLC : ADC #$0012 : STA !ram_roomstrat_counter

  .compare
    LDA !ram_roomstrat_state : DEC : CMP !ram_roomstrat_counter : BMI .earlyprint
    LDA !ram_roomstrat_state : CMP #$002B : BPL .lateprint

    ; We must have jumped on time
    LDA !ram_roomstrat_state : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC698
    LDA !IH_LETTER_Y : STA $7EC696

  .comparefinish
    LDA #$0000 : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    RTS

  .prepareresetcounters
    ; If we're resetting counters because we aren't falling,
    ; it might be because we successfully jumped, so check if we just pressed jump
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BNE .incstate

  .resetjumpandfallcounters
    LDA #$0000 : STA !ram_roomstrat_state : STA !ram_roomstrat_counter

  .preparecheckjump
    BRA .checkjump

  .preparenewjump
    BRA .newjump

  .incstate
    ; Arbitrary wait of 96 frames before giving up
    LDA !ram_roomstrat_state : BEQ .checkjump : CMP #$0060 : BPL .resetjumpandfallcounters
    INC : STA !ram_roomstrat_state
    BRA .checkjump

  .earlyprint
    LDA !ram_roomstrat_counter : INC : SEC : SBC !ram_roomstrat_state
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC698
    LDA !IH_LETTER_E : STA $7EC696

    ; If we're early, we can try again, so only reset the jump counter
    BRA .resetjumpcounter

  .lateprint
    SEC : SBC #$002A : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC698
    LDA !IH_LETTER_L : STA $7EC696
    BRA .comparefinish

  .checkjump
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BNE .newjump
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_JUMP : BNE .incjump

    ; If we just stopped jumping, print number of frames jump was held
    LDA !ram_walljump_counter : BEQ .incnojump
    LDX #$0092 : JSR Draw2
    LDA #$0000 : STA !ram_walljump_counter

  .incnojump
    ; Keep track of frames since last jump
    ; Arbitrary wait of 64 frames before giving up
    LDA !ram_roomstrat_counter : BEQ .done : CMP #$0040 : BPL .resetjumpcounter
    INC : STA !ram_roomstrat_counter

  .done
    RTS

  .newjump
    LDA #$0001 : STA !ram_roomstrat_counter : STA !ram_walljump_counter

    ; If we started falling and space jump might be allowed, time to compare
    LDA !ram_roomstrat_state : BEQ .done
    BRL .preparecompare

  .resetjumpcounter
    LDA #$0000 : STA !ram_roomstrat_counter
    RTS

  .incjump
    LDA !ram_roomstrat_counter : BEQ .incjumponly
    INC : STA !ram_roomstrat_counter : STA !ram_walljump_counter
    RTS

  .incjumponly
    LDA !ram_walljump_counter : INC : STA !ram_walljump_counter
    RTS
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
    LDA $079B : CMP #$B4AD : BEQ .writg : CMP #$D2AA : BEQ .plasma : CMP #$ACB3 : BEQ .bubble
    BRA .clear

  .writg
    LDA #$042F : STA !ram_ypos
    BRA .heightcheck

  .plasma
    LDA #$014F : STA !ram_ypos
    BRA .heightcheck

  .bubble
    LDA #$0117 : STA !ram_ypos
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

status_tacotank:
{
    ; Suppress Samus HP display
    LDA $09C2 : STA !ram_last_hp

    ; Seven states of taco tank
    LDA !ram_roomstrat_state : CMP #$0007 : BPL .falling : CMP #$0002 : BMI .checkstart
    BRL .checkotherstates

  .donestart
    RTS

  .returnstart
    LDA #$0001 : STA !ram_roomstrat_state

  .checkstart
    ; Check if Samus is in starting position not facing right and not holding left
    LDA $0AF6 : CMP #$022B : BNE .donestart
    LDA $0AF8 : CMP #$FFFF : BNE .donestart
    LDA $0AFA : CMP #$02BB : BNE .donestart
    LDA $0A1E : AND #$0004 : CMP #$0004 : BNE .donestart
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BNE .donestart

    ; Ready to start
    LDA !IH_LETTER_Y : STA $7EC688
    LDA !IH_BLANK : STA $7EC68A : STA $7EC68C : STA $7EC68E : STA $7EC690
    STA $7EC692 : STA $7EC694 : STA $7EC696 : STA $7EC698
    BRL .incstate

  .falling
    LDA !ram_walljump_counter : INC : STA !ram_walljump_counter

    ; Check if we are still in aim down pose
    LDA $0A1C : CMP #$0018 : BEQ .donestart

    ; If not, assume we expanded our hitbox
    LDA !ram_walljump_counter : CMP !ram_xpos : BMI .expandearly
    CMP !ram_ypos : BPL .expandlate

    ; We expanded hitbox on time
    INC : SEC : SBC !ram_xpos
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC698
    LDA !IH_LETTER_Y : STA $7EC696
    BRL .returnstart

  .expandearly
    LDA !ram_xpos : SEC : SBC !ram_walljump_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC698
    LDA !IH_LETTER_E : STA $7EC696
    BRL .returnstart

  .expandlate
    INC : SEC : SBC !ram_ypos
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC698
    LDA !IH_LETTER_L : STA $7EC696
    BRL .returnstart

  .clearreturnstart
    LDA !IH_BLANK : STA $7EC688 : STA $7EC68A
    BRL .returnstart

  .incleft
    ; Arbitrary wait of 64 frames before giving up
    LDA !ram_roomstrat_counter : CMP #$0040 : BPL .clearreturnstart
    INC : STA !ram_roomstrat_counter
    RTS

  .incstate
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state
    LDA #$0000 : STA !ram_roomstrat_counter
    RTS

  .rising
    ; If our speed is still good then we haven't broken spin
    LDA $0B48 : CMP #$6000 : BEQ .done

    ; We have broken spin, combine starting X position with walljump to see how we did
    LDA !ram_xpos : CLC : ADC !ram_walljump_counter : STA !ram_xpos
    BRL .setx

  .initialjump
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BEQ .checkleft

    ; Print number of frames after holding left that we pressed jump
    LDA !ram_roomstrat_counter : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68A

  .checkleft
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BNE .incleft

    ; Nothing to do if we haven't pressed left yet
    LDA !ram_roomstrat_counter : BEQ .done

    ; Print number of frames we were holding left
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC688

    ; If we stopped holding left, but we haven't jumped yet,
    ; then we aren't ready to move to the next state
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_JUMP : BNE .incstate

  .done
    RTS

  .wjfail
    LDA !IH_LETTER_X : STA $7EC694
    BRL .returnstart

  .checkotherstates
    ; Most states require the walljump counter incremented, so just do it for all of them
    LDA !ram_walljump_counter : INC : STA !ram_walljump_counter
    LDA !ram_roomstrat_state : CMP #$0002 : BEQ .initialjump : CMP #$0005 : BEQ .rising
    CMP #$0006 : BEQ .peaking : CMP #$0004 : BEQ .accel
    BRA .walljump

  .accel
    ; We can't evaluate the horizontal movement for a few frames
    LDA !ram_walljump_counter : AND #$0004 : BNE .done

    ; Once we can evaluate, make sure it is good
    LDA $0B44 : CMP #$3000 : BNE .wjfail
    LDA !ram_xpos : CMP #$0039 : BPL .wjfail
    BRL .incstate

  .peakfail
    LDA !IH_LETTER_X : STA $7EC696 : STA $7EC698
    BRL .returnstart

  .checkground
    LDA $0AFA : CMP #$02BB : BNE .done

    ; We're back on the ground
    BRL .returnstart

  .peaking
    ; If still rising, nothing to do
    LDA $0B36 : CMP #$0001 : BEQ .done
    
    ; Fail if not falling with proper speed and pose
    CMP #$0002 : BNE .peakfail
    LDA $0AFA : CMP #$0243 : BPL .peakfail
    LDA $0B44 : CMP #$3000 : BNE .peakfail
    LDA $0B48 : CMP #$4000 : BNE .peakfail
    LDA $0A1C : CMP #$0018 : BNE .peakfail
    BRL .incstate

  .wjfar
    ; We jumped so late we are more than 65 pixels from the wall
    ; Set ram_xpos to an arbitrarily large value to ensure we'll fail later
    LDA !IH_LETTER_X : STA $7EC692 : STA !ram_xpos
    BRA .wjcontinue

  .walljump
    ; Waiting for the walljump
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BEQ .checkground

    ; We jumped, first calculate our distance from the wall
    LDA #$022B : SEC : SBC $0AF6 : CMP #$0042 : BPL .wjfar
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC692

    ; Store this for later, each pixel counts as 8 frames of good horizontal movement
    TYA : ASL : ASL : STA !ram_xpos

  .wjcontinue
    LDA !IH_BLANK : STA $7EC6A4
    LDA #$0000 : STA !ram_walljump_counter

    ; Now time to evaluate the jump height
    ; If necessary evaluate down to the subpixel
    LDA $0AFA : CMP #$029D : BEQ .bonk : CMP #$029E : BEQ .threey : BPL .maybelow

  .high
    LDA #$029E : SEC : SBC $0AFA : CMP #$0042 : BPL .toohigh
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    BRA .highprint

  .toohigh
    LDA !IH_LETTER_X : STA $7EC68E

  .highprint
    LDA !IH_LETTER_H : STA $7EC68C
    BRL .wjfail

  .bonk
    LDA $0AFC : CMP #$F000 : BCS .printtwob : CMP #$B000 : BCS .printoneb
    BRA .high

  .maybelow
    CMP #$029F : BEQ .twoy : CMP #$02A0 : BEQ .printoney : CMP #$02A1 : BEQ .oney

  .low
    LDA $0AFA : SEC : SBC #$02A0
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    LDA !IH_LETTER_L : STA $7EC68C
    BRL .wjfail

  .threey
    LDA $0AFC : CMP #$9400 : BCS .printtwoy : CMP #$1400 : BCC .printtwob
    CMP #$1C00 : BCC .printthreeb
    LDA #$0003

  .printy
    STA !ram_ypos : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    LDA !IH_LETTER_Y : STA $7EC68C

    ; Determine last frame where we can gather the tank
    LDA #$0036 : CLC : ADC !ram_ypos : STA !ram_ypos
    BRL .incstate

  .twoy
    LDA $0AFC : CMP #$E400 : BCS .printoney

  .printtwoy
    LDA #$0002
    BRA .printy

  .printtwob
    LDA #$0002
    BRA .printb

  .printoneb
    LDA #$0001
    BRA .printb

  .oney
    LDA $0AFC : CMP #$1800 : BCS .low

  .printoney
    LDA #$0001
    BRA .printy

  .printthreeb
    LDA #$0003

  .printb
    STA !ram_ypos : ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC68E
    LDA !IH_LETTER_B : STA $7EC68C

    ; Determine last frame where we can gather the tank
    LDA #$0036 : CLC : ADC !ram_ypos : STA !ram_ypos
    BRL .incstate

  .setx
    ; Determine first frame where we can gather the tank
    LDA !ram_xpos : CMP #$0051 : BPL .threex : CMP #$0046 : BPL .twox : CMP #$003A : BPL .onex
    BRA .predictfail

  .threex
    LDA #$0036 : STA !ram_xpos
    BRA .predict

  .twox
    LDA #$0037 : STA !ram_xpos
    BRA .predict

  .onex
    LDA #$0038 : STA !ram_xpos

  .predict
    ; Compare first frame we can get the tank to the last frame
    CMP !ram_ypos : BMI .predictchance

  .predictfail
    ; There are no frames where we can gather the tank
    LDY #$0000 : LDA.w NumberGFXTable,Y : STA $7EC694
    BRL .returnstart

  .predictchance
    ; There is at least one frame where we can gather the tank
    LDA !ram_ypos : SEC : SBC !ram_xpos
    ASL : TAY : LDA.w NumberGFXTable,Y : STA $7EC694
    BRL .incstate
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

status_robotflush:
{
    ; Checking hit on first robot
    LDA !IH_BLANK : STA $7EC688
    LDA $0FEA : CMP #$0030 : BMI .checkfirstfall
    LDA #$0C3C : STA $7EC688

  .checkfirstfall
    LDA !IH_BLANK : STA $7EC68A
    LDA $0FBE : CMP #$0280 : BMI .checksecondhit
    LDA #$0C3C : STA $7EC68A

  .checksecondhit
    LDA !IH_BLANK : STA $7EC68C
    LDA $102A : CMP #$0030 : BMI .checksecondfall
    LDA #$0C3D : STA $7EC68C

  .checksecondfall
    LDA !IH_BLANK : STA $7EC68E
    LDA $0FFE : CMP #$0280 : BMI .done
    LDA #$0C3D : STA $7EC68E

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

status_mbhp:
{
    LDA $0FCC : CMP !ram_mb_hp : BEQ .done : STA !ram_mb_hp
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

