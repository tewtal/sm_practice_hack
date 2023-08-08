
; Crab Shaft save station load point
org $80C995
maridia_save_station_9:
    db #$A3, #$D1, #$68, #$A4, #$00, #$00, #$00, #$00, #$00, #$02, #$78, #$00, #$60, #$00

; Main Street save station load point
org $80C9A3
maridia_save_station_10:
    db #$C9, #$CF, #$D8, #$A3, #$00, #$00, #$00, #$01, #$00, #$05, #$78, #$00, #$10, #$00

; Crab Shaft save station map icon location
org $82CA17
maridia_save_station_map_icon_9:
    db #$90, #$00, #$50, #$00

; Main Street save station map icon location
org $82CA1B
maridia_save_station_map_icon_10:
    db #$58, #$00, #$78, #$00

; Hijack loading destination room CRE
org $82E1D9
    JSR hijack_loading_room_CRE

; Hijack room transition between loading level data and setting up scrolling
org $82E387
    LDA #hijack_after_load_level_data

; Hijack call to create door closing PLM
org $82E4C9
    JSR hijack_door_closing_plm

org $82F800
print pc, " layout bank82 start"

hijack_loading_room_CRE:
{
    LDA !ram_door_portal_flags : BEQ .noChange
    PHX : BIT !DOOR_PORTAL_JUMP_BIT : BNE .jump
    AND !DOOR_PORTAL_MODE_MASK : CMP #$0002 : BEQ .leftRight : BPL .upDown
    LDA !ram_door_source : ASL : TAX
    LDA portals_areaboss_vanilla_table,X : CMP !DOOR_ID : BEQ .srcToDest
    LDA !ram_door_destination : ASL : TAX
    LDA portals_areaboss_vanilla_table,X : CMP !DOOR_ID : BEQ .destToSrc

  .noChangePLX
    PLX

  .noChange
    ; Overridden routine
    JMP $DDF1

  .leftRight
    LDA !ram_door_source : ASL : TAX
    LDA portals_left_vanilla_table,X : CMP !DOOR_ID : BEQ .leftToRight
    LDA !ram_door_destination : ASL : TAX
    LDA portals_right_vanilla_table,X : CMP !DOOR_ID : BEQ .rightToLeft
    BRA .noChangePLX

  .upDown
    LDA !ram_door_source : ASL : TAX
    LDA portals_up_vanilla_table,X : CMP !DOOR_ID : BEQ .upToDown
    LDA !ram_door_destination : ASL : TAX
    LDA portals_down_vanilla_table,X : CMP !DOOR_ID : BEQ .downToUp
    BRA .noChangePLX

  .destToSrc
    LDA !ram_door_source : ASL : TAX
    BRA .pickAreaBossDoor

  .jump
    AND !DOOR_PORTAL_EXCLUDE_JUMP_MASK : STA !ram_door_portal_flags

  .srcToDest
    LDA !ram_door_destination : ASL : TAX

  .pickAreaBossDoor
    PHX : LDA portals_areaboss_custom_inverted_table,X : TAX
    LDA $830003,X : AND #$0003 : STA $12
    LDX !DOOR_ID : LDA $830003,X : PLX
    AND #$0003 : CMP $12 : BEQ .pickAreaBossVanilla
    LDA portals_areaboss_custom_inverted_table,X
    BRA .loadBitset

  .rightToLeft
    LDA !ram_door_source : ASL : TAX
    LDA portals_left_vanilla_inverted_table,X : BNE .loadBitset
    BRL .noChangePLX

  .leftToRight
    LDA !ram_door_destination : ASL : TAX
    LDA portals_right_vanilla_inverted_table,X : BNE .loadBitset
    BRL .noChangePLX

  .downToUp
    LDA !ram_door_source : ASL : TAX
    LDA portals_up_vanilla_inverted_table,X : BNE .loadBitset
    BRL .noChangePLX

  .upToDown
    LDA !ram_door_destination : ASL : TAX
    LDA portals_down_vanilla_inverted_table,X : BNE .loadBitset
    BRL .noChangePLX

  .pickAreaBossVanilla
    LDA portals_areaboss_vanilla_inverted_table,X

  .loadBitset
    STA !DOOR_ID

    ; Implement the DDF1 routine here to load CRE bitset
    ; Note we already have pushed X to the stack,
    ; and A conveniently contains the DOOR_ID
    TAX : PHB
    PEA $8F00 : PLB : PLB

    LDA $830000,X : TAX
    LDA !CRE_BITSET : STA !PREVIOUS_CRE_BITSET
    LDA $0008,X : AND #$00FF

    ; Ensure either BIT #$0004 or #$0002 are set
    ; so that the CRE is loaded or reloaded
    BIT #$0004 : BNE .storeBitset
    ORA #$0002

  .storeBitset
    STA !CRE_BITSET
    LDA !ram_door_portal_flags : BIT !DOOR_PORTAL_JUMP_BIT : BEQ .changedDoorDone
    LDA #$0080 : STA !SAMUS_IFRAME_TIMER

  .changedDoorDone
    ; Remember we pushed X and bank in opposite order
    PLB : PLX
    RTS
}

hijack_after_load_level_data:
{
    LDA $079B : CMP #$D646 : BEQ .pants_room : CMP #$D6FD : BNE .done

    ; Aqueduct Farm Sand Pit needs to be handled before the door scroll
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .done
    JSL layout_asm_aqueductfarmsandpit_external

  .done
    JMP $E38E

  .pants_room
    ; Pants Room needs to be handled before the door scroll
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ .done
    JSL layout_asm_pants_room_external
    JMP $E38E
}

hijack_door_closing_plm:
{
    PHP : PHB
    %ai16()
    LDA $078D : CMP #$A654 : BNE .done
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BNE .done

    ; Aqueduct Farm Sand Pit should not have a door closing PLM
    ; if using the warp door while Area Rando off
    PLB : PLP : RTS

  .done
    JMP $E8EF
}

print pc, " layout bank82 end"
warnpc $82FA00 ; presets.asm


; Crateria Kihunters bottom door
org $838B00
hook_layout_asm_redtowerelevator_door0:
    dw #layout_asm_crateriakihunters_bottomdoor

; Statues Hallway left door
org $838C5C
hook_layout_asm_greenpirateshaft_door2:
    dw #layout_asm_cutscene_g4skip

; Construction Zone left door
org $838EB4
hook_layout_asm_morphballroom_door1:
    dw #layout_asm_constructionzone

; Caterpillar middle-left door
org $839094
hook_layout_asm_hellway_door1:
    ; Use same asm as elevator door, freeing up asm at $BE1A
    dw $BA21

; Caterpillar top-left door
org $8390E8
hook_layout_asm_betapbs_door0:
    dw #layout_asm_caterpillar_no_scrolls

; East Tunnel bottom-right door
org $839238
hook_layout_asm_warehouse_door0:
    ; Use same asm as bottom-left door
    dw $E345

; Caterpillar near-right door
org $839274
hook_layout_asm_redtowersave_door0:
    dw #layout_asm_caterpillar_no_scrolls

; Crocomire Speedway bottom door
org $8393F4
hook_layout_asm_croc_door1:
    dw #layout_asm_clear_bg2_vram_flag

; Main Street bottom door
org $83A33A
hook_layout_asm_glasstunnel_door0:
    dw #layout_asm_clear_bg2_vram_flag

; Crab Shaft left door
org $83A472
hook_layout_asm_mteverest_door5:
    dw #layout_asm_crabshaft_no_scrolls

; Crab Shaft top door
org $83A4EA
hook_layout_asm_fakeplasmaspark_door1:
    dw #layout_asm_crabshaft_no_scrolls

; East Tunnel top-right door
org $83A51A
hook_layout_asm_crabhole_door2:
    dw #layout_asm_easttunnel_no_scrolls

; West Sand Hall left door
org $83A53E
hook_layout_asm_westsandhalltunnel_door1:
    dw #layout_asm_westsandhall

; West Sand Hall unused door definition
org $83A654
hook_layout_asm_westsandhall_door2:
    dw #$D6FD
    db #$00, #$05, #$3E, #$06, #$03, #$00
    dw #$8000
    dw #$0000

; West Sand Hall right door
org $83A66A
hook_layout_asm_oasis_door0:
    dw #layout_asm_westsandhall

; West Sand Hall top sand door
org $83A6BE
hook_layout_asm_westsandhole_door1:
    dw #layout_asm_westsandhall

; Overwrite unused door with Shaktool to Pants
org $83A804
hook_layout_asm_shaktool_to_pants:
    dw #$D646
    db #$00, #$05, #$0E, #$16, #$01, #$02
    dw #$8000
    dw #$E3C8

; Overwrite unused door with Pants to Pants
org $83A810
hook_layout_asm_pants_to_pants:
    dw #$D646
    db #$00, #$04, #$01, #$26, #$01, #$03
    dw #$8000
    dw #$0000

; Mother Brain right door
org $83AAD2
hook_layout_asm_rinkashaft_door2:
    dw #layout_asm_mbhp

; Mother Brain left door
org $83AAEA
hook_layout_asm_tourianescape1_door0:
    dw #layout_asm_mbhp

; Magnet Stairs left door
org $83AB6E
hook_layout_asm_fallingtile_door1:
    dw #layout_asm_magnetstairs

; Magnet Stairs right door
org $83AB92
hook_layout_asm_deadscientist_door0:
    dw #layout_asm_magnetstairs


org $83C000
print pc, " layout bank83 start"

; List of vanilla area/boss doors
; NOTE: Table order must match layoutmenu.asm
portals_areaboss_vanilla_table:
    dw $A96C   ; Draygon Room door 0 --> Precious Room
    dw $A840   ; Precious Room door 1 --> Draygon Room
    dw $91CE   ; Kraid Room door 0 --> Kraid Eye Door Room
    dw $91B6   ; Kraid Eye Door Room door 1 --> Kraid Room
    dw $98CA   ; Lower Norfair Farming door 0 --> Ridley Room
    dw $A2C4   ; Phantoon Room door 0 --> Basement
    dw $98BE   ; Ridley Room door 1 --> Lower Norfair Farming
    dw $A2AC   ; Basement door 2 --> Phantoon Room
    dw $8A42   ; Crateria Kihunters door 2 --> Red Brinstar Elevator
    dw $8C52   ; Green Pirates Shaft door 2 --> Statues Hallway
    dw $8C22   ; Lower Mushrooms door 1 --> Green Brinstar Elevator
    dw $8E9E   ; Morph Ball door 0 --> Green Hill Zone
    dw $8AEA   ; Moat door 1 --> West Ocean
    dw $93EA   ; Crocomire Room door 1 --> Crocomire Speedway
    dw $A708   ; Aqueduct door 0 --> Crab Shaft
    dw $8AA2   ; Forgotten Highway Elbow door 0 --> Crab Maze
    dw $91E6   ; Statues Hallway door 0 --> Green Pirates Shaft
    dw $8BFE   ; Green Brinstar Elevator door 0 --> Lower Mushrooms
    dw $8E86   ; Green Hill Zone door 1 --> Morph Ball
    dw $8F0A   ; Noob Bridge door 1 --> Red Tower
    dw $913E   ; Warehouse Zeela door 0 --> Warehouse Entrance
    dw $96D2   ; Lava Dive door 0 --> Kronic Boost
    dw $9A4A   ; Three Musketeers door 0 --> Single Chamber
    dw $90C6   ; Caterpillar door 4 --> Red Fish Room
    dw $A384   ; East Tunnel door 1 --> Warehouse Entrance
    dw $A390   ; East Tunnel door 2 --> Crab Hole
    dw $A330   ; Glass Tunnel door 0 --> Main Street
    dw $8AF6   ; Red Brinstar Elevator door 0 --> Crateria Kihunters
    dw $902A   ; Red Tower door 1 --> Noob Bridge
    dw $922E   ; Warehouse Entrance door 0 --> East Tunnel
    dw $923A   ; Warehouse Entrance door 1 --> Warehouse Zeela
    dw $93D2   ; Crocomire Speedway door 4 --> Crocomire Room
    dw $967E   ; Kronic Boost door 2 --> Lava Dive
    dw $95FA   ; Single Chamber door 4 --> Three Musketeers
    dw $A510   ; Crab Hole door 2 --> East Tunnel
    dw $A4C8   ; Crab Shaft door 2 --> Aqueduct
    dw $A39C   ; Main Street door 0 --> Glass Tunnel
    dw $A480   ; Red Fish Room door 1 --> Caterpillar
    dw $8AAE   ; Crab Maze door 1 --> Forgotten Highway Elbow
    dw $89CA   ; West Ocean door 0 --> Moat

; NOTE: Table order must match above table with portals inverted
portals_areaboss_vanilla_inverted_table:
    dw $A840   ; Precious Room door 1 --> Draygon Room
    dw $A96C   ; Draygon Room door 0 --> Precious Room
    dw $91B6   ; Kraid Eye Door Room door 1 --> Kraid Room
    dw $91CE   ; Kraid Room door 0 --> Kraid Eye Door Room
    dw $98BE   ; Ridley Room door 1 --> Lower Norfair Farming
    dw $A2AC   ; Basement door 2 --> Phantoon Room
    dw $98CA   ; Lower Norfair Farming door 0 --> Ridley Room
    dw $A2C4   ; Phantoon Room door 0 --> Basement
    dw $8AF6   ; Red Brinstar Elevator door 0 --> Crateria Kihunters
    dw $91E6   ; Statues Hallway door 0 --> Green Pirates Shaft
    dw $8BFE   ; Green Brinstar Elevator door 0 --> Lower Mushrooms
    dw $8E86   ; Green Hill Zone door 1 --> Morph Ball
    dw $89CA   ; West Ocean door 0 --> Moat
    dw $93D2   ; Crocomire Speedway door 4 --> Crocomire Room
    dw $A4C8   ; Crab Shaft door 2 --> Aqueduct
    dw $8AAE   ; Crab Maze door 1 --> Forgotten Highway Elbow
    dw $8C52   ; Green Pirates Shaft door 2 --> Statues Hallway
    dw $8C22   ; Lower Mushrooms door 1 --> Green Brinstar Elevator
    dw $8E9E   ; Morph Ball door 0 --> Green Hill Zone
    dw $902A   ; Red Tower door 1 --> Noob Bridge
    dw $923A   ; Warehouse Entrance door 1 --> Warehouse Zeela
    dw $967E   ; Kronic Boost door 2 --> Lava Dive
    dw $95FA   ; Single Chamber door 4 --> Three Musketeers
    dw $A480   ; Red Fish Room door 1 --> Caterpillar
    dw $922E   ; Warehouse Entrance door 0 --> East Tunnel
    dw $A510   ; Crab Hole door 2 --> East Tunnel
    dw $A39C   ; Main Street door 0 --> Glass Tunnel
    dw $8A42   ; Crateria Kihunters door 2 --> Red Brinstar Elevator
    dw $8F0A   ; Noob Bridge door 1 --> Red Tower
    dw $A384   ; East Tunnel door 1 --> Warehouse Entrance
    dw $913E   ; Warehouse Zeela door 0 --> Warehouse Entrance
    dw $93EA   ; Crocomire Room door 1 --> Crocomire Speedway
    dw $96D2   ; Lava Dive door 0 --> Kronic Boost
    dw $9A4A   ; Three Musketeers door 0 --> Single Chamber
    dw $A390   ; East Tunnel door 2 --> Crab Hole
    dw $A708   ; Aqueduct door 0 --> Crab Shaft
    dw $A330   ; Glass Tunnel door 0 --> Main Street
    dw $90C6   ; Caterpillar door 4 --> Red Fish Room
    dw $8AA2   ; Forgotten Highway Elbow door 0 --> Crab Maze
    dw $8AEA   ; Moat door 1 --> West Ocean

; List of custom portal doors
; NOTE: Table order must match above table
portals_areaboss_custom_inverted_table:
    dw #door_custom_A840_precious_door1                  ; Bosses
    dw #door_custom_A96C_draygon_door0
    dw #door_custom_91B6_kraid_eye_door_door1
    dw #door_custom_91CE_kraid_door0
    dw #door_custom_98BE_ridley_door1
    dw #door_custom_A2AC_basement_door2
    dw #door_custom_98CA_lower_norfair_farming_door0
    dw #door_custom_A2C4_phantoon_door0
    dw #door_custom_8AF6_red_brinstar_elevator_door0     ; Crateria
    dw #door_custom_91E6_statues_hallway_door0
    dw #door_custom_8BFE_green_brinstar_elevator_door0
    dw #door_custom_8E86_green_hill_zone_door1
    dw #door_custom_89CA_west_ocean_door0
    dw #door_custom_93D2_crocomire_speedway_door4        ; Croc
    dw #door_custom_A4C8_crab_shaft_door2                ; East Maridia
    dw #door_custom_8AAE_crab_maze_door1
    dw #door_custom_8C52_green_pirates_shaft_door2       ; G4
    dw #door_custom_8C22_lower_mushrooms_door1           ; Green Brinstar
    dw #door_custom_8E9E_morph_ball_door0
    dw #door_custom_902A_red_tower_door1
    dw #door_custom_923A_warehouse_entrance_door1        ; Kraid's Lair
    dw #door_custom_967E_kronic_boost_door2              ; Lower Norfair
    dw #door_custom_95FA_single_chamber_door4
    dw #door_custom_A480_red_fish_door1                  ; Red Brinstar
    dw #door_custom_922E_warehouse_entrance_door0
    dw #door_custom_A510_crab_hole_door2
    dw #door_custom_A39C_main_street_door0
    dw #door_custom_8A42_crateria_kihunters_door2
    dw #door_custom_8F0A_noob_bridge_door1
    dw #door_custom_A384_east_tunnel_door1               ; Upper Norfair
    dw #door_custom_913E_warehouse_zeela_door0
    dw #door_custom_93EA_crocomire_door1
    dw #door_custom_96D2_lava_dive_door0
    dw #door_custom_9A4A_three_musketeers_door0
    dw #door_custom_A390_east_tunnel_door2               ; West Maridia
    dw #door_custom_A708_aqueduct_door0
    dw #door_custom_A330_glass_tunnel_door0
    dw #door_custom_90C6_caterpillar_door4
    dw #door_custom_8AA2_forgotten_highway_elbow_door0   ; Wrecked Ship
    dw #door_custom_8AEA_moat_door1

; Custom door definitions
; Includes Samus X and Y and an asm pointer
door_custom_89CA_west_ocean_door0:
    dw $95FF   ; Moat
    db $00, $05, $1E, $06, $01, $00
    dw $8000, #door_custom_asm
    dw $01CF, $0088, $0000

door_custom_8A42_crateria_kihunters_door2:
    dw $962A   ; Red Brinstar Elevator
    db $00, $06, $06, $02, $00, $00
    dw $8000, #door_custom_asm
    dw $0080, $0058, $0000

door_custom_8AA2_forgotten_highway_elbow_door0:
    dw $957D   ; Crab Maze
    db $00, $04, $01, $16, $00, $01
    dw $8000, #door_custom_asm
    dw $0034, $0188, $0000

door_custom_8AAE_crab_maze_door1:
    dw $95A8   ; Forgotten Highway Elbow
    db $00, $05, $0E, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $00D1, $0088, $0000

door_custom_8AEA_moat_door1:
    dw $93FE   ; West Ocean
    db $00, $04, $01, $46, $00, $04
    dw $8000, #door_custom_asm
    dw $0034, $0488, $0000

door_custom_8AF6_red_brinstar_elevator_door0:
    dw $948C   ; Crateria Kihunters
    db $00, $07, $16, $2D, $01, $02
    dw $01C0, #door_custom_asm
    dw $014C, $02B8, $B9F1

door_custom_8BFE_green_brinstar_elevator_door0:
    dw $9969   ; Lower Mushrooms
    db $00, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $0036, $0088, $0000

door_custom_8C22_lower_mushrooms_door1:
    dw $9938   ; Green Brinstar Elevator
    db $00, $05, $0E, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $00CC, $0088, $0000

door_custom_8C52_green_pirates_shaft_door2:
    dw $A5ED   ; Statues Hallway
    db $00, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $0034, $0088, #layout_asm_cutscene_g4skip

door_custom_8E86_green_hill_zone_door1:
    dw $9E9F   ; Morph Ball
    db $00, $04, $01, $26, $00, $02
    dw $8000, #door_custom_asm
    dw $0034, $0288, $0000

door_custom_8E9E_morph_ball_door0:
    dw $9E52   ; Green Hill Zone
    db $00, $05, $1E, $06, $01, $00
    dw $8000, #door_custom_asm
    dw $01C7, $0088, $0000

door_custom_8F0A_noob_bridge_door1:
    dw $A253   ; Red Tower
    db $00, $04, $01, $46, $00, $04
    dw $8000, #door_custom_asm
    dw $002F, $0488, $0000

door_custom_902A_red_tower_door1:
    dw $9FBA   ; Noob Bridge
    db $00, $05, $5E, $06, $05, $00
    dw $8000, #door_custom_asm
    dw $05CE, $0088, $0000

door_custom_90C6_caterpillar_door4:
    dw $D104   ; Red Fish Room
    db $40, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $0034, $0088, $BDAF

door_custom_913E_warehouse_zeela_door0:
    dw $A6A1   ; Warehouse Entrance
    db $00, $05, $2E, $06, $02, $00
    dw $8000, #door_custom_asm
    dw $02C7, $0098, $BD3F

door_custom_91B6_kraid_eye_door_door1:
    dw $A59F   ; Kraid Room
    db $00, $04, $01, $16, $00, $01
    dw $8000, #door_custom_asm
    dw $0034, $0188, $0000

door_custom_91CE_kraid_door0:
    dw $A56B   ; Kraid Eye Door Room
    db $00, $05, $1E, $16, $01, $01
    dw $8000, #door_custom_asm
    dw $01CD, $0188, $0000

door_custom_91E6_statues_hallway_door0:
    dw $99BD   ; Green Pirates Shaft
    db $00, $05, $0E, $66, $00, $06
    dw $8000, #door_custom_asm
    dw $00CC, $0688, $0000

door_custom_922E_warehouse_entrance_door0:
    dw $CF80   ; East Tunnel
    db $40, $05, $0E, $16, $00, $01
    dw $8000, #door_custom_asm
    dw $00CE, $0188, $E345

door_custom_923A_warehouse_entrance_door1:
    dw $A471   ; Warehouse Zeela
    db $00, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $0034, $0088, $0000

door_custom_93D2_crocomire_speedway_door4:
    dw $A98D   ; Crocomire's Room
    db $00, $06, $36, $02, $03, $00
    dw $8000, #door_custom_asm
    dw $0383, $0098, $0000

door_custom_93EA_crocomire_door1:
    dw $A923   ; Crocomire Speedway
    db $00, $07, $C6, $2D, $0C, $02
    dw $01C0, #door_custom_asm
    dw $0C57, $02B8, $0000

door_custom_95FA_single_chamber_door4:
    dw $B656   ; Three Musketeers
    db $00, $04, $11, $06, $01, $00
    dw $8000, #door_custom_asm
    dw $0134, $0088, $0000

door_custom_967E_kronic_boost_door2:
    dw $AF14   ; Lava Dive
    db $00, $05, $3E, $06, $03, $00
    dw $8000, #door_custom_asm
    dw $03D0, $0088, $0000

door_custom_96D2_lava_dive_door0:
    dw $AE74   ; Kronic Boost
    db $00, $04, $11, $26, $01, $02
    dw $8000, #door_custom_asm
    dw $0134, $0288, $0000

door_custom_98BE_ridley_door1:
    dw $B37A   ; Lower Norfair Farming
    db $00, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $002E, $0098, $0000

door_custom_98CA_lower_norfair_farming_door0:
    dw $B32E   ; Ridley Room
    db $00, $05, $0E, $06, $00, $01
    dw $8000, #door_custom_asm
    dw $00BF, $0198, $0000

door_custom_9A4A_three_musketeers_door0:
    dw $AD5E   ; Single Chamber
    db $00, $05, $5E, $06, $05, $00
    dw $8000, #door_custom_asm
    dw $05CF, $0088, $0000

door_custom_A2AC_basement_door2:
    dw $CD13   ; Phantoon Room
    db $00, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $002E, $00B8, $0000

door_custom_A2C4_phantoon_door0:
    dw $CC6F   ; Basement
    db $00, $05, $4E, $06, $04, $00
    dw $8000, #door_custom_asm
    dw $049F, $00B8, $E1FE

door_custom_A330_glass_tunnel_door0:
    dw $CFC9   ; Main Street
    db $00, $07, $16, $7D, $01, $07
    dw $0200, #door_custom_asm
    dw $014A, $07A8, $0000

door_custom_A384_east_tunnel_door1:
    dw $A6A1   ; Warehouse Entrance
    db $40, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $0034, $0088, $0000

door_custom_A390_east_tunnel_door2:
    dw $D21C   ; Crab Hole
    db $00, $04, $01, $16, $00, $01
    dw $8000, #door_custom_asm
    dw $0028, $0188, $E356

door_custom_A39C_main_street_door0:
    dw $CEFB   ; Glass Tunnel
    db $00, $06, $06, $02, $00, $00
    dw $0170, #door_custom_asm
    dw $0081, $0078, $0000

door_custom_A480_red_fish_door1:
    dw $A322   ; Caterpillar
    db $40, $05, $2E, $36, $02, $03
    dw $8000, #door_custom_asm
    dw $02CD, $0388, $E367

door_custom_A4C8_crab_shaft_door2:
    dw $D5A7   ; Aqueduct
    db $00, $04, $01, $16, $00, $01
    dw $8000, #door_custom_asm
    dw $0034, $0188, $0000

door_custom_A510_crab_hole_door2:
    dw $CF80   ; East Tunnel
    db $00, $05, $3E, $06, $03, $00
    dw $8000, #door_custom_asm
    dw $03C6, $0088, #layout_asm_easttunnel_no_scrolls

door_custom_A708_aqueduct_door0:
    dw $D1A3   ; Crab Shaft
    db $00, $05, $1E, $36, $01, $03
    dw $8000, #door_custom_asm
    dw $01CA, $0388, $E398

door_custom_A840_precious_door1:
    dw $DA60   ; Draygon Room
    db $00, $05, $1E, $06, $01, $00
    dw $8000, #door_custom_asm
    dw $01C8, $0088, $0000

door_custom_A96C_draygon_door0:
    dw $D78F   ; Precious Room
    db $00, $04, $01, $26, $00, $02
    dw $8000, #door_custom_asm
    dw $0034, $0288, $E3D9

; List of vanilla left doors
; NOTE: Table order must match layoutmenu.asm
portals_left_vanilla_table:
    dw $8FEE   ; Boulder door 1 --> Billy Mays
    dw $8EDA   ; Construction Zone door 2 --> Alpha Missiles
    dw $8EC2   ; Construction Zone door 0 --> Morph Ball
    dw $8EE6   ; Blue Brinstar Energy Tank door 0 --> Construction Zone
    dw $8EF2   ; Blue Brinstar Energy Tank door 1 --> Boulder
    dw $8E9E   ; Morph Ball door 0 --> Green Hill Zone
    dw $ABA0   ; 58 Escape door 0 --> Dead Scientist
    dw $ABB8   ; Ceres Ridley door 0 --> 58 Escape
    dw $AB88   ; Dead Scientist door 0 --> Magnet Stairs
    dw $AB58   ; Falling Tile door 0 --> Ceres Elevator
    dw $AB70   ; Magnet Stairs door 0 --> Falling Tile
    dw $94AA   ; Cosine Missiles door 0 --> Post Crocomire Shaft
    dw $93DE   ; Crocomire door 0 --> Post Crocomire Farming
    dw $94FE   ; Grapple Tutorial 1 door 0 --> Grapple Beam
    dw $94E6   ; Grapple Tutorial 2 door 0 --> Grapple Tutorial 1
    dw $94B6   ; Grapple Tutorial 3 door 0 --> Grapple Tutorial 2
    dw $943E   ; Post Crocomire Farming door 1 --> Post Crocomire Power Bombs
    dw $94DA   ; Post Crocomire Jump door 1 --> Grapple Beam
    dw $9462   ; Post Crocomire Save door 0 --> Post Crocomire Farming
    dw $9486   ; Post Crocomire Shaft door 1 --> Grapple Tutorial 3
    dw $8C82   ; 230 Bombway door 0 --> 230 Missiles
    dw $8BAA   ; Bomb Torizo door 0 --> Flyway
    dw $8A12   ; Bowling Alley Path door 0 --> West Ocean
    dw $8B6E   ; Climb door 4 --> Tourian Escape 4
    dw $8C76   ; Climb Supers door 1 --> Climb
    dw $8C6A   ; Climb Supers door 0 --> Climb
    dw $8AAE   ; Crab Maze door 1 --> Forgotten Highway Elbow
    dw $8A2A   ; Crateria Kihunters door 0 --> Crateria Tube
    dw $8C2E   ; Crateria Map Station door 0 --> Pre-Map Flyway
    dw $89B2   ; Crateria Power Bombs door 0 --> Landing Site
    dw $8AC6   ; Crateria Tube door 0 --> Landing Site
    dw $8A66   ; East Ocean door 0 --> Electric Death
    dw $8BB6   ; Flyway door 0 --> Parlor
    dw $8A7E   ; Forgotten Highway Kago door 0 --> East Ocean
    dw $8B1A   ; Gauntlet Energy Tank door 1 --> Green Pirates Shaft
    dw $8952   ; Gauntlet Entrance door 1 --> Gauntlet Energy Tank
    dw $8C46   ; Green Pirates Shaft door 1 --> Lower Mushrooms
    dw $8916   ; Landing Site door 0 --> Parlor
    dw $892E   ; Landing Site door 2 --> Gauntlet Entrance
    dw $8C22   ; Lower Mushrooms door 1 --> Green Brinstar Elevator
    dw $8ADE   ; Moat door 0 --> Crateria Kihunters
    dw $8B92   ; Morph Elevator door 0 --> Pit
    dw $89A6   ; Parlor door 6 --> 230 Bombway
    dw $899A   ; Parlor door 5 --> Crateria Save
    dw $895E   ; Parlor door 0 --> Terminator
    dw $8B7A   ; Pit door 0 --> Climb
    dw $8BCE   ; Pre-Map Flyway door door 0 --> Parlor
    dw $9216   ; Statues door 0 --> Statues Hallway
    dw $91E6   ; Statues Hallway door 0 --> Green Pirates Shaft
    dw $8BE6   ; Terminator door 0 --> Green Pirates Shaft
    dw $8B26   ; West Ocean Geemer door 0 --> Bowling Alley Path
    dw $89CA   ; West Ocean door 0 --> Moat
    dw $8F22   ; Green Brinstar Beetoms door 1 --> Etecoon Energy Tank
    dw $8D7E   ; Green Brinstar Firefleas door 0 --> Brinstar Missile Refill
    dw $8D36   ; Brinstar Pre-Map door 0 --> Brinstar Map
    dw $8D66   ; Brinstar Reserve Tank door 0 --> Early Supers
    dw $8D4E   ; Early Supers door 0 --> Green Brinstar Main Shaft
    dw $8F52   ; Etecoon Energy Tank door 3 --> Etecoon Save
    dw $8F3A   ; Etecoon Energy Tank door 1 --> Etecoon Supers
    dw $8E7A   ; Green Hill Zone door 0 --> Big Pink
    dw $8CFA   ; Green Brinstar Main Shaft door 7 --> Etecoon Energy Tank
    dw $8CBE   ; Green Brinstar Main Shaft door 2 --> Green Brinstar Beetoms
    dw $8CCA   ; Green Brinstar Main Shaft door 3 --> Green Brinstar Firefleas
    dw $8D12   ; Green Brinstar Main Shaft door A --> Green Brinstar Main Shaft Save
    dw $8D06   ; Green Brinstar Main Shaft door 8 --> Green Brinstar Main Shaft
    dw $8CB2   ; Green Brinstar Main Shaft door 1 --> Brinstar Pre-Map
    dw $8EFE   ; Noob Bridge door 0 --> Green Hill Zone
    dw $8E32   ; Spore Spawn Kihunters door 0 --> Big Pink
    dw $A684   ; East Sand Hall door 0 --> Oasis
    dw $A660   ; Oasis door 0 --> West Sand Hall
    dw $A780   ; Pants door 0 --> East Sand Hall
    dw $A7B0   ; East Pants door 0 --> Pants
    dw $A7A4   ; Pants door 3 --> Pants
    dw $A8C4   ; Shaktool door 0 --> East Pants
    dw $A7C8   ; Spring Ball door 0 --> Shaktool
    dw $A63C   ; West Sand Hall door 0 --> West Sand Hall Tunnel
    dw $A528   ; West Sand Hall Tunnel door 0 --> Crab Hole
    dw $9192   ; Baby Kraid door 0 --> Warehouse Kihunters
    dw $91CE   ; Kraid door 0 --> Kraid Eye Door
    dw $91AA   ; Kraid Eye Door door 0 --> Baby Kraid
    dw $920A   ; Kraid Refill door 0 --> Kraid Eye Door
    dw $9252   ; Varia Suit door 0 --> Kraid
    dw $922E   ; Warehouse Entrance door 0 --> East Tunnel
    dw $925E   ; Warehouse Save door 0 --> Warehouse Kihunters
    dw $914A   ; Warehouse Zeela door 1 --> Warehouse Energy Tank
    dw $913E   ; Warehouse Zeela door 0 --> Warehouse Entrance

; NOTE: Table order must match above table with portals inverted
portals_left_vanilla_inverted_table:
    dw $8FFA   ; Billy Mays door 0 --> Boulder
    dw $8FA6   ; Alpha Missiles door 0 --> Construction Zone
    dw $8EAA   ; Morph Ball door 1 --> Construction Zone
    dw $8ECE   ; Construction Zone door 1 --> Blue Brinstar Energy Tank
    dw $8FE2   ; Boulder door 0 --> Blue Brinstar Energy Tank
    dw $8E86   ; Green Hill Zone door 1 --> Morph Ball
    dw $AB94   ; Dead Scientist door 1 --> 58 Escape
    dw $ABAC   ; 58 Escape door 1 --> Ceres Ridley
    dw $AB7C   ; Magnet Stairs door 1 --> Dead Scientist
    dw $AB4C   ; Ceres Elevator door 0 --> Falling Tile
    dw $AB64   ; Falling Tile door 1 --> Magnet Stairs
    dw $9492   ; Post Crocomire Shaft door 2 --> Cosine Missiles
    dw $9432   ; Post Crocomire Farming door 0 --> Crocomire
    dw $9522   ; Grapple Beam door 1 --> Grapple Tutorial 1
    dw $950A   ; Grapple Tutorial 1 door 1 --> Grapple Tutorial 2
    dw $94F2   ; Grapple Tutorial 2 door 1 --> Grapple Tutorial 3
    dw $946E   ; Post Crocomire Power Bombs door 0 --> Post Crocomire Farming
    dw $9516   ; Grapple Beam door 0 --> Post Crocomire Jump
    dw $9456   ; Post Crocomire Farming door 3 --> Post Crocomire Save
    dw $94C2   ; Grapple Tutorial 3 door 1 --> Post Crocomire Shaft
    dw $8C9A   ; 230 Missiles door 0 --> 230 Bombway
    dw $8BC2   ; Flyway door 1 --> Bomb Torizo
    dw $89E2   ; West Ocean door 2 --> Bowling Alley Path
    dw $AB34   ; Tourian Escape 4 door 1 --> Climb
    dw $8B56   ; Climb door 2 --> Climb Supers
    dw $8B4A   ; Climb door 1 --> Climb Supers
    dw $8AA2   ; Forgotten Highway Elbow door 0 --> Crab Maze
    dw $8AD2   ; Crateria Tube door 1 --> Crateria Kihunters
    dw $8BDA   ; Pre-Map Flyway door 1 --> Crateria Map Station
    dw $893A   ; Landing Site door 3 --> Crateria Power Bombs
    dw $8922   ; Landing Site door 1 --> Crateria Tube
    dw $A264   ; Electric Death door 0 --> East Ocean
    dw $8982   ; Parlor door 3 --> Flyway
    dw $8A72   ; East Ocean door 1 --> Forgotten Highway Kago
    dw $8C5E   ; Green Pirates Shaft door 3 --> Gauntlet Energy Tank
    dw $8B0E   ; Gauntlet Energy Tank door 0 --> Gauntlet Entrance
    dw $8C16   ; Lower Mushrooms door 0 --> Green Pirates Shaft
    dw $896A   ; Parlor door 1 --> Landing Site
    dw $8946   ; Gauntlet Entrance door 0 --> Landing Site
    dw $8BFE   ; Green Brinstar Elevator door 0 --> Lower Mushrooms
    dw $8A36   ; Crateria Kihunters door 1 --> Moat
    dw $8B86   ; Pit door 1 --> Morph Elevator
    dw $8C8E   ; 230 Bombway door 1 --> Parlor
    dw $89BE   ; Crateria Save door 0 --> Parlor
    dw $8BF2   ; Terminator door 1 --> Parlor
    dw $8B62   ; Climb door 3 --> Pit
    dw $8976   ; Parlor door 2 --> Pre-Map Flyway
    dw $91F2   ; Statues Hallway door 1 --> Statues
    dw $8C52   ; Green Pirates Shaft door 2 --> Statues Hallway
    dw $8C3A   ; Green Pirates Shaft door 0 --> Terminator
    dw $8A1E   ; Bowling Alley Path door 1 --> West Ocean Geemer
    dw $8AEA   ; Moat door 1 --> West Ocean
    dw $8F2E   ; Etecoon Energy Tank door 0 --> Green Brinstar Beetoms
    dw $8D96   ; Brinstar Missile Refill door 0 --> Green Brinstar Firefleas
    dw $8D72   ; Brinstar Map door 0 --> Brinstar Pre-Map
    dw $8D5A   ; Early Supers door 1 --> Brinstar Reserve Tank
    dw $8CD6   ; Green Brinstar Main Shaft door 4 --> Early Supers
    dw $9012   ; Etecoon Save door 0 --> Etecoon Energy Tank
    dw $8F5E   ; Etecoon Supers door 0 --> Etecoon Energy Tank
    dw $8DEA   ; Big Pink door 3 --> Green Hill Zone
    dw $8F46   ; Etecoon Energy Tank door 2 --> Green Brinstar Main Shaft
    dw $8F16   ; Green Brinstar Beetoms door 0 --> Green Brinstar Main Shaft
    dw $8D8A   ; Green Brinstar Firefleas door 1 --> Green Brinstar Main Shaft
    dw $9006   ; Green Brinstar Main Shaft Save door 0 --> Green Brinstar Main Shaft
    dw $8CEE   ; Green Brinstar Main Shaft door 6 --> Green Brinstar Main Shaft
    dw $8D42   ; Brinstar Pre-Map door 1 --> Green Brinstar Main Shaft
    dw $8E92   ; Green Hill Zone door 2 --> Noob Bridge
    dw $8DC6   ; Big Pink door 0 --> Green Hill Zone
    dw $A66C   ; Oasis door 1 --> East Sand Hall
    dw $A648   ; West Sand Hall door 1 --> Oasis
    dw $A690   ; East Sand Hall door 1 --> Pants
    dw $A78C   ; Pants door 1 --> East Pants
    dw $A810   ; (Pants door 1 --> Pants)
    dw $A798   ; Pants door 2 --> Shaktool
    dw $A8D0   ; Shaktool door 1 --> Spring Ball
    dw $A534   ; West Sand Hall Tunnel door 1 --> West Sand Hall
    dw $A504   ; Crab Hole door 1 --> West Sand Hall Tunnel
    dw $917A   ; Warehouse Kihunters door 1 --> Baby Kraid
    dw $91B6   ; Kraid Eye Door door 1 --> Kraid
    dw $919E   ; Baby Kraid door 1 --> Kraid Eye Door
    dw $91C2   ; Kraid Eye Door door 2 --> Kraid Refill
    dw $91DA   ; Kraid door 1 --> Varia Suit
    dw $A384   ; East Tunnel door 1 --> Warehouse Entrance
    dw $9186   ; Warehouse Kihunters door 2 --> Warehouse Save
    dw $9162   ; Warehouse Energy Tank door 0 --> Warehouse Zeela
    dw $923A   ; Warehouse Entrance door 1 --> Warehouse Zeela

; List of vanilla right doors
; NOTE: Table order must match layoutmenu.asm
portals_right_vanilla_table:
    dw $8FA6   ; Alpha Missiles door 0 --> Construction Zone
    dw $8FFA   ; Billy Mays door 0 --> Boulder
    dw $8FE2   ; Boulder door 0 --> Blue Brinstar Energy Tank
    dw $8ECE   ; Construction Zone door 1 --> Blue Brinstar Energy Tank
    dw $8EAA   ; Morph Ball door 1 --> Construction Zone
    dw $ABAC   ; 58 Escape door 1 --> Ceres Ridley
    dw $AB4C   ; Ceres Elevator door 0 --> Falling Tile
    dw $AB94   ; Dead Scientist door 1 --> 58 Escape
    dw $AB64   ; Falling Tile door 1 --> Magnet Stairs
    dw $AB7C   ; Magnet Stairs door 1 --> Dead Scientist
    dw $9516   ; Grapple Beam door 0 --> Post Crocomire Jump
    dw $9522   ; Grapple Beam door 1 --> Grapple Tutorial 1
    dw $950A   ; Grapple Tutorial 1 door 1 --> Grapple Tutorial 2
    dw $94F2   ; Grapple Tutorial 2 door 1 --> Grapple Tutorial 3
    dw $94C2   ; Grapple Tutorial 3 door 1 --> Post Crocomire Shaft
    dw $9432   ; Post Crocomire Farming door 0 --> Crocomire
    dw $9456   ; Post Crocomire Farming door 3 --> Post Crocomire Save
    dw $946E   ; Post Crocomire Power Bombs door 0 --> Post Crocomire Farming
    dw $9492   ; Post Crocomire Shaft door 2 --> Cosine Missiles
    dw $8C8E   ; 230 Bombway door 1 --> Parlor
    dw $8C9A   ; 230 Missiles door 0 --> 230 Bombway
    dw $8A1E   ; Bowling Alley Path door 1 --> West Ocean Geemer
    dw $8B62   ; Climb door 3 --> Pit
    dw $8B56   ; Climb door 2 --> Climb Supers
    dw $8B4A   ; Climb door 1 --> Climb Supers
    dw $8A36   ; Crateria Kihunters door 1 --> Moat
    dw $89BE   ; Crateria Save door 0 --> Parlor
    dw $8AD2   ; Crateria Tube door 1 --> Crateria Kihunters
    dw $8A72   ; East Ocean door 1 --> Forgotten Highway Kago
    dw $8BC2   ; Flyway door 1 --> Bomb Torizo
    dw $8AA2   ; Forgotten Highway Elbow door 0 --> Crab Maze
    dw $8B0E   ; Gauntlet Energy Tank door 0 --> Gauntlet Entrance
    dw $8946   ; Gauntlet Entrance door 0 --> Landing Site
    dw $8BFE   ; Green Brinstar Elevator door 0 --> Lower Mushrooms
    dw $8C52   ; Green Pirates Shaft door 2 --> Statues Hallway
    dw $8C3A   ; Green Pirates Shaft door 0 --> Terminator
    dw $8C5E   ; Green Pirates Shaft door 3 --> Gauntlet Energy Tank
    dw $8922   ; Landing Site door 1 --> Crateria Tube
    dw $893A   ; Landing Site door 3 --> Crateria Power Bombs
    dw $8C16   ; Lower Mushrooms door 0 --> Green Pirates Shaft
    dw $8AEA   ; Moat door 1 --> West Ocean
    dw $8976   ; Parlor door 2 --> Pre-Map Flyway
    dw $8982   ; Parlor door 3 --> Flyway
    dw $896A   ; Parlor door 1 --> Landing Site
    dw $8B86   ; Pit door 1 --> Morph Elevator
    dw $8BDA   ; Pre-Map Flyway door 1 --> Crateria Map Station
    dw $91F2   ; Statues Hallway door 1 --> Statues
    dw $8BF2   ; Terminator door 1 --> Parlor
    dw $89E2   ; West Ocean door 2 --> Bowling Alley Path
    dw $8B32   ; West Ocean Geemer door 1 --> Bowling Alley
    dw $89D6   ; West Ocean door 1 --> Wrecked Ship Entrance
    dw $8A06   ; West Ocean door 5 --> Gravity Suit
    dw $89FA   ; West Ocean door 4 --> Bowling Alley
    dw $89EE   ; West Ocean door 3 --> Attic
    dw $8F16   ; Green Brinstar Beetoms door 0 --> Green Brinstar Main Shaft
    dw $8D8A   ; Green Brinstar Firefleas door 1 --> Green Brinstar Main Shaft
    dw $8D72   ; Brinstar Map door 0 --> Brinstar Pre-Map
    dw $8D96   ; Brinstar Missile Refill door 0 --> Green Brinstar Firefleas
    dw $8D42   ; Brinstar Pre-Map door 1 --> Green Brinstar Main Shaft
    dw $8D5A   ; Early Supers door 1 --> Brinstar Reserve Tank
    dw $8F46   ; Etecoon Energy Tank door 2 --> Green Brinstar Main Shaft
    dw $8F2E   ; Etecoon Energy Tank door 0 --> Green Brinstar Beetoms
    dw $9012   ; Etecoon Save door 0 --> Etecoon Energy Tank
    dw $8F5E   ; Etecoon Supers door 0 --> Etecoon Energy Tank
    dw $8E92   ; Green Hill Zone door 2 --> Noob Bridge
    dw $8E86   ; Green Hill Zone door 1 --> Morph Ball
    dw $8CE2   ; Green Brinstar Main Shaft door 5 --> Dachora
    dw $8CEE   ; Green Brinstar Main Shaft door 6 --> Green Brinstar Main Shaft
    dw $8CD6   ; Green Brinstar Main Shaft door 4 --> Early Supers
    dw $9006   ; Green Brinstar Main Shaft Save door 0 --> Green Brinstar Main Shaft
    dw $8F0A   ; Noob Bridge door 1 --> Red Tower
    dw $8E4A   ; Spore Spawn door 0 --> Spore Spawn Supers
    dw $A690   ; East Sand Hall door 1 --> Pants
    dw $A66C   ; Oasis door 1 --> East Sand Hall
    dw $A798   ; Pants door 2 --> Shaktool
    dw $A7BC   ; East Pants door 1 --> Shaktool
    dw $A78C   ; Pants door 1 --> East Pants
    dw $A8D0   ; Shaktool door 1 --> Spring Ball
    dw $A648   ; West Sand Hall door 1 --> Oasis
    dw $A534   ; West Sand Hall Tunnel door 1 --> West Sand Hall
    dw $919E   ; Baby Kraid door 1 --> Kraid Eye Door
    dw $917A   ; Warehouse Kihunters door 1 --> Baby Kraid
    dw $9186   ; Warehouse Kihunters door 2 --> Warehouse Save
    dw $91DA   ; Kraid door 1 --> Varia Suit
    dw $91B6   ; Kraid Eye Door door 1 --> Kraid
    dw $91C2   ; Kraid Eye Door door 2 --> Kraid Refill
    dw $9162   ; Warehouse Energy Tank door 0 --> Warehouse Zeela
    dw $923A   ; Warehouse Entrance door 1 --> Warehouse Zeela

; NOTE: Table order must match above table with portals inverted
portals_right_vanilla_inverted_table:
    dw $8EDA   ; Construction Zone door 2 --> Alpha Missiles
    dw $8FEE   ; Boulder door 1 --> Billy Mays
    dw $8EF2   ; Blue Brinstar Energy Tank door 1 --> Boulder
    dw $8EE6   ; Blue Brinstar Energy Tank door 0 --> Construction Zone
    dw $8EC2   ; Construction Zone door 0 --> Morph Ball
    dw $ABB8   ; Ceres Ridley door 0 --> 58 Escape
    dw $AB58   ; Falling Tile door 0 --> Ceres Elevator
    dw $ABA0   ; 58 Escape door 0 --> Dead Scientist
    dw $AB70   ; Magnet Stairs door 0 --> Falling Tile
    dw $AB88   ; Dead Scientist door 0 --> Magnet Stairs
    dw $94DA   ; Post Crocomire Jump door 1 --> Grapple Beam
    dw $94FE   ; Grapple Tutorial 1 door 0 --> Grapple Beam
    dw $94E6   ; Grapple Tutorial 2 door 0 --> Grapple Tutorial 1
    dw $94B6   ; Grapple Tutorial 3 door 0 --> Grapple Tutorial 2
    dw $9486   ; Post Crocomire Shaft door 1 --> Grapple Tutorial 3
    dw $9462   ; Post Crocomire Save door 0 --> Post Crocomire Farming
    dw $93DE   ; Crocomire door 0 --> Post Crocomire Farming
    dw $943E   ; Post Crocomire Farming door 1 --> Post Crocomire Power Bombs
    dw $94AA   ; Cosine Missiles door 0 --> Post Crocomire Shaft
    dw $89A6   ; Parlor door 6 --> 230 Bombway
    dw $8C82   ; 230 Bombway door 0 --> 230 Missiles
    dw $8B26   ; West Ocean Geemer door 0 --> Bowling Alley Path
    dw $8B7A   ; Pit door 0 --> Climb
    dw $8C76   ; Climb Supers door 1 --> Climb
    dw $8C6A   ; Climb Supers door 0 --> Climb
    dw $8ADE   ; Moat door 0 --> Crateria Kihunters
    dw $899A   ; Parlor door 5 --> Crateria Save
    dw $8A2A   ; Crateria Kihunters door 0 --> Crateria Tube
    dw $8A7E   ; Forgotten Highway Kago door 0 --> East Ocean
    dw $8BAA   ; Bomb Torizo door 0 --> Flyway
    dw $8AAE   ; Crab Maze door 1 --> Forgotten Highway Elbow
    dw $8952   ; Gauntlet Entrance door 1 --> Gauntlet Energy Tank
    dw $892E   ; Landing Site door 2 --> Gauntlet Entrance
    dw $8C22   ; Lower Mushrooms door 1 --> Green Brinstar Elevator
    dw $91E6   ; Statues Hallway door 0 --> Green Pirates Shaft
    dw $8BE6   ; Terminator door 0 --> Green Pirates Shaft
    dw $8B1A   ; Gauntlet Energy Tank door 1 --> Green Pirates Shaft
    dw $8AC6   ; Crateria Tube door 0 --> Landing Site
    dw $89B2   ; Crateria Power Bombs door 0 --> Landing Site
    dw $8C46   ; Green Pirates Shaft door 1 --> Lower Mushrooms
    dw $89CA   ; West Ocean door 0 --> Moat
    dw $8BCE   ; Pre-Map Flyway door door 0 --> Parlor
    dw $8BB6   ; Flyway door 0 --> Parlor
    dw $8916   ; Landing Site door 0 --> Parlor
    dw $8B92   ; Morph Elevator door 0 --> Pit
    dw $8C2E   ; Crateria Map Station door 0 --> Pre-Map Flyway
    dw $9216   ; Statues door 0 --> Statues Hallway
    dw $895E   ; Parlor door 0 --> Terminator
    dw $8A12   ; Bowling Alley Path door 0 --> West Ocean
    dw $A198   ; Bowling Alley door 1 --> West Ocean Geemer
    dw $A1B0   ; Wrecked Ship Entrance door 0 --> West Ocean
    dw $A300   ; Gravity Suit door 0 --> West Ocean
    dw $A18C   ; Bowling Alley door 0 --> West Ocean
    dw $A1E0   ; Attic door 2 --> West Ocean
    dw $8CBE   ; Green Brinstar Main Shaft door 2 --> Green Brinstar Beetoms
    dw $8CCA   ; Green Brinstar Main Shaft door 3 --> Green Brinstar Firefleas
    dw $8D36   ; Brinstar Pre-Map door 0 --> Brinstar Map
    dw $8D7E   ; Green Brinstar Firefleas door 0 --> Brinstar Missile Refill
    dw $8CB2   ; Green Brinstar Main Shaft door 1 --> Brinstar Pre-Map
    dw $8D66   ; Brinstar Reserve Tank door 0 --> Early Supers
    dw $8CFA   ; Green Brinstar Main Shaft door 7 --> Etecoon Energy Tank
    dw $8F22   ; Green Brinstar Beetoms door 1 --> Etecoon Energy Tank
    dw $8F52   ; Etecoon Energy Tank door 3 --> Etecoon Save
    dw $8F3A   ; Etecoon Energy Tank door 1 --> Etecoon Supers
    dw $8EFE   ; Noob Bridge door 0 --> Green Hill Zone
    dw $8E9E   ; Morph Ball door 0 --> Green Hill Zone
    dw $8DA2   ; Dachora door 0 --> Green Brinstar Main Shaft
    dw $8D06   ; Green Brinstar Main Shaft door 8 --> Green Brinstar Main Shaft
    dw $8D4E   ; Early Supers door 0 --> Green Brinstar Main Shaft
    dw $8D12   ; Green Brinstar Main Shaft door A --> Green Brinstar Main Shaft Save
    dw $902A   ; Red Tower door 1 --> Noob Bridge
    dw $8D2A   ; Spore Spawn Supers door 1 --> Spore Spawn
    dw $A780   ; Pants door 0 --> East Sand Hall
    dw $A684   ; East Sand Hall door 0 --> Oasis
    dw $A804   ; (Shaktool door 0 --> Pants)
    dw $A8C4   ; Shaktool door 0 --> East Pants
    dw $A7B0   ; East Pants door 0 --> Pants
    dw $A7C8   ; Spring Ball door 0 --> Shaktool
    dw $A660   ; Oasis door 0 --> West Sand Hall
    dw $A63C   ; West Sand Hall door 0 --> West Sand Hall Tunnel
    dw $91AA   ; Kraid Eye Door door 0 --> Baby Kraid
    dw $9192   ; Baby Kraid door 0 --> Warehouse Kihunters
    dw $925E   ; Warehouse Save door 0 --> Warehouse Kihunters
    dw $9252   ; Varia Suit door 0 --> Kraid
    dw $91CE   ; Kraid door 0 --> Kraid Eye Door
    dw $920A   ; Kraid Refill door 0 --> Kraid Eye Door
    dw $914A   ; Warehouse Zeela door 1 --> Warehouse Energy Tank
    dw $913E   ; Warehouse Zeela door 0 --> Warehouse Entrance

; List of vanilla up doors
; NOTE: Table order must match layoutmenu.asm
portals_up_vanilla_table:
    dw $93EA   ; Crocomire door 1 --> Crocomire Speedway
    dw $94CE   ; Post Crocomire Jump door 0 --> Post Crocomire Shaft
    dw $947A   ; Post Crocomire Shaft door 0 --> Post Crocomire Farming
    dw $8B3E   ; Climb door 0 --> Parlor
    dw $8A96   ; Crab Maze door 0 --> Forgotten Highway Kago
    dw $8A4E   ; Forgotten Highway Elevator door 0 --> Forgotten Highway Elbow
    dw $8AF6   ; Red Brinstar Elevator door 0 --> Crateria Kihunters
    dw $8E3E   ; Spore Spawn Kihunters door 1 --> Spore Spawn
    dw $0008   ; (East Sand Hall --> East Sand Hole)
    dw $A678   ; Oasis door 2 --> Aqueduct Tube
    dw $000A   ; (West Sand Hall --> West Sand Hole)
    dw $9156   ; Warehouse Zeela door 2 --> Warehouse Kihunters

; NOTE: Table order must match above table with portals inverted
portals_up_vanilla_inverted_table:
    dw $93D2   ; Crocomire Speedway door 4 --> Crocomire Room
    dw $949E   ; Post Crocomire Shaft door 3 --> Post Crocomire Jump
    dw $944A   ; Post Crocomire Farming door 2 --> Post Crocomire Shaft
    dw $898E   ; Parlor door 4 --> Climb
    dw $8A7E   ; Forgotten Highway Kago door 0 --> Crab Maze
    dw $8ABA   ; Forgotten Highway Elbow door 1 --> Forgotten Highway Elevator
    dw $8A42   ; Crateria Kihunters door 2 --> Red Brinstar Elevator
    dw $8E56   ; Spore Spawn door 1 --> Spore Spawn Kihunters
    dw $A6CC   ; East Sand Hole door 1 --> East Sand Hall
    dw $A600   ; Aqueduct Tube door 0 --> Oasis
    dw $A6B4   ; West Sand Hole door 1 --> West Sand Hall
    dw $916E   ; Warehouse Kihunters door 0 --> Warehouse Zeela

; List of vanilla down doors
; NOTE: Table order must match layoutmenu.asm
portals_down_vanilla_table:
    dw $944A   ; Post Crocomire Farming door 2 --> Post Crocomire Shaft
    dw $949E   ; Post Crocomire Shaft door 3 --> Post Crocomire Jump
    dw $8A42   ; Crateria Kihunters door 2 --> Red Brinstar Elevator
    dw $8ABA   ; Forgotten Highway Elbow door 1 --> Forgotten Highway Elevator
    dw $8A7E   ; Forgotten Highway Kago door 0 --> Crab Maze
    dw $898E   ; Parlor door 4 --> Climb
    dw $8E56   ; Spore Spawn door 1 --> Spore Spawn Kihunters
    dw $916E   ; Warehouse Kihunters door 0 --> Warehouse Zeela

; NOTE: Table order must match above table with portals inverted
portals_down_vanilla_inverted_table:
    dw $947A   ; Post Crocomire Shaft door 0 --> Post Crocomire Farming
    dw $94CE   ; Post Crocomire Jump door 0 --> Post Crocomire Shaft
    dw $8AF6   ; Red Brinstar Elevator door 0 --> Crateria Kihunters
    dw $8A4E   ; Forgotten Highway Elevator door 0 --> Forgotten Highway Elbow
    dw $8A96   ; Crab Maze door 0 --> Forgotten Highway Kago
    dw $8B3E   ; Climb door 0 --> Parlor
    dw $8E3E   ; Spore Spawn Kihunters door 1 --> Spore Spawn
    dw $9156   ; Warehouse Zeela door 2 --> Warehouse Kihunters

print pc, " layout bank83 end"


; Allow debug save stations to be used
org $848D0C
    AND #$000F

; Ignore bombs for bomb torizo with VARIA tweaks
org $848258
layout_bomb_torizo_finish_crumbling:
    INC $1D27,X : INC $1D27,X
    LDA #$D356 : STA $1CD7,X
    RTS
warnpc $848270

org $84BA50
hook_layout_bomb_grey_door_instruction:
    dw layout_bomb_grey_door_new_instruction

org $84BA6F
layout_bomb_grey_door_original_instruction:

org $84BA7A
layout_bomb_grey_door_original_skip:

org $84BAD1
layout_bomb_grey_door_new_instruction:
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_VARIA_TWEAKS : BNE layout_bomb_grey_door_original_skip
    BRA layout_bomb_grey_door_original_instruction

layout_bomb_set_room_argument:
{
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_VARIA_TWEAKS : BEQ .end
    LDA #layout_bomb_torizo_start_crumbling : STA $1D21
    LDA #$BA54 : STA $1D75
  .end
    JMP $8899
}
warnpc $84BAF4

org $84D33B
layout_bomb_torizo_crumbling_preinstruction:
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_VARIA_TWEAKS : BNE layout_bomb_torizo_end_preinstruction
    LDA !SAMUS_ITEMS_COLLECTED : AND #$1000 : BEQ layout_bomb_torizo_end_preinstruction

layout_bomb_torizo_start_crumbling:
    LDA #$0001 : STA $7EDE1C,X
    JMP layout_bomb_torizo_finish_crumbling

layout_bomb_torizo_end_preinstruction:
warnpc $84D356

org $84E53D
hook_layout_bomb_set_room_argument:
    dw #layout_bomb_set_room_argument

; Ignore picky chozo in DASH or VARIA tweaks
org $84D18F
layout_picky_chozo:
{
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL_OR_VARIA_TWEAKS : BNE .skip_picky_chozo
    LDA !SAMUS_ITEMS_COLLECTED : AND #$0200 : BEQ layout_picky_chozo_end
  .skip_picky_chozo
    ; Shift existing logic nine bytes down
    LDA !SAMUS_COLLISION_DIRECTION : AND #$000F : CMP #$0003 : BNE layout_picky_chozo_end
    LDA !SAMUS_POSE : CMP #$001D : BEQ .start_chozo_event
    CMP #$0079 : BEQ .start_chozo_event : CMP #$007A : BNE layout_picky_chozo_end
  .start_chozo_event
    ; Make up for overridden code
    JSL ih_set_picky_chozo_event_and_enemy_speed
}
warnpc $84D1C1

org $84D1DE
layout_picky_chozo_end:

; Allow spazer blocks to be shot
org $84D014
layout_spazer_block_plm_entry:
    dw #layout_spazer_block_plm, $CBB7

org $84D476
layout_spazer_block_plm:
{
    LDX $0DDE : LDA $0C18,X : BIT #$0004 : BEQ .delete_plm
    JMP $CF0C ; Break block
  .delete_plm
    TDC : STA $1C37,Y
    RTS
}
warnpc $84D490

org $94937D
layout_samus_bombable_block_collision_table:
    dw $D040

org $94A024
hook_layout_spazer_block_plm_entry:
    dw #layout_spazer_block_plm_entry


; Parlor escape setup asm
org $8F919C
layout_parlor_escape_setup_asm:
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .rts
    JMP layout_asm_vanilla_parlor_escape
  .rts
    RTS
warnpc $8F91A9

; Landing site setup asm
org $8F91BD
layout_landing_site_setup_asm:
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .scrolling_sky
    JSR layout_asm_vanilla_landing_site_escape
  .scrolling_sky
warnpc $8F91C9

; Crateria Kihunters setup asm
org $8F94B1
hook_layout_asm_crateria_kihunters:
    dw #layout_asm_crateria_kihunters

; East Ocean setup asm
org $8F9522
hook_layout_asm_eastocean:
    dw #layout_asm_eastocean

; Forgotten Highway Elbow setup asm
org $8F95CD
hook_layout_asm_forgotten_highway_elbow:
    dw #layout_asm_forgotten_highway_elbow

; Green Hill Zone setup asm
org $8F9E77
hook_layout_asm_greenhillzone:
    dw #layout_asm_greenhillzone

; Moat setup asm
org $8F9624
hook_layout_asm_moat:
    dw #layout_asm_moat

; Red Tower Elevator setup asm
org $8F964F
hook_layout_asm_redtowerelevator:
    dw #layout_asm_redtowerelevator

; Pit Room state check
org $8F9767
hook_layout_asm_pitroom_state_check:
    dw #layout_asm_morph_missiles_state_check

; Pit Room Elevator state check
org $8F97C0
hook_layout_asm_pitroom_elevator_state_check:
    dw #layout_asm_morph_missiles_state_check

; Green Pirates Shaft setup asm
org $8F99E2
hook_layout_asm_green_pirates_shaft:
    dw #layout_asm_green_pirates_shaft

; Brinstar Pre-Map Room setup asm
org $8F9BC2
hook_layout_asm_brinstarpremaproom:
    dw #layout_asm_brinstarpremaproom

; Early Supers setup asm
org $8F9BED
hook_layout_asm_earlysupers:
    dw #layout_asm_earlysupers

; Dachora setup asm
org $8F9CD8
hook_layout_asm_dachora:
    dw #layout_asm_dachora

; Big Pink setup asm
org $8F9D3E
hook_layout_asm_bigpink:
    dw #layout_asm_bigpink

; Mission Impossible setup asm
org $8F9E36
hook_layout_asm_missionimpossible:
    dw #layout_asm_missionimpossible

; Morph Ball Room setup asm
org $8F9EE3
hook_layout_asm_morphballroom:
    dw #layout_asm_morphballroom

; Noob bridge setup asm
org $8F9FDF
hook_layout_asm_noobbridge:
    dw #layout_asm_noobbridge

; Waterway setup asm
org $8FA0F7
hook_layout_asm_waterway:
    dw #layout_asm_waterway

; Red Tower setup asm
org $8FA278
hook_layout_asm_redtower:
    dw #layout_asm_redtower

; Below Spazer setup asm
org $8FA42D
hook_layout_asm_belowspazer:
    dw #layout_asm_belowspazer

; Warehouse Kihunters setup asm
org $8FA4FF
hook_layout_asm_warehousekihunters:
    dw #layout_asm_warehousekihunters

; Statues state check asm
org $8FA675
hook_layout_asm_statues_state_check:
    dw #layout_asm_statues_state_check

; Cathedral Entrance setup asm
org $8FA7D8
hook_layout_asm_cathedralentrance:
    dw #layout_asm_cathedralentrance

; Crocomire Speedway setup asm
org $8FA948
hook_layout_asm_crocspeedway:
    dw #layout_asm_crocspeedway

; Crocomire setup asm
org $8FA9B7
hook_layout_asm_croc:
    dw #layout_asm_croc

; Hi-Jump Boots E-Tank setup asm
org $8FAA66
hook_layout_asm_hjbetank:
    dw #layout_asm_hjbetank

; Single Chamber setup asm
org $8FAD83
hook_layout_asm_singlechamber:
    dw #layout_asm_singlechamber

; Kronic Boost setup asm
org $8FAE99
hook_layout_asm_kronicboost:
    dw #layout_asm_kronicboost

; Acid Statue setup asm
org $8FB20A
hook_layout_asm_acidstatue:
    dw #layout_asm_acidstatue

; Caterpillar elevator and middle-left door asm
org $8FBA26
    ; Replace STA with jump to STA
    JMP layout_asm_caterpillar_update_scrolls

; Caterpillar bottom-left door asm
org $8FBE18
    ; Overwrite PLP : RTS with jump
    ; Okay to overwrite $BE1A since we freed up that space
    JMP layout_asm_caterpillar_after_scrolls

; Escape screen shake and explosion main asm
org $8FC124
    ; Start with copy of $8FC131 routine (replacing JSR with inlined version)
    LDA $0A78 : BNE .end_explosion
    LDA $05B6 : AND #$0001 : BNE .end_explosion
    JSL $808111
    PHA : AND #$00FF : CLC : ADC $0911 : STA $12 : PLA
    XBA : AND #$00FF : CLC : ADC $0915 : STA $14
    LSR : LSR : LSR : LSR
    %a8() : PHA : LDA $07A5 : STA $4202
    PLA : STA $4203 : %a16()
    LDA $12 : LSR : LSR : LSR : LSR
    CLC : ADC $4216 : ASL : TAX
    LDA $7F0002,X : AND #$03FF
    CMP #$00FF : BEQ .end_explosion

    ; Jump to earthquake check after explosion
    PEA layout_asm_escape_screen_shake_pea
    JMP $C1A9

  .end_explosion
    JMP layout_asm_escape_screen_shake
warnpc $8FC183

; Tourian escape room 1 setup asm
org $8FC926
hook_layout_asm_tourian_escape_room_1:
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .rts
    JMP layout_asm_vanilla_tourian_escape_room_1
  .rts
    RTS
warnpc $8FC933

; Tourian escape room 2 setup asm
org $8FC933
hook_layout_asm_tourian_escape_room_2:
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .rts
    JMP layout_asm_vanilla_tourian_escape_room_2
  .rts
    RTS
warnpc $8FC946

; Tourian escape room 3 setup asm
org $8FC946
hook_layout_asm_tourian_escape_room_3:
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .rts
    JMP layout_asm_vanilla_tourian_escape_room_3
  .rts
    RTS
warnpc $8FC953

; Tourian escape room 4 setup asm
org $8FC95B
hook_layout_asm_tourian_escape_room_4:
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .rts
    JMP layout_asm_vanilla_tourian_escape_room_4
  .rts
    RTS
warnpc $8FC96E

; Bowling setup asm
org $8FC9D2
hook_layout_asm_bowling:
    dw #layout_asm_bowling

; Wrecked Ship Main setup asm
org $8FCB20
hook_layout_asm_wreckedshipmain:
    dw #layout_asm_wreckedshipmain

; Electric Death state check asm
org $8FCBE5
hook_layout_asm_electric_death_state_check:
    dw #layout_asm_electric_death_state_check

; Wrecked Ship Energy Tank state check asm
org $8FCC37
hook_layout_asm_ws_etank_state_check:
    dw #layout_asm_ws_etank_state_check

; Wrecked Ship Save setup asm
org $8FCEB4
hook_layout_asm_wreckedshipsave:
    dw layout_asm_wreckedshipsave

; Main Street setup asm
org $8FCFEE
hook_layout_asm_mainstreet:
    dw #layout_asm_mainstreet

; Crab Tunnel setup asm
org $8FD0AF
hook_layout_asm_crabtunnel:
    dw #layout_asm_crabtunnel

; Plasma state check asm
org $8FD2B5
hook_layout_asm_plasma_state_check:
    dw #layout_asm_plasma_state_check

; Plasma spark setup asm
org $8FD365
hook_layout_asm_plasma_spark:
    dw #layout_asm_plasma_spark

; Aqueduct setup asm
org $8FD5CC
hook_layout_asm_aqueduct:
    dw #layout_asm_aqueduct

; Butterfly setup asm
org $8FD611
hook_layout_asm_butterfly:
    dw #layout_asm_butterfly

; Botwoon hallway setup asm
org $8FD63C
hook_layout_asm_botwoon_hallway:
    dw #layout_asm_botwoon_hallway

; Aqueduct Farm Sand Pit header
org $8FD706
hook_layout_door_list_aqueductfarmsandpit:
    dw layout_asm_aqueductfarmsandpit_door_list

; Shaktool room setup asm
org $8FD8EF
hook_layout_asm_shaktool_room:
    dw #layout_asm_shaktool_room

; Halfie Climb setup asm
org $8FD938
hook_layout_asm_halfie_climb:
    dw #layout_asm_halfie_climb

; Tourian escape room 2 main asm
org $8FDE99
hook_layout_main_asm_tourian_escape_room_2:
    dw #layout_asm_tourian_escape_room_2

; Tourian escape room 4 main asm
org $8FDEFD
hook_layout_main_asm_tourian_escape_room_4:
    dw #layout_asm_tourian_escape_room_4

; Ceres Ridley modified state check to support presets
org $8FE0C0
hook_layout_asm_ceres_ridley_state_check:
    dw layout_asm_ceres_ridley_state_check

; Ceres Ridley room setup asm when timer is not running
org $8FE0DF
hook_layout_asm_ceres_ridley_no_timer:
    dw layout_asm_ceres_ridley_no_timer

; East Tunnel bottom-left and bottom-right door asm
org $8FE34E
    ; Optimize existing logic by one byte
    INC : STA $7ECD24
    ; Overwrite extra byte : PLP : RTS with jump
    JMP layout_asm_easttunnel_after_scrolls

; Caterpillar far-right door asm
org $8FE370
    ; Optimize existing logic by one byte
    INC : STA $7ECD2A
    ; Overwrite extra byte : PLP : RTS with jump
    JMP layout_asm_caterpillar_after_scrolls

; Crab Shaft right door asm
org $8FE39D
    ; Replace STA with jump to STA
    JMP layout_asm_crabshaft_update_scrolls

; Morph and Missiles state check asm
org $8FE640
layout_asm_morph_missiles_state_check:
{
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANY_RANDO : BEQ layout_asm_vanilla_morph_missiles_state_check
    BIT !ROOM_LAYOUT_DASH_RECALL : BNE layout_asm_dash_morph_missiles_state_check
    BRA layout_asm_varia_morph_missiles_state_check
}
warnpc $8FE652

org $8FE652
layout_asm_vanilla_morph_missiles_state_check:

org $8FE65F
layout_asm_vanilla_morph_missiles_found:

org $8FE666
layout_asm_vanilla_morph_missiles_not_found:

org $8FE678
layout_asm_dash_morph_missiles_state_check:
{
    LDA !SAMUS_ITEMS_COLLECTED : BNE layout_asm_vanilla_morph_missiles_found
    BRA layout_asm_vanilla_morph_missiles_not_found
}

layout_asm_varia_morph_missiles_state_check:
{
    LDA $7ED820 : BIT #$0001 : BNE layout_asm_vanilla_morph_missiles_found
    BRA layout_asm_vanilla_morph_missiles_not_found
}
warnpc $8FE68A


org $8FEA00
print pc, " layout start"

layout_asm_vanilla_parlor_escape:
{
    LDA #$0018 : STA $183E
    LDA #$FFFF : STA $1840
    RTS
}

layout_asm_vanilla_landing_site_escape:
{
    LDA #$0006 : STA $183E
    LDA #$FFFF : STA $1840
    RTS
}

layout_asm_escape_screen_shake_pea:
    NOP
layout_asm_escape_screen_shake:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .suppress
    LDA $1840 : ORA #$8000 : STA $1840

  .suppress
    RTS
}

layout_asm_vanilla_tourian_escape_room_1:
{
    LDA #$0012 : STA $183E
    LDA #$FFFF : STA $1840
    RTS
}

layout_asm_vanilla_tourian_escape_room_2:
{
    LDA #$0012 : STA $183E
    STA $07E3 : STZ $07E1
    LDA #$FFFF : STA $1840
    RTS
}

layout_asm_vanilla_tourian_escape_room_3:
{
    LDA #$0015 : STA $183E
    LDA #$FFFF : STA $1840
    RTS
}

layout_asm_vanilla_tourian_escape_room_4:
{
    LDA #$0015 : STA $183E
    STA $07E3 : STZ $07E1
    LDA #$FFFF : STA $1840
    RTS
}

layout_asm_tourian_escape_room_2:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .suppress
    JMP $E57C

  .suppress
    RTS
}

layout_asm_tourian_escape_room_4:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .suppress
    JMP $E5A4

  .suppress
    JMP $C183
}

layout_asm_cutscene_g4skip:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_SKIP_G4 : BEQ .done

    ; Verify all four G4 bosses killed
    LDA $7ED828 : BIT #$0100 : BEQ .done
    LDA $7ED82C : BIT #$0001 : BEQ .done
    LDA $7ED82A : AND #$0101 : CMP #$0101 : BNE .done

    ; Set Tourian open
    LDA $7ED820 : ORA #$0400 : STA $7ED820

  .done
    RTS
}

layout_asm_mbhp:
{
    LDA !sram_display_mode : BNE .done
    LDA #!IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
    LDA #!IH_STRAT_MBHP_INDEX : STA !sram_room_strat

  .done
    RTS
}

layout_asm_ceres_ridley_state_check:
{
    LDA $0943 : BEQ .noTimer
    LDA $0001,X : TAX
    JMP $E5E6
  .noTimer
    STZ $093F
    INX : INX : INX
    RTS
}

layout_asm_ceres_ridley_no_timer:
{
    ; Same as original setup asm, except force blue background
    PHP
    SEP #$20
    LDA #$66 : STA $5D
    PLP
    JSL $88DDD0
    LDA #$0009 : STA $07EB
    RTS
}

layout_asm_magnetstairs:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_MAGNET_STAIRS : BEQ layout_asm_magnetstairs_done

    ; Modify graphics to indicate magnet stairs removed
    %a8()
    LDA #$47 : STA $7F01F8 : STA $7F02EA

    ; Convert solid tiles to slope tiles
    LDA #$10 : STA $7F01F9 : STA $7F02EB
    LDA #$53 : STA $7F64FD : STA $7F6576
}

layout_asm_magnetstairs_done:
    PLP
    RTS

layout_asm_greenhillzone:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_magnetstairs_done

    ; Set yellow door as already opened
    LDA $7ED8B6 : ORA #$0001 : STA $7ED8B6

    ; Remove gate and corner tile next to gate
    LDA #$00FF : STA $7F37C8 : STA $7F37CA : STA $7F37CC
    STA $7F38CA : STA $7F39CA : STA $7F3ACA : STA $7F3BCA

    ; Clear gate projectile
    TDC : STA $19B9

    ; Delete gate PLMs
    LDA #!PLM_DELETE : STA $1D73 : STA $1D75

    ; Remove ledge overhang for ease of access to top-right door
    LDA #$00FF : STA $7F0A2A : STA $7F0B2A

    ; Move corner tiles next to gate up one
    %a8()
    LDA #$78 : STA $7F36CA : LDA #$79 : STA $7F36CC

    ; Adjust ledge overhang
    LDA #$6A : STA $7F0A2C

    ; Normal BTS for ledge overhang and gate tiles
    LDA #$00 : STA $7F6996 : STA $7F7FE5 : STA $7F7FE6
    STA $7F8066 : STA $7F80E6 : STA $7F8166 : STA $7F81E6
}

layout_asm_greenhillzone_done:
    PLP
    RTS

layout_asm_morphballroom:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANY_RANDO : BEQ layout_asm_greenhillzone_done
    BIT !ROOM_LAYOUT_DASH_RECALL : BNE layout_asm_greenhillzone_done
    BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .add_morph_ball

    ; Set grey door as already opened
    LDA $7ED8B6 : ORA #$0002 : STA $7ED8B6

  .add_morph_ball
    ; Add back morph ball item
    JSL $8483D7
    dw $2945, $EF23
}

layout_asm_morphballroom_done:
    PLP
    RTS

layout_asm_constructionzone:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANY_RANDO : BEQ layout_asm_morphballroom_done
    BIT !ROOM_LAYOUT_DASH_RECALL : BEQ .set_zebes_awake

    ; DASH requires first item to be collected before waking the planet
    LDA $7ED872 : BIT #$0400 : BEQ .done_zebes_awake

  .set_zebes_awake
    LDA $7ED820 : ORA #$0001 : STA $7ED820

  .done_zebes_awake
    ; Set red door as already opened
    LDA $7ED8B6 : ORA #$0004 : STA $7ED8B6
}

layout_asm_constructionzone_done:
    PLP
    RTS

layout_asm_caterpillar_no_scrolls:
    PHP
    BRA layout_asm_caterpillar_after_scrolls

layout_asm_caterpillar_update_scrolls:
    STA $7ECD26

layout_asm_caterpillar_after_scrolls:
{
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_constructionzone_done

    ; Decorate gap with blocks
    LDA #$8562 : STA $7F145E : STA $7F1460 : STA $7F151E : STA $7F1520

    ; Fix wall decoration below blocks
    LDA #$8543 : STA $7F157E : LDA #$8522 : STA $7F1580

    ; Create visible gap in wall
    LDA #$00FF : STA $7F14BE : STA $7F14C0

    ; Remove gate and block next to gate
    STA $7F142C : STA $7F142E : STA $7F1430
    STA $7F148E : STA $7F14EE : STA $7F154E : STA $7F15AE

    ; Clear gate projectile
    TDC : STA $19B9

    ; Delete gate PLMs
    LDA #!PLM_DELETE : STA $1D6B : STA $1D6D

    ; Normal BTS for gate tiles
    %a8()
    LDA #$00 : STA $7F6E17 : STA $7F6E18 : STA $7F6E19
    STA $7F6E48 : STA $7F6E78 : STA $7F6EA8 : STA $7F6ED8
}

layout_asm_caterpillar_done:
    PLP
    RTS

layout_asm_singlechamber:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_caterpillar_done

    ; Move right wall back one to create a ledge
    LDA #$810C : STA $7F06E0 : STA $7F0A9E
    LDA #$8507 : STA $7F07A0 : STA $7F0920
    LDA #$8505 : STA $7F0860 : STA $7F09E0

    ; Clear out the ledge
    LDA #$00FF : STA $7F06DE : STA $7F079E
    STA $7F085E : STA $7F091E : STA $7F09DE

    ; Remove crumble blocks from vertical shaft
    STA $7F05E0 : STA $7F05E2
    STA $7F06A0 : STA $7F06A2 : STA $7F0760 : STA $7F0762

    ; Remove blocks from horizontal shaft
    STA $7F061E : STA $7F0620 : STA $7F0624
    ; Careful with the block that is also a scroll block
    LDA #$30FF : STA $7F0622

    ; Normal BTS for crumble blocks
    %a8()
    LDA #$00 : STA $7F66F1 : STA $7F66F2
    STA $7F6751 : STA $7F6752 : STA $7F67B1 : STA $7F67B2
}

layout_asm_singlechamber_done:
    PLP
    RTS

layout_asm_crabtunnel:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO_OR_DASH_RECALL : BEQ layout_asm_singlechamber_done
    BIT !ROOM_LAYOUT_DASH_RECALL : BNE layout_asm_crabtunnel_dash

    ; Replace top of gate with slope tiles
    LDA #$1D87 : STA $7F039C : LDA #$1194 : STA $7F039E

    ; Fix tiles to the right of the gate
    LDA #$89A0 : STA $7F03A0 : LDA #$811D : STA $7F0320

    ; Remove remaining gate tiles
    LDA #$00FF : STA $7F041E : STA $7F049E : STA $7F051E : STA $7F059E

    ; Clear gate projectile
    TDC : STA $19B9

    ; Delete gate PLMs
    LDA #!PLM_DELETE : STA $1D73 : STA $1D75

    ; Slope BTS for top of the gate tiles
    %a8()
    LDA #$D2 : STA $7F65CF : LDA #$92 : STA $7F65D0

    ; Normal BTS for remaining gate tiles
    LDA #$00 : STA $7F6610 : STA $7F6650 : STA $7F6690 : STA $7F66D0
    PLP
    RTS
}

layout_asm_crabtunnel_dash:
    ; Remove remaining gate tiles
    LDA #$00FF : STA $7F041E : STA $7F049E : STA $7F051E : STA $7F059E

    ; Change gate PLM to open gate
    LDA #$C826 : STA $1C85
    LDA #$BC13 : STA $1D75

    ; Clear gate projectile
    TDC : STA $19B9

layout_asm_crabtunnel_done:
    PLP
    RTS

layout_asm_easttunnel_no_scrolls:
    PHP

layout_asm_easttunnel_after_scrolls:
{
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_crabtunnel_done

    ; Clear gate projectile
    TDC : STA $19B9

    ; Delete gate PLMs
    LDA #!PLM_DELETE : STA $1D6B : STA $1D6D

    ; Remove gate tiles
    LDA #$00FF : STA $7F02AE : STA $7F02B0
    STA $7F032E : STA $7F03AE : STA $7F042E : STA $7F04AE

    ; Remove blocks from vertical shaft
    STA $7F078C : STA $7F088C : STA $7F090C
    STA $7F098C : STA $7F0A0C : STA $7F0A8C
    ; Careful with the block that is also a scroll block
    LDA #$30FF : STA $7F080C

    ; Normal BTS for gate tiles
    %a8()
    LDA #$00 : STA $7F6558 : STA $7F6559
    STA $7F6598 : STA $7F65D8 : STA $7F6618 : STA $7F6658

    ; Decorate vertical shaft
    LDA #$22 : STA $7F070A : STA $7F070E
    STA $7F078A : STA $7F078E : STA $7F080A : STA $7F080E
    STA $7F088A : STA $7F088E : STA $7F090A : STA $7F090E
    STA $7F098A : STA $7F098E : STA $7F0A0A : STA $7F0A0E
    LDA #$85 : STA $7F078B : STA $7F080B : STA $7F088B
    STA $7F090B : STA $7F098B : STA $7F0A0B
    STA $7F0A8A : STA $7F0A8E
    LDA #$8D : STA $7F0A8B
}

layout_asm_easttunnel_done:
    PLP
    RTS

layout_asm_eastocean:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .done

    ; Add platforms for ease of access to right door
    LDA #$8100 : STA $7F4506 : STA $7F4876
    INC : STA $7F4508 : STA $7F4878
    LDA #$8501 : STA $7F450A : STA $7F487A
    DEC : STA $7F450C : STA $7F487C
    LDA #$1120 : STA $7F45E6 : STA $7F4956
    INC : STA $7F45E8 : STA $7F4958
    LDA #$1521 : STA $7F45EA : STA $7F495A
    DEC : STA $7F45EC : STA $7F495C

    ; Slope BTS for platform bottoms
    %a8()
    LDA #$94 : STA $7F86F4 : STA $7F88AC
    INC : STA $7F86F5 : STA $7F88AD
    LDA #$D5 : STA $7F86F6 : STA $7F88AE
    DEC : STA $7F86F7 : STA $7F88AF

  .done
    PLP
    ; Overwritten logic
    JSL $88A800
    RTS
}

layout_asm_crabshaft_no_scrolls:
    PHP
    BRA layout_asm_crabshaft_after_scrolls

layout_asm_crabshaft_update_scrolls:
    STA $7ECD26

layout_asm_crabshaft_after_scrolls:
{
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_crabshaft_done

    ; Set green door as already opened
    LDA $7ED8C0 : ORA #$8000 : STA $7ED8C0

    ; Clear space above save station
    LDA #$00FF : STA $7F095C : STA $7F095E

    ; Add save station PLM
    %ai16()
    PHX : LDX #layout_asm_crabshaft_plm_data
    JSL $84846A : PLX
}

layout_asm_crabshaft_done:
    PLP
    RTS

layout_asm_crabshaft_plm_data:
    db #$6F, #$B7, #$0D, #$29, #$09, #$00

layout_asm_mainstreet:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_crabshaft_done

    ; Add save station PLM
    %ai16()
    PHX : LDX #layout_asm_mainstreet_plm_data
    JSL $84846A : PLX
}

layout_asm_mainstreet_done:
    PLP
    RTS

layout_asm_mainstreet_plm_data:
    db #$6F, #$B7, #$18, #$59, #$0A, #$00

layout_asm_crateria_kihunters:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_mainstreet_done

    ; Set yellow door as already opened
    LDA $7ED8B0 : ORA #$4000 : STA $7ED8B0
}

layout_asm_crateria_kihunters_done:
    PLP
    RTS

layout_asm_forgotten_highway_elbow:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO_OR_DASH_RECALL : BEQ layout_asm_crateria_kihunters_done

    ; Set yellow door as already opened
    LDA $7ED8B0 : ORA #$8000 : STA $7ED8B0
}

layout_asm_forgotten_highway_elbow_done:
    PLP
    RTS

layout_asm_green_pirates_shaft:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_forgotten_highway_elbow_done

    ; Set red door as already opened
    LDA $7ED8B2 : ORA #$4000 : STA $7ED8B2
}

layout_asm_green_pirates_shaft_done:
    PLP
    RTS

layout_asm_bowling:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ layout_asm_green_pirates_shaft_done

    ; Clear speed blocks in front of Wrecked Ship reserve item
    LDA #$00FF : STA $7F053E
    STA $7F05BE : STA $7F05C0 : STA $7F05C4
    STA $7F05C6 : STA $7F05CA : STA $7F05CC
    STA $7F067E : STA $7F0680 : STA $7F0684
    STA $7F0686 : STA $7F068A : STA $7F068C
    STA $7F073E : STA $7F0740 : STA $7F0744
    STA $7F0746 : STA $7F074A : STA $7F074C
}

layout_asm_bowling_done:
    PLP
    RTS

layout_asm_wreckedshipmain:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_bowling_done

    ; Set grey door as already opened
    LDA $7ED8C0 : ORA #$0008 : STA $7ED8C0
}

layout_asm_wreckedshipmain_done:
    PLP
    RTS

layout_asm_electric_death_varia_tweaks_header:
    dl $C4D3EE
    db $05, $30, $05
    dw $9C04, $C1AB, $8BF7, $C1C1, $CC21, $0000, $0000, $C323, $E19E, $C8C7

layout_asm_electric_death_state_check:
{
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL_OR_VARIA_TWEAKS : BEQ .end
    LDX #layout_asm_electric_death_varia_tweaks_header
  .end
    JMP $E5E6
}

layout_asm_ws_etank_varia_tweaks_header:
    dl $C4D883
    db $05, $00, $03
    dw $9C14, $C1E7, $8C27, $00C0, $0000, $0000, $0000, $C337, $0000, $C8C7

layout_asm_ws_etank_state_check:
{
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL_OR_VARIA_TWEAKS : BEQ .end
    LDX #layout_asm_ws_etank_varia_tweaks_header
  .end
    JMP $E5E6
}

layout_asm_wreckedshipsave:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO_OR_DASH_RECALL : BEQ layout_asm_wreckedshipmain_done

    ; Activate save station
    JSL $8483D7
    dw $0B07, $B76F
}

layout_asm_wreckedshipsave_done:
    PLP
    RTS

layout_asm_plasma_dash_header:
    dl $CB8BD4
    db $0B, $00, $00
    dw $9D94, #layout_asm_plasma_dash_enemies, #layout_asm_plasma_dash_enemy_set
    dw $00C0, $D2D3, $0000, $0000, $C553, $0000, #layout_asm_plasma

layout_asm_plasma_state_check:
{
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ .end
    LDX #layout_asm_plasma_dash_header
  .end
    JMP $E5E6
}

layout_asm_plasma:
{
    PHP
    %a16()

    ; Add platform and surrounding decoration
    LDA #$00FF : STA $7F04AE : STA $7F04B4
    STA $7F04EC : STA $7F04EE : STA $7F04F4
    STA $7F051E : STA $7F0520 : STA $7F0522
    STA $7F0530 : STA $7F0532 : STA $7F0534
    STA $7F055E : STA $7F0560 : STA $7F0562
    STA $7F0570 : STA $7F0572 : STA $7F0574
    STA $7F05B0 : STA $7F05B2 : STA $7F05B4
    STA $7F05F0 : STA $7F05F2 : STA $7F05F4
    STA $7F062C : STA $7F062E : STA $7F0630 : STA $7F0632 : STA $7F0634
    STA $7F066C : STA $7F066E : STA $7F0670 : STA $7F0672 : STA $7F0674
    STA $7F06AE : STA $7F06B0 : STA $7F06B2 : STA $7F06B4
    STA $7F06EE : STA $7F06F0 : STA $7F06F2 : STA $7F06F4
    STA $7F072E : STA $7F0730 : STA $7F0732 : STA $7F0734
    STA $7F076E : STA $7F0770 : STA $7F0772 : STA $7F0774
    STA $7F07AE : STA $7F07B0 : STA $7F07B2 : STA $7F07B4
    LDA #$0202 : STA $7F0524
    LDA #$0382 : STA $7F0430 : STA $7F0432
    INC : STA $7F03F0 : STA $7F03F2
    LDA #$0386 : STA $7F0434
    INC : STA $7F03F4
    INC : STA $7F046E : STA $7F04F0
    INC : STA $7F03EE : STA $7F0470
    INC : STA $7F0472
    INC : STA $7F0474 : STA $7F04DE : STA $7F04F2
    INC : STA $7F042E : STA $7F04B0
    INC : STA $7F03B4 : STA $7F04B2
    INC : INC : STA $7F04AC : STA $7F059C
    LDA #$0398 : STA $7F042C : STA $7F051C
    INC : STA $7F046C : STA $7F055C
    LDA #$039C : STA $7F03EC : STA $7F04DC
    LDA #$0602 : STA $7F052E
    LDA #$1212 : STA $7F05A4
    INC : INC : STA $7F0564
    LDA #$1612 : STA $7F05AE
    INC : INC : STA $7F056E
    LDA #$8200 : STA $7F0528 : STA $7F052A
    STA $7F07EE : STA $7F07F0 : STA $7F07F2 : STA $7F07F4
    INC : STA $7F0526
    LDA #$8210 : STA $7F0568 : STA $7F056A
    STA $7F05A6 : STA $7F05A8 : STA $7F05AA : STA $7F05AC
    LDA #$8215 : STA $7F0566
    LDA #$8601 : STA $7F052C
    LDA #$8615 : STA $7F056C
    LDA #$8A07 : STA $7F05E6 : STA $7F05E8
    STA $7F05EA : STA $7F05EC
    LDA #$8A0B : STA $7F05E4
    LDA #$8E0B : STA $7F05EE

    ; Add slope BTS to new platform
    %a8()
    LDA #$1B : STA $7F66B3 : INC : STA $7F66D3
    LDA #$5B : STA $7F66B8 : INC : STA $7F66D8
}

layout_asm_plasma_done:
    PLP
    RTS

layout_asm_plasma_spark:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ layout_asm_plasma_done

    ; Set grey door as already opened
    LDA $7ED8C2 : ORA #$0008 : STA $7ED8C2
}

layout_asm_plasma_spark_done:
    PLP
    RTS

layout_asm_aqueduct:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_plasma_spark_done

    ; Replace power bomb blocks with bomb blocks
    LDA #$F09D : STA $7F1690 : STA $7F18D0
    LDA #$F49D : STA $7F1692 : STA $7F18D2

    ; Replace BTS
    %a8()
    LDA #$04 : STA $7F6F49 : STA $7F6F4A
    STA $7F7069 : STA $7F706A
}

layout_asm_aqueduct_done:
    PLP
    RTS

layout_asm_butterfly:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ layout_asm_aqueduct_done

    ; Set grey door as already opened
    LDA $7ED8C2 : ORA #$0080 : STA $7ED8C2
}

layout_asm_butterfly_done:
    PLP
    RTS

layout_asm_botwoon_hallway:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ layout_asm_botwoon_hallway_done

    ; Convert speed blocks to bomb blocks
    %a8()
    LDA #$F0 : STA $7F05A1 : STA $7F05E3 : STA $7F05ED
    STA $7F0663 : STA $7F06A1 : STA $7F06ED
    LDA #$F3 : STA $7F0621
    LDA #$F8 : STA $7F066D : STA $7F06E3

    ; Use spazer block BTS
    LDA #$09 : STA $7F66D1 : STA $7F66F2 : STA $7F66F7
    STA $7F6711 : STA $7F6732 : STA $7F6737
    STA $7F6751 : STA $7F6772 : STA $7F6777
}

layout_asm_botwoon_hallway_done:
    PLP
    RTS

layout_asm_pants_room_external:
{
    ; Open grapple blocks to shaktool
    LDA #$00FF : STA $7F0CCC : STA $7F0CCE : STA $7F0CD0
    STA $7F0CD2 : STA $7F0CD4 : STA $7F0CD6
    STA $7F0D0E : STA $7F0D14 : STA $7F0D16

    ; Replace BTS
    TDC : STA $7F6A69
    RTL

layout_asm_shaktool_room:
{
    ; Restore shaktool PLM linked to PB explosion
    JSL $8483D7
    dw $0000, $B8EB

    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ layout_asm_botwoon_hallway_done

    ; Clear shaktool sand
    LDA #$00FF : STA $7F02A2 : STA $7F02A4 : STA $7F02A6 : STA $7F02A8
    STA $7F02AA : STA $7F02AC : STA $7F02AE : STA $7F02B0
    STA $7F02B2 : STA $7F02B4 : STA $7F02B6 : STA $7F02B8
    STA $7F02BA : STA $7F02BC : STA $7F02BE : STA $7F02C0
    STA $7F02C2 : STA $7F02C4 : STA $7F02C6 : STA $7F02C8
    STA $7F02CA : STA $7F02CC : STA $7F02CE : STA $7F02D0
    STA $7F02D2 : STA $7F02D4 : STA $7F02D6 : STA $7F02D8
    STA $7F02DA : STA $7F02DC : STA $7F02DE : STA $7F02E0
    STA $7F02E2 : STA $7F02E4 : STA $7F02E6 : STA $7F02E8
    STA $7F0322 : STA $7F0324 : STA $7F0326 : STA $7F0328
    STA $7F032A : STA $7F032C : STA $7F032E : STA $7F0330
    STA $7F0332 : STA $7F0334 : STA $7F0336 : STA $7F0338
    STA $7F033A : STA $7F033C : STA $7F033E : STA $7F0340
    STA $7F0342 : STA $7F0344 : STA $7F0346 : STA $7F0348
    STA $7F034A : STA $7F034C : STA $7F034E : STA $7F0350
    STA $7F0352 : STA $7F0354 : STA $7F0356 : STA $7F0358
    STA $7F035A : STA $7F035C : STA $7F035E : STA $7F0360
    STA $7F0362 : STA $7F0364 : STA $7F0366 : STA $7F0368
    STA $7F03A2 : STA $7F03A4 : STA $7F03A6 : STA $7F03A8
    STA $7F03AA : STA $7F03AC : STA $7F03AE : STA $7F03B0
    STA $7F03B2 : STA $7F03B4 : STA $7F03B6 : STA $7F03B8
    STA $7F03BA : STA $7F03BC : STA $7F03BE : STA $7F03C0
    STA $7F03C2 : STA $7F03C4 : STA $7F03C6 : STA $7F03C8
    STA $7F03CA : STA $7F03CC : STA $7F03CE : STA $7F03D0
    STA $7F03D2 : STA $7F03D4 : STA $7F03D6 : STA $7F03D8
    STA $7F03DA : STA $7F03DC : STA $7F03DE : STA $7F03E0
    STA $7F03E2 : STA $7F03E4 : STA $7F03E6 : STA $7F03E8
    STA $7F0422 : STA $7F0424 : STA $7F0426 : STA $7F0428
    STA $7F042A : STA $7F042C : STA $7F042E : STA $7F0430
    STA $7F0432 : STA $7F0434 : STA $7F0436 : STA $7F0438
    STA $7F043A : STA $7F043C : STA $7F043E : STA $7F0440
    STA $7F0442 : STA $7F0444 : STA $7F0446 : STA $7F0448
    STA $7F044A : STA $7F044C : STA $7F044E : STA $7F0450
    STA $7F0452 : STA $7F0454 : STA $7F0456 : STA $7F0458
    STA $7F045A : STA $7F045C : STA $7F045E : STA $7F0460
    STA $7F0462 : STA $7F0464 : STA $7F0466 : STA $7F0468
    STA $7F04A2 : STA $7F04A4 : STA $7F04A6 : STA $7F04A8
    STA $7F04AA : STA $7F04AC : STA $7F04AE : STA $7F04B0
    STA $7F04B2 : STA $7F04B4 : STA $7F04B6 : STA $7F04B8
    STA $7F04BA : STA $7F04BC : STA $7F04BE : STA $7F04C0
    STA $7F04C2 : STA $7F04C4 : STA $7F04C6 : STA $7F04C8
    STA $7F04CA : STA $7F04CC : STA $7F04CE : STA $7F04D0
    STA $7F04D2 : STA $7F04D4 : STA $7F04D6 : STA $7F04D8
    STA $7F04DA : STA $7F04DC : STA $7F04DE : STA $7F04E0
    STA $7F04E2 : STA $7F04E4 : STA $7F04E6 : STA $7F04E8
    STA $7F0522 : STA $7F0524 : STA $7F0526 : STA $7F0528
    STA $7F052A : STA $7F052C : STA $7F052E : STA $7F0530
    STA $7F0532 : STA $7F0534 : STA $7F0536 : STA $7F0538
    STA $7F053A : STA $7F053C : STA $7F053E : STA $7F0540
    STA $7F0542 : STA $7F0544 : STA $7F0546 : STA $7F0548
    STA $7F054A : STA $7F054C : STA $7F054E : STA $7F0550
    STA $7F0552 : STA $7F0554 : STA $7F0556 : STA $7F0558
    STA $7F055A : STA $7F055C : STA $7F055E : STA $7F0560
    STA $7F0562 : STA $7F0564 : STA $7F0566 : STA $7F0568
}

layout_asm_shaktool_room_done:
    PLP
    RTS

layout_asm_halfie_climb:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ layout_asm_shaktool_room_done

    ; Set grey door as already opened
    LDA $7ED8C2 : ORA #$1000 : STA $7ED8C2
}

layout_asm_halfie_climb_done:
    PLP
    RTS

layout_asm_aqueductfarmsandpit_door_list:
    dw #$A7D4, #$A534

layout_asm_aqueductfarmsandpit_external:
{
    ; Place door BTS
    %a8()
    LDA #$40 : STA $7F65C0 : LDA #$FF : STA $7F6600
    DEC : STA $7F6640 : DEC : STA $7F6680 : LDA #$01
    STA $7F65C1 : STA $7F6601 : STA $7F6641 : STA $7F6681

    ; Move right wall one to the left
    %a16()
    LDA #$8A09 : STA $7F01FE : LDA #$820E : STA $7F067E
    LDA #$820A : STA $7F027E : STA $7F05FE
    LDA #$8A0B : STA $7F02FE : LDA #$8A07 : STA $7F0300
    LDA #$820B : STA $7F057E : LDA #$8207 : STA $7F0580

    ; Fill in area behind the wall
    LDA #$8210 : STA $7F0200 : STA $7F0280 : STA $7F0600 : STA $7F0680

    ; Place the door
    LDA #$C00C : STA $7F037E : LDA #$9040 : STA $7F0380
    LDA #$D02C : STA $7F03FE : LDA #$9060 : STA $7F0400
    LDA #$D82C : STA $7F047E : LDA #$9860 : STA $7F0480
    LDA #$D80C : STA $7F04FE : LDA #$9840 : STA $7F0500
    RTL
}

layout_asm_westsandhall:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_westsandhall_done

    ; Change left door BTS to previously unused door
    %a8()
    LDA #$02 : STA $7F6582 : STA $7F65C2 : STA $7F6602 : STA $7F6642
}

layout_asm_westsandhall_done:
    PLP
    RTS

layout_asm_crocspeedway:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO_OR_DASH_RECALL : BEQ layout_asm_westsandhall_done

    ; Set green door as already opened
    LDA $7ED8B8 : ORA #$4000 : STA $7ED8B8
}

layout_asm_crocspeedway_done:
    PLP
    RTS

layout_asm_croc:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO_OR_DASH_RECALL : BEQ layout_asm_crocspeedway_done

    ; Set grey door as already opened
    LDA $7ED8B8 : ORA #$8000 : STA $7ED8B8
}

layout_asm_croc_done:
    PLP
    RTS

layout_asm_kronicboost:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_croc_done

    ; Set yellow door as already opened
    LDA $7ED8BA : ORA #$0100 : STA $7ED8BA
}

layout_asm_kronicboost_done:
    PLP
    RTS

layout_asm_bigpink:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK : BEQ layout_asm_kronicboost_done

    ; Clear out path to save room
    LDA #$00FF : STA $7F03F2 : STA $7F03F8 : STA $7F03FA
    STA $7F03FC : STA $7F03FE : STA $7F0400 : STA $7F0402
    STA $7F0404 : STA $7F0406 : STA $7F0408 : STA $7F0492
    STA $7F0496 : STA $7F0498 : STA $7F049A : STA $7F049C
    STA $7F049E : STA $7F04A0 : STA $7F04A2 : STA $7F04A4
    STA $7F04A6 : STA $7F04A8 : STA $7F0542

    ; A small part of the path is decorated
    LDA #$0B24 : STA $7F03F4
    LDA #$0B02 : STA $7F03F6
    LDA #$0B05 : STA $7F0494

    ; Decorate wall above path
    LDA #$8B08 : STA $7F0354 : STA $7F0356 : STA $7F0358
    STA $7F035A : STA $7F035C : STA $7F035E : STA $7F0360
    STA $7F0362 : STA $7F0364 : STA $7F0366

    ; Fade in wall above path
    LDA #$8B28 : STA $7F02B4 : STA $7F02B6 : STA $7F02B8
    STA $7F02BA : STA $7F02BC : STA $7F02BE : STA $7F02C0
    STA $7F02C2 : STA $7F02C4

    ; Decorate the corner
    LDA #$8B17 : STA $7F0368
    LDA #$8B29 : STA $7F02C6

    ; Normal BTS for path replacing scrolls
    %a8()
    LDA #$00 : STA $7F66A1 : STA $7F66A2 : STA $7F66A3

    ; Allow screen scrolling along the path
    LDA #$02 : STA $7ECD21
}

layout_asm_bigpink_done:
    PLP
    RTS

layout_asm_dachora:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_bigpink_done

    ; Use non-respawning speed booster block BTS for dachora pitfall
    %a8()
    LDA #$0F : STA $7F6987 : STA $7F6988 : STA $7F6989
    STA $7F698A : STA $7F698B : STA $7F698C
}

layout_asm_dachora_done:
    PLP
    RTS

layout_asm_moat:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_dachora_done
    BIT !ROOM_LAYOUT_DASH_RECALL : BNE layout_asm_moat_dash

    ; Use shootable blocks on the moat pillar
    %a8()
    LDA #$C0 : STA $7F059F : STA $7F061F
    LDA #$BE : STA $7F05DE
    LDA #$D0 : STA $7F05DF

    ; Set BTS so the top block is 1x2
    LDA #$02 : STA $7F66D0
    LDA #$FF : STA $7F66F0
    PLP
    RTS
}

layout_asm_moat_dash:
    ; Use a single shootable block on the moat pillar
    LDA #$F05F : STA $7F061E

layout_asm_moat_done:
    PLP
    RTS

layout_asm_redtowerelevator:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANY_RANDO : BEQ layout_asm_moat_done

    ; Set red door as already opened
    LDA $7ED8B2 : ORA #$0001 : STA $7ED8B2
}

layout_asm_redtowerelevator_done:
    PLP
    RTS

layout_asm_missionimpossible:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK : BEQ layout_asm_redtowerelevator_done

    ; Use shootable block
    %a8()
    LDA #$C0 : STA $7F0687
}

layout_asm_missionimpossible_done:
    PLP
    RTS

layout_asm_noobbridge:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_missionimpossible_done

    ; Set green door as already opened
    LDA $7ED8B6 : ORA #$0008 : STA $7ED8B6
}

layout_asm_noobbridge_done:
    PLP
    RTS

layout_asm_waterway:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ layout_asm_noobbridge_done

    ; Convert speed blocks to bomb blocks
    LDA #$F306 : STA $7F0802 : STA $7F08E2 : STA $7F09C2
    LDA #$F34E : STA $7F0818 : STA $7F0836 : STA $7F083A
    STA $7F083C : STA $7F08F6 : STA $7F08FA : STA $7F0916
    STA $7F0918 : STA $7F091A : STA $7F09D6 : STA $7F09D8
    STA $7F09F6 : STA $7F09F8 : STA $7F09FC : STA $7F09FE : STA $7F0A00
    LDA #$F350 : STA $7F0804 : STA $7F081C : STA $7F0844
    STA $7F08E4 : STA $7F08FC : STA $7F0924
    STA $7F09C4 : STA $7F09DC : STA $7F0A04
    LDA #$F74E : STA $7F081A : STA $7F0838 : STA $7F0914
    STA $7F091C : STA $7F091E : STA $7F0922 : STA $7F09DA
    LDA #$F750 : STA $7F0814 : STA $7F0832 : STA $7F08F4
    STA $7F0912 : STA $7F09D4 : STA $7F09F2
    LDA #$FB4E : STA $7F0816 : STA $7F0840 : STA $7F0842
    STA $7F0920 : STA $7F09F4 : STA $7F09FA : STA $7F0A02
    LDA #$FF4E : STA $7F0834 : STA $7F083E : STA $7F08F8

    ; Use spazer block BTS
    LDA #$0909 : STA $7F6802 : STA $7F680B : STA $7F680C : STA $7F680E
    STA $7F681A : STA $7F681C : STA $7F681E : STA $7F6820 : STA $7F6822
    STA $7F6872 : STA $7F687B : STA $7F687C : STA $7F687E
    STA $7F688A : STA $7F688C : STA $7F688E : STA $7F6890 : STA $7F6892
    STA $7F68E2 : STA $7F68EB : STA $7F68EC : STA $7F68EE
    STA $7F68FA : STA $7F68FC : STA $7F68FE : STA $7F6900 : STA $7F6902
}

layout_asm_waterway_done:
    PLP
    RTS

layout_asm_redtower:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_waterway_done

    ; Create opening along bottom left of red tower
    LDA #$00FF : STA $7F0E66 : STA $7F0E88 : STA $7F0EA6 : STA $7F0EA8
    STA $7F0EC6 : STA $7F0EC8 : STA $7F0ECA : STA $7F0EE8

    ; Decorate opening background
    LDA #$014B : STA $7F0E68 : STA $7F0EAA : LDA #$0169 : STA $7F0E6A
    LDA #$014A : STA $7F0E8A : LDA #$094B : STA $7F0EEA

    ; Move the wall further to the left
    LDA #$8101 : STA $7F0E64 : LDA #$8121 : STA $7F0EC4
    LDA #$8103 : STA $7F0E84 : STA $7F0EA4
    LDA #$8143 : STA $7F0EE6 : LDA #$072D : STA $7F0E86
}

layout_asm_redtower_done:
    PLP
    RTS

layout_asm_belowspazer:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_redtower_done

    ; Use shootable block
    LDA #$C1EB : STA $7F018E
}

layout_asm_belowspazer_done:
    PLP
    RTS

layout_asm_warehousekihunters:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK : BEQ layout_asm_belowspazer_done

    ; Use shootable block
    %a8()
    LDA #$C5 : STA $7F064F
}

layout_asm_warehousekihunters_done:
    PLP

layout_asm_statues_oob_viewer_done:
    RTS

layout_asm_statues_oob_viewer_header:
    dl $CE9BE9
    db $15, $09, $06
    dw $840A, #layout_asm_statues_oob_viewer_enemies, #layout_asm_statues_oob_viewer_enemy_set
    dw $0181, $A697, $0000, $0000, #layout_asm_statues_plm, $BB60, #layout_asm_statues_oob_viewer_done

layout_asm_statues_plm:
    dw $0000

layout_asm_statues_state_check:
{
    LDA !ram_sprite_feature_flags : BIT !SPRITE_OOB_WATCH : BEQ .end
    LDX #layout_asm_statues_oob_viewer_header
  .end
    JMP $E5E6
}

layout_asm_cathedralentrance:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_cathedralentrance_done

    ; Remove protruding ledge
    LDA #$8106 : STA $7F040C
    LDA #$00FF : STA $7F03AC : STA $7F040E : STA $7F0410

    ; Remove slope BTS
    %a8()
    LDA #$00 : STA $7F65B7 : STA $7F6609
}

layout_asm_cathedralentrance_done:
    PLP
    RTS

layout_asm_hjbetank:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_cathedralentrance_done
    BIT !ROOM_LAYOUT_DASH_RECALL : BNE layout_asm_hjbetank_dash

    ; Use one shootable block
    %a8()
    LDA #$C5 : STA $7F015D
    PLP
    RTS
}

layout_asm_hjbetank_dash:
    ; Use multiple shootable blocks
    %a8()
    LDA #$C5 : STA $7F015D
    LDA #$C3 : STA $7F02B5 : STA $7F02B9

layout_asm_hjbetank_done:
    PLP
    RTS

layout_asm_acidstatue:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_VARIA_TWEAKS : BEQ layout_asm_hjbetank_done

    ; Add platform
    LDA #$836B : STA $7F049E : STA $7F04A0
    STA $7F04A2 : STA $7F04A4
}

layout_asm_acidstatue_done:
    PLP
    RTS

layout_asm_brinstarpremaproom:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK : BEQ layout_asm_acidstatue_done

    ; Set grey door as already opened
    LDA $7ED8B4 : ORA #$0020 : STA $7ED8B4
}

layout_asm_brinstarpremaproom_done:
    PLP
    RTS

layout_asm_earlysupers:
{
    PHP
    %a16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_brinstarpremaproom_done
    BIT !ROOM_LAYOUT_DASH_RECALL : BNE layout_asm_earlysupers_dash

    ; Use shootable block on the bridge
    %a8()
    LDA #$C1 : STA $7F08BD

    ; Use shootable blocks on the divider
    STA $7F0935 : STA $7F09F5
    LDA #$D1 : STA $7F0995 : STA $7F0A55

    ; Set BTS to make 1x2 blocks
    LDA #$02 : STA $7F689B : STA $7F68FB
    LDA #$FF : STA $7F68CB : STA $7F692B
    PLP
    RTS
}

layout_asm_earlysupers_dash:
    ; Use shootable block on the bridge
    %a8()
    LDA #$C1 : STA $7F08BD

layout_asm_earlysupers_done:
    PLP
    RTS

door_custom_asm:
{
    ; Cancel movement
    STZ !SAMUS_Y_SUBSPEED : STZ !SAMUS_Y_SPEED
    STZ !SAMUS_X_RUNSPEED : STZ !SAMUS_X_SUBRUNSPEED
    STZ !SAMUS_X_MOMENTUM : STZ !SAMUS_X_SUBMOMENTUM
    STZ !SAMUS_DOOR_SUBSPEED : STZ !SAMUS_DOOR_SPEED

    ; Force Samus to elevator pose
    STZ !SAMUS_POSE : STZ !SAMUS_POSE_DIRECTION
    STZ !SAMUS_PREVIOUS_POSE : STZ !SAMUS_PREVIOUS_POSE_DIRECTION
    STZ !SAMUS_LAST_DIFFERENT_POSE : STZ !SAMUS_LAST_DIFFERENT_POSE_DIRECTION

    ; Set pose transition values to FFFF
    LDA #$FFFF : STA !SAMUS_TRANSITION_VALUES
    STA !SAMUS_TRANSITION_VALUES+2 : STA !SAMUS_TRANSITION_VALUES+4

    ; Reset animation timer
    STZ !SAMUS_ANIMATION_FRAME

    ; Reset elevator flags
    STZ !ELEVATOR_PROPERTIES
    STZ !ELEVATOR_STATUS

    ; Unlock Samus
    LDA #$E695 : STA !SAMUS_LOCKED_HANDLER
    LDA #$E725 : STA !SAMUS_MOVEMENT_HANDLER

  .setPos
    ; Set Samus position
    LDA $83000C,X : STA !SAMUS_X
    LDA $83000E,X : STA !SAMUS_Y

    ; Clear BG2 VRAM flag in case we are exiting croc
    STZ !ENEMY_BG2_VRAM_TRANSFER_FLAG

    ; Execute another door asm if necessary
    LDA $830010,X : BEQ .done
    STA $12 : JMP ($0012)

  .done
    RTS
}

layout_asm_crateriakihunters_bottomdoor:
{
    ; Perform same scroll asm as vanilla
    PHP
    %a8()
    LDA #$02 : STA $7ECD21 : STA $7ECD24
    PLP

    ; Fall through to next method to clear BG2 VRAM flag
}

layout_asm_clear_bg2_vram_flag:
{
    ; Clear BG2 VRAM flag in case we are exiting croc
    STZ !ENEMY_BG2_VRAM_TRANSFER_FLAG
    RTS
}

print pc, " layout end"


org $A1EBD1
print pc, " layout bankA1 start"

layout_asm_plasma_dash_enemies:
    dw $F693, #$0100, #$0080, #$0000, #$2000, #$0004, #$8001, #$0020
    dw $F693, #$0080, #$01D0, #$0000, #$2000, #$0004, #$8000, #$0030
    dw $F693, #$01B0, #$01D0, #$0000, #$2000, #$0004, #$8001, #$0030
    dw $F393, #$0030, #$0180, #$0000, #$2000, #$0004, #$0000, #$01A0
    dw $F393, #$01D0, #$0130, #$0000, #$2000, #$0004, #$0001, #$01A0
    dw $F693, #$0078, #$0280, #$0000, #$2000, #$0004, #$8001, #$0080
    db #$FF, #$FF, #$06

layout_asm_statues_oob_viewer_enemies:
    dw $D73F, #$0080, #$01B0, #$0000, #$2C00, #$0000, #$0000, #$0240
    db #$FF, #$FF, #$00

print pc, " layout bankA1 end"


org $B4F4B8
print pc, " layout bankB4 start"

layout_asm_plasma_dash_enemy_set:
    dw $F693, #$0001, $F393, #$0002
    db #$FF, #$FF, #$00

layout_asm_statues_oob_viewer_enemy_set:
    db #$FF, #$FF, #$00

print pc, " layout bankB4 end"

