
; Green Hill Zone top-left door asm pointer
org $838DF4
    dw #layout_asm_greenhillzone

; Green Hill Zone top-right door asm pointer
org $838EA8
    dw #layout_asm_greenhillzone

; Green Hill Zone bottom-right door asm pointer
org $838F08
    dw #layout_asm_greenhillzone

; Caterpillar middle-left door asm pointer
org $839094
    ; Use same asm as elevator door, freeing up asm at $BE1A
    dw $BA21

; Caterpillar top-left door asm pointer
org $8390E8
    dw #layout_asm_caterpillar_no_scrolls

; Caterpillar near-right door asm pointer
org $839274
    dw #layout_asm_caterpillar_no_scrolls

; Single Chamber top-left door asm pointer
org $83958C
    dw #layout_asm_singlechamber

; Single Chamber near-top-right door asm pointer
org $839610
    dw #layout_asm_singlechamber

; Single Chamber near-middle-right door asm pointer
org $83961C
    dw #layout_asm_singlechamber

; Single Chamber near-bottom-right door asm pointer
org $839640
    dw #layout_asm_singlechamber

; Single Chamber far-top-right door asm pointer
org $839A54
    dw #layout_asm_singlechamber

; Crab Tunnel left door asm pointer
org $83A3B2
    dw #layout_asm_crabtunnel

; Crab Tunnel right door asm pointer
org $83A502
    dw #layout_asm_crabtunnel

; Swap Enemy HP to MB HP when entering MB's room
org $83AAD2
    dw #layout_asm_mbhp

; Magnet Stairs left door asm pointer
org $83AB6E
    dw #layout_asm_magnetstairs

; Magnet Stairs right door asm pointer
org $83AB92
    dw #layout_asm_magnetstairs


; Caterpillar elevator and middle-left door asm
org $8FBA26
    ; Replace STA with jump to STA
    JMP layout_asm_caterpillar_update_scrolls

; Caterpillar bottom-left door asm
org $8FBE18
    ; Overwrite PLP : RTS with jump
    ; Okay to overwrite $BE1A since we freed up that space
    JMP layout_asm_caterpillar_after_scrolls

; Caterpillar far-right door asm
org $8FE370
    ; Optimize existing logic by one byte
    INC : STA $7ECD2A
    ; Overwrite extra byte : PLP : RTS with jump
    JMP layout_asm_caterpillar_after_scrolls


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
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_MAGNET_STAIRS : BEQ .done

    ; Modify graphics to indicate magnet stairs removed
    %a8()
    LDA #$47 : STA $7F01F8 : STA $7F02EA

    ; Convert solid tiles to slope tiles
    LDA #$10 : STA $7F01F9 : STA $7F02EB
    LDA #$53 : STA $7F64FD : STA $7F6576

  .done
    PLP
    RTS
}

layout_asm_greenhillzone:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .done

    ; Remove gate and corner tile next to gate
    LDA #$00FF : STA $7F37C8 : STA $7F37CA : STA $7F37CC
    STA $7F38CA : STA $7F39CA : STA $7F3ACA : STA $7F3BCA

    ; Clear gate PLMs and projectiles
    LDA #$0000 : STA $1C83 : STA $1C85 : STA $19B9

    ; Add platform for ease of access to top-right door
    %a8()
    LDA #$6A : STA $7F0F24 : LDA #$6C : STA $7F0F26
    LDA #$81 : STA $7F0F25 : STA $7F0F27

    ; Move corner tiles next to gate up one
    LDA #$78 : STA $7F36CA : LDA #$79 : STA $7F36CC

    ; Normal BTS for gate tiles
    LDA #$00 : STA $7F7FE5 : STA $7F7FE6
    STA $7F8066 : STA $7F80E6 : STA $7F8166 : STA $7F81E6

  .done
    PLP
    RTS
}

layout_asm_caterpillar_no_scrolls:
{
    PHP
    BRA layout_asm_caterpillar_after_scrolls
}

layout_asm_caterpillar_update_scrolls:
{
    STA $7ECD26
}

layout_asm_caterpillar_after_scrolls:
{
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .done

    ; Decorate gap with blocks
    LDA #$8562 : STA $7F145E : STA $7F1460 : STA $7F151E : STA $7F1520

    ; Fix wall decoration below blocks
    LDA #$8543 : STA $7F157E : LDA #$8522 : STA $7F1580

    ; Create visible gap in wall
    LDA #$00FF : STA $7F14BE : STA $7F14C0

    ; Remove gate and block next to gate
    STA $7F142C : STA $7F142E : STA $7F1430
    STA $7F148E : STA $7F14EE : STA $7F154E : STA $7F15AE

    ; Clear gate PLMs and projectiles
    LDA #$0000 : STA $1C7B : STA $1C7D : STA $19B9

    ; Normal BTS for gate tiles
    %a8()
    LDA #$00 : STA $7F6E17 : STA $7F6E18 : STA $7F6E19
    STA $7F6E48 : STA $7F6E78 : STA $7F6EA8 : STA $7F6ED8

  .done
    PLP
    RTS
}

layout_asm_singlechamber:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .done

    ; Move right wall back one to create a ledge
    LDA #$810C : STA $7F06E0 : STA $7F0A9E
    LDA #$8507 : STA $7F07A0 : STA $7F0920
    DEC : DEC : STA $7F0860 : STA $7F09E0

    ; Clear out the ledge
    LDA #$00FF : STA $7F06DE : STA $7F079E
    STA $7F085E : STA $7F091E : STA $7F09DE

    ; Remove crumble blocks from vertical shaft
    STA $7F05E0 : STA $7F05E2
    STA $7F06A0 : STA $7F06A2 : STA $7F0760 : STA $7F0762

    ; Remove blocks from horizontal shaft
    STA $7F061E : STA $7F0620 : STA $7F0624
    ; Careful with the block that is also a scroll block
    LDA #$30FF : STA $7F0622

    ; Normal BTS for crumble blocks
    %a8()
    INC : STA $7F66F1 : STA $7F66F2
    STA $7F6751 : STA $7F6752 : STA $7F67B1 : STA $7F67B2

  .done
    PLP
    RTS
}

layout_asm_crabtunnel:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .done

    ; Replace top of gate with slope tiles
    LDA #$1D87 : STA $7F039C : LDA #$1987 : STA $7F039E

    ; Remove remaining gate tiles
    LDA #$00FF : STA $7F041E : STA $7F049E : STA $7F051E : STA $7F059E

    ; Clear gate PLMs and projectiles
    LDA #$0000 : STA $1C83 : STA $1C85 : STA $19B9

    ; Slope BTS for top of the gate tiles
    %a8()
    LDA #$D2 : STA $7F65CF : LDA #$92 : STA $7F65D0

    ; Normal BTS for remaining gate tiles
    LDA #$00 : STA $7F6610 : STA $7F6650 : STA $7F6690 : STA $7F66D0

  .done
    PLP
    RTS
}

print pc, " layout end"

