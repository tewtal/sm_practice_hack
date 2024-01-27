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
; with a modification that it can adjust the sprite propery flags
; It's a copy so that it only affects Samus, and only adds a single instruction,
; although that instruction is in a loop so we still want to avoid it by default.
; If no sprite modification is needed then we'll jump back to the vanilla routine.
; It also turns out setting the bank is unnecessary so we can skip those instructions.
oam_add_samus_sprite_with_prio:
    STY $12           ; $12 = [Y] (Y position of spritemap centre)
    STX $14           ; $14 = [X] (X position of spritemap centre)
    ASL               ;\
    TAX               ;} Y = [$92:808D + [A] * 2] (address of spritemap)
    LDY $808D,X       ;/

    LDA !sram_sprite_prio_flag : BNE .modify
    PHB : JMP $89BD

  .modify
    LDA $0000,Y       ;\
    BEQ .end          ;} If [[Y]] = 0: return
    STA $18           ; $18 = [[Y]] (size)
    INY               ;\
    INY               ;} Y += 2
    LDX $0590         ; X = OAM data index
    CLC

  .loop
    LDA $0000,Y       ;\
    ADC $14           ;} OAM data entry X position = [[Y]] + [$14] (X position)
    STA $0370,X       ;/
    AND #$0100        ;\
    BEQ .l3           ;} If [OAM data entry X position] & 100h:
    LDA $0000,Y       ;\
    BPL .l2           ;} If [[Y]] & 8000h (size bit) != 0:
    LDA $81859F,X     ;\
    STA $16           ;|
    LDA ($16)         ;} Set OAM entry high X position bit and size bit
    ORA $8185A1,X     ;|
    STA ($16)         ;/
    JMP .l4

  .l2
    LDA $81859F,X     ;\ Else (size bit = 0):
    STA $16           ;|
    LDA ($16)         ;} Set OAM entry high X position bit
    ORA $81839F,X     ;|
    STA ($16)         ;/
    JMP .l4

  .l3     
    LDA $0000,Y       ;\ Else (X position & 100h == 0):
    BPL $0E           ;} If [[Y]] & 8000h (size bit) != 0:
    LDA $81859F,X     ;\
    STA $16           ;|
    LDA ($16)         ;} Set OAM entry size bit
    ORA $8183A1,X     ;|
    STA ($16)         ;/

  .l4
    LDA $0002,Y       ;\
    CLC               ;|
    ADC $12           ;} OAM entry Y position = [[Y] + 2] + [$12] (Y position)
    STA $0371,X       ;/
    LDA $0003,Y       ;\
    ORA !sram_sprite_prio_flag
    STA $0372,X       ;} OAM entry tile number and attributes = [[Y] + 3]
    TYA               ;\
    CLC               ;|
    ADC #$0005        ;} Next sprite map entry
    TAY               ;/
    TXA               ;\
    ADC #$0004        ;|
    AND #$01FF        ;} Next OAM index
    TAX               ;/
    DEC $18           ;\
    BNE .loop         ;} If not processed all sprite map entries: next!
    STX $0590         ; OAM index = [X]

  .end
    RTL

print pc, " spriteprio end"
warnpc $81F000 ; init.asm

