
; Crab Shaft save station load point
org $80C995
    db #$A3, #$D1, #$68, #$A4, #$00, #$00, #$00, #$00, #$00, #$02, #$78, #$00, #$60, #$00

; Main Street save station load point
org $80C9A3
    db #$C9, #$CF, #$D8, #$A3, #$00, #$00, #$00, #$01, #$00, #$05, #$78, #$00, #$10, #$00

; Crab Shaft save station map icon location
org $82CA17
    db #$90, #$00, #$50, #$00

; Main Street save station map icon location
org $82CA1B
    db #$58, #$00, #$78, #$00

; Hijack room transition between loading level data and setting up scrolling
org $82E388
    dw hijack_after_load_level_data

; Hijack call to create door closing PLM
org $82E4C9
    JSR hijack_door_closing_plm


org $82F800
print pc, " layout bank82 start"

hijack_after_load_level_data:
{
    LDA $079B : CMP #$D6FD : BNE .done
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .done

    ; Aqueduct Farm Sand Pit needs to be handled before the door scroll
    JSL layout_asm_aqueductfarmsandpit_external

  .done
    JMP $E38E
}

hijack_door_closing_plm:
{
    PHP : PHB
    %ai16()
    LDA $078D : CMP #$A654 : BNE .done
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BNE .done

    ; Aqueduct Farm Sand Pit should not have a door closing PLM
    ; if using the warp door while Area Rando off
    PLB : PLP : RTS

  .done
    JMP $E8EF
}

print pc, " layout bank82 end"
warnpc $82FA00


; East Ocean left door asm pointer
org $838A88
    dw #layout_asm_eastocean

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

; East Tunnel bottom-right door asm pointer
org $839238
    ; Use same asm as bottom-left door
    dw $E345

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

; East Ocean right door asm pointer
org $83A26E
    dw #layout_asm_eastocean

; Main Street bottom door asm pointer
org $83A33A
    dw #layout_asm_mainstreet

; Crab Tunnel left door asm pointer
org $83A3B2
    dw #layout_asm_crabtunnel

; Main Street middle-right door asm pointer
org $83A3E2
    dw #layout_asm_mainstreet

; Main Street bottom-right door asm pointer
org $83A41E
    dw #layout_asm_mainstreet

; Main Street top-right door asm pointer
org $83A442
    dw #layout_asm_mainstreet

; Main Street hidden door asm pointer
org $83A45A
    dw #layout_asm_mainstreet

; Crab Shaft left door asm pointer
org $83A472
    dw #layout_asm_crabshaft_no_scrolls

; Crab Shaft top door asm pointer
org $83A4EA
    dw #layout_asm_crabshaft_no_scrolls

; Crab Tunnel right door asm pointer
org $83A502
    dw #layout_asm_crabtunnel

; East Tunnel top-right door asm pointer
org $83A51A
    dw #layout_asm_easttunnel_no_scrolls

; West Sand Hall left door asm pointer
org $83A53E
    dw #layout_asm_westsandhall

; West Sand Hall unused door definition
org $83A654
    dw #$D6FD
    db #$00, #$05, #$3E, #$06, #$03, #$00
    dw #$8000
    dw #$0000

; West Sand Hall right door asm pointer
org $83A66A
    dw #layout_asm_westsandhall

; West Sand Hall top sand door asm pointer
org $83A6BE
    dw #layout_asm_westsandhall

; Mother Brain right door asm pointer
org $83AAD2
    dw #layout_asm_mbhp

; Mother Brain left door asm pointer
org $83AAEA
    dw #layout_asm_mbhp

; Magnet Stairs left door asm pointer
org $83AB6E
    dw #layout_asm_magnetstairs

; Magnet Stairs right door asm pointer
org $83AB92
    dw #layout_asm_magnetstairs


; Allow debug save stations to be used
org $848D0C
    AND #$000F


; Caterpillar elevator and middle-left door asm
org $8FBA26
    ; Replace STA with jump to STA
    JMP layout_asm_caterpillar_update_scrolls

; Caterpillar bottom-left door asm
org $8FBE18
    ; Overwrite PLP : RTS with jump
    ; Okay to overwrite $BE1A since we freed up that space
    JMP layout_asm_caterpillar_after_scrolls

; Aqueduct Farm Sand Pit header
org $8FD706
    dw layout_asm_aqueductfarmsandpit_door_list

; Ceres Ridley modified state check to support presets
org $8FE0C0
    dw layout_asm_ceres_ridley_room_state_check

; Ceres Ridley room setup asm when timer is not running
org $8FE0DF
    dw layout_asm_ceres_ridley_room_no_timer

; East Tunnel bottom-left and bottom-right door asm
org $8FE34E
    ; Optimize existing logic by one byte
    INC : STA $7ECD24
    ; Overwrite extra byte : PLP : RTS with jump
    JMP layout_asm_easttunnel_after_scrolls

; Caterpillar far-right door asm
org $8FE370
    ; Optimize existing logic by one byte
    INC : STA $7ECD2A
    ; Overwrite extra byte : PLP : RTS with jump
    JMP layout_asm_caterpillar_after_scrolls

; Crab Shaft right door asm
org $8FE39D
    ; Replace STA with jump to STA
    JMP layout_asm_crabshaft_update_scrolls


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

layout_asm_ceres_ridley_room_state_check:
{
    LDA $0943 : BEQ .no_timer
    LDA $0001,X : TAX
    JMP $E5E6
  .no_timer
    STZ $093F
    INX : INX : INX
    RTS
}

layout_asm_ceres_ridley_room_no_timer:
{
    ; Same as original setup asm, except force blue background
    PHP
    SEP #$20
    LDA #$66 : STA $5D
    PLP
    JSL $88DDD0
    LDA #$0009 : STA $07EB
    RTS
}

layout_asm_magnetstairs:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_MAGNET_STAIRS : BEQ layout_asm_magnetstairs_done

    ; Modify graphics to indicate magnet stairs removed
    %a8()
    LDA #$47 : STA $7F01F8 : STA $7F02EA

    ; Convert solid tiles to slope tiles
    LDA #$10 : STA $7F01F9 : STA $7F02EB
    LDA #$53 : STA $7F64FD : STA $7F6576
}

layout_asm_magnetstairs_done:
    PLP
    RTS

layout_asm_greenhillzone:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_magnetstairs_done

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
}

layout_asm_greenhillzone_done:
    PLP
    RTS

layout_asm_caterpillar_no_scrolls:
    PHP
    BRA layout_asm_caterpillar_after_scrolls

layout_asm_caterpillar_update_scrolls:
    STA $7ECD26

layout_asm_caterpillar_after_scrolls:
{
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_greenhillzone_done

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
}

layout_asm_caterpillar_done:
    PLP
    RTS

layout_asm_singlechamber:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_caterpillar_done

    ; Move right wall back one to create a ledge
    LDA #$810C : STA $7F06E0 : STA $7F0A9E
    LDA #$8507 : STA $7F07A0 : STA $7F0920
    LDA #$8505 : STA $7F0860 : STA $7F09E0

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
    LDA #$00 : STA $7F66F1 : STA $7F66F2
    STA $7F6751 : STA $7F6752 : STA $7F67B1 : STA $7F67B2
}

layout_asm_singlechamber_done:
    PLP
    RTS

layout_asm_crabtunnel:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_singlechamber_done

    ; Replace top of gate with slope tiles
    LDA #$1D87 : STA $7F039C : LDA #$1194 : STA $7F039E

    ; Fix tiles to the right of the gate
    LDA #$89A0 : STA $7F03A0 : LDA #$811D : STA $7F0320

    ; Remove remaining gate tiles
    LDA #$00FF : STA $7F041E : STA $7F049E : STA $7F051E : STA $7F059E

    ; Clear gate PLMs and projectiles
    LDA #$0000 : STA $1C83 : STA $1C85 : STA $19B9

    ; Slope BTS for top of the gate tiles
    %a8()
    LDA #$D2 : STA $7F65CF : LDA #$92 : STA $7F65D0

    ; Normal BTS for remaining gate tiles
    LDA #$00 : STA $7F6610 : STA $7F6650 : STA $7F6690 : STA $7F66D0
}

layout_asm_crabtunnel_done:
    PLP
    RTS

layout_asm_easttunnel_no_scrolls:
    PHP

layout_asm_easttunnel_after_scrolls:
{
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_crabtunnel_done

    ; Clear gate PLMs and projectiles
    LDA #$0000 : STA $1C7B : STA $1C7D : STA $19B9

    ; Remove gate tiles
    LDA #$00FF : STA $7F02AE : STA $7F02B0
    STA $7F032E : STA $7F03AE : STA $7F042E : STA $7F04AE

    ; Remove blocks from vertical shaft
    STA $7F078C : STA $7F088C : STA $7F090C
    STA $7F098C : STA $7F0A0C : STA $7F0A8C
    ; Careful with the block that is also a scroll block
    LDA #$30FF : STA $7F080C

    ; Normal BTS for gate tiles
    %a8()
    LDA #$00 : STA $7F6558 : STA $7F6559
    STA $7F6598 : STA $7F65D8 : STA $7F6618 : STA $7F6658

    ; Decorate vertical shaft
    LDA #$22 : STA $7F070A : STA $7F070E
    STA $7F078A : STA $7F078E : STA $7F080A : STA $7F080E
    STA $7F088A : STA $7F088E : STA $7F090A : STA $7F090E
    STA $7F098A : STA $7F098E : STA $7F0A0A : STA $7F0A0E
    LDA #$85 : STA $7F078B : STA $7F080B : STA $7F088B
    STA $7F090B : STA $7F098B : STA $7F0A0B
    STA $7F0A8A : STA $7F0A8E
    LDA #$8D : STA $7F0A8B
}

layout_asm_easttunnel_done:
    PLP
    RTS

layout_asm_eastocean:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_easttunnel_done

    ; Add platforms for ease of access to right door
    LDA #$8100 : STA $7F4506 : STA $7F4876
    INC : STA $7F4508 : STA $7F4878
    LDA #$8501 : STA $7F450A : STA $7F487A
    DEC : STA $7F450C : STA $7F487C
    LDA #$1120 : STA $7F45E6 : STA $7F4956
    INC : STA $7F45E8 : STA $7F4958
    LDA #$1521 : STA $7F45EA : STA $7F495A
    DEC : STA $7F45EC : STA $7F495C

    ; Slope BTS for platform bottoms
    %a8()
    LDA #$94 : STA $7F86F4 : STA $7F88AC
    INC : STA $7F86F5 : STA $7F88AD
    LDA #$D5 : STA $7F86F6 : STA $7F88AE
    DEC : STA $7F86F7 : STA $7F88AF
}

layout_asm_eastocean_done:
    PLP
    RTS

layout_asm_crabshaft_no_scrolls:
    PHP
    BRA layout_asm_crabshaft_after_scrolls

layout_asm_crabshaft_update_scrolls:
    STA $7ECD26

layout_asm_crabshaft_after_scrolls:
{
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_eastocean_done

    ; Clear space above save station
    LDA #$00FF : STA $7F095C : STA $7F095E

    ; Add save station PLM
    %ai16()
    PHX : LDX #layout_asm_crabshaft_plm_data
    JSL $84846A : PLX
}

layout_asm_crabshaft_done:
    PLP
    RTS

layout_asm_crabshaft_plm_data:
    db #$6F, #$B7, #$0D, #$29, #$09, #$00

layout_asm_mainstreet:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_crabshaft_done

    ; Add save station PLM
    %ai16()
    PHX : LDX #layout_asm_mainstreet_plm_data
    JSL $84846A : PLX
}

layout_asm_mainstreet_done:
    PLP
    RTS

layout_asm_mainstreet_plm_data:
    db #$6F, #$B7, #$18, #$59, #$0A, #$00

layout_asm_aqueductfarmsandpit_door_list:
    dw #$A7D4, #$A534

layout_asm_aqueductfarmsandpit_external:
{
    ; Place door BTS
    %a8()
    LDA #$40 : STA $7F65C0 : LDA #$FF : STA $7F6600
    DEC : STA $7F6640 : DEC : STA $7F6680 : LDA #$01
    STA $7F65C1 : STA $7F6601 : STA $7F6641 : STA $7F6681

    ; Move right wall one to the left
    %a16()
    LDA #$8A09 : STA $7F01FE : LDA #$820E : STA $7F067E
    LDA #$820A : STA $7F027E : STA $7F05FE
    LDA #$8A0B : STA $7F02FE : LDA #$8A07 : STA $7F0300
    LDA #$820B : STA $7F057E : LDA #$8207 : STA $7F0580

    ; Fill in area behind the wall
    LDA #$8210 : STA $7F0200 : STA $7F0280 : STA $7F0600 : STA $7F0680

    ; Place the door
    LDA #$C00C : STA $7F037E : LDA #$9040 : STA $7F0380
    LDA #$D02C : STA $7F03FE : LDA #$9060 : STA $7F0400
    LDA #$D82C : STA $7F047E : LDA #$9860 : STA $7F0480
    LDA #$D80C : STA $7F04FE : LDA #$9840 : STA $7F0500
    RTL
}

layout_asm_westsandhall:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_westsandhall_done

    ; Change left door BTS to previously unused door
    %a8()
    LDA #$02 : STA $7F6582 : STA $7F65C2 : STA $7F6602 : STA $7F6642
}

layout_asm_westsandhall_done:
    PLP
    RTS

print pc, " layout end"

