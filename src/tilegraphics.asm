
org $F48000
print pc, " tilegraphics start"

tiles_cre:
incbin ../resources/tiles_CRE.bin
warnpc $F4B000

raw_tile_graphics_table:
    db #$48 : dl tiles_00_01_upper_crateria
    db #$48 : dl tiles_00_01_upper_crateria
    db #$48 : dl tiles_02_03_lower_crateria
    db #$48 : dl tiles_02_03_lower_crateria
    db #$48 : dl tiles_04_05_wrecked_ship
    db #$48 : dl tiles_04_05_wrecked_ship
    db #$48 : dl tiles_06_green_blue_brinstar
    db #$48 : dl tiles_07_08_red_brinstar
    db #$48 : dl tiles_07_08_red_brinstar
    db #$48 : dl tiles_09_10_norfair
    db #$48 : dl tiles_09_10_norfair
    db #$48 : dl tiles_11_sandless_maridia
    db #$48 : dl tiles_12_sandy_maridia
    db #$48 : dl tiles_13_14_tourian
    db #$48 : dl tiles_13_14_tourian
    db #$48 : dl tiles_15_16_ceres
    db #$48 : dl tiles_15_16_ceres
    db #$80 : dl tiles_17_18_ceres_elevator
    db #$80 : dl tiles_17_18_ceres_elevator
    db #$80 : dl tiles_19_20_ceres_ridley
    db #$80 : dl tiles_19_20_ceres_ridley
    db #$48 : dl tiles_21_25_utility
    db #$48 : dl tiles_21_25_utility
    db #$48 : dl tiles_21_25_utility
    db #$48 : dl tiles_21_25_utility
    db #$48 : dl tiles_21_25_utility
    db #$80 : dl tiles_26_kraid
    db #$48 : dl tiles_27_croc
    db #$48 : dl tiles_28_draygon

load_raw_tile_graphics:
{
    ; Elevator properties
    STZ $0E16

    ; Update graphics index for our 4-byte table
    TYA : ASL : PHX : TAX

    ; Prepare for DMA
    %a8()
    LDA.l raw_tile_graphics_table,X : BPL .separate_dmas

    ; A few tilesets also include the CRE and can be done in one DMA
    LDA #$80 : STA $2115            ; word-access, incr by 1
    LDY #$0000 : STY $2116          ; VRAM address
    LDA #$00 : STA $4302            ; Source offset (low byte)
    INX : INX : LDA.l raw_tile_graphics_table,X
    STA $4303                       ; Source offset (high byte)
    INX : LDA.l raw_tile_graphics_table,X
    STA $4304                       ; Source bank
    LDY #$8000 : STX $4305          ; size
    LDA #$01 : STA $4300            ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301            ; destination (VRAM write)
    LDA #$01 : STA $420B            ; initiate DMA (channel 1)
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
    %a16()
    PLX : STZ $4C

    ; Decompress tileset palette to $7E:C200
    LDA $07C7 : STA $48
    LDY $07C6 : STY $47
    JSL $80B0FF
    dl $7EC200

    PLB : PLP
    RTL
}

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

