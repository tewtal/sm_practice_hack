
pushpc
org $E68000
print pc, " layoutmenu start"

; -------------------------
; Room Layout menu
; (generated from template)
; -------------------------

!layout_areaboss_door_count = #$0028
!layout_left_door_count = #$00FE
!layout_right_door_count = #$00FE
!layout_up_door_count = #$0025
!layout_down_door_count = #$0025

LayoutMenu:
    dw #layout_itempickups
    dw #$FFFF
    dw #layout_bombtorizodoor
    dw #layout_magnetstairs
    dw #layout_arearando
    dw #layout_antisoftlock
    dw #layout_variatweaks
    dw #layout_dashrecall
    dw #$FFFF
    dw #layout_doorportal
    dw #layout_dynamic_dooriframes
    dw #layout_dynamic_horizontalmirroring
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

if !FEATURE_PAL
!layout_plm_offset = 6
else
!layout_plm_offset = 0
endif

LayoutIPVisiblePLMTable:
    dw $0000                        ; Vanilla
    dw $EED7+!layout_plm_offset     ; E-Tank
    dw $EF27+!layout_plm_offset     ; R-Tank
    dw $EEDB+!layout_plm_offset     ; Missile
    dw $EEDF+!layout_plm_offset     ; Super
    dw $EEE3+!layout_plm_offset     ; Power Bomb
    dw $EF07+!layout_plm_offset     ; Varia
    dw $EF0B+!layout_plm_offset     ; Gravity
    dw $EF23+!layout_plm_offset     ; Morph
    dw $EEE7+!layout_plm_offset     ; Bombs
    dw $EF03+!layout_plm_offset     ; Springball
    dw $EF1F+!layout_plm_offset     ; Screw
    dw $EEF3+!layout_plm_offset     ; Hi-Jump
    dw $EF1B+!layout_plm_offset     ; Space Jump
    dw $EEF7+!layout_plm_offset     ; Speed
    dw $EF17+!layout_plm_offset     ; Grapple
    dw $EF0F+!layout_plm_offset     ; X-Ray
    dw $EEEB+!layout_plm_offset     ; Charge
    dw $EEEF+!layout_plm_offset     ; Ice
    dw $EEFB+!layout_plm_offset     ; Wave
    dw $EEFF+!layout_plm_offset     ; Spazer
    dw $EF13+!layout_plm_offset     ; Plasma

LayoutIPChozoPLMTable:
    dw $0000                        ; Vanilla
    dw $EF2B+!layout_plm_offset     ; E-Tank
    dw $EF7B+!layout_plm_offset     ; R-Tank
    dw $EF2F+!layout_plm_offset     ; Missile
    dw $EF33+!layout_plm_offset     ; Super
    dw $EF37+!layout_plm_offset     ; Power Bomb
    dw $EF5B+!layout_plm_offset     ; Varia
    dw $EF5F+!layout_plm_offset     ; Gravity
    dw $EF77+!layout_plm_offset     ; Morph
    dw $EF3B+!layout_plm_offset     ; Bombs
    dw $EF57+!layout_plm_offset     ; Springball
    dw $EF73+!layout_plm_offset     ; Screw
    dw $EF47+!layout_plm_offset     ; Hi-Jump
    dw $EF6F+!layout_plm_offset     ; Space Jump
    dw $EF4B+!layout_plm_offset     ; Speed
    dw $EF6B+!layout_plm_offset     ; Grapple
    dw $EF63+!layout_plm_offset     ; X-Ray
    dw $EF3F+!layout_plm_offset     ; Charge
    dw $EF43+!layout_plm_offset     ; Ice
    dw $EF4F+!layout_plm_offset     ; Wave
    dw $EF53+!layout_plm_offset     ; Spazer
    dw $EF67+!layout_plm_offset     ; Plasma

LayoutIPHiddenPLMTable:
    dw $0000                        ; Vanilla
    dw $EF7F+!layout_plm_offset     ; E-Tank
    dw $EFCF+!layout_plm_offset     ; R-Tank
    dw $EF83+!layout_plm_offset     ; Missile
    dw $EF87+!layout_plm_offset     ; Super
    dw $EF8B+!layout_plm_offset     ; Power Bomb
    dw $EFAF+!layout_plm_offset     ; Varia
    dw $EFB3+!layout_plm_offset     ; Gravity
    dw $EFCB+!layout_plm_offset     ; Morph
    dw $EF8F+!layout_plm_offset     ; Bombs
    dw $EFAB+!layout_plm_offset     ; Springball
    dw $EFC7+!layout_plm_offset     ; Screw
    dw $EF9B+!layout_plm_offset     ; Hi-Jump
    dw $EFC3+!layout_plm_offset     ; Space Jump
    dw $EF9F+!layout_plm_offset     ; Speed
    dw $EFBF+!layout_plm_offset     ; Grapple
    dw $EFB7+!layout_plm_offset     ; X-Ray
    dw $EF93+!layout_plm_offset     ; Charge
    dw $EF97+!layout_plm_offset     ; Ice
    dw $EFA3+!layout_plm_offset     ; Wave
    dw $EFA7+!layout_plm_offset     ; Spazer
    dw $EFBB+!layout_plm_offset     ; Plasma

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

layout_bombtorizodoor:
    dw !ACTION_CHOICE
    dl #!sram_bomb_torizo_door
    dw #$0000
    db #$28, "Bomb Torizo Doo", #$FF
    db #$28, "r   VANILLA", #$FF
    db #$28, "r      FAST", #$FF
    db #$28, "r      SLOW", #$FF

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
    TDC : ORA !ram_cm_door_dynamic : ORA !DOOR_PORTAL_IFRAMES_BIT : STA !ram_door_portal_flags
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

layout_dynamic_horizontalmirroring:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_door_dynamic
    dw #$0000
    dw #layout_horizontalmirroring
    dw #$0000
    dw #$0000

layout_horizontalmirroring:
    %cm_toggle_bit("Horizontal Mirroring", !ram_door_portal_flags, !DOOR_PORTAL_HORIZONTAL_MIRRORING_BIT, #$0000)

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
    dw #doormenu_areaboss_A96C  ; Bosses
    dw #doormenu_areaboss_A840
    dw #doormenu_areaboss_91CE
    dw #doormenu_areaboss_91B6
    dw #doormenu_areaboss_98CA
    dw #doormenu_areaboss_A2C4
    dw #doormenu_areaboss_98BE
    dw #doormenu_areaboss_A2AC
    dw #doormenu_areaboss_8A42  ; Crateria
    dw #doormenu_areaboss_8C52
    dw #doormenu_areaboss_8C22
    dw #doormenu_areaboss_8E9E
    dw #doormenu_areaboss_8AEA
    dw #doormenu_areaboss_93EA  ; Croc
    dw #doormenu_areaboss_A708  ; East Maridia
    dw #doormenu_areaboss_8AA2
    dw #doormenu_areaboss_91E6  ; G4
    dw #doormenu_areaboss_8BFE  ; Green Brinstar
    dw #doormenu_areaboss_8E86
    dw #doormenu_areaboss_8F0A
    dw #doormenu_areaboss_goto_page2
    dw #$0000
    %cm_header("SELECT DOOR")

LayoutAreaBossDoorMenu2:
    dw #doormenu_areaboss_913E  ; Kraid's Lair
    dw #doormenu_areaboss_96D2  ; Lower Norfair
    dw #doormenu_areaboss_9A4A
    dw #doormenu_areaboss_90C6  ; Red Brinstar
    dw #doormenu_areaboss_A384
    dw #doormenu_areaboss_A390
    dw #doormenu_areaboss_A330
    dw #doormenu_areaboss_8AF6
    dw #doormenu_areaboss_902A
    dw #doormenu_areaboss_922E  ; Upper Norfair
    dw #doormenu_areaboss_923A
    dw #doormenu_areaboss_93D2
    dw #doormenu_areaboss_967E
    dw #doormenu_areaboss_95FA
    dw #doormenu_areaboss_A510  ; West Maridia
    dw #doormenu_areaboss_A4C8
    dw #doormenu_areaboss_A39C
    dw #doormenu_areaboss_A480
    dw #doormenu_areaboss_8AAE  ; Wrecked Ship
    dw #doormenu_areaboss_89CA
    dw #doormenu_areaboss_goto_page1
    dw #$0000
    %cm_header("SELECT DOOR")

doormenu_areaboss_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #LayoutAreaBossDoorMenu)

doormenu_areaboss_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #LayoutAreaBossDoorMenu2)

doormenu_areaboss_A96C:
    %cm_jsl("BOSS Draygon", #doormenu_select, #$0000)

doormenu_areaboss_A840:
    %cm_jsl("BOSS East Maridia", #doormenu_select, #$0001)

doormenu_areaboss_91CE:
    %cm_jsl("BOSS Kraid", #doormenu_select, #$0002)

doormenu_areaboss_91B6:
    %cm_jsl("BOSS Kraid Lair", #doormenu_select, #$0003)

doormenu_areaboss_98CA:
    %cm_jsl("BOSS Lower Norfair", #doormenu_select, #$0004)

doormenu_areaboss_A2C4:
    %cm_jsl("BOSS Phantoon", #doormenu_select, #$0005)

doormenu_areaboss_98BE:
    %cm_jsl("BOSS Ridley", #doormenu_select, #$0006)

doormenu_areaboss_A2AC:
    %cm_jsl("BOSS Wrecked Ship", #doormenu_select, #$0007)

doormenu_areaboss_8A42:
    %cm_jsl("CRAT Crateria Kihunters", #doormenu_select, #$0008)

doormenu_areaboss_8C52:
    %cm_jsl("CRAT Green Pirates Shaft", #doormenu_select, #$0009)

doormenu_areaboss_8C22:
    %cm_jsl("CRAT Lower Mushrooms", #doormenu_select, #$000A)

doormenu_areaboss_8E9E:
    %cm_jsl("CRAT Meme Route", #doormenu_select, #$000B)

doormenu_areaboss_8AEA:
    %cm_jsl("CRAT Moat", #doormenu_select, #$000C)

doormenu_areaboss_93EA:
    %cm_jsl("CROC Crocomire", #doormenu_select, #$000D)

doormenu_areaboss_A708:
    %cm_jsl("EM Aqueduct", #doormenu_select, #$000E)

doormenu_areaboss_8AA2:
    %cm_jsl("EM Forgotten Highway", #doormenu_select, #$000F)

doormenu_areaboss_91E6:
    %cm_jsl("G4 Statues Hallway", #doormenu_select, #$0010)

doormenu_areaboss_8BFE:
    %cm_jsl("GB Green Brin Elevator", #doormenu_select, #$0011)

doormenu_areaboss_8E86:
    %cm_jsl("GB Green Hill Zone", #doormenu_select, #$0012)

doormenu_areaboss_8F0A:
    %cm_jsl("GB Noob Bridge", #doormenu_select, #$0013)

doormenu_areaboss_913E:
    %cm_jsl("KL Warehouse", #doormenu_select, #$0014)

doormenu_areaboss_96D2:
    %cm_jsl("LN Lava Dive", #doormenu_select, #$0015)

doormenu_areaboss_9A4A:
    %cm_jsl("LN Three Musketeers", #doormenu_select, #$0016)

doormenu_areaboss_90C6:
    %cm_jsl("RB Caterpillars", #doormenu_select, #$0017)

doormenu_areaboss_A384:
    %cm_jsl("RB East Tunnel (Lower)", #doormenu_select, #$0018)

doormenu_areaboss_A390:
    %cm_jsl("RB East Tunnel (Upper)", #doormenu_select, #$0019)

doormenu_areaboss_A330:
    %cm_jsl("RB Glass Tunnel", #doormenu_select, #$001A)

doormenu_areaboss_8AF6:
    %cm_jsl("RB Red Brin Elevator", #doormenu_select, #$001B)

doormenu_areaboss_902A:
    %cm_jsl("RB Red Tower", #doormenu_select, #$001C)

doormenu_areaboss_922E:
    %cm_jsl("UN Business Center (Left)", #doormenu_select, #$001D)

doormenu_areaboss_923A:
    %cm_jsl("UN Business Center (Right)", #doormenu_select, #$001E)

doormenu_areaboss_93D2:
    %cm_jsl("UN Crocomire Speedway", #doormenu_select, #$001F)

doormenu_areaboss_967E:
    %cm_jsl("UN Kronic Boost", #doormenu_select, #$0020)

doormenu_areaboss_95FA:
    %cm_jsl("UN Single Chamber", #doormenu_select, #$0021)

doormenu_areaboss_A510:
    %cm_jsl("WM Crab Hole", #doormenu_select, #$0022)

doormenu_areaboss_A4C8:
    %cm_jsl("WM Crab Shaft", #doormenu_select, #$0023)

doormenu_areaboss_A39C:
    %cm_jsl("WM Main Street", #doormenu_select, #$0024)

doormenu_areaboss_A480:
    %cm_jsl("WM Red Fish", #doormenu_select, #$0025)

doormenu_areaboss_8AAE:
    %cm_jsl("WS Crab Maze", #doormenu_select, #$0026)

doormenu_areaboss_89CA:
    %cm_jsl("WS West Ocean", #doormenu_select, #$0027)

layout_areaboss_sourcedoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_source
    dw #$0000
    dw #doormenu_areaboss_A96C  ; Bosses
    dw #doormenu_areaboss_A840
    dw #doormenu_areaboss_91CE
    dw #doormenu_areaboss_91B6
    dw #doormenu_areaboss_98CA
    dw #doormenu_areaboss_A2C4
    dw #doormenu_areaboss_98BE
    dw #doormenu_areaboss_A2AC
    dw #doormenu_areaboss_8A42  ; Crateria
    dw #doormenu_areaboss_8C52
    dw #doormenu_areaboss_8C22
    dw #doormenu_areaboss_8E9E
    dw #doormenu_areaboss_8AEA
    dw #doormenu_areaboss_93EA  ; Croc
    dw #doormenu_areaboss_A708  ; East Maridia
    dw #doormenu_areaboss_8AA2
    dw #doormenu_areaboss_91E6  ; G4
    dw #doormenu_areaboss_8BFE  ; Green Brinstar
    dw #doormenu_areaboss_8E86
    dw #doormenu_areaboss_8F0A
    dw #doormenu_areaboss_913E  ; Kraid's Lair
    dw #doormenu_areaboss_96D2  ; Lower Norfair
    dw #doormenu_areaboss_9A4A
    dw #doormenu_areaboss_90C6  ; Red Brinstar
    dw #doormenu_areaboss_A384
    dw #doormenu_areaboss_A390
    dw #doormenu_areaboss_A330
    dw #doormenu_areaboss_8AF6
    dw #doormenu_areaboss_902A
    dw #doormenu_areaboss_922E  ; Upper Norfair
    dw #doormenu_areaboss_923A
    dw #doormenu_areaboss_93D2
    dw #doormenu_areaboss_967E
    dw #doormenu_areaboss_95FA
    dw #doormenu_areaboss_A510  ; West Maridia
    dw #doormenu_areaboss_A4C8
    dw #doormenu_areaboss_A39C
    dw #doormenu_areaboss_A480
    dw #doormenu_areaboss_8AAE  ; Wrecked Ship
    dw #doormenu_areaboss_89CA
    dw #$0000

layout_areaboss_destinationdoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_destination
    dw #$0000
    dw #doormenu_areaboss_A96C  ; Bosses
    dw #doormenu_areaboss_A840
    dw #doormenu_areaboss_91CE
    dw #doormenu_areaboss_91B6
    dw #doormenu_areaboss_98CA
    dw #doormenu_areaboss_A2C4
    dw #doormenu_areaboss_98BE
    dw #doormenu_areaboss_A2AC
    dw #doormenu_areaboss_8A42  ; Crateria
    dw #doormenu_areaboss_8C52
    dw #doormenu_areaboss_8C22
    dw #doormenu_areaboss_8E9E
    dw #doormenu_areaboss_8AEA
    dw #doormenu_areaboss_93EA  ; Croc
    dw #doormenu_areaboss_A708  ; East Maridia
    dw #doormenu_areaboss_8AA2
    dw #doormenu_areaboss_91E6  ; G4
    dw #doormenu_areaboss_8BFE  ; Green Brinstar
    dw #doormenu_areaboss_8E86
    dw #doormenu_areaboss_8F0A
    dw #doormenu_areaboss_913E  ; Kraid's Lair
    dw #doormenu_areaboss_96D2  ; Lower Norfair
    dw #doormenu_areaboss_9A4A
    dw #doormenu_areaboss_90C6  ; Red Brinstar
    dw #doormenu_areaboss_A384
    dw #doormenu_areaboss_A390
    dw #doormenu_areaboss_A330
    dw #doormenu_areaboss_8AF6
    dw #doormenu_areaboss_902A
    dw #doormenu_areaboss_922E  ; Upper Norfair
    dw #doormenu_areaboss_923A
    dw #doormenu_areaboss_93D2
    dw #doormenu_areaboss_967E
    dw #doormenu_areaboss_95FA
    dw #doormenu_areaboss_A510  ; West Maridia
    dw #doormenu_areaboss_A4C8
    dw #doormenu_areaboss_A39C
    dw #doormenu_areaboss_A480
    dw #doormenu_areaboss_8AAE  ; Wrecked Ship
    dw #doormenu_areaboss_89CA
    dw #$0000


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
    dw #LayoutBlueBrinstarUpDoorMenu
    dw #LayoutBlueBrinstarDownDoorMenu

LayoutCeresDoorMenu:
    dw #LayoutCeresLeftDoorMenu
    dw #LayoutCeresRightDoorMenu
    dw #LayoutCeresUpDoorMenu
    dw #LayoutCeresDownDoorMenu

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
    dw #LayoutGreenMaridiaUpDoorMenu
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
    dw #LayoutPinkBrinstarUpDoorMenu
    dw #LayoutPinkBrinstarDownDoorMenu

LayoutPinkMaridiaDoorMenu:
    dw #LayoutPinkMaridiaLeftDoorMenu
    dw #LayoutPinkMaridiaRightDoorMenu
    dw #LayoutPinkMaridiaUpDoorMenu
    dw #LayoutPinkMaridiaDownDoorMenu

LayoutRedBrinstarDoorMenu:
    dw #LayoutRedBrinstarLeftDoorMenu
    dw #LayoutRedBrinstarRightDoorMenu
    dw #LayoutRedBrinstarUpDoorMenu
    dw #LayoutRedBrinstarDownDoorMenu

LayoutTourianDoorMenu:
    dw #LayoutTourianLeftDoorMenu
    dw #LayoutTourianRightDoorMenu
    dw #LayoutTourianUpDoorMenu
    dw #LayoutTourianDownDoorMenu

LayoutUpperNorfairDoorMenu:
    dw #LayoutUpperNorfairLeftDoorMenu
    dw #LayoutUpperNorfairRightDoorMenu
    dw #LayoutUpperNorfairUpDoorMenu
    dw #LayoutUpperNorfairDownDoorMenu

LayoutWestMaridiaDoorMenu:
    dw #LayoutWestMaridiaLeftDoorMenu
    dw #LayoutWestMaridiaRightDoorMenu
    dw #LayoutWestMaridiaUpDoorMenu
    dw #LayoutWestMaridiaDownDoorMenu

LayoutWreckedShipDoorMenu:
    dw #LayoutWreckedShipLeftDoorMenu
    dw #LayoutWreckedShipRightDoorMenu
    dw #LayoutWreckedShipUpDoorMenu
    dw #LayoutWreckedShipDownDoorMenu

LayoutYellowMaridiaDoorMenu:
    dw #LayoutYellowMaridiaLeftDoorMenu
    dw #LayoutYellowMaridiaRightDoorMenu
    dw #LayoutYellowMaridiaUpDoorMenu
    dw #LayoutYellowMaridiaDownDoorMenu


; -----------------
; Left Doors
; -----------------
LayoutBlueBrinstarLeftDoorMenu:
    dw #doormenu_left_8FA6
    dw #doormenu_left_8FFA
    dw #doormenu_left_8FE2
    dw #doormenu_left_8ECE
    dw #doormenu_left_8EAA
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_8FA6:
    %cm_jsl("BB Alpha Missiles", #doorsubmenu_select, #$0000)

doormenu_left_8FFA:
    %cm_jsl("BB Billy Mays", #doorsubmenu_select, #$0001)

doormenu_left_8FE2:
    %cm_jsl("BB Boulder", #doorsubmenu_select, #$0002)

doormenu_left_8ECE:
    %cm_jsl("BB Construction Zone", #doorsubmenu_select, #$0003)

doormenu_left_8EAA:
    %cm_jsl("BB Morph Ball", #doorsubmenu_select, #$0004)

LayoutCeresLeftDoorMenu:
    dw #doormenu_left_ABAC
    dw #doormenu_left_AB4C
    dw #doormenu_left_AB94
    dw #doormenu_left_AB64
    dw #doormenu_left_AB7C
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_ABAC:
    %cm_jsl("CE 58 Escape", #doorsubmenu_select, #$0005)

doormenu_left_AB4C:
    %cm_jsl("CE Ceres Elevator", #doorsubmenu_select, #$0006)

doormenu_left_AB94:
    %cm_jsl("CE Dead Scientist", #doorsubmenu_select, #$0007)

doormenu_left_AB64:
    %cm_jsl("CE Falling Tile", #doorsubmenu_select, #$0008)

doormenu_left_AB7C:
    %cm_jsl("CE Magnet Stairs", #doorsubmenu_select, #$0009)

LayoutCrocLairLeftDoorMenu:
    dw #doormenu_left_9516
    dw #doormenu_left_9522
    dw #doormenu_left_950A
    dw #doormenu_left_94F2
    dw #doormenu_left_94C2
    dw #doormenu_left_9456
    dw #doormenu_left_9432
    dw #doormenu_left_946E
    dw #doormenu_left_9492
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_9516:
    %cm_jsl("CL Grapple Beam (Lower)", #doorsubmenu_select, #$000A)

doormenu_left_9522:
    %cm_jsl("CL Grapple Beam (Upper)", #doorsubmenu_select, #$000B)

doormenu_left_950A:
    %cm_jsl("CL Grapple Tutorial 1", #doorsubmenu_select, #$000C)

doormenu_left_94F2:
    %cm_jsl("CL Grapple Tutorial 2", #doorsubmenu_select, #$000D)

doormenu_left_94C2:
    %cm_jsl("CL Grapple Tutorial 3", #doorsubmenu_select, #$000E)

doormenu_left_9456:
    %cm_jsl("CL Post Croc Farm (Lower)", #doorsubmenu_select, #$000F)

doormenu_left_9432:
    %cm_jsl("CL Post Croc Farm (Upper)", #doorsubmenu_select, #$0010)

doormenu_left_946E:
    %cm_jsl("CL Post Croc Power Bombs", #doorsubmenu_select, #$0011)

doormenu_left_9492:
    %cm_jsl("CL Post Croc Shaft", #doorsubmenu_select, #$0012)

LayoutCrateriaLeftDoorMenu:
    dw #doormenu_left_8C8E
    dw #doormenu_left_8C9A
    dw #doormenu_left_8A1E
    dw #doormenu_left_8B62
    dw #doormenu_left_8B56
    dw #doormenu_left_8B4A
    dw #doormenu_left_8A36
    dw #doormenu_left_89BE
    dw #doormenu_left_8AD2
    dw #doormenu_left_8A72
    dw #doormenu_left_8BC2
    dw #doormenu_left_8AA2
    dw #doormenu_left_8B0E
    dw #doormenu_left_8946
    dw #doormenu_left_8BFE
    dw #doormenu_left_8C52
    dw #doormenu_left_8C3A
    dw #doormenu_left_8C5E
    dw #doormenu_crateria_left_goto_page2
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

LayoutCrateriaLeftDoorMenu2:
    dw #doormenu_left_8922
    dw #doormenu_left_893A
    dw #doormenu_left_8C16
    dw #doormenu_left_8AEA
    dw #doormenu_left_8982
    dw #doormenu_left_8976
    dw #doormenu_left_896A
    dw #doormenu_left_8B86
    dw #doormenu_left_8BDA
    dw #doormenu_left_91F2
    dw #doormenu_left_8BF2
    dw #doormenu_left_89E2
    dw #doormenu_left_8B32
    dw #doormenu_left_89D6
    dw #doormenu_left_8A06
    dw #doormenu_left_89FA
    dw #doormenu_left_89EE
    dw #doormenu_crateria_left_goto_page1
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_crateria_left_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #LayoutCrateriaLeftDoorMenu)

doormenu_crateria_left_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #LayoutCrateriaLeftDoorMenu2)

doormenu_left_8C8E:
    %cm_jsl("CR 230 Bombway", #doorsubmenu_select, #$0013)

doormenu_left_8C9A:
    %cm_jsl("CR 230 Missiles", #doorsubmenu_select, #$0014)

doormenu_left_8A1E:
    %cm_jsl("CR Bowling Alley Path", #doorsubmenu_select, #$0015)

doormenu_left_8B62:
    %cm_jsl("CR Climb (Lower)", #doorsubmenu_select, #$0016)

doormenu_left_8B56:
    %cm_jsl("CR Climb (Middle)", #doorsubmenu_select, #$0017)

doormenu_left_8B4A:
    %cm_jsl("CR Climb (Upper)", #doorsubmenu_select, #$0018)

doormenu_left_8A36:
    %cm_jsl("CR Crateria Kihunters", #doorsubmenu_select, #$0019)

doormenu_left_89BE:
    %cm_jsl("CR Crateria Save", #doorsubmenu_select, #$001A)

doormenu_left_8AD2:
    %cm_jsl("CR Crateria Tube", #doorsubmenu_select, #$001B)

doormenu_left_8A72:
    %cm_jsl("CR East Ocean", #doorsubmenu_select, #$001C)

doormenu_left_8BC2:
    %cm_jsl("CR Flyway", #doorsubmenu_select, #$001D)

doormenu_left_8AA2:
    %cm_jsl("CR Forgotten Highway Elbow", #doorsubmenu_select, #$001E)

doormenu_left_8B0E:
    %cm_jsl("CR Gauntlet Energy Tank", #doorsubmenu_select, #$001F)

doormenu_left_8946:
    %cm_jsl("CR Gauntlet Entrance", #doorsubmenu_select, #$0020)

doormenu_left_8BFE:
    %cm_jsl("CR Green Brin Elevator", #doorsubmenu_select, #$0021)

doormenu_left_8C52:
    %cm_jsl("CR Green Pirates (Lower)", #doorsubmenu_select, #$0022)

doormenu_left_8C3A:
    %cm_jsl("CR Green Pirates (Middle)", #doorsubmenu_select, #$0023)

doormenu_left_8C5E:
    %cm_jsl("CR Green Pirates (Upper)", #doorsubmenu_select, #$0024)

doormenu_left_8922:
    %cm_jsl("CR Landing Site (Lower)", #doorsubmenu_select, #$0025)

doormenu_left_893A:
    %cm_jsl("CR Landing Site (Upper)", #doorsubmenu_select, #$0026)

doormenu_left_8C16:
    %cm_jsl("CR Lower Mushrooms", #doorsubmenu_select, #$0027)

doormenu_left_8AEA:
    %cm_jsl("CR Moat", #doorsubmenu_select, #$0028)

doormenu_left_8982:
    %cm_jsl("CR Parlor (To Bombs)", #doorsubmenu_select, #$0029)

doormenu_left_8976:
    %cm_jsl("CR Parlor (To Map)", #doorsubmenu_select, #$002A)

doormenu_left_896A:
    %cm_jsl("CR Parlor (To Ship)", #doorsubmenu_select, #$002B)

doormenu_left_8B86:
    %cm_jsl("CR Pit", #doorsubmenu_select, #$002C)

doormenu_left_8BDA:
    %cm_jsl("CR Pre-Map Flyway", #doorsubmenu_select, #$002D)

doormenu_left_91F2:
    %cm_jsl("CR Statues Hallway", #doorsubmenu_select, #$002E)

doormenu_left_8BF2:
    %cm_jsl("CR Terminator", #doorsubmenu_select, #$002F)

doormenu_left_89E2:
    %cm_jsl("CR West Ocean (Cave)", #doorsubmenu_select, #$0030)

doormenu_left_8B32:
    %cm_jsl("CR West Ocean (Geemer)", #doorsubmenu_select, #$0031)

doormenu_left_89D6:
    %cm_jsl("CR West Ocean (Lower)", #doorsubmenu_select, #$0032)

doormenu_left_8A06:
    %cm_jsl("CR West Ocean (Mid-Lower)", #doorsubmenu_select, #$0033)

doormenu_left_89FA:
    %cm_jsl("CR West Ocean (Mid-Upper)", #doorsubmenu_select, #$0034)

doormenu_left_89EE:
    %cm_jsl("CR West Ocean (Upper)", #doorsubmenu_select, #$0035)

LayoutGreenBrinstarLeftDoorMenu:
    dw #doormenu_left_8F16
    dw #doormenu_left_8D8A
    dw #doormenu_left_8D72
    dw #doormenu_left_8D96
    dw #doormenu_left_8D42
    dw #doormenu_left_8D5A
    dw #doormenu_left_8F46
    dw #doormenu_left_8F2E
    dw #doormenu_left_9012
    dw #doormenu_left_8F5E
    dw #doormenu_left_8E92
    dw #doormenu_left_8E86
    dw #doormenu_left_8CE2
    dw #doormenu_left_8CEE
    dw #doormenu_left_8CD6
    dw #doormenu_left_9006
    dw #doormenu_left_8F0A
    dw #doormenu_left_8E4A
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_8F16:
    %cm_jsl("GB Brinstar Beetoms", #doorsubmenu_select, #$0036)

doormenu_left_8D8A:
    %cm_jsl("GB Brinstar Firefleas", #doorsubmenu_select, #$0037)

doormenu_left_8D72:
    %cm_jsl("GB Brinstar Map", #doorsubmenu_select, #$0038)

doormenu_left_8D96:
    %cm_jsl("GB Brinstar Missile Refill", #doorsubmenu_select, #$0039)

doormenu_left_8D42:
    %cm_jsl("GB Brinstar Pre-Map", #doorsubmenu_select, #$003A)

doormenu_left_8D5A:
    %cm_jsl("GB Early Supers", #doorsubmenu_select, #$003B)

doormenu_left_8F46:
    %cm_jsl("GB Etecoons E-Tank (Lower)", #doorsubmenu_select, #$003C)

doormenu_left_8F2E:
    %cm_jsl("GB Etecoons E-Tank (Upper)", #doorsubmenu_select, #$003D)

doormenu_left_9012:
    %cm_jsl("GB Etecoons Save", #doorsubmenu_select, #$003E)

doormenu_left_8F5E:
    %cm_jsl("GB Etecoons Supers", #doorsubmenu_select, #$003F)

doormenu_left_8E92:
    %cm_jsl("GB Green Hill Zone (Lower)", #doorsubmenu_select, #$0040)

doormenu_left_8E86:
    %cm_jsl("GB Green Hill Zone (Upper)", #doorsubmenu_select, #$0041)

doormenu_left_8CE2:
    %cm_jsl("GB Main Shaft (Middle)", #doorsubmenu_select, #$0042)

doormenu_left_8CEE:
    %cm_jsl("GB Main Shaft (Self)", #doorsubmenu_select, #$0043)

doormenu_left_8CD6:
    %cm_jsl("GB Main Shaft (Upper)", #doorsubmenu_select, #$0044)

doormenu_left_9006:
    %cm_jsl("GB Main Shaft Save", #doorsubmenu_select, #$0045)

doormenu_left_8F0A:
    %cm_jsl("GB Noob Bridge", #doorsubmenu_select, #$0046)

doormenu_left_8E4A:
    %cm_jsl("GB Spore Spawn", #doorsubmenu_select, #$0047)

LayoutGreenMaridiaLeftDoorMenu:
    dw #doormenu_left_A690
    dw #doormenu_left_A66C
    dw #doormenu_left_A798
    dw #doormenu_left_A7BC
    dw #doormenu_left_A78C
    dw #doormenu_left_A8D0
    dw #doormenu_left_A648
    dw #doormenu_left_A534
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_A690:
    %cm_jsl("GM East Sand Hall", #doorsubmenu_select, #$0048)

doormenu_left_A66C:
    %cm_jsl("GM Oasis", #doorsubmenu_select, #$0049)

doormenu_left_A798:
    %cm_jsl("GM Pants", #doorsubmenu_select, #$004A)

doormenu_left_A7BC:
    %cm_jsl("GM Pants (East)", #doorsubmenu_select, #$004B)

doormenu_left_A78C:
    %cm_jsl("GM Pants (Self)", #doorsubmenu_select, #$004C)

doormenu_left_A8D0:
    %cm_jsl("GM Shaktool", #doorsubmenu_select, #$004D)

doormenu_left_A648:
    %cm_jsl("GM West Sand Hall", #doorsubmenu_select, #$004E)

doormenu_left_A534:
    %cm_jsl("GM West Sand Hall Tunnel", #doorsubmenu_select, #$004F)

LayoutKraidLairLeftDoorMenu:
    dw #doormenu_left_919E
    dw #doormenu_left_917A
    dw #doormenu_left_9186
    dw #doormenu_left_91DA
    dw #doormenu_left_91B6
    dw #doormenu_left_91C2
    dw #doormenu_left_9162
    dw #doormenu_left_923A
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_919E:
    %cm_jsl("KL Baby Kraid", #doorsubmenu_select, #$0050)

doormenu_left_917A:
    %cm_jsl("KL Kihunters (Lower)", #doorsubmenu_select, #$0051)

doormenu_left_9186:
    %cm_jsl("KL Kihunters (Upper)", #doorsubmenu_select, #$0052)

doormenu_left_91DA:
    %cm_jsl("KL Kraid", #doorsubmenu_select, #$0053)

doormenu_left_91B6:
    %cm_jsl("KL Kraid Eye Door (Lower)", #doorsubmenu_select, #$0054)

doormenu_left_91C2:
    %cm_jsl("KL Kraid Eye Door (Upper)", #doorsubmenu_select, #$0055)

doormenu_left_9162:
    %cm_jsl("KL Warehouse Energy Tank", #doorsubmenu_select, #$0056)

doormenu_left_923A:
    %cm_jsl("KL Warehouse Entrance", #doorsubmenu_select, #$0057)

LayoutLowerNorfairLeftDoorMenu:
    dw #doormenu_left_983A
    dw #doormenu_left_9846
    dw #doormenu_left_99A2
    dw #doormenu_left_989A
    dw #doormenu_left_9A9E
    dw #doormenu_left_9882
    dw #doormenu_left_9A0E
    dw #doormenu_left_9A02
    dw #doormenu_left_985E
    dw #doormenu_left_9A3E
    dw #doormenu_left_9936
    dw #doormenu_lower_norfair_left_goto_page2
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

LayoutLowerNorfairLeftDoorMenu2:
    dw #doormenu_left_994E
    dw #doormenu_left_9912
    dw #doormenu_left_98EE
    dw #doormenu_left_9966
    dw #doormenu_left_98BE
    dw #doormenu_left_98D6
    dw #doormenu_left_9A62
    dw #doormenu_left_9A7A
    dw #doormenu_left_9A6E
    dw #doormenu_left_99BA
    dw #doormenu_left_9A56
    dw #doormenu_left_997E
    dw #doormenu_lower_norfair_left_goto_page1
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_lower_norfair_left_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #LayoutLowerNorfairLeftDoorMenu)

doormenu_lower_norfair_left_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #LayoutLowerNorfairLeftDoorMenu2)

doormenu_left_983A:
    %cm_jsl("LN Acid Statue (Lower)", #doorsubmenu_select, #$0058)

doormenu_left_9846:
    %cm_jsl("LN Acid Statue (Upper)", #doorsubmenu_select, #$0059)

doormenu_left_99A2:
    %cm_jsl("LN Amphitheatre", #doorsubmenu_select, #$005A)

doormenu_left_989A:
    %cm_jsl("LN Fast Rippers", #doorsubmenu_select, #$005B)

doormenu_left_9A9E:
    %cm_jsl("LN Firefleas", #doorsubmenu_select, #$005C)

doormenu_left_9882:
    %cm_jsl("LN Golden Torizo", #doorsubmenu_select, #$005D)

doormenu_left_9A0E:
    %cm_jsl("LN Kihunter Shaft (Lower)", #doorsubmenu_select, #$005E)

doormenu_left_9A02:
    %cm_jsl("LN Kihunter Shaft (Upper)", #doorsubmenu_select, #$005F)

doormenu_left_985E:
    %cm_jsl("LN Main Hall", #doorsubmenu_select, #$0060)

doormenu_left_9A3E:
    %cm_jsl("LN Metal Pirates", #doorsubmenu_select, #$0061)

doormenu_left_9936:
    %cm_jsl("LN Mickey Mouse", #doorsubmenu_select, #$0062)

doormenu_left_994E:
    %cm_jsl("LN Pillars", #doorsubmenu_select, #$0063)

doormenu_left_9912:
    %cm_jsl("LN Pillars Setup (Lower)", #doorsubmenu_select, #$0064)

doormenu_left_98EE:
    %cm_jsl("LN Pillars Setup (Upper)", #doorsubmenu_select, #$0065)

doormenu_left_9966:
    %cm_jsl("LN Plowerhouse", #doorsubmenu_select, #$0066)

doormenu_left_98BE:
    %cm_jsl("LN Ridley", #doorsubmenu_select, #$0067)

doormenu_left_98D6:
    %cm_jsl("LN Ridley Farming", #doorsubmenu_select, #$0068)

doormenu_left_9A62:
    %cm_jsl("LN Ridley Tank", #doorsubmenu_select, #$0069)

doormenu_left_9A7A:
    %cm_jsl("LN Screw Attack (Lower)", #doorsubmenu_select, #$006A)

doormenu_left_9A6E:
    %cm_jsl("LN Screw Attack (Upper)", #doorsubmenu_select, #$006B)

doormenu_left_99BA:
    %cm_jsl("LN Spring Ball Maze", #doorsubmenu_select, #$006C)

doormenu_left_9A56:
    %cm_jsl("LN Three Musketeers", #doorsubmenu_select, #$006D)

doormenu_left_997E:
    %cm_jsl("LN Worst Room", #doorsubmenu_select, #$006E)

LayoutPinkBrinstarLeftDoorMenu:
    dw #doormenu_left_8DEA
    dw #doormenu_left_8E26
    dw #doormenu_left_8E1A
    dw #doormenu_left_8DC6
    dw #doormenu_left_8FD6
    dw #doormenu_left_8DAE
    dw #doormenu_left_8F6A
    dw #doormenu_left_8FBE
    dw #doormenu_left_8E6E
    dw #doormenu_left_8E62
    dw #doormenu_left_8F76
    dw #doormenu_left_8F8E
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_8DEA:
    %cm_jsl("PB Big Pink (Lower)", #doorsubmenu_select, #$006F)

doormenu_left_8E26:
    %cm_jsl("PB Big Pink (Mid-Lower)", #doorsubmenu_select, #$0070)

doormenu_left_8E1A:
    %cm_jsl("PB Big Pink (Mid-Upper)", #doorsubmenu_select, #$0071)

doormenu_left_8DC6:
    %cm_jsl("PB Big Pink (Upper)", #doorsubmenu_select, #$0072)

doormenu_left_8FD6:
    %cm_jsl("PB Big Pink Save", #doorsubmenu_select, #$0073)

doormenu_left_8DAE:
    %cm_jsl("PB Dachora", #doorsubmenu_select, #$0074)

doormenu_left_8F6A:
    %cm_jsl("PB Dachora Recharge", #doorsubmenu_select, #$0075)

doormenu_left_8FBE:
    %cm_jsl("PB Hoppers", #doorsubmenu_select, #$0076)

doormenu_left_8E6E:
    %cm_jsl("PB Power Bombs (Lower)", #doorsubmenu_select, #$0077)

doormenu_left_8E62:
    %cm_jsl("PB Power Bombs (Upper)", #doorsubmenu_select, #$0078)

doormenu_left_8F76:
    %cm_jsl("PB Spore Spawn Farming", #doorsubmenu_select, #$0079)

doormenu_left_8F8E:
    %cm_jsl("PB Waterway Energy Tank", #doorsubmenu_select, #$007A)

LayoutPinkMaridiaLeftDoorMenu:
    dw #doormenu_left_A738
    dw #doormenu_left_A828
    dw #doormenu_left_A69C
    dw #doormenu_left_A918
    dw #doormenu_left_A774
    dw #doormenu_left_A870
    dw #doormenu_left_A7F8
    dw #doormenu_left_A7EC
    dw #doormenu_left_A4C8
    dw #doormenu_left_A96C
    dw #doormenu_left_A87C
    dw #doormenu_left_A960
    dw #doormenu_left_A8F4
    dw #doormenu_left_A8E8
    dw #doormenu_left_A924
    dw #doormenu_left_A948
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_A738:
    %cm_jsl("PM Aqueduct", #doorsubmenu_select, #$007B)

doormenu_left_A828:
    %cm_jsl("PM Aqueduct Save", #doorsubmenu_select, #$007C)

doormenu_left_A69C:
    %cm_jsl("PM Below Botwoon (Area)", #doorsubmenu_select, #$007D)

doormenu_left_A918:
    %cm_jsl("PM Botwoon", #doorsubmenu_select, #$007E)

doormenu_left_A774:
    %cm_jsl("PM Botwoon Hallway", #doorsubmenu_select, #$007F)

doormenu_left_A870:
    %cm_jsl("PM Botwoon Tank", #doorsubmenu_select, #$0080)

doormenu_left_A7F8:
    %cm_jsl("PM Colosseum (Lower)", #doorsubmenu_select, #$0081)

doormenu_left_A7EC:
    %cm_jsl("PM Colosseum (Upper)", #doorsubmenu_select, #$0082)

doormenu_left_A4C8:
    %cm_jsl("PM Crab Shaft", #doorsubmenu_select, #$0083)

doormenu_left_A96C:
    %cm_jsl("PM Draygon", #doorsubmenu_select, #$0084)

doormenu_left_A87C:
    %cm_jsl("PM Draygon Save", #doorsubmenu_select, #$0085)

doormenu_left_A960:
    %cm_jsl("PM East Cactus Alley", #doorsubmenu_select, #$0086)

doormenu_left_A8F4:
    %cm_jsl("PM Halfie Climb (Lower)", #doorsubmenu_select, #$0087)

doormenu_left_A8E8:
    %cm_jsl("PM Halfie Climb (Upper)", #doorsubmenu_select, #$0088)

doormenu_left_A924:
    %cm_jsl("PM Space Jump", #doorsubmenu_select, #$0089)

doormenu_left_A948:
    %cm_jsl("PM West Cactus Alley", #doorsubmenu_select, #$008A)

LayoutRedBrinstarLeftDoorMenu:
    dw #doormenu_left_90EA
    dw #doormenu_left_911A
    dw #doormenu_left_9126
    dw #doormenu_left_90DE
    dw #doormenu_left_90D2
    dw #doormenu_left_90C6
    dw #doormenu_left_908A
    dw #doormenu_left_9066
    dw #doormenu_left_9042
    dw #doormenu_left_901E
    dw #doormenu_left_9102
    dw #doormenu_left_91FE
    dw #doormenu_left_9072
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_90EA:
    %cm_jsl("RB Alpha Power Bombs", #doorsubmenu_select, #$008B)

doormenu_left_911A:
    %cm_jsl("RB Below Spazer (Lower)", #doorsubmenu_select, #$008C)

doormenu_left_9126:
    %cm_jsl("RB Below Spazer (Upper)", #doorsubmenu_select, #$008D)

doormenu_left_90DE:
    %cm_jsl("RB Beta Power Bombs", #doorsubmenu_select, #$008E)

doormenu_left_90D2:
    %cm_jsl("RB Caterpillars (Lower)", #doorsubmenu_select, #$008F)

doormenu_left_90C6:
    %cm_jsl("RB Caterpillars (Upper)", #doorsubmenu_select, #$0090)

doormenu_left_908A:
    %cm_jsl("RB Hellway", #doorsubmenu_select, #$0091)

doormenu_left_9066:
    %cm_jsl("RB Red Brinstar Firefleas", #doorsubmenu_select, #$0092)

doormenu_left_9042:
    %cm_jsl("RB Red Tower (Lower)", #doorsubmenu_select, #$0093)

doormenu_left_901E:
    %cm_jsl("RB Red Tower (Upper)", #doorsubmenu_select, #$0094)

doormenu_left_9102:
    %cm_jsl("RB Skree Boost", #doorsubmenu_select, #$0095)

doormenu_left_91FE:
    %cm_jsl("RB Sloaters Refill", #doorsubmenu_select, #$0096)

doormenu_left_9072:
    %cm_jsl("RB X-Ray Scope", #doorsubmenu_select, #$0097)

LayoutTourianLeftDoorMenu:
    dw #doormenu_left_AA38
    dw #doormenu_left_AA20
    dw #doormenu_left_AAD4
    dw #doormenu_left_A9A8
    dw #doormenu_left_A9CC
    dw #doormenu_left_A9C0
    dw #doormenu_left_A9E4
    dw #doormenu_left_AA80
    dw #doormenu_left_AA5C
    dw #doormenu_left_AA50
    dw #doormenu_left_AAE0
    dw #doormenu_left_AB04
    dw #doormenu_left_AB1C
    dw #doormenu_left_AB34
    dw #doormenu_left_AAA4
    dw #doormenu_left_A99C
    dw #doormenu_left_AA74
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_AA38:
    %cm_jsl("TR Big Boy", #doorsubmenu_select, #$0098)

doormenu_left_AA20:
    %cm_jsl("TR Dust Torizo", #doorsubmenu_select, #$0099)

doormenu_left_AAD4:
    %cm_jsl("TR Lower Tourian Save", #doorsubmenu_select, #$009A)

doormenu_left_A9A8:
    %cm_jsl("TR Metroids 1", #doorsubmenu_select, #$009B)

doormenu_left_A9CC:
    %cm_jsl("TR Metroids 2 (Lower)", #doorsubmenu_select, #$009C)

doormenu_left_A9C0:
    %cm_jsl("TR Metroids 2 (Upper)", #doorsubmenu_select, #$009D)

doormenu_left_A9E4:
    %cm_jsl("TR Metroids 3", #doorsubmenu_select, #$009E)

doormenu_left_AA80:
    %cm_jsl("TR Mother Brain", #doorsubmenu_select, #$009F)

doormenu_left_AA5C:
    %cm_jsl("TR Seaweed (Lower)", #doorsubmenu_select, #$00A0)

doormenu_left_AA50:
    %cm_jsl("TR Seaweed (Upper)", #doorsubmenu_select, #$00A1)

doormenu_left_AAE0:
    %cm_jsl("TR Tourian Escape 1", #doorsubmenu_select, #$00A2)

doormenu_left_AB04:
    %cm_jsl("TR Tourian Escape 2", #doorsubmenu_select, #$00A3)

doormenu_left_AB1C:
    %cm_jsl("TR Tourian Escape 3", #doorsubmenu_select, #$00A4)

doormenu_left_AB34:
    %cm_jsl("TR Tourian Escape 4", #doorsubmenu_select, #$00A5)

doormenu_left_AAA4:
    %cm_jsl("TR Tourian Eye Door", #doorsubmenu_select, #$00A6)

doormenu_left_A99C:
    %cm_jsl("TR Tourian First", #doorsubmenu_select, #$00A7)

doormenu_left_AA74:
    %cm_jsl("TR Tourian Recharge", #doorsubmenu_select, #$00A8)

LayoutUpperNorfairLeftDoorMenu:
    dw #doormenu_left_9756
    dw #doormenu_left_97B6
    dw #doormenu_left_9582
    dw #doormenu_left_958E
    dw #doormenu_left_97CE
    dw #doormenu_left_92E2
    dw #doormenu_left_92FA
    dw #doormenu_left_92CA
    dw #doormenu_left_929A
    dw #doormenu_left_92B2
    dw #doormenu_left_940E
    dw #doormenu_left_93C6
    dw #doormenu_left_93BA
    dw #doormenu_left_9396
    dw #doormenu_left_938A
    dw #doormenu_left_961E
    dw #doormenu_upper_norfair_left_goto_page2
    dw #doormenu_upper_norfair_left_goto_page3
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

LayoutUpperNorfairLeftDoorMenu2:
    dw #doormenu_left_971A
    dw #doormenu_left_980A
    dw #doormenu_left_97E6
    dw #doormenu_left_953A
    dw #doormenu_left_93F6
    dw #doormenu_left_941A
    dw #doormenu_left_9276
    dw #doormenu_left_932A
    dw #doormenu_left_9366
    dw #doormenu_left_937E
    dw #doormenu_left_9372
    dw #doormenu_left_934E
    dw #doormenu_left_9672
    dw #doormenu_left_96D2
    dw #doormenu_left_982E
    dw #doormenu_left_96EA
    dw #doormenu_upper_norfair_left_goto_page1
    dw #doormenu_upper_norfair_left_goto_page3
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

LayoutUpperNorfairLeftDoorMenu3:
    dw #doormenu_left_96A2
    dw #doormenu_left_97C2
    dw #doormenu_left_952E
    dw #doormenu_left_9792
    dw #doormenu_left_973E
    dw #doormenu_left_96BA
    dw #doormenu_left_96C6
    dw #doormenu_left_97F2
    dw #doormenu_left_95FA
    dw #doormenu_left_95EE
    dw #doormenu_left_95E2
    dw #doormenu_left_95D6
    dw #doormenu_left_95B2
    dw #doormenu_left_977A
    dw #doormenu_left_9642
    dw #doormenu_upper_norfair_left_goto_page1
    dw #doormenu_upper_norfair_left_goto_page2
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_upper_norfair_left_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #LayoutUpperNorfairLeftDoorMenu)

doormenu_upper_norfair_left_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #LayoutUpperNorfairLeftDoorMenu2)

doormenu_upper_norfair_left_goto_page3:
    %cm_adjacent_submenu("GOTO PAGE THREE", #LayoutUpperNorfairLeftDoorMenu3)

doormenu_left_9756:
    %cm_jsl("UN Acid Snakes Tunnel", #doorsubmenu_select, #$00A9)

doormenu_left_97B6:
    %cm_jsl("UN Bat Cave", #doorsubmenu_select, #$00AA)

doormenu_left_9582:
    %cm_jsl("UN Bubble Mtn (Lower)", #doorsubmenu_select, #$00AB)

doormenu_left_958E:
    %cm_jsl("UN Bubble Mtn (Upper)", #doorsubmenu_select, #$00AC)

doormenu_left_97CE:
    %cm_jsl("UN Bubble Mtn Save", #doorsubmenu_select, #$00AD)

doormenu_left_92E2:
    %cm_jsl("UN Business Center (Lower)", #doorsubmenu_select, #$00AE)

doormenu_left_92FA:
    %cm_jsl("UN Business Center (Mid)", #doorsubmenu_select, #$00AF)

doormenu_left_92CA:
    %cm_jsl("UN Business Center (Upper)", #doorsubmenu_select, #$00B0)

doormenu_left_929A:
    %cm_jsl("UN Cathedral", #doorsubmenu_select, #$00B1)

doormenu_left_92B2:
    %cm_jsl("UN Cathedral Entrance", #doorsubmenu_select, #$00B2)

doormenu_left_940E:
    %cm_jsl("UN Crocomire Escape", #doorsubmenu_select, #$00B3)

doormenu_left_93C6:
    %cm_jsl("UN Croc Speedway (Lower)", #doorsubmenu_select, #$00B4)

doormenu_left_93BA:
    %cm_jsl("UN Croc Speedway (Upper)", #doorsubmenu_select, #$00B5)

doormenu_left_9396:
    %cm_jsl("UN Crumble Shaft (Lower)", #doorsubmenu_select, #$00B6)

doormenu_left_938A:
    %cm_jsl("UN Crumble Shaft (Upper)", #doorsubmenu_select, #$00B7)

doormenu_left_961E:
    %cm_jsl("UN Double Chamber", #doorsubmenu_select, #$00B8)

doormenu_left_971A:
    %cm_jsl("UN Farming", #doorsubmenu_select, #$00B9)

doormenu_left_980A:
    %cm_jsl("UN Frog Savestation", #doorsubmenu_select, #$00BA)

doormenu_left_97E6:
    %cm_jsl("UN Frog Speedway", #doorsubmenu_select, #$00BB)

doormenu_left_953A:
    %cm_jsl("UN Green Bubbles Missiles", #doorsubmenu_select, #$00BC)

doormenu_left_93F6:
    %cm_jsl("UN Hi Jump Boots", #doorsubmenu_select, #$00BD)

doormenu_left_941A:
    %cm_jsl("UN Hi Jump Energy Tank", #doorsubmenu_select, #$00BE)

doormenu_left_9276:
    %cm_jsl("UN Ice Beam Acid", #doorsubmenu_select, #$00BF)

doormenu_left_932A:
    %cm_jsl("UN Ice Beam Gate", #doorsubmenu_select, #$00C0)

doormenu_left_9366:
    %cm_jsl("UN Ice Beam Snake (Lower)", #doorsubmenu_select, #$00C1)

doormenu_left_937E:
    %cm_jsl("UN Ice Beam Snake (Middle)", #doorsubmenu_select, #$00C2)

doormenu_left_9372:
    %cm_jsl("UN Ice Beam Snake (Upper)", #doorsubmenu_select, #$00C3)

doormenu_left_934E:
    %cm_jsl("UN Ice Beam Tutorial", #doorsubmenu_select, #$00C4)

doormenu_left_9672:
    %cm_jsl("UN Kronic Boost", #doorsubmenu_select, #$00C5)

doormenu_left_96D2:
    %cm_jsl("UN Lava Dive", #doorsubmenu_select, #$00C6)

doormenu_left_982E:
    %cm_jsl("UN Lower Elevator Save", #doorsubmenu_select, #$00C7)

doormenu_left_96EA:
    %cm_jsl("UN Lower Norfair Elevator", #doorsubmenu_select, #$00C8)

doormenu_left_96A2:
    %cm_jsl("UN Magdollite Tunnel", #doorsubmenu_select, #$00C9)

doormenu_left_97C2:
    %cm_jsl("UN Norfair Map", #doorsubmenu_select, #$00CA)

doormenu_left_952E:
    %cm_jsl("UN Norfair Reserve Tank", #doorsubmenu_select, #$00CB)

doormenu_left_9792:
    %cm_jsl("UN Nutella Refill", #doorsubmenu_select, #$00CC)

doormenu_left_973E:
    %cm_jsl("UN Rising Tide", #doorsubmenu_select, #$00CD)

doormenu_left_96BA:
    %cm_jsl("UN Purple Shaft (Lower)", #doorsubmenu_select, #$00CE)

doormenu_left_96C6:
    %cm_jsl("UN Purple Shaft (Upper)", #doorsubmenu_select, #$00CF)

doormenu_left_97F2:
    %cm_jsl("UN Red Pirates Shaft", #doorsubmenu_select, #$00D0)

doormenu_left_95FA:
    %cm_jsl("UN Single Chamber (Hidden)", #doorsubmenu_select, #$00D1)

doormenu_left_95EE:
    %cm_jsl("UN Single Chamber (Lower)", #doorsubmenu_select, #$00D2)

doormenu_left_95E2:
    %cm_jsl("UN Single Chamber (Middle)", #doorsubmenu_select, #$00D3)

doormenu_left_95D6:
    %cm_jsl("UN Single Chamber (Upper)", #doorsubmenu_select, #$00D4)

doormenu_left_95B2:
    %cm_jsl("UN Speed Booster Hall", #doorsubmenu_select, #$00D5)

doormenu_left_977A:
    %cm_jsl("UN Spiky Acid Snake Tunnel", #doorsubmenu_select, #$00D6)

doormenu_left_9642:
    %cm_jsl("UN Spiky Platforms Tunnel", #doorsubmenu_select, #$00D7)

LayoutWestMaridiaLeftDoorMenu:
    dw #doormenu_left_A51C
    dw #doormenu_left_A504
    dw #doormenu_left_A420
    dw #doormenu_left_A384
    dw #doormenu_left_A390
    dw #doormenu_left_A3E4
    dw #doormenu_left_A354
    dw #doormenu_left_A348
    dw #doormenu_left_A3A8
    dw #doormenu_left_A3B4
    dw #doormenu_left_A3CC
    dw #doormenu_left_A3C0
    dw #doormenu_left_A468
    dw #doormenu_left_A360
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_A51C:
    %cm_jsl("WM Crab Hole (Lower)", #doorsubmenu_select, #$00D8)

doormenu_left_A504:
    %cm_jsl("WM Crab Hole (Upper)", #doorsubmenu_select, #$00D9)

doormenu_left_A420:
    %cm_jsl("WM Crab Tunnel", #doorsubmenu_select, #$00DA)

doormenu_left_A384:
    %cm_jsl("WM East Tunnel (Lower)", #doorsubmenu_select, #$00DB)

doormenu_left_A390:
    %cm_jsl("WM East Tunnel (Upper)", #doorsubmenu_select, #$00DC)

doormenu_left_A3E4:
    %cm_jsl("WM Fish Tank", #doorsubmenu_select, #$00DD)

doormenu_left_A354:
    %cm_jsl("WM Glass Tunnel (Lower)", #doorsubmenu_select, #$00DE)

doormenu_left_A348:
    %cm_jsl("WM Glass Tunnel (Upper)", #doorsubmenu_select, #$00DF)

doormenu_left_A3A8:
    %cm_jsl("WM Main Street (Lower)", #doorsubmenu_select, #$00E0)

doormenu_left_A3B4:
    %cm_jsl("WM Main Street (Middle)", #doorsubmenu_select, #$00E1)

doormenu_left_A3CC:
    %cm_jsl("WM Main Street (Tunnel)", #doorsubmenu_select, #$00E2)

doormenu_left_A3C0:
    %cm_jsl("WM Main Street (Upper)", #doorsubmenu_select, #$00E3)

doormenu_left_A468:
    %cm_jsl("WM Mount Everest", #doorsubmenu_select, #$00E4)

doormenu_left_A360:
    %cm_jsl("WM West Tunnel", #doorsubmenu_select, #$00E5)

LayoutWreckedShipLeftDoorMenu:
    dw #doormenu_left_A1D4
    dw #doormenu_left_A2AC
    dw #doormenu_left_A264
    dw #doormenu_left_A288
    dw #doormenu_left_A1BC
    dw #doormenu_left_A30C
    dw #doormenu_left_A234
    dw #doormenu_left_A204
    dw #doormenu_left_A240
    dw #doormenu_left_A258
    dw #doormenu_left_A2DC
    dw #doormenu_left_A2E8
    dw #doormenu_left_A2B8
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_A1D4:
    %cm_jsl("WS Attic", #doorsubmenu_select, #$00E6)

doormenu_left_A2AC:
    %cm_jsl("WS Basement", #doorsubmenu_select, #$00E7)

doormenu_left_A264:
    %cm_jsl("WS Electric Death", #doorsubmenu_select, #$00E8)

doormenu_left_A288:
    %cm_jsl("WS Energy Tank", #doorsubmenu_select, #$00E9)

doormenu_left_A1BC:
    %cm_jsl("WS Entrance", #doorsubmenu_select, #$00EA)

doormenu_left_A30C:
    %cm_jsl("WS Gravity Suit", #doorsubmenu_select, #$00EB)

doormenu_left_A234:
    %cm_jsl("WS Main Shaft (Lower)", #doorsubmenu_select, #$00EC)

doormenu_left_A204:
    %cm_jsl("WS Main Shaft (Middle)", #doorsubmenu_select, #$00ED)

doormenu_left_A240:
    %cm_jsl("WS Main Shaft (Upper)", #doorsubmenu_select, #$00EE)

doormenu_left_A258:
    %cm_jsl("WS Spiky Death", #doorsubmenu_select, #$00EF)

doormenu_left_A2DC:
    %cm_jsl("WS Sponge Bath", #doorsubmenu_select, #$00F0)

doormenu_left_A2E8:
    %cm_jsl("WS West Supers", #doorsubmenu_select, #$00F1)

doormenu_left_A2B8:
    %cm_jsl("WS Wrecked Ship Map", #doorsubmenu_select, #$00F2)

LayoutYellowMaridiaLeftDoorMenu:
    dw #doormenu_left_A618
    dw #doormenu_left_A75C
    dw #doormenu_left_A5DC
    dw #doormenu_left_A588
    dw #doormenu_left_A4A4
    dw #doormenu_left_A5A0
    dw #doormenu_left_A5C4
    dw #doormenu_left_A5B8
    dw #doormenu_left_A54C
    dw #doormenu_left_A570
    dw #doormenu_left_A48C
    dw #$0000
    %cm_header("SELECT LEFT DOOR")

doormenu_left_A618:
    %cm_jsl("YM Bug Sand Hole", #doorsubmenu_select, #$00F3)

doormenu_left_A75C:
    %cm_jsl("YM Butterfly", #doorsubmenu_select, #$00F4)

doormenu_left_A5DC:
    %cm_jsl("YM Kassiuz", #doorsubmenu_select, #$00F5)

doormenu_left_A588:
    %cm_jsl("YM Maridia Elevator", #doorsubmenu_select, #$00F6)

doormenu_left_A4A4:
    %cm_jsl("YM Northwest Maridia Bugs", #doorsubmenu_select, #$00F7)

doormenu_left_A5A0:
    %cm_jsl("YM Plasma Spark (Lower)", #doorsubmenu_select, #$00F8)

doormenu_left_A5C4:
    %cm_jsl("YM Plasma Spark (Middle)", #doorsubmenu_select, #$00F9)

doormenu_left_A5B8:
    %cm_jsl("YM Plasma Spark (Upper)", #doorsubmenu_select, #$00FA)

doormenu_left_A54C:
    %cm_jsl("YM Plasma Tutorial", #doorsubmenu_select, #$00FB)

doormenu_left_A570:
    %cm_jsl("YM Thread The Needle", #doorsubmenu_select, #$00FC)

doormenu_left_A48C:
    %cm_jsl("YM Watering Hole", #doorsubmenu_select, #$00FD)

layout_leftright_leftdoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_source
    dw #$0000
    dw #doormenu_left_8FA6      ; Blue Brinstar
    dw #doormenu_left_8FFA
    dw #doormenu_left_8FE2
    dw #doormenu_left_8ECE
    dw #doormenu_left_8EAA
    dw #doormenu_left_ABAC      ; Ceres
    dw #doormenu_left_AB4C
    dw #doormenu_left_AB94
    dw #doormenu_left_AB64
    dw #doormenu_left_AB7C
    dw #doormenu_left_9516      ; Croc's Lair
    dw #doormenu_left_9522
    dw #doormenu_left_950A
    dw #doormenu_left_94F2
    dw #doormenu_left_94C2
    dw #doormenu_left_9456
    dw #doormenu_left_9432
    dw #doormenu_left_946E
    dw #doormenu_left_9492
    dw #doormenu_left_8C8E      ; Crateria
    dw #doormenu_left_8C9A
    dw #doormenu_left_8A1E
    dw #doormenu_left_8B62
    dw #doormenu_left_8B56
    dw #doormenu_left_8B4A
    dw #doormenu_left_8A36
    dw #doormenu_left_89BE
    dw #doormenu_left_8AD2
    dw #doormenu_left_8A72
    dw #doormenu_left_8BC2
    dw #doormenu_left_8AA2
    dw #doormenu_left_8B0E
    dw #doormenu_left_8946
    dw #doormenu_left_8BFE
    dw #doormenu_left_8C52
    dw #doormenu_left_8C3A
    dw #doormenu_left_8C5E
    dw #doormenu_left_8922
    dw #doormenu_left_893A
    dw #doormenu_left_8C16
    dw #doormenu_left_8AEA
    dw #doormenu_left_8982
    dw #doormenu_left_8976
    dw #doormenu_left_896A
    dw #doormenu_left_8B86
    dw #doormenu_left_8BDA
    dw #doormenu_left_91F2
    dw #doormenu_left_8BF2
    dw #doormenu_left_89E2
    dw #doormenu_left_8B32
    dw #doormenu_left_89D6
    dw #doormenu_left_8A06
    dw #doormenu_left_89FA
    dw #doormenu_left_89EE
    dw #doormenu_left_8F16      ; Green Brinstar
    dw #doormenu_left_8D8A
    dw #doormenu_left_8D72
    dw #doormenu_left_8D96
    dw #doormenu_left_8D42
    dw #doormenu_left_8D5A
    dw #doormenu_left_8F46
    dw #doormenu_left_8F2E
    dw #doormenu_left_9012
    dw #doormenu_left_8F5E
    dw #doormenu_left_8E92
    dw #doormenu_left_8E86
    dw #doormenu_left_8CE2
    dw #doormenu_left_8CEE
    dw #doormenu_left_8CD6
    dw #doormenu_left_9006
    dw #doormenu_left_8F0A
    dw #doormenu_left_8E4A
    dw #doormenu_left_A690      ; Green Maridia
    dw #doormenu_left_A66C
    dw #doormenu_left_A798
    dw #doormenu_left_A7BC
    dw #doormenu_left_A78C
    dw #doormenu_left_A8D0
    dw #doormenu_left_A648
    dw #doormenu_left_A534
    dw #doormenu_left_919E      ; Kraid's Lair
    dw #doormenu_left_917A
    dw #doormenu_left_9186
    dw #doormenu_left_91DA
    dw #doormenu_left_91B6
    dw #doormenu_left_91C2
    dw #doormenu_left_9162
    dw #doormenu_left_923A
    dw #doormenu_left_983A      ; Lower Norfair
    dw #doormenu_left_9846
    dw #doormenu_left_99A2
    dw #doormenu_left_989A
    dw #doormenu_left_9A9E
    dw #doormenu_left_9882
    dw #doormenu_left_9A0E
    dw #doormenu_left_9A02
    dw #doormenu_left_985E
    dw #doormenu_left_9A3E
    dw #doormenu_left_9936
    dw #doormenu_left_994E
    dw #doormenu_left_9912
    dw #doormenu_left_98EE
    dw #doormenu_left_9966
    dw #doormenu_left_98BE
    dw #doormenu_left_98D6
    dw #doormenu_left_9A62
    dw #doormenu_left_9A7A
    dw #doormenu_left_9A6E
    dw #doormenu_left_99BA
    dw #doormenu_left_9A56
    dw #doormenu_left_997E
    dw #doormenu_left_8DEA      ; Pink Brinstar
    dw #doormenu_left_8E26
    dw #doormenu_left_8E1A
    dw #doormenu_left_8DC6
    dw #doormenu_left_8FD6
    dw #doormenu_left_8DAE
    dw #doormenu_left_8F6A
    dw #doormenu_left_8FBE
    dw #doormenu_left_8E6E
    dw #doormenu_left_8E62
    dw #doormenu_left_8F76
    dw #doormenu_left_8F8E
    dw #doormenu_left_A738      ; Pink Maridia
    dw #doormenu_left_A828
    dw #doormenu_left_A69C
    dw #doormenu_left_A918
    dw #doormenu_left_A774
    dw #doormenu_left_A870
    dw #doormenu_left_A7F8
    dw #doormenu_left_A7EC
    dw #doormenu_left_A4C8
    dw #doormenu_left_A96C
    dw #doormenu_left_A87C
    dw #doormenu_left_A960
    dw #doormenu_left_A8F4
    dw #doormenu_left_A8E8
    dw #doormenu_left_A924
    dw #doormenu_left_A948
    dw #doormenu_left_90EA      ; Red Brinstar
    dw #doormenu_left_911A
    dw #doormenu_left_9126
    dw #doormenu_left_90DE
    dw #doormenu_left_90D2
    dw #doormenu_left_90C6
    dw #doormenu_left_908A
    dw #doormenu_left_9066
    dw #doormenu_left_9042
    dw #doormenu_left_901E
    dw #doormenu_left_9102
    dw #doormenu_left_91FE
    dw #doormenu_left_9072
    dw #doormenu_left_AA38      ; Tourian
    dw #doormenu_left_AA20
    dw #doormenu_left_AAD4
    dw #doormenu_left_A9A8
    dw #doormenu_left_A9CC
    dw #doormenu_left_A9C0
    dw #doormenu_left_A9E4
    dw #doormenu_left_AA80
    dw #doormenu_left_AA5C
    dw #doormenu_left_AA50
    dw #doormenu_left_AAE0
    dw #doormenu_left_AB04
    dw #doormenu_left_AB1C
    dw #doormenu_left_AB34
    dw #doormenu_left_AAA4
    dw #doormenu_left_A99C
    dw #doormenu_left_AA74
    dw #doormenu_left_9756      ; Upper Norfair
    dw #doormenu_left_97B6
    dw #doormenu_left_9582
    dw #doormenu_left_958E
    dw #doormenu_left_97CE
    dw #doormenu_left_92E2
    dw #doormenu_left_92FA
    dw #doormenu_left_92CA
    dw #doormenu_left_929A
    dw #doormenu_left_92B2
    dw #doormenu_left_940E
    dw #doormenu_left_93C6
    dw #doormenu_left_93BA
    dw #doormenu_left_9396
    dw #doormenu_left_938A
    dw #doormenu_left_961E
    dw #doormenu_left_971A
    dw #doormenu_left_980A
    dw #doormenu_left_97E6
    dw #doormenu_left_953A
    dw #doormenu_left_93F6
    dw #doormenu_left_941A
    dw #doormenu_left_9276
    dw #doormenu_left_932A
    dw #doormenu_left_9366
    dw #doormenu_left_937E
    dw #doormenu_left_9372
    dw #doormenu_left_934E
    dw #doormenu_left_9672
    dw #doormenu_left_96D2
    dw #doormenu_left_982E
    dw #doormenu_left_96EA
    dw #doormenu_left_96A2
    dw #doormenu_left_97C2
    dw #doormenu_left_952E
    dw #doormenu_left_9792
    dw #doormenu_left_973E
    dw #doormenu_left_96BA
    dw #doormenu_left_96C6
    dw #doormenu_left_97F2
    dw #doormenu_left_95FA
    dw #doormenu_left_95EE
    dw #doormenu_left_95E2
    dw #doormenu_left_95D6
    dw #doormenu_left_95B2
    dw #doormenu_left_977A
    dw #doormenu_left_9642
    dw #doormenu_left_A51C      ; West Maridia
    dw #doormenu_left_A504
    dw #doormenu_left_A420
    dw #doormenu_left_A384
    dw #doormenu_left_A390
    dw #doormenu_left_A3E4
    dw #doormenu_left_A354
    dw #doormenu_left_A348
    dw #doormenu_left_A3A8
    dw #doormenu_left_A3B4
    dw #doormenu_left_A3CC
    dw #doormenu_left_A3C0
    dw #doormenu_left_A468
    dw #doormenu_left_A360
    dw #doormenu_left_A1D4      ; Wrecked Ship
    dw #doormenu_left_A2AC
    dw #doormenu_left_A264
    dw #doormenu_left_A288
    dw #doormenu_left_A1BC
    dw #doormenu_left_A30C
    dw #doormenu_left_A234
    dw #doormenu_left_A204
    dw #doormenu_left_A240
    dw #doormenu_left_A258
    dw #doormenu_left_A2DC
    dw #doormenu_left_A2E8
    dw #doormenu_left_A2B8
    dw #doormenu_left_A618      ; Yellow Maridia
    dw #doormenu_left_A75C
    dw #doormenu_left_A5DC
    dw #doormenu_left_A588
    dw #doormenu_left_A4A4
    dw #doormenu_left_A5A0
    dw #doormenu_left_A5C4
    dw #doormenu_left_A5B8
    dw #doormenu_left_A54C
    dw #doormenu_left_A570
    dw #doormenu_left_A48C
    dw #$0000


; -----------------
; Right Doors
; -----------------
LayoutBlueBrinstarRightDoorMenu:
    dw #doormenu_right_8FEE
    dw #doormenu_right_8EDA
    dw #doormenu_right_8EC2
    dw #doormenu_right_8EE6
    dw #doormenu_right_8EF2
    dw #doormenu_right_8E9E
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_8FEE:
    %cm_jsl("BB Boulder", #doorsubmenu_select, #$0000)

doormenu_right_8EDA:
    %cm_jsl("BB Construction (Lower)", #doorsubmenu_select, #$0001)

doormenu_right_8EC2:
    %cm_jsl("BB Construction (Upper)", #doorsubmenu_select, #$0002)

doormenu_right_8EE6:
    %cm_jsl("BB Energy Tank (Lower)", #doorsubmenu_select, #$0003)

doormenu_right_8EF2:
    %cm_jsl("BB Energy Tank (Upper)", #doorsubmenu_select, #$0004)

doormenu_right_8E9E:
    %cm_jsl("BB Morph Ball", #doorsubmenu_select, #$0005)

LayoutCeresRightDoorMenu:
    dw #doormenu_right_ABA0
    dw #doormenu_right_ABB8
    dw #doormenu_right_AB88
    dw #doormenu_right_AB58
    dw #doormenu_right_AB70
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_ABA0:
    %cm_jsl("CE 58 Escape", #doorsubmenu_select, #$0006)

doormenu_right_ABB8:
    %cm_jsl("CE Ceres Ridley", #doorsubmenu_select, #$0007)

doormenu_right_AB88:
    %cm_jsl("CE Dead Scientist", #doorsubmenu_select, #$0008)

doormenu_right_AB58:
    %cm_jsl("CE Falling Tile", #doorsubmenu_select, #$0009)

doormenu_right_AB70:
    %cm_jsl("CE Magnet Stairs", #doorsubmenu_select, #$000A)

LayoutCrocLairRightDoorMenu:
    dw #doormenu_right_94AA
    dw #doormenu_right_93DE
    dw #doormenu_right_94FE
    dw #doormenu_right_94E6
    dw #doormenu_right_94B6
    dw #doormenu_right_943E
    dw #doormenu_right_94DA
    dw #doormenu_right_9462
    dw #doormenu_right_9486
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_94AA:
    %cm_jsl("CL Cosine Missiles", #doorsubmenu_select, #$000B)

doormenu_right_93DE:
    %cm_jsl("CL Crocomire", #doorsubmenu_select, #$000C)

doormenu_right_94FE:
    %cm_jsl("CL Grapple Tutorial 1", #doorsubmenu_select, #$000D)

doormenu_right_94E6:
    %cm_jsl("CL Grapple Tutorial 2", #doorsubmenu_select, #$000E)

doormenu_right_94B6:
    %cm_jsl("CL Grapple Tutorial 3", #doorsubmenu_select, #$000F)

doormenu_right_943E:
    %cm_jsl("CL Post Croc Farm", #doorsubmenu_select, #$0010)

doormenu_right_94DA:
    %cm_jsl("CL Post Croc Jump", #doorsubmenu_select, #$0011)

doormenu_right_9462:
    %cm_jsl("CL Post Croc Save", #doorsubmenu_select, #$0012)

doormenu_right_9486:
    %cm_jsl("CL Post Croc Shaft", #doorsubmenu_select, #$0013)

LayoutCrateriaRightDoorMenu:
    dw #doormenu_right_8C82
    dw #doormenu_right_8BAA
    dw #doormenu_right_8A12
    dw #doormenu_right_8B6E
    dw #doormenu_right_8C76
    dw #doormenu_right_8C6A
    dw #doormenu_right_8AAE
    dw #doormenu_right_8A2A
    dw #doormenu_right_8C2E
    dw #doormenu_right_89B2
    dw #doormenu_right_8AC6
    dw #doormenu_right_8A66
    dw #doormenu_right_8BB6
    dw #doormenu_right_8A7E
    dw #doormenu_right_8B1A
    dw #doormenu_right_8952
    dw #doormenu_right_8C46
    dw #doormenu_crateria_right_goto_page2
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

LayoutCrateriaRightDoorMenu2:
    dw #doormenu_right_8916
    dw #doormenu_right_892E
    dw #doormenu_right_8C22
    dw #doormenu_right_8ADE
    dw #doormenu_right_8B92
    dw #doormenu_right_89A6
    dw #doormenu_right_899A
    dw #doormenu_right_895E
    dw #doormenu_right_8B7A
    dw #doormenu_right_8BCE
    dw #doormenu_right_9216
    dw #doormenu_right_91E6
    dw #doormenu_right_8BE6
    dw #doormenu_right_8B26
    dw #doormenu_right_89CA
    dw #doormenu_crateria_right_goto_page1
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_crateria_right_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #LayoutCrateriaRightDoorMenu)

doormenu_crateria_right_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #LayoutCrateriaRightDoorMenu2)

doormenu_right_8C82:
    %cm_jsl("CR 230 Bombway", #doorsubmenu_select, #$0014)

doormenu_right_8BAA:
    %cm_jsl("CR Bomb Torizo", #doorsubmenu_select, #$0015)

doormenu_right_8A12:
    %cm_jsl("CR Bowling Alley Path", #doorsubmenu_select, #$0016)

doormenu_right_8B6E:
    %cm_jsl("CR Climb", #doorsubmenu_select, #$0017)

doormenu_right_8C76:
    %cm_jsl("CR Climb Supers (Lower)", #doorsubmenu_select, #$0018)

doormenu_right_8C6A:
    %cm_jsl("CR Climb Supers (Upper)", #doorsubmenu_select, #$0019)

doormenu_right_8AAE:
    %cm_jsl("CR Crab Maze", #doorsubmenu_select, #$001A)

doormenu_right_8A2A:
    %cm_jsl("CR Crateria Kihunters", #doorsubmenu_select, #$001B)

doormenu_right_8C2E:
    %cm_jsl("CR Crateria Map Station", #doorsubmenu_select, #$001C)

doormenu_right_89B2:
    %cm_jsl("CR Crateria Power Bombs", #doorsubmenu_select, #$001D)

doormenu_right_8AC6:
    %cm_jsl("CR Crateria Tube", #doorsubmenu_select, #$001E)

doormenu_right_8A66:
    %cm_jsl("CR East Ocean", #doorsubmenu_select, #$001F)

doormenu_right_8BB6:
    %cm_jsl("CR Flyway", #doorsubmenu_select, #$0020)

doormenu_right_8A7E:
    %cm_jsl("CR Forgotten Highway Kago", #doorsubmenu_select, #$0021)

doormenu_right_8B1A:
    %cm_jsl("CR Gauntlet Energy Tank", #doorsubmenu_select, #$0022)

doormenu_right_8952:
    %cm_jsl("CR Gauntlet Entrance", #doorsubmenu_select, #$0023)

doormenu_right_8C46:
    %cm_jsl("CR Green Pirates Shaft", #doorsubmenu_select, #$0024)

doormenu_right_8916:
    %cm_jsl("CR Landing Site (Lower)", #doorsubmenu_select, #$0025)

doormenu_right_892E:
    %cm_jsl("CR Landing Site (Upper)", #doorsubmenu_select, #$0026)

doormenu_right_8C22:
    %cm_jsl("CR Lower Mushrooms", #doorsubmenu_select, #$0027)

doormenu_right_8ADE:
    %cm_jsl("CR Moat", #doorsubmenu_select, #$0028)

doormenu_right_8B92:
    %cm_jsl("CR Morph Elevator", #doorsubmenu_select, #$0029)

doormenu_right_89A6:
    %cm_jsl("CR Parlor (Lower)", #doorsubmenu_select, #$002A)

doormenu_right_899A:
    %cm_jsl("CR Parlor (Middle)", #doorsubmenu_select, #$002B)

doormenu_right_895E:
    %cm_jsl("CR Parlor (Upper)", #doorsubmenu_select, #$002C)

doormenu_right_8B7A:
    %cm_jsl("CR Pit", #doorsubmenu_select, #$002D)

doormenu_right_8BCE:
    %cm_jsl("CR Pre-Map Flyway", #doorsubmenu_select, #$002E)

doormenu_right_9216:
    %cm_jsl("CR Statues", #doorsubmenu_select, #$002F)

doormenu_right_91E6:
    %cm_jsl("CR Statues Hallway", #doorsubmenu_select, #$0030)

doormenu_right_8BE6:
    %cm_jsl("CR Terminator", #doorsubmenu_select, #$0031)

doormenu_right_8B26:
    %cm_jsl("CR West Ocean (Geemer)", #doorsubmenu_select, #$0032)

doormenu_right_89CA:
    %cm_jsl("CR West Ocean (Lower)", #doorsubmenu_select, #$0033)

LayoutGreenBrinstarRightDoorMenu:
    dw #doormenu_right_8F22
    dw #doormenu_right_8D7E
    dw #doormenu_right_8D36
    dw #doormenu_right_8D66
    dw #doormenu_right_8D4E
    dw #doormenu_right_8F52
    dw #doormenu_right_8F3A
    dw #doormenu_right_8E7A
    dw #doormenu_right_8CFA
    dw #doormenu_right_8CBE
    dw #doormenu_right_8CCA
    dw #doormenu_right_8D12
    dw #doormenu_right_8D06
    dw #doormenu_right_8CB2
    dw #doormenu_right_8EFE
    dw #doormenu_right_8E32
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_8F22:
    %cm_jsl("GB Brinstar Beetoms", #doorsubmenu_select, #$0034)

doormenu_right_8D7E:
    %cm_jsl("GB Brinstar Firefleas", #doorsubmenu_select, #$0035)

doormenu_right_8D36:
    %cm_jsl("GB Brinstar Pre-Map", #doorsubmenu_select, #$0036)

doormenu_right_8D66:
    %cm_jsl("GB Brinstar Reserve Tank", #doorsubmenu_select, #$0037)

doormenu_right_8D4E:
    %cm_jsl("GB Early Supers", #doorsubmenu_select, #$0038)

doormenu_right_8F52:
    %cm_jsl("GB Etecoons E-Tank (Lower)", #doorsubmenu_select, #$0039)

doormenu_right_8F3A:
    %cm_jsl("GB Etecoons E-Tank (Upper)", #doorsubmenu_select, #$003A)

doormenu_right_8E7A:
    %cm_jsl("GB Green Hill Zone", #doorsubmenu_select, #$003B)

doormenu_right_8CFA:
    %cm_jsl("GB Main Shaft (Etecoons)", #doorsubmenu_select, #$003C)

doormenu_right_8CBE:
    %cm_jsl("GB Main Shaft (Mid-Lower)", #doorsubmenu_select, #$003D)

doormenu_right_8CCA:
    %cm_jsl("GB Main Shaft (Middle)", #doorsubmenu_select, #$003E)

doormenu_right_8D12:
    %cm_jsl("GB Main Shaft (Mid-Upper)", #doorsubmenu_select, #$003F)

doormenu_right_8D06:
    %cm_jsl("GB Main Shaft (Self)", #doorsubmenu_select, #$0040)

doormenu_right_8CB2:
    %cm_jsl("GB Main Shaft (Upper)", #doorsubmenu_select, #$0041)

doormenu_right_8EFE:
    %cm_jsl("GB Noob Bridge", #doorsubmenu_select, #$0042)

doormenu_right_8E32:
    %cm_jsl("GB Spore Spawn Kihunters", #doorsubmenu_select, #$0043)

LayoutGreenMaridiaRightDoorMenu:
    dw #doormenu_right_A684
    dw #doormenu_right_A660
    dw #doormenu_right_A780
    dw #doormenu_right_A7B0
    dw #doormenu_right_A7A4
    dw #doormenu_right_A8C4
    dw #doormenu_right_A7C8
    dw #doormenu_right_A63C
    dw #doormenu_right_A654
    dw #doormenu_right_A528
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_A684:
    %cm_jsl("GM East Sand Hall", #doorsubmenu_select, #$0044)

doormenu_right_A660:
    %cm_jsl("GM Oasis", #doorsubmenu_select, #$0045)

doormenu_right_A780:
    %cm_jsl("GM Pants", #doorsubmenu_select, #$0046)

doormenu_right_A7B0:
    %cm_jsl("GM Pants (East)", #doorsubmenu_select, #$0047)

doormenu_right_A7A4:
    %cm_jsl("GM Pants (Self)", #doorsubmenu_select, #$0048)

doormenu_right_A8C4:
    %cm_jsl("GM Shaktool", #doorsubmenu_select, #$0049)

doormenu_right_A7C8:
    %cm_jsl("GM Spring Ball", #doorsubmenu_select, #$004A)

doormenu_right_A63C:
    %cm_jsl("GM West Sand Hall", #doorsubmenu_select, #$004B)

doormenu_right_A654:
    %cm_jsl("GM West Sand Hall (Area)", #doorsubmenu_select, #$004C)

doormenu_right_A528:
    %cm_jsl("GM West Sand Hall Tunnel", #doorsubmenu_select, #$004D)

LayoutKraidLairRightDoorMenu:
    dw #doormenu_right_9192
    dw #doormenu_right_91CE
    dw #doormenu_right_91AA
    dw #doormenu_right_920A
    dw #doormenu_right_9252
    dw #doormenu_right_922E
    dw #doormenu_right_925E
    dw #doormenu_right_914A
    dw #doormenu_right_913E
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_9192:
    %cm_jsl("KL Baby Kraid", #doorsubmenu_select, #$004E)

doormenu_right_91CE:
    %cm_jsl("KL Kraid", #doorsubmenu_select, #$004F)

doormenu_right_91AA:
    %cm_jsl("KL Kraid Eye Door", #doorsubmenu_select, #$0050)

doormenu_right_920A:
    %cm_jsl("KL Kraid Refill", #doorsubmenu_select, #$0051)

doormenu_right_9252:
    %cm_jsl("KL Varia Suit", #doorsubmenu_select, #$0052)

doormenu_right_922E:
    %cm_jsl("KL Warehouse Entrance", #doorsubmenu_select, #$0053)

doormenu_right_925E:
    %cm_jsl("KL Warehouse Save", #doorsubmenu_select, #$0054)

doormenu_right_914A:
    %cm_jsl("KL Warehouse Zeela (Lower)", #doorsubmenu_select, #$0055)

doormenu_right_913E:
    %cm_jsl("KL Warehouse Zeela (Upper)", #doorsubmenu_select, #$0056)

LayoutLowerNorfairRightDoorMenu:
    dw #doormenu_right_9996
    dw #doormenu_right_988E
    dw #doormenu_right_9AAA
    dw #doormenu_right_9A92
    dw #doormenu_right_9876
    dw #doormenu_right_98A6
    dw #doormenu_right_99D2
    dw #doormenu_right_9AB6
    dw #doormenu_right_99F6
    dw #doormenu_right_9852
    dw #doormenu_right_9A32
    dw #doormenu_right_992A
    dw #doormenu_lower_norfair_right_goto_page2
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

LayoutLowerNorfairRightDoorMenu2:
    dw #doormenu_right_9942
    dw #doormenu_right_9906
    dw #doormenu_right_98E2
    dw #doormenu_right_995A
    dw #doormenu_right_98B2
    dw #doormenu_right_98CA
    dw #doormenu_right_9A86
    dw #doormenu_right_99AE
    dw #doormenu_right_9A4A
    dw #doormenu_right_9A1A
    dw #doormenu_right_998A
    dw #doormenu_right_9972
    dw #doormenu_lower_norfair_right_goto_page1
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_lower_norfair_right_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #LayoutLowerNorfairRightDoorMenu)

doormenu_lower_norfair_right_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #LayoutLowerNorfairRightDoorMenu2)

doormenu_right_9996:
    %cm_jsl("LN Amphitheatre", #doorsubmenu_select, #$0057)

doormenu_right_988E:
    %cm_jsl("LN Fast Rippers", #doorsubmenu_select, #$0058)

doormenu_right_9AAA:
    %cm_jsl("LN Firefleas (Lower)", #doorsubmenu_select, #$0059)

doormenu_right_9A92:
    %cm_jsl("LN Firefleas (Upper)", #doorsubmenu_select, #$005A)

doormenu_right_9876:
    %cm_jsl("LN Golden Torizo", #doorsubmenu_select, #$005B)

doormenu_right_98A6:
    %cm_jsl("LN Golden Torizo Recharge", #doorsubmenu_select, #$005C)

doormenu_right_99D2:
    %cm_jsl("LN Jail Power Bombs", #doorsubmenu_select, #$005D)

doormenu_right_9AB6:
    %cm_jsl("LN Kihunter Save", #doorsubmenu_select, #$005E)

doormenu_right_99F6:
    %cm_jsl("LN Kihunter Shaft", #doorsubmenu_select, #$005F)

doormenu_right_9852:
    %cm_jsl("LN Main Hall", #doorsubmenu_select, #$0060)

doormenu_right_9A32:
    %cm_jsl("LN Metal Pirates", #doorsubmenu_select, #$0061)

doormenu_right_992A:
    %cm_jsl("LN Mickey Mouse", #doorsubmenu_select, #$0062)

doormenu_right_9942:
    %cm_jsl("LN Pillars", #doorsubmenu_select, #$0063)

doormenu_right_9906:
    %cm_jsl("LN Pillars Setup (Lower)", #doorsubmenu_select, #$0064)

doormenu_right_98E2:
    %cm_jsl("LN Pillars Setup (Upper)", #doorsubmenu_select, #$0065)

doormenu_right_995A:
    %cm_jsl("LN Plowerhouse", #doorsubmenu_select, #$0066)

doormenu_right_98B2:
    %cm_jsl("LN Ridley", #doorsubmenu_select, #$0067)

doormenu_right_98CA:
    %cm_jsl("LN Ridley Farming", #doorsubmenu_select, #$0068)

doormenu_right_9A86:
    %cm_jsl("LN Screw Attack", #doorsubmenu_select, #$0069)

doormenu_right_99AE:
    %cm_jsl("LN Spring Ball Maze", #doorsubmenu_select, #$006A)

doormenu_right_9A4A:
    %cm_jsl("LN Three Musketeers", #doorsubmenu_select, #$006B)

doormenu_right_9A1A:
    %cm_jsl("LN Wasteland", #doorsubmenu_select, #$006C)

doormenu_right_998A:
    %cm_jsl("LN Worst Room (Lower)", #doorsubmenu_select, #$006D)

doormenu_right_9972:
    %cm_jsl("LN Worst Room (Upper)", #doorsubmenu_select, #$006E)

LayoutPinkBrinstarRightDoorMenu:
    dw #doormenu_right_8E0E
    dw #doormenu_right_8DDE
    dw #doormenu_right_8E02
    dw #doormenu_right_8DD2
    dw #doormenu_right_8DF6
    dw #doormenu_right_8DBA
    dw #doormenu_right_8DA2
    dw #doormenu_right_8FB2
    dw #doormenu_right_8FCA
    dw #doormenu_right_8F82
    dw #doormenu_right_8D1E
    dw #doormenu_right_8D2A
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_8E0E:
    %cm_jsl("PB Big Pink (Lower)", #doorsubmenu_select, #$006F)

doormenu_right_8DDE:
    %cm_jsl("PB Big Pink (Mid-Lower)", #doorsubmenu_select, #$0070)

doormenu_right_8E02:
    %cm_jsl("PB Big Pink (Middle)", #doorsubmenu_select, #$0071)

doormenu_right_8DD2:
    %cm_jsl("PB Big Pink (Mid-Upper)", #doorsubmenu_select, #$0072)

doormenu_right_8DF6:
    %cm_jsl("PB Big Pink (Upper)", #doorsubmenu_select, #$0073)

doormenu_right_8DBA:
    %cm_jsl("PB Dachora (Lower)", #doorsubmenu_select, #$0074)

doormenu_right_8DA2:
    %cm_jsl("PB Dachora (Upper)", #doorsubmenu_select, #$0075)

doormenu_right_8FB2:
    %cm_jsl("PB Hoppers", #doorsubmenu_select, #$0076)

doormenu_right_8FCA:
    %cm_jsl("PB Hoppers Energy Tank", #doorsubmenu_select, #$0077)

doormenu_right_8F82:
    %cm_jsl("PB Spore Spawn Farming", #doorsubmenu_select, #$0078)

doormenu_right_8D1E:
    %cm_jsl("PB Spo-Spo Supers (Lower)", #doorsubmenu_select, #$0079)

doormenu_right_8D2A:
    %cm_jsl("PB Spo-Spo Supers (Upper)", #doorsubmenu_select, #$007A)

LayoutPinkMaridiaRightDoorMenu:
    dw #doormenu_right_A744
    dw #doormenu_right_A708
    dw #doormenu_right_A7D4
    dw #doormenu_right_A90C
    dw #doormenu_right_A84C
    dw #doormenu_right_A7E0
    dw #doormenu_right_A4B0
    dw #doormenu_right_A978
    dw #doormenu_right_A888
    dw #doormenu_right_A954
    dw #doormenu_right_A8DC
    dw #doormenu_right_A900
    dw #doormenu_right_A930
    dw #doormenu_right_A894
    dw #doormenu_right_A840
    dw #doormenu_right_A834
    dw #doormenu_right_A93C
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_A744:
    %cm_jsl("PM Aqueduct (Lower)", #doorsubmenu_select, #$007B)

doormenu_right_A708:
    %cm_jsl("PM Aqueduct (Upper)", #doorsubmenu_select, #$007C)

doormenu_right_A7D4:
    %cm_jsl("PM Below Botwoon", #doorsubmenu_select, #$007D)

doormenu_right_A90C:
    %cm_jsl("PM Botwoon", #doorsubmenu_select, #$007E)

doormenu_right_A84C:
    %cm_jsl("PM Botwoon Tank", #doorsubmenu_select, #$007F)

doormenu_right_A7E0:
    %cm_jsl("PM Colosseum", #doorsubmenu_select, #$0080)

doormenu_right_A4B0:
    %cm_jsl("PM Crab Shaft", #doorsubmenu_select, #$0081)

doormenu_right_A978:
    %cm_jsl("PM Draygon", #doorsubmenu_select, #$0082)

doormenu_right_A888:
    %cm_jsl("PM Draygon Save", #doorsubmenu_select, #$0083)

doormenu_right_A954:
    %cm_jsl("PM East Cactus Alley", #doorsubmenu_select, #$0084)

doormenu_right_A8DC:
    %cm_jsl("PM Halfie Climb (Lower)", #doorsubmenu_select, #$0085)

doormenu_right_A900:
    %cm_jsl("PM Halfie Climb (Upper)", #doorsubmenu_select, #$0086)

doormenu_right_A930:
    %cm_jsl("PM Maridia Health Refill", #doorsubmenu_select, #$0087)

doormenu_right_A894:
    %cm_jsl("PM Maridia Missile Refill", #doorsubmenu_select, #$0088)

doormenu_right_A840:
    %cm_jsl("PM Precious (Lower)", #doorsubmenu_select, #$0089)

doormenu_right_A834:
    %cm_jsl("PM Precious (Upper)", #doorsubmenu_select, #$008A)

doormenu_right_A93C:
    %cm_jsl("PM West Cactus Alley", #doorsubmenu_select, #$008B)

LayoutRedBrinstarRightDoorMenu:
    dw #doormenu_right_910E
    dw #doormenu_right_9096
    dw #doormenu_right_90AE
    dw #doormenu_right_90A2
    dw #doormenu_right_907E
    dw #doormenu_right_905A
    dw #doormenu_right_926A
    dw #doormenu_right_904E
    dw #doormenu_right_9036
    dw #doormenu_right_902A
    dw #doormenu_right_90F6
    dw #doormenu_right_9132
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_910E:
    %cm_jsl("RB Below Spazer", #doorsubmenu_select, #$008C)

doormenu_right_9096:
    %cm_jsl("RB Caterpillars (Lower)", #doorsubmenu_select, #$008D)

doormenu_right_90AE:
    %cm_jsl("RB Caterpillars (Middle)", #doorsubmenu_select, #$008E)

doormenu_right_90A2:
    %cm_jsl("RB Caterpillars (Upper)", #doorsubmenu_select, #$008F)

doormenu_right_907E:
    %cm_jsl("RB Hellway", #doorsubmenu_select, #$0090)

doormenu_right_905A:
    %cm_jsl("RB Red Brinstar Firefleas", #doorsubmenu_select, #$0091)

doormenu_right_926A:
    %cm_jsl("RB Red Brinstar Save", #doorsubmenu_select, #$0092)

doormenu_right_904E:
    %cm_jsl("RB Red Tower (Lower)", #doorsubmenu_select, #$0093)

doormenu_right_9036:
    %cm_jsl("RB Red Tower (Middle)", #doorsubmenu_select, #$0094)

doormenu_right_902A:
    %cm_jsl("RB Red Tower (Upper)", #doorsubmenu_select, #$0095)

doormenu_right_90F6:
    %cm_jsl("RB Skree Boost", #doorsubmenu_select, #$0096)

doormenu_right_9132:
    %cm_jsl("RB Spazer", #doorsubmenu_select, #$0097)

LayoutTourianRightDoorMenu:
    dw #doormenu_right_AA44
    dw #doormenu_right_AA14
    dw #doormenu_right_AA2C
    dw #doormenu_right_A9B4
    dw #doormenu_right_A9D8
    dw #doormenu_right_A9F0
    dw #doormenu_right_AA8C
    dw #doormenu_right_AAC8
    dw #doormenu_right_AABC
    dw #doormenu_right_AAB0
    dw #doormenu_right_AA68
    dw #doormenu_right_AB10
    dw #doormenu_right_AB28
    dw #doormenu_right_AA98
    dw #doormenu_right_A984
    dw #doormenu_right_AB40
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_AA44:
    %cm_jsl("TR Big Boy", #doorsubmenu_select, #$0098)

doormenu_right_AA14:
    %cm_jsl("TR Blue Hoppers", #doorsubmenu_select, #$0099)

doormenu_right_AA2C:
    %cm_jsl("TR Dust Torizo", #doorsubmenu_select, #$009A)

doormenu_right_A9B4:
    %cm_jsl("TR Metroids 1", #doorsubmenu_select, #$009B)

doormenu_right_A9D8:
    %cm_jsl("TR Metroids 3", #doorsubmenu_select, #$009C)

doormenu_right_A9F0:
    %cm_jsl("TR Metroids 4", #doorsubmenu_select, #$009D)

doormenu_right_AA8C:
    %cm_jsl("TR Mother Brain", #doorsubmenu_select, #$009E)

doormenu_right_AAC8:
    %cm_jsl("TR Rinka Shaft (Lower)", #doorsubmenu_select, #$009F)

doormenu_right_AABC:
    %cm_jsl("TR Rinka Shaft (Middle)", #doorsubmenu_select, #$00A0)

doormenu_right_AAB0:
    %cm_jsl("TR Rinka Shaft (Upper)", #doorsubmenu_select, #$00A1)

doormenu_right_AA68:
    %cm_jsl("TR Seaweed", #doorsubmenu_select, #$00A2)

doormenu_right_AB10:
    %cm_jsl("TR Tourian Escape 3", #doorsubmenu_select, #$00A3)

doormenu_right_AB28:
    %cm_jsl("TR Tourian Escape 4", #doorsubmenu_select, #$00A4)

doormenu_right_AA98:
    %cm_jsl("TR Tourian Eye Door", #doorsubmenu_select, #$00A5)

doormenu_right_A984:
    %cm_jsl("TR Tourian First", #doorsubmenu_select, #$00A6)

doormenu_right_AB40:
    %cm_jsl("TR Upper Tourian Save", #doorsubmenu_select, #$00A7)

LayoutUpperNorfairRightDoorMenu:
    dw #doormenu_right_974A
    dw #doormenu_right_97AA
    dw #doormenu_right_956A
    dw #doormenu_right_955E
    dw #doormenu_right_959A
    dw #doormenu_right_9552
    dw #doormenu_right_92D6
    dw #doormenu_right_9306
    dw #doormenu_right_92BE
    dw #doormenu_right_928E
    dw #doormenu_right_92A6
    dw #doormenu_right_9402
    dw #doormenu_right_9822
    dw #doormenu_right_93A2
    dw #doormenu_right_93AE
    dw #doormenu_right_9612
    dw #doormenu_right_9606
    dw #doormenu_upper_norfair_right_goto_page2
    dw #doormenu_upper_norfair_right_goto_page3
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

LayoutUpperNorfairRightDoorMenu2:
    dw #doormenu_right_9726
    dw #doormenu_right_970E
    dw #doormenu_right_9816
    dw #doormenu_right_97DA
    dw #doormenu_right_9546
    dw #doormenu_right_9426
    dw #doormenu_right_935A
    dw #doormenu_right_9282
    dw #doormenu_right_9336
    dw #doormenu_right_931E
    dw #doormenu_right_9312
    dw #doormenu_right_9342
    dw #doormenu_right_967E
    dw #doormenu_right_968A
    dw #doormenu_right_9666
    dw #doormenu_right_96DE
    dw #doormenu_right_9702
    dw #doormenu_upper_norfair_right_goto_page1
    dw #doormenu_upper_norfair_right_goto_page3
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

LayoutUpperNorfairRightDoorMenu3:
    dw #doormenu_right_9696
    dw #doormenu_right_9786
    dw #doormenu_right_979E
    dw #doormenu_right_9732
    dw #doormenu_right_95CA
    dw #doormenu_right_95BE
    dw #doormenu_right_95A6
    dw #doormenu_right_976E
    dw #doormenu_right_9636
    dw #doormenu_right_965A
    dw #doormenu_right_964E
    dw #doormenu_right_962A
    dw #doormenu_upper_norfair_right_goto_page1
    dw #doormenu_upper_norfair_right_goto_page2
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_upper_norfair_right_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #LayoutUpperNorfairRightDoorMenu)

doormenu_upper_norfair_right_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #LayoutUpperNorfairRightDoorMenu2)

doormenu_upper_norfair_right_goto_page3:
    %cm_adjacent_submenu("GOTO PAGE THREE", #LayoutUpperNorfairRightDoorMenu3)

doormenu_right_974A:
    %cm_jsl("UN Acid Snakes Tunnel", #doorsubmenu_select, #$00A8)

doormenu_right_97AA:
    %cm_jsl("UN Bat Cave", #doorsubmenu_select, #$00A9)

doormenu_right_956A:
    %cm_jsl("UN Bubble Mtn (Lower)", #doorsubmenu_select, #$00AA)

doormenu_right_955E:
    %cm_jsl("UN Bubble Mtn (Mid-Lower)", #doorsubmenu_select, #$00AB)

doormenu_right_959A:
    %cm_jsl("UN Bubble Mtn (Mid-Upper)", #doorsubmenu_select, #$00AC)

doormenu_right_9552:
    %cm_jsl("UN Bubble Mtn (Upper)", #doorsubmenu_select, #$00AD)

doormenu_right_92D6:
    %cm_jsl("UN Business Center (Lower)", #doorsubmenu_select, #$00AE)

doormenu_right_9306:
    %cm_jsl("UN Business Center (Mid)", #doorsubmenu_select, #$00AF)

doormenu_right_92BE:
    %cm_jsl("UN Business Center (Upper)", #doorsubmenu_select, #$00B0)

doormenu_right_928E:
    %cm_jsl("UN Cathedral", #doorsubmenu_select, #$00B1)

doormenu_right_92A6:
    %cm_jsl("UN Cathedral Entrance", #doorsubmenu_select, #$00B2)

doormenu_right_9402:
    %cm_jsl("UN Crocomire Escape", #doorsubmenu_select, #$00B3)

doormenu_right_9822:
    %cm_jsl("UN Crocomire Save", #doorsubmenu_select, #$00B4)

doormenu_right_93A2:
    %cm_jsl("UN Croc Speedway (Lower)", #doorsubmenu_select, #$00B5)

doormenu_right_93AE:
    %cm_jsl("UN Croc Speedway (Upper)", #doorsubmenu_select, #$00B6)

doormenu_right_9612:
    %cm_jsl("UN Double Chamber (Lower)", #doorsubmenu_select, #$00B7)

doormenu_right_9606:
    %cm_jsl("UN Double Chamber (Upper)", #doorsubmenu_select, #$00B8)

doormenu_right_9726:
    %cm_jsl("UN Farming (Lower)", #doorsubmenu_select, #$00B9)

doormenu_right_970E:
    %cm_jsl("UN Farming (Upper)", #doorsubmenu_select, #$00BA)

doormenu_right_9816:
    %cm_jsl("UN Frog Savestation", #doorsubmenu_select, #$00BB)

doormenu_right_97DA:
    %cm_jsl("UN Frog Speedway", #doorsubmenu_select, #$00BC)

doormenu_right_9546:
    %cm_jsl("UN Green Bubbles Missiles", #doorsubmenu_select, #$00BD)

doormenu_right_9426:
    %cm_jsl("UN Hi Jump Energy Tank", #doorsubmenu_select, #$00BE)

doormenu_right_935A:
    %cm_jsl("UN Ice Beam", #doorsubmenu_select, #$00BF)

doormenu_right_9282:
    %cm_jsl("UN Ice Beam Acid", #doorsubmenu_select, #$00C0)

doormenu_right_9336:
    %cm_jsl("UN Ice Beam Gate (Lower)", #doorsubmenu_select, #$00C1)

doormenu_right_931E:
    %cm_jsl("UN Ice Beam Gate (Middle)", #doorsubmenu_select, #$00C2)

doormenu_right_9312:
    %cm_jsl("UN Ice Beam Gate (Upper)", #doorsubmenu_select, #$00C3)

doormenu_right_9342:
    %cm_jsl("UN Ice Beam Tutorial", #doorsubmenu_select, #$00C4)

doormenu_right_967E:
    %cm_jsl("UN Kronic Boost (Lower)", #doorsubmenu_select, #$00C5)

doormenu_right_968A:
    %cm_jsl("UN Kronic Boost (Middle)", #doorsubmenu_select, #$00C6)

doormenu_right_9666:
    %cm_jsl("UN Kronic Boost (Upper)", #doorsubmenu_select, #$00C7)

doormenu_right_96DE:
    %cm_jsl("UN Lava Dive", #doorsubmenu_select, #$00C8)

doormenu_right_9702:
    %cm_jsl("UN Lower Norfair Elevator", #doorsubmenu_select, #$00C9)

doormenu_right_9696:
    %cm_jsl("UN Magdollite Tunnel", #doorsubmenu_select, #$00CA)

doormenu_right_9786:
    %cm_jsl("UN Nutella Refill", #doorsubmenu_select, #$00CB)

doormenu_right_979E:
    %cm_jsl("UN Purple Farming", #doorsubmenu_select, #$00CC)

doormenu_right_9732:
    %cm_jsl("UN Rising Tide", #doorsubmenu_select, #$00CD)

doormenu_right_95CA:
    %cm_jsl("UN Single Chamber", #doorsubmenu_select, #$00CE)

doormenu_right_95BE:
    %cm_jsl("UN Speed Booster", #doorsubmenu_select, #$00CF)

doormenu_right_95A6:
    %cm_jsl("UN Speed Booster Hall", #doorsubmenu_select, #$00D0)

doormenu_right_976E:
    %cm_jsl("UN Spiky Acid Snake Tunnel", #doorsubmenu_select, #$00D1)

doormenu_right_9636:
    %cm_jsl("UN Spiky Platforms Tunnel", #doorsubmenu_select, #$00D2)

doormenu_right_965A:
    %cm_jsl("UN Volcano (Lower)", #doorsubmenu_select, #$00D3)

doormenu_right_964E:
    %cm_jsl("UN Volcano (Upper)", #doorsubmenu_select, #$00D4)

doormenu_right_962A:
    %cm_jsl("UN Wave Beam", #doorsubmenu_select, #$00D5)

LayoutWestMaridiaRightDoorMenu:
    dw #doormenu_right_A510
    dw #doormenu_right_A4F8
    dw #doormenu_right_A414
    dw #doormenu_right_A378
    dw #doormenu_right_A3D8
    dw #doormenu_right_A33C
    dw #doormenu_right_A324
    dw #doormenu_right_A408
    dw #doormenu_right_A5E8
    dw #doormenu_right_A45C
    dw #doormenu_right_A438
    dw #doormenu_right_A480
    dw #doormenu_right_A36C
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_A510:
    %cm_jsl("WM Crab Hole (Lower)", #doorsubmenu_select, #$00D6)

doormenu_right_A4F8:
    %cm_jsl("WM Crab Hole (Upper)", #doorsubmenu_select, #$00D7)

doormenu_right_A414:
    %cm_jsl("WM Crab Tunnel", #doorsubmenu_select, #$00D8)

doormenu_right_A378:
    %cm_jsl("WM East Tunnel", #doorsubmenu_select, #$00D9)

doormenu_right_A3D8:
    %cm_jsl("WM Fish Tank", #doorsubmenu_select, #$00DA)

doormenu_right_A33C:
    %cm_jsl("WM Glass Tunnel", #doorsubmenu_select, #$00DB)

doormenu_right_A324:
    %cm_jsl("WM Glass Tunnel Save", #doorsubmenu_select, #$00DC)

doormenu_right_A408:
    %cm_jsl("WM Mama Turtle", #doorsubmenu_select, #$00DD)

doormenu_right_A5E8:
    %cm_jsl("WM Maridia Map", #doorsubmenu_select, #$00DE)

doormenu_right_A45C:
    %cm_jsl("WM Mount Everest (Tunnel)", #doorsubmenu_select, #$00DF)

doormenu_right_A438:
    %cm_jsl("WM Mount Everest (Upper)", #doorsubmenu_select, #$00E0)

doormenu_right_A480:
    %cm_jsl("WM Red Fish", #doorsubmenu_select, #$00E1)

doormenu_right_A36C:
    %cm_jsl("WM West Tunnel", #doorsubmenu_select, #$00E2)

LayoutWreckedShipRightDoorMenu:
    dw #doormenu_right_A1EC
    dw #doormenu_right_A1E0
    dw #doormenu_right_A2A0
    dw #doormenu_right_A1A4
    dw #doormenu_right_A198
    dw #doormenu_right_A18C
    dw #doormenu_right_A2F4
    dw #doormenu_right_A270
    dw #doormenu_right_A27C
    dw #doormenu_right_A1B0
    dw #doormenu_right_A300
    dw #doormenu_right_A210
    dw #doormenu_right_A1F8
    dw #doormenu_right_A2C4
    dw #doormenu_right_A24C
    dw #doormenu_right_A2D0
    dw #doormenu_right_A318
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_A1EC:
    %cm_jsl("WS Assembly Line", #doorsubmenu_select, #$00E3)

doormenu_right_A1E0:
    %cm_jsl("WS Attic", #doorsubmenu_select, #$00E4)

doormenu_right_A2A0:
    %cm_jsl("WS Basement", #doorsubmenu_select, #$00E5)

doormenu_right_A1A4:
    %cm_jsl("WS Bowling Alley (Lower)", #doorsubmenu_select, #$00E6)

doormenu_right_A198:
    %cm_jsl("WS Bowling Alley (Middle)", #doorsubmenu_select, #$00E7)

doormenu_right_A18C:
    %cm_jsl("WS Bowling Alley (Upper)", #doorsubmenu_select, #$00E8)

doormenu_right_A2F4:
    %cm_jsl("WS East Supers", #doorsubmenu_select, #$00E9)

doormenu_right_A270:
    %cm_jsl("WS Electric Death (Lower)", #doorsubmenu_select, #$00EA)

doormenu_right_A27C:
    %cm_jsl("WS Electric Death (Upper)", #doorsubmenu_select, #$00EB)

doormenu_right_A1B0:
    %cm_jsl("WS Entrance", #doorsubmenu_select, #$00EC)

doormenu_right_A300:
    %cm_jsl("WS Gravity Suit", #doorsubmenu_select, #$00ED)

doormenu_right_A210:
    %cm_jsl("WS Main Shaft (Lower)", #doorsubmenu_select, #$00EE)

doormenu_right_A1F8:
    %cm_jsl("WS Main Shaft (Upper)", #doorsubmenu_select, #$00EF)

doormenu_right_A2C4:
    %cm_jsl("WS Phantoon", #doorsubmenu_select, #$00F0)

doormenu_right_A24C:
    %cm_jsl("WS Spiky Death", #doorsubmenu_select, #$00F1)

doormenu_right_A2D0:
    %cm_jsl("WS Sponge Bath", #doorsubmenu_select, #$00F2)

doormenu_right_A318:
    %cm_jsl("WS Wrecked Ship Save", #doorsubmenu_select, #$00F3)

LayoutYellowMaridiaRightDoorMenu:
    dw #doormenu_right_A630
    dw #doormenu_right_A750
    dw #doormenu_right_A5F4
    dw #doormenu_right_A5D0
    dw #doormenu_right_A57C
    dw #doormenu_right_A498
    dw #doormenu_right_A558
    dw #doormenu_right_A540
    dw #doormenu_right_A4D4
    dw #doormenu_right_A564
    dw #$0000
    %cm_header("SELECT RIGHT DOOR")

doormenu_right_A630:
    %cm_jsl("YM Bug Sand Hole", #doorsubmenu_select, #$00F4)

doormenu_right_A750:
    %cm_jsl("YM Butterfly", #doorsubmenu_select, #$00F5)

doormenu_right_A5F4:
    %cm_jsl("YM Forgotten Highway Save", #doorsubmenu_select, #$00F6)

doormenu_right_A5D0:
    %cm_jsl("YM Kassiuz", #doorsubmenu_select, #$00F7)

doormenu_right_A57C:
    %cm_jsl("YM Maridia Elevator", #doorsubmenu_select, #$00F8)

doormenu_right_A498:
    %cm_jsl("YM Northwest Maridia Bugs", #doorsubmenu_select, #$00F9)

doormenu_right_A558:
    %cm_jsl("YM Plasma", #doorsubmenu_select, #$00FA)

doormenu_right_A540:
    %cm_jsl("YM Plasma Tutorial", #doorsubmenu_select, #$00FB)

doormenu_right_A4D4:
    %cm_jsl("YM Pseudo Plasma Spark", #doorsubmenu_select, #$00FC)

doormenu_right_A564:
    %cm_jsl("YM Thread The Needle", #doorsubmenu_select, #$00FD)

layout_leftright_rightdoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_destination
    dw #$0000
    dw #doormenu_right_8FEE     ; Blue Brinstar
    dw #doormenu_right_8EDA
    dw #doormenu_right_8EC2
    dw #doormenu_right_8EE6
    dw #doormenu_right_8EF2
    dw #doormenu_right_8E9E
    dw #doormenu_right_ABA0     ; Ceres
    dw #doormenu_right_ABB8
    dw #doormenu_right_AB88
    dw #doormenu_right_AB58
    dw #doormenu_right_AB70
    dw #doormenu_right_94AA     ; Croc's Lair
    dw #doormenu_right_93DE
    dw #doormenu_right_94FE
    dw #doormenu_right_94E6
    dw #doormenu_right_94B6
    dw #doormenu_right_943E
    dw #doormenu_right_94DA
    dw #doormenu_right_9462
    dw #doormenu_right_9486
    dw #doormenu_right_8C82     ; Crateria
    dw #doormenu_right_8BAA
    dw #doormenu_right_8A12
    dw #doormenu_right_8B6E
    dw #doormenu_right_8C76
    dw #doormenu_right_8C6A
    dw #doormenu_right_8AAE
    dw #doormenu_right_8A2A
    dw #doormenu_right_8C2E
    dw #doormenu_right_89B2
    dw #doormenu_right_8AC6
    dw #doormenu_right_8A66
    dw #doormenu_right_8BB6
    dw #doormenu_right_8A7E
    dw #doormenu_right_8B1A
    dw #doormenu_right_8952
    dw #doormenu_right_8C46
    dw #doormenu_right_8916
    dw #doormenu_right_892E
    dw #doormenu_right_8C22
    dw #doormenu_right_8ADE
    dw #doormenu_right_8B92
    dw #doormenu_right_89A6
    dw #doormenu_right_899A
    dw #doormenu_right_895E
    dw #doormenu_right_8B7A
    dw #doormenu_right_8BCE
    dw #doormenu_right_9216
    dw #doormenu_right_91E6
    dw #doormenu_right_8BE6
    dw #doormenu_right_8B26
    dw #doormenu_right_89CA
    dw #doormenu_right_8F22     ; Green Brinstar
    dw #doormenu_right_8D7E
    dw #doormenu_right_8D36
    dw #doormenu_right_8D66
    dw #doormenu_right_8D4E
    dw #doormenu_right_8F52
    dw #doormenu_right_8F3A
    dw #doormenu_right_8E7A
    dw #doormenu_right_8CFA
    dw #doormenu_right_8CBE
    dw #doormenu_right_8CCA
    dw #doormenu_right_8D12
    dw #doormenu_right_8D06
    dw #doormenu_right_8CB2
    dw #doormenu_right_8EFE
    dw #doormenu_right_8E32
    dw #doormenu_right_A684     ; Green Maridia
    dw #doormenu_right_A660
    dw #doormenu_right_A780
    dw #doormenu_right_A7B0
    dw #doormenu_right_A7A4
    dw #doormenu_right_A8C4
    dw #doormenu_right_A7C8
    dw #doormenu_right_A63C
    dw #doormenu_right_A654
    dw #doormenu_right_A528
    dw #doormenu_right_9192     ; Kraid's Lair
    dw #doormenu_right_91CE
    dw #doormenu_right_91AA
    dw #doormenu_right_920A
    dw #doormenu_right_9252
    dw #doormenu_right_922E
    dw #doormenu_right_925E
    dw #doormenu_right_914A
    dw #doormenu_right_913E
    dw #doormenu_right_9996     ; Lower Norfair
    dw #doormenu_right_988E
    dw #doormenu_right_9AAA
    dw #doormenu_right_9A92
    dw #doormenu_right_9876
    dw #doormenu_right_98A6
    dw #doormenu_right_99D2
    dw #doormenu_right_9AB6
    dw #doormenu_right_99F6
    dw #doormenu_right_9852
    dw #doormenu_right_9A32
    dw #doormenu_right_992A
    dw #doormenu_right_9942
    dw #doormenu_right_9906
    dw #doormenu_right_98E2
    dw #doormenu_right_995A
    dw #doormenu_right_98B2
    dw #doormenu_right_98CA
    dw #doormenu_right_9A86
    dw #doormenu_right_99AE
    dw #doormenu_right_9A4A
    dw #doormenu_right_9A1A
    dw #doormenu_right_998A
    dw #doormenu_right_9972
    dw #doormenu_right_8E0E     ; Pink Brinstar
    dw #doormenu_right_8DDE
    dw #doormenu_right_8E02
    dw #doormenu_right_8DD2
    dw #doormenu_right_8DF6
    dw #doormenu_right_8DBA
    dw #doormenu_right_8DA2
    dw #doormenu_right_8FB2
    dw #doormenu_right_8FCA
    dw #doormenu_right_8F82
    dw #doormenu_right_8D1E
    dw #doormenu_right_8D2A
    dw #doormenu_right_A744     ; Pink Maridia
    dw #doormenu_right_A708
    dw #doormenu_right_A7D4
    dw #doormenu_right_A90C
    dw #doormenu_right_A84C
    dw #doormenu_right_A7E0
    dw #doormenu_right_A4B0
    dw #doormenu_right_A978
    dw #doormenu_right_A888
    dw #doormenu_right_A954
    dw #doormenu_right_A8DC
    dw #doormenu_right_A900
    dw #doormenu_right_A930
    dw #doormenu_right_A894
    dw #doormenu_right_A840
    dw #doormenu_right_A834
    dw #doormenu_right_A93C
    dw #doormenu_right_910E     ; Red Brinstar
    dw #doormenu_right_9096
    dw #doormenu_right_90AE
    dw #doormenu_right_90A2
    dw #doormenu_right_907E
    dw #doormenu_right_905A
    dw #doormenu_right_926A
    dw #doormenu_right_904E
    dw #doormenu_right_9036
    dw #doormenu_right_902A
    dw #doormenu_right_90F6
    dw #doormenu_right_9132
    dw #doormenu_right_AA44     ; Tourian
    dw #doormenu_right_AA14
    dw #doormenu_right_AA2C
    dw #doormenu_right_A9B4
    dw #doormenu_right_A9D8
    dw #doormenu_right_A9F0
    dw #doormenu_right_AA8C
    dw #doormenu_right_AAC8
    dw #doormenu_right_AABC
    dw #doormenu_right_AAB0
    dw #doormenu_right_AA68
    dw #doormenu_right_AB10
    dw #doormenu_right_AB28
    dw #doormenu_right_AA98
    dw #doormenu_right_A984
    dw #doormenu_right_AB40
    dw #doormenu_right_974A     ; Upper Norfair
    dw #doormenu_right_97AA
    dw #doormenu_right_956A
    dw #doormenu_right_955E
    dw #doormenu_right_959A
    dw #doormenu_right_9552
    dw #doormenu_right_92D6
    dw #doormenu_right_9306
    dw #doormenu_right_92BE
    dw #doormenu_right_928E
    dw #doormenu_right_92A6
    dw #doormenu_right_9402
    dw #doormenu_right_9822
    dw #doormenu_right_93A2
    dw #doormenu_right_93AE
    dw #doormenu_right_9612
    dw #doormenu_right_9606
    dw #doormenu_right_9726
    dw #doormenu_right_970E
    dw #doormenu_right_9816
    dw #doormenu_right_97DA
    dw #doormenu_right_9546
    dw #doormenu_right_9426
    dw #doormenu_right_935A
    dw #doormenu_right_9282
    dw #doormenu_right_9336
    dw #doormenu_right_931E
    dw #doormenu_right_9312
    dw #doormenu_right_9342
    dw #doormenu_right_967E
    dw #doormenu_right_968A
    dw #doormenu_right_9666
    dw #doormenu_right_96DE
    dw #doormenu_right_9702
    dw #doormenu_right_9696
    dw #doormenu_right_9786
    dw #doormenu_right_979E
    dw #doormenu_right_9732
    dw #doormenu_right_95CA
    dw #doormenu_right_95BE
    dw #doormenu_right_95A6
    dw #doormenu_right_976E
    dw #doormenu_right_9636
    dw #doormenu_right_965A
    dw #doormenu_right_964E
    dw #doormenu_right_962A
    dw #doormenu_right_A510     ; West Maridia
    dw #doormenu_right_A4F8
    dw #doormenu_right_A414
    dw #doormenu_right_A378
    dw #doormenu_right_A3D8
    dw #doormenu_right_A33C
    dw #doormenu_right_A324
    dw #doormenu_right_A408
    dw #doormenu_right_A5E8
    dw #doormenu_right_A45C
    dw #doormenu_right_A438
    dw #doormenu_right_A480
    dw #doormenu_right_A36C
    dw #doormenu_right_A1EC     ; Wrecked Ship
    dw #doormenu_right_A1E0
    dw #doormenu_right_A2A0
    dw #doormenu_right_A1A4
    dw #doormenu_right_A198
    dw #doormenu_right_A18C
    dw #doormenu_right_A2F4
    dw #doormenu_right_A270
    dw #doormenu_right_A27C
    dw #doormenu_right_A1B0
    dw #doormenu_right_A300
    dw #doormenu_right_A210
    dw #doormenu_right_A1F8
    dw #doormenu_right_A2C4
    dw #doormenu_right_A24C
    dw #doormenu_right_A2D0
    dw #doormenu_right_A318
    dw #doormenu_right_A630     ; Yellow Maridia
    dw #doormenu_right_A750
    dw #doormenu_right_A5F4
    dw #doormenu_right_A5D0
    dw #doormenu_right_A57C
    dw #doormenu_right_A498
    dw #doormenu_right_A558
    dw #doormenu_right_A540
    dw #doormenu_right_A4D4
    dw #doormenu_right_A564
    dw #$0000


; -----------------
; Up Doors
; -----------------
LayoutBlueBrinstarUpDoorMenu:
    dw #$0000
    %cm_header("SELECT UP DOOR")

LayoutCeresUpDoorMenu:
    dw #$0000
    %cm_header("SELECT UP DOOR")

LayoutCrocLairUpDoorMenu:
    dw #doormenu_up_944A
    dw #doormenu_up_949E
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_944A:
    %cm_jsl("CL Post Croc Farm", #doorsubmenu_select, #$0000)

doormenu_up_949E:
    %cm_jsl("CL Post Croc Shaft", #doorsubmenu_select, #$0001)

LayoutCrateriaUpDoorMenu:
    dw #doormenu_up_8A42
    dw #doormenu_up_8ABA
    dw #doormenu_up_8A8A
    dw #doormenu_up_898E
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_8A42:
    %cm_jsl("CR Crateria Kihunters", #doorsubmenu_select, #$0002)

doormenu_up_8ABA:
    %cm_jsl("CR Forgotten Highway Elbow", #doorsubmenu_select, #$0003)

doormenu_up_8A8A:
    %cm_jsl("CR Forgotten Highway Kago", #doorsubmenu_select, #$0004)

doormenu_up_898E:
    %cm_jsl("CR Parlor", #doorsubmenu_select, #$0005)

LayoutGreenBrinstarUpDoorMenu:
    dw #doormenu_up_8E56
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_8E56:
    %cm_jsl("GB Spore Spawn", #doorsubmenu_select, #$0006)

LayoutGreenMaridiaUpDoorMenu:
    dw #$0000
    %cm_header("SELECT UP DOOR")

LayoutKraidLairUpDoorMenu:
    dw #doormenu_up_916E
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_916E:
    %cm_jsl("KL Kihunters", #doorsubmenu_select, #$0007)

LayoutLowerNorfairUpDoorMenu:
    dw #doormenu_up_99EA
    dw #doormenu_up_99C6
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_99EA:
    %cm_jsl("LN Kihunter Shaft", #doorsubmenu_select, #$0008)

doormenu_up_99C6:
    %cm_jsl("LN Spring Ball Maze", #doorsubmenu_select, #$0009)

LayoutPinkBrinstarUpDoorMenu:
    dw #$0000
    %cm_header("SELECT UP DOOR")

LayoutPinkMaridiaUpDoorMenu:
    dw #doormenu_up_A714
    dw #doormenu_up_A720
    dw #doormenu_up_A600
    dw #doormenu_up_A768
    dw #doormenu_up_A8AC
    dw #doormenu_up_A8B8
    dw #doormenu_up_A864
    dw #doormenu_up_A858
    dw #doormenu_up_A6FC
    dw #doormenu_up_A6CC
    dw #doormenu_up_A6E4
    dw #doormenu_up_A6B4
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_A714:
    %cm_jsl("PM Aqueduct (Left)", #doorsubmenu_select, #$000A)

doormenu_up_A720:
    %cm_jsl("PM Aqueduct (Right)", #doorsubmenu_select, #$000B)

doormenu_up_A600:
    %cm_jsl("PM Aqueduct Tube", #doorsubmenu_select, #$000C)

doormenu_up_A768:
    %cm_jsl("PM Botwoon Hallway", #doorsubmenu_select, #$000D)

doormenu_up_A8AC:
    %cm_jsl("PM Botwoon Sand (Left)", #doorsubmenu_select, #$000E)

doormenu_up_A8B8:
    %cm_jsl("PM Botwoon Sand (Right)", #doorsubmenu_select, #$000F)

doormenu_up_A864:
    %cm_jsl("PM Botwoon Tank (Left)", #doorsubmenu_select, #$0010)

doormenu_up_A858:
    %cm_jsl("PM Botwoon Tank (Right)", #doorsubmenu_select, #$0011)

doormenu_up_A6FC:
    %cm_jsl("PM East Aqueduct Quicksand", #doorsubmenu_select, #$0012)

doormenu_up_A6CC:
    %cm_jsl("PM East Sand Hole", #doorsubmenu_select, #$0013)

doormenu_up_A6E4:
    %cm_jsl("PM West Aqueduct Quicksand", #doorsubmenu_select, #$0014)

doormenu_up_A6B4:
    %cm_jsl("PM West Sand Hole", #doorsubmenu_select, #$0015)

LayoutRedBrinstarUpDoorMenu:
    dw #$0000
    %cm_header("SELECT UP DOOR")

LayoutTourianUpDoorMenu:
    dw #doormenu_up_AAEC
    dw #doormenu_up_A9FC
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_AAEC:
    %cm_jsl("TR Tourian Escape 1", #doorsubmenu_select, #$0016)

doormenu_up_A9FC:
    %cm_jsl("TR Metroids 4", #doorsubmenu_select, #$0017)

LayoutUpperNorfairUpDoorMenu:
    dw #doormenu_up_9576
    dw #doormenu_up_93D2
    dw #doormenu_up_97FE
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_9576:
    %cm_jsl("UN Bubble Mtn", #doorsubmenu_select, #$0018)

doormenu_up_93D2:
    %cm_jsl("UN Croc Speedway", #doorsubmenu_select, #$0019)

doormenu_up_97FE:
    %cm_jsl("UN Red Pirates Shaft", #doorsubmenu_select, #$001A)

LayoutWestMaridiaUpDoorMenu:
    dw #doormenu_up_A39C
    dw #doormenu_up_A444
    dw #doormenu_up_A450
    dw #doormenu_up_A474
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_A39C:
    %cm_jsl("WM Main Street", #doorsubmenu_select, #$001B)

doormenu_up_A444:
    %cm_jsl("WM Mount Everest (Left)", #doorsubmenu_select, #$001C)

doormenu_up_A450:
    %cm_jsl("WM Mount Everest (Right)", #doorsubmenu_select, #$001D)

doormenu_up_A474:
    %cm_jsl("WM Red Fish", #doorsubmenu_select, #$001E)

LayoutWreckedShipUpDoorMenu:
    dw #doormenu_up_A1C8
    dw #doormenu_up_A21C
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_A1C8:
    %cm_jsl("WS Attic", #doorsubmenu_select, #$001F)

doormenu_up_A21C:
    %cm_jsl("WS Main Shaft", #doorsubmenu_select, #$0020)

LayoutYellowMaridiaUpDoorMenu:
    dw #doormenu_up_A624
    dw #doormenu_up_A8A0
    dw #doormenu_up_A5AC
    dw #doormenu_up_A4E0
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_A624:
    %cm_jsl("YM Bug Sand Hole", #doorsubmenu_select, #$0021)

doormenu_up_A8A0:
    %cm_jsl("YM Plasma Beach Quicksand", #doorsubmenu_select, #$0022)

doormenu_up_A5AC:
    %cm_jsl("YM Plasma Spark", #doorsubmenu_select, #$0023)

doormenu_up_A4E0:
    %cm_jsl("YM Pseudo Plasma Spark", #doorsubmenu_select, #$0024)

layout_updown_updoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_source
    dw #$0000
    dw #doormenu_up_944A        ; Croc's Lair
    dw #doormenu_up_949E
    dw #doormenu_up_8A42        ; Crateria
    dw #doormenu_up_8ABA
    dw #doormenu_up_8A8A
    dw #doormenu_up_898E
    dw #doormenu_up_8E56        ; Green Brinstar
    dw #doormenu_up_916E        ; Kraid's Lair
    dw #doormenu_up_99EA        ; Lower Norfair
    dw #doormenu_up_99C6
    dw #doormenu_up_A714        ; Pink Maridia
    dw #doormenu_up_A720
    dw #doormenu_up_A600
    dw #doormenu_up_A768
    dw #doormenu_up_A8AC
    dw #doormenu_up_A8B8
    dw #doormenu_up_A864
    dw #doormenu_up_A858
    dw #doormenu_up_A6FC
    dw #doormenu_up_A6CC
    dw #doormenu_up_A6E4
    dw #doormenu_up_A6B4
    dw #doormenu_up_AAEC        ; Tourian
    dw #doormenu_up_A9FC
    dw #doormenu_up_9576        ; Upper Norfair
    dw #doormenu_up_93D2
    dw #doormenu_up_97FE
    dw #doormenu_up_A39C        ; West Maridia
    dw #doormenu_up_A444
    dw #doormenu_up_A450
    dw #doormenu_up_A474
    dw #doormenu_up_A1C8        ; Wrecked Ship
    dw #doormenu_up_A21C
    dw #doormenu_up_A624        ; Yellow Maridia
    dw #doormenu_up_A8A0
    dw #doormenu_up_A5AC
    dw #doormenu_up_A4E0
    dw #$0000


; -----------------
; Down Doors
; -----------------
LayoutBlueBrinstarDownDoorMenu:
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

LayoutCeresDownDoorMenu:
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

LayoutCrocLairDownDoorMenu:
    dw #doormenu_down_93EA
    dw #doormenu_down_94CE
    dw #doormenu_down_947A
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

doormenu_down_93EA:
    %cm_jsl("CL Crocomire", #doorsubmenu_select, #$0000)

doormenu_down_94CE:
    %cm_jsl("CL Post Croc Jump", #doorsubmenu_select, #$0001)

doormenu_down_947A:
    %cm_jsl("CL Post Croc Shaft", #doorsubmenu_select, #$0002)

LayoutCrateriaDownDoorMenu:
    dw #doormenu_down_8B3E
    dw #doormenu_down_8A96
    dw #doormenu_down_8A4E
    dw #doormenu_down_8AF6
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

doormenu_down_8B3E:
    %cm_jsl("CR Climb", #doorsubmenu_select, #$0003)

doormenu_down_8A96:
    %cm_jsl("CR Crab Maze", #doorsubmenu_select, #$0004)

doormenu_down_8A4E:
    %cm_jsl("CR Forgotten Elevator", #doorsubmenu_select, #$0005)

doormenu_down_8AF6:
    %cm_jsl("CR Red Brin Elevator", #doorsubmenu_select, #$0006)

LayoutGreenBrinstarDownDoorMenu:
    dw #doormenu_down_8E3E
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

doormenu_down_8E3E:
    %cm_jsl("GB Spore Spawn Kihunters", #doorsubmenu_select, #$0007)

LayoutGreenMaridiaDownDoorMenu:
    dw #doormenu_down_0008
    dw #doormenu_down_A678
    dw #doormenu_down_000A
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

doormenu_down_0008:
    %cm_jsl("GM East Sand Hall", #doorsubmenu_select, #$0008)

doormenu_down_A678:
    %cm_jsl("GM Oasis", #doorsubmenu_select, #$0009)

doormenu_down_000A:
    %cm_jsl("GM West Sand Hall", #doorsubmenu_select, #$000A)

LayoutKraidLairDownDoorMenu:
    dw #doormenu_down_9156
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

doormenu_down_9156:
    %cm_jsl("KL Warehouse Zeela", #doorsubmenu_select, #$000B)

LayoutLowerNorfairDownDoorMenu:
    dw #doormenu_down_99DE
    dw #doormenu_down_9A26
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

doormenu_down_99DE:
    %cm_jsl("LN Jail Power Bombs", #doorsubmenu_select, #$000C)

doormenu_down_9A26:
    %cm_jsl("LN Wasteland", #doorsubmenu_select, #$000D)

LayoutPinkBrinstarDownDoorMenu:
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

LayoutPinkMaridiaDownDoorMenu:
    dw #doormenu_down_A72C
    dw #doormenu_down_A60C
    dw #doormenu_down_0010
    dw #doormenu_down_0011
    dw #doormenu_down_0012
    dw #doormenu_down_0013
    dw #doormenu_down_A4BC
    dw #doormenu_down_A6F0
    dw #doormenu_down_A6C0
    dw #doormenu_down_A6D8
    dw #doormenu_down_A6A8
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

doormenu_down_A72C:
    %cm_jsl("PM Aqueduct", #doorsubmenu_select, #$000E)

doormenu_down_A60C:
    %cm_jsl("PM Aqueduct Tube", #doorsubmenu_select, #$000F)

doormenu_down_0010:
    %cm_jsl("PM Below Botwoon (Left)", #doorsubmenu_select, #$0010)

doormenu_down_0011:
    %cm_jsl("PM Below Botwoon (Right)", #doorsubmenu_select, #$0011)

doormenu_down_0012:
    %cm_jsl("PM Botwoon Sand (Left)", #doorsubmenu_select, #$0012)

doormenu_down_0013:
    %cm_jsl("PM Botwoon Sand (Right)", #doorsubmenu_select, #$0013)

doormenu_down_A4BC:
    %cm_jsl("PM Crab Shaft", #doorsubmenu_select, #$0014)

doormenu_down_A6F0:
    %cm_jsl("PM East Aqueduct Quicksand", #doorsubmenu_select, #$0015)

doormenu_down_A6C0:
    %cm_jsl("PM East Sand Hole", #doorsubmenu_select, #$0016)

doormenu_down_A6D8:
    %cm_jsl("PM West Aqueduct Quicksand", #doorsubmenu_select, #$0017)

doormenu_down_A6A8:
    %cm_jsl("PM West Sand Hole", #doorsubmenu_select, #$0018)

LayoutRedBrinstarDownDoorMenu:
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

LayoutTourianDownDoorMenu:
    dw #doormenu_down_AA08
    dw #doormenu_down_AAF8
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

doormenu_down_AA08:
    %cm_jsl("TR Blue Hoppers", #doorsubmenu_select, #$0019)

doormenu_down_AAF8:
    %cm_jsl("TR Tourian Escape 2", #doorsubmenu_select, #$001A)

LayoutUpperNorfairDownDoorMenu:
    dw #doormenu_down_9762
    dw #doormenu_down_96AE
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

doormenu_down_9762:
    %cm_jsl("UN Acid Snakes Tunnel", #doorsubmenu_select, #$001B)

doormenu_down_96AE:
    %cm_jsl("UN Purple Shaft", #doorsubmenu_select, #$001C)

LayoutWestMaridiaDownDoorMenu:
    dw #doormenu_down_A3F0
    dw #doormenu_down_A3FC
    dw #doormenu_down_A330
    dw #doormenu_down_A42C
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

doormenu_down_A3F0:
    %cm_jsl("WM Fish Tank (Left)", #doorsubmenu_select, #$001D)

doormenu_down_A3FC:
    %cm_jsl("WM Fish Tank (Right)", #doorsubmenu_select, #$001E)

doormenu_down_A330:
    %cm_jsl("WM Glass Tunnel", #doorsubmenu_select, #$001F)

doormenu_down_A42C:
    %cm_jsl("WM Mount Everest", #doorsubmenu_select, #$0020)

LayoutWreckedShipDownDoorMenu:
    dw #doormenu_down_A294
    dw #doormenu_down_A228
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

doormenu_down_A294:
    %cm_jsl("WS Basement", #doorsubmenu_select, #$0021)

doormenu_down_A228:
    %cm_jsl("WS Main Shaft", #doorsubmenu_select, #$0022)

LayoutYellowMaridiaDownDoorMenu:
    dw #doormenu_down_0023
    dw #doormenu_down_0024
    dw #$0000
    %cm_header("SELECT DOWN DOOR")

doormenu_down_0023:
    %cm_jsl("YM Butterfly", #doorsubmenu_select, #$0023)

doormenu_down_0024:
    %cm_jsl("YM Plasma Beach Quicksand", #doorsubmenu_select, #$0024)

layout_updown_downdoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_destination
    dw #$0000
    dw #doormenu_down_93EA      ; Croc's Lair
    dw #doormenu_down_94CE
    dw #doormenu_down_947A
    dw #doormenu_down_8B3E      ; Crateria
    dw #doormenu_down_8A96
    dw #doormenu_down_8A4E
    dw #doormenu_down_8AF6
    dw #doormenu_down_8E3E      ; Green Brinstar
    dw #doormenu_down_0008      ; Green Maridia
    dw #doormenu_down_A678
    dw #doormenu_down_000A
    dw #doormenu_down_9156      ; Kraid's Lair
    dw #doormenu_down_99DE      ; Lower Norfair
    dw #doormenu_down_9A26
    dw #doormenu_down_A72C      ; Pink Maridia
    dw #doormenu_down_A60C
    dw #doormenu_down_0010
    dw #doormenu_down_0011
    dw #doormenu_down_0012
    dw #doormenu_down_0013
    dw #doormenu_down_A4BC
    dw #doormenu_down_A6F0
    dw #doormenu_down_A6C0
    dw #doormenu_down_A6D8
    dw #doormenu_down_A6A8
    dw #doormenu_down_AA08      ; Tourian
    dw #doormenu_down_AAF8
    dw #doormenu_down_9762      ; Upper Norfair
    dw #doormenu_down_96AE
    dw #doormenu_down_A3F0      ; West Maridia
    dw #doormenu_down_A3FC
    dw #doormenu_down_A330
    dw #doormenu_down_A42C
    dw #doormenu_down_A294      ; Wrecked Ship
    dw #doormenu_down_A228
    dw #doormenu_down_0023      ; Yellow Maridia
    dw #doormenu_down_0024
    dw #$0000


print pc, " layoutmenu end"
pullpc
