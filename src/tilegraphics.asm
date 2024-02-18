
org $E88800
check bankcross off
print pc, " raw tile tables crossbank start"

; 30K tile tables (6K each)
tile_table_00_01_upper_crateria:
incbin ../resources/tile_table_00_01_upper_crateria.bin

tile_table_02_03_lower_crateria:
incbin ../resources/tile_table_02_03_lower_crateria.bin

tile_table_04_05_wrecked_ship:
incbin ../resources/tile_table_04_05_wrecked_ship.bin

tile_table_06_green_blue_brinstar:
incbin ../resources/tile_table_06_green_blue_brinstar.bin

tile_table_07_08_red_brinstar:
incbin ../resources/tile_table_07_08_red_brinstar.bin

; 24K tile tables (6K each)
tile_table_09_10_norfair:
incbin ../resources/tile_table_09_10_norfair.bin

tile_table_11_sandless_maridia:
incbin ../resources/tile_table_11_sandless_maridia.bin

tile_table_12_sandy_maridia:
incbin ../resources/tile_table_12_sandy_maridia.bin

tile_table_13_14_tourian:
incbin ../resources/tile_table_13_14_tourian.bin

; 8K Ceres tile table
tile_table_15_20_ceres:
incbin ../resources/tile_table_15_20_ceres.bin

; 24K tile tables (6K each)
tile_table_21_25_utility:
incbin ../resources/tile_table_21_25_utility.bin

tile_table_26_kraid:
incbin ../resources/tile_table_26_kraid.bin

tile_table_27_croc:
incbin ../resources/tile_table_27_croc.bin

tile_table_28_draygon:
incbin ../resources/tile_table_28_draygon.bin

print pc, " raw tile tables crossbank end"
warnpc $EAE000 ; presets.asm
check bankcross on


org $F48000
print pc, " tilegraphics start"

; 12K CRE tile graphics
tiles_cre:
incbin ../resources/tiles_CRE.bin

; 2K CRE tile table
tile_table_cre:
incbin ../resources/tile_table_CRE.bin

; 6.25K palettes (0.25K each)
tileset_palettes:
incbin ../resources/palettes_00_upper_crateria.bin
incbin ../resources/palettes_01_red_crateria.bin
incbin ../resources/palettes_02_lower_crateria.bin
incbin ../resources/palettes_03_old_tourian.bin
incbin ../resources/palettes_04_wrecked_ship_power_on.bin
incbin ../resources/palettes_05_wrecked_ship_power_off.bin
incbin ../resources/palettes_06_green_blue_brinstar.bin
incbin ../resources/palettes_07_red_brinstar.bin
incbin ../resources/palettes_08_tourian_entrance.bin
incbin ../resources/palettes_09_heated_norfair.bin
incbin ../resources/palettes_10_unheated_norfair.bin
incbin ../resources/palettes_11_sandless_maridia.bin
incbin ../resources/palettes_12_sandy_maridia.bin
incbin ../resources/palettes_13_tourian.bin
incbin ../resources/palettes_14_mother_brain.bin
incbin ../resources/palettes_15_17_19_blue_ceres.bin
incbin ../resources/palettes_16_18_20_white_ceres.bin
incbin ../resources/palettes_21_map_room.bin
incbin ../resources/palettes_22_map_room_power_off.bin
incbin ../resources/palettes_23_blue_refill_room.bin
incbin ../resources/palettes_24_yellow_refill_room.bin
incbin ../resources/palettes_25_save_room.bin
incbin ../resources/palettes_26_kraid.bin
incbin ../resources/palettes_27_croc.bin
incbin ../resources/palettes_28_draygon.bin
warnpc $F4D100

; First byte = size of tile graphics
; Second byte = index into above palettes
; Last word = location of tile graphics
raw_tile_graphics_table:
    db #$48 : db #$00 : dw tiles_00_01_upper_crateria>>8
    db #$48 : db #$01 : dw tiles_00_01_upper_crateria>>8
    db #$48 : db #$02 : dw tiles_02_03_lower_crateria>>8
    db #$48 : db #$03 : dw tiles_02_03_lower_crateria>>8
    db #$48 : db #$04 : dw tiles_04_05_wrecked_ship>>8
    db #$48 : db #$05 : dw tiles_04_05_wrecked_ship>>8
    db #$48 : db #$06 : dw tiles_06_green_blue_brinstar>>8
    db #$48 : db #$07 : dw tiles_07_08_red_brinstar>>8
    db #$48 : db #$08 : dw tiles_07_08_red_brinstar>>8
    db #$48 : db #$09 : dw tiles_09_10_norfair>>8
    db #$48 : db #$0A : dw tiles_09_10_norfair>>8
    db #$48 : db #$0B : dw tiles_11_sandless_maridia>>8
    db #$48 : db #$0C : dw tiles_12_sandy_maridia>>8
    db #$48 : db #$0D : dw tiles_13_14_tourian>>8
    db #$48 : db #$0E : dw tiles_13_14_tourian>>8
    db #$48 : db #$0F : dw tiles_15_16_ceres>>8
    db #$48 : db #$10 : dw tiles_15_16_ceres>>8
    db #$80 : db #$0F : dw tiles_17_18_ceres_elevator>>8
    db #$80 : db #$10 : dw tiles_17_18_ceres_elevator>>8
    db #$80 : db #$0F : dw tiles_19_20_ceres_ridley>>8
    db #$80 : db #$10 : dw tiles_19_20_ceres_ridley>>8
    db #$48 : db #$11 : dw tiles_21_25_utility>>8
    db #$48 : db #$12 : dw tiles_21_25_utility>>8
    db #$48 : db #$13 : dw tiles_21_25_utility>>8
    db #$48 : db #$14 : dw tiles_21_25_utility>>8
    db #$48 : db #$15 : dw tiles_21_25_utility>>8
    db #$80 : db #$16 : dw tiles_26_kraid>>8
    db #$48 : db #$17 : dw tiles_27_croc>>8
    db #$48 : db #$18 : dw tiles_28_draygon>>8

load_raw_tile_graphics:
{
    ; Elevator properties
    STZ $0E16

    ; Update graphics index for our 4-byte table
    TYA : ASL : PHX : TAX

    ; Determine tileset palette location
    LDA.l raw_tile_graphics_table,X : AND #$FF00
    CLC : ADC #tileset_palettes

    ; Save that for later and prepare for DMA
    PHA : LDA !sram_preset_options : BIT !PRESETS_COMPRESSED_GRAPHICS : BNE .tile_decompression
    %a8() : LDA.l raw_tile_graphics_table,X : BPL .separate_dmas

    ; A few tilesets also include the CRE and can be done in one DMA
    LDA #$80 : STA $2115            ; word-access, incr by 1
    LDY #$0000 : STY $2116          ; VRAM address
    LDA #$00 : STA $4302            ; Source offset (low byte)
    INX : INX : LDA.l raw_tile_graphics_table,X
    STA $4303                       ; Source offset (high byte)
    INX : LDA.l raw_tile_graphics_table,X
    STA $4304                       ; Source bank
    LDY #$8000 : STY $4305          ; size
    LDA #$01 : STA $4300            ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301            ; destination (VRAM write)
    LDA #$01 : STA $420B            ; initiate DMA (channel 1)
    BRL .tileset_palette

  .tile_decompression
    ; Slower method from $82E78C
    LDA #$0080 : STA $2115
    LDA #$B900 : STA $48
    LDA #$8000 : STA $47
    LDA #$5000 : STA $4C
    LSR : STA $2116
    JSL $80B271
    LDA $07C4 : STA $48
    LDA $07C3 : STA $47
    STZ $2116 : STZ $4C
    JSL $80B271
    %a8()
    BRL .tileset_palette

  .separate_dmas
    INX : INX : LDA.l raw_tile_graphics_table,X
    CLC : ADC #$48 : BCC .simple_dmas : BEQ .simple_dmas

    ; The tile graphics are crossing a bank, so split into two DMAs
    ; We now have the length of the second DMA
    ; Store that and calculate the length of the first one
    STA $4C : LDA #$48 : SEC : SBC $4C : STA $47

    ; Load first section of tile graphics into VRAM
    LDA #$80 : STA $2115            ; word-access, incr by 1
    LDY #$0000 : STY $2116          ; VRAM address
    LDA #$00 : STA $4302            ; Source offset (low byte)
    LDA.l raw_tile_graphics_table,X
    STA $4303                       ; Source offset (high byte)
    INX : LDA.l raw_tile_graphics_table,X
    STA $4304                       ; Source bank
    LDA #$00 : STA $4305            ; size (low byte)
    LDA $47 : STA $4306             ; size (high byte)
    LDA #$01 : STA $4300            ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301            ; destination (VRAM write)
    LDA #$01 : STA $420B            ; initiate DMA (channel 1)

    ; Load second section of tile graphics into VRAM
    LDA #$80 : STA $2115            ; word-access, incr by 1
    LDA #$00 : STA $2116            ; VRAM address (low byte)
    LDA $47 : LSR : STA $2117       ; VRAM address (high byte)
    LDY #$8000 : STY $4302          ; Source offset
    LDA.l raw_tile_graphics_table,X
    INC : STA $4304                 ; Source bank
    LDA #$00 : STA $4305            ; size (low byte)
    LDA $4C : STA $4306             ; size (high byte)
    LDA #$01 : STA $4300            ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301            ; destination (VRAM write)
    LDA #$01 : STA $420B            ; initiate DMA (channel 1)
    BRA .cre_dma

  .simple_dmas
    ; Load tile graphics into VRAM
    LDA #$80 : STA $2115            ; word-access, incr by 1
    LDY #$0000 : STY $2116          ; VRAM address
    LDA #$00 : STA $4302            ; Source offset (low byte)
    LDA.l raw_tile_graphics_table,X
    STA $4303                       ; Source offset (high byte)
    INX : LDA.l raw_tile_graphics_table,X
    STA $4304                       ; Source bank
    LDY #$4800 : STY $4305          ; size
    LDA #$01 : STA $4300            ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301            ; destination (VRAM write)
    LDA #$01 : STA $420B            ; initiate DMA (channel 1)

  .cre_dma
    ; Load CRE tiles into VRAM
    LDA #$80 : STA $2115            ; word-access, incr by 1
    LDY #$2800 : STY $2116          ; VRAM address
    LDY #tiles_cre : STY $4302      ; Source offset
    LDA #tiles_cre>>16 : STA $4304  ; Source bank
    LDY #$3000 : STY $4305          ; size
    LDA #$01 : STA $4300            ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301            ; destination (VRAM write)
    LDA #$01 : STA $420B            ; initiate DMA (channel 1)

  .tileset_palette
    LDA !sram_preset_options : BIT.b !PRESETS_COMPRESSED_PALETTES : BNE .palette_decompression

    ; Copy tileset palette to $7EC200
    PLX : LDY #$C200 : TDC : DEC
    MVN $F47E

    PLX : PLB : PLP
    RTL

  .palette_decompression
    PLX : PLX : %a16()
    JML $82E7BF
}

preset_load_level:
{
    ; Original logic from $82E7D3
    PHP : PHB
    REP #$30

    ; More efficient method to clear level data
    PEA $7F00 : PLB : PLB
    LDX #$063E : LDA #$8000
  .clear_level_data_loop
    STA $0002,X : STA $0642,X : STA $0C82,X : STA $12C2,X
    STA $1902,X : STA $1F42,X : STA $2582,X : STA $2BC2,X
    STA $3202,X : STA $3842,X : STA $3E82,X : STA $44C2,X
    STA $4B02,X : STA $5142,X : STA $5782,X : STA $5DC2,X
    DEX : DEX : BPL .clear_level_data_loop

    ; Decompress level data
    LDA $7E07BE : STA $48
    LDA #$7F00 : STA $4D
    %a8()
    LDA $7E07BD : STA $47
    STZ $4C
    JSL optimized_decompression

    ; Mirror background data
    %a16()
    ; Length * 5 + 1 (SEC) reaches the end of the source
    LDA $0000 : LSR : SEC : ADC $0000 : ADC $0000 : TAX
    ; Length + $9601 reaches the end of the destination
    LDA $0000 : ADC #$9601 : TAY
    ; Subtract one from length for MVP and MVN commands
    SBC #$9601 : MVP $7F7F

    ; Mirror BTS data, source is already set
    LDA $0000 : LSR : CLC : ADC #$6401 : TAY
    SBC #$6401 : MVP $7F7F

  .level_data_done
    PEA $8F00 : PLB : PLB
    LDA !sram_preset_options : BIT !PRESETS_COMPRESSED_GRAPHICS : BNE .tile_table_decompression

    ; Jump to routine based on graphics set
    LDX !STATE_POINTER : LDA $0003,X : AND #$00FF
    ASL : TAX : PHB
    JSR (load_tile_tables_jump_table,X)

    ; Jump back to vanilla method
    PLB
    JML $82E870

  .tile_table_decompression
    LDA $079F : CMP #$0006 : BEQ .ceres

    ; Decompress CRE tile table to $7EA000
    LDA #$B9A0 : STA $48
    LDA #$7EA0 : STA $4D
    %a8()
    LDA #$9D : STA $47
    STZ $4C
    JSL optimized_decompression

    ; Decompress tileset tile table to $7EA800
    %a16()
    LDA $07C1 : STA $48
    LDA #$7EA8 : STA $4D
    %a8()
    LDA $07C0 : STA $47
    STZ $4C
    JSL optimized_decompression

    ; Jump back to vanilla method
    %a16()
    JML $82E870

  .ceres
    ; Ceres does not use the CRE tile table
    ; Decompress tileset tile table to $7EA000
    LDA $07C1 : STA $48
    LDA #$7EA0 : STA $4D
    %a8()
    LDA $07C0 : STA $47
    STZ $4C
    JSL optimized_decompression

    ; Jump back to vanilla method
    %a16()
    JML $82E870
}

load_tile_tables_jump_table:
    dw load_tile_table_00_01_upper_crateria
    dw load_tile_table_00_01_upper_crateria
    dw load_tile_table_02_03_lower_crateria
    dw load_tile_table_02_03_lower_crateria
    dw load_tile_table_04_05_wrecked_ship
    dw load_tile_table_04_05_wrecked_ship
    dw load_tile_table_06_green_blue_brinstar
    dw load_tile_table_07_08_red_brinstar
    dw load_tile_table_07_08_red_brinstar
    dw load_tile_table_09_10_norfair
    dw load_tile_table_09_10_norfair
    dw load_tile_table_11_sandless_maridia
    dw load_tile_table_12_sandy_maridia
    dw load_tile_table_13_14_tourian
    dw load_tile_table_13_14_tourian
    dw load_tile_table_15_20_ceres
    dw load_tile_table_15_20_ceres
    dw load_tile_table_15_20_ceres
    dw load_tile_table_15_20_ceres
    dw load_tile_table_15_20_ceres
    dw load_tile_table_15_20_ceres
    dw load_tile_table_21_25_utility
    dw load_tile_table_21_25_utility
    dw load_tile_table_21_25_utility
    dw load_tile_table_21_25_utility
    dw load_tile_table_21_25_utility
    dw load_tile_table_26_kraid
    dw load_tile_table_27_croc
    dw load_tile_table_28_draygon

load_tile_table_00_01_upper_crateria:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_00_01_upper_crateria : LDA #$17FF
    MVN $7E,tile_table_00_01_upper_crateria>>16
    RTS
}

load_tile_table_02_03_lower_crateria:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_02_03_lower_crateria : LDA #$17FF
    MVN $7E,tile_table_02_03_lower_crateria>>16
    RTS
}

load_tile_table_04_05_wrecked_ship:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_04_05_wrecked_ship : LDA #$17FF
    MVN $7E,tile_table_04_05_wrecked_ship>>16
    RTS
}

load_tile_table_06_green_blue_brinstar:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_06_green_blue_brinstar : LDA #$17FF
    MVN $7E,tile_table_06_green_blue_brinstar>>16
    RTS
}

load_tile_table_07_08_red_brinstar:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_07_08_red_brinstar : LDA #$17FF
    MVN $7E,tile_table_07_08_red_brinstar>>16
    RTS
}

load_tile_table_09_10_norfair:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_09_10_norfair : LDA #$17FF
    MVN $7E,tile_table_09_10_norfair>>16
    RTS
}

load_tile_table_11_sandless_maridia:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_11_sandless_maridia : LDA #$17FF
    MVN $7E,tile_table_11_sandless_maridia>>16
    RTS
}

load_tile_table_12_sandy_maridia:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_12_sandy_maridia : LDA #$17FF
    MVN $7E,tile_table_12_sandy_maridia>>16
    RTS
}

load_tile_table_13_14_tourian:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_13_14_tourian : LDA #$17FF
    MVN $7E,tile_table_13_14_tourian>>16
    RTS
}

load_tile_table_15_20_ceres:
{
    ; Copy larger tileset tile table to $7EA000
    LDX #tile_table_15_20_ceres : LDY #$A000 : LDA #$1FFF
    MVN $7E,tile_table_15_20_ceres>>16
    RTS
}

load_tile_table_21_25_utility:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_21_25_utility : LDA #$17FF
    MVN $7E,tile_table_21_25_utility>>16
    RTS
}

load_tile_table_26_kraid:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_26_kraid : LDA #$17FF
    MVN $7E,tile_table_26_kraid>>16
    RTS
}

load_tile_table_27_croc:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_27_croc : LDA #$17FF
    MVN $7E,tile_table_27_croc>>16
    RTS
}

load_tile_table_28_draygon:
{
    ; Copy CRE tile table to $7EA000
    LDX #tile_table_cre : LDY #$A000 : LDA #$07FF
    MVN $7E,tile_table_cre>>16
    ; Copy tileset tile table to $7EA800
    LDX #tile_table_28_draygon : LDA #$17FF
    MVN $7E,tile_table_28_draygon>>16
    RTS
}

; Load correct section of VRAM for scrolling sky rooms
preset_transfer_to_vram:
{
    PHX : LDA !ROOM_ID : CMP #$91F8 : BEQ .landing_site
    CMP #$93FE : BEQ .west_ocean : CMP #$94FD : BEQ .east_ocean

    ; Normal room, return to vanilla method
    PLX : JML $82E9E7

  .landing_site
    LDA !SAMUS_Y : ASL : ASL : ASL : XBA : AND #$003C
    BIT #$0020 : BNE .landing_floor
    CLC : ADC #preset_vram_landing_site_params : TAX
    BRA .transfer

  .west_ocean
    LDA !SAMUS_Y : ASL : ASL : ASL : XBA : AND #$003C
    ; The bottom of west ocean is the same as east ocean
    CMP #$0028 : BPL .east_ocean
    CLC : ADC #preset_vram_west_ocean_params : TAX
    BRA .transfer

  .east_ocean
    LDX #preset_vram_east_ocean_params
    BRA .transfer

  .landing_floor
    LDX #preset_vram_landing_site_floor_params

  .transfer
    LDA #$4800 : STA $2116
    LDA #$1801 : STA $4310
    LDA $F40000,X : AND #$00FF : XBA : ORA #$0080 : STA $4312
    LDA #$008A : STA $4314
    LDA $F40000,X : AND #$FF00 : PHA : STA $4315
    %a8()
    LDA #$80 : STA $2115
    LDA #$02 : STA $420B
    %a16()

    PLA : LSR : CLC : ADC #$4800 : STA $2116
    LDA $F40002,X : BEQ .done
    AND #$00FF : XBA : ORA #$0080 : STA $4312
    LDA $F40002,X : AND #$FF00 : STA $4315
    %a8()
    LDA #$80 : STA $2115
    LDA #$02 : STA $420B
    %a16()

  .done
    PLX : SEC
    JML preset_end_transfer_to_vram
}

; DMA transfer from $8Axx80 to VRAM $4800 of $xx00 bytes
; Optional second DMA transfer from $8Axx80 of $xx00 bytes
; Each xx is a byte in these tables
preset_vram_west_ocean_params:
    db $B1, $10, $00, $00    ; Y = 0.0-0.5
    db $B1, $10, $00, $00    ; Y = 0.5-1.0
    db $C1, $02, $B3, $0E    ; Y = 1.0-1.5
    db $C1, $06, $B7, $0A    ; Y = 1.5-2.0
    db $C1, $0A, $BB, $06    ; Y = 2.0-2.5
    db $C1, $0E, $BF, $02    ; Y = 2.5-3.0
    db $D9, $02, $C3, $0E    ; Y = 3.0-3.5
    db $D9, $06, $C7, $0A    ; Y = 3.5-4.0
    db $D9, $0A, $CB, $06    ; Y = 4.0-4.5
    db $D9, $0E, $CF, $02    ; Y = 4.5-5.0
preset_vram_east_ocean_params:
    db $D9, $10, $00, $00    ; Y = 5.0+

preset_vram_landing_site_params:
    db $B1, $10, $00, $00    ; Y = 0.0-0.5
    db $B1, $10, $00, $00    ; Y = 0.5-1.0
    db $C1, $02, $B3, $0E    ; Y = 1.0-1.5
    db $C1, $06, $B7, $0A    ; Y = 1.5-2.0
    db $C1, $0A, $BB, $06    ; Y = 2.0-2.5
    db $C1, $0E, $BF, $02    ; Y = 2.5-3.0
    db $D1, $02, $C3, $0E    ; Y = 3.0-3.5
    db $D1, $06, $C7, $0A    ; Y = 3.5-4.0
preset_vram_landing_site_floor_params:
    db $D1, $08, $C9, $08    ; Y = 4.0+

print pc, " tilegraphics end"
warnpc $F4D800


org $F4D800
check bankcross off
print pc, " raw tiles crossbank start"

; 18K tile graphics
tiles_00_01_upper_crateria:
incbin ../resources/tiles_00_01_upper_crateria.bin

tiles_02_03_lower_crateria:
incbin ../resources/tiles_02_03_lower_crateria.bin

tiles_04_05_wrecked_ship:
incbin ../resources/tiles_04_05_wrecked_ship.bin

tiles_06_green_blue_brinstar:
incbin ../resources/tiles_06_green_blue_brinstar.bin

tiles_07_08_red_brinstar:
incbin ../resources/tiles_07_08_red_brinstar.bin

tiles_09_10_norfair:
incbin ../resources/tiles_09_10_norfair.bin

tiles_11_sandless_maridia:
incbin ../resources/tiles_11_sandless_maridia.bin

tiles_12_sandy_maridia:
incbin ../resources/tiles_12_sandy_maridia.bin

tiles_13_14_tourian:
incbin ../resources/tiles_13_14_tourian.bin

tiles_15_16_ceres:
incbin ../resources/tiles_15_16_ceres.bin

tiles_21_25_utility:
incbin ../resources/tiles_21_25_utility.bin

tiles_27_croc:
incbin ../resources/tiles_27_croc.bin

tiles_28_draygon:
incbin ../resources/tiles_28_draygon.bin

; 32K tile graphics
warnpc $FC8000

tiles_17_18_ceres_elevator:
incbin ../resources/tiles_17_18_ceres_elevator.bin

tiles_19_20_ceres_ridley:
incbin ../resources/tiles_19_20_ceres_ridley.bin

tiles_26_kraid:
incbin ../resources/tiles_26_kraid.bin

print pc, " raw tiles crossbank end"
warnpc $FF8000
check bankcross on

