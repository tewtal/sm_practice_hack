; SD2SNES Savestate code
; by acmlm, total, Myria
;

org $80F800
print pc, " save start"
; These can be modified to do game-specific things before and after saving and loading
; Both A and X/Y are 16-bit here

; SM specific features to restore the correct music when loading a state below
pre_load_state:
    lda !MUSIC_BANK
    sta !SRAM_MUSIC_BANK
    lda !MUSIC_TRACK
    sta !SRAM_MUSIC_TRACK

    ; Rerandomize
    lda !sram_save_has_set_rng : bne +
    lda !sram_rerandomize : and #$00ff : beq +
    lda $05e5 : sta $770080
    lda $05b6 : sta $770082
    +
    rts

post_load_state:
    JSL stop_all_sounds

    lda !SRAM_MUSIC_BANK
    cmp !MUSIC_BANK
    bne music_load_bank

    lda !SRAM_MUSIC_TRACK
    cmp !MUSIC_TRACK
    bne music_load_track
    jmp music_done

music_load_bank:
    lda #$FF00
    clc
    adc !MUSIC_BANK
    JSL !MUSIC_ROUTINE

music_load_track:
    lda !MUSIC_TRACK
    jsl !MUSIC_ROUTINE

music_done:
    ; Rerandomize
    lda !sram_save_has_set_rng : bne +
    lda !sram_rerandomize : and #$00ff : beq +
    lda $770080
    sta $05e5
    lda $770082
    sta $05b6
    +
    rts
; end of post_load_state


; These restored registers are game-specific and needs to be updated for different games
register_restore_return:
    %a8()
    lda $84
    sta $4200
    lda #$0F
    sta $13
    sta $2100
    rtl

save_state:
    pea $0000
    plb
    plb

    ; Store DMA registers to SRAM
    %a8();
    ldy #$0000
    tyx

save_dma_regs:
    lda $4300, x
    sta !SRAM_DMA_BANK, x
    inx
    iny
    cpy #$000B
    bne save_dma_regs
    cpx #$007B
    beq save_dma_regs_done
    inx #5
    ldy #$0000
    bra save_dma_regs

save_dma_regs_done:
    %ai16()
    ldx #save_write_table

run_vm:
    pea !SS_BANK
    plb
    plb
    jmp vm

save_write_table:
    ; Turn PPU off
    dw $1000|$2100, $80
    dw $1000|$4200, $00
    ; Single address, B bus -> A bus.  B address = reflector to WRAM ($2180).
    dw $0000|$4310, $8080  ; direction = B->A, byte reg, B addr = $2180
    ; Copy WRAM 7E0000-7E7FFF to SRAM 710000-717FFF.
    dw $0000|$4312, $0000  ; A addr = $xx0000
    dw $0000|$4314, $0071  ; A addr = $71xxxx, size = $xx00
    dw $0000|$4316, $0080  ; size = $80xx ($8000), unused bank reg = $00.
    dw $0000|$2181, $0000  ; WRAM addr = $xx0000
    dw $1000|$2183, $00    ; WRAM addr = $7Exxxx  (bank is relative to $7E)
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Copy WRAM 7E8000-7EFFFF to SRAM 720000-727FFF.
    dw $0000|$4312, $0000  ; A addr = $xx0000
    dw $0000|$4314, $0072  ; A addr = $72xxxx, size = $xx00
    dw $0000|$4316, $0080  ; size = $80xx ($8000), unused bank reg = $00.
    dw $0000|$2181, $8000  ; WRAM addr = $xx8000
    dw $1000|$2183, $00    ; WRAM addr = $7Exxxx  (bank is relative to $7E)
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Copy WRAM 7F0000-7F7FFF to SRAM 730000-737FFF.
    dw $0000|$4312, $0000  ; A addr = $xx0000
    dw $0000|$4314, $0073  ; A addr = $73xxxx, size = $xx00
    dw $0000|$4316, $0080  ; size = $80xx ($8000), unused bank reg = $00.
    dw $0000|$2181, $0000  ; WRAM addr = $xx0000
    dw $1000|$2183, $01    ; WRAM addr = $7Fxxxx  (bank is relative to $7E)
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Copy WRAM 7F8000-7FFFFF to SRAM 740000-747FFF.
    dw $0000|$4312, $0000  ; A addr = $xx0000
    dw $0000|$4314, $0074  ; A addr = $74xxxx, size = $xx00
    dw $0000|$4316, $0080  ; size = $80xx ($8000), unused bank reg = $00.
    dw $0000|$2181, $8000  ; WRAM addr = $xx8000
    dw $1000|$2183, $01    ; WRAM addr = $7Fxxxx  (bank is relative to $7E)
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Address pair, B bus -> A bus.  B address = VRAM read ($2139).
    dw $0000|$4310, $3981  ; direction = B->A, word reg, B addr = $2139
    dw $1000|$2115, $0000  ; VRAM address increment mode.
    ; Copy VRAM 0000-7FFF to SRAM 750000-757FFF.
    dw $0000|$2116, $0000  ; VRAM address >> 1.
    dw $9000|$2139, $0000  ; VRAM dummy read.
    dw $0000|$4312, $0000  ; A addr = $xx0000
    dw $0000|$4314, $0075  ; A addr = $75xxxx, size = $xx00
    dw $0000|$4316, $0080  ; size = $80xx ($0000), unused bank reg = $00.
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Copy VRAM 8000-7FFF to SRAM 760000-767FFF.
    dw $0000|$2116, $4000  ; VRAM address >> 1.
    dw $9000|$2139, $0000  ; VRAM dummy read.
    dw $0000|$4312, $0000  ; A addr = $xx0000
    dw $0000|$4314, $0076  ; A addr = $76xxxx, size = $xx00
    dw $0000|$4316, $0080  ; size = $80xx ($0000), unused bank reg = $00.
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Copy CGRAM 000-1FF to SRAM 772000-7721FF.
    dw $1000|$2121, $00    ; CGRAM address
    dw $0000|$4310, $3B80  ; direction = B->A, byte reg, B addr = $213B
    dw $0000|$4312, $2000  ; A addr = $xx2000
    dw $0000|$4314, $0077  ; A addr = $77xxxx, size = $xx00
    dw $0000|$4316, $0002  ; size = $02xx ($0200), unused bank reg = $00.
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Done
    dw $0000, save_return

save_return:
    pea $0000
    plb
    plb

    %ai16()
    LDA !ram_room_has_set_rng : STA !sram_save_has_set_rng

    tsc
    sta !SRAM_SAVED_SP
    jmp register_restore_return


load_state:
    jsr pre_load_state
    pea $0000
    plb
    plb

    %a8()
    ldx #load_write_table
    jmp run_vm

load_write_table:
    ; Disable HDMA
    dw $1000|$420C, $00
    ; Turn PPU off
    dw $1000|$2100, $80
    dw $1000|$4200, $00
    ; Single address, A bus -> B bus.  B address = reflector to WRAM ($2180).
    dw $0000|$4310, $8000  ; direction = A->B, B addr = $2180
    ; Copy SRAM 710000-717FFF to WRAM 7E0000-7E7FFF.
    dw $0000|$4312, $0000  ; A addr = $xx0000
    dw $0000|$4314, $0071  ; A addr = $71xxxx, size = $xx00
    dw $0000|$4316, $0080  ; size = $80xx ($8000), unused bank reg = $00.
    dw $0000|$2181, $0000  ; WRAM addr = $xx0000
    dw $1000|$2183, $00    ; WRAM addr = $7Exxxx  (bank is relative to $7E)
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Copy SRAM 720000-727FFF to WRAM 7E8000-7EFFFF.
    dw $0000|$4312, $0000  ; A addr = $xx0000
    dw $0000|$4314, $0072  ; A addr = $72xxxx, size = $xx00
    dw $0000|$4316, $0080  ; size = $80xx ($8000), unused bank reg = $00.
    dw $0000|$2181, $8000  ; WRAM addr = $xx8000
    dw $1000|$2183, $00    ; WRAM addr = $7Exxxx  (bank is relative to $7E)
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Copy SRAM 730000-737FFF to WRAM 7F0000-7F7FFF.
    dw $0000|$4312, $0000  ; A addr = $xx0000
    dw $0000|$4314, $0073  ; A addr = $73xxxx, size = $xx00
    dw $0000|$4316, $0080  ; size = $80xx ($8000), unused bank reg = $00.
    dw $0000|$2181, $0000  ; WRAM addr = $xx0000
    dw $1000|$2183, $01    ; WRAM addr = $7Fxxxx  (bank is relative to $7E)
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Copy SRAM 740000-747FFF to WRAM 7F8000-7FFFFF.
    dw $0000|$4312, $0000  ; A addr = $xx0000
    dw $0000|$4314, $0074  ; A addr = $74xxxx, size = $xx00
    dw $0000|$4316, $0080  ; size = $80xx ($8000), unused bank reg = $00.
    dw $0000|$2181, $8000  ; WRAM addr = $xx8000
    dw $1000|$2183, $01    ; WRAM addr = $7Fxxxx  (bank is relative to $7E)
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Address pair, A bus -> B bus.  B address = VRAM write ($2118).
    dw $0000|$4310, $1801  ; direction = A->B, B addr = $2118
    dw $1000|$2115, $0000  ; VRAM address increment mode.
    ; Copy SRAM 750000-757FFF to VRAM 0000-7FFF.
    dw $0000|$2116, $0000  ; VRAM address >> 1.
    dw $0000|$4312, $0000  ; A addr = $xx0000
    dw $0000|$4314, $0075  ; A addr = $75xxxx, size = $xx00
    dw $0000|$4316, $0080  ; size = $80xx ($0000), unused bank reg = $00.
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Copy SRAM 760000-767FFF to VRAM 8000-7FFF.
    dw $0000|$2116, $4000  ; VRAM address >> 1.
    dw $0000|$4312, $0000  ; A addr = $xx0000
    dw $0000|$4314, $0076  ; A addr = $76xxxx, size = $xx00
    dw $0000|$4316, $0080  ; size = $80xx ($0000), unused bank reg = $00.
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Copy SRAM 772000-7721FF to CGRAM 000-1FF.
    dw $1000|$2121, $00    ; CGRAM address
    dw $0000|$4310, $2200  ; direction = A->B, byte reg, B addr = $2122
    dw $0000|$4312, $2000  ; A addr = $xx2000
    dw $0000|$4314, $0077  ; A addr = $77xxxx, size = $xx00
    dw $0000|$4316, $0002  ; size = $02xx ($0200), unused bank reg = $00.
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    ; Done
    dw $0000, load_return

load_return:
    %ai16()
    lda !SRAM_SAVED_SP
    tcs

    pea $0000
    plb
    plb

    ; rewrite inputs so that holding load won't keep loading, as well as rewriting saving input to loading input
    lda !SS_INPUT_CUR
    eor !sram_ctrl_save_state
    ora !sram_ctrl_load_state
    sta !SS_INPUT_CUR
    sta !SS_INPUT_NEW
    sta !SS_INPUT_PREV

    %a8()
    ldx #$0000
    txy

load_dma_regs:
    lda !SRAM_DMA_BANK, x
    sta $4300, x
    inx
    iny
    cpy #$000B
    bne load_dma_regs
    cpx #$007B
    beq load_dma_regs_done
    inx #5
    ldy #$0000
    jmp load_dma_regs

load_dma_regs_done:
    ; Restore registers and return.
    %ai16()
    jsr post_load_state
    jmp register_restore_return

vm:
    ; Data format: xx xx yy yy
    ; xxxx = little-endian address to write to .vm's bank
    ; yyyy = little-endian value to write
    ; If xxxx has high bit set, read and discard instead of write.
    ; If xxxx has bit 12 set ($1000), byte instead of word.
    ; If yyyy has $DD in the low half, it means that this operation is a byte
    ; write instead of a word write.  If xxxx is $0000, end the VM.
    rep #$30
    ; Read address to write to
    lda.w $0000, x
    beq vm_done
    tay
    inx
    inx
    ; Check for byte mode
    bit.w #$1000
    beq vm_word_mode
    and.w #$EFFF
    tay
    sep #$20
vm_word_mode:
    ; Read value
    lda.w $0000, x
    inx
    inx
vm_write:
    ; Check for read mode (high bit of address)
    cpy.w #$8000
    bcs vm_read
    sta $0000, y
    bra vm
vm_read:
    ; "Subtract" $8000 from y by taking advantage of bank wrapping.
    lda $8000, y
    bra vm

vm_done:
    ; A, X and Y are 16-bit at exit.
    ; Return to caller.  The word in the table after the terminator is the
    ; code address to return to.
    jmp ($0002,x)

print pc, " save end"
warnpc $80FC00
