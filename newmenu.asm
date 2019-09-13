; $82:8B44 08          PHP
; $82:8B45 C2 30       REP #$30
; $82:8B47 22 B6 8E A0 JSL $A08EB6[$A0:8EB6]  ; Determine which enemies to process
org $828B44
    PHP
    JSL cm_check_inputs : BCS end_of_normal_gameplay
org $828BB7
    end_of_normal_gameplay:


org $85A000

; Call this at the end of NMI
cm_check_inputs:
{
    %ai16()
    LDA !MENU_CONTROLLER : CMP !MENU_INPUT : BNE .continue_gamemode

    ; Go into Mainmenu
    JSR cm_start

    ; Skip gamemode this frame (not sure why. feels more "safe" ;)
    SEC : RTL

  .continue_gamemode
    JSL $A08EB6
    CLC : RTL
}

cm_start:
{
  PHP
  PHB
  PHX
  PHY
    PHK : PLB

    JSR cm_init

    JSL $82BE17         ; Cancel sound effects
    JSR $8143           ; Initialise PPU for message boxes

    JSR cm_transfer_custom_tileset
    JSR cm_draw         ; Initialise message box

    JSR $8574           ; Play 2 lag frames of music and sound effects

    JSR cm_loop         ; Handle message box interaction

    JSR cm_transfer_original_tileset

    ; Update HUD (in case we added missiles etc.)
    JSL $809A79
    JSL $809B44

    ; I think the above subroutines erases some of infohud, so we make sure we redraw it.
    LDA #$FFFF : STA !ram_pct_2
    JSL ih_update_hud_code

    JSR $861A           ; Restore PPU
    JSL $82BE2F         ; Queue Samus movement sound effects
    JSR $8574           ; Play 2 lag frames of music and sound effects
    JSR $80FA           ; Maybe trigger pause screen or return save confirmation selection

  PLY
  PLX
  PLB
  PLP
  RTS
}

cm_init:
{
    ; Set up menu state
    LDA #$0000
    STA !ram_cm_stack_index
    STA !ram_cm_cursor_stack
    STA !ram_cm_leave
    STA !ram_load_preset

    LDA #MainMenu : STA !ram_cm_menu_stack

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
    LDA #$85 : STA $4304 ; Source bank
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
	; Empty out $7E3900
    {
        LDX #$07FE
        LDA #$000E

        -
        STA $7E3900,x
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
        LDA.w #$647A : STA $7E3900+$082, X
        LDA.w #$247A : STA $7E3900+$0BC, X
        TXA : CLC : ADC #$0040 : TAX
        DEY : BPL -
    }

    ; Horizontal edges
    {
        LDX.w #$0000
        LDY.w #$001B

        -
        LDA.w #$A47B : STA $7E3900+$044, X
        LDA.w #$247B : STA $7E3900+$684, X

        INX #2
        DEY : BPL -
    }

    ; Interior
    {
        LDX.w #$0000
        LDY.w #$001B
        LDA.w #$281F

        -
        STA $7E3900+$084, X : STA $7E3900+$0C4, X : STA $7E3900+$004, X : STA $7E3900+$144, X
        STA $7E3900+$184, X : STA $7E3900+$1C4, X : STA $7E3900+$104, X : STA $7E3900+$244, X
        STA $7E3900+$284, X : STA $7E3900+$2C4, X : STA $7E3900+$204, X : STA $7E3900+$344, X
        STA $7E3900+$384, X : STA $7E3900+$3C4, X : STA $7E3900+$304, X : STA $7E3900+$444, X
        STA $7E3900+$484, X : STA $7E3900+$4C4, X : STA $7E3900+$404, X : STA $7E3900+$544, X
        STA $7E3900+$584, X : STA $7E3900+$5C4, X : STA $7E3900+$504, X : STA $7E3900+$644, X
                                                    STA $7E3900+$604, X

        INX #2
        DEY : BPL -
    }

    RTS
}

cm_tilemap_menu:
{
    ; $00[0x2] = menu indices
    ; $02[0x2] = current menu item index
    ; $0E[0x2] = palette ORA for tilemap entry (for indicating selected menu)
    LDX !ram_cm_stack_index
    LDA !ram_cm_menu_stack,X : STA $00

    LDY #$0000
  .loop
    TYA : CMP !ram_cm_cursor_stack, X : BEQ .selected
    LDA #$0000
    BRA .continue

  .selected
    LDA #$0010

  .continue
    STA $0E

    LDA ($00), Y : BEQ .done : STA $02

    PHY : PHX

    ; X = action index (action type)
    LDA ($02) : TAX

    ; $02 points to data after the action type index
    INC $02 : INC $02

    JSR (cm_draw_action_table, X)

    PLX : PLY
    INY : INY
    BRA .loop

  .done
    ; Draw submenu title
    STZ $0E
    TYA : CLC : ADC $00 : INC : INC : STA $02
    LDX #$00C6
    JSR cm_draw_text

    RTS
}

cm_tilemap_transfer:
{
    JSR $8136                ; Wait for lag frame
    REP #$20
    LDA #$5800             ;\
    STA $2116              ;|
    LDA #$1801             ;|
    STA $4310              ;|
    LDA #$3900             ;|
    STA $4312              ;|
    LDA #$007E             ;} Transfer $800 bytes from $7E:3900 to VRAM $5800
    STA $4314              ;|
    LDA #$0800             ;|
    STA $4315              ;|
    STZ $4317              ;|
    STZ $4319              ;|
    SEP #$20               ;|
    LDA #$80               ;|
    STA $2115              ;|
    LDA #$02               ;|
    STA $420B              ;/
    JSL $808F0C            ; Handle music queue
    JSL $8289EF            ; Handle sound effects
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

    draw_toggle:
    {
        ; grab the memory address (long)
        LDA ($02) : INC $02 : INC $02 : STA $04
        LDA ($02) : INC $02 : STA $06

        ; grab the toggle value
        LDA ($02) : AND #$00FF : INC $02 : STA $08

        ; increment past JSR
        INC $02 : INC $02

        ; Draw the text
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; Set position for ON/OFF
        TXA : CLC : ADC #$002C : TAX

        %a8()
        ; set palette
        LDA $0E : STA $7E3901, X : STA $7E3903, X : STA $7E3905, X

        ; grab the value at that memory address
        LDA [$04] : CMP $08 : BEQ .checked

        ; Off
        %a16()
        LDA #$244B : STA $7E3900, X
        LDA #$244D : STA $7E3902, X
        LDA #$244D : STA $7E3904, X
        RTS

      .checked
        ; On
        %a16()
        LDA #$384B : STA $7E3900, X
        LDA #$384C : STA $7E3902, X
        RTS
    }

    draw_toggle_bit:
    {
        ; grab the memory address (long)
        LDA ($02) : INC $02 : INC $02 : STA $04
        LDA ($02) : INC $02 : STA $06

        ; grab bitmask
        LDA ($02) : INC $02 : INC $02 : STA $08

        ; increment past JSR
        INC $02 : INC $02

        ; Draw the text
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; Set position for ON/OFF
        TXA : CLC : ADC #$002C : TAX

        ; grab the value at that memory address
        LDA [$04] : AND $08 : BNE .checked

        ; Off
        LDA #$244B : STA $7E3900, X
        LDA #$244D : STA $7E3902, X
        LDA #$244D : STA $7E3904, X
        RTS

      .checked
        ; On
        %a16()
        LDA #$384B : STA $7E3900, X
        LDA #$384C : STA $7E3902, X
        RTS
    }

    draw_jsr:
    {
        ; skip JSR address
        INC $02 : INC $02

        ; skip argument
        INC $02 : INC $02

        ; draw text normally
        %item_index_to_vram_index()
        JSR cm_draw_text
        RTS
    }

    draw_numfield:
    {
        ; grab the memory address (long)
        LDA ($02) : INC $02 : INC $02 : STA $04
        LDA ($02) : INC $02 : STA $06

        ; skip bounds and increment value
        INC $02 : INC $02 : INC $02

        ; increment past JSR
        INC $02 : INC $02

        ; Draw the text
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; set position for the number
        TXA : CLC : ADC #$0024 : TAX

        LDA [$04] : AND #$00FF : JSR cm_hex2dec

        ; Clear out the area (black tile)
        LDA #$241F : STA $7E3900, X
                     STA $7E3900+2, X
                     STA $7E3900+4, X

        ; Set palette
        %a8()
        LDA.b #$28 : ORA $0E : STA $0F
        LDA.b #$70 : STA $0E

        ; Draw numbers
        %a16()
        LDA !ram_hex2dec_first_digit : BEQ .second_digit
        CLC : ADC $0E : STA $7E3900, X
        INX : INX

        ; kinda hackish, just so 105 isnt spelt 15...
        LDA !ram_hex2dec_second_digit : CLC : ADC $0E : STA $7E3900, X
        INX : INX
        BRA .third_digit

    .second_digit
        LDA !ram_hex2dec_second_digit : BEQ .third_digit
        CLC : ADC $0E : STA $7E3900, X
        INX : INX

    .third_digit
        LDA !ram_hex2dec_third_digit : CLC : ADC $0E : STA $7E3900,X

        RTS
    }

    draw_choice:
    {
        ; $04[0x3] = address
        ; $08[0x2] = jsr target

        ; grab the memory address (long)
        LDA ($02) : INC $02 : INC $02 : STA $04
        LDA ($02) : INC $02 : STA $06

        ; grab JSR target
        LDA ($02) : INC $02 : INC $02 : STA $08

        ; Draw the text first
        %item_index_to_vram_index()
        PHX : JSR cm_draw_text : PLX

        ; set position for ON/OFF
        TXA : CLC : ADC #$001C : TAX

        LDY #$0000
        LDA #$0000

        ; grab the value at that memory address
        LDA [$04] : TAY

        ; find the correct text that should be drawn (the selected choice)
        INY : INY ; uh, skipping the first text that we already draw..
      .loop_choices
        DEY : BEQ .found

      .loop_text
        LDA ($02) : %a16() : INC $02 : %a8()
        CMP.b #$FF : BEQ .loop_choices
        BRA .loop_text

      .found
        %a16()
        JSR cm_draw_text

        %a16()
        RTS
    }
}

cm_draw_text:
  %a8()
    LDY #$0000
    ; grab palette info
    LDA ($02), Y : INY : CMP #$FF : BEQ .end
    ORA $0E : STA $0E

  .loop
    LDA ($02), Y : CMP #$FF : BEQ .end
    STA $7E3900, X : INX
    LDA $0E : STA $7E3900, X : INX
    INY : JMP .loop

  .end
  %a16()
    RTS

; ---------
; Logic
; ---------

cm_loop:
{
  .inputLoop
    LDA !ram_cm_leave : BEQ .continue
    JMP .done

  .continue
    JSR $8136

;    ; Play 2 lag frames of sound effects
;    %ai8()
;    LDX #$02
;  .musicLoop
;    JSR $8136
;    PHX
;    JSL $808F0C
;    JSL $8289EF
;    PLX
;    DEX
;    BNE .musicLoop

    REP #$30
    JSR cm_get_inputs : STA !ram_cm_controller : BEQ .inputLoop

    BIT #$0080 : BNE .pressedA
    BIT #$8000 : BNE .pressedB
    ; BIT #$0040 : BNE .pressedX
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
    BRA .redraw

  .pressedR
    LDX !ram_cm_stack_index
    LDA !ram_cm_cursor_max : DEC #2 : STA !ram_cm_cursor_stack,X
    BRA .redraw

  .pressedA
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

cm_go_back:
{
    ; make sure next time we go to a submenu, we start on the first line.
    LDX !ram_cm_stack_index
    LDA #$0000 : STA !ram_cm_cursor_stack, X

    ; make sure we dont set a negative number
    LDA !ram_cm_stack_index : DEC : DEC : BPL .done
    LDA #$0000

  .done
    STA !ram_cm_stack_index

  .end
    RTS
}

cm_calculate_max:
{
    LDX !ram_cm_stack_index
    LDA !ram_cm_menu_stack,X : STA $00

    LDX #$0000
  .loop
    LDA ($00) : BEQ .done
    INC $00 : INC $00
    INX #2
    BRA .loop

  .done
    TXA : STA !ram_cm_cursor_max
    RTS
}

cm_get_inputs:
{
    JSL $809459 ; Read controller input

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
    LDA !ram_cm_cursor_stack,X : TAY
    LDA ($00), Y : STA $00

    ; Increment past the action index
    LDA ($00) : INC $00 : INC $00 : TAX

    ; Execute action
    JSR (cm_execute_action_table, X)
    RTS
}

cm_execute_action_table:
{
    dw execute_toggle
    dw execute_toggle_bit
    dw execute_jsr
    dw execute_numfield
    dw execute_choice

    execute_toggle:
    {
        ; Grab address
        LDA ($00) : INC $00 : INC $00 : STA $02
        LDA ($00) : INC $00 : STA $04

        ; Grab toggle value
        LDA ($00) : INC $00 : AND #$00FF : STA $06

        ; Grab JSR target
        LDA ($00) : INC $00 : INC $00 : STA $08

        %a8()
        LDA [$02] : CMP $06 : BEQ .toggleOff

        LDA $06 : STA [$02]
        BRA .jsr

      .toggleOff
        LDA #$00 : STA [$02]

      .jsr
        %a16()
        LDA $08 : BEQ .end
        LDA [$02]
        LDX #$0000
        JSR ($0008,X)

      .end
        RTS
    }

    execute_toggle_bit:
    {
        ; Load the address
        LDA ($00) : INC $00 : INC $00 : STA $02
        LDA ($00) : INC $00 : STA $04

        ; Load which bit(s) to toggle
        LDA ($00) : INC $00 : INC $00 : STA $06

        ; Load JSR target
        LDA ($00) : INC $00 : INC $00 : STA $08

        ; Toggle the bit
        LDA [$02] : EOR $06 : STA [$02]

        LDA $08 : BEQ .end

        LDA [$02]
        LDX #$0000
        JSR ($0008,X)

      .end
        RTS
    }

    execute_jsr:
    {
        ; < and > should do nothing here
        LDA !ram_cm_controller : BIT #$0300 : BNE .end

        ; $02 = JSR target
        LDA ($00) : INC $00 : INC $00 : STA $02

        ; Y = Argument
        LDA ($00) : TAY

        LDX #$0000
        JSR ($0002,X)

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
        LDA ($00) : INC $00 : INC $00 : STA $02
        LDA ($00) : INC $00 : STA $04

        LDA ($00) : INC $00 : AND #$00FF : STA $06
        LDA ($00) : INC $00 : AND #$00FF : INC : STA $08 ; INC for convenience
        LDA ($00) : INC $00 : AND #$00FF : STA $0A

        LDA ($00) : INC $00 : INC $00 : STA $0C

        LDA !ram_cm_controller : BIT #$0200 : BNE .pressed_left

        LDA [$02] : CLC : ADC $0A

        CMP $08 : BCS .set_to_min

        STA [$02] : BRA .jsr

      .pressed_left
        LDA [$02] : SEC : SBC $0A : BMI .set_to_max

        CMP $08 : BCS .set_to_max

        STA [$02] : BRA .jsr

      .set_to_min
        LDA $06 : STA [$02] : CLC : BRA .jsr

      .set_to_max
        LDA $08 : DEC : STA [$02] : CLC

      .jsr
        LDA $0C : BEQ .end

        LDA [$02]
        LDX #$0000
        JSR ($000C,X)

      .end
        RTS
    }

    execute_choice:
    {
        ; $02[0x3] = memory to manipulate
        ; $06[0x2] = jsr target
        %a16()
        LDA ($00) : INC $00 : INC $00 : STA $02
        LDA ($00) : INC $00 : STA $04

        LDA ($00) : INC $00 : INC $00 : STA $06

        ; we either increment or decrement
        LDA !ram_cm_controller : BIT #$0200 : BNE .pressed_left
        LDA [$02] : INC : BRA .bounds_check

      .pressed_left
        LDA [$02] : DEC

      .bounds_check
        TAX         ; X = new value
        LDY #$0000  ; Y will be set to max

        %a8()
      .loop_choices
        LDA ($00) : %a16() : INC $00 : %a8() : CMP.b #$FF : BEQ .loop_done

      .loop_text
        LDA ($00) : %a16() : INC $00 : %a8()
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
        STY $08
        CMP $08 : BCS .set_to_zero

        BRA .store

      .set_to_zero
        LDA #$0000 : BRA .store

      .set_to_max
        TYA : DEC

      .store
        STA [$02]

        LDA $06 : BEQ .end

        LDA [$02]
        LDX #$0000
        JSR ($0006,X)

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
    incbin resources/cm_gfx.bin
