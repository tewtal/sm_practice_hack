; hooks

; $90:861C 22 AE 89 81 JSL $8189AE[$81:89AE]  ; Add Samus spritemap to OAM
org $90861C
    JSL oam_add_samus_sprite_with_prio

; $90:8643 22 AE 89 81 JSL $8189AE[$81:89AE]  ; Add Samus spritemap to OAM
org $908643
    JSL oam_add_samus_sprite_with_prio


org $81EF20
print pc, " spriteprio start"

; This is a copy of the code that adds samus spritemap to the OAM buffer
; ($8189AE) with a modification that it can adjust the sprite propery flags
; It's a copy so that it only affects Samus, and only adds a single instruction,
; although that instruction is in a loop so we still want to avoid it by default.
; If no sprite modification is needed then we'll jump back to the vanilla routine.
; It also turns out setting the bank is unnecessary so we can skip those instructions.
oam_add_samus_sprite_with_prio:
{
    STY $12           ; $12 = [Y] (Y position of spritemap centre)
    STX $14           ; $14 = [X] (X position of spritemap centre)
    ASL : TAX
    LDY $808D,X       ; Y = [$92:808D + [A] * 2] (address of spritemap)

    LDA !sram_sprite_prio_flag : BNE .modify
    PHB : JMP $89BD   ; Jump back to vanilla routine, which does a PLB at the end

  .modify
    LDA $0000,Y : BEQ .end
    STA $18           ; $18 = [[Y]] (size)
    INY : INY
    LDX !OAM_STACK_POINTER
    CLC

  .loop
    ; OAM data entry X position = spritemap pointer + X position
    LDA $0000,Y : ADC $14 : STA $0370,X
    ; If [OAM data entry X position] & 100h:
    AND #$0100 : BEQ .l3
    ; If [Y] & 8000h (size bit) != 0:
    LDA $0000,Y : BPL .l2

    LDA $81859F,X : STA $16
    ; Set OAM entry high X position bit and size bit
    LDA ($16) : ORA $8185A1,X : STA ($16)
    JMP .l4

  .l2
    ; size bit = 0
    LDA $81859F,X : STA $16
    ; set OAM entry high X position bit
    LDA ($16) : ORA $81839F,X : STA ($16)
    JMP .l4

  .l3
    ; X position & 100h == 0
    ; If [Y] & 8000h (size bit) != 0:
    LDA $0000,Y : BPL .l4
    LDA $81859F,X : STA $16
    ; Set OAM entry size bit
    LDA ($16) : ORA $8183A1,X : STA ($16)

  .l4
    ; OAM entry Y position
    LDA $0002,Y : CLC : ADC $12 : STA $0371,X
    ; OAM entry tile number and attributes
    LDA $0003,Y : ORA !sram_sprite_prio_flag : STA $0372,X
    ; Next sprite map entry
    TYA : CLC : ADC #$0005
    ; Next OAM index
    TAY : TXA : ADC #$0004 : AND #$01FF : TAX

    ; If not processed all sprite map entries: next!
    DEC $18 : BNE .loop
    STX !OAM_STACK_POINTER

  .end
    RTL
}

print pc, " spriteprio end"
warnpc $81F000 ; init.asm

