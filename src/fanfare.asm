org $84EFD9
print pc, " fanfare restore start"
  .prepareloop
    PHX              ; start of logic that was overwritten
    LDX #$000E

  .clearloop
    STZ $0619,x
    STZ $0629,x
    DEX
    DEX
    BPL .clearloop
    BRL .continue    ; jump back to the original logic

print pc, " fanfare restore end"

; $84:8BDD: Instruction - clear music queue and queue music track [[Y]] ;;;
org $848BDD
    PHA
    LDA !sram_fanfare_toggle : BNE .playfanfare
    PLA
    INY              ; increment over fanfare byte and continue without fanfare
    RTS

  .playfanfare
    PLA
    BRL .prepareloop

warnpc $848BEB       ; we are only overwriting original logic up to this point

; $84:8BEB: Resume original logic
org $848BEB
  .continue


; $85:8493 20 36 81    JSR $8136  [$85:8136]
org $858493
    JSR hook_message_box_wait
    BRA $0B


; $82:E126: Logic to queue room music after fanfare
org $82E126
    JSL hook_resume_room_music
    BRA $08


org $85FF00
print pc, " fanfare start"
hook_message_box_wait:
    LDA !sram_fanfare_toggle : BNE .fanfareloop
    LDX #$0020       ; shorten message box length

  .nofanfareloop     ; skipping fanfare, so no need to mess with sound
    JSR $8136
    DEX
    BNE .nofanfareloop
    RTS

  .fanfareloop       ; original logic
    JSR $8136
    PHX
    JSL $808F0C
    JSL $8289EF
    PLX
    DEX
    BNE .fanfareloop
    RTS


hook_resume_room_music:
    LDA !sram_fanfare_toggle : BNE .resume

    ; This method is also used when starting game at Ceres
    LDA $7ED914 : CMP #$001F : BEQ .resume
    RTL

  .resume
    LDA #$0000       ; original logic to queue room music after fanfare
    JSL $808FF7
    LDA $07F5
    JSL $808FC1
    RTL

print pc, " fanfare end"

