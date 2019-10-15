; $82:8963 AD 98 09    LDA $0998  [$7E:0998]  ;\
; $82:8966 29 FF 00    AND #$00FF             ;|
org $828963
    JSL gamemode_start : BCS end_of_normal_gameplay
org $82896E
    end_of_normal_gameplay:

org $85A000
print pc, " gamemode start"
gamemode_start:
{
    PHB
    PHK : PLB

    JSR gamemode_shortcuts
    %ai16()
    PHP

    LDA !ram_load_preset : BEQ +

    JSL preset_load

    +
    LDA $0998 : AND #$00FF
    PLP
    PLB
    RTL
}

gamemode_shortcuts:
{
    LDA !ram_ctrl1_filtered : BNE +

    CLC : RTS

  + LDA !ram_ctrl1 : CMP !sram_ctrl_save_state : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    if !FEATURE_SD2SNES
        JMP .save_state
    endif

  + LDA !ram_ctrl1 : CMP !sram_ctrl_load_state : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    if !FEATURE_SD2SNES
        JMP .load_state
    endif


  + LDA !ram_ctrl1 : AND !sram_ctrl_kill_enemies : CMP !sram_ctrl_kill_enemies : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    JMP .kill_enemies

  + LDA !ram_ctrl1 : AND !sram_ctrl_load_last_preset : CMP !sram_ctrl_load_last_preset : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    JMP .load_last_preset

  + LDA !ram_ctrl1 : AND !sram_ctrl_reset_segment_timer : CMP !sram_ctrl_reset_segment_timer : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    JMP .reset_segment_timer

  + LDA !ram_ctrl1 : AND !sram_ctrl_full_equipment : CMP !sram_ctrl_full_equipment : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    JMP .full_equipment

  + LDA !ram_ctrl1 : AND !sram_ctrl_menu : CMP !sram_ctrl_menu : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    JMP .menu

  + CLC : RTS

  .save_state
    ; This if statement is to prevent an assembler error from an unknown method. The one on the call to this
    ; prevents the button combo from being intercepted by the non-sd2snes rom
    if !FEATURE_SD2SNES
        JSL save_state
    endif
    SEC : RTS

  .load_state
    if !FEATURE_SD2SNES
        JSL load_state
    endif
    SEC : RTS

  .kill_enemies
    LDA #$0000
    -
    TAX
    LDA $0F86,X : ORA #$0200 : STA $0F86,X
    TXA : CLC : ADC #$0040 : CMP #$0400 : BNE -

    CLC : RTS

  .load_last_preset
    LDA !sram_last_preset : STA !ram_load_preset
    SEC : RTS

  .reset_segment_timer
    LDA #$0000
    STA !ram_seg_rt_frames
    STA !ram_seg_rt_seconds
    STA !ram_seg_rt_minutes
    CLC : RTS

  .full_equipment
    LDA $7E09C4 : STA $7E09C2 ; health
    LDA $7E09C8 : STA $7E09C6 ; missiles
    LDA $7E09CC : STA $7E09CA ; supers
    LDA $7E09D0 : STA $7E09CE ; pbs
    LDA $7E09D4 : STA $7E09D6 ; reserves
    CLC : RTS

  .menu
    ; Set IRQ vector
    LDA $AB : PHA
    LDA #$0004 : STA $AB

    ; Enter MainMenu
    JSL cm_start

    ; Restore IRQ vector
    PLA : STA $AB

    SEC : RTS
}
print pc, " gamemode end"
