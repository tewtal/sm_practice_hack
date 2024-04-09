
; ------------
; Menu Helpers
; ------------

action_infohud_mainmenu:
{
    LDA !sram_top_display_mode : CMP #$0003 : BCC action_mainmenu
    TDC : STA !sram_top_display_mode
    BRA action_mainmenu
}

action_layout_mainmenu:
{
    ; Prepare dynamic menu
    LDA !ram_door_portal_flags : AND !DOOR_PORTAL_MODE_MASK : STA !ram_cm_door_dynamic

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
    LDA !ram_cm_stack_index : INC #2 : STA !ram_cm_stack_index : TAX
    TYA : STA !ram_cm_menu_stack,X

    BRA action_submenu_jump
}

action_presets_submenu:
{

    ; Increment stack pointer by 2
    LDA !ram_cm_stack_index : INC #2 : STA !ram_cm_stack_index : TAX

    ; Lookup preset menu pointer for current category
    LDA !sram_preset_category : ASL : TAY
    PHB : PHK : PLB
    LDA.w preset_category_submenus,Y : STA !ram_cm_menu_stack,X
    LDA.w preset_category_banks,Y : STA !ram_cm_menu_bank
    PLB

    ; continue into action_submenu_jump
}

action_submenu_jump:
{
    ; Set cursor to top for new menus
    LDA #$0000 : STA !ram_cm_cursor_stack,X

    %sfxmove()
    JSL cm_calculate_max
    JSL cm_colors
    JSL cm_draw
    RTL
}

preset_category_submenus:
{
    dw #PresetsMenuPrkd
    dw #PresetsMenuKpdr21
    dw #PresetsMenuHundo
    dw #PresetsMenu100early
    dw #PresetsMenuRbo
    dw #PresetsMenuPkrd
    dw #PresetsMenuKpdr25
    dw #PresetsMenuGtclassic
    dw #PresetsMenuGtmax
    dw #PresetsMenu14ice
    dw #PresetsMenu14speed
    dw #PresetsMenu100map
    dw #PresetsMenuNintendopower
    dw #PresetsMenuAllbosskpdr
    dw #PresetsMenuAllbosspkdr
    dw #PresetsMenuAllbossprkd
    dw #$0000
}

preset_category_banks:
{
    dw #PresetsMenuPrkd>>16
    dw #PresetsMenuKpdr21>>16
    dw #PresetsMenuHundo>>16
    dw #PresetsMenu100early>>16
    dw #PresetsMenuRbo>>16
    dw #PresetsMenuPkrd>>16
    dw #PresetsMenuKpdr25>>16
    dw #PresetsMenuGtclassic>>16
    dw #PresetsMenuGtmax>>16
    dw #PresetsMenu14ice>>16
    dw #PresetsMenu14speed>>16
    dw #PresetsMenu100map>>16
    dw #PresetsMenuNintendopower>>16
    dw #PresetsMenuAllbosskpdr>>16
    dw #PresetsMenuAllbosspkdr>>16
    dw #PresetsMenuAllbossprkd>>16
    dw #$0000
}


; -----------
; Main menu
; -----------

; MainMenu must exist in the same bank as the menu code.
; From here, submenus can branch out into different banks
; as long as all of its menu items and submenus are included.

MainMenu:
    dw #mm_goto_equipment
    dw #mm_goto_presets
    dw #mm_goto_presets_menu
    dw #mm_goto_teleport
    dw #mm_goto_events
    dw #mm_goto_misc
    dw #mm_goto_infohud
    dw #mm_goto_sprites
    dw #mm_goto_layout
    dw #mm_goto_gamemenu
    dw #mm_goto_rngmenu
if !FEATURE_SD2SNES
    dw #mm_goto_savestate
endif
    dw #mm_goto_ctrlsmenu
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
    dw #EquipmentMenu>>16
    dw #preset_category_banks>>16 ; dummy
    dw #PresetsMenu>>16
    dw #TeleportMenu>>16
    dw #EventsMenu>>16
    dw #MiscMenu>>16
    dw #InfoHudMenu>>16
    dw #SpritesMenu>>16
    dw #LayoutMenu>>16
    dw #GameMenu>>16
    dw #RngMenu>>16
if !FEATURE_SD2SNES
    dw #SavestateMenu>>16
endif
    dw #CtrlMenu>>16
    dw #CustomizeMenu>>16

mm_goto_equipment:
    %cm_mainmenu("Equipment", #EquipmentMenu)

mm_goto_presets:
    %cm_jsl("Category Presets", #action_presets_submenu, #$0000)

mm_goto_presets_menu:
    %cm_mainmenu("Preset Options", #PresetsMenu)

mm_goto_teleport:
    %cm_mainmenu("Teleport", #TeleportMenu)

mm_goto_events:
    %cm_mainmenu("Events", #EventsMenu)

mm_goto_misc:
    %cm_mainmenu("Misc", #MiscMenu)

mm_goto_infohud:
    %cm_jsl("Infohud", #action_infohud_mainmenu, #InfoHudMenu)

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

mm_goto_ctrlsmenu:
    %cm_mainmenu("Controller Shortcuts", #CtrlMenu)

mm_goto_customize:
    %cm_mainmenu("Menu Customization", #CustomizeMenu)


; -------------------
; Preset Options menu
; -------------------

PresetsMenu:
    dw #presets_goto_select_preset_category
    dw #presets_current
    dw #$FFFF
    dw #presets_custom_preset_slot
    dw #presets_save_custom_preset
    dw #presets_load_custom_preset
    dw #$FFFF
    dw #presets_reload_last
    dw #presets_load_random
if !FEATURE_DEV
    dw #presets_random_preset_rng
endif
    dw #$FFFF
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

presets_goto_select_preset_category:
    %cm_submenu("Select Preset Category", #SelectPresetCategoryMenu)

presets_custom_preset_slot:
    %cm_numfield("Custom Preset Slot", !sram_custom_preset_slot, 0, !TOTAL_PRESET_SLOTS, 1, 2, #.routine)
  .routine
    ; ignore if not A, X, or Y
    LDA !IH_CONTROLLER_PRI_NEW : BIT #$40C0 : BNE .submenu
    LDA !sram_last_preset : BMI .exit
    LDA #$0000 : STA !sram_last_preset
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
if !FEATURE_TINYSTATES
    ; Tinystates only has slots $00-15
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
    LDA $703000,X : CMP #$5AFE : BEQ .safe
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
    %cm_toggle_inverted("Random Preset RNG", !ram_random_preset_rng, #$0001, #0)
endif

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
    dw #precat_prkd
    dw #precat_kpdr21
    dw #precat_hundo
    dw #precat_100early
    dw #precat_rbo
    dw #precat_pkrd
    dw #precat_kpdr25
    dw #precat_gtclassic
    dw #precat_gtmax
    dw #precat_14ice
    dw #precat_14speed
    dw #precat_100map
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
    db #$28, "       PRKD", #$FF
    db #$28, "       KPDR", #$FF
    db #$28, "  100% LATE", #$FF
    db #$28, " 100% EARLY", #$FF
    db #$28, "        RBO", #$FF
    db #$28, "       PKRD", #$FF
    db #$28, "     KPDR25", #$FF
    db #$28, " GT CLASSIC", #$FF
    db #$28, "    GT MAX%", #$FF
    db #$28, "    14% ICE", #$FF
    db #$28, "  14% SPEED", #$FF
    db #$28, "   100% MAP", #$FF
    db #$28, "  NIN POWER", #$FF
    db #$28, "   ALL KPDR", #$FF
    db #$28, "   ALL PKDR", #$FF
    db #$28, "   ALL PRKD", #$FF
    db #$FF
  .routine
    LDA #$0000 : STA !sram_last_preset
    RTL

precat_prkd:
    %cm_jsl("Any% PRKD", #action_select_preset_category, #$0000)

precat_kpdr21:
    %cm_jsl("Any% KPDR", #action_select_preset_category, #$0001)

precat_hundo:
    %cm_jsl("100% Late Crocomire", #action_select_preset_category, #$0002)

precat_100early:
    %cm_jsl("100% Early Crocomire", #action_select_preset_category, #$0003)

precat_rbo:
    %cm_jsl("Reverse Boss Order", #action_select_preset_category, #$0004)

precat_pkrd:
    %cm_jsl("Any% PKRD", #action_select_preset_category, #$0005)

precat_kpdr25:
    %cm_jsl("Any% KPDR Early Ice", #action_select_preset_category, #$0006)

precat_gtclassic:
    %cm_jsl("GT Classic", #action_select_preset_category, #$0007)

precat_gtmax:
    %cm_jsl("GT Max%", #action_select_preset_category, #$0008)

precat_14ice:
    %cm_jsl("Low% Ice", #action_select_preset_category, #$0009)

precat_14speed:
    %cm_jsl("Low% Speed", #action_select_preset_category, #$000A)

precat_100map:
    %cm_jsl("100% Map Completion", #action_select_preset_category, #$000B)

precat_nintendopower:
    %cm_jsl("Nintendo Power", #action_select_preset_category, #$000C)

precat_allbosskpdr:
    %cm_jsl("All Bosses KPDR", #action_select_preset_category, #$000D)

precat_allbosspkdr:
    %cm_jsl("All Bosses PKDR", #action_select_preset_category, #$000E)

precat_allbossprkd:
    %cm_jsl("All Bosses PRKD", #action_select_preset_category, #$000F)

action_select_preset_category:
{
    TYA : STA !sram_preset_category
    LDA #$0000 : STA !sram_last_preset
    JML cm_previous_menu
}

LoadRandomPreset:
{
    PHY : PHX
    LDA !ram_random_preset_rng : BEQ .seedrandom
    LDA !ram_random_preset_value : STA $12
    BRA .seedpicked

  .seedrandom
    JSL MenuRNG : STA $12     ; random number

  .seedpicked
    PHK : PHK : PLA : STA $18 ; this routine lives in bank B8
    LDA !sram_preset_category : ASL : TAY
    LDA #preset_category_submenus : STA $16
    LDA [$16],Y : TAX         ; preset category submenu table
    LDA #preset_category_banks : STA $16
    LDA [$16],Y : STA $18     ; preset category menu bank

    STX $16 : LDY #$0000
  .toploop
    INY #2
    LDA [$16],Y : BNE .toploop
    TYA : LSR : TAY           ; Y = size of preset category submenu table

    LDA $12 : XBA : AND #$00FF : STA $4204
    %a8()
    STY $4206                 ; divide top half of random number by Y
    %a16()
    PEA $0000 : PLA : PEA $0000 : PLA
    LDA $4216 : ASL : TAY     ; randomly selected subcategory
    LDA [$16],Y : STA $16     ; increment four bytes to get the subcategory table
    LDY #$0004 : LDA [$16],Y : STA $16

    LDY #$0000
  .subloop
    INY #2
    LDA [$16],Y : BNE .subloop
    TYA : LSR : TAY           ; Y = size of subcategory table

    LDA $12 : AND #$00FF : STA $4204
    %a8()
    STY $14 : STY $4206       ; divide bottom half of random number by Y
    %a16()
    PEA $0000 : PLA : PEA $0000 : PLA
    LDA $4216 : STA $12       ; randomly selected preset

    ASL : TAY
    LDA [$16],Y : STA $16     ; increment four bytes to get the data
    LDY #$0004 : LDA [$16],Y
    STA !ram_load_preset
    LDA !ram_random_preset_rng : BEQ .done
    LDA !ram_random_preset_value : INC : STA !ram_random_preset_value
    LDA $12 : INC : CMP $14 : BMI .done
    LDA !ram_random_preset_value : XBA : INC : XBA
    AND #$FF00 : STA !ram_random_preset_value

  .done
    PLX : PLY
    RTL
}

action_load_preset:
{
    PHB
    PHK : PLB

    TYA : STA !ram_load_preset
    LDA #$0001 : STA !ram_cm_leave

    PLB
    RTL
}


; -------------------
; Custom Preset Slots
; -------------------

CustomPresetsMenu:
    dw #custompreset_00
    dw #custompreset_01
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
if !FEATURE_TINYSTATES
; Tinystates only has slots $00-15
else
    dw #$FFFF
    dw #custompreset_manage
    dw #custompreset_goto_page2
    dw #custompreset_goto_page3
endif
    dw #$0000
    %cm_header("PRESS X TO NAME PRESETS")
    %cm_footer("PRESS Y TO TOGGLE DISPLAY")

    %cm_custompreset(00)
    %cm_custompreset(01)
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
; Tinystates only has slots $00-15
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

custompreset_manage:
    %cm_jsl("Manage Preset Slots", .routine, #$0000)
  .routine
    LDA #$0000 : STA !ram_cm_manage_slots
if !FEATURE_TINYSTATES
    LDY.w #ManagePresetsMenu
else
    ; determine which page is currently loaded
    LDA !ram_cm_stack_index : DEC #2 : TAX
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
    JSL cm_previous_menu
    %setmenubank()
    JML action_submenu

ManagePresetsMenu:
    dw #managepreset_00
    dw #managepreset_01
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
; Tinystates only has slots $00-15
else
    dw #$FFFF
    dw #$FFFF
    dw #managepreset_goto_page2
    dw #managepreset_goto_page3
endif
    dw #$0000
    %cm_header("PRESS A TO SWAP PRESETS")
    %cm_footer("PRESS X TO DELETE PRESET")

    %cm_managepreset(00)
    %cm_managepreset(01)
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
; Tinystates only has slots $00-15
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
    LDA !ram_cm_selected_slot
    %presetslotsize()
    LDA #$DEAD : STA $703000,X
    LDA !ram_cm_selected_slot : ASL : TAX
    LDA #$DEAD : STA !sram_custom_preset_safewords,X
    JML cm_previous_menu


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
    LDA #$0002 : JSL !SFX_LIB2 ; big energy pickup
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
    LDA #$0000
    CPX #$000F : BPL .loop
    LDA #$0063
  .loop
    DEX : BMI .endloop
    CLC : ADC #$0064
    BRA .loop
  .zero
    LDA #$0063
  .endloop
    STA !SAMUS_HP_MAX : STA !SAMUS_HP
    RTL

eq_currentreserves:
    %cm_numfield_word("Current Reserves", !SAMUS_RESERVE_ENERGY, 0, 700, 1, 20, #0)

eq_setreserves:
    %cm_numfield("Reserve Tanks", !ram_cm_reserve, 0, 7, 1, 1, .routine)
  .routine
    TAX : BEQ .zero
    LDA #$0000
  .loop
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
    TYA : ASL #4 : TAX

    LDA.l .table,X : STA !SAMUS_ITEMS_COLLECTED : STA !SAMUS_ITEMS_EQUIPPED : INX #2

    LDA.l .table,X : STA !SAMUS_BEAMS_COLLECTED : TAY
    AND #$000C : CMP #$000C : BEQ .murderBeam
    TYA : STA !SAMUS_BEAMS_EQUIPPED : INX #2 : BRA .doneMurderBeam

  .murderBeam
    TYA : AND #$100B : STA !SAMUS_BEAMS_EQUIPPED : INX #2

  .doneMurderBeam
    LDA.l .table,X : STA !SAMUS_HP : STA !SAMUS_HP_MAX : INX #2
    LDA.l .table,X : STA !SAMUS_MISSILES : STA !SAMUS_MISSILES_MAX : INX #2
    LDA.l .table,X : STA !SAMUS_SUPERS : STA !SAMUS_SUPERS_MAX : INX #2
    LDA.l .table,X : STA !SAMUS_PBS : STA !SAMUS_PBS_MAX : INX #2
    LDA.l .table,X : STA !SAMUS_RESERVE_MAX : STA !SAMUS_RESERVE_ENERGY : INX #2

    JSL cm_set_etanks_and_reserve
    %sfxconfirm()
    JML $90AC8D ; update beam gfx

  .table
    ;  Items,  Beams,  Health, Miss,   Supers, PBs,    Reserv, Dummy
    dw #$F32F, #$100F, #$05DB, #$00E6, #$0032, #$0032, #$0190, #$0000        ; 100%
    dw #$3125, #$1007, #$018F, #$000F, #$000A, #$0005, #$0000, #$0000        ; any% new
    dw #$3325, #$100B, #$018F, #$000F, #$000A, #$0005, #$0000, #$0000        ; any% old
    dw #$1025, #$1002, #$018F, #$000A, #$000A, #$0005, #$0000, #$0000        ; 14% ice
    dw #$3025, #$1000, #$018F, #$000A, #$000A, #$0005, #$0000, #$0000        ; 14% speed
    dw #$F33F, #$100F, #$02BC, #$0064, #$0014, #$0014, #$012C, #$0000        ; gt code
    dw #$F33F, #$100F, #$0834, #$0145, #$0041, #$0041, #$02BC, #$0000        ; 135%
    dw #$710C, #$1001, #$031F, #$001E, #$0019, #$0014, #$0064, #$0000        ; rbo
    dw #$9004, #$0000, #$00C7, #$0005, #$0005, #$0005, #$0000, #$0000        ; any% glitched
    dw #$F32F, #$100F, #$0031, #$01A4, #$005A, #$0063, #$0000, #$0000        ; crystal flash
    dw #$0000, #$0000, #$0063, #$0000, #$0000, #$0000, #$0000, #$0000        ; nothing
if !FEATURE_PAL
    dw #$9005, #$1002, #$012B, #$000A, #$000A, #$0005, #$0064, #$0000        ; 14% x-ice
    dw #$1105, #$1002, #$018F, #$000A, #$000A, #$0005, #$0000, #$0000        ; 14% iceboots
    dw #$3105, #$1000, #$018F, #$000A, #$000A, #$0005, #$0000, #$0000        ; 14% speedboots
endif
}


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
    LDA #$0000 : STA !ram_cm_varia
  .doneVaria

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0020 : BEQ .noGravity
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0020 : BNE .equipGravity
    ; unequip
    LDA #$0002 : STA !ram_cm_gravity : BRA .doneGravity
  .equipGravity
    LDA #$0001 : STA !ram_cm_gravity : BRA .doneGravity
  .noGravity
    LDA #$0000 : STA !ram_cm_gravity
  .doneGravity

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0004 : BEQ .noMorph
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0004 : BNE .equipMorph
    ; unequip
    LDA #$0002 : STA !ram_cm_morph : BRA .doneMorph
  .equipMorph
    LDA #$0001 : STA !ram_cm_morph : BRA .doneMorph
  .noMorph
    LDA #$0000 : STA !ram_cm_morph
  .doneMorph

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$1000 : BEQ .noBombs
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$1000 : BNE .equipBombs
    ; unequip
    LDA #$0002 : STA !ram_cm_bombs : BRA .doneBombs
  .equipBombs
    LDA #$0001 : STA !ram_cm_bombs : BRA .doneBombs
  .noBombs
    LDA #$0000 : STA !ram_cm_bombs
  .doneBombs

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0002 : BEQ .noSpring
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0002 : BNE .equipSpring
    ; unequip
    LDA #$0002 : STA !ram_cm_spring : BRA .doneSpring
  .equipSpring
    LDA #$0001 : STA !ram_cm_spring : BRA .doneSpring
  .noSpring
    LDA #$0000 : STA !ram_cm_spring
  .doneSpring

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0008 : BEQ .noScrew
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0008 : BNE .equipScrew
    ; unequip
    LDA #$0002 : STA !ram_cm_screw : BRA .doneScrew
  .equipScrew
    LDA #$0001 : STA !ram_cm_screw : BRA .doneScrew
  .noScrew
    LDA #$0000 : STA !ram_cm_screw
  .doneScrew

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0100 : BEQ .noHiJump
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0100 : BNE .equipHiJump
    ; unequip
    LDA #$0002 : STA !ram_cm_hijump : BRA .doneHiJump
  .equipHiJump
    LDA #$0001 : STA !ram_cm_hijump : BRA .doneHiJump
  .noHiJump
    LDA #$0000 : STA !ram_cm_hijump
  .doneHiJump

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$0200 : BEQ .noSpace
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0200 : BNE .equipSpace
    ; unequip
    LDA #$0002 : STA !ram_cm_space : BRA .doneSpace
  .equipSpace
    LDA #$0001 : STA !ram_cm_space : BRA .doneSpace
  .noSpace
    LDA #$0000 : STA !ram_cm_space
  .doneSpace

    LDA !SAMUS_ITEMS_COLLECTED : BIT #$2000 : BEQ .noSpeed
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$2000 : BNE .equipSpeed
    ; unequip
    LDA #$0002 : STA !ram_cm_speed : BRA .doneSpeed
  .equipSpeed
    LDA #$0001 : STA !ram_cm_speed : BRA .doneSpeed
  .noSpeed
    LDA #$0000 : STA !ram_cm_speed
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
    LDA #$0000 : STA !ram_cm_charge
  .doneCharge

    LDA !SAMUS_BEAMS_COLLECTED : BIT #$0002 : BEQ .noIce
    LDA !SAMUS_BEAMS_EQUIPPED : BIT #$0002 : BNE .equipIce
    ; unequip Ice
    LDA #$0002 : STA !ram_cm_ice : BRA .doneIce
  .equipIce
    LDA #$0001 : STA !ram_cm_ice : BRA .doneIce
  .noIce
    LDA #$0000 : STA !ram_cm_ice
  .doneIce

    LDA !SAMUS_BEAMS_COLLECTED : BIT #$0001 : BEQ .noWave
    LDA !SAMUS_BEAMS_EQUIPPED : BIT #$0001 : BNE .equipWave
    ; unequip Wave
    LDA #$0002 : STA !ram_cm_wave : BRA .doneWave
  .equipWave
    LDA #$0001 : STA !ram_cm_wave : BRA .doneWave
  .noWave
    LDA #$0000 : STA !ram_cm_wave
  .doneWave

    LDA !SAMUS_BEAMS_COLLECTED : BIT #$0004 : BEQ .noSpazer
    LDA !SAMUS_BEAMS_EQUIPPED : BIT #$0004 : BNE .equipSpazer
    ; unequip Spazer
    LDA #$0002 : STA !ram_cm_spazer : BRA .doneSpazer
  .equipSpazer
    LDA #$0001 : STA !ram_cm_spazer : BRA .doneSpazer
  .noSpazer
    LDA #$0000 : STA !ram_cm_spazer
  .doneSpazer

    LDA !SAMUS_BEAMS_COLLECTED : BIT #$0008 : BEQ .noPlasma
    LDA !SAMUS_BEAMS_EQUIPPED : BIT #$0008 : BNE .equipPlasma
    ; unequip Plasma
    LDA #$0002 : STA !ram_cm_plasma : BRA .donePlasma
  .equipPlasma
    LDA #$0001 : STA !ram_cm_plasma : BRA .donePlasma
  .noPlasma
    LDA #$0000 : STA !ram_cm_plasma
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
    LDA #$0000 : STA !ram_cm_spazer

  .checkPlasma
    LDA !SAMUS_BEAMS_COLLECTED : BIT #$0008 : BEQ .noPlasma
    LDA !SAMUS_BEAMS_EQUIPPED : BIT #$0008 : BNE .equipPlasma
    ; unequip Plasma
    LDA #$0002 : STA !ram_cm_plasma : BRA .done
  .equipPlasma
    LDA #$0001 : STA !ram_cm_plasma : BRA .done
  .noPlasma
    LDA #$0000 : STA !ram_cm_plasma

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
    JSL setup_beams_ram
    LDA #$0042 : JSL !SFX_LIB1 ; unlabled, song dependent sound
    JSL $90AC8D ; update beam gfx
    RTL
}


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
    ; teleport destination in Y when called
    TYA : AND #$FF00 : XBA : STA !AREA_ID
    TYA : AND #$00FF : STA !LOAD_STATION_INDEX
    LDA #$0006 : STA !GAMEMODE

    ; Make sure we can teleport to Zebes from Ceres
    %a8()
    LDA #$05 : STA $7ED914
    %a16()

    STZ $0727 ; Pause menu index
    STZ $0795 ; Clear door transition flag
    STZ $0E18 ; Set elevator to inactive
    STZ $1C1F ; Clear message box index

    LDA !SAMUS_HP_MAX : BNE .branch
    LDA #$001F : STA !SAMUS_HP

  .branch
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
    %cm_toggle_bit("Hyper Beam", $7E0A76, #$8000, #.routine)
  .routine
    AND #$8000 : BEQ .off
    LDA #$0003
if !FEATURE_PAL
    JSL $91E412
else            ; setup Samus for Hyper Beam
    JSL $91E4AD
endif
    RTL

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
    LDA $1E7D,X : CMP #$E1F0 : BEQ .found
    DEX #2 : BPL .loopFXobjects

  .found
    ; clear Hyper Beam palette FX object
    STZ $1E7D,X ; this is probably the only one that matters
    STZ $1E8D,X : STZ $1E9D,X : STZ $1EAD,X
    STZ $1EBD,X : STZ $1ECD,X : STZ $1EDD,X

    JSL $90AC8D ; update beam gfx
    RTL

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
        LDA #$0000 : STA !ram_metronome_counter
        RTL

GameLoopExtras:
{
    LDA !ram_magic_pants_enabled : BNE .enabled
    LDA !ram_space_pants_enabled : BNE .enabled
    LDA !ram_metronome : BNE .enabled
    LDA #$0000
  .enabled
    STA !ram_game_loop_extras
    RTL
}

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
    LDA $09A2 : BIT #$0020 : BEQ .end

    ; Without heat shield but with gravity we want heat damage to be 100%
    ; Since damage is halved by gravity we'll set it to 200%
    LDA #$8000 : STA !ram_suits_heat_damage_value
    RTL

  .dashRecall
    BNE .heatShield

    ; If no gravity than nothing to do
    LDA $09A2 : BIT #$0020 : BEQ .end

    ; Without heat shield but with gravity we want heat damage to be 75%
    ; Since damage is halved by gravity we'll set it to 150%
    LDA #$6000 : STA !ram_suits_heat_damage_value

  .end
    RTL

  .heatShield
    LDA !ROOM_ID : CMP #$B742 : BPL .noDamage : CMP #$AF13 : BMI .noDamage
    CMP #$B1BA : BPL .heatShieldDamage : CMP #$AF40 : BPL .noDamage

  .heatShieldDamage
    ; We want Lower Norfair heat damage to be 50%
    ; However if gravity is equipped then the damage is already halved
    LDA $09A2 : BIT #$0020 : BNE .end
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
    LDA !ROOM_ID : CMP #$C98D : BMI .pv_more
    CMP #$D4EE : BMI .off : CMP #$D8C6 : BPL .pv_on
    CMP #$D5EC : BEQ .off : CMP #$D646 : BEQ .off
    CMP #$D69A : BEQ .off : CMP #$D6D0 : BEQ .off
    CMP #$D86E : BEQ .off : CMP #$D8C5 : BEQ .off

  .pv_on
    LDA !SAMUS_ITEMS_EQUIPPED : AND #$0220
    ORA.l !sram_double_jump : STA !SAMUS_WATER_PHYSICS
    RTL

  .pv_more
    CMP #$AC00 : BEQ .off : CMP #$AB64 : BEQ .off
    CMP #$A5EF : BPL .pv_on
    CMP #$99FA : BPL .off : CMP #$965A : BPL .pv_on
    CMP #$93AB : BMI .pv_on
    BRA .off
}

misc_killenemies:
    %cm_jsl("Kill Enemies", .kill_loop, #0)
  .kill_loop
    ; 8000 = solid to Samus, 0400 = Ignore Samus projectiles, 0100 = Invisible
    TAX : LDA $0F86,X : BIT #$8500 : BNE .next_enemy
    ORA #$0200 : STA $0F86,X
  .next_enemy
    TXA : CLC : ADC #$0040 : CMP #$0800 : BNE .kill_loop
    LDA #$0009 : JSL !SFX_LIB2 ; enemy killed
    RTL

misc_forcestand:
    %cm_jsl("Force Samus to Stand Up", .routine, #0)
  .routine
    JSL $90E2D4
    %sfxconfirm()
    RTL


; ---------------
; Sprite Features
; ---------------

SpritesMenu:
    dw #sprites_samus_prio
    dw #sprites_show_samus_hitbox
    dw #sprites_show_enemy_hitbox
    dw #sprites_show_extended_spritemap_hitbox
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

sprites_show_extended_spritemap_hitbox:
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


; -----------
; Events menu
; -----------
EventsMenu:
    dw #events_resetevents
    dw #events_resetdoors
    dw #events_resetitems
    dw #$FFFF
    dw #events_goto_bosses
    dw #$FFFF
    dw #events_zebesawake
    dw #events_maridiatubebroken
    dw #events_chozoacid
    dw #events_shaktool
    dw #events_tourian
    dw #events_metroid1
    dw #events_metroid2
    dw #events_metroid3
    dw #events_metroid4
    dw #events_mb1glass
    dw #events_zebesexploding
    dw #events_animals
    dw #$0000
    %cm_header("EVENTS")

events_resetevents:
    %cm_jsl("Reset All Events", .routine, #$0000)
  .routine
    LDA #$0000
    STA $7ED820 : STA $7ED822
    %sfxreset()
    RTL

events_resetdoors:
    %cm_jsl("Reset All Doors", .routine, #$0000)
  .routine
    PHP : %ai8()
    LDX #$B0
    LDA #$00
  .loop
    STA $7ED800,X
    INX : CPX #$D0 : BNE .loop
    PLP
    %sfxreset()
    RTL

events_resetitems:
    %cm_jsl("Reset All Items", .routine, #$0000)
  .routine
    PHP : %ai8()
    LDX #$70
    LDA #$00
  .loop
    STA $7ED800,X
    INX : CPX #$90 : BNE .loop
    PLP
    %sfxreset()
    RTL

events_goto_bosses:
    %cm_submenu("Bosses", #BossesMenu)

events_zebesawake:
    %cm_toggle_bit("Zebes Awake", $7ED820, #$0001, #0)

events_maridiatubebroken:
    %cm_toggle_bit("Maridia Tube Broken", $7ED820, #$0800, #0)

events_shaktool:
    %cm_toggle_bit("Shaktool Done Digging", $7ED820, #$2000, #0)

events_chozoacid:
    %cm_toggle_bit("Chozo Lowered Acid", $7ED821, #$0010, #0)

events_tourian:
    %cm_toggle_bit("Tourian Open", $7ED820, #$0400, #0)

events_metroid1:
    %cm_toggle_bit("1st Metroids Cleared", $7ED822, #$0001, #0)

events_metroid2:
    %cm_toggle_bit("2nd Metroids Cleared", $7ED822, #$0002, #0)

events_metroid3:
    %cm_toggle_bit("3rd Metroids Cleared", $7ED822, #$0004, #0)

events_metroid4:
    %cm_toggle_bit("4th Metroids Cleared", $7ED822, #$0008, #0)

events_mb1glass:
    %cm_toggle_bit("MB1 Glass Broken", $7ED820, #$0004, #0)

events_zebesexploding:
    %cm_toggle_bit("Zebes Set Ablaze", $7ED820, #$4000, #0)

events_animals:
    %cm_toggle_bit("Animals Saved", $7ED820, #$8000, #0)


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
    dw #boss_kraid_statue
    dw #boss_phantoon_statue
    dw #boss_draygon_statue
    dw #boss_ridley_statue
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

boss_kraid_statue:
    %cm_toggle_bit("Kraid Statue", #$7ED820, #$0200, #0)

boss_phantoon_statue:
    %cm_toggle_bit("Phantoon Statue", #$7ED820, #$0040, #0)

boss_draygon_statue:
    %cm_toggle_bit("Draygon Statue", #$7ED820, #$0100, #0)

boss_ridley_statue:
    %cm_toggle_bit("Ridley Statue", #$7ED820, #$0080, #0)


; --------------
; Infohud menu
; --------------

pushpc
org $85C000
print pc, " mainmenu InfoHUD start"

InfoHudMenu:
    dw #ih_goto_display_mode
    dw #ih_display_mode
    dw #$FFFF
    dw #ih_goto_room_strat
    dw #ih_room_strat
    dw #$FFFF
    dw #ih_door_display_mode
    dw #$FFFF
    dw #ih_goto_timers
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

!IH_MODE_ROOMSTRAT_INDEX = $0001
ihmode_roomstrat:
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

!IH_MODE_SHINETUNE_INDEX = $0007
ihmode_shinetune:
    %cm_jsl("Shine Tune", #action_select_infohud_mode, #$0007)

ihmode_iframecounter:
    %cm_jsl("I-Frame Counter", #action_select_infohud_mode, #$0008)

ihmode_spikesuit:
    %cm_jsl("Spikesuit Trainer", #action_select_infohud_mode, #$0009)

ihmode_lagcounter:
    %cm_jsl("Realtime Lag Counter", #action_select_infohud_mode, #$000A)

ihmode_cpuusage:
    %cm_jsl("CPU Usage", #action_select_infohud_mode, #$000B)

ihmode_xpos:
    %cm_jsl("X Position", #action_select_infohud_mode, #$000C)

ihmode_ypos:
    %cm_jsl("Y Position", #action_select_infohud_mode, #$000D)

ihmode_hspeed:
    %cm_jsl("Horizontal Speed", #action_select_infohud_mode, #$000E)

!IH_MODE_VSPEED_INDEX = $000F
ihmode_vspeed:
    %cm_jsl("Vertical Speed", #action_select_infohud_mode, #$000F)

ihmode_quickdrop:
    %cm_jsl("Quickdrop Trainer", #action_select_infohud_mode, #$0010)

!IH_MODE_WALLJUMP_INDEX = $0011
ihmode_walljump:
    %cm_jsl("Walljump Trainer", #action_select_infohud_mode, #$0011)

!IH_MODE_ARMPUMP_INDEX = $0012
ihmode_armpump:
    %cm_jsl("Armpump Trainer", #action_select_infohud_mode, #$0012)

ihmode_shottimer:
    %cm_jsl("Shot Timer", #action_select_infohud_mode, #$0013)

!IH_MODE_RAMWATCH_INDEX = $0014
ihmode_ramwatch:
    %cm_jsl("RAM Watch", #action_select_infohud_mode, #$0014)

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

!IH_STRAT_MBHP_INDEX = $000E
ihstrat_mbhp:
    %cm_jsl("Mother Brain HP", #action_select_room_strat, #$000E)

ihstrat_twocries:
    %cm_jsl("Two Cries Standup", #action_select_room_strat, #$000F)

action_select_room_strat:
{
    TYA : STA !sram_room_strat
    LDA #!IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
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
    LDA #!IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
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

ih_goto_timers:
    %cm_submenu("Timer Settings", #IHTimerMenu)

IHTimerMenu:
    dw #ih_room_counter
    dw #ih_lag_counter
    dw #ih_auto_update_timers
    dw #$FFFF
    dw #ih_reset_seg_after_door
    dw #ih_reset_seg_item_touch
    dw #$0000
    %cm_header("TIMER SETTINGS")

ih_room_counter:
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
    %cm_toggle_inverted("Auto-Update Timers", !ram_timers_autoupdate, #$0001, #0)

ih_reset_seg_after_door:
    %cm_jsl("Reset Segment in Next Room", #.routine, #$0001)
  .routine
    TYA : STA !ram_reset_segment_later
    %sfxconfirm()
    RTL

ih_reset_seg_item_touch:
    %cm_jsl("Reset Segment on Item Touch", #ih_reset_seg_after_door_routine, #$8000)

ih_top_HUD_mode:
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
    dw #game_fanfare_toggle
    dw #game_fast_doors_toggle
    dw #game_fast_elevators
    dw #game_music_toggle
    dw #game_healthalarm
    dw #$FFFF
    dw #game_goto_debug
    dw #$FFFF
    dw #game_minimap
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

game_fanfare_toggle:
    %cm_toggle_bit("Fanfare", !sram_fanfare, !FANFARE_TOGGLE, #0)

game_fast_doors_toggle:
    %cm_toggle("Fast Doors", !sram_fast_doors, #$0001, #0)

game_fast_elevators:
    %cm_toggle("Fast Elevators", !sram_fast_elevators, #$0001, #0)

game_music_toggle:
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
    STZ $0629 : STZ $062B : STZ $062D : STZ $062F
    STZ $0631 : STZ $0633 : STZ $0635 : STZ $0637
    STZ $0639 : STZ $063B : STZ $063D : STZ $063F
    CMP #$0001 : BEQ .resume_music
    STZ $2140
    RTL
  .resume_music
    LDA !MUSIC_DATA : CLC : ADC #$FF00 : PHA : STZ !MUSIC_DATA : PLA : JSL !MUSIC_ROUTINE
    LDA !MUSIC_TRACK : PHA : STZ !MUSIC_TRACK : PLA : JSL !MUSIC_ROUTINE
    RTL

game_healthalarm:
    dw !ACTION_CHOICE
    dl #!sram_healthalarm
    dw #$0000
    db #$28, "Low Health Alar", #$FF
    db #$28, "m     NEVER", #$FF
    db #$28, "m   VANILLA", #$FF
    db #$28, "m    PB FIX", #$FF
    db #$28, "m  IMPROVED", #$FF
    db #$FF

game_minimap:
    %cm_toggle("Minimap", !ram_minimap, #$0001, #0)

game_clear_minimap:
    %cm_jsl("Clear Minimap", .clear_minimap, #$0000)

  .clear_minimap
    LDA #$0000 : STA !ram_map_counter : STA $7E0789
    STA $7ED908 : STA $7ED90A : STA $7ED90C : STA $7ED90E
    LDX #$00FE
  .clear_minimap_loop
    STA $7ECD52,X : STA $7ECE52,X
    STA $7ECF52,X : STA $7ED052,X
    STA $7ED152,X : STA $7ED252,X
    STA $7ED352,X : STA $7ED452,X
    STA $7ED91C,X : STA $7EDA1C,X
    STA $7EDB1C,X : STA $7EDC1C,X
    STA $7EDD1C,X : STA $7E07F7,X
    DEX : DEX : BPL .clear_minimap_loop
    %sfxreset()
    RTL

game_goto_debug:
    %cm_submenu("Debug Settings", #DebugMenu)


; ----------
; Debug Menu
; ----------

DebugMenu:
    dw #game_debugmode
    dw #game_paldebug
    dw #game_debugbrightness
    dw #game_invincibility
    dw #game_pacifist
    dw #game_debugplms
    dw #game_debugprojectiles
    dw #game_debugfixscrolloffsets
    dw #$0000
    %cm_header("DEBUG SETTINGS")

game_debugmode:
    %cm_toggle("Debug Mode", $7E05D1, #$0001, #0)

game_paldebug:
    %cm_toggle_inverted("PAL Debug Movement", $7E09E6, #$0001, .routine)
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
    %cm_toggle("Pacifist Mode", !ram_pacifist, #$0001, #0)

game_debugplms:
    %cm_toggle_bit_inverted("Pseudo G-Mode", $7E1C23, #$8000, #0)

game_debugprojectiles:
    %cm_toggle_bit("Enable Projectiles", $7E198D, #$8000, #0)

game_debugfixscrolloffsets:
    %cm_toggle_bit("Fix Scroll Offsets", !ram_fix_scroll_offsets, #$0001, #0)


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
    dw #cutscenes_suppress_crateria_lightning
    dw #cutscenes_suppress_escape_flashing
    dw #cutscenes_suppress_power_bomb_flash
    dw #cutscenes_suppress_mb1_flashing
    dw #cutscenes_suppress_boss_damage_flash
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
    LDA !ROOM_ID : CMP #$A5ED : BNE .done
    ; Verify all four G4 bosses killed
    LDA $7ED828 : BIT #$0100 : BEQ .done
    LDA $7ED82C : BIT #$0001 : BEQ .done
    LDA $7ED82A : AND #$0101 : CMP #$0101 : BNE .done
    ; Set Tourian open
    LDA $7ED820 : ORA #$0400 : STA $7ED820
    BRA .done
  .off
    LDA !ROOM_ID : CMP #$A5ED : BNE .done
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

cutscenes_suppress_crateria_lightning:
    %cm_toggle_bit_inverted("Crateria Lightning", !sram_suppress_flashing, !SUPPRESS_CRATERIA_LIGHTNING, #0)

cutscenes_suppress_escape_flashing:
    %cm_toggle_bit_inverted("Escape Flashing", !sram_suppress_flashing, !SUPPRESS_ESCAPE_FLASHING, #0)

cutscenes_suppress_power_bomb_flash:
    %cm_toggle_bit_inverted("Power Bomb Flash", !sram_suppress_flashing, !SUPPRESS_POWER_BOMB_FLASH, #0)

cutscenes_suppress_mb1_flashing:
    %cm_toggle_bit_inverted("MB1 Flashing", !sram_suppress_flashing, !SUPPRESS_MB1_FLASHING, #0)

cutscenes_suppress_boss_damage_flash:
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

    LDA #$09B2 : CMP $C2 : BEQ .check_jump      ; check if we just assigned shot
    LDA $09B2 : BEQ .swap_shot                  ; check if shot is unassigned
    CMP $C4 : BNE .check_jump                   ; skip to check_jump if not a duplicate assignment
  .swap_shot
    JMP .shot                                   ; swap with shot

  .check_jump
    LDA #$09B4 : CMP $C2 : BEQ .check_dash
    LDA $09B4 : BEQ .swap_jump
    CMP $C4 : BNE .check_dash
  .swap_jump
    JMP .jump

  .check_dash
    LDA #$09B6 : CMP $C2 : BEQ .check_cancel
    LDA $09B6 : BEQ .swap_dash
    CMP $C4 : BNE .check_cancel
  .swap_dash
    JMP .dash

  .check_cancel
    LDA #$09B8 : CMP $C2 : BEQ .check_select
    LDA $09B8 : BEQ .swap_cancel
    CMP $C4 : BNE .check_select
  .swap_cancel
    JMP .cancel

  .check_select
    LDA #$09BA : CMP $C2 : BEQ .check_up
    LDA $09BA : BEQ .swap_select
    CMP $C4 : BNE .check_up
  .swap_select
    JMP .select

  .check_up
    LDA #$09BE : CMP $C2 : BEQ .check_down
    LDA $09BE : BEQ .swap_up
    CMP $C4 : BNE .check_down
  .swap_up
    JMP .up

  .check_down
    LDA #$09BC : CMP $C2 : BEQ .not_detected
    LDA $09BC : BEQ .swap_down
    CMP $C4 : BNE .not_detected
  .swap_down
    JMP .down

  .not_detected
    %sfxfail()
    LDA #$FFFF
    JML cm_previous_menu

  .shot
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .shot_safe  ; check if old input is L or R
    LDA #$0000 : STA $09B2                               ; unassign input
    RTL
  .shot_safe
    LDA !ram_cm_ctrl_swap : STA $09B2                    ; input is safe to be assigned
    RTL

  .jump
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .jump_safe
    LDA #$0000 : STA $09B4
    RTL
  .jump_safe
    LDA !ram_cm_ctrl_swap : STA $09B4
    RTL

  .dash
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .dash_safe
    LDA #$0000 : STA $09B6
    RTL
  .dash_safe
    LDA !ram_cm_ctrl_swap : STA $09B6
    RTL

  .cancel
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .cancel_safe
    LDA #$0000 : STA $09B8
    RTL
  .cancel_safe
    LDA !ram_cm_ctrl_swap : STA $09B8
    RTL

  .select
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .select_safe
    LDA #$0000 : STA $09BA
    RTL
  .select_safe
    LDA !ram_cm_ctrl_swap : STA $09BA
    RTL

  .up
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .unbind_up  ; check if input is L or R, unbind if not
    LDA !ram_cm_ctrl_swap : STA $09BE                    ; safe to assign input
    CMP $09BC : BEQ .swap_angle_down                     ; check if input matches angle down
    RTL

  .unbind_up
    STA $09BE               ; unassign up
    RTL

  .swap_angle_down
    CMP #$0020 : BNE .angle_down_l  ; check if angle up is assigned to L
    LDA #$0010 : STA $09BC  ; assign R to angle down
    RTL
  .angle_down_l
    LDA #$0020 : STA $09BC  ; assign L to angle down
    RTL

  .down
    LDA !ram_cm_ctrl_swap : AND #$0030 : BEQ .unbind_down
    LDA !ram_cm_ctrl_swap : STA $09BC
    CMP $09BE : BEQ .swap_angle_up
    RTL

  .unbind_down
    STA $09BC               ; unassign down
    RTL

  .swap_angle_up
    CMP #$0020 : BNE .angle_up_l
    LDA #$0010 : STA $09BE
    RTL
  .angle_up_l
    LDA #$0020 : STA $09BE
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
    LDA.l ControllerLayoutTable+2,X : STA.w !IH_INPUT_JUMP
    LDA.l ControllerLayoutTable+4,X : STA.w !IH_INPUT_RUN
    LDA.l ControllerLayoutTable+6,X : STA.w !IH_INPUT_ITEM_CANCEL
    LDA.l ControllerLayoutTable+8,X : STA.w !IH_INPUT_ITEM_SELECT
    LDA.l ControllerLayoutTable+10,X : STA.w !IH_INPUT_ANGLE_DOWN
    LDA.l ControllerLayoutTable+12,X : STA.w !IH_INPUT_ANGLE_UP
    %sfxconfirm()
    JML cm_previous_menu

ControllerLayoutTable:
    ;  shot     jump     dash     cancel        select        down     up
    dw !CTRL_X, !CTRL_A, !CTRL_B, !CTRL_Y,      !CTRL_SELECT, !CTRL_L, !CTRL_R ; Default (D1)
    dw !CTRL_X, !CTRL_A, !CTRL_B, !CTRL_SELECT, !CTRL_Y,      !CTRL_L, !CTRL_R ; Select+Cancel Swap (D2)
    dw !CTRL_Y, !CTRL_A, !CTRL_B, !CTRL_SELECT, !CTRL_X,      !CTRL_L, !CTRL_R ; D2 + Shot+Select Swap (D3)
    dw !CTRL_Y, !CTRL_B, !CTRL_A, !CTRL_SELECT, !CTRL_X,      !CTRL_L, !CTRL_R ; MMX Style (D4)
    dw !CTRL_X, !CTRL_B, !CTRL_Y, !CTRL_SELECT, !CTRL_A,      !CTRL_L, !CTRL_R ; SMW Style (D5)
}

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
    dw #$0000
    %cm_header("BOSS RNG CONTROL")

rng_goto_phanmenu:
    %cm_jsl("Phantoon", #ih_prepare_phantoon_menu, #PhantoonMenu)

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
    ; set _rng flag if any other patterns are set
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
    ; set _rng flag if any other patterns are set
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
    ; set _rng flag if any other patterns are set
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


; --------------
; Phantoon Menu
; --------------
ih_prepare_phantoon_menu:
    LDA !ram_phantoon_rng_inverted : PHA
    JSL phan_set_phan_first_phase
    JSL phan_set_phan_second_phase
    PLA : STA !ram_phantoon_rng_inverted
    %setmenubank()
    JML action_submenu

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
    %cm_header("PHANTOON CONTROL")


phan_phase_1_table:
    dw #$003F, #$0020, #$0008, #$0002, #$0010, #$0004, #$0001, #$0030
    dw #$000C, #$0003, #$000F, #$0033, #$003C, #$002A, #$0015, #$0000

phan_phase_2_table:
    dw #$003F, #$0020, #$0008, #$0002, #$0010, #$0004, #$0001, #$0030
    dw #$000C, #$0003, #$0007, #$0023, #$0024, #$0022, #$0005, #$0000

phan_set_phan_first_phase:
    LDX #$0000
    LDA !ram_phantoon_rng_round_1 : BEQ .end_first_loop
  .first_loop
    CMP.l phan_phase_1_table,X : BEQ .end_first_loop
    INX : INX : CPX #$001E : BNE .first_loop
  .end_first_loop
    TXA : LSR : STA !ram_cm_phan_first_phase
    RTL

phan_set_phan_second_phase:
    LDX #$0000
    LDA !ram_phantoon_rng_round_2 : BEQ .end_second_loop
  .second_loop
    CMP.l phan_phase_2_table,X : BEQ .end_second_loop
    INX : INX : CPX #$001E : BNE .second_loop
  .end_second_loop
    TXA : LSR : STA !ram_cm_phan_second_phase
    BEQ .set_inverted : TXA : BEQ .set_inverted
    LDA #$0002
  .set_inverted
    STA !ram_phantoon_rng_inverted
    RTL


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
    dw #$FFFF
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

ctrl_clear_shortcuts:
    %cm_jsl("Clear All Shortcuts", .routine, #$0000)
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
    ; menu to default, Start + Select
    LDA #$3000 : STA !sram_ctrl_menu
    %sfxconfirm()
    RTL

ctrl_reset_defaults:
    %cm_jsl("Reset to Defaults", .routine, #$0000)
  .routine
    %sfxreset()
    JML init_sram_upto9_controller_shortcuts

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

  .enabled
    STA !ram_game_mode_extras
    RTL
}

init_wram_based_on_sram:
{
    JSL init_suit_properties_ram
    JSL init_physics_ram
    JSL init_print_segment_timer

    ; Check if any less common controller shortcuts are configured
    JML GameModeExtras
}

init_print_segment_timer:
{
if !INFOHUD_ALWAYS_SHOW_X_Y
    TDC
else
    ; Skip printing segment timer when shinetune or walljump enabled
    LDA !sram_display_mode : CMP #!IH_MODE_SHINETUNE_INDEX : BEQ .skipSegmentTimer
    CMP #!IH_MODE_WALLJUMP_INDEX : BEQ .skipSegmentTimer
    TDC : INC
    BRA .setSegmentTimer
  .skipSegmentTimer
    TDC
  .setSegmentTimer
endif
    STA !ram_print_segment_timer
    RTL
}

