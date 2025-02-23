
org $B88000
print pc, " mainmenu start"

; ------------
; Menu Helpers
; ------------

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

action_presets_submenu:
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

    %sfxmove()
    JSL cm_calculate_max
    JSL cm_colors
    JSL cm_draw
    RTL
}

preset_category_submenus:
{
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
    dw #$0000
}

preset_category_banks:
{
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
    dw #mm_goto_ctrlsmenu
    dw #mm_goto_audiomenu
    dw #mm_goto_customize
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
    dw #CtrlMenu>>16
    dw #AudioMenu>>16
    dw #CustomizeMenu>>16

mm_goto_equipment:
    %cm_mainmenu("Equipment", #EquipmentMenu)

mm_goto_presets:
    %cm_jsl("Category Presets", #action_presets_submenu, #$0000)

mm_goto_presets_menu:
    %cm_jsl("Preset Options", #action_preset_options_mainmenu, #PresetOptionsMenu)

mm_goto_teleport:
    %cm_mainmenu("Teleport", #TeleportMenu)

mm_goto_events:
    %cm_mainmenu("Event Flags", #EventFlagsMenu)

mm_goto_misc:
    %cm_mainmenu("Misc", #MiscMenu)

if !FEATURE_VANILLAHUD
else
mm_goto_infohud:
    %cm_jsl("Infohud", #action_infohud_mainmenu, #InfoHudMenu)
endif

mm_goto_sprites:
    %cm_mainmenu("Sprite Features", #SpritesMenu)

mm_goto_layout:
    %cm_jsl("Room Layout", #action_layout_mainmenu, #LayoutMenu)

mm_goto_gamemenu:
    %cm_mainmenu("Game Options", #GameMenu)

mm_goto_rngmenu:
    %cm_mainmenu("RNG Control", #RngMenu)

if !FEATURE_SD2SNES
mm_goto_savestate:
    %cm_mainmenu("Savestate Settings", #SavestateMenu)
endif

mm_goto_timecontrol:
    %cm_mainmenu("Slowdown Mode", #SlowdownMenu)

mm_goto_ctrlsmenu:
    %cm_mainmenu("Controller Shortcuts", #CtrlMenu)

mm_goto_audiomenu:
    %cm_mainmenu("Audio Menu", #AudioMenu)

mm_goto_customize:
    %cm_jsl("Menu Customization", #action_customize_mainmenu, #CustomizeMenu)


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
    LDA !IH_CONTROLLER_PRI_NEW : BIT #$40C0 : BNE .submenu
    LDA !sram_last_preset : BMI .exit
    TDC : STA !sram_last_preset
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
    STA !ram_custom_preset
    LDA #$0001 : STA !ram_cm_leave
    RTL

presets_reload_last:
    %cm_jsl("Reload Last Preset", .routine, #$0001)
  .routine
    LDA !sram_last_preset : STA !ram_load_preset
    TYA : STA !ram_cm_leave
    RTL

presets_load_random:
    %cm_jsl("Load Random Preset", .routine, #$0001)
  .routine
    TYA : STA !ram_cm_leave
    JML LoadRandomPreset

if !FEATURE_DEV
presets_random_preset_rng:
    %cm_toggle("Presets In Order", !ram_random_preset_rng, #$0001, #0)
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
    dw #precat_14ice
    dw #precat_14speed
    dw #precat_rbo
    dw #precat_suitless
    dw #precat_ngplasma
    dw #precat_nghyper
    dw #precat_nintendopower
    dw #precat_allboss
    dw #$0000
    %cm_header("SELECT PRESET CATEGORY")

presets_current:
    dw !ACTION_CHOICE
    dl #!sram_preset_category
    dw #.routine
    db #$28, "CURRENT PRESET", #$FF
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
    db #$FF
  .routine
    TDC : STA !sram_last_preset
    RTL

precat_kpdr:
    %cm_submenu("KPDR", #SelectKpdrPresetCategoryMenu)

SelectKpdrPresetCategoryMenu:
    dw #precat_kpdr21
    dw #precat_kpdr22
    dw #precat_kpdr23
    dw #precat_kpdr25
    dw #$0000
    %cm_header("SELECT KPDR CATEGORY")

precat_kpdr21:
    %cm_jsl("21% KPDR 3 E-Tanks", #action_select_preset_category, #$0000)

precat_kpdr22:
    %cm_jsl("22% KPDR 4 E-Tanks", #action_select_preset_category, #$0001)

precat_kpdr23:
    %cm_jsl("23% KPDR with Spazer", #action_select_preset_category, #$0002)

precat_kpdr25:
    %cm_jsl("25% KPDR Early Ice", #action_select_preset_category, #$0003)

precat_prkd19:
    %cm_jsl("19% PRKD 15 Missiles", #action_select_preset_category, #$0004)

precat_prkd20:
    %cm_jsl("20% PRKD 20 Missiles", #action_select_preset_category, #$0005)

precat_pkrd:
    %cm_jsl("Any% PKRD", #action_select_preset_category, #$0006)

precat_gtclassic:
    %cm_jsl("GT Classic", #action_select_preset_category, #$0007)

precat_gtmax:
    %cm_jsl("GT Max%", #action_select_preset_category, #$0008)

precat_100early:
    %cm_jsl("100% Early Crocomire", #action_select_preset_category, #$0009)

precat_hundo:
    %cm_jsl("100% Late Crocomire", #action_select_preset_category, #$000A)

precat_100map:
!PRESET_CATEGORY_100MAP_INDEX = #$000B
    %cm_jsl("100% Map Completion", #action_select_preset_category, #$000B)

precat_14ice:
    %cm_jsl("14% Ice", #action_select_preset_category, #$000C)

precat_14speed:
    %cm_jsl("14% Speed", #action_select_preset_category, #$000D)

precat_rbo:
    %cm_jsl("Reverse Boss Order", #action_select_preset_category, #$000E)

precat_suitless:
    %cm_jsl("Max% Suitless", #action_select_preset_category, #$000F)

precat_ngplasma:
    %cm_jsl("NewGame+ Plasma", #action_select_preset_category, #$0010)

precat_nghyper:
    %cm_jsl("NewGame+ Hyper", #action_select_preset_category, #$0011)

precat_nintendopower:
    %cm_jsl("Nintendo Power%", #action_select_preset_category, #$0012)

precat_allboss:
    %cm_submenu("All Bosses", #SelectAllBossesPresetCategoryMenu)

SelectAllBossesPresetCategoryMenu:
    dw #precat_allbosskpdr
    dw #precat_allbosspkdr
    dw #precat_allbossprkd
    dw #$0000
    %cm_header("SELECT ALL BOSSES CATEGORY")

precat_allbosskpdr:
    %cm_jsl("All Bosses KPDR", #action_select_preset_category, #$0013)

precat_allbosspkdr:
    %cm_jsl("All Bosses PKDR", #action_select_preset_category, #$0014)

precat_allbossprkd:
    %cm_jsl("All Bosses PRKD", #action_select_preset_category, #$0015)

action_select_preset_category:
{
    ; category index in Y
    TYA : STA !sram_preset_category
    ; clear stale preset
    TDC : STA !sram_last_preset
    JML cm_previous_menu
}

action_load_preset:
{
    TYA : STA !ram_load_preset
    LDA #$0001 : STA !ram_cm_leave
    RTL
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
    JSL cm_previous_menu
    %setmenubank()
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
    %cm_jsl("GOTO PAGE ONE", .routine, #ManagePresetsMenu)
  .routine
    JSL cm_previous_menu
    %setmenubank()
    JML action_submenu

managepreset_goto_page2:
    %cm_jsl("GOTO PAGE TWO", managepreset_goto_page1_routine, #ManagePresetsMenu2)

managepreset_goto_page3:
    %cm_jsl("GOTO PAGE THREE", managepreset_goto_page1_routine, #ManagePresetsMenu3)
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
    dw #ih_display_mode_reward
    dw #$FFFF
    dw #ih_goto_room_strat
    dw #ih_room_strat
    dw #$FFFF
    dw #ih_door_display_mode
    dw #$FFFF
    dw #ih_goto_timer_settings
    dw #$FFFF
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
    dw ihmode_cooldowncounter
    dw ihmode_shinetimer
    dw ihmode_dashcounter
    dw ihmode_shinetune
    dw ihmode_iframecounter
    dw ihmode_spikesuit
    dw ihmode_lagcounter
    dw ihmode_cpuusage
    dw ihmode_hspeed
    dw ihmode_vspeed
    dw ihmode_quickdrop
    dw ihmode_walljump
    dw #$FFFF
    dw ihmode_goto_page2
    dw #$0000
    %cm_header("INFOHUD DISPLAY MODE")

DisplayModeMenu2:
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

ihmode_enemyhp:
    %cm_jsl("Enemy HP", #action_select_infohud_mode, #$0000)

ihmode_roomstrat:
!IH_MODE_ROOMSTRAT_INDEX = #$0001
    %cm_jsl("Room Strat", #action_select_infohud_mode, #$0001)

ihmode_chargetimer:
    %cm_jsl("Charge Timer", #action_select_infohud_mode, #$0002)

ihmode_xfactor:
    %cm_jsl("X-Factor Timer", #action_select_infohud_mode, #$0003)

ihmode_cooldowncounter:
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

ihmode_vspeed:
!IH_MODE_VSPEED_INDEX = #$000F
    %cm_jsl("Vertical Speed", #action_select_infohud_mode, #$000D)

ihmode_quickdrop:
    %cm_jsl("Quickdrop Trainer", #action_select_infohud_mode, #$000E)

ihmode_walljump:
!IH_MODE_WALLJUMP_INDEX = #$0011
    %cm_jsl("Walljump Trainer", #action_select_infohud_mode, #$000F)

ihmode_armpump:
!IH_MODE_ARMPUMP_INDEX = #$0012
    %cm_jsl("Arm Pump Trainer", #action_select_infohud_mode, #$0010)

ihmode_pumpcounter:
    %cm_jsl("Arm Pump Counter", #action_select_infohud_mode, #$0011)

ihmode_xpos:
    %cm_jsl("X Position", #action_select_infohud_mode, #$0012)

ihmode_ypos:
    %cm_jsl("Y Position", #action_select_infohud_mode, #$0013)

ihmode_shottimer:
    %cm_jsl("Shot Timer", #action_select_infohud_mode, #$0014)

ihmode_ramwatch:
!IH_MODE_RAMWATCH_INDEX = #$0015
    %cm_jsl("Custom RAM Watch", #action_select_infohud_mode, #$0015)

!IH_MODE_COUNT = #$0016
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
    db #$28, " VERT SPEED", #$FF
    db #$28, " QUICK DROP", #$FF
    db #$28, "  WALL JUMP", #$FF
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
    %cm_toggle("Strat Reward SFX", !sram_display_mode_reward, #$0001, #0)

ih_goto_room_strat:
    %cm_submenu("Select Room Strat", #RoomStratMenu)

RoomStratMenu:
    dw ihstrat_ceresridley
    dw ihstrat_doorskip
    dw ihstrat_tacotank
    dw ihstrat_pitdoor
    dw ihstrat_moondance
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
    dw ihstrat_mbhp
    dw ihstrat_twocries
    dw #$FFFF
    dw ihstrat_goto_page1
    dw #$0000
    %cm_header("INFOHUD ROOM STRAT")
    %cm_footer("ROOM STRAT MUST BE ACTIVE")

ihstrat_ceresridley:
    %cm_jsl("Ceres Ridley Hits", #action_select_room_strat, #$0000)

ihstrat_doorskip:
    %cm_jsl("Parlor-Climb Door Skip", #action_select_room_strat, #$0001)

ihstrat_tacotank:
    %cm_jsl("Taco Tank", #action_select_room_strat, #$0002)

ihstrat_pitdoor:
    %cm_jsl("Pit Room Right Door", #action_select_room_strat, #$0003)

ihstrat_moondance:
    %cm_jsl("Moondance", #action_select_room_strat, #$0004)

ihstrat_gateglitch:
    %cm_jsl("Gate Glitch", #action_select_room_strat, #$0005)

ihstrat_moatcwj:
    %cm_jsl("Moat CWJ", #action_select_room_strat, #$0006)

ihstrat_robotflush:
    %cm_jsl("Robot Flush", #action_select_room_strat, #$0007)

ihstrat_shinetopb:
    %cm_jsl("Shine to PB", #action_select_room_strat, #$0008)

ihstrat_elevatorcf:
    %cm_jsl("Elevator Crystal Flash", #action_select_room_strat, #$0009)

ihstrat_botwooncf:
    %cm_jsl("Botwoon Crystal Flash", #action_select_room_strat, #$000A)

ihstrat_draygonai:
    %cm_jsl("Draygon AI", #action_select_room_strat, #$000B)

ihstrat_snailclip:
    %cm_jsl("Aqueduct Snail Clip", #action_select_room_strat, #$000C)

ihstrat_wasteland:
    %cm_jsl("Wasteland Entry", #action_select_room_strat, #$000D)

ihstrat_ridleyai:
    %cm_jsl("Ridley AI", #action_select_room_strat, #$000E)

ihstrat_kihuntermanip:
    %cm_jsl("Kihunter Manipulation", #action_select_room_strat, #$000F)

ihstrat_downbackzeb:
    %cm_jsl("Downback Zeb Skip", #action_select_room_strat, #$0010)

ihstrat_mbhp:
!IH_STRAT_MBHP_INDEX = #$0010
    %cm_jsl("Mother Brain HP", #action_select_room_strat, #$0011)

ihstrat_twocries:
    %cm_jsl("Two Cries Standup", #action_select_room_strat, #$0012)

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
    db #$28, " CERES HITS", #$FF
    db #$28, "  DOOR SKIP", #$FF
    db #$28, "  TACO TANK", #$FF
    db #$28, "   PIT DOOR", #$FF
    db #$28, "  MOONDANCE", #$FF
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
    db #$28, "      MB HP", #$FF
    db #$28, "  TWO CRIES", #$FF
    db #$FF
  .routine
    LDA !IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
    JML init_print_segment_timer

ih_door_display_mode:
    dw !ACTION_CHOICE
    dl #!sram_door_display_mode
    dw #$0000
    db #$28, "Door HUD Mode", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "HORIZ SPEED", #$FF
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
    %cm_toggle("Status Icons", !sram_status_icons, #1, #.routine)
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
    dw #rng_goto_phanmenu
    dw #$FFFF
    dw #rng_botwoon_first
    dw #rng_botwoon_hidden
    dw #rng_botwoon_second
    dw #rng_botwoon_spit
    dw #$FFFF
    dw #rng_draygon_rng_right
    dw #rng_draygon_rng_left
    dw #$FFFF
    dw #rng_crocomire_rng
    dw #$FFFF
    dw #rng_kraid_claw_rng
    dw #rng_kraid_wait_rng
    dw #$FFFF
    dw #rng_baby_rng
    dw #$0000
    %cm_header("BOSS RNG CONTROL")

rng_goto_phanmenu:
    %cm_jsl("Phantoon Menu", ih_prepare_phantoon_menu, #PhantoonMenu)

rng_botwoon_first:
    dw !ACTION_CHOICE
    dl #!ram_cm_botwoon_first
    dw #.routine
    db #$28, "Botwoon First", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "  LB BOTTOM", #$FF
    db #$28, "  LT    TOP", #$FF
    db #$28, "  LR  RIGHT", #$FF
    db #$28, "  LL   LEFT", #$FF
    db #$FF
  .routine
    LDA !ram_cm_botwoon_first : BEQ .random
    ; possible values are $01, $09, $11, $19
    ; the 1s bit will be dropped, used here for convenience
    DEC : ASL #3 : INC
    STA !ram_botwoon_first : STA !ram_botwoon_rng
    RTL
  .random
    STA !ram_botwoon_first
    LDA !ram_botwoon_second : BNE .set_rng
    LDA !ram_botwoon_hidden
  .set_rng
    STA !ram_botwoon_rng
    RTL

rng_botwoon_hidden:
    dw !ACTION_CHOICE
    dl #!ram_cm_botwoon_hidden
    dw #.routine
    db #$28, "Botwoon Hidden", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "LB BL TL RL", #$FF
    db #$28, "LT BT TB RB", #$FF
    db #$28, "LR BR TR RT", #$FF
    db #$FF
  .routine
    LDA !ram_cm_botwoon_hidden : BEQ .random
    ; possible values are $01, $09, $11
    ; the 1s bit will be dropped, used here for convenience
    DEC : ASL #3 : INC
    STA !ram_botwoon_hidden : STA !ram_botwoon_rng
    RTL
  .random
    STA !ram_botwoon_hidden
    LDA !ram_botwoon_first : BNE .set_rng
    LDA !ram_botwoon_second
  .set_rng
    STA !ram_botwoon_rng
    RTL

rng_botwoon_second:
    dw !ACTION_CHOICE
    dl #!ram_cm_botwoon_second
    dw #.routine
    db #$28, "Botwoon Second", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "LB BL TL RL", #$FF
    db #$28, "LT BT TB RB", #$FF
    db #$28, "LR BR TR RT", #$FF
    db #$28, "LL BB TT RR", #$FF
    db #$FF
  .routine
    LDA !ram_cm_botwoon_second : BEQ .random
    ; possible values are $01, $09, $11, $19
    ; the 1s bit will be dropped, used here for convenience
    DEC : ASL #3 : INC
    STA !ram_botwoon_second : STA !ram_botwoon_rng
    RTL
  .random
    STA !ram_botwoon_second
    LDA !ram_botwoon_first : BNE .set_rng
    LDA !ram_botwoon_hidden
  .set_rng
    STA !ram_botwoon_rng
    RTL

rng_botwoon_spit:
    dw !ACTION_CHOICE
    dl #!ram_cm_botwoon_spit
    dw #.routine
    db #$28, "Botwoon Spit", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, " NEVER SPIT", #$FF
    db #$28, "ALWAYS SPIT", #$FF
    db #$FF
  .routine
    ; 0-4 = no spit, 6-E = spit
    LDA !ram_cm_botwoon_spit : ASL #2 : STA !ram_botwoon_spit
    RTL

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

rng_crocomire_rng:
    dw !ACTION_CHOICE
    dl #!ram_crocomire_rng
    dw #$0000
    db #$28, "Crocomire RNG", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "       STEP", #$FF
    db #$28, "      SWIPE", #$FF
    db #$FF

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

rng_baby_rng:
    dw !ACTION_CHOICE
    dl #!ram_baby_rng
    dw #$0000
    db #$28, "Baby Skip RNG", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "   NO LUNGE", #$FF
    db #$28, "      LUNGE", #$FF
    db #$FF


; --------------
; Phantoon Menu
; --------------

ih_prepare_phantoon_menu:
{
    LDA !ram_phantoon_rng_inverted : PHA
    JSL phan_set_phan_first_phase
    JSL phan_set_phan_second_phase
    PLA : STA !ram_phantoon_rng_inverted
    %setmenubank()
    JML action_submenu
}

PhantoonMenu:
    dw #phan_first_phase
    dw #phan_fast_left_1
    dw #phan_mid_left_1
    dw #phan_slow_left_1
    dw #phan_fast_right_1
    dw #phan_mid_right_1
    dw #phan_slow_right_1
    dw #$FFFF
    dw #phan_second_phase
    dw #phan_fast_left_2
    dw #phan_mid_left_2
    dw #phan_slow_left_2
    dw #phan_fast_right_2
    dw #phan_mid_right_2
    dw #phan_slow_right_2
    dw #phan_second_phase_inverted
    dw #$FFFF
    dw #phan_eyeclose
    dw #phan_flamepattern
    dw #phan_next_flamepattern
    dw #phan_flame_direction
    dw #$0000
    %cm_header("PHANTOON RNG CONTROL")

phan_first_phase:
    dw !ACTION_CHOICE
    dl #!ram_cm_phan_first_phase
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
    LDA.l phan_phase_1_table,X : STA !ram_phantoon_rng_round_1
    RTL

phan_second_phase:
    dw !ACTION_CHOICE
    dl #!ram_cm_phan_second_phase
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
    LDA.l phan_phase_2_table,X : STA !ram_phantoon_rng_round_2
    BEQ .set_inverted : TXA : BEQ .set_inverted
    LDA #$0002
  .set_inverted
    STA !ram_phantoon_rng_inverted
    RTL

phan_phase_1_table:
    dw #$003F, #$0020, #$0008, #$0002, #$0010, #$0004, #$0001, #$0030
    dw #$000C, #$0003, #$000F, #$0033, #$003C, #$002A, #$0015, #$0000

phan_phase_2_table:
    dw #$003F, #$0020, #$0008, #$0002, #$0010, #$0004, #$0001, #$0030
    dw #$000C, #$0003, #$0007, #$0023, #$0024, #$0022, #$0005, #$0000

phan_set_phan_first_phase:
{
    LDX #$0000
    LDA !ram_phantoon_rng_round_1 : BEQ .end_first_loop
  .first_loop
    CMP.l phan_phase_1_table,X : BEQ .end_first_loop
    INX #2 : CPX #$001E : BNE .first_loop
  .end_first_loop
    TXA : LSR : STA !ram_cm_phan_first_phase
    RTL
}

phan_set_phan_second_phase:
{
    LDX #$0000
    LDA !ram_phantoon_rng_round_2 : BEQ .end_second_loop
  .second_loop
    CMP.l phan_phase_2_table,X : BEQ .end_second_loop
    INX #2 : CPX #$001E : BNE .second_loop
  .end_second_loop
    TXA : LSR : STA !ram_cm_phan_second_phase
    BEQ .set_inverted : TXA : BEQ .set_inverted
    LDA #$0002
  .set_inverted
    STA !ram_phantoon_rng_inverted
    RTL
}

phan_fast_left_1:
    %cm_toggle_bit("#1 Fast Left", !ram_phantoon_rng_round_1, #$0020, phan_set_phan_first_phase)

phan_mid_left_1:
    %cm_toggle_bit("#1 Mid  Left", !ram_phantoon_rng_round_1, #$0008, phan_set_phan_first_phase)

phan_slow_left_1:
    %cm_toggle_bit("#1 Slow Left", !ram_phantoon_rng_round_1, #$0002, phan_set_phan_first_phase)

phan_fast_right_1:
    %cm_toggle_bit("#1 Fast Right", !ram_phantoon_rng_round_1, #$0010, phan_set_phan_first_phase)

phan_mid_right_1:
    %cm_toggle_bit("#1 Mid  Right", !ram_phantoon_rng_round_1, #$0004, phan_set_phan_first_phase)

phan_slow_right_1:
    %cm_toggle_bit("#1 Slow Right", !ram_phantoon_rng_round_1, #$0001, phan_set_phan_first_phase)

phan_fast_left_2:
    %cm_toggle_bit("#2 Fast Left", !ram_phantoon_rng_round_2, #$0020, phan_set_phan_second_phase)

phan_mid_left_2:
    %cm_toggle_bit("#2 Mid  Left", !ram_phantoon_rng_round_2, #$0008, phan_set_phan_second_phase)

phan_slow_left_2:
    %cm_toggle_bit("#2 Slow Left", !ram_phantoon_rng_round_2, #$0002, phan_set_phan_second_phase)

phan_fast_right_2:
    %cm_toggle_bit("#2 Fast Right", !ram_phantoon_rng_round_2, #$0010, phan_set_phan_second_phase)

phan_mid_right_2:
    %cm_toggle_bit("#2 Mid  Right", !ram_phantoon_rng_round_2, #$0004, phan_set_phan_second_phase)

phan_slow_right_2:
    %cm_toggle_bit("#2 Slow Right", !ram_phantoon_rng_round_2, #$0001, phan_set_phan_second_phase)

phan_second_phase_inverted:
    dw !ACTION_CHOICE
    dl #!ram_phantoon_rng_inverted
    dw #$0000
    db #$28, "2nd Phase Inver", #$FF
    db #$28, "t   VANILLA", #$FF
    db #$28, "t        ON", #$FF
    db #$28, "t       OFF", #$FF
    db #$28, "t    RANDOM", #$FF
    db #$FF

phan_eyeclose:
    dw !ACTION_CHOICE
    dl #!ram_phantoon_rng_eyeclose
    dw #$0000
    db #$28, "Phan Eye Close", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "       SLOW", #$FF
    db #$28, "        MID", #$FF
    db #$28, "       FAST", #$FF
    db #$FF

phan_flamepattern:
    dw !ACTION_CHOICE
    dl #!ram_phantoon_rng_flames
    dw #$0000
    db #$28, "Phantoon Flames", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "      22222", #$FF
    db #$28, "        111", #$FF
    db #$28, "    3333333", #$FF
    db #$28, "    1424212", #$FF
    db #$FF

phan_next_flamepattern:
    dw !ACTION_CHOICE
    dl #!ram_phantoon_rng_next_flames
    dw #$0000
    db #$28, "Next Flames", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "      22222", #$FF
    db #$28, "        111", #$FF
    db #$28, "    3333333", #$FF
    db #$28, "    1424212", #$FF
    db #$FF

phan_flame_direction:
    dw !ACTION_CHOICE
    dl #!ram_phantoon_flame_direction
    dw #$0000
    db #$28, "Flame Direction", #$FF
    db #$28, "     RANDOM", #$FF
    db #$28, "       LEFT", #$FF
    db #$28, "      RIGHT", #$FF
    db #$FF


if !FEATURE_SD2SNES
; --------------
; Savestate Menu
; --------------

SavestateMenu:
    dw #save_rerandomize
    dw #save_freeze
    dw #save_middoorsave
    dw #save_alwayssave
if !FEATURE_DEV
    dw #$FFFF
    dw #save_delete
endif
    dw #$0000
    %cm_header("SAVESTATE SETTINGS")

save_rerandomize:
    %cm_toggle("Rerandomize", !sram_rerandomize, #$0001, #0)

save_freeze:
    %cm_toggle("Freeze on Load State", !ram_freeze_on_load, #$0001, #0)

save_middoorsave:
    %cm_toggle("Auto-Save Mid-Door", !ram_auto_save_state, #$0001, #0)

save_alwayssave:
    %cm_toggle("Auto-Save Every Door", !ram_auto_save_state+1, #$80, #0)

save_delete:
    %cm_jsl("DEV Delete Savestate", .routine, #$DEAD)
  .routine
    TYA : STA !SRAM_SAVED_STATE
    %sfxconfirm()
    RTL
endif


; -------------
; Slowdown Mode
; -------------

SlowdownMenu:
    dw #slowdown_mode
    dw #slowdown_frames
    dw #$0000
    %cm_header("SLOWDOWN MODE")
    %cm_footer("PAUSE IS STILL WIP")

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


; ----------
; Ctrl Menu
; ----------

CtrlMenu:
    dw #ctrl_menu
if !FEATURE_SD2SNES
    dw #ctrl_save_state
    dw #ctrl_load_state
    dw #ctrl_auto_save_state
endif
    dw #ctrl_load_last_preset
    dw #ctrl_random_preset
    dw #ctrl_save_custom_preset
    dw #ctrl_load_custom_preset
    dw #ctrl_inc_custom_preset
    dw #ctrl_dec_custom_preset
    dw #ctrl_reset_segment_timer
    dw #ctrl_reset_segment_later
    dw #ctrl_full_equipment
    dw #ctrl_kill_enemies
    dw #ctrl_toggle_tileviewer
    dw #ctrl_update_timers
    dw #ctrl_toggle_spin_lock
    dw #ctrl_clear_shortcuts
    dw #ctrl_reset_defaults
    dw #$0000
    %cm_header("CONTROLLER SHORTCUTS")
    %cm_footer("PRESS AND HOLD FOR 2 SEC")

ctrl_menu:
    %cm_ctrl_shortcut("Main menu", !sram_ctrl_menu)

ctrl_load_last_preset:
    %cm_ctrl_shortcut("Reload Preset", !sram_ctrl_load_last_preset)

if !FEATURE_SD2SNES
ctrl_save_state:
    %cm_ctrl_shortcut("Save State", !sram_ctrl_save_state)

ctrl_load_state:
    %cm_ctrl_shortcut("Load State", !sram_ctrl_load_state)

ctrl_auto_save_state:
    %cm_ctrl_shortcut("Auto Save State", !sram_ctrl_auto_save_state)
endif

ctrl_reset_segment_timer:
    %cm_ctrl_shortcut("Reset Seg Timer", !sram_ctrl_reset_segment_timer)

ctrl_reset_segment_later:
    %cm_ctrl_shortcut("Reset Seg Later", !sram_ctrl_reset_segment_later)

ctrl_full_equipment:
    %cm_ctrl_shortcut("Full Equipment", !sram_ctrl_full_equipment)

ctrl_kill_enemies:
    %cm_ctrl_shortcut("Kill Enemies", !sram_ctrl_kill_enemies)

ctrl_random_preset:
    %cm_ctrl_shortcut("Random Preset", !sram_ctrl_random_preset)

ctrl_save_custom_preset:
    %cm_ctrl_shortcut("Save Cust Preset", !sram_ctrl_save_custom_preset)

ctrl_load_custom_preset:
    %cm_ctrl_shortcut("Load Cust Preset", !sram_ctrl_load_custom_preset)

ctrl_inc_custom_preset:
    %cm_ctrl_shortcut("Next Preset Slot", !sram_ctrl_inc_custom_preset)

ctrl_dec_custom_preset:
    %cm_ctrl_shortcut("Prev Preset Slot", !sram_ctrl_dec_custom_preset)

ctrl_toggle_tileviewer:
    %cm_ctrl_shortcut("Toggle OOB Tiles", !sram_ctrl_toggle_tileviewer)

ctrl_update_timers:
    %cm_ctrl_shortcut("Update Timers", !sram_ctrl_update_timers)

ctrl_toggle_spin_lock:
    %cm_ctrl_shortcut("Toggle Spin Lock", !sram_ctrl_toggle_spin_lock)

ctrl_clear_shortcuts:
    %cm_jsl("Clear Shortcuts", .routine, #$0000)
  .routine
    TYA
    STA !ram_game_mode_extras
    STA !sram_ctrl_save_state
    STA !sram_ctrl_load_state
    STA !sram_ctrl_auto_save_state
    STA !sram_ctrl_load_last_preset
    STA !sram_ctrl_full_equipment
    STA !sram_ctrl_kill_enemies
    STA !sram_ctrl_random_preset
    STA !sram_ctrl_save_custom_preset
    STA !sram_ctrl_load_custom_preset
    STA !sram_ctrl_inc_custom_preset
    STA !sram_ctrl_dec_custom_preset
    STA !sram_ctrl_reset_segment_timer
    STA !sram_ctrl_reset_segment_later
    STA !sram_ctrl_toggle_tileviewer
    STA !sram_ctrl_update_timers
    STA !sram_ctrl_toggle_spin_lock
    ; menu to default, Start + Select
    LDA #$3000 : STA !sram_ctrl_menu
    %sfxconfirm()
    RTL

ctrl_reset_defaults:
    %cm_jsl("Reset to Defaults", .routine, #$0000)
  .routine
    %sfxreset()
    JSL init_sram_upto9_controller_shortcuts
if !FEATURE_SD2SNES
    JML validate_sram_for_savestates
else
    RTL
endif


; ---------------
; Helper Routines
; ---------------

init_wram_based_on_sram:
{
    JSL init_suit_properties_ram
    JSL init_physics_ram
    JSL init_print_segment_timer
    ; Fallthrough to GameModeExtras
}

GameModeExtras:
{
    ; Check if any less common shortcuts are configured
    LDA !sram_ctrl_reset_segment_timer : BNE .enabled
    LDA !sram_ctrl_reset_segment_later : BNE .enabled
    LDA !sram_ctrl_kill_enemies : BNE .enabled
    LDA !sram_ctrl_full_equipment : BNE .enabled
    LDA !sram_ctrl_save_custom_preset : BNE .enabled
    LDA !sram_ctrl_load_custom_preset : BNE .enabled
    LDA !sram_ctrl_inc_custom_preset : BNE .enabled
    LDA !sram_ctrl_dec_custom_preset : BNE .enabled
    LDA !sram_ctrl_toggle_tileviewer : BNE .enabled
    LDA !sram_ctrl_update_timers : BNE .enabled
    LDA !sram_ctrl_toggle_spin_lock : BNE .enabled

  .enabled
    STA !ram_game_mode_extras
    RTL
}

if !FEATURE_SD2SNES
validate_sram_for_savestates:
{
    ; check if required SRAM range is valid
    ; writes to SRAM will mirror in other banks if not valid
if !FEATURE_TINYSTATES
    LDA $737FFE : INC : STA $707FFE
    CMP $737FFE : BEQ .double_check
else
    LDA $777FFE : INC : STA $707FFE
    CMP $777FFE : BEQ .double_check
endif
    RTL

  .double_check
    ; double check
if !FEATURE_TINYSTATES
    LDA $732FFE : INC : STA $702FFE
    CMP $732FFE : BEQ .fail
else
    LDA $772FFE : INC : STA $702FFE
    CMP $772FFE : BEQ .fail
endif
    RTL

  .fail
    ; disable savestate controls
    TDC : STA !sram_ctrl_save_state : STA !sram_ctrl_load_state
    RTL
}
endif

init_print_segment_timer:
{
if !FEATURE_VANILLAHUD
else
if !INFOHUD_ALWAYS_SHOW_X_Y
else
    ; Skip printing segment timer when shinetune or walljump enabled
    LDA !sram_display_mode : CMP !IH_MODE_SHINETUNE_INDEX : BEQ .skip
    CMP !IH_MODE_WALLJUMP_INDEX : BEQ .skip
    ; print
    LDA #$0001 : STA !ram_print_segment_timer
    RTL

  .skip
endif
endif
    TDC : STA !ram_print_segment_timer
    RTL
}

print pc, " mainmenu end"

