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
    PHA
    LDA !ram_sprite_features_active : BNE .spriteFeatures
    NOP #15 ; overhead CPU cycles
    PLA : BRA .done

  .spriteFeatures
    PHX : PHY : PHP

    ; Draw OoB viewer if activated
    LDA !ram_oob_watch_active : BEQ +
    JSR update_sprite_oob

    ; Draw Samus hitbox if activated
+   LDA !ram_sprite_samus_hitbox_active : BEQ +
    JSR update_sprite_hitbox

    ; Draw enemy hitboxes if activated
+   LDA !ram_sprite_enemy_hitbox_active : BEQ +
    JSR update_enemy_sprite_hitbox

    ; Draw enemy projectile hitboxes if activated
+   LDA !ram_sprite_enemyproj_hitbox_active : BEQ +
    JSR update_enemyproj_sprite_hitbox

    ; Draw Samus projectile hitboxes if activated
+   LDA !ram_sprite_samusproj_hitbox_active : BEQ +
    JSR update_samusproj_sprite_hitbox

+   PLP : PLY : PLX : PLA

  .done
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
+   JSL $80894D
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
    LDA $0AFA : SEC : SBC $0915 : PHA ; top edge
    LDA $0B04 : PHA ; left edge

    LDA #$0000
    %a8()
    LDY !OAM_STACK_POINTER
    PLA ; X coord
    SEC : SBC !SAMUS_X_RADIUS
    STA $0370,Y : STA $0378,Y
    CLC : ADC !SAMUS_X_RADIUS : ADC !SAMUS_X_RADIUS : SEC : SBC #$08
    STA $0374,Y : STA $037C,Y

    PLA : PLA : DEC ; Y coord
    SEC : SBC !SAMUS_Y_RADIUS
    STA $0371,Y : STA $0375,Y
    CLC : ADC !SAMUS_Y_RADIUS : ADC !SAMUS_Y_RADIUS : SEC : SBC #$08
    STA $0379,Y : STA $037D,Y
    PLA

    LDA #%00111010
    STA $0373,Y        ; Sprite 1 ATTR
    LDA #%01111010
    STA $0377,Y        ; Sprite 2 ATTR
    LDA #%10111010
    STA $037B,Y        ; Sprite 3 ATTR
    LDA #%11111010
    STA $037F,Y        ; Sprite 4 ATTR

    LDA #$47 ; tile number (8/9 bits)
    STA $0372,Y : STA $0376,Y
    STA $037A,Y : STA $037E,Y

    %a16()
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER
    RTS
}

update_enemy_sprite_hitbox:
; draw hitboxes around first 8 enemies
{
    LDX #$0000 ; X = enemy index
    LDY !OAM_STACK_POINTER ; Y = OAM stack pointer

  .loopEnemies
    ; check if on-screen
    LDA !ENEMY_X,X : CLC : ADC !ENEMY_X_RADIUS,X
    CMP !LAYER1_X : BMI .skipEnemy
    LDA !LAYER1_X : CLC : ADC #$0100 : CLC : ADC !ENEMY_X_RADIUS,X
    CMP !ENEMY_X,X : BMI .skipEnemy
    LDA !ENEMY_Y,X : CLC : ADC #$0008
    CMP !LAYER1_Y : BMI .skipEnemy
    LDA !LAYER1_Y : CLC : ADC #$00F8
    CMP !ENEMY_Y,X : BMI .skipEnemy
    BRA .drawHitbox

  .skipEnemy
    CPX #$0200 : BEQ .end ; limit # of hitboxes drawn
    TXA : CLC : ADC #$0040 : TAX : BRA .loopEnemies

  .end
    RTS

  .drawHitbox
    LDA !ENEMY_Y,X : SEC : SBC !LAYER1_Y : PHA ; top edge
    LDA !ENEMY_X,X : SEC : SBC !LAYER1_X : PHA ; left edge

    %a8()
    PLA ; X coord
    SEC : SBC !ENEMY_X_RADIUS,X
    STA $0370,Y : STA $0378,Y ; X pos
    CLC : ADC !ENEMY_X_RADIUS,X : ADC !ENEMY_X_RADIUS,X
    SEC : SBC #$08
    STA $0374,Y : STA $037C,Y

    PLA : PLA : DEC ; Y coord
    SEC : SBC !ENEMY_Y_RADIUS,X
    STA $0371,Y : STA $0375,Y
    CLC : ADC !ENEMY_Y_RADIUS,X : ADC !ENEMY_Y_RADIUS,X
    SEC : SBC #$08
    STA $0379,Y : STA $037D,Y
    PLA

    ; Sprite Attributes - xxxxxxxx yyyyyyyy YXPPpppt tttttttt
    ; x=X pos, y=Y pos (low nibbles only), Y=Y flip, X=X flip
    ; P=Priority, p=Palette, t=Tile number
    %ai16()
    LDA #$3A47 : STA $0372,Y ; %00111010 top-left
    LDA #$7A47 : STA $0376,Y ; %01111010 top-right
    LDA #$BA47 : STA $037A,Y ; %10111010 bottom-left
    LDA #$FA47 : STA $037E,Y ; %11111010 bottom-right

    ; inc oam stack
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER : TAY

    CPX #$0200 : BEQ .done ; limit # of hitboxes drawn
    TXA : CLC : ADC #$0040 : TAX : JMP .loopEnemies

  .done
    RTS
}

update_enemyproj_sprite_hitbox:
; draw hitboxes around enemy projectiles
{
    LDX #$FFFE ; X = projectile index
    LDY !OAM_STACK_POINTER ; Y = OAM stack pointer

  .nextProjectile
    INX #2
    LDA !ENEMY_PROJ_ID,X : BEQ .skipProjectile

    ; split X/Y radius into separate 16bit values
    LDA !ENEMY_PROJ_RADIUS,X : BEQ .skipProjectile
    AND #$00FF : STA $12 ; X radius in $12
    LDA !ENEMY_PROJ_RADIUS,X
    AND #$FF00 : XBA : STA $14 ; Y radius in $14

    ; check if on-screen
    LDA !ENEMY_PROJ_X,X : CLC : ADC $12
    CMP !LAYER1_X : BMI .skipProjectile
    LDA !LAYER1_X : CLC : ADC #$0100 : CLC : ADC $12
    CMP !ENEMY_PROJ_X,X : BMI .skipProjectile
    LDA !ENEMY_PROJ_Y,X : CLC : ADC #$0008
    CMP !LAYER1_Y : BMI .skipProjectile
    LDA !LAYER1_Y : CLC : ADC #$00F8
    CMP !ENEMY_PROJ_Y,X : BMI .skipProjectile
    BRA .drawHitbox

  .skipProjectile
    CPX #$0024 : BNE .nextProjectile : RTS ; max 18 projectiles

  .drawHitbox
    LDA !ENEMY_PROJ_Y,X : SEC : SBC !LAYER1_Y : PHA ; top edge
    LDA !ENEMY_PROJ_X,X : SEC : SBC !LAYER1_X : PHA ; left edge

    %a8()
    PLA ; X coord
    SEC : SBC $12
    STA $0370,Y : STA $0378,Y ; X pos
    CLC : ADC $12 : ADC $12
    SEC : SBC #$08
    STA $0374,Y : STA $037C,Y

    PLA : PLA : DEC ; Y coord
    SEC : SBC $14
    STA $0371,Y : STA $0375,Y
    CLC : ADC $14 : ADC $14
    SEC : SBC #$08
    STA $0379,Y : STA $037D,Y
    PLA

    ; Sprite Attributes - xxxxxxxx yyyyyyyy YXPPpppt tttttttt
    ; x=X pos, y=Y pos (low nibbles only), Y=Y flip, X=X flip
    ; P=Priority, p=Palette, t=Tile number
    %ai16()
    LDA #$3A47 : STA $0372,Y ; %00111010 top-left
    LDA #$7A47 : STA $0376,Y ; %01111010 top-right
    LDA #$BA47 : STA $037A,Y ; %10111010 bottom-left
    LDA #$FA47 : STA $037E,Y ; %11111010 bottom-right

    ; inc OAM stack
    ; vanilla routines use AND #$01FF to wrap the stack after 1FCh
    ; our routines start at zero so we exit when OAM is full
    TYA : CLC : ADC #$0010
    CMP #$01FC : BPL .fullStack
    STA !OAM_STACK_POINTER : TAY
    JMP .skipProjectile

  .fullStack
    RTS
}

; draw hitboxes around Samus projectiles
update_samusproj_sprite_hitbox:
{
    LDX #$FFFE ; X = projectile index
    LDY !OAM_STACK_POINTER ; Y = OAM stack pointer

  .nextProjectile
    INX #2
    LDA !SAMUS_PROJ_RADIUS_Y,X : BEQ .skipProjectile
    LDA !SAMUS_PROJ_RADIUS_X,X : BEQ .skipProjectile

    ; check if on-screen
    LDA !SAMUS_PROJ_X,X : CLC : ADC !SAMUS_PROJ_RADIUS_X
    CMP !LAYER1_X : BMI .skipProjectile
    LDA !LAYER1_X : CLC : ADC #$0100 : CLC : ADC !SAMUS_PROJ_RADIUS_X
    CMP !SAMUS_PROJ_X,X : BMI .skipProjectile
    LDA !SAMUS_PROJ_Y,X : CLC : ADC #$0008
    CMP !LAYER1_Y : BMI .skipProjectile
    LDA !LAYER1_Y : CLC : ADC #$00F8
    CMP !SAMUS_PROJ_Y,X : BMI .skipProjectile
    BRA .drawHitbox

  .skipProjectile
    CPX #$0012 : BNE .nextProjectile : RTS ; max 10 projectiles

  .drawHitbox
    LDA !SAMUS_PROJ_Y,X : SEC : SBC !LAYER1_Y : PHA ; top edge
    LDA !SAMUS_PROJ_X,X : SEC : SBC !LAYER1_X : PHA ; left edge

    %a8()
    PLA ; X coord
    SEC : SBC !SAMUS_PROJ_RADIUS_X,X
    STA $0370,Y : STA $0378,Y ; X pos
    CLC : ADC !SAMUS_PROJ_RADIUS_X,X : ADC !SAMUS_PROJ_RADIUS_X,X
    SEC : SBC #$08
    STA $0374,Y : STA $037C,Y

    PLA : PLA : DEC ; Y coord
    SEC : SBC !SAMUS_PROJ_RADIUS_Y,X
    STA $0371,Y : STA $0375,Y ; Y pos
    CLC : ADC !SAMUS_PROJ_RADIUS_Y,X : ADC !SAMUS_PROJ_RADIUS_Y,X
    SEC : SBC #$08
    STA $0379,Y : STA $037D,Y
    PLA

    ; Sprite Attributes - xxxxxxxx yyyyyyyy YXPPpppt tttttttt
    ; x=X pos, y=Y pos (low nibbles only), Y=Y flip, X=X flip
    ; P=Priority, p=Palette, t=Tile number
    %ai16()
    LDA #$3A47 : STA $0372,Y ; %00111010 top-left
    LDA #$7A47 : STA $0376,Y ; %01111010 top-right
    LDA #$BA47 : STA $037A,Y ; %10111010 bottom-left
    LDA #$FA47 : STA $037E,Y ; %11111010 bottom-right

    ; inc OAM stack
    ; vanilla routines use AND #$01FF to wrap the stack after 1FCh
    ; our routines start at zero so we exit when OAM is full
    TYA : CLC : ADC #$0010
    CMP #$0200 : BPL .fullStack
    STA !OAM_STACK_POINTER : TAY
    JMP .skipProjectile

  .fullStack
    RTS
}

sprite_tiles:
    incbin "../resources/spritegfx.bin":0-600

print pc, " spritefeat end"
