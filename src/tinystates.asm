; SD2SNES Savestate code
; by acmlm, total, Myria
;

org $80F700
print pc, " tinysave start"

; These can be modified to do game-specific things before and after saving and loading
; Both A and X/Y are 16-bit here
pre_load_state:
{
    LDA !MUSIC_DATA
    STA !SRAM_MUSIC_DATA
    LDA !MUSIC_TRACK
    STA !SRAM_MUSIC_TRACK
    LDA !SOUND_TIMER
    STA !SRAM_SOUND_TIMER

    ; Rerandomize
    LDA !sram_save_has_set_rng : BNE .done
    LDA !sram_rerandomize : AND #$00FF : BEQ .done
    LDA $05E5 : STA $737F80
    LDA $05B6 : STA $737F82
    

  .done
    ; Force blank and disable NMI
    SEP #$20
    LDA #$80
    STA $2100
    LDA #$00
    STA $4200
    REP #$30

    ; Restore parts of LoRAM so we can load in the proper graphics etc
    ; This doesn't overwrite the stack.
    LDA #$8000
    STA $4310
    LDA #$4000
    STA $4312
    LDA #$0070
    STA $4314
    LDA #$001F
    STA $4316
    STZ $2181
    STZ $2183
    LDA #$0002
    STA $420B

    ; Load graphics tiles and tile tables back into RAM/WRAM
    ; before restoring the rest of the state from SRAM
    JSL preset_load_destination_state_and_tiles
    JSL preset_load_library_background
    JSL tinystates_load_level_tile_tables_scrolls_plms_and_execute_asm
    JSL tinystates_preload_bg_data

    RTS
}

post_load_state:
{
    JSL tinystates_mirror_bg_data
    JSL stop_all_sounds

    LDY !MUSIC_TRACK
    LDA $0639 : CMP $063B : BEQ .music_queue_empty

    DEC : DEC : AND #$000E : TAX
    LDA $0619,X : BMI .queued_music_data
    TXA : TAY : CMP $063B : BEQ .no_music_data

  .music_queue_data_search
    DEC : DEC : AND #$000E : TAX
    LDA $0619,X : BMI .queued_music_data
    TXA : CMP $063B : BNE .music_queue_data_search

  .no_music_data
    LDA !sram_music_toggle : CMP #$0002 : BPL .music_fast_off_preset_off

    ; No data found in queue, check if we need to insert it
    LDA !SRAM_MUSIC_DATA : CMP !MUSIC_DATA : BEQ .music_queue_increase_timer

    ; Insert queued music data
    DEX : DEX : TXA : AND #$000E : TAX
    LDA #$FF00 : CLC : ADC !MUSIC_DATA : STA $0619,X
    LDA #$0008 : STA $0629,X

  .queued_music_data
    LDA !sram_music_toggle : CMP #$0002 : BMI .queued_music_data_clear_track

    ; There is music data in the queue, assume it was loaded
    LDA $0619,X : STA !MUSIC_DATA
    BRA .music_fast_off_preset_off

  .music_queue_empty
    LDA !sram_music_toggle : CMP #$0002 : BPL .music_fast_off_preset_off
    LDA !SRAM_MUSIC_DATA : CMP !MUSIC_DATA : BNE .music_clear_track_load_data
    BRL .music_check_track

  .music_clear_track_load_data
    LDA #$0000 : JSL !MUSIC_ROUTINE
    LDA #$FF00 : CLC : ADC !MUSIC_DATA : JSL !MUSIC_ROUTINE
    BRA .music_load_track

  .music_fast_off_preset_off
    ; Treat music as already loaded
    STZ $0629 : STZ $062B : STZ $062D : STZ $062F
    STZ $0631 : STZ $0633 : STZ $0635 : STZ $0637
    STZ $0639 : STZ $063B : STZ $063D : STZ $063F
    STZ $0686 : STY !MUSIC_TRACK
    BRA .music_done

  .music_queue_increase_timer
    ; Data is correct, but we may need to increase our sound timer
    LDA !SRAM_SOUND_TIMER : CMP $063F : BMI .music_done
    STA $063F : STA $0686
    BRA .music_done

  .queued_music_data_clear_track
    ; Insert clear track before queued music data and start queue there
    DEX : DEX : TXA : AND #$000E : STA $063B : TAX
    STZ $0619,X : STZ $063D

    ; Clear all timers before this point
  .music_clear_timer_loop
    TXA : DEC : DEC : AND #$000E : TAX
    STZ $0629,X : CPX $0639 : BNE .music_clear_timer_loop

    ; Set timer on the clear track command
    LDX $063B

  .queued_music_prepare_set_timer
    LDA !SRAM_SOUND_TIMER : BNE .queued_music_set_timer
    INC

  .queued_music_set_timer
    STA $0629,X : STA $0686 : STA $063F
    BRA .music_done

  .music_check_track
    LDA !SRAM_MUSIC_TRACK : CMP !MUSIC_TRACK : BEQ .music_done

  .music_load_track
    LDA !MUSIC_TRACK : JSL !MUSIC_ROUTINE

  .music_done
    ; Rerandomize
    LDA !sram_save_has_set_rng : BNE .done
    LDA !sram_rerandomize : AND #$00FF : BEQ .done
    LDA $737F80 : STA $05E5
    LDA $737F82 : STA $05B6

  .done
    JSL init_wram_based_on_sram

    ; Freeze inputs if necessary
    LDA !ram_freeze_on_load : BEQ .return
    LDA #$FFFF : STA !ram_slowdown_mode
    INC : STA !ram_slowdown_controller_1 : STA !ram_slowdown_controller_2
    INC : STA !ram_slowdown_frames

  .return

    ; Re-enable NMI, turn on force-blank and wait NMI to execute.
    ; This prevents some annoying flashing when loading states where
    ; graphics changes otherwise happens mid-frame    
    JSL $80834B
    JSL $80836F

    RTS
}

; These restored registers are game-specific and needs to be updated for different games
register_restore_return:
{
    %a8()
    LDA $84
    STA $4200
    LDA #$0F
    STA $13
    STA $51
    STA $2100
    RTL
}

save_state:
{
    PEA $0000
    PLB
    PLB

    ; Store DMA registers to SRAM
    %a8();
    LDY #$0000
    TYX

  .save_dma_regs
    LDA $4300,X
    STA !SRAM_DMA_BANK,X
    INX
    INY
    CPY #$000B
    BNE .save_dma_regs
    CPX #$007B
    BEQ .save_dma_regs_done
    INX #5
    LDY #$0000
    BRA .save_dma_regs

  .save_dma_regs_done
    %ai16()
    LDX #save_write_table
}

run_vm:
{
    PHK
    PLB
    JMP vm
}

macro wram_to_sram(wram_addr, size, sram_addr)
    dw $0000|$4312, <sram_addr>&$FFFF
    dw $0000|$4314, ((<sram_addr>>>16)&$FF)|((<size>&$FF)<<8)
    dw $0000|$4316, (<size>>>8)&$FF
    dw $0000|$2181, <wram_addr>&$FFFF
    dw $0000|$2183, ((<wram_addr>>>16)&$FF)-$7E
    dw $0000|$420B, $02
endmacro

macro vram_to_sram(vram_addr, size, sram_addr)
    dw $0000|$2116, <vram_addr>&$FFFF                            ; VRAM address >> 1.
    dw $9000|$2139, $0000                                        ; VRAM dummy read.
    dw $0000|$4312, <sram_addr>&$FFFF                            ; A addr = $xx0000
    dw $0000|$4314, ((<sram_addr>>>16)&$FF)|((<size>&$FF)<<8)    ; A addr = $75xxxx, size = $xx00
    dw $0000|$4316, (<size>>>8)&$FF                              ; size = $80xx ($0000), unused bank reg = $00.
    dw $1000|$420B, $02                                          ; Trigger DMA on channel 1
endmacro


save_write_table:
    ; Turn PPU off
    dw $1000|$2100, $80
    dw $1000|$4200, $00
    ; Single address, B bus -> A bus.  B address = reflector to WRAM ($2180).
    dw $0000|$4310, $8080  ; direction = B->A, byte reg, B addr = $2180
    
    ; Copy WRAM segments
    %wram_to_sram($7E0000, $2000, $704000)
    %wram_to_sram($7E7000, $1000, $706000) 
    %wram_to_sram($7E8000, $2000, $710000) 
    %wram_to_sram($7EC000, $34A0, $712000)    
    %wram_to_sram($7F0000, $2B00, $715500)
    %wram_to_sram($7F2B00, $6B01, $720000)
    
    ; Address pair, B bus -> A bus.  B address = VRAM read ($2139).
    dw $0000|$4310, $3981  ; direction = B->A, word reg, B addr = $2139
    dw $1000|$2115, $0000  ; VRAM address increment mode.

    ; Copy VRAM segments
    %vram_to_sram($3E00, $400,  $726C00)
    %vram_to_sram($4800, $1000, $727000)
    %vram_to_sram($5000, $2000, $730000)
    %vram_to_sram($6000, $4000, $732000)

    ; Copy CGRAM 000-1FF to SRAM 736000-7361FF
    dw $1000|$2121, $00    ; CGRAM address
    dw $0000|$4310, $3B80  ; direction = B->A, byte reg, B addr = $213B
    dw $0000|$4312, $6000  ; A addr = $xx2000
    dw $0000|$4314, $0073  ; A addr = $77xxxx, size = $xx00
    dw $0000|$4316, $0002  ; size = $02xx ($0200), unused bank reg = $00.
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    
    ; Done
    dw $0000, save_return

save_return:
{
    PEA $0000
    PLB
    PLB

    %ai16()
    LDA !ram_room_has_set_rng : STA !sram_save_has_set_rng

    TSC
    STA !SRAM_SAVED_SP
    JMP register_restore_return
}

load_state:
{
    JSR pre_load_state
    PEA $0000
    PLB
    PLB

    %a8()
    LDX #load_write_table
    JMP run_vm
}

macro sram_to_wram(wram_addr, size, sram_addr)
    dw $0000|$4312, <sram_addr>&$FFFF                     ; A addr = $xx0000
    dw $0000|$4314, ((<sram_addr>>>16)&$FF)|((<size>&$FF)<<8)    ; A addr = $71xxxx, size = $xx00
    dw $0000|$4316, (<size>>>8)&$FF                       ; size = $80xx ($8000), unused bank reg = $00.
    dw $0000|$2181, <wram_addr>&$FFFF                     ; WRAM addr = $xx0000
    dw $1000|$2183, ((<wram_addr>>>16)&$FF)-$7E           ; WRAM addr = $7Exxxx  (bank is relative to $7E)
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
endmacro

macro sram_to_vram(vram_addr, size, sram_addr)
    dw $0000|$2116, <vram_addr>&$FFFF                     ; VRAM address >> 1.
    dw $0000|$4312, <sram_addr>&$FFFF                     ; A addr = $xx0000
    dw $0000|$4314, ((<sram_addr>>>16)&$FF)|((<size>&$FF)<<8)    ; A addr = $75xxxx, size = $xx00
    dw $0000|$4316, (<size>>>8)&$FF                       ; size = $80xx ($0000), unused bank reg = $00.
    dw $1000|$420B, $02                                 ; Trigger DMA on channel 1
endmacro

load_write_table:
    ; Disable HDMA
    dw $1000|$420C, $00
    ; Turn PPU off
    dw $1000|$2100, $80
    dw $1000|$4200, $00
    ; Single address, A bus -> B bus.  B address = reflector to WRAM ($2180).
    dw $0000|$4310, $8000  ; direction = A->B, B addr = $2180


    ; Copy WRAM segments, uses $703000-$724B02
    %sram_to_wram($7E0000, $2000, $704000)
    %sram_to_wram($7E7000, $1000, $706000) 
    %sram_to_wram($7E8000, $2000, $710000) 
    %sram_to_wram($7EC000, $34A0, $712000)
    %sram_to_wram($7F0000, $2B00, $715500)
    %sram_to_wram($7F2B00, $6B01, $720000)

    ; Address pair, A bus -> B bus.  B address = VRAM write ($2118).
    dw $0000|$4310, $1801  ; direction = A->B, B addr = $2118
    dw $1000|$2115, $0000  ; VRAM address increment mode.

    ; Copy VRAM segments, uses $724C00-$735000
    %sram_to_vram($3E00, $400,  $726C00)
    %sram_to_vram($4800, $1000, $727000)
    %sram_to_vram($5000, $2000, $730000)
    %sram_to_vram($6000, $4000, $732000)

    ; Copy SRAM 736000-7361FF to CGRAM 000-1FF.
    dw $1000|$2121, $00    ; CGRAM address
    dw $0000|$4310, $2200  ; direction = A->B, byte reg, B addr = $2122
    dw $0000|$4312, $2000  ; A addr = $xx2000
    dw $0000|$4314, $0073  ; A addr = $77xxxx, size = $xx00
    dw $0000|$4316, $0006  ; size = $02xx ($0200), unused bank reg = $00.
    dw $1000|$420B, $02    ; Trigger DMA on channel 1
    
    ; Done
    dw $0000, load_return

load_return:
{
    %ai16()
    LDA !SRAM_SAVED_SP
    TCS

    PEA $0000
    PLB
    PLB

    ; rewrite inputs so that holding load won't keep loading, as well as rewriting saving input to loading input
    LDA !SS_INPUT_CUR
    EOR !sram_ctrl_save_state
    ORA !sram_ctrl_load_state
    STA !SS_INPUT_CUR
    STA !SS_INPUT_NEW
    STA !SS_INPUT_PREV

    %a8()
    LDX #$0000
    TXY

  .load_dma_regs
    LDA !SRAM_DMA_BANK,X
    STA $4300,X
    INX
    INY
    CPY #$000B
    BNE .load_dma_regs
    CPX #$007B
    BEQ .load_dma_regs_done
    INX #5
    LDY #$0000
    BRA .load_dma_regs

  .load_dma_regs_done
    ; Restore registers and return.
    %ai16()
    JSR post_load_state
    JMP register_restore_return
}

vm:
{
    ; Data format: xx xx yy yy
    ; xxxx = little-endian address to write to .vm's bank
    ; yyyy = little-endian value to write
    ; If xxxx has high bit set, read and discard instead of write.
    ; If xxxx has bit 12 set ($1000), byte instead of word.
    ; If yyyy has $DD in the low half, it means that this operation is a byte
    ; write instead of a word write.  If xxxx is $0000, end the VM.
    REP #$30
    ; Read address to write to
    LDA.w $0000,X
    BEQ .vm_done
    TAY
    INX
    INX
    ; Check for byte mode
    BIT.w #$1000
    BEQ .vm_word_mode
    AND.w #$EFFF
    TAY
    SEP #$20
  .vm_word_mode
    ; Read value
    LDA.w $0000,X
    INX
    INX
  .vm_write
    ; Check for read mode (high bit of address)
    CPY.w #$8000
    BCS .vm_read
    STA $0000,Y
    BRA vm
  .vm_read
    ; "Subtract" $8000 from y by taking advantage of bank wrapping.
    LDA $8000,Y
    BRA vm
  .vm_done
    ; A, X and Y are 16-bit at exit.
    ; Return to caller.  The word in the table after the terminator is the
    ; code address to return to.
    JMP ($0002,X)
}

print pc, " tinysave end"
warnpc $80FC00 ; infohud.asm

print pc, " tinysave bank82 start"
org $82FE00

tinystates_preload_bg_data:
  JSR $82E2 ; Re-load BG3 tiles
  RTL

tinystates_mirror_bg_data:
  PHB        
  PEA $7F00  
  PLB        
  PLB        
  LDA $0000  
  TAX        
  LSR A      
  ADC $0000  
  ADC $0000  
  TAY        
  BRA +
-             
  LDA $0002,y
  STA $9602,x
+             
  DEY        
  DEY        
  DEX        
  DEX        
  BPL -
  PLB
  RTL

print pc, " tinysave bank82 end"
