; $84:8BDD: Instruction - clear music queue and queue music track [[Y]] ;;;
org $848BDD
    JML play_or_skip_fanfare

; $85:8493: Handle message box interaction
org $858493
    JSR hook_message_box_wait
    BRA $0B

; $82:E126: Logic to queue room music after fanfare
org $82E126
    JSL hook_resume_room_music
    BRA $08


if !ORIGINAL_MESSAGE_TEXT
else

org $858412
    ; Relocated this table to make room for more message box types
    LDA SpecialButtonTilemapOffsets,X

org $858749
    ; Expand message definitions
    dw #$8436, #$8289, EnemiesKilledText
    dw #$8436, #$8289, BrainBusterText
    dw #$8436, #$8289, GhostBusterText
    dw #$8436, #$8289, ShipBusterText
    ; Currently room for four more types
    ; The last one must remain reserved
    dw #$8436, #$8289, EndFanfareText
    dw #$8436, #$8289, EndFanfareText
    dw #$8436, #$8289, EndFanfareText
    dw #$8436, #$8289, EndFanfareText
    dw #$8436, #$8289, EndFanfareText

org $859643
print pc, " fanfare message start"

;;; Message text must be listed in order
EnemiesKilledText:
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$284E, #$284E
    dw #$284E, #$28E4, #$28ED, #$28E4, #$28EC, #$28E8, #$28E4, #$28F2
    dw #$284E, #$28EA, #$28E8, #$28EB, #$28EB, #$28E4, #$28E3, #$284E
    dw #$284E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E

BrainBusterText:
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$284E, #$284E
    dw #$284E, #$28E1, #$28F1, #$28E0, #$28E8, #$28ED, #$284E, #$28E1
    dw #$28F4, #$28F2, #$28F3, #$28E4, #$28F1, #$284E, #$284E, #$284E
    dw #$284E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E

GhostBusterText:
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$284E, #$28F6
    dw #$28E7, #$28EE, #$284E, #$28F8, #$28E0, #$284E, #$28E6, #$28EE
    dw #$28ED, #$28ED, #$28E0, #$284E, #$28E2, #$28E0, #$28EB, #$28EB
    dw #$28FE, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E

ShipBusterText:
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$284E, #$284E
    dw #$28F2, #$28E7, #$28E8, #$28EF, #$284E, #$28E2, #$28EB, #$28EE
    dw #$28E0, #$28EA, #$28E8, #$28ED, #$28E6, #$284E, #$284E, #$284E
    dw #$284E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$284E, #$284E
    dw #$28E3, #$28E4, #$28F5, #$28E8, #$28E2, #$28E4, #$284E, #$28E4
    dw #$28ED, #$28E6, #$28E0, #$28E6, #$28E4, #$28E3, #$284E, #$284E
    dw #$284E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E

EndFanfareText:

;;; Recreate $8749: Special button tilemap offsets ;;;
SpecialButtonTilemapOffsets:
    dw #$0000  ; 1: Energy tank
    dw #$012A  ; 2: Missile
    dw #$012A  ; 3: Super missile
    dw #$012C  ; 4: Power bomb
    dw #$012C  ; 5: Grappling beam
    dw #$012C  ; 6: X-ray scope
    dw #$0000  ; 7: Varia suit
    dw #$0000  ; 8: Spring ball
    dw #$0000  ; 9: Morphing ball
    dw #$0000  ; Ah: Screw attack
    dw #$0000  ; Bh: Hi-jump boots
    dw #$0000  ; Ch: Space jump
    dw #$0120  ; Dh: Speed booster
    dw #$0000  ; Eh: Charge beam
    dw #$0000  ; Fh: Ice beam
    dw #$0000  ; 10h: Wave beam
    dw #$0000  ; 11h: Spazer
    dw #$0000  ; 12h: Plasma beam
    dw #$012A  ; 13h: Bomb
    dw #$0000  ; 14h: Map data access completed
    dw #$0000  ; 15h: Energy recharge completed
    dw #$0000  ; 16h: Missile reload completed
    dw #$0000  ; 17h: Would you like to save?
    dw #$0000  ; 18h: Save completed
    dw #$0000  ; 19h: Reserve tank
    dw #$0000  ; 1Ah: Gravity suit
    dw #$0000  ; 1Bh: Terminator
    dw #$000E  ; 1Ch: Would you like to save? (Used by gunship)
    dw #$000E  ; 1Dh: Reserved (Used by gunship)
    dw #$0000  ; 1Eh: Enemies killed
    dw #$0000  ; 1Fh: Brain buster
    dw #$0000  ; 20h: Ghost buster
    dw #$0000  ; 21h: Ship buster
    dw #$0000  ; 22h:
    dw #$0000  ; 23h:
    dw #$0000  ; 24h:
    dw #$0000  ; 25h:
    dw #$0000  ; 26h: Reserved

print pc, " fanfare message end"
warnpc $85F800
endif


org $85FE00
print pc, " fanfare start"

; List this first since it affects bank $84 where we are trying to minimize change
play_or_skip_fanfare:
{
    PHA
    LDA !sram_fanfare_toggle : BNE .playfanfare
    PLA
    JML $848C05

  .playfanfare
    PLA

    ; overwritten logic
    PHX
    LDX #$000E
    JML $848BE1
}

prepare_fanfare_from_non_plm:
{
    LDA #$0002 : STA $C1 : LDY #$00C1
    ; $848BDD ends with an RTS, but we need an RTL
    ; Have the RTS return to $848031 which is an RTL
    PEA $8030 : JML $848BDD
}

kill_enemies:
{
    LDA #$0000
  .kill_loop
    TAX : LDA $0F86,X : ORA #$0200 : STA $0F86,X
    TXA : CLC : ADC #$0040 : CMP #$0400 : BNE .kill_loop

if !ORIGINAL_MESSAGE_TEXT
    RTL
else
    JSL prepare_fanfare_from_non_plm
    LDA #$0168 : JSL $82E118

    ; Open message box
    LDA $079B : CMP #$DD58 : BEQ .kill_mb
    CMP #$CD13 : BEQ .kill_phantoon : CMP #$91F8 : BEQ .kill_ship
    LDA #$001E : JML $858080
  .kill_mb
    LDA #$001F : JML $858080
  .kill_phantoon
    LDA #$0020 : JML $858080
  .kill_ship
    LDA #$0021 : JML $858080
endif
}

hook_message_box_wait:
{
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
}

hook_resume_room_music:
{
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
}

print pc, " fanfare end"

