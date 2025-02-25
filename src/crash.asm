
; ---------------------------
; Super Metroid Crash Handler
; ---------------------------

; SM points most of its CPU vectors to a "jump to self"
; This resource adds a crash handler to dump data to SRAM
; whenever one of these "crash vectors" is triggered

pushpc

; Hijack generic crash handler
org $808573
hook_crash_handler:
    JML CrashHandler

; Hijack native COP vector
org $80FFE4
NativeCOPHandlerHook:
    dw COPHandler

; Hijack native BRK vector
org $80FFE6
NativeBRKHandlerHook:
    dw BRKHandler

; Hijack emulation COP vector
org $80FFF4
EmulationCOPHandlerHook:
    dw COPHandler

; Hijack emulation IRQ/BRK vector
; Due to a bug in vanilla code, MSB needs to be unchanged (0x85)
; https://patrickjohnston.org/bank/A6?just=9BB2
org $80FFFE
EmulationBRKHandlerHook:
    dw BRKHandlerHook

org $808577
BRKHandlerHook:
    JML BRKHandler_setBank


%startfree(80)

; This routine (or a bridge to it) must live in bank $80
CrashHandler:
{
    PHP : PHB
    %ai16()

    ; store CPU registers
    STA !ram_crash_a
    TXA : STA !ram_crash_x
    TYA : STA !ram_crash_y
    PLA : STA !ram_crash_dbp
    TSC : STA !ram_crash_sp

    ; check condition of stack
    BMI .overflow
    CMP #$2000 : BPL .underflow

    INC : TAY                             ; top byte of stack
    LDA #$0000 : STA !ram_crash_type      ; xxx0 = generic
    BRA .loopPrep

  .overflow
    LDA #$8000 : STA !ram_crash_type      ; 8xxx = stack overflow
    LDY #$0000                            ; dump $0000-$002F
    BRA .fixStack

  .underflow
    LDA #$4000 : STA !ram_crash_type      ; 4xxx = stack underflow
    LDA $001FFE : STA !ram_crash_temp     ; preserve stack bytes
    LDY #$1FD0                            ; dump $1FD0-$1FFF

  .fixStack
    LDA #$1FFF : TCS                      ; repair stack
    PHB : PHB : PLA : STA !ram_crash_dbp  ; salvage crash DB

  .loopPrep
    PHK : PLB
    LDX #$0000

  .loopStack
    LDA $0000,Y : STA !ram_crash_stack,X
    INX #2 : CPX #$0030 : BEQ .saveStackSize
    BPL .maxStack ; max 30h bytes
    INY #2 : CPY #$2000 : BMI .loopStack
    BRA .stackSize

  .maxStack
    ; we only saved 30h bytes, so check for overflow
    LDA !ram_crash_type : BPL .countStackRemaining
    LDX #$FFFF : BRA .saveStackSize

  .countStackRemaining
    ; inc until we know the total number of bytes on the stack
    INX
    INY : CPY #$2000 : BMI .maxStack

  .stackSize
    ; check if we copied an extra byte
    CPY #$2000 : BEQ .saveStackSize
    DEX ; don't count it
  .saveStackSize
    TXA : STA !ram_crash_stack_size

    ; restore last two stack bytes if underflow
    LDA !ram_crash_type : AND #$4000 : BEQ .launchViewer
    LDA !ram_crash_temp : STA !ram_crash_stack+$2E

  .launchViewer
    ; launch CrashViewer to display dump
    JML CrashViewer
}

BRKHandler:
{
    JML .setBank
  .setBank
    PHP : PHB
    %ai16()

    ; store CPU registers
    STA !ram_crash_a
    TXA : STA !ram_crash_x
    TYA : STA !ram_crash_y
    PLA : STA !ram_crash_dbp
    TSC : STA !ram_crash_sp

    ; check condition of stack
    BMI .overflow
    CMP #$2000 : BPL .underflow

    INC : TAY                             ; top byte of stack
    LDA #$0001 : STA !ram_crash_type      ; xxx1 = BRK
    JMP CrashHandler_loopPrep

  .overflow
    LDA #$8001 : STA !ram_crash_type      ; 8xxx = stack overflow
    LDY #$0000                            ; dump $0000-$002F
    JMP CrashHandler_fixStack

  .underflow
    LDA #$4001 : STA !ram_crash_type      ; 4xxx = stack underflow
    LDA $001FFE : STA !ram_crash_temp     ; preserve stack bytes
    LDY #$1FD0                            ; dump $1FD0-$1FFF
    JMP CrashHandler_fixStack
}

COPHandler:
{
    JML .setBank
  .setBank
    PHP : PHB
    %ai16()

    ; store CPU registers
    STA !ram_crash_a
    TXA : STA !ram_crash_x
    TYA : STA !ram_crash_y
    PLA : STA !ram_crash_dbp
    TSC : STA !ram_crash_sp

    ; check condition of stack
    BMI .overflow
    CMP #$2000 : BPL .underflow

    INC : TAY                             ; top byte of stack
    LDA #$0002 : STA !ram_crash_type      ; xxx2 = COP
    JMP CrashHandler_loopPrep

  .overflow
    LDA #$8002 : STA !ram_crash_type      ; 8xxx = stack overflow
    LDY #$0000                            ; dump $0000-$002F
    JMP CrashHandler_fixStack

  .underflow
    LDA #$4002 : STA !ram_crash_type      ; 4xxx = stack underflow
    LDA $001FFE : STA !ram_crash_temp     ; preserve stack bytes
    LDY #$1FD0                            ; dump $1FD0-$1FFF
    JMP CrashHandler_fixStack
}

%endfree(80)

pullpc

CrashViewer:
{
    ; setup to draw crashdump on layer 3
    PHK : PLB
    %a8()
    STZ $420C
    LDA #$80 : STA $2100  ; Force blank on, zero brightness
    LDA #$A1 : STA $4200  ; NMI, V-blank IRQ, and auto-joypad read on
    LDA #$09 : STA $2105  ; BG3 priority on, BG Mode 1
    LDA #$58 : STA $2109  ; BG3 address, 32x32 size
    LDA #$17 : STA $212C  ; Enable BG3 on main screen
    LDA #$04 : STA $212D  ; Enable BG3 on subscreen
    LDA #$02 : STA $2130  ; Add subscreen to color math
    LDA #$33 : STA $2131  ; Enable color math on backgrounds and OAM
    STZ $2111 : STZ $2111 ; BG3 X scroll, write twice
    STZ $2112 : STZ $2112 ; BG3 Y scroll, write twice
    LDA #$0F : STA $2100  ; Force blank off, max brightness

    %ai16()
    JSL crash_next_frame
    JSL crash_cgram_transfer
    JSL cm_transfer_custom_tileset

    LDA #$0000 : STA !ram_crash_page : STA !ram_crash_palette : STA !ram_crash_cursor
    STA !ram_crash_input : STA !ram_crash_input_new
    LDA #$0001 : STA !ram_crash_bg
    LDA !IH_CONTROLLER_PRI_NEW : STA !ram_crash_input_prev
    LDA #$0A44 : STA !ram_crash_mem_viewer
    LDA #$007E : STA !ram_crash_mem_viewer_bank

    ; fall through to CrashLoop
}

CrashLoop:
{
    %ai16()
    ; Clear the screen
    LDA #$000E : LDX #$07FE
  .clearLoop
    STA !CRASHDUMP_TILEMAP_BUFFER,X : DEX #2 : BPL .clearLoop

    ; Determine which page to draw
    LDA !ram_crash_page : ASL : TAX
    JSR (CrashPageTable,X)

    ; Transfer to VRAM
    %ai16()
    JSL crash_next_frame
    JSL crash_read_inputs
    JSL crash_tilemap_transfer

    ; check for new inputs, copy to X
    LDA !ram_crash_input_new : TAX : BEQ CrashLoop

    ; check for soft reset shortcut (Select+Start+L+R)
    LDA !ram_crash_input : AND #$3030 : CMP #$3030 : BNE .skipSoftReset
    AND !ram_crash_input_new : BEQ .skipSoftReset
    STZ !DISABLE_SOUNDS ; Enable sounds
    JML $808462 ; Soft Reset
  .skipSoftReset

if !FEATURE_SD2SNES
    ; check for load state shortcut
    LDA !ram_crash_input : CMP !sram_ctrl_load_state : BNE .skipLoadState
    AND !ram_crash_input_new : BEQ .skipLoadState
    LDA !SRAM_SAVED_STATE : CMP !SAFEWORD : BNE .skipLoadState
    ; prepare to jump to load_state
    %a8()
    LDA.b #gamemode_start>>16 : PHA : PLB
    %a16()
    PEA.w gamemode_start_return-1
    JML gamemode_shortcuts_load_state
  .skipLoadState
endif

    TXA : BIT #$0010 : BNE .incPalette ; R
    BIT #$0020 : BNE .decPalette       ; L
    AND #$1080 : BNE .next             ; A or Start
    TXA : AND #$A000 : BNE .previous   ; B or Select
    JMP CrashLoop

  .previous
    LDA !ram_crash_page : BNE .pageDecrement
    LDA #$0003
  .pageDecrement
    DEC : STA !ram_crash_page
    JMP CrashLoop

  .next
    LDA !ram_crash_page : CMP #$0002 : BMI .pageIncrement
    LDA #$FFFF
  .pageIncrement
    INC : STA !ram_crash_page
    JMP CrashLoop

  .decPalette
    LDA !ram_crash_palette : BNE .paletteDecrement
    JSR crash_toggle_bg
    LDA #$0008
  .paletteDecrement
    DEC : STA !ram_crash_palette
    BRA .updateCGRAM

  .incPalette
    LDA !ram_crash_palette : CMP #$0007 : BMI .paletteIncrement
    JSR crash_toggle_bg
    LDA #$FFFF
  .paletteIncrement
    INC : STA !ram_crash_palette

  .updateCGRAM
    JSL crash_cgram_transfer
    JMP CrashLoop
}

CrashPageTable:
    dw CrashDump
    dw CrashMemViewer
    dw CrashInfo

CrashDump:
{
    %ai16()

    ; -- Draw header --
    LDA.w #CrashTextHeader : STA !ram_crash_text
    LDA.w #CrashTextHeader>>16 : STA !ram_crash_text_bank
    LDX #$008C : JSR crash_draw_text

    ; -- Draw footer message --
    LDA.w #CrashTextFooter1 : STA !ram_crash_text
    LDA.w #CrashTextFooter1>>16 : STA !ram_crash_text_bank
    LDX #$0646 : JSR crash_draw_text

    LDA.w #CrashTextFooter2 : STA !ram_crash_text
    LDA.w #CrashTextFooter2>>16 : STA !ram_crash_text_bank
    LDX #$0686 : JSR crash_draw_text

    ; -- Draw register labels --
    LDA #$2800|'A' : STA !CRASHDUMP_TILEMAP_BUFFER+$10A
    LDA #$2800|'X' : STA !CRASHDUMP_TILEMAP_BUFFER+$114
    LDA #$2800|'Y' : STA !CRASHDUMP_TILEMAP_BUFFER+$11E
    LDA #$2800|'D' : STA !CRASHDUMP_TILEMAP_BUFFER+$126
    LDA #$2800|'B' : STA !CRASHDUMP_TILEMAP_BUFFER+$128
    LDA #$2800|'+' : STA !CRASHDUMP_TILEMAP_BUFFER+$12A
    LDA #$2800|'P' : STA !CRASHDUMP_TILEMAP_BUFFER+$12C
    LDA #$2800|'S' : STA !CRASHDUMP_TILEMAP_BUFFER+$132
    LDA #$2800|'P' : STA !CRASHDUMP_TILEMAP_BUFFER+$134

    ; -- Draw stack label --
    LDA.w #CrashTextStack1 : STA !ram_crash_text
    LDA.w #CrashTextStack1>>16 : STA !ram_crash_text_bank
    LDX #$01CE : JSR crash_draw_text

    ; -- Draw stack text --
    LDA.w #CrashTextStack2 : STA !ram_crash_text
    LDA.w #CrashTextStack2>>16 : STA !ram_crash_text_bank
    LDX #$020C : JSR crash_draw_text

    ; -- Draw overflow/underflow warning text --
    LDA !ram_crash_type : AND #$C000 : BEQ .drawRegisters
    BMI .overflow

    LDA.w #CrashTextStack3 : STA !ram_crash_text
    LDA.w #CrashTextStack3>>16 : STA !ram_crash_text_bank
    LDX #$024E : JSR crash_draw_text
    BRA .drawRegisters

  .overflow
    LDA.w #CrashTextStack4 : STA !ram_crash_text
    LDA.w #CrashTextStack4>>16 : STA !ram_crash_text_bank
    LDX #$024E : JSR crash_draw_text

  .drawRegisters
    ; -- Draw register values --
    LDA !ram_crash_a : STA !ram_crash_draw_value
    LDX #$0148 : JSR crash_draw4  ; A
    LDA !ram_crash_x : STA !ram_crash_draw_value
    LDX #$0152 : JSR crash_draw4  ; X
    LDA !ram_crash_y : STA !ram_crash_draw_value
    LDX #$015C : JSR crash_draw4  ; Y

    ; DB/P is corrupt if over/underflow
    LDA !ram_crash_type : AND #$C000 : BNE .corruptP
    LDA !ram_crash_dbp : XBA : STA !ram_crash_draw_value
    LDX #$0166 : JSR crash_draw4  ; DB+P
    BRA .doneP

  .corruptP
    LDA !ram_crash_dbp : XBA : STA !ram_crash_draw_value
    LDX #$0166 : JSR crash_draw2  ; DB
    LDA #$288E  ; draw XX instead of P
    STA !CRASHDUMP_TILEMAP_BUFFER+$16A : STA !CRASHDUMP_TILEMAP_BUFFER+$16C

  .doneP
    LDA !ram_crash_sp : STA !ram_crash_draw_value
    LDX #$0170 : JSR crash_draw4  ; SP

    ; -- Draw starting position of stack dump --
    LDA !ram_crash_type : AND #$C000 : BMI .overflowStart
    BNE .underflowStart
    LDA !ram_crash_draw_value : INC : STA !ram_crash_draw_value
    BRA .drawStartingPosition
  .overflowStart
    LDA #$0000 : STA !ram_crash_draw_value
    BRA .drawStartingPosition
  .underflowStart
    LDA #$1FD0 : STA !ram_crash_draw_value

  .drawStartingPosition
    LDX #$0228 : JSR crash_draw4

    ; -- Draw stack bytes written --
    LDA !ram_crash_stack_size : STA !ram_crash_draw_value
    BPL .setStackBytesToWrite
    LDA #$0030
  .setStackBytesToWrite
    STA !ram_crash_bytes_to_write
    LDX #$01DE : JSR crash_draw4

    ; -- Detect and Draw COP/BRK --
    LDA !ram_crash_type : AND #$0003 : BEQ .drawStack_bridge
    LDA !ram_crash_type : AND #$C000 : BNE .corruptBRKCOP
    LDA $C1 : PHA : LDA $C3 : PHA

    %a8()
    LDA !ram_crash_stack : STA !ram_crash_draw_value
    LDX #$02E0 : JSR crash_draw2 ; P

    LDA !ram_crash_stack+$03 : STA !ram_crash_draw_value
    STA $C3
    LDX #$02E8 : JSR crash_draw2 ; bank

    %a16()
    LDA !ram_crash_stack+$01 : DEC : STA $C1
    DEC : STA !ram_crash_draw_value
    LDX #$02EC : JSR crash_draw4 ; addr

    LDA [$C1] : STA !ram_crash_draw_value
    LDX #$02D8 : JSR crash_draw2 ; operand
    PLA : STA $C3 : PLA : STA $C1
    BRA .drawBRKCOPText

  .drawStack_bridge
    JMP .drawStack

  .corruptBRKCOP
    LDA #$288E  ; draw X's instead
    STA !CRASHDUMP_TILEMAP_BUFFER+$2D8 : STA !CRASHDUMP_TILEMAP_BUFFER+$2DA
    STA !CRASHDUMP_TILEMAP_BUFFER+$2E0 : STA !CRASHDUMP_TILEMAP_BUFFER+$2E2
    STA !CRASHDUMP_TILEMAP_BUFFER+$2E8 : STA !CRASHDUMP_TILEMAP_BUFFER+$2EA
    STA !CRASHDUMP_TILEMAP_BUFFER+$2EC : STA !CRASHDUMP_TILEMAP_BUFFER+$2EE
    STA !CRASHDUMP_TILEMAP_BUFFER+$2F0 : STA !CRASHDUMP_TILEMAP_BUFFER+$2F2

  .drawBRKCOPText
    LDA !ram_crash_type : AND #$000F : CMP #$0002 : BEQ .COPcrash
    LDA #$2C00|'B' : STA !CRASHDUMP_TILEMAP_BUFFER+$2CC
    LDA #$2C00|'R' : STA !CRASHDUMP_TILEMAP_BUFFER+$2CE
    LDA #$2C00|'K' : STA !CRASHDUMP_TILEMAP_BUFFER+$2D0
    LDA #$2C00|'#' : STA !CRASHDUMP_TILEMAP_BUFFER+$2D4
    LDA #$2C00|'$' : STA !CRASHDUMP_TILEMAP_BUFFER+$2D6
    STA !CRASHDUMP_TILEMAP_BUFFER+$2E6
    BRA .drawStack

  .COPcrash
    LDA #$2C00|'C' : STA !CRASHDUMP_TILEMAP_BUFFER+$2CC
    LDA #$2C00|'O' : STA !CRASHDUMP_TILEMAP_BUFFER+$2CE
    LDA #$2C00|'P' : STA !CRASHDUMP_TILEMAP_BUFFER+$2D0
    LDA #$2C00|'#' : STA !CRASHDUMP_TILEMAP_BUFFER+$2D4
    LDA #$2C00|'$' : STA !CRASHDUMP_TILEMAP_BUFFER+$2D6
    STA !CRASHDUMP_TILEMAP_BUFFER+$2E6

  .drawStack
    ; -- Draw Stack Values --
    ; start by setting up tilemap position
    %ai16()
    LDX #$0348
    LDA #$0000 : STA !ram_crash_stack_line_position

    ; determine starting offset
    LDA !ram_crash_bytes_to_write
  .startingOffsetLoop
    PHA : AND #$0007 : BEQ .startingOffsetFound
    TXA : CLC : ADC #$0006 : TAX
    LDA !ram_crash_stack_line_position : INC : STA !ram_crash_stack_line_position
    PLA : INC : BRA .startingOffsetLoop

  .startingOffsetFound
    PLA : %a8()
    LDA #$00 : STA !ram_crash_loop_counter

  .drawStackLoop
    ; draw a byte
    PHX : %i8()
    LDA !ram_crash_loop_counter : TAX
    LDA !ram_crash_stack,X : STA !ram_crash_draw_value
    %i16() : PLX
    JSR crash_draw2

    ; inc tilemap position
    INX #6 : LDA !ram_crash_stack_line_position : INC
    STA !ram_crash_stack_line_position : AND #$08 : BEQ .drawStackIncrement

    ; start a new line
    LDA #$00 : STA !ram_crash_stack_line_position
    %a16()
    TXA : CLC : ADC #$0050 : TAX
    CPX #$05F4 : BPL .done
    %a8()

  .drawStackIncrement
    ; inc bytes drawn
    LDA !ram_crash_loop_counter : INC : STA !ram_crash_loop_counter
    CMP !ram_crash_bytes_to_write : BNE .drawStackLoop

  .done
    RTS
}

CrashMemViewer:
{
    ; -- Handle Dpad Inputs --
    %ai16()
    LDA !ram_crash_input_new : BNE .new_inputs
    LDA !ram_crash_input : BNE .check_inputs_held
  .draw_mem_viewer
    JMP .drawMemViewer

  .check_inputs_held
    ; check if any input held more than 24 frames
    LDA !ram_crash_input_timer : CMP #$0018 : BMI .draw_mem_viewer
    ; pass held input every other frame (slow down)
    AND #$0001 : BEQ .draw_mem_viewer
    ; treat held (left/right) inputs as new
    LDA !ram_crash_input : AND #$0300

  .new_inputs
    BIT #$0800 : BNE .pressedUp
    BIT #$0400 : BNE .pressedDown
    BIT #$0200 : BNE .pressedLeft
    BIT #$0100 : BNE .pressedRight
    JMP .drawMemViewer

  .pressedUp
    LDA !ram_crash_cursor : BNE .upDecrement
    LDA #$0003
  .upDecrement
    DEC : STA !ram_crash_cursor
    JMP .drawMemViewer

  .pressedDown
    LDA !ram_crash_cursor : CMP #$0002 : BMI .downIncrement
    LDA #$FFFF
  .downIncrement
    INC : STA !ram_crash_cursor
    JMP .drawMemViewer

  .decLowFast
    LDA !ram_crash_mem_viewer : DEC #4 : STA !ram_crash_mem_viewer
    JMP .drawMemViewer
  .pressedLeft
    LDA !ram_crash_cursor : BEQ .decBank
    DEC : BEQ .decHigh
    LDA !ram_crash_input : AND #$4040 : BNE .decLowFast
    LDA !ram_crash_mem_viewer : DEC : STA !ram_crash_mem_viewer
    JMP .drawMemViewer

  .incLowFast
    LDA !ram_crash_mem_viewer : INC #4 : STA !ram_crash_mem_viewer
    JMP .drawMemViewer
  .pressedRight
    LDA !ram_crash_cursor : BEQ .incBank
    DEC : BEQ .incHigh
    LDA !ram_crash_input : AND #$4040 : BNE .incLowFast
    LDA !ram_crash_mem_viewer : INC : STA !ram_crash_mem_viewer
    JMP .drawMemViewer

  .decBank
    LDA !ram_crash_input : AND #$4040 : BNE .decBankFast
    LDA !ram_crash_mem_viewer_bank : DEC : STA !ram_crash_mem_viewer_bank
    BRA .drawMemViewer
  .decBankFast
    LDA !ram_crash_mem_viewer_bank : DEC #4 : STA !ram_crash_mem_viewer_bank
    BRA .drawMemViewer

  .decHigh
    LDA !ram_crash_input : AND #$4040 : BNE .decHighFast
    LDA !ram_crash_mem_viewer : XBA : DEC : XBA : STA !ram_crash_mem_viewer
    BRA .drawMemViewer
  .decHighFast
    LDA !ram_crash_mem_viewer : XBA : DEC #4 : XBA : STA !ram_crash_mem_viewer
    BRA .drawMemViewer

  .incBank
    LDA !ram_crash_input : AND #$4040 : BNE .incBankFast
    LDA !ram_crash_mem_viewer_bank : INC : STA !ram_crash_mem_viewer_bank
    BRA .drawMemViewer
  .incBankFast
    LDA !ram_crash_mem_viewer_bank : INC #4 : STA !ram_crash_mem_viewer_bank
    BRA .drawMemViewer

  .incHigh
    LDA !ram_crash_input : AND #$4040 : BNE .incHighFast
    LDA !ram_crash_mem_viewer : XBA : INC : XBA : STA !ram_crash_mem_viewer
    BRA .drawMemViewer
  .incHighFast
    LDA !ram_crash_mem_viewer : XBA : INC #4 : XBA : STA !ram_crash_mem_viewer

    ; -- Draw Memory Viewer --
  .drawMemViewer
    %a16()
    LDA !ram_crash_cursor : ASL : TAX
    LDA.l CursorPositions,X : TAX
    LDA #$2C80 : STA !CRASHDUMP_TILEMAP_BUFFER,X
    LDA #$2C81 : STA !CRASHDUMP_TILEMAP_BUFFER+$32,X

    ; draw header text
    LDA.w #CrashTextHeader2 : STA !ram_crash_text
    LDA.w #CrashTextHeader2>>16 : STA !ram_crash_text_bank
    LDX #$008C : JSR crash_draw_text

    ; draw footer text
    LDA.w #CrashTextFooter1 : STA !ram_crash_text
    LDA.w #CrashTextFooter1>>16 : STA !ram_crash_text_bank
    LDX #$0646 : JSR crash_draw_text

    LDA.w #CrashTextFooter2 : STA !ram_crash_text
    LDA.w #CrashTextFooter2>>16 : STA !ram_crash_text_bank
    LDX #$0686 : JSR crash_draw_text

    ; draw address text
    LDA.w #CrashTextMemAddress : STA !ram_crash_text
    LDA.w #CrashTextMemAddress>>16 : STA !ram_crash_text_bank
    LDX #$014E : JSR crash_draw_text

    ; draw value text
    LDA.w #CrashTextMemValue : STA !ram_crash_text
    LDA.w #CrashTextMemValue>>16 : STA !ram_crash_text_bank
    LDX #$01D2 : JSR crash_draw_text

    ; draw select bank
    LDA.w #CrashTextMemSelectBank : STA !ram_crash_text
    LDA.w #CrashTextMemSelectBank>>16 : STA !ram_crash_text_bank
    LDX #$0288 : JSR crash_draw_text

    ; draw select high
    LDA.w #CrashTextMemSelectHigh : STA !ram_crash_text
    LDA.w #CrashTextMemSelectHigh>>16 : STA !ram_crash_text_bank
    LDX #$0308 : JSR crash_draw_text

    ; draw select low
    LDA.w #CrashTextMemSelectLow : STA !ram_crash_text
    LDA.w #CrashTextMemSelectLow>>16 : STA !ram_crash_text_bank
    LDX #$0388 : JSR crash_draw_text

    ; draw the address
    %a8()
    LDA !ram_crash_mem_viewer_bank : STA !ram_crash_draw_value
    LDX #$0164 : JSR crash_draw2
    LDX #$02B4 : JSR crash_draw2
    %a16()
    LDA !ram_crash_mem_viewer : STA !ram_crash_draw_value
    LDX #$0168 : JSR crash_draw4
    %a8()
    LDX #$03B4 : JSR crash_draw2
    %a16()
    LDA !ram_crash_mem_viewer : XBA : STA !ram_crash_draw_value
    %a8()
    LDX #$0334 : JSR crash_draw2

    ; draw the current value and nearby bytes
    LDA !ram_crash_mem_viewer : BMI .bridge_drawUpperHalf
    %a16()
    LDA $C1 : PHA : LDA $C3 : PHA
    LDA !ram_crash_mem_viewer_bank : STA $C3
    LDA !ram_crash_mem_viewer : STA $C1 : STA !ram_crash_temp
    LDA [$C1] : STA !ram_crash_draw_value
    LDX #$01E8 : JSR crash_draw4

    LDX #$048A
    %a8()
    LDA #$00 : STA !ram_crash_stack_line_position : STA !ram_crash_loop_counter
    LDA $C1 : AND #$F0 : STA $C1
    BRA .drawLowerHalfNearby

  .bridge_drawUpperHalf
    BRA .drawUpperHalf

  .drawLowerHalfNearby
    ; draw a byte
    LDA [$C1] : STA !ram_crash_draw_value
    JSR crash_draw2

    ; highlight selected byte
    %a16()
    LDA $C1 : CMP !ram_crash_temp : BNE .incLower
    LDA !CRASHDUMP_TILEMAP_BUFFER,X : ORA #$1000 : STA !CRASHDUMP_TILEMAP_BUFFER,X
    LDA !CRASHDUMP_TILEMAP_BUFFER+2,X : ORA #$1000 : STA !CRASHDUMP_TILEMAP_BUFFER+2,X

  .incLower
    ; inc address and tilemap position
    %a8()
    INC $C1
    INX #6 : LDA !ram_crash_stack_line_position : INC
    STA !ram_crash_stack_line_position : AND #$08 : BEQ .drawLowerHalfInc

    ; start a new line
    LDA #$00 : STA !ram_crash_stack_line_position
    %a16()
    TXA : CLC : ADC #$0050 : TAX
    CPX #$05BA : BPL .doneLowerHalf
    %a8()

  .drawLowerHalfInc
    ; inc bytes drawn
    LDA !ram_crash_loop_counter : INC : STA !ram_crash_loop_counter
    CMP #$10 : BNE .drawLowerHalfNearby
    %a16()

  .doneLowerHalf
    PLA : STA $C3 : PLA : STA $C1
    RTS

  .drawUpperHalf
    %a16()
    LDA $41 : PHA : LDA $43 : PHA
    LDA !ram_crash_mem_viewer_bank : STA $43
    LDA !ram_crash_mem_viewer : STA $41 : STA !ram_crash_temp
    LDA [$41] : STA !ram_crash_draw_value
    LDX #$01E8 : JSR crash_draw4

    LDX #$048A
    %a8()
    LDA #$00 : STA !ram_crash_stack_line_position : STA !ram_crash_loop_counter
    LDA $41 : AND #$F0 : STA $41

  .drawUpperHalfNearby
    ; draw a byte
    LDA [$41] : STA !ram_crash_draw_value
    JSR crash_draw2

    ; highlight selected byte
    %a16()
    LDA $41 : CMP !ram_crash_temp : BNE .incUpper
    LDA !CRASHDUMP_TILEMAP_BUFFER,X : ORA #$1000 : STA !CRASHDUMP_TILEMAP_BUFFER,X
    LDA !CRASHDUMP_TILEMAP_BUFFER+2,X : ORA #$1000 : STA !CRASHDUMP_TILEMAP_BUFFER+2,X

  .incUpper
    ; inc address and tilemap position
    %a8()
    INC $41
    INX #6 : LDA !ram_crash_stack_line_position : INC
    STA !ram_crash_stack_line_position : AND #$08 : BEQ .drawUpperHalfInc

    ; start a new line
    LDA #$00 : STA !ram_crash_stack_line_position
    %a16()
    TXA : CLC : ADC #$0050 : TAX
    CPX #$05BA : BPL .doneUpperHalf
    %a8()

  .drawUpperHalfInc
    ; inc bytes drawn
    LDA !ram_crash_loop_counter : INC : STA !ram_crash_loop_counter
    CMP #$10 : BNE .drawUpperHalfNearby
    %a16()

  .doneUpperHalf
    PLA : STA $43 : PLA : STA $41
    RTS

CursorPositions:
    dw $0286, $0306, $0386
}

CrashInfo:
{
    %ai16()

    ; draw header text
    LDA.w #CrashTextHeader3 : STA !ram_crash_text
    LDA.w #CrashTextHeader3>>16 : STA !ram_crash_text_bank
    LDX #$0086 : JSR crash_draw_text

    ; draw a bunch of text
    LDA.w #CrashTextInfo1 : STA !ram_crash_text
    LDA.w #CrashTextInfo1>>16 : STA !ram_crash_text_bank
    LDX #$0106 : JSR crash_draw_text

    LDA.w #CrashTextInfo2 : STA !ram_crash_text
    LDA.w #CrashTextInfo2>>16 : STA !ram_crash_text_bank
    LDX #$01C6 : JSR crash_draw_text

    LDA.w #CrashTextInfo3 : STA !ram_crash_text
    LDA.w #CrashTextInfo3>>16 : STA !ram_crash_text_bank
    LDX #$0206 : JSR crash_draw_text

    LDA.w #CrashTextInfo4 : STA !ram_crash_text
    LDA.w #CrashTextInfo4>>16 : STA !ram_crash_text_bank
    LDX #$024A : JSR crash_draw_text

    LDA.w #CrashTextInfo5 : STA !ram_crash_text
    LDA.w #CrashTextInfo5>>16 : STA !ram_crash_text_bank
    LDX #$02C6 : JSR crash_draw_text

    LDA.w #CrashTextInfo6 : STA !ram_crash_text
    LDA.w #CrashTextInfo6>>16 : STA !ram_crash_text_bank
    LDX #$030A : JSR crash_draw_text

    LDA.w #CrashTextInfo7 : STA !ram_crash_text
    LDA.w #CrashTextInfo7>>16 : STA !ram_crash_text_bank
    LDX #$034E : JSR crash_draw_text

    LDA.w #CrashTextInfo8 : STA !ram_crash_text
    LDA.w #CrashTextInfo8>>16 : STA !ram_crash_text_bank
    LDX #$040A : JSR crash_draw_text

    LDA.w #CrashTextInfo9 : STA !ram_crash_text
    LDA.w #CrashTextInfo9>>16 : STA !ram_crash_text_bank
    LDX #$048A : JSR crash_draw_text

    LDA.w #CrashTextInfo10 : STA !ram_crash_text
    LDA.w #CrashTextInfo10>>16 : STA !ram_crash_text_bank
    LDX #$0546 : JSR crash_draw_text

    LDA.w #CrashTextInfo11 : STA !ram_crash_text
    LDA.w #CrashTextInfo11>>16 : STA !ram_crash_text_bank
    LDX #$0588 : JSR crash_draw_text

    ; draw footer text
    LDA.w #CrashTextFooter1 : STA !ram_crash_text
    LDA.w #CrashTextFooter1>>16 : STA !ram_crash_text_bank
    LDX #$0646 : JSR crash_draw_text

    LDA.w #CrashTextFooter2 : STA !ram_crash_text
    LDA.w #CrashTextFooter2>>16 : STA !ram_crash_text_bank
    LDX #$0686 : JSR crash_draw_text

    RTS
}

crash_draw_text:
{
    ; X = pointer to tilemap area (STA !CRASHDUMP_TILEMAP_BUFFER,X)
    LDA $C5 : PHA : LDA $C7 : PHA
    LDA !ram_crash_text_bank : STA $C7
    LDA !ram_crash_text : STA $C5
    %a8()
    LDY #$0000

  .loop
    LDA [$C5],Y : CMP #$FF : BEQ .end                 ; terminator
    STA !CRASHDUMP_TILEMAP_BUFFER,X : INX             ; tile
    LDA #$28 : STA !CRASHDUMP_TILEMAP_BUFFER,X : INX  ; palette
    INY : BRA .loop

  .end
    %a16()
    PLA : STA $C7 : PLA : STA $C5
    RTS
}

crash_draw4:
{
    PHP : %a16()
    ; (X000)
    LDA !ram_crash_draw_value : AND #$F000 : XBA : LSR #3 : TAY
    LDA.w HexMenuGFXTable,Y : STA !CRASHDUMP_TILEMAP_BUFFER,X
    ; (0X00)
    LDA !ram_crash_draw_value : AND #$0F00 : XBA : ASL : TAY
    LDA.w HexMenuGFXTable,Y : STA !CRASHDUMP_TILEMAP_BUFFER+2,X
    ; (00X0)
    LDA !ram_crash_draw_value : AND #$00F0 : LSR #3 : TAY
    LDA.w HexMenuGFXTable,Y : STA !CRASHDUMP_TILEMAP_BUFFER+4,X
    ; (000X)
    LDA !ram_crash_draw_value : AND #$000F : ASL : TAY
    LDA.w HexMenuGFXTable,Y : STA !CRASHDUMP_TILEMAP_BUFFER+6,X
    PLP
    RTS
}

crash_draw2:
{
    PHP : %a16()
    ; (00X0)
    LDA !ram_crash_draw_value : AND #$00F0 : LSR #3 : TAY
    LDA.w HexMenuGFXTable,Y : STA !CRASHDUMP_TILEMAP_BUFFER,X
    ; (000X)
    LDA !ram_crash_draw_value : AND #$000F : ASL : TAY
    LDA.w HexMenuGFXTable,Y : STA !CRASHDUMP_TILEMAP_BUFFER+2,X
    PLP
    RTS
}

crash_cgram_transfer:
{
    PHP : %a16()

    LDA !ram_crash_palette : BEQ .white ; 0 index
    DEC : BEQ .grey      ; 1
    DEC : BEQ .green     ; 2
    DEC : BEQ .pink      ; 3
    DEC : BEQ .yellow    ; 4
    DEC : BEQ .blue      ; 5
    DEC : BEQ .red       ; 6
    DEC : BEQ .orange    ; 7

  .white
    LDA #$44E5 : STA $7EC012
    LDA #$7FFF : STA $7EC014
    BRA .transfer

  .grey
    LDA #$1CE7 : STA $7EC012
    LDA #$3DEF : STA $7EC014
    BRA .transfer

  .green
    LDA #$0000 : STA $7EC012
    LDA #$03E0 : STA $7EC014
    BRA .transfer

  .pink
    LDA #$0000 : STA $7EC012
    LDA #$5156 : STA $7EC014
    BRA .transfer

  .yellow
    LDA #$7C00 : STA $7EC012
    LDA #$03FF : STA $7EC014
    BRA .transfer

  .blue
    LDA #$7FFF : STA $7EC012
    LDA #$7A02 : STA $7EC014
    BRA .transfer

  .red
    LDA #$001F : STA $7EC012
    LDA #$7FE0 : STA $7EC014
    BRA .transfer

  .orange
    LDA #$7C60 : STA $7EC012
    LDA #$01FF : STA $7EC014

  .transfer
    LDA $7EC012 : STA $7EC01A
    LDA $7EC014 : STA $7EC01C

    LDA #$001F : STA $7EC03A ; red highlight
    LDA #$0000 : STA $7EC000
    STA $7EC016 : STA $7EC01E
    STA $7EC03C

    JSL transfer_cgram_long
    PLP
    PHK : PLB
    RTL
}

crash_toggle_bg:
{
    %a8()
    LDA #$80 : STA $2100 ; enable forced blanking
    LDA !ram_crash_bg : BEQ .enableBG
    ; disable BG1/2 and sprites on main/sub screen
    LDA #$04 : STA $212C : STA $212D
    BRA .done

  .enableBG
    ; enable BG1/2 and sprites on main/sub screen
    LDA #$17 : STA $212C : STA $212D

  .done
    LDA #$0F : STA $2100 ; disable forced blanking
    LDA !ram_crash_bg : EOR #$01 : STA !ram_crash_bg
    %a16()
    RTS
}

crash_tilemap_transfer:
{
    %a16()
    LDA #$5800 : STA $2116 ; VRAM address ($B000 in VRAM)
    LDA #$1801 : STA $4310 ; low = word, normal increment (DMA MODE), high = destination (VRAM write)
    LDA.w #!CRASHDUMP_TILEMAP_BUFFER : STA $4312 ; source offset
    LDA.w #!CRASHDUMP_TILEMAP_BUFFER>>16 : STA $4314 ; source bank
    LDA #$0800 : STA $4315 ; size
    STZ $4317 : STZ $4319
    %a8()
    LDA #$80 : STA $2115 ; word-access, inc by 1
    LDA #$02 : STA $420B ; initiate DMA on channel 2
    %a16()
    RTL
}

crash_next_frame:
{
    PHP : %a8()
    LDA !NMI_COUNTER : PHA
  .loop
    CMP !NMI_COUNTER : BEQ .loop
    PLA : STA !NMI_COUNTER
    PLP
    RTL
}

crash_read_inputs:
{
    PHP : %a8()
  .loop
    LDA $4212 : AND #$01 : BNE .loop

    %a16()
    LDA $4218 : STA !ram_crash_input
    EOR !ram_crash_input_prev : AND !ram_crash_input : STA !ram_crash_input_new

    LDA !ram_crash_input : BEQ .no_input
    CMP !ram_crash_input_prev : BNE .new_input

    ; inc timer while input held
    LDA !ram_crash_input_timer : INC : STA !ram_crash_input_timer : BPL .done
    LDA #$0018 : STA !ram_crash_input_timer ; wrap at 8000h
    BRA .done

  .no_input
    ; clear timer
    STA !ram_crash_input_timer
    BRA .done

  .new_input
    ; reset timer
    LDA #$0001 : STA !ram_crash_input_timer

  .done
    LDA !ram_crash_input : STA !ram_crash_input_prev
    PLP
    RTL
}


; ------------
; Text Strings
; ------------

CrashTextHeader:
table ../resources/header.tbl
if !VERSION_REV
    db "CRASH HANDLER !VERSION_MAJOR.!VERSION_MINOR.!VERSION_BUILD.!VERSION_REV", #$FF
else
    db "CRASH HANDLER !VERSION_MAJOR.!VERSION_MINOR.!VERSION_BUILD", #$FF
endif
table ../resources/normal.tbl

CrashTextFooter1:
; Navigate pages with A or B
    db "Navigate pages with ", #$8F, " or ", #$87, #$FF

CrashTextFooter2:
; Cycle palettes with L or R
    db "Cycle palettes with ", #$8D, " or ", #$8C, #$FF

CrashTextStack1:
    db "STACK:       Bytes", #$FF

CrashTextStack2:
    db "(starting at $    )", #$FF

CrashTextStack3:
    db "Stack UNDERFLOW!!", #$FF

CrashTextStack4:
    db "Stack OVERFLOW!!!", #$FF

CrashTextHeader2:
table ../resources/header.tbl
    db "CRASH MEMORY VIEWER", #$FF
table ../resources/normal.tbl

CrashTextMemAddress:
    db "ADDRESS:  $", #$FF

CrashTextMemValue:
    db "VALUE:    $", #$FF

CrashTextMemSelectBank:
    db "Select Address Bank  $", #$FF

CrashTextMemSelectHigh:
    db "Select Address High  $", #$FF

CrashTextMemSelectLow:
    db "Select Address Low   $", #$FF

CrashTextHeader3:
table ../resources/header.tbl
    db "BUT WHAT DOES IT ALL MEAN?", #$FF
table ../resources/normal.tbl

CrashTextInfo1:
    db "Super Metroid has crashed!", #$FF

CrashTextInfo2:
    db "You can report this crash", #$FF

CrashTextInfo3:
    db "on GitHub, or in Discord's", #$FF

CrashTextInfo4:
    db "#practice-hack channel.", #$FF

CrashTextInfo5:
    db "Take a screenshot of the", #$FF

CrashTextInfo6:
    db "first page to help us", #$FF

CrashTextInfo7:
    db "diagnose the issue.", #$FF

CrashTextInfo8:
    db "smpractice.speedga.me", #$FF

CrashTextInfo9:
    db "wiki.supermetroid.run", #$FF

CrashTextInfo10:
if !FEATURE_SD2SNES
    db "FXPAK users can load state", #$FF
else
    db #$FF
endif

CrashTextInfo11:
; Press LRSlSt to soft reset
    db "Press ", #$8D, #$8C, #$85, #$84, " to soft reset", #$FF

