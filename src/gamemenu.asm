
org $B3F000
print pc, " gamemenu start"

; ----------
; Game menu
; ----------

GameMenu:
    dw #game_alternatetext
    dw #game_moonwalk
    dw #game_iconcancel
    dw #game_goto_controls
    dw #$FFFF
    dw #game_cutscenes
    dw #game_fast_doors_toggle
    dw #game_fast_elevators
    dw #$FFFF
    dw #game_goto_debug
    dw #$FFFF
if !FEATURE_VANILLAHUD
else
    dw #game_minimap
endif
    dw #game_clear_minimap
    dw #$0000
    %cm_header("GAME")

game_alternatetext:
if !FEATURE_PAL
    %cm_toggle("French Text", $7E09E2, #$0001, #0)
else
    %cm_toggle("Japanese Text", $7E09E2, #$0001, #0)
endif

game_moonwalk:
    %cm_toggle("Moon Walk", $7E09E4, #$0001, #0)

game_iconcancel:
    %cm_toggle("Icon Cancel", $7E09EA, #$0001, #0)

game_goto_controls:
    %cm_submenu("Controller Setting Mode", #ControllerSettingMenu)

game_cutscenes:
    %cm_submenu("Cutscenes and Effects", #CutscenesMenu)

game_fast_doors_toggle:
    %cm_toggle("Fast Doors", !sram_fast_doors, #$0001, #0)

game_fast_elevators:
    %cm_toggle("Fast Elevators", !sram_fast_elevators, #$0001, #0)

game_goto_debug:
    %cm_submenu("Debug Settings", #DebugMenu)

if !FEATURE_VANILLAHUD
else
game_minimap:
    %cm_toggle("Minimap", !ram_minimap, #$0001, #0)
endif

game_clear_minimap:
    %cm_jsl("Clear Minimap", .routine, #$0000)
  .routine
    TDC : STA !MAP_COUNTER : STA !AREA_MAP_COLLECTED
    STA !MAP_STATION_FLAGS : STA !MAP_STATION_FLAGS+2
    STA !MAP_STATION_FLAGS+4 : STA !MAP_STATION_FLAGS+6
    LDX #$00FE
  .loop
    STA !MAP_TILES_EXPLORED,X
    STA !MAP_TILES_EXPLORED_CRATERIA,X
    STA !MAP_TILES_EXPLORED_BRINSTAR,X
    STA !MAP_TILES_EXPLORED_NORFAIR,X
    STA !MAP_TILES_EXPLORED_WRECKED_SHIP,X
    STA !MAP_TILES_EXPLORED_MARIDIA,X
    STA !MAP_TILES_EXPLORED_TOURIAN,X
    STA !MAP_TILES_EXPLORED_CERES,X
    STA !MAP_TILES_EXPLORED_DEBUG,X
    STA !MAP_DATA_EXPLORED_COMPRESSED,X
    STA !MAP_DATA_EXPLORED_COMPRESSED+$100,X
    STA !MAP_DATA_EXPLORED_COMPRESSED+$200,X
    STA !MAP_DATA_EXPLORED_COMPRESSED+$300,X
    STA !MAP_DATA_EXPLORED_COMPRESSED+$400,X
    DEX #2 : BPL .loop
    %sfxreset()
    RTL


; ----------
; Debug Menu
; ----------

DebugMenu:
    dw #game_debugmode
    dw #game_paldebug
    dw #game_debugbrightness
    dw #game_invincibility
    dw #game_pacifist
    dw #$FFFF
    dw #game_debugplms
    dw #game_debugprojectiles
    dw #game_debugfixscrolloffsets
    dw #game_elevatorfix
    dw #$0000
    %cm_header("DEBUG SETTINGS")

game_debugmode:
    %cm_toggle("Debug Mode", !DEBUG_MODE, #$0001, #0)

game_paldebug:
    %cm_toggle_inverted("PAL Debug Movement", !PAL_DEBUG_MOVEMENT, #$0001, .routine)
  .routine
    LDA !PAL_DEBUG_MOVEMENT : BNE .clearFlag
    LDA !sram_suit_properties : ORA !SUIT_PROPRETIES_PAL_DEBUG_FLAG
    BRA .set
  .clearFlag
    LDA !sram_suit_properties : AND !SUIT_PROPERTIES_MASK
  .set
    STA !sram_suit_properties
    RTL

game_debugbrightness:
    %cm_toggle("Debug CPU Brightness", $7E0DF4, #$0001, #0)

game_invincibility:
    %cm_toggle_bit("Invincibility", $7E0DE0, #$0007, #0)

game_pacifist:
    %cm_toggle("Deal Zero Damage", !ram_pacifist, #$0001, #0)

game_debugplms:
    %cm_toggle_bit_inverted("Pseudo G-Mode", $7E1C23, #$8000, #0)

game_debugprojectiles:
    %cm_toggle_bit("Enable Projectiles", $7E198D, #$8000, #0)

game_debugfixscrolloffsets:
    %cm_toggle_bit("Fix Scroll Offsets", !ram_fix_scroll_offsets, #$0001, #0)

game_elevatorfix:
    %cm_jsl("OoB Elevator Tile Fix", .routine, #0)
  .routine
    STZ !ELEVATOR_PROPERTIES
    %sfxconfirm()
    RTL


; ---------------
; Cutscenes menu
; ---------------

CutscenesMenu:
    dw #cutscenes_quickboot
    dw #cutscenes_skip_intro
    dw #cutscenes_skip_ceres_arrival
    dw #cutscenes_skip_g4
    dw #cutscenes_skip_game_over
    dw #$FFFF
    dw #cutscenes_fast_kraid
    dw #cutscenes_kraid_camera
    dw #cutscenes_fast_phantoon
    dw #cutscenes_fast_bowling
    dw #cutscenes_fast_mb
    dw #$FFFF
    dw #cutscenes_suppress_landing_flash
    dw #cutscenes_suppress_escape_flash
    dw #cutscenes_suppress_pb_flash
    dw #cutscenes_suppress_mb1_flash
    dw #cutscenes_suppress_boss_flash
    dw #cutscenes_suppress_earthquake
    dw #$0000
    %cm_header("CUTSCENES AND EFFECTS")

cutscenes_quickboot:
    %cm_toggle_bit("Boot to Menu", !sram_cutscenes, !CUTSCENE_QUICKBOOT, #0)

cutscenes_skip_intro:
    %cm_toggle_bit("Skip Intro", !sram_cutscenes, !CUTSCENE_SKIP_INTRO, #0)

cutscenes_skip_ceres_arrival:
    %cm_toggle_bit("Skip Ceres Arrival", !sram_cutscenes, !CUTSCENE_SKIP_CERES_ARRIVAL, #0)

cutscenes_skip_g4:
    %cm_toggle_bit("Skip G4", !sram_cutscenes, !CUTSCENE_SKIP_G4, #.routine)
  .routine
    BIT !CUTSCENE_SKIP_G4 : BEQ .off
    LDA !ROOM_ID : CMP.w #ROOM_StatuesHallway : BNE .done
    ; Verify all four G4 bosses killed
    LDA $7ED828 : BIT #$0100 : BEQ .done
    LDA $7ED82C : BIT #$0001 : BEQ .done
    LDA $7ED82A : AND #$0101 : CMP #$0101 : BNE .done
    ; Set Tourian open
    LDA $7ED820 : ORA #$0400 : STA $7ED820
    BRA .done
  .off
    LDA !ROOM_ID : CMP.w #ROOM_StatuesHallway : BNE .done
    LDA $7ED820 : AND #$FBFF : STA $7ED820
  .done
    RTL

cutscenes_skip_game_over:
    %cm_toggle_bit("Skip Game Over", !sram_cutscenes, !CUTSCENE_SKIP_GAMEOVER, #0)

cutscenes_fast_kraid:
    %cm_toggle_bit("Skip Kraid Intro", !sram_cutscenes, !CUTSCENE_FAST_KRAID, #0)

cutscenes_fast_phantoon:
    %cm_toggle_bit("Skip Phantoon Intro", !sram_cutscenes, !CUTSCENE_FAST_PHANTOON, #0)

cutscenes_kraid_camera:
    %cm_toggle_bit("Unlock Kraid Death Cam", !sram_cutscenes, !CUTSCENE_KRAID_DEATH_CAMERA, #0)

cutscenes_fast_bowling:
    %cm_toggle_bit("Fast Bowling", !sram_cutscenes, !CUTSCENE_FAST_BOWLING, #0)

cutscenes_fast_mb:
    %cm_toggle_bit("Fast Mother Brain", !sram_cutscenes, !CUTSCENE_FAST_MB, #0)

cutscenes_suppress_landing_flash:
    %cm_toggle_bit_inverted("Crateria Lightning", !sram_suppress_flashing, !SUPPRESS_CRATERIA_LIGHTNING, #0)

cutscenes_suppress_escape_flash:
    %cm_toggle_bit_inverted("Escape Flashing", !sram_suppress_flashing, !SUPPRESS_ESCAPE_FLASHING, #0)

cutscenes_suppress_pb_flash:
    %cm_toggle_bit_inverted("Power Bomb Flash", !sram_suppress_flashing, !SUPPRESS_POWER_BOMB_FLASH, #0)

cutscenes_suppress_mb1_flash:
    %cm_toggle_bit_inverted("MB1 Flashing", !sram_suppress_flashing, !SUPPRESS_MB1_FLASHING, #0)

cutscenes_suppress_boss_flash:
    %cm_toggle_bit_inverted("Boss Damage Flash", !sram_suppress_flashing, !SUPPRESS_BOSS_DAMAGE_FLASH, #0)

cutscenes_suppress_earthquake:
    %cm_toggle_bit_inverted("Vanilla Earthquake", !sram_suppress_flashing, !SUPPRESS_EARTHQUAKE, #0)


; -------------------
; Controller Settings
; -------------------

ControllerSettingMenu:
    dw #controls_common_layouts
    dw #controls_save_to_file
    dw #$FFFF
    dw #controls_shot
    dw #controls_jump
    dw #controls_dash
    dw #controls_item_select
    dw #controls_item_cancel
    dw #controls_angle_up
    dw #controls_angle_down
    dw #$0000
    %cm_header("CONTROLLER SETTING MODE")

controls_common_layouts:
    %cm_submenu("Common Controller Layouts", #ControllerCommonMenu)

controls_shot:
    %cm_ctrl_input("        SHOT", !IH_INPUT_SHOT, action_submenu, #AssignControlsMenu)

controls_jump:
    %cm_ctrl_input("        JUMP", !IH_INPUT_JUMP, action_submenu, #AssignControlsMenu)

controls_dash:
    %cm_ctrl_input("        DASH", !IH_INPUT_RUN, action_submenu, #AssignControlsMenu)

controls_item_select:
    %cm_ctrl_input(" ITEM SELECT", !IH_INPUT_ITEM_SELECT, action_submenu, #AssignControlsMenu)

controls_item_cancel:
    %cm_ctrl_input(" ITEM CANCEL", !IH_INPUT_ITEM_CANCEL, action_submenu, #AssignControlsMenu)

controls_angle_up:
    %cm_ctrl_input("    ANGLE UP", !IH_INPUT_ANGLE_UP, action_submenu, #AssignAngleControlsMenu)

controls_angle_down:
    %cm_ctrl_input("  ANGLE DOWN", !IH_INPUT_ANGLE_DOWN, action_submenu, #AssignAngleControlsMenu)

controls_save_to_file:
    %cm_jsl("Save to File", .routine, #0)
  .routine
    LDA !GAMEMODE : CMP #$0002 : BEQ .fail
    LDA !CURRENT_SAVE_FILE : BEQ .fileA
    CMP #$0001 : BEQ .fileB
    CMP #$0002 : BEQ .fileC
  .fail
    %sfxfail()
    RTL

  .fileA
    LDX #$0020 : BRA .save
  .fileB
    LDX #$067C : BRA .save
  .fileC
    LDX #$0CD8
  .save
    LDA.w !IH_INPUT_SHOT : STA $700000,X : INX #2
    LDA.w !IH_INPUT_JUMP : STA $700000,X : INX #2
    LDA.w !IH_INPUT_RUN : STA $700000,X : INX #2
    LDA.w !IH_INPUT_ITEM_CANCEL : STA $700000,X : INX #2
    LDA.w !IH_INPUT_ITEM_SELECT : STA $700000,X : INX #2
    LDA.w !IH_INPUT_ANGLE_UP : STA $700000,X : INX #2
    LDA.w !IH_INPUT_ANGLE_DOWN : STA $700000,X
    %sfxconfirm()
    RTL

AssignControlsMenu:
    dw controls_assign_A
    dw controls_assign_B
    dw controls_assign_X
    dw controls_assign_Y
    dw controls_assign_Select
    dw controls_assign_L
    dw controls_assign_R
    dw #$0000
    %cm_header("ASSIGN AN INPUT")

controls_assign_A:
    %cm_jsl("A", action_assign_input, !CTRL_A)

controls_assign_B:
    %cm_jsl("B", action_assign_input, !CTRL_B)

controls_assign_X:
    %cm_jsl("X", action_assign_input, !CTRL_X)

controls_assign_Y:
    %cm_jsl("Y", action_assign_input, !CTRL_Y)

controls_assign_Select:
    %cm_jsl("Select", action_assign_input, !CTRL_SELECT)

controls_assign_L:
    %cm_jsl("L", action_assign_input, !CTRL_L)

controls_assign_R:
    %cm_jsl("R", action_assign_input, !CTRL_R)

AssignAngleControlsMenu:
    dw #controls_assign_L
    dw #controls_assign_R
    dw #$0000
    %cm_header("ASSIGN AN INPUT")
    %cm_footer("ONLY L OR R ALLOWED")

action_assign_input:
{
    LDA !ram_cm_ctrl_assign : STA $C2 : TAX  ; input address in $C2 and X
    LDA $7E0000,X : STA !ram_cm_ctrl_swap    ; save old input for later
    TYA : STA $7E0000,X                      ; store new input
    STY $C4                                  ; saved new input for later

    JSL check_duplicate_inputs

    ; determine which sfx to play
    CMP #$FFFF : BEQ .undetected
    %sfxconfirm()
    BRA .done
  .undetected
    %sfxgoback()
  .done
    JML cm_previous_menu
}

check_duplicate_inputs:
{
    ; ram_cm_ctrl_assign = word address of input being assigned
    ; ram_cm_ctrl_swap = previous input bitmask being moved
    ; X / $C2 = word address of new input
    ; Y / $C4 = new input bitmask
    LDA #!CTRL_BINDING_SHOT : CMP $C2 : BEQ .check_jump ; check if we just assigned shot
    LDA !CTRL_BINDING_SHOT : BEQ .swap_shot             ; check if shot is unassigned
    CMP $C4 : BNE .check_jump                           ; skip to check_jump if not a duplicate assignment
  .swap_shot
    JMP .shot                                           ; swap with shot

  .check_jump
    LDA #!CTRL_BINDING_JUMP : CMP $C2 : BEQ .check_dash
    LDA !CTRL_BINDING_JUMP : BEQ .swap_jump
    CMP $C4 : BNE .check_dash
  .swap_jump
    JMP .jump

  .check_dash
    LDA #!CTRL_BINDING_DASH : CMP $C2 : BEQ .check_cancel
    LDA !CTRL_BINDING_DASH : BEQ .swap_dash
    CMP $C4 : BNE .check_cancel
  .swap_dash
    JMP .dash

  .check_cancel
    LDA #!CTRL_BINDING_CANCEL : CMP $C2 : BEQ .check_select
    LDA !CTRL_BINDING_CANCEL : BEQ .swap_cancel
    CMP $C4 : BNE .check_select
  .swap_cancel
    JMP .cancel

  .check_select
    LDA #!CTRL_BINDING_SELECT : CMP $C2 : BEQ .check_up
    LDA !CTRL_BINDING_SELECT : BEQ .swap_select
    CMP $C4 : BNE .check_up
  .swap_select
    JMP .select

  .check_up
    LDA #!CTRL_BINDING_ANGLEUP : CMP $C2 : BEQ .check_down
    LDA !CTRL_BINDING_ANGLEUP : BEQ .swap_up
    CMP $C4 : BNE .check_down
  .swap_up
    JMP .up

  .check_down
    LDA #!CTRL_BINDING_ANGLEDOWN : CMP $C2 : BEQ .not_detected
    LDA !CTRL_BINDING_ANGLEDOWN : BEQ .swap_down
    CMP $C4 : BNE .not_detected
  .swap_down
    JMP .down

  .not_detected
    %sfxfail()
    LDA #$FFFF
    RTL

  .shot
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .shot_safe  ; check if old input is L or R
    TDC : STA !CTRL_BINDING_SHOT                         ; unassign input
    RTL
  .shot_safe
    LDA !ram_cm_ctrl_swap : STA !CTRL_BINDING_SHOT       ; input is safe to be assigned
    RTL

  .jump
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .jump_safe
    TDC : STA !CTRL_BINDING_JUMP
    RTL
  .jump_safe
    LDA !ram_cm_ctrl_swap : STA !CTRL_BINDING_JUMP
    RTL

  .dash
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .dash_safe
    TDC : STA !CTRL_BINDING_DASH
    RTL
  .dash_safe
    LDA !ram_cm_ctrl_swap : STA !CTRL_BINDING_DASH
    RTL

  .cancel
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .cancel_safe
    TDC : STA !CTRL_BINDING_CANCEL
    RTL
  .cancel_safe
    LDA !ram_cm_ctrl_swap : STA !CTRL_BINDING_CANCEL
    RTL

  .select
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .select_safe
    TDC : STA !CTRL_BINDING_SELECT
    RTL
  .select_safe
    LDA !ram_cm_ctrl_swap : STA !CTRL_BINDING_SELECT
    RTL

  .up
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .unbind_up  ; check if input is L or R, unbind if not
    LDA !ram_cm_ctrl_swap : STA !CTRL_BINDING_ANGLEUP    ; safe to assign input
    CMP !CTRL_BINDING_ANGLEDOWN : BEQ .swap_angle_down   ; check if input matches angle down
    RTL

  .unbind_up
    STA !CTRL_BINDING_ANGLEUP
    RTL

  .swap_angle_down
    CMP #$0020 : BNE .angle_down_l           ; check if angle up is assigned to L
    LDA #$0010 : STA !CTRL_BINDING_ANGLEDOWN ; assign R to angle down
    RTL
  .angle_down_l
    LDA #$0020 : STA !CTRL_BINDING_ANGLEDOWN ; assign L to angle down
    RTL

  .down
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .unbind_down
    LDA !ram_cm_ctrl_swap : STA !CTRL_BINDING_ANGLEDOWN
    CMP !CTRL_BINDING_ANGLEUP : BEQ .swap_angle_up
    RTL

  .unbind_down
    STA !CTRL_BINDING_ANGLEDOWN
    RTL

  .swap_angle_up
    CMP #$0020 : BNE .angle_up_l
    LDA #$0010 : STA !CTRL_BINDING_ANGLEUP
    RTL
  .angle_up_l
    LDA #$0020 : STA !CTRL_BINDING_ANGLEUP
    RTL
}

ControllerCommonMenu:
    dw #controls_common_default
    dw #controls_common_d2
    dw #controls_common_d3
    dw #controls_common_d4
    dw #controls_common_d5
    dw #$0000
    %cm_header("COMMON CONTROLLER LAYOUTS")
    %cm_footer("WIKI.SUPERMETROID.RUN")

controls_common_default:
    %cm_jsl("Default (D1)", #action_set_common_controls, #$0000)

controls_common_d2:
    %cm_jsl("Select+Cancel Swap (D2)", #action_set_common_controls, #$000E)

controls_common_d3:
    %cm_jsl("D2 + Shot+Select Swap (D3)", #action_set_common_controls, #$001C)

controls_common_d4:
    %cm_jsl("MMX Style (D4)", #action_set_common_controls, #$002A)

controls_common_d5:
    %cm_jsl("SMW Style (D5)", #action_set_common_controls, #$0038)

action_set_common_controls:
{
    TYX
    LDA.l ControllerLayoutTable,X : STA.w !IH_INPUT_SHOT
    LDA.l ControllerLayoutTable+$2,X : STA.w !IH_INPUT_JUMP
    LDA.l ControllerLayoutTable+$4,X : STA.w !IH_INPUT_RUN
    LDA.l ControllerLayoutTable+$6,X : STA.w !IH_INPUT_ITEM_CANCEL
    LDA.l ControllerLayoutTable+$8,X : STA.w !IH_INPUT_ITEM_SELECT
    LDA.l ControllerLayoutTable+$A,X : STA.w !IH_INPUT_ANGLE_DOWN
    LDA.l ControllerLayoutTable+$C,X : STA.w !IH_INPUT_ANGLE_UP
    %sfxconfirm()
    JML cm_previous_menu
}

ControllerLayoutTable:
    ;  shot     jump     dash     cancel        select        down     up
    dw !CTRL_X, !CTRL_A, !CTRL_B, !CTRL_Y,      !CTRL_SELECT, !CTRL_L, !CTRL_R ; Default (D1)
    dw !CTRL_X, !CTRL_A, !CTRL_B, !CTRL_SELECT, !CTRL_Y,      !CTRL_L, !CTRL_R ; Select+Cancel Swap (D2)
    dw !CTRL_Y, !CTRL_A, !CTRL_B, !CTRL_SELECT, !CTRL_X,      !CTRL_L, !CTRL_R ; D2 + Shot+Select Swap (D3)
    dw !CTRL_Y, !CTRL_B, !CTRL_A, !CTRL_SELECT, !CTRL_X,      !CTRL_L, !CTRL_R ; MMX Style (D4)
    dw !CTRL_X, !CTRL_B, !CTRL_Y, !CTRL_SELECT, !CTRL_A,      !CTRL_L, !CTRL_R ; SMW Style (D5)

print pc, " gamemenu end"

