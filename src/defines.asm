
; ---------
; Work RAM
; ---------

; The crash buffer and initial address can be moved around as needed
; It is currently placed in the back half of the backup of BG2 tilemap during x-ray,
; which means it is unlikely to overwrite anything relevant for debugging
!CRASHDUMP_TILEMAP_BUFFER = $7E5800 ; 2048 bytes
!CRASH_INITIAL_ADDRESS = #$7E0A44

; Practice hack menu tilemap buffer
!ram_tilemap_buffer = $7EF500 ; 2048 bytes

; Shortcut routine is written on boot and each time the menu closes,
; so it can use the same space as the practice hack menu tilemap buffer
!CTRL_SHORTCUT_ROUTINE = $7EF502 ; up to 1883 bytes or +$75A
!CTRL_SHORTCUT_TABLE = !CTRL_SHORTCUT_ROUTINE+$7B6 ; 48 bytes
!CTRL_SHORTCUT_TYPE = !CTRL_SHORTCUT_ROUTINE+$7E6
!CTRL_SHORTCUT_PRI = !CTRL_SHORTCUT_ROUTINE+$7E8
!CTRL_SHORTCUT_SEC = !CTRL_SHORTCUT_ROUTINE+$7EA
!CTRL_SHORTCUT_JSL_WORD_LSB = !CTRL_SHORTCUT_ROUTINE+$7EC
!CTRL_SHORTCUT_JSL_WORD_MSB = !CTRL_SHORTCUT_ROUTINE+$7EE
!CTRL_SHORTCUT_PRI_TO_SEC_DUAL_JUMP = !CTRL_SHORTCUT_ROUTINE+$7F0
!CTRL_SHORTCUT_SEC_TO_DUAL_JUMP = !CTRL_SHORTCUT_ROUTINE+$7F2
!CTRL_SHORTCUT_TABLE_PRI_INDEX = !CTRL_SHORTCUT_ROUTINE+$7F4
!CTRL_SHORTCUT_TABLE_SEC_INDEX = !CTRL_SHORTCUT_ROUTINE+$7F6
!CTRL_SHORTCUT_TABLE_DUAL_INDEX = !CTRL_SHORTCUT_ROUTINE+$7F8
; Shortcuts can skip remaining checks by replacing the return address word
!CTRL_SHORTCUT_SKIP_REMAINING_PEA = !CTRL_SHORTCUT_ROUTINE+$7FA
!CTRL_SHORTCUT_SKIP_REMAINING_PEA_VALUE = $FCFC

!WRAM_SIZE = #$0200
!WRAM_START = $7EFD00
!WRAM_PERSIST_START = $7EFD80
!WRAM_MENU_START = $7EFE00
!WRAM_END = $7EFF00
!CRASHDUMP = $7EFF00
!WRAM_BANK = !WRAM_START>>16

; These variables are NOT PERSISTENT across savestates --
; they're saved and reloaded along with the game state.
; Use this section for infohud variables that are dependent
; on the game state. For variables that depend on user
; settings, place them below WRAM_PERSIST_START below.

!ram_vcounter_data                  = !WRAM_START+$00
!ram_gametime_room                  = !WRAM_START+$02
!ram_last_gametime_room             = !WRAM_START+$04
!ram_realtime_room                  = !WRAM_START+$06
!ram_last_realtime_room             = !WRAM_START+$08
!ram_last_room_lag                  = !WRAM_START+$0A
!ram_last_door_lag_frames           = !WRAM_START+$0C
!ram_transition_counter             = !WRAM_START+$0E
!ram_transition_flag                = !WRAM_START+$10
!ram_last_realtime_door             = !WRAM_START+$12

!ram_seg_rt_frames                  = !WRAM_START+$14
!ram_seg_rt_seconds                 = !WRAM_START+$16
!ram_seg_rt_minutes                 = !WRAM_START+$18
!ram_reset_segment_later            = !WRAM_START+$1A

!ram_ih_controller                  = !WRAM_START+$1C
!ram_slowdown_controller_1          = !WRAM_START+$1E
!ram_slowdown_controller_2          = !WRAM_START+$20
!ram_slowdown_frames                = !WRAM_START+$22

!ram_momentum_sum                   = !WRAM_START+$24
!ram_momentum_count                 = !WRAM_START+$26
!ram_momentum_direction             = !WRAM_START+$28
!ram_momentum_last                  = !WRAM_START+$2A

!ram_last_hp                        = !WRAM_START+$2C
!ram_reserves_last                  = !WRAM_START+$2E

!ram_metronome_counter              = !WRAM_START+$30
!ram_armed_shine_duration           = !WRAM_START+$32
!ram_auto_save_state                = !WRAM_START+$34
!ram_watch_left_hud                 = !WRAM_START+$36
!ram_watch_right_hud                = !WRAM_START+$38

!ram_magic_pants_state              = !WRAM_START+$3A
!ram_magic_pants_pal1               = !WRAM_START+$3C
!ram_magic_pants_pal2               = !WRAM_START+$3E
!ram_magic_pants_pal3               = !WRAM_START+$40

!ram_print_segment_timer            = !WRAM_START+$42
!ram_HUD_top                        = !WRAM_START+$44
!ram_HUD_middle                     = !WRAM_START+$46
!ram_infidoppler_active             = !WRAM_START+$48
!ram_roomstrat_counter              = !WRAM_START+$4A
!ram_roomstrat_state                = !WRAM_START+$4C
!ram_enemy_hp                       = !WRAM_START+$4E
!ram_HUD_top_counter                = !WRAM_START+$50
!ram_HUD_middle_counter             = !WRAM_START+$52
!ram_shine_counter                  = !WRAM_START+$54
!ram_dash_counter                   = !WRAM_START+$56

!ram_lag_counter                    = !WRAM_START+$58
!ram_kraid_adjust_timer             = !WRAM_START+$5A
!ram_load_preset_low_word           = !WRAM_START+$5C
!ram_load_preset_high_word          = !WRAM_START+$5D ; Load preset is three bytes
!ram_room_has_set_rng               = !WRAM_START+$5E ; Room set RNG only uses the most significant bit
!ram_activated_shine_duration       = !WRAM_START+$60

; ^ FREE SPACE ^ up to +$6C

; ----------------------------------------------------------
; A few room strats like shinetune use several variables
; that are not used by other modes,
; but also they do not need many other variables,
; so the following variables share the same WRAM

!ram_xpos                           = !WRAM_START+$6E
!ram_ypos                           = !WRAM_START+$70
!ram_subpixel_pos                   = !WRAM_START+$72
!ram_HUD_check                      = !WRAM_START+$74
!ram_shot_timer                     = !WRAM_START+$76
!ram_quickdrop_counter              = !WRAM_START+$78
!ram_walljump_counter               = !WRAM_START+$7A
!ram_fail_sum                       = !WRAM_START+$7C
!ram_fail_count                     = !WRAM_START+$7E

; Shot timer also reuses values
!ram_shot_timer_past1               = !WRAM_START+$78
!ram_shot_timer_past2               = !WRAM_START+$7A
!ram_shot_timer_past3               = !WRAM_START+$7C
!ram_shot_timer_past4               = !WRAM_START+$7E

; Kihunter manip
!ram_enemy0_last_xpos               = !WRAM_START+$6E
!ram_enemy0_last_ypos               = !WRAM_START+$70
!ram_enemy4_last_xpos               = !WRAM_START+$72
!ram_enemy4_last_ypos               = !WRAM_START+$74
!ram_enemy6_last_xpos               = !WRAM_START+$76
!ram_enemy6_last_ypos               = !WRAM_START+$78
!ram_enemy8_last_xpos               = !WRAM_START+$7A
!ram_enemy8_last_ypos               = !WRAM_START+$7C

; Kraid radar (reuses above ram_enemy6 variables)
!ram_radar6                         = !WRAM_START+$6E
!ram_radar7                         = !WRAM_START+$70
!ram_enemy7_last_xpos               = !WRAM_START+$7A
!ram_enemy7_last_ypos               = !WRAM_START+$7C

; Shinetune
!ram_shine_dash_held_late           = !WRAM_START+$6E
!ram_shinetune_early_1              = !WRAM_START+$70
!ram_shinetune_late_1               = !WRAM_START+$72
!ram_shinetune_early_2              = !WRAM_START+$74
!ram_shinetune_late_2               = !WRAM_START+$76
!ram_shinetune_early_3              = !WRAM_START+$78
!ram_shinetune_late_3               = !WRAM_START+$7A
!ram_shinetune_early_4              = !WRAM_START+$7C
!ram_shinetune_late_4               = !WRAM_START+$7E

; ----------------------------------------------------------
; WRAM variables below this point are PERSISTENT.
; They maintain their value across savestates.
; Use this section for variables such as user settings
; that do not depend on the current game state.

!ram_metronome                      = !WRAM_PERSIST_START+$00
!ram_minimap                        = !WRAM_PERSIST_START+$02

!ram_fix_scroll_offsets             = !WRAM_PERSIST_START+$04
!ram_random_preset_rng              = !WRAM_PERSIST_START+$06
!ram_random_preset_value            = !WRAM_PERSIST_START+$08

!ram_magic_pants_enabled            = !WRAM_PERSIST_START+$0A
!ram_space_pants_enabled            = !WRAM_PERSIST_START+$0C
!ram_kraid_claw_rng                 = !WRAM_PERSIST_START+$0E
!ram_kraid_wait_rng                 = !WRAM_PERSIST_START+$10
!ram_draygon_rng_left               = !WRAM_PERSIST_START+$12
!ram_draygon_rng_right              = !WRAM_PERSIST_START+$14
!ram_turret_rng                     = !WRAM_PERSIST_START+$16
!ram_ridley_rng_flags               = !WRAM_PERSIST_START+$18
!ram_ridley_rng_times_and_fireball  = !WRAM_PERSIST_START+$1A
!ram_crocomire_rng                  = !WRAM_PERSIST_START+$1C
!ram_phantoon_phase_rng             = !WRAM_PERSIST_START+$1E
!ram_phantoon_eye_and_flames_rng    = !WRAM_PERSIST_START+$20
!ram_botwoon_rng                    = !WRAM_PERSIST_START+$22
!ram_baby_rng                       = !WRAM_PERSIST_START+$24
!ram_mb_rng                         = !WRAM_PERSIST_START+$26

!ram_itempickups_all                = !WRAM_PERSIST_START+$28
!ram_itempickups_visible            = !WRAM_PERSIST_START+$2A
!ram_itempickups_chozo              = !WRAM_PERSIST_START+$2C
!ram_itempickups_hidden             = !WRAM_PERSIST_START+$2E

!ram_suits_enemy_damage_check       = !WRAM_PERSIST_START+$30
!ram_suits_heat_damage_check        = !WRAM_PERSIST_START+$32
!ram_pacifist                       = !WRAM_PERSIST_START+$34
!ram_freeze_on_load                 = !WRAM_PERSIST_START+$36

!ram_spacetime_infohud              = !WRAM_PERSIST_START+$38
!ram_watch_left_index               = !WRAM_PERSIST_START+$3A
!ram_watch_right_index              = !WRAM_PERSIST_START+$3C
!ram_watch_write_mode               = !WRAM_PERSIST_START+$3E
!ram_watch_bank                     = !WRAM_PERSIST_START+$40
!ram_watch_left                     = !WRAM_PERSIST_START+$42
!ram_watch_right                    = !WRAM_PERSIST_START+$44
!ram_watch_edit_left                = !WRAM_PERSIST_START+$46
!ram_watch_edit_right               = !WRAM_PERSIST_START+$48
!ram_watch_edit_lock_left           = !WRAM_PERSIST_START+$4A
!ram_watch_edit_lock_right          = !WRAM_PERSIST_START+$4C

!ram_game_loop_extras               = !WRAM_PERSIST_START+$4E
!ram_infinite_ammo                  = !WRAM_PERSIST_START+$50
!ram_suits_heat_damage_value        = !WRAM_PERSIST_START+$52
!ram_sprite_feature_flags           = !WRAM_PERSIST_START+$54
!ram_door_portal_flags              = !WRAM_PERSIST_START+$56
!ram_door_source                    = !WRAM_PERSIST_START+$58
!ram_door_destination               = !WRAM_PERSIST_START+$5A
!ram_frames_held                    = !WRAM_PERSIST_START+$5C
!ram_quickboot_spc_state            = !WRAM_PERSIST_START+$5E
!ram_display_backup                 = !WRAM_PERSIST_START+$60
!ram_drop_chance_table              = !WRAM_PERSIST_START+$62

; ^ FREE SPACE ^ up to +$7C (!WRAM_START+$FC - !WRAM_PERSIST_START)

; -----------------------
; RAM (Bank 7E required)
; -----------------------

!ram_slowdown_mode = $7EFDFE

; ---------
; RAM Menu
; ---------

!ram_cm_menu_stack = !WRAM_MENU_START+$00         ; 16 bytes
!ram_cm_cursor_stack = !WRAM_MENU_START+$10       ; 16 bytes

!ram_cm_cursor_max = !WRAM_MENU_START+$20
!ram_cm_input_timer = !WRAM_MENU_START+$22
!ram_cm_controller = !WRAM_MENU_START+$24
!ram_cm_menu_bank = !WRAM_MENU_START+$26
!ram_cm_horizontal_cursor = !WRAM_MENU_START+$28

!ram_cm_leave = !WRAM_MENU_START+$2A
!ram_cm_input_counter = !WRAM_MENU_START+$2C
!ram_cm_last_nmi_counter = !WRAM_MENU_START+$2E
!ram_cm_ctrl_mode = !WRAM_MENU_START+$30
!ram_cm_custom_preset_labels = !WRAM_MENU_START+$32

!ram_cm_slowdown_mode = !WRAM_MENU_START+$34
!ram_cm_slowdown_frames = !WRAM_MENU_START+$36

!ram_seed_X = !WRAM_MENU_START+$38
!ram_seed_Y = !WRAM_MENU_START+$3A

!ram_cm_fast_scroll_menu_selection = !WRAM_MENU_START+$3C
!ram_cm_suit_properties = !WRAM_MENU_START+$3E

!ram_cm_palette_border = !WRAM_MENU_START+$40
!ram_cm_palette_headeroutline = !WRAM_MENU_START+$42
!ram_cm_palette_text = !WRAM_MENU_START+$44
!ram_cm_palette_background = !WRAM_MENU_START+$46
!ram_cm_palette_numoutline = !WRAM_MENU_START+$48
!ram_cm_palette_numfill = !WRAM_MENU_START+$4A
!ram_cm_palette_toggleon = !WRAM_MENU_START+$4C
!ram_cm_palette_seltext = !WRAM_MENU_START+$4E
!ram_cm_palette_seltextbg = !WRAM_MENU_START+$50
!ram_cm_palette_numseloutline = !WRAM_MENU_START+$52
!ram_cm_palette_numsel = !WRAM_MENU_START+$54

!ram_cm_sfxlib1 = !WRAM_MENU_START+$56
!ram_cm_sfxlib2 = !WRAM_MENU_START+$58
!ram_cm_sfxlib3 = !WRAM_MENU_START+$5A

!ram_sram_detection = !WRAM_MENU_START+$5C

!ram_timers_autoupdate = !WRAM_MENU_START+$5E
!ram_cm_gmode = !WRAM_MENU_START+$60

; ^ FREE SPACE ^ up to +$86

!ram_cm_preserved_timers = !WRAM_MENU_START+$88 ; 8 bytes

; ------------------
; Reusable RAM Menu
; ------------------

; The following RAM may be used multiple times,
; as long as it isn't used multiple times on the same menu page

!ram_cm_watch_enemy_property = !WRAM_MENU_START+$90
!ram_cm_watch_enemy_index = !WRAM_MENU_START+$92
!ram_cm_watch_enemy_side = !WRAM_MENU_START+$94
!ram_cm_watch_common_address = !WRAM_MENU_START+$96

!ram_cm_door_dynamic = !WRAM_MENU_START+$90
!ram_cm_door_menu_value = !WRAM_MENU_START+$92
!ram_cm_door_menu_bank = !WRAM_MENU_START+$94
!ram_cm_door_direction_index = !WRAM_MENU_START+$96
!ram_cm_itempickups_visible = !WRAM_MENU_START+$98
!ram_cm_itempickups_chozo = !WRAM_MENU_START+$9A
!ram_cm_itempickups_hidden = !WRAM_MENU_START+$9C

!ram_cm_turret_rng = !WRAM_MENU_START+$90
!ram_cm_drop_chances = !WRAM_MENU_START+$92

!ram_cm_phantoon_first_phase_rng = !WRAM_MENU_START+$9C
!ram_cm_phantoon_second_phase_rng = !WRAM_MENU_START+$9E
!ram_cm_phantoon_flip_rng = !WRAM_MENU_START+$A0
!ram_cm_phantoon_eyeclose_rng = !WRAM_MENU_START+$A2
!ram_cm_phantoon_flames_rng = !WRAM_MENU_START+$A4
!ram_cm_phantoon_next_flames_rng = !WRAM_MENU_START+$A6
!ram_cm_phantoon_flame_direction_rng = !WRAM_MENU_START+$A8

!ram_cm_ridley_pogo_height_rng = !WRAM_MENU_START+$9C
!ram_cm_ridley_lunge_pogo_rng = !WRAM_MENU_START+$9E
!ram_cm_ridley_swoop_pogo_rng = !WRAM_MENU_START+$A0
!ram_cm_ridley_ceres_ai_rng = !WRAM_MENU_START+$A2
!ram_cm_ridley_hover_fireball_rng = !WRAM_MENU_START+$A4
!ram_cm_ridley_backpogo_rng = !WRAM_MENU_START+$A6
!ram_cm_ridley_pogo_time_rng = !WRAM_MENU_START+$A8
!ram_cm_ridley_pogo_time_value_rng = !WRAM_MENU_START+$AA
!ram_cm_ridley_hover_time_rng = !WRAM_MENU_START+$AC
!ram_cm_ridley_hover_time_value_rng = !WRAM_MENU_START+$AE

!ram_cm_botwoon_first_rng = !WRAM_MENU_START+$9C
!ram_cm_botwoon_hidden_rng = !WRAM_MENU_START+$9E
!ram_cm_botwoon_second_rng = !WRAM_MENU_START+$A0
!ram_cm_botwoon_spit_rng = !WRAM_MENU_START+$A2
!ram_cm_botwoon_after_spit_rng = !WRAM_MENU_START+$A4

!ram_cm_mb_walking_rng = !WRAM_MENU_START+$9C
!ram_cm_mb_ketchup_rng = !WRAM_MENU_START+$9E
!ram_cm_mb_damage_down_rng = !WRAM_MENU_START+$A0
!ram_cm_mb_phase3_attack_rng = !WRAM_MENU_START+$A2
!ram_cm_mb_normal_attack_rng = !WRAM_MENU_START+$A4
!ram_cm_mb_bomb_crouch_rng = !WRAM_MENU_START+$A6

!ram_cm_varia = !WRAM_MENU_START+$90
!ram_cm_gravity = !WRAM_MENU_START+$92
!ram_cm_morph = !WRAM_MENU_START+$94
!ram_cm_bombs = !WRAM_MENU_START+$96
!ram_cm_spring = !WRAM_MENU_START+$98
!ram_cm_screw = !WRAM_MENU_START+$9A
!ram_cm_hijump = !WRAM_MENU_START+$9C
!ram_cm_space = !WRAM_MENU_START+$9E
!ram_cm_speed = !WRAM_MENU_START+$A0
!ram_cm_charge = !WRAM_MENU_START+$A2
!ram_cm_ice = !WRAM_MENU_START+$A4
!ram_cm_wave = !WRAM_MENU_START+$A6
!ram_cm_spazer = !WRAM_MENU_START+$A8
!ram_cm_plasma = !WRAM_MENU_START+$AA
!ram_cm_etanks = !WRAM_MENU_START+$AC
!ram_cm_reserve = !WRAM_MENU_START+$AE

!ram_cm_zebmask = !WRAM_MENU_START+$90
!ram_cm_metmask = !WRAM_MENU_START+$92

!ram_cm_ceres_seconds = !WRAM_MENU_START+$90
!ram_cm_zebes_seconds = !WRAM_MENU_START+$92

!ram_cm_ctrl_add_shortcut_slot = !WRAM_MENU_START+$90
!ram_cm_ctrl_last_pri = !WRAM_MENU_START+$92
!ram_cm_ctrl_last_sec = !WRAM_MENU_START+$94
!ram_cm_ctrl_assign = !WRAM_MENU_START+$96
!ram_cm_ctrl_swap = !WRAM_MENU_START+$98
!ram_cm_ctrl_timer = !WRAM_MENU_START+$9A
!ram_cm_ctrl_savestates_allowed = !WRAM_MENU_START+$9C

!ram_cm_crop_mode = !WRAM_MENU_START+$90
!ram_cm_crop_tile = !WRAM_MENU_START+$92

!ram_cm_brb = !WRAM_MENU_START+$90
!ram_cm_brb_timer = !WRAM_MENU_START+$92
!ram_cm_brb_frames = !WRAM_MENU_START+$94
!ram_cm_brb_secs = !WRAM_MENU_START+$96
!ram_cm_brb_mins = !WRAM_MENU_START+$98
!ram_cm_brb_screen = !WRAM_MENU_START+$9A
!ram_cm_brb_timer_mode = !WRAM_MENU_START+$9C
!ram_cm_brb_scroll = !WRAM_MENU_START+$9E
!ram_cm_brb_scroll_X = !WRAM_MENU_START+$A0
!ram_cm_brb_scroll_Y = !WRAM_MENU_START+$A2
!ram_cm_brb_scroll_H = !WRAM_MENU_START+$A4
!ram_cm_brb_scroll_V = !WRAM_MENU_START+$A6
!ram_cm_brb_scroll_timer = !WRAM_MENU_START+$A8
!ram_cm_brb_palette = !WRAM_MENU_START+$AA
!ram_cm_brb_set_cycle = !WRAM_MENU_START+$AC
!ram_cm_brb_cycle_time = !WRAM_MENU_START+$AE

!ram_cm_grapple = !WRAM_MENU_START+$90
!ram_cm_xray = !WRAM_MENU_START+$92
!ram_cm_manage_slots = !WRAM_MENU_START+$90
!ram_cm_selected_slot = !WRAM_MENU_START+$92
!ram_cm_preset_elevator = !WRAM_MENU_START+$94

; keyboard used by both presets and customize menus
!ram_cm_keyboard_buffer = !WRAM_MENU_START+$98 ; $18 bytes

!ram_cm_custompalette_blue = !WRAM_MENU_START+$90
!ram_cm_custompalette_green = !WRAM_MENU_START+$92
!ram_cm_custompalette_red = !WRAM_MENU_START+$94
!ram_cm_custompalette = !WRAM_MENU_START+$96
!ram_cm_dummy_on = !WRAM_MENU_START+$AA
!ram_cm_dummy_off = !WRAM_MENU_START+$AC
!ram_cm_dummy_num = !WRAM_MENU_START+$AE

; ^ FREE SPACE ^ up to +$CE
; Note: +$B8 to +$CE range also used as frames held counters
;       and is reset to zero when loading a savestate

; Reserve 48 bytes for CGRAM cache
; Currently first 28 bytes plus last 2 bytes are used
!ram_cgram_cache = !WRAM_MENU_START+$D0 ; $30 bytes


; -----------------
; Crash Handler RAM
; -----------------

!ram_crash_a = !CRASHDUMP
!ram_crash_x = !CRASHDUMP+$02
!ram_crash_y = !CRASHDUMP+$04
!ram_crash_dbp = !CRASHDUMP+$06
!ram_crash_sp = !CRASHDUMP+$08
!ram_crash_type = !CRASHDUMP+$0A
!ram_crash_draw_value = !CRASHDUMP+$0C
!ram_crash_stack_size = !CRASHDUMP+$0E

; Reserve 48 bytes for stack
!ram_crash_stack = !CRASHDUMP+$10

!ram_crash_page = !CRASHDUMP+$40
!ram_crash_palette = !CRASHDUMP+$42
!ram_crash_bg = !CRASHDUMP+$44
!ram_crash_cursor = !CRASHDUMP+$46
!ram_crash_loop_counter = !CRASHDUMP+$48
!ram_crash_bytes_to_write = !CRASHDUMP+$4A
!ram_crash_stack_line_position = !CRASHDUMP+$4C
!ram_crash_text = !CRASHDUMP+$4E
!ram_crash_text_bank = !CRASHDUMP+$50
!ram_crash_text_palette = !CRASHDUMP+$52
!ram_crash_mem_viewer = !CRASHDUMP+$54
!ram_crash_mem_viewer_bank = !CRASHDUMP+$56
!ram_crash_temp = !CRASHDUMP+$58

!ram_crash_input = !CRASHDUMP+$60
!ram_crash_input_new = !CRASHDUMP+$62
!ram_crash_input_prev = !CRASHDUMP+$64
!ram_crash_input_timer = !CRASHDUMP+$66


; -----------
; Bank 7F RAM
; -----------

; NOTE: Be careful with using Bank 7F RAM,
;       since the game may not clean this RAM up
;       and the out of bounds blocks depend on this RAM,
;       so if we make a mess not cleaned up by the vanilla game
;       then we won't be accurate to the vanilla game anymore

!LEVEL_DATA_SIZE = $7F0000
!LEVEL_DATA = $7F0002

; Temporary stack written here since level data will be initialized afterwards
; There is room for 256 entries in the stack before risking leaving data behind,
; since even the smallest room has 512 bytes of level data
!CATEGORY_PRESET_STACK = !LEVEL_DATA

!END_OF_SINGLE_SCROLL_ROOM_LEVEL_DATA = $7F0202

; Do not use RAM for variables at or beyond this point
!LEVEL_BTS = $7F6402


; -----
; SRAM
; -----

!SRAM_VERSION = #$001B

!SRAM_START = $702000
!SRAM_SIZE = #$1000
!PRESET_SLOTS = $703000

!sram_initialized = !SRAM_START+$00
!sram_ctrl_shortcut_selections = !SRAM_START+$02 ; 30 bytes
; More ctrl shortcut selections starting at $EE

!sram_artificial_lag = !SRAM_START+$20
!sram_rerandomize = !SRAM_START+$22
!sram_fanfare = !SRAM_START+$24
!sram_frame_counter_mode = !SRAM_START+$26
!sram_display_mode = !SRAM_START+$28
!sram_music_toggle = !SRAM_START+$2A
!sram_last_preset_low_word = !SRAM_START+$2C
!sram_last_preset_high_word = !SRAM_START+$2D ; Last preset is three bytes
!sram_save_has_set_rng = !SRAM_START+$2E ; Room set RNG only uses the most significant bit
!sram_preset_category = !SRAM_START+$30
!sram_custom_preset_slot = !SRAM_START+$32
!sram_room_strat = !SRAM_START+$34
!sram_sprite_prio_flag = !SRAM_START+$36
!sram_metronome_tickrate = !SRAM_START+$38
!sram_metronome_sfx = !SRAM_START+$3A
!sram_status_icons = !SRAM_START+$3C
!sram_suit_properties = !SRAM_START+$3E
!sram_top_display_mode = !SRAM_START+$40
!sram_healthalarm = !SRAM_START+$42
!sram_room_layout = !SRAM_START+$44
!sram_cutscenes = !SRAM_START+$46
!sram_preset_options = !SRAM_START+$48
!sram_lag_counter_mode = !SRAM_START+$4A

!sram_fast_doors = !SRAM_START+$4C
!sram_suppress_flashing = !SRAM_START+$4E
!sram_fast_elevators = !SRAM_START+$50
!sram_custom_damage = !SRAM_START+$52
!sram_custom_charge_damage = !SRAM_START+$54
!sram_custom_uncharge_damage = !SRAM_START+$56
!sram_water_physics = !SRAM_START+$58
!sram_double_jump = !SRAM_START+$5A

; do not change order without updating custom palette profiles in customizemenu.asm
!sram_palette_border = !SRAM_START+$5C
!sram_palette_headeroutline = !SRAM_START+$5E
!sram_palette_text = !SRAM_START+$60
!sram_palette_numoutline = !SRAM_START+$62
!sram_palette_numfill = !SRAM_START+$64
!sram_palette_toggleon = !SRAM_START+$66
!sram_palette_seltext = !SRAM_START+$68
!sram_palette_seltextbg = !SRAM_START+$6A
!sram_palette_background = !SRAM_START+$6C
!sram_palette_numseloutline = !SRAM_START+$6E
!sram_palette_numsel = !SRAM_START+$70
!sram_custompalette_profile = !SRAM_START+$72
!sram_menu_background = !SRAM_START+$74
!sram_cm_scroll_delay = !SRAM_START+$76
!sram_customsfx_move = !SRAM_START+$78
!sram_customsfx_toggle = !SRAM_START+$7A
!sram_customsfx_number = !SRAM_START+$7C
!sram_customsfx_confirm = !SRAM_START+$7E
!sram_customsfx_goback = !SRAM_START+$80

!sram_seed_X = !SRAM_START+$82
!sram_seed_Y = !SRAM_START+$84
!sram_bomb_torizo_door = !SRAM_START+$86
!sram_door_display_mode = !SRAM_START+$88
!sram_cm_fast_scroll_button = !SRAM_START+$8A
!sram_cm_font = !SRAM_START+$8C
!sram_spin_lock = !SRAM_START+$8E
!sram_map_grid_alignment = !SRAM_START+$90
!sram_number_gfx_choice = !SRAM_START+$92
!sram_superhud_bottom = !SRAM_START+$94
!sram_superhud_middle = !SRAM_START+$96
!sram_superhud_top = !SRAM_START+$98
!sram_infidoppler_enabled = !SRAM_START+$9A
!sram_random_bubble_sfx = !SRAM_START+$9C
!sram_demo_timer = !SRAM_START+$9E
!sram_ceres_timer = !SRAM_START+$A0
!sram_zebes_timer = !SRAM_START+$A2

; ^ FREE SPACE ^ up to +$EC

; This is a continuation of sram_ctrl_shortcut_selections
!sram_ctrl_additional_selections = !SRAM_START+$D0 ; 18 bytes starting from +$EE

!sram_presetequiprando = !SRAM_START+$100
!sram_presetequiprando_beampref = !SRAM_START+$102
!sram_presetequiprando_max_etanks = !SRAM_START+$104
!sram_presetequiprando_max_reserves = !SRAM_START+$106
!sram_presetequiprando_max_missiles = !SRAM_START+$108
!sram_presetequiprando_max_supers = !SRAM_START+$10A
!sram_presetequiprando_max_pbs = !SRAM_START+$10C
!sram_display_mode_reward = !SRAM_START+$10E
!sram_loadstate_rando_energy = !SRAM_START+$110
!sram_loadstate_rando_reserves = !SRAM_START+$112
!sram_loadstate_rando_missiles = !SRAM_START+$114
!sram_loadstate_rando_supers = !SRAM_START+$116
!sram_loadstate_rando_powerbombs = !SRAM_START+$118
!sram_loadstate_rando_enable = !SRAM_START+$11A
!sram_categoryadjust_item_equip = !SRAM_START+$11C
!sram_categoryadjust_item_unequip = !SRAM_START+$11E
!sram_categoryadjust_item_remove = !SRAM_START+$120
!sram_categoryadjust_beam_equip = !SRAM_START+$122
!sram_categoryadjust_beam_unequip = !SRAM_START+$124
!sram_categoryadjust_beam_remove = !SRAM_START+$126
!sram_categoryadjust_energy = !SRAM_START+$128
!sram_categoryadjust_etanks = !SRAM_START+$12A
!sram_categoryadjust_reserves = !SRAM_START+$12C
!sram_categoryadjust_rtanks = !SRAM_START+$12E
!sram_categoryadjust_missiles = !SRAM_START+$130
!sram_categoryadjust_maxmissiles = !SRAM_START+$132
!sram_categoryadjust_supers = !SRAM_START+$134
!sram_categoryadjust_maxsupers = !SRAM_START+$136
!sram_categoryadjust_pbs = !SRAM_START+$138
!sram_categoryadjust_maxpbs = !SRAM_START+$13A

; ^ FREE SPACE ^ up to +$13E

!sram_ctrl_1_shortcut_inputs = !SRAM_START+$140 ; 96 bytes
!sram_ctrl_2_shortcut_inputs = !SRAM_START+$1A0 ; 96 bytes

; ^ FREE SPACE ^ up to +$BA6

!sram_custom_header_normal = !SRAM_START+$BA8 ; $18 bytes
!sram_custom_preset_safewords_normal = !SRAM_START+$BC0 ; $50 bytes
!sram_custom_preset_names_normal = !SRAM_START+$C10 ; $3C0 bytes

!sram_custom_header_tinystates = !SRAM_START+$E18 ; $18 bytes
!sram_custom_preset_safewords_tinystates = !SRAM_START+$E30 ; $20 bytes
!sram_custom_preset_names_tinystates = !SRAM_START+$E50 ; $180 bytes

; SM specific things
!SRAM_MUSIC_DATA = !SRAM_START+$FD0
!SRAM_MUSIC_TRACK = !SRAM_START+$FD2
!SRAM_SOUND_TIMER = !SRAM_START+$FD4

; ^ FREE SPACE ^ up to +$FFE


; --------------
; Vanilla Labels
; --------------

!KB_SHIFT1 = $9A
!KB_SHIFT2 = $9B
!KB_DEL1 = $9C
!KB_DEL2 = $9D

!BRB_METROID = #$287F
!BRB_HEART = #$2899
!MENU_CLEAR = #$000E
!MENU_BLANK = #$281F
!MENU_SLASH = #$287F
!MENU_ARROW_RIGHT = #$3880
!IH_BLANK = #$2C0F
!IH_PERCENT = #$0C0A
!IH_DECIMAL = #$0CCB
!IH_HYPHEN = #$0C55
!IH_ELEVATOR = #$1C0B
!IH_SHINESPARK = #$0032
!IH_HEALTHBOMB = #$085A
!IH_RESERVE_AUTO = #$0C0C
!IH_RESERVE_EMPTY = #$0C0D
!IH_LETTER_A = #$0C64
!IH_LETTER_B = #$0C65
!IH_LETTER_C = #$0C58
!IH_LETTER_D = #$0C59
!IH_LETTER_E = #$0C5A
!IH_LETTER_F = #$0C5B
!IH_LETTER_H = #$0C6C
!IH_LETTER_L = #$0C68
!IH_LETTER_N = #$0C56
!IH_LETTER_R = #$0C69
!IH_LETTER_X = #$0C66
!IH_LETTER_Y = #$0C67
!IH_NUMBER_ZERO = #$0C09
!IH_NUMBER_ZERO_YELLOW = #$2009
!IH_ARROW_LEFT = #$0C60
!IH_ARROW_LEFT_GREY = #$1460
!IH_ARROW_LEFT_PINK_OUTLINE = #$0860
!IH_ARROW_LEFT_RED = #$1C60
!IH_ARROW_UP = #$0C61
!IH_ARROW_UP_GREY = #$1461
!IH_ARROW_UP_PINK_OUTLINE = #$0861
!IH_ARROW_UP_RED = #$1C61
!IH_ARROW_RIGHT = #$0C62
!IH_ARROW_RIGHT_GREY = #$1462
!IH_ARROW_RIGHT_PINK_OUTLINE = #$0862
!IH_ARROW_RIGHT_RED = #$1C62
!IH_ARROW_DOWN = #$0C63
!IH_ARROW_DOWN_GREY = #$1463
!IH_ARROW_DOWN_PINK_OUTLINE = #$0863
!IH_ARROW_DOWN_RED = #$1C63
!IH_MORPH_BALL_YELLOW = #$00C9
!IH_MORPH_BALL_GREEN = #$10C9
!IH_STUCK_GREEN = #$106B

!IH_INPUT_START = #$1000
!IH_INPUT_DPAD = #$0F00
!IH_INPUT_UPDOWN = #$0C00
!IH_INPUT_UP = #$0800
!IH_INPUT_DOWN = #$0400
!IH_INPUT_XLEFTRIGHTHELD = #$0341
!IH_INPUT_LEFTRIGHT = #$0300
!IH_INPUT_LEFT = #$0200
!IH_INPUT_RIGHT = #$0100
!IH_INPUT_HELD = #$0001 ; used by menu

!CTRL_AB = #$8080
!CTRL_B = #$8000
!CTRL_Y = #$4000
!CTRL_SELECT = #$2000
!CTRL_A = #$0080
!CTRL_X = #$0040
!CTRL_L = #$0020
!CTRL_R = #$0010

!PLM_DELETE = $AAE3

!MUSIC_ROUTINE = $808FC1
!SFX_LIB1 = $80903F
!SFX_LIB2 = $8090C1
!SFX_LIB3 = $809143

!DECOMP_44 = $44
!DECOMP_SRC = $47
!DECOMP_VAR = $4A
!DECOMP_DEST = $4C
!DECOMP_DICTCOPY_INV = $4F
!REG_2100_BRIGHTNESS = $51
!REG_2108_BG2_TILEMAP = $59
!REG_4200_NMI = $84
!IH_CONTROLLER_PRI = $8B
!IH_CONTROLLER_SEC = $8D
!IH_CONTROLLER_PRI_NEW = $8F
!IH_CONTROLLER_SEC_NEW = $91
!IH_CONTROLLER_PRI_PREV = $97
!IH_CONTROLLER_SEC_PREV = $99
!CONTROLLER_1_AUTOPRESS = $A3
!NEXT_IRQ_CMD = $A7
!IRQ_CMD = $AB
!REG_210D_BG1_X = $B1
!REG_210E_BG1_Y = $B3
!REG_210F_BG2_X = $B5
!REG_2110_BG2_Y = $B7
!REG_2111_BG3_X = $B9
!REG_2112_BG3_Y = $BB

!VRAM_WRITE_STACK_POINTER = $0330
!OAM_LOW = $0370
!OAM_HIGH = $0570
!OAM_STACK_POINTER = $0590
!PB_EXPLOSION_STATUS = $0592
!REALTIME_LAG_COUNTER = $05A0 ; Not used in vanilla
!MAP_MIN_X_SCROLL = $05AC
!MAP_MAX_X_SCROLL = $05AE
!MAP_MIN_Y_SCROLL = $05B0
!MAP_MAX_Y_SCROLL = $05B2
!NMI_REQUEST_FLAG = $05B4
!FRAME_COUNTER_8BIT = $05B5
!FRAME_COUNTER = $05B6
!NMI_COUNTER = $05B8
!DEBUG_MISSILES = $05C9
!DEBUG_SUPERS = $05CB
!DEBUG_POWERBOMBS = $05CD
!DEBUG_MODE = $05D1
!MENU_STACK_INDEX = $05D5 ; Only used for debugging in vanilla
!CACHED_RANDOM_NUMBER = $05E5
!BITMASK = $05E7
!DISABLE_SOUNDS = $05F5
!DISABLE_MINIMAP = $05F7
!UPLOADING_TO_APU = $0617
!MUSIC_QUEUE_ENTRIES = $0619
!MUSIC_QUEUE_TIMERS = $0629
!MUSIC_QUEUE_NEXT = $0639
!MUSIC_QUEUE_START = $063B
!MUSIC_ENTRY = $063D
!MUSIC_TIMER = $063F
!SOUND_TIMER = $0686
!SCREEN_FADE_DELAY = $0723
!SCREEN_FADE_COUNTER = $0725
!PAUSE_MENU_INDEX = $0727
!AREA_MAP_COLLECTED = $0789
!LOAD_STATION_INDEX = $078B
!DOOR_ID = $078D
!DOOR_BTS = $078F
!DOOR_DIRECTION = $0791
!DOOR_TRANSITION_FLAG_ELEVATOR = $0795
!DOOR_TRANSITION_FLAG_ENEMY = $0797
!ELEVATOR_DIRECTION = $0799
!ROOM_ID = $079B
!AREA_ID = $079F
!ROOM_MAP_X_COORDINATE = $07A1
!ROOM_MAP_Y_COORDINATE = $07A3
!ROOM_WIDTH_BLOCKS = $07A5
!ROOM_HEIGHT_BLOCKS = $07A7
!ROOM_WIDTH_SCROLLS = $07A9
!PREVIOUS_CRE_BITSET = $07B1
!CRE_BITSET = $07B3
!STATE_POINTER = $07BB
!ROOM_MUSIC_DATA_INDEX = $07CB
!ENEMY_POPULATION = $07CF
!ENEMY_SET = $07D1
!ROOM_MAIN_ASM_POINTER = $07DF
!SCROLLING_FINISHED_HOOK = $07E9
!CERES_HDMA_DATA = $07EB
!MUSIC_DATA = $07F3
!MUSIC_TRACK = $07F5
!MAP_TILES_EXPLORED = $07F7
!LAYER1_SUB_X = $090F
!LAYER1_X = $0911
!LAYER1_SUB_Y = $0913
!LAYER1_Y = $0915
!LAYER2_X = $0917
!LAYER2_Y = $0919
!BG1_X_OFFSET = $091D
!BG1_Y_OFFSET = $091F
!BG2_X_OFFSET = $0921
!BG2_Y_OFFSET = $0923
!DOOR_DESTINATION_X = $0927
!DOOR_DESTINATION_Y = $0929
!SAMUS_DOOR_SUBSPEED = $092B
!SAMUS_DOOR_SPEED = $092D
!DOWNWARDS_ELEVATOR_DELAY_TIMER = $092F
!DOOR_FINISHED_SCROLLING = $0931
!CERES_STATUS = $093F
!TIMER_STATUS = $0943
!TIMER_CENTISECONDS = $0945
!TIMER_SECONDS_MINUTES = $0946
!CURRENT_SAVE_FILE = $0952
!GAMEMODE = $0998
!DOOR_FUNCTION_POINTER = $099C
!SAMUS_ITEMS_EQUIPPED = $09A2
!SAMUS_ITEMS_COLLECTED = $09A4
!SAMUS_BEAMS_EQUIPPED = $09A6
!SAMUS_BEAMS_COLLECTED = $09A8
!CTRL_BINDING_UP = $09AA
!CTRL_BINDING_DOWN = $09AC
!CTRL_BINDING_LEFT = $09AE
!CTRL_BINDING_RIGHT = $09B0
!CTRL_BINDING_SHOT = $09B2
!CTRL_BINDING_JUMP = $09B4
!CTRL_BINDING_DASH = $09B6
!CTRL_BINDING_CANCEL = $09B8
!CTRL_BINDING_SELECT = $09BA
!CTRL_BINDING_ANGLEDOWN = $09BC
!CTRL_BINDING_ANGLEUP = $09BE
!SAMUS_RESERVE_MODE = $09C0
!SAMUS_HP = $09C2
!SAMUS_HP_MAX = $09C4
!SAMUS_MISSILES = $09C6
!SAMUS_MISSILES_MAX = $09C8
!SAMUS_SUPERS = $09CA
!SAMUS_SUPERS_MAX = $09CC
!SAMUS_PBS = $09CE
!SAMUS_PBS_MAX = $09D0
!SAMUS_ITEM_SELECTED = $09D2
!SAMUS_RESERVE_MAX = $09D4
!SAMUS_RESERVE_ENERGY = $09D6
!IGT_FRAMES = $09DA
!IGT_SECONDS = $09DC
!IGT_MINUTES = $09DE
!IGT_HOURS = $09E0
!SAMUS_MOONWALK = $09E4
!PAL_DEBUG_MOVEMENT = $09E6
!SAMUS_AUTO_CANCEL = $0A04
!SAMUS_LAST_HP = $0A06
!SAMUS_DOUBLE_JUMP = $0A14 ; Only used during demos in vanilla
!SAMUS_SUBTRACT_WALL_JUMP = $0A16 ; Only used during demos in vanilla
!SAMUS_POSE = $0A1C
!SAMUS_POSE_DIRECTION = $0A1E
!SAMUS_MOVEMENT_TYPE = $0A1F
!SAMUS_PREVIOUS_POSE = $0A20
!SAMUS_PREVIOUS_POSE_DIRECTION = $0A22
!SAMUS_PREVIOUS_MOVEMENT_TYPE = $0A23
!SAMUS_LAST_DIFFERENT_POSE = $0A24
!SAMUS_LAST_DIFFERENT_POSE_DIRECTION = $0A26
!SAMUS_LAST_DIFFERENT_MOVEMENT_TYPE = $0A27
!SAMUS_POTENTIAL_POSE_VALUES = $0A28
!SAMUS_POTENTIAL_POSE_FLAGS = $0A2E
!SAMUS_LOCKED_HANDLER = $0A42
!SAMUS_MOVEMENT_HANDLER = $0A44
!SAMUS_SUBUNIT_ENERGY = $0A4C
!SAMUS_PERIODIC_SUBDAMAGE = $0A4E
!SAMUS_PERIODIC_DAMAGECOMBINED = $0A4F
!SAMUS_PERIODIC_DAMAGE = $0A50
!SAMUS_KNOCKBACK_DIRECTION = $0A54
!SAMUS_BOMB_JUMP_DIRECTION = $0A56
!SAMUS_NORMAL_MOVEMENT_HANDLER = $0A58
!SAMUS_TIMER_HACK_HANDLER = $0A5A
!SAMUS_DRAW_HANDLER = $0A5C
!SAMUS_CONTROLLER_HANDLER = $0A60
!SAMUS_SHINE_TIMER = $0A68
!SAMUS_HEALTH_WARNING = $0A6A
!SAMUS_X_SPEED_TABLE = $0A6C
!SAMUS_CONTACT_DAMAGE_INDEX = $0A6E
!SAMUS_WATER_PHYSICS = $0A70  ; Not used in vanilla
!SAMUS_HYPER_BEAM = $0A76
!TIME_IS_FROZEN = $0A78
!DEMO_PREINSTRUCTION_POINTER = $0A7A
!DEMO_INSTRUCTION_TIMER = $0A7C
!DEMO_INSTRUCTION_POINTER = $0A7E
!DEMO_CONTROLLER_PRI = $0A84
!DEMO_INPUT_ENABLED = $0A88
!DEMO_PREVIOUS_CONTROLLER_PRI = $0A8C
!DEMO_PREVIOUS_CONTROLLER_PRI_NEW = $0A8E
!SAMUS_ANIMATION_TIMER = $0A94
!SAMUS_ANIMATION_FRAME = $0A96
!SAMUS_LAVA_DAMAGE_SUITS = $0A98  ; Not used in vanilla
!SAMUS_SHINESPARK_DELAY_TIMER = $0AA2
!SAMUS_SHINE_TIMER_TYPE = $0ACC
!LIQUID_PHYSICS_TYPE = $0AD2
!SAMUS_AUTO_JUMP_TIMER = $0AF4
!SAMUS_X = $0AF6
!SAMUS_X_SUBPX = $0AF8
!SAMUS_Y = $0AFA
!SAMUS_Y_SUBPX = $0AFC
!SAMUS_X_RADIUS = $0AFE
!SAMUS_Y_RADIUS = $0B00
!SAMUS_COLLISION_DIRECTION = $0B02
!SAMUS_SPRITEMAP_X = $0B04
!DAMAGE_COUNTER = $0B0C  ; Not used in vanilla
!SAMUS_PREVIOUS_X = $0B10
!SAMUS_PREVIOUS_X_SUBPX = $0B12
!SAMUS_PREVIOUS_Y = $0B14
!SAMUS_PREVIOUS_Y_SUBPX = $0B16
!SAMUS_Y_SUBSPEED = $0B2C
!SAMUS_Y_SPEEDCOMBINED = $0B2D
!SAMUS_Y_SPEED = $0B2E
!SAMUS_Y_SUBACCELERATION = $0B32
!SAMUS_Y_ACCELERATION = $0B34
!SAMUS_Y_DIRECTION = $0B36
!SAMUS_DASH_COUNTER = $0B3F
!SAMUS_X_RUNSPEED = $0B42
!SAMUS_X_SUBRUNSPEED = $0B44
!SAMUS_X_MOMENTUM = $0B46
!SAMUS_X_SUBMOMENTUM = $0B48
!SAMUS_PROJ_X = $0B64
!SAMUS_PROJ_Y = $0B78
!SAMUS_PROJ_X_SUBPX = $0B8C
!SAMUS_PROJ_Y_SUBPX = $0BA0
!SAMUS_PROJ_RADIUS_X = $0BB4
!SAMUS_PROJ_RADIUS_Y = $0BC8
!SAMUS_PROJ_DIRECTION = $0C04
!SAMUS_PROJ_PROPERTIES = $0C18
!SAMUS_PROJ_DAMAGE = $0C2C
!SAMUS_COOLDOWN = $0CCC
!SAMUS_PROJECTILE_TIMER = $0CCE
!SAMUS_CHARGE_TIMER = $0CD0
!SAMUS_BOMB_COUNTER = $0CD2
!SAMUS_BOMB_SPREAD_CHARGE_TIMER = $0CD4
!SAMUS_POWER_BOMB_X = $0CE2
!SAMUS_POWER_BOMB_Y = $0CE4
!PREVIOUS_CONTROLLER_PRI = $0DFE
!PREVIOUS_CONTROLLER_PRI_NEW = $0E00
!ELEVATOR_PROPERTIES = $0E16
!ELEVATOR_STATUS = $0E18
!HEALTH_BOMB_FLAG = $0E1A
!ENEMY_BG2_VRAM_TRANSFER_FLAG = $0E1E
!ENEMY_MAIN_LOOP_COUNTER = $0E44
!ENEMY_KILLS_COUNTER = $0E50
!ENEMY_KILLS_UNLOCK = $0E52
!ENEMY_INDEX = $0E54
!ENEMY_ID = $0F78
!ENEMY_X = $0F7A
!ENEMY_X_SUBPX = $0F7C
!ENEMY_Y = $0F7E
!ENEMY_Y_SUBPX = $0F80
!ENEMY_X_RADIUS = $0F82
!ENEMY_Y_RADIUS = $0F84
!ENEMY_PROPERTIES = $0F86
!ENEMY_EXTRA_PROPERTIES = $0F88
!ENEMY_HP = $0F8C
!ENEMY_SPRITEMAP = $0F8E
!ENEMY_TIMER = $0F90
!ENEMY_INIT_PARAM = $0F92
!ENEMY_PALETTE_INDEX = $0F96
!ENEMY_FROZEN_TIMER = $0F9E
!ENEMY_BANK = $0FA6
!ENEMY_FUNCTION_POINTER = $0FA8
!ENEMY_VAR_1 = $0FAA
!ENEMY_VAR_2 = $0FAC
!ENEMY_VAR_3 = $0FAE
!ENEMY_VAR_4 = $0FB0
!ENEMY_VAR_5 = $0FB2
!ENEMY_PARAM_1 = $0FB4
!ENEMY_PARAM_2 = $0FB6
!EARTHQUAKE_TYPE = $183E
!EARTHQUAKE_TIMER = $1840
!SAMUS_IFRAME_TIMER = $18A8
!SAMUS_KNOCKBACK_TIMER = $18AA
!LAVA_ACID_Y = $1962
!FX_BASE_Y = $1978
!ENEMY_PROJ_ENABLE = $198D
!ENEMY_PROJ_ID = $1997
!ENEMY_PROJ_X_SUBPX = $1A27
!ENEMY_PROJ_X = $1A4B
!ENEMY_PROJ_Y_SUBPX = $1A6F
!ENEMY_PROJ_Y = $1A93
!ENEMY_PROJ_X_VELOCITY = $1AB7
!ENEMY_PROJ_Y_VELOCITY = $1ADB
!ENEMY_PROJ_RADIUS = $1BB3
!ENEMY_PROJ_PROPERTIES = $1BD7
!MESSAGE_BOX_INDEX = $1C1F
!PLM_ENABLE = $1C23
!PLM_GFX_INDEX = $1C2D
!PLM_ID = $1C37
!PLM_BLOCK_INDEX = $1C87
!PLM_PREINSTRUCTION = $1CD7
!PLM_INSTRUCTION_LIST_POINTER = $1D27
!PLM_TIMER = $1D77
!PLM_ROOM_ARGUMENT = $1DC7
!PLM_VARIABLE = $1E17
!SAVE_STATION_LOCKOUT = $1E75
!PALETTE_FX_ENABLE = $1E79
!PALETTE_FX_ID = $1E7D
!PALETTE_FX_COLOR_INDICES = $1E8D
!PALETTE_FX_VARIABLE = $1E9D
!PALETTE_FX_PREINSTRUCTION = $1EAD
!PALETTE_FX_INSTRUCTION_POINTER = $1EBD
!PALETTE_FX_INSTRUCTION_TIMER = $1ECD
!PALETTE_FX_TIMER = $1EDD
!ANIMATED_TILES_ENABLE = $1EF1
!CINEMATIC_FUNCTION_POINTER = $1F51
!DEMO_TIMER = $1F53
!DEMO_CURRENT_SET = $1F55
!DEMO_CURRENT_SCENE = $1F57

; In rooms with fewer enemies, some enemy RAM is available for use
!ENEMY_1_OFFSET = $40
!ENEMY_2_OFFSET = $80
!ENEMY_1C_OFFSET = $700
!ENEMY_1D_OFFSET = $740
!ENEMY_1E_OFFSET = $780
!ENEMY_1F_OFFSET = $7C0

; An array of 5 words, one per projectile, representing
; the distance Samus travelled horizontally before firing.
; The low byte of each word is integer pixels,
; and the high byte is fractional pixels.
; Yes, that sounds weird, but the math is a little easier.
!eram_infidoppler_offsets          = !ENEMY_VAR_1+!ENEMY_1C_OFFSET ; array of 5 words
!eram_infidoppler_x                = !ENEMY_VAR_1+!ENEMY_1D_OFFSET
!eram_infidoppler_subx             = !ENEMY_VAR_2+!ENEMY_1D_OFFSET
!eram_infidoppler_y                = !ENEMY_VAR_3+!ENEMY_1D_OFFSET
!eram_infidoppler_suby             = !ENEMY_VAR_4+!ENEMY_1D_OFFSET
!eram_phantoon_always_visible      = !ENEMY_VAR_5+!ENEMY_1D_OFFSET
!eram_phantoon_rng_round_1         = !ENEMY_VAR_1+!ENEMY_1E_OFFSET
!eram_phantoon_rng_round_2         = !ENEMY_VAR_2+!ENEMY_1E_OFFSET
!eram_phantoon_rng_flip            = !ENEMY_VAR_3+!ENEMY_1E_OFFSET
!eram_phantoon_rng_eyeclose        = !ENEMY_VAR_4+!ENEMY_1E_OFFSET
!eram_phantoon_rng_flames          = !ENEMY_VAR_1+!ENEMY_1F_OFFSET
!eram_phantoon_rng_next_flames     = !ENEMY_VAR_2+!ENEMY_1F_OFFSET
!eram_phantoon_rng_flame_direction = !ENEMY_VAR_3+!ENEMY_1F_OFFSET

!eram_ceres_ridley_rng             = !ENEMY_VAR_1+!ENEMY_1E_OFFSET
!eram_ridley_lunge_pogo_rng        = !ENEMY_VAR_2+!ENEMY_1E_OFFSET
!eram_ridley_swoop_pogo_rng        = !ENEMY_VAR_3+!ENEMY_1E_OFFSET
!eram_ridley_pogo_swoop_rng        = !ENEMY_VAR_4+!ENEMY_1E_OFFSET
!eram_ridley_fireball_rng          = !ENEMY_VAR_5+!ENEMY_1E_OFFSET
!eram_ridley_hover_time_rng        = !ENEMY_VAR_1+!ENEMY_1F_OFFSET
!eram_ridley_pogo_time_rng         = !ENEMY_VAR_2+!ENEMY_1F_OFFSET
!eram_ridley_pogo_height_rng       = !ENEMY_VAR_3+!ENEMY_1F_OFFSET
!eram_ridley_backpogo_rng          = !ENEMY_VAR_4+!ENEMY_1F_OFFSET

!eram_mb_normal_walking_rng        = !ENEMY_VAR_5+!ENEMY_1D_OFFSET
!eram_mb_ketchup_walking_rng       = !ENEMY_VAR_1+!ENEMY_1E_OFFSET
!eram_mb_ketchup_rng               = !ENEMY_VAR_2+!ENEMY_1E_OFFSET
!eram_mb_try_bomb_crouch           = !ENEMY_VAR_3+!ENEMY_1E_OFFSET
!eram_mb_bomb_crouch               = !ENEMY_VAR_4+!ENEMY_1E_OFFSET
!eram_mb_air_rings_rng             = !ENEMY_VAR_5+!ENEMY_1E_OFFSET
!eram_mb_ground_bomb_rng           = !ENEMY_VAR_1+!ENEMY_1F_OFFSET
!eram_mb_ground_attack_rng_table   = !ENEMY_VAR_2+!ENEMY_1F_OFFSET
!eram_mb_close_attack_rng_table    = !ENEMY_VAR_3+!ENEMY_1F_OFFSET
!eram_mb_damage_down_rng           = !ENEMY_VAR_4+!ENEMY_1F_OFFSET
!eram_mb_phase3_attack_rng         = !ENEMY_VAR_5+!ENEMY_1F_OFFSET

!eram_botwoon_first_roll           = !ENEMY_VAR_4+!ENEMY_1E_OFFSET
!eram_botwoon_all_pattern_rng      = !ENEMY_VAR_5+!ENEMY_1E_OFFSET
!eram_botwoon_first_rng            = !ENEMY_VAR_1+!ENEMY_1F_OFFSET
!eram_botwoon_hidden_rng           = !ENEMY_VAR_2+!ENEMY_1F_OFFSET
!eram_botwoon_second_rng           = !ENEMY_VAR_3+!ENEMY_1F_OFFSET
!eram_botwoon_spit_rng             = !ENEMY_VAR_4+!ENEMY_1F_OFFSET
!eram_botwoon_after_spit_rng       = !ENEMY_VAR_5+!ENEMY_1F_OFFSET

!eram_baby_leaving_left            = !ENEMY_VAR_2+!ENEMY_1E_OFFSET
!eram_baby_leaving_right           = !ENEMY_VAR_3+!ENEMY_1E_OFFSET
!eram_baby_backing_off             = !ENEMY_VAR_4+!ENEMY_1E_OFFSET
!eram_baby_rising_delay            = !ENEMY_VAR_5+!ENEMY_1E_OFFSET
!eram_baby_after_drain_delay       = !ENEMY_VAR_1+!ENEMY_1F_OFFSET
!eram_baby_target_x_pos            = !ENEMY_VAR_2+!ENEMY_1F_OFFSET
!eram_baby_dead_hop_delay          = !ENEMY_VAR_3+!ENEMY_1F_OFFSET
!eram_baby_hop_velocity_tables     = !ENEMY_VAR_4+!ENEMY_1F_OFFSET
!eram_baby_initial_delay           = !ENEMY_VAR_5+!ENEMY_1F_OFFSET

!HUD_TILEMAP = $7EC600
!MAP_COUNTER = $7ECAE8 ; Not used in vanilla
!SCROLLS = $7ECD20
!MAP_TILES_EXPLORED_CRATERIA = $7ECD52
!MAP_TILES_EXPLORED_BRINSTAR = $7ECE52
!MAP_TILES_EXPLORED_NORFAIR = $7ECF52
!MAP_TILES_EXPLORED_WRECKED_SHIP = $7ED052
!MAP_TILES_EXPLORED_MARIDIA = $7ED152
!MAP_TILES_EXPLORED_TOURIAN = $7ED252
!MAP_TILES_EXPLORED_CERES = $7ED352
!MAP_TILES_EXPLORED_DEBUG = $7ED452
!MAP_DATA_EXPLORED_COMPRESSED = $7ED91C
!MAP_STATION_FLAGS = $7ED908
!LOADING_GAME_STATE = $7ED914

!INPUT_BIND_UP = $7E09AA
!INPUT_BIND_DOWN = $7E09AC
!INPUT_BIND_LEFT = $7E09AE
!INPUT_BIND_RIGHT = $7E09B0
!IH_INPUT_SHOT = $7E09B2
!IH_INPUT_JUMP = $7E09B4
!IH_INPUT_RUN = $7E09B6
!IH_INPUT_ITEM_CANCEL = $7E09B8
!IH_INPUT_ITEM_SELECT = $7E09BA
!IH_INPUT_ANGLE_DOWN = $7E09BC
!IH_INPUT_ANGLE_UP = $7E09BE

if !FEATURE_MAPSTATES
if !FEATURE_TINYSTATES
!TOTAL_PRESET_SLOTS = #$0001
else
!TOTAL_PRESET_SLOTS = #$0009
endif
!PRESET_SLOT_SIZE = #$0800
!PRESET_SLOTS_ROOM = !PRESET_SLOTS+$6
!PRESET_SLOTS_ENERGY = !PRESET_SLOTS+$28
!PRESET_SLOTS_MAXENERGY = !PRESET_SLOTS+$2A
!PRESET_SLOTS_MISSILES = !PRESET_SLOTS+$2C
!PRESET_SLOTS_SUPERS = !PRESET_SLOTS+$30
!PRESET_SLOTS_PBS = !PRESET_SLOTS+$34
!PRESET_SLOTS_RESERVES = !PRESET_SLOTS+$3C
else
if !FEATURE_TINYSTATES
!TOTAL_PRESET_SLOTS = #$000F
!PRESET_SLOT_SIZE = #$0100
!PRESET_SLOTS_ROOM = !PRESET_SLOTS+$6
!PRESET_SLOTS_ENERGY = !PRESET_SLOTS+$28
!PRESET_SLOTS_MAXENERGY = !PRESET_SLOTS+$2A
!PRESET_SLOTS_MISSILES = !PRESET_SLOTS+$2C
!PRESET_SLOTS_SUPERS = !PRESET_SLOTS+$30
!PRESET_SLOTS_PBS = !PRESET_SLOTS+$34
!PRESET_SLOTS_RESERVES = !PRESET_SLOTS+$3C
else
!TOTAL_PRESET_SLOTS = #$0027
!PRESET_SLOT_SIZE = #$0200
!PRESET_SLOTS_ROOM = !PRESET_SLOTS+$A
!PRESET_SLOTS_ENERGY = !PRESET_SLOTS+$2C
!PRESET_SLOTS_MAXENERGY = !PRESET_SLOTS+$2E
!PRESET_SLOTS_MISSILES = !PRESET_SLOTS+$30
!PRESET_SLOTS_SUPERS = !PRESET_SLOTS+$34
!PRESET_SLOTS_PBS = !PRESET_SLOTS+$38
!PRESET_SLOTS_RESERVES = !PRESET_SLOTS+$40
endif
endif


; ----------
; Save/Load
; ----------

if !FEATURE_SD2SNES
if !FEATURE_TINYSTATES
!SRAM_DMA_BANK = $737000
!SRAM_SAVED_SP = $737F00
!SRAM_SAVED_STATE = $737F02
!SRAM_SAVED_RNG = $737F80
!SRAM_SAVED_FRAME_COUNTER = $737F82
!SRAM_SAVED_ENEMY_COUNTER = $737F84
!SRAM_TINYSTATE_ROOM = $737F86
!SRAM_SEG_TIMER_F = $737F88
!SRAM_SEG_TIMER_S = $737F8A
!SRAM_SEG_TIMER_M = $737F8C
!SRAM_SAVED_MINIMAP = $737F8E
!SRAM_SLOWDOWN_MODE = $737F90
else
!SRAM_DMA_BANK = $770000
!SRAM_SAVED_RNG = $770080
!SRAM_SAVED_FRAME_COUNTER = $770082
!SRAM_SAVED_ENEMY_COUNTER = $770084
!SRAM_SAVED_SP = $774004
!SRAM_SAVED_STATE = $774006
!SRAM_SAVED_MINIMAP = $774008
!SRAM_SEG_TIMER_F = $77400A
!SRAM_SEG_TIMER_S = $77400C
!SRAM_SEG_TIMER_M = $77400E
!SRAM_SLOWDOWN_MODE = $774010
endif
endif


; --------------------
; Aliases and Bitmasks
; --------------------

; this is moved here to prevent symbols.asm from having duplicate labels
if !FEATURE_TINYSTATES
!sram_custom_header = !sram_custom_header_tinystates
!sram_custom_preset_safewords = !sram_custom_preset_safewords_tinystates
!sram_custom_preset_names = !sram_custom_preset_names_tinystates
else
!sram_custom_header = !sram_custom_header_normal
!sram_custom_preset_safewords = !sram_custom_preset_safewords_normal
!sram_custom_preset_names = !sram_custom_preset_names_normal
endif

!DP_MenuIndices = $00 ; 0x4
!DP_CurrentMenu = $04 ; 0x4
!DP_Address = $08 ; 0x4
!DP_JSLTarget = $0C ; 0x4
!DP_CtrlInput = $10 ; 0x4
!DP_Palette = $14
!DP_Temp = $16
; v these repeat v
!DP_ToggleValue = $18
!DP_Increment = $1A
!DP_Minimum = $1C
!DP_Maximum = $1E
!DP_DrawValue = $18
!DP_FirstDigit = $1A
!DP_SecondDigit = $1C
!DP_ThirdDigit = $1E
!DP_KB_Index = $18
!DP_KB_Row = $1A
!DP_KB_Control = $1C
!DP_KB_Shift = $1E
!DP_Ctrl2Input = $1C ; 0x4
; v single digit editing v
!DP_DigitAddress = $20 ; 0x4
!DP_DigitValue = $24
!DP_DigitMinimum = $26
!DP_DigitMaximum = $28

!ACTION_TOGGLE              = #$0000
!ACTION_TOGGLE_BIT          = #$0002
!ACTION_TOGGLE_INVERTED     = #$0004
!ACTION_TOGGLE_BIT_INVERTED = #$0006
!ACTION_NUMFIELD            = #$0008
!ACTION_NUMFIELD_HEX        = #$000A
!ACTION_NUMFIELD_WORD       = #$000C
!ACTION_NUMFIELD_HEX_WORD   = #$000E
!ACTION_NUMFIELD_SIGNED     = #$0010
!ACTION_NUMFIELD_READONLY   = #$0012
!ACTION_NUMFIELD_COLOR      = #$0014
!ACTION_NUMFIELD_SOUND      = #$0016
!ACTION_CHOICE              = #$0018
!ACTION_CHOICE_JSL_TEXT     = #$001A
!ACTION_CTRL_SHORTCUT       = #$001C
!ACTION_CTRL_INPUT          = #$001E
!ACTION_JSL                 = #$0020
!ACTION_JSL_SUBMENU         = #$0022
!ACTION_CUSTOM_PRESET       = #$0024
!ACTION_RAM_WATCH           = #$0026
!ACTION_DYNAMIC             = #$0028
!ACTION_MANAGE_PRESETS      = #$002A
!ACTION_CATEGORY_PRESET     = #$002C
!ACTION_ADJUST_ITEM         = #$002E

!SAFEWORD = #$5AFE

if !FEATURE_PAL
!FRAMERATE = #$0032
!FRAMERATE_2X = #$0064
else
!FRAMERATE = #$003C
!FRAMERATE_2X = #$0078
endif

!CTRL_SHORTCUT_TYPE_MASK = #$007F
!CTRL_SHORTCUT_EXACT_MATCH = #$0080

; By default, value is zero and we assume there are no issues
!SRAM_DETECTION_32KB = #$0032
!SRAM_DETECTION_128KB = #$0128
!SRAM_DETECTION_ZSNES = #$0505

!SLOWDOWN_FRAME_ADVANCE = #$8000
!SLOWDOWN_PAUSED_MAIN_MENU = #$FFFE
!SLOWDOWN_PAUSED = #$FFFF

!SUIT_PROPERTIES_MASK = #$0007
!SUIT_PROPRETIES_PAL_DEBUG_FLAG = #$0008

!FRAME_COUNTER_USE_IGT = #$0001
!FRAME_COUNTER_ADJUST_REALTIME = #$0002

!ROOM_LAYOUT_NO_MAGNET_STAIRS = #$0001
!ROOM_LAYOUT_AREA_RANDO = #$0002
!ROOM_LAYOUT_ANTISOFTLOCK = #$0004
!ROOM_LAYOUT_DASH_RECALL = #$0008
!ROOM_LAYOUT_AREA_RANDO_OR_DASH_RECALL = #$000A
!ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL = #$000C
!ROOM_LAYOUT_AREA_ANTISOFTLOCK_OR_DASH_RECALL = #$000E
!ROOM_LAYOUT_VARIA_TWEAKS = #$0010
!ROOM_LAYOUT_DASH_RECALL_OR_VARIA_TWEAKS = #$0018
!ROOM_LAYOUT_ANY_RANDO = #$001E
!ROOM_LAYOUT_NO_STEAM_COLLISION = #$0020

!SPRITE_SAMUS_HITBOX = #$0001
!SPRITE_ENEMY_HITBOX = #$0002
!SPRITE_EXTENDED_HITBOX = #$0004
!SPRITE_BOSS_HITBOX = #$0008
!SPRITE_SAMUS_PROJ = #$0010
!SPRITE_ENEMY_PROJ = #$0020
!SPRITE_32x32_PROJ = #$0040
!SPRITE_OOB_WATCH = #$0080

!CUTSCENE_SKIP_INTRO = #$0001
!CUTSCENE_SKIP_CERES_ARRIVAL = #$0002
!CUTSCENE_SKIP_G4 = #$0080
!CUTSCENE_FAST_MB = #$0100
!CUTSCENE_FAST_PHANTOON = #$0200
!CUTSCENE_FAST_KRAID = #$0400
!CUTSCENE_SKIP_SPLASH = #$0800
!CUTSCENE_QUICKBOOT = #$0800
!CUTSCENE_SKIP_GAMEOVER = #$1000
!CUTSCENE_FAST_BOWLING = #$2000
!CUTSCENE_KRAID_DEATH_CAMERA = #$4000

!SUPPRESS_CRATERIA_LIGHTNING = #$0001
!SUPPRESS_ESCAPE_FLASHING = #$0002
!SUPPRESS_POWER_BOMB_FLASH = #$0004
!SUPPRESS_MB1_FLASHING = #$0008
!SUPPRESS_BOSS_DAMAGE_FLASH = #$0010
!SUPPRESS_EARTHQUAKE = #$0020

!PRESETS_COMPRESSED_GRAPHICS = #$0001
!PRESETS_COMPRESSED_PALETTES = #$0002
!PRESETS_COMPRESSED_TABLES = #$0004
!PRESETS_COMPRESSED = #$0007
!PRESETS_CLOSE_BLUE_DOORS = #$0008
!PRESETS_PRESERVE_ENEMIES = #$0010
!PRESETS_CLEAR_MAP_TILES = #$0020
!PRESETS_AUTO_SEGMENT_OFF = #$0040
!PRESETS_ELEVATOR_LONG = #$0100
!PRESETS_ELEVATOR_OFF = #$0200
!PRESETS_ELEVATOR_MASK = #$0300

!PRESET_EQUIP_RANDO_ENABLE = #$0001
!PRESET_EQUIP_RANDO_FORCE_MORPH = #$0002
!PRESET_EQUIP_RANDO_FORCE_CHARGE = #$0004
!PRESET_EQUIP_RANDO_INIT = #$0006

!DOOR_PORTAL_DISABLED = #$0000
!DOOR_PORTAL_AREA_BOSS = #$0001
!DOOR_PORTAL_RIGHT_LEFT = #$0002
!DOOR_PORTAL_DOWN_UP = #$0003
!DOOR_PORTAL_MODE_MASK = #$0003
!DOOR_PORTAL_IFRAMES_BIT = #$0004
!DOOR_PORTAL_JUMP_BIT = #$0008
!DOOR_PORTAL_HORIZONTAL_MIRRORING_BIT = #$0010
!DOOR_PORTAL_EXCLUDE_JUMP_MASK = #$FFF7

!PHANTOON_RNG_PHASE_1_MASK          = #$003F
!PHANTOON_RNG_PHASE_1_INVERTED      = #$FFC0
!PHANTOON_RNG_FLIP_MASK             = #$00C0
!PHANTOON_RNG_FLIP_INVERTED         = #$FF3F
!PHANTOON_RNG_PHASE_2_MASK          = #$3F00
!PHANTOON_RNG_PHASE_2_INVERTED      = #$C0FF
!PHANTOON_RNG_PHASE_2_FLIP_INVERTED = #$C03F
!PHANTOON_RNG_VISIBLE_BIT           = #$4000
!PHANTOON_RNG_VISIBLE_INVERTED      = #$BFFF

!PHANTOON_RNG_FLAMES_MASK           = #$0007
!PHANTOON_RNG_FLAMES_INVERTED       = #$FFF8
!PHANTOON_RNG_FLAMES_PATH_MASK      = #$00C0
!PHANTOON_RNG_FLAMES_PATH_INVERTED  = #$FF3F
!PHANTOON_RNG_FLAMES_NEXT_MASK      = #$0700
!PHANTOON_RNG_FLAMES_NEXT_INVERTED  = #$F8FF
!PHANTOON_RNG_EYE_CLOSE_MASK        = #$C000
!PHANTOON_RNG_EYE_CLOSE_INVERTED    = #$3FFF

!RIDLEY_RNG_CERES_FIREBALL          = #$0001
!RIDLEY_RNG_CERES_LUNGE             = #$0002
!RIDLEY_RNG_CERES_SWOOP             = #$0003
!RIDLEY_RNG_CERES_MASK              = #$0007
!RIDLEY_RNG_CERES_INVERTED          = #$FFF8
!RIDLEY_RNG_POGO_HEIGHT_MASK        = #$0038
!RIDLEY_RNG_POGO_HEIGHT_INVERTED    = #$FFC7
!RIDLEY_RNG_75_25_LUNGE             = #$0040
!RIDLEY_RNG_75_25_POGO              = #$0080
!RIDLEY_RNG_75_25_MASK              = #$00C0
!RIDLEY_RNG_75_25_INVERTED          = #$FF3F
!RIDLEY_RNG_BACKPOGO_MASK           = #$3F00
!RIDLEY_RNG_BACKPOGO_INVERTED       = #$C0FF
!RIDLEY_RNG_50_50_SWOOP             = #$4000
!RIDLEY_RNG_50_50_POGO              = #$8000
!RIDLEY_RNG_50_50_MASK              = #$C000
!RIDLEY_RNG_50_50_INVERTED          = #$3FFF

!RIDLEY_RNG_HOVER_TIME_MASK         = #$003F
!RIDLEY_RNG_HOVER_TIME_INVERTED     = #$FFC0
!RIDLEY_RNG_ALL_FIREBALL            = #$0040
!RIDLEY_RNG_NO_FIREBALL             = #$0080
!RIDLEY_RNG_FIREBALL_MASK           = #$00C0
!RIDLEY_RNG_FIREBALL_INVERTED       = #$FF3F
!RIDLEY_RNG_POGO_TIME_MASK          = #$FF00
!RIDLEY_RNG_POGO_TIME_INVERTED      = #$00FF

!MB_RNG_WALKING_MASK                = #$0003
!MB_RNG_WALKING_INVERTED            = #$FFFC
!MB_RNG_KETCHUP_MASK                = #$000C
!MB_RNG_KETCHUP_INVERTED            = #$FFF3
!MB_RNG_DAMAGE_DOWN_MASK            = #$0030
!MB_RNG_DAMAGE_DOWN_INVERTED        = #$FFCF
!MB_RNG_PHASE3_ATTACK_RINGS         = #$0080
!MB_RNG_PHASE3_ATTACK_BOMBS         = #$0100
!MB_RNG_PHASE3_ATTACK_MASK          = #$0180
!MB_RNG_PHASE3_ATTACK_INVERTED      = #$FE7F
!MB_RNG_NORMAL_ATTACK_MASK          = #$0E00
!MB_RNG_NORMAL_ATTACK_INVERTED      = #$F1FF
!MB_RNG_BOMB_CROUCH_MASK            = #$C000
!MB_RNG_BOMB_CROUCH_INVERTED        = #$3FFF

; Each botwoon pattern can be #$00 (off), #$01, #$09, #$11, #$19
; (except hidden pattern cannot be #$19)
; This corresponds to just three bits of information
; For efficiency this information can be overlapped,
; allowing for the spit value (#$00, #$04, #$08) to be included
; and also the after spit value in the most and least significant bits
!BOTWOON_RNG_FIRST_MASK             = #$0032 ; #$0019 << 1
!BOTWOON_RNG_FIRST_INVERTED         = #$FFCD
!BOTWOON_RNG_FIRST_ENABLED          = #$0002
!BOTWOON_RNG_FIRST_VALUE            = #$0030
!BOTWOON_RNG_HIDDEN_MASK            = #$0C80 ; #$1900 >> 1
!BOTWOON_RNG_HIDDEN_INVERTED        = #$F37F
!BOTWOON_RNG_HIDDEN_ENABLED         = #$0080
!BOTWOON_RNG_HIDDEN_VALUE           = #$0C00
!BOTWOON_RNG_SECOND_MASK            = #$3200 ; #$1900 << 1
!BOTWOON_RNG_SECOND_INVERTED        = #$CDFF
!BOTWOON_RNG_SECOND_ENABLED         = #$0200
!BOTWOON_RNG_SECOND_VALUE           = #$3000
!BOTWOON_RNG_SPIT_MASK              = #$000C
!BOTWOON_RNG_SPIT_INVERTED          = #$FFF3
!BOTWOON_RNG_AFTER_SPIT_ENABLED     = #$8000
!BOTWOON_RNG_AFTER_SPIT_MASK        = #$8001
!BOTWOON_RNG_AFTER_SPIT_INVERTED    = #$7FFE

!PROFILE_CUSTOM       = #$0000
!PROFILE_Twitch       = #$0001
!PROFILE_Default      = #$0002
!PROFILE_Firebat      = #$0003
!PROFILE_wardrinker   = #$0004
!PROFILE_mm2          = #$0005
!PROFILE_ptoil        = #$0006
!PROFILE_Zohdin       = #$0007
!PROFILE_DarkXoa      = #$0008
!PROFILE_Melonax      = #$0009
!PROFILE_TopsyTurvy   = #$000A
!PROFILE_OST          = #$000B
!PROFILE_JRP          = #$000C
!PROFILE_Layrus       = #$000D
!PROFILE_Dayne        = #$000E
!PROFILE_DreamCowboy  = #$000F
!PROFILE_Zeni         = #$0010
!PROFILE_Dyce         = #$0011
!PROFILE_Forever      = #$0012
!PROFILE_Grey         = #$0013
!PROFILE_Red          = #$0014
!PROFILE_Purple       = #$0015
!PROFILE_HUD          = #$0016
!PROFILE_Memes        = #$0017
!PROFILE_Grapedrinkz  = #$0018
!PROFILE_PapaSchmo    = #$0019
!PROFILE_Vespher      = #$001A
!PROFILE_EXAKT        = #$001B
!PROFILE_COUNT        = #$001C

