;$82:894B 22 B9 84 88 JSL $8884B9[$88:84B9]  ; HDMA object handler (also handle music queue)
;$82:894F 22 11 81 80 JSL $808111[$80:8111]  ; Generate new random number (hijacked by infohud ih_game_loop_code)
org $82894B
    ; gamemode_shortcuts will either CLC or SEC
    ; to control if normal gameplay will happen on this frame
    JSL gamemode_start : BCS resume_gameplay
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
if !FEATURE_SD2SNES
gamemode_door_transition:
{
  .checkloadstate
    ; TODO re-enable load state, or maybe run the whole shortcut routine from here?
    ; LDA !IH_CONTROLLER_PRI : BEQ .checktransition
    ; CMP !sram_ctrl_load_state : BNE .checktransition
    ; check if a saved state exists
    ; LDA !SRAM_SAVED_STATE : CMP !SAFEWORD : BNE .checktransition
    ; PHB : PHK : PLB
    ; JML load_state

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
    BRA .done ; disabled during beta testing phase
    LDA #custom_intro_init : STA !CINEMATIC_FUNCTION_POINTER
    LDA #$001E : STA !GAMEMODE
  .end
    JML $82E4A9 ; return to hijacked code
endif
}
endif

gamemode_start:
{
    ; Set overflow and carry flags before calling routine
    SEP #$41
    JSL !CTRL_SHORTCUT_ROUTINE
    PHP
    BCC .skip_gameplay
    ; Check if we need to reset the fading to pause state
    BVS .done_pause
    LDA !GAMEMODE : CMP #$000C : BNE .skip_gameplay_done_pause
    LDA #$0008 : STA !GAMEMODE

    ; Clear screen fade delay/counter
    STZ !SCREEN_FADE_DELAY : STZ !SCREEN_FADE_COUNTER

    ; Brightness = $F (max)
    LDA !REG_2100_BRIGHTNESS : ORA #$000F : STA !REG_2100_BRIGHTNESS

  .done_pause
    ; Overwritten logic
    JSL $8884B9
    JSL ih_game_loop_code
    PLP
    CLV
    RTL

  .skip_gameplay
    ; Check if we need to reset the fading to pause state
    BVS .skip_gameplay_done_pause
    LDA !GAMEMODE : CMP #$000C : BNE .skip_gameplay_done_pause
    LDA #$0008 : STA !GAMEMODE

    ; Clear screen fade delay/counter
    STZ !SCREEN_FADE_DELAY : STZ !SCREEN_FADE_COUNTER

    ; Brightness = $F (max)
    LDA !REG_2100_BRIGHTNESS : ORA #$000F : STA !REG_2100_BRIGHTNESS

  .skip_gameplay_done_pause
    ; Don't load presets or decrement counters if we're in credits
    LDA !GAMEMODE : CMP #$0027 : BEQ .skip_load

    LDA !ram_custom_preset : BNE .preset_load
    LDA !ram_load_preset : BEQ .dec_rta

  .preset_load
    JSL preset_load

  .skip_load
    PLP
    CLV
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

gamemode_main_menu:
{
    ; Set IRQ vector
    LDA !IRQ_CMD : PHA
    LDA #$0004 : STA !IRQ_CMD

    ; Enter Main Menu
    JSL cm_start

    ; Restore IRQ vector
    PLA : STA !IRQ_CMD

    ; Skip remaining shortcuts
    PLA : PEA !CTRL_SHORTCUT_SKIP_REMAINING_PEA_VALUE

    ; Fallthrough to below RTL
}

gamemode_placeholder:
    RTL

if !FEATURE_SD2SNES
gamemode_save_state:
{
if !FEATURE_TINYSTATES
    ; Disallow tiny states outside of gameplay
    ; Most other gamemodes will crash on load
    LDA !GAMEMODE : CMP #$0020 : BEQ .save ; end of Ceres allowed
    CMP #$0007 : BMI .not_allowed
    CMP #$001C : BMI .save

  .not_allowed
    RTL

  .save
endif
    PHP
    PHB
    JSL save_state
    PLB
    PLP

    ; Skip remaining shortcuts
    PLA : PEA !CTRL_SHORTCUT_SKIP_REMAINING_PEA_VALUE
    RTL
}

gamemode_load_state:
{
    ; Check if a saved state exists
    LDA !SRAM_SAVED_STATE : CMP !SAFEWORD : BNE .not_available

    ; We will not return from this method,
    ; since loading the state includes loading the stack
    JML load_state

  .not_available
    RTL
}

gamemode_auto_save_state:
{
    LDA #$0001 : STA !ram_auto_save_state
    RTL
}
endif

if !FEATURE_VANILLAHUD
else
gamemode_update_timers:
{
    JML ih_update_hud_early
}
endif

gamemode_reload_preset:
{
    ; Choose a random preset if zero
    LDA !sram_last_preset : BEQ gamemode_random_preset
    STA !ram_load_preset

    ; Skip remaining shortcuts
    PLA : PEA !CTRL_SHORTCUT_SKIP_REMAINING_PEA_VALUE
    RTL
}

gamemode_random_preset:
{
    JSL LoadRandomPreset

    ; Skip remaining shortcuts
    PLA : PEA !CTRL_SHORTCUT_SKIP_REMAINING_PEA_VALUE
    RTL
}

gamemode_save_custom_preset:
{
    ; check gamestate first
    LDA !GAMEMODE : CMP #$0008 : BEQ .safe
    CMP #$000C : BMI .not_safe
    CMP #$0013 : BPL .not_safe

  .safe
    JSL custom_preset_save
    %sfxconfirm()
    RTL

  .not_safe
    %sfxfail()
    RTL
}

gamemode_load_custom_preset:
{
    ; check if slot is populated first
    LDA !sram_custom_preset_slot
    %presetslotsize()
    LDA !PRESET_SLOTS,X : CMP !SAFEWORD : BEQ .safe
    %sfxfail()
    RTL

  .safe
    STA !ram_custom_preset
    JML preset_load
}

gamemode_increment_custom_preset:
{
    LDA !sram_custom_preset_slot : CMP !TOTAL_PRESET_SLOTS : BNE .increment
    LDA #$FFFF
  .increment
    INC : STA !sram_custom_preset_slot
if !FEATURE_VANILLAHUD
else
    ASL : TAX : LDA.l NumberGFXTable,X : STA !HUD_TILEMAP+$7C
endif
    LDA !sram_last_preset : BMI .done
    TDC : STA !sram_last_preset
  .done
    %sfxnumber()
    RTL
}

gamemode_decrement_custom_preset:
{
    LDA !sram_custom_preset_slot : BNE .decrement
    LDA !TOTAL_PRESET_SLOTS+1
  .decrement
    DEC : STA !sram_custom_preset_slot
if !FEATURE_VANILLAHUD
else
    ASL : TAX : LDA.l NumberGFXTable,X : STA !HUD_TILEMAP+$7C
endif
    LDA !sram_last_preset : BMI .done
    TDC : STA !sram_last_preset
  .done
    %sfxnumber()
    RTL
}

gamemode_reset_segment_timer:
{
    LDA !sram_frame_counter_mode : BEQ .rta
    STZ !IGT_FRAMES : STZ !IGT_SECONDS
    STZ !IGT_MINUTES : STZ !IGT_HOURS
  .rta
    TDC : STA !ram_seg_rt_frames
    STA !ram_seg_rt_seconds : STA !ram_seg_rt_minutes
    %sfxconfirm()
if !FEATURE_VANILLAHUD
    RTL
else
    JML ih_update_hud_early
endif
}

gamemode_reset_segment_later:
{
    LDA #$FFFF : STA !ram_reset_segment_later
    %sfxconfirm()
    RTL
}

gamemode_full_equipment:
{
    LDA !SAMUS_HP_MAX : STA !SAMUS_HP
    LDA !SAMUS_MISSILES_MAX : CMP !SAMUS_MISSILES : BCC .done_missiles
    STA !SAMUS_MISSILES
  .done_missiles
    LDA !SAMUS_SUPERS_MAX : CMP !SAMUS_SUPERS : BCC .done_supers
    STA !SAMUS_SUPERS
  .done_supers
    LDA !SAMUS_PBS_MAX : CMP !SAMUS_PBS : BCC .done_pbs
    STA !SAMUS_PBS
  .done_pbs
    LDA !SAMUS_RESERVE_MAX : STA !SAMUS_RESERVE_ENERGY
    %sfxconfirm()
    RTL
}

gamemode_kill_enemies:
{
    JML kill_enemies
}

gamemode_toggle_oob_tile_viewer:
{
    LDA !ram_sprite_feature_flags : BIT !SPRITE_OOB_WATCH : BEQ .turnOn
    EOR !SPRITE_OOB_WATCH : STA !ram_sprite_feature_flags
    RTL

  .turnOn
    ORA !SPRITE_OOB_WATCH : STA !ram_sprite_feature_flags
    JML upload_sprite_oob_tiles
}

gamemode_randomize_rng:
{
    JSL MenuRNG2
    AND #$00FF : STA !FRAME_COUNTER_8BIT ; little extra for Phantoon
    JSL MenuRNG : STA !CACHED_RANDOM_NUMBER
    %sfxbeep()
    RTL
}

if !FEATURE_VANILLAHUD
else
gamemode_reveal_damage:
{
    LDA !sram_display_mode : CMP !IH_MODE_COUNTDAMAGE_INDEX : BEQ .unreveal
    STA !ram_display_backup
    LDA !IH_MODE_COUNTDAMAGE_INDEX : STA !sram_display_mode
    ; set ram_HUD_check to some value that cannot match the damage counter
    ; conveniently the current value of A will work
    STA !ram_HUD_check
    %sfxconfirm()
    RTL

  .unreveal
    LDA !ram_display_backup : STA !sram_display_mode
    %sfxreset()
    RTL
}
endif

gamemode_force_stand:
{
    %sfxconfirm()
    JML $90E2D4 ; Release Samus from Draygon
}

gamemode_toggle_spin_lock:
{
    LDA !sram_spin_lock : BEQ .turnOn
    TDC : STA !sram_spin_lock
    RTL

  .turnOn
    LDA #$0001 : STA !sram_spin_lock
    RTL
}

gamemode_pause:
{
    TDC : STA !ram_slowdown_frames
    DEC : STA !ram_slowdown_mode
    RTL
}

gamemode_unpause:
{
    TDC : STA !ram_slowdown_mode : STA !ram_slowdown_frames
    RTL
}

gamemode_slowdown:
{
    LDA !ram_slowdown_mode : INC : STA !ram_slowdown_mode
    RTL
}

gamemode_speedup:
{
    LDA !ram_slowdown_mode : BEQ .done
    DEC : STA !ram_slowdown_mode
  .done
    RTL
}

if !FEATURE_VANILLAHUD
else
gamemode_increment_display_mode:
{
    LDA !sram_display_mode : INC
    CMP !IH_MODE_COUNT : BNE .set
    TDC
  .set
    STA !sram_display_mode
    JML ih_update_status
}

gamemode_decrement_display_mode:
{
    LDA !sram_display_mode : DEC
    CMP #$FFFF : BNE .set
    LDA !IH_MODE_COUNT-1
  .set
    STA !sram_display_mode
    JML ih_update_status
}

gamemode_increment_room_strat:
{
    LDA !sram_room_strat : INC
    CMP !IH_ROOM_STRAT_COUNT : BNE .set
    TDC
  .set
    STA !sram_room_strat
    ; enable ROOM STRAT mode
    LDA !IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
    JML ih_update_status
}

gamemode_decrement_room_strat:
{
    LDA !sram_room_strat : DEC
    CMP #$FFFF : BNE .set
    LDA !IH_ROOM_STRAT_COUNT-1
  .set
    STA !sram_room_strat
    ; enable ROOM STRAT mode
    LDA !IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
    JML ih_update_status
}

gamemode_increment_super_hud:
{
    LDA !sram_superhud_bottom : INC
    CMP !IH_SUPERHUD_BOTTOM_COUNT : BNE .set
    TDC
  .set
    STA !sram_superhud_bottom
    ; enable Super HUD
    LDA !IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
    TDC : STA !sram_room_strat
    JML ih_update_status
}

gamemode_decrement_super_hud:
{
    LDA !sram_superhud_bottom : DEC
    CMP #$FFFF : BNE .set
    LDA !IH_SUPERHUD_BOTTOM_COUNT-1
  .set
    STA !sram_superhud_bottom
    ; enable Super HUD
    LDA !IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
    TDC : STA !sram_room_strat
    JML ih_update_status
}
endif

gamemode_soft_reset:
{
    STZ !DISABLE_SOUNDS
    JML $808462
}

if !FEATURE_DEV
gamemode_dev_shortcut:
{
    ; Could put anything here for development purposes
    BRK
}
endif

; Write a customized routine based on ctrl shortcut selections
!GAMEMODE_CTRL_SHORTCUT_COUNT = #$0021
cm_write_ctrl_routine:
{
    ; No bounds check on X is done as we shouldn't exceed our buffer.
    ; In fact, we are using the end of the buffer for temporary variables
    ; and a table to track which shortcuts we still need to write.
    PHB : PEA $7070 : PLB : PLB
    TDC : TAX : TAY : STA !CTRL_SHORTCUT_TYPE
    STA !CTRL_SHORTCUT_PRI_TO_SEC_DUAL_JUMP : STA !CTRL_SHORTCUT_SEC_TO_DUAL_JUMP

    ; Initialize category indices to 48 indicating no shortcut found.
    LDA #$0030 : STA !CTRL_SHORTCUT_TABLE_DUAL_INDEX
    STA !CTRL_SHORTCUT_TABLE_SEC_INDEX : STA !CTRL_SHORTCUT_TABLE_PRI_INDEX
    %a8()

    ; As we check shortcuts, we need to remember if gameplay should be skipped,
    ; and we need to remember if Start was used in an exact match shortcut.
    ; Use carry flag for gameplay (initially set, clear if gameplay skipped).
    ; Use overflow flag for start (initially set, clear if pause should be cancelled).
    ; The flags are already set prior to entering routine, so we just need to
    ; push flags to the stack, so that shortcut routines can pull-modify-push.

    ; PHP (skipping first INX, remember it should be #$0001 when we resume writing)
    LDA #$08 : STA !CTRL_SHORTCUT_ROUTINE,X

    ; Look for first shortcut of each category.
    ; This time only we can directly check shortcut types since
    ; we haven't written any shortcuts yet so we know written table is empty.
    ; Also this time only, fully validate selections.
  .initialFirstLoop
    LDA.w !sram_ctrl_shortcut_selections,X : BEQ .initialFirstInvalid
    STA !CTRL_SHORTCUT_TABLE,X : AND.b !CTRL_SHORTCUT_TYPE_MASK
    BEQ .initialFirstInvalid : CMP.b !GAMEMODE_CTRL_SHORTCUT_COUNT : BPL .initialFirstInvalid
if !FEATURE_VANILLAHUD
    CMP #$1F : BPL .initialFirstCheckInputs
    CMP #$19 : BPL .initialFirstInvalid
    CMP #$12 : BEQ .initialFirstInvalid
    CMP #$05 : BEQ .initialFirstInvalid
else
    CMP #$05
endif
    BPL .initialFirstCheckInputs
    CMP #$01 : BEQ .initialFirstCheckInputs
if !FEATURE_SD2SNES
    LDA !ram_sram_detection : BEQ .initialFirstCheckInputs
endif
  .initialFirstInvalid
    TDC : STA !CTRL_SHORTCUT_TABLE,X
    BRA .initialFirstContinue
  .initialFirstCheckInputs
    TXA : ASL : TAX
    LDY.w !sram_ctrl_1_shortcut_inputs,X : BEQ .initialFirstNoPri
    LDY.w !sram_ctrl_2_shortcut_inputs,X : BEQ .initialFirstPri
    TXA : LSR : TAX
    LDA !CTRL_SHORTCUT_TABLE_DUAL_INDEX : CMP #$30 : BNE .initialFirstContinue
    TXA : STA !CTRL_SHORTCUT_TABLE_DUAL_INDEX
    BRA .initialFirstContinue
  .initialFirstNoPri
    LDY.w !sram_ctrl_2_shortcut_inputs,X : BNE .initialFirstSec
    TXA : LSR : TAX
    BRA .initialFirstInvalid
  .initialFirstPri
    TXA : LSR : TAX
    LDA !CTRL_SHORTCUT_TABLE_PRI_INDEX : CMP #$30 : BNE .initialFirstContinue
    TXA : STA !CTRL_SHORTCUT_TABLE_PRI_INDEX
    BRA .initialFirstContinue
  .initialFirstSec
    TXA : LSR : TAX
    LDA !CTRL_SHORTCUT_TABLE_SEC_INDEX : CMP #$30 : BNE .initialFirstContinue
    TXA : STA !CTRL_SHORTCUT_TABLE_SEC_INDEX
  .initialFirstContinue
    INX : CPX #$001E : BEQ .initialSecondLoop
    JMP .initialFirstLoop

  .initialSecondLoop
    LDA.w !sram_ctrl_additional_selections,X : BEQ .initialSecondInvalid
    STA !CTRL_SHORTCUT_TABLE,X : AND.b !CTRL_SHORTCUT_TYPE_MASK
    BEQ .initialSecondInvalid : CMP.b !GAMEMODE_CTRL_SHORTCUT_COUNT : BPL .initialSecondInvalid
if !FEATURE_VANILLAHUD
    CMP #$19 : BPL .initialSecondInvalid
    CMP #$12 : BEQ .initialSecondInvalid
    CMP #$05 : BEQ .initialSecondInvalid
else
    CMP #$05
endif
    BPL .initialSecondCheckInputs
    CMP #$01 : BEQ .initialSecondCheckInputs
if !FEATURE_SD2SNES
    LDA !ram_sram_detection : BEQ .initialSecondCheckInputs
endif
  .initialSecondInvalid
    TDC : STA !CTRL_SHORTCUT_TABLE,X
    BRA .initialSecondContinue
  .initialSecondCheckInputs
    TXA : ASL : TAX
    LDY.w !sram_ctrl_1_shortcut_inputs,X : BEQ .initialSecondNoPri
    LDY.w !sram_ctrl_2_shortcut_inputs,X : BEQ .initialSecondPri
    TXA : LSR : TAX
    LDA !CTRL_SHORTCUT_TABLE_DUAL_INDEX : CMP #$30 : BNE .initialSecondContinue
    TXA : STA !CTRL_SHORTCUT_TABLE_DUAL_INDEX
    BRA .initialSecondContinue
  .initialSecondNoPri
    LDY.w !sram_ctrl_2_shortcut_inputs,X : BNE .initialSecondSec
    TXA : LSR : TAX
    BRA .initialSecondInvalid
  .initialSecondPri
    TXA : LSR : TAX
    LDA !CTRL_SHORTCUT_TABLE_PRI_INDEX : CMP #$30 : BNE .initialSecondContinue
    TXA : STA !CTRL_SHORTCUT_TABLE_PRI_INDEX
    BRA .initialSecondContinue
  .initialSecondSec
    TXA : LSR : TAX
    LDA !CTRL_SHORTCUT_TABLE_SEC_INDEX : CMP #$30 : BNE .initialSecondContinue
    TXA : STA !CTRL_SHORTCUT_TABLE_SEC_INDEX
  .initialSecondContinue
    INX : CPX #$0030 : BEQ .beginWriteShortcuts
    JMP .initialSecondLoop

  .beginWriteShortcuts
    ; Restore X to resume writing
    LDX #$0001

    ; Check if we have pri only shortcuts to write
    LDA !CTRL_SHORTCUT_TABLE_PRI_INDEX : CMP #$30 : BPL .noPriShortcuts

    ; Write initial check for new controller 1 input
    ; LDA $8F
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8F : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Branch over either two or nine bytes
    ; BNE
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; Check if we have sec only or dual shortcuts to write
    LDA !CTRL_SHORTCUT_TABLE_SEC_INDEX : CMP #$30 : BMI .priToSecDualJump
    LDA !CTRL_SHORTCUT_TABLE_DUAL_INDEX : CMP #$30 : BMI .priToSecDualJump

    ; No additional categories to check
    ; Branch over two bytes (PLP : RTL)
    LDA #$02 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$6B : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JMP .priWriteShortcuts

  .priToSecDualJump
    ; Branch over nine bytes
    LDA #$09 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Write initial check for new controller 2 input
    ; LDA $91
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$91 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Branch over two bytes (PLP : RTL)
    ; BNE $02
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$02 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; PLP : RTL
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$6B : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; JMP
    LDA #$4C : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; We don't yet know where to jump to.
    ; Save this position and we'll write it later.
    ; We know X is an 8-bit value at this point.
    TXA : STA !CTRL_SHORTCUT_PRI_TO_SEC_DUAL_JUMP : INX #2
    JMP .priWriteShortcuts

  .noPriShortcuts
    ; Check if we have sec only shortcuts to write
    LDA !CTRL_SHORTCUT_TABLE_SEC_INDEX : CMP #$30 : BPL .onlyDualShortcuts

    ; Write initial check for new controller 2 input
    ; LDA $91
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$91 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Branch over either two or nine bytes
    ; BNE
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; Check if we have dual shortcuts to write
    LDA !CTRL_SHORTCUT_TABLE_DUAL_INDEX : CMP #$30 : BMI .secToDualJump

    ; No additional categories to check
    ; Branch over two bytes (PLP : RTL)
    LDA #$02 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$6B : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JMP .secWriteShortcuts

  .onlyDualShortcuts
    ; Check if we have dual only shortcuts to write
    LDA !CTRL_SHORTCUT_TABLE_SEC_INDEX : CMP #$30 : BMI .onlyDualChecks
    JMP .doneWriteShortcuts

  .secToDualJump
    ; Branch over nine bytes
    LDA #$09 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Write initial check for new controller 1 input
    ; LDA $8F
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8F : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Branch over two bytes (PLP : RTL)
    ; BNE $02
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$02 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; PLP : RTL
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$6B : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; JMP
    LDA #$4C : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; We don't yet know where to jump to.
    ; Save this position and we'll write it later.
    ; We know X is an 8-bit value at this point.
    TXA : STA !CTRL_SHORTCUT_SEC_TO_DUAL_JUMP : INX #2
    ; JMP
    LDA #$4C : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; We don't yet know where to jump to.
    ; Save this position and we'll write it later.
    ; Since we may have written several primary shortcuts first,
    ; we need to copy the full 16-bits from X.
    %a16() : TXA : STA !CTRL_SHORTCUT_SEC_TO_DUAL_JUMP : %a8() : INX #2
    JMP .secWriteShortcuts

  .onlyDualChecks
    ; Write dual only check for both controller inputs
    ; LDA $8F
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8F : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; ORA $91
    LDA #$05 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$91 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Branch over two bytes (PLP : RTL)
    ; BNE $02
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$02 : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; No additional categories to check
    ; PLP and RTL
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$6B : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JMP .dualWriteShortcuts

  .doneWriteShortcuts
    ; Closing PLP and RTL (skipping final INX)
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$6B : STA !CTRL_SHORTCUT_ROUTINE,X

    ; Write the skip remaining routine (PLP : RTL)
    LDA #$28 : STA !CTRL_SHORTCUT_SKIP_REMAINING_PEA+1
    LDA #$6B : STA !CTRL_SHORTCUT_SKIP_REMAINING_PEA+2

    %a16()
    PLB
    RTL

  .priWriteShortcuts
    ; Populate variables for current shortcut
    %a16() : LDA !CTRL_SHORTCUT_TABLE_PRI_INDEX
    PHX : TAX : ASL : TAY
    LDA.w !sram_ctrl_1_shortcut_inputs,Y : STA !CTRL_SHORTCUT_PRI
    %a8() : LDA !CTRL_SHORTCUT_TABLE,X : STA !CTRL_SHORTCUT_TYPE

    ; Check for special case (single bit non exact match)
    BMI .priWriteNotSpecial
    %a16() : LDA !CTRL_SHORTCUT_PRI : DEC
    AND !CTRL_SHORTCUT_PRI : BNE .priWriteNotSpecial

    ; Scan for other single bit non exact matches with same type,
    ; and also for next pri only shortcut.
    ; Don't forget to clear ourselves from the table and reset category index.
    %a8() : LDA #$30 : STA !CTRL_SHORTCUT_TABLE_PRI_INDEX
    TDC : STA !CTRL_SHORTCUT_TABLE,X
    JMP .priWriteSpecialLoop

  .priWriteNotSpecial
    ; Scan for duplicates, and also for next pri only shortcut.
    ; Don't forget to clear ourselves from the table and reset category index.
    %a8() : LDA #$30 : STA !CTRL_SHORTCUT_TABLE_PRI_INDEX
    TDC : STA !CTRL_SHORTCUT_TABLE,X
  .priWriteNormalLoop
    INX : CPX #$0030 : BPL .priWriteNormal
    INY #2 : LDA !CTRL_SHORTCUT_TABLE,X : BEQ .priWriteNormalLoop
    CMP !CTRL_SHORTCUT_TYPE : BNE .priWriteNormalCheckPri
    %a16() : LDA.w !sram_ctrl_2_shortcut_inputs,Y : %a8() : BNE .priWriteNormalLoop
    %a16() : LDA.w !sram_ctrl_1_shortcut_inputs,Y
    CMP !CTRL_SHORTCUT_PRI : %a8() : BNE .priWriteNormalCheckPri
    TDC : STA !CTRL_SHORTCUT_TABLE,X
    BRA .priWriteNormalLoop
  .priWriteNormalCheckPri
    LDA !CTRL_SHORTCUT_TABLE_PRI_INDEX : CMP #$30 : BMI .priWriteNormalLoop
    %a16() : LDA.w !sram_ctrl_2_shortcut_inputs,Y : %a8() : BNE .priWriteNormalLoop
    TXA : STA !CTRL_SHORTCUT_TABLE_PRI_INDEX
    BRA .priWriteNormalLoop

  .priWriteNormal
    PLX
    ; LDA $8B
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8B : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Check if this is exact match
    LDA !CTRL_SHORTCUT_TYPE : BMI .priWriteMatch
    ; AND !CTRL_SHORTCUT_PRI
    LDA #$29 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_PRI : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_PRI+1 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
  .priWriteMatch
    ; CMP !CTRL_SHORTCUT_PRI
    LDA #$C9 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_PRI : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_PRI+1 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; BNE (value will be written later so do an extra INX)
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX #2
    ; AND $8F
    LDA #$25 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8F : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; BEQ
    LDA #$F0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; Determine how much to branch by
    PHX : TDC : LDA !CTRL_SHORTCUT_TYPE : AND.b !CTRL_SHORTCUT_TYPE_MASK : TAX
    LDA.l ctrl_shortcut_jsl_word_lsb_table,X : STA !CTRL_SHORTCUT_JSL_WORD_LSB
    LDA.l ctrl_shortcut_jsl_word_msb_table,X : STA !CTRL_SHORTCUT_JSL_WORD_MSB
    LDA.l ctrl_shortcut_cancel_gameplay_table,X : BNE .priWriteMatchClc
    LDA !CTRL_SHORTCUT_PRI+1 : BIT #$10 : BNE .priWriteMatchClv
    ; Simple JSL case, so branch by four, earlier branch by eight
    PLX : LDA #$08 : STA !CTRL_SHORTCUT_ROUTINE-$4,X
    LDA #$04 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeJsl
    JMP .nextPriWrite

  .priWriteMatchClc
    LDA !CTRL_SHORTCUT_PRI+1 : BIT #$10 : BNE .priWriteMatchClcClv
    ; PLP : CLC : PHP followed by JSL, so branch by seven, earlier branch by eleven
    PLX : LDA #$0B : STA !CTRL_SHORTCUT_ROUTINE-$4,X
    LDA #$07 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClcJsl
    JMP .nextPriWrite

  .priWriteMatchClv
    ; PLP : CLV : PHP followed by JSL, so branch by seven, earlier branch by eleven
    PLX : LDA #$0B : STA !CTRL_SHORTCUT_ROUTINE-$4,X
    LDA #$07 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClvJsl
    JMP .nextPriWrite

  .priWriteMatchClcClv
    ; PLP : REP $41 : PHP followed by JSL, so branch by eight, earlier branch by twelve
    PLX : LDA #$0C : STA !CTRL_SHORTCUT_ROUTINE-$4,X
    LDA #$08 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClcClvJsl
    JMP .nextPriWrite

  .priWriteSpecialLoop
    INX : CPX #$0030 : BPL .priWriteSpecial
    INY #2 : LDA !CTRL_SHORTCUT_TABLE,X : BEQ .priWriteSpecialLoop
    CMP !CTRL_SHORTCUT_TYPE : BNE .priWriteSpecialCheckPri
    %a16() : LDA.w !sram_ctrl_2_shortcut_inputs,Y : %a8() : BNE .priWriteSpecialLoop
    %a16() : LDA.w !sram_ctrl_1_shortcut_inputs,Y
    DEC : AND.w !sram_ctrl_1_shortcut_inputs,Y : %a8() : BNE .priWriteSpecialCheckPri
    %a16() : LDA.w !sram_ctrl_1_shortcut_inputs,Y
    ORA !CTRL_SHORTCUT_PRI : STA !CTRL_SHORTCUT_PRI
    %a8() : TDC : STA !CTRL_SHORTCUT_TABLE,X
    BRA .priWriteSpecialLoop
  .priWriteSpecialCheckPri
    LDA !CTRL_SHORTCUT_TABLE_PRI_INDEX : CMP #$30 : BMI .priWriteSpecialLoop
    %a16() : LDA.w !sram_ctrl_2_shortcut_inputs,Y : %a8() : BNE .priWriteSpecialLoop
    TXA : STA !CTRL_SHORTCUT_TABLE_PRI_INDEX
    BRA .priWriteSpecialLoop

  .priWriteSpecial
    PLX
    ; LDA $8F
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8F : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; BIT !CTRL_SHORTCUT_PRI
    LDA #$89 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_PRI : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_PRI+1 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; BEQ
    LDA #$F0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; Determine how much to branch by
    PHX : TDC : LDA !CTRL_SHORTCUT_TYPE : AND.b !CTRL_SHORTCUT_TYPE_MASK : TAX
    LDA.l ctrl_shortcut_jsl_word_lsb_table,X : STA !CTRL_SHORTCUT_JSL_WORD_LSB
    LDA.l ctrl_shortcut_jsl_word_msb_table,X : STA !CTRL_SHORTCUT_JSL_WORD_MSB
    LDA.l ctrl_shortcut_cancel_gameplay_table,X : BNE .priWriteSpecialClc
    LDA !CTRL_SHORTCUT_PRI+1 : BIT #$10 : BNE .priWriteSpecialClv
    ; Simple JSL case, so branch by four
    PLX : LDA #$04 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeJsl
    BRA .nextPriWrite

  .priWriteSpecialClc
    LDA !CTRL_SHORTCUT_PRI+1 : BIT #$10 : BNE .priWriteSpecialClcClv
    ; PLP : CLC : PHP followed by JSL, so branch by seven
    PLX : LDA #$07 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClcJsl
    BRA .nextPriWrite

  .priWriteSpecialClv
    ; PLP : CLV : PHP followed by JSL, so branch by seven
    PLX : LDA #$07 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClvJsl
    BRA .nextPriWrite

  .priWriteSpecialClcClv
    ; PLP : REP $41 : PHP followed by JSL, so branch by eight
    PLX : LDA #$08 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClcClvJsl

  .nextPriWrite
    LDA !CTRL_SHORTCUT_TABLE_PRI_INDEX : CMP #$30 : BPL .donePriWrite
    JMP .priWriteShortcuts

  .donePriNoSec
    ; Check if we have dual shortcuts to write
    LDA !CTRL_SHORTCUT_TABLE_DUAL_INDEX : CMP #$30 : BPL .donePriNoSecNoDual

    ; Write check for any controller 2 input
    ; LDA $8D
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8D : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Branch over two bytes (PLP : RTL)
    ; BNE $02
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$02 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; PLP : RTL
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$6B : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; Write the jump location we skipped over earlier
    %a16() : TXY : LDA !CTRL_SHORTCUT_PRI_TO_SEC_DUAL_JUMP : TAX
    TYA : CLC : ADC.w #!CTRL_SHORTCUT_ROUTINE : STA !CTRL_SHORTCUT_ROUTINE,X
    TYX : %a8()
    JMP .dualWriteShortcuts

  .donePriNoSecNoDual
    JMP .doneWriteShortcuts

  .donePriWrite
    ; Check if we have sec only shortcuts to write
    LDA !CTRL_SHORTCUT_TABLE_SEC_INDEX : CMP #$30 : BPL .donePriNoSec

    ; Write check for new controller 2 input
    ; LDA $91
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$91 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Branch over either two or nine bytes
    ; BNE
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; Check if we have dual shortcuts to write
    LDA !CTRL_SHORTCUT_TABLE_DUAL_INDEX : CMP #$30 : BMI .donePriJumpToDual

    ; No additional categories to check
    ; Branch over two bytes (PLP : RTL)
    LDA #$02 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$6B : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; Write the jump location we skipped over earlier
    %a16() : TXY : LDA !CTRL_SHORTCUT_PRI_TO_SEC_DUAL_JUMP : TAX
    TYA : CLC : ADC.w #!CTRL_SHORTCUT_ROUTINE : STA !CTRL_SHORTCUT_ROUTINE,X
    TYX : %a8()
    JMP .secWriteShortcuts

  .donePriJumpToDual
    ; Branch over nine bytes
    LDA #$09 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Write check for any controller 2 input
    ; LDA $8D
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8D : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Branch over two bytes (PLP : RTL)
    ; BNE $02
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$02 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; PLP : RTL
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$6B : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; JMP
    LDA #$4C : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; We don't yet know where to jump to.
    ; Save this position and we'll write it later.
    ; Since we may have written several primary shortcuts first,
    ; we need to copy the full 16-bits from X.
    %a16() : TXA : STA !CTRL_SHORTCUT_SEC_TO_DUAL_JUMP : %a8() : INX #2

    ; Write the jump location we skipped over earlier
    %a16() : TXY : LDA !CTRL_SHORTCUT_PRI_TO_SEC_DUAL_JUMP : TAX
    TYA : CLC : ADC.w #!CTRL_SHORTCUT_ROUTINE : STA !CTRL_SHORTCUT_ROUTINE,X
    TYX : %a8()
    JMP .secWriteShortcuts

  .secWriteShortcuts
    ; Populate variables for current shortcut
    %a16() : LDA !CTRL_SHORTCUT_TABLE_SEC_INDEX
    PHX : TAX : ASL : TAY
    LDA.w !sram_ctrl_2_shortcut_inputs,Y : STA !CTRL_SHORTCUT_SEC
    %a8() : LDA !CTRL_SHORTCUT_TABLE,X : STA !CTRL_SHORTCUT_TYPE

    ; Check for special case (single bit non exact match)
    BMI .secWriteNotSpecial
    %a16() : LDA !CTRL_SHORTCUT_SEC : DEC
    AND !CTRL_SHORTCUT_SEC : BNE .secWriteNotSpecial

    ; Scan for other single bit non exact matches with same type,
    ; and also for next sec only shortcut.
    ; Don't forget to clear ourselves from the table and reset category index.
    %a8() : LDA #$30 : STA !CTRL_SHORTCUT_TABLE_SEC_INDEX
    TDC : STA !CTRL_SHORTCUT_TABLE,X
    JMP .secWriteSpecialLoop

  .secWriteNotSpecial
    ; Scan for duplicates, and also for next sec only shortcut.
    ; Don't forget to clear ourselves from the table and reset category index.
    %a8() : LDA #$30 : STA !CTRL_SHORTCUT_TABLE_SEC_INDEX
    TDC : STA !CTRL_SHORTCUT_TABLE,X
  .secWriteNormalLoop
    INX : CPX #$0030 : BPL .secWriteNormal
    INY #2 : LDA !CTRL_SHORTCUT_TABLE,X : BEQ .secWriteNormalLoop
    CMP !CTRL_SHORTCUT_TYPE : BNE .secWriteNormalCheckSec
    %a16() : LDA.w !sram_ctrl_1_shortcut_inputs,Y : %a8() : BNE .secWriteNormalLoop
    %a16() : LDA.w !sram_ctrl_2_shortcut_inputs,Y
    CMP !CTRL_SHORTCUT_SEC : %a8() : BNE .secWriteNormalCheckSec
    TDC : STA !CTRL_SHORTCUT_TABLE,X
    BRA .secWriteNormalLoop
  .secWriteNormalCheckSec
    LDA !CTRL_SHORTCUT_TABLE_SEC_INDEX : CMP #$30 : BMI .secWriteNormalLoop
    %a16() : LDA.w !sram_ctrl_1_shortcut_inputs,Y : %a8() : BNE .secWriteNormalLoop
    TXA : STA !CTRL_SHORTCUT_TABLE_SEC_INDEX
    BRA .secWriteNormalLoop

  .secWriteNormal
    PLX
    ; LDA $8D
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8D : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Check if this is exact match
    LDA !CTRL_SHORTCUT_TYPE : BMI .secWriteMatch
    ; AND !CTRL_SHORTCUT_SEC
    LDA #$29 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_SEC : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_SEC+1 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
  .secWriteMatch
    ; CMP !CTRL_SHORTCUT_SEC
    LDA #$C9 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_SEC : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_SEC+1 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; BNE (value will be written later so do an extra INX)
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX #2
    ; AND $91
    LDA #$25 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$91 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; BEQ
    LDA #$F0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; Determine how much to branch by
    PHX : TDC : LDA !CTRL_SHORTCUT_TYPE : AND.b !CTRL_SHORTCUT_TYPE_MASK : TAX
    LDA.l ctrl_shortcut_jsl_word_lsb_table,X : STA !CTRL_SHORTCUT_JSL_WORD_LSB
    LDA.l ctrl_shortcut_jsl_word_msb_table,X : STA !CTRL_SHORTCUT_JSL_WORD_MSB
    LDA.l ctrl_shortcut_cancel_gameplay_table,X : BNE .secWriteMatchClc
    LDA !CTRL_SHORTCUT_SEC+1 : BIT #$10 : BNE .secWriteMatchClv
    ; Simple JSL case, so branch by four, earlier branch by eight
    PLX : LDA #$08 : STA !CTRL_SHORTCUT_ROUTINE-$4,X
    LDA #$04 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeJsl
    JMP .nextSecWrite

  .secWriteMatchClc
    LDA !CTRL_SHORTCUT_SEC+1 : BIT #$10 : BNE .secWriteMatchClcClv
    ; PLP : CLC : PHP followed by JSL, so branch by seven, earlier branch by eleven
    PLX : LDA #$0B : STA !CTRL_SHORTCUT_ROUTINE-$4,X
    LDA #$07 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClcJsl
    JMP .nextSecWrite

  .secWriteMatchClv
    ; PLP : CLV : PHP followed by JSL, so branch by seven, earlier branch by eleven
    PLX : LDA #$0B : STA !CTRL_SHORTCUT_ROUTINE-$4,X
    LDA #$07 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClvJsl
    JMP .nextSecWrite

  .secWriteMatchClcClv
    ; PLP : REP $41 : PHP followed by JSL, so branch by eight, earlier branch by twelve
    PLX : LDA #$0C : STA !CTRL_SHORTCUT_ROUTINE-$4,X
    LDA #$08 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClcClvJsl
    JMP .nextSecWrite

  .secWriteSpecialLoop
    INX : CPX #$0030 : BPL .secWriteSpecial
    INY #2 : LDA !CTRL_SHORTCUT_TABLE,X : BEQ .secWriteSpecialLoop
    CMP !CTRL_SHORTCUT_TYPE : BNE .secWriteSpecialCheckSec
    %a16() : LDA.w !sram_ctrl_1_shortcut_inputs,Y : %a8() : BNE .secWriteSpecialLoop
    %a16() : LDA.w !sram_ctrl_2_shortcut_inputs,Y
    DEC : AND.w !sram_ctrl_2_shortcut_inputs,Y : %a8() : BNE .secWriteSpecialCheckSec
    %a16() : LDA.w !sram_ctrl_2_shortcut_inputs,Y
    ORA !CTRL_SHORTCUT_SEC : STA !CTRL_SHORTCUT_SEC
    %a8() : TDC : STA !CTRL_SHORTCUT_TABLE,X
    BRA .secWriteSpecialLoop
  .secWriteSpecialCheckSec
    LDA !CTRL_SHORTCUT_TABLE_SEC_INDEX : CMP #$30 : BMI .secWriteSpecialLoop
    %a16() : LDA.w !sram_ctrl_1_shortcut_inputs,Y : %a8() : BNE .secWriteSpecialLoop
    TXA : STA !CTRL_SHORTCUT_TABLE_SEC_INDEX
    BRA .secWriteSpecialLoop

  .secWriteSpecial
    PLX
    ; LDA $91
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$91 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; BIT !CTRL_SHORTCUT_SEC
    LDA #$89 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_SEC : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_SEC+1 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; BEQ
    LDA #$F0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; Determine how much to branch by
    PHX : TDC : LDA !CTRL_SHORTCUT_TYPE : AND.b !CTRL_SHORTCUT_TYPE_MASK : TAX
    LDA.l ctrl_shortcut_jsl_word_lsb_table,X : STA !CTRL_SHORTCUT_JSL_WORD_LSB
    LDA.l ctrl_shortcut_jsl_word_msb_table,X : STA !CTRL_SHORTCUT_JSL_WORD_MSB
    LDA.l ctrl_shortcut_cancel_gameplay_table,X : BNE .secWriteSpecialClc
    LDA !CTRL_SHORTCUT_SEC+1 : BIT #$10 : BNE .secWriteSpecialClv
    ; Simple JSL case, so branch by four
    PLX : LDA #$04 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeJsl
    BRA .nextSecWrite

  .secWriteSpecialClc
    LDA !CTRL_SHORTCUT_SEC+1 : BIT #$10 : BNE .secWriteSpecialClcClv
    ; PLP : CLC : PHP followed by JSL, so branch by seven
    PLX : LDA #$07 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClcJsl
    BRA .nextSecWrite

  .secWriteSpecialClv
    ; PLP : CLV : PHP followed by JSL, so branch by seven
    PLX : LDA #$07 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClvJsl
    BRA .nextSecWrite

  .secWriteSpecialClcClv
    ; PLP : REP $41 : PHP followed by JSL, so branch by eight
    PLX : LDA #$08 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClcClvJsl

  .nextSecWrite
    LDA !CTRL_SHORTCUT_TABLE_SEC_INDEX : CMP #$30 : BPL .doneSecWrite
    JMP .secWriteShortcuts

  .doneSecWrite
    ; Check if we have dual shortcuts to write
    LDA !CTRL_SHORTCUT_TABLE_DUAL_INDEX : CMP #$30 : BMI .doneSecHasDual
    JMP .doneWriteShortcuts

  .doneSecHasDual
    ; Write check for any controller 1 input
    ; LDA $8B
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8B : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Branch over two bytes (PLP : RTL)
    ; BNE $02
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$02 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; PLP : RTL
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$6B : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; Write the jump location we skipped over earlier
    %a16() : TXY : LDA !CTRL_SHORTCUT_SEC_TO_DUAL_JUMP : TAX
    TYA : CLC : ADC.w #!CTRL_SHORTCUT_ROUTINE : STA !CTRL_SHORTCUT_ROUTINE,X
    TYX : %a8()

  .dualWriteShortcuts
    ; Populate variables for current shortcut
    %a16() : LDA !CTRL_SHORTCUT_TABLE_DUAL_INDEX
    PHX : TAX : ASL : TAY
    LDA.w !sram_ctrl_1_shortcut_inputs,Y : STA !CTRL_SHORTCUT_PRI
    LDA.w !sram_ctrl_2_shortcut_inputs,Y : STA !CTRL_SHORTCUT_SEC
    %a8() : LDA !CTRL_SHORTCUT_TABLE,X : STA !CTRL_SHORTCUT_TYPE

    ; Scan for duplicates, and also for next shortcut.
    ; Don't forget to clear ourselves from the table and reset category index.
    %a8() : LDA #$30 : STA !CTRL_SHORTCUT_TABLE_DUAL_INDEX
    TDC : STA !CTRL_SHORTCUT_TABLE,X
  .dualWriteNormalLoop
    INX : CPX #$0030 : BPL .dualWriteNormal
    INY #2 : LDA !CTRL_SHORTCUT_TABLE,X : BEQ .dualWriteNormalLoop
    CMP !CTRL_SHORTCUT_TYPE : BNE .dualWriteNormalCheckDual
    %a16() : LDA.w !sram_ctrl_1_shortcut_inputs,Y
    CMP !CTRL_SHORTCUT_PRI : %a8() : BNE .dualWriteNormalCheckDual
    %a16() : LDA.w !sram_ctrl_2_shortcut_inputs,Y
    CMP !CTRL_SHORTCUT_SEC : %a8() : BNE .dualWriteNormalCheckDual
    TDC : STA !CTRL_SHORTCUT_TABLE,X
    BRA .dualWriteNormalLoop
  .dualWriteNormalCheckDual
    LDA !CTRL_SHORTCUT_TABLE_DUAL_INDEX : CMP #$30 : BMI .dualWriteNormalLoop
    TXA : STA !CTRL_SHORTCUT_TABLE_DUAL_INDEX
    BRA .dualWriteNormalLoop

  .dualWriteNormal
    PLX
    ; LDA $8B
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8B : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Check if this is exact match
    LDA !CTRL_SHORTCUT_TYPE : BMI .dualWriteMatchPri
    ; AND !CTRL_SHORTCUT_PRI
    LDA #$29 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_PRI : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_PRI+1 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
  .dualWriteMatchPri
    ; CMP !CTRL_SHORTCUT_PRI
    LDA #$C9 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_PRI : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_PRI+1 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; BNE (value will be written later so do an extra INX)
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX #2
    ; LDA $8D
    LDA #$A5 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8D : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; Check if this is exact match
    LDA !CTRL_SHORTCUT_TYPE : BMI .dualWriteMatchSec
    ; AND !CTRL_SHORTCUT_SEC
    LDA #$29 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_SEC : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_SEC+1 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
  .dualWriteMatchSec
    ; CMP !CTRL_SHORTCUT_SEC
    LDA #$C9 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_SEC : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_SEC+1 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; BNE (value will be written later so do an extra INX)
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX #2
    ; AND $91
    LDA #$25 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$91 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; BNE $07
    LDA #$D0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$07 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; LDA !CTRL_SHORTCUT_PRI
    LDA #$A9 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_PRI : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_PRI+1 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; AND $8F
    LDA #$25 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$8F : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; BEQ
    LDA #$F0 : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; Determine how much to branch by
    PHX : TDC : LDA !CTRL_SHORTCUT_TYPE : AND.b !CTRL_SHORTCUT_TYPE_MASK : TAX
    LDA.l ctrl_shortcut_jsl_word_lsb_table,X : STA !CTRL_SHORTCUT_JSL_WORD_LSB
    LDA.l ctrl_shortcut_jsl_word_msb_table,X : STA !CTRL_SHORTCUT_JSL_WORD_MSB
    LDA.l ctrl_shortcut_cancel_gameplay_table,X : BNE .dualWriteMatchClc
    LDA !CTRL_SHORTCUT_PRI+1 : BIT #$10 : BNE .dualWriteMatchClv
    LDA !CTRL_SHORTCUT_SEC+1 : BIT #$10 : BNE .dualWriteMatchClv
    ; Simple JSL case, so branch by four, earlier branches by 15 and 25
    PLX : LDA #$19 : STA !CTRL_SHORTCUT_ROUTINE-$15,X
    LDA #$0F : STA !CTRL_SHORTCUT_ROUTINE-$B,X
    LDA #$04 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeJsl
    BRA .nextDualWrite

  .dualWriteMatchClc
    LDA !CTRL_SHORTCUT_PRI+1 : BIT #$10 : BNE .dualWriteMatchClcClv
    LDA !CTRL_SHORTCUT_SEC+1 : BIT #$10 : BNE .dualWriteMatchClcClv
    ; PLP : CLC : PHP followed by JSL, so branch by seven, earlier branches by 18 and 28
    PLX : LDA #$1C : STA !CTRL_SHORTCUT_ROUTINE-$15,X
    LDA #$12 : STA !CTRL_SHORTCUT_ROUTINE-$B,X
    LDA #$07 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClcJsl
    BRA .nextDualWrite

  .dualWriteMatchClv
    ; PLP : CLV : PHP followed by JSL, so branch by seven, earlier branches by 18 and 28
    PLX : LDA #$1C : STA !CTRL_SHORTCUT_ROUTINE-$15,X
    LDA #$12 : STA !CTRL_SHORTCUT_ROUTINE-$B,X
    LDA #$07 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClvJsl
    BRA .nextDualWrite

  .dualWriteMatchClcClv
    ; PLP : REP $41 : PHP followed by JSL, so branch by eight, earlier branches by 19 and 29
    PLX : LDA #$1D : STA !CTRL_SHORTCUT_ROUTINE-$15,X
    LDA #$13 : STA !CTRL_SHORTCUT_ROUTINE-$B,X
    LDA #$08 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    JSR .writeClcClvJsl

  .nextDualWrite
    LDA !CTRL_SHORTCUT_TABLE_DUAL_INDEX : CMP #$30 : BPL .doneDualWrite
    JMP .dualWriteShortcuts

  .doneDualWrite
    JMP .doneWriteShortcuts

    ; The following four subroutines jumped into from within this method
  .writeClvJsl
    ; PLP
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; CLV
    LDA #$B8 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; PHP
    LDA #$08 : STA !CTRL_SHORTCUT_ROUTINE,X : INX

    ; Fallthrough
  .writeJsl
    ; JSL
    LDA #$22 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_JSL_WORD_LSB : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA !CTRL_SHORTCUT_JSL_WORD_MSB : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA.b #ctrl_shortcut_jsl_word_msb_table>>16 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    RTS

  .writeClcJsl
    ; PLP
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; CLC
    LDA #$18 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; PHP
    LDA #$08 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    BRA .writeJsl

  .writeClcClvJsl
    ; PLP
    LDA #$28 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; REP $41 (equivalent of CLC : CLV)
    LDA #$C2 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    LDA #$41 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    ; PHP
    LDA #$08 : STA !CTRL_SHORTCUT_ROUTINE,X : INX
    BRA .writeJsl
}

cm_condense_ctrl_shortcuts:
{
    PHB : PEA $7070 : PLB : PLB
    LDA.w #!sram_ctrl_1_shortcut_inputs : STA $00 : STA $02
    LDA.w #!sram_ctrl_2_shortcut_inputs : STA $04 : STA $06
    TDC : TAX : TAY

  .firstLoop
    LDA.w !sram_ctrl_shortcut_selections,X
    AND !CTRL_SHORTCUT_TYPE_MASK : BEQ .firstSkip
    LDA ($00) : ORA ($04) : BNE .firstCopyCheck
    %a8() : STA.w !sram_ctrl_shortcut_selections,X : %a16()
    BRA .firstSkip
  .firstCopyCheck
    LDA $00 : CMP $02 : BEQ .firstCopyDone
    LDA ($00) : STA ($02) : LDA ($04) : STA ($06)
    %a8() : LDA.w !sram_ctrl_shortcut_selections,X : STA.w !sram_ctrl_shortcut_selections,Y
    TDC : STA.w !sram_ctrl_shortcut_selections,X
    %a16() : STA ($00) : STA ($04)
  .firstCopyDone
    INY : INC $02 : INC $02 : INC $06 : INC $06
  .firstSkip
    INX : INC $00 : INC $00 : INC $04 : INC $04
    CPX #$001E : BMI .firstLoop

  .secondLoop
    LDA.w !sram_ctrl_additional_selections,X
    AND !CTRL_SHORTCUT_TYPE_MASK : BEQ .secondSkip
    LDA ($00) : ORA ($04) : BNE .secondCopyCheck
    %a8() : STA.w !sram_ctrl_additional_selections,X : %a16()
    BRA .secondSkip
  .secondCopyCheck
    LDA $00 : CMP $02 : BEQ .secondCopyDone
    LDA ($00) : STA ($02) : LDA ($04) : STA ($06)
    %a8() : CPY #$001E : BMI .secondToFirst
    LDA.w !sram_ctrl_additional_selections,X : STA.w !sram_ctrl_additional_selections,Y
    BRA .secondClear
  .secondToFirst
    LDA.w !sram_ctrl_additional_selections,X : STA.w !sram_ctrl_shortcut_selections,Y
  .secondClear
    TDC : STA.w !sram_ctrl_additional_selections,X
    %a16() : STA ($00) : STA ($04)
  .secondCopyDone
    INY : INC $02 : INC $02 : INC $06 : INC $06
  .secondSkip
    INX : INC $00 : INC $00 : INC $04 : INC $04
    CPX #$0030 : BMI .secondLoop

    PLB
    RTL
}

validate_sram:
{
    ; check if this is ZSNES
    PHP : SEP #$28
    LDA #$FF : CLC : ADC #$FF
    CMP #$64 : CLD : BNE .doneZSNES
    PLP
    LDA !SRAM_DETECTION_ZSNES : STA !ram_sram_detection
    JMP .fail

  .doneZSNES
    PLP

if !FEATURE_SD2SNES
    ; check if required SRAM range is valid
    ; writes to SRAM will mirror in other banks if not valid
    LDA $707FFE : PHA
    LDA $737FFE : INC : STA $707FFE
    CMP $737FFE : BNE .first128CheckPass

    ; double check
    LDA $702FFE : PHA
    LDA $732FFE : INC : STA $702FFE
    CMP $732FFE : BNE .second128CheckPass

    ; 128kb check failed
    PLA : STA $702FFE
    PLA : STA $707FFE
    LDA !SRAM_DETECTION_32KB : STA !ram_sram_detection
    BRA .fail

  .second128CheckPass
    PLA : STA $702FFE
  .first128CheckPass
    PLA : STA $707FFE

if !FEATURE_TINYSTATES
else
    LDA $737FFE : PHA
    LDA $777FFE : INC : STA $737FFE
    CMP $777FFE : BNE .first256CheckPass

    ; double check
    LDA $732FFE : PHA
    LDA $772FFE : INC : STA $732FFE
    CMP $772FFE : BNE .second256CheckPass

    ; 256kb check failed
    PLA : STA $732FFE
    PLA : STA $737FFE
    LDA !SRAM_DETECTION_128KB : STA !ram_sram_detection
    BRA .fail

  .second256CheckPass
    PLA : STA $732FFE
  .first256CheckPass
    PLA : STA $737FFE
endif
endif

    ; success
    TDC : STA !ram_sram_detection
    RTL

  .fail
    LDA !sram_cutscenes : ORA !CUTSCENE_QUICKBOOT : STA !sram_cutscenes
if !FEATURE_SD2SNES
    ; disable savestate controls
    TDC : TAX
    %a8()
  .firstLoop
    LDA !sram_ctrl_shortcut_selections,X : ASL
    CMP #$04 : BCC .firstContinue : CMP #$0A : BCS .firstContinue
    TDC : STA !sram_ctrl_shortcut_selections,X
  .firstContinue
    INX : CPX #$001E : BMI .firstLoop
  .secondLoop
    LDA !sram_ctrl_additional_selections,X : ASL
    CMP #$04 : BCC .secondContinue : CMP #$0A : BCS .secondContinue
    TDC : STA !sram_ctrl_additional_selections,X
  .secondContinue
    INX : CPX #$0030 : BMI .secondLoop
  .found
    %a16()
endif
    RTL
}


; ------------------
; Ctrl Shortcut Menu
; ------------------

CtrlShortcutMenu:
    dw #ctrlshortcut_00
    dw #ctrlshortcut_01
    dw #ctrlshortcut_02
    dw #ctrlshortcut_03
    dw #ctrlshortcut_04
    dw #ctrlshortcut_05
    dw #ctrlshortcut_06
    dw #ctrlshortcut_07
    dw #ctrlshortcut_08
    dw #ctrlshortcut_09
    dw #ctrlshortcut_10
    dw #ctrlshortcut_11
    dw #ctrlshortcut_12
    dw #ctrlshortcut_13
    dw #ctrlshortcut_14
    dw #ctrlshortcut_15
    dw #ctrlshortcut_goto_page2
    dw #ctrlshortcut_goto_page3
    dw #ctrlshortcut_reset_defaults
    dw #$0000
    %cm_header("CONTROLLER SHORTCUTS")
    %cm_footer_ctrlshortcut("PRESS AND HOLD FOR 2 SEC", "TOGGLES EXACT MATCH")

CtrlShortcutMenu2:
    dw #ctrlshortcut_16
    dw #ctrlshortcut_17
    dw #ctrlshortcut_18
    dw #ctrlshortcut_19
    dw #ctrlshortcut_20
    dw #ctrlshortcut_21
    dw #ctrlshortcut_22
    dw #ctrlshortcut_23
    dw #ctrlshortcut_24
    dw #ctrlshortcut_25
    dw #ctrlshortcut_26
    dw #ctrlshortcut_27
    dw #ctrlshortcut_28
    dw #ctrlshortcut_29
    dw #ctrlshortcut_30
    dw #ctrlshortcut_31
    dw #ctrlshortcut_goto_page1
    dw #ctrlshortcut_goto_page3
    dw #ctrlshortcut_reset_defaults
    dw #$0000
    %cm_header("CONTROLLER SHORTCUTS")
    %cm_footer_ctrlshortcut("PRESS AND HOLD FOR 2 SEC", "TOGGLES EXACT MATCH")

CtrlShortcutMenu3:
    dw #ctrlshortcut_32
    dw #ctrlshortcut_33
    dw #ctrlshortcut_34
    dw #ctrlshortcut_35
    dw #ctrlshortcut_36
    dw #ctrlshortcut_37
    dw #ctrlshortcut_38
    dw #ctrlshortcut_39
    dw #ctrlshortcut_40
    dw #ctrlshortcut_41
    dw #ctrlshortcut_42
    dw #ctrlshortcut_43
    dw #ctrlshortcut_44
    dw #ctrlshortcut_45
    dw #ctrlshortcut_46
    dw #ctrlshortcut_47
    dw #ctrlshortcut_goto_page1
    dw #ctrlshortcut_goto_page2
    dw #ctrlshortcut_reset_defaults
    dw #$0000
    %cm_header("CONTROLLER SHORTCUTS")
    %cm_footer_ctrlshortcut("PRESS AND HOLD FOR 2 SEC", "TOGGLES EXACT MATCH")

%cm_ctrl_shortcut(00)
%cm_ctrl_shortcut(01)
%cm_ctrl_shortcut(02)
%cm_ctrl_shortcut(03)
%cm_ctrl_shortcut(04)
%cm_ctrl_shortcut(05)
%cm_ctrl_shortcut(06)
%cm_ctrl_shortcut(07)
%cm_ctrl_shortcut(08)
%cm_ctrl_shortcut(09)
%cm_ctrl_shortcut(10)
%cm_ctrl_shortcut(11)
%cm_ctrl_shortcut(12)
%cm_ctrl_shortcut(13)
%cm_ctrl_shortcut(14)
%cm_ctrl_shortcut(15)
%cm_ctrl_shortcut(16)
%cm_ctrl_shortcut(17)
%cm_ctrl_shortcut(18)
%cm_ctrl_shortcut(19)
%cm_ctrl_shortcut(20)
%cm_ctrl_shortcut(21)
%cm_ctrl_shortcut(22)
%cm_ctrl_shortcut(23)
%cm_ctrl_shortcut(24)
%cm_ctrl_shortcut(25)
%cm_ctrl_shortcut(26)
%cm_ctrl_shortcut(27)
%cm_ctrl_shortcut(28)
%cm_ctrl_shortcut(29)
%cm_ctrl_shortcut(30)
%cm_ctrl_shortcut(31)
%cm_ctrl_shortcut(32)
%cm_ctrl_shortcut(33)
%cm_ctrl_shortcut(34)
%cm_ctrl_shortcut(35)
%cm_ctrl_shortcut(36)
%cm_ctrl_shortcut(37)
%cm_ctrl_shortcut(38)
%cm_ctrl_shortcut(39)
%cm_ctrl_shortcut(40)
%cm_ctrl_shortcut(41)
%cm_ctrl_shortcut(42)
%cm_ctrl_shortcut(43)
%cm_ctrl_shortcut(44)
%cm_ctrl_shortcut(45)
%cm_ctrl_shortcut(46)
%cm_ctrl_shortcut(47)

ctrlshortcut_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #CtrlShortcutMenu)

ctrlshortcut_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #CtrlShortcutMenu2)

ctrlshortcut_goto_page3:
    %cm_adjacent_submenu("GOTO PAGE THREE", #CtrlShortcutMenu3)

ctrlshortcut_reset_defaults:
    %cm_jsl("Reset to Defaults", .routine, #$0000)
  .routine
    %sfxreset()
    JML init_sram_controller_shortcuts

ctrl_add_shortcut:
    %cm_submenu("Add Shortcut", #CtrlSelectShortcutTypeMenu)

CtrlSelectShortcutTypeMenu:
    dw #ctrl_add_main_menu
    dw #ctrl_add_soft_reset
if !FEATURE_SD2SNES
    dw #ctrl_add_save_state_dynamic
    dw #ctrl_add_load_state_dynamic
    dw #ctrl_add_auto_save_state_dynamic
endif
if !FEATURE_VANILLAHUD
else
    dw #ctrl_add_update_timers
endif
    dw #ctrl_add_reload_preset
    dw #ctrl_add_random_preset
    dw #ctrl_add_save_custom_preset
    dw #ctrl_add_load_custom_preset
    dw #ctrl_add_inc_custom_preset
    dw #ctrl_add_dec_custom_preset
    dw #ctrl_add_reset_segment_timer
    dw #ctrl_add_reset_segment_later
    dw #$FFFF
    dw #ctrl_select_shortcut_goto_page2
    dw #ctrl_select_shortcut_goto_page3
    dw #$0000
    %cm_header("SELECT SHORTCUT TYPE")

CtrlSelectShortcutTypeMenu2:
    dw #ctrl_add_full_equipment
    dw #ctrl_add_kill_enemies
    dw #ctrl_add_toggle_tileviewer
    dw #ctrl_add_randomize_rng
if !FEATURE_VANILLAHUD
else
    dw #ctrl_add_reveal_damage
endif
    dw #ctrl_add_force_stand
    dw #ctrl_add_toggle_spin_lock
    dw #$FFFF
    dw #ctrl_select_shortcut_goto_page1
    dw #ctrl_select_shortcut_goto_page3
    dw #$0000
    %cm_header("SELECT SHORTCUT TYPE")

CtrlSelectShortcutTypeMenu3:
    dw #ctrl_add_pause
    dw #ctrl_add_unpause
    dw #ctrl_add_slowdown
    dw #ctrl_add_speedup
if !FEATURE_VANILLAHUD
else
    dw #ctrl_add_inc_display_mode
    dw #ctrl_add_dec_display_mode
    dw #ctrl_add_inc_room_strat
    dw #ctrl_add_dec_room_strat
    dw #ctrl_add_inc_super_hud
    dw #ctrl_add_dec_super_hud
endif
if !FEATURE_DEV
    dw #ctrl_add_dev_shortcut
endif
    dw #$FFFF
    dw #ctrl_select_shortcut_goto_page1
    dw #ctrl_select_shortcut_goto_page2
    dw #$0000
    %cm_header("SELECT SHORTCUT TYPE")

ctrl_select_shortcut_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #CtrlSelectShortcutTypeMenu)

ctrl_select_shortcut_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #CtrlSelectShortcutTypeMenu2)

ctrl_select_shortcut_goto_page3:
    %cm_adjacent_submenu("GOTO PAGE THREE", #CtrlSelectShortcutTypeMenu3)

if !FEATURE_SD2SNES
ctrl_add_save_state_dynamic:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_ctrl_savestates_allowed
    dw #$0000
    dw #ctrl_add_save_state

ctrl_add_load_state_dynamic:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_ctrl_savestates_allowed
    dw #$0000
    dw #ctrl_add_load_state

ctrl_add_auto_save_state_dynamic:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_ctrl_savestates_allowed
    dw #$0000
    dw #ctrl_add_auto_save_state
endif

ctrl_shortcut_text_table:
    dw #ctrl_add_empty_dm_text
    dw #ctrl_add_main_menu_dm_text
if !FEATURE_SD2SNES
    dw #ctrl_add_save_state_dm_text
    dw #ctrl_add_load_state_dm_text
    dw #ctrl_add_auto_save_state_dm_text
else
    dw #ctrl_add_empty_dm_text
    dw #ctrl_add_empty_dm_text
    dw #ctrl_add_empty_dm_text
endif
if !FEATURE_VANILLAHUD
    dw #ctrl_add_empty_dm_text
else
    dw #ctrl_add_update_timers_dm_text
endif
    dw #ctrl_add_reload_preset_dm_text
    dw #ctrl_add_random_preset_dm_text
    dw #ctrl_add_save_custom_preset_dm_text
    dw #ctrl_add_load_custom_preset_dm_text
    dw #ctrl_add_inc_custom_preset_dm_text
    dw #ctrl_add_dec_custom_preset_dm_text
    dw #ctrl_add_reset_segment_timer_dm_text
    dw #ctrl_add_reset_segment_later_dm_text
    dw #ctrl_add_full_equipment_dm_text
    dw #ctrl_add_kill_enemies_dm_text
    dw #ctrl_add_toggle_tileviewer_dm_text
    dw #ctrl_add_randomize_rng_dm_text
if !FEATURE_VANILLAHUD
    dw #ctrl_add_empty_dm_text
else
    dw #ctrl_add_reveal_damage_dm_text
endif
    dw #ctrl_add_force_stand_dm_text
    dw #ctrl_add_toggle_spin_lock_dm_text
    dw #ctrl_add_pause_dm_text
    dw #ctrl_add_unpause_dm_text
    dw #ctrl_add_slowdown_dm_text
    dw #ctrl_add_speedup_dm_text
if !FEATURE_VANILLAHUD
    dw #ctrl_add_empty_dm_text
    dw #ctrl_add_empty_dm_text
    dw #ctrl_add_empty_dm_text
    dw #ctrl_add_empty_dm_text
    dw #ctrl_add_empty_dm_text
    dw #ctrl_add_empty_dm_text
else
    dw #ctrl_add_inc_display_mode_dm_text
    dw #ctrl_add_dec_display_mode_dm_text
    dw #ctrl_add_inc_room_strat_dm_text
    dw #ctrl_add_dec_room_strat_dm_text
    dw #ctrl_add_inc_super_hud_dm_text
    dw #ctrl_add_dec_super_hud_dm_text
endif
    dw #ctrl_add_soft_reset_dm_text
if !FEATURE_DEV
    dw #ctrl_add_dev_shortcut_dm_text
else
    dw #ctrl_add_empty_dm_text
endif

ctrl_shortcut_cancel_gameplay_table:
    db $00 ; Empty
    db $01 ; Main Menu
    db $01 ; Save State
    db $01 ; Load State
    db $00 ; Auto Save State
    db $00 ; Update Timers
    db $01 ; Reload Preset
    db $01 ; Random Preset
    db $01 ; Save Custom Preset
    db $01 ; Load Custom Preset
    db $00 ; Increment Custom Preset
    db $00 ; Decrement Custom Preset
    db $00 ; Reset Segment Timer
    db $00 ; Reset Segment Later
    db $00 ; Full Equipment
    db $00 ; Kill Enemies
    db $00 ; Toggle OOB Tile Viewer
    db $00 ; Randomize RNG
    db $00 ; Reveal Damage
    db $00 ; Force Stand
    db $00 ; Toggle Spin Lock
    db $00 ; Pause
    db $00 ; Unpause
    db $00 ; Slowdown
    db $00 ; Speedup
    db $00 ; Increment Display Mode
    db $00 ; Decrement Display Mode
    db $00 ; Increment Room Strat
    db $00 ; Decrement Room Strat
    db $00 ; Increment Super HUD
    db $00 ; Decrement Super HUD
    db $01 ; Soft Reset
    db $01 ; DEV Shortcut

ctrl_shortcut_jsl_word_lsb_table:
    db #gamemode_placeholder
    db #gamemode_main_menu
if !FEATURE_SD2SNES
    db #gamemode_save_state
    db #gamemode_load_state
    db #gamemode_auto_save_state
else
    db #gamemode_placeholder
    db #gamemode_placeholder
    db #gamemode_placeholder
endif
if !FEATURE_VANILLAHUD
    db #gamemode_placeholder
else
    db #gamemode_update_timers
endif
    db #gamemode_reload_preset
    db #gamemode_random_preset
    db #gamemode_save_custom_preset
    db #gamemode_load_custom_preset
    db #gamemode_increment_custom_preset
    db #gamemode_decrement_custom_preset
    db #gamemode_reset_segment_timer
    db #gamemode_reset_segment_later
    db #gamemode_full_equipment
    db #gamemode_kill_enemies
    db #gamemode_toggle_oob_tile_viewer
    db #gamemode_randomize_rng
if !FEATURE_VANILLAHUD
    db #gamemode_placeholder
else
    db #gamemode_reveal_damage
endif
    db #gamemode_force_stand
    db #gamemode_toggle_spin_lock
    db #gamemode_pause
    db #gamemode_unpause
    db #gamemode_slowdown
    db #gamemode_speedup
if !FEATURE_VANILLAHUD
    db #gamemode_placeholder
    db #gamemode_placeholder
    db #gamemode_placeholder
    db #gamemode_placeholder
    db #gamemode_placeholder
    db #gamemode_placeholder
else
    db #gamemode_increment_display_mode
    db #gamemode_decrement_display_mode
    db #gamemode_increment_room_strat
    db #gamemode_decrement_room_strat
    db #gamemode_increment_super_hud
    db #gamemode_decrement_super_hud
endif
    db #gamemode_soft_reset
if !FEATURE_DEV
    db #gamemode_dev_shortcut
else
    db #gamemode_placeholder
endif

ctrl_shortcut_jsl_word_msb_table:
    db #gamemode_placeholder>>8
    db #gamemode_main_menu>>8
if !FEATURE_SD2SNES
    db #gamemode_save_state>>8
    db #gamemode_load_state>>8
    db #gamemode_auto_save_state>>8
else
    db #gamemode_placeholder>>8
    db #gamemode_placeholder>>8
    db #gamemode_placeholder>>8
endif
if !FEATURE_VANILLAHUD
    db #gamemode_placeholder>>8
else
    db #gamemode_update_timers>>8
endif
    db #gamemode_reload_preset>>8
    db #gamemode_random_preset>>8
    db #gamemode_save_custom_preset>>8
    db #gamemode_load_custom_preset>>8
    db #gamemode_increment_custom_preset>>8
    db #gamemode_decrement_custom_preset>>8
    db #gamemode_reset_segment_timer>>8
    db #gamemode_reset_segment_later>>8
    db #gamemode_full_equipment>>8
    db #gamemode_kill_enemies>>8
    db #gamemode_toggle_oob_tile_viewer>>8
    db #gamemode_randomize_rng>>8
if !FEATURE_VANILLAHUD
    db #gamemode_placeholder>>8
else
    db #gamemode_reveal_damage>>8
endif
    db #gamemode_force_stand>>8
    db #gamemode_toggle_spin_lock>>8
    db #gamemode_pause>>8
    db #gamemode_unpause>>8
    db #gamemode_slowdown>>8
    db #gamemode_speedup>>8
if !FEATURE_VANILLAHUD
    db #gamemode_placeholder>>8
    db #gamemode_placeholder>>8
    db #gamemode_placeholder>>8
    db #gamemode_placeholder>>8
    db #gamemode_placeholder>>8
    db #gamemode_placeholder>>8
else
    db #gamemode_increment_display_mode>>8
    db #gamemode_decrement_display_mode>>8
    db #gamemode_increment_room_strat>>8
    db #gamemode_decrement_room_strat>>8
    db #gamemode_increment_super_hud>>8
    db #gamemode_decrement_super_hud>>8
endif
    db #gamemode_soft_reset>>8
if !FEATURE_DEV
    db #gamemode_dev_shortcut>>8
else
    db #gamemode_placeholder>>8
endif

ctrl_add_empty:
    %cm_jsl("", #ctrl_add_shortcut_select, #$0000)

ctrl_add_main_menu:
    %cm_jsl("Main Menu", #ctrl_add_shortcut_select, #$0081)

if !FEATURE_SD2SNES
ctrl_add_save_state:
    %cm_jsl("Save State", #ctrl_add_shortcut_select, #$0082)

ctrl_add_load_state:
    %cm_jsl("Load State", #ctrl_add_shortcut_select, #$0083)

ctrl_add_auto_save_state:
    %cm_jsl("Auto Save State", #ctrl_add_shortcut_select, #$0084)
endif

if !FEATURE_VANILLAHUD
else
ctrl_add_update_timers:
    %cm_jsl("Update Timers", #ctrl_add_shortcut_select, #$0005)
endif

ctrl_add_reload_preset:
    %cm_jsl("Reload Preset", #ctrl_add_shortcut_select, #$0086)

ctrl_add_random_preset:
    %cm_jsl("Random Preset", #ctrl_add_shortcut_select, #$0087)

ctrl_add_save_custom_preset:
    %cm_jsl("Save Cust Preset", #ctrl_add_shortcut_select, #$0088)

ctrl_add_load_custom_preset:
    %cm_jsl("Load Cust Preset", #ctrl_add_shortcut_select, #$0089)

ctrl_add_inc_custom_preset:
    %cm_jsl("Next Preset Slot", #ctrl_add_shortcut_select, #$008A)

ctrl_add_dec_custom_preset:
    %cm_jsl("Prev Preset Slot", #ctrl_add_shortcut_select, #$008B)

ctrl_add_reset_segment_timer:
    %cm_jsl("Reset Seg Timer", #ctrl_add_shortcut_select, #$000C)

ctrl_add_reset_segment_later:
    %cm_jsl("Reset Seg Later", #ctrl_add_shortcut_select, #$000D)

ctrl_add_full_equipment:
    %cm_jsl("Full Equipment", #ctrl_add_shortcut_select, #$000E)

ctrl_add_kill_enemies:
    %cm_jsl("Kill Enemies", #ctrl_add_shortcut_select, #$008F)

ctrl_add_toggle_tileviewer:
    %cm_jsl("Toggle OOB Tiles", #ctrl_add_shortcut_select, #$0010)

ctrl_add_randomize_rng:
    %cm_jsl("Randomize RNG", #ctrl_add_shortcut_select, #$0011)

if !FEATURE_VANILLAHUD
else
ctrl_add_reveal_damage:
    %cm_jsl("Toggle Boss Dmg", #ctrl_add_shortcut_select, #$0012)
endif

ctrl_add_force_stand:
    %cm_jsl("Force Stand", #ctrl_add_shortcut_select, #$0013)

ctrl_add_toggle_spin_lock:
    %cm_jsl("Toggle Spin Lock", #ctrl_add_shortcut_select, #$0014)

ctrl_add_pause:
    %cm_jsl("Pause", #ctrl_add_shortcut_select, #$0095)

ctrl_add_unpause:
    %cm_jsl("Unpause", #ctrl_add_shortcut_select, #$0096)

ctrl_add_slowdown:
    %cm_jsl("Slowdown", #ctrl_add_shortcut_select, #$0097)

ctrl_add_speedup:
    %cm_jsl("Speedup", #ctrl_add_shortcut_select, #$0098)

if !FEATURE_VANILLAHUD
else
ctrl_add_inc_display_mode:
    %cm_jsl("Next Status Mode", #ctrl_add_shortcut_select, #$0099)

ctrl_add_dec_display_mode:
    %cm_jsl("Prev Status Mode", #ctrl_add_shortcut_select, #$009A)

ctrl_add_inc_room_strat:
    %cm_jsl("Next Room Strat", #ctrl_add_shortcut_select, #$009B)

ctrl_add_dec_room_strat:
    %cm_jsl("Prev Room Strat", #ctrl_add_shortcut_select, #$009C)

ctrl_add_inc_super_hud:
    %cm_jsl("Next Super HUD", #ctrl_add_shortcut_select, #$009D)

ctrl_add_dec_super_hud:
    %cm_jsl("Prev Super HUD", #ctrl_add_shortcut_select, #$009E)
endif

ctrl_add_soft_reset:
    %cm_jsl("Soft Reset", #ctrl_add_shortcut_select, #$009F)

ctrl_add_dev_shortcut:
    %cm_jsl("DEV Shortcut", #ctrl_add_shortcut_select, #$0020)

ctrl_add_shortcut_select:
{
    LDA !ram_cm_ctrl_add_shortcut_slot
    TAX : CPX #$001E : BPL .additional
    TYA : %a8() : STA !sram_ctrl_shortcut_selections,X
    INX : CPX #$001E : BPL .secondLoop
  .firstLoop
    LDA !sram_ctrl_shortcut_selections,X : BEQ .foundNextOpenSlot
    INX : CPX #$001E : BMI .firstLoop
  .secondLoop
    LDA !sram_ctrl_additional_selections,X : BEQ .foundNextOpenSlot
    INX : CPX #$0030 : BMI .secondLoop
    BRA .foundNextOpenSlot

  .additional
    TYA : %a8() : STA !sram_ctrl_additional_selections,X
    INX : CPX #$0030 : BMI .secondLoop
  .foundNextOpenSlot
    %a16()
    TXA : STA !ram_cm_ctrl_add_shortcut_slot
    JML cm_previous_menu
}

%endfree(85)

