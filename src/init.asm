
; hijack, runs as game is starting, JSR to RAM initialization to avoid bad values
org $808455
    JML init_code


; hijack when clearing bank 7E
org $808490
clear_bank:
    ; Save quickboot state since it needs to distinguish between a soft and hard reset
    LDY.w !ram_quickboot_spc_state
    LDX #$3FFE
  .loop
    STZ $0000,X
    STZ $4000,X
    STZ $8000,X
    STZ $C000,X
    DEX #2 : BPL .loop
    JSL init_nonzero_wram
    STY.w !ram_quickboot_spc_state
    BRA .end
warnpc $8084AF

org $8084AF
  .end

org $80856E
    JML init_post_boot


org $81F000
print pc, " init start"

init_code:
{
    %ai16()
    PHA

    ; Initialize RAM (Bank 7E required)
    TDC : STA !ram_slowdown_mode

    ; Check if we should initialize SRAM
    LDA !sram_initialized : CMP !SRAM_VERSION : BEQ .sram_initialized
    BCC .sram_init_routine
    TDC
  .sram_init_routine
    ASL : TAX
    JSR (init_sram_routine_table,X)

  .sram_initialized
if !FEATURE_SD2SNES
    JSL validate_sram_for_savestates
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
    ; RAM $7E0000 fluctuates so it is not a good default value
    LDA #!ENEMY_HP : STA !ram_watch_left
    LDA #!SAMUS_HP : STA !ram_watch_right
    LDA #$007E : STA !ram_watch_bank
    LDA !sram_seed_X : STA !ram_seed_X
    LDA !sram_seed_Y : STA !ram_seed_Y

    TDC
    STA !ram_watch_left_index : STA !ram_watch_right_index
    STA !ram_cm_watch_enemy_side
    STA !ram_cm_watch_enemy_property : STA !ram_cm_watch_enemy_index

    LDA #$0001 : STA !ram_cm_dummy_on
    STA !ram_cm_sfxlib1 : STA !ram_cm_sfxlib2 : STA !ram_cm_sfxlib3

    JML init_wram_based_on_sram
}

init_sram_routine_table:
    dw init_sram ; Version 0 treated same as 0-9
    dw init_sram ; Version 1 treated same as 0-9
    dw init_sram ; Version 2 treated same as 0-9
    dw init_sram ; Version 3 treated same as 0-9
    dw init_sram ; Version 4 treated same as 0-9
    dw init_sram ; Version 5 treated same as 0-9
    dw init_sram ; Version 6 treated same as 0-9
    dw init_sram ; Version 7 treated same as 0-9
    dw init_sram ; Version 8 treated same as 0-9
    dw init_sram ; Version 9 treated same as 0-9
    dw init_sram_upgrade_9toA
    dw init_sram_upgrade_AtoB
    dw init_sram_upgrade_BtoC
    dw init_sram_upgrade_CtoD
    dw init_sram_upgrade_DtoE
    dw init_sram_upgrade_EtoF
    dw init_sram_upgrade_Fto10
    dw init_sram_upgrade_10to11
    dw init_sram_upgrade_11to12
    dw init_sram_upgrade_12to13
    dw init_sram_upgrade_13to14
    dw init_sram_upgrade_14to15
    dw init_sram_upgrade_15to16
    dw init_sram_upgrade_16to17
    dw init_sram_upgrade_17to18

init_sram:
{
    JSL init_sram_controller_shortcuts
    LDA #$0015 : STA !sram_artificial_lag
    TDC : STA !sram_fanfare
    STA !sram_frame_counter_mode
    STA !sram_display_mode
    STA !sram_last_preset
    STA !sram_save_has_set_rng
    STA !sram_preset_category
    STA !sram_custom_preset_slot
    STA !sram_room_strat
    STA !sram_sprite_prio_flag
    INC : STA !sram_rerandomize
    STA !sram_music_toggle
    INC : STA !sram_metronome_sfx
    LDA #$000A : STA !sram_metronome_tickrate

  .upgrade_9toA
    TDC : STA !sram_ctrl_toggle_tileviewer
    STA !sram_status_icons
    STA !sram_suit_properties

  .upgrade_AtoB
    TDC : STA !sram_ctrl_update_timers

  .upgrade_BtoC
    TDC : STA !sram_top_display_mode
    STA !sram_room_layout
    INC : STA !sram_healthalarm

if !FEATURE_DEV
    LDA !CUTSCENE_QUICKBOOT|$0003 : STA !sram_cutscenes
else
    LDA #$0003 : STA !sram_cutscenes
endif

  .upgrade_CtoD
    TDC : STA !sram_preset_options
    STA !sram_lag_counter_mode

  .upgrade_DtoE
    TDC : STA !sram_fast_doors

  .upgrade_EtoF
    TDC : STA !sram_suppress_flashing

  .upgrade_Fto10
    TDC : STA !sram_fast_elevators

  .upgrade_10to11
    TDC : STA !sram_custom_damage
    STA !sram_custom_charge_damage
    STA !sram_custom_uncharge_damage
    STA !sram_water_physics
    STA !sram_double_jump

  .upgrade_11to12
    JSL init_menu_customization
    TDC : STA !sram_ctrl_auto_save_state

  .upgrade_12to13
    TDC : STA !sram_custom_header

  .upgrade_13to14
    ; "skip fanfares, but adjust timer" option has been replaced with "speedrun" timer mode
    LDA !sram_fanfare : BIT #$0002 : BEQ .upgrade_14to15
    LDA !sram_fanfare : AND #$0001 : STA !sram_fanfare
    LDA !sram_frame_counter_mode : BNE .upgrade_14to15
    LDA !FRAME_COUNTER_ADJUST_REALTIME : STA !sram_frame_counter_mode

  .upgrade_14to15
    TDC : STA !sram_bomb_torizo_door

  .upgrade_15to16
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

  .upgrade_16to17
    TDC : STA !sram_spin_lock : STA !sram_ctrl_toggle_spin_lock
    DEC : STA !sram_map_grid_alignment

  .upgrade_17to18
    TDC : STA !sram_number_gfx_choice

    LDA !SRAM_VERSION : STA !sram_initialized
    RTS
}

init_sram_controller_shortcuts:
{
    ; branch called by ctrl_reset_defaults in mainmenu.asm
    LDA #$3000 : STA !sram_ctrl_menu                  ; Start + Select
    LDA #$6010 : STA !sram_ctrl_save_state            ; Select + Y + R
    LDA #$6020 : STA !sram_ctrl_load_state            ; Select + Y + L
    LDA #$5020 : STA !sram_ctrl_load_last_preset      ; Start + Y + L
    TDC : STA !sram_ctrl_full_equipment
    STA !sram_ctrl_kill_enemies
    STA !sram_ctrl_reset_segment_timer
    STA !sram_ctrl_reset_segment_later
    STA !sram_ctrl_random_preset
    STA !sram_ctrl_save_custom_preset
    STA !sram_ctrl_load_custom_preset
    STA !sram_ctrl_inc_custom_preset
    STA !sram_ctrl_dec_custom_preset
    ; duplicates for reset defaults routine
    STA !sram_ctrl_toggle_tileviewer
    STA !sram_ctrl_update_timers
    STA !sram_ctrl_auto_save_state
    STA !sram_ctrl_toggle_spin_lock
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
    LDA !SRAM_VERSION : STA !sram_seed_Y

  .soundFX
    ; branch called by sfx_reset in customizemenu.asm
    LDA #$0037 : STA !sram_customsfx_move
    LDA #$0038 : STA !sram_customsfx_toggle
    LDA #$002A : STA !sram_customsfx_number
    LDA #$0028 : STA !sram_customsfx_confirm
    LDA #$0007 : STA !sram_customsfx_goback
    RTL
}

init_post_boot:
{
    ; Load the last selected file slot (so that the user's controller
    ; bindings will apply if they load a preset without loading a save file)
    LDA $701FEC : STA !CURRENT_SAVE_FILE
    CMP #$0003 : BCC .valid_index
    TDC
  .valid_index
    JSL $818085 ; Load save file
    BCC .check_quickboot

    ; No valid save, load a new file (for default controller bindings)
    JSR $B2CB

  .check_quickboot
    JSL init_suit_properties_ram
    ; Is quickboot enabled?
    LDA !sram_cutscenes : AND !CUTSCENE_QUICKBOOT : BEQ .done

    ; Boot to the infohud menu
    JML cm_boot

  .done
    JML $82893D ; hijacked code: start main game loop
}

print pc, " init end"
warnpc $81FF00 ; Special thanks
