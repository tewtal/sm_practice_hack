
; hijack, runs as game is starting, JSR to RAM initialization to avoid bad values
org $808455
    JML init_code


; hijack when clearing bank 7E
org $808490
    ; Save quickboot state since it needs to distinguish between a soft and hard reset
    LDY.w !ram_quickboot_spc_state
    LDX #$3FFE
  .clear_bank_loop
    STZ $0000,X
    STZ $4000,X
    STZ $8000,X
    STZ $C000,X
    DEX : DEX
    BPL .clear_bank_loop
    JSL init_nonzero_wram

    STY.w !ram_quickboot_spc_state
    BRA .end_clear_bank


warnpc $8084AF

org $8084AF
  .end_clear_bank

org $80856E
    JML init_post_boot


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
    LDA #!ENEMY_HP : STA !ram_watch_left
    LDA #!SAMUS_HP : STA !ram_watch_right
    LDA #$007E : STA !ram_watch_bank

    LDA !sram_seed_X : STA !ram_seed_X
    LDA !sram_seed_Y : STA !ram_seed_Y

    LDA #$0001 : STA !ram_cm_dummy_on
    RTL
}

init_sram:
{
    ; check SRAM version from !sram_initialized
    CMP #$000F : BEQ .sram_upgrade_Fto10
    BPL .sram_upgrade_1xto1x
    CMP #$0009 : BEQ .sram_upgrade_9toA
    CMP #$000A : BEQ .sram_upgrade_AtoB
    CMP #$000B : BEQ .sram_upgrade_BtoC
    CMP #$000C : BEQ .sram_upgrade_CtoD
    CMP #$000D : BEQ .sram_upgrade_DtoE
    CMP #$000E : BEQ .sram_upgrade_EtoF

  .sram_upgrade_upto9
    JSL init_sram_upto9

  .sram_upgrade_9toA
    TDC : STA !sram_ctrl_toggle_tileviewer
    STA !sram_status_icons
    STA !sram_suit_properties

  .sram_upgrade_AtoB
    TDC : STA !sram_ctrl_update_timers

  .sram_upgrade_BtoC
    TDC : STA !sram_top_display_mode
    STA !sram_room_layout
    INC : STA !sram_healthalarm

if !FEATURE_DEV
    LDA !CUTSCENE_QUICKBOOT|$0003 : STA !sram_cutscenes
else
    LDA #$0003 : STA !sram_cutscenes
endif

  .sram_upgrade_CtoD
    TDC : STA !sram_preset_options
    STA !sram_lag_counter_mode

  .sram_upgrade_DtoE
    TDC : STA !sram_fast_doors

  .sram_upgrade_EtoF
    TDC : STA !sram_suppress_flashing

  .sram_upgrade_Fto10
    TDC : STA !sram_fast_elevators
    BRA .sram_upgrade_10to11

  .sram_upgrade_1xto1x
    CMP #$0010 : BEQ .sram_upgrade_10to11
    CMP #$0011 : BEQ .sram_upgrade_11to12
    CMP #$0012 : BEQ .sram_upgrade_12to13
    CMP #$0013 : BEQ .sram_upgrade_13to14
    CMP #$0014 : BEQ .sram_upgrade_14to15
    CMP #$0015 : BEQ .sram_upgrade_15to16
    BRA .sram_upgrade_upto9

  .sram_upgrade_10to11
    TDC : STA !sram_custom_damage
    STA !sram_custom_charge_damage
    STA !sram_custom_uncharge_damage
    STA !sram_water_physics
    STA !sram_double_jump

  .sram_upgrade_11to12
    JSL init_menu_customization
    TDC : STA !sram_ctrl_auto_save_state

  .sram_upgrade_12to13
    TDC : STA !sram_custom_header

  .sram_upgrade_13to14
    ; "skip fanfares, but adjust timer" option has been replaced with "speedrun" timer mode
    LDA !sram_fanfare : BIT #$0002 : BEQ .sram_upgrade_14to15
    LDA !sram_fanfare : AND #$0001 : STA !sram_fanfare
    LDA !sram_frame_counter_mode : BNE .sram_upgrade_14to15
    LDA !FRAME_COUNTER_ADJUST_REALTIME : STA !sram_frame_counter_mode

  .sram_upgrade_14to15
    TDC : STA !sram_bomb_torizo_door

  .sram_upgrade_15to16
    TDC : STA !sram_door_display_mode
    STA !sram_cm_font : STA !sram_presetequiprando_beampref
    STA !sram_display_mode_reward
    LDA !CTRL_Y : STA !sram_cm_fast_scroll_button
    LDA !PRESET_EQUIP_RANDO_INIT : STA !sram_presetequiprando
    LDA #$000E : STA !sram_presetequiprando_max_etanks
    LDA #$0004 : STA !sram_presetequiprando_max_reserves
    LDA #$002E : STA !sram_presetequiprando_max_missiles
    LDA #$000A : STA !sram_presetequiprando_max_supers
    LDA #$000A : STA !sram_presetequiprando_max_pbs

    LDA #!SRAM_VERSION : STA !sram_initialized
    RTS
}

init_sram_upto9:
{
    LDA #$0015 : STA !sram_artificial_lag
    LDA #$0001 : STA !sram_rerandomize
    LDA #$0000 : STA !sram_fanfare
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

  .controller_shortcuts
    ; branch called by ctrl_reset_defaults in mainmenu.asm
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
    ; duplicates for reset defaults routine
    LDA #$0000 : STA !sram_ctrl_toggle_tileviewer
    LDA #$0000 : STA !sram_ctrl_update_timers
    LDA #$0000 : STA !sram_ctrl_auto_save_state
    RTL
}

init_menu_customization:
{
    LDA #$0002 : STA !sram_custompalette_profile
    LDA #$7277 : STA !sram_palette_border
    LDA #$48F3 : STA !sram_palette_headeroutline
    LDA #$7FFF : STA !sram_palette_text
    LDA #$0000 : STA !sram_palette_background
    LDA #$0000 : STA !sram_palette_numoutline
    LDA #$7FFF : STA !sram_palette_numfill
    LDA #$4376 : STA !sram_palette_toggleon
    LDA #$761F : STA !sram_palette_seltext
    LDA #$0000 : STA !sram_palette_seltextbg
    LDA #$0000 : STA !sram_palette_numseloutline
    LDA #$761F : STA !sram_palette_numsel

    LDA #$0001 : STA !sram_menu_background
    LDA #$0002 : STA !sram_cm_scroll_delay

    ; chosen seeds will automatically change over time, and will never be zero
    LDA.w #init_wram_based_on_sram : STA !sram_seed_X
    LDA.w #!SRAM_VERSION : STA !sram_seed_Y

  .soundFX
    ; branch called by sfx_reset in customizemenu.asm
    LDA #$0037 : STA !sram_customsfx_move
    LDA #$002A : STA !sram_customsfx_toggle
    LDA #$0038 : STA !sram_customsfx_number
    LDA #$0028 : STA !sram_customsfx_confirm
    LDA #$0007 : STA !sram_customsfx_goback
    RTL
}

init_post_boot:
{
    ; Load the last selected file slot (so that the user's controller
    ; bindings will apply if they load a preset without loading a save file)
    LDA $701FEC     ; Selected save slot
    STA !CURRENT_SAVE_FILE
    CMP #$0003 : BCC .valid_index
    LDA #$0000
  .valid_index
    JSL $818085     ; Load save file
    BCC .check_quickboot

    ; No valid save; load a new file (for default controller bindings)
    JSR $B2CB

  .check_quickboot
    ; Is quickboot enabled?
    LDA !sram_cutscenes : AND !CUTSCENE_QUICKBOOT : BEQ .done

    ; Boot to the infohud menu
    JML cm_boot

  .done
    JML $82893D     ; hijacked code: start main game loop
}

print pc, " init end"
warnpc $81FF00 ; Special thanks
