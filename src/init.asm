
; hijack, runs as game is starting, JSR to RAM initialization to avoid bad values
org $808455
    JML init_code


; hijack when clearing bank 7E
if !PRESERVE_WRAM_DURING_SPACETIME
org $808490
    PHA
    LDX #$3FFE
  .clear_bank_loop
    STZ $0000,X
    STZ $4000,X
    STZ $8000,X
    STZ $C000,X
    DEX : DEX
    BPL .clear_bank_loop
    JSL init_nonzero_wram
    PLA
    BRA .end_clear_bank

warnpc $8084AF

org $8084AF
  .end_clear_bank
endif


org $81F000
print pc, " init start"

init_code:
{
    REP #$30
    PHA

    ; Initialize RAM (Bank 7E required)
    LDA #$0000 : STA !ram_slowdown_mode

    ; Check if we should initialize SRAM
    LDA !sram_initialized : CMP #!SRAM_VERSION : BEQ .sram_initialized
    JSR init_sram

  .sram_initialized
if !PRESERVE_WRAM_DURING_SPACETIME
    ; WRAM located in bank 7E, clear it later
else
    ; Clear WRAM
    LDA #$0000
    LDX !WRAM_SIZE-2
  .wram_loop
    STA !WRAM_START,X
    DEX : DEX : BPL .wram_loop

    JSL init_nonzero_wram
endif

    PLA
    ; Execute overwritten logic and return
if !FEATURE_PAL
    JSL $8B90EF
else
    JSL $8B9146
endif
    JML $808459
}

init_nonzero_wram:
{
    JSL init_wram_based_on_sram

    ; RAM $7E0000 fluctuates so it is not a good default value
    LDA #$0F8C : STA !ram_watch_left        ; Enemy HP
    LDA #$09C2 : STA !ram_watch_right       ; Samus HP

    ; Check if any less common controller shortcuts are configured
    JML GameModeExtras
}

init_sram:
{
    CMP #$0009 : BEQ .sram_upgrade_9toA
    CMP #$000A : BEQ .sram_upgrade_AtoB
    CMP #$000B : BEQ .sram_upgrade_BtoC
    CMP #$000C : BEQ .sram_upgrade_CtoD
    CMP #$000D : BEQ .sram_upgrade_DtoE
    JSR init_sram_upto9

  .sram_upgrade_9toA
    LDA #$0000 : STA !sram_ctrl_toggle_tileviewer
    LDA #$0000 : STA !sram_status_icons
    LDA #$0000 : STA !sram_suit_properties

  .sram_upgrade_AtoB
    LDA #$0000 : STA !sram_ctrl_update_timers

  .sram_upgrade_BtoC
    LDA #$0000 : STA !sram_top_display_mode
    LDA #$0001 : STA !sram_healthalarm
    LDA #$0000 : STA !sram_room_layout
    LDA #$0003 : STA !sram_cutscenes

  .sram_upgrade_CtoD
    LDA #$0000 : STA !sram_preset_options
    LDA #$0000 : STA !sram_lag_counter_mode

  .sram_upgrade_DtoE
    LDA #$0000 : STA !sram_fast_doors

    LDA #!SRAM_VERSION : STA !sram_initialized
    RTS
}

init_sram_upto9:
{
    ; Controllers
    LDA #$3000 : STA !sram_ctrl_menu                  ; Start + Select
    LDA #$6010 : STA !sram_ctrl_save_state            ; Select + Y + R
    LDA #$6020 : STA !sram_ctrl_load_state            ; Select + Y + L
    LDA #$5020 : STA !sram_ctrl_load_last_preset      ; Start + Y + L
    LDA #$0000 : STA !sram_ctrl_full_equipment
    LDA #$0000 : STA !sram_ctrl_kill_enemies
    LDA #$0000 : STA !sram_ctrl_reset_segment_timer
    LDA #$0000 : STA !sram_ctrl_reset_segment_later
    LDA #$0000 : STA !sram_ctrl_random_preset
    LDA #$0000 : STA !sram_ctrl_save_custom_preset
    LDA #$0000 : STA !sram_ctrl_load_custom_preset
    LDA #$0000 : STA !sram_ctrl_inc_custom_preset
    LDA #$0000 : STA !sram_ctrl_dec_custom_preset

    ; Input Cheat Sheet  ($4218)
    ; $8000 = B
    ; $4000 = Y
    ; $2000 = Select
    ; $1000 = Start
    ; $0800 = Up
    ; $0400 = Down
    ; $0200 = Left
    ; $0100 = Right
    ; $0080 = A
    ; $0040 = X
    ; $0020 = L
    ; $0010 = R

    ; Features
    LDA #$0015 : STA !sram_artificial_lag
    LDA #$0001 : STA !sram_rerandomize
    LDA #$0000 : STA !sram_fanfare_toggle
    LDA #$0001 : STA !sram_music_toggle
    LDA #$0000 : STA !sram_frame_counter_mode
    LDA #$0000 : STA !sram_display_mode
    LDA #$0000 : STA !sram_last_preset
    LDA #$0000 : STA !sram_save_has_set_rng
    LDA #$0000 : STA !sram_preset_category
    LDA #$0000 : STA !sram_custom_preset_slot
    LDA #$0000 : STA !sram_room_strat
    LDA #$0000 : STA !sram_sprite_prio_flag
    LDA #$000A : STA !sram_metronome_tickrate
    LDA #$0002 : STA !sram_metronome_sfx
    RTS
}

print pc, " init end"
warnpc $81FF00 ; Special thanks
