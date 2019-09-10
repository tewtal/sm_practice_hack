; Skips the waiting time after teleporting
org $90E870
    JMP $E898


; Skips fade in when teleporting
org $828106
    JSL hook_after_teleport
    NOP : NOP


; Preset hook
org $82805B
    JSL teleport_hook


org $DFDA00
hook_after_teleport:
    LDA #$0008
    STA $0998
    SEP #$20
    LDA #$0F : STA $51
    REP #$20
    RTL


teleport_hook:
    LDA !ram_load_preset : BNE .create_delta_path

    JML $80C437

  ; traverse linked list and push which deltas to apply to $7FF000
  .create_delta_path
  PHB
  PHK : PLB
    LDA #$0000 : STA !ram_load_preset
    LDX #$0000
  .loop_path
    LDA $C1 : STA $7FF000,X
    INX #2
    LDA ($C1) : STA $C1 : BNE .loop_path

  ; then traverse $7FF000 from the first delta until the last one, and apply them
  .loop_deltas
    DEX #2 : BMI .done
    JSR delta_to_memory
    BRA .loop_deltas

  .done
  PLB
    RTL


delta_to_memory:
  PHX
    LDA $7FF000,X
    INC #2 : TAX

  .loop
    LDA $DF0000,X : CMP #$FFFF : BEQ .done : STA $C3
    LDA $DF0002,X : STA $C5
    LDA $DF0003,X : AND #$00FF : CMP #$0001 : BEQ .one

  .two
    LDA $DF0004,X : STA [$C3]
    INX #6
    BRA .loop

  .one
    %a8()
    LDA $DF0005,X : STA [$C3]
    %a16()
    INX #5
    BRA .loop

  .done
  PLX
    RTS


incsrc delta_data.asm
