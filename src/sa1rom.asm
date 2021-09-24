; Super Metroid SA-1 patch
;

!SRAM_BANK = #$00a1
!SRAM_BASE = $a16000	; Select where SRAM is mapped to (default is a0:6000-7FFF)

; SA1-specific vectors and init patches
; Set SA-1 chip flag in header

; org $00ffc0
;     db "SUPER METROID  "

org $00ffd5
    db $33, $35, $0C, $08, $01, $33

org $00ffec
    dw snes_reset
org $00fffc
    dw snes_reset

; SNES vectors
org $00ff20
snes_reset:
    sei
    clc
    xce
    rep #$38
    lda #$0000
    tcd
    lda #$1fff
    tcs
    phk
    plb
	sep #$20
	lda #$00
	sta $86	
    jsr sa1_setup
    jml $808436

org $00fe00
; SA-1 setup code
sa1_setup:    
    sep #$20    ; Initialize SA-1 ROM Mapping    
    lda #$80
    sta $2222   ; Map LoROM banks 80-9F using first 1MB of ROM
    lda #$81
    sta $2223   ; Map LoROM banks A0-BF using second 1MB of ROM

    lda #$02    ; Map HiROM banks C0-CF using third 1MB of ROM
    sta $2220   ; (Will be converted from C0-DF:8000-FFFF (lorom) by game routines for decompression)

    lda #$03    ; Map HiROM banks D0-DF using fourth 1MB of ROM (extra data)
    sta $2221   ; (Will be converted from E0-FF:8000-FFFF (lorom) by game routines for decompression)
                ; This could in theory be bank switched for 4MB of more data

    lda #$03
    sta $2225   ; Set the fourth (6000-7FFF) region of BW-RAM to be used as game SRAM
	sta $2224

    lda #$80
    sta $2226
    sta $2227   ; Write-enable BW-RAM

    lda #$ff
    sta $2228
    sta $222a   ; Write-enable I-RAM

    rep #$30
    lda sa1_vectors
    sta $2203
    lda sa1_vectors+2
    sta $2205
    lda sa1_vectors+4
    sta $2207

    sep #$20
    lda #$00
    sta $2200   ; Bring the SA-1 out of reset

    rep #$30

	ldx #$0000		; Clear SA-1 IRAM
	lda #$0000
-
	sta $3000, x
	inx
	inx
	cpx #$0800
	bne -

	ldx #$0000		; Clear WRAM
-
	sta.l $7E0000, x
	inx
	inx
	cpx #$1f00
	bne -

	ldx #$2000		; Clear WRAM
-
	sta.l $7E0000, x
	inx
	inx
	bne -

	ldx #$0000		; Clear WRAM
-
	sta.l $7F0000, x
	inx
	inx
	bne -

    ldx #$0000
-
    lda.l sa1_call_rom, x
    sta.l $7fff00, x
    inx #2
    cpx #$0100
    bne -

    rts

; This routine is called from the SNES CPU to do a blocking SA-1 call (relocate this to RAM)
; have 16-bit registers and function in A
sa1_call_rom:
    php
	rep #$30
	ldx $8f
	stx $308f
    sep #$20
    and #$0f
    ora #$80
    stz $30fe
    sta $2200   ; Send IRQ and message to SA-1
-   lda $30fe
    beq -
    plp
    rtl

sa1_call:
	php
	rep #$30
	ldx $8f
	stx $308f
	sep #$20
	and #$0f
	ora #$80
	sta $2200
	plp
	rtl

sa1_wait:
-	lda $30fe
	beq -
	rtl

print pc, " SA-1 end"
; SA-1 vectors
org $00ff00
sa1_vectors:
    dw sa1_reset
    dw sa1_nmi
    dw sa1_irq

sa1_reset:
    jml sa1_init

sa1_nmi:
sa1_irq:
    jml sa1_interrupt

org $7fff00
sa1_call_sync:

; Patch out copy protection
org $008000
    db $ff

;========================== SRAM Load/Save Repoint ===============================

org $008257
	sta !SRAM_BASE+$1fe0,x

org $00828a
	sta !SRAM_BASE+$1fe0,x

org $008297
	lda !SRAM_BASE+$1fe0,x

org $008698
	lda !SRAM_BASE,x
	
org $0086aa
	sta !SRAM_BASE,x
	
org $0086b8
	sta !SRAM_BASE,x
	
org $0086c7
	cmp !SRAM_BASE,x

org $0086d9
	sta !SRAM_BASE,x
	
org $018056
	sta !SRAM_BASE,x
	
org $01806c
	sta !SRAM_BASE,x
	sta !SRAM_BASE+$1ff0,x
	eor #$ffff
	sta !SRAM_BASE+$0008,x
	sta !SRAM_BASE+$1ff8,x

org $0180a0
	lda !SRAM_BASE,x
	
org $0180b9
	cmp !SRAM_BASE,x

org $0180c2
	cmp !SRAM_BASE+$0008,x
	
org $0180cc
	cmp !SRAM_BASE+$1ff0,x
	
org $0180d5
	cmp !SRAM_BASE+$1ff8,x
	
org $01810b
	sta !SRAM_BASE,x
		
org $019ed8
	lda !SRAM_BASE+$1fec
	
org $019ee7
	and !SRAM_BASE+$1fee
	
org $019ccb
	sta !SRAM_BASE,x
	sta !SRAM_BASE+$0008,x
	sta !SRAM_BASE+$1ff0,x
	sta !SRAM_BASE+$1ff8,x

org $01a23c
	sta !SRAM_BASE+$1fec

org $01a243
	sta !SRAM_BASE+$1fee

org $019a3b
	lda !SRAM_BANK

org $019a58
	ldy #$6000

org $019a61
	cpy #$665c

org $019a6b
	lda !SRAM_BASE+$1ff0,x
	pha
	lda !SRAM_BASE+$1ff8,X
	pha
	lda !SRAM_BASE,x
	pha
	lda !SRAM_BASE+$0008,x
	pha

org $019a85
	sta !SRAM_BASE+$0008,x
	pla
	sta !SRAM_BASE,x
	pla
	sta !SRAM_BASE+$1ff8,x
	pla
	sta !SRAM_BASE+$1ff0,x

org $019ca4
	lda !SRAM_BANK

org $019cb4
	ldy #$6000

org $019cbe
	cpy #$665c

;==================================================================================
