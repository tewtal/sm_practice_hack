
; hijack, runs as game is starting, JSR to RAM initialization to avoid bad values
org $808455
    JML init_code

; hijack when clearing bank 7E
org $808490
clear_bank:
    ; This loop is based on WRAM_PERSIST_START
    LDX #$3F66
  .loop
    STZ $0000,X
    STZ $3F68,X
    STZ $7ED0,X
    STZ $BE38,X
    DEX #2 : BPL .loop
    JSL init_wram_based_on_sram
    BRA .end
warnpc $8084AF

org $8084AF
  .end

org $80856E
    JML init_post_boot


%startfree(81)

init_code:
{
    %ai16()
    PHA

    ; Clear persistent RAM (except quickboot itself) if not already cleared
    PEA $807E : PLB
    LDA.w !ram_quickboot_spc_state : BNE .clear_loop_start

    ; Sanity check persistent RAM
    LDA.w !ram_magic_pants_enabled : ORA.w !ram_space_pants_enabled
    CMP #$0004 : BCS .clear_loop_start

    LDA.w !ram_suits_heat_damage_value : AND #$0FFF : BNE .clear_loop_start

    ; If not heat shield, then top nibble should be non-zero
    LDA !sram_suit_properties : AND !SUIT_PROPERTIES_MASK
    CMP #$0005 : BEQ .check_drop_chance_table
    LDA.w !ram_suits_heat_damage_value : BEQ .clear_loop_start

  .check_drop_chance_table
    LDA.w !ram_drop_chance_table : BEQ .persistent_cleared
    LDA.w !DROP_CHANCE_TABLE_LENGTH-1 : ASL : TAX
  .drop_table_loop
    LDA.l drop_chance_tables,X : CMP.w !ram_drop_chance_table : BEQ .persistent_cleared
    DEX #2 : BPL .drop_table_loop

  .clear_loop_start
    ; This loop is based on WRAM_PERSIST_START
    LDX #$0096
  .clear_loop
    STZ $FDA0,X
    STZ $FE38,X
    STZ $FED0,X
    STZ $FF68,X
    DEX #2 : BPL .clear_loop
    STA.w !ram_quickboot_spc_state
    JSR init_non_zero_persistent_wram
    LDA !sram_hard_reset_clears_rng : BIT #$0001 : BEQ .persistent_cleared
    JSR init_reset_rng_control

  .persistent_cleared
    ; Always clear slowdown mode
    STZ.w !ram_slowdown_mode
    PLB

    ; Check if we should initialize SRAM
    JSL validate_sram
    LDA !sram_initialized : CMP !SRAM_VERSION : BEQ .sram_initialized
    BCC .sram_init_routine
    TDC
  .sram_init_routine
    ASL : TAX
    JSR (init_sram_routine_table,X)

  .sram_initialized
    ; Execute overwritten logic
    PLA
if !FEATURE_PAL
    JSL $8B90EF
else
    JSL $8B9146
endif
    ; Here for sanity, but this code is not executed
    JML $808459
}

init_factory_reset:
{
    JSR init_sram
    JSR init_non_zero_persistent_wram
    RTL
}

init_non_zero_persistent_wram:
{
    LDA #!ENEMY_HP : STA !ram_watch_left
    LDA #!SAMUS_HP : STA !ram_watch_right
    LDA #$007E : STA !ram_watch_bank
    LDA !sram_seed_X : STA !ram_seed_X
    LDA !sram_seed_Y : STA !ram_seed_Y
    LDA #$8000 : STA !ram_cm_gmode

    ; If Map Completion preset category selected then turn minimap on
    LDA !sram_preset_category : CMP !PRESET_CATEGORY_100MAP_INDEX : BEQ .set_minimap
    CMP !PRESET_CATEGORY_SPAZERMAP_INDEX : BNE .done

  .set_minimap
    LDA #$0001 : STA !ram_minimap

  .done
    RTS
}

init_reset_rng_control:
{
    TDC : STA !sram_kraid_claw_rng : STA !sram_kraid_wait_rng
    STA !sram_draygon_rng_left : STA !sram_draygon_rng_right
    STA !sram_turret_rng : STA !sram_ridley_rng_flags
    STA !sram_ridley_rng_times_and_fireball : STA !sram_crocomire_rng
    STA !sram_phantoon_phase_rng : STA !sram_phantoon_eye_and_flames_rng
    STA !sram_botwoon_rng : STA !sram_baby_rng
    STA !sram_mb_rng : STA !sram_rng_reserved
    RTS
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
    dw init_sram_upgrade_18to19
    dw init_sram_upgrade_19to1A
    dw init_sram_upgrade_1Ato1B
    dw init_sram_upgrade_1Bto1C
    dw init_sram_upgrade_1Cto1D
    dw init_sram_upgrade_1Dto1E
    dw init_sram_upgrade_1Eto1F
    dw init_sram_upgrade_1Fto20
    dw init_sram_fail

init_sram:
{
    LDA #$0015 : STA !sram_artificial_lag
    TDC : STA !sram_fanfare
    STA !sram_frame_counter_mode
    STA !sram_display_mode
    STA !sram_last_preset_low_word
    STA !sram_save_has_set_rng
    STA !sram_custom_preset_slot
    STA !sram_room_strat
    STA !sram_sprite_prio_flag
    INC : STA !sram_rerandomize
    STA !sram_music_toggle
    INC : STA !sram_metronome_sfx
    STA !sram_preset_category
    LDA #$000A : STA !sram_metronome_tickrate

  .upgrade_9toA
    TDC : STA !sram_status_icons
    STA !sram_suit_properties

  .upgrade_AtoB
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
    TDC : STA !sram_spin_lock
    DEC : STA !sram_map_grid_alignment

  .upgrade_17to18
    TDC : STA !sram_number_gfx_choice
    STA !sram_superhud_bottom
    STA !sram_superhud_middle
    STA !sram_superhud_top
    STA !sram_infidoppler_enabled

  .upgrade_18to19
    TDC : STA !sram_random_bubble_sfx
    STA !sram_loadstate_rando_energy
    STA !sram_loadstate_rando_reserves
    STA !sram_loadstate_rando_missiles
    STA !sram_loadstate_rando_supers
    STA !sram_loadstate_rando_powerbombs
    LDA #$0384 : STA !sram_demo_timer
    LDA #$0100 : STA !sram_ceres_timer
    LDA #$0300 : STA !sram_zebes_timer

  .upgrade_19to1A
    LDA !sram_loadstate_rando_energy
    ORA !sram_loadstate_rando_reserves
    ORA !sram_loadstate_rando_missiles
    ORA !sram_loadstate_rando_supers
    ORA !sram_loadstate_rando_powerbombs
    STA !sram_loadstate_rando_enable
    JSL init_sram_controller_shortcuts

  .upgrade_1Ato1B
    TDC : STA !sram_categoryadjust_item_equip
    STA !sram_categoryadjust_item_unequip
    STA !sram_categoryadjust_beam_equip
    STA !sram_categoryadjust_beam_unequip
    STA !sram_categoryadjust_energy
    STA !sram_categoryadjust_etanks
    STA !sram_categoryadjust_reserves
    STA !sram_categoryadjust_rtanks
    STA !sram_categoryadjust_missiles
    STA !sram_categoryadjust_maxmissiles
    STA !sram_categoryadjust_supers
    STA !sram_categoryadjust_maxsupers
    STA !sram_categoryadjust_pbs
    STA !sram_categoryadjust_maxpbs
    DEC : STA !sram_categoryadjust_item_remove
    STA !sram_categoryadjust_beam_remove

  .upgrade_1Bto1C
    TDC : STA !sram_fast_pause
    STA !sram_bonk_indicators
    STA !sram_speed_booster_physics
    STA !sram_streamer_name

  .upgrade_1Cto1D
    TDC : INC : STA !sram_fast_teleport

  .upgrade_1Dto1E
    TDC : STA !sram_update_timers_ctrl_input
    LDA !UPDATE_TIMERS_ON_PRESS : STA !sram_update_timers_options

  .upgrade_1Eto1F
    JSR init_reset_rng_control
    INC : STA !sram_hard_reset_clears_rng

  .upgrade_1Fto20
    LDA !VANILLA_SPRITE_PALETTE_5_BLUE_COLOR : STA !sram_sprite_features_blue_color
    LDA !VANILLA_SPRITE_PALETTE_5_GRAPPLE_COLOR : STA !sram_sprite_features_grapple_color

    LDA !SRAM_VERSION : STA !sram_initialized
    RTS

  .fail
    BRK
}

init_sram_controller_shortcuts:
{
    TDC : TAX
  .firstLoop
    STA !sram_ctrl_shortcut_selections,X
    STA !sram_ctrl_1_shortcut_inputs,X
    STA !sram_ctrl_2_shortcut_inputs,X
    INX : INX : CPX #$001E : BMI .firstLoop
  .secondLoop
    STA !sram_ctrl_additional_selections,X
    STA !sram_ctrl_1_shortcut_inputs,X
    STA !sram_ctrl_2_shortcut_inputs,X
    INX : INX : CPX #$0030 : BMI .secondLoop
  .thirdLoop
    STA !sram_ctrl_1_shortcut_inputs,X
    STA !sram_ctrl_2_shortcut_inputs,X
    INX : INX : CPX #$0060 : BMI .thirdLoop

    %a8()
    ; Main Menu
    LDA #$81 : LDX #$0000 : STA !sram_ctrl_shortcut_selections,X
    ; Soft Reset
    LDA #$9F : INX : STA !sram_ctrl_shortcut_selections,X
if !FEATURE_SD2SNES
    LDA !ram_sram_detection : BNE .skipTypes
    ; Save State
    LDA #$82 : INX : STA !sram_ctrl_shortcut_selections,X
    ; Load State
    LDA #$83 : INX : STA !sram_ctrl_shortcut_selections,X
  .skipTypes
endif
    ; Reload Preset
    LDA #$86 : INX : STA !sram_ctrl_shortcut_selections,X
    ; Main Menu
    LDA #$81 : INX : STA !sram_ctrl_shortcut_selections,X
    ; Pause
    LDA #$95 : INX : STA !sram_ctrl_shortcut_selections,X
    ; Unpause
    LDA #$96 : INX : STA !sram_ctrl_shortcut_selections,X
    ; Slowdown
    LDA #$97 : INX : STA !sram_ctrl_shortcut_selections,X
    ; Speedup
    LDA #$98 : INX : STA !sram_ctrl_shortcut_selections,X
if !FEATURE_VANILLAHUD
else
    ; Increment Display Mode
    LDA #$99 : INX : STA !sram_ctrl_shortcut_selections,X
    ; Decrement Display Mode
    LDA #$9A : INX : STA !sram_ctrl_shortcut_selections,X
    ; Increment Room Strat
    LDA #$9B : INX : STA !sram_ctrl_shortcut_selections,X
    ; Decrement Room Strat
    LDA #$9C : INX : STA !sram_ctrl_shortcut_selections,X
    ; Increment Super HUD
    LDA #$9D : INX : STA !sram_ctrl_shortcut_selections,X
    ; Decrement Super HUD
    LDA #$9E : INX : STA !sram_ctrl_shortcut_selections,X
endif
    ; Add Shortcut
    INX : TXA : STA !ram_cm_ctrl_add_shortcut_slot

    %a16()
    ; Main Menu (Controller 1, Start + Select)
    LDA #$3000 : LDX #$0000 : STA !sram_ctrl_1_shortcut_inputs,X
    ; Soft Reset (Controller 1, Start + Select + L + R)
    LDA #$3030 : INX #2 : STA !sram_ctrl_1_shortcut_inputs,X
if !FEATURE_SD2SNES
    LDA !ram_sram_detection : BNE .skipValues
    ; Save State (Controller 1, Select + Y + R)
    LDA #$6010 : INX #2 : STA !sram_ctrl_1_shortcut_inputs,X
    ; Load State (Controller 1, Select + Y + L)
    LDA #$6020 : INX #2 : STA !sram_ctrl_1_shortcut_inputs,X
  .skipValues
endif
    ; Reload Preset (Controller 1, Start + Y + L)
    LDA #$5020 : INX #2 : STA !sram_ctrl_1_shortcut_inputs,X
    ; Main Menu (Controller 2, Start + Select)
    LDA #$3000 : INX #2 : STA !sram_ctrl_2_shortcut_inputs,X
    ; Pause (Controller 2, Right)
    LDA #$0100 : INX #2 : STA !sram_ctrl_2_shortcut_inputs,X
    ; Unpause (Controller 2, Left)
    LDA #$0200 : INX #2 : STA !sram_ctrl_2_shortcut_inputs,X
    ; Slowdown (Controller 2, Down)
    LDA #$0400 : INX #2 : STA !sram_ctrl_2_shortcut_inputs,X
    ; Speedup (Controller 2, Up)
    LDA #$0800 : INX #2 : STA !sram_ctrl_2_shortcut_inputs,X
if !FEATURE_VANILLAHUD
else
    ; Increment Display Mode (Controller 2, R)
    LDA #$0010 : INX #2 : STA !sram_ctrl_2_shortcut_inputs,X
    ; Decrement Display Mode (Controller 2, L)
    LDA #$0020 : INX #2 : STA !sram_ctrl_2_shortcut_inputs,X
    ; Increment Room Strat (Controller 2, X + R)
    LDA #$0050 : INX #2 : STA !sram_ctrl_2_shortcut_inputs,X
    ; Decrement Room Strat (Controller 2, X + L)
    LDA #$0060 : INX #2 : STA !sram_ctrl_2_shortcut_inputs,X
    ; Increment Super HUD (Controller 2, A + R)
    LDA #$0090 : INX #2 : STA !sram_ctrl_2_shortcut_inputs,X
    ; Decrement Super HUD (Controller 2, A + L)
    LDA #$00A0 : INX #2 : STA !sram_ctrl_2_shortcut_inputs,X
endif
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
    JSL cm_write_ctrl_routine
    JML $82893D ; hijacked code: start main game loop
}

%endfree(81)
