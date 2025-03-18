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
    dw status_cooldown
    dw status_shinetimer
    dw status_dashcounter
    dw status_shinetune
    dw status_iframecounter
    dw status_spikesuit
    dw status_lagcounter
    dw status_cpuusage
    dw status_hspeed
    dw status_vspeed
    dw status_quickdrop
    dw status_walljump
    dw status_countdamage
    dw status_armpump
    dw status_pumpcounter
    dw status_xpos
    dw status_ypos
    dw status_shottimer
    dw status_ramwatch

status_enemyhp:
{
    LDA !ENEMY_HP : CMP !ram_enemy_hp : BEQ .done : STA !ram_enemy_hp
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
    dw status_superhud
    dw status_ceresridley
    dw status_doorskip
    dw status_tacotank
    dw status_pitdoor
    dw status_moondance
    dw status_kraidradar
    dw status_gateglitch
    dw status_moatcwj
    dw status_robotflush
    dw status_shinetopb
    dw status_elevatorcf
    dw status_botwooncf
    dw status_draygonai
    dw status_snailclip
    dw status_wasteland
    dw status_ridleyai
    dw status_kihuntermanip
    dw status_downbackzeb
    dw status_zebskip
    dw status_mbhp
    dw status_twocries
}

status_chargetimer:
{
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_SHOT : BNE .pressedShot
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BNE .charging

    ; count up to 36 frames of shot released
    LDA !ram_shot_timer : CMP #$0024 : BPL .reset
    INC : STA !ram_shot_timer
    ASL : TAX : LDA NumberGFXTable,X : STA !HUD_TILEMAP+$88
    RTS

  .reset
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88
    LDA #$003C : STA !ram_HUD_check
    RTS

  .pressedShot
    TDC : STA !ram_shot_timer

  .charging
    LDA #$003C : SEC : SBC !SAMUS_CHARGE_TIMER
    CMP !ram_HUD_check : BEQ .done : STA !ram_HUD_check
    CMP #$0001 : BPL .drawCharge

    ; Beam charged
    LDA !IH_SHINESPARK : STA !HUD_TILEMAP+$8C
    LDA !SAMUS_CHARGE_TIMER : SEC : SBC #$003C
    ASL : TAX : LDA NumberGFXTable,X : STA !HUD_TILEMAP+$8E
    RTS

  .drawCharge
    LDX #$008A : JSR Draw3

  .done
    RTS
}

status_xfactor:
{
    LDA #$0079 : SEC : SBC !SAMUS_CHARGE_TIMER : CMP !ram_HUD_check : BEQ .done : STA !ram_HUD_check
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_cooldown:
{
    LDA !SAMUS_COOLDOWN : CMP !ram_HUD_check : BEQ .done : STA !ram_HUD_check
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_shinetimer:
{
    LDA !ram_armed_shine_duration : BNE .nonZero

    ; count up to 36 frames of shinespark being late
    LDA !ram_shot_timer : CMP !SAFEWORD : BEQ .done
    CMP #$0024 : BPL .reset
    INC : STA !ram_shot_timer
    ASL : TAX : LDA NumberGFXTable,X : STA !HUD_TILEMAP+$88

    LDA !SAMUS_MOVEMENT_TYPE : AND #$00FF : CMP #$0002 : BEQ .late
    BRA .draw

  .reset
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88
    BRA .draw

  .late
    ; arbitrary value indicating normal jumping pose already observed
    LDA !SAFEWORD : STA !ram_shot_timer
    BRA .draw

  .nonZero
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88
    TDC : STA !ram_shot_timer

  .draw
    LDA !ram_armed_shine_duration : CMP !ram_HUD_check : BEQ .done
    STA !ram_HUD_check
    LDX #$008A : JSR Draw3

  .done
    RTS
}

status_dashcounter:
{
    LDA !SAMUS_DASH_COUNTER : AND #$00FF : CMP !ram_dash_counter : BEQ .done : STA !ram_dash_counter
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_shinetune:
{
if !FEATURE_PAL
    !tap_1_to_2 = $0014
    !tap_2_to_3 = $0014
    !tap_3_to_4 = $000A
else
    !tap_1_to_2 = $0019
    !tap_2_to_3 = $0014
    !tap_3_to_4 = $000F
endif

    ; Suppress Samus HP display
    ; The segment timer is also suppressed elsewhere just for shinetune
    LDA !SAMUS_HP : STA !ram_last_hp

    ; Track Samus momentum
    LDA !ram_momentum_count : BEQ .wait_for_start : BMI .wait_for_stop
    CMP #$002C : BEQ .average_momentum

    ; Check if momentum has stopped or if direction changed
    LDA !IH_CONTROLLER_PRI : AND !ram_momentum_direction : BNE .increment_momentum
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFTRIGHT : BNE .invalid_momentum
    LDA !ram_momentum_last : BEQ .momentum_stopped
    LDA !IH_CONTROLLER_PRI_PREV : AND !ram_momentum_direction : BEQ .release_direction_penalty

  .increment_momentum
    LDA !ram_momentum_count : INC : STA !ram_momentum_count
    LDA !ram_momentum_sum : CLC : ADC !ram_momentum_last : STA !ram_momentum_sum
    BRA .shinetune_start

  .wait_for_start
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFTRIGHT : BEQ .shinetune_start
    STA !ram_momentum_direction
    LDA #$0001 : STA !ram_momentum_count
    BRA .shinetune_start

  .average_momentum
    ; We have total momentum (x256) over 44 frames
    ; To get the average (x1024), divide by 11
    LDA !ram_momentum_sum
    STA $4204
    %a8()
    LDA #$0B : STA $4206
    %a16()
    PEA $0000 : PLA : PEA $0000 : PLA
    LDA $4214 : LDX #$0054 : JSR Draw4Hundredths

  .invalid_momentum
    LDA #$FFFF : STA !ram_momentum_count
    BRA .shinetune_start

  .wait_for_stop
    LDA !ram_momentum_last : BNE .shinetune_start
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFTRIGHT : BNE .shinetune_start
    BRA .momentum_stopped

  .release_direction_penalty
    LDA !ram_momentum_sum : XBA : INC : XBA : STA !ram_momentum_sum
    BRA .increment_momentum

  .momentum_stopped
    TDC : STA !ram_momentum_sum : STA !ram_momentum_count : STA !ram_momentum_direction

  .shinetune_start
    ; Track momentum
    LDA !SAMUS_X_SUBMOMENTUM : XBA : AND #$00FF : STA $12
    LDA !SAMUS_X_MOMENTUM : XBA : AND #$FF00 : ORA $12 : STA !ram_momentum_last

    ; Think of Samus as a five-speed bike with gears 0-4 (dash counter)
    LDA !ram_dash_counter : CMP #$0003 : BEQ .checkgearshift3
    CMP #$00FF : BEQ .checkgearshiftinvalid : CMP #$0004 : BNE .checkgearshift012

    ; Samus has reached fourth gear and is ready to charge the shinespark by pressing down
    ; When this happens, the gear resets to zero, so check for that
    LDA !SAMUS_DASH_COUNTER : AND #$00FF : CMP !ram_dash_counter : BEQ .chargespark

  .draw_end
    ; Skip drawing if minimap on
    LDA !ram_minimap : BNE .reset
    LDA !ram_shinetune_late_4 : LDX #$00C0 : JSR Draw3

  .reset
    TDC : STA !ram_shine_counter : STA !ram_dash_counter
    STA !ram_shinetune_early_1 : STA !ram_shinetune_late_1
    STA !ram_shinetune_early_2 : STA !ram_shinetune_late_2
    STA !ram_shinetune_early_3 : STA !ram_shinetune_late_3
    STA !ram_shinetune_early_4 : STA !ram_shinetune_late_4
    STA !ram_shine_dash_held_late : STA !ram_momentum_sum
    STA !ram_momentum_count : STA !ram_momentum_direction
    RTS

  .checkgearshiftinvalid
    ; After a failed attempt to charge a shinespark, we will sit in this invalid state
    ; and wait until Samus goes back to 0 gear before checking again
    LDA !SAMUS_DASH_COUNTER : AND #$00FF : BNE .donegearshift

  .checkgearshift012
    ; Samus can jump from gear 0 to 4 when using a shinespark, so ignore that
    LDA !SAMUS_DASH_COUNTER : AND #$00FF : CMP #$0004 : BEQ .donegearshift

  .checkgearshift3
    LDA !SAMUS_DASH_COUNTER : AND #$00FF : CMP !ram_dash_counter : BEQ .check0123

    ; Gear changed, if we went back to 0 gear then reset
    STA !ram_dash_counter : CMP #$0000 : BEQ .reset

    ; Assume we gear shifted up, so set flag indicating we are holding dash for this transition
    ; Also reset our shine counter
    ; For efficiency the shine counter is set to the dash counter instead of zero,
    ; so keep that in mind when reviewing the logic to follow
    STA !ram_shine_dash_held_late : STA !ram_shine_counter

    ; On gear shift, we have some numbers to draw
    JMP .draw1234

  .chargespark
    LDA !SAMUS_Y_DIRECTION : BNE .cancelspark
    LDA !ram_shinetune_late_4 : INC : STA !ram_shinetune_late_4
    RTS

  .cancelspark
    JMP .draw_end

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
    JMP .check3

  .check12
    CMP #$0001 : BEQ .check1
    CMP #$0002 : BNE .donegearshift
    JMP .check2

  .nodash1
    ; Gear 1, not holding dash, check if we were still holding dash from the last transition
    CMP !ram_shine_dash_held_late : BNE .nodashheldlate1

    ; Now check if we were already holding dash for the next transition
    LDA !ram_shinetune_early_2 : BEQ .checklatemiss1

    ; We were, which means we let go of dash early
    LDA #$00FF : STA !ram_dash_counter
    LDA #(!tap_1_to_2+1) : SEC : SBC !ram_shinetune_early_2 : LDX #$0090 : JSR Draw3
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$96
    LDA #(!tap_1_to_2+2) : SEC : SBC !ram_shine_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$98
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
    ; Arbitrary give up waiting after 50 frames (24 past the time we should have pressed dash)
    LDA !ram_shine_counter : CMP #(!tap_1_to_2+!tap_1_to_2) : BMI .donecheck1
    LDA #$00FF : STA !ram_dash_counter
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$92
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$94
    JMP .clear2

  .checklate1
    ; Gear 1, pressed dash too late to reach gear 2
    LDA #$00FF : STA !ram_dash_counter
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$92
    LDA !ram_shine_counter : SEC : SBC #(!tap_1_to_2+1)
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$94
    JMP .clear2

  .setnextearly1
    ; Gear 1, just pressed dash when trying to reach gear 2
    LDA !ram_shine_counter : CMP #(!tap_1_to_2+1) : BPL .checklate1
    LDA !ram_shine_counter : STA !ram_shinetune_early_2
    RTS

  .nodash2
    ; Gear 2, not holding dash, check if we were still holding dash from the last transition
    CMP !ram_shine_dash_held_late : BNE .nodashheldlate2

    ; Now check if we were already holding dash for the next transition
    LDA !ram_shinetune_early_3 : BEQ .checklatemiss2

    ; We were, which means we let go of dash early
    LDA #$00FF : STA !ram_dash_counter
    LDA #(!tap_2_to_3+2) : SEC : SBC !ram_shinetune_early_3 : LDX #$00AE : JSR Draw3
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$B4
    LDA #(!tap_2_to_3+3) : SEC : SBC !ram_shine_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$B6
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
    LDA !ram_shine_counter : CMP #(!tap_2_to_3+!tap_2_to_3) : BMI .donecheck2
    LDA #$00FF : STA !ram_dash_counter
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$B0
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$B2
    JMP .clear3

  .checklate2
    ; Gear 2, pressed dash too late to reach gear 3
    LDA #$00FF : STA !ram_dash_counter
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$B0
    LDA !ram_shine_counter : SEC : SBC #(!tap_2_to_3+2)
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$B2
    JMP .clear3

  .setnextearly2
    ; Gear 2, just pressed dash when trying to reach gear 3
    LDA !ram_shine_counter : CMP #(!tap_2_to_3+2) : BPL .checklate2
    LDA !ram_shine_counter : STA !ram_shinetune_early_3
    RTS

  .nodash3minimap
    ; We let go of dash early, but also we have the minimap displayed
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$B8
    LDA #(!tap_3_to_4+4) : SEC : SBC !ram_shine_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$BA
    RTS

  .nodash3
    ; Gear 3, not holding dash, check if we were still holding dash from the last transition
    CMP !ram_shine_dash_held_late : BNE .nodashheldlate3

    ; Now check if we were already holding dash for the next transition
    LDA !ram_shinetune_early_4 : CMP #$0000 : BEQ .checklatemiss3

    ; We were, which means we let go of dash early
    LDA #$00FF : STA !ram_dash_counter
    LDA !ram_minimap : BNE .nodash3minimap
    LDA #(!tap_3_to_4+3) : SEC : SBC !ram_shinetune_early_4 : LDX #$00B8 : JSR Draw3
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$BE
    LDA #(!tap_3_to_4+4) : SEC : SBC !ram_shine_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$C0
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

  .checklatemiss3minimap
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$B8
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$BA
    RTS

  .checklatemiss3
    ; Arbitrary give up waiting after 30 frames (12 past the time we should have pressed dash)
    LDA !ram_shine_counter : CMP #(!tap_3_to_4+!tap_3_to_4) : BMI .donecheck3
    LDA #$00FF : STA !ram_dash_counter
    LDA !ram_minimap : BNE .checklatemiss3minimap
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$BC
    BRA .checklateprint3

  .checklate3
    ; Gear 3, pressed dash too late to reach gear 4
    LDA #$00FF : STA !ram_dash_counter
    LDA !ram_minimap : BNE .checklate3minimap
    LDA !ram_shine_counter : SEC : SBC #(!tap_3_to_4+3)
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$BC

  .checklateprint3
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$BA
    BRA .clear4

  .setnextearly3
    ; Gear 3, just pressed dash when trying to reach gear 4
    LDA !ram_shine_counter : CMP #(!tap_3_to_4+3) : BPL .checklate3
    LDA !ram_shine_counter : STA !ram_shinetune_early_4
    RTS

  .checklate3minimap
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$B8
    LDA !ram_shine_counter : SEC : SBC #(!tap_3_to_4+3)
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$BA
    RTS

  .clear1
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90 : STA !HUD_TILEMAP+$92 : STA !HUD_TILEMAP+$94

  .clear2
    LDA !IH_BLANK : STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98 : STA !HUD_TILEMAP+$AE : STA !HUD_TILEMAP+$B0 : STA !HUD_TILEMAP+$B2

  .clear3
    LDA !ram_minimap : BNE .clear3minimap
    LDA !IH_BLANK : STA !HUD_TILEMAP+$B4 : STA !HUD_TILEMAP+$B6 : STA !HUD_TILEMAP+$B8 : STA !HUD_TILEMAP+$BA : STA !HUD_TILEMAP+$BC

  .clear4
    LDA !IH_BLANK : STA !HUD_TILEMAP+$BE : STA !HUD_TILEMAP+$C0 : STA !HUD_TILEMAP+$C2 : STA !HUD_TILEMAP+$C4 : STA !HUD_TILEMAP+$C6
    RTS

  .clear3minimap
    LDA !IH_BLANK : STA !HUD_TILEMAP+$B4 : STA !HUD_TILEMAP+$B6 : STA !HUD_TILEMAP+$B8 : STA !HUD_TILEMAP+$BA
    RTS

  .drawearly4minimap
    LDA #(!tap_3_to_4+3) : SEC : SBC !ram_shinetune_early_4 : JSR Draw2
    RTS

  .drawearly4
    LDA !ram_minimap : BNE .drawearly4minimap
    LDA #(!tap_3_to_4+3) : SEC : SBC !ram_shinetune_early_4 : JSR Draw3
    BRA .clear4

  .drawearly3
    LDA #(!tap_2_to_3+2) : SEC : SBC !ram_shinetune_early_3 : LDX #$00AE : JSR Draw3
    BRA .clear3

  .draw4
    LDA !ram_shinetune_late_3 : LDX #$00B4 : JSR Draw2
    LDA !ram_shinetune_early_4 : BNE .drawearly4
    LDA !ram_shine_counter : STA !ram_shinetune_early_4
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_RUN : BEQ .drawearly4
    LDA #(!tap_3_to_4+3) : STA !ram_shinetune_early_4
    BRA .drawearly4

  .draw3
    LDA !ram_shinetune_late_2 : LDX #$0096 : JSR Draw2
    LDA !ram_shinetune_early_3 : BNE .drawearly3
    LDA !ram_shine_counter : STA !ram_shinetune_early_3
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_RUN : BEQ .drawearly3
    LDA #(!tap_2_to_3+2) : STA !ram_shinetune_early_3
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
    LDA #(!tap_1_to_2+1) : STA !ram_shinetune_early_2

  .drawearly2
    LDA #(!tap_1_to_2+1) : SEC : SBC !ram_shinetune_early_2 : JSR Draw3
    JMP .clear2

  .draw1
    LDA !ram_shinetune_early_1 : CMP #$0064 : BPL .draw1miss
    LDX #$0088 : JSR Draw2
    JMP .clear1

  .draw1miss
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    JMP .clear1
}

status_iframecounter:
{
    LDA !SAMUS_IFRAME_TIMER : CMP !ram_HUD_check : BEQ .done : STA !ram_HUD_check
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_spikesuit:
{
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BEQ .nojump

    ; If springball unequipped then jump can be for spark or unmorph
    LDA !SAMUS_ITEMS_EQUIPPED : AND #$0002 : BEQ .checksparkunmorph

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
    JMP .checkunmorph

  .nojump
    ; Only check for up if we are looking to unmorph
    LDA !ram_roomstrat_state : BNE .donewait
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_UP : BEQ .nojumpnoup
    JMP .checkunmorph

  .nojumpnoup
    ; Arbitrary reset counter after 20 frames
    LDA !ram_roomstrat_counter : BEQ .done : CMP #$0014 : BPL .resetstate
    INC : STA !ram_roomstrat_counter

    ; If counter running when we first take damage, then we unmorphed early
    LDA !SAMUS_IFRAME_TIMER : CMP #$003C : BEQ .unmorphearly

  .done
    RTS

  .donewait
    ; If our state machine is running (we've at least seen the unmorph)
    ; and our i-frames run out, then reset state
    LDA !SAMUS_IFRAME_TIMER : BNE .done

  .resetstate
    TDC : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    RTS

  .checkspark
    LDA !SAMUS_IFRAME_TIMER : CMP #$0033 : BEQ .sparkframeperfect : BPL .sparkearly

    ; Sparked late
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8C
    LDA #$0033 : SEC : SBC !SAMUS_IFRAME_TIMER
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    BRA .endstate

  .unmorphearly
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$88
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    LDA #$0002 : STA !ram_roomstrat_state
    RTS

  .sparkframeperfect
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E
    BRA .endstate

  .sparkearly
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$8C
    LDA !SAMUS_IFRAME_TIMER : SEC : SBC #$0033
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E

    ; If more than one frame early, keep checking for updates
    CPY #$0002 : BNE .done

  .endstate
    LDA #$0006 : STA !ram_roomstrat_state
    RTS

  .checkunmorph
    LDA !SAMUS_IFRAME_TIMER : BEQ .damagewait : CMP #$003C : BEQ .damageunmorph
    CMP #$003B : BEQ .prepspark1 : CMP #$003A : BEQ .prepspark2

    ; Unmorphed late
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$88
    LDA #$003A : SEC : SBC !SAMUS_IFRAME_TIMER
    ASL A : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    LDA #$0002 : STA !ram_roomstrat_state
    RTS

  .damagewait
    ; We unmorphed but have not taken damage
    ; We're either early or we're not attempting spikesuit right now
    LDA #$0001 : STA !ram_roomstrat_counter
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    RTS

  .damageunmorph
    ; We unmorphed on the same frame we took damage, which is one frame early
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$88
    LDY #$0002 : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    LDA #$0002 : STA !ram_roomstrat_state
    RTS

  .prepspark1
    LDA #$0002 : STA !ram_roomstrat_state
    BRA .prepspark

  .prepspark2
    LDA #$0004 : STA !ram_roomstrat_state

  .prepspark
    ; We unmorphed on one of the two good frames
    TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    RTS
}

status_lagcounter:
{
    LDA !REALTIME_LAG_COUNTER : BEQ .check
    CLC : ADC !ram_lag_counter : STA !ram_lag_counter : STZ !REALTIME_LAG_COUNTER

  .check
    LDA !ram_lag_counter : CMP !ram_HUD_check : BEQ .done : STA !ram_HUD_check
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_cpuusage:
{
    LDA !ram_vcounter_data : AND #$00FF
    %a8() : STA $211B : XBA : STA $211B : LDA #$64 : STA $211C : %a16()
    LDA $2134 : STA $4204
    %a8() : LDA #$E1 : STA $4206 : %a16()
    PHA : PLA : PHA : PLA : LDA $4214
    LDX #$0088 : JSR Draw3
    LDA !IH_PERCENT : STA !HUD_TILEMAP+$8E
    RTS
}

status_hspeed:
{
    ; subspeed + submomentum into low byte of Hspeed
    LDA !SAMUS_X_SUBRUNSPEED : CLC : ADC !SAMUS_X_SUBMOMENTUM
    AND #$FF00 : XBA : STA !ram_momentum_sum

    ; speed + momentum + carry into high byte of Hspeed
    LDA !SAMUS_X_RUNSPEED : ADC !SAMUS_X_MOMENTUM
    AND #$00FF : XBA : ORA !ram_momentum_sum

    ; maybe skip drawing
    CMP !ram_HUD_check : BEQ .done
    STA !ram_HUD_check

    ; draw whole number in decimal
    AND #$FF00 : XBA : LDX #$0088 : JSR Draw2
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$8C

    ; draw fraction in hex
    LDA !ram_momentum_sum : AND #$00F0 : LSR #3 : TAY
    LDA.w HexGFXTable,Y : STA !HUD_TILEMAP+$8E

  .done
    RTS
}

status_vspeed:
{
if !FEATURE_PAL
    !first_spacejump_subspeed = $00A0
    !allowed_spacejump_frames = $0024
    !air_frame_delay = $0010
    !water_frame_cutoff = $0007
else
    !first_spacejump_subspeed = $008C
    !allowed_spacejump_frames = $002A
    !air_frame_delay = $0012
    !water_frame_cutoff = $0000
endif

    ; Suppress Samus HP display
    LDA !SAMUS_HP : STA !ram_last_hp

    LDA !SAMUS_Y_SPEED : CMP !ram_momentum_sum : BEQ .checkfalling : CMP #$FFFF : BNE .drawspeed

    ; At the peak of a normal jump, speed will go negative for one frame
    ; Instead of drawing 65535 for one frame, draw a hyphen
    ; We can detect this if our speed was previously positive
    ; If speed was previously negative, then proceed as normal to draw 65535
    TAY : LDA !ram_momentum_sum : AND #$8000 : BNE .restorespeed

    LDA !IH_BLANK : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$90
    LDA !IH_HYPHEN : STA !HUD_TILEMAP+$8E

    ; Store speed as some negative value that isn't FFFF,
    ; so if it is negative again we'll update it to 65535
    LDA #$8000 : STA !ram_momentum_sum
    BRA .checkfalling

  .restorespeed
    TYA

  .drawspeed
    STA !ram_momentum_sum : LDX #$0088 : JSR Draw4
    LDA !IH_BLANK : STA !HUD_TILEMAP+$90

  .checkfalling
    ; If we're not falling reset counters
    LDA !SAMUS_Y_DIRECTION : CMP #$0002 : BNE .prepareresetcounters

    ; Check if we are falling and have enough vertical speed for space jump
    LDA !SAMUS_Y_SPEEDCOMBINED : CMP #!first_spacejump_subspeed : BNE .incstate

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
    LDA !LIQUID_PHYSICS_TYPE : BEQ .compareair

    ; If not in air, we may have fewer frames to jump
    LDA !ram_roomstrat_state : CLC : ADC #!water_frame_cutoff : STA !ram_roomstrat_state
    LDA !ram_roomstrat_counter : CLC : ADC #!water_frame_cutoff : STA !ram_roomstrat_counter
    BRA .compare

  .compareair
    ; If in air, we needed to jump 18 frames later
    LDA !ram_roomstrat_counter : CLC : ADC #!air_frame_delay : STA !ram_roomstrat_counter

  .compare
    LDA !ram_roomstrat_state : DEC : CMP !ram_roomstrat_counter : BMI .earlyprint
    LDA !ram_roomstrat_state : CMP #(!allowed_spacejump_frames+1) : BPL .lateprint
    BRA .ontime

  .prepareresetcounters
    ; If we're resetting counters because we aren't falling,
    ; it might be because we successfully jumped, so check if we just pressed jump
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BNE .incstate

  .resetjumpandfallcounters
    TDC : STA !ram_roomstrat_state : STA !ram_roomstrat_counter

  .preparecheckjump
    BRA .checkjump

  .preparenewjump
    JMP .newjump

  .incstate
    ; Arbitrary wait of 96 frames before giving up
    LDA !ram_roomstrat_state : BEQ .checkjump : CMP #$0060 : BPL .resetjumpandfallcounters
    INC : STA !ram_roomstrat_state
    BRA .checkjump

  .earlyprint
    LDA !ram_roomstrat_counter : INC : SEC : SBC !ram_roomstrat_state
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$98
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$96

    ; If we're early, we can try again, so only reset the jump counter
    JMP .resetjumpcounter

  .lateprint
    SEC : SBC #!allowed_spacejump_frames : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$98
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$96

  .comparefinish
    TDC : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    RTS

  .ontime
    ; We must have jumped on time
    LDA !ram_roomstrat_state : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$98
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$96
    BRA .comparefinish

  .checkjump
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BNE .newjump
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_JUMP : BNE .incjump

    ; If we just stopped jumping, print number of frames jump was held
    LDA !ram_walljump_counter : BEQ .incnojump
    LDX #$0092 : JSR Draw2
    TDC : STA !ram_walljump_counter

  .incnojump
    ; Keep track of frames since last jump
    ; Arbitrary wait of 64 frames before giving up
    LDA !ram_roomstrat_counter : BEQ .done : CMP #$0040 : BPL .resetjumpcounter
    INC : STA !ram_roomstrat_counter

  .done
    RTS

  .newjump
    LDA #$0001 : STA !ram_roomstrat_counter : STA !ram_walljump_counter

    ; Print initial jump speed over item% when Samus doesn't bonk and superhud not selected
    LDA !sram_top_display_mode : BNE .skipprint
    LDA $0B1A : BNE .skipprint
    LDA !sram_display_mode : CMP !IH_MODE_ROOMSTRAT_INDEX : BNE .printjumpseed
    LDA !sram_room_strat : BEQ .skipprint

  .printjumpseed
    LDA !HUD_TILEMAP+$12 : STA $14
    LDA !SAMUS_Y_SPEEDCOMBINED : AND #$0FFF
    LDX #$0012 : JSR Draw4Hex
    INC $0B1A
    LDA $14 : STA !HUD_TILEMAP+$12

  .skipprint
    ; If we started falling and space jump might be allowed, time to compare
    LDA !ram_roomstrat_state : BEQ .done
    JMP .preparecompare

  .resetjumpcounter
    TDC : STA !ram_roomstrat_counter
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
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_DOWN : BNE .down
    RTS

  .leftright
    LDA !ram_quickdrop_counter : BEQ .firstleftright
    LDX #$008C : JSR Draw2

  .setcounter
    LDA #$0001 : STA !ram_quickdrop_counter

  .done
    RTS

  .firstleftright
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    BRA .setcounter

  .reset
    TDC : STA !ram_quickdrop_counter
    RTS

  .down
    LDA !ram_quickdrop_counter : CMP #$0008 : BEQ .frameperfect : BMI .early

    ; Late
    SEC : SBC #$0008
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$88
    RTS

  .early
    LDA #$0008 : SEC : SBC !ram_quickdrop_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$88
    RTS

  .frameperfect
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    RTS
}

status_walljump:
{
    ; Suppress Samus HP display
    LDA !SAMUS_HP : STA !ram_last_hp

    ; Check if it is time to calculate average climb speed
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BEQ .incframecount

    ; Make sure we are tracking speed
    LDA !ram_roomstrat_counter : BEQ .blankaverage

    ; Divide total vertical speed by frame count
    TAX : LDA !ram_momentum_sum
    STA $4204
    TXA
    %a8()
    STA $4206              ; divide by frame count
    %a16()
    PEA $0000 : PLA
    PEA $0000 : PLA

    ; Result is mulitiplied by 128 already, multiply by 8 for a nice decimal number
    LDA $4214 : ASL #3 : LDX #$0092 : JSR Draw4Hundredths
    LDA !IH_BLANK : STA !HUD_TILEMAP+$90

  .startaverage
    TDC : STA !ram_momentum_sum : INC : STA !ram_roomstrat_counter
    BRA .incspeed

  .blankaverage
    LDA !IH_BLANK : STA !HUD_TILEMAP+$90 : STA !HUD_TILEMAP+$92
    STA !HUD_TILEMAP+$94 : STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98
    BRA .startaverage

  .clearaverage
    TDC : STA !ram_roomstrat_counter
    BRA .checkjump

  .incframecount
    ; Arbitrary wait of 120 frames before we stop tracking the average
    LDA !ram_roomstrat_counter : BEQ .checkjump : CMP #$0078 : BPL .clearaverage
    INC : STA !ram_roomstrat_counter

  .incspeed
    ; Nothing to do if speed is zero or negative
    LDA !SAMUS_Y_SPEEDCOMBINED : AND #$8000 : BNE .checkjump
    LDA !SAMUS_Y_SPEEDCOMBINED : BEQ .checkjump

    ; Speed x256 is just a little too high
    ; Make it x128 and store it for later use
    LSR : STA $12

    ; Check if we are rising or falling
    LDA !SAMUS_Y_DIRECTION : CMP #$0001 : BEQ .addspeed : CMP #$0002 : BEQ .subtractspeed
    BRA .checkjump

  .addspeed
    ; If total speed overflows, stop tracking the average
    LDA !ram_momentum_sum : CLC : CLV : ADC $12 : BVS .clearaverage
    STA !ram_momentum_sum
    BRA .checkjump

  .subtractspeed
    LDA !ram_momentum_sum : CMP $12 : BMI .zerospeed
    SEC : SBC $12 : STA !ram_momentum_sum
    BRA .checkjump

  .resetreleasejump
    LDA !ram_roomstrat_state : DEC : AND #$0003
    ASL #2 : TAX : LDA !IH_BLANK : STA !HUD_TILEMAP+$B0,X
    BRA .blanksides

  .zerospeed
    TDC : STA !ram_momentum_sum

  .checkjump
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BNE .pressedjump
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_JUMP : BNE .checkleftright

    ; count up to 36 frames of jump released
    LDA !ram_shot_timer : CMP #$0024 : BPL .resetreleasejump
    INC : STA !ram_shot_timer
    ASL : TAX
    LDA NumberGFXTable,X : PHA
    LDA !ram_roomstrat_state : DEC : AND #$0003
    ASL #2 : TAX : PLA : STA !HUD_TILEMAP+$B0,X
    LDA !IH_BLANK

  .blanksides
    STA !HUD_TILEMAP+$AE,X : STA !HUD_TILEMAP+$B2,X
    BRA .checkleftright

  .pressedjump
    TDC : STA !ram_shot_timer
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state
    BRA .checkleftright

  .writg
    LDA #$042F : STA !ram_ypos
    JMP .heightcheck

  .bubble
    LDA #$0117 : STA !ram_ypos
    JMP .heightcheck

  .everest
    LDA #$022F : STA !ram_ypos
    JMP .heightcheck

  .lavadive
    JMP .lavadivecheck

  .walljump
    LDA !ROOM_ID : CMP.w #ROOM_WorstRoomInTheGame : BEQ .writg
    CMP.w #ROOM_LavaDiveRoom : BEQ .lavadive
    CMP.w #ROOM_BubbleMountain : BEQ .bubble
    CMP.w #ROOM_MtEverest : BEQ .everest
    JMP .clear

  .checkleftright
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_LEFT : BNE .leftright
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_RIGHT : BNE .leftright

    ; Arbitrary wait of 20 frames before resetting
    LDA !ram_walljump_counter : BEQ .done : CMP #$0014 : BPL .reset
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BNE .walljump
    LDA !ram_walljump_counter : INC : STA !ram_walljump_counter
    RTS

  .leftright
    LDA #$0001 : STA !ram_walljump_counter

  .done
    RTS

  .printlow0
if !FEATURE_PAL
    LDA !SAMUS_Y_SUBPX : CMP #$7000 : BCS .printlow
else
    LDA !SAMUS_Y_SUBPX : CMP #$8400 : BCS .printlow
endif
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8A
    LDA !ram_walljump_counter : CMP #$0007 : BNE .printlowy
    LDA !IH_LETTER_B : STA !HUD_TILEMAP+$88
    JMP .drawjumpcounter

  .printlowy
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    JMP .drawjumpcounter

  .low
    ; If we are more than 65 pixels away from the target walljump position,
    ; assume this is a regular walljump and ignore the target position
    SEC : SBC !ram_ypos : CMP #$0042 : BPL .clear
    ASL : TAY : LDA !ram_walljump_counter
    CMP #$0007 : BEQ .checklow0
if !FEATURE_PAL
else
    CMP #$0008 : BEQ .checklow0
endif
    CMP #$0009 : BEQ .checklow0

  .clear
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A

  .drawjumpcounter
    LDA !ram_walljump_counter : LDX #$008C : JSR Draw2

  .reset
    TDC : STA !ram_walljump_counter
    RTS

  .checklow0
if !FEATURE_PAL
    CPY #$0002 : BEQ .printlow0
    CPY #$0000 : BEQ .printy
else
    CPY #$0000 : BEQ .printlow0
endif

  .printlow
if !FEATURE_PAL
    DEY #2
endif
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$88
    BRA .drawjumpcounter

if !FEATURE_PAL
  .printy
    CMP #$0007 : BEQ .printb
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    JMP .drawjumpcounter

  .printb
    LDA !IH_LETTER_B : STA !HUD_TILEMAP+$88
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8A
    JMP .drawjumpcounter
endif

  .heightcheck
    LDA !SAMUS_Y : CMP !ram_ypos : BPL .low

    ; We must be high
    ; If we are more than 105 pixels away from the target walljump position,
    ; assume this is a regular walljump and ignore the target position
    LDA !ram_ypos : DEC : SEC : SBC !SAMUS_Y : CMP #$006A : BPL .clear

    ; If we are more than 65 pixels away, then this may be the second walljump
    ; of a hypo jump attempt, so nothing at all to report
    CMP #$0042 : BPL .reset

    ASL : TAY : LDA !ram_walljump_counter
    CMP #$0007 : BEQ .checkhigh7
if !FEATURE_PAL
    CMP #$0009 : BEQ .checkhigh0
    JMP .clear
else
    CMP #$0008 : BEQ .checkhigh0
    CMP #$0009 : BNE .clear
endif

  .checkhigh0
    CPY #$0000 : BNE .printhigh
    LDA !SAMUS_Y_SUBPX
if !FEATURE_PAL
    CMP #$CC00 : BCC .printhigh
else
    CMP #$2C00 : BCC .printhigh
endif
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    LDA !IH_LETTER_H : STA !HUD_TILEMAP+$8A
    JMP .drawjumpcounter

  .checkhigh7
    CPY #$0000 : BNE .printhigh
    LDA !SAMUS_Y_SUBPX
if !FEATURE_PAL
    CMP #$CC00 : BCC .printhigh
else
    CMP #$2C00 : BCC .printhigh
endif
    LDA !IH_LETTER_B : STA !HUD_TILEMAP+$88
    LDA !IH_LETTER_H : STA !HUD_TILEMAP+$8A
    JMP .drawjumpcounter

  .printhigh
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_H : STA !HUD_TILEMAP+$88
    JMP .drawjumpcounter

  .lavadiveclear
    JMP .clear

  .lavadivecheck
    LDA !SAMUS_X : CMP #$0248 : BMI .lavadiveclear
    CMP #$0288 : BPL .lavadiveclear
    LDA !SAMUS_Y : CMP #$020A : BMI .lavadiveclear
    CMP #$024A : BPL .lavadiveclear
    CMP #$0228 : BMI .lavadivehigh : CMP #$022C : BPL .lavadivelow

    ; Preferred height
    LDA #$022C : SEC : SBC !SAMUS_Y
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    JMP .drawjumpcounter

  .lavadivehigh
    LDA #$0228 : SEC : SBC !SAMUS_Y
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_H : STA !HUD_TILEMAP+$88
    JMP .drawjumpcounter

  .lavadivelow
    SEC : SBC #$022B : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$88
    JMP .drawjumpcounter
}

status_countdamage:
{
    LDA !DAMAGE_COUNTER : CMP !ram_HUD_check : BEQ .done : STA !ram_HUD_check
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_armpump:
{
    ; Store Samus HP so it doesn't overwrite our HUD
    LDA !SAMUS_HP : STA !ram_last_hp

    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_ANGLE_DOWN : BNE .downHeld
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_ANGLE_UP : BNE .onlyUpHeld

    ; Neither angle up or down held
    STA !ram_momentum_direction : BRA .checkArmpumpChange

  .downHeld
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_ANGLE_UP : BNE .upAndDownHeld

    ; Only down held
    LDA #$0001 : STA !ram_momentum_direction : BRA .checkArmpumpChange

  .onlyUpHeld
    LDA #$0002 : STA !ram_momentum_direction : BRA .checkArmpumpChange

  .upAndDownHeld
    LDA #$0003 : STA !ram_momentum_direction

  .checkArmpumpChange
    CMP !ram_momentum_last : BEQ .incTimer
    EOR !ram_momentum_last : CMP #$0003 : BNE .checkPose

    ; Both angles changed in same frame, which is a waste
    LDA !ram_fail_count : INC : STA !ram_fail_count

  .checkPose
    LDA !ram_momentum_direction : STA !ram_momentum_last
    LDA !SAMUS_POSE : CMP !ram_roomstrat_state : BEQ .incFail
    STA !ram_roomstrat_state

    ; Pose changed, assume it was an armpump
    LDA !ram_momentum_count : INC : STA !ram_momentum_count
    BRA .incTimer

  .incFail
    ; Angle change did not result in an armpump
    LDA !ram_fail_count : INC : STA !ram_fail_count

  .incTimer
    LDA !ram_roomstrat_counter : INC : STA !ram_roomstrat_counter
    CMP #$003C : BMI .done

    ; Draw counts once per second
    LDA !ram_momentum_count : LDX #$0088 : JSR Draw4
    LDA !ram_fail_count : LDX #$0092 : JSR Draw4

    ; Add to room totals and reset counts and counters
    LDA !ram_momentum_sum : CLC : ADC !ram_momentum_count : STA !ram_momentum_sum
    LDA !ram_fail_sum : CLC : ADC !ram_fail_count : STA !ram_fail_sum
    TDC : STA !ram_momentum_count : STA !ram_fail_count : STA !ram_roomstrat_counter

  .done
    RTS
}

status_pumpcounter:
{
; this makes the assumption that the user only attempting to pump on one angle button
; !ram_HUD_check = where to draw (index * 6 + $88)
; !ram_roomstrat_counter = pumps counted
; !ram_roomstrat_state = neutral/angle
; !ram_fail_count = reset after fail, non-zero during counting
    LDA !SAMUS_HP : STA !ram_last_hp

    LDA !ram_roomstrat_state : BNE .angleLast
    LDA !IH_CONTROLLER_PRI : AND #$0030 : BEQ .fail
    LDA !ram_roomstrat_state : EOR #$0001 : STA !ram_roomstrat_state
    LDA !ram_roomstrat_counter : INC : STA !ram_roomstrat_counter
    RTS

  .angleLast
    LDA !IH_CONTROLLER_PRI : AND #$0030 : BNE .fail
    LDA !ram_roomstrat_state : EOR #$0001 : STA !ram_roomstrat_state
    LDA !ram_roomstrat_counter : INC : STA !ram_roomstrat_counter
    STA !ram_fail_count
    RTS

  .fail
    LDA !ram_fail_count : BEQ .done
    LDA !ram_HUD_check : CMP #$0006 : BMI .draw
    TDC : STA !ram_HUD_check

  .draw
    ASL : ADC !ram_HUD_check : ASL : ADC #$0088 : TAX
    LDA !ram_roomstrat_counter
    JSR Draw2
    LDA !IH_BLANK : STA !HUD_TILEMAP,X
    TDC : STA !ram_roomstrat_counter : STA !ram_roomstrat_state : STA !ram_fail_count
    LDA !ram_HUD_check : INC : STA !ram_HUD_check

  .done
    RTS
}

status_xpos:
{
    ; Suppress Samus HP display
    LDA !SAMUS_HP : STA !ram_last_hp

    LDA !SAMUS_X : CMP !ram_xpos : BEQ .checksubpixel
    STA !ram_xpos : LDX #$0088 : JSR Draw4Hex
    LDA !SAMUS_X_SUBPX : BRA .drawsubpixel

  .checksubpixel
    LDA !SAMUS_X_SUBPX : CMP !ram_subpixel_pos : BEQ .done

  .drawsubpixel
    STA !ram_subpixel_pos : LDX #$0092 : JSR Draw4Hex
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$90

  .done
    RTS
}

status_ypos:
{
    ; Suppress Samus HP display
    LDA !SAMUS_HP : STA !ram_last_hp

    LDA !SAMUS_Y : CMP !ram_ypos : BEQ .checksubpixel
    STA !ram_ypos : LDX #$0088 : JSR Draw4Hex
    LDA !SAMUS_Y_SUBPX : BRA .drawsubpixel

  .checksubpixel
    LDA !SAMUS_Y_SUBPX : CMP !ram_subpixel_pos : BEQ .done

  .drawsubpixel
    STA !ram_subpixel_pos : LDX #$0092 : JSR Draw4Hex
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$90

  .done
    RTS
}

status_shottimer:
{
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_SHOT : BEQ .incShot
    LDA !ram_shot_timer : LDX #$0088 : JSR Draw4
    TDC : STA !ram_shot_timer

  .incShot
    LDA !ram_shot_timer : INC : STA !ram_shot_timer
    LDA !ROOM_ID : CMP.w #ROOM_PhantoonRoom : BEQ .phantoon
    RTS

  .phantoonCheckInit
    LDA !ENEMY_VAR_5
if !FEATURE_PAL
    CMP #$D641
else
    CMP #$D60D
endif
    BNE .done
    LDA !ENEMY_VAR_4 : CMP #$0010 : BEQ .phantoonInit
    CMP #$000F : BNE .done

    ; Phantoon must be doing a fast eye close
    LDA !IH_LETTER_F : STA !ram_HUD_check
    BRA .phantoonInitCounters

  .phantoonInit
    LDA !IH_BLANK : STA !ram_HUD_check

  .phantoonInitCounters
    TDC : STA !ram_roomstrat_counter
    LDA !ENEMY_HP : STA !ram_roomstrat_state

  .done
    RTS

  .phantoon
    LDA !ram_roomstrat_state : CMP #$02BC : BMI .phantoonCheckInit
    SEC : SBC !ENEMY_HP : CMP #$0258 : BPL .phantoonHit
    LDA !ram_roomstrat_counter : CMP #$0058 : BPL .phantoonClear
    INC : STA !ram_roomstrat_counter
    RTS

  .phantoonHit
    LDA !ram_HUD_check : STA !HUD_TILEMAP+$88
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A
    LDA !ram_roomstrat_counter : CMP #$0018 : BEQ .framePerfect : BMI .hitEarly

    ; Hit late
    SEC : SBC #$0018 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8C
    BRA .phantoonClear

  .framePerfect
    LDA !sram_display_mode_reward : BEQ .doneReward
    %sfxreward()

  .doneReward
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E

  .phantoonClear
    TDC : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    RTS

  .hitEarly
    LDA #$0018 : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$8C
    BRA .phantoonClear
}

status_ramwatch:
{
    ; Store Samus HP so it doesn't overwrite our HUD
    LDA !SAMUS_HP : STA !ram_last_hp

    ; Store bank bytes
    LDA !ram_watch_bank : STA $C3 : STA $C7

    ; Calculate addresses
    LDA !ram_watch_left : CLC : ADC !ram_watch_left_index : STA $C1
    LDA !ram_watch_right : CLC : ADC !ram_watch_right_index : STA $C5

    ; Draw if watched value changed
    LDA [$C1] : CMP !ram_watch_left_hud : BEQ .drawRight
    STA !ram_watch_left_hud : LDX #$0088 : JSR Draw4Hex

  .drawRight
    LDA [$C5] : CMP !ram_watch_right_hud : BEQ .checkBlank
    STA !ram_watch_right_hud : LDX #$0092 : JSR Draw4Hex

  .checkBlank
    ; Redraw if HUD is blank
    LDA !HUD_TILEMAP+$88 : CMP !IH_BLANK : BNE .checkRight
    LDA !ram_watch_left_hud : LDX #$0088 : JSR Draw4Hex

  .checkRight
    LDA !HUD_TILEMAP+$92 : CMP !IH_BLANK : BNE .writeLock
    LDA !ram_watch_right_hud : LDX #$0092 : JSR Draw4Hex

  .writeLock
    ; Write 8 or 16 bit values
    LDA !ram_watch_write_mode : BEQ .edit16bit
    %a8()
    LDA !ram_watch_edit_lock_left : BEQ .e8LeftDone
    LDA !ram_watch_edit_left : STA [$C1]
  .e8LeftDone
    LDA !ram_watch_edit_lock_right : BEQ .e8RightDone
    LDA !ram_watch_edit_right : STA [$C5]
  .e8RightDone
    %a16()
    RTS

  .edit16bit
    LDA !ram_watch_edit_lock_left : BEQ .e16LeftDone
    LDA !ram_watch_edit_left : STA [$C1]
  .e16LeftDone
    LDA !ram_watch_edit_lock_right : BEQ .e16RightDone
    LDA !ram_watch_edit_right : STA [$C5]
  .e16RightDone
    RTS
}

status_superhud:
{
    LDA !sram_superhud_top : BEQ .middle
    ASL : TAX
    JSR (superhud_top_table,X)

  .middle
    LDA !sram_superhud_middle : BEQ .bottom
    ASL : TAX
    JSR (superhud_middle_table,X)

  .bottom
    LDA !sram_superhud_bottom : ASL : TAX
    JMP (superhud_bottom_table,X)

superhud_bottom_table:
    dw status_enemyhp
    dw status_chargetimer
    dw status_xfactor
    dw status_cooldown
    dw status_shinetimer
    dw status_dashcounter
    dw status_iframecounter
    dw status_spikesuit
    dw status_lagcounter
    dw status_cpuusage
    dw status_hspeed
    dw status_vspeed
    dw status_quickdrop
    dw status_walljump
    dw status_countdamage
    dw status_armpump
    dw status_pumpcounter
    dw status_xpos
    dw status_ypos
    dw status_shottimer
    dw status_ramwatch
    dw status_ceresridley
    dw status_doorskip
    dw status_tacotank
    dw status_pitdoor
    dw status_moondance
    dw status_gateglitch
    dw status_moatcwj
    dw status_robotflush
    dw status_shinetopb
    dw status_elevatorcf
    dw status_botwooncf
    dw status_draygonai
    dw status_snailclip
    dw status_wasteland
    dw status_ridleyai
    dw status_downbackzeb
    dw status_zebskip
    dw status_mbhp
    dw status_twocries

superhud_middle_table:
    dw status_enemyhp_done
    dw middleHUD_chargetimer
    dw middleHUD_xfactor
    dw middleHUD_cooldown
    dw middleHUD_shinetimer
    dw middleHUD_dashcounter
    dw middleHUD_iframecounter
    dw middleHUD_lagcounter
    dw middleHUD_cpuusage
    dw middleHUD_hspeed
    dw middleHUD_shottimer

superhud_top_table:
    dw status_enemyhp_done
    dw topHUD_chargetimer
    dw topHUD_xfactor
    dw topHUD_cooldown
    dw topHUD_shinetimer
    dw topHUD_dashcounter
    dw topHUD_iframecounter
    dw topHUD_lagcounter
    dw topHUD_cpuusage
    dw topHUD_hspeed
    dw topHUD_shottimer

middleHUD_chargetimer:
{
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_SHOT : BNE .pressedShot
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BNE .charging

    ; count up to 36 frames of shot released
    LDA !ram_HUD_middle_counter : CMP #$0024 : BPL .reset
    INC : STA !ram_HUD_middle_counter
    ASL : TAX : LDA NumberGFXTable,X : STA !HUD_TILEMAP+$54
    RTS

  .reset
    LDA !IH_BLANK : STA !HUD_TILEMAP+$54
    LDA #$003C : STA !ram_HUD_middle
    RTS

  .pressedShot
    TDC : STA !ram_HUD_middle_counter

  .charging
    LDA #$003C : SEC : SBC !SAMUS_CHARGE_TIMER
    CMP !ram_HUD_middle : BEQ .done : STA !ram_HUD_middle
    CMP #$0001 : BPL .drawCharge

    ; Beam charged
    LDA !IH_SHINESPARK : STA !HUD_TILEMAP+$56
    LDA !SAMUS_CHARGE_TIMER : SEC : SBC #$003C
    ASL : TAX : LDA NumberGFXTable,X : STA !HUD_TILEMAP+$58
    RTS

  .drawCharge
    LDX #$0054 : JSR Draw3

  .done
    RTS
}

topHUD_chargetimer:
{
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_SHOT : BNE .pressedShot
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BNE .charging

    ; count up to 36 frames of shot released
    LDA !ram_HUD_top_counter : CMP #$0024 : BPL .reset
    INC : STA !ram_HUD_top_counter
    ASL : TAX : LDA NumberGFXTable,X : STA !HUD_TILEMAP+$14
    RTS

  .reset
    LDA !IH_BLANK : STA !HUD_TILEMAP+$14
    LDA #$003C : STA !ram_HUD_top
    RTS

  .pressedShot
    TDC : STA !ram_HUD_top_counter

  .charging
    LDA #$003C : SEC : SBC !SAMUS_CHARGE_TIMER
    CMP !ram_HUD_top : BEQ .done : STA !ram_HUD_top
    CMP #$0001 : BPL .drawCharge

    ; Beam charged
    LDA !IH_SHINESPARK : STA !HUD_TILEMAP+$16
    LDA !SAMUS_CHARGE_TIMER : SEC : SBC #$003C
    ASL : TAX : LDA NumberGFXTable,X : STA !HUD_TILEMAP+$18
    RTS

  .drawCharge
    LDX #$0014 : JSR Draw3

  .done
    RTS
}

middleHUD_xfactor:
{
    LDA #$0079 : SEC : SBC !SAMUS_CHARGE_TIMER : CMP !ram_HUD_middle : BEQ .done : STA !ram_HUD_middle
    LDX #$0054 : JSR Draw3

  .done
    RTS
}

topHUD_xfactor:
{
    LDA #$0079 : SEC : SBC !SAMUS_CHARGE_TIMER : CMP !ram_HUD_top : BEQ .done : STA !ram_HUD_top
    LDX #$0014 : JSR Draw3

  .done
    RTS
}

middleHUD_cooldown:
{
    LDA !SAMUS_COOLDOWN : CMP !ram_HUD_middle : BEQ .done : STA !ram_HUD_middle
    LDX #$0054 : JSR Draw3

  .done
    RTS
}

topHUD_cooldown:
{
    LDA !SAMUS_COOLDOWN : CMP !ram_HUD_top : BEQ .done : STA !ram_HUD_top
    LDX #$0014 : JSR Draw3

  .done
    RTS
}

middleHUD_shinetimer:
{
    LDA !ram_armed_shine_duration : BNE .nonZero

    ; count up to 36 frames of shinespark being late
    LDA !ram_HUD_middle_counter : CMP !SAFEWORD : BEQ .done
    CMP #$0024 : BPL .reset
    INC : STA !ram_HUD_middle_counter
    ASL : TAX : LDA NumberGFXTable,X : STA !HUD_TILEMAP+$54

    LDA !SAMUS_MOVEMENT_TYPE : AND #$00FF : CMP #$0002 : BEQ .late
    BRA .draw

  .reset
    LDA !IH_BLANK : STA !HUD_TILEMAP+$54
    BRA .draw

  .late
    ; arbitrary value indicating normal jumping pose already observed
    LDA !SAFEWORD : STA !ram_HUD_middle_counter
    BRA .draw

  .nonZero
    LDA !IH_BLANK : STA !HUD_TILEMAP+$54
    TDC : STA !ram_HUD_middle_counter

  .draw
    LDA !ram_armed_shine_duration : CMP !ram_HUD_middle : BEQ .done
    STA !ram_HUD_middle
    LDX #$0056 : JSR Draw2

  .done
    RTS
}

topHUD_shinetimer:
{
    LDA !ram_armed_shine_duration : BNE .nonZero

    ; count up to 36 frames of shinespark being late
    LDA !ram_HUD_top_counter : CMP !SAFEWORD : BEQ .done
    CMP #$0024 : BPL .reset
    INC : STA !ram_HUD_top_counter
    ASL : TAX : LDA NumberGFXTable,X : STA !HUD_TILEMAP+$14

    LDA !SAMUS_MOVEMENT_TYPE : AND #$00FF : CMP #$0002 : BEQ .late
    BRA .draw

  .reset
    LDA !IH_BLANK : STA !HUD_TILEMAP+$14
    BRA .draw

  .late
    ; arbitrary value indicating normal jumping pose already observed
    LDA !SAFEWORD : STA !ram_HUD_top_counter
    BRA .draw

  .nonZero
    LDA !IH_BLANK : STA !HUD_TILEMAP+$14
    TDC : STA !ram_HUD_top_counter

  .draw
    LDA !ram_armed_shine_duration : CMP !ram_HUD_top : BEQ .done
    STA !ram_HUD_top
    LDX #$0016 : JSR Draw2

  .done
    RTS
}

middleHUD_dashcounter:
{
    LDA !SAMUS_DASH_COUNTER : AND #$00FF : CMP !ram_HUD_middle : BEQ .done
    STA !ram_HUD_middle : LDX #$0054 : JSR Draw3

  .done
    RTS
}

topHUD_dashcounter:
{
    LDA !SAMUS_DASH_COUNTER : AND #$00FF : CMP !ram_HUD_top : BEQ .done
    STA !ram_HUD_top : LDX #$0014 : JSR Draw3

  .done
    RTS
}

middleHUD_iframecounter:
{
    LDA !SAMUS_IFRAME_TIMER : CMP !ram_HUD_middle : BEQ .done : STA !ram_HUD_middle
    LDX #$0054 : JSR Draw3

  .done
    RTS
}

topHUD_iframecounter:
{
    LDA !SAMUS_IFRAME_TIMER : CMP !ram_HUD_top : BEQ .done : STA !ram_HUD_top
    LDX #$0014 : JSR Draw3

  .done
    RTS
}

middleHUD_lagcounter:
{
    LDA !REALTIME_LAG_COUNTER : BEQ .check
    CLC : ADC !ram_lag_counter : STA !ram_lag_counter : STZ !REALTIME_LAG_COUNTER

  .check
    LDA !ram_lag_counter : CMP !ram_HUD_middle : BEQ .done : STA !ram_HUD_middle
    LDX #$0054 : JSR Draw3

  .done
    RTS
}

topHUD_lagcounter:
{
    LDA !REALTIME_LAG_COUNTER : BEQ .check
    CLC : ADC !ram_lag_counter : STA !ram_lag_counter : STZ !REALTIME_LAG_COUNTER

  .check
    LDA !ram_lag_counter : CMP !ram_HUD_top : BEQ .done : STA !ram_HUD_top
    LDX #$0014 : JSR Draw3

  .done
    RTS
}

middleHUD_cpuusage:
{
    LDA !ram_vcounter_data : AND #$00FF
    %a8() : STA $211B : XBA : STA $211B : LDA #$64 : STA $211C : %a16()
    LDA $2134 : STA $4204
    %a8() : LDA #$E1 : STA $4206 : %a16()
    PHA : PLA : PHA : PLA : LDA $4214
    LDX #$0054 : JSR Draw2
    LDA !IH_PERCENT : STA !HUD_TILEMAP+$58
    RTS
}

topHUD_cpuusage:
{
    LDA !ram_vcounter_data : AND #$00FF
    %a8() : STA $211B : XBA : STA $211B : LDA #$64 : STA $211C : %a16()
    LDA $2134 : STA $4204
    %a8() : LDA #$E1 : STA $4206 : %a16()
    PHA : PLA : PHA : PLA : LDA $4214
    LDX #$0014 : JSR Draw2
    LDA !IH_PERCENT : STA !HUD_TILEMAP+$18
    RTS
}

middleHUD_hspeed:
{
    ; subspeed + submomentum into low byte of Hspeed
    LDA !SAMUS_X_SUBRUNSPEED : CLC : ADC !SAMUS_X_SUBMOMENTUM
    AND #$FF00 : XBA : STA !ram_momentum_sum

    ; speed + momentum + carry into high byte of Hspeed
    LDA !SAMUS_X_RUNSPEED : ADC !SAMUS_X_MOMENTUM
    AND #$00FF : XBA : ORA !ram_momentum_sum

    ; maybe skip drawing
    CMP !ram_HUD_middle : BEQ .done
    STA !ram_HUD_middle

    ; draw whole number in decimal
    AND #$FF00 : XBA : ASL : TAY : LDA.w HexGFXTable,Y : STA !HUD_TILEMAP+$54
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$56

    ; draw fraction in hex
    LDA !ram_momentum_sum : AND #$00F0 : LSR #3 : TAY
    LDA.w HexGFXTable,Y : STA !HUD_TILEMAP+$58

  .done
    RTS
}

topHUD_hspeed:
{
    ; subspeed + submomentum into low byte of Hspeed
    LDA !SAMUS_X_SUBRUNSPEED : CLC : ADC !SAMUS_X_SUBMOMENTUM
    AND #$FF00 : XBA : STA !ram_momentum_sum

    ; speed + momentum + carry into high byte of Hspeed
    LDA !SAMUS_X_RUNSPEED : ADC !SAMUS_X_MOMENTUM
    AND #$00FF : XBA : ORA !ram_momentum_sum

    ; maybe skip drawing
    CMP !ram_HUD_top : BEQ .done
    STA !ram_HUD_top

    ; draw whole number in decimal
    AND #$FF00 : XBA : ASL : TAY : LDA.w HexGFXTable,Y : STA !HUD_TILEMAP+$14
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$16

    ; draw fraction in hex
    LDA !ram_momentum_sum : AND #$00F0 : LSR #3 : TAY
    LDA.w HexGFXTable,Y : STA !HUD_TILEMAP+$18

  .done
    RTS
}

middleHUD_shottimer:
{
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_SHOT : BEQ .incShot
    LDA !ram_HUD_middle_counter : LDX #$0054 : JSR Draw3
    TDC : STA !ram_HUD_middle_counter

  .incShot
    LDA !ram_HUD_middle_counter : INC : STA !ram_HUD_middle_counter
    RTS
}

topHUD_shottimer:
{
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_SHOT : BEQ .incShot
    LDA !ram_HUD_top_counter : LDX #$0014 : JSR Draw3
    TDC : STA !ram_HUD_top_counter

  .incShot
    LDA !ram_HUD_top_counter : INC : STA !ram_HUD_top_counter
    RTS
}

status_ceresridley:
{
    ; displays number of shots until Ridley "dies"
    LDA $7E781A : CMP !ram_HUD_check : BEQ .done
    STA !ram_HUD_check
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_doorskip:
{
if !FEATURE_PAL
    !start_to_jump_delay = $0011
else
    !start_to_jump_delay = $0007
endif

    ; Check if Samus is in starting position
    LDA !SAMUS_Y : CMP #$04BB : BEQ .startpos

    ; Reset state if Samus is well out of position
    CMP #$0300 : BMI .clearstate
    JMP .notinit

    ; Check if we are initial state, which means no vertical speed
    ; and no animation delay in normal gamestate holding jump and not holding start
  .startpos
    LDA !SAMUS_Y_SPEEDCOMBINED : BNE .notinit
    LDA !SAMUS_CONTROLLER_HANDLER
if !FEATURE_PAL
    CMP #$E910 : BNE .notinit
else
    CMP #$E913 : BNE .notinit
endif
    LDA !GAMEMODE : CMP #$0008 : BNE .notinit
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_JUMP : BEQ .notinit
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_START : BNE .notinit

    ; Initial state
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E
    LDA #$0001 : STA !ram_roomstrat_state
    RTS

  .clearstate
    LDA !ram_roomstrat_state : CMP #$0001 : BNE .resetstate : CMP #$0004 : BNE .clear
    JMP .expandlate

  .clear
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E
    BRA .resetstate

  .notinit
    LDA !ram_roomstrat_state : CMP #$0001 : BEQ .checkpause : CMP #$0002 : BEQ .checkjump
    CMP #$0003 : BEQ .checkfall : CMP #$0004 : BEQ .checkexpand

  .resetstate
    TDC : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    RTS

  .checkpause
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_START : BEQ .done
    LDA #$0002 : STA !ram_roomstrat_counter : STA !ram_roomstrat_state
    RTS

  .checkfall
    ; Check if we are falling in aim down pose
    LDA !SAMUS_Y_DIRECTION : CMP #$0002 : BNE .inccounter
    LDA !SAMUS_POSE : CMP #$0017 : BEQ .readyexpand : CMP #$0018 : BEQ .readyexpand

  .inccounter
    LDA !ram_roomstrat_counter : INC : STA !ram_roomstrat_counter

  .done
    RTS

  .checkjump
    LDA !SAMUS_Y_DIRECTION : CMP #$0001 : BNE .inccounter
    LDA !ram_roomstrat_counter : CMP #!start_to_jump_delay : BEQ .jumpframeperfect : BMI .jumpearly

    ; Jumped late
    SEC : SBC #!start_to_jump_delay : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$88
    BRA .resetstate

  .checkexpand
    LDA !SAMUS_POSE : CMP #$0017 : BEQ .inccounter : CMP #$0018 : BEQ .inccounter
    LDA !ram_roomstrat_counter : CMP #$003D : BEQ .expandoneframelate
    CMP #$003C : BEQ .expandframeperfect : BMI .expandearly

  .expandlate
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8C
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$8E
    JMP .resetstate

  .readyexpand
    LDA #$0004 : STA !ram_roomstrat_state
    BRA .inccounter

  .jumpearly
    LDA #!start_to_jump_delay : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$88
    JMP .resetstate

  .jumpframeperfect
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    LDA #$0003 : STA !ram_roomstrat_state
    RTS

  .expandoneframelate
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8C
    LDY #$0002 : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    JMP .resetstate

  .expandframeperfect
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E
    JMP .resetstate

  .expandearly
    LDA #$003C : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$8C
    JMP .resetstate
}

status_tacotank:
{
if !FEATURE_PAL
    !expected_subspeed = $3C00
    !first_possible_x = $002D
else
    !expected_subspeed = $3000
    !first_possible_x = $0036
endif

    ; Suppress Samus HP display
    LDA !SAMUS_HP : STA !ram_last_hp

    ; Seven states of taco tank
    LDA !ram_roomstrat_state : CMP #$0007 : BPL .falling : CMP #$0002 : BMI .checkstart
    JMP .checkotherstates

  .donestart
    RTS

  .returnstart
    LDA #$0001 : STA !ram_roomstrat_state

  .checkstart
    ; Check if Samus is in starting position not facing right with no animation delay and not holding left
    LDA !SAMUS_X : CMP #$022B : BNE .donestart
    LDA !SAMUS_X_SUBPX : CMP #$FFFF : BNE .donestart
    LDA !SAMUS_Y_DIRECTION : CMP #$0000 : BNE .donestart
    LDA !SAMUS_POSE_DIRECTION : AND #$0004 : CMP #$0004 : BNE .donestart
    LDA !SAMUS_CONTROLLER_HANDLER
if !FEATURE_PAL
    CMP #$E910 : BNE .donestart
else
    CMP #$E913 : BNE .donestart
endif
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BNE .donestart

    ; Ready to start
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    STA !HUD_TILEMAP+$92 : STA !HUD_TILEMAP+$94 : STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98
    JMP .incstate

  .falling
    LDA !ram_walljump_counter : INC : STA !ram_walljump_counter

    ; Check if we are still in aim down pose
    LDA !SAMUS_POSE : CMP #$0018 : BEQ .donestart

    ; If not, assume we expanded our hitbox
    LDA !ram_walljump_counter : CMP !ram_xpos : BMI .expandearly
    CMP !ram_ypos : BPL .expandlate

    ; We expanded hitbox on time
    INC : SEC : SBC !ram_xpos
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$98
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$96
    LDA !sram_display_mode_reward : BEQ .donereward
    %sfxreward()

  .donereward
    JMP .returnstart

  .expandearly
    LDA !ram_xpos : SEC : SBC !ram_walljump_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$98
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$96
    JMP .returnstart

  .expandlate
    INC : SEC : SBC !ram_ypos
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$98
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$96
    JMP .returnstart

  .clearreturnstart
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    JMP .returnstart

  .incstate
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state
    TDC : STA !ram_roomstrat_counter
    RTS

  .incleft
    ; Arbitrary wait of 64 frames before giving up
    LDA !ram_roomstrat_counter : CMP #$0040 : BPL .clearreturnstart
    INC : STA !ram_roomstrat_counter

  .donerising
    RTS

  .rising
    ; If our speed is still good then we haven't broken spin
if !FEATURE_PAL
    LDA !SAMUS_X_SUBMOMENTUM : CMP #$A600 : BEQ .donerising
else
    LDA !SAMUS_X_SUBMOMENTUM : CMP #$6000 : BEQ .donerising
endif

    ; We have broken spin, combine starting X position with walljump to see how we did
    LDA !ram_xpos : CLC : ADC !ram_walljump_counter : STA !ram_xpos
    JMP .setx

  .initialjump
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BEQ .checkleft

    ; If we haven't pressed left yet, move back to previous state
    LDA !ram_roomstrat_counter : BEQ .clearreturnstart

    ; Print number of frames after holding left that we pressed jump
    LDA !ram_roomstrat_counter : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A

  .checkleft
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BNE .incleft

    ; Nothing to do if we haven't pressed left yet
    LDA !ram_roomstrat_counter : BEQ .donerising

    ; Print number of frames we were holding left, if we haven't already
    ASL : TAY : LDA !HUD_TILEMAP+$88 : CMP !IH_LETTER_Y : BNE .noleftcheckjump
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$88

  .noleftcheckjump
    ; If we stopped holding left, but we haven't jumped yet,
    ; then we aren't ready to move to the next state
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_JUMP : BNE .incstate
    BRA .incleft

  .checkotherstates
    ; Most states require the walljump counter incremented, so just do it for all of them
    LDA !ram_walljump_counter : INC : STA !ram_walljump_counter
    LDA !ram_roomstrat_state : CMP #$0002 : BEQ .initialjump : CMP #$0005 : BEQ .rising
    CMP #$0006 : BEQ .peaking : CMP #$0004 : BEQ .accel
    BRA .walljump

  .wjfail
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$94
    JMP .returnstart

  .done
    RTS

  .accel
    ; We can't evaluate the horizontal movement for a few frames
    LDA !ram_walljump_counter : AND #$0004 : BEQ .done

    ; Once we can evaluate, make sure it is good
    LDA !SAMUS_X_SUBRUNSPEED : CMP #!expected_subspeed : BNE .wjfail
if !FEATURE_PAL
    LDA !ram_xpos : CMP #$0032 : BPL .wjfail
else
    LDA !ram_xpos : CMP #$0039 : BPL .wjfail
endif
    JMP .incstate

  .peakfail
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98
    JMP .returnstart

  .checkground
    LDA !SAMUS_Y : CMP #$02BB : BNE .done

    ; We're back on the ground
    JMP .returnstart

  .peaking
    ; If still rising, nothing to do
    LDA !SAMUS_Y_DIRECTION : CMP #$0001 : BEQ .done
    
    ; Fail if not falling with proper speed and pose
    CMP #$0002 : BNE .peakfail
    LDA !SAMUS_Y : CMP #$0243 : BPL .peakfail
    LDA !SAMUS_X_SUBRUNSPEED : CMP #!expected_subspeed : BNE .peakfail
if !FEATURE_PAL
    LDA !SAMUS_X_SUBMOMENTUM : CMP #$8000 : BNE .peakfail
else
    LDA !SAMUS_X_SUBMOMENTUM : CMP #$4000 : BNE .peakfail
endif
    LDA !SAMUS_POSE : CMP #$0018 : BNE .peakfail
    JMP .incstate

  .wjfar
    ; We jumped so late we are more than 65 pixels from the wall
    ; Set ram_xpos to an arbitrarily large value to ensure we'll fail later
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$92 : STA !ram_xpos
    BRA .wjcontinue

  .walljump
    ; Waiting for the walljump
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BEQ .checkground

    ; We jumped, first calculate our distance from the wall
    LDA #$022B : SEC : SBC !SAMUS_X : CMP #$0042 : BPL .wjfar
    STA !ram_xpos : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$92

    ; Store this for later, each pixel counts as 8 frames of good horizontal movement
    TYA : ASL #2
if !FEATURE_PAL
    ; Actually on PAL it only counts as ~6.75 frames, which we'll round to 7 frames
    ; We have the value multiplied by 8, subtract the original value to get multiplied by 7
    SEC : SBC !ram_xpos
endif
    STA !ram_xpos

  .wjcontinue
    LDA !IH_BLANK : STA !HUD_TILEMAP+$A4
    TDC : STA !ram_walljump_counter

    ; Now time to evaluate the jump height
    ; If necessary evaluate down to the subpixel
if !FEATURE_PAL
    LDA !SAMUS_Y : CMP #$029E : BEQ .bonk : CMP #$029F : BEQ .threey : BPL .maybelow
else
    LDA !SAMUS_Y : CMP #$029D : BEQ .bonk : CMP #$029E : BEQ .threey : BPL .maybelow
endif

  .high
    LDA #$029E : SEC : SBC !SAMUS_Y : CMP #$0042 : BPL .toohigh
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    BRA .highprint

  .toohigh
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$8E

  .highprint
    LDA !IH_LETTER_H : STA !HUD_TILEMAP+$8C
    JMP .wjfail

  .bonk
if !FEATURE_PAL
    LDA !SAMUS_Y_SUBPX : CMP #$F000 : BCS .printtwob : CMP #$8C00 : BCS .printoneb
else
    LDA !SAMUS_Y_SUBPX : CMP #$F000 : BCS .printtwob : CMP #$B000 : BCS .printoneb
endif
    BRA .high

  .maybelow
if !FEATURE_PAL
    CMP #$02A0 : BEQ .printtwoy : CMP #$02A1 : BEQ .twoy : CMP #$02A2 : BEQ .oney
else
    CMP #$029F : BEQ .twoy : CMP #$02A0 : BEQ .printoney : CMP #$02A1 : BEQ .oney
endif

  .low
    LDA !SAMUS_Y : SEC : SBC #$02A0
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8C
    JMP .wjfail

  .threey
if !FEATURE_PAL
    LDA !SAMUS_Y_SUBPX : CMP #$A800 : BCS .printtwoy : CMP #$2C00 : BCC .printtwob
    CMP #$4000 : BCC .printthreeb
else
    LDA !SAMUS_Y_SUBPX : CMP #$9400 : BCS .printtwoy : CMP #$1400 : BCC .printtwob
    CMP #$1C00 : BCC .printthreeb
endif
    LDA #$0003

  .printy
    STA !ram_ypos : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8C

    ; Determine last frame where we can gather the tank
    LDA #!first_possible_x : CLC : ADC !ram_ypos : STA !ram_ypos
    JMP .incstate

  .twoy
if !FEATURE_PAL
    LDA !SAMUS_Y_SUBPX : CMP #$3800 : BCS .printoney
else
    LDA !SAMUS_Y_SUBPX : CMP #$E400 : BCS .printoney
endif

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
if !FEATURE_PAL
    LDA !SAMUS_Y_SUBPX : CMP #$A000 : BCS .low
else
    LDA !SAMUS_Y_SUBPX : CMP #$1800 : BCS .low
endif

  .printoney
    LDA #$0001
    BRA .printy

  .printthreeb
    LDA #$0003

  .printb
    STA !ram_ypos : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_B : STA !HUD_TILEMAP+$8C

    ; Determine last frame where we can gather the tank
    LDA #!first_possible_x : CLC : ADC !ram_ypos : STA !ram_ypos
    JMP .incstate

  .setx
    ; Determine first frame where we can gather the tank
if !FEATURE_PAL
    LDA !ram_xpos : CMP #$0045 : BPL .threex : CMP #$0039 : BPL .twox : CMP #$002C : BPL .onex
else
    LDA !ram_xpos : CMP #$0051 : BPL .threex : CMP #$0046 : BPL .twox : CMP #$003A : BPL .onex
endif
    BRA .predictfail

  .threex
    LDA #!first_possible_x : STA !ram_xpos
    BRA .predict

  .twox
    LDA #(!first_possible_x+1) : STA !ram_xpos
    BRA .predict

  .onex
    LDA #(!first_possible_x+2) : STA !ram_xpos

  .predict
    ; Compare first frame we can get the tank to the last frame
    CMP !ram_ypos : BMI .predictchance

  .predictfail
    ; There are no frames where we can gather the tank
    LDY #$0000 : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$94
    JMP .returnstart

  .predictchance
    ; There is at least one frame where we can gather the tank
    LDA !ram_ypos : SEC : SBC !ram_xpos
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$94
    JMP .incstate
}

status_pitdoor:
{
    LDA !ROOM_ID : CMP.w #ROOM_PitRoom : BNE .done
    LDA $7EDE64 : BNE .draw_N
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8E
    LDA !sram_display_mode_reward : BEQ .done
    %sfxreward()
    RTS

  .draw_N
    LDA !IH_LETTER_N : STA !HUD_TILEMAP+$8E

  .done
    RTS
}

status_moondance:
{
    LDA !ROOM_ID : CMP.w #ROOM_DachoraRoom : BEQ .moondance
    CMP.w #ROOM_GreenBrinMainShaft : BEQ .tasdance
    RTS

  .tasdance
    JMP status_moondance_tas

  .moondance
    ; Suppress Samus HP display
    LDA !SAMUS_HP : STA !ram_last_hp

    LDA !SAMUS_Y_SPEEDCOMBINED : BNE .checkstate
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BNE .checkstate
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RIGHT : BNE .checkstate
    LDA !SAMUS_POSE : CMP #$0006 : BEQ .gotocheckstart
    CMP #$0008 : BEQ .gotocheckstart : CMP #$008A : BNE .checkstate

  .gotocheckstart
    JMP .checkstart

  .checkL2Rshoot
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BNE .L2Rshoot
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RIGHT : BNE .L2Rturnearly
    JMP .inccounter

  .checkstate
    LDA !ram_roomstrat_state : DEC : BEQ .checkL2Rshoot
    DEC : BEQ .checkL2Rturn : DEC : BEQ .checkL2Rrelease
    JMP .morestate

  .L2Rshoot
    LDA !ram_roomstrat_counter : CMP #$0042 : BPL .L2Rshootdrawn
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$92

  .L2Rshootdrawn
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkL2Rturn
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BEQ .L2Rreleaseearly
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RIGHT : BNE .L2Rturn
    JMP .inccounter

  .L2Rturnearly
    LDA !IH_LETTER_F : STA !HUD_TILEMAP+$92
    LDA !IH_BLANK : STA !HUD_TILEMAP+$94
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$96
    LDA !IH_LETTER_R : STA !HUD_TILEMAP+$98
    JMP .gotoL2Rsimpleturn

  .L2Rturn
    LDA !ram_roomstrat_counter : CMP #$0042 : BPL .L2Rturndrawn
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$94

  .L2Rturndrawn
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkL2Rrelease
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BEQ .L2Rrelease
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RIGHT : BEQ .L2Rdoneearly
    JMP .inccounter

  .L2Rreleaseearly
    LDA !IH_LETTER_F : STA !HUD_TILEMAP+$92
    LDA !IH_BLANK : STA !HUD_TILEMAP+$94
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$96
    LDA !IH_LETTER_R : STA !HUD_TILEMAP+$98
    JMP .gotoL2Rsimpleturn

  .L2Rrelease
    LDA !ram_roomstrat_counter : CMP #$0042 : BPL .L2Rreleasedrawn
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$96

  .L2Rreleasedrawn
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkL2Rpose
    LDA !SAMUS_POSE : CMP #$0001 : BEQ .L2Rpose
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RIGHT : BEQ .L2Rdoneearly
    JMP .inccounter

  .L2Rdoneearly
    LDA !SAMUS_Y : CMP #$00B0 : BNE .L2Rdoneearlydraw
    JMP .alldone

  .L2Rdoneearlydraw
    LDA !IH_LETTER_F : STA !HUD_TILEMAP+$92
    LDA !IH_BLANK : STA !HUD_TILEMAP+$94
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$96
    LDA !IH_LETTER_N : STA !HUD_TILEMAP+$98
    JMP .gotoL2Rsimpleturn

  .L2Rpose
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkL2Rdone
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RIGHT : BEQ .L2Rdone
    JMP .inccounter

  .L2Rdone
    LDA !ram_roomstrat_counter : CMP #$0042 : BPL .L2Rdonedrawn
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$98
    BRA .L2Rdonedrawn

  .morestate
    DEC : BEQ .checkL2Rpose
    DEC : BEQ .checkL2Rdone
    DEC : BEQ .checkR2Lsimpleturn
    DEC : BEQ .checkR2Lsimpledone
    DEC : BEQ .checkR2Lshoot
    JMP .evenmorestate

  .L2Rdonedrawn
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state
    LDA !ram_quickdrop_counter : INC : STA !ram_quickdrop_counter
    PHA : LDX #$008A : JSR Draw3 : PLA

  .L2RprepR2L
    CMP #$001D : BPL .R2Lprep

  .checkR2Lsimpleturn
    LDA !SAMUS_POSE : CMP #$008D : BEQ .R2Lsimpleturn
    CMP #$009C : BEQ .R2Lsimpleturn : CMP #$0025 : BEQ .R2Lsimpleturn
    CMP #$0006 : BEQ .R2Lsimpleturn : CMP #$0008 : BEQ .R2Lsimpleturn

  .inccounter
    LDA !ram_roomstrat_counter : INC : STA !ram_roomstrat_counter
    RTS

  .R2Lsimpleturn
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkR2Lsimpledone
    LDA !SAMUS_POSE : CMP #$008D : BEQ .R2Lsimpleturning
    CMP #$009C : BEQ .R2Lsimpleturning
    CMP #$0025 : BEQ .R2Lsimpleturning
    TDC : INC : STA !ram_roomstrat_state

  .R2Lsimpleturning
    RTS

  .R2Lprep
    LDA !ram_roomstrat_state : INC #2 : STA !ram_roomstrat_state

  .checkR2Lshoot
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BNE .R2Lshoot
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BNE .R2Lturnearly
    JMP .inccounter

  .R2Lshoot
    LDA !ram_roomstrat_counter : CMP #$0042 : BPL .R2Lshootdrawn
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$92

  .R2Lshootdrawn
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state
    BRA .checkR2Lturn

  .R2Lturnearly
    LDA !IH_LETTER_F : STA !HUD_TILEMAP+$92
    LDA !IH_BLANK : STA !HUD_TILEMAP+$94
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$96
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$98
    JMP .gotoR2Lsimpleturn

  .checkR2Lturn
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BEQ .R2Lreleaseearly
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BNE .R2Lturn
    JMP .inccounter

  .R2Lturn
    LDA !ram_roomstrat_counter : CMP #$0042 : BPL .R2Lturndrawn
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$94

  .R2Lturndrawn
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkR2Lrelease
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BEQ .R2Lrelease
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BEQ .R2Ldoneearly
    JMP .inccounter

  .R2Lreleaseearly
    LDA !IH_LETTER_F : STA !HUD_TILEMAP+$92
    LDA !IH_BLANK : STA !HUD_TILEMAP+$94
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98
    JMP .gotoR2Lsimpleturn

  .evenmorestate
    DEC : BEQ .checkR2Lturn
    DEC : BEQ .checkR2Lrelease
    DEC : BEQ .checkR2Lpose
    DEC : BEQ .checkR2Ldone
    JMP .failstate

  .R2Lrelease
    LDA !ram_roomstrat_counter : CMP #$0042 : BPL .R2Lreleasedrawn
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$96

  .R2Lreleasedrawn
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkR2Lpose
    LDA !SAMUS_POSE : CMP #$0002 : BEQ .R2Lpose
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BEQ .R2Ldoneearly
    JMP .inccounter

  .checkR2Ldone
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BEQ .R2Ldone
    JMP .inccounter

  .R2Ldoneearly
    LDA !SAMUS_Y : CMP #$00B0 : BNE .R2Ldoneearlydraw
    JMP .alldone

  .R2Ldoneearlydraw
    LDA !IH_LETTER_F : STA !HUD_TILEMAP+$92
    LDA !IH_BLANK : STA !HUD_TILEMAP+$94
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$96
    LDA !IH_LETTER_N : STA !HUD_TILEMAP+$98
    JMP .gotoR2Lsimpleturn

  .R2Lpose
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state
    BRA .checkR2Ldone

  .R2Ldone
    LDA !ram_roomstrat_counter : CMP #$0042 : BPL .R2Ldonedrawn
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$98

  .R2Ldonedrawn
    TDC : STA !ram_roomstrat_counter
    INC : STA !ram_roomstrat_state
    LDA !ram_quickdrop_counter : INC : STA !ram_quickdrop_counter
    LDX #$008A : JSR Draw3
    JMP .checkL2Rshoot

  .failstate
    DEC : BEQ .checkL2Rsimpleturn
    DEC : BEQ .checkL2Rsimpledone

  .L2Rsimpleturning
    RTS

  .gotoR2Lsimpleturn
    TDC : STA !ram_roomstrat_counter
    LDA #$0006 : STA !ram_roomstrat_state
    JMP .checkR2Lsimpleturn

  .gotoL2Rsimpleturn
    TDC : STA !ram_roomstrat_counter
    LDA #$000D : STA !ram_roomstrat_state

  .checkL2Rsimpleturn
    LDA !SAMUS_POSE : CMP #$008E : BEQ .L2Rsimpleturn
    CMP #$009D : BEQ .L2Rsimpleturn : CMP #$0026 : BEQ .L2Rsimpleturn
    CMP #$0005 : BEQ .L2Rsimpleturn : CMP #$0007 : BEQ .L2Rsimpleturn
    JMP .inccounter

  .L2Rsimpleturn
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkL2Rsimpledone
    LDA !SAMUS_POSE : CMP #$008E : BEQ .L2Rsimpleturning
    CMP #$009D : BEQ .L2Rsimpleturning
    CMP #$0026 : BEQ .L2Rsimpleturning
    LDA #$0006 : STA !ram_roomstrat_state
    LDA !ram_quickdrop_counter
    JMP .L2RprepR2L

  .checkstart
    LDA !SAMUS_X : CMP #$03F5 : BNE .done
    LDA !SAMUS_Y : CMP #$009B : BNE .done
    LDA !SAMUS_X_SUBPX : BNE .done
    LDA !SAMUS_Y_SUBPX : INC : BNE .done
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    LDA.w NumberGFXTable : STA !HUD_TILEMAP+$8E
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A
    STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$90
    STA !HUD_TILEMAP+$92 : STA !HUD_TILEMAP+$94
    STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98
    TDC : STA !ram_roomstrat_counter : STA !ram_quickdrop_counter
    INC : STA !ram_roomstrat_state

  .done
    RTS

  .alldone
    TDC : STA !ram_roomstrat_counter : STA !ram_roomstrat_state
    LDA !ram_quickdrop_counter : INC : STA !ram_quickdrop_counter
    LDX #$008A : JSR Draw3
    LDA !IH_BLANK : STA !HUD_TILEMAP+$92 : STA !HUD_TILEMAP+$94
    STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98
    RTS
}

status_moondance_tas:
{
    ; Suppress Samus HP display
    LDA !SAMUS_HP : STA !ram_last_hp

    LDA !SAMUS_Y_SPEEDCOMBINED : BNE .checkstate
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BNE .checkstate
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RIGHT : BNE .checkstate
    LDA !SAMUS_POSE : CMP #$0006 : BEQ .gotocheckstart
    CMP #$0008 : BEQ .gotocheckstart
    BNE .checkstate

  .gotocheckstart
    JMP .checkstart

  .checkL2Rshoot
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_JUMP : BNE .L2Rturnearly
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BNE .L2Rshoot
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RIGHT : BNE .L2Rturnearly
    JMP .inccounter

  .checkstate
    LDA !ram_roomstrat_state : DEC : BEQ .checkL2Rshoot
    DEC : BEQ .checkL2Rturn : DEC : BEQ .checkL2Rjump
    JMP .morestate

  .L2Rshoot
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkL2Rturn
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_JUMP : BNE .L2Rjumpearly
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BEQ .L2Rjumpearly
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RIGHT : BNE .L2Rturn
    JMP .inccounter

  .L2Rturnearly
    LDA !IH_LETTER_F : STA !HUD_TILEMAP+$92
    LDA !IH_BLANK : STA !HUD_TILEMAP+$94
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$96
    LDA !IH_LETTER_R : STA !HUD_TILEMAP+$98
    JMP .alldone

  .L2Rturn
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkL2Rjump
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_JUMP : BNE .L2Rjump
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_SHOT : BEQ .L2Rdoneearly
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RIGHT : BEQ .L2Rdoneearly
    JMP .inccounter

  .L2Rjumpearly
    LDA !IH_LETTER_F : STA !HUD_TILEMAP+$92
    LDA !IH_BLANK : STA !HUD_TILEMAP+$94
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$96
    LDA !IH_LETTER_R : STA !HUD_TILEMAP+$98
    JMP .alldone

  .L2Rjump
    TDC : STA !ram_shot_timer : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkL2Rrelease
    LDA !SAMUS_Y : CMP #$02B0 : BPL .maybeginfall
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RIGHT : BEQ .L2Rrelease
    JMP .inccounters

  .L2Rdoneearly
    LDA !IH_LETTER_F : STA !HUD_TILEMAP+$92
    LDA !IH_BLANK : STA !HUD_TILEMAP+$94
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$96
    LDA !IH_LETTER_N : STA !HUD_TILEMAP+$98
    JMP .alldone

  .L2Rrelease
    LDA !ram_roomstrat_counter : CMP #$0042 : BPL .L2Rreleasedrawn
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$98

  .L2Rreleasedrawn
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkR2Lpress
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BNE .R2Lpress
    BRA .inccounters

  .morestate
    DEC : BEQ .checkL2Rrelease
    DEC : BEQ .checkR2Lpress
    DEC : BEQ .checkR2Lrelease
    DEC : BEQ .checkL2Rpress
    JMP .evenmorestate

  .maybeginfall
    LDA !SAMUS_Y_SPEEDCOMBINED : CMP #$F000 : BCC .notfalling
    LDA !ram_quickdrop_counter : CMP #$0023 : BMI .notfalling
    LDA #$0008 : STA !ram_roomstrat_state
    JMP .beginfall

  .R2Lpress
    LDA !ram_shot_timer : CMP #$0042 : BPL .R2Lpressdrawn
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$92

  .R2Lpressdrawn
    TDC : STA !ram_shot_timer
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkR2Lrelease
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BEQ .R2Lrelease
    BRA .inccounters

  .R2Lrelease
    LDA !ram_roomstrat_counter : CMP #$0042 : BPL .R2Lreleasedrawn
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$94

  .R2Lreleasedrawn
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state

  .checkL2Rpress
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_RIGHT : BNE .L2Rpress

  .inccounters
    LDA !ram_shot_timer : INC : STA !ram_shot_timer

  .inccounter
    LDA !ram_roomstrat_counter : INC : STA !ram_roomstrat_counter
    RTS

  .notfalling
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$88
    BRA .alldone

  .L2Rpress
    LDA !ram_shot_timer : CMP #$0042 : BPL .L2Rpressdrawn
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$96

  .L2Rpressdrawn
    TDC : STA !ram_shot_timer
    LDA #$0004 : STA !ram_roomstrat_state
    LDA !SAMUS_Y_SPEEDCOMBINED : BEQ .lostfallspeed
    LDA !ram_quickdrop_counter : CMP #$0028 : BPL .lostfallspeed
    INC : STA !ram_quickdrop_counter
    LDX #$008A : JSR Draw3
    JMP .checkL2Rrelease

  .lostfallspeed
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E
    JMP .checkL2Rrelease

  .alldone
    TDC : STA !ram_roomstrat_counter : STA !ram_roomstrat_state
    RTS

  .checkstart
    LDA !SAMUS_Y : CMP #$02AB : BNE .done
    LDA !SAMUS_Y_SUBPX : INC : BNE .done
    LDA !SAMUS_Y_DIRECTION : BNE .done
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    LDA.w NumberGFXTable : STA !HUD_TILEMAP+$8E
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A
    STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$90
    STA !HUD_TILEMAP+$92 : STA !HUD_TILEMAP+$94
    STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98
    TDC : STA !ram_roomstrat_counter : STA !ram_quickdrop_counter
    INC : STA !ram_roomstrat_state

  .done
    RTS

  .beginfall
    LDA !SAMUS_Y : CMP #$0512 : BMI .done
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BNE .beginfallearly
    LDA !IH_BLANK : STA !HUD_TILEMAP+$92 : STA !HUD_TILEMAP+$94
    STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state
    RTS

  .beginfallearly
    LDA !IH_LETTER_E

  .beginfallearlylate
    STA !HUD_TILEMAP+$92
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$94
    LDA !IH_BLANK : STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98
    JMP .alldone

  .beginfalllate
    LDA !IH_LETTER_L
    BRA .beginfallearlylate

  .checkfallleft
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_LEFT : BNE .fallleft
    LDA !ram_roomstrat_counter : CMP #$0024 : BPL .beginfalllate
    INC : STA !ram_roomstrat_counter
    RTS

  .evenmorestate
    DEC : BEQ .beginfall : DEC : BEQ .checkfallleft
    DEC : BEQ .checkfalldown : DEC : BEQ .checkfallrelease

  .evenmoredone
    RTS

  .checkfallrelease
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_DOWN : BEQ .falldownrelease
    LDA !ram_roomstrat_counter : CMP #$0016 : BPL .fallreleaselate
    INC : STA !ram_roomstrat_counter
    RTS

  .checkfalldown
    LDA !ram_roomstrat_counter : CMP #$0016 : BPL .fallreleaselate
    INC : STA !ram_roomstrat_counter
    LDA !IH_CONTROLLER_PRI : AND !IH_INPUT_DOWN : BEQ .evenmoredone
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state
    RTS

  .fallleft
    LDA !ram_roomstrat_counter : CMP #$0012 : BMI .fallleftearly
    BEQ .fallleftperfect
    SEC : SBC #$0012 : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$94
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$92
    JMP .alldone

  .fallreleaselate
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$96
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$98
    JMP .alldone

  .falldownrelease
    LDA !ram_roomstrat_counter : CMP #$000A : BMI .fallreleaseearly
    BEQ .fallreleaseperfect
    SEC : SBC #$000A : ASL : TAY
    LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$98
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$96
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state
    RTS

  .fallleftearly
    LDA #$0012 : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$94
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$92
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state
    RTS

  .fallleftperfect
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$92 : STA !HUD_TILEMAP+$94
    TDC : STA !ram_roomstrat_counter
    LDA !ram_roomstrat_state : INC : STA !ram_roomstrat_state
    RTS

  .fallreleaseearly
    LDA #$000A : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$98
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$96
    JMP .alldone

  .fallreleaseperfect
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98
    JMP .alldone
}

status_kraidradar:
{
    LDA !ROOM_ID : CMP.w #ROOM_KraidRoom : BNE .skip
    ; stop tracking when Kraid takes damage
    LDA !ENEMY_HP : CMP #$03E8 : BEQ .setup

  .skip
    RTS

  .setup
    LDA !SAMUS_HP : STA !ram_last_hp ; suppress Samus HP
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A ; clear space on HUD
    STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    STA !HUD_TILEMAP+$92 : STA !HUD_TILEMAP+$94 : STA !HUD_TILEMAP+$96
    STA !HUD_TILEMAP+$98

    ; Detect and draw Samus first

    ; check if sweet spot (2 missile KQK using bomb setup)
    LDY !SAMUS_X : CPY #$004B : BEQ .greenSamus
    LDA !IH_MORPH_BALL_YELLOW : BRA .checkSamusX

  .greenSamus
    LDA !IH_MORPH_BALL_GREEN

  .checkSamusX
    CPY #$0060 : BPL .samusXrightSide
    CPY #$0030 : BMI .samusXpos1
    CPY #$0040 : BMI .samusXpos2
    CPY #$0050 : BMI .samusXpos3
    STA !HUD_TILEMAP+$92 : BRA .checkEnemies
  .samusXpos1
    STA !HUD_TILEMAP+$8C : BRA .checkEnemies
  .samusXpos2
    STA !HUD_TILEMAP+$8E : BRA .checkEnemies
  .samusXpos3
    STA !HUD_TILEMAP+$90 : BRA .checkEnemies
  .samusXrightSide
    CPY #$0070 : BMI .samusXpos5
    CPY #$0080 : BMI .samusXpos6
    STA !HUD_TILEMAP+$98 : BRA .checkEnemies
  .samusXpos5
    STA !HUD_TILEMAP+$94 : BRA .checkEnemies
  .samusXpos6
    STA !HUD_TILEMAP+$96

    ; Detect stuff
  .checkEnemies
    ; Enemy 6 (good fingernail)
    LDX #$0180

    ; Y position, check if Y < 624
    LDA !ENEMY_Y,X : CMP #$0270 : BCC .enemy6X
    LDA #$FFFF : STA !ram_radar6 : BRA .checkEnemy7

  .enemy6X
    ; check X position, set position bit on radar
    LDY !ENEMY_X,X : TDC
    CPY #$0020 : BMI .enemy6X_store : INC
    CPY #$0030 : BMI .enemy6X_store : INC
    CPY #$0040 : BMI .enemy6X_store : INC
    CPY #$0050 : BMI .enemy6X_store : INC
    CPY #$0060 : BMI .enemy6X_store : INC
    CPY #$0070 : BMI .enemy6X_store : INC
    CPY #$0080 : BMI .enemy6X_store : INC
  .enemy6X_store
    ASL : STA !ram_radar6

    ; check if Y position is moving up or down
    LDA !ENEMY_Y,X : CMP !ram_enemy6_last_ypos : BCC .enemy6Y_movingUp
    STA !ram_enemy6_last_ypos
    ; check if Y position is high or low, Y < 594
    CMP #$0252 : BCC .enemy6YHigh_movingDown
    LDA !ram_radar6 : ORA #$0800 : BRA .enemy6Y_store
  .enemy6YHigh_movingDown
    LDA !ram_radar6 : ORA #$0400 : BRA .enemy6Y_store

  .enemy6Y_movingUp
    STA !ram_enemy6_last_ypos
    ; check if Y position is high or low, Y < 594
    CMP #$0252 : BCC .enemy6YHigh_movingUp
    LDA !ram_radar6 : AND #$00FF : ORA #$0200 : BRA .enemy6Y_store
  .enemy6YHigh_movingUp
    LDA !ram_radar6 : AND #$00FF : ORA #$0100
  .enemy6Y_store
    STA !ram_radar6

  .checkEnemy7
    ; Enemy 7 (bad fingernail)
    LDX #$01C0

    ; Y position, check if Y < 624
    LDA !ENEMY_Y,X : CMP #$0270 : BCC .enemy7X
    LDA #$FFFF : STA !ram_radar7 : BRA .drawEnemy6

  .enemy7X
    ; check X position, set position bit on radar
    LDY !ENEMY_X,X : TDC
    CPY #$0020 : BMI .enemy7X_store : INC
    CPY #$0030 : BMI .enemy7X_store : INC
    CPY #$0040 : BMI .enemy7X_store : INC
    CPY #$0050 : BMI .enemy7X_store : INC
    CPY #$0060 : BMI .enemy7X_store : INC
    CPY #$0070 : BMI .enemy7X_store : INC
    CPY #$0080 : BMI .enemy7X_store : INC
  .enemy7X_store
    ASL : STA !ram_radar7

    ; check if Y position is moving up or down
    LDA !ENEMY_Y,X : CMP !ram_enemy7_last_ypos : BCC .enemy7Y_movingUp
    STA !ram_enemy7_last_ypos
    ; check if Y position is high or low, Y < 594
    CMP #$0252 : BCC .enemy7YHigh_movingDown
    LDA !ram_radar7 : ORA #$0800 : BRA .enemy7Y_store
  .enemy7YHigh_movingDown
    LDA !ram_radar7 : ORA #$0400 : BRA .enemy7Y_store

  .enemy7Y_movingUp
    STA !ram_enemy7_last_ypos
    ; check if Y position is high or low, Y < 594
    CMP #$0252 : BCC .enemy7YHigh_movingUp
    LDA !ram_radar7 : AND #$00FF : ORA #$0200 : BRA .enemy7Y_store
  .enemy7YHigh_movingUp
    LDA !ram_radar7 : AND #$00FF : ORA #$0100
  .enemy7Y_store
    STA !ram_radar7

; Draw stuff
; Don't draw the enemy if first nibble is non-zero
; Second bit determines arrow direction and color:
; 8 = far away moving down, 4 = close moving down
; 2 = far away moving up, 1 = close moving up
; Low byte contains the position offset
; The bottom-left tile of the HUD is unused
  .drawEnemy6
    ; Enemy 6 (good fingernail)
    LDA !ram_radar6 : BIT #$F000 : BNE .drawEnemy7
    AND #$00FF : TAX
    LDA !ram_radar6 : AND #$0F00
    CMP #$0800 : BEQ .farDown6
    CMP #$0400 : BEQ .closeDown6
    CMP #$0200 : BEQ .farUp6

    LDA !IH_ARROW_UP_PINK_OUTLINE : STA !HUD_TILEMAP+$8A,X : BRA .drawEnemy7
  .farUp6
    LDA !IH_ARROW_UP : STA !HUD_TILEMAP+$8A,X : BRA .drawEnemy7
  .closeDown6
    LDA !IH_ARROW_DOWN_PINK_OUTLINE : STA !HUD_TILEMAP+$8A,X : BRA .drawEnemy7
  .farDown6
    LDA !IH_ARROW_DOWN : STA !HUD_TILEMAP+$8A,X

  .drawEnemy7
    ; Enemy 7 (bad fingernail)
    LDA !ram_radar7 : AND #$F000 : BNE .done
    AND #$00FF : TAX
    LDA !ram_radar7 : AND #$0F00
    CMP #$0800 : BEQ .farDown7
    CMP #$0400 : BEQ .closeDown7
    CMP #$0200 : BEQ .farUp7

    LDA !IH_ARROW_UP_RED : STA !HUD_TILEMAP+$8A,X : BRA .done
  .farUp7
    LDA !IH_ARROW_UP_GREY : STA !HUD_TILEMAP+$8A,X : BRA .done
  .closeDown7
    LDA !IH_ARROW_DOWN_RED : STA !HUD_TILEMAP+$8A,X : BRA .done
  .farDown7
    LDA !IH_ARROW_DOWN_GREY : STA !HUD_TILEMAP+$8A,X

  .done
    RTS
}

status_gateglitch:
{
    ; Arbitrarily expecting shot and gate events to be within 20 frames of each other
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_SHOT : BEQ .incshot

    ; Clear shot counter when shot fired
    TDC : STA !ram_shot_timer
    LDA !ram_roomstrat_counter : BEQ .inccounter : CMP #$0014 : BPL .clearstate
    JMP .late

  .clearprint
    TDC : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$88
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
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
    TDC : STA !ram_roomstrat_state

  .roomcheck
    ; The gate location is hard-coded depending on the room
    LDA !ROOM_ID : CMP.w #ROOM_GreenHillZone : BEQ .greenhills
    CMP.w #ROOM_GrappleTutorialRoom3 : BEQ .grappletutorial
    CMP.w #ROOM_DoubleChamber : BEQ .doublechamber
    CMP.w #ROOM_KronicBoostRoom : BEQ .kronic
    CMP.w #ROOM_UpperNorfFarmingRoom : BEQ .unfarm
    CMP.w #ROOM_FastRipperRoom : BEQ .fastripper
    CMP.w #ROOM_CrabTunnel : BEQ .crabtunnel
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
    CMP !SAMUS_X : BPL .checkjusthappened
    LDA !SAMUS_POSE_DIRECTION : AND #$0004 : CMP #$0004 : BNE .checkjusthappened

    ; Now predict if the missile would go through the gate
    LDA !SAMUS_X : CLC : ADC $0DAA : CMP !ram_xpos : BPL .checkjusthappened

    ; It would, so clear gate event counter and increment state
    ; State tracks the number of frames that you can get the glitch
    TDC : STA !ram_roomstrat_counter
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
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$8C

  .reset
    ; Print number of frames where you could have glitched
    LDA !ram_roomstrat_state : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$88
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A
    TDC : STA !ram_roomstrat_state
    LDA #$0014 : STA !ram_roomstrat_counter : STA !ram_shot_timer
    RTS

  .rewardSFX
    LDA !sram_display_mode_reward : BEQ .reset
    %sfxreward()
    BRA .reset

  .gotit
    ; Check if this should be YY or Y2
    LDA !ram_roomstrat_state : CMP #$0001 : BNE .gottwoframe
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E
    BRA .rewardSFX

  .gottwoframe
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8C
    LDA #$0002 : SEC : SBC !ram_shot_timer
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    BRA .rewardSFX

  .late
    LDA !ram_roomstrat_counter : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8C
    BRA .reset
}

status_moatcwj:
{
    LDA !SAMUS_Y : CMP !ram_ypos : BEQ .didxchange : STA !ram_ypos
    LDA !SAMUS_X

  .onchange
    STA !ram_xpos

    ; If position moving and we haven't started yet, nothing to do
    LDA !ram_roomstrat_state : BEQ .done

    ; If we haven't jumped yet, increment counter
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_JUMP : BEQ .inc

    ; We jumped, check if it was on time
    LDA !ram_roomstrat_state : CMP #$0002 : BNE .checkfirstjump
    JMP .checksecondjump

  .checkfirstjump
    LDA !ram_roomstrat_counter : CMP #$0013 : BEQ .firstframeperfect : BMI .firstjumpearly
    SEC : SBC #$0013 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A

    ; First jump late
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$88
    TDC : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    RTS

  .inc
    LDA !ram_roomstrat_counter : INC : STA !ram_roomstrat_counter
    RTS

  .didxchange
    LDA !SAMUS_X : CMP !ram_xpos : BNE .onchange
    JMP .nochange

  .firstframeperfect
    LDA !sram_display_mode_reward : BEQ .donefirstreward
    %sfxreward()

  .donefirstreward
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    LDA #$0002 : STA !ram_roomstrat_counter : STA !ram_roomstrat_state

  .done
    RTS

  .firstjumpearly
    LDA #$0013 : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$88
    TDC : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
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
    TDC : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    RTS

  .startcounter
    ; Prevent redundacy on start
    CMP !ram_roomstrat_state : BEQ .resetcounter
    STA !ram_roomstrat_state
    LDA !sram_display_mode_reward : BEQ .donestartreward
    %sfxreward()

  .donestartreward
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90

  .resetcounter
    TDC : STA !ram_roomstrat_counter
    RTS

  .checksecondjump
    LDA !ram_roomstrat_counter : CMP #$0049 : BEQ .secondframe1 : BMI .secondjumpearly
    CMP #$004A : BEQ .secondframe2

    ; Second jump late
    SEC : SBC #$004A : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8C
    BRA .clear

  .secondframe1
    LDA #$0C00 : STA !HUD_TILEMAP+$8E
    BRA .secondgotit

  .secondframe2
    LDA #$0C01 : STA !HUD_TILEMAP+$8E

  .secondgotit
    LDA !sram_display_mode_reward : BEQ .donesecondreward
    %sfxreward()

  .donesecondreward
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8C

  .clear
    TDC : STA !ram_roomstrat_state : STA !ram_roomstrat_counter
    RTS

  .secondjumpearly
    LDA #$0049 : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$8C
    BRA .clear
}

status_robotflush:
{
    ; Checking hit on first robot
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88
    LDA !ENEMY_VAR_1+$40 : CMP #$0030 : BMI .checkfirstfall
    LDA #$0C3C : STA !HUD_TILEMAP+$88

  .checkfirstfall
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A
    LDA !ENEMY_Y+$40 : CMP #$0280 : BMI .checksecondhit
    LDA #$0C3C : STA !HUD_TILEMAP+$8A

  .checksecondhit
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8C
    LDA !ENEMY_VAR_1+$80 : CMP #$0030 : BMI .checksecondfall
    LDA #$0C3D : STA !HUD_TILEMAP+$8C

  .checksecondfall
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8E
    LDA !ENEMY_VAR_5+$80 : CMP #$0280 : BMI .done
    LDA #$0C3D : STA !HUD_TILEMAP+$8E

  .done
    RTS
}

status_shinetopb:
{
    ; Suppress Samus HP display
    LDA !SAMUS_HP : STA !ram_last_hp

    LDA !ram_armed_shine_duration : CMP !ram_HUD_check : BEQ .clearcounter
    TAX : BNE .draw ; TAX refreshes flags
    LDA #$00B4 ; draw 180 if zero

  .draw
    STA !ram_HUD_check
    LDX #$0088 : JSR Draw4

    ; If we just charged the spark, time to start checking for the power bomb
    LDA !ram_roomstrat_counter : CMP #$FFFF : BEQ .clearpb

    ; If we're here, PB count was initialized, now check if the count has changed
    CMP !SAMUS_PBS : BNE .drawpb

  .done
    RTS

  .clearcounter
    CMP #$00B4 : BNE .done
    LDA #$FFFF : STA !ram_roomstrat_counter
    RTS

  .clearpb
    LDA !IH_BLANK : STA !HUD_TILEMAP+$90 : STA !HUD_TILEMAP+$92 : STA !HUD_TILEMAP+$94 : STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98
    BRA .setcounter

  .drawpb
    LDA !ram_armed_shine_duration : LDX #$0092 : JSR Draw4

  .setcounter
    LDA !SAMUS_PBS : STA !ram_roomstrat_counter
    RTS
}

status_elevatorcf:
{
if !FEATURE_PAL
    !elevatorcf_frame = $0092
else
    !elevatorcf_frame = $009A
endif

    ; Counter used to check if a power bomb has been laid
    LDA !ram_roomstrat_counter : CMP !SAMUS_PBS : BNE .roomcheck
    LDA !ram_roomstrat_state : CMP #$0000 : BEQ .setxy

    ; Check if we have returned to PB location with zero vertical speed
    ; (we assume horizontal speed is also zero)
    ; Arbitrary wait of 90 frames before checking
    CMP #$005A : BMI .inc
    LDA !SAMUS_X : CMP !ram_xpos : BNE .downcheck
    LDA !SAMUS_Y : CMP !ram_ypos : BNE .downcheck
    LDA !SAMUS_Y_SPEED : CMP #$0000 : BNE .downcheck
    LDA !SAMUS_Y_SUBSPEED : CMP #$0000 : BNE .downcheck
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8A

  .downcheck
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_DOWN : BEQ .inc
    JMP .timecheck

  .setxy
    LDA !SAMUS_X : STA !ram_xpos
    LDA !SAMUS_Y : STA !ram_ypos
    RTS

  .roomcheck
    LDA !ROOM_ID : CMP.w #ROOM_ForgottenHighwayElev : BEQ .forgotten
    CMP.w #ROOM_RedBrinstarElevRoom : BEQ .redbrin
    CMP.w #ROOM_ElevToBlueBrinstar : BEQ .morph
    CMP.w #ROOM_GreenBrinElevRoom : BEQ .greenbrin
    CMP.w #ROOM_DachoraRoom : BEQ .dachora
    CMP.w #ROOM_LowerNorfairElevator : BEQ .lowernorfair
    CMP.w #ROOM_WarehouseEntrance : BEQ .warehouse
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88
    JMP .setpb

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

  .dachora
    LDA #$00AA : CMP !ram_ypos : BEQ .goodpb
    BRA .badpb

  .questionpb
    ; Draw a percent character (laying the PB dead-center on the elevator is questionable)
    LDA !IH_PERCENT : STA !HUD_TILEMAP+$88
    BRA .setpb

  .timecheck
    ; Need to activate the elevator 154 frames after laying the power bomb
    LDA !ram_roomstrat_state : CMP #!elevatorcf_frame : BEQ .frameperfect : BMI .early

    ; Late
    SEC : SBC #!elevatorcf_frame
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8C

  .reset
    TDC : STA !ram_roomstrat_state
    RTS

  .badpb
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$88
    BRA .setpb

  .goodpb
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88

  .setpb
    LDA !SAMUS_PBS : STA !ram_roomstrat_counter
    LDA #$0001 : STA !ram_roomstrat_state
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    RTS

  .early
    LDA #!elevatorcf_frame : SEC : SBC !ram_roomstrat_state
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$8C
    BRA .reset

  .frameperfect
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E
    LDA !sram_display_mode_reward : BEQ .donereward
    %sfxreward()

  .donereward
    BRA .reset
}

status_botwooncf:
{
if !FEATURE_PAL
    !botwooncf_frame = $0091
else
    !botwooncf_frame = $0099
endif

    ; Counter used to check if a power bomb has been laid
    LDA !ram_roomstrat_counter : CMP !SAMUS_PBS : BNE .pbcheck
    LDA !ram_roomstrat_state : BEQ .setxy

    ; Check if we have returned to PB location with zero vertical speed
    ; (we assume horizontal speed is also zero)
    ; Note by only checking the lower byte of Y position,
    ; the same check now works for the shaktool CF clip
    ; Arbitrary wait of 90 frames before checking
    CMP #$005A : BMI .inc
    LDA !SAMUS_X : CMP !ram_xpos : BNE .inc
    LDA !SAMUS_Y : AND #$00FF : CMP #$00B7 : BNE .inc
    LDA !SAMUS_Y_SPEED : CMP #$0000 : BNE .inc
    LDA !SAMUS_Y_SUBSPEED : CMP #$0000 : BNE .inc
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8A
    BRA .timecheck

  .pbcheck
    ; Height check specific for botwoon hallway
    LDA !ram_ypos : AND #$00FF : CMP #$00B7 : BEQ .startpb
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88
    BRA .setpb

  .startpb
    LDA #$0001 : STA !ram_roomstrat_state
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88

  .setpb
    LDA !SAMUS_PBS : STA !ram_roomstrat_counter
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    RTS

  .setxy
    LDA !SAMUS_X : STA !ram_xpos
    LDA !SAMUS_Y : STA !ram_ypos
    RTS

  .inc
    ; Arbitrary give up waiting after 192 frames
    LDA !ram_roomstrat_state : CMP #$00C0 : BPL .reset
    INC : STA !ram_roomstrat_state
    RTS

  .timecheck
    ; Need to be in position 153 frames after laying the power bomb
    LDA !ram_roomstrat_state : CMP #!botwooncf_frame : BEQ .frameperfect : BMI .early

    ; Late
    SEC : SBC #!botwooncf_frame
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8C

  .reset
    TDC : STA !ram_roomstrat_state
    RTS

  .early
    LDA #!botwooncf_frame : SEC : SBC !ram_roomstrat_state
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$8C
    ; Keep waiting if we are early
    BRA .inc

  .frameperfect
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E
    BRA .reset
}

status_snailclip:
{
    !snailclip_ypos_hi = $014B
if !FEATURE_PAL
    !snailclip_ypos_lo = $014F
else
    !snailclip_ypos_lo = $014D
endif

    LDA !ENEMY_X : CMP !ram_xpos : BEQ .checkypos
    STA !ram_xpos : LDA !ENEMY_Y : STA !ram_ypos
    BRA .resetcounter

  .checkypos
    LDA !ENEMY_Y : CMP !ram_ypos : BEQ .checkcounter
    STA !ram_ypos

  .resetcounter
    TDC : STA !ram_roomstrat_counter
    RTS

  .checkcounter
    ; Arbitrary wait of 15 frames with no X or Y change
    LDA !ram_roomstrat_counter : CMP #$000F : BEQ .checkpos : BPL .done
    INC : STA !ram_roomstrat_counter

  .done
    RTS

  .ignore
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E
    RTS

  .checkpos
    ; Increment counter so we don't check again
    INC : STA !ram_roomstrat_counter
    LDA !ram_xpos : CMP #$0528 : BEQ .checky
    CMP #$0478 : BMI .ignore : CMP #$0489 : BPL .ignore
  .checky
    LDA !ram_ypos : CMP #$0120 : BMI .ignore : CMP #$0165 : BPL .ignore

    ; Snail is in range
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A

    ; Check the height
    LDA !ram_ypos : CMP #!snailclip_ypos_hi : BEQ .yeshigh : BMI .high
    CMP #!snailclip_ypos_lo : BEQ .yeslow : BPL .low
if !FEATURE_PAL
    CMP #!snailclip_ypos_lo-1 : BEQ .yeslow
endif

    ; Height is good and centered
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8E
    BRA .printy

  .yeshigh
    LDA !IH_LETTER_H : STA !HUD_TILEMAP+$8E

  .printy
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8C
    RTS

  .high
    LDA #!snailclip_ypos_hi : SEC : SBC !ram_ypos
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_H : STA !HUD_TILEMAP+$8C
    RTS

  .yeslow
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8E
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0100 : BNE .printy
    TDC : BRA .lowzero

  .low
    LDA !ram_ypos : SEC : SBC #!snailclip_ypos_lo
  .lowzero
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8C
    RTS
}

status_kihuntermanip:
{
    LDA !ROOM_ID : CMP.w #ROOM_RedKihunterShaft : BEQ .roomStairs
    CMP.w #ROOM_ThreeMusketeersRoom : BNE .done
    JMP status_musketeermanip

  .done
    RTS

  .roomStairs
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$90

    ; start with top kihunter, enemy0
    LDX #$0000

    ; Y position, check if below (greater than) Y = 500
    LDA !ENEMY_Y,X : CMP #$01F4 : BPL .topYSuccess
    LDA !IH_LETTER_N : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    STA !HUD_TILEMAP+$8E : BRA .movementEnemy0

  .topYSuccess
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88

    ; X position, check if left of (less than) X = 168
    LDA !ENEMY_X,X : CMP #$00A8 : BMI .topXSuccess
    LDA !IH_LETTER_N : STA !HUD_TILEMAP+$8A : BRA .movementEnemy0

  .topXSuccess
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8A

  .movementEnemy0
    ; check for change in enemy0 xpos
    LDA !ENEMY_X,X : CMP !ram_enemy0_last_xpos
    BEQ .finishX0 : BMI .leftX0
    LDA !IH_ARROW_RIGHT : STA !HUD_TILEMAP+$16
    BRA .finishX0
  .leftX0
    LDA !IH_ARROW_LEFT : STA !HUD_TILEMAP+$16
  .finishX0
    LDA !ENEMY_X,X : STA !ram_enemy0_last_xpos

    ; check for change in enemy0 ypos
    LDA !ENEMY_Y,X : CMP !ram_enemy0_last_ypos
    BEQ .finishY0 : BMI .upY0
    LDA !IH_ARROW_DOWN : STA !HUD_TILEMAP+$18
    BRA .finishY0
  .upY0
    LDA !IH_ARROW_UP : STA !HUD_TILEMAP+$18
  .finishY0
    LDA !ENEMY_Y,X : STA !ram_enemy0_last_ypos

    ; bottom kihunter, enemy4
    LDX #$0100

    ; Y position, check if below (greater than) Y = 790
    LDA !ENEMY_Y,X : CMP #$0316 : BPL .bottomYSuccess
    LDA !IH_LETTER_N : STA !HUD_TILEMAP+$8E : BRA .movementEnemy4

  .bottomYSuccess
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8E

  .movementEnemy4
    ; check for change in enemy4 xpos
    LDA !ENEMY_X,X : CMP !ram_enemy4_last_xpos
    BEQ .finishX4 : BMI .leftX4
    LDA !IH_ARROW_RIGHT : STA !HUD_TILEMAP+$56
    BRA .finishX4
  .leftX4
    LDA !IH_ARROW_LEFT : STA !HUD_TILEMAP+$56
  .finishX4
    LDA !ENEMY_X,X : STA !ram_enemy4_last_xpos

    ; check for change in enemy4 ypos
    LDA !ENEMY_Y,X : CMP !ram_enemy4_last_ypos
    BEQ .finishY4 : BMI .upY4
    LDA !IH_ARROW_DOWN : STA !HUD_TILEMAP+$58
    BRA .finishY4
  .upY4
    LDA !IH_ARROW_UP : STA !HUD_TILEMAP+$58
  .finishY4
    LDA !ENEMY_Y,X : STA !ram_enemy4_last_ypos

    RTS
}

status_musketeermanip:
{
    LDA !SAMUS_HP : STA !ram_last_hp
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8C : STA !HUD_TILEMAP+$8E
    STA !HUD_TILEMAP+$90 : STA !HUD_TILEMAP+$92 : STA !HUD_TILEMAP+$94
    STA !HUD_TILEMAP+$96 : STA !HUD_TILEMAP+$98 : STA !HUD_TILEMAP+$14

    ; top kihunter, enemy8
    LDX #$0200

    ; X position, check if right of (greater than) X = 396 or X = 343
    LDA !ENEMY_X,X : CMP #$018C : BPL .successBothTop
    CMP #$0157 : BPL .successSingleTop
    LDA !IH_LETTER_N : STA !HUD_TILEMAP+$16 : STA !HUD_TILEMAP+$18
    BRA .movementEnemy8

  .successBothTop
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$16 : STA !HUD_TILEMAP+$18
    BRA .movementEnemy8

  .successSingleTop
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$16
    LDA !IH_LETTER_N : STA !HUD_TILEMAP+$18

  .movementEnemy8
    ; check for change in enemy8 xpos
    LDA !ENEMY_X,X : CMP !ram_enemy8_last_xpos
    BEQ .x8Finish : BMI .x8Left
    LDA !IH_ARROW_RIGHT : STA !HUD_TILEMAP+$56
    BRA .x8Finish
  .x8Left
    LDA !IH_ARROW_LEFT : STA !HUD_TILEMAP+$56
  .x8Finish
    LDA !ENEMY_X,X : STA !ram_enemy8_last_xpos

    ; check for change in enemy8 ypos
    LDA !ENEMY_Y,X : CMP !ram_enemy8_last_ypos
    BEQ .y8Finish : BMI .y8Up
    LDA !IH_ARROW_DOWN : STA !HUD_TILEMAP+$58
    BRA .y8Finish
  .y8Up
    LDA !IH_ARROW_UP : STA !HUD_TILEMAP+$58
  .y8Finish
    LDA !ENEMY_Y,X : STA !ram_enemy8_last_ypos

    ; middle kihunter, enemy6
    LDX #$0180

    ; X position, check if left of (less than) X = 343
    LDA !ENEMY_X,X : CMP #$0157 : BMI .successMiddle
    LDA !IH_LETTER_N : STA !HUD_TILEMAP+$88 : BRA .movementEnemy6

  .successMiddle
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88

  .movementEnemy6
    ; check for change in enemy6 xpos
    LDA !ENEMY_X,X : CMP !ram_enemy6_last_xpos
    BEQ .x6Finish : BMI .x6Left
    LDA !IH_ARROW_RIGHT : STA !HUD_TILEMAP+$8C
    BRA .x6Finish
  .x6Left
    LDA !IH_ARROW_LEFT : STA !HUD_TILEMAP+$8C
  .x6Finish
    LDA !ENEMY_X,X : STA !ram_enemy6_last_xpos

    ; check for change in enemy6 ypos
    LDA !ENEMY_Y,X : CMP !ram_enemy6_last_ypos
    BEQ .y6Finish : BMI .y6Up
    LDA !IH_ARROW_DOWN : STA !HUD_TILEMAP+$8E
    BRA .y6Finish
  .y6Up
    LDA !IH_ARROW_UP : STA !HUD_TILEMAP+$8E
  .y6Finish
    LDA !ENEMY_Y,X : STA !ram_enemy6_last_ypos

    ; bottom kihunter, enemy4
    LDX #$0100

    ; X position, check if right of (greater than) X = 343
    LDA !ENEMY_X,X : CMP #$0157 : BPL .successBottom
    LDA !IH_LETTER_N : STA !HUD_TILEMAP+$92 : BRA .movementEnemy4

  .successBottom
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$92

  .movementEnemy4
    ; check for change in enemy4 xpos
    LDA !ENEMY_X,X : CMP !ram_enemy4_last_xpos
    BEQ .x4Finish : BMI .x4Left
    LDA !IH_ARROW_RIGHT : STA !HUD_TILEMAP+$96
    BRA .x4Finish
  .x4Left
    LDA !IH_ARROW_LEFT : STA !HUD_TILEMAP+$96
  .x4Finish
    LDA !ENEMY_X,X : STA !ram_enemy4_last_xpos

    ; check for change in enemy4 ypos
    LDA !ENEMY_Y,X : CMP !ram_enemy4_last_ypos
    BEQ .y4Finish : BMI .y4Up
    LDA !IH_ARROW_DOWN : STA !HUD_TILEMAP+$98
    BRA .y4Finish
  .y4Up
    LDA !IH_ARROW_UP : STA !HUD_TILEMAP+$98
  .y4Finish
    LDA !ENEMY_Y,X : STA !ram_enemy4_last_ypos

    RTS
}

status_wasteland:
{
    ; save a bunch of bytes/cycles by using 16bit addressing
    PHB : PEA $7E7E : PLB : PLB
    ; Suppress Samus HP display
    LDA !SAMUS_HP : STA.w !ram_last_hp

    LDA.w !ram_realtime_room : CMP #$0001 : BEQ .start
    LDA.w !ram_roomstrat_state : BEQ .done
    INC.w !ram_roomstrat_counter
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_SHOT : BNE .pressedshot
    PLB
    RTS

  .badstart
    STZ.w !ram_roomstrat_state
    LDA !IH_LETTER_X

  .clearhud
    STA.w !HUD_TILEMAP+$88 : STA.w !HUD_TILEMAP+$92
    LDA !IH_BLANK : STA.w !HUD_TILEMAP+$8A
    STA.w !HUD_TILEMAP+$8C : STA.w !HUD_TILEMAP+$8E
    STA.w !HUD_TILEMAP+$90 : STA.w !HUD_TILEMAP+$94
    STA.w !HUD_TILEMAP+$96 : STA.w !HUD_TILEMAP+$98
    PLB
    RTS

  .reset
    STZ.w !ram_roomstrat_state

  .done
    PLB
    RTS

  .start
    LDA !ROOM_ID : CMP.w #ROOM_Wasteland : BNE .reset
    LDA !SAMUS_X : CMP #$0564 : BNE .badstart
    LDA !SAMUS_Y : CMP #$0065 : BNE .badstart
    LDA !SAMUS_POSE : CMP #$0032 : BEQ .init
    CMP #$007E : BEQ .init
    CMP #$0080 : BNE .badstart

  .init
    STZ.w !ram_roomstrat_counter
    LDA #$0001 : STA.w !ram_roomstrat_state
    LDA !IH_LETTER_Y
    BRA .clearhud

  .incstate
    INC.w !ram_roomstrat_state
    PLB
    RTS

  .pressedshot
    LDA.w !ram_roomstrat_state : CMP #$0002 : BEQ .secondbomb
    LDA.w !ram_roomstrat_counter : CMP #$0084 : BPL .secondbomb
    CMP #$0048 : BPL .firstlate
    CMP #$003E : BEQ .boost
    BMI .firstearly
    SEC : SBC #$003E : ASL : TAX
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$94
    CPX #$000F : BPL .firsthigh
    STA.w !HUD_TILEMAP+$8A
    LDA !IH_LETTER_Y
    BRA .setfirstletters

  .firstlate
    SEC : SBC #$0047 : ASL : TAX
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$94
    INX #4
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$8A
    LDA !IH_LETTER_L

  .setfirstletters
    STA.w !HUD_TILEMAP+$88 : STA.w !HUD_TILEMAP+$92
    BRA .incstate

  .boost
    BRA .firstboost

  .firstearly
    LDA #$003F : SEC : SBC.w !ram_roomstrat_counter : ASL : TAX
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$8A : STA.w !HUD_TILEMAP+$94
    LDA !IH_LETTER_E : STA.w !HUD_TILEMAP+$88 : STA.w !HUD_TILEMAP+$92

  .ignore
    PLB
    RTS

  .secondbomb
    LDA.w !ram_roomstrat_counter
    CMP #$009C : BMI .ignore
    CMP #$011A : BPL .ignore
    CMP #$00DF : BPL .secondlate
    CMP #$00D6 : BMI .secondearly
    CMP #$00DD : BPL .secondhigh
    CMP #$00DA : BMI .secondlow
    JMP .secondgooddraw

  .firsthigh
    LDA.w !ram_roomstrat_counter
    SEC : SBC #$0045 : ASL : TAX
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$8A
    LDA !IH_LETTER_L : STA.w !HUD_TILEMAP+$88
    LDA !IH_LETTER_Y : STA.w !HUD_TILEMAP+$92
    JMP .incstate

  .firstboost
    LDX #$0002 : LDA.l NumberGFXTable,X
    STA.w !HUD_TILEMAP+$8A : STA.w !HUD_TILEMAP+$94
    LDA !IH_LETTER_E : STA.w !HUD_TILEMAP+$88
    LDA !IH_LETTER_B : STA.w !HUD_TILEMAP+$92

    ; Getting the boost shifts the RNG
    INC.w !ram_roomstrat_counter
    JMP .incstate

  .secondlate
    SEC : SBC #$00DE : ASL : TAX
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$98
    INX #4
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$8E
    LDA !IH_LETTER_L : STA.w !HUD_TILEMAP+$8C : STA.w !HUD_TILEMAP+$96
    JMP .reset

  .secondearly
    BRA .secondearlydraw

  .secondhigh
    BRA .secondhighdraw

  .secondlow
    BRA .secondlowdraw

  .secondearlydraw
    LDA #$00D6 : SEC : SBC.w !ram_roomstrat_counter : ASL : TAX
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$8E
    TXA : CLC : ADC #$0008 : TAX
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$98
    LDA !IH_LETTER_E : STA.w !HUD_TILEMAP+$8C : STA.w !HUD_TILEMAP+$96
    PLB
    RTS

  .secondhighdraw
    SEC : SBC #$00DC : ASL : TAX
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$8E
    TXA : CLC : ADC #$0006 : TAX
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$98
    LDA !IH_LETTER_L : STA.w !HUD_TILEMAP+$8C
    LDA !IH_LETTER_Y : STA.w !HUD_TILEMAP+$96
    JMP .reset

  .secondlowdraw
    SEC : SBC #$00D5 : ASL : TAX
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$8E
    LDA #$00DA : SEC : SBC.w !ram_roomstrat_counter : ASL : TAY
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$98
    LDA !IH_LETTER_Y : STA.w !HUD_TILEMAP+$8C
    LDA !IH_LETTER_E : STA.w !HUD_TILEMAP+$96
    JMP .reset

  .secondgooddraw
    SEC : SBC #$00D9 : ASL : TAX
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$98
    TXA : CLC : ADC #$0008 : TAX
    LDA.l NumberGFXTable,X : STA.w !HUD_TILEMAP+$8E
    LDA !IH_LETTER_Y : STA.w !HUD_TILEMAP+$8C : STA.w !HUD_TILEMAP+$96
    JMP .reset
}

status_ridleyai:
{
    ; check if Ridley's room
    LDA !ROOM_ID : CMP.w #ROOM_RidleyRoom : BNE .done

    ; load AI pointer and check if it matches the HUD
    LDA !ENEMY_FUNCTION_POINTER : CMP !ram_HUD_check : BNE .update_HUD

    ; fallbacks for convenience
    LDA !ENEMY_HP : BEQ .ridleygrab
    JMP status_enemyhp

  .done
    RTS

  .update_HUD
    STA !ram_HUD_check

    %ai8()
    ; use high byte of pointer to index prefix table
    XBA : SEC : SBC #$B2 : BCC .stall
    TAX : LDA.l RidleyAI_prefix_table,X : TAX
    %a16()

    LDA !ENEMY_FUNCTION_POINTER ; reload AI pointer
  .loop_pointers
    ; search table starting from prefix offset
    CMP.l RidleyAI_pointers,X : BEQ .found
    INX #2
    CPX #$34 : BCC .loop_pointers

    ; unknown AI pointer
    LDA.w #RidleyAIText_DEAD
    BRA .draw_branch

  .stall
    %ai16()
    LDA.w #RidleyAIText_WAIT
    BRA .draw_branch

  .ridleygrab
    ; display number of grab attempts
    LDA $7E800A : CMP !ram_roomstrat_counter : BEQ .done
    STA !ram_roomstrat_counter
    LDX #$008C : JSR Draw2
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    RTS

  .found
    LDA.l RidleyAI_text_table,X

  .draw_branch
    STA $C1 ; data address
    %ai8()
    LDA.b #RidleyAIText>>16 : STA $C3 ; data bank
    LDY #$00 : TYX
  .loop_text
    LDA [$C1],Y : CMP #$FF : BEQ .blank_tiles
    STA !HUD_TILEMAP+$B0,X ; tile ID
    LDA #$0C : STA !HUD_TILEMAP+$B1,X ; palette
    INY : INX #2
    BRA .loop_text

  .blank_tiles
    ; clear out any remaining tiles
    CPX #$1A : BPL .left_HUD
    %a16()
  .loop_blank
    LDA !IH_BLANK : STA !HUD_TILEMAP+$B0,X
    INX #2 : CPX #$1A : BMI .loop_blank

  .left_HUD
    %ai16()
    LDA !ENEMY_HP : BEQ .ridleygrab
    JMP status_enemyhp

; this data could live anywhere in the ROM
RidleyAI_pointers:
if !FEATURE_PAL
                                         ; B2 -> END
    dw $B303, $B331, $B3FC               ; [$00+6] B3
    dw $B408, $B451, $B465, $B4A3, $B4E1 ; [$06+A] B4
    dw $B526, $B564, $B5A4, $B5F5        ; [$10+8] B5
    dw $B623, $B6B7, $B6ED               ; [$18+6] B6
    dw $B71E, $B7C9                      ; [$1E+4] B7
                                         ; B8, B9 -> END
    dw $BAC7                             ; [$22+2] BA
    dw $BB9F, $BBD4                      ; [$24+4] BB
    dw $BC01, $BC3E, $BC64               ; [$28+6] BC
    dw $BD5E                             ; [$2E+2] BD
                                         ; BE, BF, C0, C1, C2, C3, C4 -> END
    dw $C50F, $C55F                      ; [$30+4] C5
else
    dw $B2F3                             ; [$00+2] B2
    dw $B321, $B3EC, $B3F8               ; [$02+6] B3
    dw $B441, $B455, $B493, $B4D1        ; [$08+8] B4
    dw $B516, $B554, $B594, $B5E5        ; [$10+8] B5
    dw $B613, $B6A7, $B6DD               ; [$18+6] B6
    dw $B70E, $B7B9                      ; [$1E+4] B7
                                         ; B8, B9 -> END
    dw $BAB7                             ; [$22+2] BA
    dw $BB8F, $BBC4, $BBF1               ; [$24+6] BB
    dw $BC2E, $BC54                      ; [$2A+4] BC
    dw $BD4E                             ; [$2E+2] BD
                                         ; BE, BF, C0, C1, C2, C3, C4 -> END
    dw $C538, $C588                      ; [$30+4] C5
endif

RidleyAI_prefix_table:
; Table to skip ahead to the correct entries based on the high byte
; Unused entries are filled with $32 (the last element in the table) to finish the search faster
if !FEATURE_PAL
    ;   B2   B3   B4   B5   B6   B7             BA   BB   BC   BD
    db $34, $00, $06, $10, $18, $1E, $34, $34, $22, $24, $28, $2E, $34, $34, $34, $34
    ;                  C5
    db $34, $34, $34, $30, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34
else
    ;   B2   B3   B4   B5   B6   B7             BA   BB   BC   BD
    db $00, $02, $08, $10, $18, $1E, $34, $34, $22, $24, $2A, $2E, $34, $34, $34, $34
    ;                  C5
    db $34, $34, $34, $30, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34, $34
endif

RidleyAI_text_table:
    dw #RidleyAIText_B2F3 ; liftoff
    dw #RidleyAIText_B321 ; choose ai
    dw #RidleyAIText_B3EC ; move
    dw #RidleyAIText_B3F8 ; move mid
    dw #RidleyAIText_B441 ; swoop start
    dw #RidleyAIText_B455 ; swoop positioning
    dw #RidleyAIText_B493 ; swoop dive
    dw #RidleyAIText_B4D1 ; swooping
    dw #RidleyAIText_B516 ; climb
    dw #RidleyAIText_B554 ; climbing
    dw #RidleyAIText_B594 ; swoop end
    dw #RidleyAIText_B5E5 ; hover
    dw #RidleyAIText_B613 ; hover spin
    dw #RidleyAIText_B6A7 ; pogo start
    dw #RidleyAIText_B6DD ; pogo ready
    dw #RidleyAIText_B70E ; pogo down
    dw #RidleyAIText_B7B9 ; pogo up
    dw #RidleyAIText_BAB7 ; lunge
    dw #RidleyAIText_BB8F ; grabbed
    dw #RidleyAIText_BBC4 ; grab move
    dw #RidleyAIText_BBF1 ; dropping
    dw #RidleyAIText_BC2E ; dropped
    dw #RidleyAIText_BC54 ; hover start
    dw #RidleyAIText_BD4E ; dodge power bomb
    dw #RidleyAIText_C538 ; dead move
    dw #RidleyAIText_C588 ; explode
    dw #RidleyAIText_DEAD ; end

RidleyAIText:
table ../resources/HUDfont.tbl
  .WAIT : db "STALLING"     : db $FF
  .B2F3 : db "LIFTOFF"      : db $FF
  .B321 : db "CHOOSE AI"    : db $FF
  .B3EC : db "MOVE"         : db $FF
  .B3F8 : db "MOVE TO MID"  : db $FF
  .B441 : db "SWOOP START"  : db $FF
  .B455 : db "SWOOP MOVE"   : db $FF
  .B493 : db "SWOOP DIVE"   : db $FF
  .B4D1 : db "SWOOPING"     : db $FF
  .B516 : db "CLIMB"        : db $FF
  .B554 : db "CLIMBING"     : db $FF
  .B594 : db "SWOOP END"    : db $FF
  .B5E5 : db "HOVER"        : db $FF
  .B613 : db "HOVER SPIN"   : db $FF
  .B6A7 : db "POGO START"   : db $FF
  .B6DD : db "POGO READY"   : db $FF
  .B70E : db "POGO DOWN"    : db $FF
  .B7B9 : db "POGO UP"      : db $FF
  .BAB7 : db "LUNGE"        : db $FF
  .BB8F : db "GRAB SAMUS"   : db $FF
  .BBC4 : db "GRAB MOVE"    : db $FF
  .BBF1 : db "DROP SAMUS"   : db $FF
  .BC2E : db "DROPPED"      : db $FF
  .BC54 : db "HOVER START"  : db $FF
  .BD4E : db "DODGE PB"     : db $FF
  .C538 : db "DEAD MOVE"    : db $FF
  .C588 : db "EXPLODE"      : db $FF
  .DEAD : db "END"          : db $FF
table ../resources/normal.tbl
}

status_draygonai:
{
    ; check if Draygon's room
    LDA !ROOM_ID : CMP.w #ROOM_DraygonRoom : BNE .done

    ; load AI pointer and check if it matches the HUD
    LDA !ENEMY_FUNCTION_POINTER : CMP !ram_HUD_check : BNE .update_HUD

    ; update enemy HP on idle frames
    JMP status_enemyhp

  .done
    RTS

  .update_HUD
    STA !ram_HUD_check

    %ai8()
    ; use high byte of pointer to index prefix table
    XBA : SEC : SBC #$87 : BCC .unknown
    TAX : LDA.l DraygonAI_prefix_table,X : TAX
    %a16()

    LDA !ENEMY_FUNCTION_POINTER ; reload AI pointer
  .loop_pointers
    ; search table starting from prefix offset
    CMP.l DraygonAI_pointers,X : BEQ .found
    INX #2
    CPX #$40 : BCC .loop_pointers

  .unknown
    ; unknown text pointer
    %ai16()
    LDA.w #DraygonAIText_UNKN
    BRA .draw_branch

  .found
    LDA.l DraygonAI_text_table,X

  .draw_branch
    STA $C1 ; data address
    %ai8()
    LDA.b #DraygonAIText>>16 : STA $C3 ; data bank
    LDY #$00 : TYX
  .loop_text
    LDA [$C1],Y : CMP #$FF : BEQ .blank_tiles
    STA !HUD_TILEMAP+$B0,X ; tile ID
    LDA #$0C : STA !HUD_TILEMAP+$B1,X ; palette
    INY : INX #2
    BRA .loop_text

  .blank_tiles
    ; clear out any remaining tiles
    CPX #$1A : BPL .left_HUD
    %a16()
  .loop_blank
    LDA !IH_BLANK : STA !HUD_TILEMAP+$B0,X
    INX #2 : CPX #$1A : BMI .loop_blank

  .left_HUD
    %ai16()
    JMP status_enemyhp

; this data could live anywhere in the ROM
DraygonAI_pointers:
if !FEATURE_PAL
    dw $872B, $879B                      ; [$00+6] 87
    dw $8804, $88C1                      ; [$04+2] 88
    dw $8932, $8961, $89C3               ; [$08+6] 89
    dw $8A10, $8A60, $8AA0               ; [$0E+6] 8A
    dw $8B1A, $8B62, $8BBE               ; [$14+6] 8B
    dw $8C43, $8C9E, $8CE4               ; [$1A+6] 8C
    dw $8D40, $8DC2                      ; [$20+4] 8D
    dw $8E29                             ; [$24+2] 8E
    dw $8F20, $8F2D, $8F2E, $8FE6        ; [$26+8] 8F
    dw $90E4                             ; [$2E+2] 90
    dw $9115, $9134, $9138, $9164, $9195 ; [$30+A] 91
    dw $92A4, $92BB                      ; [$3A+4] 92
                                         ; 93  ->  END
    dw $94B9                             ; [$3E+2] 94
else
    dw $871B, $878B, $87F4               ; [$00+6] 87
    dw $88B1                             ; [$06+2] 88
    dw $8922, $8951, $89B3               ; [$08+6] 89
    dw $8A00, $8A50, $8A90               ; [$0E+6] 8A
    dw $8B0A, $8B52, $8BAE               ; [$14+6] 8B
    dw $8C33, $8C8E, $8CD4               ; [$1A+6] 8C
    dw $8D30, $8DB2                      ; [$20+4] 8D
    dw $8E19                             ; [$24+2] 8E
    dw $8F10, $8F1D, $8F1E, $8FD6        ; [$26+8] 8F
    dw $90D4                             ; [$2E+2] 90
    dw $9105, $9124, $9128, $9154, $9185 ; [$30+A] 91
    dw $9294, $92AB                      ; [$3A+4] 92
                                         ; 93  ->  END
    dw $94A9                             ; [$3E+2] 94
endif

DraygonAI_prefix_table:
; Table to skip ahead to the correct entries based on the high byte
; Unused entries are filled with $40 (the last element in the table) to finish the search faster
if !FEATURE_PAL
    ;   87   88   89   8A   8B   8C   8D   8E   8F   90   91   92        94
    db $00, $04, $08, $0E, $14, $1A, $20, $24, $26, $2E, $30, $3A, $40, $3E
    db $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40 ; up to A1
else
    ;   87   88   89   8A   8B   8C   8D   8E   8F   90   91   92        94
    db $00, $06, $08, $0E, $14, $1A, $20, $24, $26, $2E, $30, $3A, $40, $3E
    db $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40, $40 ; up to A1
endif

DraygonAI_text_table:
    dw #DraygonAIText_871B ; INIT EVIRS
    dw #DraygonAIText_878B ; IDLE
    dw #DraygonAIText_87F4 ; SET SWOOP R
    dw #DraygonAIText_88B1 ; SWOOP RIGHTv
    dw #DraygonAIText_8922 ; SWOOP RIGHT>
    dw #DraygonAIText_8951 ; SWOOP RIGHT^
    dw #DraygonAIText_89B3 ; SET SWOOP L
    dw #DraygonAIText_8A00 ; SWOOP LEFT v
    dw #DraygonAIText_8A50 ; SWOOP LEFT <
    dw #DraygonAIText_8A90 ; SWOOP LEFT ^
    dw #DraygonAIText_8B0A ; SET GOOP R
    dw #DraygonAIText_8B52 ; GOOP R SEEK
    dw #DraygonAIText_8BAE ; GOOP R SPIT
    dw #DraygonAIText_8C33 ; GOOP R DONE
    dw #DraygonAIText_8C8E ; SET GOOP L
    dw #DraygonAIText_8CD4 ; GOOP L SEEK
    dw #DraygonAIText_8D30 ; GOOP L SPIT
    dw #DraygonAIText_8DB2 ; GOOP L DONE
    dw #DraygonAIText_8E19 ; CHASE SAMUS
    dw #DraygonAIText_9128 ; DROP SAMUS (duplicate)
    dw #DraygonAIText_8F1D ; NOTHING
    dw #DraygonAIText_8F1E ; GRAB START
    dw #DraygonAIText_8FD6 ; GRABBED
    dw #DraygonAIText_90D4 ; SPANK
    dw #DraygonAIText_9105 ; FINAL SPANK
    dw #DraygonAIText_94A9 ; HOLD SAMUS (duplicate)
    dw #DraygonAIText_9128 ; DROP SAMUS
    dw #DraygonAIText_9154 ; FLOAT AWAY
    dw #DraygonAIText_9185 ; WASTING TIME
    dw #DraygonAIText_9294 ; WAIT EVIRS
    dw #DraygonAIText_92AB ; SINK N FLOOR
    dw #DraygonAIText_94A9 ; HOLD SAMUS
    dw #DraygonAIText_UNKN ; UNKNOWN

DraygonAIText:
table ../resources/HUDfont.tbl
  .871B : db "INIT EVIRS"   : db $FF
  .878B : db "IDLE"         : db $FF
  .87F4 : db "SET SWOOP R"  : db $FF
  .88B1 : db "SWOOP RIGHTv" : db $FF
  .8922 : db "SWOOP RIGHT>" : db $FF
  .8951 : db "SWOOP RIGHT^" : db $FF
  .89B3 : db "SET SWOOP L"  : db $FF
  .8A00 : db "SWOOP LEFT v" : db $FF
  .8A50 : db "SWOOP LEFT <" : db $FF
  .8A90 : db "SWOOP LEFT ^" : db $FF
  .8B0A : db "SET GOOP R"   : db $FF
  .8B52 : db "GOOP R SEEK"  : db $FF
  .8BAE : db "GOOP R SPIT"  : db $FF
  .8C33 : db "GOOP R DONE"  : db $FF
  .8C8E : db "SET GOOP L"   : db $FF
  .8CD4 : db "GOOP L SEEK"  : db $FF
  .8D30 : db "GOOP L SPIT"  : db $FF
  .8DB2 : db "GOOP L DONE"  : db $FF
  .8E19 : db "CHASE SAMUS"  : db $FF
;  .8F10 : db "DROP SAMUS"   : db $FF
  .8F1D : db "NOTHING"      : db $FF
  .8F1E : db "GRAB START"   : db $FF
  .8FD6 : db "GRABBED"      : db $FF
  .90D4 : db "SPANK"        : db $FF
  .9105 : db "FINAL SPANK"  : db $FF
;  .9124 : db "HOLD SAMUS"   : db $FF
  .9128 : db "DROP SAMUS"   : db $FF
  .9154 : db "FLOAT AWAY"   : db $FF
  .9185 : db "WASTING TIME" : db $FF
  .9294 : db "WAIT EVIRS"   : db $FF
  .92AB : db "SINK N FLOOR" : db $FF
  .94A9 : db "HOLD SAMUS"   : db $FF
  .UNKN : db "UNKNOWN"      : db $FF
table ../resources/normal.tbl
}

status_downbackzeb:
{
    LDA !SAMUS_KNOCKBACK_TIMER : BEQ .zero_knockback
    CMP #$0005 : BEQ .start

  .done
    RTS

  .start
    ; Samus took damage, check horizontal position
    LDX !SAMUS_X : CPX #$0345 : BNE .done

    ; Start the vertical subpixel checks once knockback runs out
    STA !ram_roomstrat_state
    TDC : STA !ram_roomstrat_counter
    
    ; check horizontal position
    LDA !IH_LETTER_X
    LDX !SAMUS_X_SUBPX : BEQ .good_subx
    CPX #$8000 : BEQ .good_subx
    LDA !IH_LETTER_N
  .good_subx
    STA !HUD_TILEMAP+$8C
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    RTS

  .zero_knockback
    LDA !ram_roomstrat_state : BEQ .done

    LDA !ram_roomstrat_counter : TAX : BNE .check_downback

    ; Check vertical position
    LDA !IH_LETTER_Y
    LDY !SAMUS_Y : CPY #$0055 : BNE .bad_y
    LDY !SAMUS_Y_SUBPX : CPY #$A800 : BEQ .good_y
  .bad_y
    LDA !IH_LETTER_N
  .good_y
    STA !HUD_TILEMAP+$8E

  .check_downback
    ; Is the player downbacking?
    LDA !IH_CONTROLLER_PRI : AND #$0500 : CMP #$0500 : BEQ .downback

    ; Nope, timeout after 16 frames
    INX : CPX #$0010 : BEQ .reset
    TXA : STA !ram_roomstrat_counter
    RTS

  .downback
    ; knockback hits zero two frames before input matters
    TXA : ASL : SBC #$0003 : BPL .positive
    TDC
  .positive
    TAX : LDA NumberGFXTable,X : STA !HUD_TILEMAP+$90

  .reset
    TDC : STA !ram_roomstrat_counter : STA !ram_roomstrat_state
    RTS
}

status_zebskip:
{
    LDA !ROOM_ID : CMP.w #ROOM_MotherBrainRoom : BNE .end

    ; check if first zeb dead
    LDA $7ED820 : AND #$0038 : BNE .secondZeb

    ; check if X position is beyond first zeb
    ; exit if first zeb alive and X beyond first zeb
    LDA !SAMUS_X : CMP #$0334 : BPL .firstZeb

  .end
    RTS

  .firstZeb
    LDA !SAMUS_X : CMP #$0345 : BMI .stuck
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8E
    BRA .iFrames

  .secondZeb
    ; check if X is beyond 2nd zeb, exit if so
    LDA !SAMUS_X : CMP #$0274 : BMI .end
    CMP #$0285 : BMI .stuck
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    BRA .iFrames

  .stuck
    LDA !IH_STUCK_GREEN : STA !HUD_TILEMAP+$8E
    LDA !IH_BLANK : STA !HUD_TILEMAP+$90

  .iFrames
    LDA !SAMUS_IFRAME_TIMER : BEQ .noIframes
    AND #$00FF ; don't draw out-of-range garbage
    LDX #$0088 : JSR Draw2
    RTS

  .noIframes
    LDA !IH_NUMBER_ZERO_YELLOW : STA !HUD_TILEMAP+$8A
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88
    RTS
}

status_mbhp:
{
    LDA !ENEMY_HP+$40 : CMP !ram_mb_hp : BEQ .done : STA !ram_mb_hp
    LDX #$0088 : JSR Draw4

  .done
    RTS
}

status_twocries:
{
    LDA !ram_roomstrat_state : BEQ .start
    LDA !ENEMY_FUNCTION_POINTER : CMP #$BE96 : BMI .reset
    CMP #$BF95 : BPL .reset
    LDA $7E784C : CMP #$0005 : BMI .reset
    CMP #$0009 : BMI .check

  .reset
    TDC : STA !ram_roomstrat_state : STA !ram_quickdrop_counter
    RTS

  .start
    LDA !ENEMY_FUNCTION_POINTER : CMP #$BE96 : BNE .done
    LDA $7E784C : CMP #$0005 : BNE .done
    TDC : STA !ram_roomstrat_counter
    LDA #$0008 : STA !ram_roomstrat_state
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A : STA !HUD_TILEMAP+$8C
    STA !HUD_TILEMAP+$8E : STA !HUD_TILEMAP+$90
    RTS

  .wait
    LDA !SAMUS_Y_DIRECTION : BNE .done
    LDA #$0008 : STA !ram_roomstrat_state

  .done
    RTS

  .ignore
    LDA #$0009 : STA !ram_roomstrat_state
    RTS

  .check
    LDA !ram_roomstrat_counter : INC : STA !ram_roomstrat_counter
    LDA !SAMUS_ITEMS_EQUIPPED : AND #$0002 : BNE .havespringball
    JMP status_twocries_nosb

  .havespringball
    LDA !ram_roomstrat_state : CMP #$0008 : BEQ .firstcheck
    CMP #$0009 : BEQ .wait : BPL .done
    JMP .secondcheck

  .firstcheck
    LDA !SAMUS_Y_DIRECTION : CMP #$0001 : BNE .done
    LDA !ram_roomstrat_counter : CMP #$0052 : BMI .ignore
    CMP #$00D0 : BPL .ignore : CMP #$0094 : BPL .firstlate
    CMP #$008D : BMI .firstearly : BEQ .oneframeearly
    SEC : SBC #$008D : STA !ram_roomstrat_state
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    TDC : STA !ram_roomstrat_counter
    RTS

  .firstlate
    SEC : SBC #$0093 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$88
    JMP .donechecking

  .firstearly
    LDA #$008E : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$88
    JMP .donechecking

  .oneframeearly
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$8A
    LDA #$0007 : STA !ram_roomstrat_state
    TDC : STA !ram_roomstrat_counter

  .seconddone
    RTS

  .secondlate
    BNE .actuallylate
    LDA !ram_roomstrat_state : CMP #$0003 : BMI .notlate
    CMP #$0005 : BPL .notlate
    LDA !ram_roomstrat_counter

  .actuallylate
    SEC : SBC #$0098 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8C
    JMP .donechecking

  .notlate
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8E
    BRA .yesdonechecking

  .oneframeearlycheck
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_UP : BEQ .seconddone
    LDA !ram_roomstrat_counter : CMP #$0057 : BMI .seconddone
    CMP #$00D5 : BPL .seconddone : CMP #$0099 : BPL .actuallylate
    CMP #$0093 : BMI .secondearly : CMP #$0096 : BMI .scammed
    BRA .noscam

  .secondcheck
    CMP #$0007 : BEQ .oneframeearlycheck
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_UP : BEQ .seconddone
    LDA !ram_roomstrat_counter : CMP #$0057 : BMI .seconddone
    CMP #$00D5 : BPL .seconddone : CMP #$0099 : BPL .secondlate
    CMP #$0093 : BMI .secondearly : CMP #$0096 : BPL .checkscam

  .noscam
    SEC : SBC #$0092 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E

  .yesdonechecking
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8C

  .donechecking
    LDA #$000A : STA !ram_roomstrat_state
    RTS

  .scammed
    LDA !ram_roomstrat_counter : SEC : SBC #$0092
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$8C
    BRA .donechecking

  .checkscam
    LDA !ram_roomstrat_state : CMP #$0002 : BEQ .scammed
    LDA !ram_roomstrat_counter
    BRA .noscam

  .secondearly
    CMP #$0091 : BMI .actuallyearly
    LDA !ram_roomstrat_state : CMP #$0002 : BEQ .notearly
    CMP #$0006 : BEQ .notearly

  .actuallyearly
    LDA #$0093 : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$8C
    BRA .donechecking

  .notearly
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$8E
    BRA .yesdonechecking
}

status_twocries_nosb:
{
    LDA !ram_roomstrat_state : CMP #$0008 : BEQ .firstcheck
    CMP #$0009 : BEQ .wait : BPL .hangtimeonly
    JMP .secondcheck

  .firstscam
    SEC : SBC #$008D : STA !ram_roomstrat_state
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$88
    TDC : STA !ram_roomstrat_counter
    RTS

  .firstcheck
    LDA !SAMUS_Y_DIRECTION : CMP #$0001 : BNE .done
    LDA !ram_roomstrat_counter : CMP #$0052 : BMI .ignore
    CMP #$00D0 : BPL .ignore : CMP #$0094 : BPL .firstlate
    CMP #$008E : BMI .firstearly
    CMP #$0090 : BEQ .firstscam : CMP #$0091 : BEQ .firstscam
    SEC : SBC #$008D : STA !ram_roomstrat_state
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$88
    TDC : STA !ram_roomstrat_counter
    RTS

  .wait
    LDA !SAMUS_Y_DIRECTION : BNE .done
    LDA #$0008 : STA !ram_roomstrat_state

  .done
    RTS

  .hangtimeonly
    JMP .hangtime

  .ignore
    LDA #$0009 : STA !ram_roomstrat_state
    RTS

  .firstlate
    SEC : SBC #$0093 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$88
    JMP .donechecking

  .firstearly
    LDA #$008E : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8A
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$88
    JMP .donechecking

  .secondlate
    SEC : SBC #$0098 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_L : STA !HUD_TILEMAP+$8C
    BRA .donechecking

  .secondcheck
    LDA !SAMUS_Y : CMP #$003C : BPL .secondcheckclearhangtime
    LDA !SAMUS_Y_DIRECTION : CMP #$0001 : BNE .secondcheckclearhangtime
    LDA !ram_quickdrop_counter : INC : STA !ram_quickdrop_counter
    LDX #$008C : JSR Draw2
    BRA .secondcheckunmorph

  .secondcheckclearhangtime
    TDC : STA !ram_quickdrop_counter

  .secondcheckunmorph
    LDA !IH_CONTROLLER_PRI_NEW : AND !IH_INPUT_UP : BEQ .seconddone
    LDA !ram_roomstrat_counter : CMP #$0057 : BMI .seconddone
    CMP #$00D5 : BPL .seconddone : CMP #$0098 : BEQ .checkscam : BPL .secondlate
    CMP #$0093 : BMI .secondearly : CMP #$0095 : BMI .checkscam

  .noscam
    SEC : SBC #$0092 : ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E

  .yesdonechecking
    LDA !ram_roomstrat_state : CMP #$0003 : BEQ .scamdonechecking
    CMP #$0004 : BEQ .scamdonechecking
    LDA !IH_LETTER_Y : STA !HUD_TILEMAP+$8C

  .donechecking
    LDA #$000A : STA !ram_roomstrat_state

  .seconddone
    RTS

  .scammed
    LDA !ram_roomstrat_counter : SEC : SBC #$0092
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E

  .scamdonechecking
    LDA !IH_LETTER_X : STA !HUD_TILEMAP+$8C
    BRA .donechecking

  .checkscam
    LDA !ram_roomstrat_state : CMP #$0002 : BEQ .noscamprep
    CMP #$0006 : BNE .scammed

  .noscamprep
    LDA !ram_roomstrat_counter
    BRA .noscam

  .notearly
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$8E
    BRA .yesdonechecking

  .secondearly
    CMP #$0092 : BMI .actuallyearly
    LDA !ram_roomstrat_state : CMP #$0002 : BEQ .notearly
    CMP #$0006 : BEQ .notearly

  .actuallyearly
    LDA #$0093 : SEC : SBC !ram_roomstrat_counter
    ASL : TAY : LDA.w NumberGFXTable,Y : STA !HUD_TILEMAP+$8E
    LDA !IH_LETTER_E : STA !HUD_TILEMAP+$8C
    BRA .donechecking

  .hangtime
    LDA !SAMUS_Y : CMP #$003C : BPL .clearhangtime
    LDA !SAMUS_Y_DIRECTION : CMP #$0001 : BNE .clearhangtime
    LDA !ram_quickdrop_counter : INC : STA !ram_quickdrop_counter
    LDX #$008C : JSR Draw2
    RTS

  .clearhangtime
    TDC : STA !ram_quickdrop_counter
    RTS
}

status_door_hspeed:
{
    ; subspeed + submomentum into low byte of Hspeed
    LDA !SAMUS_X_SUBRUNSPEED : CLC : ADC !SAMUS_X_SUBMOMENTUM
    AND #$FF00 : XBA : STA !ram_momentum_sum

    ; speed + momentum + carry into high byte of Hspeed
    LDA !SAMUS_X_RUNSPEED : ADC !SAMUS_X_MOMENTUM
    AND #$00FF : XBA : ORA !ram_momentum_sum

    ; draw whole number in decimal
    AND #$FF00 : XBA
    STA $4204
    %a8()
    ; divide by 10
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math

    ; draw integer speed value
    LDA $4214 : BEQ .blanktens
    ; tens digit
    ASL : TAX
    LDA.l NumberGFXTable,X : STA !HUD_TILEMAP+$88
    ; ones digit
    LDA $4216 : ASL : TAX
    LDA.l NumberGFXTable,X : STA !HUD_TILEMAP+$8A
    BRA .subspeed

  .blanktens
    ; ones digit
    LDA $4216 : ASL : TAX
    LDA.l NumberGFXTable,X : STA !HUD_TILEMAP+$8A
    ; tens digit
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88

  .subspeed
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$8C

    ; draw fraction in hex
    LDA !ram_momentum_sum : AND #$00F0 : LSR #3 : TAX
    LDA.l HexGFXTable,X : STA !HUD_TILEMAP+$8E

  .done
    RTS
}

status_door_vspeed:
{
    ; draw two digits of speed in decimal form
    LDA !SAMUS_Y_SPEED : STA $4204
    %a8()
    ; divide by 10
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4214 : BEQ .blanktens
    ASL : TAX
    LDA.l NumberGFXTable,X : STA !HUD_TILEMAP+$88

    ; Ones digit
    LDA $4216 : ASL : TAY
    LDA.l NumberGFXTable,X : STA !HUD_TILEMAP+$8A
    BRA .subspeed

  .blanktens
    LDA $4216 : ASL : TAX
    LDA.l NumberGFXTable,X : STA !HUD_TILEMAP+$88
    LDA !IH_BLANK : STA !HUD_TILEMAP+$8A

  .subspeed
    LDA !IH_DECIMAL : STA !HUD_TILEMAP+$8A

    LDA !SAMUS_Y_SUBSPEED : XBA : AND #$00F0 : LSR #3 : TAY
    LDA.l HexGFXTable,X : STA !HUD_TILEMAP+$8C

    RTS
}

status_door_chargetimer:
{
    LDA !SAMUS_CHARGE_TIMER : CMP #$003C : BPL .charged
    LDA #$003C : SEC : SBC !SAMUS_CHARGE_TIMER
    LDX #$0088 : JMP Draw4

  .charged
    LDA !IH_BLANK : STA !HUD_TILEMAP+$88 : STA !HUD_TILEMAP+$8A
    LDA !IH_SHINESPARK : STA !HUD_TILEMAP+$8C
    LDA !SAMUS_CHARGE_TIMER : SEC : SBC #$003C
    ASL : TAX : LDA NumberGFXTable,X : STA !HUD_TILEMAP+$8E
    RTS
}

status_door_shinetimer:
{
    LDA !ram_armed_shine_duration : LDX #$0088 : JMP Draw4
}

status_door_dashcounter:
{
    LDA !SAMUS_DASH_COUNTER : LDX #$0088 : JMP Draw4
}

status_door_xpos:
{
    LDA !SAMUS_X : LDX #$0088 : JMP Draw4Hex
}

status_door_ypos:
{
    LDA !SAMUS_Y : LDX #$0088 : JMP Draw4Hex
}

