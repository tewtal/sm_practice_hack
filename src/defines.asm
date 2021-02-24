!ram_gametime_room = $7FFB00
!ram_last_gametime_room = $7FFB02
!ram_realtime_room = $7FFB44
!ram_last_realtime_room = $7FFB46
!ram_last_room_lag = $7FFB48
!ram_transition_counter = $7FFB0E
!ram_last_door_lag_frames = $7FFB10

!ram_armed_shine_duration = $7FFB14
!ram_etanks = $7FFB12 ; ??
!ram_max_etanks = $7FFB24 ; ??
!ram_last_hp = $7FFB9A

!ram_slowdown_mode = $7EFFFC
!ram_slowdown_frames = $7FFB52
!ram_shine_dash_held_late = $7FFB1A
!ram_shine_counter = $7FFB30
!ram_cooldown_counter = $7FFB32
!ram_xpos = $7FFB34
!ram_ypos = $7FFB36
!ram_dash_counter = $7FFB38
!ram_iframe_counter = $7FFB3A
!ram_subpixel_pos = $7FFB3C
!ram_mb_hp = $7FFB3E
!ram_enemy_hp = $7FFB40
!ram_horizontal_speed = $7FFB58
!ram_vertical_speed = $7FFB5A
!ram_magic_pants_1 = $7FFB64
!ram_magic_pants_2 = $7FFB66
!ram_magic_pants_3 = $7FFB70
!ram_magic_pants_4 = $7FFB72
!ram_magic_pants_5 = $7FFB74
!ram_charge_counter = $7FFB1C
!ram_xfac_counter = $7FFB1E
!ram_lag_counter = $7FFB96
!ram_last_lag_counter = $7FFB98
!ram_shot_timer = $7FFB9E

!ram_phantoon_rng_1 = $7FFB82
!ram_phantoon_rng_2 = $7FFB84
!ram_botwoon_rng = $7FFB86
!ram_room_has_set_rng = $7FFB88

!ram_tmp_1 = $7FFB4C
!ram_tmp_2 = $7FFB4E
!ram_tmp_3 = $7FFB08
!ram_tmp_4 = $7FFB0A
!ram_transition_flag = $7FFB16
!ram_transition_flag_2 = $7FFB2C
!ram_pct_1 = $7FFB20
!ram_pct_2 = $7FFB26
!ram_ih_controller = $7FFB42
!ram_slowdown_controller_1 = $7FFB54
!ram_slowdown_controller_2 = $7FFB56

!ram_seg_rt_frames = $7FFBA0
!ram_seg_rt_seconds = $7FFBA2
!ram_seg_rt_minutes = $7FFBA4

!ram_hex2dec_first_digit = $14
!ram_hex2dec_second_digit = $16
!ram_hex2dec_third_digit = $18
!ram_hex2dec_rest = $1A

!ram_cm_ctrl_mode = $7FFBC0
!ram_cm_ctrl_timer = $7FFBC2
!ram_cm_ctrl_last_input = $7FFBC4

!ram_roomstrat_counter = $7FFBC6
!ram_roomstrat_state = $7FFBC8
!ram_jumppress_counter = $7FFBCA

!ram_shinefinetune_early_1 = $7FFBD0
!ram_shinefinetune_late_1 = $7FFBD2
!ram_shinefinetune_early_2 = $7FFBD4
!ram_shinefinetune_late_2 = $7FFBD6
!ram_shinefinetune_early_3 = $7FFBD8
!ram_shinefinetune_late_3 = $7FFBDA
!ram_shinefinetune_early_4 = $7FFBDC
!ram_shinefinetune_late_4 = $7FFBDE

!ram_sprite_prio_flag = $7FFBE0

; -----
; SRAM
; -----

!sram_initialized = $702000

!sram_ctrl_menu = $702002
!sram_ctrl_kill_enemies = $702004
!sram_ctrl_full_equipment = $702006
!sram_ctrl_reset_segment_timer = $702008
!sram_ctrl_load_state = $70200A
!sram_ctrl_save_state = $70200C
!sram_ctrl_load_last_preset = $70200E

!sram_artificial_lag = $702010
!sram_rerandomize = $702012
!sram_fanfare_toggle = $702014
!sram_frame_counter_mode = $702016
!sram_display_mode = $702018
!sram_music_toggle = $70201A
!sram_last_preset = $70201C
!sram_save_has_set_rng = $70201E
!sram_preset_category = $702020
!sram_room_strat = $702022

; -------------
; Menu
; -------------

!ram_cm_menu_stack = $7FFFD0 ; 0x10
!ram_cm_cursor_stack = $7FFFE0 ; 0x10
!ram_cm_stack_index = $5D5
!ram_cm_cursor_max = $7FFFF2
!ram_cm_input_timer = $7FFFF4
!ram_cm_controller = $7FFFF6
!ram_cm_menu_bank = $7FFFF8

!ram_cm_etanks = $7FFB90
!ram_cm_reserve = $7FFB92
!ram_cm_leave = $7FFB94
!ram_cm_last_nmi_counter = $7FFB9C

!ram_ctrl1 = $8B
!ram_ctrl1_filtered = $8F

!ACTION_TOGGLE          = #$0000
!ACTION_TOGGLE_BIT      = #$0002
!ACTION_JSR             = #$0004
!ACTION_NUMFIELD        = #$0006
!ACTION_CHOICE          = #$0008
!ACTION_CTRL_SHORTCUT   = #$000A

!SOUND_MENU_MOVE = $0039
!SOUND_MENU_JSR = $0039

; --------
; Infohud
; --------

!IH_CONTROLLER_PRI = $8B
!IH_CONTROLLER_PRI_NEW = $8F
!IH_CONTROLLER_PRI_PREV = $97

!IH_CONTROLLER_SEC = $8D
!IH_CONTROLLER_SEC_NEW = $91
!IH_CONTROLLER_SEC_PREV = $99

!IH_PAUSE = #$0100 ; right
!IH_SLOWDOWN = #$0400 ; down
!IH_SPEEDUP = #$0800 ; up
!IH_RESET = #$0200 ; left
!IH_STATUS_R = #$0010 ; r
!IH_STATUS_L = #$0020 ; l

!IH_INPUT_UP = $7E09AA
!IH_INPUT_DOWN = $7E09AC
!IH_INPUT_LEFT = $7E09AE
!IH_INPUT_RIGHT = $7E09B0
!IH_INPUT_SHOOT = $7E09B2
!IH_INPUT_JUMP = $7E09B4
!IH_INPUT_RUN = $7E09B6
!IH_INPUT_ITEM_CANCEL = $7E09B8
!IH_INPUT_ITEM_SELECT = $7E09BA
!IH_INPUT_ANGLE_UP = $7E09BC
!IH_INPUT_ANGLE_DOWN = $7E09BE

; ------------
; Presets
; ------------

!ram_load_preset = $7FFC00
!ram_cgram_cache = $7FFC02 ; 0x14 bytes

!category_combined = 0
!category_rbo = 1
!category_kpdr25 = 2
!category_gtclassic = 3
!category_14low = 4
!category_allboss = 5

; ----------
; Save/load
; ----------

; Savestate code variables
!SS_BANK = $8000
!SS_INPUT_CUR = $8B
!SS_INPUT_NEW = $8F
!SS_INPUT_PREV = $97

!SRAM_DMA_BANK = $770000
!SRAM_SAVED_SP = $774004

; SM specific things
!SRAM_MUSIC_BANK = $701FD0
!SRAM_MUSIC_TRACK = $701FD2
!MUSIC_BANK = $07F3
!MUSIC_TRACK = $07F5
!MUSIC_ROUTINE = $808FC1
