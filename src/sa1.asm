namespace sa1
org $88F000

namespace sa1
; SA-1 init code (runs on SA-1 reset)
init:
    sei
    clc
    xce

    rep #$38
    lda #$0000
    tcd
    lda #$37ff
    tcs
    phk
    plb

    sep #$30
    stz $2230

    lda #$80
    sta $220a   ; Enable IRQ from SNES

    rep #$30
    cli

main:
    jmp main

interrupt:
    sei : pha : phx : phy : php : phd : phb
    phk : plb

    lda #$0000
    sta $fe

    sep #$20
    lda #$80
    sta $220b   ; Acknowledge this IRQ


    lda $2301
    and #$0f    ; Read IRQ message from SNES
    asl         ; and jump to the command issued
    tax

    jsr (commands, x)

    plb : pld : plp

    lda #$0001
    sta $fe     ; I-RAM SA1->SNES flag

    ply : plx : pla : cli
    rti


commands:

namespace off





