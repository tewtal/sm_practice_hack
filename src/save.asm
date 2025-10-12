; SD2SNES Savestate code
; by acmlm, total, Myria
;

macro wram_to_sram(wram_addr, size, sram_addr)
    dw $0000|$4312, <sram_addr>&$FFFF                            ; VRAM address >> 1.
    dw $0000|$4314, ((<sram_addr>>>16)&$FF)|((<size>&$FF)<<8)    ; A addr = $70xxxx, size = $xx00
    dw $0000|$4316, (<size>>>8)&$FF                              ; size = $80xx ($8000), unused bank reg = $00.
    dw $0000|$2181, <wram_addr>&$FFFF                            ; WRAM addr = $xx0000
    dw $1000|$2183, ((<wram_addr>>>16)&$FF)-$7E                  ; WRAM addr = $7Exxxx  (bank is relative to $7E)
    dw $1000|$420B, $02                                          ; Trigger DMA on channel 1
endmacro

macro vram_to_sram(vram_addr, size, sram_addr)
    dw $0000|$2116, <vram_addr>>>1                               ; VRAM address >> 1.
    dw $9000|$213A, $0000                                        ; VRAM dummy read.
    dw $0000|$4312, <sram_addr>&$FFFF                            ; A addr = $xx0000
    dw $0000|$4314, ((<sram_addr>>>16)&$FF)|((<size>&$FF)<<8)    ; A addr = $70xxxx, size = $xx00
    dw $0000|$4316, (<size>>>8)&$FF                              ; size = $80xx ($0000), unused bank reg = $00.
    dw $1000|$420B, $02                                          ; Trigger DMA on channel 1
endmacro

macro sram_to_wram(wram_addr, size, sram_addr)
    dw $0000|$4312, <sram_addr>&$FFFF                            ; A addr = $xx0000
    dw $0000|$4314, ((<sram_addr>>>16)&$FF)|((<size>&$FF)<<8)    ; A addr = $70xxxx, size = $xx00
    dw $0000|$4316, (<size>>>8)&$FF                              ; size = $80xx ($8000), unused bank reg = $00.
    dw $0000|$2181, <wram_addr>&$FFFF                            ; WRAM addr = $xx0000
    dw $1000|$2183, ((<wram_addr>>>16)&$FF)-$7E                  ; WRAM addr = $7Exxxx  (bank is relative to $7E)
    dw $1000|$420B, $02                                          ; Trigger DMA on channel 1
endmacro

macro sram_to_vram(vram_addr, size, sram_addr)
    dw $0000|$2116, <vram_addr>>>1                               ; VRAM address >> 1.
    dw $0000|$4312, <sram_addr>&$FFFF                            ; A addr = $xx0000
    dw $0000|$4314, ((<sram_addr>>>16)&$FF)|((<size>&$FF)<<8)    ; A addr = $70xxxx, size = $xx00
    dw $0000|$4316, (<size>>>8)&$FF                              ; size = $80xx ($0000), unused bank reg = $00.
    dw $1000|$420B, $02                                          ; Trigger DMA on channel 1
endmacro


%startfree(80)

; These can be modified to do game-specific things before and after saving and loading
; Both A and X/Y are 16-bit here
pre_load_state:
{
    LDA !MUSIC_DATA : STA !SRAM_MUSIC_DATA
    LDA !MUSIC_TRACK : STA !SRAM_MUSIC_TRACK
    LDA !SOUND_TIMER : STA !SRAM_SOUND_TIMER

    LDA !ram_slowdown_mode : STA !SRAM_SLOWDOWN_MODE

    ; Rerandomize
    LDA !sram_save_has_set_rng : BMI .done
    LDA !sram_rerandomize : BEQ .done
    LDA !CACHED_RANDOM_NUMBER : STA !SRAM_SAVED_RNG
    LDA !FRAME_COUNTER : STA !SRAM_SAVED_FRAME_COUNTER
    LDA !ENEMY_MAIN_LOOP_COUNTER : STA !SRAM_SAVED_ENEMY_COUNTER
    LDA !ram_seed_X : STA !sram_seed_X
    LDA !ram_seed_Y : STA !sram_seed_Y

  .done
    RTS
}

post_load_state:
{
    JSR post_load_music

    ; Reload OOB tile viewer if enabled
    LDA !ram_sprite_feature_flags : BIT !SPRITE_OOB_WATCH : BEQ .tileviewerDone
    JSL upload_sprite_oob_tiles
  .tileviewerDone

    ; Reload BG3 GFX if minimap setting changed
    LDA !ram_minimap : CMP !SRAM_SAVED_MINIMAP : BEQ .minimapDone
    JSL cm_transfer_original_tileset
    LDA !ram_minimap : BEQ .disableMinimap
    ; Enabled minimap, clear stale tiles
    LDA !IH_BLANK
    STA !HUD_TILEMAP+$3A : STA !HUD_TILEMAP+$7A : STA !HUD_TILEMAP+$BA
    LDA #$2C1E ; minimap border
    STA !HUD_TILEMAP+$46 : STA !HUD_TILEMAP+$86 : STA !HUD_TILEMAP+$C6
    BRA .minimapDone
  .disableMinimap
    LDA !IH_BLANK : STA !HUD_TILEMAP+$7C : STA !HUD_TILEMAP+$7E
  .minimapDone

    ; Reload custom HUD number GFX
    JSL overwrite_HUD_numbers

    LDA !SRAM_SLOWDOWN_MODE : STA !ram_slowdown_mode
    TDC : STA !ram_slowdown_frames
    STA !ram_slowdown_controller_1 : STA !ram_slowdown_controller_2

    ; Rerandomize
    LDA !sram_save_has_set_rng : BMI .randomizeOnLoad
    LDA !sram_rerandomize : BEQ .randomizeOnLoad
    LDA !SRAM_SAVED_RNG : STA !CACHED_RANDOM_NUMBER
    LDA !SRAM_SAVED_FRAME_COUNTER : STA !FRAME_COUNTER
    LDA !SRAM_SAVED_ENEMY_COUNTER : STA !ENEMY_MAIN_LOOP_COUNTER
    LDA !sram_seed_X : STA !ram_seed_X
    LDA !sram_seed_Y : STA !ram_seed_Y
    JSL MenuRNG ; rerandomize hack RNG

  .randomizeOnLoad
    ; Randomize energy/ammo?
    LDA !sram_loadstate_rando_enable : BEQ .done
    JSL RandomizeOnLoad

  .done
    JSL init_wram_based_on_sram

    ; Freeze inputs if necessary
    LDA !ram_freeze_on_load : BEQ .return
    LDA !ram_slowdown_mode : BNE .return
    LDA !SLOWDOWN_PAUSED : STA !ram_slowdown_mode
    INC : STA !ram_slowdown_controller_1 : STA !ram_slowdown_controller_2
    INC : STA !ram_slowdown_frames
    ; Preserve segment timer during freeze
    LDA !ram_seg_rt_frames : STA !SRAM_SEG_TIMER_F
    LDA !ram_seg_rt_seconds : STA !SRAM_SEG_TIMER_S
    LDA !ram_seg_rt_minutes : STA !SRAM_SEG_TIMER_M

  .return
    RTS
}

post_load_music:
{
    JSL stop_all_sounds

    LDY !MUSIC_TRACK
    LDA !MUSIC_QUEUE_NEXT : CMP !MUSIC_QUEUE_START : BEQ .music_queue_empty

    DEC #2 : AND #$000E : TAX
    LDA !MUSIC_QUEUE_ENTRIES,X : BMI .queued_music_data
    TXA : TAY : CMP !MUSIC_QUEUE_START : BEQ .no_music_data

  .music_queue_data_search
    DEC #2 : AND #$000E : TAX
    LDA !MUSIC_QUEUE_ENTRIES,X : BMI .queued_music_data
    TXA : CMP !MUSIC_QUEUE_START : BNE .music_queue_data_search

  .no_music_data
    LDA !sram_music_toggle : CMP #$0002 : BPL .fast_off_preset_off

    ; No data found in queue, check if we need to insert it
    LDA !SRAM_MUSIC_DATA : CMP !MUSIC_DATA : BEQ .music_queue_increase_timer

    ; Insert queued music data
    DEX #2 : TXA : AND #$000E : TAX
    LDA #$FF00 : CLC : ADC !MUSIC_DATA : STA !MUSIC_QUEUE_ENTRIES,X
    LDA #$0008 : STA !MUSIC_QUEUE_TIMERS,X

  .queued_music_data
    LDA !sram_music_toggle : CMP #$0002 : BMI .queued_music_data_clear_track

    ; There is music data in the queue, assume it was loaded
    LDA !MUSIC_QUEUE_ENTRIES,X : STA !MUSIC_DATA
    BRA .fast_off_preset_off

  .music_queue_empty
    LDA !sram_music_toggle : CMP #$0002 : BPL .fast_off_preset_off
    LDA !SRAM_MUSIC_DATA : CMP !MUSIC_DATA : BNE .clear_track_load_data
    JMP .check_track

  .clear_track_load_data
    TDC : JSL !MUSIC_ROUTINE
    LDA #$FF00 : CLC : ADC !MUSIC_DATA : JSL !MUSIC_ROUTINE
    BRA .load_track

  .fast_off_preset_off
    ; Treat music as already loaded
    STZ !MUSIC_QUEUE_TIMERS : STZ !MUSIC_QUEUE_TIMERS+$2
    STZ !MUSIC_QUEUE_TIMERS+$4 : STZ !MUSIC_QUEUE_TIMERS+$6
    STZ !MUSIC_QUEUE_TIMERS+$8 : STZ !MUSIC_QUEUE_TIMERS+$A
    STZ !MUSIC_QUEUE_TIMERS+$C : STZ !MUSIC_QUEUE_TIMERS+$E
    STZ !MUSIC_QUEUE_NEXT : STZ !MUSIC_QUEUE_START
    STZ !MUSIC_ENTRY : STZ !MUSIC_TIMER
    STZ !SOUND_TIMER : STY !MUSIC_TRACK
    BRA .done

  .music_queue_increase_timer
    ; Data is correct, but we may need to increase our sound timer
    LDA !SRAM_SOUND_TIMER : CMP !MUSIC_TIMER : BMI .done
    STA !MUSIC_TIMER : STA !SOUND_TIMER
    BRA .done

  .queued_music_data_clear_track
    ; Insert clear track before queued music data and start queue there
    DEX #2 : TXA : AND #$000E : STA !MUSIC_QUEUE_START : TAX
    STZ !MUSIC_QUEUE_ENTRIES,X : STZ !MUSIC_ENTRY

    ; Clear all timers before this point
  .music_clear_timer_loop
    TXA : DEC #2 : AND #$000E : TAX
    STZ !MUSIC_QUEUE_TIMERS,X : CPX !MUSIC_QUEUE_NEXT : BNE .music_clear_timer_loop

    ; Set timer on the clear track command
    LDX !MUSIC_QUEUE_START

  .queued_music_prepare_set_timer
    LDA !SRAM_SOUND_TIMER : BNE .queued_music_set_timer
    INC

  .queued_music_set_timer
    STA !MUSIC_QUEUE_TIMERS,X : STA !SOUND_TIMER : STA !MUSIC_TIMER
    BRA .done

  .check_track
    LDA !SRAM_MUSIC_TRACK : CMP !MUSIC_TRACK : BEQ .done

  .load_track
    LDA !MUSIC_TRACK : JSL !MUSIC_ROUTINE

  .done
    RTS
}

; These restored registers are game-specific and needs to be updated for different games
register_restore_return:
{
    %a8()
    LDA !REG_4200_NMI : STA $4200
    LDA #$0F : STA $13 : STA $2100
    RTL
}

save_state:
{
    %ai8()
    TDC : PHA : PLB

    TAX : TXY
  .save_dma_regs
    ; Store DMA registers to SRAM
    LDA $4300,X : STA !SRAM_DMA_BANK,X
    INX
    INY : CPY #$0B : BNE .save_dma_regs
    CPX #$7B : BEQ .done
    TXA : CLC : ADC #$05 : TAX
    LDY #$00
    BRA .save_dma_regs

  .done
    %ai16()
    LDX #save_write_table
    ; fallthrough to run_vm
}

run_vm:
{
    PHK : PLB
    JMP vm
}

save_write_table:
    ; Turn PPU off
    dw $1000|$2100, $80
    dw $1000|$4200, $00
    ; Single address, B bus -> A bus.  B address = reflector to WRAM ($2180).
    dw $0000|$4310, $8080  ; direction = B->A, byte reg, B addr = $2180

    ; Copy WRAM segments, uses $710000-$747FFF
    %wram_to_sram($7E0000, $8000, $710000)
    %wram_to_sram($7E8000, $8000, $720000)
    %wram_to_sram($7F0000, $8000, $730000)
    %wram_to_sram($7F8000, $8000, $740000)

    ; Address pair, B bus -> A bus.  B address = VRAM read ($2139).
    dw $0000|$4310, $3981  ; direction = B->A, word reg, B addr = $2139
    dw $1000|$2115, $0080  ; VRAM address increment mode.

    ; Copy VRAM segments, uses $750000-$767FFF
    %vram_to_sram($0000, $8000, $750000)
    %vram_to_sram($8000, $8000, $760000)

    ; Copy CGRAM, uses SRAM $772000-$7721FF
    dw $1000|$2121, $00    ; CGRAM address
    dw $0000|$4310, $3B80  ; direction = B->A, byte reg, B addr = $213B
    dw $0000|$4312, $2000  ; A addr = $xx2000
    dw $0000|$4314, $0077  ; A addr = $77xxxx, size = $xx00
    dw $0000|$4316, $0002  ; size = $02xx ($0200), unused bank reg = $00.
    dw $1000|$420B, $02    ; Trigger DMA on channel 1

    ; Done
    dw $0000, save_return

save_return:
{
    PEA $0000 : PLB : PLB

    %ai16()
    LDA !ram_room_has_set_rng : BMI .has_set_rng
    LDA !sram_save_has_set_rng : AND #$7FFF : STA !sram_save_has_set_rng
    BRA .continue

  .has_set_rng
    LDA !sram_save_has_set_rng : ORA #$8000 : STA !sram_save_has_set_rng

  .continue
    LDA !ram_minimap : STA !SRAM_SAVED_MINIMAP
    LDA !SAFEWORD : STA !SRAM_SAVED_STATE

    TSC : STA !SRAM_SAVED_SP
    JMP register_restore_return
}

load_state:
{
    JSR pre_load_state

    %a8()
    TDC : PHA : PLB
    LDX #load_write_table
    JMP run_vm
}

load_write_table:
    ; Disable HDMA
    dw $1000|$420C, $00
    ; Turn PPU off
    dw $1000|$2100, $80
    dw $1000|$4200, $00
    ; Single address, A bus -> B bus.  B address = reflector to WRAM ($2180).
    dw $0000|$4310, $8000  ; direction = A->B, B addr = $2180

    ; Copy WRAM segments, uses $710000-$747FFF
    %sram_to_wram($7E0000, $8000, $710000)
    %sram_to_wram($7E8000, $8000, $720000)
    %sram_to_wram($7F0000, $8000, $730000)
    %sram_to_wram($7F8000, $8000, $740000)

    ; Address pair, A bus -> B bus.  B address = VRAM write ($2118).
    dw $0000|$4310, $1801  ; direction = A->B, B addr = $2118
    dw $1000|$2115, $0080  ; VRAM address increment mode.

    ; Copy VRAM segments, uses $750000-$767FFF
    %sram_to_vram($0000, $8000, $750000)
    %sram_to_vram($8000, $8000, $760000)

    ; Copy CGRAM, uses SRAM $772000-$7721FF
    dw $1000|$2121, $00    ; CGRAM address
    dw $0000|$4310, $2200  ; direction = A->B, byte reg, B addr = $2122
    dw $0000|$4312, $2000  ; A addr = $xx2000
    dw $0000|$4314, $0077  ; A addr = $77xxxx, size = $xx00
    dw $0000|$4316, $0002  ; size = $02xx ($0200), unused bank reg = $00.
    dw $1000|$420B, $02    ; Trigger DMA on channel 1

    ; Done
    dw $0000, load_return

load_return:
{
    %ai16()
    LDA !SRAM_SAVED_SP : TCS

    ; rewrite inputs so that holding load won't keep loading
    TDC : STA !IH_CONTROLLER_PRI : STA !IH_CONTROLLER_SEC
    DEC : STA !IH_CONTROLLER_PRI_NEW : STA !IH_CONTROLLER_SEC_NEW
    STA !IH_CONTROLLER_PRI_PREV : STA !IH_CONTROLLER_SEC_PREV

    ; clear frame held counters
    TDC
    STA !WRAM_MENU_START+$B8 : STA !WRAM_MENU_START+$BA
    STA !WRAM_MENU_START+$BC : STA !WRAM_MENU_START+$BE
    STA !WRAM_MENU_START+$C0 : STA !WRAM_MENU_START+$C2
    STA !WRAM_MENU_START+$C4 : STA !WRAM_MENU_START+$C6
    STA !WRAM_MENU_START+$C8 : STA !WRAM_MENU_START+$CA
    STA !WRAM_MENU_START+$CC : STA !WRAM_MENU_START+$CE

    %ai8()
    PHA : PLB

    TAX : TXY
  .load_dma_regs
    ; Load DMA registers from SRAM
    LDA !SRAM_DMA_BANK,X : STA $4300,X
    INX
    INY : CPY #$0B : BNE .load_dma_regs
    CPX #$7B : BEQ .load_dma_regs_done
    TXA : CLC : ADC #$05 : TAX
    LDY #$00
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
    %ai16()
    ; Read address to write to
    LDA.w $0000,X : BEQ .vm_done
    TAY
    INX #2
    ; Check for byte mode
    BIT.w #$1000 : BEQ .vm_word_mode
    AND.w #$EFFF : TAY
    %a8()
  .vm_word_mode
    ; Read value
    LDA.w $0000,X
    INX #2
  .vm_write
    ; Check for read mode (high bit of address)
    CPY.w #$8000 : BCS .vm_read
    STA $0000,Y
    BRA vm
  .vm_read
    ; "Subtract" $8000 from Y by taking advantage of bank wrapping.
    LDA $8000,Y
    BRA vm
  .vm_done
    ; A, X and Y are 16-bit at exit.
    ; Return to caller.  The word in the table after the terminator is the
    ; code address to return to.
    JMP ($0002,X)
}

%endfree(80)

