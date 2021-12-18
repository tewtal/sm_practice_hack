; ---------
; Work RAM
; ---------

!WRAM_BANK = #$007E
!WRAM_SIZE = #$0200
!WRAM_START = $7EFB00

!ram_load_preset = !WRAM_START+$00
!ram_gametime_room = !WRAM_START+$02
!ram_last_gametime_room = !WRAM_START+$04
!ram_realtime_room = !WRAM_START+$06
!ram_last_realtime_room = !WRAM_START+$08
!ram_last_room_lag = !WRAM_START+$0A
!ram_last_door_lag_frames = !WRAM_START+$0C
!ram_transition_counter = !WRAM_START+$0E
!ram_transition_flag = !WRAM_START+$10
!ram_transition_flag_2 = !WRAM_START+$12

!ram_seg_rt_frames = !WRAM_START+$14
!ram_seg_rt_seconds = !WRAM_START+$16
!ram_seg_rt_minutes = !WRAM_START+$18
!ram_reset_segment_later = !WRAM_START+$1A

!ram_ih_controller = !WRAM_START+$1C
!ram_slowdown_controller_1 = !WRAM_START+$1E
!ram_slowdown_controller_2 = !WRAM_START+$20
!ram_slowdown_frames = !WRAM_START+$22

!ram_tmp_1 = !WRAM_START+$24
!ram_tmp_2 = !WRAM_START+$26
!ram_tmp_3 = !WRAM_START+$28
!ram_tmp_4 = !WRAM_START+$2A

!ram_last_hp = !WRAM_START+$2C
!ram_reserves_last = !WRAM_START+$2E

!ram_pct_1 = !WRAM_START+$30
!ram_pct_2 = !WRAM_START+$32
!ram_armed_shine_duration = !WRAM_START+$34
!ram_minimap = !WRAM_START+$36
!ram_map_counter = !WRAM_START+$38
!ram_vcounter_data = !WRAM_START+$3A

!ram_sprite_samus_hitbox_active = !WRAM_START+$3C
!ram_sprite_enemy_hitbox_active = !WRAM_START+$3E
!ram_sprite_extended_hitbox_active = !WRAM_START+$40
!ram_oob_watch_active = !WRAM_START+$42
!ram_sprite_samusproj_hitbox_active = !WRAM_START+$44
!ram_sprite_enemyproj_hitbox_active = !WRAM_START+$46
!ram_custom_preset = !WRAM_START+$48
!ram_fix_scroll_offsets = !WRAM_START+$4A

; ^ FREE SPACE ^ up to +$4E

!ram_magic_pants_enabled = !WRAM_START+$50
!ram_magic_pants_state = !WRAM_START+$52
!ram_magic_pants_pal1 = !WRAM_START+$54
!ram_magic_pants_pal2 = !WRAM_START+$56
!ram_magic_pants_pal3 = !WRAM_START+$58
!ram_draygon_rng_left = !WRAM_START+$5E
!ram_draygon_rng_right = !WRAM_START+$60

!ram_room_has_set_rng = !WRAM_START+$5A
!ram_kraid_rng = !WRAM_START+$5C
!ram_crocomire_rng = !WRAM_START+$5E
!ram_phantoon_rng_1 = !WRAM_START+$60
!ram_phantoon_rng_2 = !WRAM_START+$62
!ram_phantoon_rng_3 = !WRAM_START+$64
!ram_phantoon_rng_4 = !WRAM_START+$66
!ram_phantoon_rng_5 = !WRAM_START+$68
!ram_botwoon_rng = !WRAM_START+$6A
!ram_draygon_rng_left = !WRAM_START+$6C
!ram_draygon_rng_right = !WRAM_START+$6E

!ram_game_loop_extras = !WRAM_START+$70
!ram_game_mode_extras = !WRAM_START+$72
!ram_sprite_features_active = !WRAM_START+$74

!ram_suits_enemy_damage_check = !WRAM_START+$76
!ram_suits_periodic_damage_check = !WRAM_START+$78

!ram_metronome = !WRAM_START+$7A
!ram_metronome_counter = !WRAM_START+$7C

; ^ FREE SPACE ^ up to +$8A

!ram_watch_write_mode = !WRAM_START+$8C
!ram_watch_bank = !WRAM_START+$8E
!ram_watch_left = !WRAM_START+$90
!ram_watch_left_hud = !WRAM_START+$92
!ram_watch_right = !WRAM_START+$94
!ram_watch_right_hud = !WRAM_START+$96
!ram_watch_edit_left = !WRAM_START+$98
!ram_watch_edit_right = !WRAM_START+$9A
!ram_watch_edit_lock_left = !WRAM_START+$9C
!ram_watch_edit_lock_right = !WRAM_START+$9E

!ram_HUD_check = !WRAM_START+$A0
!ram_roomstrat_counter = !WRAM_START+$A2
!ram_roomstrat_state = !WRAM_START+$A4
!ram_enemy_hp = !WRAM_START+$A6
!ram_mb_hp = !WRAM_START+$A8
!ram_shot_timer = !WRAM_START+$AA
!ram_shine_counter = !WRAM_START+$AC
!ram_dash_counter = !WRAM_START+$AE
!ram_shinetune_early_1 = !WRAM_START+$B0
!ram_shinetune_late_1 = !WRAM_START+$B2
!ram_shinetune_early_2 = !WRAM_START+$B4
!ram_shinetune_late_2 = !WRAM_START+$B6
!ram_shinetune_early_3 = !WRAM_START+$B8
!ram_shinetune_late_3 = !WRAM_START+$BA
!ram_shinetune_early_4 = !WRAM_START+$BC
!ram_shinetune_late_4 = !WRAM_START+$BE
!ram_shine_dash_held_late = !WRAM_START+$C0
!ram_xpos = !WRAM_START+$C2
!ram_ypos = !WRAM_START+$C4
!ram_subpixel_pos = !WRAM_START+$C6
!ram_horizontal_speed = !WRAM_START+$C8
!ram_vertical_speed = !WRAM_START+$CA
!ram_quickdrop_counter = !WRAM_START+$CC
!ram_walljump_counter = !WRAM_START+$CE

; ^ FREE SPACE ^ up to +$FC

; -----------------------
; RAM (Bank 7E required)
; -----------------------

!ram_slowdown_mode = $7EFBFE

; ---------
; RAM Menu
; ---------

!WRAM_MENU_START = $7EFC00

!ram_cm_stack_index = $05D5
!ram_cm_menu_stack = !WRAM_MENU_START+$00         ; 16 bytes
!ram_cm_cursor_stack = !WRAM_MENU_START+$10       ; 16 bytes

!ram_cm_cursor_max = !WRAM_MENU_START+$20
!ram_cm_input_timer = !WRAM_MENU_START+$24
!ram_cm_controller = !WRAM_MENU_START+$26
!ram_cm_menu_bank = !WRAM_MENU_START+$28

!ram_cm_etanks = !WRAM_MENU_START+$2A
!ram_cm_reserve = !WRAM_MENU_START+$2C
!ram_cm_leave = !WRAM_MENU_START+$2E
!ram_cm_input_counter = !WRAM_MENU_START+$30
!ram_cm_last_nmi_counter = !WRAM_MENU_START+$32

!ram_cm_ctrl_mode = !WRAM_MENU_START+$34
!ram_cm_ctrl_timer = !WRAM_MENU_START+$36
!ram_cm_ctrl_last_input = !WRAM_MENU_START+$38

; ^ FREE SPACE ^ up to +$7E

; ------------------
; Reusable RAM Menu
; ------------------

; The following RAM may be used multiple times,
; as long as it isn't used multiple times on the same menu page

!ram_cm_watch_left_hi = !WRAM_MENU_START+$80
!ram_cm_watch_left_lo = !WRAM_MENU_START+$82
!ram_cm_watch_left_enemy_property = !WRAM_MENU_START+$84
!ram_cm_watch_left_enemy_index = !WRAM_MENU_START+$86
!ram_cm_watch_right_hi = !WRAM_MENU_START+$88
!ram_cm_watch_right_lo = !WRAM_MENU_START+$8A
!ram_cm_watch_right_enemy_property = !WRAM_MENU_START+$8C
!ram_cm_watch_right_enemy_index = !WRAM_MENU_START+$8E
!ram_cm_watch_edit_left_hi = !WRAM_MENU_START+$90
!ram_cm_watch_edit_left_lo = !WRAM_MENU_START+$92
!ram_cm_watch_edit_right_hi = !WRAM_MENU_START+$94
!ram_cm_watch_edit_right_lo = !WRAM_MENU_START+$96

!ram_cm_botwoon_rng = !WRAM_MENU_START+$80

; ^ FREE SPACE ^ up to +$CE

!ram_cgram_cache = !WRAM_MENU_START+$D0         ; 20 bytes

!ram_hex2dec_first_digit = $14
!ram_hex2dec_second_digit = $16
!ram_hex2dec_third_digit = $18
!ram_hex2dec_rest = $1A

!ACTION_TOGGLE          = #$0000
!ACTION_TOGGLE_BIT      = #$0002
!ACTION_JSR             = #$0004
!ACTION_NUMFIELD        = #$0006
!ACTION_CHOICE          = #$0008
!ACTION_CTRL_SHORTCUT   = #$000A
!ACTION_NUMFIELD_HEX    = #$000C
!ACTION_NUMFIELD_WORD   = #$000E
!ACTION_TOGGLE_INVERTED = #$0010
!ACTION_NUMFIELD_COLOR  = #$0012

!SOUND_MENU_MOVE = $0039
!SOUND_MENU_JSR = $0039
!SOUND_MENU_FAIL = $0007


; ---------
; Pointers
; ---------

!IH_CONTROLLER_PRI = $8B
!IH_CONTROLLER_PRI_NEW = $8F
!IH_CONTROLLER_PRI_PREV = $97

!IH_CONTROLLER_SEC = $8D
!IH_CONTROLLER_SEC_NEW = $91
!IH_CONTROLLER_SEC_PREV = $99

!IH_BLANK = #$2C0F
!IH_PERCENT = #$0C0A
!IH_DECIMAL = #$0CCB
!IH_HYPHEN = #$0C55
!IH_RESERVE_AUTO = #$0C32
!IH_RESERVE_EMPTY = #$0C33
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
!IH_ELEVATOR = #$1C0B
!IH_SHINETIMER = #$0047

!IH_PAUSE = #$0100 ; right
!IH_SLOWDOWN = #$0400 ; down
!IH_SPEEDUP = #$0800 ; up
!IH_RESET = #$0200 ; left
!IH_STATUS_R = #$0010 ; r
!IH_STATUS_L = #$0020 ; l

!IH_INPUT_START = #$1000
!IH_INPUT_UP = #$0800
!IH_INPUT_DOWN = #$0400
!IH_INPUT_LEFT = #$0200
!IH_INPUT_RIGHT = #$0100
!IH_INPUT_HELD = #$0001 ; used by menu

!IH_INPUT_SHOOT = $7E09B2
!IH_INPUT_JUMP = $7E09B4
!IH_INPUT_RUN = $7E09B6
!IH_INPUT_ITEM_CANCEL = $7E09B8
!IH_INPUT_ITEM_SELECT = $7E09BA
!IH_INPUT_ANGLE_UP = $7E09BC
!IH_INPUT_ANGLE_DOWN = $7E09BE


; --------------
; Vanilla Labels
; --------------

!MUSIC_ROUTINE = $808FC1
!SFX_LIB1 = $80903F
!SFX_LIB2 = $8090C1
!SFX_LIB3 = $809143

!OAM_STACK_POINTER = $0590
!MUSIC_BANK = $07F3
!MUSIC_TRACK = $07F5
!LAYER1_X = $0911
!LAYER1_Y = $0915
!SAMUS_RESERVE_MODE = $09C0
!SAMUS_HP = $09C2
!SAMUS_RESERVE_MAX = $09D4
!SAMUS_RESERVE_ENERGY = $09D6
!SAMUS_X = $0AF6
!SAMUS_Y = $0AFA
!SAMUS_X_RADIUS = $0AFE
!SAMUS_Y_RADIUS = $0B00
!SAMUS_SPRITEMAP_X = $0B04
!SAMUS_PROJ_X = $0B64
!SAMUS_PROJ_Y = $0B78
!SAMUS_PROJ_RADIUS_X = $0BB4
!SAMUS_PROJ_RADIUS_Y = $0BC8
!ENEMY_X = $0F7A
!ENEMY_Y = $0F7E
!ENEMY_X_RADIUS = $0F82
!ENEMY_Y_RADIUS = $0F84
!ENEMY_PROPERTIES_2 = $0F88
!ENEMY_SPRITEMAP = $0F8E
!ENEMY_BANK = $0FA6
!ENEMY_PROJ_ID = $1997
!ENEMY_PROJ_X = $1A4B
!ENEMY_PROJ_Y = $1A93
!ENEMY_PROJ_RADIUS = $1BB3


; -----
; SRAM
; -----

!sram_initialized = $702000

!sram_ctrl_menu = $702002
!sram_ctrl_kill_enemies = $702004
!sram_ctrl_full_equipment = $702006
!sram_ctrl_reset_segment_timer = $702008
!sram_ctrl_reset_segment_later = $70200A
!sram_ctrl_load_state = $70200C
!sram_ctrl_save_state = $70200E
!sram_ctrl_load_last_preset = $702010
!sram_ctrl_random_preset = $702012
!sram_ctrl_save_custom_preset = $702014
!sram_ctrl_load_custom_preset = $702016
!sram_ctrl_inc_custom_preset = $702018
!sram_ctrl_dec_custom_preset = $70201A
!sram_ctrl_toggle_tileviewer = $70201C
!sram_ctrl_update_timers = $70201E

!sram_artificial_lag = $702020
!sram_rerandomize = $702022
!sram_fanfare_toggle = $702024
!sram_frame_counter_mode = $702026
!sram_display_mode = $702028
!sram_music_toggle = $70202A
!sram_last_preset = $70202C
!sram_save_has_set_rng = $70202E
!sram_preset_category = $702030
!sram_custom_preset_slot = $702032
!sram_room_strat = $702034
!sram_sprite_prio_flag = $702036
!sram_metronome_tickrate = $702038
!sram_metronome_sfx = $70203A
!sram_status_icons = $70203C
!sram_suit_properties = $70203E
!sram_top_display_mode = $702040

; ^ FREE SPACE ^ up to $703000


; ----------
; Save/Load
; ----------

; Savestate code variables
!SS_INPUT_CUR = $8B
!SS_INPUT_NEW = $8F
!SS_INPUT_PREV = $97

!SRAM_DMA_BANK = $770000
!SRAM_SAVED_SP = $774004

; SM specific things
!SRAM_MUSIC_BANK = $701FD0
!SRAM_MUSIC_TRACK = $701FD2

