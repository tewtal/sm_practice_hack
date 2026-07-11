;
; Features using sprites to draw information
; Sprite Attributes - xxxxxxxx yyyyyyyy tttttttt YXPPpppt
; x=X pos, y=Y pos, Y=Y flip, X=X flip
; P=Priority, p=Palette, t=Tile number
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


%startfree(87)

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
    JML $A0885D
else
    JML $A0884D
endif
}

; When loading into a game, do we need to update any sprite tiles?
update_sprite_tiles_loading:
{
    LDA !ram_sprite_feature_flags : BIT !SPRITE_OOB_WATCH : BEQ .skip
    JSL upload_sprite_oob_tiles
  .skip
    JML $80894D
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
    LDA !OAM_STACK_POINTER : STA $C9

    ; Samus X - (oob_width*8)
    LDA !SAMUS_X : SEC : SBC #(!oob_width*8) : STA $12
    AND #$000F : STA $C5

    ; [Samus X - (oob_width*8)] / 16
    LDA $12 : LSR #4 : STA $22

    ; Samus Y - (oob_height*8)
    LDA !SAMUS_Y : SEC : SBC #((!oob_height-2)*8) : STA $14
    AND #$000F : STA $C7

    ; [Samus Y - (oob_height*8)] / 16
    LDA $14 : LSR #4 : STA $24

    LDA !ROOM_WIDTH_BLOCKS : STA $16

    LDY #$0000
  .loop_y
    LDX #$0000
    %a8()
    LDA $16 : STA $4202
    TYA : CLC : ADC $24 : STA $4203
    NOP #2 ; wait for CPU math
    %a16()
    ; room_width_blocks * (Y + [Samus Y - (oob_height*8)] / 16)
    LDA $4216 : STA $18

  .loop_x
    PHY : PHX
    %a16()
    STX $C1 : STY $C3

    ; X + [Samus X - (oob_width*8)] / 16
    TXA : CLC : ADC $22 : AND #$0FFF

    ; a = (width * bit.lrshift(bit.band(cameraY+y*16, 0xFFF), 4)) + bit.lrshift(bit.band(cameraX+x*16, 0xFFFF), 4)
    CLC : ADC $18
    ; a = a * 2
    ASL : TAX
    ; Load clipdata of block
    LDA !LEVEL_DATA+1,X : AND #$00F0
    CMP #$00D0 : BEQ .vertical : CMP #$0050 : BNE .get_sprite_id

  .horizontal
    ; Horizontal extension, try once to resolve it
    TXA : LSR : TAX
    LDA !LEVEL_BTS,X : AND #$00FF : BEQ .next
    BIT #$0080 : BEQ .horizontal_addition
    ORA #$FF00
  .horizontal_addition
    PHX : CLC : ADC 1,S : PLX
    BRA .extension_block

  .vertical
    ; Vertical extension, try once to resolve it
    TXA : LSR : TAX
    LDA !LEVEL_BTS,X : AND #$00FF : BEQ .next
    PHX
    BIT #$0080 : BNE .negative_vertical
    TAX
    PLA
  .loop_positive_vertical
    CLC : ADC !ROOM_WIDTH_BLOCKS
    DEX : BNE .loop_positive_vertical

  .extension_block
    ASL : TAX
    LDA !LEVEL_DATA+1,X : AND #$00F0

  .get_sprite_id
    ; Get sprite ID for this block type
    CMP #$0030 : BEQ .check_scroll
    LSR #3 : TAX
  .get_block_gfx
    LDA.l block_gfx,X : BEQ .next

    ; Set sprite ID
    %a8()
    LDY !OAM_STACK_POINTER : STA !OAM_LOW+$2,Y

    ; Get X coord
    LDA $C1 : INC #2 : ASL #4 : SEC : SBC $C5
    STA !OAM_LOW,Y

    ; Get Y coord
    LDA $C3 : CLC : ADC #$04 : ASL #4 : SEC : SBC $C7
    STA !OAM_LOW+$1,Y

    ; Sprite attributes
    LDA #$3A : STA !OAM_LOW+$3,Y

    %a16()

    INY #4
    STY !OAM_STACK_POINTER

  .next
    PLX : PLY

    INX : CPX #!oob_width : BEQ .end_x
    JMP .loop_x

  .negative_vertical
    ORA #$FF00 : TAX
    PLA
  .loop_negative_vertical
    SEC : SBC !ROOM_WIDTH_BLOCKS
    INX : BNE .loop_negative_vertical

    ; For negative vertical extension into horizontal extension,
    ; allow one more attempt (handles 2x2 blocks)
    ASL : TAX
    LDA !LEVEL_DATA+1,X : AND #$00F0
    CMP #$0050 : BNE .get_sprite_id
    JMP .horizontal

  .check_scroll
    TXA : LSR : TAX
    LDA !LEVEL_BTS,X : AND #$00FF
    CMP #$0046 : BEQ .next
    LDX #$0006
    BRA .get_block_gfx

  .end_x
    INY : CPY #!oob_height : BEQ .end_y
    JMP .loop_y

  .end_y
    LDA !ram_sprite_feature_flags : BIT !SPRITE_OOB_X_WRAP : BEQ .copy_stack
    LDA $12 : BPL .copy_stack
    CLC : ADC #((!oob_width-1)*16) : BPL draw_sprite_x_wrap

  .copy_stack
    LDA !OAM_STACK_POINTER : BEQ .end
    LSR #4 : INC : STA $CB
    LDA $C9 : LSR #4 : STA $C9

    %a8()
    LDX $C9

  .copy_loop
    ; $0570..8F: High OAM. 2 bit entries
    ; ddccbbsx
    ; x: X position (upper 1 bit)
    ; s: Size
    ; b: sx for sprite 4n+1
    ; c: sx for sprite 4n+2
    ; d: sx for sprite 4n+3
    LDA #%10101010 : STA !OAM_HIGH,X
    INX : CPX $CB : BNE .copy_loop
    %a16()

  .end
    JMP draw_oob_samus_hitbox
}

draw_sprite_x_wrap:
{
    ; Find the index where position goes from negative to positive
    LDX #$0000
    LDA $12
  .search
    INX : CLC : ADC #$0010 : BMI .search

    ; Collision checks oscillate between left-to-right and right-to-left
    ; Either way, the game looks up a block index and adds/subtracts from there
    ; Normally there isn't much difference between the two checks,
    ; but in the case where X position overflows or underflows,
    ; there is a significant difference between left-to-right and right-to-left.
    ; The end result is the game can check double the tiles it normally would,
    ; but it only checks half of them each frame.
    ;
    ; To represent this, we want to draw the pairs of extra tiles along the Y-axis,
    ; but each frame we will alternate which of the two extra tiles to draw.
    ; This is done for efficiency and also to illustrate the oscillating effect.
    STX $C1 : LDY #$0000
    LDA $C5 : CLC : ADC #$0008 : STA $C5
    LDA !FRAME_COUNTER : BIT #$0001 : BNE .loop
    DEC $C1
    LDA $C5 : SEC : SBC #$000F : STA $C5

  .loop
    %a8()
    LDA $16 : STA $4202
    TYA : CLC : ADC $24 : STA $4203
    NOP #2 ; wait for CPU math
    %a16()
    ; room_width_blocks * (Y + [Samus Y - (oob_height*8)] / 16)
    LDA $4216 : STA $18

    PHY
    STY $C3

    ; X + [Samus X - (oob_width*8)] / 16
    LDA $C1 : CLC : ADC $22 : AND #$0FFF
    ORA #$1000 : BIT #$0800 : BEQ .continue
    ORA #$F000

  .continue
    ; a = (width * bit.lrshift(bit.band(cameraY+y*16, 0xFFF), 4)) + bit.lrshift(bit.band(cameraX+x*16, 0xFFFF), 4)
    CLC : ADC $18
    ; a = a * 2
    ASL : TAX
    ; Load clipdata of block
    LDA !LEVEL_DATA+1,X : AND #$00F0
    CMP #$00D0 : BEQ .vertical : CMP #$0050 : BNE .get_sprite_id

  .horizontal
    ; Horizontal extension, try once to resolve it
    TXA : LSR : TAX
    LDA !LEVEL_BTS,X : AND #$00FF : BEQ .next
    BIT #$0080 : BEQ .horizontal_addition
    ORA #$FF00
  .horizontal_addition
    PHX : CLC : ADC 1,S : PLX
    BRA .extension_block

  .vertical
    ; Vertical extension, try once to resolve it
    TXA : LSR : TAX
    LDA !LEVEL_BTS,X : AND #$00FF : BEQ .next
    PHX
    BIT #$0080 : BNE .negative_vertical
    TAX
    PLA
  .loop_positive_vertical
    CLC : ADC !ROOM_WIDTH_BLOCKS
    DEX : BNE .loop_positive_vertical

  .extension_block
    ASL : TAX
    LDA !LEVEL_DATA+1,X : AND #$00F0

  .get_sprite_id
    ; Get sprite ID for this block type
    CMP #$0030 : BEQ .check_scroll
    LSR #3 : TAX
  .get_block_gfx
    LDA.l block_gfx,X : BEQ .next

    ; Set sprite ID
    %a8()
    LDY !OAM_STACK_POINTER : STA !OAM_LOW+$2,Y

    ; Get X coord
    LDA $C1 : INC #2 : ASL #4 : SEC : SBC $C5
    STA !OAM_LOW,Y

    ; Get Y coord
    LDA $C3 : CLC : ADC #$04 : ASL #4 : SEC : SBC $C7
    STA !OAM_LOW+$1,Y

    ; Sprite Attributes
    LDA #$3A : STA !OAM_LOW+$3,Y

    %a16()

    INY #4
    STY !OAM_STACK_POINTER

  .next
    PLY : INY : CPY #!oob_height : BEQ .end
    JMP .loop

  .end
    JMP draw_sprite_oob_copy_stack

  .negative_vertical
    ORA #$FF00 : TAX
    PLA
  .loop_negative_vertical
    SEC : SBC !ROOM_WIDTH_BLOCKS
    INX : BNE .loop_negative_vertical

    ; For negative vertical extension into horizontal extension,
    ; allow one more attempt (handles 2x2 blocks)
    ASL : TAX
    LDA !LEVEL_DATA+1,X : AND #$00F0
    CMP #$0050 : BNE .get_sprite_id
    JMP .horizontal

  .check_scroll
    TXA : LSR : TAX
    LDA !LEVEL_BTS,X : AND #$00FF
    CMP #$0046 : BEQ .next
    LDX #$0006
    BRA .get_block_gfx
}

block_gfx:
    ; 00 = transparent
    ; D2 = white
    ; D4 = yellow
    ; D6 = brown
    ; D8 = pink
    ; DA = darkgreen
    ; DC = blue
    ; DE = mint

    ;  air,   slope, air (trick xray), treadmill, ??,    h-extend, ??,    ??,    solid, door,  spike, crumble, shot,  v-xtend, grapple, bomb
    dw $0000, $00DE, $0000,            $00D8,     $0000, $0000,    $0000, $0000, $00D6, $00D4, $00DC, $00DC,   $00D2, $0000,   $00DA,   $00DC

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
    STA !OAM_LOW,Y : STA !OAM_LOW+$8,Y
    CLC : ADC !SAMUS_X_RADIUS : ADC !SAMUS_X_RADIUS : SEC : SBC #$08
    STA !OAM_LOW+$4,Y : STA !OAM_LOW+$C,Y
    PLA ; discard high byte

    PLA : DEC ; Y coord
    SEC : SBC !SAMUS_Y_RADIUS
    STA !OAM_LOW+$1,Y : STA !OAM_LOW+$5,Y
    CLC : ADC !SAMUS_Y_RADIUS : ADC !SAMUS_Y_RADIUS : SEC : SBC #$08
    STA !OAM_LOW+$9,Y : STA !OAM_LOW+$D,Y
    PLA ; discard high byte

    LDA #%00111010
    STA !OAM_LOW+$3,Y ; Sprite 1 ATTR
    STA !OAM_LOW+$7,Y ; Sprite 2 ATTR
    STA !OAM_LOW+$B,Y ; Sprite 3 ATTR
    STA !OAM_LOW+$F,Y ; Sprite 4 ATTR

    LDA #$DC : STA !OAM_LOW+$2,Y
    LDA #$DD : STA !OAM_LOW+$6,Y
    LDA #$EC : STA !OAM_LOW+$A,Y
    LDA #$ED : STA !OAM_LOW+$E,Y

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
    LDA !OAM_HIGH,Y : AND.l spr_clr_flags,X : STA !OAM_HIGH,Y

    ; Sprite number
    PLX : INX : TXA : PHX
    ; Table offset
    LSR #2 : TAY
    TXA : AND #$0003 : ASL : TAX

    ; Mask off bits to clear high sprite offset
    LDA !OAM_HIGH,Y : AND.l spr_clr_flags,X : STA !OAM_HIGH,Y

    ; Sprite number
    PLX : INX : TXA : PHX
    ; Table offset
    LSR #2 : TAY
    TXA : AND #$0003 : ASL : TAX

    ; Mask off bits to clear high sprite offset
    LDA !OAM_HIGH,Y : AND.l spr_clr_flags,X : STA !OAM_HIGH,Y

    ; Sprite number
    PLX : INX : TXA : PHX
    ; Table offset
    LSR #2 : TAY
    TXA : AND #$0003 : ASL : TAX

    ; Mask off bits to clear high sprite offset
    LDA !OAM_HIGH,Y : AND.l spr_clr_flags,X : STA !OAM_HIGH,Y
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
    LDA !SAMUS_X : SEC : SBC !LAYER1_X : PHA ; X coord
    TDC
    %a8()
    LDY !OAM_STACK_POINTER
    ; X coord
    PLA : SEC : SBC !SAMUS_X_RADIUS
    STA !OAM_LOW,Y : STA !OAM_LOW+$8,Y
    CLC : ADC !SAMUS_X_RADIUS : ADC !SAMUS_X_RADIUS : SEC : SBC #$08
    STA !OAM_LOW+$4,Y : STA !OAM_LOW+$C,Y
    PLA ; discard high byte

    ; Y coord
    PLA : DEC : SEC : SBC !SAMUS_Y_RADIUS
    STA !OAM_LOW+$1,Y : STA !OAM_LOW+$5,Y
    CLC : ADC !SAMUS_Y_RADIUS : ADC !SAMUS_Y_RADIUS : SEC : SBC #$08
    STA !OAM_LOW+$9,Y : STA !OAM_LOW+$D,Y
    PLA ; discard high byte

    ; Sprite Attributes
    %a16()
    LDA !ram_sprite_feature_flags : BIT !SPRITE_SAMUS_HITBOX_WHITE : BEQ .blue
    LDA #$3047 : STA !OAM_LOW+$2,Y ; top left
    ORA #$4000 : STA !OAM_LOW+$6,Y ; top right
    ORA #$8000 : STA !OAM_LOW+$E,Y ; bottom right
    AND #$BFFF : STA !OAM_LOW+$A,Y ; bottom left

    ; inc oam stack
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER
    RTS

  .blue
    LDA #$3A47 : STA !OAM_LOW+$2,Y ; top left
    ORA #$4000 : STA !OAM_LOW+$6,Y ; top right
    ORA #$8000 : STA !OAM_LOW+$E,Y ; bottom right
    AND #$BFFF : STA !OAM_LOW+$A,Y ; bottom left

    ; inc oam stack
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER
    RTS
}

; draw hitboxes around first 12 enemies
draw_enemy_hitbox:
{
    LDA !ram_sprite_feature_flags : BIT !SPRITE_ENEMY_HITBOX_WHITE : BEQ .blue
    LDA #$0047 : STA $CB
    BRA .start

  .blue
    LDA #$0A47 : STA $CB

  .start
    LDX #$0000 ; X = enemy index
    LDY !OAM_STACK_POINTER ; Y = OAM stack pointer

  .loopEnemies
    ; skip enemy if deleted
    LDA !ENEMY_PROPERTIES,X : AND #$0200 : BNE .skipEnemy
    ; skip enemy if extended spritemap and not frozen
    LDA !ENEMY_FROZEN_TIMER,X : BNE .checkOffscreen
    LDA !ENEMY_EXTRA_PROPERTIES,X : AND #$0004 : BNE .skipEnemy

  .checkOffscreen
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
    STA !OAM_LOW,Y : STA !OAM_LOW+$8,Y ; X pos
    CLC : ADC !ENEMY_X_RADIUS,X : ADC !ENEMY_X_RADIUS,X
    SEC : SBC #$08
    STA !OAM_LOW+$4,Y : STA !OAM_LOW+$C,Y
    PLA ; discard high byte

    ; Y coord
    PLA : DEC : SEC : SBC !ENEMY_Y_RADIUS,X
    STA !OAM_LOW+$1,Y : STA !OAM_LOW+$5,Y
    CLC : ADC !ENEMY_Y_RADIUS,X : ADC !ENEMY_Y_RADIUS,X
    SEC : SBC #$08
    STA !OAM_LOW+$9,Y : STA !OAM_LOW+$D,Y
    PLA ; discard high byte

    ; Sprite Attributes
    %a16()
    LDA $CB
    ORA #$3000 : STA !OAM_LOW+$2,Y ; top left
    ORA #$4000 : STA !OAM_LOW+$6,Y ; top right
    ORA #$8000 : STA !OAM_LOW+$E,Y ; bottom right
    AND #$BFFF : STA !OAM_LOW+$A,Y ; bottom left

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
    LDA !ram_sprite_feature_flags : BIT !SPRITE_ENEMY_HITBOX_WHITE : BEQ .blue
    LDA #$0047 : STA $CB
    BRA .start

  .blue
    LDA #$0A47 : STA $CB

  .start
    LDX #$0000 ; X = enemy index
    LDY !OAM_STACK_POINTER ; Y = OAM stack pointer

  .loopEnemies
    ; skip enemy if deleted
    LDA !ENEMY_PROPERTIES,X : AND #$0200 : BNE .nextEnemy
    ; check if extended spritemap and not frozen
    LDA !ENEMY_FROZEN_TIMER,X : BNE .nextEnemy
    LDA !ENEMY_EXTRA_PROPERTIES,X : AND #$0004 : BNE .extended

  .nextEnemy
    TXA : CLC : ADC #$0040 : CMP #$0340 : BEQ .end
    TAX : BRA .loopEnemies

  .end
    RTS

  .extended
    ; get spritemap pointer
    ; Kraid has no pointer set
    LDA !ENEMY_SPRITEMAP,X : BEQ .nextEnemy
    STA $10
    LDA !ENEMY_BANK,X : STA $12

    ; get number of spritemaps
    ; Ceres steam has $1001 here
    LDA [$10] : AND #$00FF : BEQ .nextEnemy
    STA $C1

    ; get spritemap X/Y offsets
    LDA $10 : INC #2 : STA $10
    LDA [$10] : STA $C5 ; X
    LDA $10 : INC #2 : STA $10
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
    LDA $10 : INC #2 : STA $10
    LDA [$10] : STA $14 ; left offset
    LDA $10 : INC #2 : STA $10
    LDA [$10] : STA $16 ; top offset
    LDA $10 : INC #2 : STA $10
    LDA [$10] : STA $18 ; right offset
    LDA $10 : INC #2 : STA $10
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
    STA !OAM_LOW,Y : STA !OAM_LOW+$8,Y ; sprite X pos
    LDA $1D : CLC : ADC $18 : SEC : SBC #$08
    STA !OAM_LOW+$4,Y : STA !OAM_LOW+$C,Y

    ; Y coord
    LDA $1C : DEC : CLC : ADC $16
    STA !OAM_LOW+$1,Y : STA !OAM_LOW+$5,Y ; sprite Y pos
    LDA $1C : CLC : ADC $1A : SEC : SBC #$08
    STA !OAM_LOW+$9,Y : STA !OAM_LOW+$D,Y

    ; Sprite Attributes
    %a16()
    LDA $CB
    ORA #$3000 : STA !OAM_LOW+$2,Y ; top left
    ORA #$4000 : STA !OAM_LOW+$6,Y ; top right
    ORA #$8000 : STA !OAM_LOW+$E,Y ; bottom right
    AND #$BFFF : STA !OAM_LOW+$A,Y ; bottom left

    ; inc oam stack
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER : TAY

    ; check for remaining hitboxes
    PLA : DEC : BEQ .nextSpritemap
    PHA : JMP .nextHitbox

  .nextSpritemap
    DEC $C1 : BEQ .nextEnemy2
    ; add 2 and grab X, add 2 and grab Y, add 4 and grab hitbox
    LDA $C3 : INC #2 : STA $10
    LDA [$10] : STA $C5 ; X
    LDA $10 : INC #2 : STA $10
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

    LDA !ram_sprite_feature_flags : BIT !SPRITE_ENEMY_PROJ_WHITE : BEQ .blue
    LDA #$0047 : STA $CB
    BRA .start

  .blue
    LDA #$0A47 : STA $CB

  .start
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
    STA !OAM_LOW,Y
    CLC : ADC $12 : ADC $12
    SEC : SBC #$08
    STA !OAM_LOW+$4,Y

    PLA : PLA : DEC ; Y coord
    SEC : SBC $14
    STA !OAM_LOW+$1,Y
    CLC : ADC $14 : ADC $14
    SEC : SBC #$08
    STA !OAM_LOW+$5,Y
    PLA

    ; Sprite Attributes
    %a16()
    LDA $CB
    ORA #$3000 : STA !OAM_LOW+$2,Y ; top left
    ORA #$C000 : STA !OAM_LOW+$6,Y ; bottom right

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
    STA !OAM_LOW,Y : STA !OAM_LOW+$8,Y
    CLC : ADC $12 : ADC $12
    SEC : SBC #$08
    STA !OAM_LOW+$4,Y : STA !OAM_LOW+$C,Y
    PLA ; discard high byte

    ; Y coord
    PLA : DEC : SEC : SBC $14
    STA !OAM_LOW+$1,Y : STA !OAM_LOW+$5,Y
    CLC : ADC $14 : ADC $14 : SEC : SBC #$08
    STA !OAM_LOW+$9,Y : STA !OAM_LOW+$D,Y
    PLA ; discard high byte

  .setAttributes
    ; Sprite Attributes
    %a16()
    LDA $CB
    ORA #$3000 : STA !OAM_LOW+$2,Y ; top left
    ORA #$4000 : STA !OAM_LOW+$6,Y ; top right
    ORA #$8000 : STA !OAM_LOW+$E,Y ; bottom right
    AND #$BFFF : STA !OAM_LOW+$A,Y ; bottom left

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
    STA !OAM_LOW,Y : STA !OAM_LOW+$8,Y
    CLC : ADC #$18
    STA !OAM_LOW+$4,Y : STA !OAM_LOW+$C,Y

    PLA : PLA ; top edge
    STA !OAM_LOW+$1,Y : STA !OAM_LOW+$5,Y
    CLC : ADC #$18
    STA !OAM_LOW+$9,Y : STA !OAM_LOW+$D,Y
    PLA

    JMP .setAttributes
}

; draw hitboxes around Samus projectiles
draw_samusproj_hitbox:
{
    LDA !ram_sprite_feature_flags : BIT !SPRITE_SAMUS_PROJ_WHITE : BEQ .blue
    LDA #$0047 : STA $CB
    BRA .start

  .blue
    LDA #$0A47 : STA $CB

  .start
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
    STA !OAM_LOW,Y : STA !OAM_LOW+$8,Y ; X pos
    CLC : ADC !SAMUS_PROJ_RADIUS_X,X : ADC !SAMUS_PROJ_RADIUS_X,X : SEC : SBC #$08
    STA !OAM_LOW+$4,Y : STA !OAM_LOW+$C,Y
    PLA ; discard high byte

    ; Y coord
    PLA : DEC : SEC : SBC !SAMUS_PROJ_RADIUS_Y,X
    STA !OAM_LOW+$1,Y : STA !OAM_LOW+$5,Y ; Y pos
    CLC : ADC !SAMUS_PROJ_RADIUS_Y,X : ADC !SAMUS_PROJ_RADIUS_Y,X : SEC : SBC #$08
    STA !OAM_LOW+$9,Y : STA !OAM_LOW+$D,Y
    PLA ; discard high byte

  .setAttributes
    ; Sprite Attributes
    %a16()
    LDA $CB
    ORA #$3000 : STA !OAM_LOW+$2,Y ; top left
    ORA #$4000 : STA !OAM_LOW+$6,Y ; top right
    ORA #$8000 : STA !OAM_LOW+$E,Y ; bottom right
    AND #$BFFF : STA !OAM_LOW+$A,Y ; bottom left

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
    ; Only show beams, missiles, and super missiles
    LDA !SAMUS_PROJ_PROPERTIES,X : AND #$0F00 : CMP #$0300 : BPL .skip32x32

    LDA !SAMUS_PROJ_X,X : CMP !LAYER1_X : BMI .skip32x32
    LDA !LAYER1_X : CLC : ADC #$0100 : CMP !SAMUS_PROJ_X,X : BMI .skip32x32
    LDA !SAMUS_PROJ_Y,X : CMP !LAYER1_Y : BMI .skip32x32
    LDA !LAYER1_Y : CLC : ADC #$0100 : CMP !SAMUS_PROJ_Y,X : BMI .skip32x32

    LDA !SAMUS_PROJ_Y,X : AND #$FFE0 : SEC : SBC !LAYER1_Y : PHA ; top edge
    LDA !SAMUS_PROJ_X,X : AND #$FFE0 : SEC : SBC !LAYER1_X : PHA ; left edge

    %a8()
    PLA ; left edge
    STA !OAM_LOW,Y : STA !OAM_LOW+$8,Y
    CLC : ADC #$18
    STA !OAM_LOW+$4,Y : STA !OAM_LOW+$C,Y

    PLA : PLA ; top edge
    STA !OAM_LOW+$1,Y : STA !OAM_LOW+$5,Y
    CLC : ADC #$18
    STA !OAM_LOW+$9,Y : STA !OAM_LOW+$D,Y
    PLA

    JMP .setAttributes
}

draw_custom_boss_hitbox:
{
    LDA !ROOM_ID : CMP.w #ROOM_MotherBrainRoom : BEQ .mother_brain
    CMP.w #ROOM_KraidRoom : BEQ .kraid_bridge
    CMP.w #ROOM_RidleyRoom : BEQ .ridley_bridge
    CMP.w #ROOM_CeresRidleyRoom : BNE .end

  .ridley_bridge
    JMP .ridley

  .end
    RTS

  .kraid_bridge
    JMP .kraid

  .mother_brain
    ; check which phase MB is in, 2 = 2nd phase
    LDA $7E7800 : CMP #$0002 : BMI .end
    LDA !ram_sprite_feature_flags : BIT !SPRITE_ENEMY_HITBOX_WHITE : BEQ .mb_blue
    LDA #$0047 : STA $CB
    BRA .mb_start

  .mb_blue
    LDA #$0A47 : STA $CB

  .mb_start
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
    LSR $C1 : BCC .mb_done

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

  .mb_done
    RTS

  .kraid
    ; load kraid's mouth hitbox if active
    LDA !ENEMY_FUNCTION_POINTER : CMP #$C537 : BPL .mb_done
    LDA !ENEMY_VAR_1 : SEC : SBC #$0008 : TAX
    LDA $A70006,X : CMP #$FFFF : BEQ .mb_done
    TAX
    LDA $A70000,X : CLC : ADC !ENEMY_X : CMP !LAYER1_X : BMI .mb_done
    SEC : SBC !LAYER1_X : CMP #$0100 : BPL .mb_done
    STA $14 ; left offset
    LDA #$00F8 : STA $18 ; right offset
    LDA $A70002,X : CLC : ADC !ENEMY_Y : CMP !LAYER1_Y : BMI .mb_done
    SEC : SBC !LAYER1_Y : STA $16 ; top offset
    LDA $A70006,X : CLC : ADC !ENEMY_Y : STA $1A
    LDA !LAYER1_Y : CLC : ADC #$0100 : CMP $1A : BMI .mb_done
    LDA $1A : SEC : SBC !LAYER1_Y : SBC #$0008 : STA $1A ; bottom offset

    ; draw kraid's mouth hitbox
    LDY !OAM_STACK_POINTER
    %a8()
    ; X coord
    LDA $14 : STA !OAM_LOW,Y : STA !OAM_LOW+$8,Y
    LDA $18 : STA !OAM_LOW+$4,Y : STA !OAM_LOW+$C,Y
    ; Y coord
    LDA $16 : DEC : STA !OAM_LOW+$1,Y : STA !OAM_LOW+$5,Y
    LDA $1A : STA !OAM_LOW+$9,Y : STA !OAM_LOW+$D,Y

    ; Sprite Attributes
    %a16()
    LDA !ram_sprite_feature_flags : BIT !SPRITE_ENEMY_HITBOX_WHITE : BEQ .kraid_blue
    LDA #$3047 : STA !OAM_LOW+$2,Y ; top left
    ORA #$4000 : STA !OAM_LOW+$6,Y ; top right
    ORA #$8000 : STA !OAM_LOW+$E,Y ; bottom right
    AND #$BFFF : STA !OAM_LOW+$A,Y ; bottom left

    ; inc oam stack
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER
    RTS

  .kraid_blue
    LDA #$3A47 : STA !OAM_LOW+$2,Y ; top left
    ORA #$4000 : STA !OAM_LOW+$6,Y ; top right
    ORA #$8000 : STA !OAM_LOW+$E,Y ; bottom right
    AND #$BFFF : STA !OAM_LOW+$A,Y ; bottom left

    ; inc oam stack
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER

  .kraid_done
    RTS

  .ridley
    ; radius is #$0E
    ; $7E20A4 tail X
    ; $7E20A6 tail Y
    ; exit if off-screen
    LDA $7E20A4 : CLC : ADC #$000E
    CMP !LAYER1_X : BMI .kraid_done
    LDA !LAYER1_X : CLC : ADC #$0100 : CLC : ADC #$000E
    CMP $7E20A4 : BMI .kraid_done
    LDA $7E20A6 : CLC : ADC #$0008
    CMP !LAYER1_Y : BMI .kraid_done
    LDA !LAYER1_Y : CLC : ADC #$00F8
    CMP $7E20A6 : BMI .kraid_done

    ; draw tail hitbox
    LDY !OAM_STACK_POINTER
    LDA $7E20A6 : SEC : SBC !LAYER1_Y : PHA ; top edge
    LDA $7E20A4 : SEC : SBC !LAYER1_X : PHA ; left edge

    %a8()
    ; X coord
    PLA : SEC : SBC #$0E
    STA !OAM_LOW,Y : STA !OAM_LOW+$8,Y ; X pos
    CLC : ADC #$14
    STA !OAM_LOW+$4,Y : STA !OAM_LOW+$C,Y
    PLA ; discard high byte

    ; Y coord
    PLA : DEC : SEC : SBC #$0E
    STA !OAM_LOW+$1,Y : STA !OAM_LOW+$5,Y
    CLC : ADC #$14
    STA !OAM_LOW+$9,Y : STA !OAM_LOW+$D,Y
    PLA ; discard high byte

    ; Sprite Attributes
    %a16()
    LDA !ram_sprite_feature_flags : BIT !SPRITE_ENEMY_HITBOX_WHITE : BEQ .ridley_blue
    LDA #$3047 : STA !OAM_LOW+$2,Y ; top left
    ORA #$4000 : STA !OAM_LOW+$6,Y ; top right
    ORA #$8000 : STA !OAM_LOW+$E,Y ; bottom right
    AND #$BFFF : STA !OAM_LOW+$A,Y ; bottom left

    ; inc oam stack
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER
    RTS

  .ridley_blue
    LDA #$3A47 : STA !OAM_LOW+$2,Y ; top left
    ORA #$4000 : STA !OAM_LOW+$6,Y ; top right
    ORA #$8000 : STA !OAM_LOW+$E,Y ; bottom right
    AND #$BFFF : STA !OAM_LOW+$A,Y ; bottom left

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
    STA !OAM_LOW,Y : STA !OAM_LOW+$8,Y ; sprite X pos
    LDA $1D : CLC : ADC $18 : SEC : SBC #$08
    STA !OAM_LOW+$4,Y : STA !OAM_LOW+$C,Y

    ; Y coord
    LDA $1C : DEC : CLC : ADC $16
    STA !OAM_LOW+$1,Y : STA !OAM_LOW+$5,Y ; sprite Y pos
    LDA $1C : CLC : ADC $1A : SEC : SBC #$08
    STA !OAM_LOW+$9,Y : STA !OAM_LOW+$D,Y

    ; Sprite Attributes
    %a16()
    LDA $CB
    ORA #$3000 : STA !OAM_LOW+$2,Y ; top left
    ORA #$4000 : STA !OAM_LOW+$6,Y ; top right
    ORA #$8000 : STA !OAM_LOW+$E,Y ; bottom right
    AND #$BFFF : STA !OAM_LOW+$A,Y ; bottom left

    ; inc oam stack
    TYA : CLC : ADC #$0010 : STA !OAM_STACK_POINTER : TAY
    RTS
}

sprite_tiles:
incbin "../resources/spritegfx.bin":0-600

%endfree(87)
