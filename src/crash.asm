
; ---------------------------
; Super Metroid Crash Handler
; ---------------------------

; SM points most of its CPU vectors to a "jump to self"
; This resource adds a crash handler to dump data to SRAM
; whenever one of these "crash vectors" is triggered

lorom

; Hijack generic crash handler
org $808573
    JML CrashHandler

; Hijack native BRK vector
org $00FFE6
    dw BRKHandler

; Hijack emulation IRQ/BRK vector
org $00FFFE
    dw BRKHandler

org $80E000
print pc, " crash handler bank80 start"
CrashHandler:
; This routine (or a bridge to it) must live in bank $80
{
    PHP : PHB
    PHK : PLB
    %ai16()

    ; store CPU registers
    STA !CRASHDUMP+$00        ; A
    TXA : STA !CRASHDUMP+$02  ; X
    TYA : STA !CRASHDUMP+$04  ; Y
    PLA : STA !CRASHDUMP+$06  ; DB + P
    TSC : STA !CRASHDUMP+$08  ; SP

    ; loop: stack -> SRAM
    INC : TAY : LDX #$0000
  .loopStack
    LDA $0000,Y : STA !CRASHDUMP+$10,X
    INX #2 : CPX #$0030 : BPL .maxStack ; max 30h bytes
    INY #2 : CPY #$2000 : BMI .loopStack
    BRA .stackSize

  .maxStack
    ; we only saved 30h bytes, so inc until we
    ; know the total number of bytes on the stack
    INY : INX : CPY #$2000 : BMI .maxStack

  .stackSize
    ; check if we copied an extra byte
    CPY #$2000 : BEQ +
    DEX ; don't count it
+   TXA : STA !CRASHDUMP+$0A

    ; launch menu to display crash
    LDA #$0004 : STA $AB
    LDA #$FFFF : STA !CRASHDUMP+$0E
    JSL cm_start

  .crash
    JML .crash
}

BRKHandler:
{
    JML .setBank
  .setBank
    PHP : PHB
    PHK : PLB
    %ai16()

    ; store CPU registers
    STA !CRASHDUMP+$00        ; A
    TXA : STA !CRASHDUMP+$02  ; X
    TYA : STA !CRASHDUMP+$04  ; Y
    PLA : STA !CRASHDUMP+$06  ; DB + P
    TSC : STA !CRASHDUMP+$08  ; SP

    ; prep for .loopStack
    INC : TAY : LDX #$0000

    ; store crash type, 1 = BRK
    LDA #$0001 : STA !CRASHDUMP+$0C

    JMP CrashHandler_loopStack
}

cm_crash:
{
    ; $00[0x3] = Table Address (Long)
    ; $C1[0x2] = Value to be Drawn
    ; $C3[0x2] = Line Loop Counter
    ; $C5[0x2] = Stack Bytes Written
    ; $C7[0x2] = Stack Bytes to be Written
    PHK : PLB

    ; clear crashdump flag
    LDA #$0000 : STA !CRASHDUMP+$0E

    ; Clear out !ram_tilemap_buffer
    LDA #$000E : LDX #$07FE
-   STA !ram_tilemap_buffer,X : DEX #2 : BPL -

    ; -- Draw header --
    LDA.l #CrashTextHeader : STA $00
    LDA.l #CrashTextHeader>>16 : STA $02
    LDX #$0086 : JSR crash_draw_text

    ; -- Draw footer message --
    LDA.l #CrashTextFooter1 : STA $00
    LDA.l #CrashTextFooter1>>16 : STA $02
    LDX #$0646 : JSR crash_draw_text

    LDA.l #CrashTextFooter2 : STA $00
    LDA.l #CrashTextFooter2>>16 : STA $02
    LDX #$0686 : JSR crash_draw_text

    ; -- Draw register labels --
    LDA #$2800 : STA !ram_tilemap_buffer+$14A  ; A
    LDA #$2817 : STA !ram_tilemap_buffer+$154  ; X
    LDA #$2818 : STA !ram_tilemap_buffer+$15E  ; Y
    LDA #$2803 : STA !ram_tilemap_buffer+$166  ; D
    LDA #$2801 : STA !ram_tilemap_buffer+$168  ; B
    LDA #$284F : STA !ram_tilemap_buffer+$16A  ; +
    LDA #$280F : STA !ram_tilemap_buffer+$16C  ; P
    LDA #$2812 : STA !ram_tilemap_buffer+$172  ; S
    LDA #$280F : STA !ram_tilemap_buffer+$174  ; P

    ; -- Draw stack label --
    LDA.l #CrashTextStack1 : STA $00
    LDA.l #CrashTextStack1>>16 : STA $02
    LDX #$024E : JSR crash_draw_text

    ; -- Draw stack text --
    LDA.l #CrashTextStack2 : STA $00
    LDA.l #CrashTextStack2>>16 : STA $02
    LDX #$028C : JSR crash_draw_text

    ; -- Draw register values --
    LDA !CRASHDUMP : STA $C1 : LDX #$0188
    JSR crash_draw4  ; A
    LDA !CRASHDUMP+$02 : STA $C1 : LDX #$0192
    JSR crash_draw4  ; X
    LDA !CRASHDUMP+$04 : STA $C1 : LDX #$019C
    JSR crash_draw4  ; Y
    LDA !CRASHDUMP+$06 : XBA : STA $C1 : LDX #$01A6
    JSR crash_draw4  ; DB+P
    LDA !CRASHDUMP+$08 : STA $C1 : LDX #$01B0
    JSR crash_draw4  ; SP

    ; -- Draw starting position of stack dump
    INC $C1 : LDX #$02A8
    JSR crash_draw4

    ; -- Draw stack bytes written --
    LDA !CRASHDUMP+$0A
    STA $C1 : STA $C5 : STA $C7
    LDX #$025E
    JSR crash_draw4

    ; -- Detect and Draw BRK --
    LDA !CRASHDUMP+$0C : BEQ +
    %a8()
    LDA !CRASHDUMP+$10 : STA $C1
    LDX #$031C : JSR crash_draw2 ; P

    LDA !CRASHDUMP+$13 : STA $C1
    LDX #$0324 : JSR crash_draw2 ; bank

    %a16()
    LDA !CRASHDUMP+$11 : DEC #2 : STA $C1
    LDX #$0328 : JSR crash_draw4 ; addr

    LDA #$2C51 : STA !ram_tilemap_buffer+$310 ; B
    LDA #$2C61 : STA !ram_tilemap_buffer+$312 ; R
    LDA #$2C5A : STA !ram_tilemap_buffer+$314 ; K
    LDA #$2C4A : STA !ram_tilemap_buffer+$316 ; :
    LDA #$2C4E : STA !ram_tilemap_buffer+$322 ; $

    ; -- Draw Stack Values --
    ; start by setting up tilemap position
+   %ai16()
    LDX #$0388
    LDA #$0000 : STA $C3

    ; determine starting offset
-   LDA $C5 : AND #$0007 : BEQ +
    TXA : CLC : ADC #$0006 : TAX
    INC $C5 : INC $C3 : BRA -

+   %a8()
    LDA #$00 : STA $C5

  .drawStack
    ; draw a byte
    PHX : %i8()
    LDA $C5 : TAX
    LDA !CRASHDUMP+$10,X : STA $C1
    %i16() : PLX
    JSR crash_draw2

    ; inc tilemap position
    INX #6 : INC $C3
    LDA $C3 : AND #$08 : BEQ +

    ; start a new line
    LDA #$00 : STA $C3
    %a16()
    TXA : CLC : ADC #$0050 : TAX
    CPX #$05B4 : BPL .done
    %a8()

    ; inc bytes drawn
+   LDA $C5 : INC : STA $C5
    CMP $C7 : BNE .drawStack

  .done
    ; -- Transfer to VRAM --
    %ai16()
    JSL cm_tilemap_transfer_long
    ; fall through to CrashLoop
}

CrashLoop:
{
    ; stuck in a loop, only able to soft reset or change the palette
    JSL wait_for_lag_frame_long ; Wait for lag frame
    JSL $809459 ; Read controller input

    ; new inputs in X, to be copied back to A later
    LDA !IH_CONTROLLER_PRI_NEW : TAX : BEQ CrashLoop

    ; check for soft reset shortcut (Select+Start+L+R)
    LDA !IH_CONTROLLER_PRI : AND #$3030 : CMP #$3030 : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BNE .reset

if !FEATURE_SD2SNES
    ; check for load state shortcut
+   LDA !IH_CONTROLLER_PRI : CMP !sram_ctrl_load_state : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +

    ; prepare to jump to load_state
    %a8()
    LDA #gamemode_start>>16 : PHA : PLB
    %a16()
    PEA.w gamemode_start_return-1
    JML gamemode_shortcuts_load_state
endif

    ; palette selection
+   TXA : AND #$0810 : BNE .incPalette ; Up or R
    TXA : AND #$0420 : BNE .decPalette ; Down or L
    JMP CrashLoop

  .decPalette
    LDA $CB : BNE +
    LDA #$0004 : STA $CB ; total palettes
+   DEC $CB
    BRA .updateCGRAM

  .incPalette
    LDA $CB : CMP #$0003 : BMI +
    LDA #$FFFF : STA $CB
+   INC $CB

  .updateCGRAM
    JSL crash_cgram_transfer
    JMP CrashLoop

  .reset
    STZ $05F5   ; Enable sounds
    JML $808462 ; Soft Reset
}

crash_draw_text:
{
    ; X = pointer to tilemap area (STA !ram_tilemap_buffer,X)
    ; $00[0x3] = address
    %a8()
    LDY #$0000
    ; terminator
    LDA [$00],Y : INY : CMP #$FF : BEQ .end
    ; palette
    STA $0E

  .loop
    LDA [$00],Y : CMP #$FF : BEQ .end           ; terminator
    STA !ram_tilemap_buffer,X : INX             ; tile
    LDA $0E : STA !ram_tilemap_buffer,X : INX   ; palette
    INY : BRA .loop

  .end
    %a16()
    RTS
}

crash_draw4:
{
    ; (X000)
    LDA $C1 : AND #$F000 : XBA : LSR #3 : TAY
    LDA.w HexCrashGFXTable,Y : STA !ram_tilemap_buffer,X
    ; (0X00)
    LDA $C1 : AND #$0F00 : XBA : ASL : TAY
    LDA.w HexCrashGFXTable,Y : STA !ram_tilemap_buffer+2,X
    ; (00X0)
    LDA $C1 : AND #$00F0 : LSR #3 : TAY
    LDA.w HexCrashGFXTable,Y : STA !ram_tilemap_buffer+4,X
    ; (000X)
    LDA $C1 : AND #$000F : ASL : TAY
    LDA.w HexCrashGFXTable,Y : STA !ram_tilemap_buffer+6,X
    RTS
}

crash_draw2:
{
    %a16()
    ; (00X0)
    LDA $C1 : AND #$00F0 : LSR #3 : TAY
    LDA.w HexCrashGFXTable,Y : STA !ram_tilemap_buffer,X
    ; (000X)
    LDA $C1 : AND #$000F : ASL : TAY
    LDA.w HexCrashGFXTable,Y : STA !ram_tilemap_buffer+2,X
    %a8()
    RTS
}

crash_cgram_transfer:
{
    PHP : %a16()

    LDA $CB : BEQ .white ; 0 index
    DEC : BEQ .grey      ; 1
    DEC : BEQ .green     ; 2
    DEC : BEQ .blue      ; 3

  .white
    LDA #$44E5 : STA $7EC012 ; outline
    LDA #$7FFF : STA $7EC014 ; text
    BRA .transfer

  .grey
    LDA #$1CE7 : STA $7EC012 ; outline
    LDA #$3DEF : STA $7EC014 ; text/numbers
    BRA .transfer

  .green
    LDA #$000E : STA $7EC012 ; outline
    LDA #$0A20 : STA $7EC014 ; text
    BRA .transfer

  .blue
    LDA #$7FFF : STA $7EC012 ; outline
    LDA #$7A02 : STA $7EC014 ; text

  .transfer
    LDA $7EC012 : STA $7EC01A
    LDA $7EC014 : STA $7EC01C

    JSL transfer_cgram_long
    PLP
    PHK : PLB
    RTL
}

CrashTextHeader:
    table ../resources/header.tbl
    db #$28, "SM SHOT ITSELF IN THE FOOT", #$FF
    table ../resources/normal.tbl

CrashTextFooter1:
    db #$28, "This page may help to find", #$FF

CrashTextFooter2:
    db #$28, "  the cause of the crash", #$FF

CrashTextFooter3:
    db #$28, "Super Metroid has crashed!", #$FF

CrashTextFooter4:
    db #$28, " Send a screenshot to IFB ", #$FF

CrashTextStack1:
    db #$28, "STACK:       Bytes", #$FF

CrashTextStack2:
    db #$28, "(starting at $    )", #$FF

HexCrashGFXTable:
    dw $2C70, $2C71, $2C72, $2C73, $2C74, $2C75, $2C76, $2C77, $2C78, $2C79, $2C50, $2C51, $2C52, $2C53, $2C54, $2C55

print pc, " crash handler end"
warnpc $80F000 ; presets.asm
