
%startfree(B4)

; No reason these drop tables can't overlap
all_power_bombs_drop_table:
    db #$00
all_supers_drop_table:
    db #$00
all_nothing_drop_table:
    db #$00
all_missiles_drop_table:
    db #$00
all_big_hp_drop_table:
    db #$00
all_small_hp_drop_table:
    db #$FF, #$00, #$00, #$00, #$00, #$00

!DROP_CHANCE_TABLE_LENGTH = #$0007
drop_chance_tables:
    dw #$0000
    dw #all_small_hp_drop_table
    dw #all_big_hp_drop_table
    dw #all_missiles_drop_table
    dw #all_nothing_drop_table
    dw #all_supers_drop_table
    dw #all_power_bombs_drop_table

%endfree(B4)


%startfree(B8)

; ------------
; Menu Helpers
; ------------

action_brb_mainmenu:
{
    ; Since BRB ram is shared with other menu ram,
    ; clear all of the values so they are initially sane
    TDC : STA !ram_cm_brb
    STA !ram_cm_brb_timer
    STA !ram_cm_brb_frames
    STA !ram_cm_brb_secs
    STA !ram_cm_brb_mins
    STA !ram_cm_brb_screen
    STA !ram_cm_brb_timer_mode
    STA !ram_cm_brb_scroll
    STA !ram_cm_brb_scroll_X
    STA !ram_cm_brb_scroll_Y
    STA !ram_cm_brb_scroll_H
    STA !ram_cm_brb_scroll_V
    STA !ram_cm_brb_scroll_timer

    ; Palette option is initialized to FFFF
    DEC : STA !ram_cm_brb_palette

    ; Set reasonable cycle time values
    LDA #$000A : STA !ram_cm_brb_set_cycle
    LDA #$0258 : STA !ram_cm_brb_cycle_time
    JMP action_mainmenu
}

action_game_mainmenu:
{
    ; Attempt to update g-mode flag
    LDA !PALETTE_FX_ENABLE : ORA !PLM_ENABLE
    ORA !ENEMY_PROJ_ENABLE : ORA !ANIMATED_TILES_ENABLE
    BEQ .set_gmode_flag
    LDA !PALETTE_FX_ENABLE : AND !PLM_ENABLE
    AND !ENEMY_PROJ_ENABLE : AND !ANIMATED_TILES_ENABLE
    BEQ .init_timers

  .set_gmode_flag
    ; If all four on or off, set g-mode flag accordingly
    STA !ram_cm_gmode

  .init_timers
    ; Each hexadecimal nibble represents a decimal
    ; Convert to plain number to allow user to set it

    ; Start with most significant nibble, divide by 512, multiply by 75
    LDA !sram_ceres_timer : AND #$F000 : XBA : LSR
    %a8()
    STA $4202 : LDA #$4B : STA $4203
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4216 : STA !ram_cm_ceres_seconds
    LDA !sram_zebes_timer : AND #$F000 : XBA : LSR
    %a8()
    STA $4202 : LDA #$4B : STA $4203
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4216 : STA !ram_cm_zebes_seconds

    ; Next nibble, divide by 256, multiply by 60
    LDA !sram_ceres_timer : AND #$0F00 : XBA
    %a8()
    STA $4202 : LDA #$3C : STA $4203
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4216 : CLC : ADC !ram_cm_ceres_seconds : STA !ram_cm_ceres_seconds
    LDA !sram_zebes_timer : AND #$0F00 : XBA
    %a8()
    STA $4202 : LDA #$3C : STA $4203
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4216 : CLC : ADC !ram_cm_zebes_seconds : STA !ram_cm_zebes_seconds

    ; Next nibble, divide by 8, multiply by 5
    LDA !sram_ceres_timer : AND #$00F0 : LSR #3
    %a8()
    STA $4202 : LDA #$05 : STA $4203
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4216 : CLC : ADC !ram_cm_ceres_seconds : STA !ram_cm_ceres_seconds
    LDA !sram_zebes_timer : AND #$00F0 : LSR #3
    %a8()
    STA $4202 : LDA #$05 : STA $4203
    %a16()
    PEA $0000 : PLA ; wait for CPU math
    LDA $4216 : CLC : ADC !ram_cm_zebes_seconds : STA !ram_cm_zebes_seconds

    ; Least significant nibble
    LDA !sram_ceres_timer : AND #$000F
    ORA !ram_cm_ceres_seconds : STA !ram_cm_ceres_seconds
    LDA !sram_zebes_timer : AND #$000F
    ORA !ram_cm_zebes_seconds : STA !ram_cm_zebes_seconds
    JMP action_mainmenu
}

action_rng_mainmenu:
{
    LDA !ram_turret_rng : LSR : STA !ram_cm_turret_rng
    LDA !DROP_CHANCE_TABLE_LENGTH-1 : ASL : TAX
  .dropTableLoop
    LDA.l drop_chance_tables,X : CMP !ram_drop_chance_table : BEQ .setDropChances
    DEX #2 : BPL .dropTableLoop
    TDC : TAX
  .setDropChances
    TXA : LSR : STA !ram_cm_drop_chances
    JMP action_mainmenu
}

action_ctrlshortcut_mainmenu:
{
    TDC : TAX : STA !ram_cm_ctrl_savestates_allowed
    %a8()
  .firstLoop
    LDA !sram_ctrl_shortcut_selections,X : BEQ .found
    INX : CPX #$001E : BMI .firstLoop
  .secondLoop
    LDA !sram_ctrl_additional_selections,X : BEQ .found
    INX : CPX #$0030 : BMI .secondLoop
  .found
    %a16()
    TXA : STA !ram_cm_ctrl_add_shortcut_slot

    LDA !ram_sram_detection : BNE action_mainmenu
    INC : STA !ram_cm_ctrl_savestates_allowed
    BRA action_mainmenu
}

action_crop_mainmenu:
{
    ; Prepare crop modes
    TDC : STA !ram_cm_crop_mode : STA !ram_cm_crop_tile
    BRA action_mainmenu
}

action_equipment_mainmenu:
{
    JSL cm_set_etanks_and_reserve
    BRA action_mainmenu
}

action_preset_options_mainmenu:
{
    ; Prepare elevator option
    LDA !sram_preset_options : AND !PRESETS_ELEVATOR_MASK : XBA : STA !ram_cm_preset_elevator
    BRA action_mainmenu
}

action_infohud_mainmenu:
{
    ; Validate top display mode in range
    LDA !sram_top_display_mode : CMP #$0004 : BCC action_mainmenu
    TDC : STA !sram_top_display_mode
    BRA action_mainmenu
}

action_layout_mainmenu:
{
    ; Prepare dynamic menu
    LDA !ram_door_portal_flags : AND !DOOR_PORTAL_MODE_MASK : STA !ram_cm_door_dynamic
    BRA action_mainmenu
}

action_customize_mainmenu:
{
    ; Set fast button selection
    LDA !sram_cm_fast_scroll_button : CMP !CTRL_X : BEQ .xSelected
    CMP !CTRL_Y : BEQ .ySelected

    ; None selected
    TDC : STA !sram_cm_fast_scroll_button
    LDA #$0002 : STA !ram_cm_fast_scroll_menu_selection
    BRA action_mainmenu

  .xSelected
    TDC : STA !ram_cm_fast_scroll_menu_selection
    BRA action_mainmenu

  .ySelected
    LDA #$0001 : STA !ram_cm_fast_scroll_menu_selection

    ; continue into action_mainmenu
}

action_mainmenu:
{
    ; Set bank of new menu
    LDA !ram_cm_cursor_stack : TAX
    LDA.l MainMenuBanks,X : STA !ram_cm_menu_bank
    STA !DP_MenuIndices+2 : STA !DP_CurrentMenu+2

    ; continue into action_submenu
}

action_submenu:
{
    ; Increment stack pointer by 2, then store current menu
    LDA !MENU_STACK_INDEX : INC #2 : STA !MENU_STACK_INDEX : TAX
    TYA : STA !ram_cm_menu_stack,X

    BRA action_submenu_jump
}

action_presets_mainmenu:
{
    ; Increment stack pointer by 2, then store current menu
    LDA !MENU_STACK_INDEX : INC #2 : STA !MENU_STACK_INDEX : TAX

    ; Lookup preset menu pointer for current category
    LDA !sram_preset_category : ASL : TAY

    PHB : PHK : PLB
    LDA.w preset_category_submenus,Y : STA !ram_cm_menu_stack,X
    LDA.w preset_category_banks,Y : STA !ram_cm_menu_bank
    PLB

    ; Continue into action_submenu_jump
}

action_submenu_jump:
{
    ; Set cursor to top for new menus
    TDC : STA !ram_cm_cursor_stack,X
    JSL cm_calculate_max
    JSL cm_colors

    ; Perform the cm_move check
    ; in case we shouldn't be on the first line
    LDA #$0002 : STA !DP_Temp
    LDY #$0000 : LDX !MENU_STACK_INDEX
    LDA !ram_cm_menu_stack,X : STA !DP_MenuIndices
    JSL cm_move_checkBlankLine
    JML cm_draw
}

preset_category_submenus:
{
    dw #PresetsMenuKpdr20
    dw #PresetsMenuKpdr21
    dw #PresetsMenuKpdr22
    dw #PresetsMenuKpdr23
    dw #PresetsMenuKpdr25
    dw #PresetsMenuPrkd19
    dw #PresetsMenuPrkd20
    dw #PresetsMenuPkrd
    dw #PresetsMenuGtclassic
    dw #PresetsMenuGtmax
    dw #PresetsMenu100early
    dw #PresetsMenuHundo
    dw #PresetsMenu100map
    dw #PresetsMenuSpazermap
    dw #PresetsMenu14ice
    dw #PresetsMenu14speed
    dw #PresetsMenuRbo
    dw #PresetsMenuSuitless
    dw #PresetsMenuNgplasma
    dw #PresetsMenuNghyper
    dw #PresetsMenuNintendopower
    dw #PresetsMenuAllbosskpdr
    dw #PresetsMenuAllbosspkdr
    dw #PresetsMenuAllbossprkd
    dw #PresetsMenuNoDropsKpdr
    dw #PresetsMenuRando
    dw #$0000
}

preset_category_banks:
{
    dw #PresetsMenuKpdr20>>16
    dw #PresetsMenuKpdr21>>16
    dw #PresetsMenuKpdr22>>16
    dw #PresetsMenuKpdr23>>16
    dw #PresetsMenuKpdr25>>16
    dw #PresetsMenuPrkd19>>16
    dw #PresetsMenuPrkd20>>16
    dw #PresetsMenuPkrd>>16
    dw #PresetsMenuGtclassic>>16
    dw #PresetsMenuGtmax>>16
    dw #PresetsMenu100early>>16
    dw #PresetsMenuHundo>>16
    dw #PresetsMenu100map>>16
    dw #PresetsMenuSpazermap>>16
    dw #PresetsMenu14ice>>16
    dw #PresetsMenu14speed>>16
    dw #PresetsMenuRbo>>16
    dw #PresetsMenuSuitless>>16
    dw #PresetsMenuNgplasma>>16
    dw #PresetsMenuNghyper>>16
    dw #PresetsMenuNintendopower>>16
    dw #PresetsMenuAllbosskpdr>>16
    dw #PresetsMenuAllbosspkdr>>16
    dw #PresetsMenuAllbossprkd>>16
    dw #PresetsMenuNoDropsKpdr>>16
    dw #PresetsMenuRando>>16
    dw #$0000
}


; -----------
; Main menu
; -----------

; MainMenu must live in the same bank as the core menu code
; From here, submenus can branch off into any bank

MainMenu:
    dw #mm_goto_equipment
    dw #mm_goto_presets
    dw #mm_goto_presets_menu
    dw #mm_goto_teleport
    dw #mm_goto_events
    dw #mm_goto_misc
if !FEATURE_VANILLAHUD
else
    dw #mm_goto_infohud
endif
    dw #mm_goto_sprites
    dw #mm_goto_layout
    dw #mm_goto_gamemenu
    dw #mm_goto_rngmenu
if !FEATURE_SD2SNES
    dw #mm_goto_savestate
endif
    dw #mm_goto_timecontrol
    dw #mm_goto_ctrlshortcut
    dw #mm_goto_audiomenu
    dw #mm_goto_customize
    dw #mm_goto_cropmenu
    dw #mm_goto_brbmenu
    dw #$0000
    %cm_version_header("SM PRACTICE HACK")
if !FEATURE_DEV && defined("PRERELEASE")
    %cm_footer("DEVELOPMENT BUILD !PRERELEASE")
elseif !FEATURE_DEV
    %cm_footer("DEVELOPMENT BUILD")
elseif defined("PRERELEASE")
    %cm_footer("PRERELEASE BUILD !PRERELEASE")
else
    table ../resources/normal.tbl
endif

MainMenuBanks:
    ; this list must match the main menu order
    dw #EquipmentMenu>>16
    dw #preset_category_banks>>16 ; dummy
    dw #PresetOptionsMenu>>16
    dw #TeleportMenu>>16
    dw #EventFlagsMenu>>16
    dw #MiscMenu>>16
if !FEATURE_VANILLAHUD
else
    dw #InfoHudMenu>>16
endif
    dw #SpritesMenu>>16
    dw #LayoutMenu>>16
    dw #GameMenu>>16
    dw #RngMenu>>16
if !FEATURE_SD2SNES
    dw #SavestateMenu>>16
endif
    dw #SlowdownMenu>>16
    dw #CtrlShortcutMenu>>16
    dw #AudioMenu>>16
    dw #CustomizeMenu>>16
    dw #CaptureCroppingMenu>>16
    dw #BRBMenu>>16

mm_goto_equipment:
    %cm_jsl("Equipment", #action_equipment_mainmenu, #EquipmentMenu)

mm_goto_presets:
    %cm_jsl("Category Presets", #action_presets_mainmenu, #$0000)

mm_goto_presets_menu:
    %cm_jsl("Preset Options", #action_preset_options_mainmenu, #PresetOptionsMenu)

mm_goto_teleport:
    %cm_mainmenu("Save Stations", #TeleportMenu)

mm_goto_events:
    %cm_mainmenu("Event Flags", #EventFlagsMenu)

mm_goto_misc:
    %cm_mainmenu("Misc Options", #MiscMenu)

if !FEATURE_VANILLAHUD
else
mm_goto_infohud:
    %cm_jsl("InfoHUD", #action_infohud_mainmenu, #InfoHudMenu)
endif

mm_goto_sprites:
    %cm_mainmenu("Sprite Features", #SpritesMenu)

mm_goto_layout:
    %cm_jsl("Room Layout", #action_layout_mainmenu, #LayoutMenu)

mm_goto_gamemenu:
    %cm_jsl("Game Options", #action_game_mainmenu, #GameMenu)

mm_goto_rngmenu:
    %cm_jsl("RNG Control", #action_rng_mainmenu, #RngMenu)

if !FEATURE_SD2SNES
mm_goto_savestate:
    %cm_mainmenu("Savestate Settings", #SavestateMenu)
endif

mm_goto_timecontrol:
    %cm_mainmenu("Slowdown Mode", #SlowdownMenu)

mm_goto_ctrlshortcut:
    %cm_jsl("Controller Shortcuts", #action_ctrlshortcut_mainmenu, #CtrlShortcutMenu)

mm_goto_audiomenu:
    %cm_mainmenu("Audio Menu", #AudioMenu)

mm_goto_customize:
    %cm_jsl("Customize Practice Menu", #action_customize_mainmenu, #CustomizeMenu)

mm_goto_cropmenu:
    %cm_jsl("Capture Cropping Mode", #action_crop_mainmenu, #CaptureCroppingMenu)

mm_goto_brbmenu:
    %cm_jsl("Be Right Back Menu", #action_brb_mainmenu, #BRBMenu)


; -------------------
; Preset Options menu
; -------------------

PresetOptionsMenu:
    dw #presets_select_preset_category
    dw #presets_current
    dw #$FFFF
    dw #presets_custom_preset_slot
    dw #presets_save_custom_preset
    dw #presets_load_custom_preset
if !FEATURE_DEV
    dw #presets_random_preset_rng
else
    dw #$FFFF
endif
    dw #presets_reload_last
    dw #presets_load_random
    dw #presets_equip_rando_menu
    dw #presets_elevator
    dw #presets_open_blue_doors
    dw #presets_load_with_enemies
    dw #presets_clear_map_tiles
    dw #presets_auto_segment_reset
if !RAW_TILE_GRAPHICS
    dw #$FFFF
    dw #presets_compressed_graphics
    dw #presets_compressed_palettes
    dw #presets_compressed_tables
endif
    dw #$0000
    %cm_header("PRESET OPTIONS MENU")
if !RAW_TILE_GRAPHICS
    %cm_footer("COMPRESSED OFF IS FASTER")
endif

presets_select_preset_category:
    %cm_submenu("Select Preset Category", #SelectPresetCategoryMenu)

presets_custom_preset_slot:
    %cm_numfield("Custom Preset Slot", !sram_custom_preset_slot, 0, !TOTAL_PRESET_SLOTS, 1, 2, #.routine)
  .routine
    ; ignore if not A, X, or Y
    LDA !IH_CONTROLLER_PRI_NEW : ORA !IH_CONTROLLER_SEC_NEW : BIT #$40C0 : BNE .submenu
    LDA !sram_last_preset_low_word : BMI .exit
    TDC : STA !sram_last_preset_low_word : STA !sram_last_preset_high_word
  .exit
    RTL
  .submenu
    ; undo increment from execute_numfield
    LDA !sram_custom_preset_slot : BEQ .zero
    DEC : BRA .skipzero
  .zero
    LDA !TOTAL_PRESET_SLOTS
  .skipzero
    STA !sram_custom_preset_slot
    ; determine which page to load
if !FEATURE_MAPSTATES
    ; Mapstates only has slots 00-01 or 00-09
    LDY.w #CustomPresetsMenu
else
if !FEATURE_TINYSTATES
    ; Tinystates only has slots 00-15
    LDY.w #CustomPresetsMenu
else
    CMP #$0010 : BPL .page2
    LDY.w #CustomPresetsMenu : BRA .done
  .page2
    CMP #$0020 : BPL .page3
    LDY.w #CustomPresetsMenu2 : BRA .done
  .page3
    LDY.w #CustomPresetsMenu3
  .done
endif
endif
    %setmenubank()
    JML action_submenu

presets_save_custom_preset:
    %cm_jsl("Save Custom Preset", .routine, #$0000)
  .routine
    ; check gamestate first
    LDA !GAMEMODE : CMP #$0008 : BEQ .safe
    CMP #$000C : BMI .not_safe
    CMP #$0013 : BPL .not_safe

  .safe
    JSL custom_preset_save
    LDA #$0001 : STA !ram_cm_leave
    %sfxconfirm()
    RTL

  .not_safe
    %sfxfail()
    RTL

presets_load_custom_preset:
    %cm_jsl("Load Custom Preset", .routine, #$0000)
  .routine
    ; check if slot is populated first
    LDA !sram_custom_preset_slot
    %presetslotsize()
    LDA !PRESET_SLOTS,X : CMP !SAFEWORD : BEQ .safe
    %sfxfail()
    RTL

  .safe
    STA !ram_load_preset_low_word
    XBA : AND #$00FF : STA !ram_load_preset_high_word
    LDA #$0001 : STA !ram_cm_leave
    RTL

presets_reload_last:
    %cm_jsl("Reload Last Preset", .routine, #$0001)
  .routine
    LDA !sram_last_preset_low_word : STA !ram_load_preset_low_word
    LDA !sram_last_preset_high_word : STA !ram_load_preset_high_word
    TYA : STA !ram_cm_leave
    RTL

presets_load_random:
    %cm_jsl("Load Random Preset", .routine, #$0001)
  .routine
    TYA : STA !ram_cm_leave
    JML LoadRandomPreset

if !FEATURE_DEV
presets_random_preset_rng:
    %cm_toggle("Presets In Order", !ram_random_preset_rng, #$01, #0)
endif

presets_equip_rando_menu:
    %cm_submenu("Randomize Equipment", #PresetEquipRandoMenu)

presets_elevator:
    dw !ACTION_CHOICE
    dl #!ram_cm_preset_elevator
    dw #.routine
    db #$28, "Elevator Entry", #$FF
    db #$28, "      SHORT", #$FF
    db #$28, "       LONG", #$FF
    db #$28, "        OFF", #$FF
    db #$FF
  .routine
    LDA !ram_cm_preset_elevator : TAY
    LDA !sram_preset_options : XBA
    %ai8() : TYA : %ai16()
    XBA : STA !sram_preset_options
    RTL

presets_open_blue_doors:
    %cm_toggle_bit_inverted("Open Blue Doors", !sram_preset_options, !PRESETS_CLOSE_BLUE_DOORS, #0)

presets_load_with_enemies:
    %cm_toggle_bit("Load with Enemies", !sram_preset_options, !PRESETS_PRESERVE_ENEMIES, #0)

presets_clear_map_tiles:
    %cm_toggle_bit("Clear Map Tiles", !sram_preset_options, !PRESETS_CLEAR_MAP_TILES, #0)

presets_auto_segment_reset:
    %cm_toggle_bit_inverted("Auto Reset Segment", !sram_preset_options, !PRESETS_AUTO_SEGMENT_OFF, #0)

if !RAW_TILE_GRAPHICS
presets_compressed_graphics:
    %cm_toggle_bit("Compressed Graphics", !sram_preset_options, !PRESETS_COMPRESSED_GRAPHICS, #0)

presets_compressed_palettes:
    %cm_toggle_bit("Compressed Palettes", !sram_preset_options, !PRESETS_COMPRESSED_PALETTES, #0)

presets_compressed_tables:
    %cm_toggle_bit("Compressed Tables", !sram_preset_options, !PRESETS_COMPRESSED_TABLES, #0)
endif

SelectPresetCategoryMenu:
    dw #presets_current
    dw #$FFFF
    dw #precat_kpdr
    dw #precat_prkd19
    dw #precat_prkd20
    dw #precat_pkrd
    dw #precat_gtclassic
    dw #precat_gtmax
    dw #precat_100early
    dw #precat_hundo
    dw #precat_100map
    dw #precat_spazermap
    dw #precat_14ice
    dw #precat_14speed
    dw #precat_rbo
    dw #precat_suitless
    dw #precat_ngplasma
    dw #precat_nghyper
    dw #precat_nintendopower
    dw #precat_allboss
    dw #precat_rando
    dw #$0000
    %cm_header("SELECT PRESET CATEGORY")

presets_current:
    dw !ACTION_CHOICE
    dl #!sram_preset_category
    dw #.routine
    db #$28, "CURRENT PRESET", #$FF
    db #$28, "   KPDR 20%", #$FF
    db #$28, "   KPDR 21%", #$FF
    db #$28, "   KPDR 22%", #$FF
    db #$28, "   KPDR 23%", #$FF
    db #$28, "   KPDR 25%", #$FF
    db #$28, "   PRKD 19%", #$FF
    db #$28, "   PRKD 20%", #$FF
    db #$28, "  ANY% PKRD", #$FF
    db #$28, " GT CLASSIC", #$FF
    db #$28, "    GT MAX%", #$FF
    db #$28, " 100% EARLY", #$FF
    db #$28, "  100% LATE", #$FF
    db #$28, "   100% MAP", #$FF
    db #$28, " SPAZER MAP", #$FF
    db #$28, "    14% ICE", #$FF
    db #$28, "  14% SPEED", #$FF
    db #$28, "        RBO", #$FF
    db #$28, " 98SUITLESS", #$FF
    db #$28, " NG+ PLASMA", #$FF
    db #$28, "  NG+ HYPER", #$FF
    db #$28, " NIN POWER%", #$FF
    db #$28, "  BOSS KPDR", #$FF
    db #$28, "  BOSS PKDR", #$FF
    db #$28, "  BOSS PRKD", #$FF
    db #$28, "NODROP KPDR", #$FF
    db #$28, "      RANDO", #$FF
    db #$FF
  .routine
    TDC : STA !sram_last_preset_low_word : STA !sram_last_preset_high_word
    RTL

precat_kpdr:
    %cm_submenu("KPDR", #SelectKpdrPresetCategoryMenu)

SelectKpdrPresetCategoryMenu:
    dw #precat_kpdr20
    dw #precat_kpdr21
    dw #precat_kpdr22
    dw #precat_kpdr23
    dw #precat_kpdr25
    dw #precat_allbosskpdr
    dw #precat_nodropskpdr
    dw #$0000
    %cm_header("SELECT KPDR CATEGORY")

precat_kpdr20:
    %cm_jsl("20% KPDR 15 Missiles", #action_select_preset_category, #$0000)

precat_kpdr21:
    %cm_jsl("21% KPDR 3 E-Tanks", #action_select_preset_category, #$0001)

precat_kpdr22:
    %cm_jsl("22% KPDR 4 E-Tanks", #action_select_preset_category, #$0002)

precat_kpdr23:
    %cm_jsl("23% KPDR with Spazer", #action_select_preset_category, #$0003)

precat_kpdr25:
    %cm_jsl("25% KPDR Early Ice", #action_select_preset_category, #$0004)

precat_prkd19:
    %cm_jsl("19% PRKD 15 Missiles", #action_select_preset_category, #$0005)

precat_prkd20:
    %cm_jsl("20% PRKD 20 Missiles", #action_select_preset_category, #$0006)

precat_pkrd:
    %cm_jsl("Any% PKRD", #action_select_preset_category, #$0007)

precat_gtclassic:
    %cm_jsl("GT Classic", #action_select_preset_category, #$0008)

precat_gtmax:
    %cm_jsl("GT Max%", #action_select_preset_category, #$0009)

precat_100early:
    %cm_jsl("100% Early Crocomire", #action_select_preset_category, #$000A)

precat_hundo:
    %cm_jsl("100% Late Crocomire", #action_select_preset_category, #$000B)

precat_100map:
!PRESET_CATEGORY_100MAP_INDEX = #$000C
    %cm_jsl("100% Map Completion", #action_select_preset_category, #$000C)

precat_spazermap:
!PRESET_CATEGORY_SPAZERMAP_INDEX = #$000D
    %cm_jsl("100% Map with Spazer", #action_select_preset_category, #$000D)

precat_14ice:
    %cm_jsl("14% Ice", #action_select_preset_category, #$000E)

precat_14speed:
    %cm_jsl("14% Speed", #action_select_preset_category, #$000F)

precat_rbo:
    %cm_jsl("Reverse Boss Order", #action_select_preset_category, #$0010)

precat_suitless:
    %cm_jsl("Max% Suitless", #action_select_preset_category, #$0011)

precat_ngplasma:
    %cm_jsl("NewGame+ Plasma", #action_select_preset_category, #$0012)

precat_nghyper:
    %cm_jsl("NewGame+ Hyper", #action_select_preset_category, #$0013)

precat_nintendopower:
    %cm_jsl("Nintendo Power%", #action_select_preset_category, #$0014)

precat_allboss:
    %cm_submenu("All Bosses", #SelectAllBossesPresetCategoryMenu)

SelectAllBossesPresetCategoryMenu:
    dw #precat_allbosskpdr
    dw #precat_allbosspkdr
    dw #precat_allbossprkd
    dw #$0000
    %cm_header("SELECT ALL BOSSES CATEGORY")

precat_allbosskpdr:
    %cm_jsl("All Bosses KPDR", #action_select_preset_category, #$0015)

precat_allbosspkdr:
    %cm_jsl("All Bosses PKDR", #action_select_preset_category, #$0016)

precat_allbossprkd:
    %cm_jsl("All Bosses PRKD", #action_select_preset_category, #$0017)

precat_nodropskpdr:
    %cm_jsl("No Drops KPDR", #action_select_preset_category, #$0018)

precat_rando:
    %cm_jsl("Randomizer", #action_select_preset_category, #$0019)

action_select_preset_category:
{
    ; category index in Y
    TYA : STA !sram_preset_category
    ; clear stale preset
    TDC : STA !sram_last_preset_low_word : STA !sram_last_preset_high_word
    JML cm_previous_menu
}


; -------------------
; Custom Preset Slots
; -------------------

CustomPresetsMenu:
    dw #custompreset_00
    dw #custompreset_01
if !FEATURE_MAPSTATES
    ; Mapstates only has slots 00-01 or 00-09
if !FEATURE_TINYSTATES
else
    dw #custompreset_02
    dw #custompreset_03
    dw #custompreset_04
    dw #custompreset_05
    dw #custompreset_06
    dw #custompreset_07
    dw #custompreset_08
    dw #custompreset_09
endif
    dw #$FFFF
    dw #custompreset_manage
else
    dw #custompreset_02
    dw #custompreset_03
    dw #custompreset_04
    dw #custompreset_05
    dw #custompreset_06
    dw #custompreset_07
    dw #custompreset_08
    dw #custompreset_09
    dw #custompreset_10
    dw #custompreset_11
    dw #custompreset_12
    dw #custompreset_13
    dw #custompreset_14
    dw #custompreset_15
    dw #$FFFF
    dw #custompreset_manage
if !FEATURE_TINYSTATES
    ; Tinystates only has slots 00-15
else
    dw #custompreset_goto_page2
    dw #custompreset_goto_page3
endif
endif
    dw #$0000
    %cm_header("PRESS X TO NAME PRESETS")
    %cm_footer("PRESS Y TO TOGGLE DISPLAY")

    %cm_custompreset(00)
    %cm_custompreset(01)
if !FEATURE_MAPSTATES
    ; Mapstates only has slots 00-01 or 00-09
if !FEATURE_TINYSTATES
else
    %cm_custompreset(02)
    %cm_custompreset(03)
    %cm_custompreset(04)
    %cm_custompreset(05)
    %cm_custompreset(06)
    %cm_custompreset(07)
    %cm_custompreset(08)
    %cm_custompreset(09)
endif
else
    %cm_custompreset(02)
    %cm_custompreset(03)
    %cm_custompreset(04)
    %cm_custompreset(05)
    %cm_custompreset(06)
    %cm_custompreset(07)
    %cm_custompreset(08)
    %cm_custompreset(09)
    %cm_custompreset(10)
    %cm_custompreset(11)
    %cm_custompreset(12)
    %cm_custompreset(13)
    %cm_custompreset(14)
    %cm_custompreset(15)

if !FEATURE_TINYSTATES
    ; Tinystates only has slots 00-15
else
CustomPresetsMenu2:
    dw #custompreset_16
    dw #custompreset_17
    dw #custompreset_18
    dw #custompreset_19
    dw #custompreset_20
    dw #custompreset_21
    dw #custompreset_22
    dw #custompreset_23
    dw #custompreset_24
    dw #custompreset_25
    dw #custompreset_26
    dw #custompreset_27
    dw #custompreset_28
    dw #custompreset_29
    dw #custompreset_30
    dw #custompreset_31
    dw #$FFFF
    dw #custompreset_manage
    dw #custompreset_goto_page1
    dw #custompreset_goto_page3
    dw #$0000
    %cm_header("PRESS X TO NAME PRESETS")
    %cm_footer("PRESS Y TO TOGGLE DISPLAY")

    %cm_custompreset(16)
    %cm_custompreset(17)
    %cm_custompreset(18)
    %cm_custompreset(19)
    %cm_custompreset(20)
    %cm_custompreset(21)
    %cm_custompreset(22)
    %cm_custompreset(23)
    %cm_custompreset(24)
    %cm_custompreset(25)
    %cm_custompreset(26)
    %cm_custompreset(27)
    %cm_custompreset(28)
    %cm_custompreset(29)
    %cm_custompreset(30)
    %cm_custompreset(31)

CustomPresetsMenu3:
    dw #custompreset_32
    dw #custompreset_33
    dw #custompreset_34
    dw #custompreset_35
    dw #custompreset_36
    dw #custompreset_37
    dw #custompreset_38
    dw #custompreset_39
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #custompreset_manage
    dw #custompreset_goto_page1
    dw #custompreset_goto_page2
    dw #$0000
    %cm_header("PRESS X TO NAME PRESETS")
    %cm_footer("PRESS Y TO TOGGLE DISPLAY")

    %cm_custompreset(32)
    %cm_custompreset(33)
    %cm_custompreset(34)
    %cm_custompreset(35)
    %cm_custompreset(36)
    %cm_custompreset(37)
    %cm_custompreset(38)
    %cm_custompreset(39)
endif
endif

custompreset_manage:
    %cm_jsl("Manage Preset Slots", .routine, #$0000)
  .routine
    TDC : STA !ram_cm_manage_slots
if !FEATURE_MAPSTATES
    ; Mapstates only has slots 00-01 or 00-09
    LDY.w #ManagePresetsMenu
else
if !FEATURE_TINYSTATES
    ; Tinystates only has slots 00-15
    LDY.w #ManagePresetsMenu
else
    ; determine which page is currently loaded
    LDA !MENU_STACK_INDEX : DEC #2 : TAX
    ; exit if not in a color menu
    LDA !ram_cm_menu_stack,X : CMP.w #CustomPresetsMenu : BPL .page2
    LDY.w #ManagePresetsMenu : BRA .done
  .page2
    CMP.w #CustomPresetsMenu2 : BPL .page3
    LDY.w #ManagePresetsMenu2 : BRA .done
  .page3
    LDY.w #ManagePresetsMenu3
  .done
endif
endif
    JSL cm_go_back_adjacent_submenu
    JML action_submenu

ManagePresetsMenu:
    dw #managepreset_00
    dw #managepreset_01
if !FEATURE_MAPSTATES
    ; Mapstates only has slots 00-01 or 00-09
if !FEATURE_TINYSTATES
else
    dw #managepreset_02
    dw #managepreset_03
    dw #managepreset_04
    dw #managepreset_05
    dw #managepreset_06
    dw #managepreset_07
    dw #managepreset_08
    dw #managepreset_09
endif
else
    dw #managepreset_02
    dw #managepreset_03
    dw #managepreset_04
    dw #managepreset_05
    dw #managepreset_06
    dw #managepreset_07
    dw #managepreset_08
    dw #managepreset_09
    dw #managepreset_10
    dw #managepreset_11
    dw #managepreset_12
    dw #managepreset_13
    dw #managepreset_14
    dw #managepreset_15
if !FEATURE_TINYSTATES
    ; Tinystates only has slots 00-15
else
    dw #$FFFF
    dw #$FFFF
    dw #managepreset_goto_page2
    dw #managepreset_goto_page3
endif
endif
    dw #$0000
    %cm_header("PRESS A TO SWAP PRESETS")
    %cm_footer("PRESS X TO DELETE PRESET")

    %cm_managepreset(00)
    %cm_managepreset(01)
if !FEATURE_MAPSTATES
    ; Mapstates only has slots 00-01 or 00-09
if !FEATURE_TINYSTATES
else
    %cm_managepreset(02)
    %cm_managepreset(03)
    %cm_managepreset(04)
    %cm_managepreset(05)
    %cm_managepreset(06)
    %cm_managepreset(07)
    %cm_managepreset(08)
    %cm_managepreset(09)
endif
else
    %cm_managepreset(02)
    %cm_managepreset(03)
    %cm_managepreset(04)
    %cm_managepreset(05)
    %cm_managepreset(06)
    %cm_managepreset(07)
    %cm_managepreset(08)
    %cm_managepreset(09)
    %cm_managepreset(10)
    %cm_managepreset(11)
    %cm_managepreset(12)
    %cm_managepreset(13)
    %cm_managepreset(14)
    %cm_managepreset(15)

if !FEATURE_TINYSTATES
    ; Tinystates only has slots 00-15
else
ManagePresetsMenu2:
    dw #managepreset_16
    dw #managepreset_17
    dw #managepreset_18
    dw #managepreset_19
    dw #managepreset_20
    dw #managepreset_21
    dw #managepreset_22
    dw #managepreset_23
    dw #managepreset_24
    dw #managepreset_25
    dw #managepreset_26
    dw #managepreset_27
    dw #managepreset_28
    dw #managepreset_29
    dw #managepreset_30
    dw #managepreset_31
    dw #$FFFF
    dw #$FFFF
    dw #managepreset_goto_page1
    dw #managepreset_goto_page3
    dw #$0000
    %cm_header("PRESS A TO SWAP PRESETS")
    %cm_footer("PRESS X TO DELETE PRESET")

    %cm_managepreset(16)
    %cm_managepreset(17)
    %cm_managepreset(18)
    %cm_managepreset(19)
    %cm_managepreset(20)
    %cm_managepreset(21)
    %cm_managepreset(22)
    %cm_managepreset(23)
    %cm_managepreset(24)
    %cm_managepreset(25)
    %cm_managepreset(26)
    %cm_managepreset(27)
    %cm_managepreset(28)
    %cm_managepreset(29)
    %cm_managepreset(30)
    %cm_managepreset(31)

ManagePresetsMenu3:
    dw #managepreset_32
    dw #managepreset_33
    dw #managepreset_34
    dw #managepreset_35
    dw #managepreset_36
    dw #managepreset_37
    dw #managepreset_38
    dw #managepreset_39
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #managepreset_goto_page1
    dw #managepreset_goto_page2
    dw #$0000
    %cm_header("PRESS A TO SWAP PRESETS")
    %cm_footer("PRESS X TO DELETE PRESET")

    %cm_managepreset(32)
    %cm_managepreset(33)
    %cm_managepreset(34)
    %cm_managepreset(35)
    %cm_managepreset(36)
    %cm_managepreset(37)
    %cm_managepreset(38)
    %cm_managepreset(39)

custompreset_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #CustomPresetsMenu)

custompreset_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #CustomPresetsMenu2)

custompreset_goto_page3:
    %cm_adjacent_submenu("GOTO PAGE THREE", #CustomPresetsMenu3)

managepreset_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #ManagePresetsMenu)

managepreset_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #ManagePresetsMenu2)

managepreset_goto_page3:
    %cm_adjacent_submenu("GOTO PAGE THREE", #ManagePresetsMenu3)
endif
endif

ManagePresetsConfirm:
    dw #managepreset_abort
    dw #$FFFF
    dw #managepreset_confirm
    dw #$0000
    %cm_header("DELETE SELECTED PRESET?")

managepreset_abort:
    %cm_jsl("ABORT", .routine, #$0000)
  .routine
    JML cm_previous_menu

managepreset_confirm:
    %cm_jsl("Confirm Delete Preset", .routine, #$0000)
  .routine
    LDA !ram_cm_selected_slot : %presetslotsize()
    LDA #$DEAD : STA !PRESET_SLOTS,X
    LDA !ram_cm_selected_slot : ASL : TAX
    LDA #$DEAD : STA !sram_custom_preset_safewords,X
    JML cm_previous_menu


; ----------------------
; Preset Equipment Rando
; ----------------------

PresetEquipRandoMenu:
    dw #presetequiprando_enable
    dw #$FFFF
    dw #presetequiprando_morph
    dw #presetequiprando_charge
    dw #presetequiprando_beampref
    dw #$FFFF
    dw #presetequiprando_etanks
    dw #presetequiprando_reserves
    dw #presetequiprando_missiles
    dw #presetequiprando_supers
    dw #presetequiprando_pbs
    dw #$0000
    %cm_header("RANDOMIZE PRESET EQUIPMENT")

presetequiprando_enable:
    %cm_toggle_bit("Equipment Rando", !sram_presetequiprando, !PRESET_EQUIP_RANDO_ENABLE, #0)

presetequiprando_morph:
    %cm_toggle_bit("Force Morph Ball", !sram_presetequiprando, !PRESET_EQUIP_RANDO_FORCE_MORPH, #0)

presetequiprando_charge:
    %cm_toggle_bit("Force Charge Beam", !sram_presetequiprando, !PRESET_EQUIP_RANDO_FORCE_CHARGE, #0)

presetequiprando_beampref:
    dw !ACTION_CHOICE
    dl #!sram_presetequiprando_beampref
    dw #$0000
    db #$28, "Beam Preference", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "     SPAZER", #$FF
    db #$28, "     PLASMA", #$FF
    db #$FF

presetequiprando_etanks:
    %cm_numfield("Max Energy Tanks", !sram_presetequiprando_max_etanks, 0, 14, 1, 2, #0)

presetequiprando_reserves:
    %cm_numfield("Max Reserve Tanks", !sram_presetequiprando_max_reserves, 0, 4, 1, 1, #0)

presetequiprando_missiles:
    %cm_numfield("Max Missile Pickups", !sram_presetequiprando_max_missiles, 0, 46, 1, 5, #0)

presetequiprando_supers:
    %cm_numfield("Max Super Pickups", !sram_presetequiprando_max_supers, 0, 10, 1, 5, #0)

presetequiprando_pbs:
    %cm_numfield("Max Power Bomb Pickups", !sram_presetequiprando_max_pbs, 0, 10, 1, 5, #0)


; -------------
; Teleport menu
; -------------

TeleportMenu:
    dw #tel_goto_crateria
    dw #tel_goto_brinstar
    dw #tel_goto_norfair
    dw #tel_goto_wreckedship
    dw #tel_goto_maridia
    dw #tel_goto_tourian
    dw #tel_ceres
    dw #$0000
    %cm_header("TELEPORT TO SAVE STATION")

tel_goto_crateria:
    %cm_submenu("Crateria", #TeleportCrateriaMenu)

tel_goto_brinstar:
    %cm_submenu("Brinstar", #TeleportBrinstarMenu)

tel_goto_norfair:
    %cm_submenu("Norfair", #TeleportNorfairMenu)

tel_goto_wreckedship:
    %cm_submenu("Wrecked Ship", #TeleportWreckedShipMenu)

tel_goto_maridia:
    %cm_submenu("Maridia", #TeleportMaridiaMenu)

tel_goto_tourian:
    %cm_submenu("Tourian", #TeleportTourianMenu)

TeleportCrateriaMenu:
    dw #tel_crateriaship
    dw #tel_crateriaparlor
    dw #$FFFF
    dw #tel_crateria08
    dw #tel_crateria09
    dw #tel_crateria0A
    dw #tel_crateria0B
    dw #tel_crateria0C
    dw #tel_crateria11
    dw #tel_craterialanding
    dw #$0000
    %cm_header("CRATERIA SAVE STATIONS")

tel_crateriaship:
    %cm_jsl("Ship", #action_teleport, #$0000)

tel_crateriaparlor:
    %cm_jsl("Parlor", #action_teleport, #$0001)

tel_crateria08:
    %cm_jsl("DEBUG Forgotten Hwy Elev", #action_teleport, #$0008)

tel_crateria09:
    %cm_jsl("DEBUG Red Brinstar Elev", #action_teleport, #$0009)

tel_crateria0A:
    %cm_jsl("DEBUG Blue Brinstar Elev", #action_teleport, #$000A)

tel_crateria0B:
    %cm_jsl("DEBUG Green Brinstar Elev", #action_teleport, #$000B)

tel_crateria0C:
    %cm_jsl("DEBUG Tourian Elevator", #action_teleport, #$000C)

tel_crateria11:
    %cm_jsl("DEBUG Forgotten Highway", #action_teleport, #$0011)

tel_craterialanding:
    %cm_jsl("Gunship Landing", #action_teleport, #$0012)

TeleportBrinstarMenu:
    dw #tel_brinstarpink
    dw #tel_brinstargreenshaft
    dw #tel_brinstargreenetecoons
    dw #tel_brinstarkraid
    dw #tel_brinstarredtower
    dw #$FFFF
    dw #tel_brinstar08
    dw #tel_brinstar09
    dw #tel_brinstar0A
    dw #tel_brinstar0B
    dw #tel_brinstar11
    dw #tel_brinstar12
    dw #$0000
    %cm_header("BRINSTAR SAVE STATIONS")

tel_brinstarpink:
    %cm_jsl("Pink Spospo", #action_teleport, #$0100)

tel_brinstargreenshaft:
    %cm_jsl("Green Shaft", #action_teleport, #$0101)

tel_brinstargreenetecoons:
    %cm_jsl("Green Etecoons", #action_teleport, #$0102)

tel_brinstarkraid:
    %cm_jsl("Kraid", #action_teleport, #$0103)

tel_brinstarredtower:
    %cm_jsl("Red Tower", #action_teleport, #$0104)

tel_brinstar08:
    %cm_jsl("DEBUG West Crateria Elev", #action_teleport, #$0108)

tel_brinstar09:
    %cm_jsl("DEBUG Old Tourian Elevator", #action_teleport, #$0109)

tel_brinstar0A:
    %cm_jsl("DEBUG Crateria Elevator", #action_teleport, #$010A)

tel_brinstar0B:
    %cm_jsl("DEBUG Norfair Elevator", #action_teleport, #$010B)

tel_brinstar11:
    %cm_jsl("DEBUG Kraid Gadora Room", #action_teleport, #$0111)

tel_brinstar12:
    %cm_jsl("DEBUG Big Pink", #action_teleport, #$0112)

TeleportNorfairMenu:
    dw #tel_norfairgrapple
    dw #tel_norfairbubble
    dw #tel_norfairtunnel
    dw #tel_norfaircrocomire
    dw #tel_norfairlnelevator
    dw #tel_norfairridley
    dw #$FFFF
    dw #tel_norfair08
    dw #tel_norfair09
    dw #tel_norfair0A
    dw #tel_norfair11
    dw #tel_norfair12
    dw #tel_norfair13
    dw #tel_norfair15
    dw #tel_norfair16
    dw #$0000
    %cm_header("NORFAIR SAVE STATIONS")

tel_norfairgrapple:
    %cm_jsl("Grapple", #action_teleport, #$0200)

tel_norfairbubble:
    %cm_jsl("Bubble Mountain", #action_teleport, #$0201)

tel_norfairtunnel:
    %cm_jsl("Tunnel", #action_teleport, #$0202)

tel_norfaircrocomire:
    %cm_jsl("Crocomire", #action_teleport, #$0203)

tel_norfairlnelevator:
    %cm_jsl("LN Elevator", #action_teleport, #$0204)

tel_norfairridley:
    %cm_jsl("Ridley", #action_teleport, #$0205)

tel_norfair08:
    %cm_jsl("DEBUG Brinstar Elevator", #action_teleport, #$0208)

tel_norfair09:
    %cm_jsl("DEBUG Lower Norfair Elev", #action_teleport, #$0209)

tel_norfair0A:
    %cm_jsl("DEBUG Upper Norfair Elev", #action_teleport, #$020A)

tel_norfair11:
    %cm_jsl("DEBUG Crocomire Speedway", #action_teleport, #$0211)

tel_norfair12:
    %cm_jsl("DEBUG Ridley Farming Room", #action_teleport, #$0212)

tel_norfair13:
    %cm_jsl("DEBUG Post-Croc Farming", #action_teleport, #$0213)

tel_norfair15:
    %cm_jsl("DEBUG OoB Screw Attack", #action_teleport, #$0215)

tel_norfair16:
    %cm_jsl("DEBUG Golden Torizo Room", #action_teleport, #$0216)

TeleportWreckedShipMenu:
    dw #tel_wreckedship
    dw #$FFFF
    dw #tel_wreckedship10
    dw #tel_wreckedship11
    dw #$0000
    %cm_header("WRECKED SHIP SAVE STATIONS")

tel_wreckedship:
    %cm_jsl("Wrecked Ship", #action_teleport, #$0300)

tel_wreckedship10:
    %cm_jsl("DEBUG Entrance", #action_teleport, #$0310)

tel_wreckedship11:
    %cm_jsl("DEBUG Basement", #action_teleport, #$0311)

TeleportMaridiaMenu:
    dw #tel_maridiatube
    dw #tel_maridiaelevator
    dw #tel_maridiaaqueduct
    dw #tel_maridiadraygon
    dw #$FFFF
    dw #tel_maridia08
    dw #tel_maridia10
    dw #tel_maridia11
    dw #tel_maridia12
    dw #tel_maridia13
    dw #$0000
    %cm_header("MARIDIA SAVE STATIONS")

tel_maridiatube:
    %cm_jsl("Tube", #action_teleport, #$0400)

tel_maridiaelevator:
    %cm_jsl("Elevator", #action_teleport, #$0401)

tel_maridiaaqueduct:
    %cm_jsl("Aqueduct", #action_teleport, #$0402)

tel_maridiadraygon:
    %cm_jsl("Draygon", #action_teleport, #$0403)

tel_maridia08:
    %cm_jsl("DEBUG East Crateria Elev", #action_teleport, #$0408)

tel_maridia10:
    %cm_jsl("DEBUG Pseudo Plasma Spark", #action_teleport, #$0410)

tel_maridia11:
    %cm_jsl("DEBUG Precious Room", #action_teleport, #$0411)

tel_maridia12:
    %cm_jsl("DEBUG Botwoon Hallway", #action_teleport, #$0412)

tel_maridia13:
    %cm_jsl("DEBUG Oasis", #action_teleport, #$0413)

TeleportTourianMenu:
    dw #tel_tourianmb
    dw #tel_tourianentrance
    dw #$FFFF
    dw #tel_tourian08
    dw #tel_tourian10
    dw #tel_tourian11
    dw #$0000
    %cm_header("TOURIAN SAVE STATIONS")

tel_tourianmb:
    %cm_jsl("Mother Brain", #action_teleport, #$0500)

tel_tourianentrance:
    %cm_jsl("Entrance", #action_teleport, #$0501)

tel_tourian08:
    %cm_jsl("DEBUG Crateria Elevator", #action_teleport, #$0508)

tel_tourian10:
    %cm_jsl("DEBUG Rinka Shaft", #action_teleport, #$0510)

tel_tourian11:
    %cm_jsl("DEBUG Dustin Torizo", #action_teleport, #$0511)

tel_ceres:
    %cm_jsl("Ceres Station", #action_teleport, #$0600)

action_teleport:
{
    ; Teleport destination in Y when called
    TYA : AND #$FF00 : XBA : STA !AREA_ID
    TYA : AND #$00FF : STA !LOAD_STATION_INDEX
    LDA #$0006 : STA !GAMEMODE

    ; Make sure we can teleport to Zebes from Ceres
    %a8()
    LDA #$05 : STA !LOADING_GAME_STATE
    %a16()

    STZ !PAUSE_MENU_INDEX : STZ !MESSAGE_BOX_INDEX
    STZ !DOOR_TRANSITION_FLAG_ELEVATOR : STZ !ELEVATOR_STATUS

    LDA !SAMUS_HP_MAX : BNE .hp_set
    LDA #$001F : STA !SAMUS_HP

  .hp_set
    JSL reset_all_counters
    JSL stop_all_sounds

    LDA #$0001 : STA !ram_cm_leave

    RTL
}


; ---------------
; Sprite Features
; ---------------

SpritesMenu:
    dw #sprites_samus_prio
    dw #sprites_show_samus_hitbox
    dw #sprites_show_enemy_hitbox
    dw #sprites_show_extended_hitbox
    dw #sprites_show_custom_boss_hitbox
    dw #sprites_show_samusproj_hitbox
    dw #sprites_show_enemyproj_hitbox
    dw #sprites_show_proj_as_32x32
    dw #sprites_oob_viewer
    dw #$0000
    %cm_header("SPRITE FEATURES")

sprites_samus_prio:
    %cm_toggle_bit("Samus on Top", !sram_sprite_prio_flag, #$3000, #0)

sprites_show_samus_hitbox:
    %cm_toggle_bit("Show Samus Hitbox", !ram_sprite_feature_flags, !SPRITE_SAMUS_HITBOX, #0)

sprites_show_enemy_hitbox:
    %cm_toggle_bit("Normal Enemy Hitboxes", !ram_sprite_feature_flags, !SPRITE_ENEMY_HITBOX, #0)

sprites_show_extended_hitbox:
    %cm_toggle_bit("Large Enemy Hitboxes", !ram_sprite_feature_flags, !SPRITE_EXTENDED_HITBOX, #0)

sprites_show_custom_boss_hitbox:
    %cm_toggle_bit("Special Boss Hitboxes", !ram_sprite_feature_flags, !SPRITE_BOSS_HITBOX, #0)

sprites_show_samusproj_hitbox:
    %cm_toggle_bit("Samus Projectile Hitbox", !ram_sprite_feature_flags, !SPRITE_SAMUS_PROJ, #0)

sprites_show_enemyproj_hitbox:
    %cm_toggle_bit("Enemy Projectile Hitbox", !ram_sprite_feature_flags, !SPRITE_ENEMY_PROJ, #0)

sprites_show_proj_as_32x32:
    %cm_toggle_bit("32x32 Projectile Boxes", !ram_sprite_feature_flags, !SPRITE_32x32_PROJ, #0)

sprites_oob_viewer:
    %cm_toggle_bit("OoB Tile Viewer", !ram_sprite_feature_flags, !SPRITE_OOB_WATCH, .routine)
  .routine
    LDA !ram_sprite_feature_flags : BIT !SPRITE_OOB_WATCH : BEQ .skip_oob
    JML upload_sprite_oob_tiles
  .skip_oob
    RTL


; --------------
; Infohud menu
; --------------

if !FEATURE_VANILLAHUD
else
InfoHudMenu:
    dw #ih_goto_display_mode
    dw #ih_display_mode
    dw #ih_goto_room_strat
    dw #ih_room_strat
    dw #ih_goto_superhud
    dw #ih_superhud_bottom_selector
    dw #ih_display_mode_reward
    dw #$FFFF
    dw #ih_door_display_mode
    dw #ih_goto_timer_settings
    dw #$FFFF
    dw #ih_minimap
    dw #ih_top_HUD_mode
    dw #ih_dynamic_frames_held
    dw #ih_status_icons
if !PRESERVE_WRAM_DURING_SPACETIME
    dw #ih_spacetime_infohud
endif
    dw #ih_lag
    dw #$FFFF
    dw #ih_ram_watch
    dw #$0000
    %cm_header("INFOHUD")

ih_goto_display_mode:
    %cm_submenu("Select InfoHUD Mode", #DisplayModeMenu)

DisplayModeMenu:
    dw ihmode_enemyhp
    dw ihmode_roomstrat
    dw ihmode_chargetimer
    dw ihmode_xfactor
    dw ihmode_cooldown
    dw ihmode_shinetimer
    dw ihmode_dashcounter
    dw ihmode_shinetune
    dw ihmode_iframecounter
    dw ihmode_spikesuit
    dw ihmode_lagcounter
    dw ihmode_cpuusage
    dw ihmode_hspeed
    dw ihmode_dashspeed
    dw ihmode_vspeed
    dw ihmode_quickdrop
    dw ihmode_walljump
    dw #$FFFF
    dw ihmode_goto_page2
    dw #$0000
    %cm_header("INFOHUD DISPLAY MODE")

DisplayModeMenu2:
    dw ihmode_countdamage
    dw ihmode_armpump
    dw ihmode_pumpcounter
    dw ihmode_xpos
    dw ihmode_ypos
    dw ihmode_shottimer
    dw ihmode_ramwatch
    dw #$FFFF
    dw ihmode_goto_page1
    dw #$0000
    %cm_header("INFOHUD DISPLAY MODE")

; Enemy HP must always be the first display mode option
ihmode_enemyhp:
    %cm_jsl("Enemy HP", #action_select_infohud_mode, #$0000)

ihmode_roomstrat:
!IH_MODE_ROOMSTRAT_INDEX = #$0001
    %cm_jsl("Room Strat", #action_select_infohud_mode, #$0001)

ihmode_chargetimer:
    %cm_jsl("Charge Timer", #action_select_infohud_mode, #$0002)

ihmode_xfactor:
    %cm_jsl("X-Factor Timer", #action_select_infohud_mode, #$0003)

ihmode_cooldown:
    %cm_jsl("Cooldown Timer", #action_select_infohud_mode, #$0004)

ihmode_shinetimer:
    %cm_jsl("Shinespark Timer", #action_select_infohud_mode, #$0005)

ihmode_dashcounter:
    %cm_jsl("Dash Counter", #action_select_infohud_mode, #$0006)

ihmode_shinetune:
!IH_MODE_SHINETUNE_INDEX = #$0007
    %cm_jsl("Shine Tune", #action_select_infohud_mode, #$0007)

ihmode_iframecounter:
    %cm_jsl("I-Frame Counter", #action_select_infohud_mode, #$0008)

ihmode_spikesuit:
    %cm_jsl("Spikesuit Trainer", #action_select_infohud_mode, #$0009)

ihmode_lagcounter:
    %cm_jsl("Lag Counter", #action_select_infohud_mode, #$000A)

ihmode_cpuusage:
    %cm_jsl("CPU Usage", #action_select_infohud_mode, #$000B)

ihmode_hspeed:
    %cm_jsl("Horizontal Speed", #action_select_infohud_mode, #$000C)

ihmode_dashspeed:
    %cm_jsl("Dash Speed", #action_select_infohud_mode, #$000D)

ihmode_vspeed:
!IH_MODE_VSPEED_INDEX = #$000E
    %cm_jsl("Vertical Speed", #action_select_infohud_mode, #$000E)

ihmode_quickdrop:
    %cm_jsl("Quickdrop Trainer", #action_select_infohud_mode, #$000F)

ihmode_walljump:
!IH_MODE_WALLJUMP_INDEX = #$0010
    %cm_jsl("Walljump Trainer", #action_select_infohud_mode, #$0010)

ihmode_countdamage:
!IH_MODE_COUNTDAMAGE_INDEX = #$0011
    %cm_jsl("Boss Damage Counter", #action_select_infohud_mode, #$0011)

ihmode_armpump:
!IH_MODE_ARMPUMP_INDEX = #$0012
    %cm_jsl("Arm Pump Trainer", #action_select_infohud_mode, #$0012)

ihmode_pumpcounter:
    %cm_jsl("Arm Pump Counter", #action_select_infohud_mode, #$0013)

ihmode_xpos:
    %cm_jsl("X Position", #action_select_infohud_mode, #$0014)

ihmode_ypos:
    %cm_jsl("Y Position", #action_select_infohud_mode, #$0015)

ihmode_shottimer:
!IH_MODE_SHOTTIMER_INDEX = #$0016
    %cm_jsl("Shot Timer", #action_select_infohud_mode, #$0016)

ihmode_ramwatch:
!IH_MODE_RAMWATCH_INDEX = #$0017
    %cm_jsl("Custom RAM Watch", #action_select_infohud_mode, #$0017)

!IH_MODE_COUNT = #$0018
action_select_infohud_mode:
{
    TYA : STA !sram_display_mode
    JSL init_print_segment_timer
    JML cm_previous_menu
}

ihmode_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #DisplayModeMenu)

ihmode_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #DisplayModeMenu2)

ih_display_mode:
    dw !ACTION_CHOICE
    dl #!sram_display_mode
    dw #.routine
    db #$28, "Current Mode", #$FF
    db #$28, "   ENEMY HP", #$FF
    db #$28, " ROOM STRAT", #$FF
    db #$28, "     CHARGE", #$FF
    db #$28, "   X FACTOR", #$FF
    db #$28, "   COOLDOWN", #$FF
    db #$28, " SHINESPARK", #$FF
    db #$28, "       DASH", #$FF
    db #$28, " SHINE TUNE", #$FF
    db #$28, "   I FRAMES", #$FF
    db #$28, "  SPIKESUIT", #$FF
    db #$28, "LAG COUNTER", #$FF
    db #$28, "  CPU USAGE", #$FF
    db #$28, "HORIZ SPEED", #$FF
    db #$28, " DASH SPEED", #$FF
    db #$28, " VERT SPEED", #$FF
    db #$28, " QUICK DROP", #$FF
    db #$28, "  WALL JUMP", #$FF
    db #$28, "DMG COUNTER", #$FF
    db #$28, "   ARM PUMP", #$FF
    db #$28, " PUMP COUNT", #$FF
    db #$28, " X POSITION", #$FF
    db #$28, " Y POSITION", #$FF
    db #$28, " SHOT TIMER", #$FF
    db #$28, "  RAM WATCH", #$FF
    db #$FF
  .routine
    JML init_print_segment_timer

ih_display_mode_reward:
    %cm_toggle("Strat Reward SFX", !sram_display_mode_reward, #$01, #0)

ih_goto_room_strat:
    %cm_submenu("Select Room Strat", #RoomStratMenu)

RoomStratMenu:
    dw ihstrat_superhud
    dw ihstrat_ceresridley
    dw ihstrat_doorskip
    dw ihstrat_tacotank
    dw ihstrat_pitdoor
    dw ihstrat_moondance
    dw ihstrat_kraidradar
    dw ihstrat_bootlessup
    dw ihstrat_gateglitch
    dw ihstrat_moatcwj
    dw ihstrat_robotflush
    dw ihstrat_shinetopb
    dw ihstrat_elevatorcf
    dw ihstrat_botwooncf
    dw #$FFFF
    dw ihstrat_goto_page2
    dw #$0000
    %cm_header("INFOHUD ROOM STRAT")
    %cm_footer("ROOM STRAT MUST BE ACTIVE")

RoomStratMenu2:
    dw ihstrat_draygonai
    dw ihstrat_snailclip
    dw ihstrat_wasteland
    dw ihstrat_ridleyai
    dw ihstrat_kihuntermanip
    dw ihstrat_downbackzeb
    dw ihstrat_zebskip
    dw ihstrat_mbhp
    dw ihstrat_twocries
    dw #$FFFF
    dw ihstrat_goto_page1
    dw #$0000
    %cm_header("INFOHUD ROOM STRAT")
    %cm_footer("ROOM STRAT MUST BE ACTIVE")

; Super HUD must always be the first room strat option
ihstrat_superhud:
    %cm_jsl("Super HUD", #action_select_room_strat, #$0000)

ihstrat_ceresridley:
    %cm_jsl("Ceres Ridley Hits", #action_select_room_strat, #$0001)

ihstrat_doorskip:
    %cm_jsl("Parlor-Climb Door Skip", #action_select_room_strat, #$0002)

ihstrat_tacotank:
    %cm_jsl("Taco Tank", #action_select_room_strat, #$0003)

ihstrat_pitdoor:
    %cm_jsl("Pit Room Right Door", #action_select_room_strat, #$0004)

ihstrat_moondance:
    %cm_jsl("Moondance", #action_select_room_strat, #$0005)

ihstrat_kraidradar:
    %cm_jsl("Kraid Nail Radar", #action_select_room_strat, #$0006)

ihstrat_bootlessup:
    %cm_jsl("Bootless Up In Two", #action_select_room_strat, #$0007)

ihstrat_gateglitch:
    %cm_jsl("Gate Glitch", #action_select_room_strat, #$0008)

ihstrat_moatcwj:
    %cm_jsl("Moat CWJ", #action_select_room_strat, #$0009)

ihstrat_robotflush:
    %cm_jsl("Robot Flush", #action_select_room_strat, #$000A)

ihstrat_shinetopb:
    %cm_jsl("Shine to PB", #action_select_room_strat, #$000B)

ihstrat_elevatorcf:
    %cm_jsl("Elevator Crystal Flash", #action_select_room_strat, #$000C)

ihstrat_botwooncf:
    %cm_jsl("Botwoon Crystal Flash", #action_select_room_strat, #$000D)

ihstrat_draygonai:
    %cm_jsl("Draygon AI", #action_select_room_strat, #$000E)

ihstrat_snailclip:
    %cm_jsl("Aqueduct Snail Clip", #action_select_room_strat, #$000F)

ihstrat_wasteland:
    %cm_jsl("Wasteland Entry", #action_select_room_strat, #$0010)

ihstrat_ridleyai:
    %cm_jsl("Ridley AI", #action_select_room_strat, #$0011)

ihstrat_kihuntermanip:
    %cm_jsl("Kihunter Manipulation", #action_select_room_strat, #$0012)

ihstrat_downbackzeb:
    %cm_jsl("Downback Zeb Skip", #action_select_room_strat, #$0013)

ihstrat_zebskip:
    %cm_jsl("Zeb Skip Indicator", #action_select_room_strat, #$0014)

ihstrat_mbhp:
!IH_STRAT_MBHP_INDEX = #$0015
    %cm_jsl("Mother Brain HP", #action_select_room_strat, #$0015)

ihstrat_twocries:
    %cm_jsl("Two Cries Standup", #action_select_room_strat, #$0016)

!IH_ROOM_STRAT_COUNT = #$0017
action_select_room_strat:
{
    TYA : STA !sram_room_strat
    ; enable ROOM STRAT mode
    LDA !IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
    JSL init_print_segment_timer
    JML cm_previous_menu
}

ihstrat_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #RoomStratMenu)

ihstrat_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #RoomStratMenu2)

ih_room_strat:
    dw !ACTION_CHOICE
    dl #!sram_room_strat
    dw #.routine
    db #$28, "Current Strat", #$FF
    db #$28, "  SUPER HUD", #$FF
    db #$28, " CERES HITS", #$FF
    db #$28, "  DOOR SKIP", #$FF
    db #$28, "  TACO TANK", #$FF
    db #$28, "   PIT DOOR", #$FF
    db #$28, "  MOONDANCE", #$FF
    db #$28, "KRAID RADAR", #$FF
    db #$28, "BOOTLESS ", #$81, #$22, #$FF
    db #$28, "GATE GLITCH", #$FF
    db #$28, "   MOAT CWJ", #$FF
    db #$28, "ROBOT FLUSH", #$FF
    db #$28, "SHINE TO PB", #$FF
    db #$28, "ELEVATOR CF", #$FF
    db #$28, " BOTWOON CF", #$FF
    db #$28, " DRAYGON AI", #$FF
    db #$28, " SNAIL CLIP", #$FF
    db #$28, "  WASTELAND", #$FF
    db #$28, "  RIDLEY AI", #$FF
    db #$28, "   KIHUNTER", #$FF
    db #$28, "  DBACK ZEB", #$FF
    db #$28, "   ZEB SKIP", #$FF
    db #$28, "      MB HP", #$FF
    db #$28, "  TWO CRIES", #$FF
    db #$FF
  .routine
    LDA !IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
    JML init_print_segment_timer

ih_goto_superhud:
    %cm_submenu("Configure Super HUD", #SuperHUDMenu)

SuperHUDMenu:
    dw #ih_superhud_bottom_selector
    dw #ih_superhud_bottom_submenu
    dw #$FFFF
    dw #ih_superhud_middle_selector
    dw #ih_superhud_middle_submenu
    dw #$FFFF
    dw #ih_superhud_top_selector
    dw #ih_superhud_top_submenu
    dw #$FFFF
    dw #ih_superhud_enable
    dw #$0000
    %cm_header("CONFIGURE SUPER HUD")

ih_superhud_bottom_selector:
    dw !ACTION_CHOICE
    dl #!sram_superhud_bottom
    dw #$0000
    db #$28, "Current Bottom", #$FF
    db #$28, "   ENEMY HP", #$FF
    db #$28, "     CHARGE", #$FF
    db #$28, "   X FACTOR", #$FF
    db #$28, "   COOLDOWN", #$FF
    db #$28, " SHINESPARK", #$FF
    db #$28, "       DASH", #$FF
    db #$28, " SHINE TUNE", #$FF
    db #$28, "   I FRAMES", #$FF
    db #$28, "  SPIKESUIT", #$FF
    db #$28, "LAG COUNTER", #$FF
    db #$28, "  CPU USAGE", #$FF
    db #$28, "HORIZ SPEED", #$FF
    db #$28, " DASH SPEED", #$FF
    db #$28, " VERT SPEED", #$FF
    db #$28, " QUICK DROP", #$FF
    db #$28, "  WALL JUMP", #$FF
    db #$28, "DMG COUNTER", #$FF
    db #$28, "   ARM PUMP", #$FF
    db #$28, " PUMP COUNT", #$FF
    db #$28, " X POSITION", #$FF
    db #$28, " Y POSITION", #$FF
    db #$28, " SHOT TIMER", #$FF
    db #$28, "  RAM WATCH", #$FF
    db #$28, " CERES HITS", #$FF
    db #$28, "  DOOR SKIP", #$FF
    db #$28, "  TACO TANK", #$FF
    db #$28, "   PIT DOOR", #$FF
    db #$28, "  MOONDANCE", #$FF
    db #$28, "KRAID RADAR", #$FF
    db #$28, "BOOTLESS ", #$81, #$22, #$FF
    db #$28, "GATE GLITCH", #$FF
    db #$28, "   MOAT CWJ", #$FF
    db #$28, "ROBOT FLUSH", #$FF
    db #$28, "SHINE TO PB", #$FF
    db #$28, "ELEVATOR CF", #$FF
    db #$28, " BOTWOON CF", #$FF
    db #$28, " DRAYGON AI", #$FF
    db #$28, " SNAIL CLIP", #$FF
    db #$28, "  WASTELAND", #$FF
    db #$28, "  RIDLEY AI", #$FF
    db #$28, "   KIHUNTER", #$FF
    db #$28, "  DBACK ZEB", #$FF
    db #$28, "   ZEB SKIP", #$FF
    db #$28, "      MB HP", #$FF
    db #$28, "  TWO CRIES", #$FF
    db #$FF

ih_superhud_bottom_submenu:
    %cm_submenu("Bottom HUD List", #SuperHUDBottomMenu)

SuperHUDBottomMenu:
    dw ih_superhud_enemyhp
    dw ih_superhud_chargetimer
    dw ih_superhud_xfactor
    dw ih_superhud_cooldown
    dw ih_superhud_shinetimer
    dw ih_superhud_dashcounter
    dw ih_superhud_shinetune
    dw ih_superhud_iframecounter
    dw ih_superhud_spikesuit
    dw ih_superhud_lagcounter
    dw ih_superhud_cpuusage
    dw ih_superhud_hspeed
    dw ih_superhud_dashspeed
    dw ih_superhud_vspeed
    dw ih_superhud_quickdrop
    dw ih_superhud_walljump
    dw ih_superhud_countdamage
    dw #$FFFF
    dw ih_superhud_goto_page2
    dw ih_superhud_goto_page3
    dw #$0000
    %cm_header("SUPER HUD BOTTOM MODE")

SuperHUDBottomMenu2:
    dw ih_superhud_armpump
    dw ih_superhud_pumpcounter
    dw ih_superhud_xpos
    dw ih_superhud_ypos
    dw ih_superhud_shottimer
    dw ih_superhud_ramwatch
    dw ih_superhud_ceresridley
    dw ih_superhud_doorskip
    dw ih_superhud_tacotank
    dw ih_superhud_pitdoor
    dw ih_superhud_moondance
    dw ih_superhud_kraidradar
    dw ih_superhud_bootlessup
    dw ih_superhud_gateglitch
    dw ih_superhud_moatcwj
    dw ih_superhud_robotflush
    dw ih_superhud_shinetopb
    dw #$FFFF
    dw ih_superhud_goto_page1
    dw ih_superhud_goto_page3
    dw #$0000
    %cm_header("SUPER HUD BOTTOM MODE")

SuperHUDBottomMenu3:
    dw ih_superhud_elevatorcf
    dw ih_superhud_botwooncf
    dw ih_superhud_draygonai
    dw ih_superhud_snailclip
    dw ih_superhud_wasteland
    dw ih_superhud_ridleyai
    dw ih_superhud_kihuntermanip
    dw ih_superhud_downbackzeb
    dw ih_superhud_zebskip
    dw ih_superhud_mbhp
    dw ih_superhud_twocries
    dw #$FFFF
    dw ih_superhud_goto_page2
    dw ih_superhud_goto_page3
    dw #$0000
    %cm_header("SUPER HUD BOTTOM MODE")

; Enemy HP must always be the first Super HUD bottom option
ih_superhud_enemyhp:
    %cm_jsl("Enemy HP", #action_select_superhud_bottom, #$0000)

ih_superhud_chargetimer:
    %cm_jsl("Charge Timer", #action_select_superhud_bottom, #$0001)

ih_superhud_xfactor:
    %cm_jsl("X-Factor Timer", #action_select_superhud_bottom, #$0002)

ih_superhud_cooldown:
    %cm_jsl("Cooldown Timer", #action_select_superhud_bottom, #$0003)

ih_superhud_shinetimer:
    %cm_jsl("Shinespark Timer", #action_select_superhud_bottom, #$0004)

ih_superhud_dashcounter:
    %cm_jsl("Dash Counter", #action_select_superhud_bottom, #$0005)

ih_superhud_shinetune:
!IH_SUPERHUD_SHINETUNE_BOTTOM_INDEX = #$0006
    %cm_jsl("Shine Tune", #action_select_superhud_bottom, #$0006)

ih_superhud_iframecounter:
    %cm_jsl("I-Frame Counter", #action_select_superhud_bottom, #$0007)

ih_superhud_spikesuit:
    %cm_jsl("Spikesuit Trainer", #action_select_superhud_bottom, #$0008)

ih_superhud_lagcounter:
    %cm_jsl("Lag Counter", #action_select_superhud_bottom, #$0009)

ih_superhud_cpuusage:
    %cm_jsl("CPU Usage", #action_select_superhud_bottom, #$000A)

ih_superhud_hspeed:
    %cm_jsl("Horizontal Speed", #action_select_superhud_bottom, #$000B)

ih_superhud_dashspeed:
    %cm_jsl("Dash Speed", #action_select_superhud_bottom, #$000C)

ih_superhud_vspeed:
    %cm_jsl("Vertical Speed", #action_select_superhud_bottom, #$000D)

ih_superhud_quickdrop:
    %cm_jsl("Quickdrop Trainer", #action_select_superhud_bottom, #$000E)

ih_superhud_walljump:
!IH_SUPERHUD_WALLJUMP_BOTTOM_INDEX = #$000F
    %cm_jsl("Walljump Trainer", #action_select_superhud_bottom, #$000F)

ih_superhud_countdamage:
!IH_SUPERHUD_COUNTDAMAGE_BOTTOM_INDEX = #$0010
    %cm_jsl("Boss Damage Counter", #action_select_superhud_bottom, #$0010)

ih_superhud_armpump:
!IH_SUPERHUD_ARMPUMP_BOTTOM_INDEX = #$0011
    %cm_jsl("Arm Pump Trainer", #action_select_superhud_bottom, #$0011)

ih_superhud_pumpcounter:
    %cm_jsl("Arm Pump Counter", #action_select_superhud_bottom, #$0012)

ih_superhud_xpos:
    %cm_jsl("X Position", #action_select_superhud_bottom, #$0013)

ih_superhud_ypos:
    %cm_jsl("Y Position", #action_select_superhud_bottom, #$0014)

ih_superhud_shottimer:
!IH_SUPERHUD_SHOTTIMER_BOTTOM_INDEX = #$0015
    %cm_jsl("Shot Timer", #action_select_superhud_bottom, #$0015)

ih_superhud_ramwatch:
!IH_SUPERHUD_RAMWATCH_BOTTOM_INDEX = #$0016
    %cm_jsl("Custom RAM Watch", #action_select_superhud_bottom, #$0016)

ih_superhud_ceresridley:
    %cm_jsl("Ceres Ridley Hits", #action_select_superhud_bottom, #$0017)

ih_superhud_doorskip:
    %cm_jsl("Parlor-Climb Door Skip", #action_select_superhud_bottom, #$0018)

ih_superhud_tacotank:
    %cm_jsl("Taco Tank", #action_select_superhud_bottom, #$0019)

ih_superhud_pitdoor:
    %cm_jsl("Pit Room Right Door", #action_select_superhud_bottom, #$001A)

ih_superhud_moondance:
    %cm_jsl("Moondance", #action_select_superhud_bottom, #$001B)

ih_superhud_kraidradar:
    %cm_jsl("Kraid Nail Radar", #action_select_superhud_bottom, #$001C)

ih_superhud_bootlessup:
    %cm_jsl("Bootless Up In Two", #action_select_superhud_bottom, #$001D)

ih_superhud_gateglitch:
    %cm_jsl("Gate Glitch", #action_select_superhud_bottom, #$001E)

ih_superhud_moatcwj:
    %cm_jsl("Moat CWJ", #action_select_superhud_bottom, #$001F)

ih_superhud_robotflush:
    %cm_jsl("Robot Flush", #action_select_superhud_bottom, #$0020)

ih_superhud_shinetopb:
    %cm_jsl("Shine to PB", #action_select_superhud_bottom, #$0021)

ih_superhud_elevatorcf:
    %cm_jsl("Elevator Crystal Flash", #action_select_superhud_bottom, #$0022)

ih_superhud_botwooncf:
    %cm_jsl("Botwoon Crystal Flash", #action_select_superhud_bottom, #$0023)

ih_superhud_draygonai:
    %cm_jsl("Draygon AI", #action_select_superhud_bottom, #$0024)

ih_superhud_snailclip:
    %cm_jsl("Aqueduct Snail Clip", #action_select_superhud_bottom, #$0025)

ih_superhud_wasteland:
    %cm_jsl("Wasteland Entry", #action_select_superhud_bottom, #$0026)

ih_superhud_ridleyai:
    %cm_jsl("Ridley AI", #action_select_superhud_bottom, #$0027)

ih_superhud_kihuntermanip:
    %cm_jsl("Kihunter Manipulation", #action_select_superhud_bottom, #$0028)

ih_superhud_downbackzeb:
    %cm_jsl("Downback Zeb Skip", #action_select_superhud_bottom, #$0029)

ih_superhud_zebskip:
    %cm_jsl("Zeb Skip Indicator", #action_select_superhud_bottom, #$002A)

ih_superhud_mbhp:
!IH_SUPERHUD_MBHP_BOTTOM_INDEX = #$002B
    %cm_jsl("Mother Brain HP", #action_select_superhud_bottom, #$002B)

ih_superhud_twocries:
    %cm_jsl("Two Cries Standup", #action_select_superhud_bottom, #$002C)

!IH_SUPERHUD_BOTTOM_COUNT = #$002D
action_select_superhud_bottom:
{
    TYA : STA !sram_superhud_bottom
    JML cm_previous_menu
}

ih_superhud_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #SuperHUDBottomMenu)

ih_superhud_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #SuperHUDBottomMenu2)

ih_superhud_goto_page3:
    %cm_adjacent_submenu("GOTO PAGE THREE", #SuperHUDBottomMenu3)

ih_superhud_middle_selector:
    dw !ACTION_CHOICE
    dl #!sram_superhud_middle
    dw #$0000
    db #$28, "Current Middle", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "     CHARGE", #$FF
    db #$28, "   X FACTOR", #$FF
    db #$28, "   COOLDOWN", #$FF
    db #$28, " SHINESPARK", #$FF
    db #$28, "       DASH", #$FF
    db #$28, "   I FRAMES", #$FF
    db #$28, "LAG COUNTER", #$FF
    db #$28, "  CPU USAGE", #$FF
    db #$28, "HORIZ SPEED", #$FF
    db #$28, " DASH SPEED", #$FF
    db #$28, " SHOT TIMER", #$FF
    db #$28, "     ITEM %", #$FF
    db #$28, "   RESERVES", #$FF
    db #$28, "STATUS ICON", #$FF
    db #$28, "  MAP TILES", #$FF
    db #$FF

ih_superhud_middle_submenu:
    %cm_submenu("Middle HUD List", #SuperHUDMiddleMenu)

SuperHUDMiddleMenu:
    dw ih_superhud_middle_off
    dw ih_superhud_middle_chargetimer
    dw ih_superhud_middle_xfactor
    dw ih_superhud_middle_cooldown
    dw ih_superhud_middle_shinetimer
    dw ih_superhud_middle_dashcounter
    dw ih_superhud_middle_iframecounter
    dw ih_superhud_middle_lagcounter
    dw ih_superhud_middle_cpuusage
    dw ih_superhud_middle_hspeed
    dw ih_superhud_middle_dashspeed
    dw ih_superhud_middle_shottimer
    dw ih_superhud_middle_itempercent
    dw ih_superhud_middle_reserves
    dw ih_superhud_middle_statusicons
    dw ih_superhud_middle_tilecounter
    dw #$0000
    %cm_header("SUPER HUD MIDDLE MODE")

ih_superhud_middle_off:
    %cm_jsl("Disabled", #action_select_superhud_middle, #$0000)

ih_superhud_middle_chargetimer:
    %cm_jsl("Charge Timer", #action_select_superhud_middle, #$0001)

ih_superhud_middle_xfactor:
    %cm_jsl("X-Factor Timer", #action_select_superhud_middle, #$0002)

ih_superhud_middle_cooldown:
    %cm_jsl("Cooldown Timer", #action_select_superhud_middle, #$0003)

ih_superhud_middle_shinetimer:
    %cm_jsl("Shinespark Timer", #action_select_superhud_middle, #$0004)

ih_superhud_middle_dashcounter:
    %cm_jsl("Dash Counter", #action_select_superhud_middle, #$0005)

ih_superhud_middle_iframecounter:
    %cm_jsl("I-Frame Counter", #action_select_superhud_middle, #$0006)

!IH_SUPERHUD_LAG_COUNTER_MIDDLE_INDEX = #$0007
ih_superhud_middle_lagcounter:
    %cm_jsl("Lag Counter", #action_select_superhud_middle, #$0007)

ih_superhud_middle_cpuusage:
    %cm_jsl("CPU Usage", #action_select_superhud_middle, #$0008)

ih_superhud_middle_hspeed:
    %cm_jsl("Horizontal Speed", #action_select_superhud_middle, #$0009)

ih_superhud_middle_dashspeed:
    %cm_jsl("Dash Speed", #action_select_superhud_middle, #$000A)

ih_superhud_middle_shottimer:
    %cm_jsl("Shot Timer", #action_select_superhud_middle, #$000B)

ih_superhud_middle_itempercent:
    %cm_jsl("Item Collection %", #action_select_superhud_middle, #$000C)

ih_superhud_middle_reserves:
    %cm_jsl("Reserves", #action_select_superhud_middle, #$000D)

ih_superhud_middle_statusicons:
    %cm_jsl("Status Icons", #action_select_superhud_middle, #$000E)

ih_superhud_middle_tilecounter:
    %cm_jsl("Map Tile Counter", #action_select_superhud_middle, #$000F)

action_select_superhud_middle:
{
    TYA : STA !sram_superhud_middle
    JML cm_previous_menu
}

ih_superhud_top_selector:
    dw !ACTION_CHOICE
    dl #!sram_superhud_top
    dw #$0000
    db #$28, "Current Top   ", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "     CHARGE", #$FF
    db #$28, "   X FACTOR", #$FF
    db #$28, "   COOLDOWN", #$FF
    db #$28, " SHINESPARK", #$FF
    db #$28, "       DASH", #$FF
    db #$28, "   I FRAMES", #$FF
    db #$28, "LAG COUNTER", #$FF
    db #$28, "  CPU USAGE", #$FF
    db #$28, "HORIZ SPEED", #$FF
    db #$28, " DASH SPEED", #$FF
    db #$28, " SHOT TIMER", #$FF
    db #$28, "     ITEM %", #$FF
    db #$28, "   RESERVES", #$FF
    db #$28, "STATUS ICON", #$FF
    db #$28, "  MAP TILES", #$FF
    db #$FF

ih_superhud_top_submenu:
    %cm_submenu("Top HUD List", #SuperHUDTopMenu)

SuperHUDTopMenu:
    dw ih_superhud_top_off
    dw ih_superhud_top_chargetimer
    dw ih_superhud_top_xfactor
    dw ih_superhud_top_cooldown
    dw ih_superhud_top_shinetimer
    dw ih_superhud_top_dashcounter
    dw ih_superhud_top_iframecounter
    dw ih_superhud_top_lagcounter
    dw ih_superhud_top_cpuusage
    dw ih_superhud_top_hspeed
    dw ih_superhud_top_dashspeed
    dw ih_superhud_top_shottimer
    dw ih_superhud_top_itempercent
    dw ih_superhud_top_reserves
    dw ih_superhud_top_statusicons
    dw ih_superhud_top_tilecounter
    dw #$0000
    %cm_header("SUPER HUD TOP MODE")

ih_superhud_top_off:
    %cm_jsl("Disabled", #action_select_superhud_top, #$0000)

ih_superhud_top_chargetimer:
    %cm_jsl("Charge Timer", #action_select_superhud_top, #$0001)

ih_superhud_top_xfactor:
    %cm_jsl("X-Factor Timer", #action_select_superhud_top, #$0002)

ih_superhud_top_cooldown:
    %cm_jsl("Cooldown Timer", #action_select_superhud_top, #$0003)

ih_superhud_top_shinetimer:
    %cm_jsl("Shinespark Timer", #action_select_superhud_top, #$0004)

ih_superhud_top_dashcounter:
    %cm_jsl("Dash Counter", #action_select_superhud_top, #$0005)

ih_superhud_top_iframecounter:
    %cm_jsl("I-Frame Counter", #action_select_superhud_top, #$0006)

!IH_SUPERHUD_LAG_COUNTER_TOP_INDEX = #$0007
ih_superhud_top_lagcounter:
    %cm_jsl("Lag Counter", #action_select_superhud_top, #$0007)

ih_superhud_top_cpuusage:
    %cm_jsl("CPU Usage", #action_select_superhud_top, #$0008)

ih_superhud_top_hspeed:
    %cm_jsl("Horizontal Speed", #action_select_superhud_top, #$0009)

ih_superhud_top_dashspeed:
    %cm_jsl("Dash Speed", #action_select_superhud_top, #$000A)

ih_superhud_top_shottimer:
    %cm_jsl("Shot Timer", #action_select_superhud_top, #$000B)

ih_superhud_top_itempercent:
    %cm_jsl("Item Collection %", #action_select_superhud_top, #$000C)

ih_superhud_top_reserves:
    %cm_jsl("Reserves", #action_select_superhud_top, #$000D)

ih_superhud_top_statusicons:
    %cm_jsl("Status Icons", #action_select_superhud_top, #$000E)

ih_superhud_top_tilecounter:
    %cm_jsl("Map Tile Counter", #action_select_superhud_top, #$000F)

action_select_superhud_top:
{
    TYA : STA !sram_superhud_top
    JML cm_previous_menu
}

ih_superhud_enable:
    %cm_jsl("Enable Super HUD", .routine, !IH_MODE_ROOMSTRAT_INDEX)
  .routine
    TYA : STA !sram_display_mode
    TDC : STA !sram_room_strat
    %sfxconfirm()
    RTL

ih_door_display_mode:
    dw !ACTION_CHOICE
    dl #!sram_door_display_mode
    dw #$0000
    db #$28, "Door HUD Mode", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "HORIZ SPEED", #$FF
    db #$28, " DASH SPEED", #$FF
    db #$28, " VERT SPEED", #$FF
    db #$28, "     CHARGE", #$FF
    db #$28, "SHINE TIMER", #$FF
    db #$28, "DASHCOUNTER", #$FF
    db #$28, " X POSITION", #$FF
    db #$28, " Y POSITION", #$FF
    db #$FF

ih_goto_timer_settings:
    %cm_submenu("Timer Settings", #TimerSettingsMenu)
endif ; FEATURE_VANILLAHUD

TimerSettingsMenu:
    dw #ih_room_counter
    dw #ih_lag_counter
    dw #$FFFF
    dw #ih_auto_update_timers
    dw #$FFFF
    dw #ih_reset_seg_after_door
    dw #ih_reset_seg_item_touch
    dw #$0000
    %cm_header("TIMER SETTINGS")

ih_room_counter:
!FRAME_COUNTER_ADJUST_REALTIME = #$0002
    dw !ACTION_CHOICE
    dl #!sram_frame_counter_mode
    dw #$0000
    db #$28, "Frame Counters", #$FF
    db #$28, "   REALTIME", #$FF
    db #$28, "     INGAME", #$FF
    db #$28, "   SPEEDRUN", #$FF
    db #$FF

ih_lag_counter:
    dw !ACTION_CHOICE
    dl #!sram_lag_counter_mode
    dw #$0000
    db #$28, "Transition Lag", #$FF
    db #$28, "       DOOR", #$FF
    db #$28, "       FULL", #$FF
    db #$FF

ih_auto_update_timers:
    %cm_toggle_inverted("Auto Update Timers", !ram_timers_autoupdate, #$0001, #0)

ih_reset_seg_after_door:
    %cm_jsl("Reset Segment in Next Room", #.routine, #$0001)
  .routine
    TYA : STA !ram_reset_segment_later
    %sfxconfirm()
    RTL

ih_reset_seg_item_touch:
    %cm_jsl("Reset Segment on Item Touch", #ih_reset_seg_after_door_routine, #$8000)

if !FEATURE_VANILLAHUD
else
ih_minimap:
    %cm_toggle("Minimap", !ram_minimap, #$01, #0)

ih_top_HUD_mode:
!TOP_HUD_RESERVES_INDEX = #$0001
!TOP_HUD_VANILLA_BIT = #$0002
    dw !ACTION_CHOICE
    dl #!sram_top_display_mode
    dw #$0000
    db #$28, "Top-Left Displa", #$FF
    db #$28, "y    ITEM %", #$FF
    db #$28, "y  RESERVES", #$FF
    db #$28, "y  VANILLA+", #$FF
    db #$28, "y   VANILLA", #$FF
    db #$FF

ih_dynamic_frames_held:
    dw !ACTION_DYNAMIC
    dl #!sram_top_display_mode
    dw #ih_goto_frames_held
    dw #ih_goto_frames_held
    dw #$0000
    dw #$0000

ih_goto_frames_held:
    %cm_submenu("Frames Held Mode", #IHFramesHeldMenu)

IHFramesHeldMenu:
    dw #ih_frames_held_a
    dw #ih_frames_held_b
    dw #ih_frames_held_x
    dw #ih_frames_held_y
    dw #ih_frames_held_l
    dw #ih_frames_held_r
    dw #ih_frames_held_select
    dw #ih_frames_held_start
    dw #ih_frames_held_left
    dw #ih_frames_held_right
    dw #ih_frames_held_up
    dw #ih_frames_held_down
    dw #$0000
    %cm_header("FRAMES HELD MODE")

ih_frames_held_a:
    %cm_toggle_bit("A", !ram_frames_held, !CTRL_A, #0)

ih_frames_held_b:
    %cm_toggle_bit("B", !ram_frames_held, !CTRL_B, #0)

ih_frames_held_x:
    %cm_toggle_bit("X", !ram_frames_held, !CTRL_X, #0)

ih_frames_held_y:
    %cm_toggle_bit("Y", !ram_frames_held, !CTRL_Y, #0)

ih_frames_held_l:
    %cm_toggle_bit("L", !ram_frames_held, !CTRL_L, #0)

ih_frames_held_r:
    %cm_toggle_bit("R", !ram_frames_held, !CTRL_R, #0)

ih_frames_held_select:
    %cm_toggle_bit("Select", !ram_frames_held, !CTRL_SELECT, #0)

ih_frames_held_start:
    %cm_toggle_bit("Start", !ram_frames_held, !IH_INPUT_START, #0)

ih_frames_held_left:
    %cm_toggle_bit("Left", !ram_frames_held, !IH_INPUT_LEFT, #0)

ih_frames_held_right:
    %cm_toggle_bit("Right", !ram_frames_held, !IH_INPUT_RIGHT, #0)

ih_frames_held_up:
    %cm_toggle_bit("Up", !ram_frames_held, !IH_INPUT_UP, #0)

ih_frames_held_down:
    %cm_toggle_bit("Down", !ram_frames_held, !IH_INPUT_DOWN, #0)

ih_status_icons:
    %cm_toggle("Status Icons", !sram_status_icons, #$01, #.routine)
  .routine
    LDA !IH_BLANK : STA !HUD_TILEMAP+$54 : STA !HUD_TILEMAP+$56 : STA !HUD_TILEMAP+$58
    RTL

ih_spacetime_infohud:
    dw !ACTION_CHOICE
    dl #!ram_spacetime_infohud
    dw #$0000
    db #$28, "Spacetime HUD", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "  PRESERVED", #$FF
    db #$FF

ih_lag:
    %cm_numfield("Artificial Lag", !sram_artificial_lag, 0, 64, 1, 4, #0)

ih_ram_watch:
    %cm_jsl("Customize RAM Watch", #ih_prepare_ram_watch_menu, #RAMWatchMenu)

incsrc ramwatchmenu.asm
endif ; !FEATURE_VANILLAHUD


; ----------
; RNG menu
; ----------

RngMenu:
    dw #rng_goto_phantoon
    dw #rng_goto_ridley
    dw #rng_goto_botwoon
    dw #rng_goto_mb
    dw #$FFFF
    dw #rng_kraid_claw_rng
    dw #rng_kraid_wait_rng
    dw #$FFFF
    dw #rng_crocomire_rng
    dw #$FFFF
    dw #rng_draygon_rng_right
    dw #rng_draygon_rng_left
    dw #rng_turret_rng
    dw #$FFFF
    dw #rng_baby_rng
    dw #$FFFF
    dw #rng_drop_chances
    dw #$0000
    %cm_header("RNG CONTROL")

rng_goto_phantoon:
    %cm_jsl("Phantoon Menu", rng_prepare_phantoon_menu, #RngPhantoonMenu)

rng_goto_ridley:
    %cm_jsl("Ridley Menu", rng_prepare_ridley_menu, #RngRidleyMenu)

rng_goto_botwoon:
    %cm_jsl("Botwoon Menu", rng_prepare_botwoon_menu, #RngBotwoonMenu)

rng_goto_mb:
    %cm_jsl("Mother Brain Menu", rng_prepare_mb_menu, #RngMBMenu)

rng_kraid_claw_rng:
    dw !ACTION_CHOICE
    dl #!ram_kraid_claw_rng
    dw #$0000
    db #$28, "Kraid Claw RNG", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "      LAGGY", #$FF
    db #$28, "    LAGGIER", #$FF
    db #$FF

rng_kraid_wait_rng:
    dw !ACTION_CHOICE
    dl #!ram_kraid_wait_rng
    dw #$0000
    db #$28, "Kraid Wait RNG", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "         64", #$FF
    db #$28, "        128", #$FF
    db #$28, "        192", #$FF
    db #$28, "        256", #$FF
    db #$28, "        320", #$FF
    db #$28, "        384", #$FF
    db #$28, "        448", #$FF
    db #$FF

rng_crocomire_rng:
    dw !ACTION_CHOICE
    dl #!ram_crocomire_rng
    dw #$0000
    db #$28, "Crocomire RNG", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "       STEP", #$FF
    db #$28, "      SWIPE", #$FF
    db #$FF

rng_draygon_rng_right:
    dw !ACTION_CHOICE
    dl #!ram_draygon_rng_right
    dw #$0000
    db #$28, "Draygon from Ri", #$FF
    db #$28, "ght  RANDOM", #$FF
    db #$28, "ght    GOOP", #$FF
    db #$28, "ght   SWOOP", #$FF
    db #$FF

rng_draygon_rng_left:
    dw !ACTION_CHOICE
    dl #!ram_draygon_rng_left
    dw #$0000
    db #$28, "Draygon from Le", #$FF
    db #$28, "ft   RANDOM", #$FF
    db #$28, "ft     GOOP", #$FF
    db #$28, "ft    SWOOP", #$FF
    db #$FF

rng_turret_rng:
    dw !ACTION_CHOICE
    dl #!ram_cm_turret_rng
    dw .routine
    db #$28, "Draygon Turret ", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "     REROLL", #$FF
    db #$28, " AGGRESSIVE", #$FF
    db #$28, " UPPER LEFT", #$FF
    db #$28, " LOWER LEFT", #$FF
    db #$28, "UPPER RIGHT", #$FF
    db #$28, "LOWER RIGHT", #$FF
    db #$28, "       LEFT", #$FF
    db #$28, "      RIGHT", #$FF
    db #$28, "      UPPER", #$FF
    db #$28, "      LOWER", #$FF
    db #$28, "NOT UP LEFT", #$FF
    db #$28, "NOT DN LEFT", #$FF
    db #$28, "NOT UP RITE", #$FF
    db #$28, "NOT DN RITE", #$FF
    db #$FF
  .routine
    ASL : STA !ram_turret_rng
    RTL

rng_baby_rng:
    dw !ACTION_CHOICE
    dl #!ram_baby_rng
    dw #$0000
    db #$28, "Baby Skip RNG", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "   NO LUNGE", #$FF
    db #$28, "      LUNGE", #$FF
    db #$FF

rng_drop_chances:
    dw !ACTION_CHOICE
    dl #!ram_cm_drop_chances
    dw #.routine
    db #$28, "All Drops", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, " SMALL HEAL", #$FF
    db #$28, "   BIG HEAL", #$FF
    db #$28, "   MISSILES", #$FF
    db #$28, "    NOTHING", #$FF
    db #$28, "     SUPERS", #$FF
    db #$28, "POWER BOMBS", #$FF
    db #$FF
  .routine
    LDA !ram_cm_drop_chances : ASL : TAX
    LDA.l drop_chance_tables,X : STA !ram_drop_chance_table
    RTL


; --------------
; Phantoon Menu
; --------------

rng_prepare_phantoon_menu:
{
    LDA !ram_phantoon_phase_rng : PHA
    JSL rng_phan_set_phan_first_phase
    JSL rng_phan_set_phan_second_phase
    PLA : STA !ram_phantoon_phase_rng
    AND !PHANTOON_RNG_FLIP_MASK : ASL #2 : XBA : STA !ram_cm_phantoon_flip_rng
    LDA !ram_phantoon_eye_and_flames_rng : AND !PHANTOON_RNG_FLAMES_MASK
    STA !ram_cm_phantoon_flames_rng
    LDA !ram_phantoon_eye_and_flames_rng : AND !PHANTOON_RNG_FLAMES_PATH_MASK
    ASL #2 : XBA : STA !ram_cm_phantoon_flame_direction_rng
    LDA !ram_phantoon_eye_and_flames_rng : AND !PHANTOON_RNG_FLAMES_NEXT_MASK
    XBA : STA !ram_cm_phantoon_next_flames_rng
    LDA !ram_phantoon_eye_and_flames_rng : AND !PHANTOON_RNG_EYE_CLOSE_MASK
    XBA : ASL #2 : XBA : STA !ram_cm_phantoon_eyeclose_rng
    %setmenubank()
    JML action_submenu
}

RngPhantoonMenu:
    dw #rng_phan_first_phase
    dw #rng_phan_fast_left_1
    dw #rng_phan_mid_left_1
    dw #rng_phan_slow_left_1
    dw #rng_phan_fast_right_1
    dw #rng_phan_mid_right_1
    dw #rng_phan_slow_right_1
    dw #rng_phan_second_phase
    dw #rng_phan_fast_left_2
    dw #rng_phan_mid_left_2
    dw #rng_phan_slow_left_2
    dw #rng_phan_fast_right_2
    dw #rng_phan_mid_right_2
    dw #rng_phan_slow_right_2
    dw #rng_phan_second_phase_flip
    dw #$FFFF
    dw #rng_phan_eyeclose
    dw #rng_phan_flamepattern
    dw #rng_phan_next_flamepattern
    dw #rng_phan_flame_direction
    dw #rng_phan_always_visible
    dw #$0000
    %cm_header("PHANTOON RNG CONTROL")

rng_phan_first_phase:
    dw !ACTION_CHOICE
    dl #!ram_cm_phantoon_first_phase_rng
    dw .routine
    db #$28, "Phan 1st Phase", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "  FAST LEFT", #$FF
    db #$28, "   MID LEFT", #$FF
    db #$28, "  SLOW LEFT", #$FF
    db #$28, " FAST RIGHT", #$FF
    db #$28, "  MID RIGHT", #$FF
    db #$28, " SLOW RIGHT", #$FF
    db #$28, "       FAST", #$FF
    db #$28, "        MID", #$FF
    db #$28, "       SLOW", #$FF
    db #$28, "   NO FASTS", #$FF
    db #$28, "    NO MIDS", #$FF
    db #$28, "   NO SLOWS", #$FF
    db #$28, "       LEFT", #$FF
    db #$28, "      RIGHT", #$FF
    db #$28, "     CUSTOM", #$FF
    db #$FF
  .routine
    ASL : TAX
    LDA !ram_phantoon_phase_rng : AND !PHANTOON_RNG_PHASE_1_INVERTED
    STA !ram_phantoon_phase_rng
    LDA.l rng_phan_phase_1_table,X
    ORA !ram_phantoon_phase_rng : STA !ram_phantoon_phase_rng
  .check_flames
    ; If first round pattern is random or #1 Left or #1 Right, update it
    LDA !ram_cm_phantoon_flames_rng : BEQ .update_flames
    CMP #$0005 : BMI .done_flames
  .update_flames
    LDA !ram_phantoon_phase_rng : AND !PHANTOON_RNG_PHASE_1_MASK
    BEQ .set_random : AND #$0015 : BEQ .set_left
    LDA !ram_phantoon_phase_rng : AND #$002A : BEQ .set_right
  .set_random
    LDA #$0000 : STA !ram_cm_phantoon_flames_rng
    JMP rng_phan_flamepattern_routine
  .set_left
    LDA #$0005 : STA !ram_cm_phantoon_flames_rng
    JMP rng_phan_flamepattern_routine
  .set_right
    LDA #$0006 : STA !ram_cm_phantoon_flames_rng
    JMP rng_phan_flamepattern_routine
  .done_flames
    LDA !ROOM_ID : CMP.w #ROOM_PhantoonRoom : BNE .done
    JML init_phantoon_rng
  .done
    RTL

rng_phan_second_phase:
    dw !ACTION_CHOICE
    dl #!ram_cm_phantoon_second_phase_rng
    dw .routine
    db #$28, "Phan 2nd Phase", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "  FAST LEFT", #$FF
    db #$28, "   MID LEFT", #$FF
    db #$28, "  SLOW LEFT", #$FF
    db #$28, " FAST RIGHT", #$FF
    db #$28, "  MID RIGHT", #$FF
    db #$28, " SLOW RIGHT", #$FF
    db #$28, "       FAST", #$FF
    db #$28, "        MID", #$FF
    db #$28, "       SLOW", #$FF
    db #$28, "   NO FASTS", #$FF
    db #$28, "    NO MIDS", #$FF
    db #$28, "   NO SLOWS", #$FF
    db #$28, "       LEFT", #$FF
    db #$28, "      RIGHT", #$FF
    db #$28, "     CUSTOM", #$FF
    db #$FF
  .routine
    ASL : TAX
    ; Either set flip off or back to vanilla when changing second phase
    ; By default assume vanilla
    TDC : STA !ram_cm_phantoon_flip_rng
    LDA !ram_phantoon_phase_rng : AND !PHANTOON_RNG_PHASE_2_FLIP_INVERTED
    STA !ram_phantoon_phase_rng
    LDA.l rng_phan_phase_2_table,X
    ORA !ram_phantoon_phase_rng : STA !ram_phantoon_phase_rng
    LDA.l rng_phan_phase_2_table,X
    BEQ .done_flip : TXA : BEQ .done_flip
    ; If setting phase 2 to non-vanilla value then turn flip off
    LDA #$0002 : STA !ram_cm_phantoon_flip_rng
    LDA !ram_phantoon_phase_rng : ORA #$0080 : STA !ram_phantoon_phase_rng
  .done_flip
    LDA !ROOM_ID : CMP.w #ROOM_PhantoonRoom : BNE .done
    JML init_phantoon_rng
  .done
    RTL

rng_phan_phase_1_table:
    dw #$003F, #$0020, #$0008, #$0002, #$0010, #$0004, #$0001, #$0030
    dw #$000C, #$0003, #$000F, #$0033, #$003C, #$002A, #$0015, #$0000

rng_phan_phase_2_table:
    dw #$3F00, #$2000, #$0800, #$0200, #$1000, #$0400, #$0100, #$3000
    dw #$0C00, #$0300, #$0F00, #$3300, #$3C00, #$2A00, #$1500, #$0000

rng_phan_set_phan_first_phase:
{
    LDX #$0000
    LDA !ram_phantoon_phase_rng : AND !PHANTOON_RNG_PHASE_1_MASK
    BEQ .end_first_loop
  .first_loop
    CMP.l rng_phan_phase_1_table,X : BEQ .end_first_loop
    INX #2 : CPX #$001E : BNE .first_loop
  .end_first_loop
    TXA : LSR : STA !ram_cm_phantoon_first_phase_rng
    JMP rng_phan_first_phase_check_flames
}

rng_phan_set_phan_second_phase:
{
    ; Either set flip off or back to vanilla when changing second phase
    ; By default assume vanilla
    TDC : TAX : STA !ram_cm_phantoon_flip_rng
    LDA !ram_phantoon_phase_rng : AND !PHANTOON_RNG_FLIP_INVERTED
    STA !ram_phantoon_phase_rng : AND !PHANTOON_RNG_PHASE_2_MASK
    BEQ .end_second_loop
  .second_loop
    CMP.l rng_phan_phase_2_table,X : BEQ .end_second_loop
    INX #2 : CPX #$001E : BNE .second_loop
  .end_second_loop
    TXA : LSR : STA !ram_cm_phantoon_second_phase_rng
    BEQ .done_flip : TXA : BEQ .done_flip
    ; If setting phase 2 to non-vanilla value then turn flip off
    LDA #$0002 : STA !ram_cm_phantoon_flip_rng
    LDA !ram_phantoon_phase_rng : ORA #$0080 : STA !ram_phantoon_phase_rng
  .done_flip
    LDA !ROOM_ID : CMP.w #ROOM_PhantoonRoom : BNE .done
    JML init_phantoon_rng
  .done
    RTL
}

rng_phan_always_visible:
    %cm_toggle_bit("Always Visible", !ram_phantoon_phase_rng, !PHANTOON_RNG_VISIBLE_BIT, rng_phan_set_phan_second_phase_done_flip)

rng_phan_fast_left_1:
    %cm_toggle_bit("#1 Fast Left", !ram_phantoon_phase_rng, #$0020, rng_phan_set_phan_first_phase)

rng_phan_mid_left_1:
    %cm_toggle_bit("#1 Mid  Left", !ram_phantoon_phase_rng, #$0008, rng_phan_set_phan_first_phase)

rng_phan_slow_left_1:
    %cm_toggle_bit("#1 Slow Left", !ram_phantoon_phase_rng, #$0002, rng_phan_set_phan_first_phase)

rng_phan_fast_right_1:
    %cm_toggle_bit("#1 Fast Right", !ram_phantoon_phase_rng, #$0010, rng_phan_set_phan_first_phase)

rng_phan_mid_right_1:
    %cm_toggle_bit("#1 Mid  Right", !ram_phantoon_phase_rng, #$0004, rng_phan_set_phan_first_phase)

rng_phan_slow_right_1:
    %cm_toggle_bit("#1 Slow Right", !ram_phantoon_phase_rng, #$0001, rng_phan_set_phan_first_phase)

rng_phan_fast_left_2:
    %cm_toggle_bit("#2 Fast Left", !ram_phantoon_phase_rng, #$2000, rng_phan_set_phan_second_phase)

rng_phan_mid_left_2:
    %cm_toggle_bit("#2 Mid  Left", !ram_phantoon_phase_rng, #$0800, rng_phan_set_phan_second_phase)

rng_phan_slow_left_2:
    %cm_toggle_bit("#2 Slow Left", !ram_phantoon_phase_rng, #$0200, rng_phan_set_phan_second_phase)

rng_phan_fast_right_2:
    %cm_toggle_bit("#2 Fast Right", !ram_phantoon_phase_rng, #$1000, rng_phan_set_phan_second_phase)

rng_phan_mid_right_2:
    %cm_toggle_bit("#2 Mid  Right", !ram_phantoon_phase_rng, #$0400, rng_phan_set_phan_second_phase)

rng_phan_slow_right_2:
    %cm_toggle_bit("#2 Slow Right", !ram_phantoon_phase_rng, #$0100, rng_phan_set_phan_second_phase)

rng_phan_second_phase_flip:
    dw !ACTION_CHOICE
    dl #!ram_cm_phantoon_flip_rng
    dw #.routine
    db #$28, "2nd Phase Flip", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "         ON", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "     RANDOM", #$FF
    db #$FF
  .routine
    LDA !ram_phantoon_phase_rng : AND !PHANTOON_RNG_FLIP_INVERTED
    STA !ram_phantoon_phase_rng
    LDA !ram_cm_phantoon_flip_rng : XBA : LSR #2
    ORA !ram_phantoon_phase_rng : STA !ram_phantoon_phase_rng
    LDA !ROOM_ID : CMP.w #ROOM_PhantoonRoom : BNE .done
    JML init_phantoon_rng
  .done
    RTL

rng_phan_eyeclose:
    dw !ACTION_CHOICE
    dl #!ram_cm_phantoon_eyeclose_rng
    dw #.routine
    db #$28, "Phan Eye Close", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "       SLOW", #$FF
    db #$28, "        MID", #$FF
    db #$28, "       FAST", #$FF
    db #$FF
  .routine
    LDA !ram_phantoon_eye_and_flames_rng : AND !PHANTOON_RNG_EYE_CLOSE_INVERTED
    STA !ram_phantoon_eye_and_flames_rng
    LDA !ram_cm_phantoon_eyeclose_rng : XBA : LSR #2 : XBA
    ORA !ram_phantoon_eye_and_flames_rng : STA !ram_phantoon_eye_and_flames_rng
    LDA !ROOM_ID : CMP.w #ROOM_PhantoonRoom : BNE .done
    JML init_phantoon_rng
  .done
    RTL

rng_phan_flamepattern:
    dw !ACTION_CHOICE
    dl #!ram_cm_phantoon_flames_rng
    dw #.routine
    db #$28, "Phantoon Flames", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "      22222", #$FF
    db #$28, "        111", #$FF
    db #$28, "    3333333", #$FF
    db #$28, "    1424212", #$FF
    db #$28, "    #1 LEFT", #$FF
    db #$28, "   #1 RIGHT", #$FF
    db #$FF
  .routine
    LDA !ram_phantoon_eye_and_flames_rng : AND !PHANTOON_RNG_FLAMES_INVERTED
    ORA !ram_cm_phantoon_flames_rng : STA !ram_phantoon_eye_and_flames_rng
    LDA !ROOM_ID : CMP.w #ROOM_PhantoonRoom : BNE .done
    JML init_phantoon_rng
  .done
    RTL

rng_phan_next_flamepattern:
    dw !ACTION_CHOICE
    dl #!ram_cm_phantoon_next_flames_rng
    dw #.routine
    db #$28, "Next Flames", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "      22222", #$FF
    db #$28, "        111", #$FF
    db #$28, "    3333333", #$FF
    db #$28, "    1424212", #$FF
    db #$FF
  .routine
    LDA !ram_phantoon_eye_and_flames_rng : AND !PHANTOON_RNG_FLAMES_NEXT_INVERTED
    STA !ram_phantoon_eye_and_flames_rng
    LDA !ram_cm_phantoon_next_flames_rng : XBA
    ORA !ram_phantoon_eye_and_flames_rng : STA !ram_phantoon_eye_and_flames_rng
    LDA !ROOM_ID : CMP.w #ROOM_PhantoonRoom : BNE .done
    JML init_phantoon_rng
  .done
    RTL

rng_phan_flame_direction:
    dw !ACTION_CHOICE
    dl #!ram_cm_phantoon_flame_direction_rng
    dw #.routine
    db #$28, "Flame Direction", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "       LEFT", #$FF
    db #$28, "      RIGHT", #$FF
    db #$FF
  .routine
    LDA !ram_phantoon_eye_and_flames_rng : AND !PHANTOON_RNG_FLAMES_PATH_INVERTED
    STA !ram_phantoon_eye_and_flames_rng
    LDA !ram_cm_phantoon_flame_direction_rng : XBA : LSR #2
    ORA !ram_phantoon_eye_and_flames_rng : STA !ram_phantoon_eye_and_flames_rng
    LDA !ROOM_ID : CMP.w #ROOM_PhantoonRoom : BNE .done
    JML init_phantoon_rng
  .done
    RTL


; --------------
; Ridley Menu
; --------------

rng_prepare_ridley_menu:
{
    LDA !ram_ridley_rng_flags : AND !RIDLEY_RNG_CERES_MASK
    STA !ram_cm_ridley_ceres_ai_rng
    LDA !ram_ridley_rng_flags : AND !RIDLEY_RNG_POGO_HEIGHT_MASK
    LSR #3 : STA !ram_cm_ridley_pogo_height_rng
    LDA !ram_ridley_rng_flags : AND !RIDLEY_RNG_75_25_MASK
    ASL #2 : XBA : STA !ram_cm_ridley_lunge_pogo_rng
    LDA !ram_ridley_rng_flags : AND !RIDLEY_RNG_BACKPOGO_MASK
    XBA : STA !ram_cm_ridley_backpogo_rng
    LDA !ram_ridley_rng_flags : AND !RIDLEY_RNG_50_50_MASK
    XBA : ASL #2 : XBA : STA !ram_cm_ridley_swoop_pogo_rng
    LDA !ram_ridley_rng_times_and_fireball : AND !RIDLEY_RNG_HOVER_TIME_MASK
    STA !ram_cm_ridley_hover_time_value_rng : BEQ .set_hover
    TDC : INC
  .set_hover
    STA !ram_cm_ridley_hover_time_rng
    LDA !ram_ridley_rng_times_and_fireball : AND !RIDLEY_RNG_FIREBALL_MASK
    ASL #2 : XBA : STA !ram_cm_ridley_hover_fireball_rng
    LDA !ram_ridley_rng_times_and_fireball : AND !RIDLEY_RNG_POGO_TIME_MASK
    XBA : STA !ram_cm_ridley_pogo_time_value_rng : BEQ .set_pogo
    TDC : INC
  .set_pogo
    STA !ram_cm_ridley_pogo_time_rng
    %setmenubank()
    JML action_submenu
}

RngRidleyMenu:
    dw #rng_ridley_ceres_ai
    dw #$FFFF
    dw #rng_ridley_lunge_pogo
    dw #rng_ridley_swoop_pogo
    dw #rng_ridley_backpogo
    dw #rng_ridley_pogo_height
    dw #$FFFF
    dw #rng_ridley_pogo_time
    dw #rng_ridley_pogo_time_dynamic
    dw #rng_ridley_hover_time
    dw #rng_ridley_hover_time_dynamic
    dw #rng_ridley_hover_fireball
    dw #$0000
    %cm_header("RIDLEY RNG CONTROL")

rng_ridley_ceres_ai:
    dw !ACTION_CHOICE
    dl #!ram_cm_ridley_ceres_ai_rng
    dw #.routine
    db #$28, "Ceres Ridley AI", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "   FIREBALL", #$FF
    db #$28, "      LUNGE", #$FF
    db #$28, "      SWOOP", #$FF
    db #$FF
  .routine
    LDA !ram_ridley_rng_flags : AND !RIDLEY_RNG_CERES_INVERTED
    ORA !ram_cm_ridley_ceres_ai_rng : STA !ram_ridley_rng_flags
    LDA !ROOM_ID : CMP.w #ROOM_CeresRidleyRoom : BNE .done
    JML init_ceres_ridley_rng
  .done
    RTL

rng_ridley_lunge_pogo:
    dw !ACTION_CHOICE
    dl #!ram_cm_ridley_lunge_pogo_rng
    dw #.routine
    db #$28, "75/25 Lunge/Pog", #$FF
    db #$28, "o   VANILLA", #$FF
    db #$28, "o     LUNGE", #$FF
    db #$28, "o      POGO", #$FF
    db #$FF
  .routine
    LDA !ram_ridley_rng_flags : AND !RIDLEY_RNG_75_25_INVERTED
    STA !ram_ridley_rng_flags
    LDA !ram_cm_ridley_lunge_pogo_rng : XBA : LSR #2
    ORA !ram_ridley_rng_flags : STA !ram_ridley_rng_flags
    LDA !ROOM_ID : CMP.w #ROOM_RidleyRoom : BNE .done
    JML init_zebes_ridley_rng
  .done
    RTL

rng_ridley_swoop_pogo:
    dw !ACTION_CHOICE
    dl #!ram_cm_ridley_swoop_pogo_rng
    dw #.routine
    db #$28, "50/50 Swoop/Pog", #$FF
    db #$28, "o   VANILLA", #$FF
    db #$28, "o     SWOOP", #$FF
    db #$28, "o      POGO", #$FF
    db #$FF
  .routine
    LDA !ram_ridley_rng_flags : AND !RIDLEY_RNG_50_50_INVERTED
    STA !ram_ridley_rng_flags
    LDA !ram_cm_ridley_swoop_pogo_rng : XBA : LSR #2 : XBA
    ORA !ram_ridley_rng_flags : STA !ram_ridley_rng_flags
    LDA !ROOM_ID : CMP.w #ROOM_RidleyRoom : BNE .done
    JML init_zebes_ridley_rng
  .done
    RTL

rng_ridley_backpogo:
    dw !ACTION_CHOICE
    dl #!ram_cm_ridley_backpogo_rng
    dw #.routine
    db #$28, "Backpogo", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "        MAX", #$FF
    db #$28, "         2x", #$FF
    db #$28, "         3x", #$FF
    db #$28, "         4x", #$FF
    db #$28, "         5x", #$FF
    db #$28, "         6x", #$FF
    db #$28, "         7x", #$FF
    db #$28, "         8x", #$FF
    db #$28, "         9x", #$FF
    db #$28, "        10x", #$FF
    db #$28, "        11x", #$FF
    db #$28, "        12x", #$FF
    db #$28, "        13x", #$FF
    db #$28, "        14x", #$FF
    db #$28, "        15x", #$FF
    db #$28, "        16x", #$FF
    db #$28, "        17x", #$FF
    db #$28, "        18x", #$FF
    db #$28, "        19x", #$FF
    db #$28, "        20x", #$FF
    db #$28, "        21x", #$FF
    db #$28, "        22x", #$FF
    db #$28, "        23x", #$FF
    db #$28, "        24x", #$FF
    db #$28, "        25x", #$FF
    db #$28, "        26x", #$FF
    db #$28, "        27x", #$FF
    db #$28, "        28x", #$FF
    db #$28, "        29x", #$FF
    db #$28, "        30x", #$FF
    db #$28, "        31x", #$FF
    db #$28, "        32x", #$FF
    db #$28, "        33x", #$FF
    db #$28, "        34x", #$FF
    db #$28, "        35x", #$FF
    db #$28, "        36x", #$FF
    db #$28, "        37x", #$FF
    db #$28, "        38x", #$FF
    db #$28, "        39x", #$FF
    db #$28, "        40x", #$FF
    db #$28, "        41x", #$FF
    db #$28, "        42x", #$FF
    db #$28, "        43x", #$FF
    db #$28, "        44x", #$FF
    db #$28, "        45x", #$FF
    db #$28, "        46x", #$FF
    db #$28, "        47x", #$FF
    db #$28, "        48x", #$FF
    db #$FF
  .routine
    LDA !ram_ridley_rng_flags : AND !RIDLEY_RNG_BACKPOGO_INVERTED
    STA !ram_ridley_rng_flags
    LDA !ram_cm_ridley_backpogo_rng : XBA
    ORA !ram_ridley_rng_flags : STA !ram_ridley_rng_flags
    LDA !ROOM_ID : CMP.w #ROOM_RidleyRoom : BNE .done
    JML init_zebes_ridley_rng
  .done
    RTL

rng_ridley_pogo_height:
    dw !ACTION_CHOICE
    dl #!ram_cm_ridley_pogo_height_rng
    dw #.routine
    db #$28, "Pogo Height", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "     LOWEST", #$FF
    db #$28, "      LOWER", #$FF
    db #$28, "     HIGHER", #$FF
    db #$28, "    HIGHEST", #$FF
    db #$FF
  .routine
    LDA !ram_ridley_rng_flags : AND !RIDLEY_RNG_POGO_HEIGHT_INVERTED
    STA !ram_ridley_rng_flags
    LDA !ram_cm_ridley_pogo_height_rng : ASL #3
    ORA !ram_ridley_rng_flags : STA !ram_ridley_rng_flags
    LDA !ROOM_ID : CMP.w #ROOM_RidleyRoom : BNE .done
    JML init_zebes_ridley_rng
  .done
    RTL

rng_ridley_pogo_time:
    dw !ACTION_CHOICE
    dl #!ram_cm_ridley_pogo_time_rng
    dw #.routine
    db #$28, "Pogo Time", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "      FIXED", #$FF
    db #$FF
  .routine
    LDA !ram_ridley_rng_times_and_fireball : AND !RIDLEY_RNG_POGO_TIME_INVERTED
    STA !ram_ridley_rng_times_and_fireball
    LDA !ram_cm_ridley_pogo_time_rng : BEQ .set_value
    LDA !ram_cm_ridley_pogo_time_value_rng : BNE .set_value
    LDA #$0080 : STA !ram_cm_ridley_pogo_time_value_rng
  .set_value
    XBA : ORA !ram_ridley_rng_times_and_fireball : STA !ram_ridley_rng_times_and_fireball
    LDA !ROOM_ID : CMP.w #ROOM_RidleyRoom : BNE .done
    JML init_zebes_ridley_rng
  .done
    RTL

rng_ridley_pogo_time_dynamic:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_ridley_pogo_time_rng
    dw #$0000
    dw #rng_ridley_pogo_time_value

rng_ridley_pogo_time_value:
    %cm_numfield_word("Pogo Time Value", !ram_cm_ridley_pogo_time_value_rng, 128, 191, 1, 4, #.routine)
  .routine
    LDA !ram_ridley_rng_times_and_fireball : AND !RIDLEY_RNG_POGO_TIME_INVERTED
    STA !ram_ridley_rng_times_and_fireball
    LDA !ram_cm_ridley_pogo_time_value_rng : XBA
    ORA !ram_ridley_rng_times_and_fireball : STA !ram_ridley_rng_times_and_fireball
    LDA !ROOM_ID : CMP.w #ROOM_RidleyRoom : BNE .done
    JML init_zebes_ridley_rng
  .done
    RTL

rng_ridley_hover_time:
    dw !ACTION_CHOICE
    dl #!ram_cm_ridley_hover_time_rng
    dw #.routine
    db #$28, "Hover Time", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "      FIXED", #$FF
    db #$FF
  .routine
    LDA !ram_ridley_rng_times_and_fireball : AND !RIDLEY_RNG_HOVER_TIME_INVERTED
    STA !ram_ridley_rng_times_and_fireball
    LDA !ram_cm_ridley_hover_time_rng : BEQ .set_value
    LDA !ram_cm_ridley_hover_time_value_rng : BNE .set_value
    LDA #$0020 : STA !ram_cm_ridley_hover_time_value_rng
  .set_value
    ORA !ram_ridley_rng_times_and_fireball : STA !ram_ridley_rng_times_and_fireball
    LDA !ROOM_ID : CMP.w #ROOM_RidleyRoom : BNE .done
    JML init_zebes_ridley_rng
  .done
    RTL

rng_ridley_hover_time_dynamic:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_ridley_hover_time_rng
    dw #$0000
    dw #rng_ridley_hover_time_value

rng_ridley_hover_time_value:
    %cm_numfield_word("Hover Time Value", !ram_cm_ridley_hover_time_value_rng, 32, 63, 1, 4, #.routine)
  .routine
    LDA !ram_ridley_rng_times_and_fireball : AND !RIDLEY_RNG_HOVER_TIME_INVERTED
    ORA !ram_cm_ridley_hover_time_value_rng : STA !ram_ridley_rng_times_and_fireball
    LDA !ROOM_ID : CMP.w #ROOM_RidleyRoom : BNE .done
    JML init_zebes_ridley_rng
  .done
    RTL

rng_ridley_hover_fireball:
    dw !ACTION_CHOICE
    dl #!ram_cm_ridley_hover_fireball_rng
    dw #.routine
    db #$28, "Hover Fireball", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, " MORE OFTEN", #$FF
    db #$28, " LESS OFTEN", #$FF
    db #$FF
  .routine
    LDA !ram_ridley_rng_times_and_fireball : AND !RIDLEY_RNG_FIREBALL_INVERTED
    STA !ram_ridley_rng_times_and_fireball
    LDA !ram_cm_ridley_hover_fireball_rng : XBA : LSR #2
    ORA !ram_ridley_rng_times_and_fireball : STA !ram_ridley_rng_times_and_fireball
    LDA !ROOM_ID : CMP.w #ROOM_RidleyRoom : BNE .done
    JML init_zebes_ridley_rng
  .done
    RTL


; ------------
; Botwoon Menu
; ------------

rng_prepare_botwoon_menu:
{
    TDC : STA !ram_cm_botwoon_first_rng
    STA !ram_cm_botwoon_hidden_rng : STA !ram_cm_botwoon_second_rng
    LDA !ram_botwoon_rng : BIT !BOTWOON_RNG_FIRST_ENABLED : BEQ .botwoonHidden
    AND !BOTWOON_RNG_FIRST_VALUE : LSR #4 : INC
    STA !ram_cm_botwoon_first_rng : LDA !ram_botwoon_rng
  .botwoonHidden
    BIT !BOTWOON_RNG_HIDDEN_ENABLED : BEQ .botwoonSecond
    AND !BOTWOON_RNG_HIDDEN_VALUE : XBA : LSR #2 : INC
    STA !ram_cm_botwoon_hidden_rng : LDA !ram_botwoon_rng
  .botwoonSecond
    BIT !BOTWOON_RNG_SECOND_ENABLED : BEQ .botwoonSpit
    AND !BOTWOON_RNG_SECOND_VALUE : XBA : LSR #4 : INC
    STA !ram_cm_botwoon_second_rng : LDA !ram_botwoon_rng
  .botwoonSpit
    AND !BOTWOON_RNG_SPIT_MASK : LSR #2 : STA !ram_cm_botwoon_spit_rng
    LDA !ram_botwoon_rng : AND !BOTWOON_RNG_AFTER_SPIT_MASK
    BEQ .botwoonAfterSpit
    EOR !BOTWOON_RNG_AFTER_SPIT_ENABLED : INC
  .botwoonAfterSpit
    STA !ram_cm_botwoon_after_spit_rng
    %setmenubank()
    JML action_submenu
}

RngBotwoonMenu:
    dw #rng_botwoon_first
    dw #rng_botwoon_hidden
    dw #rng_botwoon_second
    dw #rng_botwoon_spit
    dw #rng_botwoon_after_spit
    dw #$0000
    %cm_header("BOTWOON RNG CONTROL")

rng_botwoon_first:
    dw !ACTION_CHOICE
    dl #!ram_cm_botwoon_first_rng
    dw #.routine
    db #$28, "Botwoon First", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "  LB BOTTOM", #$FF
    db #$28, "  LT    TOP", #$FF
    db #$28, "  LR  RIGHT", #$FF
    db #$28, "  LL   LEFT", #$FF
    db #$FF
  .routine
    LDA !ram_botwoon_rng : AND !BOTWOON_RNG_FIRST_INVERTED
    STA !ram_botwoon_rng
    LDA !ram_cm_botwoon_first_rng : BEQ .checkRoom
    ; possible values are $01, $09, $11, $19
    DEC : ASL #3 : INC : ASL
    ORA !ram_botwoon_rng : STA !ram_botwoon_rng
  .checkRoom
    LDA !ROOM_ID : CMP.w #ROOM_BotwoonRoom : BNE .done
    JML init_botwoon_rng
  .done
    RTL

rng_botwoon_hidden:
    dw !ACTION_CHOICE
    dl #!ram_cm_botwoon_hidden_rng
    dw #.routine
    db #$28, "Botwoon Hidden", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "LB BL TL RL", #$FF
    db #$28, "LT BT TB RB", #$FF
    db #$28, "LR BR TR RT", #$FF
    db #$FF
  .routine
    LDA !ram_botwoon_rng : AND !BOTWOON_RNG_HIDDEN_INVERTED
    STA !ram_botwoon_rng
    LDA !ram_cm_botwoon_hidden_rng : BEQ .checkRoom
    ; possible values are $01, $09, $11
    DEC : ASL #3 : INC : XBA : LSR
    ORA !ram_botwoon_rng : STA !ram_botwoon_rng
  .checkRoom
    LDA !ROOM_ID : CMP.w #ROOM_BotwoonRoom : BNE .done
    JML init_botwoon_rng
  .done
    RTL

rng_botwoon_second:
    dw !ACTION_CHOICE
    dl #!ram_cm_botwoon_second_rng
    dw #.routine
    db #$28, "Botwoon Second", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "LB BL TL RL", #$FF
    db #$28, "LT BT TB RB", #$FF
    db #$28, "LR BR TR RT", #$FF
    db #$28, "LL BB TT RR", #$FF
    db #$FF
  .routine
    LDA !ram_botwoon_rng : AND !BOTWOON_RNG_SECOND_INVERTED
    STA !ram_botwoon_rng
    LDA !ram_cm_botwoon_second_rng : BEQ .checkRoom
    ; possible values are $01, $09, $11, $19
    DEC : ASL #3 : INC : XBA : ASL
    ORA !ram_botwoon_rng : STA !ram_botwoon_rng
  .checkRoom
    LDA !ROOM_ID : CMP.w #ROOM_BotwoonRoom : BNE .done
    JML init_botwoon_rng
  .done
    RTL

rng_botwoon_spit:
    dw !ACTION_CHOICE
    dl #!ram_cm_botwoon_spit_rng
    dw #.routine
    db #$28, "Botwoon Spit", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, " NEVER SPIT", #$FF
    db #$28, "ALWAYS SPIT", #$FF
    db #$FF
  .routine
    LDA !ram_botwoon_rng : AND !BOTWOON_RNG_SPIT_INVERTED
    STA !ram_botwoon_rng
    LDA !ram_cm_botwoon_spit_rng : BEQ .checkRoom
    ; 0-4 = no spit, 6-E = spit
    ASL #2 : ORA !ram_botwoon_rng : STA !ram_botwoon_rng
  .checkRoom
    LDA !ROOM_ID : CMP.w #ROOM_BotwoonRoom : BNE .done
    JML init_botwoon_rng
  .done
    RTL

rng_botwoon_after_spit:
    dw !ACTION_CHOICE
    dl #!ram_cm_botwoon_after_spit_rng
    dw #.routine
    db #$28, "Botwoon After S", #$FF
    db #$28, "pit  RANDOM", #$FF
    db #$28, "pit    MOVE", #$FF
    db #$28, "pit    HIDE", #$FF
    db #$FF
  .routine
    LDA !ram_botwoon_rng : AND !BOTWOON_RNG_AFTER_SPIT_INVERTED
    STA !ram_botwoon_rng
    LDA !ram_cm_botwoon_after_spit_rng : BEQ .checkRoom
    DEC : ORA !BOTWOON_RNG_AFTER_SPIT_ENABLED
    ORA !ram_botwoon_rng : STA !ram_botwoon_rng
  .checkRoom
    LDA !ROOM_ID : CMP.w #ROOM_BotwoonRoom : BNE .done
    JML init_botwoon_rng
  .done
    RTL


; -----------------
; Mother Brain Menu
; -----------------

rng_prepare_mb_menu:
{
    LDA !ram_mb_rng : AND !MB_RNG_WALKING_MASK
    STA !ram_cm_mb_walking_rng
    LDA !ram_mb_rng : AND !MB_RNG_KETCHUP_MASK
    LSR #2 : STA !ram_cm_mb_ketchup_rng
    LDA !ram_mb_rng : AND !MB_RNG_DAMAGE_DOWN_MASK
    LSR #4 : STA !ram_cm_mb_damage_down_rng
    LDA !ram_mb_rng : AND !MB_RNG_PHASE3_ATTACK_MASK
    ASL : XBA : STA !ram_cm_mb_phase3_attack_rng
    LDA !ram_mb_rng : AND !MB_RNG_NORMAL_ATTACK_MASK
    LSR : XBA : STA !ram_cm_mb_normal_attack_rng
    LDA !ram_mb_rng : AND !MB_RNG_BOMB_CROUCH_MASK
    XBA : ASL #2 : XBA : STA !ram_cm_mb_bomb_crouch_rng
    %setmenubank()
    JML action_submenu
}

RngMBMenu:
    dw #rng_mb_walking
    dw #rng_mb_normal_attack
    dw #rng_mb_bomb_crouch
    dw #rng_mb_ketchup
    dw #$FFFF
    dw #rng_mb_damage_down
    dw #$FFFF
    dw #rng_mb_phase3_attack
    dw #$0000
    %cm_header("MOTHER BRAIN RNG CONTROL")

rng_mb_walking:
    dw !ACTION_CHOICE
    dl #!ram_cm_mb_walking_rng
    dw #.routine
    db #$28, "Phase 2 Walking", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "  MAXIMIZED", #$FF
    db #$28, "  MINIMIZED", #$FF
    db #$FF
  .routine
    LDA !ram_mb_rng : AND !MB_RNG_WALKING_INVERTED
    ORA !ram_cm_mb_walking_rng : STA !ram_mb_rng
    LDA !ROOM_ID : CMP.w #ROOM_MotherBrainRoom : BNE .done
    JML init_mb_rng_from_menu
  .done
    RTL

rng_mb_normal_attack:
    dw !ACTION_CHOICE
    dl #!ram_cm_mb_normal_attack_rng
    dw #.routine
    db #$28, "Phase 2 Attack", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "  MAX RINGS", #$FF
    db #$28, "  MAX BOMBS", #$FF
    db #$28, "  MAX FRIES", #$FF
    db #$28, "  MIN RINGS", #$FF
    db #$28, "  MIN BOMBS", #$FF
    db #$28, "  MIN FRIES", #$FF
    db #$28, "  MINIMIZED", #$FF
    db #$FF
  .routine
    LDA !ram_mb_rng : AND !MB_RNG_NORMAL_ATTACK_INVERTED
    STA !ram_mb_rng
    LDA !ram_cm_mb_normal_attack_rng : ASL : XBA
    ORA !ram_mb_rng : STA !ram_mb_rng
    LDA !ROOM_ID : CMP.w #ROOM_MotherBrainRoom : BNE .done
    JML init_mb_rng_from_menu
  .done
    RTL

rng_mb_bomb_crouch:
    dw !ACTION_CHOICE
    dl #!ram_cm_mb_bomb_crouch_rng
    dw #.routine
    db #$28, "Bomb Crouch", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "  MAXIMIZED", #$FF
    db #$28, "  MINIMIZED", #$FF
    db #$FF
  .routine
    LDA !ram_mb_rng : AND !MB_RNG_BOMB_CROUCH_INVERTED
    STA !ram_mb_rng
    LDA !ram_cm_mb_bomb_crouch_rng : XBA : LSR #2 : XBA
    ORA !ram_mb_rng : STA !ram_mb_rng
    LDA !ROOM_ID : CMP.w #ROOM_MotherBrainRoom : BNE .done
    JML init_mb_rng_from_menu
  .done
    RTL

rng_mb_ketchup:
    dw !ACTION_CHOICE
    dl #!ram_cm_mb_ketchup_rng
    dw #.routine
    db #$28, "Ketchup", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "  MAXIMIZED", #$FF
    db #$28, "  MINIMIZED", #$FF
    db #$FF
  .routine
    LDA !ram_mb_rng : AND !MB_RNG_KETCHUP_INVERTED
    STA !ram_mb_rng
    LDA !ram_cm_mb_ketchup_rng : ASL #2
    ORA !ram_mb_rng : STA !ram_mb_rng
    LDA !ROOM_ID : CMP.w #ROOM_MotherBrainRoom : BNE .done
    JML init_mb_rng_from_menu
  .done
    RTL

rng_mb_damage_down:
    dw !ACTION_CHOICE
    dl #!ram_cm_mb_damage_down_rng
    dw #.routine
    db #$28, "Damage Down", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "  MAX RINGS", #$FF
    db #$28, "  MAX BOMBS", #$FF
    db #$FF
  .routine
    LDA !ram_mb_rng : AND !MB_RNG_DAMAGE_DOWN_INVERTED
    STA !ram_mb_rng
    LDA !ram_cm_mb_damage_down_rng : ASL #4
    ORA !ram_mb_rng : STA !ram_mb_rng
    LDA !ROOM_ID : CMP.w #ROOM_MotherBrainRoom : BNE .done
    JML init_mb_rng_from_menu
  .done
    RTL

rng_mb_phase3_attack:
    dw !ACTION_CHOICE
    dl #!ram_cm_mb_phase3_attack_rng
    dw #.routine
    db #$28, "Phase 3 Attack", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "  MAX RINGS", #$FF
    db #$28, "  MAX BOMBS", #$FF
    db #$FF
  .routine
    LDA !ram_mb_rng : AND !MB_RNG_PHASE3_ATTACK_INVERTED
    STA !ram_mb_rng
    LDA !ram_cm_mb_phase3_attack_rng : XBA : LSR
    ORA !ram_mb_rng : STA !ram_mb_rng
    LDA !ROOM_ID : CMP.w #ROOM_MotherBrainRoom : BNE .done
    JML init_mb_rng_from_menu
  .done
    RTL


if !FEATURE_SD2SNES
; --------------
; Savestate Menu
; --------------

SavestateMenu:
    dw #save_rerandomize
    dw #save_freeze
    dw #save_middoorsave
    dw #save_alwayssave
    dw #$FFFF
    dw #save_rando_enable
    dw #save_rando_energy
    dw #save_rando_reserves
    dw #save_rando_missiles
    dw #save_rando_supers
    dw #save_rando_powerbombs
if !FEATURE_DEV
    dw #$FFFF
    dw #save_delete
endif
    dw #$0000
    %cm_header("SAVESTATE SETTINGS")

save_rerandomize:
    %cm_toggle("Rerandomize", !sram_rerandomize, #$01, #0)

save_freeze:
    %cm_toggle("Freeze on Load State", !ram_freeze_on_load, #$01, #0)

save_middoorsave:
    %cm_toggle_bit("Auto-Save Mid-Door", !ram_auto_save_state, #$0001, #0)

save_alwayssave:
    %cm_toggle_bit("Auto-Save Every Door", !ram_auto_save_state, #$8000, #0)

save_delete:
    %cm_jsl("DEV Delete Savestate", .routine, #$DEAD)
  .routine
    TYA : STA !SRAM_SAVED_STATE
    %sfxconfirm()
    RTL

save_rando_enable:
    %cm_toggle("Variance on Load State", !sram_loadstate_rando_enable, #$01, #0)

save_rando_energy:
    %cm_numfield_word("Energy Variance", !sram_loadstate_rando_energy, 0, 255, 1, 4, #0)

save_rando_reserves:
    %cm_numfield_word("Reserve Variance", !sram_loadstate_rando_reserves, 0, 255, 1, 4, #0)

save_rando_missiles:
    %cm_numfield_word("Missile Variance", !sram_loadstate_rando_missiles, 0, 230, 1, 4, #0)

save_rando_supers:
    %cm_numfield_word("Super Missile Variance", !sram_loadstate_rando_supers, 0, 50, 1, 2, #0)

save_rando_powerbombs:
    %cm_numfield_word("Power Bomb Variance", !sram_loadstate_rando_powerbombs, 0, 50, 1, 2, #0)
endif


; -------------
; Slowdown Mode
; -------------

SlowdownMenu:
    dw #slowdown_mode
    dw #slowdown_frames
    dw #$0000
    %cm_header("SLOWDOWN MODE")

slowdown_mode:
    dw !ACTION_CHOICE
    dl #!ram_cm_slowdown_mode
    dw #$0000
    db #$28, "Slowdown Mode", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "      PAUSE", #$FF
    db #$28, "   SLOWDOWN", #$FF
    db #$FF

slowdown_frames:
    %cm_numfield("Slowdown (Lag) Frames", !ram_cm_slowdown_frames, 0, 120, 1, 4, #0)


; ---------------
; Helper Routines
; ---------------

init_wram_based_on_sram:
{
    JSL init_suit_properties_ram
    JSL init_physics_ram
    JSL validate_sram
    JML init_print_segment_timer
}

GameLoopExtras:
{
    ; This allows us to maintain a baseline for CPU timing
    ; without restricting our ability to add non-essential features
    ; Set the flag if any of these features are enabled
    LDA !ram_magic_pants_enabled : BNE .enabled
    LDA !ram_space_pants_enabled : BNE .enabled
    LDA !ram_metronome : BNE .enabled
    LDA !ram_infinite_ammo

  .enabled
    STA !ram_game_loop_extras
    RTL
}

init_print_segment_timer:
{
if !FEATURE_VANILLAHUD
else
if !INFOHUD_ALWAYS_SHOW_X_Y
else
    ; Skip printing segment timer when shinetune or walljump or shot timer enabled
    LDA !sram_display_mode : CMP !IH_MODE_ROOMSTRAT_INDEX : BEQ .checkSuperHUD
    CMP !IH_MODE_SHINETUNE_INDEX : BEQ .skip
    CMP !IH_MODE_WALLJUMP_INDEX : BEQ .skip
    CMP !IH_MODE_SHOTTIMER_INDEX : BEQ .skip
  .print
    LDA !ram_print_segment_timer : ORA #$8000 : STA !ram_print_segment_timer
    RTL

  .checkSuperHUD
    LDA !sram_room_strat : BNE .print
    LDA !sram_superhud_bottom : CMP !IH_SUPERHUD_SHINETUNE_BOTTOM_INDEX : BEQ .skip
    CMP !IH_SUPERHUD_WALLJUMP_BOTTOM_INDEX : BEQ .skip
    CMP !IH_SUPERHUD_SHOTTIMER_BOTTOM_INDEX : BNE .print

  .skip
endif
endif
    LDA !ram_print_segment_timer : AND #$7FFF : STA !ram_print_segment_timer
    RTL
}

%endfree(B8)

