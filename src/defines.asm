
; ---------
; Work RAM
; ---------

!ram_tilemap_buffer = $7E5800
!CRASHDUMP_TILEMAP_BUFFER = !ram_tilemap_buffer

!WRAM_BANK = #$007E
!WRAM_SIZE = #$0200
!WRAM_START = $7EFD00

; These variables are NOT PERSISTENT across savestates --
; they're saved and reloaded along with the game state.
; Use this section for infohud variables that are dependent
; on the game state. For variables that depend on user
; settings, place them below WRAM_PERSIST_START below.

!ram_load_preset                    = !WRAM_START+$00
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
!ram_map_counter                    = !WRAM_START+$34
!ram_vcounter_data                  = !WRAM_START+$36
!ram_custom_preset                  = !WRAM_START+$38

!ram_magic_pants_state              = !WRAM_START+$3A
!ram_magic_pants_pal1               = !WRAM_START+$3C
!ram_magic_pants_pal2               = !WRAM_START+$3E
!ram_magic_pants_pal3               = !WRAM_START+$40

!ram_room_has_set_rng               = !WRAM_START+$42

!ram_spacetime_read_address         = !WRAM_START+$44
!ram_spacetime_read_bank            = !WRAM_START+$46
!ram_spacetime_y                    = !WRAM_START+$48

!ram_watch_left_hud                 = !WRAM_START+$4A
!ram_watch_right_hud                = !WRAM_START+$4C

!ram_HUD_check                      = !WRAM_START+$4E
!ram_roomstrat_counter              = !WRAM_START+$50
!ram_roomstrat_state                = !WRAM_START+$52
!ram_enemy_hp                       = !WRAM_START+$54
!ram_mb_hp                          = !WRAM_START+$56
!ram_shot_timer                     = !WRAM_START+$58
!ram_shine_counter                  = !WRAM_START+$5A
!ram_dash_counter                   = !WRAM_START+$5C
!ram_shinetune_early_1              = !WRAM_START+$5E
!ram_shinetune_late_1               = !WRAM_START+$60
!ram_shinetune_early_2              = !WRAM_START+$62
!ram_shinetune_late_2               = !WRAM_START+$64
!ram_shinetune_early_3              = !WRAM_START+$66
!ram_shinetune_late_3               = !WRAM_START+$68
!ram_shinetune_early_4              = !WRAM_START+$6A
!ram_shinetune_late_4               = !WRAM_START+$6C
!ram_shine_dash_held_late           = !WRAM_START+$6E
!ram_xpos                           = !WRAM_START+$70
!ram_ypos                           = !WRAM_START+$72
!ram_subpixel_pos                   = !WRAM_START+$74
!ram_horizontal_speed               = !WRAM_START+$76
!ram_vertical_speed                 = !WRAM_START+$78
!ram_quickdrop_counter              = !WRAM_START+$7A
!ram_walljump_counter               = !WRAM_START+$7C
!ram_fail_sum                       = !WRAM_START+$7E
!ram_fail_count                     = !WRAM_START+$80

!WRAM_PERSIST_START = !ram_fail_count+$02
; ----------------------------------------------------------
; Variables below this point are PERSISTENT -- they maintain
; their value across savestates. Use this section for
; variables such as user settings that do not depend on the
; current game state.

!ram_metronome                      = !WRAM_PERSIST_START+$00
!ram_minimap                        = !WRAM_PERSIST_START+$02

!ram_sprite_samus_hitbox_active     = !WRAM_PERSIST_START+$04
!ram_sprite_enemy_hitbox_active     = !WRAM_PERSIST_START+$06
!ram_sprite_extended_hitbox_active  = !WRAM_PERSIST_START+$08
!ram_oob_watch_active               = !WRAM_PERSIST_START+$0A
!ram_sprite_samusproj_hitbox_active = !WRAM_PERSIST_START+$0C
!ram_sprite_enemyproj_hitbox_active = !WRAM_PERSIST_START+$0E
!ram_fix_scroll_offsets             = !WRAM_PERSIST_START+$10
!ram_random_preset_rng              = !WRAM_PERSIST_START+$12
!ram_random_preset_value            = !WRAM_PERSIST_START+$14

!ram_magic_pants_enabled            = !WRAM_PERSIST_START+$16
!ram_space_pants_enabled            = !WRAM_PERSIST_START+$18
!ram_kraid_claw_rng                 = !WRAM_PERSIST_START+$1A
!ram_crocomire_rng                  = !WRAM_PERSIST_START+$1C
!ram_phantoon_rng_round_1           = !WRAM_PERSIST_START+$1E
!ram_phantoon_rng_round_2           = !WRAM_PERSIST_START+$20
!ram_phantoon_rng_inverted          = !WRAM_PERSIST_START+$22
!ram_phantoon_rng_eyeclose          = !WRAM_PERSIST_START+$24
!ram_phantoon_rng_flames            = !WRAM_PERSIST_START+$26
!ram_phantoon_rng_next_flames       = !WRAM_PERSIST_START+$28
!ram_botwoon_rng                    = !WRAM_PERSIST_START+$2A
!ram_draygon_rng_left               = !WRAM_PERSIST_START+$2C
!ram_draygon_rng_right              = !WRAM_PERSIST_START+$2E

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

!ram_sprite_custom_hitbox_active    = !WRAM_PERSIST_START+$4E

!ram_game_loop_extras               = !WRAM_PERSIST_START+$50
!ram_game_mode_extras               = !WRAM_PERSIST_START+$52
!ram_sprite_features_active         = !WRAM_PERSIST_START+$54
!ram_kraid_wait_rng                 = !WRAM_PERSIST_START+$56
!ram_suits_heat_damage_value        = !WRAM_PERSIST_START+$58
!ram_botwoon_first                  = !WRAM_PERSIST_START+$5A
!ram_botwoon_second                 = !WRAM_PERSIST_START+$5C
!ram_botwoon_hidden                 = !WRAM_PERSIST_START+$5E
!ram_botwoon_spit                   = !WRAM_PERSIST_START+$60

; ^ FREE SPACE ^ up to +$7A

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

!ram_cm_palette_border = !WRAM_MENU_START+$3E
!ram_cm_palette_headeroutline = !WRAM_MENU_START+$40
!ram_cm_palette_text = !WRAM_MENU_START+$42
!ram_cm_palette_background = !WRAM_MENU_START+$44
!ram_cm_palette_numoutline = !WRAM_MENU_START+$46
!ram_cm_palette_numfill = !WRAM_MENU_START+$48
!ram_cm_palette_toggleon = !WRAM_MENU_START+$4A
!ram_cm_palette_seltext = !WRAM_MENU_START+$4C
!ram_cm_palette_seltextbg = !WRAM_MENU_START+$4E
!ram_cm_palette_numseloutline = !WRAM_MENU_START+$50
!ram_cm_palette_numsel = !WRAM_MENU_START+$52

!ram_cm_botwoon_rng = !WRAM_MENU_START+$54
!ram_cm_botwoon_first = !WRAM_MENU_START+$56
!ram_cm_botwoon_second = !WRAM_MENU_START+$58
!ram_cm_botwoon_hidden = !WRAM_MENU_START+$5A
!ram_cm_botwoon_spit = !WRAM_MENU_START+$5C
!ram_cm_custom_preset_labels = !WRAM_MENU_START+$5E
!ram_seed_X = !WRAM_MENU_START+$60
!ram_seed_Y = !WRAM_MENU_START+$62

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

!ram_cm_varia = !WRAM_MENU_START+$80
!ram_cm_gravity = !WRAM_MENU_START+$82
!ram_cm_morph = !WRAM_MENU_START+$84
!ram_cm_bombs = !WRAM_MENU_START+$86
!ram_cm_spring = !WRAM_MENU_START+$88
!ram_cm_screw = !WRAM_MENU_START+$8A
!ram_cm_hijump = !WRAM_MENU_START+$8C
!ram_cm_space = !WRAM_MENU_START+$8E
!ram_cm_speed = !WRAM_MENU_START+$90
!ram_cm_charge = !WRAM_MENU_START+$92
!ram_cm_ice = !WRAM_MENU_START+$94
!ram_cm_wave = !WRAM_MENU_START+$96
!ram_cm_spazer = !WRAM_MENU_START+$98
!ram_cm_plasma = !WRAM_MENU_START+$9A

!ram_cm_custompalette_blue = !WRAM_MENU_START+$80
!ram_cm_custompalette_green = !WRAM_MENU_START+$82
!ram_cm_custompalette_red = !WRAM_MENU_START+$84
!ram_cm_custompalette_hi = !WRAM_MENU_START+$86
!ram_cm_custompalette_lo = !WRAM_MENU_START+$88
!ram_cm_dummy_on = !WRAM_MENU_START+$8A
!ram_cm_dummy_off = !WRAM_MENU_START+$8C
!ram_cm_dummy_num = !WRAM_MENU_START+$8E

; ^ FREE SPACE ^ up to +$CE

; Reserve 48 bytes for CGRAM cache
; Currently first 22 bytes and last 2 bytes are used
!ram_cgram_cache = !WRAM_MENU_START+$D0

!CRASHDUMP = $7EFF00

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

!ACTION_TOGGLE              = #$0000
!ACTION_TOGGLE_BIT          = #$0002
!ACTION_TOGGLE_INVERTED     = #$0004
!ACTION_TOGGLE_BIT_INVERTED = #$0006
!ACTION_NUMFIELD            = #$0008
!ACTION_NUMFIELD_HEX        = #$000A
!ACTION_NUMFIELD_WORD       = #$000C
!ACTION_NUMFIELD_HEX_WORD   = #$000E
!ACTION_NUMFIELD_COLOR      = #$0010
!ACTION_NUMFIELD_SOUND      = #$0012
!ACTION_CHOICE              = #$0014
!ACTION_CTRL_SHORTCUT       = #$0016
!ACTION_CTRL_INPUT          = #$0018
!ACTION_JSL                 = #$001A
!ACTION_JSL_SUBMENU         = #$001C
!ACTION_CUSTOM_PRESET       = #$001E


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
!MENU_SLASH = #$287F
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
!NMI_REQUEST_FLAG = $05B4
!FRAME_COUNTER_8BIT = $05B5
!FRAME_COUNTER = $05B6
!DEBUG_MODE = $05D1
!CACHED_RANDOM_NUMBER = $05E5
!DISABLE_SOUNDS = $05F5
!SOUND_TIMER = $0686
!LOAD_STATION_INDEX = $078B
!ROOM_ID = $079B
!AREA_ID = $079F
!ROOM_WIDTH_BLOCKS = $07A5
!ROOM_WIDTH_SCROLLS = $07A9
!MUSIC_DATA = $07F3
!MUSIC_TRACK = $07F5
!LAYER1_X = $0911
!LAYER1_Y = $0915
!LAYER2_X = $0917
!LAYER2_Y = $0919
!BG2_X_SCROLL = $0921
!BG2_Y_SCROLL = $0923
!CURRENT_SAVE_FILE = $0952
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
!SAMUS_ITEM_SELECTED = $09D2
!SAMUS_RESERVE_MAX = $09D4
!SAMUS_RESERVE_ENERGY = $09D6
!IGT_FRAMES = $09DA
!IGT_SECONDS = $09DC
!IGT_MINUTES = $09DE
!IGT_HOURS = $09E0
!SAMUS_AUTO_CANCEL = $0A04
!SAMUS_LAST_HP = $0A06
!SAMUS_DOUBLE_JUMP = $0A14  ; Only used during demos in vanilla
!SAMUS_POSE = $0A1C
!SAMUS_POSE_DIRECTION = $0A1E
!SAMUS_MOVEMENT_TYPE = $0A1F
!SAMUS_PREVIOUS_POSE = $0A20
!SAMUS_PREVIOUS_POSE_DIRECTION = $0A22
!SAMUS_PREVIOUS_MOVEMENT_TYPE = $0A23
!SAMUS_SHINE_TIMER = $0A68
!SAMUS_HEALTH_WARNING = $0A6A
!SAMUS_WATER_PHYSICS = $0A70  ; Not used in vanilla
!SAMUS_ANIMATION_FRAME = $0A96
!SAMUS_X = $0AF6
!SAMUS_X_SUBPX = $0AF8
!SAMUS_Y = $0AFA
!SAMUS_Y_SUBPX = $0AFC
!SAMUS_X_RADIUS = $0AFE
!SAMUS_Y_RADIUS = $0B00
!SAMUS_COLLISION_DIRECTION = $0B02
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
!ENEMY_INDEX = $0E54
!ENEMY_ID = $0F78
!ENEMY_X = $0F7A
!ENEMY_Y = $0F7E
!ENEMY_X_RADIUS = $0F82
!ENEMY_Y_RADIUS = $0F84
!ENEMY_PROPERTIES = $0F86
!ENEMY_PROPERTIES_2 = $0F88
!ENEMY_HP = $0F8C
!ENEMY_SPRITEMAP = $0F8E
!ENEMY_BANK = $0FA6
!SAMUS_IFRAME_TIMER = $18A8
!ENEMY_PROJ_ID = $1997
!ENEMY_PROJ_X = $1A4B
!ENEMY_PROJ_Y = $1A93
!ENEMY_PROJ_RADIUS = $1BB3

!HUD_TILEMAP = $7EC600


; -----
; SRAM
; -----

!SRAM_VERSION = $0012

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
!sram_suppress_flashing = !SRAM_START+$4E
!sram_fast_elevators = !SRAM_START+$50

!sram_custom_damage = !SRAM_START+$52
!sram_custom_charge_damage = !SRAM_START+$54
!sram_custom_uncharge_damage = !SRAM_START+$56
!sram_water_physics = !SRAM_START+$58
!sram_double_jump = !SRAM_START+$5A

; do not change order without updating custom palette profiles in menu.asm
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
!ROOM_LAYOUT_DASH_RECALL = #$0008
!ROOM_LAYOUT_AREA_RANDO_OR_DASH_RECALL = #$000A
!ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL = #$000C
!ROOM_LAYOUT_VARIA_TWEAKS = #$0010
!ROOM_LAYOUT_DASH_RECALL_OR_VARIA_TWEAKS = #$0018
!ROOM_LAYOUT_ANY_RANDO = #$001E

!CUTSCENE_SKIP_INTRO = #$0001
!CUTSCENE_SKIP_CERES_ARRIVAL = #$0002
!CUTSCENE_SKIP_G4 = #$0080
!CUTSCENE_FAST_MB = #$0100
!CUTSCENE_FAST_PHANTOON = #$0200
!CUTSCENE_FAST_KRAID = #$0400
!CUTSCENE_SKIP_SPLASH = #$0800

!SUPPRESS_CRATERIA_LIGHTNING = #$0001
!SUPPRESS_ESCAPE_FLASHING = #$0002
!SUPPRESS_POWER_BOMB_FLASH = #$0004
!SUPPRESS_MB1_FLASHING = #$0008
!SUPPRESS_BOSS_DAMAGE_FLASH = #$0010
!SUPPRESS_EARTHQUAKE = #$0020

!PRESETS_COMPRESSED_GRAPHICS = #$0001
!PRESETS_COMPRESSED_PALETTES = #$0002
!PRESETS_COMPRESSED_PALETTES_8BIT = #$02
!PRESETS_COMPRESSED_TABLES = #$0004
!PRESETS_CLOSE_BLUE_DOORS = #$0008
!PRESETS_PRESERVE_ENEMIES = #$0010
!PRESETS_CLEAR_MAP_TILES = #$0020
!PRESETS_AUTO_SEGMENT_OFF = #$0040

if !FEATURE_TINYSTATES
!PRESET_SLOTS_ROOM = $703000+$06
!PRESET_SLOTS_ENERGY = $703000+$28
!PRESET_SLOTS_MAXENERGY = $703000+$2A
!PRESET_SLOTS_RESERVES = $703000+$3C
!PRESET_SLOTS_MISSILES = $703000+$2C
!PRESET_SLOTS_SUPERS = $703000+$30
!PRESET_SLOTS_PBS = $703000+$34
else
!PRESET_SLOTS_AREA = $703000+$0C
!PRESET_SLOTS_ROOM = $703000+$0A
!PRESET_SLOTS_ENERGY = $703000+$2C
!PRESET_SLOTS_MAXENERGY = $703000+$2E
!PRESET_SLOTS_RESERVES = $703000+$40
!PRESET_SLOTS_MISSILES = $703000+$30
!PRESET_SLOTS_SUPERS = $703000+$34
!PRESET_SLOTS_PBS = $703000+$38
endif


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
!SRAM_SAVED_MINIMAP = $737F84
else
!SRAM_DMA_BANK = $770000
!SRAM_SAVED_RNG = $770080
!SRAM_SAVED_FRAME_COUNTER = $770082
!SRAM_SAVED_SP = $774004
!SRAM_SAVED_STATE = $774006
!SRAM_SAVED_MINIMAP = $774008
endif
