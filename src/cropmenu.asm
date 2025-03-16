
%startfree(8E)

; ----------------
; Capture Cropping
; ----------------

CaptureCroppingMenu:
    dw #ccm_launch_crop_mode
    dw #$FFFF
    dw #ccm_crop_mode
    dw #ccm_crop_tile
    dw #$0000
    %cm_header("CAPTURE CROPPING MODE")

ccm_launch_crop_mode:
    %cm_jsl("Capture Crop Mode", .routine, #0)
  .routine
    JSL cm_crop_mode
    JML refresh_cgram_long

ccm_crop_mode:
    dw !ACTION_CHOICE
    dl #!ram_cm_crop_mode
    dw #$0000
    db #$28, "Drawing Method", #$FF
    db #$28, "     BORDER", #$FF
    db #$28, "       FILL", #$FF
    db #$FF

ccm_crop_tile:
    dw !ACTION_CHOICE
    dl #!ram_cm_crop_tile
    dw #$0000
    db #$28, "Cropping Tile", #$FF
    db #$28, "          ", #$90, #$FF
    db #$28, "          ", #$91, #$FF
    db #$FF

cm_crop_mode:
{
    PHP : %a16() : %i8()

    ; turn on forced blank
    LDX #$80 : STX $2100

    ; fix BG3 scroll offset
    LDX #$FF : STX $2112
    LDX #$03 : STX $2112

    TDC : STA !ram_crash_palette

    ; pattern or solid color?
    LDA !ram_cm_crop_tile : BEQ .boxes
    LDA #$2891 : STA $C1
    BRA .draw

  .boxes
    LDA #$2890 : STA $C1

  .draw
    ; wait for lag frame
    LDX !NMI_COUNTER : CPX !NMI_COUNTER : BEQ .draw

    ; draw around the border or fill the screen?
    LDA !ram_cm_crop_mode : BNE .fill
    JSR cm_crop_border
    BRA .drawingdone

  .fill
    JSR cm_crop_fill

  .drawingdone
    ; turn off forced blank
    LDX #$0F : STX $2100

  .loop
    ; Make sure we don't read joysticks twice in the same frame
    ; wait for lag frame
    LDX !NMI_COUNTER : CPX !NMI_COUNTER : BEQ .loop
    LDA !FRAME_COUNTER : CMP !ram_cm_input_counter : PHP
    STA !ram_cm_input_counter
    PLP : BNE .inputRead
    JSL $809459 ; Read controller input

  .inputRead
    LDA !IH_CONTROLLER_PRI_NEW : BEQ .loop
    CMP !CTRL_B : BEQ .end
    CMP !CTRL_L : BEQ .decPalette
    CMP !CTRL_R : BEQ .incPalette
    BRA .loop

  .decPalette
    LDA !ram_crash_palette : BNE .decSetPalette
    LDA #$0008
  .decSetPalette
    DEC : STA !ram_crash_palette
    JSL crash_cgram_transfer
    BRA .loop

  .incPalette
    LDA !ram_crash_palette : CMP #$0007 : BMI .incSetPalette
    LDA #$FFFF
  .incSetPalette
    INC : STA !ram_crash_palette
    JSL crash_cgram_transfer
    BRA .loop

  .end
    ; restore BG3 scroll offset
    LDA !REG_2112_BG3_Y
    %ai8()
    LDX #$80 : STX $2100
    STA $2112 : XBA : STA $2112
    LDX #$0F : STX $2100

    PLP
    RTL
}

cm_crop_border:
{
    ; top
    LDX #$80 : STX $2115
    LDA #$5800 : STA $2116
    LDA $C1 : LDX #$00
  .topLoop
    STA $2118
    INX : CPX #$20 : BNE .topLoop

    ; bottom
    LDX #$80 : STX $2115
    LDA #$5B60 : STA $2116
    LDA $C1 : LDX #$00
  .bottomLoop
    STA $2118
    INX : CPX #$40 : BNE .bottomLoop

    ; left
    LDX #$81 : STX $2115
    LDA #$5820 : STA $2116
    LDA $C1 : LDX #$00
  .leftLoop
    STA $2118
    INX : CPX #$1D : BNE .leftLoop

    ; right
    LDX #$81 : STX $2115
    LDA #$583F : STA $2116
    LDA $C1 : LDX #$00
  .rightLoop
    STA $2118
    INX : CPX #$1D : BNE .rightLoop

    RTS
}

cm_crop_fill:
{
    LDX #$80 : STX $2115
    LDA #$5800 : STA $2116
    PHP : %i16()
    LDA $C1 : LDX #$0400

  .loop
    STA $2118
    DEX : BPL .loop

    PLP
    RTS
}

%endfree(8E)

