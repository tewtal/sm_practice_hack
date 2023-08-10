
pushpc
org $E68000
print pc, " layoutmenu start"

; -----------------
; Room Layout menu
; -----------------

LayoutMenu:
    dw #layout_magnetstairs
    dw #$FFFF
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
    CMP #$0001 : BEQ .areaboss
    LDA !ram_door_portal_flags : AND !DOOR_PORTAL_EXCLUDE_MODE_IFRAMES_MASK
    TDC : ORA !ram_cm_door_dynamic : STA !ram_door_portal_flags
    LDA !ram_door_source : CMP #$000C : BMI .checkDown
    TDC : STA !ram_door_source
  .checkDown
    LDA !ram_door_destination : CMP #$0008 : BMI .done
    TDC : STA !ram_door_destination
  .done
    RTL
  .off
    STA !ram_door_portal_flags
    RTL
  .areaboss
    LDA !ram_door_portal_flags : AND !DOOR_PORTAL_EXCLUDE_MODE_MASK
    ORA !ram_cm_door_dynamic : ORA !DOOR_PORTAL_IFRAMES_BIT : STA !ram_door_portal_flags
    LDA !ram_door_source : CMP #$0028 : BMI .checkDest
    TDC : STA !ram_door_source
  .checkDest
    LDA !ram_door_destination : CMP #$0028 : BMI .done
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

layout_areaboss_sourcedoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_source
    dw #$0000
    dw #doormenu_boss_A96C    ; Bosses
    dw #doormenu_boss_A840
    dw #doormenu_boss_91CE
    dw #doormenu_boss_91B6
    dw #doormenu_boss_98CA
    dw #doormenu_boss_A2C4
    dw #doormenu_boss_98BE
    dw #doormenu_boss_A2AC
    dw #doormenu_area_8A42    ; Crateria
    dw #doormenu_area_8C52
    dw #doormenu_area_8C22
    dw #doormenu_area_8E9E
    dw #doormenu_area_8AEA
    dw #doormenu_area_93EA    ; Croc
    dw #doormenu_area_A708    ; East Maridia
    dw #doormenu_area_8AA2
    dw #doormenu_area_91E6    ; G4
    dw #doormenu_area_8BFE    ; Green Brinstar
    dw #doormenu_area_8E86
    dw #doormenu_area_8F0A
    dw #doormenu_area_913E    ; Kraid's Lair
    dw #doormenu_area_96D2    ; Lower Norfair
    dw #doormenu_area_9A4A
    dw #doormenu_area_90C6    ; Red Brinstar
    dw #doormenu_area_A384
    dw #doormenu_area_A390
    dw #doormenu_area_A330
    dw #doormenu_area_8AF6
    dw #doormenu_area_902A
    dw #doormenu_area_922E    ; Upper Norfair
    dw #doormenu_area_923A
    dw #doormenu_area_93D2
    dw #doormenu_area_967E
    dw #doormenu_area_95FA
    dw #doormenu_area_A510    ; West Maridia
    dw #doormenu_area_A4C8
    dw #doormenu_area_A39C
    dw #doormenu_area_A480
    dw #doormenu_area_8AAE    ; Wrecked Ship
    dw #doormenu_area_89CA
    dw #$0000

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

layout_areaboss_destinationdoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_destination
    dw #$0000
    dw #doormenu_boss_A96C    ; Bosses
    dw #doormenu_boss_A840
    dw #doormenu_boss_91CE
    dw #doormenu_boss_91B6
    dw #doormenu_boss_98CA
    dw #doormenu_boss_A2C4
    dw #doormenu_boss_98BE
    dw #doormenu_boss_A2AC
    dw #doormenu_area_8A42    ; Crateria
    dw #doormenu_area_8C52
    dw #doormenu_area_8C22
    dw #doormenu_area_8E9E
    dw #doormenu_area_8AEA
    dw #doormenu_area_93EA    ; Croc
    dw #doormenu_area_A708    ; East Maridia
    dw #doormenu_area_8AA2
    dw #doormenu_area_91E6    ; G4
    dw #doormenu_area_8BFE    ; Green Brinstar
    dw #doormenu_area_8E86
    dw #doormenu_area_8F0A
    dw #doormenu_area_913E    ; Kraid's Lair
    dw #doormenu_area_96D2    ; Lower Norfair
    dw #doormenu_area_9A4A
    dw #doormenu_area_90C6    ; Red Brinstar
    dw #doormenu_area_A384
    dw #doormenu_area_A390
    dw #doormenu_area_A330
    dw #doormenu_area_8AF6
    dw #doormenu_area_902A
    dw #doormenu_area_922E    ; Upper Norfair
    dw #doormenu_area_923A
    dw #doormenu_area_93D2
    dw #doormenu_area_967E
    dw #doormenu_area_95FA
    dw #doormenu_area_A510    ; West Maridia
    dw #doormenu_area_A4C8
    dw #doormenu_area_A39C
    dw #doormenu_area_A480
    dw #doormenu_area_8AAE    ; Wrecked Ship
    dw #doormenu_area_89CA
    dw #$0000

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

LayoutAreaBossDoorMenu:
    dw #doormenu_boss_A96C    ; Bosses
    dw #doormenu_boss_A840
    dw #doormenu_boss_91CE
    dw #doormenu_boss_91B6
    dw #doormenu_boss_98CA
    dw #doormenu_boss_A2C4
    dw #doormenu_boss_98BE
    dw #doormenu_boss_A2AC
    dw #doormenu_area_8A42    ; Crateria
    dw #doormenu_area_8C52
    dw #doormenu_area_8C22
    dw #doormenu_area_8E9E
    dw #doormenu_area_8AEA
    dw #doormenu_area_93EA    ; Croc
    dw #doormenu_area_A708    ; East Maridia
    dw #doormenu_area_8AA2
    dw #doormenu_area_91E6    ; G4
    dw #doormenu_area_8BFE    ; Green Brinstar
    dw #doormenu_area_8E86
    dw #doormenu_area_8F0A
    dw #doormenu_areaboss_goto_page2
    dw #$0000
    %cm_header("SELECT DOOR")

LayoutAreaBossDoorMenu2:
    dw #doormenu_area_913E    ; Kraid's Lair
    dw #doormenu_area_96D2    ; Lower Norfair
    dw #doormenu_area_9A4A
    dw #doormenu_area_90C6    ; Red Brinstar
    dw #doormenu_area_A384
    dw #doormenu_area_A390
    dw #doormenu_area_A330
    dw #doormenu_area_8AF6
    dw #doormenu_area_902A
    dw #doormenu_area_922E    ; Upper Norfair
    dw #doormenu_area_923A
    dw #doormenu_area_93D2
    dw #doormenu_area_967E
    dw #doormenu_area_95FA
    dw #doormenu_area_A510    ; West Maridia
    dw #doormenu_area_A4C8
    dw #doormenu_area_A39C
    dw #doormenu_area_A480
    dw #doormenu_area_8AAE    ; Wrecked Ship
    dw #doormenu_area_89CA
    dw #doormenu_areaboss_goto_page1
    dw #$0000
    %cm_header("SELECT DOOR")

doormenu_areaboss_goto_page1:
    %cm_adjacent_submenu("GOTO PAGE ONE", #LayoutAreaBossDoorMenu)

doormenu_areaboss_goto_page2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #LayoutAreaBossDoorMenu2)

doormenu_select:
{
    LDA !ram_cm_door_menu_value : STA $16
    LDA !ram_cm_door_menu_bank : STA $18
    TYA : STA [$16]
    JML cm_previous_menu
}


; -----------------
; Boss Doors
; -----------------
doormenu_boss_A96C:
    %cm_jsl("BOSS Draygon", #doormenu_select, #$0000)

doormenu_boss_A840:
    %cm_jsl("BOSS East Maridia", #doormenu_select, #$0001)

doormenu_boss_91CE:
    %cm_jsl("BOSS Kraid", #doormenu_select, #$0002)

doormenu_boss_91B6:
    %cm_jsl("BOSS Kraid Lair", #doormenu_select, #$0003)

doormenu_boss_98CA:
    %cm_jsl("BOSS Lower Norfair", #doormenu_select, #$0004)

doormenu_boss_A2C4:
    %cm_jsl("BOSS Phantoon", #doormenu_select, #$0005)

doormenu_boss_98BE:
    %cm_jsl("BOSS Ridley", #doormenu_select, #$0006)

doormenu_boss_A2AC:
    %cm_jsl("BOSS Wrecked Ship", #doormenu_select, #$0007)


; -----------------
; Area Doors
; -----------------
doormenu_area_8A42:
    %cm_jsl("CRAT Crateria Kihunters", #doormenu_select, #$0008)

doormenu_area_8C52:
    %cm_jsl("CRAT Green Pirates Shaft", #doormenu_select, #$0009)

doormenu_area_8C22:
    %cm_jsl("CRAT Lower Mushrooms", #doormenu_select, #$000A)

doormenu_area_8E9E:
    %cm_jsl("CRAT Meme Route", #doormenu_select, #$000B)

doormenu_area_8AEA:
    %cm_jsl("CRAT Moat", #doormenu_select, #$000C)

doormenu_area_93EA:
    %cm_jsl("CROC Crocomire", #doormenu_select, #$000D)

doormenu_area_A708:
    %cm_jsl("EM Aqueduct", #doormenu_select, #$000E)

doormenu_area_8AA2:
    %cm_jsl("EM Forgotten Highway", #doormenu_select, #$000F)

doormenu_area_91E6:
    %cm_jsl("G4 Statues Hallway", #doormenu_select, #$0010)

doormenu_area_8BFE:
    %cm_jsl("GB Green Brin Elevator", #doormenu_select, #$0011)

doormenu_area_8E86:
    %cm_jsl("GB Green Hill Zone", #doormenu_select, #$0012)

doormenu_area_8F0A:
    %cm_jsl("GB Noob Bridge", #doormenu_select, #$0013)

doormenu_area_913E:
    %cm_jsl("KL Warehouse", #doormenu_select, #$0014)

doormenu_area_96D2:
    %cm_jsl("LN Lava Dive", #doormenu_select, #$0015)

doormenu_area_9A4A:
    %cm_jsl("LN Three Musketeers", #doormenu_select, #$0016)

doormenu_area_90C6:
    %cm_jsl("RB Caterpillar", #doormenu_select, #$0017)

doormenu_area_A384:
    %cm_jsl("RB East Tunnel (Lower)", #doormenu_select, #$0018)

doormenu_area_A390:
    %cm_jsl("RB East Tunnel (Upper)", #doormenu_select, #$0019)

doormenu_area_A330:
    %cm_jsl("RB Glass Tunnel", #doormenu_select, #$001A)

doormenu_area_8AF6:
    %cm_jsl("RB Red Brin Elevator", #doormenu_select, #$001B)

doormenu_area_902A:
    %cm_jsl("RB Red Tower", #doormenu_select, #$001C)

doormenu_area_922E:
    %cm_jsl("UN Business Center (Left)", #doormenu_select, #$001D)

doormenu_area_923A:
    %cm_jsl("UN Business Center (Right)", #doormenu_select, #$001E)

doormenu_area_93D2:
    %cm_jsl("UN Crocomire Speedway", #doormenu_select, #$001F)

doormenu_area_967E:
    %cm_jsl("UN Kronic Boost", #doormenu_select, #$0020)

doormenu_area_95FA:
    %cm_jsl("UN Single Chamber", #doormenu_select, #$0021)

doormenu_area_A510:
    %cm_jsl("WM Crab Hole", #doormenu_select, #$0022)

doormenu_area_A4C8:
    %cm_jsl("WM Crab Shaft", #doormenu_select, #$0023)

doormenu_area_A39C:
    %cm_jsl("WM Main Street", #doormenu_select, #$0024)

doormenu_area_A480:
    %cm_jsl("WM Red Fish", #doormenu_select, #$0025)

doormenu_area_8AAE:
    %cm_jsl("WS Crab Maze", #doormenu_select, #$0026)

doormenu_area_89CA:
    %cm_jsl("WS West Ocean", #doormenu_select, #$0027)


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
    %cm_jsl("PB Pink Maridia", #doormenu_selectsubmenu, #LayoutPinkMaridiaDoorMenu)

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
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000

LayoutPinkBrinstarDoorMenu:
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000

LayoutPinkMaridiaDoorMenu:
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000

LayoutRedBrinstarDoorMenu:
    dw #$0000
    dw #$0000
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
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000

LayoutWreckedShipDoorMenu:
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000

LayoutYellowMaridiaDoorMenu:
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000


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
    dw #doormenu_left_8976
    dw #doormenu_left_8982
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

doormenu_left_8976:
    %cm_jsl("CR Parlor (Lower)", #doorsubmenu_select, #$0029)

doormenu_left_8982:
    %cm_jsl("CR Parlor (Middle)", #doorsubmenu_select, #$002A)

doormenu_left_896A:
    %cm_jsl("CR Parlor (Upper)", #doorsubmenu_select, #$002B)

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
    %cm_jsl("GB Etecoon E-Tank (Lower)", #doorsubmenu_select, #$003C)

doormenu_left_8F2E:
    %cm_jsl("GB Etecoon E-Tank (Upper)", #doorsubmenu_select, #$003D)

doormenu_left_9012:
    %cm_jsl("GB Etecoon Save", #doorsubmenu_select, #$003E)

doormenu_left_8F5E:
    %cm_jsl("GB Etecoon Supers", #doorsubmenu_select, #$003F)

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

doormenu_left_98BE:
    %cm_jsl("LN Ridley", #doorsubmenu_select, #$0000)

doormenu_left_8DEA:
    %cm_jsl("PB Big Pink (Lower)", #doorsubmenu_select, #$0000)

doormenu_left_8E26:
    %cm_jsl("PB Big Pink (Mid-Lower)", #doorsubmenu_select, #$0000)

doormenu_left_8E1A:
    %cm_jsl("PB Big Pink (Mid-Upper)", #doorsubmenu_select, #$0000)

doormenu_left_8DC6:
    %cm_jsl("PB Big Pink (Upper)", #doorsubmenu_select, #$0000)

doormenu_left_8DAE:
    %cm_jsl("PB Dachora", #doorsubmenu_select, #$0000)

doormenu_left_A96C:
    %cm_jsl("PM Draygon", #doorsubmenu_select, #$0000)

doormenu_left_90C6:
    %cm_jsl("RB Caterpillar", #doorsubmenu_select, #$0000)

doormenu_left_96D2:
    %cm_jsl("UN Lava Dive", #doorsubmenu_select, #$0000)

doormenu_left_95FA:
    %cm_jsl("UN Single Chamber", #doorsubmenu_select, #$0000)

doormenu_left_A51C:
    %cm_jsl("WM Crab Hole (Lower)", #doorsubmenu_select, #$0000)

doormenu_left_A504:
    %cm_jsl("WM Crab Hole (Upper)", #doorsubmenu_select, #$0000)

doormenu_left_A4C8:
    %cm_jsl("WM Crab Shaft", #doorsubmenu_select, #$0000)

doormenu_left_A384:
    %cm_jsl("WM East Tunnel (Lower)", #doorsubmenu_select, #$0000)

doormenu_left_A390:
    %cm_jsl("WM East Tunnel (Upper)", #doorsubmenu_select, #$0000)

doormenu_left_A3E4:
    %cm_jsl("WM Fish Tank", #doorsubmenu_select, #$0000)

doormenu_left_A354:
    %cm_jsl("WM Glass Tunnel (Lower)", #doorsubmenu_select, #$0000)

doormenu_left_A348:
    %cm_jsl("WM Glass Tunnel (Upper)", #doorsubmenu_select, #$0000)

doormenu_left_A3A8:
    %cm_jsl("WM Main Street (Lower)", #doorsubmenu_select, #$0000)

doormenu_left_A3B4:
    %cm_jsl("WM Main Street (Middle)", #doorsubmenu_select, #$0000)

doormenu_left_A3CC:
    %cm_jsl("WM Main Street (Tunnel)", #doorsubmenu_select, #$0000)

doormenu_left_A3C0:
    %cm_jsl("WM Main Street (Upper)", #doorsubmenu_select, #$0000)

doormenu_left_A360:
    %cm_jsl("WM West Tunnel", #doorsubmenu_select, #$0000)

doormenu_left_A2AC:
    %cm_jsl("WS Basement", #doorsubmenu_select, #$0000)

doormenu_left_A264:
    %cm_jsl("WS Electric Death", #doorsubmenu_select, #$0000)

layout_leftright_leftdoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_destination
    dw #$0000
    dw #doormenu_left_8FA6    ; Blue Brinstar
    dw #doormenu_left_8FFA
    dw #doormenu_left_8FE2
    dw #doormenu_left_8ECE
    dw #doormenu_left_8EAA
    dw #doormenu_left_ABAC    ; Ceres
    dw #doormenu_left_AB4C
    dw #doormenu_left_AB94
    dw #doormenu_left_AB64
    dw #doormenu_left_AB7C
    dw #doormenu_left_9516    ; Croc's Lair
    dw #doormenu_left_9522
    dw #doormenu_left_950A
    dw #doormenu_left_94F2
    dw #doormenu_left_94C2
    dw #doormenu_left_9456
    dw #doormenu_left_9432
    dw #doormenu_left_946E
    dw #doormenu_left_9492
    dw #doormenu_left_8C8E    ; Crateria
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
    dw #doormenu_left_8976
    dw #doormenu_left_8982
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
    dw #doormenu_left_8F16    ; Green Brinstar
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
    dw #doormenu_left_A690    ; Green Maridia
    dw #doormenu_left_A66C
    dw #doormenu_left_A798
    dw #doormenu_left_A7BC
    dw #doormenu_left_A78C
    dw #doormenu_left_A8D0
    dw #doormenu_left_A648
    dw #doormenu_left_A534
    dw #doormenu_left_919E    ; Kraid's Lair
    dw #doormenu_left_917A
    dw #doormenu_left_9186
    dw #doormenu_left_91DA
    dw #doormenu_left_91B6
    dw #doormenu_left_91C2
    dw #doormenu_left_9162
    dw #doormenu_left_923A
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
    %cm_jsl("GB Etecoon E-Tank (Lower)", #doorsubmenu_select, #$0039)

doormenu_right_8F3A:
    %cm_jsl("GB Etecoon E-Tank (Upper)", #doorsubmenu_select, #$003A)

doormenu_right_8E7A:
    %cm_jsl("GB Green Hill Zone", #doorsubmenu_select, #$003B)

doormenu_right_8CFA:
    %cm_jsl("GB Main Shaft (Lower)", #doorsubmenu_select, #$003C)

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

doormenu_right_A528:
    %cm_jsl("GM West Sand Hall Tunnel", #doorsubmenu_select, #$004C)

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
    %cm_jsl("KL Baby Kraid", #doorsubmenu_select, #$004D)

doormenu_right_91CE:
    %cm_jsl("KL Kraid", #doorsubmenu_select, #$004E)

doormenu_right_91AA:
    %cm_jsl("KL Kraid Eye Door", #doorsubmenu_select, #$004F)

doormenu_right_920A:
    %cm_jsl("KL Kraid Refill", #doorsubmenu_select, #$0050)

doormenu_right_9252:
    %cm_jsl("KL Varia Suit", #doorsubmenu_select, #$0051)

doormenu_right_922E:
    %cm_jsl("KL Warehouse Entrance", #doorsubmenu_select, #$0052)

doormenu_right_925E:
    %cm_jsl("KL Warehouse Save", #doorsubmenu_select, #$0053)

doormenu_right_914A:
    %cm_jsl("KL Warehouse Zeela (Lower)", #doorsubmenu_select, #$0054)

doormenu_right_913E:
    %cm_jsl("KL Warehouse Zeela (Upper)", #doorsubmenu_select, #$0055)

doormenu_right_98CA:
    %cm_jsl("LN Ridley Farming", #doorsubmenu_select, #$0000)

doormenu_right_9A4A:
    %cm_jsl("LN Three Musketeers", #doorsubmenu_select, #$0000)

doormenu_right_8DBA:
    %cm_jsl("PB Dachora (Lower)", #doorsubmenu_select, #$0000)

doormenu_right_8DA2:
    %cm_jsl("PB Dachora (Upper)", #doorsubmenu_select, #$0000)

doormenu_right_8D1E:
    %cm_jsl("PB Spo-Spo Supers (Lower)", #doorsubmenu_select, #$0000)

doormenu_right_8D2A:
    %cm_jsl("PB Spo-Spo Supers (Upper)", #doorsubmenu_select, #$0000)

doormenu_right_A708:
    %cm_jsl("PM Aqueduct", #doorsubmenu_select, #$0000)

doormenu_right_A840:
    %cm_jsl("PM Precious (Lower)", #doorsubmenu_select, #$0000)

doormenu_right_902A:
    %cm_jsl("RB Red Tower", #doorsubmenu_select, #$0000)

doormenu_right_967E:
    %cm_jsl("UN Kronic Boost", #doorsubmenu_select, #$0000)

doormenu_right_A510:
    %cm_jsl("WM Crab Hole (Lower)", #doorsubmenu_select, #$0000)

doormenu_right_A4F8:
    %cm_jsl("WM Crab Hole (Upper)", #doorsubmenu_select, #$0000)

doormenu_right_A378:
    %cm_jsl("WM East Tunnel", #doorsubmenu_select, #$0000)

doormenu_right_A3D8:
    %cm_jsl("WM Fish Tank", #doorsubmenu_select, #$0000)

doormenu_right_A33C:
    %cm_jsl("WM Glass Tunnel", #doorsubmenu_select, #$0000)

doormenu_right_A324:
    %cm_jsl("WM Glass Tunnel Save", #doorsubmenu_select, #$0000)

doormenu_right_A480:
    %cm_jsl("WM Red Fish", #doorsubmenu_select, #$0000)

doormenu_right_A36C:
    %cm_jsl("WM West Tunnel", #doorsubmenu_select, #$0000)

doormenu_right_A1E0:
    %cm_jsl("WS Attic", #doorsubmenu_select, #$0000)

doormenu_right_A1A4:
    %cm_jsl("WS Bowling Alley (Lower)", #doorsubmenu_select, #$0000)

doormenu_right_A198:
    %cm_jsl("WS Bowling Alley (Middle)", #doorsubmenu_select, #$0000)

doormenu_right_A18C:
    %cm_jsl("WS Bowling Alley (Upper)", #doorsubmenu_select, #$0000)

doormenu_right_A1B0:
    %cm_jsl("WS Entrance", #doorsubmenu_select, #$0000)

doormenu_right_A300:
    %cm_jsl("WS Gravity Suit", #doorsubmenu_select, #$0000)

doormenu_right_A2C4:
    %cm_jsl("WS Phantoon", #doorsubmenu_select, #$0000)

layout_leftright_rightdoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_source
    dw #$0000
    dw #doormenu_right_8FEE   ; Blue Brinstar
    dw #doormenu_right_8EDA
    dw #doormenu_right_8EC2
    dw #doormenu_right_8EE6
    dw #doormenu_right_8EF2
    dw #doormenu_right_8E9E
    dw #doormenu_right_ABA0   ; Ceres
    dw #doormenu_right_ABB8
    dw #doormenu_right_AB88
    dw #doormenu_right_AB58
    dw #doormenu_right_AB70
    dw #doormenu_right_94AA   ; Croc's Lair
    dw #doormenu_right_93DE
    dw #doormenu_right_94FE
    dw #doormenu_right_94E6
    dw #doormenu_right_94B6
    dw #doormenu_right_943E
    dw #doormenu_right_94DA
    dw #doormenu_right_9462
    dw #doormenu_right_9486
    dw #doormenu_right_8C82   ; Crateria
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
    dw #doormenu_right_8F22   ; Green Brinstar
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
    dw #doormenu_right_A684   ; Green Maridia
    dw #doormenu_right_A660
    dw #doormenu_right_A780
    dw #doormenu_right_A7B0
    dw #doormenu_right_A7A4
    dw #doormenu_right_A8C4
    dw #doormenu_right_A7C8
    dw #doormenu_right_A63C
    dw #doormenu_right_A528
    dw #doormenu_right_9192   ; Kraid's Lair
    dw #doormenu_right_91CE
    dw #doormenu_right_91AA
    dw #doormenu_right_920A
    dw #doormenu_right_9252
    dw #doormenu_right_922E
    dw #doormenu_right_925E
    dw #doormenu_right_914A
    dw #doormenu_right_913E
    dw #$0000


; -----------------
; Up Doors
; -----------------
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
    dw #doormenu_up_8A7E
    dw #doormenu_up_898E
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_8A42:
    %cm_jsl("CR Crateria Kihunters", #doorsubmenu_select, #$0002)

doormenu_up_8ABA:
    %cm_jsl("CR Forgotten Highway Elbow", #doorsubmenu_select, #$0003)

doormenu_up_8A7E:
    %cm_jsl("CR Forgotten Highway Kago", #doorsubmenu_select, #$0004)

doormenu_up_898E:
    %cm_jsl("CR Parlor", #doorsubmenu_select, #$0005)

LayoutGreenBrinstarUpDoorMenu:
    dw #doormenu_up_8E56
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_8E56:
    %cm_jsl("GB Spore Spawn", #doorsubmenu_select, #$0006)

LayoutKraidLairUpDoorMenu:
    dw #doormenu_up_916E
    dw #$0000
    %cm_header("SELECT UP DOOR")

doormenu_up_916E:
    %cm_jsl("KL Kihunters", #doorsubmenu_select, #$0007)

doormenu_up_A6CC:
    %cm_jsl("PM East Sand Hole", #doorsubmenu_select, #$0000)

doormenu_up_A600:
    %cm_jsl("PM Aqueduct Tube", #doorsubmenu_select, #$0000)

doormenu_up_A6B4:
    %cm_jsl("PM West Sand Hole", #doorsubmenu_select, #$0000)

doormenu_up_93D2:
    %cm_jsl("UN Crocomire Speedway", #doorsubmenu_select, #$0000)

doormenu_up_A39C:
    %cm_jsl("WM Main Street", #doorsubmenu_select, #$0000)

layout_updown_updoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_destination
    dw #$0000
    dw #doormenu_up_944A      ; Croc's Lair
    dw #doormenu_up_949E
    dw #doormenu_up_8A42      ; Crateria
    dw #doormenu_up_8ABA
    dw #doormenu_up_8A7E
    dw #doormenu_up_898E
    dw #doormenu_up_8E56      ; Green Brinstar
    dw #doormenu_up_916E      ; Kraid's Lair
    dw #$0000


; -----------------
; Down Doors
; -----------------
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

doormenu_down_A3F0:
    %cm_jsl("WM Fish Tank (Left)", #doorsubmenu_select, #$0000)

doormenu_down_A3FC:
    %cm_jsl("WM Fish Tank (Right)", #doorsubmenu_select, #$0000)

doormenu_down_A330:
    %cm_jsl("WM Glass Tunnel", #doorsubmenu_select, #$0000)

layout_updown_downdoor:
    dw !ACTION_CHOICE_JSL_TEXT
    dl #!ram_door_source
    dw #$0000
    dw #doormenu_down_93EA    ; Croc's Lair
    dw #doormenu_down_94CE
    dw #doormenu_down_947A
    dw #doormenu_down_8B3E    ; Crateria
    dw #doormenu_down_8A96
    dw #doormenu_down_8A4E
    dw #doormenu_down_8AF6
    dw #doormenu_down_8E3E    ; Green Brinstar
    dw #doormenu_down_0008    ; Green Maridia
    dw #doormenu_down_A678
    dw #doormenu_down_000A
    dw #doormenu_down_9156    ; Kraid's Lair
    dw #$0000


print pc, " layoutmenu end"
pullpc
