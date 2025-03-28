;$82:894B 22 B9 84 88 JSL $8884B9[$88:84B9]  ; HDMA object handler (also handle music queue)
;$82:894F 22 11 81 80 JSL $808111[$80:8111]  ; Generate new random number (hijacked by infohud ih_game_loop_code)
org $82894B
    ; gamemode_shortcuts will either CLC or SEC
    ; to control if normal gameplay will happen on this frame
    JSL gamemode_start : BCC resume_gameplay
    BRA end_of_normal_gameplay
resume_gameplay:

org $82896E
end_of_normal_gameplay:

if !FEATURE_SD2SNES
org $828B18
hook_door_transition_load_sprites:
    JML gamemode_door_transtion_load_sprites

org $82E4A2
    LDA.w #hook_door_transition_load_sprites

org $82E526
    JSL gamemode_door_transition : NOP
endif


%startfree(85)

gamemode_start:
{
    PHB
    PHK : PLB

    JSR gamemode_shortcuts
  .return
    %ai16()
    PHP
    BCS .skip_gameplay

    ; Overwritten logic
    JSL $8884B9
    JSL ih_game_loop_code
    PLP
    PLB
    RTL

  .skip_gameplay
    ; Don't load presets or decrement counters if we're in credits
    LDA !GAMEMODE : CMP #$0027 : BEQ .skip_load

    LDA !ram_custom_preset : BNE .preset_load
    LDA !ram_load_preset : BEQ .dec_rta

  .preset_load
    JSL preset_load

  .skip_load
    PLP
    PLB
    RTL

  .dec_rta
    ; If we are skipping gameplay this frame and not loading a preset,
    ; it's not fair to still increment timers at the end of the frame,
    ; so decrement timers here to compensate
    DEC !FRAME_COUNTER
    LDA !ram_realtime_room : DEC : STA !ram_realtime_room

    ; Segment real timer
    LDA !ram_seg_rt_frames : BEQ .dec_seconds
    DEC : STA !ram_seg_rt_frames
    BRA .skip_load

  .dec_seconds
    LDA !ram_seg_rt_seconds : BEQ .dec_minutes
    DEC : STA !ram_seg_rt_seconds
    LDA #$003B : STA !ram_seg_rt_frames
    BRA .skip_load

  .dec_minutes
    LDA !ram_seg_rt_minutes : BEQ .skip_load
    DEC : STA !ram_seg_rt_minutes
    LDA #$003B : STA !ram_seg_rt_seconds : STA !ram_seg_rt_frames
    BRA .skip_load
}

gamemode_shortcuts:
{
    LDA !IH_CONTROLLER_PRI_NEW : BNE .check_shortcuts
    ; CLC so we won't skip normal gameplay
    CLC : RTS
  .check_shortcuts

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_menu : CMP !sram_ctrl_menu : BNE .skip_menu
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_menu
    JMP .menu
  .skip_menu

if !FEATURE_SD2SNES
    LDA !IH_CONTROLLER_PRI : CMP !sram_ctrl_save_state : BNE .skip_save_state
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_save_state
    JMP .save_state
  .skip_save_state

    LDA !IH_CONTROLLER_PRI : CMP !sram_ctrl_load_state : BNE .skip_load_state
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_load_state
    JMP .load_state
  .skip_load_state

    LDA !IH_CONTROLLER_PRI : CMP !sram_ctrl_auto_save_state : BNE .skip_auto_save_state
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_auto_save_state
    JMP .auto_save_state
  .skip_auto_save_state
endif

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_load_last_preset : CMP !sram_ctrl_load_last_preset : BNE .skip_load_last_preset
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_load_last_preset
    JMP .load_last_preset
  .skip_load_last_preset

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_random_preset : CMP !sram_ctrl_random_preset : BNE .skip_random_preset
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_random_preset
    JMP .random_preset
  .skip_random_preset

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_save_custom_preset : CMP !sram_ctrl_save_custom_preset : BNE .skip_save_custom_preset
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_save_custom_preset
    JMP .save_custom_preset
  .skip_save_custom_preset

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_load_custom_preset : CMP !sram_ctrl_load_custom_preset : BNE .skip_load_custom_preset
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_load_custom_preset
    JMP .load_custom_preset
  .skip_load_custom_preset

    ; Check if any less common shortcuts are configured
    LDA !ram_game_mode_extras : BNE .check_less_common_shortcuts
    JMP .no_shortcuts
  .check_less_common_shortcuts

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_inc_custom_preset : CMP !sram_ctrl_inc_custom_preset : BNE .skip_next_preset_slot
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_next_preset_slot
    JMP .next_preset_slot
  .skip_next_preset_slot

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_dec_custom_preset : CMP !sram_ctrl_dec_custom_preset : BNE .skip_prev_preset_slot
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_prev_preset_slot
    JMP .prev_preset_slot
  .skip_prev_preset_slot

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_full_equipment : CMP !sram_ctrl_full_equipment : BNE .skip_full_equipment
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_full_equipment
    JMP .full_equipment
  .skip_full_equipment

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_kill_enemies : CMP !sram_ctrl_kill_enemies : BNE .skip_kill_enemies
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_kill_enemies
    JMP .kill_enemies
  .skip_kill_enemies

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_reset_segment_timer : CMP !sram_ctrl_reset_segment_timer : BNE .skip_reset_segment_timer
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_reset_segment_timer
    JMP .reset_segment_timer
  .skip_reset_segment_timer

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_reset_segment_later : CMP !sram_ctrl_reset_segment_later : BNE .skip_reset_segment_later
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_reset_segment_later
    JMP .reset_segment_later
  .skip_reset_segment_later

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_toggle_tileviewer : CMP !sram_ctrl_toggle_tileviewer : BNE .skip_toggle_tileviewer
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_toggle_tileviewer
    JMP .toggle_tileviewer
  .skip_toggle_tileviewer

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_reveal_damage : CMP !sram_ctrl_reveal_damage : BNE .skip_reveal_damage
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_reveal_damage
    JMP .reveal_damage
  .skip_reveal_damage

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_randomize_rng : CMP !sram_ctrl_randomize_rng : BNE .skip_randomize_rng
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_randomize_rng
    JMP .randomize_rng
  .skip_randomize_rng

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_force_stand : CMP !sram_ctrl_force_stand : BNE .skip_force_stand
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_force_stand
    JMP .force_stand
  .skip_force_stand

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_update_timers : CMP !sram_ctrl_update_timers : BNE .skip_update_timers
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_update_timers
    JMP .update_timers
  .skip_update_timers

    LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_toggle_spin_lock : CMP !sram_ctrl_toggle_spin_lock : BNE .skip_toggle_spin_lock
    AND !IH_CONTROLLER_PRI_NEW : BEQ .skip_toggle_spin_lock
    JMP .toggle_spin_lock
  .skip_toggle_spin_lock

  .no_shortcuts
    ; No shortcuts matched, CLC so we won't skip normal gameplay
    CLC : RTS

if !FEATURE_SD2SNES
  .save_state
; This if statement is to prevent an assembler error from an unknown method. The one on the call to this
; prevents the button combo from being intercepted by the non-sd2snes rom
if !FEATURE_TINYSTATES
    ; Disallow tiny states outside of gameplay
    ; Most other gamemodes will crash on load
    LDA !GAMEMODE : CMP #$0020 : BEQ .save ; end of Ceres allowed
    CMP #$0007 : BMI .save_state_fail
    CMP #$001C : BMI .save

  .save_state_fail
    ; CLC to continue normal gameplay
    LDA !sram_ctrl_save_state
    CLC : JMP skip_pause

  .save
endif
    JSL save_state
    %ai16()
    LDA !ram_auto_save_state : BMI .clc
    ; SEC to skip normal gameplay for one frame after saving state
    SEC : RTS
  .clc
    ; CLC to continue normal gameplay after auto-saving in a door transition
    CLC : RTS

  .load_state
    ; check if a saved state exists
    LDA !SRAM_SAVED_STATE : CMP !SAFEWORD : BNE .load_state_fail
    JSL load_state
    ; SEC to skip normal gameplay for one frame after loading state
    SEC : RTS

  .load_state_fail
    ; CLC to continue normal gameplay
    LDA !sram_ctrl_load_state
    CLC : JMP skip_pause

  .auto_save_state
    LDA #$0001 : STA !ram_auto_save_state
    ; CLC to continue normal gameplay after setting savestate flag
    LDA !sram_ctrl_auto_save_state
    CLC : JMP skip_pause
endif

  .kill_enemies
    JSL kill_enemies
    ; CLC to continue normal gameplay after killing enemies
    LDA !sram_ctrl_kill_enemies
    CLC : JMP skip_pause

  .reset_segment_timer
    LDA !sram_frame_counter_mode : BEQ .reset_segment_timer_rta
    STZ !IGT_FRAMES : STZ !IGT_SECONDS
    STZ !IGT_MINUTES : STZ !IGT_HOURS
  .reset_segment_timer_rta
    TDC : STA !ram_seg_rt_frames
    STA !ram_seg_rt_seconds : STA !ram_seg_rt_minutes
    %sfxconfirm()
    ; CLC to continue normal gameplay after resetting segment timer
    LDA !sram_ctrl_reset_segment_timer
    CLC : JMP skip_pause

  .reset_segment_later
    LDA #$FFFF : STA !ram_reset_segment_later
    %sfxconfirm()
    ; CLC to continue normal gameplay after setting reset flag
    LDA !sram_ctrl_reset_segment_later
    CLC : JMP skip_pause

  .full_equipment
    LDA !SAMUS_HP_MAX : STA !SAMUS_HP
    LDA !SAMUS_MISSILES_MAX : CMP !SAMUS_MISSILES : BCC .full_equip_done_missiles
    STA !SAMUS_MISSILES
  .full_equip_done_missiles
    LDA !SAMUS_SUPERS_MAX : CMP !SAMUS_SUPERS : BCC .full_equip_done_supers
    STA !SAMUS_SUPERS
  .full_equip_done_supers
    LDA !SAMUS_PBS_MAX : CMP !SAMUS_PBS : BCC .full_equip_done_pbs
    STA !SAMUS_PBS
  .full_equip_done_pbs
    LDA !SAMUS_RESERVE_MAX : STA !SAMUS_RESERVE_ENERGY
    %sfxconfirm()
    ; CLC to continue normal gameplay after equipment refill
    LDA !sram_ctrl_full_equipment
    CLC : JMP skip_pause

  .toggle_tileviewer
    LDA !ram_sprite_feature_flags : BIT !SPRITE_OOB_WATCH : BEQ .turnOnTileViewer
    EOR !SPRITE_OOB_WATCH : STA !ram_sprite_feature_flags
    ; CLC to continue normal gameplay after disabling OoB Tile Viewer
    LDA !sram_ctrl_toggle_tileviewer
    CLC : JMP skip_pause

  .turnOnTileViewer
    ORA !SPRITE_OOB_WATCH : STA !ram_sprite_feature_flags
    JSL upload_sprite_oob_tiles
    ; CLC to continue normal gameplay after enabling OoB Tile Viewer
    LDA !sram_ctrl_toggle_tileviewer
    CLC : JMP skip_pause

  .reveal_damage
if !FEATURE_VANILLAHUD
else
    LDA !sram_display_mode : CMP !IH_MODE_COUNTDAMAGE_INDEX : BEQ .unreveal_damage
    STA !ram_display_backup
    LDA !IH_MODE_COUNTDAMAGE_INDEX : STA !sram_display_mode
    ; set ram_HUD_check to some value that cannot match the damage counter
    ; conveniently the current value of A will work
    STA !ram_HUD_check
endif
    %sfxconfirm()
    ; CLC to continue normal gameplay after reveal damage
    LDA !sram_ctrl_reveal_damage
    CLC : JMP skip_pause

  .unreveal_damage
    LDA !ram_display_backup : STA !sram_display_mode
    %sfxreset()
    ; CLC to continue normal gameplay after unreveal damage
    LDA !sram_ctrl_reveal_damage
    CLC : JMP skip_pause

  .load_last_preset
    ; Choose a random preset if zero
    LDA !sram_last_preset : BEQ .random_preset : STA !ram_load_preset
    ; SEC to skip normal gameplay for one frame after loading preset
    SEC : RTS

  .random_preset
    JSL LoadRandomPreset
    ; SEC to skip normal gameplay for one frame after loading preset
    SEC : RTS

  .save_custom_preset
    ; check gamestate first
    LDA !GAMEMODE : CMP #$0008 : BEQ .save_custom_safe
    CMP #$000C : BMI .save_custom_not_safe
    CMP #$0013 : BPL .save_custom_not_safe

  .save_custom_safe
    JSL custom_preset_save
    ; CLC to continue normal gameplay after saving preset
    %sfxconfirm()
    LDA !sram_ctrl_save_custom_preset
    CLC : JMP skip_pause

  .load_custom_preset
    ; check if slot is populated first
    LDA !sram_custom_preset_slot
    %presetslotsize()
    LDA !PRESET_SLOTS,X : CMP !SAFEWORD : BEQ .load_safe

    %sfxfail()
    ; CLC to continue normal gameplay after failing to load preset
    LDA !sram_ctrl_load_custom_preset
    CLC : JMP skip_pause

  .save_custom_not_safe
    %sfxfail()
    ; CLC to continue normal gameplay after failing to save preset
    LDA !sram_ctrl_save_custom_preset
    CLC : JMP skip_pause

  .load_safe
    STA !ram_custom_preset
    JSL preset_load
    ; SEC to skip normal gameplay for one frame after loading preset
    SEC : RTS

  .next_preset_slot
    LDA !sram_custom_preset_slot : CMP !TOTAL_PRESET_SLOTS : BNE .increment_slot
    LDA #$FFFF
  .increment_slot
    INC : STA !sram_custom_preset_slot
if !FEATURE_VANILLAHUD
else
    ASL : TAX : LDA.l NumberGFXTable,X : STA !HUD_TILEMAP+$7C
endif
    LDA !sram_last_preset : BMI .done_preset_slot
    TDC : STA !sram_last_preset
    %sfxnumber()
    ; CLC to continue normal gameplay after incrementing preset slot
    LDA !sram_ctrl_inc_custom_preset
    CLC : JMP skip_pause

  .prev_preset_slot
    LDA !sram_custom_preset_slot : BNE .decrement_slot
    LDA !TOTAL_PRESET_SLOTS+1
  .decrement_slot
    DEC : STA !sram_custom_preset_slot
if !FEATURE_VANILLAHUD
else
    ASL : TAX : LDA.l NumberGFXTable,X : STA !HUD_TILEMAP+$7C
endif
    LDA !sram_last_preset : BMI .done_preset_slot
    TDC : STA !sram_last_preset
  .done_preset_slot
    %sfxnumber()
    ; CLC to continue normal gameplay after decrementing preset slot
    LDA !sram_ctrl_dec_custom_preset
    CLC : JMP skip_pause

  .randomize_rng
    JSL MenuRNG2
    AND #$00FF : STA !FRAME_COUNTER_8BIT ; little extra for Phantoon
    JSL MenuRNG : STA !CACHED_RANDOM_NUMBER
    %sfxbeep()
    ; CLC to continue normal gameplay after reseeding RNG
    LDA !sram_ctrl_randomize_rng
    CLC : JMP skip_pause

  .force_stand
    JSL $90E2D4 ; Release Samus from Draygon
    %sfxconfirm()
    ; CLC to continue normal gameplay after forced stand
    LDA !sram_ctrl_force_stand
    CLC : JMP skip_pause

  .update_timers
if !FEATURE_VANILLAHUD
else
    JSL ih_update_hud_early
endif
    ; CLC to continue normal gameplay after updating HUD timers
    LDA !sram_ctrl_update_timers
    CLC : JMP skip_pause

  .toggle_spin_lock
    LDA !sram_spin_lock : BEQ .turn_on_spin_lock
    TDC
    BRA .set_spin_lock
  .turn_on_spin_lock
    TDC : INC
  .set_spin_lock
    STA !sram_spin_lock
    ; CLC to continue normal gameplay after toggling spin lock
    LDA !sram_ctrl_toggle_spin_lock
    CLC : JMP skip_pause

  .menu
    ; Set IRQ vector
    LDA !IRQ_CMD : PHA
    LDA #$0004 : STA !IRQ_CMD

    LDA !sram_ctrl_menu
    JSR skip_pause

    ; Enter MainMenu
    JSL cm_start

    ; Restore IRQ vector
    PLA : STA !IRQ_CMD

    ; SEC to skip normal gameplay for one frame after handling the menu
    SEC : RTS
}

; If the current shortcut (register A) contains start,
; and the current game mode is $C (fading out to pause), set it to $8 (normal),
; so that shortcuts involving the start button don't trigger accidental pauses.
; Called after handling most controller shortcuts, except save/load state
; (because the user might want to practice gravity jumps or something)
; and load preset (because presets reset the game mode anyway).
skip_pause:
{
    PHP ; preserve carry
    BIT !IH_INPUT_START : BEQ .done
    LDA !GAMEMODE : CMP #$000C : BNE .done
    LDA #$0008 : STA !GAMEMODE

    ; clear screen fade delay/counter
    STZ !SCREEN_FADE_DELAY : STZ !SCREEN_FADE_COUNTER

    ; Brightness = $F (max)
    LDA !REG_2100_BRIGHTNESS : ORA #$000F : STA !REG_2100_BRIGHTNESS

  .done
    PLP
    RTS
}

if !FEATURE_SD2SNES
gamemode_door_transition:
{
  .checkloadstate
    LDA !IH_CONTROLLER_PRI : BEQ .checktransition
    CMP !sram_ctrl_load_state : BNE .checktransition
    ; check if a saved state exists
    LDA !SRAM_SAVED_STATE : CMP !SAFEWORD : BNE .checktransition
    PHB : PHK : PLB
    JML load_state

  .checktransition
    ; check if door is done scrolling
    LDA !DOOR_FINISHED_SCROLLING : BPL .checkloadstate
    RTL
}

gamemode_door_transtion_load_sprites:
{
    ; Check for auto-save mid-transition
    LDA !ram_auto_save_state : BEQ .check
    BMI .auto_save
    TDC : STA !ram_auto_save_state
  .auto_save
    PHP : PHB
    PHK : PLB
    JSL save_state
    PLB : PLP
  .done
    JML $82E4A9 ; return to hijacked code
  .check
if !FEATURE_PAL
    JML $82E4A9 ; return to hijacked code
else
    LDA !IH_CONTROLLER_PRI : CMP #$C0C0 : BNE .done
    LDA !AREA_ID : BEQ .done : CMP #$0002 : BEQ .done
    LDA !sram_ctrl_menu : CMP #$C0C0 : BEQ .done
    LDA !sram_ctrl_save_state : CMP #$C0C0 : BEQ .done
    LDA !sram_ctrl_load_state : CMP #$C0C0 : BEQ .done
    LDA !sram_ctrl_load_last_preset : CMP #$C0C0 : BEQ .done
    LDA !sram_ctrl_full_equipment : CMP #$C0C0 : BEQ .done
    LDA !sram_ctrl_kill_enemies : CMP #$C0C0 : BEQ .done
    LDA !sram_ctrl_reset_segment_timer : CMP #$C0C0 : BEQ .done
    LDA !sram_ctrl_reset_segment_later : CMP #$C0C0 : BEQ .done
    LDA !sram_ctrl_random_preset : CMP #$C0C0 : BEQ .done
    LDA !sram_ctrl_save_custom_preset : CMP #$C0C0 : BEQ .end
    LDA !sram_ctrl_load_custom_preset : CMP #$C0C0 : BEQ .end
    LDA !sram_ctrl_inc_custom_preset : CMP #$C0C0 : BEQ .end
    LDA !sram_ctrl_dec_custom_preset : CMP #$C0C0 : BEQ .end
    LDA !sram_ctrl_toggle_tileviewer : CMP #$C0C0 : BEQ .end
    LDA !sram_ctrl_update_timers : CMP #$C0C0 : BEQ .end
    LDA !sram_ctrl_auto_save_state : CMP #$C0C0 : BEQ .end
    LDA !sram_ctrl_toggle_spin_lock : CMP #$C0C0 : BEQ .end
    LDA !sram_ctrl_randomize_rng : CMP #$C0C0 : BEQ .end
    LDA !sram_ctrl_reveal_damage : CMP #$C0C0 : BEQ .end
    LDA !sram_ctrl_force_stand : CMP #$C0C0 : BEQ .end
    LDA #custom_intro_init : STA !CINEMATIC_FUNCTION_POINTER
    LDA #$001E : STA !GAMEMODE
  .end
    JML $82E4A9 ; return to hijacked code
endif
}
endif

%endfree(85)

