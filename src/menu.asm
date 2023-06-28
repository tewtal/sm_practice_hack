
org $85FD00
print pc, " menu bank85 start"

wait_for_lag_frame_long:
    JSR $8136
    RTL

initialize_ppu_long:
    PHP : %a16()
    LDA $7E33EA : STA !ram_cgram_cache+$2E
    PLP
    JSR $8143
    RTL

restore_ppu_long:
    JSR $861A
    PHP : %a16()
    LDA !ram_cgram_cache+$2E : STA $7E33EA
    PLP
    RTL

play_music_long:
    JSR $8574
    RTL

maybe_trigger_pause_long:
    JSR $80FA
    RTL

print pc, " menu bank85 end"
warnpc $85FE00 ; fanfare.asm


org $89B000
print pc, " menu start"

cm_start:
{
    PHP : %ai16()
    PHB : PHX : PHY
    PHK : PLB

    ; Ensure sound is enabled when menu is open
    LDA !DISABLE_SOUNDS : PHA
    STZ !DISABLE_SOUNDS
    LDA !PB_EXPLOSION_STATUS : PHA
    STZ !PB_EXPLOSION_STATUS
    JSL $82BE17 ; Cancel sound effects

    JSR cm_init
    JSL cm_draw
    JSL play_music_long ; Play 2 lag frames of music and sound effects

    JSR cm_loop         ; Handle message box interaction

    ; Restore sounds variables
    PLA : STA !PB_EXPLOSION_STATUS
    PLA : STA !DISABLE_SOUNDS
    ; Makes the game check Samus' health again, to see if we need annoying sound
    STZ !SAMUS_HEALTH_WARNING

    JSL cm_transfer_original_tileset
    JSL cm_transfer_original_cgram

    ; Update HUD (in case we added missiles etc.)
    LDA !ram_gametime_room : STA $C1
    LDA !ram_last_gametime_room : STA $C3
    JSL $809A79 ; Initialize HUD
    LDA $C1 : STA !ram_gametime_room
    LDA $C3 : STA !ram_last_gametime_room
    JSL $809B44 ; Handle HUD tilemap
    JSL ih_update_hud_code

    LDA !ram_seed_X : STA !sram_seed_X
    LDA !ram_seed_Y : STA !sram_seed_Y
    JSL init_heat_damage_ram
    JSL init_physics_ram
    JSL GameLoopExtras ; check if game_loop_extras needs to be disabled
    JSL restore_ppu_long ; Restore PPU registers and tilemaps

    ; skip sound effects if not gameplay ($7-13 allowed)
    %ai16()
    LDA !GAMEMODE : CMP #$0006 : BMI .skipSFX
    CMP #$0014 : BPL .skipSFX
    JSL $82BE2F ; Queue Samus movement sound effects

  .skipSFX
    JSL play_music_long ; Play 2 lag frames of music and sound effects
    JSL maybe_trigger_pause_long ; Maybe trigger pause screen or return save confirmation selection

    PLY : PLX : PLB
    PLP
    RTL
}

cm_init:
{
    ; Setup registers
    %a8()
    STZ $420C ; disable HDMAs
    LDA #$80 : STA $802100 ; enable forced blanking
    LDA #$A1 : STA $4200 ; enable NMI, v-IRQ, and auto-joy read
    LDA #$09 : STA $2105 ; BG Mode 1, enable BG3 priority
    LDA #$0F : STA $0F2100 ; disable forced blanking
    %a16()

    JSL initialize_ppu_long   ; Initialise PPU for message boxes
    JSR cm_transfer_custom_tileset
    JSL cm_transfer_custom_cgram

    ; Set up menu state
    %a16()
    LDA #$0000
    STA !ram_cm_stack_index : STA !ram_cm_cursor_stack
    STA !ram_cm_horizontal_cursor
    STA !ram_cm_leave : STA !ram_load_preset
    STA !ram_cm_ctrl_mode : STA !ram_cm_ctrl_timer
    STA !IH_CONTROLLER_PRI_NEW : STA !IH_CONTROLLER_PRI

    LDA !FRAME_COUNTER : STA !ram_cm_input_counter
    LDA.w #MainMenu : STA !ram_cm_menu_stack
    LDA.w #MainMenu>>16 : STA !ram_cm_menu_bank

    JSL cm_calculate_max
    JSL cm_set_etanks_and_reserve
    RTS
}

cm_set_etanks_and_reserve:
{
    LDA !SAMUS_HP_MAX : JSR cm_divide_100 : STA !ram_cm_etanks
    LDA !SAMUS_RESERVE_MAX : JSR cm_divide_100 : STA !ram_cm_reserve
    RTL
}


; ----------
; Drawing
; ----------

cm_transfer_custom_tileset:
{
    PHP
    %a16()
    LDA !ROOM_ID : CMP #$A59F : BEQ .kraid_vram

    ; Load custom vram to normal BG3 location
    %a8()
    LDA #$80 : STA $802100 ; enable forced blanking
    LDA #$04 : STA $210C ; BG3 starts at $4000 (8000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$4000 : STX $2116 ; VRAM address (8000 in vram)
    LDX.w #cm_hud_table : STX $4302 ; Source offset
    LDA.b #cm_hud_table>>16 : STA $4304 ; Source bank
    LDX #$0900 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    LDA #$0F : STA $0F2100 ; disable forced blanking
    PLP
    RTS

  .kraid_vram
    ; Load custom vram to kraid BG3 location
    %a8()
    LDA #$80 : STA $802100 ; enable forced blanking
    LDA #$02 : STA $210C ; BG3 starts at $2000 (4000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$2000 : STX $2116 ; VRAM address (4000 in vram)
    LDX.w #cm_hud_table : STX $4302 ; Source offset
    LDA.b #cm_hud_table>>16 : STA $4304 ; Source bank
    LDX #$0900 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    LDA #$0F : STA $0F2100 ; disable forced blanking
    PLP
    RTS
}

cm_transfer_original_tileset:
{
    PHP
    %a16()
    LDA !ROOM_ID : CMP #$A59F : BEQ .kraid_vram

    %a8()
    LDA !ram_minimap : CMP #$00 : BEQ .normal_vram
    BRL .minimap_vram

  .normal_vram
    ; Load in normal vram to normal BG3 location
    LDA #$80 : STA $802100 ; enable forced blanking
    LDA #$04 : STA $210C ; BG3 starts at $4000 (8000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$4000 : STX $2116 ; VRAM address (8000 in vram)
    LDX.w #hudgfx_bin : STX $4302 ; Source offset
    LDA.b #hudgfx_bin>>16 : STA $4304 ; Source bank
    LDX #$1000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    LDA #$0F : STA $0F2100 ; disable forced blanking
    PLP
    RTL

  .kraid_vram
    %a8()
    LDA !ram_minimap : CMP #$00 : BNE .kraid_minimap_vram

    ; Load in normal vram to kraid BG3 location
    LDA #$80 : STA $802100 ; enable forced blanking
    LDA #$02 : STA $210C ; BG3 starts at $2000 (4000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$2000 : STX $2116 ; VRAM address (4000 in vram)
    LDX.w #hudgfx_bin : STX $4302 ; Source offset
    LDA.b #hudgfx_bin>>16 : STA $4304 ; Source bank
    LDX #$1000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    LDA #$0F : STA $0F2100 ; disable forced blanking
    PLP
    RTL

  .minimap_vram
    ; Load in minimap vram to normal BG3 location
    LDA #$80 : STA $802100 ; enable forced blanking
    LDA #$04 : STA $210C ; BG3 starts at $4000 (8000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$4000 : STX $2116 ; VRAM address (8000 in vram)
    LDX.w #mapgfx_bin : STX $4302 ; Source offset
    LDA.b #mapgfx_bin>>16 : STA $4304 ; Source bank
    LDX #$1000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    LDA #$0F : STA $0F2100 ; disable forced blanking
    PLP
    RTL

  .kraid_minimap_vram
    ; Load in minimap vram to kraid BG3 location
    LDA #$80 : STA $802100 ; enable forced blanking
    LDA #$02 : STA $210C ; BG3 starts at $2000 (4000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$2000 : STX $2116 ; VRAM address (4000 in vram)
    LDX.w #mapgfx_bin : STX $4302 ; Source offset
    LDA.b #mapgfx_bin>>16 : STA $4304 ; Source bank
    LDX #$1000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    LDA #$0F : STA $0F2100 ; disable forced blanking
    PLP
    RTL
}

cm_transfer_custom_cgram:
; $0A = Border & OFF   $7277
; $12 = Header         $48F3
; $1A = Num            $0000, $7FFF
; $32 = ON / Sel Num   $4376
; $34 = Selected item  $761F
; $3A = Sel Num        $0000, $761F
{
    PHP : %ai16()
    ; Backup gameplay palette
    LDA $7EC00A : STA !ram_cgram_cache
    LDA $7EC00E : STA !ram_cgram_cache+$02
    LDA $7EC012 : STA !ram_cgram_cache+$04
    LDA $7EC014 : STA !ram_cgram_cache+$06
    LDA $7EC016 : STA !ram_cgram_cache+$08
    LDA $7EC01A : STA !ram_cgram_cache+$0A
    LDA $7EC01C : STA !ram_cgram_cache+$0C
    LDA $7EC01E : STA !ram_cgram_cache+$0E
    LDA $7EC032 : STA !ram_cgram_cache+$10
    LDA $7EC034 : STA !ram_cgram_cache+$12
    LDA $7EC036 : STA !ram_cgram_cache+$14
    LDA $7EC03A : STA !ram_cgram_cache+$16
    LDA $7EC03C : STA !ram_cgram_cache+$18
    LDA $7EC03E : STA !ram_cgram_cache+$1A

    JSL PrepMenuPalette

    ; Set menu palette
    LDA #$0000 : STA $7EC000
    LDA !ram_cm_palette_border : STA $7EC00A
    LDA !ram_cm_palette_headeroutline : STA $7EC012
    LDA !ram_cm_palette_text : STA $7EC014
    LDA !ram_cm_palette_background : STA $7EC016 : STA $7EC00E : STA $7EC01E
    LDA !ram_cm_palette_numoutline : STA $7EC01A
    LDA !ram_cm_palette_numfill : STA $7EC01C
    LDA !ram_cm_palette_toggleon : STA $7EC032
    LDA !ram_cm_palette_seltext : STA $7EC034
    LDA !ram_cm_palette_seltextbg : STA $7EC036 : STA $7EC03E
    LDA !ram_cm_palette_numseloutline : STA $7EC03A
    LDA !ram_cm_palette_numsel : STA $7EC03C

    JSL transfer_cgram_long
    PLP
    RTL
}

cm_transfer_original_cgram:
{
    PHP
    %a16()

    ; Restore gameplay palette
    LDA !ram_cgram_cache : STA $7EC00A
    LDA !ram_cgram_cache+$02 : STA $7EC00E
    LDA !ram_cgram_cache+$04 : STA $7EC012
    LDA !ram_cgram_cache+$06 : STA $7EC014
    LDA !ram_cgram_cache+$08 : STA $7EC016
    LDA !ram_cgram_cache+$0A : STA $7EC01A
    LDA !ram_cgram_cache+$0C : STA $7EC01C
    LDA !ram_cgram_cache+$0E : STA $7EC01E
    LDA !ram_cgram_cache+$10 : STA $7EC032
    LDA !ram_cgram_cache+$12 : STA $7EC034
    LDA !ram_cgram_cache+$14 : STA $7EC036
    LDA !ram_cgram_cache+$16 : STA $7EC03A
    LDA !ram_cgram_cache+$18 : STA $7EC03C
    LDA !ram_cgram_cache+$1A : STA $7EC03E

    JSL transfer_cgram_long
    PLP
    RTL
}

cm_draw:
{
    PHP
    %ai16()
    JSR cm_tilemap_bg
    JSR cm_tilemap_menu
    JSR cm_tilemap_transfer
    PLP
    RTL
}

cm_tilemap_bg:
{
    ; Empty out BG3 tilemap
    LDA #$000E ; transparent tile
    LDX #$07FE ; size = $800 bytes

  .loopClearBG3
    STA !ram_tilemap_buffer,X
    DEX #2 : BPL .loopClearBG3

    ; Vertical edges
    LDX #$0000
    LDY #$0018 ; 24 rows

  .loopVertical
    LDA #$647A : STA !ram_tilemap_buffer+$082,X
    LDA #$247A : STA !ram_tilemap_buffer+$0BC,X
    TXA : CLC : ADC #$0040 : TAX
    DEY : BPL .loopVertical

    ; Horizontal edges
    LDX #$0000
    LDY #$001B ; 28 columns

  .loopHorizontal
    LDA #$A47B : STA !ram_tilemap_buffer+$044,X
    LDA #$247B : STA !ram_tilemap_buffer+$6C4,X
    INX #2
    DEY : BPL .loopHorizontal

    ; Interior, background is optional...
    LDA !sram_menu_background : BNE .fillInterior
    ; but sometimes forced for readability
    ; Paused, game states $C-11
    LDA !GAMEMODE : CMP #$000C : BMI .checkCeres : BEQ .fillInterior
    CMP #$0012 : BMI .fillInterior
    ; Game over, $1A
    CMP #$001A : BEQ .fillInterior
  .checkCeres
    ; Ceres elevator room, $DF45
    LDA !ROOM_ID : CMP #$DF45 : BNE .done

  .fillInterior
    LDX #$0000
    LDY #$001B ; 28 columns
    LDA !MENU_BLANK ; blank background tile

  .loopBackground
;    STA !ram_tilemap_buffer+$004,X
    STA !ram_tilemap_buffer+$084,X
    STA !ram_tilemap_buffer+$0C4,X
    STA !ram_tilemap_buffer+$104,X
    STA !ram_tilemap_buffer+$144,X
    STA !ram_tilemap_buffer+$184,X
    STA !ram_tilemap_buffer+$1C4,X
    STA !ram_tilemap_buffer+$204,X
    STA !ram_tilemap_buffer+$244,X
    STA !ram_tilemap_buffer+$284,X
    STA !ram_tilemap_buffer+$2C4,X
    STA !ram_tilemap_buffer+$304,X
    STA !ram_tilemap_buffer+$344,X
    STA !ram_tilemap_buffer+$384,X
    STA !ram_tilemap_buffer+$3C4,X
    STA !ram_tilemap_buffer+$404,X
    STA !ram_tilemap_buffer+$444,X
    STA !ram_tilemap_buffer+$484,X
    STA !ram_tilemap_buffer+$4C4,X
    STA !ram_tilemap_buffer+$504,X
    STA !ram_tilemap_buffer+$544,X
    STA !ram_tilemap_buffer+$584,X
    STA !ram_tilemap_buffer+$5C4,X
    STA !ram_tilemap_buffer+$604,X
    STA !ram_tilemap_buffer+$644,X
    STA !ram_tilemap_buffer+$684,X
    INX #2
    DEY : BPL .loopBackground

  .done
    RTS
}

cm_tilemap_menu:
{
    LDX !ram_cm_stack_index
    LDA !ram_cm_menu_stack,X : STA !DP_MenuIndices
    LDA !ram_cm_menu_bank : STA !DP_MenuIndices+2 : STA !DP_CurrentMenu+2

    LDY #$0000 ; Y = menu item index
  .loop
    ; highlight if selected row
    TYA : CMP !ram_cm_cursor_stack,X : BEQ .selected
    LDA #$0000
    BRA .continue

  .selected
    LDA #$0010

  .continue
    ; later ORA'd with tile attributes
    STA !DP_Palette

    ; check for special entries (header/blank lines)
    LDA [!DP_MenuIndices],Y : BEQ .header
    CMP #$FFFF : BEQ .blank
    ; store menu item pointer
    STA !DP_CurrentMenu

    PHY : PHX

    ; X = action index (action type)
    LDA [!DP_CurrentMenu] : TAX

    ; !DP_CurrentMenu points to data after the action type index
    INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; draw menu item
    JSR (cm_draw_action_table,X)

    PLX : PLY

  .blank
    ; skip drawing blank lines
    INY #2
    BRA .loop

  .header
    STZ !DP_Palette
    ; menu pointer + index + 2 = header
    TYA : CLC : ADC !DP_MenuIndices : INC #2 : STA !DP_CurrentMenu
    ; draw menu header
    LDX #$00C6 ; tilemap position
    JSR cm_draw_text

    ; menu pointer + header pointer + 1 = footer
    TYA : CLC : ADC !DP_CurrentMenu : INC : STA !DP_CurrentMenu
    ; optional footer
    LDA [!DP_CurrentMenu] : CMP #$F007 : BNE .done

    ; INC past #$F007
    INC !DP_CurrentMenu : INC !DP_CurrentMenu : STZ !DP_Palette
    LDX #$0646 ; footer tilemap position
    JSR cm_draw_text
    RTS

  .done
    ; no footer, back up two bytes
    DEC !DP_CurrentMenu : DEC !DP_CurrentMenu
    RTS
}

cm_tilemap_transfer:
{
    JSL wait_for_lag_frame_long  ; Wait for lag frame

    %a16()
    LDA #$5800 : STA $2116 ; VRAM addr
    LDA #$1801 : STA $4310 ; VRAM write
    LDA.w #!ram_tilemap_buffer : STA $4312 ; src addr
    LDA.w #!ram_tilemap_buffer>>16 : STA $4314 ; src bank
    LDA #$0800 : STA $4315 ; size
    STZ $4317 : STZ $4319 ; clear HDMA registers
    %a8()
    LDA #$80 : STA $2115 ; INC mode
    LDA #$02 : STA $420B ; enable DMA, channel 1
    JSL $808F0C ; handle music queue
    JSL $8289EF ; handle sfx
    %a16()
    RTS
}

cm_draw_action_table:
    dw draw_toggle
    dw draw_toggle_bit
    dw draw_toggle_inverted
    dw draw_toggle_bit_inverted
    dw draw_numfield
    dw draw_numfield_hex
    dw draw_numfield_word
    dw draw_numfield_hex_word
    dw draw_numfield_color
    dw draw_numfield_sound
    dw draw_choice
    dw draw_ctrl_shortcut
    dw draw_controller_input
    dw draw_jsl
    dw draw_submenu
    dw draw_custom_preset
    dw draw_ram_watch

draw_toggle:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; grab the toggle value
    LDA [!DP_CurrentMenu] : AND #$00FF : INC !DP_CurrentMenu : STA !DP_ToggleValue

    ; increment past JSL
    INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; Draw the text
    %item_index_to_vram_index()
    PHX : JSR cm_draw_text : PLX

    ; Set position for ON/OFF
    TXA : CLC : ADC #$002E : TAX

    %a8()
    ; set palette
    LDA !DP_Palette
    STA !ram_tilemap_buffer+1,X
    STA !ram_tilemap_buffer+3,X
    STA !ram_tilemap_buffer+5,X

    ; grab the value at that memory address
    LDA [!DP_Address] : CMP !DP_ToggleValue : BEQ .checked

    ; Off
    %a16()
    LDA #$244B : STA !ram_tilemap_buffer+0,X
    LDA #$244D : STA !ram_tilemap_buffer+2,X
    LDA #$244D : STA !ram_tilemap_buffer+4,X
    RTS

  .checked
    ; On
    %a16()
    LDA #$384B : STA !ram_tilemap_buffer+2,X
    LDA #$384C : STA !ram_tilemap_buffer+4,X
    RTS
}

draw_toggle_bit:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; grab bitmask
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_ToggleValue

    ; increment past JSL
    INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; Draw the text
    %item_index_to_vram_index()
    PHX : JSR cm_draw_text : PLX

    ; Set position for ON/OFF
    TXA : CLC : ADC #$002E : TAX

    ; grab the value at that memory address
    LDA [!DP_Address] : AND !DP_ToggleValue : BNE .checked

    ; Off
    LDA #$244B : STA !ram_tilemap_buffer+0,X
    LDA #$244D : STA !ram_tilemap_buffer+2,X
    LDA #$244D : STA !ram_tilemap_buffer+4,X
    RTS

  .checked
    ; On
    %a16()
    LDA #$384B : STA !ram_tilemap_buffer+2,X
    LDA #$384C : STA !ram_tilemap_buffer+4,X
    RTS
}

draw_toggle_inverted:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; grab the toggle value
    LDA [!DP_CurrentMenu] : AND #$00FF : INC !DP_CurrentMenu : STA !DP_ToggleValue

    ; increment past JSL
    INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; Draw the text
    %item_index_to_vram_index()
    PHX : JSR cm_draw_text : PLX

    ; Set position for ON/OFF
    TXA : CLC : ADC #$002E : TAX

    %a8()
    ; set palette
    LDA !DP_Palette
    STA !ram_tilemap_buffer+1,X
    STA !ram_tilemap_buffer+3,X
    STA !ram_tilemap_buffer+5,X

    ; grab the value at that memory address
    LDA [!DP_Address] : CMP !DP_ToggleValue : BNE .checked

    ; Off
    %a16()
    LDA #$244B : STA !ram_tilemap_buffer+0,X
    LDA #$244D : STA !ram_tilemap_buffer+2,X
    LDA #$244D : STA !ram_tilemap_buffer+4,X
    RTS

  .checked
    ; On
    %a16()
    LDA #$384B : STA !ram_tilemap_buffer+2,X
    LDA #$384C : STA !ram_tilemap_buffer+4,X
    RTS
}

draw_toggle_bit_inverted:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; grab bitmask
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_ToggleValue

    ; increment past JSL
    INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; Draw the text
    %item_index_to_vram_index()
    PHX : JSR cm_draw_text : PLX

    ; Set position for ON/OFF
    TXA : CLC : ADC #$002C : TAX

    ; grab the value at that memory address
    LDA [!DP_Address] : AND !DP_ToggleValue : BEQ .checked

    ; Off
    LDA #$244B : STA !ram_tilemap_buffer+2,X
    LDA #$244D : STA !ram_tilemap_buffer+4,X
    LDA #$244D : STA !ram_tilemap_buffer+6,X
    RTS

  .checked
    ; On
    %a16()
    LDA #$384B : STA !ram_tilemap_buffer+4,X
    LDA #$384C : STA !ram_tilemap_buffer+6,X
    RTS
}

draw_numfield:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; skip bounds and increment values
    INC !DP_CurrentMenu : INC !DP_CurrentMenu : INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; increment past JSL
    INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; Draw the text
    %item_index_to_vram_index()
    PHX : JSR cm_draw_text : PLX

    ; set position for the number
    TXA : CLC : ADC #$002E : TAX

    ; convert value to decimal
    LDA [!DP_Address] : AND #$00FF : JSR cm_hex2dec

    ; Clear out the area
    LDA !MENU_BLANK : STA !ram_tilemap_buffer+0,X
                      STA !ram_tilemap_buffer+2,X
                      STA !ram_tilemap_buffer+4,X

    ; Set palette
    %a8()
    LDA #$24 : ORA !DP_Palette : STA !DP_Palette+1
    LDA #$70 : STA !DP_Palette ; number tiles are 70-79

    ; Draw numbers
    %a16()
    ; ones
    LDA !DP_ThirdDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+4,X
    ; tens
    LDA !DP_SecondDigit : ORA !DP_FirstDigit : BEQ .done
    LDA !DP_SecondDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+2,X
    ; hundreds
    LDA !DP_FirstDigit : BEQ .done
    CLC : ADC !DP_Palette : STA !ram_tilemap_buffer,X

  .done
    RTS
}

draw_numfield_hex:
draw_numfield_sound:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; skip bounds and increment values
    INC !DP_CurrentMenu : INC !DP_CurrentMenu : INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; increment past JSL
    INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; Draw the text
    %item_index_to_vram_index()
    PHX : JSR cm_draw_text : PLX

    ; set position for the number
    TXA : CLC : ADC #$0030 : TAX

    ; load the value
    LDA [!DP_Address] : AND #$00FF : STA !DP_DrawValue

    ; Clear out the area
    LDA !MENU_BLANK : STA !ram_tilemap_buffer+0,X
                      STA !ram_tilemap_buffer+2,X

    ; Draw numbers
    ; (00X0)
    LDA !DP_DrawValue : AND #$00F0 : LSR #3 : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer,X
    ; (000X)
    LDA !DP_DrawValue : AND #$000F : ASL : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+2,X

    ; overwrite palette bytes
    %a8()
    LDA #$24 : ORA !DP_Palette
    STA !ram_tilemap_buffer+1,X : STA !ram_tilemap_buffer+3,X
    %a16()

    RTS
}

draw_numfield_word:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; skip min/max values
    INC !DP_CurrentMenu : INC !DP_CurrentMenu : INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; increment past JSL
    INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; Draw the text
    %item_index_to_vram_index()
    PHX : JSR cm_draw_text : PLX

    ; set position for the number
    TXA : CLC : ADC #$002C : TAX

    ; convert value to decimal
    LDA [!DP_Address] : JSR cm_hex2dec

    ; Clear out the area
    LDA !MENU_BLANK : STA !ram_tilemap_buffer+0,X
                      STA !ram_tilemap_buffer+2,X
                      STA !ram_tilemap_buffer+4,X
                      STA !ram_tilemap_buffer+6,X

    ; Set palette
    %a8()
    LDA #$24 : ORA !DP_Palette : STA !DP_Palette+1
    LDA #$70 : STA !DP_Palette ; number tiles are 70-79

    ; Draw numbers
    %a16()
    ; ones
    LDA !DP_ThirdDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+6,X
    ; tens
    LDA !DP_SecondDigit : ORA !DP_FirstDigit
    ORA !DP_Temp : BEQ .done
    LDA !DP_SecondDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+4,X
    ; hundreds
    LDA !DP_FirstDigit : ORA !DP_Temp : BEQ .done
    LDA !DP_FirstDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+2,X
    ; thousands
    LDA !DP_Temp : BEQ .done
    CLC : ADC !DP_Palette : STA !ram_tilemap_buffer,X

  .done
    RTS
}

draw_numfield_hex_word:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; skip bitmask and JSL address
    INC !DP_CurrentMenu : INC !DP_CurrentMenu : INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; Draw the text
    %item_index_to_vram_index()
    PHX : JSR cm_draw_text : PLX

    ; set position for the number
    TXA : CLC : ADC #$002C : TAX

    ; load the value
    LDA [!DP_Address] : STA !DP_DrawValue

    ; Clear out the area
    LDA !MENU_BLANK : STA !ram_tilemap_buffer+0,X
                      STA !ram_tilemap_buffer+2,X
                      STA !ram_tilemap_buffer+4,X
                      STA !ram_tilemap_buffer+6,X

    ; Draw numbers
    ; (X000)
    LDA !DP_DrawValue : AND #$F000 : XBA : LSR #3 : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer,X
    ; (0X00)
    LDA !DP_DrawValue : AND #$0F00 : XBA : ASL : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+2,X
    ; (00X0)
    LDA !DP_DrawValue : AND #$00F0 : LSR #3 : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+4,X
    ; (000X)
    LDA !DP_DrawValue : AND #$000F : ASL : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+6,X

    ; overwrite palette bytes
    %a8()
    LDA #$2C : ORA !DP_Palette
    STA !ram_tilemap_buffer+1,X : STA !ram_tilemap_buffer+3,X
    STA !ram_tilemap_buffer+5,X : STA !ram_tilemap_buffer+7,X
    %a16()

    RTS
}

draw_numfield_color:
; Color values are increments of 8
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; increment past JSL
    INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; Draw the text
    %item_index_to_vram_index()
    PHX : JSR cm_draw_text : PLX

    ; set position for the number
    TXA : CLC : ADC #$0030 : TAX

    ; load the value
    LDA [!DP_Address] : AND #$00FF : STA !DP_DrawValue

    ; Clear out the area
    LDA !MENU_BLANK : STA !ram_tilemap_buffer+0,X
                      STA !ram_tilemap_buffer+2,X

    ; Draw numbers
    ; (00X0)
    LDA !DP_DrawValue : AND #$001E : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer,X
    ; (000X)
    LDA !DP_DrawValue : AND #$0001 : ASL #4 : STA !DP_Temp
    LDA !DP_DrawValue : AND #$001C : LSR : CLC : ADC !DP_Temp : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+2,X

    ; overwrite palette bytes
    %a8()
    LDA #$24 : ORA !DP_Palette
    STA !ram_tilemap_buffer+1,X : STA !ram_tilemap_buffer+3,X
    %a16()

    RTS
}

draw_choice:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; skip the JSL target
    INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; Draw the text first
    %item_index_to_vram_index()
    PHX : JSR cm_draw_text : PLX

    ; set position for choice
    TXA : CLC : ADC #$001E : TAX

    ; grab the value at that memory address
    LDA [!DP_Address] : TAY

    ; find the correct text that should be drawn (the selected choice)
    ; skipping the first text that we already drew
    INY #2

  .loop_choices
    DEY : BEQ .found

  .loop_text
    LDA [!DP_CurrentMenu] : %a16() : INC !DP_CurrentMenu : %a8()
    CMP #$FF : BEQ .loop_choices
    BRA .loop_text

  .found
    %a16()
    JSR cm_draw_text
    RTS
}

draw_ctrl_shortcut:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; draw the text
    %item_index_to_vram_index()
    PHX
    JSR cm_draw_text

    ; set position of inputs
    PLA : CLC : ADC #$0022 : TAX

    ; draw the inputs
    LDA [!DP_Address]
    JSR menu_ctrl_input_display

    RTS
}

draw_controller_input:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    STA !ram_cm_ctrl_assign
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; skip JSL target + argument
    INC !DP_CurrentMenu : INC !DP_CurrentMenu : INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; Draw the text
    %item_index_to_vram_index()
    PHX : JSR cm_draw_text : PLX

    ; set position for the input
    TXA : CLC : ADC #$0020 : TAX

    ; check if anything to draw
    LDA (!DP_Address) : AND #$E0F0 : BEQ .unbound

    ; determine which input to draw, using Y to refresh A
    TAY : AND !CTRL_A : BEQ .check_b : LDY #$0000 : BRA .draw
  .check_b
    TYA : AND !CTRL_B : BEQ .check_x : LDY #$0002 : BRA .draw
  .check_x
    TYA : AND !CTRL_X : BEQ .check_y : LDY #$0004 : BRA .draw
  .check_y
    TYA : AND !CTRL_Y : BEQ .check_l : LDY #$0006 : BRA .draw
  .check_l
    TYA : AND !CTRL_L : BEQ .check_r : LDY #$0008 : BRA .draw
  .check_r
    TYA : AND !CTRL_R : BEQ .check_s : LDY #$000A : BRA .draw
  .check_s
    TYA : AND !CTRL_SELECT : BEQ .unbound : LDY #$000C

  .draw
    LDA.w .CtrlMenuGFXTable,Y : STA !ram_tilemap_buffer,X
    RTS

  .unbound
    LDA !MENU_BLANK : STA !ram_tilemap_buffer,X
    RTS

  .CtrlMenuGFXTable
    ;    A      B      X      Y      L      R    Select
    ;  $0080  $8000  $0040  $4000  $0020  $0010  $2000
    dw $288F, $2887, $288E, $2886, $288D, $288C, $2885
}

draw_jsl:
draw_submenu:
{
    ; skip JSL address
    INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; skip argument
    INC !DP_CurrentMenu : INC !DP_CurrentMenu

    ; draw text normally
    %item_index_to_vram_index()
    JSR cm_draw_text
    RTS
}

draw_custom_preset:
{
    %a8()
    ; store slot index in !DP_ToggleValue
    LDA [!DP_CurrentMenu] : STA !DP_ToggleValue
    %a16()
    INC !DP_CurrentMenu

    ; preserve !DP_Palette
    LDA !DP_Palette : STA !DP_CtrlInput

    ; draw slot number text
    %item_index_to_vram_index()
    STA !DP_JSLTarget ; save starting index for later
    JSR cm_draw_text

    ; get preset slot offset
if !FEATURE_TINYSTATES
    LDA !DP_ToggleValue : XBA : TAX ; multiply by 100h (slot offset)
else
    LDA !DP_ToggleValue : ASL : XBA : TAX ; multiply by 200h (slot offset)
endif
    ; store preset slot index in !DP_Address
    STX !DP_Address

    ; check if slot has valid data
    LDA $703000,X : CMP #$5AFE : BEQ .validPreset
    ; slot is EMPTY, fix bank and exit
    LDA !DP_MenuIndices+2 : STA !DP_CurrentMenu+2
    RTS

  .validPreset
    ; determine what to draw
    LDA !ram_cm_custom_preset_labels : BNE .drawSamusData

    ; draw ROOM NAME using ID as pointer
    LDX !DP_Address : LDA !PRESET_SLOTS_ROOM,X : STA !DP_CurrentMenu
    LDA.w #RoomNameTextTable>>16 : STA !DP_CurrentMenu+2
    ; set tilemap position and draw area text
    LDA !DP_JSLTarget : CLC : ADC #$0006 : TAX
    JSR cm_draw_text
    ; fix bank
    LDA !DP_MenuIndices+2 : STA !DP_CurrentMenu+2
    RTS

  .drawSamusData
    ; draw Samus CURRENT ENERGY
    LDX !DP_Address : LDA !PRESET_SLOTS_ENERGY,X : STA !DP_DrawValue
    JSR cm_hex2dec
    ; set palette
    LDA !DP_CtrlInput : STA !DP_Palette
    %a8()
    LDA #$2C : ORA !DP_Palette : STA !DP_Palette+1
    LDA #$70 : STA !DP_Palette ; number tiles are 70-79
    %a16()
    ; set tilemap position
    LDA !DP_JSLTarget : CLC : ADC #$0006 : TAX
    ; ones
    LDA !DP_ThirdDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+6,X
    ; tens
    LDA !DP_SecondDigit : ORA !DP_FirstDigit
    ORA !DP_Temp : BEQ .drawSamusMaxEnergy
    LDA !DP_SecondDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+4,X
    ; hundreds
    LDA !DP_FirstDigit : ORA !DP_Temp : BEQ .drawSamusMaxEnergy
    LDA !DP_FirstDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+2,X
    ; thousands
    LDA !DP_Temp : BEQ .drawSamusMaxEnergy
    CLC : ADC !DP_Palette : STA !ram_tilemap_buffer,X

  .drawSamusMaxEnergy
    ; set tilemap position and draw hyphen
    LDA !DP_JSLTarget : CLC : ADC #$000E : TAX
    LDA !MENU_SLASH : STA !ram_tilemap_buffer,X

    ; get Samus max energy
    LDX !DP_Address : LDA !PRESET_SLOTS_MAXENERGY,X : STA !DP_DrawValue
    JSR cm_hex2dec
    ; set tilemap position
    LDA !DP_JSLTarget : CLC : ADC #$0010 : TAX
    ; ones
    LDA !DP_ThirdDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+6,X
    ; tens
    LDA !DP_SecondDigit : ORA !DP_FirstDigit
    ORA !DP_Temp : BEQ .drawSamusReserves
    LDA !DP_SecondDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+4,X
    ; hundreds
    LDA !DP_FirstDigit : ORA !DP_Temp : BEQ .drawSamusReserves
    LDA !DP_FirstDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+2,X
    ; thousands
    LDA !DP_Temp : BEQ .drawSamusReserves
    CLC : ADC !DP_Palette : STA !ram_tilemap_buffer,X

  .drawSamusReserves
    LDX !DP_Address : LDA !PRESET_SLOTS_RESERVES,X : STA !DP_DrawValue
    JSR cm_hex2dec
    ; set tilemap position
    LDA !DP_JSLTarget : CLC : ADC #$001A : TAX
    ; ones
    LDA !DP_ThirdDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+4,X
    ; tens
    LDA !DP_SecondDigit : ORA !DP_FirstDigit
    ORA !DP_Temp : BEQ .drawSamusMissiles
    LDA !DP_SecondDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+2,X
    ; hundreds
    LDA !DP_FirstDigit : ORA !DP_Temp : BEQ .drawSamusMissiles
    LDA !DP_FirstDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer,X

  .drawSamusMissiles
    LDX !DP_Address : LDA !PRESET_SLOTS_MISSILES,X : STA !DP_DrawValue
    JSR cm_hex2dec
    ; set tilemap position
    LDA !DP_JSLTarget : CLC : ADC #$0022 : TAX
    ; ones
    LDA !DP_ThirdDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+4,X
    ; tens
    LDA !DP_SecondDigit : ORA !DP_FirstDigit
    ORA !DP_Temp : BEQ .drawSamusSupers
    LDA !DP_SecondDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+2,X
    ; hundreds
    LDA !DP_FirstDigit : ORA !DP_Temp : BEQ .drawSamusSupers
    LDA !DP_FirstDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer,X

  .drawSamusSupers
    LDX !DP_Address : LDA !PRESET_SLOTS_SUPERS,X : STA !DP_DrawValue
    JSR cm_hex2dec
    ; set tilemap position
    LDA !DP_JSLTarget : CLC : ADC #$002A : TAX
    ; ones
    LDA !DP_ThirdDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+2,X
    ; tens
    LDA !DP_SecondDigit : ORA !DP_FirstDigit
    ORA !DP_Temp : BEQ .drawSamusPowerBombs
    LDA !DP_SecondDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer,X

  .drawSamusPowerBombs
    LDX !DP_Address : LDA !PRESET_SLOTS_PBS,X : STA !DP_DrawValue
    JSR cm_hex2dec
    ; set tilemap position
    LDA !DP_JSLTarget : CLC : ADC #$0030 : TAX
    ; ones
    LDA !DP_ThirdDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+2,X
    ; tens
    LDA !DP_SecondDigit : ORA !DP_FirstDigit
    ORA !DP_Temp : BEQ .done
    LDA !DP_SecondDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer,X

  .done
    RTS

pushpc
incsrc roomnames.asm
pullpc
}

draw_ram_watch:
{
    PHB : PHK : PLB

    ; Draw the text
    %item_index_to_vram_index()
    JSR cm_draw_text

    ; Draw $ signs in the appropriate places
    LDX #$2C4E
    LDA !ram_watch_write_mode : BNE .both_8bit
    TXA : STA !ram_tilemap_buffer+$5D0 : STA !ram_tilemap_buffer+$5E6
    BRA +
  .both_8bit
    TXA : STA !ram_tilemap_buffer+$5D4 : STA !ram_tilemap_buffer+$5EA

    ; Draw hexidecimal numbers
+   LDX #$05D2 ; position for left hex
    LDA !ram_watch_left : CLC : ADC !ram_watch_left_index : STA !DP_Address
    LDA !ram_watch_bank : STA !DP_Address+2
    LDA [!DP_Address] : STA !DP_DrawValue

    ; check if 8-bit mode
    LDA !ram_watch_write_mode : BEQ +
    LDA !DP_DrawValue : AND #$00FF : STA !DP_DrawValue
    BRA .left_8bit

    ; (X000)
+   LDA !DP_DrawValue : AND #$F000 : XBA : LSR #3 : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer,X
    ; (0X00)
    LDA !DP_DrawValue : AND #$0F00 : XBA : ASL : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+2,X
  .left_8bit
    ; (00X0)
    LDA !DP_DrawValue : AND #$00F0 : LSR #3 : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+4,X
    ; (000X)
    LDA !DP_DrawValue : AND #$000F : ASL : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+6,X

    ; Draw left decimal number
    LDX #$0610 ; position for left decimal
    JSR cm_hex2dec_draw5

    LDX #$05E8 ; position for right hex
    LDA !ram_watch_right : CLC : ADC !ram_watch_right_index : STA !DP_Address
    LDA [!DP_Address] : STA !DP_DrawValue

    ; check if 8-bit mode
    LDA !ram_watch_write_mode : BEQ +
    LDA !DP_DrawValue : AND #$00FF : STA !DP_DrawValue
    BRA .right_8bit

    ; (X000)
+   LDA !DP_DrawValue : AND #$F000 : XBA : LSR #3 : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer,X
    ; (0X00)
    LDA !DP_DrawValue : AND #$0F00 : XBA : ASL : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+2,X
  .right_8bit
    ; (00X0)
    LDA !DP_DrawValue : AND #$00F0 : LSR #3 : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+4,X
    ; (000X)
    LDA !DP_DrawValue : AND #$000F : ASL : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+6,X

    ; Draw right decimal number
    LDX #$0626 ; position for right decimal
    JSR cm_hex2dec_draw5

    ; adjust max cursor position to prevent selecting display item
    LDA !DP_MenuIndices : PHA
    JSL cm_calculate_max
    PLA : STA !DP_MenuIndices
    LDA !ram_cm_cursor_max : SEC : SBC #$0004 : STA !ram_cm_cursor_max

    PLB
    RTS
}

cm_hex2dec_draw5:
; Converts a hex number into a five digit decimal number
; expects value to be drawn in !DP_DrawValue
; expects tilemap pointer in X
{
    PHB
    LDA !DP_DrawValue : STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA ; REP + PEA + 16bit PLA + 16bit LDA = 18 cycles wasted
    LDA $4214 : STA !DP_Temp

    ; Set palette
    LDA #$2C70 : STA !DP_Palette ; number tiles are 70-79

    ; Ones digit
    LDA $4216 : ORA !DP_Palette : STA !ram_tilemap_buffer+8,X

    LDA !DP_Temp : BEQ .blanktens
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA ; waiting for math registers
    LDA $4214 : STA !DP_ThirdDigit

    ; Tens digit
    LDA $4216 : ORA !DP_Palette : STA !ram_tilemap_buffer+6,X

    LDA !DP_ThirdDigit : BEQ .blankhundreds
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA ; waiting for math registers
    LDA $4214 : STA !DP_SecondDigit

    ; Hundreds digit
    LDA $4216 : ORA !DP_Palette : STA !ram_tilemap_buffer+4,X

    LDA !DP_SecondDigit : BEQ .blankthousands
    STA $4204
    %a8()
    LDA #$0A : STA $4206   ; divide by 10
    %a16()
    PEA $0000 : PLA ; waiting for math registers
    LDA $4214 : STA !DP_FirstDigit

    ; Thousands digit
    LDA $4216 : ORA !DP_Palette : STA !ram_tilemap_buffer+2,X

    ; Ten thousands digit
    LDA !DP_FirstDigit : BEQ .blanktenthousands
    ORA !DP_Palette : STA !ram_tilemap_buffer,X

  .done
    PLB
    INX #10
    RTS

  .blanktens
    LDA !MENU_BLANK
    STA !ram_tilemap_buffer,X : STA !ram_tilemap_buffer+2,X
    STA !ram_tilemap_buffer+4,X : STA !ram_tilemap_buffer+6,X
    BRA .done

  .blankhundreds
    LDA !MENU_BLANK
    STA !ram_tilemap_buffer,X : STA !ram_tilemap_buffer+2,X : STA !ram_tilemap_buffer+4,X
    BRA .done

  .blankthousands
    LDA !MENU_BLANK
    STA !ram_tilemap_buffer,X : STA !ram_tilemap_buffer+2,X
    BRA .done

  .blanktenthousands
    LDA !MENU_BLANK : STA !ram_tilemap_buffer,X
    BRA .done
}

cm_draw_text:
; X = pointer to tilemap area (STA !ram_tilemap_buffer,X)
{
    %a8()
    LDY #$0000
    ; terminator
    LDA [!DP_CurrentMenu],Y : INY : CMP #$FF : BEQ .end
    ; ORA with palette info
    ORA !DP_Palette : STA !DP_Palette

  .loop
    LDA [!DP_CurrentMenu],Y : CMP #$FF : BEQ .end       ; terminator
    STA !ram_tilemap_buffer,X : INX                     ; tile
    LDA !DP_Palette : STA !ram_tilemap_buffer,X : INX   ; palette
    INY : BRA .loop

  .end
    %a16()
    RTS
}

; --------------
; Input Display
; --------------

menu_ctrl_input_display:
; X = pointer to tilemap area (STA !ram_tilemap_buffer,X)
; A = Controller word
{
    JSR menu_ctrl_clear_input_display

    XBA
    LDY #$0000
  .loop
    PHA
    BIT #$0001 : BEQ .no_draw

    TYA : CLC : ADC #$0080
    XBA : ORA !DP_Palette : XBA
    STA !ram_tilemap_buffer,X : INX #2

  .no_draw
    PLA
    INY : LSR : BNE .loop

  .done
    RTS
}


menu_ctrl_clear_input_display:
{
    ; X = pointer to tilemap area
    PHA
    LDA !MENU_BLANK
    STA !ram_tilemap_buffer+0,X
    STA !ram_tilemap_buffer+2,X
    STA !ram_tilemap_buffer+4,X
    STA !ram_tilemap_buffer+6,X
    STA !ram_tilemap_buffer+8,X
    STA !ram_tilemap_buffer+10,X
    STA !ram_tilemap_buffer+12,X
    STA !ram_tilemap_buffer+14,X
    STA !ram_tilemap_buffer+16,X
    PLA
    RTS
}


; ---------
; Logic
; ---------

cm_loop:
{
    %ai16()
    JSL wait_for_lag_frame_long
    JSL $808F0C ; Music queue
    JSL $8289EF ; Sound fx queue
    JSL MenuRNG

    LDA !ram_cm_leave : BEQ .checkCtrlMode
    RTS ; Exit menu loop

  .check_ctrl_mode
    LDA !ram_cm_ctrl_mode : BMI .single_digit_editing : BEQ .get_player_inputs
    ; editing controller shortcut
    JSR cm_ctrl_mode
    BRA cm_loop

  .single_digit_editing
    JSR cm_edit_digits
    BRA cm_loop

  .get_player_inputs
    JSR cm_get_inputs : STA !ram_cm_controller : BEQ cm_loop
    BIT #$0080 : BNE .pressedA
    BIT #$8000 : BNE .pressedB
    BIT #$0040 : BNE .pressedX
    BIT #$4000 : BNE .pressedY
    BIT #$2000 : BNE .pressedSelect
    BIT #$1000 : BNE .pressedStart
    BIT #$0800 : BNE .pressedUp
    BIT #$0400 : BNE .pressedDown
    BIT #$0100 : BNE .pressedRight
    BIT #$0200 : BNE .pressedLeft
    BIT #$0020 : BNE .pressedL
    BIT #$0010 : BNE .pressedR
    BRA cm_loop

  .pressedB
    JSL cm_previous_menu
    BRA .redraw

  .pressedDown
    LDA #$0002
    JSR cm_move
    BRA .redraw

  .pressedUp
    LDA #$FFFE
    JSR cm_move
    BRA .redraw

  .pressedL
    ; jump to top menu item
    LDX !ram_cm_stack_index
    LDA #$0000 : STA !ram_cm_cursor_stack,X
    %sfxmove()
    BRA .redraw

  .pressedR
    ; jump to bottom menu item
    LDX !ram_cm_stack_index
    LDA !ram_cm_cursor_max : DEC #2 : STA !ram_cm_cursor_stack,X
    %sfxmove()
    BRA .redraw

  .pressedA
  .pressedX
  .pressedY
  .pressedLeft
  .pressedRight
    JSR cm_execute
    BRA .redraw

  .pressedStart
  .pressedSelect
    LDA #$0001 : STA !ram_cm_leave
    JMP cm_loop

  .redraw
    JSL cm_draw
    JMP cm_loop
}

cm_ctrl_mode:
; This routine cuts off input handling in cm_loop to keep focus on the selected controller shortcut
; Held inputs are displayed until held for 120 frames
{
    JSL $809459 ; Read controller input
    LDA !IH_CONTROLLER_PRI

    ; set palette
    %a8() : LDA #$28 : STA !DP_Palette : %a16()

    LDA !IH_CONTROLLER_PRI : BEQ .clear_and_draw
    CMP !ram_cm_ctrl_last_input : BNE .clear_and_draw

    ; Holding an input for more than one second
    LDA !ram_cm_ctrl_timer : INC : STA !ram_cm_ctrl_timer
    CMP.w #0060 : BNE .next_frame

    ; Store controller input to SRAM
    LDA !IH_CONTROLLER_PRI : STA [!DP_CtrlInput]
    JSL GameModeExtras
    %sfxconfirm()
    BRA .exit

  .clear_and_draw
    STA !ram_cm_ctrl_last_input
    LDA #$0000 : STA !ram_cm_ctrl_timer

    ; Put text cursor in X
    LDX !ram_cm_stack_index
    LDA !ram_cm_cursor_stack,X : ASL #5 : CLC : ADC #$0168 : TAX

    ; Input display
    LDA !IH_CONTROLLER_PRI
    JSR menu_ctrl_input_display
    JSR cm_tilemap_transfer

  .next_frame
    RTS

  .exit
    LDA #$0000
    STA !ram_cm_ctrl_last_input
    STA !ram_cm_ctrl_mode
    STA !ram_cm_ctrl_timer
    JSL cm_draw
    RTS
}

cm_edit_digits:
{
    ; hex or decimal
    LDA !ram_cm_ctrl_mode : CMP #$8001 : BEQ .decimal_mode

    ; check for A, B, and D-pad
    JSR cm_get_inputs : STA !ram_cm_controller
    AND #$8F80 : BEQ .redraw
    BIT !IH_INPUT_LEFTRIGHT : BNE .selecting
    BIT !IH_INPUT_UPDOWN : BNE .editing
    BIT #$8080 : BEQ .redraw

    ; exit if A or B pressed
    ; skip if JSL target is zero
    LDA !DP_JSLTarget : BEQ .end
    ; Set return address for indirect JSL
    LDA !ram_cm_menu_bank : STA !DP_JSLTarget+2
    PHK : PEA .end-1
    ; addr in A
    LDA [!DP_DigitAddress] : LDX #$0000
    JML.w [!DP_JSLTarget]

  .end
    %ai16()
    LDA #$0000 : STA !ram_cm_ctrl_mode
    %sfxconfirm()
    JSL cm_draw
    RTS

  .decimal_mode
    JMP cm_edit_decimal_digits

  .selecting
    %sfxmove()
    ; determine which direction was pressed
    LDA !ram_cm_controller : BIT !IH_INPUT_LEFT : BNE .left
    ; inc/dec horizontal cursor index
    LDA !ram_cm_horizontal_cursor : DEC : AND #$0003 : STA !ram_cm_horizontal_cursor
    BRA .redraw
  .left
    LDA !ram_cm_horizontal_cursor : INC : AND #$0003 : STA !ram_cm_horizontal_cursor
  .redraw
    ; redraw numbers so selected digit is highlighted
    LDX !ram_cm_stack_index : LDA !ram_cm_cursor_stack,X : TAY
    %item_index_to_vram_index()
    TXA : CLC : ADC #$002C : TAX
    LDA [!DP_DigitAddress]
    JMP cm_draw4_editing ; and return from there

  .editing
    ; use horizontal cursor index to ADC/SBC
    LDA !ram_cm_horizontal_cursor : ASL : TAX
    ; determine which direction was pressed
    LDA !IH_CONTROLLER_PRI : BIT !IH_INPUT_UP : BNE +
    TXA : CLC : ADC #$0008 : TAX

    ; subroutine to inc/dec digit
+   LDA [!DP_DigitAddress] : JSR (cm_SingleDigitEdit,X)
    ; returns full value with selected digit cleared
    ; combine with modified digit and cap with bitmask in !DP_DigitMaximum
    ORA !DP_DigitValue : AND !DP_DigitMaximum : STA [!DP_DigitAddress]
    %sfxnumber()

    ; redraw numbers
    LDX !ram_cm_stack_index : LDA !ram_cm_cursor_stack,X : TAY
    %item_index_to_vram_index()
    TXA : CLC : ADC #$002C : TAX
    LDA [!DP_DigitAddress]

    ; fallthrough to cm_draw4_editing and return from there
}

cm_draw4_editing:
{
    ; (X000)
    STA !DP_DrawValue : AND #$F000 : XBA : LSR #3 : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer,X
    ; (0X00)
    LDA !DP_DrawValue : AND #$0F00 : XBA : ASL : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+2,X
    ; (00X0)
    LDA !DP_DrawValue : AND #$00F0 : LSR #3 : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+4,X
    ; (000X)
    LDA !DP_DrawValue : AND #$000F : ASL : TAY
    LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+6,X

    ; set palette bytes to unselected
    %a8()
    LDA #$2C
    STA !ram_tilemap_buffer+1,X : STA !ram_tilemap_buffer+3,X
    STA !ram_tilemap_buffer+5,X : STA !ram_tilemap_buffer+7,X

    ; highlight selected digit only
    LDA !ram_cm_horizontal_cursor : BEQ .ones
    DEC : BEQ .tens
    DEC : BEQ .hundreds
    ; thousands $X000
    LDA #$3C : STA !ram_tilemap_buffer+1,X
    BRA .done
  .hundreds ; $0X00
    LDA #$3C : STA !ram_tilemap_buffer+3,X
    BRA .done
  .tens ; $00X0
    LDA #$3C : STA !ram_tilemap_buffer+5,X
    BRA .done
  .ones ; $000X
    LDA #$3C : STA !ram_tilemap_buffer+7,X

  .done
    %a16()
    JSR cm_tilemap_transfer
    RTS
}

cm_SingleDigitEdit:
    dw #cm_SDE_add_ones
    dw #cm_SDE_add_tens
    dw #cm_SDE_add_hundreds
    dw #cm_SDE_add_thousands
    dw #cm_SDE_sub_ones
    dw #cm_SDE_sub_tens
    dw #cm_SDE_sub_hundreds
    dw #cm_SDE_sub_thousands

    %SDE_add(ones, #$0001, #$000F, #$FFF0)
    %SDE_add(tens, #$0010, #$00F0, #$FF0F)
    %SDE_add(hundreds, #$0100, #$0F00, #$F0FF)
    %SDE_add(thousands, #$1000, #$F000, #$0FFF)
    %SDE_sub(ones, #$0001, #$000F, #$FFF0)
    %SDE_sub(tens, #$0010, #$00F0, #$FF0F)
    %SDE_sub(hundreds, #$0100, #$0F00, #$F0FF)
    %SDE_sub(thousands, #$1000, #$F000, #$0FFF)

cm_edit_decimal_digits:
{
    ; check for A, B, and D-pad
    JSR cm_get_inputs : STA !ram_cm_controller
    AND #$8F80 : BEQ .redraw
    BIT !IH_INPUT_LEFTRIGHT : BNE .selecting
    BIT !IH_INPUT_UPDOWN : BNE .editing
    BIT #$8080 : BEQ .redraw

    ; exit if A or B pressed
    BRL .exit

  .selecting
    %sfxmove()
    ; determine which direction was pressed
    LDA !ram_cm_controller : BIT !IH_INPUT_LEFT : BNE .left
    ; inc/dec horizontal cursor index
    LDA !ram_cm_horizontal_cursor : DEC : AND #$0003 : STA !ram_cm_horizontal_cursor
    CMP #$0003 : BNE .redraw
    ; is editing thousands digit allowed?
    LDA !DP_DigitMaximum : CMP #1000 : BPL .redraw
    ; limit cursor to 3 positions (0-2)
    LDA #$0002 : STA !ram_cm_horizontal_cursor
    BRL .draw
  .left
    LDA !ram_cm_horizontal_cursor : INC : AND #$0003 : STA !ram_cm_horizontal_cursor
    CMP #$0003 : BNE .redraw
    ; is editing thousands digit allowed?
    LDA !DP_DigitMaximum : CMP #1000 : BPL .redraw
    ; limit cursor to 3 positions (0-2)
    LDA #$0000 : STA !ram_cm_horizontal_cursor

  .redraw
    BRL .draw

  .editing
    ; convert value to decimal
    LDA !DP_DigitValue : JSR cm_hex2dec

    ; determine which digit to edit
    LDA !ram_cm_horizontal_cursor : BEQ .ones
    DEC : BEQ .tens
    DEC : BEQ .hundreds

    %SDE_dec(thousands, !DP_Temp)
    BRA .dec2hex
  .hundreds
    %SDE_dec(hundreds, !DP_FirstDigit)
    BRA .dec2hex
  .tens
    %SDE_dec(tens, !DP_SecondDigit)
    BRA .dec2hex
  .ones
    %SDE_dec(ones, !DP_ThirdDigit)

  .dec2hex
    %sfxnumber()
    JSR cm_reverse_hex2dec

  .draw
    ; convert value to decimal
    LDA !DP_DigitValue : JSR cm_hex2dec

    ; get tilemap address
    LDX !ram_cm_stack_index : LDA !ram_cm_cursor_stack,X : TAY
    %item_index_to_vram_index()
    TXA : CLC : ADC #$002C : TAX

    ; is editing thousands digit allowed?
    LDA #$2C70
    LDY !DP_DigitMaximum : CPY #1000 : BMI +

    ; start with zero tiles
    STA !ram_tilemap_buffer+0,X
+   STA !ram_tilemap_buffer+2,X
    STA !ram_tilemap_buffer+4,X
    STA !ram_tilemap_buffer+6,X

    ; set palette and default zero tile
    ; number tiles are 70-79
    STA !DP_Palette

    ; Draw numbers
    ; ones
    LDA !DP_ThirdDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+6,X
    ; tens
    LDA !DP_SecondDigit : ORA !DP_FirstDigit
    ORA !DP_Temp : BEQ .highlighting
    LDA !DP_SecondDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+4,X
    ; hundreds
    LDA !DP_FirstDigit : ORA !DP_Temp : BEQ .highlighting
    LDA !DP_FirstDigit : CLC : ADC !DP_Palette : STA !ram_tilemap_buffer+2,X
    ; thousands
    LDA !DP_Temp : BEQ .highlighting
    CLC : ADC !DP_Palette : STA !ram_tilemap_buffer,X

  .highlighting
    ; highlight the selected tile
    %a8()
    LDA !ram_cm_horizontal_cursor : BEQ .highlight_ones
    DEC : BEQ .highlight_tens
    DEC : BEQ .highlight_hundreds
    ; thousands $X000
    LDA #$3C : STA !ram_tilemap_buffer+1,X
    BRA .done
  .highlight_hundreds ; $0X00
    LDA #$3C : STA !ram_tilemap_buffer+3,X
    BRA .done
  .highlight_tens ; $00X0
    LDA #$3C : STA !ram_tilemap_buffer+5,X
    BRA .done
  .highlight_ones ; $000X
    LDA #$3C : STA !ram_tilemap_buffer+7,X

  .done
    %a16()
    JSR cm_tilemap_transfer
    RTS

  .exit
    ; check if value is inbounds
    LDA !DP_DigitValue : CMP !DP_DigitMaximum : BMI .check_minimum
    LDA !DP_DigitMaximum : DEC : BRA + ; was max+1 for convenience
  .check_minimum
    CMP !DP_DigitMinimum : BPL +
    LDA !DP_DigitMinimum
+   STA [!DP_DigitAddress]

    ; skip if JSL target is zero
    LDA !DP_JSLTarget : BEQ .end
    ; Set return address for indirect JSL
    LDA !ram_cm_menu_bank : STA !DP_JSLTarget+2
    PHK : PEA .end-1
    ; addr in A
    LDA [!DP_DigitAddress]
    JML.w [!DP_JSLTarget]

  .end
    %ai16()
    %sfxconfirm()
    LDA #$0000 : STA !ram_cm_ctrl_mode
    JSL cm_draw
    RTS
}

cm_previous_menu:
{
    JSL cm_go_back
    JML cm_calculate_max
}

cm_go_back:
{
    ; make sure next time we go to a submenu, we start on the first line.
    LDX !ram_cm_stack_index
    LDA #$0000 : STA !ram_cm_cursor_stack,X

    ; make sure we dont set a negative number
    DEX #2 : BPL .done

    ; leave menu 
    LDA #$0001 : STA !ram_cm_leave

    LDX #$0000
  .done
    STX !ram_cm_stack_index : BNE .end

    ; Reset submenu bank when back at main menu
    LDA.w #MainMenu>>16 : STA !ram_cm_menu_bank

  .end
    %sfxgoback()
    RTL
}

cm_calculate_max:
{
    LDX !ram_cm_stack_index
    LDA !ram_cm_menu_stack,X : STA !DP_MenuIndices
    LDA !ram_cm_menu_bank : STA !DP_MenuIndices+2

    LDX #$0000
  .loop
    LDA [!DP_MenuIndices] : BEQ .done
    INC !DP_MenuIndices : INC !DP_MenuIndices
    INX #2 ; count menu items in X
    BRA .loop

  .done
    ; store total menu items +2
    TXA : STA !ram_cm_cursor_max
    RTL
}

cm_get_inputs:
{
    ; Make sure we don't read joysticks twice in the same frame
    LDA !FRAME_COUNTER : CMP !ram_cm_input_counter
    PHP : STA !ram_cm_input_counter : PLP : BNE .input_read

    JSL $809459 ; Read controller input

  .input_read
    LDA !IH_CONTROLLER_PRI_NEW : BEQ .check_holding

    ; Initial delay of $0E frames
    LDA #$000E : STA !ram_cm_input_timer

    ; Return the new input
    LDA !IH_CONTROLLER_PRI_NEW
    RTS

  .check_holding
    ; Check if we're holding the dpad
    LDA !IH_CONTROLLER_PRI : AND #$0F00 : BEQ .noinput

    ; Decrement delay timer and check if it's zero
    LDA !ram_cm_input_timer : DEC : STA !ram_cm_input_timer : BNE .noinput

    ; Set new delay, default is 2
    LDA !sram_cm_scroll_delay : STA !ram_cm_input_timer

    ; Return held input
    LDA !IH_CONTROLLER_PRI : AND #$0F00 : ORA !IH_INPUT_HELD
    RTS

  .noinput
    LDA #$0000
    RTS
}

cm_move:
{
    STA !DP_Temp
    LDX !ram_cm_stack_index
    LDA !DP_Temp : CLC : ADC !ram_cm_cursor_stack,X : BPL .positive
    LDA !ram_cm_cursor_max : DEC #2 : BRA .inBounds

  .positive
    CMP !ram_cm_cursor_max : BNE .inBounds
    LDA #$0000

  .inBounds
    STA !ram_cm_cursor_stack,X : TAY

    ; check for blank menu line ($FFFF)
    LDA [!DP_MenuIndices],Y : CMP #$FFFF : BNE .end

    ; repeat move to skip blank line
    LDA !DP_Temp : BRA cm_move

  .end
    %sfxmove()
    RTS
}


; --------
; Execute
; --------

cm_execute:
{
    LDX !ram_cm_stack_index
    LDA !ram_cm_menu_stack,X : STA !DP_CurrentMenu
    LDA !ram_cm_menu_bank : STA !DP_CurrentMenu+2
    LDA !ram_cm_cursor_stack,X : TAY
    LDA [!DP_CurrentMenu],Y : STA !DP_CurrentMenu

    ; Safety net incase blank line selected
    CMP #$FFFF : BEQ .end

    ; Increment past the action index
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : TAX

    ; Execute action
    JSR (cm_execute_action_table,X)

  .end
    RTS
}

cm_execute_action_table:
{
    dw execute_toggle
    dw execute_toggle_bit
    dw execute_toggle ; inverted
    dw execute_toggle_bit ; inverted
    dw execute_numfield
    dw execute_numfield_hex
    dw execute_numfield_word
    dw execute_numfield_hex_word
    dw execute_numfield_color
    dw execute_numfield_sound
    dw execute_choice
    dw execute_ctrl_shortcut
    dw execute_controller_input
    dw execute_jsl
    dw execute_submenu
    dw execute_custom_preset
    dw execute_ram_watch

execute_toggle:
{
    ; Grab address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; Grab toggle value
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : AND #$00FF : STA !DP_ToggleValue

    ; Grab JSL target
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_JSLTarget

    %a8()
    LDA [!DP_Address] : CMP !DP_ToggleValue : BEQ .toggleOff
    ; toggle on
    LDA !DP_ToggleValue : STA [!DP_Address]
    BRA .jsl

  .toggleOff
    LDA #$00 : STA [!DP_Address]

  .jsl
    %a16()
    ; skip if JSL target is zero
    LDA !DP_JSLTarget : BEQ .end

    ; Set return address for indirect JSL
    LDA !ram_cm_menu_bank : STA !DP_JSLTarget+2
    PHK : PEA .end-1

    ; addr in A
    LDA [!DP_Address] : LDX #$0000
    JML.w [!DP_JSLTarget]

  .end
    %ai16()
    %sfxtoggle()
    RTS
}

execute_toggle_bit:
{
    ; Load the address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; Load which bit(s) to toggle
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_ToggleValue

    ; Load JSL target
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_JSLTarget

    ; Toggle the bit
    LDA [!DP_Address] : EOR !DP_ToggleValue : STA [!DP_Address]

    ; skip if JSL target is zero
    LDA !DP_JSLTarget : BEQ .end

    ; Set return address for indirect JSL
    LDA !ram_cm_menu_bank : STA !DP_JSLTarget+2
    PHK : PEA .end-1

    ; addr in A
    LDA [!DP_Address] : LDX #$0000
    JML.w [!DP_JSLTarget]

 .end
    %ai16()
    %sfxtoggle()
    RTS
}

execute_numfield_sound:
execute_numfield_hex:
execute_numfield:
{
    ; preserve action index to check for sfx later
    PHX

    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; grab minimum and maximum values
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : AND #$00FF : STA !DP_Minimum
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : AND #$00FF : INC : STA !DP_Maximum ; INC for convenience

    ; check for Y pressed to skip inc/dec
    LDA !ram_cm_controller : BIT !CTRL_Y : BNE .skip_inc

    ; check for held inputs
    BIT !IH_INPUT_HELD : BNE .input_held
    ; grab normal increment and skip past both
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : AND #$00FF : STA !DP_Increment
    BRA .determine_direction

  .skip_inc
    ; skipping inc/dec and just playing sfx
    INC !DP_CurrentMenu : INC !DP_CurrentMenu
    BRA .jsl

  .input_held
    ; grab faster increment and skip past both
    INC !DP_CurrentMenu : LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : AND #$00FF : STA !DP_Increment

  .determine_direction
    ; determine dpad direction
    LDA !ram_cm_controller : BIT #$0200 : BNE .pressed_left
    ; pressed right, inc
    LDA [!DP_Address] : CLC : ADC !DP_Increment
    CMP !DP_Maximum : BCS .set_to_min
    %a8() : STA [!DP_Address] : BRA .jsl

  .pressed_left ; dec
    LDA [!DP_Address] : SEC : SBC !DP_Increment : BMI .set_to_max
    CMP !DP_Minimum : BCC .set_to_max
    %a8() : STA [!DP_Address] : BRA .jsl

  .set_to_min
    LDA !DP_Minimum : %a8() : STA [!DP_Address] : BRA .jsl

  .set_to_max
    LDA !DP_Maximum : DEC : %a8() : STA [!DP_Address]

  .jsl
    %a16()
    ; grab JSL pointer
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_JSLTarget

    ; skip if JSL target is zero
    LDA !DP_JSLTarget : BEQ .end

    ; Set return address for indirect JSL
    LDA !ram_cm_menu_bank : STA !DP_JSLTarget+2
    PHK : PEA .end-1

    ; addr in A
    LDA [!DP_Address] : LDX #$0000
    JML.w [!DP_JSLTarget]

  .end
    %ai16()
    ; pull action index and skip if sfx menu item
    PLX : CPX !ACTION_NUMFIELD_SOUND : BEQ .endSound
    %sfxnumber()

  .endSound
    RTS
}

execute_numfield_word:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_DigitAddress
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_DigitAddress+2

    ; grab minimum (!DP_DigitMinimum) and maximum (!DP_DigitMaximum) values
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_DigitMinimum
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : INC : STA !DP_DigitMaximum ; INC for convenience

    ; check if maximum requires 3 digits or 4
    CMP #1000 : BPL .load_jsl_target
    LDA !ram_cm_horizontal_cursor : CMP #$0003 : BNE .load_jsl_target
    LDA #$0002 : STA !ram_cm_horizontal_cursor

  .load_jsl_target
    LDA [!DP_CurrentMenu] : STA !DP_JSLTarget

    LDA [!DP_DigitAddress] : STA !DP_DigitValue
    LDA #$8001 : STA !ram_cm_ctrl_mode
    %sfxnumber()

    RTS
}

execute_numfield_hex_word:
{
    ; disallow editing if "Screenshot To Share Colors" menu
    LDA !ram_cm_stack_index : TAX
    LDA !ram_cm_menu_stack,X : CMP #CustomPalettesDisplayMenu : BEQ .done

    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_DigitAddress
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_DigitAddress+2

    ; grab maximum bitmask
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_DigitMaximum

    ; grab JSL address
    LDA [!DP_CurrentMenu] : STA !DP_JSLTarget

    ; enable single digit numfield editing
    LDA #$FFFF : STA !ram_cm_ctrl_mode
    %sfxnumber()

  .done
    RTS
}

execute_numfield_color:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    ; grab normal increment
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_JSLTarget

    ; determine dpad direction
    LDA !ram_cm_controller : BIT #$0200 : BNE .pressed_left
    ; pressed right, inc
    LDA [!DP_Address] : INC : CMP #$0020 : BCS .set_to_min
    STA [!DP_Address] : LDA !ram_cm_controller : BIT !IH_INPUT_LEFT : BEQ .jsl

    LDA [!DP_Address] : INC : CMP #$0020 : BCS .set_to_min
    STA [!DP_Address] : BRA .jsl

  .pressed_left ; dec
    LDA [!DP_Address] : DEC : BMI .set_to_max
    STA [!DP_Address] : LDA !ram_cm_controller : BIT !IH_INPUT_LEFT : BEQ .jsl

    LDA [!DP_Address] : DEC : BMI .set_to_max
    STA [!DP_Address] : BRA .jsl

  .set_to_min
    LDA #$0000 : STA [!DP_Address] : CLC : BRA .jsl

  .set_to_max
    LDA #$001F : STA [!DP_Address] : CLC

  .jsl
    ; skip if JSL target is zero
    LDA !DP_JSLTarget : BEQ .end

    ; Set return address for indirect JSL
    LDA !ram_cm_menu_bank : STA !DP_JSLTarget+2
    PHK : PEA .end-1

    ; addr in A
    LDA [!DP_Address] : LDX #$0000
    JML.w [!DP_JSLTarget]

  .end
    %ai16()
    %sfxnumber()
    RTS
}

execute_choice:
{
    ; grab the memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_Address
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_Address+2

    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_JSLTarget

    ; we either increment or decrement
    LDA !ram_cm_controller : BIT #$0200 : BNE .pressed_left
    ; pressed right
    LDA [!DP_Address] : INC : BRA .bounds_check

  .pressed_left
    LDA [!DP_Address] : DEC

  .bounds_check
    TAX         ; X = new value
    LDY #$0000  ; Y will be set to max
    %a8()

  .loop_choices
    LDA [!DP_CurrentMenu] : %a16() : INC !DP_CurrentMenu : %a8() : CMP #$FF : BEQ .loop_done

  .loop_text
    LDA [!DP_CurrentMenu] : %a16() : INC !DP_CurrentMenu : %a8()
    CMP #$FF : BNE .loop_text
    INY : BRA .loop_choices

  .loop_done
    ; Y = maximum + 2
    ; for convenience so we can use BCS. We do one more DEC in `.set_to_max`
    ; below, so we get the actual max.
    DEY

    %a16()
    ; X = new value (might be out of bounds)
    TXA : BMI .set_to_max
    TYA : STA !DP_Maximum
    TXA : CMP !DP_Maximum : BCS .set_to_zero

    BRA .store

  .set_to_zero
    LDA #$0000 : BRA .store

  .set_to_max
    TYA : DEC

  .store
    STA [!DP_Address]

    ; skip if JSL target is zero
    LDA !DP_JSLTarget : BEQ .end

    ; Set return address for indirect JSL
    LDA !ram_cm_menu_bank : STA !DP_JSLTarget+2
    PHK : PEA .end-1

    ; addr in A
    LDA [!DP_Address] : LDX #$0000
    JML.w [!DP_JSLTarget]

  .end
    %ai16()
    %sfxtoggle()
    RTS
}

execute_ctrl_shortcut:
{
    ; < and > should do nothing here
    ; also ignore the input held flag
    LDA !ram_cm_controller : BIT #$0301 : BNE .end

    ; grab memory address (long)
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_CtrlInput
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : STA !DP_CtrlInput+2

    ; press X to delete a shortcut
    LDA !ram_cm_controller : BIT !CTRL_X : BNE .reset_shortcut

    ; enable ctrl mode to edit shortcuts
    LDA #$0001 : STA !ram_cm_ctrl_mode
    LDA #$0000 : STA !ram_cm_ctrl_timer
    RTS

  .reset_shortcut
    LDA.w #!sram_ctrl_menu : CMP !DP_CtrlInput : BEQ .end
    %sfxconfirm()

    LDA #$0000 : STA [!DP_CtrlInput]

  .end
    RTS
}

execute_controller_input:
{
    ; <, > and X should do nothing here
    ; also ignore input held flag
    LDA !ram_cm_controller : BIT #$0341 : BNE .end

    ; store long address as short address for now
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : INC !DP_CurrentMenu
    STA !ram_cm_ctrl_assign

    ; !DP_JSLTarget = JSL target
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_JSLTarget

    ; Use bank of action_submenu
    ; instead of new menu's bank
    LDA.l #action_submenu>>16 : STA !DP_JSLTarget+2

    ; Set return address for indirect JSL
    PHK : PEA .end-1

    ; Y = Argument
    LDA [!DP_CurrentMenu] : TAY

    LDX #$0000
    JML.w [!DP_JSLTarget]

  .end
    %ai16()
    RTS
}

execute_jsl:
{
    ; <, > and X should do nothing here
    ; also ignore input held flag
    LDA !ram_cm_controller : BIT #$0341 : BNE .end

    ; !DP_JSLTarget = JSL target
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_JSLTarget

    ; Set return address for indirect JSL
    LDA !ram_cm_menu_bank : STA !DP_JSLTarget+2
    PHK : PEA .end-1

    ; Y = Argument
    LDA [!DP_CurrentMenu] : TAY

    LDX #$0000
    JML.w [!DP_JSLTarget]

  .end
    %ai16()
    RTS
}

execute_submenu:
{
    ; <, > and X should do nothing here
    ; also ignore input held flag
    LDA !ram_cm_controller : BIT #$0341 : BNE .end

    ; !DP_JSLTarget = JSL target
    LDA [!DP_CurrentMenu] : INC !DP_CurrentMenu : INC !DP_CurrentMenu : STA !DP_JSLTarget

    ; Set bank of action_submenu
    ; instead of the new menu's bank
    LDA.w #action_submenu>>16 : STA !DP_JSLTarget+2

    ; Set return address for indirect JSL
    PHK : PEA .end-1

    ; Y = Argument
    LDA [!DP_CurrentMenu] : TAY

    LDX #$0000
    JML.w [!DP_JSLTarget]

  .end
    %ai16()
    RTS
}

execute_custom_preset:
{
    ; check if Y newly pressed
    LDA !IH_CONTROLLER_PRI_NEW : BIT !CTRL_Y : BEQ .checkLeftRight

    ; swap between room name and Samus data
    LDA !ram_cm_custom_preset_labels : BEQ .turnOn
    LDA #$0000 : STA !ram_cm_custom_preset_labels
    BRA .redrawScreen
  .turnOn
    LDA #$0001 : STA !ram_cm_custom_preset_labels

  .redrawScreen
    JSL cm_draw
    %sfxmove()
    RTS

  .checkLeftRight
    ; don't activate submenu on left/right
    LDA !IH_CONTROLLER_PRI_NEW : BIT !IH_INPUT_LEFTRIGHT : BNE .done

    ; set preset slot and return to the previous menu
    %a8()
    LDA [!DP_CurrentMenu] : STA !sram_custom_preset_slot
    %a16()
    %sfxconfirm()
    JSL cm_previous_menu

  .done
    RTS
}

execute_ram_watch:
{
    ; do nothing
    RTS
}

cm_hex2dec:
{
    ; store 16-bit dividend
    STA $4204

    ; divide by 100
    %a8()
    LDA #$64 : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for math

    ; store result and use remainder as new dividend
    LDA $4214 : STA !DP_Temp
    LDA $4216 : STA $4204

    ; divide by 10
    %a8()
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for math

    ; store result and remainder, divide the rest
    LDA $4214 : STA !DP_SecondDigit ; tens
    LDA $4216 : STA !DP_ThirdDigit ; ones
    LDA !DP_Temp : STA $4204

    ; divide by 10
    %a8()
    LDA #$0A : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for math

    ; store result and remainder
    LDA $4214 : STA !DP_Temp ; thousands
    LDA $4216 : STA !DP_FirstDigit ; hundreds

    RTS
}

cm_reverse_hex2dec:
{
; Reconstructs a 16bit decimal number from individual digit values
    LDA !DP_Temp
    %ai8()
    STA $211B : XBA : STA $211B ; Thousands
    LDY #$0A : STY $211C ; multiply by 10
    %a16()
    LDA $2134 : CLC : ADC !DP_FirstDigit ; add Hundreds
    %a8()
    STA $211B : XBA : STA $211B
    STY $211C ; multiply by 10
    %a16()
    LDA $2134 : CLC : ADC !DP_SecondDigit ; add Tens
    %a8()
    STA $211B : XBA : STA $211B 
    STY $211C ; multiply by 10
    %ai16()
    LDA $2134 : CLC : ADC !DP_ThirdDigit : STA !DP_DigitValue ; add Ones
    RTS
}

cm_divide_100:
{
    STA $4204
    %a8()
    ; divide by 100
    LDA #$64 : STA $4206
    %a16()
    PEA $0000 : PLA ; wait for math
    ; 16-bit result
    LDA $4214
    RTS
}

MenuRNG:
; Generates new random number
; 32-bit period (uses two 16-bit seeds)
; Make sure ram_seed_X and ram_seed_Y is initialized to something other than zero
{
    LDA !ram_seed_X : ASL #5
    EOR !ram_seed_X : STA $C1

    LDA !ram_seed_Y : STA !ram_seed_X

    LDA $C1 : LSR #3
    EOR $C1 : STA $C1

    LDA !ram_seed_Y : LSR
    EOR !ram_seed_Y : EOR $C1
    STA !ram_seed_Y

    ; return y (in a)
    RTL    
}

MenuRNG2:
; 16-bit period xorshift (uses only ram_seed_X)
; Make sure ram_seed_X is not zero
{
    LDA !ram_seed_X
    STA $C1
    ASL #2 : EOR $C1 : STA $C1
    LSR #5 : EOR $C1 : STA $C1
    ASL : EOR $C1
    STA !ram_seed_X
    RTL
}


; -----------
; Main menu
; -----------

pushpc
org $B88000
print pc, " mainmenu start"
incsrc mainmenu.asm
print pc, " mainmenu end"
pullpc


; ----------
; Resources
; ----------

cm_hud_table:
    incbin ../resources/cm_gfx.bin

HexMenuGFXTable:
    dw $2C70, $2C71, $2C72, $2C73, $2C74, $2C75, $2C76, $2C77, $2C78, $2C79, $2C50, $2C51, $2C52, $2C53, $2C54, $2C55

print pc, " menu end"


; -------------
; Crash handler
; -------------

incsrc crash.asm
