!ram_tilemap_buffer = $7E5800

org $85FE00

wait_for_lag_frame_long:
  jsr $8136
  rtl

initialize_ppu_long:
  jsr $8143
  rtl

restore_ppu_long:
  jsr $861A
  rtl

play_music_long:
  jsr $8574
  rtl

maybe_trigger_pause_long:
  jsr $80FA
  rtl

org $B88000
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
    LDA #$04 : STA $210C
    LDA #$0F : STA $2100

    %a16()

    JSR cm_init

    JSL $82BE17               ; Cancel sound effects
    JSL initialize_ppu_long   ; Initialise PPU for message boxes

    JSR cm_transfer_custom_tileset
    JSR cm_transfer_custom_cgram
    JSR cm_draw         ; Initialise message box

    JSL play_music_long ; Play 2 lag frames of music and sound effects

    JSR cm_loop         ; Handle message box interaction

    JSR cm_transfer_original_tileset
    JSR cm_transfer_original_cgram

    ; Update HUD (in case we added missiles etc.)
    LDA !ram_gametime_room : STA $C1
    LDA !ram_last_gametime_room : STA $C3
    JSL $809A79
    LDA $C1 : STA !ram_gametime_room
    LDA $C3 : STA !ram_last_gametime_room
    JSL $809B44

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
    LDA $05B6 : STA !ram_last_lag_counter

    LDA.w #MainMenu
    STA.l !ram_cm_menu_stack
    LDA.w #MainMenu>>16
    STA.l !ram_cm_menu_bank

    JSR cm_calculate_max
    JSR cm_set_etanks_and_reserve
}

cm_set_etanks_and_reserve:
{
    LDA $09C4 : SBC #$0063 : CLC : INC : JSR cm_divide_100 : STA !ram_cm_etanks
    LDA $09D4 : CLC : INC : JSR cm_divide_100 : STA !ram_cm_reserve
    RTS
}


; ----------
; Drawing
; ----------

cm_transfer_custom_tileset:
{
    PHP
    %a8()
    ; word-access, incr by 1
    LDA #$80 : STA $2115

    LDX #$4000 : STX $2116 ; VRAM address (8000 in vram)
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
    %a8()
    ; word-access, incr by 1
    LDA #$80 : STA $2115

    LDX #$4000 : STX $2116 ; VRAM address (8000 in vram)
    LDX #$B200 : STX $4302 ; Source offset
    LDA #$9A : STA $4304 ; Source bank
    LDX #$0900 : STX $4305 ; Size (0x10 = 1 tile)
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
    LDA $7EC00A : STA !ram_cgram_cache
    LDA $7EC012 : STA !ram_cgram_cache+2
    LDA $7EC01A : STA !ram_cgram_cache+4
    LDA $7EC01C : STA !ram_cgram_cache+6
    LDA $7EC032 : STA !ram_cgram_cache+8
    LDA $7EC034 : STA !ram_cgram_cache+10
    LDA $7EC03A : STA !ram_cgram_cache+12
    LDA $7EC03C : STA !ram_cgram_cache+14

    LDA #$7277 : STA $7EC00A
    LDA #$48F3 : STA $7EC012
    LDA #$0000 : STA $7EC01A
    LDA #$7FFF : STA $7EC01C
    LDA #$4376 : STA $7EC032
    LDA #$761F : STA $7EC034
    LDA #$0000 : STA $7EC03A
    LDA #$761F : STA $7EC03C

    JSL transfer_cgram_long
    PLP
    RTS
}

cm_transfer_original_cgram:
{
    PHP
    %a16()
    LDA !ram_cgram_cache : STA $7EC00A
    LDA !ram_cgram_cache+2 : STA $7EC012
    LDA !ram_cgram_cache+4 : STA $7EC01A
    LDA !ram_cgram_cache+6 : STA $7EC01C
    LDA !ram_cgram_cache+8 : STA $7EC032
    LDA !ram_cgram_cache+10 : STA $7EC034
    LDA !ram_cgram_cache+12 : STA $7EC03A
    LDA !ram_cgram_cache+14 : STA $7EC03C

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
    RTS
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
        LDY #$0017

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
        LDA.w #$247B : STA !ram_tilemap_buffer+$684,X

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

    LDA [$00],Y : BEQ .done : STA $04

    PHY : PHX

    ; X = action index (action type)
    LDA [$04] : TAX

    ; $02 points to data after the action type index
    INC $04 : INC $04

    JSR (cm_draw_action_table,X)

    PLX : PLY
    INY : INY
    BRA .loop

  .done
    ; Draw submenu title
    STZ $0E
    TYA : CLC : ADC $00 : INC : INC : STA $04
    LDX #$00C6
    JSR cm_draw_text

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

macro item_index_to_vram_index()
    ; Find screen position from Y (item number)
    TYA : ASL #5
    CLC : ADC #$0146 : TAX
endmacro

cm_draw_action_table:
{
    dw draw_toggle
    dw draw_toggle_bit
    dw draw_jsr
    dw draw_numfield
    dw draw_choice
    dw draw_ctrl_shortcut

    draw_toggle:
    {
        ; grab the memory address (long)
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : INC $04 : STA $0A

        ; grab the toggle value
        LDA [$04] : AND #$00FF : INC $04 : STA $0C

        ; increment past JSR
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

    draw_toggle_bit:
    {
        ; grab the memory address (long)
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : INC $04 : STA $0A

        ; grab bitmask
        LDA [$04] : INC $04 : INC $04 : STA $0C

        ; increment past JSR
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

    draw_jsr:
    {
        ; skip JSR address
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

        ; skip bounds and increment value
        INC $04 : INC $04 : INC $04

        ; increment past JSR
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

    draw_choice:
    {
        ; $04[0x3] = address
        ; $08[0x2] = jsr target

        ; grab the memory address (long)
        LDA [$04] : INC $04 : INC $04 : STA $08
        LDA [$04] : INC $04 : STA $0A

        ; grab JSR target
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
}

cm_draw_text:
  %a8()
    LDY #$0000
    ; grab palette info
    LDA [$04],Y : INY : CMP #$FF : BEQ .end
    ORA $0E : STA $0E

  .loop
    LDA [$04],Y : CMP #$FF : BEQ .end
    STA !ram_tilemap_buffer,X : INX
    LDA $0E : STA !ram_tilemap_buffer,X : INX
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
    JMP .done

    +
    LDA !ram_cm_ctrl_mode : BEQ +
    JSR cm_ctrl_mode
    BRA .inputLoop

    +
    JSR cm_get_inputs : STA !ram_cm_controller : BEQ .inputLoop

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
    JSR cm_go_back
    JSR cm_calculate_max
    BRA .redraw

  ; .pressedY
  ; .pressedX
  ;   BRA .inputLoop

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
    BRA .done

  .redraw
    JSR cm_draw
    JMP .inputLoop

  .done
    RTS
}

cm_ctrl_mode:
{
    JSL $809459
    LDA $8B

    %a8() : LDA #$28 : STA $0E : %a16()

    LDA $8B : BEQ .clear_and_draw
    CMP !ram_cm_ctrl_last_input : BNE .clear_and_draw

    ; Holding an input for more than 1f
    LDA !ram_cm_ctrl_timer : INC : STA !ram_cm_ctrl_timer : CMP.w #0060 : BNE .next_frame

    LDA $8B : STA [$C5]
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
    JSR cm_draw
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
    LDA.w #MainMenu>>16       ; Reset submenu bank when back at main menu
    STA.l !ram_cm_menu_bank
  +
  .end
    LDA #!SOUND_MENU_MOVE : JSL $80903F
    RTS
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
    RTS
}

cm_get_inputs:
{
    ; Make sure we don't read joysticks twice in the same frame
    LDA $05B6 : CMP !ram_last_lag_counter : PHP : STA !ram_last_lag_counter : PLP : BNE +

    JSL $809459 ; Read controller input

    +
    LDA $8F : BEQ .check_holding

    ; Initial delay of $0E frames
    LDA #$000E : STA !ram_cm_input_timer

    ; Return the new input
    LDA $8F
    RTS

  .check_holding
    ; Check if we're holding up or down
    LDA $8B : AND #$0F00 : BEQ .noinput

    ; Decrement delay timer and check if it's zero
    LDA !ram_cm_input_timer : DEC : STA !ram_cm_input_timer : BNE .noinput

    ; Set new delay to 4 frames and return the input we're holding
    LDA #$0002 : STA !ram_cm_input_timer
    LDA $8B : AND #$0F00
    RTS

  .noinput
    LDA #$0000
    RTS
}

cm_move:
{
    LDX !ram_cm_stack_index
    CLC : ADC !ram_cm_cursor_stack,X : BPL .positive
    LDA !ram_cm_cursor_max : DEC #2

  .positive
    CMP !ram_cm_cursor_max : BNE .inBounds
    LDA #$0000

  .inBounds
    STA !ram_cm_cursor_stack,X

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

    ; Execute action
    JSR (cm_execute_action_table,X)
    RTS
}

cm_execute_action_table:
{
    dw execute_toggle
    dw execute_toggle_bit
    dw execute_jsr
    dw execute_numfield
    dw execute_choice
    dw execute_ctrl_shortcut

    execute_toggle:
    {
        ; Grab address
        LDA [$00] : INC $00 : INC $00 : STA $04
        LDA [$00] : INC $00 : STA $06

        ; Grab toggle value
        LDA [$00] : INC $00 : AND #$00FF : STA $08

        ; Grab JSR target
        LDA [$00] : INC $00 : INC $00 : STA $0A

        %a8()
        LDA [$04] : CMP $08 : BEQ .toggleOff

        LDA $08 : STA [$04]
        BRA .jsr

      .toggleOff
        LDA #$00 : STA [$04]

      .jsr
        %a16()
        LDA $0A : BEQ .end
        LDA [$04]
        LDX #$0000
        JSR ($000A,X)

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

        ; Load JSR target
        LDA [$00] : INC $00 : INC $00 : STA $0A

        ; Toggle the bit
        LDA [$04] : EOR $08 : STA [$04]

        LDA $0A : BEQ .end

        LDA [$04]
        LDX #$0000
        JSR ($000A,X)

      .end
        LDA #!SOUND_MENU_MOVE : JSL $80903F
        RTS
    }

    execute_jsr:
    {
        ; <, > and X should do nothing here
        LDA !ram_cm_controller : BIT #$0340 : BNE .end

        ; $02 = JSR target
        LDA [$00] : INC $00 : INC $00 : STA $04

        ; Y = Argument
        LDA [$00] : TAY

        LDX #$0000
        JSR ($0004,X)

      .end
        RTS
    }

    execute_numfield:
    {
        ; $02[0x3] = memory address to manipulate
        ; $06[0x1] = min
        ; $08[0x1] = max
        ; $0A[0x1] = increment
        ; $0C[0x2] = JSR target
        LDA [$00] : INC $00 : INC $00 : STA $04
        LDA [$00] : INC $00 : STA $06

        LDA [$00] : INC $00 : AND #$00FF : STA $08
        LDA [$00] : INC $00 : AND #$00FF : INC : STA $0A ; INC for convenience
        LDA [$00] : INC $00 : AND #$00FF : STA $0C

        LDA [$00] : INC $00 : INC $00 : STA $20

        LDA !ram_cm_controller : BIT #$0200 : BNE .pressed_left

        LDA [$04] : CLC : ADC $0C

        CMP $0A : BCS .set_to_min

        STA [$04] : BRA .jsr

      .pressed_left
        LDA [$04] : SEC : SBC $0C : BMI .set_to_max

        CMP $0A : BCS .set_to_max

        STA [$04] : BRA .jsr

      .set_to_min
        LDA $08 : STA [$04] : CLC : BRA .jsr

      .set_to_max
        LDA $0A : DEC : STA [$04] : CLC

      .jsr
        LDA $20 : BEQ .end

        LDA [$04]
        LDX #$0000
        JSR ($0020,X)

      .end
        LDA #!SOUND_MENU_MOVE : JSL $80903F
        RTS
    }

    execute_choice:
    {
        ; $02[0x3] = memory to manipulate
        ; $06[0x2] = jsr target
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

        LDA [$04]
        LDX #$0000
        JSR ($0008,X)

      .end
        LDA #!SOUND_MENU_MOVE : JSL $80903F
        RTS
    }

    execute_ctrl_shortcut:
    {
        ; < and > should do nothing here
        LDA !ram_cm_controller : BIT #$0300 : BNE .end

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
    LDA $4214 : ADC !ram_tmp_1 : STA !ram_tmp_1
    LDA $4214
    RTS

; -----------
; Main menu
; -----------

incsrc mainmenu.asm

; ----------
; Resources
; ----------

cm_hud_table:
    incbin ../resources/cm_gfx.bin

print pc, " menu end"
