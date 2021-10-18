!ram_load_preset = $7FFB00

!ram_gametime_room = $7FFB02
!ram_last_gametime_room = $7FFB04
!ram_realtime_room = $7FFB06
!ram_last_realtime_room = $7FFB08
!ram_last_room_lag = $7FFB0A
!ram_last_door_lag_frames = $7FFB0C
!ram_transition_counter = $7FFB0E
!ram_transition_flag = $7FFB10
!ram_transition_flag_2 = $7FFB12

!ram_seg_rt_frames = $7FFB14
!ram_seg_rt_seconds = $7FFB16
!ram_seg_rt_minutes = $7FFB18
!ram_reset_segment_later = $7FFB1A

!ram_ih_controller = $7FFB1C
!ram_slowdown_controller_1 = $7FFB1E
!ram_slowdown_controller_2 = $7FFB20
!ram_slowdown_frames = $7FFB22
!ram_slowdown_mode = $7EFFFC ; $7E

!ram_tmp_1 = $7FFB24
!ram_tmp_2 = $7FFB26
!ram_tmp_3 = $7FFB28
!ram_tmp_4 = $7FFB2A

!ram_last_hp = $7FFB2C
!ram_etanks = $7FFB2E
!ram_pct_1 = $7FFB30
!ram_pct_2 = $7FFB32
!ram_armed_shine_duration = $7FFB34
!ram_minimap = $7FFB36
!ram_map_counter = $7FFB38
!ram_vcounter_data = $7FFB3A

; FREE SPACE ^

!ram_magic_pants_enabled = $7FFB50
!ram_magic_pants_state = $7FFB52
!ram_magic_pants_pal1 = $7FFB54
!ram_magic_pants_pal2 = $7FFB56
!ram_magic_pants_pal3 = $7FFB58

!ram_room_has_set_rng = $7FFB5A
!ram_kraid_rng = $7FFB5C
!ram_crocomire_rng = $7FFB5E
!ram_phantoon_rng_1 = $7FFB60
!ram_phantoon_rng_2 = $7FFB62
!ram_phantoon_rng_3 = $7FFB64
!ram_botwoon_rng = $7FFB66
!ram_draygon_rng_left = $7FFB68
!ram_draygon_rng_right = $7FFB6A

!ram_game_loop_extras = $7FFB6C

!ram_metronome = $7FFB6E
!ram_metronome_counter = $7FFB70


; FREE SPACE ^


; --------
; Infohud
; --------

!ram_HUD_check = $7FFB80
!ram_roomstrat_counter = $7FFB82
!ram_roomstrat_state = $7FFB84
!ram_enemy_hp = $7FFB86
!ram_mb_hp = $7FFB88
!ram_shot_timer = $7FFB8A
!ram_shine_counter = $7FFB8C
!ram_dash_counter = $7FFB8E
!ram_shine_dash_held_late = $7FFB90
!ram_shinetune_early_1 = $7FFB92
!ram_shinetune_late_1 = $7FFB94
!ram_shinetune_early_2 = $7FFB96
!ram_shinetune_late_2 = $7FFB98
!ram_shinetune_early_3 = $7FFB9A
!ram_shinetune_late_3 = $7FFB9C
!ram_shinetune_early_4 = $7FFB9E
!ram_shinetune_late_4 = $7FFBA0
!ram_xpos = $7FFBA2
!ram_ypos = $7FFBA4
!ram_subpixel_pos = $7FFBA6
!ram_horizontal_speed = $7FFBA8
!ram_vertical_speed = $7FFBAA
!ram_quickdrop_counter = $7FFBAC
!ram_walljump_counter = $7FFBAE

; FREE SPACE ^

!ram_watch_left = $7FFBE0
!ram_watch_left_hud = $7FFBE2
!ram_watch_left_hi = $7FFBE4
!ram_watch_left_lo = $7FFBE6
!ram_watch_right = $7FFBE8
!ram_watch_right_hud = $7FFBEA
!ram_watch_right_hi = $7FFBEC
!ram_watch_right_lo = $7FFBEE
!ram_watch_edit_left = $7FFBF0
!ram_watch_edit_left_hi = $7FFBF2
!ram_watch_edit_left_lo = $7FFBF4
!ram_watch_edit_right = $7FFBF6
!ram_watch_edit_right_hi = $7FFBF8
!ram_watch_edit_right_lo = $7FFBFA
!ram_watch_edit_lock_left = $7FFBFC
!ram_watch_edit_lock_right = $7FFBFE


; -------------
; Menu
; -------------

!ram_cm_stack_index = $5D5
!ram_cm_menu_stack = $7FFF00 ; 0x10
!ram_cm_cursor_stack = $7FFF10 ; 0x10
!ram_cm_cursor_max = $7FFF20
!ram_cm_input_timer = $7FFF22
!ram_cm_controller = $7FFF24
!ram_cm_menu_bank = $7FFF26

!ram_cm_etanks = $7FFF28
!ram_cm_reserve = $7FFF2A
!ram_cm_leave = $7FFF2C
!ram_cm_input_counter = $7FFF2E
!ram_cm_last_nmi_counter = $7FFF30

!ram_cm_ctrl_mode = $7FFF32
!ram_cm_ctrl_timer = $7FFF34
!ram_cm_ctrl_last_input = $7FFF36

; FREE SPACE ^

!ram_cgram_cache = $7FFFD0 ; 0x14 bytes

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


; ------------
; Pointers
; ------------

!IH_CONTROLLER_PRI = $8B
!IH_CONTROLLER_PRI_NEW = $8F
!IH_CONTROLLER_PRI_PREV = $97

!IH_CONTROLLER_SEC = $8D
!IH_CONTROLLER_SEC_NEW = $91
!IH_CONTROLLER_SEC_PREV = $99

!IH_BLANK = #$0057
!IH_PERCENT = #$0C0A
!IH_DECIMAL = #$0CCB
!IH_HYPHEN = #$0C55
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

!SFX_LIB1 = $80903F
!SFX_LIB2 = $8090C1
!SFX_LIB3 = $809143


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

; FREE SPACE ^

!sram_artificial_lag = $702020
!sram_rerandomize = $702022
!sram_fanfare_toggle = $702024
!sram_frame_counter_mode = $702026
!sram_display_mode = $702028
!sram_music_toggle = $70202A
!sram_last_preset = $70202C
!sram_save_has_set_rng = $70202E
!sram_preset_category = $702030
!sram_room_strat = $702032
!sram_sprite_prio_flag = $702034
!sram_metronome_tickrate = $702036
!sram_metronome_sfx = $702038

; FREE SPACE ^


; ----------
; Save/Load
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

