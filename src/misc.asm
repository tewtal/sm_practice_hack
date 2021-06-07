; Patch out copy protection
org $008000
    db $FF

; Set SRAM size
if !FEATURE_SD2SNES
    org $00FFD8
        db $08 ; 256kb
else
    org $00FFD8
        db $05 ; 64kb
endif

; Skip intro
; $82:EEDF A9 95 A3    LDA #$A395
org $82EEDF
    LDA #$C100

; Skips the waiting time after teleporting
org $90E870
    JMP $E898


; Adds frames when unpausing (nmi is turned off during vram transfers)
; $80:A16B 22 4B 83 80 JSL $80834B[$80:834B]
org $80A16B
    JSL hook_unpause


; $82:8BB3 22 69 91 A0 JSL $A09169[$A0:9169]  ; Handles Samus getting hurt?
org $828BB3
    JSL gamemode_end


; $80:8F24 9C F6 07    STZ $07F6  [$7E:07F6]  ;/
; $80:8F27 8D 40 21    STA $2140  [$7E:2140]  ; APU IO 0 = [music track]
org $808F24
    JSL hook_set_music_track
    NOP #2

org $87D000
print pc, " misc start"
hook_set_music_track:
{
    STZ $07F6

    PHA
    LDA !sram_music_toggle : BEQ .noMusic
    PLA : STA $2140
    RTL

  .noMusic
    PLA
    RTL
}


hook_unpause:
{
    ; RT room
    LDA !ram_realtime_room : CLC : ADC.w #41 : STA !ram_realtime_room

    ; RT seg
    LDA !ram_seg_rt_frames : CLC : ADC.w #41 : STA !ram_seg_rt_frames
    CMP.w #60 : BCC .done
    SEC : SBC.w #60 : STA !ram_seg_rt_frames

    LDA !ram_seg_rt_seconds : INC : STA !ram_seg_rt_seconds
    CMP.w #60 : BCC .done
    LDA #$0000 : STA !ram_seg_rt_seconds

    LDA !ram_seg_rt_minutes : INC : STA !ram_seg_rt_minutes

  .done
    JSL $80834B
    RTL
}


gamemode_end:
{
    JSL $A09169
    %a8() : LDA $4201 : ORA #$80 : STA $4201 : %a16()
    LDA $2137 : LDA $213D : AND #$00FF : STA !ram_lag_counter

    ; If mini map is disabled, we ignore artificial lag
    LDA $05F7 : BNE +

    ; Artificial lag. 41 loops ~= 1 scanline
    LDA !sram_artificial_lag : BEQ + : ASL #4 : TAX
    {
        - DEX : BNE -
    }
    +
    RTL
}

stop_all_sounds:
{
    ; If $05F5 is non-zero, the game won't clear the sounds
    LDA $05F5 : PHA
    LDA #$0000 : STA $05F5
    JSL $82BE17
    PLA : STA $05F5

    ; Makes the game check Samus' health again, to see if we need annoying sound
    LDA #$0000 : STA $0A6A
    RTL
}

print pc, " misc end"

