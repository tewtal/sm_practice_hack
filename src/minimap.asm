;=======================================================
;Patches to support the minimap
;=======================================================

org $9AB200 ; graphics for HUD
hudgfx_bin:
if !FEATURE_VANILLAHUD
; Vanilla HUD build only needs this label
else
incbin ../resources/hudgfx.bin


; Place minimap graphics in bank DF
%startfree(DF)
mapgfx_bin:
incbin ../resources/mapgfx.bin

; Next block needs to be all zeros to clear a tilemap
fillbyte $00
fill 4096
%endfree(DF)


; The default HUD minimap should be cleared
org $8098FF
mm_default_HUD_row_1:
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F

org $80993F
mm_default_HUD_row_2:
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F

org $80997F
mm_default_HUD_row_3:
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F

; The default energy 0 text should be cleared
org $80994D
mm_default_HUD_energy:
    dw #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F, #$2C0F


org $809AF3
    JSL mm_initialize_minimap

org $809B51
    JMP $9BFB ; skip drawing auto reserve icon and normal energy numbers and tanks during HUD routine


org $8282E5 ; write and clear tiles to VRAM
    JSL mm_write_and_clear_hud_tiles
    JSL overwrite_HUD_numbers
    BRA mm_write_next_tiles

mm_refresh_reserves:
    LDA #$FFFF : STA !ram_reserves_last
    RTS
warnpc $828305

org $828305
mm_write_next_tiles:

org $828EB8 ; write and clear tiles to VRAM
    JSL mm_write_and_clear_hud_tiles
    PLP
    RTL


org $829022
    JSR mm_setup_map_scrolling

; Move Ceres map data up four bytes
; (overlaps with Tourian map data but both have zeros)
org $829723
mm_map_data_table_ceres_entry:
    dw $9D23

org $829D50
mm_map_data_ceres_start_nonzero:
    db $08

org $829D64
mm_map_data_ceres_end_nonzero:
    db $0F,$00,$00,$00,$01,$F8,$00,$00,$00,$00

; Move start of setup map scrolling routine up four bytes
org $829E23
mm_setup_map_scrolling:
    ; Copy from $829E27 routine
    %ai16()
    STA $14
    LDA !MAP_MAX_X_SCROLL : SEC : SBC !MAP_MIN_X_SCROLL
    LSR : CLC : ADC !MAP_MIN_X_SCROLL
    SEC : SBC #$0080

    ; Insert new four-byte instruction
    ; #$FFFF maintains vanilla behavior and #$FFF8 always aligns the grid
    AND !sram_map_grid_alignment

    ; Continue with vanilla routine
warnpc $829E3B


org $82AEAF ; routine to remove auto reserve icon on HUD from equip screen
    JSR mm_refresh_reserves

org $82AED9 ; routine to draw auto reserve icon on HUD from equip screen
    JSR mm_refresh_reserves

org $82E488 ; write tiles to VRAM
    JMP mm_write_hud_tiles_during_door


; Placed in bank 82 so that the jumps work
%startfree(82)

mm_write_hud_tiles_during_door:
{
    LDA !ram_minimap : BNE .minimap_vram

    ; Load in normal vram
    JSR $E039
    dl hudgfx_bin : dw $4000, $1000
    JSL overwrite_HUD_numbers
    JMP $E492 ; resume logic

  .minimap_vram
    JSR $E039
    dl mapgfx_bin : dw $4000, $1000
    JSL overwrite_HUD_numbers
    JMP $E492 ; resume logic
}

%endfree(82)


org $90A7E8      ; optimize following code by exactly six bytes
    TDC : TAX : INC
    STA !DISABLE_MINIMAP
    ; only clear minimap if it is visible (this check requires six bytes)
    LDA !ram_minimap : BEQ mm_skip_clear_minimap
    LDA #$2C1F
warnpc $90A7F7

org $90A80A      ; normally runs after minimap grid has been drawn
mm_skip_clear_minimap:

org $90A91B      ; optimize for performance and to make room for extra minimap enabled check
mm_update_minimap:
{
    LDA !ram_minimap : BNE .start
  .skip
    RTL
  .start
    ; we can check for disable minimap before PHP (saves one byte)
    LDA !DISABLE_MINIMAP : BNE .skip
    PHP : %ai16()

    ; based on $90A925, sanity check X and Y position
    LDA !SAMUS_X : LSR #4
    CMP !ROOM_WIDTH_BLOCKS : BCC .checkY
  .checkFailed
    PLP : RTL
  .checkY
    LDA !SAMUS_Y : LSR #4
    CMP !ROOM_HEIGHT_BLOCKS : BCS .checkFailed

    ; based on $90A941, initialize local variables
    STZ $2E
    LDA !SAMUS_X+1 : AND #$00FF
    CLC : ADC !ROOM_MAP_X_COORDINATE
    PHA : AND #$0020 : STA $22
    PLA : AND #$001F : STA $12
    AND #$0007 : TAY
    LDA $12 : LSR #3 : STA $14
    LDA !SAMUS_Y+1 : AND #$00FF
    SEC : ADC !ROOM_MAP_Y_COORDINATE
}
warnpc $90A971   ; return to original code here

org $90A97E
    JMP mm_inc_tile_count


; Placed in bank 90 so that the jumps work
%startfree(90)

mm_initialize_minimap:
{
    ; If we just left Ceres, increment segment timer
    LDA !GAMEMODE : AND #$00FF : CMP #$0006 : BNE .init_minimap
    LDA #$0000 : STA $12 : STA $14 : STA !ram_room_has_set_rng
    STA !ram_realtime_room : STA !ram_last_realtime_room
    STA !ram_gametime_room : STA !ram_last_gametime_room
    STA !ram_last_room_lag : STA !ram_last_door_lag_frames : STA !ram_transition_counter

    ; adding 1:13 to seg timer to account for missed frames between Ceres and Zebes
    LDA !ram_seg_rt_frames : CLC : ADC #$000D : STA !ram_seg_rt_frames
    CMP #$003C : BMI .add_seconds
    SEC : SBC #$003C : STA !ram_seg_rt_frames : INC $12

  .add_seconds
    LDA !ram_seg_rt_seconds : CLC : ADC #$0001 : ADC $12 : STA !ram_seg_rt_seconds
    CMP #$003C : BMI .add_minutes
    SEC : SBC #$003C : STA !ram_seg_rt_seconds : INC $14

  .add_minutes
    LDA $14 : BEQ .init_minimap : CLC : ADC !ram_seg_rt_minutes : STA !ram_seg_rt_minutes

  .init_minimap
    LDA !ram_minimap : BEQ .skip_minimap
    JMP $A8EF ; resume original logic

  .skip_minimap
    RTL
}

mm_inc_tile_count:
{
    ; Overwritten logic
    STY $20
    STX $1E

    ; Check if tile is already set
    LDA !MAP_TILES_EXPLORED,X : ORA $AC04,Y : CMP !MAP_TILES_EXPLORED,X : BEQ .done
    ; Set tile and increment counter
    STA !MAP_TILES_EXPLORED,X
    %ai16()
    LDA !MAP_COUNTER : INC : STA !MAP_COUNTER
    JMP $A98D  ; resume original logic skipping past %ai16()

  .done
    JMP $A98B  ; resume original logic including %ai16()
}

mm_write_and_clear_hud_tiles:
{
    %i16()
    LDA !ram_minimap : BNE .minimap_vram

    ; Load in normal vram
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$4000 : STX $2116 ; VRAM address (8000 in vram)
    LDX.w #hudgfx_bin : STX $4302 ; Source offset
    LDA.b #hudgfx_bin>>16 : STA $4304 ; Source bank
    LDX #$2000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    %i8()
    RTL

  .minimap_vram
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$4000 : STX $2116 ; VRAM address (8000 in vram)
    LDX.w #mapgfx_bin : STX $4302 ; Source offset
    LDA.b #mapgfx_bin>>16 : STA $4304 ; Source bank
    LDX #$2000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    %i8()
    RTL
}

%endfree(90)
endif ; !FEATURE_VANILLAHUD

