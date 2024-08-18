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


; Add hitbox graphic to free sprite VRAM slot
org $9ADAE0
hook_standard_sprite_tiles:
    db $FF, $FF, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
    db $FF, $FF, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80


org $F0E000
print pc, " spritefeat start"

; This runs every frame before any other sprites are drawn, this is needed so we can get priority over everything else
update_sprite_features:
{
    PHA
    LDA !ram_sprite_feature_flags : BNE .spriteFeatures
    PLA : BRA .done

  .spriteFeatures
    PHX : PHY : PHP

    ; Draw OoB viewer if activated
    LDA !ram_sprite_feature_flags : BIT !SPRITE_OOB_WATCH : BEQ .skip_oob
    JSR draw_sprite_oob
  .skip_oob

    ; Draw Samus hitbox if activated
    LDA !ram_sprite_feature_flags : BIT !SPRITE_SAMUS_HITBOX : BEQ .skip_samus
    JSR draw_samus_hitbox
  .skip_samus

    ; Draw enemy hitboxes if activated
    LDA !ram_sprite_feature_flags : BIT !SPRITE_ENEMY_HITBOX : BEQ .skip_enemy
    JSR draw_enemy_hitbox
  .skip_enemy

    ; Draw extended spritemap hitboxes if activated
    LDA !ram_sprite_feature_flags : BIT !SPRITE_EXTENDED_HITBOX : BEQ .skip_extended
    JSR draw_ext_spritemap_hitbox
  .skip_extended

    ; Draw custom boss hitboxes if activated
    LDA !ram_sprite_feature_flags : BIT !SPRITE_BOSS_HITBOX : BEQ .skip_custom
    JSR draw_custom_boss_hitbox
  .skip_custom

    ; Draw enemy projectile hitboxes if activated
    LDA !ram_sprite_feature_flags : BIT !SPRITE_ENEMY_PROJ : BEQ .skip_enemyproj
    JSR draw_enemyproj_hitbox
  .skip_enemyproj

    ; Draw Samus projectile hitboxes if activated
    LDA !ram_sprite_feature_flags : BIT !SPRITE_SAMUS_PROJ : BEQ .skip_samusproj
    JSR draw_samusproj_hitbox
  .skip_samusproj

    PLP : PLY : PLX : PLA

  .done
if !FEATURE_PAL
    JSL $A0885D
else
    JSL $A0884D
endif
    RTL
}

; When loading into a game, do we need to update any sprite tiles?
update_sprite_tiles_loading:
{
    LDA !ram_sprite_feature_flags : BIT !SPRITE_OOB_WATCH : BEQ .skip
    JSL upload_sprite_oob_tiles
  .skip
    JSL $80894D
    RTL
}

upload_sprite_oob_tiles:
{
    LDX !VRAM_WRITE_STACK_POINTER
    LDA #$0400 : STA $D0,X
    LDA #(sprite_tiles+$200) : STA $D2,X
    LDA #((sprite_tiles+$200)>>8) : STA $D3,X
    LDA #$6D00 : STA $D5,X
    TXA : CLC : ADC #$0007 : STA !VRAM_WRITE_STACK_POINTER
    RTL
}

draw_sprite_oob:
{
    !oob_width = $000D
    !oob_height = $0009
    LDA !OAM_STACK_POINTER : STA $C8

    ; Samus X - (oob_width*8)
    LDA !SAMUS_X : SEC : SBC #(!oob_width*8) : STA $12
    AND #$000F : STA $C4

    ; [Samus X - (oob_width*8)] / 16
    LDA $12 : LSR #4 : STA $22

    ; Samus Y - (oob_height*8)
    LDA !SAMUS_Y : SEC : SBC #((!oob_height-2)*8) : STA $14
    AND #$000F : STA $C6

    ; [Samus Y - (oob_height*8)] / 16
    LDA $14 : LSR #4 : STA $24

    LDA !ROOM_WIDTH_BLOCKS : STA $16

    LDY #$0000
  .loop_y
    LDX #$0000
    %a8()
    LDA $16 : STA $4202
    TYA : CLC : ADC $24 : STA $4203
    NOP : NOP ; wait for CPU math
    %ai16()
    ; room_width_blocks * (Y + [Samus Y - (oob_height*8)] / 16)
    LDA $4216 : STA $18

  .loop_x
    PHY : PHX
    %a16()
    STX $C0 : STY $C2

    ; X + [Samus X - (oob_width*8)] / 16
    TXA : CLC : ADC $22 : AND #$0FFF

    ; Load clipdata of block
    CLC : ADC $18 : ASL
    TAX : LDA.l $7F0003,X : AND #$00FF : LSR #4
    ; Get sprite ID for this BTS
    TAX : LDA.l block_gfx,X : AND #$00FF
    CMP #$00D0 : BEQ .next

    ; Set sprite ID
    %a8()
    LDY !OAM_STACK_POINTER : STA $0372,Y

    ; Get X coord
    LDA $C0 : CLC : ADC #$02 : ASL #4 : SEC : SBC $C4
    STA $0370,Y

    ; Get Y coord
    LDA $C2 : CLC : ADC #$04 : ASL #4 : SEC : SBC $C6
    STA $0371,Y

    ; Sprite Attributes - xxxxxxxx yyyyyyyy YXPPpppt tttttttt
    ; x=X pos, y=Y pos (low nibbles only), Y=Y flip, X=X flip
    ; P=Priority, p=Palette, t=Tile number
    ; Priority bits set, palette = 101
    LDA #%00111010 : STA $0373,Y

    %a16()

    INY #4
    STY !OAM_STACK_POINTER

  .next
    PLX : PLY

    INX : CPX #!oob_width : BEQ .end_x
    JMP .loop_x

  .end_x
    INY : CPY #!oob_height : BEQ .end_y
    JMP .loop_y

  .end_y
    LDA !OAM_STACK_POINTER : BEQ .end
    LSR #4 : INC : STA $CA
    LDA $C8 : LSR #4 : STA $C8

    %a8()
    LDX $C8

  .copy_loop
    ; $0570..8F: High OAM. 2 bit entries
    ; ddccbbsx
    ; x: X position (upper 1 bit)
    ; s: Size
    ; b: sx for sprite 4n+1
    ; c: sx for sprite 4n+2
    ; d: sx for sprite 4n+3
    LDA #%10101010 : STA $0570,X
    INX : CPX $CA : BNE .copy_loop
    %ai16()

  .end
    JSR draw_oob_samus_hitbox
    RTS

block_gfx:
    ; D0 = transparent
    ; D2 = white
    ; D4 = yellow
    ; D6 = brown
    ; D8 = pink
    ; DA = darkgreen
    ; DC = blue
    ; DE = mint

    ;  air, slope, air (trick xray), treadmill, ??,       h-extend,  ??,  ??,  solid, door, spike, crumble, shot, v-xtend, grapple, bomb
    db $D0, $DE,   $D0,              $DC,       $D0,      $D0,       $D0, $D0, $D6,   $D4,  $DC,   $DC,     $D2,  $D0,     $DA,     $DC

; draw hitbox around samus for the oob viewer (static position on the screen)
draw_oob_samus_hitbox:
{
    ; LDA !SAMUS_Y : SEC : SBC !LAYER1_Y : PHA ; top edge
    ; LDA !SAMUS_SPRITEMAP_X : PHA ; left edge

    LDA.w #(137-16) : PHA
    LDA.w #136 : PHA

    LDA #$0000
    %a8()
    LDY !OAM_STACK_POINTER
    PLA ; X coord
    SEC : SBC !SAMUS_X_RADIUS
    STA $0370,Y : STA $0378,Y
    CLC : ADC !SAMUS_X_RADIUS : ADC !SAMUS_X_RADIUS : SEC : SBC #$08
    STA $0374,Y : STA $037C,Y
    PLA ; discard high byte

    PLA : DEC ; Y coord
    SEC : SBC !SAMUS_Y_RADIUS
    STA $0371,Y : STA $0375,Y
    CLC : ADC !SAMUS_Y_RADIUS : ADC !SAMUS_Y_RADIUS : SEC : SBC #$08
    STA $0379,Y : STA $037D,Y
    PLA ; discard high byte

    LDA #%00111010
    STA $0373,Y ; Sprite 1 ATTR
    STA $0377,Y ; Sprite 2 ATTR
    STA $037B,Y ; Sprite 3 ATTR
    STA $037F,Y ; Sprite 4 ATTR

    LDA #$DC : STA $0372,Y
    LDA #$DD : STA $0376,Y
    LDA #$EC : STA $037A,Y
    LDA #$ED : STA $037E,Y

    ; Normally the high sprite bits are cleared to zero so this shouldn't be needed for 8x8 sprites,
    ; but the hitbox drawing code will overwrite 1-3 extra sprite bits to gain speed so instead we
    ; compensate for it here to just have to do it once

    %ai16()
    PHY
    ; Sprite number
    TYA : LSR #2 : TAX : PHX
    ; Table offset
    LSR #2 : TAY
    TXA : AND #$0003 : ASL : TAX

    ; Mask off bits to clear high sprite offset
    LDA $0570,Y : AND.l spr_clr_flags,X : STA $0570,Y

    ; Sprite number
    PLX : INX : TXA : PHX
    ; Table offset
    LSR #2 : TAY
    TXA : AND #$0003 : ASL : TAX

    ; Mask off bits to clear high sprite offset
    LDA $0570,Y : AND.l spr_clr_flags,X : STA $0570,Y

    ; Sprite number
    PLX : INX : TXA : PHX
    ; Table offset
    LSR #2 : TAY
    TXA : AND #$0003 : ASL : TAX

    ; Mask off bits to clear high sprite offset
    LDA $0570,Y : AND.l spr_clr_flags,X : STA $0570,Y

    ; Sprite number
    PLX : INX : TXA : PHX
    ; Table offset
    LSR #2 : TAY
    TXA : AND #$0003 : ASL : TAX

    ; Mask off bits to clear high sprite offset
    LDA $0570,Y : AND.l spr_clr_flags,X : STA $0570,Y
    PLX : PLY

    ; Inc OAM stack
    %ai16()
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER
    RTS
}

spr_clr_flags:
    dw %1111111111111100, %1111111111110011, %1111111111001111, %1111111100111111


; draw hitbox around samus
draw_samus_hitbox:
{
    LDA !SAMUS_Y : SEC : SBC !LAYER1_Y : PHA ; Y coord
    LDA !SAMUS_SPRITEMAP_X : PHA ; X coord

    LDA #$0000
    %a8()
    LDY !OAM_STACK_POINTER
    ; X coord
    PLA : SEC : SBC !SAMUS_X_RADIUS
    STA $0370,Y : STA $0378,Y
    CLC : ADC !SAMUS_X_RADIUS : ADC !SAMUS_X_RADIUS : SEC : SBC #$08
    STA $0374,Y : STA $037C,Y
    PLA ; discard high byte

    ; Y coord
    PLA : DEC : SEC : SBC !SAMUS_Y_RADIUS
    STA $0371,Y : STA $0375,Y
    CLC : ADC !SAMUS_Y_RADIUS : ADC !SAMUS_Y_RADIUS : SEC : SBC #$08
    STA $0379,Y : STA $037D,Y
    PLA ; discard high byte

    ; Sprite Attributes - xxxxxxxx yyyyyyyy YXPPpppt tttttttt
    ; x=X pos, y=Y pos, Y=Y flip, X=X flip
    ; P=Priority, p=Palette, t=Tile number
    LDA #%00111010 : STA $0373,Y ; top left
    LDA #%01111010 : STA $0377,Y ; top right
    LDA #%10111010 : STA $037B,Y ; bottom left
    LDA #%11111010 : STA $037F,Y ; bottom right

    LDA #$47 ; tile number (8/9 bits)
    STA $0372,Y : STA $0376,Y
    STA $037A,Y : STA $037E,Y

    %a16()
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER
    RTS
}

; draw hitboxes around first 12 enemies
draw_enemy_hitbox:
{
    LDX #$0000 ; X = enemy index
    LDY !OAM_STACK_POINTER ; Y = OAM stack pointer

  .loopEnemies
    ; skip enemy if extended spritemap or deleted enemy
    LDA !ENEMY_EXTRA_PROPERTIES,X : AND #$0004 : BNE .skipEnemy
    LDA !ENEMY_PROPERTIES,X : AND #$0200 : BNE .skipEnemy

    ; skip enemy if off-screen
    LDA !ENEMY_X,X : CLC : ADC !ENEMY_X_RADIUS,X
    CMP !LAYER1_X : BMI .skipEnemy
    LDA !LAYER1_X : CLC : ADC #$0100 : CLC : ADC !ENEMY_X_RADIUS,X
    CMP !ENEMY_X,X : BMI .skipEnemy
    LDA !ENEMY_Y,X : CLC : ADC #$0008
    CMP !LAYER1_Y : BMI .skipEnemy
    LDA !LAYER1_Y : CLC : ADC #$00F8
    CMP !ENEMY_Y,X : BPL .drawHitbox

  .skipEnemy
    CPX #$0300 : BEQ .end ; limit # of hitboxes drawn
    TXA : CLC : ADC #$0040 : TAX : BRA .loopEnemies

  .end
    RTS

  .drawHitbox
    LDA !ENEMY_Y,X : SEC : SBC !LAYER1_Y : PHA ; Y coord
    LDA !ENEMY_X,X : SEC : SBC !LAYER1_X : PHA ; X coord

    %a8()
    ; X coord
    PLA : SEC : SBC !ENEMY_X_RADIUS,X
    STA $0370,Y : STA $0378,Y ; X pos
    CLC : ADC !ENEMY_X_RADIUS,X : ADC !ENEMY_X_RADIUS,X
    SEC : SBC #$08
    STA $0374,Y : STA $037C,Y
    PLA ; discard high byte

    ; Y coord
    PLA : DEC : SEC : SBC !ENEMY_Y_RADIUS,X
    STA $0371,Y : STA $0375,Y
    CLC : ADC !ENEMY_Y_RADIUS,X : ADC !ENEMY_Y_RADIUS,X
    SEC : SBC #$08
    STA $0379,Y : STA $037D,Y
    PLA ; discard high byte

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

    ; limit # of hitboxes drawn
    CPX #$0300 : BEQ .done
    TXA : CLC : ADC #$0040 : TAX : JMP .loopEnemies

  .done
    RTS
}

; draw hitboxes around enemies that use extended spritemaps
draw_ext_spritemap_hitbox:
{
    ; Kraid has too many hitboxes and overflows the OAM stack
    LDA !ROOM_ID : CMP #$A59F : BEQ .end ; check for Kraid's room

    LDX #$0000 ; X = enemy index
    LDY !OAM_STACK_POINTER ; Y = OAM stack pointer

  .loopEnemies
    ; check if extended spritemap
    LDA !ENEMY_EXTRA_PROPERTIES,X : AND #$0004 : BNE .extended

  .nextEnemy
    TXA : CLC : ADC #$0040 : CMP #$0340 : BEQ .end
    TAX : BRA .loopEnemies

  .end
    RTS

  .extended
    ; get spritemap pointer
    LDA !ENEMY_SPRITEMAP,X : STA $10
    LDA !ENEMY_BANK,X : STA $12

    ; get number of spritemaps
    ; Ceres steam has $1001 here ??
    LDA [$10] : AND #$00FF : BEQ .nextEnemy
    STA $C1

    ; get spritemap X/Y offsets
    LDA $10 : CLC : ADC #$0002 : STA $10
    LDA [$10] : STA $C5 ; X
    LDA $10 : CLC : ADC #$0002 : STA $10
    LDA [$10] : STA $C7 ; Y

    ; set hitbox pointer
    LDA $10 : CLC : ADC #$0004 : STA $10
    STA $C3 ; hitbox pointer for later
    LDA [$10] : STA $10 ; hitbox pointer

  .multiSpritemap
    LDA [$10] : BNE .continueHitboxes
    JMP .nextSpritemap

  .continueHitboxes
    PHA ; number of hitbox entries on stack

  .nextHitbox
    ; grab X and Y offsets
    LDA $10 : CLC : ADC #$0002 : STA $10
    LDA [$10] : STA $14 ; left offset
    LDA $10 : CLC : ADC #$0002 : STA $10
    LDA [$10] : STA $16 ; top offset
    LDA $10 : CLC : ADC #$0002 : STA $10
    LDA [$10] : STA $18 ; right offset
    LDA $10 : CLC : ADC #$0002 : STA $10
    LDA [$10] : STA $1A ; bottom offset

    ; skip two pointers to reach next hitbox
    LDA $10 : CLC : ADC #$0004 : STA $10

    ; check if on-screen
    LDA !ENEMY_X,X : CLC : ADC $14
    CMP !LAYER1_X : BMI .decHitbox
    LDA !LAYER1_X : CLC : ADC #$0100 : SEC : SBC $18
    CMP !ENEMY_X,X : BMI .decHitbox
    LDA !ENEMY_Y,X : SEC : SBC #$0018
    CMP !LAYER1_Y : BMI .decHitbox
    LDA !LAYER1_Y : CLC : ADC #$00F8
    CMP !ENEMY_Y,X : BPL .drawHitbox

  .decHitbox
    ; check for remaining hitboxes
    PLA : DEC : BEQ .nextSpritemap
    PHA : BRA .nextHitbox

  .drawHitbox
    LDA !ENEMY_Y,X : SEC : SBC !LAYER1_Y : CLC : ADC $C7 : STA $1C ; top edge
    LDA !ENEMY_X,X : SEC : SBC !LAYER1_X : CLC : ADC $C5 : STA $1D ; left edge

    ; calculate sprite positions
    %a8()
    ; X coord
    LDA $1D : CLC : ADC $14
    STA $0370,Y : STA $0378,Y ; sprite X pos
    LDA $1D : CLC : ADC $18 : SEC : SBC #$08
    STA $0374,Y : STA $037C,Y

    ; Y coord
    LDA $1C : DEC : CLC : ADC $16
    STA $0371,Y : STA $0375,Y ; sprite Y pos
    LDA $1C : CLC : ADC $1A : SEC : SBC #$08
    STA $0379,Y : STA $037D,Y

    ; Sprite Attributes - xxxxxxxx yyyyyyyy YXPPpppt tttttttt
    ; x=X pos, y=Y pos, Y=Y flip, X=X flip
    ; P=Priority, p=Palette, t=Tile number
    %ai16()
    LDA #$3A47 : STA $0372,Y ; %00111010 top-left
    LDA #$7A47 : STA $0376,Y ; %01111010 top-right
    LDA #$BA47 : STA $037A,Y ; %10111010 bottom-left
    LDA #$FA47 : STA $037E,Y ; %11111010 bottom-right

    ; inc oam stack
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER : TAY

    ; check for remaining hitboxes
    PLA : DEC : BEQ .nextSpritemap
    PHA : JMP .nextHitbox

  .nextSpritemap
    DEC $C1 : BEQ .nextEnemy2
    ; add 2 and grab X, add 2 and grab Y, add 4 and grab hitbox
    LDA $C3 : CLC : ADC #$0002 : STA $10
    LDA [$10] : STA $C5 ; X
    LDA $10 : CLC : ADC #$0002 : STA $10
    LDA [$10] : STA $C7 ; Y
    LDA $10 : CLC : ADC #$0004 : STA $10 : STA $C3
    LDA [$10] : STA $10 ; next hitbox pointer
    JMP .multiSpritemap

  .nextEnemy2
    ; limit # of hitboxes drawn
    CPX #$0300 : BEQ .done
    TXA : CLC : ADC #$0040 : TAX
    JMP .loopEnemies

  .done
    RTS
}

; draw hitboxes around enemy projectiles
draw_enemyproj_hitbox:
{
    ; min proj radius to draw all 4 corners
    ; 5 would be ideal, but 7 works better with MB ketchup beam
    !min_four_corners_radius = #$0007

    LDX #$FFFE : STX $12 : STX $14 ; X = projectile index
    LDY !OAM_STACK_POINTER ; Y = OAM stack pointer

  .nextProjectile
    INX #2
    LDA !ENEMY_PROJ_ID,X : BEQ .skipProjectile
    LDA !ram_sprite_feature_flags : BIT !SPRITE_32x32_PROJ : BEQ .normalRadius
    JMP .check32x32

  .normalRadius
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
    LDA !ENEMY_PROJ_Y,X : SEC : SBC !LAYER1_Y : PHA ; Y coord
    LDA !ENEMY_PROJ_X,X : SEC : SBC !LAYER1_X : PHA ; X coord
    LDA $12 : CMP !min_four_corners_radius : BPL .drawFullHitbox
    LDA $14 : CMP !min_four_corners_radius : BPL .drawFullHitbox

    ; For small projectiles only draw two corners
    %a8()
    PLA ; X coord
    SEC : SBC $12
    STA $0370,Y
    CLC : ADC $12 : ADC $12
    SEC : SBC #$08
    STA $0374,Y

    PLA : PLA : DEC ; Y coord
    SEC : SBC $14
    STA $0371,Y
    CLC : ADC $14 : ADC $14
    SEC : SBC #$08
    STA $0375,Y
    PLA

    %ai16()
    LDA #$3A47 : STA $0372,Y ; %00111010 top-left
    LDA #$FA47 : STA $0376,Y ; %11111010 bottom-right

    ; inc OAM stack
    ; vanilla routines use AND #$01FF to wrap the stack after 1FCh
    ; our routines start at zero so we exit when OAM is full
    TYA : CLC : ADC #$0008
    CMP #$0200 : BPL .fullStack
    STA !OAM_STACK_POINTER : TAY
    JMP .skipProjectile

  .drawFullHitbox
    %a8()
    PLA ; X coord
    SEC : SBC $12
    STA $0370,Y : STA $0378,Y
    CLC : ADC $12 : ADC $12
    SEC : SBC #$08
    STA $0374,Y : STA $037C,Y
    PLA ; discard high byte

    ; Y coord
    PLA : DEC : SEC : SBC $14
    STA $0371,Y : STA $0375,Y
    CLC : ADC $14 : ADC $14 : SEC : SBC #$08
    STA $0379,Y : STA $037D,Y
    PLA ; discard high byte

  .setAttributes
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

  .check32x32
    LDA !ENEMY_PROJ_PROPERTIES,X : AND #$A000 : CMP #$8000 : BNE .skip32x32
    LDA !ENEMY_PROJ_X,X : CMP !LAYER1_X : BMI .skip32x32
    LDA !LAYER1_X : CLC : ADC #$0100 : CMP !ENEMY_PROJ_X,X : BMI .skip32x32
    LDA !ENEMY_PROJ_Y,X : CMP !LAYER1_Y : BMI .skip32x32
    LDA !LAYER1_Y : CLC : ADC #$0100 : CMP !ENEMY_PROJ_Y,X : BMI .skip32x32

    LDA !ENEMY_PROJ_Y,X : AND #$FFE0 : CMP $14 : BNE .storeY
    LDA !ENEMY_PROJ_X,X : AND #$FFE0 : CMP $12 : BNE .storeX
  .skip32x32
    JMP .skipProjectile

  .storeX
    STA $12 : LDA $14 : SEC : SBC !LAYER1_Y : PHA ; top edge
    LDA $12 : BRA .draw32x32

  .storeY
    STA $14 : SEC : SBC !LAYER1_Y : PHA ; top edge
    LDA !ENEMY_PROJ_X,X : AND #$FFE0 : STA $12

  .draw32x32
    SEC : SBC !LAYER1_X : PHA ; left edge

    %a8()
    PLA ; left edge
    STA $0370,Y : STA $0378,Y
    CLC : ADC #$18
    STA $0374,Y : STA $037C,Y

    PLA : PLA ; top edge
    STA $0371,Y : STA $0375,Y
    CLC : ADC #$18
    STA $0379,Y : STA $037D,Y
    PLA

    JMP .setAttributes
}

; draw hitboxes around Samus projectiles
draw_samusproj_hitbox:
{
    LDX #$FFFE ; X = projectile index
    LDY !OAM_STACK_POINTER ; Y = OAM stack pointer

  .nextProjectile
    INX #2
    LDA !SAMUS_PROJ_RADIUS_Y,X : BEQ .skipProjectile
    LDA !SAMUS_PROJ_RADIUS_X,X : BEQ .skipProjectile
    LDA !ram_sprite_feature_flags : BIT !SPRITE_32x32_PROJ : BEQ .normalRadius
    JMP .check32x32

  .normalRadius
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
    ; X coord
    PLA : SEC : SBC !SAMUS_PROJ_RADIUS_X,X
    STA $0370,Y : STA $0378,Y ; X pos
    CLC : ADC !SAMUS_PROJ_RADIUS_X,X : ADC !SAMUS_PROJ_RADIUS_X,X : SEC : SBC #$08
    STA $0374,Y : STA $037C,Y
    PLA ; discard high byte

    ; Y coord
    PLA : DEC : SEC : SBC !SAMUS_PROJ_RADIUS_Y,X
    STA $0371,Y : STA $0375,Y ; Y pos
    CLC : ADC !SAMUS_PROJ_RADIUS_Y,X : ADC !SAMUS_PROJ_RADIUS_Y,X : SEC : SBC #$08
    STA $0379,Y : STA $037D,Y
    PLA ; discard high byte

  .setAttributes
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

  .skip32x32
    JMP .skipProjectile

  .check32x32
    ; skip bombs ($0500), bomb explosions ($0501) and power bombs ($0300)
    LDA !SAMUS_PROJ_PROPERTIES,X : BIT #$0701 : BNE .skip32x32

    LDA !SAMUS_PROJ_X,X : CMP !LAYER1_X : BMI .skip32x32
    LDA !LAYER1_X : CLC : ADC #$0100 : CMP !SAMUS_PROJ_X,X : BMI .skip32x32
    LDA !SAMUS_PROJ_Y,X : CMP !LAYER1_Y : BMI .skip32x32
    LDA !LAYER1_Y : CLC : ADC #$0100 : CMP !SAMUS_PROJ_Y,X : BMI .skip32x32

    LDA !SAMUS_PROJ_Y,X : AND #$FFE0 : SEC : SBC !LAYER1_Y : PHA ; top edge
    LDA !SAMUS_PROJ_X,X : AND #$FFE0 : SEC : SBC !LAYER1_X : PHA ; left edge

    %a8()
    PLA ; left edge
    STA $0370,Y : STA $0378,Y
    CLC : ADC #$18
    STA $0374,Y : STA $037C,Y

    PLA : PLA ; top edge
    STA $0371,Y : STA $0375,Y
    CLC : ADC #$18
    STA $0379,Y : STA $037D,Y
    PLA

    JMP .setAttributes
}

draw_custom_boss_hitbox:
{
    LDA !ROOM_ID : CMP #$DD58 : BEQ .mother_brain
    LDA !ROOM_ID : CMP #$B32E : BEQ .ridley_bridge
    LDA !ROOM_ID : CMP #$E0B5 : BNE .end

  .ridley_bridge
    JMP .ridley

  .end
    RTS

  .mother_brain
    ; check which phase MB is in, 2 = 2nd phase
    LDA $7E7800 : CMP #$0002 : BMI .end

    ; load hitbox enable bitflags
    LDA $7E7808 : BEQ .end : STA $C1
    LDX #$0000 : LDY !OAM_STACK_POINTER ; X = enemy index
    LDA #$00A9 : STA $12 ; MB bank

    ; draw body hitboxes
    LSR $C1 : BCC .head
    LDA #$B429 : STA $10 ; hitbox definition pointer, bank $A9

    ; first body hitbox
    LDA #$FFE0 : STA $14 ; left offset
    LDA #$FFE8 : STA $16 ; top offset
    LDA #$002A : STA $18 ; right offset
    LDA #$0038 : STA $1A ; bottom offset
    JSR DrawMBHitbox

    ; second body hitbox
    LDA #$FFE8 : STA $14 ; left offset
    LDA #$FFD6 : STA $16 ; top offset
    LDA #$001C : STA $18 ; right offset
    LDA #$FFE7 : STA $1A ; bottom offset
    JSR DrawMBHitbox

  .head
    ; draw head hitboxes
    LSR $C1 : BCC .neck
    LDA #$B43B : STA $10 ; hitbox definition pointer, bank $A9
    LDX #$0040

    ; first head hitbox
    LDA #$FFE8 : STA $14 ; left offset
    LDA #$FFEA : STA $16 ; top offset
    LDA #$0016 : STA $18 ; right offset
    LDA #$0000 : STA $1A ; bottom offset
    JSR DrawMBHitbox

    ; second head hitbox
    LDA #$FFEA : STA $14 ; left offset
    LDA #$0001 : STA $16 ; top offset
    LDA #$0010 : STA $18 ; right offset
    LDA #$0014 : STA $1A ; bottom offset
    JSR DrawMBHitbox

  .neck
    ; draw neck hitboxes
    LSR $C1 : BCC .done

    ; second head hitbox
    LDA #$FFF8 : STA $14 ; left offset
    LDA #$FFF8 : STA $16 ; top offset
    LDA #$0008 : STA $18 ; right offset
    LDA #$0008 : STA $1A ; bottom offset

    LDX #$0200
    LDA $7E804A : STA !ENEMY_X,X
    LDA $7E804C : STA !ENEMY_Y,X
    JSR DrawMBHitbox

    LDX #$0240
    LDA $7E8050 : STA !ENEMY_X,X
    LDA $7E8052 : STA !ENEMY_Y,X
    JSR DrawMBHitbox

    LDX #$0280
    LDA $7E8056 : STA !ENEMY_X,X
    LDA $7E8058 : STA !ENEMY_Y,X
    JSR DrawMBHitbox

  .done
    RTS

  .ridley
    ; radius is #$0E
    ; $7E20A4 tail X
    ; $7E20A6 tail Y
    ; exit if off-screen
    LDA $7E20A4 : CLC : ADC #$000E
    CMP !LAYER1_X : BMI .done
    LDA !LAYER1_X : CLC : ADC #$0100 : CLC : ADC #$000E
    CMP $7E20A4 : BMI .done
    LDA $7E20A6 : CLC : ADC #$0008
    CMP !LAYER1_Y : BMI .done
    LDA !LAYER1_Y : CLC : ADC #$00F8
    CMP $7E20A6 : BMI .done

    ; draw tail hitbox
    LDY !OAM_STACK_POINTER
    LDA $7E20A6 : SEC : SBC !LAYER1_Y : PHA ; top edge
    LDA $7E20A4 : SEC : SBC !LAYER1_X : PHA ; left edge

    %a8()
    ; X coord
    PLA : SEC : SBC #$0E
    STA $0370,Y : STA $0378,Y ; X pos
    CLC : ADC #$1C : SEC : SBC #$08
    STA $0374,Y : STA $037C,Y
    PLA ; discard high byte

    ; Y coord
    PLA : DEC : SEC : SBC #$0E
    STA $0371,Y : STA $0375,Y
    CLC : ADC #$1C : SEC : SBC #$08
    STA $0379,Y : STA $037D,Y
    PLA ; discard high byte

    ; Sprite Attributes - xxxxxxxx yyyyyyyy YXPPpppt tttttttt
    ; x=X pos, y=Y pos (low nibbles only), Y=Y flip, X=X flip
    ; P=Priority, p=Palette, t=Tile number
    %ai16()
    LDA #$3A47 : STA $0372,Y ; %00111010 top-left
    LDA #$7A47 : STA $0376,Y ; %01111010 top-right
    LDA #$BA47 : STA $037A,Y ; %10111010 bottom-left
    LDA #$FA47 : STA $037E,Y ; %11111010 bottom-right

    ; inc oam stack
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER
    RTS
}

DrawMBHitbox:
{
    LDA !ENEMY_Y,X : SEC : SBC !LAYER1_Y : STA $1C ; top edge
    LDA !ENEMY_X,X : SEC : SBC !LAYER1_X : STA $1D ; left edge

    ; calculate sprite positions
    %a8()
    ; X coord
    CLC : ADC $14
    STA $0370,Y : STA $0378,Y ; sprite X pos
    LDA $1D : CLC : ADC $18 : SEC : SBC #$08
    STA $0374,Y : STA $037C,Y

    ; Y coord
    LDA $1C : DEC : CLC : ADC $16
    STA $0371,Y : STA $0375,Y ; sprite Y pos
    LDA $1C : CLC : ADC $1A : SEC : SBC #$08
    STA $0379,Y : STA $037D,Y

    ; Sprite Attributes - xxxxxxxx yyyyyyyy YXPPpppt tttttttt
    ; x=X pos, y=Y pos, Y=Y flip, X=X flip
    ; P=Priority, p=Palette, t=Tile number
    %ai16()
    LDA #$3A47 : STA $0372,Y ; %00111010 top-left
    LDA #$7A47 : STA $0376,Y ; %01111010 top-right
    LDA #$BA47 : STA $037A,Y ; %10111010 bottom-left
    LDA #$FA47 : STA $037E,Y ; %11111010 bottom-right

    ; inc oam stack
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER : TAY
    RTS
}

sprite_tiles:
incbin "../resources/spritegfx.bin":0-600

print pc, " spritefeat end"
