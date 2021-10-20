;
; Features using sprites to draw information
;


; Hook Gamemode 7 to upload tiles after loading if needed
org $828B26
    JSL update_sprite_tiles_loading

; Hook sprite uploads in main game loop to get a chance to upload sprites first
; Runs in Gamemode 8
org $828B98
    JSL update_sprite_features



;
; Add hitbox graphic to free sprite VRAM slot
;
org $9ADAE0
db $FF, $FF, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
db $FF, $FF, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80


org $F0E000
print pc, " spritefeat start"
; This runs every frame before any other sprites are drawn, this is needed so we can get priority over everything else
update_sprite_features:
    PHA : PHX : PHY : PHP

    ; Draw OOB viewer if activated
    JSR update_sprite_oob

    ; Draw Samus hitbox if activated
    JSR update_sprite_hitbox

    PLP : PLY : PLX : PLA

    if !FEATURE_PAL
        JSL $A0885D
    else
        JSL $A0884D
    endif

    RTL

; When loading into a game, do we need to update any sprite tiles?
update_sprite_tiles_loading:
    LDA !ram_oob_watch_active : BEQ +
      JSL upload_sprite_oob_tiles
    +

    JSL $80894D
    RTL

upload_sprite_oob_tiles:
    LDX $330
    LDA #$0400
    STA $D0, X
    LDA #(sprite_tiles+$200)
    STA $D2, X
    LDA #((sprite_tiles+$200)>>8)
    STA $D3, X
    LDA #$6D00
    STA $D5, X
    TXA : CLC : ADC #$0007 : STA $0330
    RTL

update_sprite_oob:
    LDA !ram_oob_watch_active : BNE +
    RTS
+
    !oob_width = $000D
    !oob_height = $0009
    LDA $590 : STA $C8

    LDA $0AF6
    SEC : SBC #(!oob_width*8)
    STA $12 ; cameraX - (oob_width*8)
    AND #$000F
    STA $C4

    LDA $12
    LSR #4
    STA $22 ; cameraX - (oob_width*8) / 16


    LDA $0AFA
    SEC : SBC #((!oob_height-2)*8)
    STA $14 ; cameraY - (oob_height*8)
    AND #$000F
    STA $C6

    LDA $14
    LSR #4
    STA $24 ; cameraY - (oob_height*8) / 16


    LDA $07A5
    STA $16 ; width

    LDY #$0000
    .loop_y
        LDX #$0000
        SEP #$20
        LDA $16
        STA $4202
        TYA : CLC : ADC $24
        STA $4203
        NOP : NOP : REP #$30
        LDA $4216
        STA $18
        .loop_x
            PHY : PHX
            REP #$20
            STX $C0 : STY $C2

            TXA : CLC : ADC $22   ; cameraX + (x * 16)
            AND #$0FFF

            CLC : ADC $18   ; a = (width * bit.lrshift(bit.band(cameraY+y*16, 0xFFF), 4)) + bit.lrshift(bit.band(cameraX+x*16, 0xFFFF), 4)
            ASL             ; a = a * 2
            TAX : LDA.l $7F0003, X ; Load clipdata of block
            AND #$00FF : LSR #4
            TAX : LDA.l block_gfx, X ; Get sprite id for this BTS
            AND #$00FF
            CMP #$00d0 : BEQ .next

            SEP #$20

            LDY $0590
            STA $0372, Y        ; Set sprite ID

            LDA $C0 : CLC : ADC #$02 : ASL #4 : SEC : SBC $C4 ; Get X coord
            STA $0370, Y

            LDA $C2 : CLC : ADC #$04 : ASL #4 : SEC : SBC $C6 ; Get Y coord
            STA $0371, Y

            LDA #%00111010
            STA $0373, Y

            REP #$20

            INY #4
            STY $0590

            .next

            PLX
            PLY

            INX
            CPX #!oob_width
            BEQ +
            JMP .loop_x
            +
        INY
        CPY #!oob_height
        BEQ +
        JMP .loop_y
        +

    LDA $590
    BEQ .end
    LSR #4 : INC : STA $CA
    LDA $C8 : LSR #4 : STA $C8

    SEP #$20
    LDX $C8
    -
        LDA #%10101010 : STA $570, X
        INX : CPX $CA : BNE -
    REP #$30

.end
    JSR sprite_draw_oob_samus_hitbox
    RTS

block_gfx:
    ; d0 = transparent
    ; d2 = white
    ; d4 = yellow
    ; d6 = brown
    ; d8 = pink
    ; da = darkgreen
    ; dc = blue
    ; de = mint

    ;  air, slope, air (trick xray), treadmill, ?? ,      h-extend,  ??,  ??,  solid, door, spike, crumble, shot, v-xtend, grapple, bomb
    db $d0, $de,   $d0,              $dc,       $d0,      $d0,       $d0, $d0, $d6,   $d4,  $dc,   $dc,     $d2,  $d0,     $da,     $dc

; draw hitbox around samus for the oob viewer (static position on the screen)
sprite_draw_oob_samus_hitbox:
    ;LDA $0AFA : SEC : SBC $0915 : PHA ; top edge
    ;LDA $0B04 : PHA ; left edge

    LDA.w #(137-16) : PHA
    LDA.w #136 : PHA

    LDA #$0000
    SEP #$20
    LDY $0590
    PLA ; X coord
    SEC : SBC $0AFE
    STA $0370, Y
    STA $0378, Y
    CLC : ADC $0AFE : ADC $0AFE : SEC : SBC #$08
    STA $0374, Y
    STA $037C, Y

    PLA : PLA : DEC ; Y coord
    SEC : SBC $0B00
    STA $0371, Y
    STA $0375, Y
    CLC : ADC $0B00 : ADC $0B00 : SEC : SBC #$08
    STA $0379, Y
    STA $037D, Y
    PLA


    LDA #%00111010
    STA $0373, Y        ; Sprite 1 ATTR
    STA $0377, Y        ; Sprite 2 ATTR
    STA $037B, Y        ; Sprite 3 ATTR
    STA $037F, Y        ; Sprite 4 ATTR

    LDA #$DC
    STA $0372, Y
    LDA #$DD
    STA $0376, Y
    LDA #$EC
    STA $037A, Y
    LDA #$ED
    STA $037E, Y

    ; Normally the high sprite bits are cleared to zero so this shouldn't be needed for 8x8 sprites,
    ; but the hitbox drawing code will overwrite 1-3 extra sprite bits to gain speed so instead we
    ; compensate for it here to just have to do it once

    REP #$30
    PHY
    TYA : LSR #2 : TAX : PHX         ; Sprite number

        LSR #2 : TAY                 ; Table offset
        TXA : AND #$0003 : ASL : TAX
        LDA $570, Y                  ; Get high sprite offset
        AND.l spr_clr_flags, X       ; Mask off bits to clear
        STA $570, Y                  ; Save back

        PLX : INX : TXA : PHX
        LSR #2 : TAY                 ; Table offset
        TXA : AND #$0003 : ASL : TAX
        LDA $570, Y                  ; Get high sprite offset
        AND.l spr_clr_flags, X       ; Mask off bits to clear
        STA $570, Y                  ; Save back

        PLX : INX : TXA : PHX
        LSR #2 : TAY                 ; Table offset
        TXA : AND #$0003 : ASL : TAX
        LDA $570, Y                  ; Get high sprite offset
        AND.l spr_clr_flags, X       ; Mask off bits to clear
        STA $570, Y                  ; Save back

        PLX : INX : TXA : PHX
        LSR #2 : TAY                 ; Table offset
        TXA : AND #$0003 : ASL : TAX
        LDA $570, Y                  ; Get high sprite offset
        AND.l spr_clr_flags, X       ; Mask off bits to clear
        STA $570, Y                  ; Save back
        PLX
    PLY


    REP #$30
    TYA : CLC : ADC #$0010 : STA $0590
    RTS

spr_clr_flags:
    dw %1111111111111100, %1111111111110011, %1111111111001111, %1111111100111111


; draw hitbox around samus
update_sprite_hitbox:
    LDA !ram_sprite_hitbox_active : BNE +
        RTS
    +
    LDA $0AFA : SEC : SBC $0915 : PHA ; top edge
    LDA $0B04 : PHA ; left edge

    LDA #$0000
    SEP #$20
    LDY $0590
    PLA ; X coord
    SEC : SBC $0AFE
    STA $0370, Y
    STA $0378, Y
    CLC : ADC $0AFE : ADC $0AFE : SEC : SBC #$08
    STA $0374, Y
    STA $037C, Y

    PLA : PLA : DEC ; Y coord
    SEC : SBC $0B00
    STA $0371, Y
    STA $0375, Y
    CLC : ADC $0B00 : ADC $0B00 : SEC : SBC #$08
    STA $0379, Y
    STA $037D, Y
    PLA

    LDA #%00111010
    STA $0373, Y        ; Sprite 1 ATTR
    LDA #%01111010
    STA $0377, Y        ; Sprite 2 ATTR
    LDA #%10111010
    STA $037B, Y        ; Sprite 3 ATTR
    LDA #%11111010
    STA $037F, Y        ; Sprite 4 ATTR

    LDA #$47
    STA $0372, Y
    LDA #$47
    STA $0376, Y
    LDA #$47
    STA $037A, Y
    LDA #$47
    STA $037E, Y

    REP #$30
    TYA : CLC : ADC #$0010 : STA $0590
    RTS

sprite_tiles:
    incbin "../resources/spritegfx.bin":0-600

print pc, " spritefeat end"
