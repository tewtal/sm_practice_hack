
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
    LDA !sram_top_display_mode : CMP #$0003 : BCC action_mainmenu
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
    dw #precat_kpdr21
    dw #precat_kpdr22
    dw #precat_kpdr23
    dw #precat_kpdr25
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
    dw #precat_allbosskpdr
    dw #precat_allbosspkdr
    dw #precat_allbossprkd
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


; ----------------
; Equipment menu
; ----------------

EquipmentMenu:
    dw #eq_refill
    dw #eq_toggle_category
    dw #eq_goto_toggleitems
    dw #eq_goto_togglebeams
    dw #$FFFF
    dw #eq_currentenergy
    dw #eq_setetanks
    dw #$FFFF
    dw #eq_currentreserves
    dw #eq_setreserves
    dw #eq_reservemode
    dw #$FFFF
    dw #eq_currentmissiles
    dw #eq_setmissiles
    dw #$FFFF
    dw #eq_currentsupers
    dw #eq_setsupers
    dw #$FFFF
    dw #eq_currentpbs
    dw #eq_setpbs
    dw #$0000
    %cm_header("EQUIPMENT")

eq_refill:
    %cm_jsl("Refill", .refill, #$0000)
  .refill
    LDA !SAMUS_HP_MAX : STA !SAMUS_HP
    LDA !SAMUS_MISSILES_MAX : STA !SAMUS_MISSILES
    LDA !SAMUS_SUPERS_MAX : STA !SAMUS_SUPERS
    LDA !SAMUS_PBS_MAX : STA !SAMUS_PBS
    LDA !SAMUS_RESERVE_MAX : STA !SAMUS_RESERVE_ENERGY
    %sfxconfirm()
    RTL

eq_toggle_category:
    %cm_submenu("Category Loadouts", #ToggleCategoryMenu)

eq_goto_toggleitems:
    %cm_jsl("Toggle Items", #eq_prepare_items_menu, #ToggleItemsMenu)

eq_goto_togglebeams:
    %cm_jsl("Toggle Beams", #eq_prepare_beams_menu, #ToggleBeamsMenu)

eq_currentenergy:
    %cm_numfield_word("Current Energy", !SAMUS_HP, 0, 2100, 1, 20, #0)

eq_setetanks:
    %cm_numfield("Energy Tanks", !ram_cm_etanks, 0, 21, 1, 1, .routine)
  .routine
    TAX : BEQ .zero
    ; > 14 etanks implies max%
    TDC ; xx00 energy
    CPX #$000F : BPL .loop
    LDA #$0063 ; xx99 energy
  .loop
    ; add 100 per etank
    DEX : BMI .endloop
    CLC : ADC #$0064
    BRA .loop
  .zero
    LDA #$0063 ; 99 energy
  .endloop
    STA !SAMUS_HP : STA !SAMUS_HP_MAX
    RTL

eq_currentreserves:
    %cm_numfield_word("Current Reserves", !SAMUS_RESERVE_ENERGY, 0, 700, 1, 20, #0)

eq_setreserves:
    %cm_numfield("Reserve Tanks", !ram_cm_reserve, 0, 7, 1, 1, .routine)
  .routine
    TAX : BEQ .zero
    TDC
  .loop
    ; add 100 per reserve
    DEX : BMI .endloop
    CLC : ADC #$0064
    BRA .loop
  .zero
    STA !SAMUS_RESERVE_MODE
  .endloop
    STA !SAMUS_RESERVE_ENERGY : STA !SAMUS_RESERVE_MAX
    RTL

eq_reservemode:
    dw !ACTION_CHOICE
    dl #!SAMUS_RESERVE_MODE
    dw #.routine
    db #$28, "Reserve Mode", #$FF
    db #$28, " UNOBTAINED", #$FF
    db #$28, "       AUTO", #$FF
    db #$28, "     MANUAL", #$FF
    db #$FF
  .routine
    LDA !SAMUS_RESERVE_MAX : BNE .end
    ; lock at UNOBTAINED if max = 0
    STA !SAMUS_RESERVE_MODE
    %sfxfail()
  .end
    RTL

eq_currentmissiles:
    %cm_numfield_word("Current Missiles", !SAMUS_MISSILES, 0, 325, 1, 20, #0)

eq_setmissiles:
    %cm_numfield_word("Missiles", !SAMUS_MISSILES_MAX, 0, 325, 5, 20, .routine)
  .routine
    LDA !SAMUS_MISSILES_MAX : STA !SAMUS_MISSILES
    RTL

eq_currentsupers:
    %cm_numfield("Current Super Missiles", !SAMUS_SUPERS, 0, 65, 1, 5, #0)

eq_setsupers:
    %cm_numfield("Super Missiles", !SAMUS_SUPERS_MAX, 0, 65, 5, 5, .routine)
  .routine
    LDA !SAMUS_SUPERS_MAX : STA !SAMUS_SUPERS
    RTL

eq_currentpbs:
    %cm_numfield("Current Power Bombs", !SAMUS_PBS, 0, 70, 1, 5, #0)

eq_setpbs:
    %cm_numfield("Power Bombs", !SAMUS_PBS_MAX, 0, 70, 5, 5, .routine)
  .routine
    LDA !SAMUS_PBS_MAX : STA !SAMUS_PBS
    RTL


; ---------------------
; Toggle Category menu
; ---------------------

ToggleCategoryMenu:
    dw #cat_100
    dw #cat_any_new
    dw #cat_any_old
    dw #cat_14ice
    dw #cat_14speed
if !FEATURE_PAL
    dw #cat_14xice
    dw #cat_14iceboots
    dw #cat_14speedboots
endif
    dw #cat_gt_code
    dw #cat_gt_max
    dw #cat_rbo
    dw #cat_any_glitched
    dw #cat_inf_cf
    dw #cat_nothing
    dw #$0000
    %cm_header("TOGGLE CATEGORY")

cat_100:
    %cm_jsl("100%", action_category, #$0000)

cat_any_new:
    %cm_jsl("Any% PRKD", action_category, #$0001)

cat_any_old:
    %cm_jsl("Any% KPDR", action_category, #$0002)

cat_14ice:
    %cm_jsl("14% Ice", action_category, #$0003)

cat_14speed:
    %cm_jsl("14% Speed", action_category, #$0004)

cat_gt_code:
    %cm_jsl("GT Code", action_category, #$0005)

cat_gt_max:
    %cm_jsl("GT Max%", action_category, #$0006)

cat_rbo:
    %cm_jsl("RBO", action_category, #$0007)

cat_any_glitched:
    %cm_jsl("Any% Glitched", action_category, #$0008)

cat_inf_cf:
    %cm_jsl("Infinite Crystal Flashes", action_category, #$0009)

cat_nothing:
    %cm_jsl("Nothing", action_category, #$000A)

if !FEATURE_PAL
cat_14xice:
    %cm_jsl("14% X-Ice", action_category, #$000B)

cat_14iceboots:
    %cm_jsl("14% Ice Boots", action_category, #$000C)

cat_14speedboots:
    %cm_jsl("14% Speed Boots", action_category, #$000D)
endif

action_category:
{
    ; table index in Y
    ; dummy column allows for easy math
    TYA : ASL #4 : TAX

    LDA.l EquipmentTable,X : STA !SAMUS_ITEMS_COLLECTED : STA !SAMUS_ITEMS_EQUIPPED : INX #2

    LDA.l EquipmentTable,X : STA !SAMUS_BEAMS_COLLECTED : TAY
    ; check if Spazer+Plasma
    AND #$000C : CMP #$000C : BEQ .murderBeam
    TYA : STA !SAMUS_BEAMS_EQUIPPED : INX #2 : BRA .doneMurderBeam

  .murderBeam
    ; choose Plasma over Spazer
    TYA : AND #$100B : STA !SAMUS_BEAMS_EQUIPPED : INX #2

  .doneMurderBeam
    LDA.l EquipmentTable,X : STA !SAMUS_HP : STA !SAMUS_HP_MAX : INX #2
    LDA.l EquipmentTable,X : STA !SAMUS_MISSILES : STA !SAMUS_MISSILES_MAX : INX #2
    LDA.l EquipmentTable,X : STA !SAMUS_SUPERS : STA !SAMUS_SUPERS_MAX : INX #2
    LDA.l EquipmentTable,X : STA !SAMUS_PBS : STA !SAMUS_PBS_MAX : INX #2
    LDA.l EquipmentTable,X : STA !SAMUS_RESERVE_MAX : STA !SAMUS_RESERVE_ENERGY : INX #2

    JSL cm_set_etanks_and_reserve
    %sfxconfirm()
    JML $90AC8D ; update beam gfx
}

EquipmentTable:
    ;  Items,  Beams,  Health, Miss,   Supers, PBs,    Reserv, Dummy
    dw #$F32F, #$100F, #$05DB, #$00E6, #$0032, #$0032, #$0190, #$0000        ; 100%
    dw #$3125, #$1007, #$018F, #$000F, #$000A, #$0005, #$0000, #$0000        ; any% new
    dw #$3325, #$100B, #$018F, #$000F, #$000A, #$0005, #$0000, #$0000        ; any% old
    dw #$1025, #$1002, #$018F, #$000A, #$000A, #$0005, #$0000, #$0000        ; 14% ice
    dw #$3025, #$1000, #$018F, #$000A, #$000A, #$0005, #$0000, #$0000        ; 14% speed
    dw #$F33F, #$100F, #$02BC, #$0064, #$0014, #$0014, #$012C, #$0000        ; gt code
    dw #$F33F, #$100F, #$0834, #$0145, #$0041, #$0041, #$02BC, #$0000        ; gt max
    dw #$710C, #$1001, #$031F, #$001E, #$0019, #$0014, #$0064, #$0000        ; rbo
    dw #$9004, #$0000, #$00C7, #$0005, #$0005, #$0005, #$0000, #$0000        ; any% glitched
    dw #$F32F, #$100F, #$0031, #$01A4, #$005A, #$0063, #$0000, #$0000        ; crystal flash
    dw #$0000, #$0000, #$0063, #$0000, #$0000, #$0000, #$0000, #$0000        ; nothing
if !FEATURE_PAL
    dw #$9005, #$1002, #$012B, #$000A, #$000A, #$0005, #$0064, #$0000        ; 14% x-ice
    dw #$1105, #$1002, #$018F, #$000A, #$000A, #$0005, #$0000, #$0000        ; 14% iceboots
    dw #$3105, #$1000, #$018F, #$000A, #$000A, #$0005, #$0000, #$0000        ; 14% speedboots
endif


; ------------------
; Toggle Items menu
; ------------------

eq_prepare_items_menu:
{
    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0001 : BEQ .noVaria
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0001 : BNE .equipVaria
    ; unequip
    LDA #$0002 : STA !ram_cm_varia : BRA .doneVaria
  .equipVaria
    LDA #$0001 : STA !ram_cm_varia : BRA .doneVaria
  .noVaria
    TDC : STA !ram_cm_varia
  .doneVaria

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0020 : BEQ .noGravity
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0020 : BNE .equipGravity
    ; unequip
    LDA #$0002 : STA !ram_cm_gravity : BRA .doneGravity
  .equipGravity
    LDA #$0001 : STA !ram_cm_gravity : BRA .doneGravity
  .noGravity
    TDC : STA !ram_cm_gravity
  .doneGravity

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0004 : BEQ .noMorph
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0004 : BNE .equipMorph
    ; unequip
    LDA #$0002 : STA !ram_cm_morph : BRA .doneMorph
  .equipMorph
    LDA #$0001 : STA !ram_cm_morph : BRA .doneMorph
  .noMorph
    TDC : STA !ram_cm_morph
  .doneMorph

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$1000 : BEQ .noBombs
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$1000 : BNE .equipBombs
    ; unequip
    LDA #$0002 : STA !ram_cm_bombs : BRA .doneBombs
  .equipBombs
    LDA #$0001 : STA !ram_cm_bombs : BRA .doneBombs
  .noBombs
    TDC : STA !ram_cm_bombs
  .doneBombs

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0002 : BEQ .noSpring
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0002 : BNE .equipSpring
    ; unequip
    LDA #$0002 : STA !ram_cm_spring : BRA .doneSpring
  .equipSpring
    LDA #$0001 : STA !ram_cm_spring : BRA .doneSpring
  .noSpring
    TDC : STA !ram_cm_spring
  .doneSpring

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0008 : BEQ .noScrew
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0008 : BNE .equipScrew
    ; unequip
    LDA #$0002 : STA !ram_cm_screw : BRA .doneScrew
  .equipScrew
    LDA #$0001 : STA !ram_cm_screw : BRA .doneScrew
  .noScrew
    TDC : STA !ram_cm_screw
  .doneScrew

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0100 : BEQ .noHiJump
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0100 : BNE .equipHiJump
    ; unequip
    LDA #$0002 : STA !ram_cm_hijump : BRA .doneHiJump
  .equipHiJump
    LDA #$0001 : STA !ram_cm_hijump : BRA .doneHiJump
  .noHiJump
    TDC : STA !ram_cm_hijump
  .doneHiJump

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0200 : BEQ .noSpace
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0200 : BNE .equipSpace
    ; unequip
    LDA #$0002 : STA !ram_cm_space : BRA .doneSpace
  .equipSpace
    LDA #$0001 : STA !ram_cm_space : BRA .doneSpace
  .noSpace
    TDC : STA !ram_cm_space
  .doneSpace

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$2000 : BEQ .noSpeed
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$2000 : BNE .equipSpeed
    ; unequip
    LDA #$0002 : STA !ram_cm_speed : BRA .doneSpeed
  .equipSpeed
    LDA #$0001 : STA !ram_cm_speed : BRA .doneSpeed
  .noSpeed
    TDC : STA !ram_cm_speed
  .doneSpeed

    %setmenubank()
    JML action_submenu
}

ToggleItemsMenu:
    dw #ti_variasuit
    dw #ti_gravitysuit
    dw #$FFFF
    dw #ti_morphball
    dw #ti_bomb
    dw #ti_springball
    dw #ti_screwattack
    dw #$FFFF
    dw #ti_hijumpboots
    dw #ti_spacejump
    dw #ti_speedbooster
    dw #$FFFF
    dw #ti_grapple
    dw #ti_xray
    dw #$FFFF
    dw #misc_suit_properties
    dw #misc_water_physics
    dw #misc_double_jump
    dw #$0000
    %cm_header("TOGGLE ITEMS")

ti_variasuit:
    %cm_equipment_item("Varia Suit", !ram_cm_varia, #$0001, #$FFFE)

ti_gravitysuit:
    %cm_equipment_item("Gravity Suit", !ram_cm_gravity, #$0020, #$FFDF)

ti_morphball:
    %cm_equipment_item("Morph Ball", !ram_cm_morph, #$0004, #$FFFB)

ti_bomb:
    %cm_equipment_item("Bombs", !ram_cm_bombs, #$1000, #$EFFF)

ti_springball:
    %cm_equipment_item("Spring Ball", !ram_cm_spring, #$0002, #$FFFD)

ti_screwattack:
    %cm_equipment_item("Screw Attack", !ram_cm_screw, #$0008, #$FFF7)

ti_hijumpboots:
    %cm_equipment_item("Hi Jump Boots", !ram_cm_hijump, #$0100, #$FEFF)

ti_spacejump:
    %cm_equipment_item("Space Jump", !ram_cm_space, #$0200, #$FDFF)

ti_speedbooster:
    %cm_equipment_item("Speed Booster", !ram_cm_speed, #$2000, #$DFFF)

ti_grapple:
    %cm_toggle_bit("Grapple", !SAMUS_ITEMS_COLLECTED, #$4000, .routine)
  .routine
    LDA !SAMUS_ITEMS_EQUIPPED : EOR #$4000 : STA !SAMUS_ITEMS_EQUIPPED
    RTL

ti_xray:
    %cm_toggle_bit("X-Ray", !SAMUS_ITEMS_COLLECTED, #$8000, .routine)
  .routine
    LDA !SAMUS_ITEMS_EQUIPPED : EOR #$8000 : STA !SAMUS_ITEMS_EQUIPPED
    RTL

equipment_toggle_items:
{
; DP values are passed in from the cm_equipment_item macro that calls this routine
; Address is a 24-bit pointer to !ram_cm_<item>, Increment is the inverse, ToggleValue is the bitmask
    LDA [!DP_Address] : BEQ .unobtained
    DEC : BEQ .equipped
    ; unquipped
    LDA !SAMUS_ITEMS_EQUIPPED : AND !DP_Increment : STA !SAMUS_ITEMS_EQUIPPED
    LDA !SAMUS_ITEMS_COLLECTED : ORA !DP_ToggleValue : STA !SAMUS_ITEMS_COLLECTED
    RTL

  .equipped
    LDA !SAMUS_ITEMS_EQUIPPED : ORA !DP_ToggleValue : STA !SAMUS_ITEMS_EQUIPPED
    LDA !SAMUS_ITEMS_COLLECTED : ORA !DP_ToggleValue : STA !SAMUS_ITEMS_COLLECTED
    RTL

  .unobtained
    LDA !SAMUS_ITEMS_EQUIPPED : AND !DP_Increment : STA !SAMUS_ITEMS_EQUIPPED
    LDA !SAMUS_ITEMS_COLLECTED : AND !DP_Increment : STA !SAMUS_ITEMS_COLLECTED
    RTL
}


; -----------------
; Toggle Beams menu
; -----------------

eq_prepare_beams_menu:
{
    JSL setup_beams_ram
    JSL tb_init_custom_damage
    %setmenubank()
    JML action_submenu
}

setup_beams_ram:
{
    LDA !SAMUS_BEAMS_COLLECTED : BIT #$1000 : BEQ .noCharge
    LDA !SAMUS_BEAMS_EQUIPPED : BIT #$1000 : BNE .equipCharge
    ; unequip Charge
    LDA #$0002 : STA !ram_cm_charge : BRA .doneCharge
  .equipCharge
    LDA #$0001 : STA !ram_cm_charge : BRA .doneCharge
  .noCharge
    TDC : STA !ram_cm_charge
  .doneCharge

    LDA !SAMUS_BEAMS_COLLECTED : BIT #$0002 : BEQ .noIce
    LDA !SAMUS_BEAMS_EQUIPPED : BIT #$0002 : BNE .equipIce
    ; unequip Ice
    LDA #$0002 : STA !ram_cm_ice : BRA .doneIce
  .equipIce
    LDA #$0001 : STA !ram_cm_ice : BRA .doneIce
  .noIce
    TDC : STA !ram_cm_ice
  .doneIce

    LDA !SAMUS_BEAMS_COLLECTED : BIT #$0001 : BEQ .noWave
    LDA !SAMUS_BEAMS_EQUIPPED : BIT #$0001 : BNE .equipWave
    ; unequip Wave
    LDA #$0002 : STA !ram_cm_wave : BRA .doneWave
  .equipWave
    LDA #$0001 : STA !ram_cm_wave : BRA .doneWave
  .noWave
    TDC : STA !ram_cm_wave
  .doneWave

    LDA !SAMUS_BEAMS_COLLECTED : BIT #$0004 : BEQ .noSpazer
    LDA !SAMUS_BEAMS_EQUIPPED : BIT #$0004 : BNE .equipSpazer
    ; unequip Spazer
    LDA #$0002 : STA !ram_cm_spazer : BRA .doneSpazer
  .equipSpazer
    LDA #$0001 : STA !ram_cm_spazer : BRA .doneSpazer
  .noSpazer
    TDC : STA !ram_cm_spazer
  .doneSpazer

    LDA !SAMUS_BEAMS_COLLECTED : BIT #$0008 : BEQ .noPlasma
    LDA !SAMUS_BEAMS_EQUIPPED : BIT #$0008 : BNE .equipPlasma
    ; unequip Plasma
    LDA #$0002 : STA !ram_cm_plasma : BRA .donePlasma
  .equipPlasma
    LDA #$0001 : STA !ram_cm_plasma : BRA .donePlasma
  .noPlasma
    TDC : STA !ram_cm_plasma
  .donePlasma

    RTL
}

ToggleBeamsMenu:
    dw tb_chargebeam
    dw tb_icebeam
    dw tb_wavebeam
    dw tb_spazerbeam
    dw tb_plasmabeam
    dw #$FFFF
    dw misc_hyperbeam
    dw #$FFFF
    dw tb_glitchedbeams
    dw #$FFFF
    dw tb_customdamage
    dw tb_customchargedamage
    dw tb_customunchargedamage
    dw #$0000
    %cm_header("TOGGLE BEAMS")

tb_chargebeam:
    %cm_equipment_beam("Charge", !ram_cm_charge, #$1000, #$EFFF, #$100F)

tb_icebeam:
    %cm_equipment_beam("Ice", !ram_cm_ice, #$0002, #$FFFD, #$100F)

tb_wavebeam:
    %cm_equipment_beam("Wave", !ram_cm_wave, #$0001, #$FFFE, #$100F)

tb_spazerbeam:
    %cm_equipment_beam("Spazer", !ram_cm_spazer, #$0004, #$FFFB, #$1007)

tb_plasmabeam:
    %cm_equipment_beam("Plasma", !ram_cm_plasma, #$0008, #$FFF7, #$100B)

tb_glitchedbeams:
    %cm_submenu("Glitched Beams", #GlitchedBeamsMenu)

tb_customdamage:
    dw !ACTION_CHOICE
    dl #!sram_custom_damage
    dw tb_init_custom_damage
    db #$28, "Beam Damage", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "     CUSTOM", #$FF
    db #$28, "DASH CHRG 0", #$FF
    db #$28, "DASH CHRG 1", #$FF
    db #$28, "DASH CHRG 2", #$FF
    db #$28, "DASH CHRG 3", #$FF
    db #$28, "DASH CHRG 4", #$FF
    db #$FF

tb_init_custom_damage:
{
    LDA !sram_custom_damage : BEQ .vanilla
    DEC : DEC : BEQ .dashCharge0
    DEC : BEQ .dashCharge1
    DEC : BEQ .dashCharge2
    DEC : BEQ .dashCharge3
    DEC : BEQ .dashCharge4
    RTL

  .vanilla
    JSL compute_vanilla_charged_damage : STA !sram_custom_charge_damage
    JSL compute_vanilla_uncharged_damage : STA !sram_custom_uncharge_damage
    RTL

  .dashCharge0
    JSL compute_dash_charge_0_damage : STA !sram_custom_charge_damage
    JSL compute_dash_charge_0_damage : STA !sram_custom_uncharge_damage
    RTL

  .dashCharge1
    JSL compute_dash_charge_1_damage : STA !sram_custom_charge_damage
    JSL compute_dash_charge_0_damage : STA !sram_custom_uncharge_damage
    RTL

  .dashCharge2
    JSL compute_dash_charge_2_damage : STA !sram_custom_charge_damage
    JSL compute_dash_charge_0_damage : STA !sram_custom_uncharge_damage
    RTL

  .dashCharge3
    JSL compute_dash_charge_3_damage : STA !sram_custom_charge_damage
    JSL compute_dash_charge_0_damage : STA !sram_custom_uncharge_damage
    RTL

  .dashCharge4
    JSL compute_dash_charge_4_damage : STA !sram_custom_charge_damage
    JSL compute_dash_charge_0_damage : STA !sram_custom_uncharge_damage
    RTL
}

tb_customchargedamage:
    %cm_numfield_word("Custom Charge Damage", !sram_custom_charge_damage, 0, 1000, 10, 50, #0)

tb_customunchargedamage:
    %cm_numfield_word("Custom Normal Damage", !sram_custom_uncharge_damage, 0, 1000, 10, 50, #0)

equipment_toggle_beams:
{
    ; DP values are passed in from the cm_equipment_beam macro that calls this routine
    ; Address is a 24-bit pointer to !ram_cm_<beam>, Increment is the inverse, ToggleValue is the bitmask, Temp is the AND for Spazer+Plasma safety
    LDA [!DP_Address] : BEQ .unobtained
    DEC : BEQ .equipped
    ; unquipped
    LDA !SAMUS_BEAMS_EQUIPPED : AND !DP_Increment : STA !SAMUS_BEAMS_EQUIPPED
    LDA !SAMUS_BEAMS_COLLECTED : ORA !DP_ToggleValue : STA !SAMUS_BEAMS_COLLECTED
    BRA .checkSpazer

  .equipped
    LDA !SAMUS_BEAMS_EQUIPPED : ORA !DP_ToggleValue : AND !DP_Temp : STA !SAMUS_BEAMS_EQUIPPED
    LDA !SAMUS_BEAMS_COLLECTED : ORA !DP_ToggleValue : STA !SAMUS_BEAMS_COLLECTED
    BRA .checkSpazer

  .unobtained
    LDA !SAMUS_BEAMS_EQUIPPED : AND !DP_Increment : STA !SAMUS_BEAMS_EQUIPPED
    LDA !SAMUS_BEAMS_COLLECTED : AND !DP_Increment : STA !SAMUS_BEAMS_COLLECTED

  .checkSpazer
    ; Reinitialize Spazer and Plasma since they affect each other
    LDA !SAMUS_BEAMS_COLLECTED : BIT #$0004 : BEQ .noSpazer
    LDA !SAMUS_BEAMS_EQUIPPED : BIT #$0004 : BNE .equipSpazer
    ; unequip Spazer
    LDA #$0002 : STA !ram_cm_spazer : BRA .checkPlasma
  .equipSpazer
    LDA #$0001 : STA !ram_cm_spazer : BRA .checkPlasma
  .noSpazer
    TDC : STA !ram_cm_spazer

  .checkPlasma
    LDA !SAMUS_BEAMS_COLLECTED : BIT #$0008 : BEQ .noPlasma
    LDA !SAMUS_BEAMS_EQUIPPED : BIT #$0008 : BNE .equipPlasma
    ; unequip Plasma
    LDA #$0002 : STA !ram_cm_plasma : BRA .done
  .equipPlasma
    LDA #$0001 : STA !ram_cm_plasma : BRA .done
  .noPlasma
    TDC : STA !ram_cm_plasma

  .done
    JSL tb_init_custom_damage
    JML $90AC8D ; update beam gfx
}


; -------------------
; Glitched Beams menu
; -------------------

GlitchedBeamsMenu:
    dw #gb_murder
    dw #gb_spacetime
    dw #gb_chainsaw
    dw #gb_unnamed
    dw #$0000
    %cm_header("GLITCHED BEAMS")
    %cm_footer("BEWARE OF CRASHES")

gb_murder:
    %cm_jsl("Murder Beam", action_glitched_beam, #$100F)

gb_spacetime:
    %cm_jsl("Spacetime Beam", action_glitched_beam, #$100E)

gb_chainsaw:
    %cm_jsl("Chainsaw Beam", action_glitched_beam, #$100D)

gb_unnamed:
    %cm_jsl("Unnamed Glitched Beam", action_glitched_beam, #$100C)

action_glitched_beam:
{
    TYA : STA !SAMUS_BEAMS_EQUIPPED
    LDA !SAMUS_BEAMS_COLLECTED : ORA !SAMUS_BEAMS_EQUIPPED : STA !SAMUS_BEAMS_COLLECTED
    %sfxconfirm()
    JSL setup_beams_ram
    JML $90AC8D ; update beam gfx
}


; -----------
; Event Flags
; -----------

EventFlagsMenu:
    dw #eventflags_goto_events
    dw #eventflags_goto_bosses
    dw #eventflags_goto_items
    dw #eventflags_goto_doors
    dw #eventflags_goto_mapstations
    dw #$FFFF
    dw #eventflags_resetevents
    dw #eventflags_resetbosses
    dw #eventflags_resetitems
    dw #eventflags_resetdoors
    dw #eventflags_resetmapstations
    dw #$FFFF
    dw #eventflags_setevents
    dw #eventflags_setbosses
    dw #eventflags_setitems
    dw #eventflags_setdoors
    dw #eventflags_setmapstations
    dw #$0000
    %cm_header("EVENT FLAGS")

eventflags_goto_events:
    %cm_jsl("Events", #eventflags_prepare_events_menu, #EventsMenu)

eventflags_goto_bosses:
    %cm_submenu("Bosses", #BossesMenu)

eventflags_goto_items:
    %cm_jsl("Items", #eventflags_prepare_items_menu, #ItemsMenu)

eventflags_goto_doors:
    %cm_submenu("Doors", #DoorsMenu)

eventflags_goto_mapstations:
    %cm_submenu("Map Stations", #MapStationsMenu)

eventflags_resetevents:
    %cm_jsl("Reset All Events", .routine, #$0000)
  .routine
    TDC
    STA $7ED820 : STA $7ED822
    %sfxreset()
    RTL

eventflags_resetbosses:
    %cm_jsl("Reset All Bosses", .routine, #$0000)
  .routine
    TDC
    STA $7ED828 : STA $7ED82A
    STA $7ED82C : STA $7ED82E
    %sfxreset()
    RTL

eventflags_resetitems:
    %cm_jsl("Reset All Items", .routine, #$0000)
  .routine
    TDC : LDX #$0040
  .loop
    STA $7ED86E,X
    DEX #2 : BNE .loop
    %sfxreset()
    RTL

eventflags_resetdoors:
    %cm_jsl("Reset All Doors", .routine, #$0000)
  .routine
    TDC : LDX #$0040
  .loop
    STA $7ED8AE,X
    DEX #2 : BNE .loop
    %sfxreset()
    RTL

eventflags_resetmapstations:
    %cm_jsl("Reset All Map Stations", .routine, #$0000)
  .routine
    TDC
    STA $7ED908 : STA $7ED90A
    STA $7ED90C : STA $7ED90E
    %sfxreset()
    RTL

eventflags_setevents:
    %cm_jsl("Set All Events", .routine, #$0000)
  .routine
    TDC : DEC
    STA $7ED820 : STA $7ED822
    %sfxreset()
    RTL

eventflags_setbosses:
    %cm_jsl("Set All Bosses", .routine, #$0000)
  .routine
    TDC : DEC
    STA $7ED828 : STA $7ED82A
    STA $7ED82C : STA $7ED82E
    %sfxreset()
    RTL

eventflags_setdoors:
    %cm_jsl("Set All Doors", .routine, #$0000)
  .routine
    TDC : DEC : LDX #$0040
  .loop
    STA $7ED8AE,X
    DEX #2 : BNE .loop
    %sfxreset()
    RTL

eventflags_setitems:
    %cm_jsl("Set All Items", .routine, #$0000)
  .routine
    TDC : DEC : LDX #$0040
  .loop
    STA $7ED86E,X
    DEX #2 : BNE .loop
    %sfxreset()
    RTL

eventflags_setmapstations:
    %cm_jsl("Set All Map Stations", .routine, #$0000)
  .routine
    LDA #$0101
    STA $7ED908 : STA $7ED90A
    STA $7ED90C : STA $7ED90E
    %sfxreset()
    RTL


; -----------
; Events menu
; -----------

eventflags_prepare_events_menu:
{
    LDA $7ED820 : AND #$0038 : STA !ram_cm_zebmask
    JSL eventflags_setup_zeb_ram
    %setmenubank()
    JML action_submenu
}

eventflags_set_zeb_ram:
{
    LDA $7ED820 : AND #$FFC7
    ORA !ram_cm_zebmask : STA $7ED820

    ; Intentional fallthrough
    LDA !ram_cm_zebmask
}

eventflags_setup_zeb_ram:
{
    CMP #$0020 : BPL .zeb4
    CMP #$0018 : BPL .zeb3
    CMP #$0010 : BPL .zeb2
    CMP #$0008 : BPL .zeb1
    STA !ram_cm_zeb1
  .clear_zeb2
    STA !ram_cm_zeb2
  .clear_zeb3
    STA !ram_cm_zeb3
  .clear_zeb4
    STA !ram_cm_zeb4
    RTL

  .zeb4
    LDA #$0020 : STA !ram_cm_zeb4
    LDA #$0018 : STA !ram_cm_zeb3
    LDA #$0010 : STA !ram_cm_zeb2
    LDA #$0008 : STA !ram_cm_zeb1
    RTL

  .zeb3
    LDA #$0018 : STA !ram_cm_zeb3
    LDA #$0010 : STA !ram_cm_zeb2
    LDA #$0008 : STA !ram_cm_zeb1
    TDC
    BRA .clear_zeb4

  .zeb2
    LDA #$0010 : STA !ram_cm_zeb2
    LDA #$0008 : STA !ram_cm_zeb1
    TDC
    BRA .clear_zeb3

  .zeb1
    LDA #$0008 : STA !ram_cm_zeb1
    TDC
    BRA .clear_zeb2
}

EventsMenu:
    dw #events_zebesawake
    dw #events_maridiatubebroken
    dw #events_shaktool
    dw #events_chozoacid
    dw #events_metroid1
    dw #events_metroid2
    dw #events_metroid3
    dw #events_metroid4
    dw #events_zeb1
    dw #events_zeb2
    dw #events_zeb3
    dw #events_zeb4
    dw #events_mb1glass
    dw #events_zebesexploding
    dw #events_animals
    dw #$FFFF
    dw #events_kraid_statue
    dw #events_phantoon_statue
    dw #events_draygon_statue
    dw #events_ridley_statue
    dw #events_tourian
    dw #$0000
    %cm_header("EVENTS")

events_zebesawake:
    %cm_toggle_bit("Zebes Awake", $7ED820, #$0001, #0)

events_maridiatubebroken:
    %cm_toggle_bit("Maridia Tube Broken", $7ED820, #$0800, #0)

events_shaktool:
    %cm_toggle_bit("Shaktool Done Digging", $7ED820, #$2000, #0)

events_chozoacid:
    %cm_toggle_bit("Chozo Lowered Acid", $7ED821, #$0010, #0)

events_metroid1:
    %cm_toggle_bit("1st Metroids Cleared", $7ED822, #$0001, #0)

events_metroid2:
    %cm_toggle_bit("2nd Metroids Cleared", $7ED822, #$0002, #0)

events_metroid3:
    %cm_toggle_bit("3rd Metroids Cleared", $7ED822, #$0004, #0)

events_metroid4:
    %cm_toggle_bit("4th Metroids Cleared", $7ED822, #$0008, #0)

events_zeb1:
    %cm_toggle("1st Zebitite Cleared", !ram_cm_zeb1, #$0008, #.routine)
  .routine
    LDA !ram_cm_zeb1 : BNE .set
    TDC
  .set
    STA !ram_cm_zebmask
    JML eventflags_set_zeb_ram

events_zeb2:
    %cm_toggle("2nd Zebitite Cleared", !ram_cm_zeb2, #$0010, #.routine)
  .routine
    LDA !ram_cm_zeb2 : BNE .set
    LDA #$0008
  .set
    STA !ram_cm_zebmask
    JML eventflags_set_zeb_ram

events_zeb3:
    %cm_toggle("3rd Zebitite Cleared", !ram_cm_zeb3, #$0018, #.routine)
  .routine
    LDA !ram_cm_zeb3 : BNE .set
    LDA #$0010
  .set
    STA !ram_cm_zebmask
    JML eventflags_set_zeb_ram

events_zeb4:
    %cm_toggle("4th Zebitite Cleared", !ram_cm_zeb4, #$0020, #.routine)
  .routine
    LDA !ram_cm_zeb4 : BNE .set
    LDA #$0018
  .set
    STA !ram_cm_zebmask
    JML eventflags_set_zeb_ram

events_mb1glass:
    %cm_toggle_bit("MB1 Glass Broken", $7ED820, #$0004, #0)

events_zebesexploding:
    %cm_toggle_bit("Zebes Set Ablaze", $7ED820, #$4000, #0)

events_animals:
    %cm_toggle_bit("Animals Saved", $7ED820, #$8000, #0)

events_kraid_statue:
    %cm_toggle_bit("Kraid Statue", $7ED820, #$0200, #0)

events_phantoon_statue:
    %cm_toggle_bit("Phantoon Statue", $7ED820, #$0040, #0)

events_draygon_statue:
    %cm_toggle_bit("Draygon Statue", $7ED820, #$0100, #0)

events_ridley_statue:
    %cm_toggle_bit("Ridley Statue", $7ED820, #$0080, #0)

events_tourian:
    %cm_toggle_bit("Tourian Open", $7ED820, #$0400, #0)


; ------------
; Bosses menu
; ------------

BossesMenu:
    dw #boss_ceresridley
    dw #boss_bombtorizo
    dw #boss_spospo
    dw #boss_kraid
    dw #boss_phantoon
    dw #boss_botwoon
    dw #boss_draygon
    dw #boss_crocomire
    dw #boss_gt
    dw #boss_ridley
    dw #boss_mb
    dw #$FFFF
    dw #events_kraid_statue
    dw #events_phantoon_statue
    dw #events_draygon_statue
    dw #events_ridley_statue
    dw #events_tourian
    dw #$0000
    %cm_header("BOSSES")

boss_ceresridley:
    %cm_toggle_bit("Ceres Ridley", #$7ED82E, #$0001, #0)

boss_bombtorizo:
    %cm_toggle_bit("Bomb Torizo", #$7ED828, #$0004, #0)

boss_spospo:
    %cm_toggle_bit("Spore Spawn", #$7ED828, #$0200, #0)

boss_kraid:
    %cm_toggle_bit("Kraid", #$7ED828, #$0100, #0)

boss_phantoon:
    %cm_toggle_bit("Phantoon", #$7ED82A, #$0100, #0)

boss_botwoon:
    %cm_toggle_bit("Botwoon", #$7ED82C, #$0002, #0)

boss_draygon:
    %cm_toggle_bit("Draygon", #$7ED82C, #$0001, #0)

boss_crocomire:
    %cm_toggle_bit("Crocomire", #$7ED82A, #$0002, #0)

boss_gt:
    %cm_toggle_bit("Golden Torizo", #$7ED82A, #$0004, #0)

boss_ridley:
    %cm_toggle_bit("Ridley", #$7ED82A, #$0001, #0)

boss_mb:
    %cm_toggle_bit("Mother Brain", #$7ED82C, #$0200, #0)


; ----------
; Items menu
; ----------

eventflags_prepare_items_menu:
{
    JSL setup_beams_ram
    JML eq_prepare_items_menu
}

ItemsMenu:
    dw #items_goto_crateria
    dw #items_goto_greenbrinstar
    dw #items_goto_pinkbrinstar
    dw #items_goto_bluebrinstar
    dw #items_goto_redbrinstar
    dw #items_goto_kraid
    dw #items_goto_uppernorfair
    dw #items_goto_crocomire
    dw #items_goto_lowernorfair
    dw #items_goto_wreckedship
    dw #items_goto_westmaridia
    dw #items_goto_eastmaridia
    dw #$0000
    %cm_header("ITEMS")

items_goto_crateria:
    %cm_submenu("Crateria", #ItemsCrateriaMenu)

items_goto_greenbrinstar:
    %cm_submenu("Green Brinstar", #ItemsGreenBrinstarMenu)

items_goto_pinkbrinstar:
    %cm_submenu("Pink Brinstar", #ItemsPinkBrinstarMenu)

items_goto_bluebrinstar:
    %cm_submenu("Blue Brinstar", #ItemsBlueBrinstarMenu)

items_goto_redbrinstar:
    %cm_submenu("Red Brinstar", #ItemsRedBrinstarMenu)

items_goto_kraid:
    %cm_submenu("Kraid", #ItemsKraidMenu)

items_goto_uppernorfair:
    %cm_submenu("Upper Norfair", #ItemsUpperNorfairMenu)

items_goto_crocomire:
    %cm_submenu("Crocomire", #ItemsCrocomireMenu)

items_goto_lowernorfair:
    %cm_submenu("Lower Norfair", #ItemsLowerNorfairMenu)

items_goto_wreckedship:
    %cm_submenu("Wrecked Ship", #ItemsWreckedShipMenu)

items_goto_westmaridia:
    %cm_submenu("West Maridia", #ItemsWestMaridiaMenu)

items_goto_eastmaridia:
    %cm_submenu("East Maridia", #ItemsEastMaridiaMenu)

ItemsCrateriaMenu:
    dw #items_0000_crateria
    dw #items_0001_crateria
    dw #items_0002_crateria
    dw #items_0003_crateria
    dw #items_0004_crateria
    dw #items_0005_crateria
    dw #items_0006_crateria
    dw #items_0007_crateria
    dw #items_0008_crateria
    dw #items_0009_crateria
    dw #items_000A_crateria
    dw #items_000B_crateria
    dw #items_000C_crateria
    dw #$FFFF
    dw #ti_bomb
    dw #$0000
    %cm_header("CRATERIA ITEMS")

items_0000_crateria:
    %cm_toggle_bit("Crateria PBs", #$7ED870, #$0001, #0)

items_0001_crateria:
    %cm_toggle_bit("Underwater Missiles", #$7ED870, #$0002, #0)

items_0002_crateria:
    %cm_toggle_bit("Sky Missiles", #$7ED870, #$0004, #0)

items_0003_crateria:
    %cm_toggle_bit("Ocean Maze Missiles", #$7ED870, #$0008, #0)

items_0004_crateria:
    %cm_toggle_bit("Moat Missiles", #$7ED870, #$0010, #0)

items_0005_crateria:
    %cm_toggle_bit("Gauntlet E-Tank", #$7ED870, #$0020, #0)

items_0006_crateria:
    %cm_toggle_bit("Old MB Missiles", #$7ED870, #$0040, #0)

items_0007_crateria:
    %cm_toggle_bit("Bombs", #$7ED870, #$0080, #0)

items_0008_crateria:
    %cm_toggle_bit("Terminator E-Tank", #$7ED870, #$0100, #0)

items_0009_crateria:
    %cm_toggle_bit("Gauntlet Right Missile", #$7ED870, #$0200, #0)

items_000A_crateria:
    %cm_toggle_bit("Gauntlet Left Missile", #$7ED870, #$0400, #0)

items_000B_crateria:
    %cm_toggle_bit("Climb Supers", #$7ED870, #$0800, #0)

items_000C_crateria:
    %cm_toggle_bit("230 Missiles", #$7ED870, #$1000, #0)

ItemsGreenBrinstarMenu:
    dw #items_000D_greenbrinstar
    dw #items_000F_greenbrinstar
    dw #items_0010_greenbrinstar
    dw #items_0011_greenbrinstar
    dw #items_0012_greenbrinstar
    dw #items_0013_greenbrinstar
    dw #items_0019_greenbrinstar
    dw #items_001E_greenbrinstar
    dw #items_001F_greenbrinstar
    dw #$0000
    %cm_header("GREEN BRINSTAR ITEMS")

items_000D_greenbrinstar:
    %cm_toggle_bit("Etecoons PBs", #$7ED870, #$2000, #0)

items_000F_greenbrinstar:
    %cm_toggle_bit("Early Supers Missiles", #$7ED870, #$8000, #0)

items_0010_greenbrinstar:
    %cm_toggle_bit("Early Supers", #$7ED872, #$0001, #0)

items_0011_greenbrinstar:
    %cm_toggle_bit("Brinstar Reserve Tank", #$7ED872, #$0002, #0)

items_0012_greenbrinstar:
    %cm_toggle_bit("Reserve Hidden Missile", #$7ED872, #$0004, #0)

items_0013_greenbrinstar:
    %cm_toggle_bit("Reserve Shown Missile", #$7ED872, #$0008, #0)

items_0019_greenbrinstar:
    %cm_toggle_bit("Green Hills Missiles", #$7ED872, #$0200, #0)

items_001E_greenbrinstar:
    %cm_toggle_bit("Etecoons E-Tank", #$7ED872, #$4000, #0)

items_001F_greenbrinstar:
    %cm_toggle_bit("Etecoons Supers", #$7ED872, #$8000, #0)

ItemsPinkBrinstarMenu:
    dw #items_000E_pinkbrinstar
    dw #items_0015_pinkbrinstar
    dw #items_0016_pinkbrinstar
    dw #items_0017_pinkbrinstar
    dw #items_0018_pinkbrinstar
    dw #items_0021_pinkbrinstar
    dw #items_0023_pinkbrinstar
    dw #$FFFF
    dw #tb_chargebeam
    dw #$0000
    %cm_header("PINK BRINSTAR ITEMS")

items_000E_pinkbrinstar:
    %cm_toggle_bit("Spore Spawn Supers", #$7ED870, #$4000, #0)

items_0015_pinkbrinstar:
    %cm_toggle_bit("Impossible PB Missiles", #$7ED872, #$0020, #0)

items_0016_pinkbrinstar:
    %cm_toggle_bit("Charge Missiles", #$7ED872, #$0040, #0)

items_0017_pinkbrinstar:
    %cm_toggle_bit("Charge Beam", #$7ED872, #$0080, #0)

items_0018_pinkbrinstar:
    %cm_toggle_bit("Impossible PBs", #$7ED872, #$0100, #0)

items_0021_pinkbrinstar:
    %cm_toggle_bit("Waterway E-Tank", #$7ED874, #$0002, #0)

items_0023_pinkbrinstar:
    %cm_toggle_bit("Wave Gate E-Tank", #$7ED874, #$0008, #0)

ItemsBlueBrinstarMenu:
    dw #items_001A_bluebrinstar
    dw #items_001B_bluebrinstar
    dw #items_001C_bluebrinstar
    dw #items_001D_bluebrinstar
    dw #items_0022_bluebrinstar
    dw #items_0024_bluebrinstar
    dw #items_0025_bluebrinstar
    dw #$FFFF
    dw #ti_morphball
    dw #$0000
    %cm_header("BLUE BRINSTAR ITEMS")

items_001A_bluebrinstar:
    %cm_toggle_bit("Morph Ball", #$7ED872, #$0400, #0)

items_001B_bluebrinstar:
    %cm_toggle_bit("Retro PBs", #$7ED872, #$0800, #0)

items_001C_bluebrinstar:
    %cm_toggle_bit("Retro Missiles", #$7ED872, #$1000, #0)

items_001D_bluebrinstar:
    %cm_toggle_bit("Retro E-Tank", #$7ED872, #$2000, #0)

items_0022_bluebrinstar:
    %cm_toggle_bit("Alpha Missiles", #$7ED874, #$0004, #0)

items_0024_bluebrinstar:
    %cm_toggle_bit("Billy Shown Missiles", #$7ED874, #$0010, #0)

items_0025_bluebrinstar:
    %cm_toggle_bit("Billy Hidden Missiles", #$7ED874, #$0020, #0)

ItemsRedBrinstarMenu:
    dw #items_0026_redbrinstar
    dw #items_0027_redbrinstar
    dw #items_0028_redbrinstar
    dw #items_0029_redbrinstar
    dw #items_002A_redbrinstar
    dw #$FFFF
    dw #ti_xray
    dw #tb_spazerbeam
    dw #$0000
    %cm_header("RED BRINSTAR ITEMS")

items_0026_redbrinstar:
    %cm_toggle_bit("X-Ray", #$7ED874, #$0040, #0)

items_0027_redbrinstar:
    %cm_toggle_bit("Beta Power Bombs", #$7ED874, #$0080, #0)

items_0028_redbrinstar:
    %cm_toggle_bit("Alpha Power Bombs", #$7ED874, #$0100, #0)

items_0029_redbrinstar:
    %cm_toggle_bit("Alpha PB Missiles", #$7ED874, #$0200, #0)

items_002A_redbrinstar:
    %cm_toggle_bit("Spazer", #$7ED874, #$0400, #0)

ItemsKraidMenu:
    dw #items_002B_kraid
    dw #items_002C_kraid
    dw #items_0030_kraid
    dw #$FFFF
    dw #ti_variasuit
    dw #$0000
    %cm_header("KRAID ITEMS")

items_002B_kraid:
    %cm_toggle_bit("Kraid E-Tank", #$7ED874, #$0800, #0)

items_002C_kraid:
    %cm_toggle_bit("Kraid Missiles", #$7ED874, #$1000, #0)

items_0030_kraid:
    %cm_toggle_bit("Varia Suit", #$7ED876, #$0001, #0)

ItemsUpperNorfairMenu:
    dw #items_0031_uppernorfair
    dw #items_0032_uppernorfair
    dw #items_0033_uppernorfair
    dw #items_0035_uppernorfair
    dw #items_0036_uppernorfair
    dw #items_0037_uppernorfair
    dw #items_0038_uppernorfair
    dw #items_003D_uppernorfair
    dw #items_003E_uppernorfair
    dw #items_003F_uppernorfair
    dw #items_0040_uppernorfair
    dw #items_0041_uppernorfair
    dw #items_0042_uppernorfair
    dw #items_0043_uppernorfair
    dw #items_0044_uppernorfair
    dw #$FFFF
    dw #tb_icebeam
    dw #ti_hijumpboots
    dw #ti_speedbooster
    dw #tb_wavebeam
    dw #$0000
    %cm_header("UPPER NORFAIR ITEMS")

items_0031_uppernorfair:
    %cm_toggle_bit("Cathedral Missiles", #$7ED876, #$0002, #0)

items_0032_uppernorfair:
    %cm_toggle_bit("Ice Beam", #$7ED876, #$0004, #0)

items_0033_uppernorfair:
    %cm_toggle_bit("Crumble Missiles", #$7ED876, #$0008, #0)

items_0035_uppernorfair:
    %cm_toggle_bit("Hi Jump Boots", #$7ED876, #$0020, #0)

items_0036_uppernorfair:
    %cm_toggle_bit("Croc Escape Missiles", #$7ED876, #$0040, #0)

items_0037_uppernorfair:
    %cm_toggle_bit("Hi Jump Missiles", #$7ED876, #$0080, #0)

items_0038_uppernorfair:
    %cm_toggle_bit("Hi Jump E-Tank", #$7ED876, #$0100, #0)

items_003D_uppernorfair:
    %cm_toggle_bit("Norfair Reserve Tank", #$7ED876, #$2000, #0)

items_003E_uppernorfair:
    %cm_toggle_bit("Reserve Missiles", #$7ED876, #$4000, #0)

items_003F_uppernorfair:
    %cm_toggle_bit("Bubble Missiles", #$7ED876, #$8000, #0)

items_0040_uppernorfair:
    %cm_toggle_bit("Mountain Missiles", #$7ED878, #$0001, #0)

items_0041_uppernorfair:
    %cm_toggle_bit("Speed Missiles", #$7ED878, #$0002, #0)

items_0042_uppernorfair:
    %cm_toggle_bit("Speed Booster", #$7ED878, #$0004, #0)

items_0043_uppernorfair:
    %cm_toggle_bit("Wave Missiles", #$7ED878, #$0008, #0)

items_0044_uppernorfair:
    %cm_toggle_bit("Wave Beam", #$7ED878, #$0010, #0)

ItemsCrocomireMenu:
    dw #items_0034_crocomire
    dw #items_0039_crocomire
    dw #items_003A_crocomire
    dw #items_003B_crocomire
    dw #items_003C_crocomire
    dw #$FFFF
    dw #ti_grapple
    dw #$0000
    %cm_header("CROCOMIRE ITEMS")

items_0034_crocomire:
    %cm_toggle_bit("Croc E-Tank", #$7ED876, #$0010, #0)

items_0039_crocomire:
    %cm_toggle_bit("Post Croc PBs", #$7ED876, #$0200, #0)

items_003A_crocomire:
    %cm_toggle_bit("Cosine Missiles", #$7ED876, #$0400, #0)

items_003B_crocomire:
    %cm_toggle_bit("Indiana Jones Missiles", #$7ED876, #$0800, #0)

items_003C_crocomire:
    %cm_toggle_bit("Grapple", #$7ED876, #$1000, #0)

ItemsLowerNorfairMenu:
    dw #items_0046_lowernorfair
    dw #items_0047_lowernorfair
    dw #items_0049_lowernorfair
    dw #items_004A_lowernorfair
    dw #items_004B_lowernorfair
    dw #items_004C_lowernorfair
    dw #items_004D_lowernorfair
    dw #items_004E_lowernorfair
    dw #items_004F_lowernorfair
    dw #items_0050_lowernorfair
    dw #$FFFF
    dw #ti_screwattack
    dw #$0000
    %cm_header("LOWER NORFAIR ITEMS")

items_0046_lowernorfair:
    %cm_toggle_bit("Golden Torizo Missiles", #$7ED878, #$0040, #0)

items_0047_lowernorfair:
    %cm_toggle_bit("Golden Torizo Supers", #$7ED878, #$0080, #0)

items_0049_lowernorfair:
    %cm_toggle_bit("Mickey Mouse Missiles", #$7ED878, #$0200, #0)

items_004A_lowernorfair:
    %cm_toggle_bit("Hotarubi Missiles", #$7ED878, #$0400, #0)

items_004B_lowernorfair:
    %cm_toggle_bit("Jail Power Bombs", #$7ED878, #$0800, #0)

items_004C_lowernorfair:
    %cm_toggle_bit("PBs of Shame", #$7ED878, #$1000, #0)

items_004D_lowernorfair:
    %cm_toggle_bit("Musketeer Missiles", #$7ED878, #$2000, #0)

items_004E_lowernorfair:
    %cm_toggle_bit("Ridley E-Tank", #$7ED878, #$4000, #0)

items_004F_lowernorfair:
    %cm_toggle_bit("Screw Attack", #$7ED878, #$8000, #0)

items_0050_lowernorfair:
    %cm_toggle_bit("Firefleas E-Tank", #$7ED87A, #$0001, #0)

ItemsWreckedShipMenu:
    dw #items_0080_wreckedship
    dw #items_0081_wreckedship
    dw #items_0082_wreckedship
    dw #items_0083_wreckedship
    dw #items_0084_wreckedship
    dw #items_0085_wreckedship
    dw #items_0086_wreckedship
    dw #items_0087_wreckedship
    dw #$FFFF
    dw #ti_gravitysuit
    dw #$0000
    %cm_header("WRECKED SHIP ITEMS")

items_0080_wreckedship:
    %cm_toggle_bit("Spooky Missiles", #$7ED880, #$0001, #0)

items_0081_wreckedship:
    %cm_toggle_bit("WS Reserve Tank", #$7ED880, #$0002, #0)

items_0082_wreckedship:
    %cm_toggle_bit("Bowling Missiles", #$7ED880, #$0004, #0)

items_0083_wreckedship:
    %cm_toggle_bit("Robot Missiles", #$7ED880, #$0008, #0)

items_0084_wreckedship:
    %cm_toggle_bit("WS E-Tank", #$7ED880, #$0010, #0)

items_0085_wreckedship:
    %cm_toggle_bit("Left Side Supers", #$7ED880, #$0020, #0)

items_0086_wreckedship:
    %cm_toggle_bit("Right Side Supers", #$7ED880, #$0040, #0)

items_0087_wreckedship:
    %cm_toggle_bit("Gravity Suit", #$7ED880, #$0080, #0)

ItemsWestMaridiaMenu:
    dw #items_0088_westmaridia
    dw #items_0089_westmaridia
    dw #items_008A_westmaridia
    dw #items_008B_westmaridia
    dw #items_008C_westmaridia
    dw #items_008D_westmaridia
    dw #items_008E_westmaridia
    dw #$0000
    %cm_header("WEST MARIDIA ITEMS")

items_0088_westmaridia:
    %cm_toggle_bit("Main Street Missiles", #$7ED880, #$0100, #0)

items_0089_westmaridia:
    %cm_toggle_bit("Crab Supers", #$7ED880, #$0200, #0)

items_008A_westmaridia:
    %cm_toggle_bit("Mama Turtle E-Tank", #$7ED880, #$0400, #0)

items_008B_westmaridia:
    %cm_toggle_bit("Mama Turtle Missiles", #$7ED880, #$0800, #0)

items_008C_westmaridia:
    %cm_toggle_bit("Watering Hole Supers", #$7ED880, #$1000, #0)

items_008D_westmaridia:
    %cm_toggle_bit("Watering Hole Missiles", #$7ED880, #$2000, #0)

items_008E_westmaridia:
    %cm_toggle_bit("Beach Missiles", #$7ED880, #$4000, #0)

ItemsEastMaridiaMenu:
    dw #items_008F_eastmaridia
    dw #items_0090_eastmaridia
    dw #items_0091_eastmaridia
    dw #items_0092_eastmaridia
    dw #items_0093_eastmaridia
    dw #items_0094_eastmaridia
    dw #items_0095_eastmaridia
    dw #items_0096_eastmaridia
    dw #items_0097_eastmaridia
    dw #items_0098_eastmaridia
    dw #items_009A_eastmaridia
    dw #$FFFF
    dw #tb_plasmabeam
    dw #ti_springball
    dw #ti_spacejump
    dw #$0000
    %cm_header("EAST MARIDIA ITEMS")

items_008F_eastmaridia:
    %cm_toggle_bit("Plasma Beam", #$7ED880, #$8000, #0)

items_0090_eastmaridia:
    %cm_toggle_bit("Left Pit Missiles", #$7ED882, #$0001, #0)

items_0091_eastmaridia:
    %cm_toggle_bit("Maridia Reserve Tank", #$7ED882, #$0002, #0)

items_0092_eastmaridia:
    %cm_toggle_bit("Right Pit Missiles", #$7ED882, #$0004, #0)

items_0093_eastmaridia:
    %cm_toggle_bit("Maridia PBs", #$7ED882, #$0008, #0)

items_0094_eastmaridia:
    %cm_toggle_bit("Aqueduct Missiles", #$7ED882, #$0010, #0)

items_0095_eastmaridia:
    %cm_toggle_bit("Aqueduct Supers", #$7ED882, #$0020, #0)

items_0096_eastmaridia:
    %cm_toggle_bit("Springball", #$7ED882, #$0040, #0)

items_0097_eastmaridia:
    %cm_toggle_bit("Precious Missiles", #$7ED882, #$0080, #0)

items_0098_eastmaridia:
    %cm_toggle_bit("Botwoon E-Tank", #$7ED882, #$0100, #0)

items_009A_eastmaridia:
    %cm_toggle_bit("Space Jump", #$7ED882, #$0400, #0)


; ----------
; Doors menu
; ----------

DoorsMenu:
    dw #doors_goto_crateria
    dw #doors_goto_crateriaescape
    dw #doors_goto_greenbrinstar
    dw #doors_goto_pinkbrinstar
    dw #doors_goto_bluebrinstar
    dw #doors_goto_redbrinstar
    dw #doors_goto_kraid
    dw #doors_goto_uppernorfair
    dw #doors_goto_lowernorfair
    dw #doors_goto_wreckedship
    dw #doors_goto_westmaridia
    dw #doors_goto_eastmaridia
    dw #doors_goto_tourian
    dw #$0000
    %cm_header("DOORS")

doors_goto_crateria:
    %cm_submenu("Crateria", #DoorsCrateriaMenu)

doors_goto_crateriaescape:
    %cm_submenu("Crateria Escape", #DoorsCrateriaEscapeMenu)

doors_goto_greenbrinstar:
    %cm_submenu("Green Brinstar", #DoorsGreenBrinstarMenu)

doors_goto_pinkbrinstar:
    %cm_submenu("Pink Brinstar", #DoorsPinkBrinstarMenu)

doors_goto_bluebrinstar:
    %cm_submenu("Blue Brinstar", #DoorsBlueBrinstarMenu)

doors_goto_redbrinstar:
    %cm_submenu("Red Brinstar", #DoorsRedBrinstarMenu)

doors_goto_kraid:
    %cm_submenu("Kraid", #DoorsKraidMenu)

doors_goto_uppernorfair:
    %cm_submenu("Upper Norfair", #DoorsUpperNorfairMenu)

doors_goto_lowernorfair:
    %cm_submenu("Lower Norfair", #DoorsLowerNorfairMenu)

doors_goto_wreckedship:
    %cm_submenu("Wrecked Ship", #DoorsWreckedShipMenu)

doors_goto_westmaridia:
    %cm_submenu("West Maridia", #DoorsWestMaridiaMenu)

doors_goto_eastmaridia:
    %cm_submenu("East Maridia", #DoorsEastMaridiaMenu)

doors_goto_tourian:
    %cm_submenu("Tourian", #DoorsTourianMenu)

DoorsCrateriaMenu:
    ; 0000-001E, 0048
    dw #$0000
    %cm_header("CRATERIA DOORS")

DoorsCrateriaEscapeMenu:
    ; 0000-001E, 0048
    dw #$0000
    %cm_header("CRATERIA ESCAPE DOORS")

DoorsGreenBrinstarMenu:
    ; 001F-0047
    dw #$0000
    %cm_header("GREEN BRINSTAR DOORS")

DoorsPinkBrinstarMenu:
    ; 001F-0047
    dw #$0000
    %cm_header("PINK BRINSTAR DOORS")

DoorsBlueBrinstarMenu:
    ; 001F-0047
    dw #$0000
    %cm_header("BLUE BRINSTAR DOORS")

DoorsRedBrinstarMenu:
    ; 001F-0047
    dw #$0000
    %cm_header("RED BRINSTAR DOORS")

DoorsKraidMenu:
    ; 001F-0047
    dw #$0000
    %cm_header("KRAID DOORS")

DoorsUpperNorfairMenu:
    ; 0049-0060
    dw #$0000
    %cm_header("UPPER NORFAIR DOORS")

DoorsLowerNorfairMenu:
    ; 0049-0060
    dw #$0000
    %cm_header("LOWER NORFAIR DOORS")

DoorsWreckedShipMenu:
    ; 0080-008B
    dw #$0000
    %cm_header("WRECKED SHIP DOORS")

DoorsWestMaridiaMenu:
    ; 008C-009F
    dw #$0000
    %cm_header("WEST MARIDIA DOORS")

DoorsEastMaridiaMenu:
    ; 008C-009F
    dw #$0000
    %cm_header("EAST MARIDIA DOORS")

DoorsTourianMenu:
    ; 00A0-00AC
    dw #$0000
    %cm_header("TOURIAN DOORS")


; -----------------
; Map Stations menu
; -----------------

MapStationsMenu:
    dw #mapstations_crateria
    dw #mapstations_brinstar
    dw #mapstations_norfair
    dw #mapstations_wreckedship
    dw #mapstations_maridia
    dw #mapstations_tourian
    dw #$0000
    %cm_header("MAP STATIONS")

mapstations_crateria:
    %cm_toggle_bit("Crateria", $7ED908, #$0001, #0)

mapstations_brinstar:
    %cm_toggle_bit("Brinstar", $7ED908, #$0100, #0)

mapstations_norfair:
    %cm_toggle_bit("Norfair", $7ED90A, #$0001, #0)

mapstations_wreckedship:
    %cm_toggle_bit("Wrecked Ship", $7ED90A, #$0100, #0)

mapstations_maridia:
    %cm_toggle_bit("Maridia", $7ED90C, #$0001, #0)

mapstations_tourian:
    %cm_toggle_bit("Tourian", $7ED90C, #$0100, #0)


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


; -----------
; Misc menu
; -----------

MiscMenu:
    dw #misc_bluesuit
    dw #misc_flashsuit
    dw #misc_hyperbeam
    dw #$FFFF
    dw #misc_gooslowdown
    dw #misc_healthbomb
    dw #misc_suit_properties
    dw #misc_water_physics
    dw #misc_double_jump
    dw #misc_spin_lock
    dw #$FFFF
    dw #misc_magicpants
    dw #misc_spacepants
    dw #$FFFF
    dw #misc_metronome
    dw #misc_metronome_tickrate
    dw #misc_metronome_sfx
    dw #$FFFF
    dw #misc_killenemies
    dw #misc_forcestand
    dw #$0000
    %cm_header("MISC")

misc_bluesuit:
    %cm_toggle("Blue Suit", !SAMUS_DASH_COUNTER, #$0004, #0)

misc_flashsuit:
    %cm_toggle("Flash Suit", !SAMUS_SHINE_TIMER, #$0001, #0)

misc_hyperbeam:
    %cm_toggle_bit("Hyper Beam", !SAMUS_HYPER_BEAM, #$8000, #.routine)
  .routine
    AND #$8000 : BEQ .off
    LDA #$0003 ; jump table index
if !FEATURE_PAL
    JML $91E412
else ; setup Samus for Hyper Beam
    JML $91E4AD
endif

  .off
    ; check for Spazer+Plasma
    LDA !SAMUS_BEAMS_COLLECTED : AND #$000C : CMP #$000C : BEQ .disableMurder
    LDA !SAMUS_BEAMS_COLLECTED : STA !SAMUS_BEAMS_EQUIPPED
    BRA .FXobjects

  .disableMurder
    LDA !SAMUS_BEAMS_COLLECTED : AND #$000B : STA !SAMUS_BEAMS_EQUIPPED

  .FXobjects
    LDX #$000E

  .loopFXobjects
    ; find Hyper Beam palette FX object index
    LDA !PALETTE_FX_ID,X : CMP #$E1F0 : BEQ .found
    DEX #2 : BPL .loopFXobjects

  .found
    STZ !PALETTE_FX_ID,X ; this is probably the only one that matters
    STZ !PALETTE_FX_COLOR_INDICES,X
    STZ !PALETTE_FX_VARIABLE,X
    STZ !PALETTE_FX_PREINSTRUCTION,X
    STZ !PALETTE_FX_INSTRUCTION_POINTER,X
    STZ !PALETTE_FX_INSTRUCTION_TIMER,X
    STZ !PALETTE_FX_TIMER,X
    JML $90AC8D ; update beam gfx

misc_gooslowdown:
    %cm_numfield("Goo Slowdown", $7E0A66, 0, 4, 1, 1, #0)

misc_healthbomb:
    %cm_toggle("Health Bomb Flag", !SAMUS_HEALTH_WARNING, #$0001, #0)

misc_magicpants:
    dw !ACTION_CHOICE
    dl #!ram_magic_pants_enabled
    dw #$0000
    db #$28, "Magic Pants", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "      FLASH", #$FF
    db #$28, "       LOUD", #$FF
    db #$28, "       BOTH", #$FF
    db #$FF

misc_spacepants:
    dw !ACTION_CHOICE
    dl #!ram_space_pants_enabled
    dw #$0000
    db #$28, "Space Pants", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "      FLASH", #$FF
    db #$28, "       LOUD", #$FF
    db #$28, "       BOTH", #$FF
    db #$FF

misc_metronome:
    %cm_toggle("Metronome", !ram_metronome, #$0001, GameLoopExtras)

misc_metronome_tickrate:
    %cm_numfield("Metronome Tickrate", !sram_metronome_tickrate, 1, 255, 1, 8, #.routine)
  .routine
    TDC : STA !ram_metronome_counter
    RTL

misc_metronome_sfx:
    dw !ACTION_CHOICE
    dl #!sram_metronome_sfx
    dw #$0000
    db #$28, "Metronome SFX", #$FF
    db #$28, "    MISSILE", #$FF
    db #$28, "      CLICK", #$FF
    db #$28, "       BEEP", #$FF
    db #$28, " POWER BEAM", #$FF
    db #$28, "     SPAZER", #$FF
    db #$FF

misc_suit_properties:
    dw !ACTION_CHOICE
    dl #!ram_cm_suit_properties
    dw .routine
    db #$28, "Suit Properties", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "   BALANCED", #$FF
    db #$28, "   PROGRESS", #$FF
    db #$28, " COMPLEMENT", #$FF
    db #$28, " DASHRECALL", #$FF
    db #$28, " HEATSHIELD", #$FF
    db #$FF
  .routine
    LDA !ram_cm_suit_properties : STA !sram_suit_properties
    LDA !PAL_DEBUG_MOVEMENT : BNE init_suit_properties_ram
    LDA !sram_suit_properties : ORA !SUIT_PROPRETIES_PAL_DEBUG_FLAG
    STA !sram_suit_properties
    ; Fallthrough to init_suit_properties_ram

init_suit_properties_ram:
{
    LDA !sram_suit_properties : BIT !SUIT_PROPRETIES_PAL_DEBUG_FLAG : BNE .palDebug
    TDC : INC : STA !PAL_DEBUG_MOVEMENT
    BRA .initProperties

  .palDebug
    STZ !PAL_DEBUG_MOVEMENT

  .initProperties
    ; Default to both suits getting 50% damage reduction (gravity gets extra 50%)
    ; and both suits getting full heat protection
    LDA #$0021 : STA !ram_suits_enemy_damage_check : STA !ram_suits_heat_damage_check

    LDA !sram_suit_properties : AND !SUIT_PROPERTIES_MASK
    CMP #$0002 : BMI .initHeatDamage

    ; Progressive, Complementary, and DASH Recall/Heat Shield
    ; give less enemy damage protection to gravity
    LDA #$0001 : STA !ram_suits_enemy_damage_check

  .initHeatDamage
    LDA !sram_suit_properties : AND !SUIT_PROPERTIES_MASK : BEQ .end

    ; Not vanilla, so only varia gets full heat protection
    LDA #$0001 : STA !ram_suits_heat_damage_check

  .end
    ; Fallthrough to init_heat_damage_ram
}

init_heat_damage_ram:
{
    ; Default to gravity provides lava protection
    LDA #$0020 : STA !SAMUS_LAVA_DAMAGE_SUITS

    ; Default to 0.25 damage per frame
    LDA #$4000 : STA !ram_suits_heat_damage_value

    LDA !sram_suit_properties : AND !SUIT_PROPERTIES_MASK
    CMP #$0004 : BPL .dashRecall
    CMP #$0003 : BEQ .complementary
    RTL

  .complementary
    ; Both varia and gravity required for lava protection
    LDA #$0021 : STA !SAMUS_LAVA_DAMAGE_SUITS

    ; If no gravity than nothing to do
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0020 : BEQ .end

    ; Without heat shield but with gravity we want heat damage to be 100%
    ; Since damage is halved by gravity we'll set it to 200%
    LDA #$8000 : STA !ram_suits_heat_damage_value
    RTL

  .dashRecall
    BNE .heatShield

    ; If no gravity than nothing to do
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0020 : BEQ .end

    ; Without heat shield but with gravity we want heat damage to be 75%
    ; Since damage is halved by gravity we'll set it to 150%
    LDA #$6000 : STA !ram_suits_heat_damage_value

  .end
    RTL

  .heatShield
    LDA !ROOM_ID : CMP #ROOM_BowlingAlley : BPL .noDamage
    CMP #ROOM_LavaDiveRoom : BMI .noDamage
    CMP #ROOM_LNElevatorSaveRoom : BPL .heatShieldDamage
    CMP #ROOM_UpperNorfFarmingRoom : BPL .noDamage

  .heatShieldDamage
    ; We want Lower Norfair heat damage to be 50%
    ; However if gravity is equipped then the damage is already halved
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0020 : BNE .end
    LDA #$2000 : STA !ram_suits_heat_damage_value
    RTL

  .noDamage
    TDC : STA !ram_suits_heat_damage_value
    RTL
}

misc_water_physics:
    dw !ACTION_CHOICE
    dl #!sram_water_physics
    dw init_physics_ram
    db #$28, "Water Physics", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "PRESS VALVE", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "         ON", #$FF
    db #$28, "  OFF TO ON", #$FF
    db #$28, "  ON TO OFF", #$FF
    db #$FF

misc_double_jump:
    %cm_toggle_bit("Double Jump", !sram_double_jump, #$0200, init_physics_ram)

misc_spin_lock:
    %cm_toggle("Spin Lock", !sram_spin_lock, #$0001, #0)

init_physics_ram:
{
    LDA !sram_water_physics : BNE init_physics_non_vanilla
    ; Fallthrough to init_physics_vanilla
}

init_physics_vanilla:
{
    LDA !SAMUS_ITEMS_EQUIPPED : ORA.l !sram_double_jump : STA !SAMUS_WATER_PHYSICS
    RTL
}

init_physics_after_transition:
{
    LDA !sram_water_physics : BEQ init_physics_vanilla

    ; Check if we need to toggle on-to-off or off-to-on states
    CMP #$0004 : BMI init_physics_non_vanilla
    EOR #$0001 : STA !sram_water_physics
}

init_physics_non_vanilla:
{
    CMP #$0001 : BEQ .pv
    BIT #$0001 : BNE .on

  .off
    LDA !SAMUS_ITEMS_EQUIPPED : AND #$0200
    ORA.l !sram_double_jump : ORA #$0020 : STA !SAMUS_WATER_PHYSICS
    RTL

  .on
    LDA !SAMUS_ITEMS_EQUIPPED : AND #$0200
    ORA.l !sram_double_jump : STA !SAMUS_WATER_PHYSICS
    RTL

  .pv
    LDA !ROOM_ID : CMP #ROOM_BowlingAlley : BMI .pv_more
    CMP.w #ROOM_WestSandHole : BMI .off
    CMP.w #ROOM_HalfieClimbRoom : BPL .pv_on
    CMP.w #ROOM_ButterflyRoom : BEQ .off
    CMP.w #ROOM_PantsRoom : BEQ .off
    CMP.w #ROOM_EastPantsRoom : BEQ .off
    CMP.w #ROOM_SpringBallRoom : BEQ .off
    CMP.w #ROOM_PlasmaBeachQuicksand : BEQ .off
    CMP.w #ROOM_ShaktoolRoom : BEQ .off

  .pv_on
    LDA !SAMUS_ITEMS_EQUIPPED : AND #$0220
    ORA.l !sram_double_jump : STA !SAMUS_WATER_PHYSICS
    RTL

  .pv_more
    CMP.w #ROOM_GrappleTutorialRoom1 : BEQ .off
    CMP.w #ROOM_GrappleTutorialRoom3 : BEQ .off
    CMP.w #ROOM_SloatersRefill : BPL .pv_on
    CMP.w #ROOM_FinalMissileBombway : BPL .off
    CMP.w #ROOM_GauntletETankRoom : BPL .pv_on
    CMP.w #ROOM_CrateriaSaveRoom : BMI .pv_on
    BRA .off
}

misc_killenemies:
    %cm_jsl("Kill Enemies", .kill_loop, #0)
  .kill_loop
    ; 8000 = solid to Samus, 0400 = Ignore Samus projectiles, 0100 = Invisible
    TAX : LDA !ENEMY_PROPERTIES,X : BIT #$8500 : BNE .next_enemy
    ORA #$0200 : STA !ENEMY_PROPERTIES,X
  .next_enemy
    TXA : CLC : ADC #$0040 : CMP #$0800 : BNE .kill_loop
    %sfxconfirm()
    RTL

misc_forcestand:
    %cm_jsl("Force Samus to Stand Up", .routine, #0)
  .routine
    JSL $90E2D4 ; bridge to: Release Samus from Draygon
    %sfxconfirm()
    RTL

GameLoopExtras:
{
    ; This allows us to maintain a baseline for CPU timing
    ; without restricting our ability to add non-essential features
    ; Set the flag if any of these features are enabled
    LDA !ram_magic_pants_enabled : BNE .enabled
    LDA !ram_space_pants_enabled : BNE .enabled
    LDA !ram_metronome

  .enabled
    STA !ram_game_loop_extras
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

pushpc
org $85C000
print pc, " mainmenu InfoHUD start"

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
    dw ihmode_xpos
    dw ihmode_ypos
    dw ihmode_hspeed
    dw ihmode_vspeed
    dw ihmode_quickdrop
    dw ihmode_walljump
    dw ihmode_armpump
    dw ihmode_shottimer
    dw ihmode_ramwatch
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

ihmode_xpos:
    %cm_jsl("X Position", #action_select_infohud_mode, #$000C)

ihmode_ypos:
    %cm_jsl("Y Position", #action_select_infohud_mode, #$000D)

ihmode_hspeed:
    %cm_jsl("Horizontal Speed", #action_select_infohud_mode, #$000E)

ihmode_vspeed:
!IH_MODE_VSPEED_INDEX = #$000F
    %cm_jsl("Vertical Speed", #action_select_infohud_mode, #$000F)

ihmode_quickdrop:
    %cm_jsl("Quickdrop Trainer", #action_select_infohud_mode, #$0010)

ihmode_walljump:
!IH_MODE_WALLJUMP_INDEX = #$0011
    %cm_jsl("Walljump Trainer", #action_select_infohud_mode, #$0011)

ihmode_armpump:
!IH_MODE_ARMPUMP_INDEX = #$0012
    %cm_jsl("Arm Pump Trainer", #action_select_infohud_mode, #$0012)

ihmode_shottimer:
    %cm_jsl("Shot Timer", #action_select_infohud_mode, #$0013)

ihmode_ramwatch:
!IH_MODE_RAMWATCH_INDEX = #$0014
    %cm_jsl("Custom RAM Watch", #action_select_infohud_mode, #$0014)

!IH_MODE_COUNT = #$0015
action_select_infohud_mode:
{
    TYA : STA !sram_display_mode
    JSL init_print_segment_timer
    JML cm_previous_menu
}

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
    db #$28, " X POSITION", #$FF
    db #$28, " Y POSITION", #$FF
    db #$28, "HORIZ SPEED", #$FF
    db #$28, " VERT SPEED", #$FF
    db #$28, " QUICK DROP", #$FF
    db #$28, "  WALL JUMP", #$FF
    db #$28, "   ARM PUMP", #$FF
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
    dw ihstrat_doorskip
    dw ihstrat_tacotank
    dw ihstrat_moondance
    dw ihstrat_gateglitch
    dw ihstrat_moatcwj
    dw ihstrat_robotflush
    dw ihstrat_shinetopb
    dw ihstrat_elevatorcf
    dw ihstrat_botwooncf
    dw ihstrat_draygonai
    dw ihstrat_snailclip
    dw ihstrat_wasteland
    dw ihstrat_ridleyai
    dw ihstrat_downbackzeb
    dw ihstrat_mbhp
    dw ihstrat_twocries
    dw #$0000
    %cm_header("INFOHUD ROOM STRAT")
    %cm_footer("ROOM STRAT MUST BE ACTIVE")

ihstrat_doorskip:
    %cm_jsl("Parlor-Climb Door Skip", #action_select_room_strat, #$0000)

ihstrat_tacotank:
    %cm_jsl("Taco Tank", #action_select_room_strat, #$0001)

ihstrat_moondance:
    %cm_jsl("Moondance", #action_select_room_strat, #$0002)

ihstrat_gateglitch:
    %cm_jsl("Gate Glitch", #action_select_room_strat, #$0003)

ihstrat_moatcwj:
    %cm_jsl("Moat CWJ", #action_select_room_strat, #$0004)

ihstrat_robotflush:
    %cm_jsl("Robot Flush", #action_select_room_strat, #$0005)

ihstrat_shinetopb:
    %cm_jsl("Shine to PB", #action_select_room_strat, #$0006)

ihstrat_elevatorcf:
    %cm_jsl("Elevator Crystal Flash", #action_select_room_strat, #$0007)

ihstrat_botwooncf:
    %cm_jsl("Botwoon Crystal Flash", #action_select_room_strat, #$0008)

ihstrat_draygonai:
    %cm_jsl("Draygon AI", #action_select_room_strat, #$0009)

ihstrat_snailclip:
    %cm_jsl("Aqueduct Snail Clip", #action_select_room_strat, #$000A)

ihstrat_wasteland:
    %cm_jsl("Wasteland Entry", #action_select_room_strat, #$000B)

ihstrat_ridleyai:
    %cm_jsl("Ridley AI", #action_select_room_strat, #$000C)

ihstrat_downbackzeb:
    %cm_jsl("Downback Zeb Skip", #action_select_room_strat, #$000D)

ihstrat_mbhp:
!IH_STRAT_MBHP_INDEX = #$000E
    %cm_jsl("Mother Brain HP", #action_select_room_strat, #$000E)

ihstrat_twocries:
    %cm_jsl("Two Cries Standup", #action_select_room_strat, #$000F)

action_select_room_strat:
{
    TYA : STA !sram_room_strat
    ; enable ROOM STRAT mode
    LDA !IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
    JSL init_print_segment_timer
    JML cm_previous_menu
}

ih_room_strat:
    dw !ACTION_CHOICE
    dl #!sram_room_strat
    dw #.routine
    db #$28, "Current Strat", #$FF
    db #$28, "  DOOR SKIP", #$FF
    db #$28, "  TACO TANK", #$FF
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
!TOP_HUD_VANILLA_INDEX = #$0002
    dw !ACTION_CHOICE
    dl #!sram_top_display_mode
    dw #$0000
    db #$28, "Top-Left Displa", #$FF
    db #$28, "y    ITEM %", #$FF
    db #$28, "y  RESERVES", #$FF
    db #$28, "y   VANILLA", #$FF
    db #$FF

ih_dynamic_frames_held:
    dw !ACTION_DYNAMIC
    dl #!sram_top_display_mode
    dw #ih_goto_frames_held
    dw #ih_goto_frames_held
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

print pc, " mainmenu InfoHUD end"
warnpc $85F800 ; gamemode.asm


; ----------
; Game menu
; ----------

org $B3F000
print pc, " mainmenu GameMenu start"

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

print pc, " mainmenu GameMenu end"
pullpc


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


; ----------
; Audio Menu
; ----------

AudioMenu:
    dw #audio_music_toggle
    dw #audio_fanfare_toggle
    dw #audio_health_alarm
    dw #$FFFF
    dw #audio_goto_music
    dw #$FFFF
    dw #audio_sfx_lib1
    dw #audio_sfx_lib2
    dw #audio_sfx_lib3
    dw #audio_sfx_silence
    dw #$0000
    %cm_header("AUDIO MENU")
    %cm_footer("PRESS Y TO PLAY SOUNDS")

audio_music_toggle:
    dw !ACTION_CHOICE
    dl #!sram_music_toggle
    dw .routine
    db #$28, "Music", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "         ON", #$FF
    db #$28, "   FAST OFF", #$FF
    db #$28, " PRESET OFF", #$FF
    db #$FF
  .routine
    ; Clear music queue
    STZ !MUSIC_QUEUE_TIMERS : STZ !MUSIC_QUEUE_TIMERS+$2
    STZ !MUSIC_QUEUE_TIMERS+$4 : STZ !MUSIC_QUEUE_TIMERS+$6
    STZ !MUSIC_QUEUE_TIMERS+$8 : STZ !MUSIC_QUEUE_TIMERS+$A
    STZ !MUSIC_QUEUE_TIMERS+$C : STZ !MUSIC_QUEUE_TIMERS+$E
    STZ !MUSIC_QUEUE_NEXT : STZ !MUSIC_QUEUE_START
    STZ !MUSIC_ENTRY : STZ !MUSIC_TIMER
    CMP #$0001 : BEQ .resume_music
    STZ $2140
    RTL
  .resume_music
    LDA !MUSIC_DATA : CLC : ADC #$FF00 : PHA : STZ !MUSIC_DATA : PLA : JSL !MUSIC_ROUTINE
    LDA !MUSIC_TRACK : PHA : STZ !MUSIC_TRACK : PLA : JSL !MUSIC_ROUTINE
    RTL

audio_fanfare_toggle:
!FANFARE_FORCE_MUSIC = #$0002
    dw !ACTION_CHOICE
    dl #!sram_fanfare
    dw #$0000
    db #$28, "Fanfare", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "         ON", #$FF
    db #$28, "FORCE MUSIC", #$FF
    db #$FF

audio_health_alarm:
    dw !ACTION_CHOICE
    dl #!sram_healthalarm
    dw #$0000
    db #$28, "Low Health Alar", #$FF
    db #$28, "m     NEVER", #$FF
    db #$28, "m   VANILLA", #$FF
    db #$28, "m    PB FIX", #$FF
    db #$28, "m  IMPROVED", #$FF
    db #$28, "m ALWAYS ON", #$FF
    db #$FF

audio_goto_music:
    %cm_submenu("Music Selection", #MusicSelectMenu1)

audio_sfx_lib1:
    %cm_numfield_sound("Library One Sound", !ram_cm_sfxlib1, 1, 66, 1, 4, .routine)
  .routine
    LDA !IH_CONTROLLER_PRI_NEW : BIT !CTRL_Y : BEQ .done
    LDA !ram_cm_sfxlib1 : JML !SFX_LIB1
  .done
    RTL

audio_sfx_lib2:
    %cm_numfield_sound("Library Two Sound", !ram_cm_sfxlib2, 1, 127, 1, 4, .routine)
  .routine
    LDA !IH_CONTROLLER_PRI_NEW : BIT !CTRL_Y : BEQ audio_sfx_lib1_done
    LDA !ram_cm_sfxlib2 : JML !SFX_LIB2

audio_sfx_lib3:
    %cm_numfield_sound("Library Three Sound", !ram_cm_sfxlib3, 1, 47, 1, 4, .routine)
  .routine
    LDA !IH_CONTROLLER_PRI_NEW : BIT !CTRL_Y : BEQ audio_sfx_lib1_done
    LDA !ram_cm_sfxlib3 : JML !SFX_LIB3

audio_sfx_silence:
    %cm_jsl("Silence Sound FX", .routine, #0)
  .routine
    JML stop_all_sounds

MusicSelectMenu1:
    dw #audio_music_title1
    dw #audio_music_title2
    dw #audio_music_intro
    dw #audio_music_ceres
    dw #audio_music_escape
    dw #audio_music_rainstorm
    dw #audio_music_spacepirate
    dw #audio_music_samustheme
    dw #audio_music_greenbrinstar
    dw #audio_music_redbrinstar
    dw #audio_music_uppernorfair
    dw #audio_music_lowernorfair
    dw #audio_music_easternmaridia
    dw #audio_music_westernmaridia
    dw #audio_music_wreckedshipoff
    dw #audio_music_wreckedshipon
    dw #audio_music_hallway
    dw #audio_music_goldenstatue
    dw #audio_music_tourian
    dw #$FFFF
    dw #audio_music_goto_2
    dw #$0000
    %cm_header("PLAY MUSIC - PAGE ONE")

audio_music_title1:
    %cm_jsl("Title Theme Part 1", #audio_playmusic, #$0305)

audio_music_title2:
    %cm_jsl("Title Theme Part 2", #audio_playmusic, #$0306)

audio_music_intro:
    %cm_jsl("Intro", #audio_playmusic, #$3605)

audio_music_ceres:
    %cm_jsl("Ceres Station", #audio_playmusic, #$2D06)

audio_music_escape:
    %cm_jsl("Escape Sequence", #audio_playmusic, #$2407)

audio_music_rainstorm:
    %cm_jsl("Zebes Rainstorm", #audio_playmusic, #$0605)

audio_music_spacepirate:
    %cm_jsl("Space Pirate Theme", #audio_playmusic, #$0905)

audio_music_samustheme:
    %cm_jsl("Samus Theme", #audio_playmusic, #$0C05)

audio_music_greenbrinstar:
    %cm_jsl("Green Brinstar", #audio_playmusic, #$0F05)

audio_music_redbrinstar:
    %cm_jsl("Red Brinstar", #audio_playmusic, #$1205)

audio_music_uppernorfair:
    %cm_jsl("Upper Norfair", #audio_playmusic, #$1505)

audio_music_lowernorfair:
    %cm_jsl("Lower Norfair", #audio_playmusic, #$1805)

audio_music_easternmaridia:
    %cm_jsl("Eastern Maridia", #audio_playmusic, #$1B05)

audio_music_westernmaridia:
    %cm_jsl("Western Maridia", #audio_playmusic, #$1B06)

audio_music_wreckedshipoff:
    %cm_jsl("Wrecked Ship Unpowered", #audio_playmusic, #$3005)

audio_music_wreckedshipon:
    %cm_jsl("Wrecked Ship", #audio_playmusic, #$3006)

audio_music_hallway:
    %cm_jsl("Hallway to Statue", #audio_playmusic, #$0004)

audio_music_goldenstatue:
    %cm_jsl("Golden Statue", #audio_playmusic, #$0906)

audio_music_tourian:
    %cm_jsl("Tourian", #audio_playmusic, #$1E05)

audio_music_goto_2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #MusicSelectMenu2)

MusicSelectMenu2:
    dw #audio_music_preboss1
    dw #audio_music_preboss2
    dw #audio_music_miniboss
    dw #audio_music_smallboss
    dw #audio_music_bigboss
    dw #audio_music_motherbrain
    dw #audio_music_credits
    dw #audio_music_itemroom
    dw #audio_music_itemfanfare
    dw #audio_music_spacecolony
    dw #audio_music_zebesexplodes
    dw #audio_music_loadsave
    dw #audio_music_death
    dw #audio_music_lastmetroid
    dw #audio_music_galaxypeace
    dw #$FFFF
    dw #audio_music_goto_1
    dw #$0000
    %cm_header("PLAY MUSIC - PAGE TWO")

audio_music_preboss1:
    %cm_jsl("Chozo Statue Awakens", #audio_playmusic, #$2406)

audio_music_preboss2:
    %cm_jsl("Approaching Confrontation", #audio_playmusic, #$2706)

audio_music_miniboss:
    %cm_jsl("Miniboss Fight", #audio_playmusic, #$2A05)

audio_music_smallboss:
    %cm_jsl("Small Boss Confrontation", #audio_playmusic, #$2705)

audio_music_bigboss:
    %cm_jsl("Big Boss Confrontation", #audio_playmusic, #$2405)

audio_music_motherbrain:
    %cm_jsl("Mother Brain Fight", #audio_playmusic, #$2105)

audio_music_credits:
    %cm_jsl("Credits", #audio_playmusic, #$3C05)

audio_music_itemroom:
    %cm_jsl("Item - Elevator Room", #audio_playmusic, #$0003)

audio_music_itemfanfare:
    %cm_jsl("Item Fanfare", #audio_playmusic, #$0002)

audio_music_spacecolony:
    %cm_jsl("Arrival at Space Colony", #audio_playmusic, #$2D05)

audio_music_zebesexplodes:
    %cm_jsl("Zebes Explodes", #audio_playmusic, #$3305)

audio_music_loadsave:
    %cm_jsl("Samus Appears", #audio_playmusic, #$0001)

audio_music_death:
    %cm_jsl("Death", #audio_playmusic, #$3905)

audio_music_lastmetroid:
    %cm_jsl("Last Metroid in Captivity", #audio_playmusic, #$3F05)

audio_music_galaxypeace:
    %cm_jsl("The Galaxy is at Peace", #audio_playmusic, #$4205)

audio_music_goto_1:
    %cm_adjacent_submenu("GOTO PAGE TWO", #MusicSelectMenu1)

audio_playmusic:
{
    PHY
    ; always load silence first
    TDC : JSL !MUSIC_ROUTINE
    PLY : TYA
    STZ $C1 : %a8() : STA $C1
    XBA : %a16()
    STA !ROOM_MUSIC_DATA_INDEX
    ; play from negative data index
    ORA #$FF00 : JSL !MUSIC_ROUTINE
    ; play from track index
    LDA $C1 : JSL !MUSIC_ROUTINE
    RTL
}

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

