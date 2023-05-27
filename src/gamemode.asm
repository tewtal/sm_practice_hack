; $82:8963 AD 98 09    LDA $0998  [$7E:0998]
; $82:8966 29 FF 00    AND #$00FF
org $828963
    ; gamemode_shortcuts will either CLC or SEC
    ; to control if normal gameplay will happen on this frame
    JSL gamemode_start : BCS end_of_normal_gameplay

org $82896E
    end_of_normal_gameplay:

if !FEATURE_SD2SNES
org $82E526
    JSL gamemode_door_transition : NOP
endif


org $85F800
print pc, " gamemode start"

gamemode_start:
{
    PHB
    PHK : PLB

    JSR gamemode_shortcuts
  .return
    %ai16()
    PHP

    ; don't load presets if we're in credits
    LDA !GAMEMODE : CMP #$0027 : BEQ ++

    LDA !ram_custom_preset : BNE +
    LDA !ram_load_preset : BEQ ++

+   JSL preset_load

++  LDA !GAMEMODE : AND #$00FF
    PLP
    PLB
    RTL
}

; If the current game mode is $C (fading out to pause), set it to $8 (normal), so that
;  shortcuts involving the start button don't trigger accidental pauses.
; Called after handling most controller shortcuts, except save/load state (because the 
;  user might want to practice gravity jumps or something) and load preset (because
;  presets reset the game mode anyway).
skip_pause:
{
    PHP ; preserve carry
    LDA !GAMEMODE
    CMP #$000C
    BNE .done
    LDA #$0008
    STA !GAMEMODE
    LDA #$0001
    STZ $0723   ; Screen fade delay = 0
    STZ $0725   ; Screen fade counter = 0
    LDA $0051
    ORA #$000F
    STA $0051   ; Brightness = $F (max)
.done:
    PLP
    RTS
}

gamemode_shortcuts:
{
if !FEATURE_SD2SNES
    ; Check for auto-save mid-transition
    LDA !ram_auto_save_state : BEQ +
    LDA !DOOR_FUNCTION_POINTER : CMP #$E4A9 : BNE +
    LDA #$0000 : STA !ram_auto_save_state
    JMP .save_state
endif

  + LDA !IH_CONTROLLER_PRI_NEW : BNE +

    ; No shortcuts configured, CLC so we won't skip normal gameplay
    CLC : RTS

if !FEATURE_SD2SNES
  + LDA !IH_CONTROLLER_PRI : CMP !sram_ctrl_save_state : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .save_state

  + LDA !IH_CONTROLLER_PRI : CMP !sram_ctrl_load_state : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .load_state

  + LDA !IH_CONTROLLER_PRI : CMP !sram_ctrl_auto_save_state : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .auto_save_state
endif

  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_load_last_preset : CMP !sram_ctrl_load_last_preset : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .load_last_preset

  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_random_preset : CMP !sram_ctrl_random_preset : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .random_preset

  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_save_custom_preset : CMP !sram_ctrl_save_custom_preset : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .save_custom_preset

  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_load_custom_preset : CMP !sram_ctrl_load_custom_preset : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .load_custom_preset

    ; Check if any less common shortcuts are configured
  + LDA !ram_game_mode_extras : BNE +
    JMP .check_menu

  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_inc_custom_preset : CMP !sram_ctrl_inc_custom_preset : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .next_preset_slot

  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_dec_custom_preset : CMP !sram_ctrl_dec_custom_preset : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .prev_preset_slot

  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_kill_enemies : CMP !sram_ctrl_kill_enemies : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .kill_enemies

  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_reset_segment_timer : CMP !sram_ctrl_reset_segment_timer : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .reset_segment_timer

  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_reset_segment_later : CMP !sram_ctrl_reset_segment_later : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .reset_segment_later

  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_full_equipment : CMP !sram_ctrl_full_equipment : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .full_equipment

  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_toggle_tileviewer : CMP !sram_ctrl_toggle_tileviewer : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .toggle_tileviewer

  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_update_timers : CMP !sram_ctrl_update_timers : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .update_timers

  .check_menu
  + LDA !IH_CONTROLLER_PRI : AND !sram_ctrl_menu : CMP !sram_ctrl_menu : BNE +
    AND !IH_CONTROLLER_PRI_NEW : BEQ +
    JMP .menu

    ; No shortcuts matched, CLC so we won't skip normal gameplay
  + CLC : RTS

if !FEATURE_SD2SNES
  .save_state
; This if statement is to prevent an assembler error from an unknown method. The one on the call to this
; prevents the button combo from being intercepted by the non-sd2snes rom
if !FEATURE_TINYSTATES
    ; Disallow tiny states outside of gameplay
    ; Most other gamemodes will crash on load
    LDA !GAMEMODE : CMP #$0020 : BEQ .save ; end of Ceres allowed
    CMP #$0007 : BMI .fail
    CMP #$001C : BPL .fail

  .save
endif
    JSL save_state
    ; SEC to skip normal gameplay for one frame after saving state
    SEC : RTS

  .load_state
    ; check if a saved state exists
    LDA !SRAM_SAVED_STATE : CMP #$5AFE : BNE .fail
    JSL load_state
    ; SEC to skip normal gameplay for one frame after loading state
    SEC : RTS

  .fail
    ; CLC to continue normal gameplay
    CLC : JMP skip_pause

  .auto_save_state
    LDA #$0001 : STA !ram_auto_save_state
    ; CLC to continue normal gameplay after setting savestate flag
    CLC : RTS
endif

  .kill_enemies
    JSL kill_enemies
    ; CLC to continue normal gameplay after killing enemies
    CLC : JMP skip_pause

  .load_last_preset
    ; Choose a random preset if zero
    LDA !sram_last_preset : BEQ .random_preset : STA !ram_load_preset
    ; SEC to skip normal gameplay for one frame after loading preset
    SEC : RTS

  .reset_segment_timer
    LDA #$0000 : STA !ram_seg_rt_frames
    STA !ram_seg_rt_seconds : STA !ram_seg_rt_minutes
    ; CLC to continue normal gameplay after resetting segment timer
    CLC : JMP skip_pause

  .reset_segment_later
    LDA #$7FFF : STA !ram_reset_segment_later
    ; CLC to continue normal gameplay after setting segement timer reset
    CLC : JMP skip_pause

  .full_equipment
    LDA $7E09C4 : STA $7E09C2 ; health
    LDA $7E09C8 : STA $7E09C6 ; missiles
    LDA $7E09CC : STA $7E09CA ; supers
    LDA $7E09D0 : STA $7E09CE ; pbs
    LDA $7E09D4 : STA $7E09D6 ; reserves
    ; CLC to continue normal gameplay after equipment refill
    CLC : JMP skip_pause

  .toggle_tileviewer
    LDA !ram_sprite_feature_flags : BIT !SPRITE_OOB_WATCH : BEQ .turnOnTileViewer
    EOR !SPRITE_OOB_WATCH : STA !ram_sprite_feature_flags
    ; CLC to continue normal gameplay after disabling OoB Tile Viewer
    CLC : JMP skip_pause

  .turnOnTileViewer
    ORA !SPRITE_OOB_WATCH : STA !ram_sprite_feature_flags
    JSL upload_sprite_oob_tiles
    ; CLC to continue normal gameplay after enabling OOB Tile Viewer
    CLC : JMP skip_pause

  .random_preset
    JSL LoadRandomPreset
    ; SEC to skip normal gameplay for one frame after loading preset
    SEC : RTS

  .save_custom_preset
    ; check gamestate first
    LDA $0998 : CMP #$0008 : BEQ .save_safe
    CMP #$000C : BMI .not_safe
    CMP #$0013 : BPL .not_safe

  .save_safe
    JSL custom_preset_save
    ; CLC to continue normal gameplay after saving preset
    %sfxconfirm()
    CLC : JMP skip_pause

  .load_custom_preset
    ; check if slot is populated first
    LDA !sram_custom_preset_slot
if !FEATURE_TINYSTATES
    XBA : TAX                    ; multiply by 100h (slot offset)
else
    ASL : XBA : TAX              ; multiply by 200h (slot offset)
endif
    LDA $703000,X : CMP #$5AFE : BEQ .load_safe

  .not_safe
    %sfxfail()
    ; CLC to continue normal gameplay after failing to save or load preset
    CLC : JMP skip_pause

  .load_safe
    STA !ram_custom_preset
    JSL preset_load
    ; SEC to skip normal gameplay for one frame after loading preset
    SEC : RTS

  .next_preset_slot
    LDA !sram_custom_preset_slot : CMP !TOTAL_PRESET_SLOTS : BNE +
    LDA #$FFFF
+   INC : STA !sram_custom_preset_slot
    ASL : TAX : LDA.l NumberGFXTable,X : STA !HUD_TILEMAP+$7C
    ; CLC to continue normal gameplay after incrementing preset slot
    CLC : JMP skip_pause

  .prev_preset_slot
    LDA !sram_custom_preset_slot : BNE +
    LDA !TOTAL_PRESET_SLOTS+1
+   DEC : STA !sram_custom_preset_slot
    ASL : TAX : LDA.l NumberGFXTable,X : STA !HUD_TILEMAP+$7C
    ; CLC to continue normal gameplay after decrementing preset slot
    CLC : JMP skip_pause

  .update_timers
    JSL ih_update_hud_early
    ; CLC to continue normal gameplay after updating HUD timers
    CLC : JMP skip_pause

  .menu
    ; Set IRQ vector
    LDA $AB : PHA
    LDA #$0004 : STA $AB

    JSR skip_pause

    ; Enter MainMenu
    JSL cm_start

    ; Restore IRQ vector
    PLA : STA $AB

    ; SEC to skip normal gameplay for one frame after handling the menu
    SEC : RTS
}

if !FEATURE_SD2SNES
gamemode_door_transition:
{
  .checkloadstate
    LDA !IH_CONTROLLER_PRI : BEQ .checktransition
    CMP !sram_ctrl_load_state : BNE .checktransition
    LDA !SRAM_SAVED_STATE : CMP #$5AFE : BNE .checktransition
    PHB : PHK : PLB
    JML load_state

  .checktransition
    LDA $0931 : BPL .checkloadstate
    RTL
}
endif

print pc, " gamemode end"
warnpc $85FD00 ; menu.asm
