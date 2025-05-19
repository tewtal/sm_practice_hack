; $82:9396: Queue Samus movement sound effects
org $829396
    JSL hook_unpause_play_sound

; $82:E126: Logic to queue room music after fanfare
org $82E126
    JSL hook_resume_room_music
    BRA $08

; $84:8BDD: Instruction - clear music queue and queue music track [[Y]] ;;;
org $848BDD
    JML play_or_skip_fanfare

; $85:80BA: End message box routine
org $8580BA
    JML hook_end_fanfare

; $85:8493: Handle message box interaction
org $858493
    JSR hook_message_box_wait
    BRA $0B


if !ORIGINAL_MESSAGE_TEXT
else

org $858412
    ; Relocated this table to make room for more message box types
    LDA SpecialButtonTilemapOffsets,X

org $858749
original_button_tilemap_offset_table:
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


;;; Message text must be listed in order
org $859643
table ../resources/HUDfont.tbl
EnemiesKilledText:
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E
    dw #$2800|' '
    dw #$2800|' '
    dw #$2800|' '
    dw #$2800|'E'
    dw #$2800|'N'
    dw #$2800|'E'
    dw #$2800|'M'
    dw #$2800|'I'
    dw #$2800|'E'
    dw #$2800|'S'
    dw #$2800|' '
    dw #$2800|'K'
    dw #$2800|'I'
    dw #$2800|'L'
    dw #$2800|'L'
    dw #$2800|'E'
    dw #$2800|'D'
    dw #$2800|' '
    dw #$2800|' '
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E

BrainBusterText:
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E
    dw #$2800|' '
    dw #$2800|' '
    dw #$2800|' '
    dw #$2800|'B'
    dw #$2800|'R'
    dw #$2800|'A'
    dw #$2800|'I'
    dw #$2800|'N'
    dw #$2800|' '
    dw #$2800|'B'
    dw #$2800|'U'
    dw #$2800|'S'
    dw #$2800|'T'
    dw #$2800|'E'
    dw #$2800|'R'
    dw #$2800|' '
    dw #$2800|' '
    dw #$2800|' '
    dw #$2800|' '
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E

GhostBusterText:
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E
    dw #$2800|' '
    dw #$2800|'W'
    dw #$2800|'H'
    dw #$2800|'O'
    dw #$2800|' '
    dw #$2800|'Y'
    dw #$2800|'A'
    dw #$2800|' '
    dw #$2800|'G'
    dw #$2800|'O'
    dw #$2800|'N'
    dw #$2800|'N'
    dw #$2800|'A'
    dw #$2800|' '
    dw #$2800|'C'
    dw #$2800|'A'
    dw #$2800|'L'
    dw #$2800|'L'
    dw #$2800|'?'
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E

ShipBusterText:
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E
    dw #$2800|' '
    dw #$2800|' '
    dw #$2800|'S'
    dw #$2800|'H'
    dw #$2800|'I'
    dw #$2800|'P'
    dw #$2800|' '
    dw #$2800|'C'
    dw #$2800|'L'
    dw #$2800|'O'
    dw #$2800|'A'
    dw #$2800|'K'
    dw #$2800|'I'
    dw #$2800|'N'
    dw #$2800|'G'
    dw #$2800|' '
    dw #$2800|' '
    dw #$2800|' '
    dw #$2800|' '
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E
    dw #$2800|' '
    dw #$2800|' '
    dw #$2800|'D'
    dw #$2800|'E'
    dw #$2800|'V'
    dw #$2800|'I'
    dw #$2800|'C'
    dw #$2800|'E'
    dw #$2800|' '
    dw #$2800|'E'
    dw #$2800|'N'
    dw #$2800|'G'
    dw #$2800|'A'
    dw #$2800|'G'
    dw #$2800|'E'
    dw #$2800|'D'
    dw #$2800|' '
    dw #$2800|' '
    dw #$2800|' '
    dw #$000E, #$000E, #$000E, #$000E, #$000E, #$000E, #$000E

EndFanfareText:
table ../resources/normal.tbl

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

warnpc $85A000
endif


%startfree(85)

; List this first since it affects bank $84 where we are trying to minimize change
play_or_skip_fanfare:
{
    PHA
    LDA !sram_fanfare : BNE .playfanfare
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
    TDC
  .kill_loop
    TAX : LDA !ENEMY_PROPERTIES,X : ORA #$0200 : STA !ENEMY_PROPERTIES,X
    TXA : CLC : ADC #$0040 : CMP #$0800 : BNE .kill_loop

if !ORIGINAL_MESSAGE_TEXT
    RTL
else
    JSL prepare_fanfare_from_non_plm
    ; Play room music track after 360 frames
    LDA #$0168 : JSL $82E118

    ; Open message box
    LDA !ROOM_ID : CMP.w #ROOM_MotherBrainRoom : BEQ .kill_mb
    CMP.w #ROOM_PhantoonRoom : BEQ .kill_phantoon
    CMP.w #ROOM_LandingSite : BEQ .kill_ship
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
    LDA !sram_fanfare : BNE .fanfareloop
    ; shorten message box length
    LDX #$0020

  .nofanfareloop
    ; skipping fanfare, so no need to mess with sound
    JSR hook_msg_wait_for_lag_frame
    DEX : BNE .nofanfareloop
    RTS

  .fanfareloop
    ; original logic
    JSR hook_msg_wait_for_lag_frame
    PHX
    JSL $808F0C ; Handle music queue
    JSL $8289EF ; Handle sounds
    PLX : DEX : BNE .fanfareloop
    RTS
}

hook_msg_wait_for_lag_frame:
{
    PHP
if !FEATURE_SD2SNES
    %a8()
  .wait_joypad
    LDA $4212 : BIT #$01 : BNE .wait_joypad

    %a16()
    ; TODO re-enable load state, or maybe run the whole shortcut routine from here?
    ; LDA $4218 : BEQ .done
    ; CMP !sram_ctrl_load_state : BNE .done
    ; LDA !SRAM_SAVED_STATE : CMP !SAFEWORD : BNE .done
    ; PHB : PHK : PLB
    ; JML load_state

  .done
endif
    ; Jump to vanilla routine
    JMP $8137
}

hook_resume_room_music:
{
    LDA !sram_fanfare : BNE .resume

    ; This method is also used when starting game at Ceres
    LDA !AREA_ID : CMP #$0006 : BEQ .resume
    RTL

  .resume
    ; original logic to queue room music after fanfare
    TDC : JSL $808FF7
    LDA !MUSIC_TRACK
    JSL !MUSIC_ROUTINE
    RTL
}

hook_unpause_play_sound:
{
    JSL $82BE2F      ; original logic to queue Samus movement sound effects
    LDA !sram_healthalarm : CMP #$0004 : BNE .done_health_alarm
    LDA #$0002 : JSL $80914D
  .done_health_alarm
    RTL
}

hook_end_fanfare:
{
    LDA !sram_healthalarm : CMP #$0004 : BNE .done_health_alarm
    LDA #$0002 : JSL $80914D
  .done_health_alarm
    ; original logic
    PLY : PLX
    PLB : PLP
    ; initialize water physics in case we just collected gravity or space jump
    JML init_physics_ram
}

%endfree(85)

