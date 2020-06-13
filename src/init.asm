!SRAM_VERSION = $0003


; hijack, runs as game is starting, JSR to RAM initialization to avoid bad values
org $808455
    JML init_code


org $81F000
print pc, " init start"
init_code:
{
    REP #$30
    PHA

    ; Clear WRAM
    {
        ; We mostly use $7FFB00 and upward, so just zero everything
        LDA #$0000
        LDX #$04FF
      .loop
        STA $7FFB00,X
        DEX : DEX : BPL .loop

        LDA #$0000
        STA !ram_slowdown_mode
    }

    ; Check if we should initialize SRAM
    LDA !sram_initialized : CMP #!SRAM_VERSION : BEQ .sram_initialized

    JSR init_sram

  .sram_initialized
    PLA
    JSL $8B9146
    JML $808459
}

init_sram:
{
    ; Controllers
    LDA #$3000 : STA !sram_ctrl_menu        ; Start + Select
    LDA #$6010 : STA !sram_ctrl_save_state  ; Select + Y + R
    LDA #$6020 : STA !sram_ctrl_load_state  ; Select + Y + L
    LDA #$5020 : STA !sram_ctrl_load_last_preset  ; Start + Y + L
    LDA #$0000 : STA !sram_ctrl_full_equipment
    LDA #$0000 : STA !sram_ctrl_kill_enemies
    LDA #$0000 : STA !sram_ctrl_reset_segment_timer

    ; Input Cheat Sheet  (#$XXYY)
    ; $4218  (YY)
    ; $80 = A
    ; $40 = X
    ; $20 = L
    ; $10 = R
    ; 
    ; $4219  (XX)
    ; $80 = B
    ; $40 = Y
    ; $20 = Select
    ; $10 = Start
    ; $08 = Up
    ; $04 = Down
    ; $02 = Left
    ; $01 = Right

    ; Features
    LDA #$0016 : STA !sram_artificial_lag
    LDA #$0001 : STA !sram_rerandomize
    LDA #$0000 : STA !sram_fanfare_toggle
    LDA #$0001 : STA !sram_music_toggle
    LDA #$0000 : STA !sram_frame_counter_mode
    LDA #$0000 : STA !sram_display_mode
    LDA #$0000 : STA !sram_last_preset
    LDA #$0000 : STA !sram_save_has_set_rng
    LDA #$0000 : STA !sram_preset_category
    
    LDA #!SRAM_VERSION : STA !sram_initialized
    RTS
}

print pc, " init end"
