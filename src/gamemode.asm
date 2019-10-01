; $82:8963 AD 98 09    LDA $0998  [$7E:0998]  ;\
; $82:8966 29 FF 00    AND #$00FF             ;|
org $828963
    JSL gamemode_start : BCS end_of_normal_gameplay
org $82896E
    end_of_normal_gameplay:

org $85A000
print "gamemode start ", pc
gamemode_start:
{
    JSR gamemode_shortcuts
    %ai16()
    PHP

    LDA !ram_load_preset : BEQ +

    JSL preset_load

    +
    LDA $0998 : AND #$00FF
    PLP
    RTL
}

gamemode_shortcuts:
{
    LDA !ram_ctrl1_filtered : BNE +

    CLC : RTS

  + LDA !ram_ctrl1 : AND !sram_ctrl_save_state : CMP !sram_ctrl_save_state : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    JMP .save_state

  + LDA !ram_ctrl1 : AND !sram_ctrl_load_state : CMP !sram_ctrl_load_state : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    JMP .load_state

  + LDA !ram_ctrl1 : AND !sram_ctrl_kill_enemies : CMP !sram_ctrl_kill_enemies : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    JMP .kill_enemies

  + LDA !ram_ctrl1 : AND !sram_ctrl_load_last_preset : CMP !sram_ctrl_load_last_preset : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    JMP .load_last_preset

  + LDA !ram_ctrl1 : AND !sram_ctrl_reset_segment_timer : CMP !sram_ctrl_reset_segment_timer : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    JMP .reset_segment_timer

  + LDA !ram_ctrl1 : AND !sram_ctrl_reequip : CMP !sram_ctrl_reequip : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    JMP .reequip

  + LDA !ram_ctrl1 : AND !sram_ctrl_menu : CMP !sram_ctrl_menu : BNE +
    AND !ram_ctrl1_filtered : BEQ +
    JMP .menu

  + CLC : RTS

  .save_state
    JSL save_state
    CLC : RTS

  .load_state
    JSL load_state
    CLC : RTS

  .kill_enemies
    LDA #$0000
    -
    TAX
    LDA $0F86,X : ORA #$0200 : STA $0F86,X
    TXA : CLC : ADC #$0040 : CMP #$0400 : BNE -

    CLC : RTS

  .load_last_preset
    LDA !sram_last_preset : STA !ram_load_preset
    CLC : RTS

  .reset_segment_timer
    LDA #$0000
    STA !ram_seg_rt_frames
    STA !ram_seg_rt_seconds
    STA !ram_seg_rt_minutes
    CLC : RTS

  .reequip
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
print "gamemode end ", pc
