; ---------
; Work RAM
; ---------

!ram_tilemap_buffer = $7E5800
!CRASHDUMP_TILEMAP_BUFFER = !ram_tilemap_buffer

!WRAM_BANK = #$007E
!WRAM_SIZE = #$0200
!WRAM_START = $7EFD00

!ram_load_preset = !WRAM_START+$00
!ram_gametime_room = !WRAM_START+$02
!ram_last_gametime_room = !WRAM_START+$04
!ram_realtime_room = !WRAM_START+$06
!ram_last_realtime_room = !WRAM_START+$08
!ram_last_room_lag = !WRAM_START+$0A
!ram_last_door_lag_frames = !WRAM_START+$0C
!ram_transition_counter = !WRAM_START+$0E
!ram_transition_flag = !WRAM_START+$10
!ram_last_realtime_door = !WRAM_START+$12

!ram_seg_rt_frames = !WRAM_START+$14
!ram_seg_rt_seconds = !WRAM_START+$16
!ram_seg_rt_minutes = !WRAM_START+$18
!ram_reset_segment_later = !WRAM_START+$1A

!ram_ih_controller = !WRAM_START+$1C
!ram_slowdown_controller_1 = !WRAM_START+$1E
!ram_slowdown_controller_2 = !WRAM_START+$20
!ram_slowdown_frames = !WRAM_START+$22

!ram_momentum_sum = !WRAM_START+$24
!ram_momentum_count = !WRAM_START+$26
!ram_momentum_direction = !WRAM_START+$28
!ram_momentum_last = !WRAM_START+$2A

!ram_last_hp = !WRAM_START+$2C
!ram_reserves_last = !WRAM_START+$2E

!ram_metronome = !WRAM_START+$30
!ram_metronome_counter = !WRAM_START+$32

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
!ram_random_preset_rng = !WRAM_START+$4C
!ram_random_preset_value = !WRAM_START+$4E

!ram_magic_pants_enabled = !WRAM_START+$50
!ram_magic_pants_state = !WRAM_START+$52
!ram_magic_pants_pal1 = !WRAM_START+$54
!ram_magic_pants_pal2 = !WRAM_START+$56
!ram_magic_pants_pal3 = !WRAM_START+$58
!ram_room_has_set_rng = !WRAM_START+$5A
!ram_kraid_rng = !WRAM_START+$5C
!ram_crocomire_rng = !WRAM_START+$5E
!ram_phantoon_rng_round_1 = !WRAM_START+$60
!ram_phantoon_rng_round_2 = !WRAM_START+$62
!ram_phantoon_rng_inverted = !WRAM_START+$64
!ram_phantoon_rng_eyeclose = !WRAM_START+$66
!ram_phantoon_rng_flames = !WRAM_START+$68
!ram_phantoon_rng_next_flames = !WRAM_START+$6A
!ram_botwoon_rng = !WRAM_START+$6C
!ram_draygon_rng_left = !WRAM_START+$6E
!ram_draygon_rng_right = !WRAM_START+$70

!ram_game_loop_extras = !WRAM_START+$72
!ram_game_mode_extras = !WRAM_START+$74
!ram_sprite_features_active = !WRAM_START+$76

!ram_suits_enemy_damage_check = !WRAM_START+$78
!ram_suits_periodic_damage_check = !WRAM_START+$7A
!ram_pacifist = !WRAM_START+$7C
!ram_freeze_on_load = !WRAM_START+$7E

!ram_spacetime_read_address = !WRAM_START+$80
!ram_spacetime_read_bank = !WRAM_START+$82
!ram_spacetime_y = !WRAM_START+$84
!ram_spacetime_infohud = !WRAM_START+$86
!ram_watch_left_index = !WRAM_START+$88
!ram_watch_right_index = !WRAM_START+$8A
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

!ram_sprite_custom_hitbox_active = !WRAM_START+$D0

; ^ FREE SPACE ^ up to +$FC

; -----------------------
; RAM (Bank 7E required)
; -----------------------

!ram_slowdown_mode = $7EFDFE

; ---------
; RAM Menu
; ---------

!WRAM_MENU_START = $7EFE00

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
!ram_cm_ctrl_assign = !WRAM_MENU_START+$3A
!ram_cm_ctrl_swap = !WRAM_MENU_START+$3C
!ram_cm_botwoon_rng = !WRAM_MENU_START+$3E

; ^ FREE SPACE ^ up to +$7E

; ------------------
; Reusable RAM Menu
; ------------------

; The following RAM may be used multiple times,
; as long as it isn't used multiple times on the same menu page

!ram_cm_watch_left_hi = !WRAM_MENU_START+$80
!ram_cm_watch_left_lo = !WRAM_MENU_START+$82
!ram_cm_watch_right_hi = !WRAM_MENU_START+$84
!ram_cm_watch_right_lo = !WRAM_MENU_START+$86
!ram_cm_watch_left_index_lo = !WRAM_MENU_START+$88
!ram_cm_watch_left_index_hi = !WRAM_MENU_START+$8A
!ram_cm_watch_right_index_lo = !WRAM_MENU_START+$8C
!ram_cm_watch_right_index_hi = !WRAM_MENU_START+$8E
!ram_cm_watch_edit_left_hi = !WRAM_MENU_START+$90
!ram_cm_watch_edit_left_lo = !WRAM_MENU_START+$92
!ram_cm_watch_edit_right_hi = !WRAM_MENU_START+$94
!ram_cm_watch_edit_right_lo = !WRAM_MENU_START+$96
!ram_cm_watch_enemy_property = !WRAM_MENU_START+$98
!ram_cm_watch_enemy_index = !WRAM_MENU_START+$9A
!ram_cm_watch_enemy_side = !WRAM_MENU_START+$9C
!ram_cm_watch_bank = !WRAM_MENU_START+$9E
!ram_cm_watch_common_address = !WRAM_MENU_START+$A0

!ram_cm_phan_first_phase = !WRAM_MENU_START+$80
!ram_cm_phan_second_phase = !WRAM_MENU_START+$82

; ^ FREE SPACE ^ up to +$CE

; Reserve 48 bytes for CGRAM cache
; Currently first 22 bytes and last 2 bytes are used
!ram_cgram_cache = !WRAM_MENU_START+$D0

!CRASHDUMP = $7EFF00

!ram_hex2dec_first_digit = $14
!ram_hex2dec_second_digit = $16
!ram_hex2dec_third_digit = $18
!ram_hex2dec_rest = $1A

!ACTION_TOGGLE              = #$0000
!ACTION_TOGGLE_BIT          = #$0002
!ACTION_TOGGLE_INVERTED     = #$0004
!ACTION_TOGGLE_BIT_INVERTED = #$0006
!ACTION_NUMFIELD            = #$0008
!ACTION_NUMFIELD_HEX        = #$000A
!ACTION_NUMFIELD_WORD       = #$000C
!ACTION_NUMFIELD_COLOR      = #$000E
!ACTION_CHOICE              = #$0010
!ACTION_CTRL_SHORTCUT       = #$0012
!ACTION_CTRL_INPUT          = #$0014
!ACTION_JSL                 = #$0016
!ACTION_JSL_SUBMENU         = #$0018

!SOUND_MENU_MOVE = $0039
!SOUND_MENU_JSL = $0039
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

!MENU_BLANK = #$281F
!IH_BLANK = #$2C0F
!IH_PERCENT = #$0C0A
!IH_DECIMAL = #$0CCB
!IH_HYPHEN = #$0C55
!IH_RESERVE_AUTO = #$0C0C
!IH_RESERVE_EMPTY = #$0C0D
!IH_HEALTHBOMB = #$085A
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
!IH_SHINETIMER = #$0032

!IH_PAUSE = #$0100 ; right
!IH_SLOWDOWN = #$0400 ; down
!IH_SPEEDUP = #$0800 ; up
!IH_RESET = #$0200 ; left
!IH_STATUS_R = #$0010 ; r
!IH_STATUS_L = #$0020 ; l

!IH_INPUT_START = #$1000
!IH_INPUT_UP = #$0800
!IH_INPUT_DOWN = #$0400
!IH_INPUT_LEFTRIGHT = #$0300
!IH_INPUT_LEFT = #$0200
!IH_INPUT_RIGHT = #$0100
!IH_INPUT_HELD = #$0001 ; used by menu

!CTRL_B = #$8000
!CTRL_Y = #$4000
!CTRL_SELECT = #$2000
!CTRL_A = #$0080
!CTRL_X = #$0040
!CTRL_L = #$0020
!CTRL_R = #$0010

!IH_INPUT_SHOOT = $7E09B2
!IH_INPUT_JUMP = $7E09B4
!IH_INPUT_RUN = $7E09B6
!IH_INPUT_ITEM_CANCEL = $7E09B8
!IH_INPUT_ITEM_SELECT = $7E09BA
!IH_INPUT_ANGLE_DOWN = $7E09BC
!IH_INPUT_ANGLE_UP = $7E09BE


; --------------
; Vanilla Labels
; --------------

!MUSIC_ROUTINE = $808FC1
!SFX_LIB1 = $80903F
!SFX_LIB2 = $8090C1
!SFX_LIB3 = $809143

!OAM_STACK_POINTER = $0590
!PB_EXPLOSION_STATUS = $0592
!FRAME_COUNTER = $05B6
!CACHED_RANDOM_NUMBER = $05E5
!DISABLE_SOUNDS = $05F5
!SOUND_TIMER = $0686
!ROOM_ID = $079B
!AREA_ID = $079F
!ROOM_WIDTH_BLOCKS = $07A5
!ROOM_WIDTH_SCROLLS = $07A9
!MUSIC_DATA = $07F3
!MUSIC_TRACK = $07F5
!LAYER1_X = $0911
!LAYER1_Y = $0915
!GAMEMODE = $0998
!SAMUS_ITEMS_EQUIPPED = $09A2
!SAMUS_ITEMS_COLLECTED = $09A4
!SAMUS_BEAMS_EQUIPPED = $09A6
!SAMUS_BEAMS_COLLECTED = $09A8
!SAMUS_RESERVE_MODE = $09C0
!SAMUS_HP = $09C2
!SAMUS_HP_MAX = $09C4
!SAMUS_MISSILES = $09C6
!SAMUS_MISSILES_MAX = $09C8
!SAMUS_SUPERS = $09CA
!SAMUS_SUPERS_MAX = $09CC
!SAMUS_PBS = $09CE
!SAMUS_PBS_MAX = $09D0
!SAMUS_RESERVE_MAX = $09D4
!SAMUS_RESERVE_ENERGY = $09D6
!SAMUS_LAST_HP = $0A06
!SAMUS_POSE = $0A1C
!SAMUS_POSE_DIRECTION = $0A1E
!SAMUS_MOVEMENT_TYPE = $0A1F
!SAMUS_PREVIOUS_POSE = $0A20
!SAMUS_PREVIOUS_POSE_DIRECTION = $0A22
!SAMUS_PREVIOUS_MOVEMENT_TYPE = $0A23
!SAMUS_HEALTH_WARNING = $0A6A
!SAMUS_X = $0AF6
!SAMUS_X_SUBPX = $0AF8
!SAMUS_Y = $0AFA
!SAMUS_Y_SUBPX = $0AFC
!SAMUS_X_RADIUS = $0AFE
!SAMUS_Y_RADIUS = $0B00
!SAMUS_SPRITEMAP_X = $0B04
!SAMUS_Y_SUBSPEED = $0B2C
!SAMUS_Y_SPEEDCOMBINED = $0B2D
!SAMUS_Y_SPEED = $0B2E
!SAMUS_Y_DIRECTION = $0B36
!SAMUS_DASH_COUNTER = $0B3F
!SAMUS_X_RUNSPEED = $0B42
!SAMUS_X_SUBRUNSPEED = $0B44
!SAMUS_X_MOMENTUM = $0B46
!SAMUS_X_SUBMOMENTUM = $0B48
!SAMUS_PROJ_X = $0B64
!SAMUS_PROJ_Y = $0B78
!SAMUS_PROJ_RADIUS_X = $0BB4
!SAMUS_PROJ_RADIUS_Y = $0BC8
!SAMUS_COOLDOWN = $0CCC
!SAMUS_CHARGE_TIMER = $0CD0
!ENEMY_X = $0F7A
!ENEMY_Y = $0F7E
!ENEMY_X_RADIUS = $0F82
!ENEMY_Y_RADIUS = $0F84
!ENEMY_PROPERTIES_2 = $0F88
!ENEMY_HP = $0F8C
!ENEMY_SPRITEMAP = $0F8E
!ENEMY_BANK = $0FA6
!SAMUS_IFRAME_TIMER = $18A8
!ENEMY_PROJ_ID = $1997
!ENEMY_PROJ_X = $1A4B
!ENEMY_PROJ_Y = $1A93
!ENEMY_PROJ_RADIUS = $1BB3


; -----
; SRAM
; -----

!SRAM_VERSION = $000E

!SRAM_START = $702000

!sram_initialized = !SRAM_START+$00

!sram_ctrl_menu = !SRAM_START+$02
!sram_ctrl_kill_enemies = !SRAM_START+$04
!sram_ctrl_full_equipment = !SRAM_START+$06
!sram_ctrl_reset_segment_timer = !SRAM_START+$08
!sram_ctrl_reset_segment_later = !SRAM_START+$0A
!sram_ctrl_load_state = !SRAM_START+$0C
!sram_ctrl_save_state = !SRAM_START+$0E
!sram_ctrl_load_last_preset = !SRAM_START+$10
!sram_ctrl_random_preset = !SRAM_START+$12
!sram_ctrl_save_custom_preset = !SRAM_START+$14
!sram_ctrl_load_custom_preset = !SRAM_START+$16
!sram_ctrl_inc_custom_preset = !SRAM_START+$18
!sram_ctrl_dec_custom_preset = !SRAM_START+$1A
!sram_ctrl_toggle_tileviewer = !SRAM_START+$1C
!sram_ctrl_update_timers = !SRAM_START+$1E

!sram_artificial_lag = !SRAM_START+$20
!sram_rerandomize = !SRAM_START+$22
!sram_fanfare_toggle = !SRAM_START+$24
!sram_frame_counter_mode = !SRAM_START+$26
!sram_display_mode = !SRAM_START+$28
!sram_music_toggle = !SRAM_START+$2A
!sram_last_preset = !SRAM_START+$2C
!sram_save_has_set_rng = !SRAM_START+$2E
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

; ^ FREE SPACE ^ up to +$0FCE

; SM specific things
!SRAM_MUSIC_DATA = !SRAM_START+$0FD0
!SRAM_MUSIC_TRACK = !SRAM_START+$0FD2
!SRAM_SOUND_TIMER = !SRAM_START+$0FD4

; ^ FREE SPACE ^ up to +$0FFE

!TOP_DISPLAY_VANILLA = #$0002

!ROOM_LAYOUT_MAGNET_STAIRS = #$0001
!ROOM_LAYOUT_AREA_RANDO = #$0002
!ROOM_LAYOUT_ANTISOFTLOCK = #$0004

!CUTSCENE_SKIP_INTRO = #$0001
!CUTSCENE_SKIP_CERES_ARRIVAL = #$0002
!CUTSCENE_SKIP_G4 = #$0080
!CUTSCENE_FAST_MB = #$0100
!CUTSCENE_FAST_PHANTOON = #$0200
!CUTSCENE_FAST_KRAID = #$0400
!CUTSCENE_SKIP_SPLASH = #$0800

!PRESETS_COMPRESSED_GRAPHICS = #$0001
!PRESETS_COMPRESSED_PALETTES = #$0002
!PRESETS_COMPRESSED_PALETTES_8BIT = #$02
!PRESETS_COMPRESSED_TABLES = #$0004
!PRESETS_CLOSE_BLUE_DOORS = #$0008


; ----------
; Save/Load
; ----------

; Savestate code variables
!SS_INPUT_CUR = $8B
!SS_INPUT_NEW = $8F
!SS_INPUT_PREV = $97

if !FEATURE_TINYSTATES
!SRAM_DMA_BANK = $737000
!SRAM_SAVED_SP = $737F00
!SRAM_SAVED_STATE = $737F02
!SRAM_SAVED_RNG = $737F80
!SRAM_SAVED_FRAME_COUNTER = $737F82
else
!SRAM_DMA_BANK = $770000
!SRAM_SAVED_RNG = $770080
!SRAM_SAVED_FRAME_COUNTER = $770082
!SRAM_SAVED_SP = $774004
!SRAM_SAVED_STATE = $774006
endif
