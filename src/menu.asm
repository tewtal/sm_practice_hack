
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
    PHP
    PHB
    PHX
    PHY
    PHK : PLB

    %a8()
    STZ $420C
    LDA #$80 : STA $2100
    LDA #$A1 : STA $4200
    LDA #$09 : STA $2105
    LDA #$0F : STA $2100
    %a16()

    ; Ensure sound is enabled when menu is open
    LDA !DISABLE_SOUNDS : PHA
    STZ !DISABLE_SOUNDS
    LDA !PB_EXPLOSION_STATUS : PHA
    STZ !PB_EXPLOSION_STATUS
    JSL $82BE17               ; Cancel sound effects

    JSR cm_init
    JSL initialize_ppu_long   ; Initialise PPU for message boxes

    JSR cm_transfer_custom_tileset
    JSR cm_transfer_custom_cgram
    JSL cm_draw         ; Initialise message box

    JSL play_music_long ; Play 2 lag frames of music and sound effects

    JSR cm_loop         ; Handle message box interaction

    ; Restore sounds variables
    PLA : STA !PB_EXPLOSION_STATUS
    PLA : STA !DISABLE_SOUNDS
    ; Makes the game check Samus' health again, to see if we need annoying sound
    STZ !SAMUS_HEALTH_WARNING

    JSR cm_transfer_original_tileset
    JSR cm_transfer_original_cgram

    ; Update HUD (in case we added missiles etc.)
    LDA !ram_gametime_room : STA $C1
    LDA !ram_last_gametime_room : STA $C3
    JSL $809A79
    LDA $C1 : STA !ram_gametime_room
    LDA $C3 : STA !ram_last_gametime_room
    JSL $809B44
    JSL GameLoopExtras            ; check if game_loop_extras needs to be disabled

    ; I think the above subroutines erases some of infohud, so we make sure we redraw it.
    JSL ih_update_hud_code

    JSL restore_ppu_long          ; Restore PPU
    JSL $82BE2F                   ; Queue Samus movement sound effects
    JSL play_music_long           ; Play 2 lag frames of music and sound effects
    JSL maybe_trigger_pause_long  ; Maybe trigger pause screen or return save confirmation selection

    PLY
    PLX
    PLB
    PLP
    RTL
}

cm_init:
{
    ; Set up menu state
    LDA #$0000
    STA !ram_cm_stack_index
    STA !ram_cm_cursor_stack
    STA !ram_cm_leave
    STA !ram_load_preset
    STA !ram_cm_ctrl_mode
    STA !ram_cm_ctrl_timer
    STA $8F
    STA $8B
    LDA !FRAME_COUNTER : STA !ram_cm_input_counter

    LDA.l #MainMenu
    STA !ram_cm_menu_stack
    LDA.l #MainMenu>>16
    STA !ram_cm_menu_bank

    JSL cm_calculate_max
    JSL cm_set_etanks_and_reserve
    RTS
}

cm_set_etanks_and_reserve:
{
    LDA $09C4 : JSR cm_divide_100 : STA !ram_cm_etanks
    LDA $09D4 : JSR cm_divide_100 : STA !ram_cm_reserve
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
    LDA #$04 : STA $210C ; BG3 starts at $4000 (8000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$4000 : STX $2116 ; VRAM address (8000 in vram)
    LDX #cm_hud_table : STX $4302 ; Source offset
    LDA #cm_hud_table>>16 : STA $4304 ; Source bank
    LDX #$0900 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    PLP
    RTS

  .kraid_vram
    ; Load custom vram to kraid BG3 location
    %a8()
    LDA #$02 : STA $210C ; BG3 starts at $2000 (4000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$2000 : STX $2116 ; VRAM address (4000 in vram)
    LDX #cm_hud_table : STX $4302 ; Source offset
    LDA #cm_hud_table>>16 : STA $4304 ; Source bank
    LDX #$0900 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    PLP
    RTS
}

cm_transfer_original_tileset:
{
    PHP
    %a16()
    LDA !ROOM_ID : CMP #$A59F : BEQ .kraid_vram

    %a8()
    LDA !ram_minimap : CMP #$00 : BNE .minimap_vram

    ; Load in normal vram to normal BG3 location
    LDA #$04 : STA $210C ; BG3 starts at $4000 (8000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$4000 : STX $2116 ; VRAM address (8000 in vram)
    LDX #$B200 : STX $4302 ; Source offset
    LDA #$9A : STA $4304 ; Source bank
    LDX #$1000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    PLP
    RTS

  .kraid_vram
    %a8()
    LDA !ram_minimap : CMP #$00 : BNE .kraid_minimap_vram

    ; Load in normal vram to kraid BG3 location
    LDA #$02 : STA $210C ; BG3 starts at $2000 (4000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$2000 : STX $2116 ; VRAM address (4000 in vram)
    LDX #$B200 : STX $4302 ; Source offset
    LDA #$9A : STA $4304 ; Source bank
    LDX #$1000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    PLP
    RTS

  .minimap_vram
    ; Load in minimap vram to normal BG3 location
    LDA #$04 : STA $210C ; BG3 starts at $4000 (8000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$4000 : STX $2116 ; VRAM address (8000 in vram)
    LDX #$D500 : STX $4302 ; Source offset
    LDA #$DF : STA $4304 ; Source bank
    LDX #$1000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    PLP
    RTS

  .kraid_minimap_vram
    ; Load in minimap vram to kraid BG3 location
    LDA #$02 : STA $210C ; BG3 starts at $2000 (4000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$2000 : STX $2116 ; VRAM address (4000 in vram)
    LDX #$D500 : STX $4302 ; Source offset
    LDA #$DF : STA $4304 ; Source bank
    LDX #$1000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    PLP
    RTS
}

cm_transfer_custom_cgram:
{
    ; $0A = Border & OFF   $7277
    ; $12 = Header         $48F3
    ; $1A = Num            $0000, $7FFF
    ; $32 = ON / Sel Num   $4376
    ; $34 = Selected item  $761F
    ; $3A = Sel Num        $0000, $761F
    PHP
    %a16()
    ; Backup gameplay palette
    LDA $7EC00A : STA !ram_cgram_cache
    LDA $7EC00E : STA !ram_cgram_cache+$02
    LDA $7EC012 : STA !ram_cgram_cache+$04
    LDA $7EC014 : STA !ram_cgram_cache+$06
    LDA $7EC016 : STA !ram_cgram_cache+$08
    LDA $7EC01A : STA !ram_cgram_cache+$0A
    LDA $7EC01C : STA !ram_cgram_cache+$0C
    LDA $7EC032 : STA !ram_cgram_cache+$0E
    LDA $7EC034 : STA !ram_cgram_cache+$10
    LDA $7EC03A : STA !ram_cgram_cache+$12
    LDA $7EC03C : STA !ram_cgram_cache+$14

    ; Set menu palette
    LDA #$7277 : STA $7EC00A
    LDA #$0000 : STA $7EC00E : STA $7EC016
    STA $7EC01A : STA $7EC036 : STA $7EC03A
    LDA #$48F3 : STA $7EC012
    LDA #$7FFF : STA $7EC014 : STA $7EC01C
    LDA #$4376 : STA $7EC032
    LDA #$761F : STA $7EC034 : STA $7EC03C

    JSL transfer_cgram_long
    PLP
    RTS
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
    LDA !ram_cgram_cache+$0E : STA $7EC032
    LDA !ram_cgram_cache+$10 : STA $7EC034
    LDA !ram_cgram_cache+$12 : STA $7EC03A
    LDA !ram_cgram_cache+$14 : STA $7EC03C

    JSL transfer_cgram_long
    PLP
    RTS
}

cm_draw:
{
    PHP
    %ai16()
    JSR cm_tilemap_clear
    JSR cm_tilemap_bg
    JSR cm_tilemap_menu
    JSR cm_tilemap_transfer
    PLP
    RTL
}

cm_tilemap_clear:
{
    ; top left corner  = $042
    ; top right corner = $07C
    ; bot left corner  = $682
    ; bot right corner = $6BC
	 ; Empty out !ram_tilemap_buffer
    {
        LDX #$07FE
        LDA #$000E

        -
        STA !ram_tilemap_buffer,X
        DEX #2 : BPL -
    }
    RTS
}

cm_tilemap_bg:
{
    ; Vertical edges
    {
        LDX #$0000
        LDY #$0018

        -
        LDA.w #$647A : STA !ram_tilemap_buffer+$082,X
        LDA.w #$247A : STA !ram_tilemap_buffer+$0BC,X
        TXA : CLC : ADC #$0040 : TAX
        DEY : BPL -
    }

    ; Horizontal edges
    {
        LDX.w #$0000
        LDY.w #$001B

        -
        LDA.w #$A47B : STA !ram_tilemap_buffer+$044,X
        LDA.w #$247B : STA !ram_tilemap_buffer+$6C4,X

        INX #2
        DEY : BPL -
    }

    ; Interior
    {
        LDX.w #$0000
        LDY.w #$001B
        LDA.w #$281F

        -
        STA !ram_tilemap_buffer+$004,X
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
        DEY : BPL -
    }

    RTS
}

cm_tilemap_menu:
{
    ; $00[0x4] = menu indices
    ; $04[0x4] = current menu item index
    ; $0E[0x2] = palette ORA for tilemap entry (for indicating selected menu)
    LDX !ram_cm_stack_index
    LDA !ram_cm_menu_stack,X : STA $00
    LDA !ram_cm_menu_bank : STA $02
    LDA !ram_cm_menu_bank : STA $06

    LDY #$0000
  .loop
    TYA : CMP !ram_cm_cursor_stack,X : BEQ .selected
    LDA #$0000
    BRA .continue

  .selected
    LDA #$0010

  .continue
    STA $0E

    LDA [$00],Y : BEQ .header
    CMP #$FFFF : BEQ .blank
    STA $04

    PHY : PHX

    ; X = action index (action type)
    LDA [$04] : TAX

    ; $02 points to data after the action type index
    INC $04 : INC $04

    JSR (cm_draw_action_table,X)

    PLX : PLY

  .blank
    ; skip drawing blank lines
    INY : INY
    BRA .loop

  .header
    ; Draw menu header
    STZ $0E
    TYA : CLC : ADC $00 : INC #2 : STA $04
    LDX #$00C6
    JSR cm_draw_text

    ; Optional footer
    TYA : CLC : ADC $04 : INC : STA $04
    LDA [$04] : CMP #$F007 : BNE .done

    INC $04 : INC $04 : STZ $0E
    LDX #$0646
    JSR cm_draw_text
    RTS

  .done
    DEC $04 : DEC $04
    RTS
}

cm_tilemap_transfer:
{
    JSL wait_for_lag_frame_long  ; Wait for lag frame

    REP #$20
    LDA #$5800
    STA $2116
    LDA #$1801
    STA $4310
    LDA.w #!ram_tilemap_buffer
    STA $4312
    LDA.w #!ram_tilemap_buffer>>16
    STA $4314
    LDA #$0800
    STA $4315
    STZ $4317
    STZ $4319
    SEP #$20
    LDA #$80
    STA $2115
    LDA #$02
    STA $420B
    JSL $808F0C
    JSL $8289EF
    REP #$20
    RTS
}

cm_draw_action_table:
{
    dw draw_toggle
    dw draw_toggle_bit
    dw draw_jsl
    dw draw_numfield
    dw draw_choice
    dw draw_ctrl_shortcut
    dw draw_numfield_hex
    dw draw_numfield_word
    dw draw_toggle_inverted
    dw draw_numfield_color
    dw draw_controller_input
    dw draw_toggle_bit_inverted
    dw draw_jsl_submenu

    draw_toggle:
    {
        ; grab the memory address (long)
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : INC $04 : STA $0A

        ; grab the toggle value
        LDA [$04] : AND #$00FF : INC $04 : STA $0C

        ; increment past JSL
        INC $04 : INC $04

        ; Draw the text
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; Set position for ON/OFF
        TXA : CLC : ADC #$002C : TAX

        %a8()
        ; set palette
        LDA $0E
        STA !ram_tilemap_buffer+1,X
        STA !ram_tilemap_buffer+3,X
        STA !ram_tilemap_buffer+5,X

        ; grab the value at that memory address
        LDA [$08] : CMP $0C : BEQ .checked

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

    draw_toggle_inverted:
    {
        ; grab the memory address (long)
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : INC $04 : STA $0A

        ; grab the toggle value
        LDA [$04] : AND #$00FF : INC $04 : STA $0C

        ; increment past JSL
        INC $04 : INC $04

        ; Draw the text
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; Set position for ON/OFF
        TXA : CLC : ADC #$002C : TAX

        %a8()
        ; set palette
        LDA $0E
        STA !ram_tilemap_buffer+1,X
        STA !ram_tilemap_buffer+3,X
        STA !ram_tilemap_buffer+5,X

        ; grab the value at that memory address
        LDA [$08] : CMP $0C : BNE .checked

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
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : INC $04 : STA $0A

        ; grab bitmask
        LDA [$04] : INC $04 : INC $04 : STA $0C

        ; increment past JSL
        INC $04 : INC $04

        ; Draw the text
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; Set position for ON/OFF
        TXA : CLC : ADC #$002C : TAX

        ; grab the value at that memory address
        LDA [$08] : AND $0C : BNE .checked

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

    draw_toggle_bit_inverted:
    {
        ; grab the memory address (long)
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : INC $04 : STA $0A

        ; grab bitmask
        LDA [$04] : INC $04 : INC $04 : STA $0C

        ; increment past JSL
        INC $04 : INC $04

        ; Draw the text
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; Set position for ON/OFF
        TXA : CLC : ADC #$002C : TAX

        ; grab the value at that memory address
        LDA [$08] : AND $0C : BEQ .checked

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

    draw_jsl:
    draw_jsl_submenu:
    {
        ; skip JSL address
        INC $04 : INC $04

        ; skip argument
        INC $04 : INC $04

        ; draw text normally
        %item_index_to_vram_index()
        JSR cm_draw_text
        RTS
    }

    draw_numfield:
    {
        ; grab the memory address (long)
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : INC $04 : STA $0A

        ; skip bounds and increment values
        INC $04 : INC $04 : INC $04 : INC $04

        ; increment past JSL
        INC $04 : INC $04

        ; Draw the text
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; set position for the number
        TXA : CLC : ADC #$002C : TAX

        LDA [$08] : AND #$00FF : JSR cm_hex2dec

        ; Clear out the area (black tile)
        LDA #$281F : STA !ram_tilemap_buffer+0,X
                     STA !ram_tilemap_buffer+2,X
                     STA !ram_tilemap_buffer+4,X

        ; Set palette
        %a8()
        LDA.b #$24 : ORA $0E : STA $0F
        LDA.b #$70 : STA $0E

        ; Draw numbers
        %a16()
        ; ones
        LDA !ram_hex2dec_third_digit : CLC : ADC $0E : STA !ram_tilemap_buffer+4,X

        ; tens
        LDA !ram_hex2dec_second_digit : ORA !ram_hex2dec_first_digit : BEQ .done
        LDA !ram_hex2dec_second_digit : CLC : ADC $0E : STA !ram_tilemap_buffer+2,X

        LDA !ram_hex2dec_first_digit : BEQ .done
        CLC : ADC $0E : STA !ram_tilemap_buffer,X

      .done
        RTS
    }

    draw_numfield_word:
    {
        ; grab the memory address (long)
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : INC $04 : STA $0A

        ; skip bounds and increment values
        INC $04 : INC $04 : INC $04 : INC $04
        INC $04 : INC $04 : INC $04 : INC $04

        ; increment past JSL
        INC $04 : INC $04

        ; Draw the text
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; set position for the number
        TXA : CLC : ADC #$002A : TAX

        LDA [$08] : JSR cm_hex2dec

        ; Clear out the area (black tile)
        LDA #$281F : STA !ram_tilemap_buffer+0,X
                     STA !ram_tilemap_buffer+2,X
                     STA !ram_tilemap_buffer+4,X
                     STA !ram_tilemap_buffer+6,X

        ; Set palette
        %a8()
        LDA.b #$24 : ORA $0E : STA $0F
        LDA.b #$70 : STA $0E

        ; Draw numbers
        %a16()
        ; ones
        LDA !ram_hex2dec_third_digit : CLC : ADC $0E : STA !ram_tilemap_buffer+6,X

        ; tens
        LDA !ram_hex2dec_second_digit : ORA !ram_hex2dec_first_digit
        ORA !ram_hex2dec_rest : BEQ .done
        LDA !ram_hex2dec_second_digit : CLC : ADC $0E : STA !ram_tilemap_buffer+4,X

        LDA !ram_hex2dec_first_digit : ORA !ram_hex2dec_rest : BEQ .done
        LDA !ram_hex2dec_first_digit : CLC : ADC $0E : STA !ram_tilemap_buffer+2,X

        LDA !ram_hex2dec_rest : BEQ .done
        CLC : ADC $0E : STA !ram_tilemap_buffer,X

      .done
        RTS
    }

    draw_numfield_hex:
    {
        ; grab the memory address (long)
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : INC $04 : STA $0A

        ; skip bounds and increment values
        INC $04 : INC $04 : INC $04 : INC $04

        ; increment past JSL
        INC $04 : INC $04

        ; Draw the text
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; set position for the number
        TXA : CLC : ADC #$002E : TAX

        LDA [$08] : AND #$00FF : STA $C1

        ; Clear out the area (black tile)
        LDA #$281F : STA !ram_tilemap_buffer+0,X
                     STA !ram_tilemap_buffer+2,X

        ; Draw numbers
        ; (00X0)
        LDA $C1 : AND #$00F0 : LSR #3 : TAY
        LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer,X
        
        ; (000X)
        LDA $C1 : AND #$000F : ASL : TAY
        LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+2,X

      .done
        RTS
    }

    draw_numfield_color:
    {
        ; grab the memory address (long)
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : INC $04 : STA $0A

        ; increment past JSL
        INC $04 : INC $04

        ; Draw the text
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; set position for the number
        TXA : CLC : ADC #$002E : TAX

        LDA [$08] : AND #$00FF : STA $C1

        ; Clear out the area (black tile)
        LDA #$281F : STA !ram_tilemap_buffer+0,X
                     STA !ram_tilemap_buffer+2,X

        ; Draw numbers
        ; (00X0)
        LDA $C1 : AND #$001E : TAY
        LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer,X

        ; (000X)
        LDA $C1 : AND #$0001 : ASL #4 : STA $0E
        LDA $C1 : AND #$001C : LSR : CLC : ADC $0E : TAY
        LDA.w HexMenuGFXTable,Y : STA !ram_tilemap_buffer+2,X

      .done
        RTS
    }

    draw_choice:
    {
        ; $04[0x3] = address
        ; $08[0x3] = JSL target

        ; grab the memory address (long)
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : INC $04 : STA $0A

        ; grab JSL target
        LDA [$04] : INC $04 : INC $04 : STA $0C

        ; Draw the text first
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; set position for choice
        TXA : CLC : ADC #$001C : TAX

        LDY #$0000
        LDA #$0000

        ; grab the value at that memory address
        LDA [$08] : TAY

        ; find the correct text that should be drawn (the selected choice)
        INY : INY ; uh, skipping the first text that we already drew..
      .loop_choices
        DEY : BEQ .found

      .loop_text
        LDA [$04] : %a16() : INC $04 : %a8()
        CMP.b #$FF : BEQ .loop_choices
        BRA .loop_text

      .found
        %a16()
        JSR cm_draw_text

        %a16()
        RTS
    }

    draw_ctrl_shortcut:
    {
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : STA $0A : INC $04

        %item_index_to_vram_index()
        PHX
        JSR cm_draw_text
        PLA : CLC : ADC #$0022 : TAX

        LDA [$08]
        JSR menu_ctrl_input_display

        RTS
    }

    draw_controller_input:
    {
        ; grab the memory address (long)
        LDA [$04] : INC $04 : INC $04 : STA $08
        STA !ram_cm_ctrl_assign
        LDA [$04] : INC $04 : STA $0A

        ; grab JSL target
        LDA [$04] : INC $04 : INC $04 : STA $0C

        ; skip JSL argument
        INC $04 : INC $04

        ; Draw the text
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; set position for the input
        TXA : CLC : ADC #$0020 : TAX

        LDA ($08) : AND #$E0F0 : BEQ .unbound

        ; determine which input to draw, using Y to refresh A
        TAY : AND #$0080 : BEQ + : LDY #$0000 : BRA .draw
+       TYA : AND #$8000 : BEQ + : LDY #$0002 : BRA .draw
+       TYA : AND #$0040 : BEQ + : LDY #$0004 : BRA .draw
+       TYA : AND #$4000 : BEQ + : LDY #$0006 : BRA .draw
+       TYA : AND #$0020 : BEQ + : LDY #$0008 : BRA .draw
+       TYA : AND #$0010 : BEQ + : LDY #$000A : BRA .draw
+       TYA : AND #$2000 : BEQ .unbound : LDY #$000C

      .draw
        LDA.w CtrlMenuGFXTable,Y : STA !ram_tilemap_buffer,X
        RTS

      .unbound
        LDA #$281F : STA !ram_tilemap_buffer,X
        RTS

    CtrlMenuGFXTable:
        ;  A      B      X      Y      L      R      Select
        ;  0080   8000   0040   4000   0020   0010   2000
        dw $288F, $2887, $288E, $2886, $288D, $288C, $2885
    }
}

cm_draw_text:
    ; X = pointer to tilemap area (STA !ram_tilemap_buffer,X)
    ; $04[0x3] = address
  %a8()
    LDY #$0000
    ; terminator
    LDA [$04],Y : INY : CMP #$FF : BEQ .end
    ; ORA with palette info
    ORA $0E : STA $0E

  .loop
    LDA [$04],Y : CMP #$FF : BEQ .end           ; terminator
    STA !ram_tilemap_buffer,X : INX             ; tile
    LDA $0E : STA !ram_tilemap_buffer,X : INX   ; palette
    INY : JMP .loop

  .end
  %a16()
    RTS

; --------------
; Input Display
; --------------

menu_ctrl_input_display:
{
    ; X = pointer to tilemap area (STA !ram_tilemap_buffer,X)
    ; A = Controller word
    JSR menu_ctrl_clear_input_display

    XBA
    LDY #$0000
  .loop
    PHA
    BIT #$0001 : BEQ .no_draw

    TYA : CLC : ADC #$0080
    XBA : ORA $0E : XBA
    STA !ram_tilemap_buffer,X : INX : INX

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
    LDA #$281F
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
  .inputLoop
    %ai16()

    JSL wait_for_lag_frame_long  ; Wait for lag frame

    JSL $808F0C ; Music queue
    JSL $8289EF ; Sound fx queue

    LDA !ram_cm_leave : BEQ +
    RTS ; Exit menu loop

+   LDA !ram_cm_ctrl_mode : BEQ +
    JSR cm_ctrl_mode
    BRA .inputLoop

+   JSR cm_get_inputs : STA !ram_cm_controller : BEQ .inputLoop

    BIT #$0080 : BNE .pressedA
    BIT #$8000 : BNE .pressedB
    BIT #$0040 : BNE .pressedX
    ; BIT #$4000 : BNE .pressedY
    BIT #$2000 : BNE .pressedSelect
    BIT #$1000 : BNE .pressedStart
    BIT #$0800 : BNE .pressedUp
    BIT #$0400 : BNE .pressedDown
    BIT #$0100 : BNE .pressedRight
    BIT #$0200 : BNE .pressedLeft
    BIT #$0020 : BNE .pressedL
    BIT #$0010 : BNE .pressedR

    BRA .inputLoop

  .pressedB
    JSL cm_go_back
    JSL cm_calculate_max
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
    LDX !ram_cm_stack_index
    LDA #$0000 : STA !ram_cm_cursor_stack,X
    LDA #!SOUND_MENU_MOVE : JSL $80903F
    BRA .redraw

  .pressedR
    LDX !ram_cm_stack_index
    LDA !ram_cm_cursor_max : DEC #2 : STA !ram_cm_cursor_stack,X
    LDA #!SOUND_MENU_MOVE : JSL $80903F
    BRA .redraw

  .pressedA
  .pressedX
  .pressedLeft
  .pressedRight
    JSR cm_execute
    BRA .redraw

  .pressedStart
  .pressedSelect
    LDA #$0001 : STA !ram_cm_leave
    JMP .inputLoop

  .redraw
    JSL cm_draw
    JMP .inputLoop
}

cm_ctrl_mode:
{
    JSL $809459
    LDA $8B

    %a8() : LDA #$28 : STA $0E : %a16()

    LDA $8B : BEQ .clear_and_draw
    CMP !ram_cm_ctrl_last_input : BNE .clear_and_draw

    ; Holding an input for more than one second
    LDA !ram_cm_ctrl_timer : INC : STA !ram_cm_ctrl_timer : CMP.w #0060 : BNE .next_frame

    LDA $8B : STA [$C5]
    JSL GameModeExtras
    LDA #!SOUND_MENU_MOVE : JSL $80903F
    BRA .exit

  .clear_and_draw
    STA !ram_cm_ctrl_last_input
    LDA #$0000 : STA !ram_cm_ctrl_timer

    ; Put text cursor in X
    LDX !ram_cm_stack_index
    LDA !ram_cm_cursor_stack,X : ASL #5 : CLC : ADC #$0168 : TAX

    ; Input display
    LDA $8B
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

cm_go_back:
{
    ; make sure next time we go to a submenu, we start on the first line.
    LDX !ram_cm_stack_index
    LDA #$0000 : STA !ram_cm_cursor_stack,X

    ; make sure we dont set a negative number
    LDA !ram_cm_stack_index : DEC : DEC : BPL .done

    ; leave menu 
    LDA #$0001 : STA !ram_cm_leave

    LDA #$0000
  .done
    STA !ram_cm_stack_index    
    LDA !ram_cm_stack_index
    BNE +
    LDA.l #MainMenu>>16       ; Reset submenu bank when back at main menu
    STA !ram_cm_menu_bank
  +
  .end
    LDA #!SOUND_MENU_MOVE : JSL $80903F
    RTL
}

cm_calculate_max:
{
    LDX !ram_cm_stack_index
    LDA !ram_cm_menu_stack,X : STA $00
    LDA !ram_cm_menu_bank : STA $02

    LDX #$0000
  .loop
    LDA [$00] : BEQ .done
    INC $00 : INC $00
    INX #2
    BRA .loop

  .done
    TXA : STA !ram_cm_cursor_max
    RTL
}

cm_get_inputs:
{
    ; Make sure we don't read joysticks twice in the same frame
    LDA !FRAME_COUNTER : CMP !ram_cm_input_counter : PHP : STA !ram_cm_input_counter : PLP : BNE +

    JSL $809459 ; Read controller input

    +
    LDA $8F : BEQ .check_holding

    ; Initial delay of $0E frames
    LDA #$000E : STA !ram_cm_input_timer

    ; Return the new input
    LDA $8F
    RTS

  .check_holding
    ; Check if we're holding the dpad
    LDA $8B : AND #$0F00 : BEQ .noinput

    ; Decrement delay timer and check if it's zero
    LDA !ram_cm_input_timer : DEC : STA !ram_cm_input_timer : BNE .noinput

    ; Set new delay to two frames and return the input we're holding
    LDA #$0002 : STA !ram_cm_input_timer
    LDA $8B : AND #$0F00 : ORA !IH_INPUT_HELD
    RTS

  .noinput
    LDA #$0000
    RTS
}

cm_move:
{
    STA $12
    LDX !ram_cm_stack_index
    CLC : ADC !ram_cm_cursor_stack,X : BPL .positive
    LDA !ram_cm_cursor_max : DEC #2 : BRA .inBounds

  .positive
    CMP !ram_cm_cursor_max : BNE .inBounds
    LDA #$0000

  .inBounds
    STA !ram_cm_cursor_stack,X : TAY

    ; check for blank menu line ($FFFF)
    LDA [$00],Y : CMP #$FFFF : BNE .end

    LDA $12 : BRA cm_move

  .end
    LDA #!SOUND_MENU_MOVE : JSL $80903F
    RTS
}


; --------
; Execute
; --------

cm_execute:
{
    ; $00 = submenu item
    LDX !ram_cm_stack_index
    LDA !ram_cm_menu_stack,X : STA $00
    LDA !ram_cm_menu_bank : STA $02
    LDA !ram_cm_cursor_stack,X : TAY
    LDA [$00],Y : STA $00

    ; Increment past the action index
    LDA [$00] : INC $00 : INC $00 : TAX

    ; Safety net incase blank line selected
    CPX #$FFFF : BEQ +

    ; Execute action
    JSR (cm_execute_action_table,X)
+   RTS
}

cm_execute_action_table:
{
    dw execute_toggle
    dw execute_toggle_bit
    dw execute_jsl
    dw execute_numfield
    dw execute_choice
    dw execute_ctrl_shortcut
    dw execute_numfield_hex
    dw execute_numfield_word
    dw execute_toggle
    dw execute_numfield_color
    dw execute_controller_input
    dw execute_toggle_bit
    dw execute_jsl_submenu

    execute_toggle:
    {
        ; Grab address
        LDA [$00] : INC $00 : INC $00 : STA $04
        LDA [$00] : INC $00 : STA $06

        ; Grab toggle value
        LDA [$00] : INC $00 : AND #$00FF : STA $08

        ; Grab JSL target
        LDA [$00] : INC $00 : INC $00 : STA $0A

        %a8()
        LDA [$04] : CMP $08 : BEQ .toggleOff

        LDA $08 : STA [$04]
        BRA .jsl

      .toggleOff
        LDA #$00 : STA [$04]

      .jsl
        %a16()
        LDA $0A : BEQ .end

        ; Set return address for indirect JSL
        LDA !ram_cm_menu_bank : STA $0C
        PHK : PEA .end-1

        LDA [$04]
        LDX #$0000
        JML [$000A]

      .end
        LDA #!SOUND_MENU_MOVE : JSL $80903F
        RTS
    }

    execute_toggle_bit:
    {
        ; Load the address
        LDA [$00] : INC $00 : INC $00 : STA $04
        LDA [$00] : INC $00 : STA $06

        ; Load which bit(s) to toggle
        LDA [$00] : INC $00 : INC $00 : STA $08

        ; Load JSL target
        LDA [$00] : INC $00 : INC $00 : STA $0A

        ; Toggle the bit
        LDA [$04] : EOR $08 : STA [$04]

        LDA $0A : BEQ .end

        ; Set return address for indirect JSL
        LDA !ram_cm_menu_bank : STA $0C
        PHK : PEA .end-1

        LDA [$04]
        LDX #$0000
        JML [$000A]

      .end
        LDA #!SOUND_MENU_MOVE : JSL $80903F
        RTS
    }

    execute_jsl_submenu:
    {
        ; <, > and X should do nothing here
        ; also ignore input held flag
        LDA !ram_cm_controller : BIT #$0341 : BNE .end

        ; $04 = JSL target
        LDA [$00] : INC $00 : INC $00 : STA $04

        ; Set bank of action_submenu
        ; instead of the menu we're jumping to
        LDA.l #action_submenu>>16 : STA $06

        ; Set return address for indirect JSL
        PHK : PEA .end-1

        ; Y = Argument
        LDA [$00] : TAY

        LDX #$0000
        JML [$0004]

      .end
        RTS
    }

    execute_jsl:
    {
        ; <, > and X should do nothing here
        ; also ignore input held flag
        LDA !ram_cm_controller : BIT #$0341 : BNE .end

        ; $04 = JSL target
        LDA [$00] : INC $00 : INC $00 : STA $04

        ; Set return address for indirect JSL
        LDA !ram_cm_menu_bank : STA $06
        PHK : PEA .end-1

        ; Y = Argument
        LDA [$00] : TAY

        LDX #$0000
        JML [$0004]

      .end
        RTS
    }

    execute_numfield:
    execute_numfield_hex:
    {
        ; $04[0x3] = memory address to manipulate
        ; $08[0x1] = min
        ; $0A[0x1] = max
        ; $0C[0x1] = increment (normal)
        ; $0C[0x1] = increment (input held)
        ; $20[0x3] = JSL target
        LDA [$00] : INC $00 : INC $00 : STA $04
        LDA [$00] : INC $00 : STA $06

        LDA [$00] : INC $00 : AND #$00FF : STA $08
        LDA [$00] : INC $00 : AND #$00FF : INC : STA $0A ; INC for convenience

        LDA !ram_cm_controller : BIT !IH_INPUT_HELD : BNE .input_held
        LDA [$00] : INC $00 : INC $00 : AND #$00FF : STA $0C
        BRA .load_jsl_target

      .input_held
        INC $00 : LDA [$00] : INC $00 : AND #$00FF : STA $0C

      .load_jsl_target
        LDA [$00] : INC $00 : INC $00 : STA $20

        LDA !ram_cm_controller : BIT #$0200 : BNE .pressed_left

        LDA [$04] : CLC : ADC $0C

        CMP $0A : BCS .set_to_min

        STA [$04] : BRA .jsl

      .pressed_left
        LDA [$04] : SEC : SBC $0C
        CMP $08 : BMI .set_to_max

        CMP $0A : BCS .set_to_max

        STA [$04] : BRA .jsl

      .set_to_min
        LDA $08 : STA [$04] : CLC : BRA .jsl

      .set_to_max
        LDA $0A : DEC : STA [$04] : CLC

      .jsl
        LDA $20 : BEQ .end

        ; Set return address for indirect JSL
        LDA !ram_cm_menu_bank : STA $22
        PHK : PEA .end-1

        LDA [$04]
        LDX #$0000
        JML [$0020]

      .end
        LDA #!SOUND_MENU_MOVE : JSL $80903F
        RTS
    }

    execute_numfield_word:
    {
        ; $04[0x3] = memory address to manipulate
        ; $08[0x2] = min
        ; $0A[0x2] = max
        ; $0C[0x2] = increment (normal)
        ; $0C[0x2] = increment (input held)
        ; $20[0x3] = JSL target
        LDA [$00] : INC $00 : INC $00 : STA $04
        LDA [$00] : INC $00 : STA $06

        LDA [$00] : INC $00 : INC $00 : STA $08
        LDA [$00] : INC $00 : INC $00 : INC : STA $0A ; INC for convenience

        LDA !ram_cm_controller : BIT !IH_INPUT_HELD : BNE .input_held
        LDA [$00] : INC $00 : INC $00 : INC $00 : INC $00 : STA $0C
        BRA .load_jsl_target

      .input_held
        INC $00 : INC $00 : LDA [$00] : INC $00 : INC $00 : STA $0C

      .load_jsl_target
        LDA [$00] : INC $00 : INC $00 : STA $20

        LDA !ram_cm_controller : BIT #$0200 : BNE .pressed_left

        LDA [$04] : CLC : ADC $0C

        CMP $0A : BCS .set_to_min

        STA [$04] : BRA .jsl

      .pressed_left
        LDA [$04] : SEC : SBC $0C
        CMP $08 : BMI .set_to_max

        CMP $0A : BCS .set_to_max

        STA [$04] : BRA .jsl

      .set_to_min
        LDA $08 : STA [$04] : CLC : BRA .jsl

      .set_to_max
        LDA $0A : DEC : STA [$04] : CLC

      .jsl
        LDA $20 : BEQ .end

        ; Set return address for indirect JSL
        LDA !ram_cm_menu_bank : STA $22
        PHK : PEA .end-1

        LDA [$04]
        LDX #$0000
        JML [$0020]

      .end
        LDA #!SOUND_MENU_MOVE : JSL $80903F
        RTS
    }

    execute_numfield_color:
    {
        ; $04[0x3] = memory address to manipulate
        ; $20[0x3] = JSL target
        LDA [$00] : INC $00 : INC $00 : STA $04
        LDA [$00] : INC $00 : STA $06

        LDA [$00] : INC $00 : INC $00 : STA $20

        LDA !ram_cm_controller : BIT #$0200 : BNE .pressed_left

        LDA [$04] : INC : CMP #$0020 : BCS .set_to_min
        STA [$04] : LDA !ram_cm_controller : BIT !IH_INPUT_LEFT : BEQ .jsl

        LDA [$04] : INC : CMP #$0020 : BCS .set_to_min
        STA [$04] : BRA .jsl

      .pressed_left
        LDA [$04] : DEC : BMI .set_to_max
        STA [$04] : LDA !ram_cm_controller : BIT !IH_INPUT_LEFT : BEQ .jsl

        LDA [$04] : DEC : BMI .set_to_max
        STA [$04] : BRA .jsl

      .set_to_min
        LDA #$0000 : STA [$04] : CLC : BRA .jsl

      .set_to_max
        LDA #$001F : STA [$04] : CLC

      .jsl
        LDA $20 : BEQ .end

        ; Set return address for indirect JSL
        LDA !ram_cm_menu_bank : STA $22
        PHK : PEA .end-1

        LDA [$04]
        LDX #$0000
        JML [$0020]

      .end
        LDA #!SOUND_MENU_MOVE : JSL $80903F
        RTS
    }

    execute_choice:
    {
        ; $04[0x3] = memory to manipulate
        ; $08[0x3] = JSL target
        %a16()
        LDA [$00] : INC $00 : INC $00 : STA $04
        LDA [$00] : INC $00 : STA $06

        LDA [$00] : INC $00 : INC $00 : STA $08

        ; we either increment or decrement
        LDA !ram_cm_controller : BIT #$0200 : BNE .pressed_left
        LDA [$04] : INC : BRA .bounds_check

      .pressed_left
        LDA [$04] : DEC

      .bounds_check
        TAX         ; X = new value
        LDY #$0000  ; Y will be set to max

        %a8()
      .loop_choices
        LDA [$00] : %a16() : INC $00 : %a8() : CMP.b #$FF : BEQ .loop_done

      .loop_text
        LDA [$00] : %a16() : INC $00 : %a8()
        CMP.b #$FF : BNE .loop_text
        INY : BRA .loop_choices

      .loop_done
        ; X = new value (might be out of bounds)
        ; Y = maximum + 2
        ; We need to make sure X is between 0-maximum.

        ; for convenience so we can use BCS. We do one more DEC in `.set_to_max`
        ; below, so we get the actual max.
        DEY

        %a16()
        TXA : BMI .set_to_max
        STY $0A
        CMP $0A : BCS .set_to_zero

        BRA .store

      .set_to_zero
        LDA #$0000 : BRA .store

      .set_to_max
        TYA : DEC

      .store
        STA [$04]

        LDA $08 : BEQ .end

        ; Set return address for indirect JSL
        LDA !ram_cm_menu_bank : STA $0A
        PHK : PEA .end-1

        LDA [$04]
        LDX #$0000
        JML [$0008]

      .end
        LDA #!SOUND_MENU_MOVE : JSL $80903F
        RTS
    }

    execute_ctrl_shortcut:
    {
        ; < and > should do nothing here
        ; also ignore the input held flag
        LDA !ram_cm_controller : BIT #$0301 : BNE .end

        LDA [$00] : STA $C5 : INC $00 : INC $00
        LDA [$00] : STA $C7 : INC $00

        LDA !ram_cm_controller : BIT #$0040 : BNE .reset_shortcut

        LDA #$0001 : STA !ram_cm_ctrl_mode
        LDA #$0000 : STA !ram_cm_ctrl_timer
        RTS

      .reset_shortcut
        LDA.w #!sram_ctrl_menu : CMP $C5 : BEQ .end
        LDA #!SOUND_MENU_MOVE : JSL $80903F

        LDA #$0000 : STA [$C5]

        .end
        RTS
    }

    execute_controller_input:
    {
        ; <, > and X should do nothing here
        ; also ignore input held flag
        LDA !ram_cm_controller : BIT #$0341 : BNE .end

        ; store long address as short address for now
        LDA [$00] : INC $00 : INC $00 : INC $00
        STA !ram_cm_ctrl_assign

        ; $04 = JSL target
        LDA [$00] : INC $00 : INC $00 : STA $04

        ; Set bank of action_submenu
        ; instead of the menu we're jumping to
        LDA.l #action_submenu>>16 : STA $06

        ; Set return address for indirect JSL
        PHK : PEA .end-1

        ; Y = Argument
        LDA [$00] : TAY

        LDX #$0000
        JML [$0004]

      .end
        RTS
    }
}

cm_hex2dec:
{
    STA $4204

    %a8()
    LDA #$64 : STA $4206
    PHA : PLA : PHA : PLA

    %a16()
    LDA $4214 : STA !ram_hex2dec_rest
    LDA $4216 : STA $4204

    %a8()
    LDA #$0A : STA $4206
    PHA : PLA : PHA : PLA

    %a16()
    LDA $4214 : STA !ram_hex2dec_second_digit
    LDA $4216 : STA !ram_hex2dec_third_digit
    LDA !ram_hex2dec_rest : STA $4204

    %a8()
    LDA #$0A : STA $4206
    PHA : PLA : PHA : PLA

    %a16()
    LDA $4214 : STA !ram_hex2dec_rest
    LDA $4216 : STA !ram_hex2dec_first_digit

    RTS
}

cm_divide_100:
    STA $4204 : SEP #$20
    LDA #$64 : STA $4206
    PHA : PLA : PHA : PLA : REP #$20
    LDA $4214
    RTS


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
