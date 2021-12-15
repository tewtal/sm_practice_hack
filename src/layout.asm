
; Swap Enemy HP to MB HP when entering MB's room
org $83AAD2
    dw #layout_asm_mbhp

; Magnet Stairs left door asm pointer
org $83AB6E
    dw #layout_asm_magnetstairs

; Magnet Stairs right door asm pointer
org $83AB92
    dw #layout_asm_magnetstairs


org $8FEA00 ; free space for door asm
print pc, " layout start"

layout_asm_mbhp:
{
    LDA !sram_display_mode : BNE .done
    LDA #!IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
    LDA #!IH_STRAT_MBHP_INDEX : STA !sram_room_strat

  .done
    RTS
}

layout_asm_magnetstairs:
{
    LDA !ram_cm_magnetstairs : BEQ .done
    PHP : %a8()
    LDA #$47 : STA $7F01F8 : STA $7F02EA
    LDA #$10 : STA $7F01F9 : STA $7F02EB
    LDA #$53 : STA $7F64FD : STA $7F6576
    PLP

  .done
    RTS
}

print pc, " layout end"

