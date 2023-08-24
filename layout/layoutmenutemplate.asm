
pushpc
org $E68000
print pc, " layoutmenu start"

; -------------------------
; Room Layout menu
; (generated from template)
; -------------------------

LayoutMenu:
    dw #layout_itempickups
    dw #$FFFF
    dw #layout_magnetstairs
    dw #layout_arearando
    dw #layout_antisoftlock
    dw #layout_variatweaks
    dw #layout_dashrecall
    dw #$FFFF
    dw #layout_doorportal
    dw #layout_dynamic_dooriframes
    dw #layout_dynamic_nextdoorjump
    dw #$FFFF
    dw #layout_dynamic_selectsource
    dw #layout_dynamic_sourcedoor
    dw #$FFFF
    dw #layout_dynamic_selectdestination
    dw #layout_dynamic_destinationdoor
    dw #$0000
    %cm_header("ROOM LAYOUT")
    %cm_footer("APPLIED WHEN ROOM RELOADED")

layout_itempickups:
    %cm_jsl("Item Pickups", #layout_prepare_itempickups_menu, #LayoutItemPickupsMenu)

layout_prepare_itempickups_menu:
{
    TDC : STA !ram_cm_itempickups_visible
    STA !ram_cm_itempickups_chozo
    STA !ram_cm_itempickups_hidden

    LDX #$002A
  .loop
    LDA.l LayoutIPVisiblePLMTable,X
    CMP !ram_itempickups_visible : BNE .endVisible
    TXA : LSR : STA !ram_cm_itempickups_visible
  .endVisible
    LDA.l LayoutIPChozoPLMTable,X
    CMP !ram_itempickups_chozo : BNE .endChozo
    TXA : LSR : STA !ram_cm_itempickups_chozo
  .endChozo
    LDA.l LayoutIPHiddenPLMTable,X
    CMP !ram_itempickups_hidden : BNE .endHidden
    TXA : LSR : STA !ram_cm_itempickups_hidden
  .endHidden
    DEX : DEX : BNE .loop

    JSL layout_ip_init_all
    %setmenubank()
    JML action_submenu
}

layout_ip_init_all:
{
    LDA !ram_cm_itempickups_visible
    CMP !ram_cm_itempickups_chozo : BNE .custom
    CMP !ram_cm_itempickups_hidden : BEQ .set
  .custom
    LDA #$0016
  .set
    STA !ram_itempickups_all
    RTL
}

LayoutIPVisiblePLMTable:
    dw $0000   ; Vanilla
    dw $EED7   ; E-Tank
    dw $EF27   ; R-Tank
    dw $EEDB   ; Missile
    dw $EEDF   ; Super
    dw $EEE3   ; Power Bomb
    dw $EF07   ; Varia
    dw $EF0B   ; Gravity
    dw $EF23   ; Morph
    dw $EEE7   ; Bombs
    dw $EF03   ; Springball
    dw $EF1F   ; Screw
    dw $EEF3   ; Hi-Jump
    dw $EF1B   ; Space Jump
    dw $EEF7   ; Speed
    dw $EF17   ; Grapple
    dw $EF0F   ; X-Ray
    dw $EEEB   ; Charge
    dw $EEEF   ; Ice
    dw $EEFB   ; Wave
    dw $EEFF   ; Spazer
    dw $EF13   ; Plasma

LayoutIPChozoPLMTable:
    dw $0000   ; Vanilla
    dw $EF2B   ; E-Tank
    dw $EF7B   ; R-Tank
    dw $EF2F   ; Missile
    dw $EF33   ; Super
    dw $EF37   ; Power Bomb
    dw $EF5B   ; Varia
    dw $EF5F   ; Gravity
    dw $EF77   ; Morph
    dw $EF3B   ; Bombs
    dw $EF57   ; Springball
    dw $EF73   ; Screw
    dw $EF47   ; Hi-Jump
    dw $EF6F   ; Space Jump
    dw $EF4B   ; Speed
    dw $EF6B   ; Grapple
    dw $EF63   ; X-Ray
    dw $EF3F   ; Charge
    dw $EF43   ; Ice
    dw $EF4F   ; Wave
    dw $EF53   ; Spazer
    dw $EF67   ; Plasma

LayoutIPHiddenPLMTable:
    dw $0000   ; Vanilla
    dw $EF7F   ; E-Tank
    dw $EFCF   ; R-Tank
    dw $EF83   ; Missile
    dw $EF87   ; Super
    dw $EF8B   ; Power Bomb
    dw $EFAF   ; Varia
    dw $EFB3   ; Gravity
    dw $EFCB   ; Morph
    dw $EF8F   ; Bombs
    dw $EFAB   ; Springball
    dw $EFC7   ; Screw
    dw $EF9B   ; Hi-Jump
    dw $EFC3   ; Space Jump
    dw $EF9F   ; Speed
    dw $EFBF   ; Grapple
    dw $EFB7   ; X-Ray
    dw $EF93   ; Charge
    dw $EF97   ; Ice
    dw $EFA3   ; Wave
    dw $EFA7   ; Spazer
    dw $EFBB   ; Plasma

LayoutItemPickupsMenu:
    dw #layout_ip_all
    dw #$FFFF
    dw #layout_ip_visible
    dw #layout_ip_chozo
    dw #layout_ip_hidden
    dw #$0000
    %cm_header("ITEM PICKUPS")

layout_ip_all:
    dw !ACTION_CHOICE
    dl #!ram_itempickups_all
    dw #layout_ip_set_all
    db #$28, "All Items", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "     E-TANK", #$FF
    db #$28, "     R-TANK", #$FF
    db #$28, "    MISSILE", #$FF
    db #$28, "      SUPER", #$FF
    db #$28, " POWER BOMB", #$FF
    db #$28, "      VARIA", #$FF
    db #$28, "    GRAVITY", #$FF
    db #$28, "      MORPH", #$FF
    db #$28, "      BOMBS", #$FF
    db #$28, " SPRINGBALL", #$FF
    db #$28, "      SCREW", #$FF
    db #$28, "    HI-JUMP", #$FF
    db #$28, " SPACE JUMP", #$FF
    db #$28, "      SPEED", #$FF
    db #$28, "    GRAPPLE", #$FF
    db #$28, "       XRAY", #$FF
    db #$28, "     CHARGE", #$FF
    db #$28, "        ICE", #$FF
    db #$28, "       WAVE", #$FF
    db #$28, "     SPAZER", #$FF
    db #$28, "     PLASMA", #$FF
    db #$28, "     CUSTOM", #$FF
    db #$FF

layout_ip_set_all:
{
    LDA !ram_itempickups_all : CMP #$0016 : BPL .end
    STA !ram_cm_itempickups_visible
    STA !ram_cm_itempickups_chozo
    STA !ram_cm_itempickups_hidden
    ASL : TAX
    LDA.l LayoutIPVisiblePLMTable,X : STA !ram_itempickups_visible
    LDA.l LayoutIPChozoPLMTable,X : STA !ram_itempickups_chozo
    LDA.l LayoutIPHiddenPLMTable,X : STA !ram_itempickups_hidden
  .end
    RTL
}

layout_ip_visible:
    dw !ACTION_CHOICE
    dl #!ram_cm_itempickups_visible
    dw #layout_ip_set_visible
    db #$28, "Visible Items", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "     E-TANK", #$FF
    db #$28, "     R-TANK", #$FF
    db #$28, "    MISSILE", #$FF
    db #$28, "      SUPER", #$FF
    db #$28, " POWER BOMB", #$FF
    db #$28, "      VARIA", #$FF
    db #$28, "    GRAVITY", #$FF
    db #$28, "      MORPH", #$FF
    db #$28, "      BOMBS", #$FF
    db #$28, " SPRINGBALL", #$FF
    db #$28, "      SCREW", #$FF
    db #$28, "    HI-JUMP", #$FF
    db #$28, " SPACE JUMP", #$FF
    db #$28, "      SPEED", #$FF
    db #$28, "    GRAPPLE", #$FF
    db #$28, "       XRAY", #$FF
    db #$28, "     CHARGE", #$FF
    db #$28, "        ICE", #$FF
    db #$28, "       WAVE", #$FF
    db #$28, "     SPAZER", #$FF
    db #$28, "     PLASMA", #$FF
    db #$FF

layout_ip_set_visible:
{
    LDA !ram_cm_itempickups_visible : ASL : TAX
    LDA.l LayoutIPVisiblePLMTable,X : STA !ram_itempickups_visible
    JML layout_ip_init_all
}

layout_ip_chozo:
    dw !ACTION_CHOICE
    dl #!ram_cm_itempickups_chozo
    dw #layout_ip_set_chozo
    db #$28, "Chozo Orb Items", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "     E-TANK", #$FF
    db #$28, "     R-TANK", #$FF
    db #$28, "    MISSILE", #$FF
    db #$28, "      SUPER", #$FF
    db #$28, " POWER BOMB", #$FF
    db #$28, "      VARIA", #$FF
    db #$28, "    GRAVITY", #$FF
    db #$28, "      MORPH", #$FF
    db #$28, "      BOMBS", #$FF
    db #$28, " SPRINGBALL", #$FF
    db #$28, "      SCREW", #$FF
    db #$28, "    HI-JUMP", #$FF
    db #$28, " SPACE JUMP", #$FF
    db #$28, "      SPEED", #$FF
    db #$28, "    GRAPPLE", #$FF
    db #$28, "       XRAY", #$FF
    db #$28, "     CHARGE", #$FF
    db #$28, "        ICE", #$FF
    db #$28, "       WAVE", #$FF
    db #$28, "     SPAZER", #$FF
    db #$28, "     PLASMA", #$FF
    db #$FF

layout_ip_set_chozo:
{
    LDA !ram_cm_itempickups_chozo : ASL : TAX
    LDA.l LayoutIPChozoPLMTable,X : STA !ram_itempickups_chozo
    JML layout_ip_init_all
}

layout_ip_hidden:
    dw !ACTION_CHOICE
    dl #!ram_cm_itempickups_hidden
    dw #layout_ip_set_hidden
    db #$28, "Hidden Items", #$FF
    db #$28, "    VANILLA", #$FF
    db #$28, "     E-TANK", #$FF
    db #$28, "     R-TANK", #$FF
    db #$28, "    MISSILE", #$FF
    db #$28, "      SUPER", #$FF
    db #$28, " POWER BOMB", #$FF
    db #$28, "      VARIA", #$FF
    db #$28, "    GRAVITY", #$FF
    db #$28, "      MORPH", #$FF
    db #$28, "      BOMBS", #$FF
    db #$28, " SPRINGBALL", #$FF
    db #$28, "      SCREW", #$FF
    db #$28, "    HI-JUMP", #$FF
    db #$28, " SPACE JUMP", #$FF
    db #$28, "      SPEED", #$FF
    db #$28, "    GRAPPLE", #$FF
    db #$28, "       XRAY", #$FF
    db #$28, "     CHARGE", #$FF
    db #$28, "        ICE", #$FF
    db #$28, "       WAVE", #$FF
    db #$28, "     SPAZER", #$FF
    db #$28, "     PLASMA", #$FF
    db #$FF

layout_ip_set_hidden:
{
    LDA !ram_cm_itempickups_hidden : ASL : TAX
    LDA.l LayoutIPHiddenPLMTable,X : STA !ram_itempickups_hidden
    JML layout_ip_init_all
}

layout_magnetstairs:
    %cm_toggle_bit("Remove Magnet Stairs", !sram_room_layout, !ROOM_LAYOUT_MAGNET_STAIRS, #0)

layout_arearando:
    %cm_toggle_bit("Area Rando Patches", !sram_room_layout, !ROOM_LAYOUT_AREA_RANDO, #0)

layout_antisoftlock:
    %cm_toggle_bit("Anti-Softlock Patches", !sram_room_layout, !ROOM_LAYOUT_ANTISOFTLOCK, #0)

layout_variatweaks:
    %cm_toggle_bit("VARIA Tweaks", !sram_room_layout, !ROOM_LAYOUT_VARIA_TWEAKS, #0)

layout_dashrecall:
    %cm_toggle_bit("DASH Recall Patches", !sram_room_layout, !ROOM_LAYOUT_DASH_RECALL, #0)

layout_doorportal:
    dw !ACTION_CHOICE
    dl #!ram_cm_door_dynamic
    dw #.routine
    db #$28, "Custom Portal", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "  AREA BOSS", #$FF
    db #$28, " LEFT RIGHT", #$FF
    db #$28, "    UP DOWN", #$FF
    db #$FF
  .routine
    LDA !ram_cm_door_dynamic : BEQ .off
    CMP #$0002 : BEQ .leftright : CMP #$0001 : BEQ .areaboss
    TDC : ORA !ram_cm_door_dynamic : STA !ram_door_portal_flags
    LDA !ram_door_source : CMP !layout_up_door_count : BMI .checkDown
    TDC : STA !ram_door_source
  .checkDown
    LDA !ram_door_destination : CMP !layout_down_door_count : BMI .done
    TDC : STA !ram_door_destination
  .done
    RTL
  .off
    STA !ram_door_portal_flags
    RTL
  .leftright
    TDC : ORA !ram_cm_door_dynamic : STA !ram_door_portal_flags
    LDA !ram_door_source : CMP !layout_left_door_count : BMI .checkRight
    TDC : STA !ram_door_source
  .checkRight
    LDA !ram_door_destination : CMP !layout_right_door_count : BMI .done
    TDC : STA !ram_door_destination
    RTL
  .areaboss
    LDA !ram_door_portal_flags : AND !DOOR_PORTAL_EXCLUDE_MODE_MASK
    ORA !ram_cm_door_dynamic : ORA !DOOR_PORTAL_IFRAMES_BIT : STA !ram_door_portal_flags
    LDA !ram_door_source : CMP !layout_areaboss_door_count : BMI .checkDest
    TDC : STA !ram_door_source
  .checkDest
    LDA !ram_door_destination : CMP !layout_areaboss_door_count : BMI .done
    TDC : STA !ram_door_destination
    RTL

layout_dynamic_dooriframes:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_door_dynamic
    dw #$0000
    dw #layout_dooriframes
    dw #layout_dooriframes
    dw #layout_dooriframes

layout_dooriframes:
    %cm_toggle_bit("Door Portal I-Frames", !ram_door_portal_flags, !DOOR_PORTAL_IFRAMES_BIT, #$0000)

layout_dynamic_nextdoorjump:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_door_dynamic
    dw #$0000
    dw #layout_nextdoorjump
    dw #$0000
    dw #$0000

layout_nextdoorjump:
    %cm_toggle_bit("Next Door Jump To Dest", !ram_door_portal_flags, !DOOR_PORTAL_JUMP_BIT, #$0000)

layout_dynamic_selectsource:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_door_dynamic
    dw #$0000
    dw #layout_areaboss_selectsource
    dw #layout_leftright_selectleft
    dw #layout_updown_selectup

layout_areaboss_selectsource:
    %cm_jsl("Select Portal Source", #LayoutAreaBossSourceDoorMenu, #LayoutAreaBossDoorMenu)

layout_leftright_selectleft:
    %cm_jsl("Select Portal Left Door", #LayoutLeftDoorMenu, #LayoutRegionDoorMenu)

layout_updown_selectup:
    %cm_jsl("Select Portal Up Door", #LayoutUpDoorMenu, #LayoutRegionDoorMenu)

layout_dynamic_sourcedoor:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_door_dynamic
    dw #$0000
    dw #layout_areaboss_sourcedoor
    dw #layout_leftright_leftdoor
    dw #layout_updown_updoor

layout_dynamic_selectdestination:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_door_dynamic
    dw #$0000
    dw #layout_areaboss_selectdestination
    dw #layout_leftright_selectright
    dw #layout_updown_selectdown

layout_areaboss_selectdestination:
    %cm_jsl("Select Portal Destination", #LayoutAreaBossDestinationDoorMenu, #LayoutAreaBossDoorMenu)

layout_leftright_selectright:
    %cm_jsl("Select Portal Right Door", #LayoutRightDoorMenu, #LayoutRegionDoorMenu)

layout_updown_selectdown:
    %cm_jsl("Select Portal Down Door", #LayoutDownDoorMenu, #LayoutRegionDoorMenu)

layout_dynamic_destinationdoor:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_door_dynamic
    dw #$0000
    dw #layout_areaboss_destinationdoor
    dw #layout_leftright_rightdoor
    dw #layout_updown_downdoor

LayoutLeftDoorMenu:
    LDA #$0000 : STA !ram_cm_door_direction_index
    BRA LayoutAreaBossSourceDoorMenu

LayoutUpDoorMenu:
    LDA #$0004 : STA !ram_cm_door_direction_index

LayoutAreaBossSourceDoorMenu:
    LDA #!ram_door_source : STA !ram_cm_door_menu_value
    LDA #!ram_door_source>>16 : STA !ram_cm_door_menu_bank
    JML action_submenu

LayoutRightDoorMenu:
    LDA #$0002 : STA !ram_cm_door_direction_index
    BRA LayoutAreaBossDestinationDoorMenu

LayoutDownDoorMenu:
    LDA #$0006 : STA !ram_cm_door_direction_index

LayoutAreaBossDestinationDoorMenu:
    LDA #!ram_door_destination : STA !ram_cm_door_menu_value
    LDA #!ram_door_destination>>16 : STA !ram_cm_door_menu_bank
    JML action_submenu

doormenu_select:
{
    LDA !ram_cm_door_menu_value : STA $16
    LDA !ram_cm_door_menu_bank : STA $18
    TYA : STA [$16]
    JML cm_previous_menu
}


; -----------------
; Area/Boss Doors
; -----------------
LayoutAreaBossDoorMenu:

layout_areaboss_sourcedoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_source
    dw #$0000
portals_area_boss_vanilla_table:

layout_areaboss_destinationdoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_destination
    dw #$0000
portals_area_boss_vanilla_table:


; -----------------
; Regions
; -----------------
LayoutRegionDoorMenu:
    dw #doormenu_region_bb
    dw #doormenu_region_ce
    dw #doormenu_region_cl
    dw #doormenu_region_cr
    dw #doormenu_region_gb
    dw #doormenu_region_gm
    dw #doormenu_region_kl
    dw #doormenu_region_ln
    dw #doormenu_region_pb
    dw #doormenu_region_pm
    dw #doormenu_region_rb
    dw #doormenu_region_tr
    dw #doormenu_region_un
    dw #doormenu_region_wm
    dw #doormenu_region_ws
    dw #doormenu_region_ym
    dw #$0000
    %cm_header("SELECT REGION")

doormenu_region_bb:
    %cm_jsl("BB Blue Brinstar", #doormenu_selectsubmenu, #LayoutBlueBrinstarDoorMenu)

doormenu_region_ce:
    %cm_jsl("CE Ceres", #doormenu_selectsubmenu, #LayoutCeresDoorMenu)

doormenu_region_cl:
    %cm_jsl("CL Croc's Lair", #doormenu_selectsubmenu, #LayoutCrocLairDoorMenu)

doormenu_region_cr:
    %cm_jsl("CR Crateria", #doormenu_selectsubmenu, #LayoutCrateriaDoorMenu)

doormenu_region_gb:
    %cm_jsl("GB Green Brinstar", #doormenu_selectsubmenu, #LayoutGreenBrinstarDoorMenu)

doormenu_region_gm:
    %cm_jsl("GM Green Maridia", #doormenu_selectsubmenu, #LayoutGreenMaridiaDoorMenu)

doormenu_region_kl:
    %cm_jsl("KL Kraid's Lair", #doormenu_selectsubmenu, #LayoutKraidLairDoorMenu)

doormenu_region_ln:
    %cm_jsl("LN Lower Norfair", #doormenu_selectsubmenu, #LayoutLowerNorfairDoorMenu)

doormenu_region_pb:
    %cm_jsl("PB Pink Brinstar", #doormenu_selectsubmenu, #LayoutPinkBrinstarDoorMenu)

doormenu_region_pm:
    %cm_jsl("PM Pink Maridia", #doormenu_selectsubmenu, #LayoutPinkMaridiaDoorMenu)

doormenu_region_rb:
    %cm_jsl("RB Red Brinstar", #doormenu_selectsubmenu, #LayoutRedBrinstarDoorMenu)

doormenu_region_tr:
    %cm_jsl("TR Tourian", #doormenu_selectsubmenu, #LayoutTourianDoorMenu)

doormenu_region_un:
    %cm_jsl("UN Upper Norfair", #doormenu_selectsubmenu, #LayoutUpperNorfairDoorMenu)

doormenu_region_wm:
    %cm_jsl("WM West Maridia", #doormenu_selectsubmenu, #LayoutWestMaridiaDoorMenu)

doormenu_region_ws:
    %cm_jsl("WS Wrecked Ship", #doormenu_selectsubmenu, #LayoutWreckedShipDoorMenu)

doormenu_region_ym:
    %cm_jsl("YM Yellow Maridia", #doormenu_selectsubmenu, #LayoutYellowMaridiaDoorMenu)

doormenu_selectsubmenu:
{
    LDA #doormenu_selectsubmenu>>8 : STA $17
    LDA !ram_cm_door_direction_index : STA $16
    LDA [$16],Y : BEQ .noMenu : TAY
    JML action_submenu

  .noMenu
    %sfxfail()
    RTL
}

doorsubmenu_select:
{
    LDA !ram_cm_door_menu_value : STA $16
    LDA !ram_cm_door_menu_bank : STA $18
    TYA : STA [$16]
    JSL cm_previous_menu
    JML cm_previous_menu
}

LayoutBlueBrinstarDoorMenu:
    dw #LayoutBlueBrinstarLeftDoorMenu
    dw #LayoutBlueBrinstarRightDoorMenu
    dw #$0000
    dw #$0000

LayoutCeresDoorMenu:
    dw #LayoutCeresLeftDoorMenu
    dw #LayoutCeresRightDoorMenu
    dw #$0000
    dw #$0000

LayoutCrocLairDoorMenu:
    dw #LayoutCrocLairLeftDoorMenu
    dw #LayoutCrocLairRightDoorMenu
    dw #LayoutCrocLairUpDoorMenu
    dw #LayoutCrocLairDownDoorMenu

LayoutCrateriaDoorMenu:
    dw #LayoutCrateriaLeftDoorMenu
    dw #LayoutCrateriaRightDoorMenu
    dw #LayoutCrateriaUpDoorMenu
    dw #LayoutCrateriaDownDoorMenu

LayoutGreenBrinstarDoorMenu:
    dw #LayoutGreenBrinstarLeftDoorMenu
    dw #LayoutGreenBrinstarRightDoorMenu
    dw #LayoutGreenBrinstarUpDoorMenu
    dw #LayoutGreenBrinstarDownDoorMenu

LayoutGreenMaridiaDoorMenu:
    dw #LayoutGreenMaridiaLeftDoorMenu
    dw #LayoutGreenMaridiaRightDoorMenu
    dw #$0000
    dw #LayoutGreenMaridiaDownDoorMenu

LayoutKraidLairDoorMenu:
    dw #LayoutKraidLairLeftDoorMenu
    dw #LayoutKraidLairRightDoorMenu
    dw #LayoutKraidLairUpDoorMenu
    dw #LayoutKraidLairDownDoorMenu

LayoutLowerNorfairDoorMenu:
    dw #LayoutLowerNorfairLeftDoorMenu
    dw #LayoutLowerNorfairRightDoorMenu
    dw #LayoutLowerNorfairUpDoorMenu
    dw #LayoutLowerNorfairDownDoorMenu

LayoutPinkBrinstarDoorMenu:
    dw #LayoutPinkBrinstarLeftDoorMenu
    dw #LayoutPinkBrinstarRightDoorMenu
    dw #$0000
    dw #$0000

LayoutPinkMaridiaDoorMenu:
    dw #LayoutPinkMaridiaLeftDoorMenu
    dw #LayoutPinkMaridiaRightDoorMenu
    dw #LayoutPinkMaridiaUpDoorMenu
    dw #LayoutPinkMaridiaDownDoorMenu

LayoutRedBrinstarDoorMenu:
    dw #LayoutRedBrinstarLeftDoorMenu
    dw #LayoutRedBrinstarRightDoorMenu
    dw #$0000
    dw #$0000

LayoutTourianDoorMenu:
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000

LayoutUpperNorfairDoorMenu:
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000

LayoutWestMaridiaDoorMenu:
    dw #LayoutWestMaridiaLeftDoorMenu
    dw #LayoutWestMaridiaRightDoorMenu
    dw #LayoutWestMaridiaUpDoorMenu
    dw #LayoutWestMaridiaDownDoorMenu

LayoutWreckedShipDoorMenu:
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000

LayoutYellowMaridiaDoorMenu:
    dw #LayoutYellowMaridiaLeftDoorMenu
    dw #LayoutYellowMaridiaRightDoorMenu
    dw #LayoutYellowMaridiaUpDoorMenu
    dw #LayoutYellowMaridiaDownDoorMenu


; -----------------
; Left Doors
; -----------------
LayoutBlueBrinstarLeftDoorMenu:

LayoutCeresLeftDoorMenu:

LayoutCrocLairLeftDoorMenu:

LayoutCrateriaLeftDoorMenu:

LayoutGreenBrinstarLeftDoorMenu:

LayoutGreenMaridiaLeftDoorMenu:

LayoutKraidLairLeftDoorMenu:

LayoutLowerNorfairLeftDoorMenu:

LayoutPinkBrinstarLeftDoorMenu:

LayoutPinkMaridiaLeftDoorMenu:

LayoutRedBrinstarLeftDoorMenu:

LayoutTourianLeftDoorMenu:

LayoutUpperNorfairLeftDoorMenu:

LayoutWestMaridiaLeftDoorMenu:

LayoutWreckedShipLeftDoorMenu:

LayoutYellowMaridiaLeftDoorMenu:

layout_leftright_leftdoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_source
    dw #$0000
portals_left_vanilla_table:


; -----------------
; Right Doors
; -----------------
LayoutBlueBrinstarRightDoorMenu:

LayoutCeresRightDoorMenu:

LayoutCrocLairRightDoorMenu:

LayoutCrateriaRightDoorMenu:

LayoutGreenBrinstarRightDoorMenu:

LayoutGreenMaridiaRightDoorMenu:

LayoutKraidLairRightDoorMenu:

LayoutLowerNorfairRightDoorMenu:

LayoutPinkBrinstarRightDoorMenu:

LayoutPinkMaridiaRightDoorMenu:

LayoutRedBrinstarRightDoorMenu:

LayoutTourianRightDoorMenu:

LayoutUpperNorfairRightDoorMenu:

LayoutWestMaridiaRightDoorMenu:

LayoutWreckedShipRightDoorMenu:

LayoutYellowMaridiaRightDoorMenu:

layout_leftright_rightdoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_destination
    dw #$0000
portals_right_vanilla_table:


; -----------------
; Up Doors
; -----------------
LayoutCrocLairUpDoorMenu:

LayoutCrateriaUpDoorMenu:

LayoutGreenBrinstarUpDoorMenu:

LayoutKraidLairUpDoorMenu:

LayoutLowerNorfairUpDoorMenu:

LayoutPinkMaridiaUpDoorMenu:

LayoutTourianUpDoorMenu:

LayoutUpperNorfairUpDoorMenu:

LayoutWestMaridiaUpDoorMenu:

LayoutWreckedShipUpDoorMenu:

LayoutYellowMaridiaUpDoorMenu:

layout_updown_updoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_source
    dw #$0000
portals_up_vanilla_table:


; -----------------
; Down Doors
; -----------------
LayoutCrocLairDownDoorMenu:

LayoutCrateriaDownDoorMenu:

LayoutGreenBrinstarDownDoorMenu:

LayoutGreenMaridiaDownDoorMenu:

LayoutKraidLairDownDoorMenu:

LayoutLowerNorfairDownDoorMenu:

LayoutPinkMaridiaDownDoorMenu:

LayoutTourianDownDoorMenu:

LayoutUpperNorfairDownDoorMenu:

LayoutWestMaridiaDownDoorMenu:

LayoutWreckedShipDownDoorMenu:

LayoutYellowMaridiaDownDoorMenu:

layout_updown_downdoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_destination
    dw #$0000
portals_down_vanilla_table:


print pc, " layoutmenu end"
pullpc
