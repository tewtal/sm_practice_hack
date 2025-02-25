
; Red Tower save station load point
org $80C615
brinstar_save_station_5:
    dw #ROOM_RedTower, #$90F6, #$0000, #$0000, #$0700, #$0058, #$0050

; Crab Shaft save station load point
org $80C94F
maridia_save_station_4:
    dw #ROOM_CrabShaft, #$A468, #$0000, #$0000, #$0200, #$0078, #$0060

; Crab Tunnel save station load point
org $80C95D
maridia_save_station_5:
    dw #ROOM_CrabTunnel, #$A3A8, #$0000, #$0000, #$0000, #$00B8, #$0000

; Red Fish save station load point
org $80C96B
maridia_save_station_6:
    dw #ROOM_RedFishRoom, #$A42C, #$0000, #$0200, #$0000, #$0078, #$0050

; Crab Shaft save station load point
org $80C995
maridia_save_station_9:
    dw #ROOM_CrabShaft, #$A468, #$0000, #$0000, #$0200, #$0078, #$0060

; Main Street save station load point
org $80C9A3
maridia_save_station_10:
    dw #ROOM_MainStreet, #$A3D8, #$0000, #$0100, #$0500, #$0078, #$0010

; Crab Shaft save station map icon location
org $82CA17
maridia_save_station_map_icon_9:
    dw #$0090, #$0050

; Main Street save station map icon location
org $82CA1B
maridia_save_station_map_icon_10:
    dw #$0058, #$0078

; Hijack loading destination room CRE
org $82E1D9
    JSR hijack_loading_room_CRE

; Hijack room transition between loading level data and setting up scrolling
org $82E387
    LDA #hijack_after_load_level_data

; Hijack call to create door closing PLM
org $82E4C9
    JSR hijack_door_closing_plm

; Check if we need to replace item pickup PLMs
; Move vanilla logic down and elevator check to bank 8F to compensate
org $82E8C4
layout_create_plms_execute_asm_fixes:
{
    LDA !ram_itempickups_all : BEQ .vanilla
    JSR layout_create_plms_itempickups
  .vanilla
    ; Vanilla logic
    LDA $0000,X : BEQ .endPLMs
    JSL $84846A
    TXA : CLC : ADC #$0006 : TAX
    BRA .vanilla
  .endPLMs
    JSL layout_skip_custom_door_asm
    JSL preset_room_setup_asm_fixes
    PLB : PLP : RTL
}
warnpc $82E8EB

; Same as above except without the preset fixes
org $82EB7A
layout_create_plms_execute_asm:
{
    LDA !ram_itempickups_all : BEQ .vanilla
    JSR layout_create_plms_itempickups
  .vanilla
    ; Vanilla logic
    LDA $0000,X : BEQ .endPLMs
    JSL $84846A
    TXA : CLC : ADC #$0006 : TAX
    BRA .vanilla
  .endPLMs
    JSL $8FE8A3
    JSL layout_execute_setup_asm
    RTL
}
warnpc $82EB9F


%startfree(82)

layout_create_plms_itempickups_end:
    RTS

layout_create_one_vanilla_room_plm:
    JSL $84846A

layout_create_plms_next_plm:
    TXA : CLC : ADC #$0006 : TAX

layout_create_plms_itempickups:
{
  .loop
    LDA $0000,X : BEQ layout_create_plms_itempickups_end
if !FEATURE_PAL
    CMP #$EEDD : BMI layout_create_one_vanilla_room_plm
    CMP #$EF31 : BMI .visible
    CMP #$EF85 : BMI .chozo
else
    CMP #$EED7 : BMI layout_create_one_vanilla_room_plm
    CMP #$EF2B : BMI .visible
    CMP #$EF7F : BMI .chozo
endif
    LDA !ram_itempickups_hidden : BEQ layout_create_one_vanilla_room_plm
    BRA .custom
  .visible
    LDA !ram_itempickups_visible : BEQ layout_create_one_vanilla_room_plm
    BRA .custom
  .chozo
    LDA !ram_itempickups_chozo : BEQ layout_create_one_vanilla_room_plm
  .custom
    ; Spawn room PLM (similar to $84846A) but with our PLM ID (value of A)
    PHY : PHA
    LDY #$004E
  .customLoop
    LDA $1C37,Y : BEQ .plm
    DEY : DEY : BPL .customLoop
    PLA : PLY
    BRA layout_create_plms_next_plm
  .plm
    %a8()
    LDA $0003,X : STA $4202
    LDA !ROOM_WIDTH_BLOCKS : STA $4203
    LDA $0002,X
    %a16()
    AND #$00FF : CLC : ADC $4216
    ASL : STA $1C87,Y
    LDA $0004,X : STA $1DC7,Y
    ; Now use our stored A value instead of $0000,X
    PLA : STA $1C37,Y
    ; Now prepare to jump to bank 84
    ; We need to preserve our current Y but also pull and repush the original Y
    TYA : PLY
    ; Push a JSL
    PEA $828F : PLB : PEA layout_create_plms_next_plm-1
    ; Now follow the start of the $84846A method
    PHP : PHB : PHY : PHX
    PEA $8484 : PLB : PLB
    ; Restore A and jump
    TAX : LDA $1C37,X
    JML $8484B1
}

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
    ORA $12 : BIT #$0002 : BEQ .pickAreaBossLeftRight

  .pickAreaBossCustom
    LDA portals_areaboss_custom_inverted_table,X
    BRA .saveDoor

  .leftToRight
    LDA !ram_door_destination : ASL : TAX
    LDA portals_right_vanilla_inverted_table,X : BMI .saveDoor
    JMP .noChangePLX

  .rightToLeft
    LDA !ram_door_source : ASL : TAX
    LDA portals_left_vanilla_inverted_table,X : BMI .saveDoor
    JMP .noChangePLX

  .upToDown
    LDA !ram_door_destination : ASL : TAX
    LDA portals_down_vanilla_inverted_table,X : BMI .saveDoorUpDown
    JMP .noChangePLX

  .downToUp
    LDA !ram_door_source : ASL : TAX
    LDA portals_up_vanilla_inverted_table,X : BMI .saveDoorUpDown
    JMP .noChangePLX

  .pickAreaBossLeftRight
    LDA !ram_door_portal_flags : BIT !DOOR_PORTAL_HORIZONTAL_MIRRORING_BIT : BEQ .pickAreaBossCustom

  .pickAreaBossVanilla
    LDA portals_areaboss_vanilla_inverted_table,X

  .saveDoor
    STA !DOOR_ID

    ; Implement the DDF1 routine here to load CRE bitset
    ; Note we already have pushed X to the stack,
    ; and A conveniently contains the DOOR_ID
    TAX
  .loadBitset
    PHB : PEA $8F00 : PLB : PLB

    LDA $830000,X : TAX
    LDA !CRE_BITSET : STA !PREVIOUS_CRE_BITSET
    LDA $0008,X : AND #$00FF

    ; Ensure either BIT #$0004 or #$0002 are set
    ; so that the CRE is loaded or reloaded
    BIT #$0004 : BNE .storeBitset
    ORA #$0002

  .storeBitset
    STA !CRE_BITSET
    LDA !ram_door_portal_flags : BIT !DOOR_PORTAL_IFRAMES_BIT : BEQ .changedDoorDone
    LDA #$0080 : STA !SAMUS_IFRAME_TIMER

  .changedDoorDone
    ; Remember we pushed X and bank in opposite order
    PLB : PLX
    RTS

  .saveDoorUpDown
    STA !DOOR_ID : TAX

    ; Unlock Samus if leaving Aqueduct Tube
    LDA !ROOM_ID : CMP #ROOM_Toilet : BNE .loadBitset
    LDA #$0001
if !FEATURE_PAL
    JSL $90F081
else
    JSL $90F084
endif
    BRA .loadBitset
}

hijack_after_load_level_data:
{
    LDA !ram_door_portal_flags : BEQ .checkRoom
    LDA !DOOR_DIRECTION : AND #$0003 : BEQ .checkSwapToRight
    CMP #$0001 : BNE .checkRoom

    ; Swap to left side of room if necessary
    LDA !SAMUS_X : BIT #$0080 : BEQ .checkRoom
    JSL layout_swap_left_right
    BRA .checkRoom

  .checkSwapToRight
    LDA !SAMUS_X : BIT #$0080 : BNE .checkRoom
    JSL layout_swap_left_right

  .checkRoom
    ; Several rooms need to be handled before the door scroll
    LDA !ROOM_ID : CMP #ROOM_EastTunnel : BEQ .eastTunnel
    CMP #ROOM_PantsRoom : BEQ .pantsRoom
    CMP #ROOM_BelowBotwoonETank : BNE .done

    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .done
    JSL layout_asm_aqueductfarmsandpit_external

  .done
    JMP $E38E

  .eastTunnel
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .done
    JSL layout_asm_easttunnel_external
    JMP $E38E

  .pantsRoom
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ .done
    JSL layout_asm_pants_external
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

%endfree(82)


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

; West Sand Hall left door
org $83A53E
hook_layout_asm_westsandhalltunnel_door1:
    dw #layout_asm_westsandhall

; West Sand Hall unused door definition
org $83A654
hook_layout_asm_westsandhall_door2:
    dw #ROOM_BelowBotwoonETank
    db #$00, #$05, #$3E, #$06, #$03, #$00
    dw #$8000
    dw #$0000

; West Sand Hall right door
org $83A66A
hook_layout_asm_oasis_door0:
    dw #layout_asm_westsandhall

; East Sand Hall unused door definition
org $83A69C
hook_layout_asm_aqueductfarmsandpit_door1:
    dw #ROOM_WestSandHall
    db #$00, #$04, #$01, #$06, #$00, #$00
    dw #$8000
    dw #layout_asm_westsandhall

; West Sand Hall top sand door
org $83A6BE
hook_layout_asm_westsandhole_door1:
    dw #layout_asm_westsandhall

; Overwrite unused door with Shaktool to Pants
org $83A804
hook_layout_asm_shaktool_to_pants:
    dw #ROOM_PantsRoom
    db #$00, #$05, #$0E, #$16, #$01, #$02
    dw #$8000
    dw #layout_asm_shaktool_to_pants_scrolls

; Overwrite unused door with Pants to Pants
org $83A810
hook_layout_asm_pants_to_pants:
    dw #ROOM_PantsRoom
    db #$00, #$04, #$01, #$26, #$01, #$03
    dw #$8000
    dw #layout_asm_pants_to_pants_scrolls

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


%startfree(83)

; Custom door definitions
; Includes Samus X and Y and an asm pointer
door_custom_89CA_west_ocean_door0:
    dw ROOM_TheMoat
    db $00, $05, $1E, $06, $01, $00
    dw $8000, #door_custom_asm
    dw $01CF, $0088, $0000

door_custom_8A42_crateria_kihunters_door2:
    dw ROOM_RedBrinstarElevRoom
    db $00, $06, $06, $02, $00, $00
    dw $8000, #door_custom_asm
    dw $0080, $0058, $0000

door_custom_8AA2_forgotten_highway_elbow_door0:
    dw ROOM_CrabMaze
    db $00, $04, $01, $16, $00, $01
    dw $8000, #door_custom_asm
    dw $0034, $0188, $0000

door_custom_8AAE_crab_maze_door1:
    dw ROOM_ForgottenHighwayElbow
    db $00, $05, $0E, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $00D1, $0088, $0000

door_custom_8AEA_moat_door1:
    dw ROOM_WestOcean
    db $00, $04, $01, $46, $00, $04
    dw $8000, #door_custom_asm
    dw $0034, $0488, $0000

door_custom_8AF6_red_brinstar_elevator_door0:
    dw ROOM_CrateriaKihunterRoom
    db $00, $07, $16, $2D, $01, $02
    dw $01C0, #door_custom_asm
    dw $014C, $02B8, $B9F1

door_custom_8BFE_green_brinstar_elevator_door0:
    dw ROOM_LowerMushrooms
    db $00, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $0036, $0088, $0000

door_custom_8C22_lower_mushrooms_door1:
    dw ROOM_GreenBrinElevRoom
    db $00, $05, $0E, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $00CC, $0088, $0000

door_custom_8C52_green_pirates_shaft_door2:
    dw ROOM_StatuesHallway
    db $00, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $0034, $0088, #layout_asm_cutscene_g4skip

door_custom_8E86_green_hill_zone_door1:
    dw ROOM_MorphBallRoom
    db $00, $04, $01, $26, $00, $02
    dw $8000, #door_custom_asm
    dw $0034, $0288, $0000

door_custom_8E9E_morph_ball_door0:
    dw ROOM_GreenHillZone
    db $00, $05, $1E, $06, $01, $00
    dw $8000, #door_custom_asm
    dw $01C7, $0088, $0000

door_custom_8F0A_noob_bridge_door1:
    dw ROOM_RedTower
    db $00, $04, $01, $46, $00, $04
    dw $8000, #door_custom_asm
    dw $002F, $0488, $0000

door_custom_902A_red_tower_door1:
    dw ROOM_NoobBridge
    db $00, $05, $5E, $06, $05, $00
    dw $8000, #door_custom_asm
    dw $05CE, $0088, $0000

door_custom_90C6_caterpillars_door4:
    dw ROOM_RedFishRoom
    db $40, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $0034, $0088, $BDAF

door_custom_913E_warehouse_zeela_door0:
    dw ROOM_WarehouseEntrance
    db $00, $05, $2E, $06, $02, $00
    dw $8000, #door_custom_asm
    dw $02C7, $0098, $BD3F

door_custom_91B6_kraid_eye_door_door1:
    dw ROOM_KraidRoom
    db $00, $04, $01, $16, $00, $01
    dw $8000, #door_custom_asm
    dw $0034, $0188, $0000

door_custom_91CE_kraid_door0:
    dw ROOM_KraidEyeDoorRoom
    db $00, $05, $1E, $16, $01, $01
    dw $8000, #door_custom_asm
    dw $01CD, $0188, $0000

door_custom_91E6_statues_hallway_door0:
    dw ROOM_GreenPiratesShaft
    db $00, $05, $0E, $66, $00, $06
    dw $8000, #door_custom_asm
    dw $00CC, $0688, $0000

door_custom_922E_warehouse_entrance_door0:
    dw ROOM_EastTunnel
    db $40, $05, $0E, $16, $00, $01
    dw $8000, #door_custom_asm
    dw $00CE, $0188, $BDD1

door_custom_923A_warehouse_entrance_door1:
    dw ROOM_WarehouseZeelaRoom
    db $00, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $0034, $0088, $0000

door_custom_93D2_crocomire_speedway_door4:
    dw ROOM_CrocomireRoom
    db $00, $06, $36, $02, $03, $00
    dw $8000, #door_custom_asm
    dw $0383, $0098, $0000

door_custom_93EA_crocomire_door1:
    dw ROOM_CrocomireSpeedway
    db $00, $07, $C6, $2D, $0C, $02
    dw $01C0, #door_custom_asm
    dw $0C57, $02B8, $0000

door_custom_95FA_single_chamber_door4:
    dw ROOM_ThreeMusketeersRoom
    db $00, $04, $11, $06, $01, $00
    dw $8000, #door_custom_asm
    dw $0134, $0088, $0000

door_custom_967E_kronic_boost_door2:
    dw ROOM_LavaDiveRoom
    db $00, $05, $3E, $06, $03, $00
    dw $8000, #door_custom_asm
    dw $03D0, $0088, $0000

door_custom_96D2_lava_dive_door0:
    dw ROOM_KronicBoostRoom
    db $00, $04, $11, $26, $01, $02
    dw $8000, #door_custom_asm
    dw $0134, $0288, $0000

door_custom_98BE_ridley_door1:
    dw ROOM_LNFarmingRoom
    db $00, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $002E, $0098, $0000

door_custom_98CA_lower_norfair_farming_door0:
    dw ROOM_RidleyRoom
    db $00, $05, $0E, $06, $00, $01
    dw $8000, #door_custom_asm
    dw $00BF, $0198, $0000

door_custom_9A4A_three_musketeers_door0:
    dw ROOM_SingleChamber
    db $00, $05, $5E, $06, $05, $00
    dw $8000, #door_custom_asm
    dw $05CF, $0088, $0000

door_custom_A2AC_basement_door2:
    dw ROOM_PhantoonRoom
    db $00, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $002E, $00B8, $0000

door_custom_A2C4_phantoon_door0:
    dw ROOM_Basement
    db $00, $05, $4E, $06, $04, $00
    dw $8000, #door_custom_asm
    dw $049F, $00B8, $E1FE

door_custom_A330_glass_tunnel_door0:
    dw ROOM_MainStreet
    db $00, $07, $16, $7D, $01, $07
    dw $0200, #door_custom_asm
    dw $014A, $07A8, $0000

door_custom_A384_east_tunnel_door1:
    dw ROOM_WarehouseEntrance
    db $40, $04, $01, $06, $00, $00
    dw $8000, #door_custom_asm
    dw $0034, $0088, $0000

door_custom_A390_east_tunnel_door2:
    dw ROOM_CrabHole
    db $00, $04, $01, $16, $00, $01
    dw $8000, #door_custom_asm
    dw $0028, $0188, $E356

door_custom_A39C_main_street_door0:
    dw ROOM_GlassTunnel
    db $00, $06, $06, $02, $00, $00
    dw $0170, #door_custom_asm
    dw $0081, $0078, $0000

door_custom_A480_red_fish_door1:
    dw ROOM_CaterpillarRoom
    db $40, $05, $2E, $36, $02, $03
    dw $8000, #door_custom_asm
    dw $02CD, $0388, $E367

door_custom_A4C8_crab_shaft_door2:
    dw ROOM_Aqueduct
    db $00, $04, $01, $16, $00, $01
    dw $8000, #door_custom_asm
    dw $0034, $0188, $0000

door_custom_A510_crab_hole_door2:
    dw ROOM_EastTunnel
    db $00, $05, $3E, $06, $03, $00
    dw $8000, #door_custom_asm
    dw $03C6, $0088, $0000

door_custom_A708_aqueduct_door0:
    dw ROOM_CrabShaft
    db $00, $05, $1E, $36, $01, $03
    dw $8000, #door_custom_asm
    dw $01CA, $0388, $E398

door_custom_A840_precious_door1:
    dw ROOM_DraygonRoom
    db $00, $05, $1E, $06, $01, $00
    dw $8000, #door_custom_asm
    dw $01C8, $0088, $0000

door_custom_A96C_draygon_door0:
    dw ROOM_ThePreciousRoom
    db $00, $04, $01, $26, $00, $02
    dw $8000, #door_custom_asm
    dw $0034, $0288, $E3D9

incsrc layoutportaltables.asm

layout_swap_pose_table:
{
    db $00  ; Facing forward - power suit
    db $02  ; Facing right - normal
    db $01  ; Facing left  - normal
    db $04  ; Facing right - aiming up
    db $03  ; Facing left  - aiming up
    db $06  ; Facing right - aiming up-right
    db $05  ; Facing left  - aiming up-left
    db $08  ; Facing right - aiming down-right
    db $07  ; Facing left  - aiming down-left
    db $0A  ; Moving right - not aiming
    db $09  ; Moving left  - not aiming
    db $0C  ; Moving right - gun extended
    db $0B  ; Moving left  - gun extended
    db $0E  ; Moving right - aiming up (unused)
    db $0D  ; Moving left  - aiming up (unused)
    db $10  ; Moving right - aiming up-right
    db $0F  ; Moving left  - aiming up-left
    db $12  ; Moving right - aiming down-right
    db $11  ; Moving left  - aiming down-left
    db $14  ; Facing right - normal jump - not aiming - not moving - gun extended
    db $13  ; Facing left  - normal jump - not aiming - not moving - gun extended
    db $16  ; Facing right - normal jump - aiming up
    db $15  ; Facing left  - normal jump - aiming up
    db $18  ; Facing right - normal jump - aiming down
    db $17  ; Facing left  - normal jump - aiming down
    db $1A  ; Facing right - spin jump
    db $19  ; Facing left  - spin jump
    db $1C  ; Facing right - space jump
    db $1B  ; Facing left  - space jump
    db $41  ; Facing right - morph ball - no springball - on ground
    db $1F  ; Moving right - morph ball - no springball - on ground
    db $1E  ; Moving left  - morph ball - no springball - on ground
    db $20  ; Unused
    db $21  ; Unused
    db $22  ; Unused
    db $23  ; Unused
    db $24  ; Unused
    db $26  ; Facing right - turning - standing
    db $25  ; Facing left  - turning - standing
    db $28  ; Facing right - crouching
    db $27  ; Facing left  - crouching
    db $2A  ; Facing right - falling
    db $29  ; Facing left  - falling
    db $2C  ; Facing right - falling - aiming up
    db $2B  ; Facing left  - falling - aiming up
    db $2E  ; Facing right - falling - aiming down
    db $2D  ; Facing left  - falling - aiming down
    db $30  ; Facing right - turning - jumping
    db $2F  ; Facing left  - turning - jumping
    db $32  ; Facing right - morph ball - no springball - in air
    db $31  ; Facing left  - morph ball - no springball - in air
    db $33  ; Unused
    db $34  ; Unused
    db $36  ; Facing right - crouching transition
    db $35  ; Facing left  - crouching transition
    db $38  ; Facing right - morphing transition
    db $37  ; Facing left  - morphing transition
    db $39  ; Unused
    db $3A  ; Unused
    db $3C  ; Facing right - standing transition
    db $3B  ; Facing left  - standing transition
    db $3E  ; Facing right - unmorphing transition
    db $3D  ; Facing left  - unmorphing transition
    db $3F  ; Unused
    db $40  ; Unused
    db $1D  ; Facing left  - morph ball - no springball - on ground
    db $42  ; Unused
    db $44  ; Facing right - turning - crouching
    db $43  ; Facing left  - turning - crouching
    db $45  ; Unused
    db $46  ; Unused
    db $47  ; Unused
    db $48  ; Unused
    db $4A  ; Facing left  - moonwalk
    db $49  ; Facing right - moonwalk
    db $4C  ; Facing right - normal jump transition
    db $4B  ; Facing left  - normal jump transition
    db $4E  ; Facing right - normal jump - not aiming - not moving - gun not extended
    db $4D  ; Facing left  - normal jump - not aiming - not moving - gun not extended
    db $50  ; Facing left  - damage boost
    db $4F  ; Facing right - damage boost
    db $52  ; Facing right - normal jump - not aiming - moving forward
    db $51  ; Facing left  - normal jump - not aiming - moving forward
    db $54  ; Facing right - knockback
    db $53  ; Facing left  - knockback
    db $56  ; Facing right - normal jump transition - aiming up
    db $55  ; Facing left  - normal jump transition - aiming up
    db $58  ; Facing right - normal jump transition - aiming up-right
    db $57  ; Facing left  - normal jump transition - aiming up-left
    db $5A  ; Facing right - normal jump transition - aiming down-right
    db $59  ; Facing left  - normal jump transition - aiming down-left
    db $5B  ; Unused
    db $5C  ; Unused
    db $5D  ; Unused
    db $5E  ; Unused
    db $5F  ; Unused
    db $60  ; Unused
    db $61  ; Unused
    db $62  ; Unused
    db $63  ; Unused. Related to movement type Dh
    db $64  ; Unused. Related to movement type Dh
    db $65  ; Unused. Related to movement type Dh
    db $66  ; Unused. Related to movement type Dh
    db $68  ; Facing right - falling - gun extended
    db $67  ; Facing left  - falling - gun extended
    db $6A  ; Facing right - normal jump - aiming up-right
    db $69  ; Facing left  - normal jump - aiming up-left
    db $6C  ; Facing right - normal jump - aiming down-right
    db $6B  ; Facing left  - normal jump - aiming down-left
    db $6E  ; Facing right - falling - aiming up-right
    db $6D  ; Facing left  - falling - aiming up-left
    db $70  ; Facing right - falling - aiming down-right
    db $6F  ; Facing left  - falling - aiming down-left
    db $72  ; Facing right - crouching - aiming up-right
    db $71  ; Facing left  - crouching - aiming up-left
    db $74  ; Facing right - crouching - aiming down-right
    db $73  ; Facing left  - crouching - aiming down-left
    db $76  ; Facing left  - moonwalk - aiming up-left
    db $75  ; Facing right - moonwalk - aiming up-right
    db $78  ; Facing left  - moonwalk - aiming down-left
    db $77  ; Facing right - moonwalk - aiming down-right
    db $7A  ; Facing right - morph ball - spring ball - on ground
    db $79  ; Facing left  - morph ball - spring ball - on ground
    db $7C  ; Moving right - morph ball - spring ball - on ground
    db $7B  ; Moving left  - morph ball - spring ball - on ground
    db $7E  ; Facing right - morph ball - spring ball - falling
    db $7D  ; Facing left  - morph ball - spring ball - falling
    db $80  ; Facing right - morph ball - spring ball - in air
    db $7F  ; Facing left  - morph ball - spring ball - in air
    db $82  ; Facing right - screw attack
    db $81  ; Facing left  - screw attack
    db $84  ; Facing right - wall jump
    db $83  ; Facing left  - wall jump
    db $86  ; Facing right - crouching - aiming up
    db $85  ; Facing left  - crouching - aiming up
    db $88  ; Facing right - turning - falling
    db $87  ; Facing left  - turning - falling
    db $8A  ; Facing right - ran into a wall
    db $89  ; Facing left  - ran into a wall
    db $8C  ; Facing right - turning - standing - aiming up
    db $8B  ; Facing left  - turning - standing - aiming up
    db $8E  ; Facing right - turning - standing - aiming down-right
    db $8D  ; Facing left  - turning - standing - aiming down-left
    db $90  ; Facing right - turning - in air - aiming up
    db $8F  ; Facing left  - turning - in air - aiming up
    db $92  ; Facing right - turning - in air - aiming down/down-right
    db $91  ; Facing left  - turning - in air - aiming down/down-left
    db $94  ; Facing right - turning - falling - aiming up
    db $93  ; Facing left  - turning - falling - aiming up
    db $96  ; Facing right - turning - falling - aiming down/down-right
    db $95  ; Facing left  - turning - falling - aiming down/down-left
    db $98  ; Facing right - turning - crouching - aiming up
    db $97  ; Facing left  - turning - crouching - aiming up
    db $9A  ; Facing right - turning - crouching - aiming down/down-right
    db $99  ; Facing left  - turning - crouching - aiming down/down-left
    db $9B  ; Facing forward - varia/gravity suit
    db $9D  ; Facing right - turning - standing - aiming up-right
    db $9C  ; Facing left  - turning - standing - aiming up-left
    db $9F  ; Facing right - turning - in air - aiming up-right
    db $9E  ; Facing left  - turning - in air - aiming up-left
    db $A1  ; Facing right - turning - falling - aiming up-right
    db $A0  ; Facing left  - turning - falling - aiming up-left
    db $A3  ; Facing right - turning - crouching - aiming up-right
    db $A2  ; Facing left  - turning - crouching - aiming up-left
    db $A5  ; Facing right - landing from normal jump
    db $A4  ; Facing left  - landing from normal jump
    db $A7  ; Facing right - landing from spin jump
    db $A6  ; Facing left  - landing from spin jump
    db $A9  ; Facing right - grappling
    db $A8  ; Facing left  - grappling
    db $AB  ; Facing right - grappling - aiming down-right
    db $AA  ; Facing left  - grappling - aiming down-left
    db $AD  ; Unused. Facing right - grappling - in air
    db $AC  ; Unused. Facing left  - grappling - in air
    db $AF  ; Unused. Facing right - grappling - in air - aiming down
    db $AE  ; Unused. Facing left  - grappling - in air - aiming down
    db $B1  ; Unused. Facing right - grappling - in air - aiming down-right
    db $B0  ; Unused. Facing left  - grappling - in air - aiming down-left
    db $B3  ; Facing clockwise     - grapple - in air
    db $B2  ; Facing anticlockwise - grapple - in air
    db $B5  ; Facing right - grappling - crouching
    db $B4  ; Facing left  - grappling - crouching
    db $B7  ; Facing right - grappling - crouching - aiming down-right
    db $B6  ; Facing left  - grappling - crouching - aiming down-left
    db $B9  ; Facing left  - grapple wall jump pose
    db $B8  ; Facing right - grapple wall jump pose
    db $EC  ; Facing left  - grabbed by Draygon - not moving - not aiming
    db $ED  ; Facing left  - grabbed by Draygon - not moving - aiming up-left
    db $EE  ; Facing left  - grabbed by Draygon - firing
    db $EF  ; Facing left  - grabbed by Draygon - not moving - aiming down-left
    db $F0  ; Facing left  - grabbed by Draygon - moving
    db $C0  ; Facing right - moonwalking - turn/jump left
    db $BF  ; Facing left  - moonwalking - turn/jump right
    db $C2  ; Facing right - moonwalking - turn/jump left  - aiming up-right
    db $C1  ; Facing left  - moonwalking - turn/jump right - aiming up-left
    db $C4  ; Facing right - moonwalking - turn/jump left  - aiming down-right
    db $C3  ; Facing left  - moonwalking - turn/jump right - aiming down-left
    db $C5  ; Unused
    db $C6  ; Unused
    db $C8  ; Facing right - vertical shinespark windup
    db $C7  ; Facing left  - vertical shinespark windup
    db $CA  ; Facing right - shinespark - horizontal
    db $C9  ; Facing left  - shinespark - horizontal
    db $CC  ; Facing right - shinespark - vertical
    db $CB  ; Facing left  - shinespark - vertical
    db $CE  ; Facing right - shinespark - diagonal
    db $CD  ; Facing left  - shinespark - diagonal
    db $D0  ; Facing right - ran into a wall - aiming up-right
    db $CF  ; Facing left  - ran into a wall - aiming up-left
    db $D2  ; Facing right - ran into a wall - aiming down-right
    db $D1  ; Facing left  - ran into a wall - aiming down-left
    db $D4  ; Facing right - crystal flash
    db $D3  ; Facing left  - crystal flash
    db $D6  ; Facing right - x-ray - standing
    db $D5  ; Facing left  - x-ray - standing
    db $D8  ; Facing right - crystal flash ending
    db $D7  ; Facing left  - crystal flash ending
    db $DA  ; Facing right - x-ray - crouching
    db $D9  ; Facing left  - x-ray - crouching
    db $DB  ; Unused
    db $DC  ; Unused
    db $DD  ; Unused
    db $DE  ; Unused
    db $DF  ; Unused. Related to Draygon
    db $E1  ; Facing right - landing from normal jump - aiming up
    db $E0  ; Facing left  - landing from normal jump - aiming up
    db $E3  ; Facing right - landing from normal jump - aiming up-right
    db $E2  ; Facing left  - landing from normal jump - aiming up-left
    db $E5  ; Facing right - landing from normal jump - aiming down-right
    db $E4  ; Facing left  - landing from normal jump - aiming down-left
    db $E7  ; Facing right - landing from normal jump - firing
    db $E6  ; Facing left  - landing from normal jump - firing
    db $E9  ; Facing right - Samus drained - crouching/falling
    db $E8  ; Facing left  - Samus drained - crouching/falling
    db $EB  ; Facing right - Samus drained - standing
    db $EA  ; Facing left  - Samus drained - standing
    db $BA  ; Facing right - grabbed by Draygon - not moving - not aiming
    db $BB  ; Facing right - grabbed by Draygon - not moving - aiming up-right
    db $BC  ; Facing right - grabbed by Draygon - firing
    db $BD  ; Facing right - grabbed by Draygon - not moving - aiming down-right
    db $BE  ; Facing right - grabbed by Draygon - moving
    db $F2  ; Facing right - crouching transition - aiming up
    db $F1  ; Facing left  - crouching transition - aiming up
    db $F4  ; Facing right - crouching transition - aiming up-right
    db $F3  ; Facing left  - crouching transition - aiming up-left
    db $F6  ; Facing right - crouching transition - aiming down-right
    db $F5  ; Facing left  - crouching transition - aiming down-left
    db $F8  ; Facing right - standing transition - aiming up
    db $F7  ; Facing left  - standing transition - aiming up
    db $FA  ; Facing right - standing transition - aiming up-right
    db $F9  ; Facing left  - standing transition - aiming up-left
    db $FC  ; Facing right - standing transition - aiming down-right
    db $FB  ; Facing left  - standing transition - aiming down-left
    db $FD  ; Unused
    db $FE  ; Unused
    db $FF  ; If FFFF indicates pose variable is invalid
}

macro layout_swap_pose_direction_table_entry(offset)
    db <offset>+$00  ; Facing forward
    db <offset>+$01  ; Facing forward (unused)
    db <offset>+$02  ; Facing forward (unused)
    db <offset>+$03  ; Facing forward (unused)
    db <offset>+$08  ; Facing left
    db <offset>+$09  ; Facing left (unused)
    db <offset>+$0A  ; Facing left (unused)
    db <offset>+$0B  ; Facing left (unused)
    db <offset>+$04  ; Facing right
    db <offset>+$05  ; Facing right (unused)
    db <offset>+$06  ; Facing right (unused)
    db <offset>+$07  ; Facing right (unused)
    db <offset>+$0C  ; Unused
    db <offset>+$0D  ; Unused
    db <offset>+$0E  ; Unused
    db <offset>+$0F  ; Unused
endmacro

layout_swap_pose_direction_table:
{
    %layout_swap_pose_direction_table_entry($00)
    %layout_swap_pose_direction_table_entry($10)
    %layout_swap_pose_direction_table_entry($20)
    %layout_swap_pose_direction_table_entry($30)
    %layout_swap_pose_direction_table_entry($40)
    %layout_swap_pose_direction_table_entry($50)
    %layout_swap_pose_direction_table_entry($60)
    %layout_swap_pose_direction_table_entry($70)
    %layout_swap_pose_direction_table_entry($80)
    %layout_swap_pose_direction_table_entry($90)
    %layout_swap_pose_direction_table_entry($A0)
    %layout_swap_pose_direction_table_entry($B0)
    %layout_swap_pose_direction_table_entry($C0)
    %layout_swap_pose_direction_table_entry($D0)
    %layout_swap_pose_direction_table_entry($E0)
    %layout_swap_pose_direction_table_entry($F0)
}

macro layout_swap_pose(address)
    LDA <address> : TAX
    LDA.l layout_swap_pose_table,X : STA <address>
endmacro

macro layout_swap_pose_direction(address)
    LDA <address> : TAX
    LDA.l layout_swap_pose_direction_table,X : STA <address>
endmacro

layout_swap_left_right:
{
    PHX : PHP
    LDA !SAMUS_X : EOR #$00FF : INC : STA !SAMUS_X
    LDA !SAMUS_X_SUBPX : EOR #$FFFF : STA !SAMUS_X_SUBPX

    TDC : %ai8()
    %layout_swap_pose(!SAMUS_POSE)
    %layout_swap_pose_direction(!SAMUS_POSE_DIRECTION)
    %layout_swap_pose(!SAMUS_PREVIOUS_POSE)
    %layout_swap_pose_direction(!SAMUS_PREVIOUS_POSE_DIRECTION)
    %layout_swap_pose(!SAMUS_LAST_DIFFERENT_POSE)
    %layout_swap_pose_direction(!SAMUS_LAST_DIFFERENT_POSE_DIRECTION)
    %layout_swap_pose(!SAMUS_POTENTIAL_POSE_VALUES)
    %layout_swap_pose(!SAMUS_POTENTIAL_POSE_VALUES+2)
    %layout_swap_pose(!SAMUS_POTENTIAL_POSE_VALUES+4)

    PLP : PLX
    RTL
}

; Migrate longer ASM methods or methods that require external bank access to bank 83
layout_asm_easttunnel_external:
{
    ; Decorate vertical shaft
    %a8()
    LDA #$22 : STA $7F070A : STA $7F070E
    STA $7F078A : STA $7F078E : STA $7F080A : STA $7F080E
    STA $7F088A : STA $7F088E : STA $7F090A : STA $7F090E
    STA $7F098A : STA $7F098E : STA $7F0A0A : STA $7F0A0E
    LDA #$85 : STA $7F078B : STA $7F080B : STA $7F088B
    STA $7F090B : STA $7F098B : STA $7F0A0B
    STA $7F0A8A : STA $7F0A8E
    LDA #$8D : STA $7F0A8B

    ; Remove blocks from vertical shaft
    %a16()
    LDA #$00FF : STA $7F078C : STA $7F088C : STA $7F090C
    STA $7F098C : STA $7F0A0C : STA $7F0A8C
    ; Careful with the block that is also a scroll block
    LDA #$30FF : STA $7F080C
    RTL
}

layout_asm_plasma_external:
{
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
    RTL
}

layout_asm_pants_external:
{
    ; Open grapple blocks to shaktool
    LDA #$00FF : STA $7F0CCC : STA $7F0CCE : STA $7F0CD0
    STA $7F0CD2 : STA $7F0CD4 : STA $7F0CD6
    STA $7F0D0E : STA $7F0D14 : STA $7F0D16

    ; Replace BTS
    TDC : STA $7F6A69
    RTL
}

layout_asm_shaktool_external:
{
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
    RTL
}

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

layout_asm_bigpink_external:
{
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
    RTL
}

layout_asm_waterway_external:
{
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
    RTL
}

%endfree(83)


; Allow debug save stations to be used
org $848D0C
    AND #$000F

; Relocate grey door preinstruction table and add new type that has no prerequisite to begin flashing
org $848C4F
layout_grey_door_preinstruction_table:
    dw $BDD4, $BDE3, $BDF2, $BE01, $BE1C, $BE1F, $BE30, $BDB2
warnpc $848C7C

org $84BE43
    LDA layout_grey_door_preinstruction_table,Y

; Ignore bombs for bomb torizo with VARIA tweaks
org $848258
layout_bomb_torizo_finish_crumbling:
    INC $1D27,X : INC $1D27,X
    LDA #$D356 : STA $1CD7,X
    RTS
warnpc $848270

org $84AADF
layout_save_station_mini_entry:
    dw $B5EE, #layout_save_station_mini_instructions

org $84BA4C
layout_bomb_grey_door_original_instructions:

org $84BA50
hook_layout_bomb_grey_door_check:
    dw layout_bomb_grey_door_new_check

org $84BA54
layout_bomb_grey_door_original_delay:

org $84BA6F
layout_bomb_grey_door_original_check:

org $84BA7A
layout_bomb_grey_door_original_skip:

org $84BAD1
layout_bomb_grey_door_new_check:
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_VARIA_TWEAKS : BNE layout_bomb_grey_door_original_skip
    BRA layout_bomb_grey_door_original_check

layout_bomb_set_room_argument:
{
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_VARIA_TWEAKS : BEQ .end
    LDA #layout_bomb_torizo_start_crumbling : STA $1D21
    LDA #$BA54 : STA $1D75
  .end
    JMP $8899
}
warnpc $84BAF4

org $84BAF8
    dw layout_bomb_grey_door_new_instructions

org $84D33B
layout_bomb_torizo_crumbling_preinstruction:
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_VARIA_TWEAKS : BNE layout_bomb_torizo_end_preinstruction
    LDA !SAMUS_ITEMS_COLLECTED : AND #$1000 : BEQ layout_bomb_torizo_end_preinstruction

layout_bomb_torizo_start_crumbling:
    LDA #$0001 : STA $7EDE1C,X
    JMP layout_bomb_torizo_finish_crumbling

layout_bomb_torizo_end_preinstruction:
warnpc $84D356

if !FEATURE_PAL
org $84E543
else
org $84E53D
endif
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

; Fix Morph Ball Hidden/Chozo PLM's
if !FEATURE_PAL
org $84E8D4
else
org $84E8CE
endif
layout_morph_ball_chozo_plm_equipment:
    dw $0004

if !FEATURE_PAL
org $84EE08
else
org $84EE02
endif
layout_morph_ball_hidden_plm_equipment:
    dw $0004



%startfree(84)

layout_save_station_mini_instructions:
{
    dw $0001, .drawOne
    dw $86B4
    dw $8CF1, .used
    dw $B00E
    dw $8C07 : db $2E
    dw $874E : db $15
  .timer
    dw $0004, .drawThree
    dw $0004, .drawTwo
    dw $873F, .timer
    dw $B024
  .used
    dw $B030
    dw $8724, #layout_save_station_mini_instructions

  .drawOne
    dw $0002, $B859, $8C59
    dw $0000

  .drawTwo
    dw $0002, $8859, $8C59
    dw $0000

  .drawThree
    dw $0002, $885A, $8C5A
    dw $0000
}

layout_bomb_grey_door_new_instructions:
    dw layout_bomb_grey_door_check_vanilla
    dw #$0001, $A683
    dw layout_bomb_grey_door_new_check
    dw layout_bomb_grey_door_new_instructions
    dw layout_bomb_grey_door_check_fast
    dw #$0001, $A683
    dw $8724, layout_bomb_grey_door_original_delay

layout_bomb_grey_door_check_vanilla:
{
    LDA !sram_bomb_torizo_door : BNE .done
    LDY #layout_bomb_grey_door_original_instructions
  .done
    RTS
}

layout_bomb_grey_door_check_fast:
{
    LDA !sram_bomb_torizo_door : DEC : BNE .done
    LDY #layout_bomb_grey_door_original_delay
  .done
    RTS
}

%endfree(84)


; Sanity check Varia/Gravity pickups
; Only use suit animations in vanilla rooms, or Landing Site for artificial Varia
; Otherwise assume this is for randomizers where suit animations have been removed
if !FEATURE_PAL
org $91D43D
else
org $91D4E5
endif
    %ai16() : LDA !ROOM_ID : CMP #ROOM_VariaSuitRoom : BEQ layout_do_varia_animation
    CMP #ROOM_LandingSite : BNE layout_skip_varia_animation
layout_do_varia_animation:
    JMP layout_prepare_varia_animation
layout_skip_varia_animation:
    PLP : RTL
layout_varia_animation:

if !FEATURE_PAL
org $91D513
else
org $91D5BB
endif
    %ai16() : LDA !ROOM_ID : CMP #ROOM_GravitySuitRoom : BNE layout_skip_gravity_animation
    JMP layout_prepare_gravity_animation
layout_skip_gravity_animation:
    PLP : RTL
layout_gravity_animation:


; Overwrite unused method
if !FEATURE_PAL
org $91EC02
else
org $91EC9D
endif
layout_prepare_varia_animation:
    PHB : PHK : PLB
    %ai8()
    LDA #$30 : STA $0DF0
    LDA #$50 : STA $0DF1
    LDA #$80 : STA $0DF2
    JMP layout_varia_animation

layout_prepare_gravity_animation:
    PHB : PHK : PLB
    %ai8()
    LDA #$30 : STA $0DF0
    LDA #$49 : STA $0DF1
    JMP layout_gravity_animation

%warnpc($91ECD0, $91EC35)


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

; West Ocean setup asm
org $8F9423
hook_layout_asm_westocean:
    dw #layout_asm_westocean

; Crateria Kihunters setup asm
org $8F94B1
hook_layout_asm_crateria_kihunters:
    dw #layout_asm_crateria_kihunters

; East Ocean background library table and setup asm
org $8F9520
hook_layout_asm_eastocean:
    dw #layout_east_ocean_library_background_table
    dw #layout_asm_eastocean

; Crab Maze setup asm
org $8F95A2
hook_layout_asm_crabmaze:
    dw #layout_asm_crabmaze

; Forgotten Highway Elbow setup asm
org $8F95CD
hook_layout_asm_forgottenhighwayelbow:
    dw #layout_asm_forgottenhighwayelbow

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

; Green Brinstar Elevator setup asm
org $8F995D
hook_layout_asm_greenbrinelevator:
    dw #layout_asm_greenbrinelevator

; Lower Mushrooms setup asm
org $8F998E
hook_layout_asm_lowermushrooms:
    dw #layout_asm_lowermushrooms

; Green Pirates Shaft setup asm
org $8F99E2
hook_layout_asm_green_pirates_shaft:
    dw #layout_asm_green_pirates_shaft

; Brinstar Pre-Map setup asm
org $8F9BC2
hook_layout_asm_brinstarpremap:
    dw #layout_asm_brinstarpremap

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

; Morph Ball setup asm
org $8F9EE3
hook_layout_asm_morphball:
    dw #layout_asm_morphball

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

; Warehouse Zeela setup asm
org $8FA496
hook_layout_asm_warehousezeela:
    dw #layout_asm_warehousezeela

; Warehouse Kihunters setup asm
org $8FA4FF
hook_layout_asm_warehousekihunters:
    dw #layout_asm_warehousekihunters

; Statues Hallway setup asm
org $8FA612
hook_layout_asm_statues_hallway:
    dw #layout_asm_statues_hallway

; Statues state check asm
org $8FA675
hook_layout_asm_statues_state_check:
    dw #layout_asm_statues_state_check

; Warehouse Entrance setup asm
org $8FA6C6
hook_layout_asm_warehouseentrance:
    dw #layout_asm_warehouseentrance

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

; Lava Dive setup asm
org $8FAF39
hook_layout_asm_lavadive:
    dw #layout_asm_lavadive

; Acid Statue setup asm
org $8FB20A
hook_layout_asm_acidstatue:
    dw #layout_asm_acidstatue

org $8FB67B
hook_layout_asm_threemusketeers:
    dw #layout_asm_threemusketeers

; West Ocean library background table
org $8FB7F0
hook_layout_west_ocean_library_background_table:
    dw $000E, #door_custom_8AEA_moat_door1
    dl $8AD980
    dw $4800, $0800, $0000

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
hook_layout_asm_escape_explosion:
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

; Tourian escape 1 setup asm
org $8FC926
hook_layout_asm_tourian_escape_1:
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .rts
    JMP layout_asm_vanilla_tourian_escape_1
  .rts
    RTS
warnpc $8FC933

; Tourian escape 2 setup asm
org $8FC933
hook_layout_asm_tourian_escape_2:
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .rts
    JMP layout_asm_vanilla_tourian_escape_2
  .rts
    RTS
warnpc $8FC946

; Tourian escape 3 setup asm
org $8FC946
hook_layout_asm_tourian_escape_3:
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .rts
    JMP layout_asm_vanilla_tourian_escape_3
  .rts
    RTS
warnpc $8FC953

; Tourian escape 4 setup asm
org $8FC95B
hook_layout_asm_tourian_escape_4:
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .rts
    JMP layout_asm_vanilla_tourian_escape_4
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
    dw #layout_asm_wreckedshipsave

; Glass Tunnel setup asm
org $8FCF25
hook_layout_asm_glasstunnel_unbroken:
    dw #layout_asm_glasstunnel

org $8FCF3F
hook_layout_asm_glasstunnel_broken:
    dw #layout_asm_glasstunnel

; East Tunnel setup asm
org $8FCFA5
hook_layout_asm_easttunnel:
    dw #layout_asm_easttunnel

; Main Street setup asm
org $8FCFEE
hook_layout_asm_mainstreet:
    dw #layout_asm_mainstreet

; Crab Tunnel setup asm
org $8FD0AF
hook_layout_asm_crabtunnel:
    dw #layout_asm_crabtunnel

; Red Fish setup asm
org $8FD129
hook_layout_asm_redfish:
    dw #layout_asm_redfish

; Crab Hole setup asm
org $8FD241
hook_layout_asm_crabhole:
    dw #layout_asm_crabhole

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
    dw #layout_asm_aqueductfarmsandpit_door_list

; Shaktool setup asm
org $8FD8EF
hook_layout_asm_shaktool:
    dw #layout_asm_shaktool

; Halfie Climb setup asm
org $8FD938
hook_layout_asm_halfie_climb:
    dw #layout_asm_halfie_climb

; Dust Torizo setup asm
org $8FDC8F
hook_layout_asm_dust_torizo:
    dw #layout_asm_dust_torizo

; Big Boy setup asm
org $8FDCDB
hook_layout_asm_big_boy:
    dw #layout_asm_big_boy

; Tourian escape 2 main asm
org $8FDE99
hook_layout_main_asm_tourian_escape_2:
    dw #layout_asm_tourian_escape_2

; Tourian escape 4 main asm
org $8FDEFD
hook_layout_main_asm_tourian_escape_4:
    dw #layout_asm_tourian_escape_4

; Ceres Ridley modified state check to support presets
org $8FE0C0
hook_layout_asm_ceres_ridley_state_check:
    dw #layout_asm_ceres_ridley_state_check

; Ceres Ridley setup asm when timer is not running
org $8FE0DF
hook_layout_asm_ceres_ridley_no_timer:
    dw #layout_asm_ceres_ridley_no_timer

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

; Move execute setup ASM method up 14 bytes so it can also do the elevator check
; (elevator check moved from bank 82)
org $8FE881
layout_execute_setup_asm:
    PHP : PHB
    %ai16()
    LDX !STATE_POINTER
    LDA $0018,X : BEQ layout_execute_setup_asm_elevator_check
layout_execute_setup_asm_execute:
    PHK : PLB
    JSR ($0018,X)
layout_execute_setup_asm_elevator_check:
    LDA !ELEVATOR_PROPERTIES : BEQ layout_execute_setup_asm_end
    LDA #$0002 : STA !ELEVATOR_STATUS
layout_execute_setup_asm_end:
    PLB : PLP : RTL
warnpc $8FE8A3


%startfree(8F)

; East Ocean library background table (migrated to make more room for West Ocean)
layout_east_ocean_library_background_table:
    dw $000E, $8A7E
    dl $8AD980
    dw $4800, $0800, $000E, $A264
    dl $8AD980
    dw $4800, $0800, $0000

; Vanilla logic except skip over the custom door asm
layout_skip_custom_door_asm:
{
    PHP : PHB
    %ai16()
    LDA !DOOR_ID : BIT #$4000 : BNE .custom
    TAX : LDA $83000A,X : BEQ .done

  .execute
    JMP $E8B0

  .custom
    ; Execute another door asm if necessary
    TAX : LDA $830010,X : BNE .execute

  .done
    PLB : PLP : RTL
}

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

layout_asm_vanilla_tourian_escape_1:
{
    LDA #$0012 : STA $183E
    LDA #$FFFF : STA $1840
    RTS
}

layout_asm_vanilla_tourian_escape_2:
{
    LDA #$0012 : STA $183E
    STA $07E3 : STZ $07E1
    LDA #$FFFF : STA $1840
    RTS
}

layout_asm_vanilla_tourian_escape_3:
{
    LDA #$0015 : STA $183E
    LDA #$FFFF : STA $1840
    RTS
}

layout_asm_vanilla_tourian_escape_4:
{
    LDA #$0015 : STA $183E
    STA $07E3 : STZ $07E1
    LDA #$FFFF : STA $1840
    RTS
}

layout_asm_tourian_escape_2:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .suppress
    JMP $E57C

  .suppress
    RTS
}

layout_asm_tourian_escape_4:
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
if !FEATURE_VANILLAHUD
else
    LDA !sram_display_mode : BNE .done
    LDA !IH_MODE_ROOMSTRAT_INDEX : STA !sram_display_mode
    LDA !IH_STRAT_MBHP_INDEX : STA !sram_room_strat

  .done
endif ; !FEATURE_VANILLAHUD
    RTS
}

layout_asm_ceres_ridley_state_check:
{
    LDA !TIMER_STATUS : BEQ .noTimer
    LDA $0001,X : TAX
    JMP $E5E6

  .noTimer
    STZ !CERES_STATUS
    INX #3
    RTS
}

layout_asm_ceres_ridley_no_timer:
{
    ; Same as original setup asm, except force blue background
    PHP
    %a8()
    LDA #$66 : STA $5D
    PLP
    JSL $88DDD0
    LDA #$0009 : STA !CERES_HDMA_DATA
    RTS
}

layout_asm_magnetstairs:
{
    PHP
    %ai16()
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
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_magnetstairs_done

    ; Replace yellow door PLM with flashing door PLM
    LDA #$C842 : STA $1C81
    LDA #$BE70 : STA $1D71
    LDA $1E11 : ORA #$8000 : STA $1E11
    LDA #$000E : STA $1E61

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

layout_asm_morphball:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANY_RANDO : BEQ layout_asm_greenhillzone_done
    BIT !ROOM_LAYOUT_DASH_RECALL : BNE layout_asm_greenhillzone_done
    BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .add_morph_ball

    ; Convert grey door PLM to flashing door PLM
    LDA $1E0B : ORA #$8000 : STA $1E0B
    LDA #$000E : STA $1E5B

  .add_morph_ball
    ; Add back morph ball item
    PHX : LDX #$86DE
    JSL $84846A : PLX
}

layout_asm_morphball_done:
    PLP
    RTS

layout_asm_constructionzone:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANY_RANDO : BEQ layout_asm_morphball_done
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
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_constructionzone_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_caterpillar_door_plm_data
    JSL $84846A : PLX

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

layout_asm_caterpillar_door_plm_data:
    db #$42, #$C8, #$2E, #$36, #$AF, #$9C

layout_asm_singlechamber:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_caterpillar_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_singlechamber_door_plm_data
    JSL $84846A : PLX

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

layout_asm_singlechamber_door_plm_data:
    db #$42, #$C8, #$5E, #$06, #$AF, #$9C

layout_asm_crabtunnel:
{
    PHP
    %ai16()
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
{
    ; Remove remaining gate tiles
    LDA #$00FF : STA $7F041E : STA $7F049E : STA $7F051E : STA $7F059E

    ; Change gate PLM to open gate
    LDA #$C826 : STA $1C85
    LDA #$BC13 : STA $1D75

    ; Clear gate projectile
    TDC : STA $19B9

    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_crabtunnel_done

    ; Add save station PLM
    PHX : LDX #layout_asm_crabtunnel_savestation_plm_data
    JSL $84846A : PLX
}

layout_asm_crabtunnel_done:
    PLP
    RTS

layout_asm_crabtunnel_savestation_plm_data:
    db #$DF, #$AA, #$07, #$0D, #$05, #$00

layout_asm_easttunnel:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_crabtunnel_done

    ; Add flashing door PLMs
    PHX : LDX #layout_asm_easttunnel_lower_door_plm_data
    JSL $84846A : LDX #layout_asm_easttunnel_upper_door_plm_data
    JSL $84846A : PLX

    ; Clear gate projectile
    TDC : STA $19B9

    ; Delete gate PLMs
    LDA #!PLM_DELETE : STA $1D6B : STA $1D6D

    ; Remove gate tiles
    LDA #$00FF : STA $7F02AE : STA $7F02B0
    STA $7F032E : STA $7F03AE : STA $7F042E : STA $7F04AE

    ; Normal BTS for gate tiles
    %a8()
    LDA #$00 : STA $7F6558 : STA $7F6559
    STA $7F6598 : STA $7F65D8 : STA $7F6618 : STA $7F6658
}

layout_asm_easttunnel_done:
    PLP
    RTS

layout_asm_easttunnel_lower_door_plm_data:
    db #$42, #$C8, #$0E, #$16, #$AF, #$9C

layout_asm_easttunnel_upper_door_plm_data:
    db #$42, #$C8, #$3E, #$06, #$AF, #$9C

layout_asm_westocean:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_westocean_door_plm_data
    JSL $84846A : PLX

  .done
    PLP
    ; Overwritten logic
    JSL $88A800
    RTS
}

layout_asm_westocean_door_plm_data:
    db #$48, #$C8, #$01, #$46, #$AF, #$9C

layout_asm_eastocean:
{
    PHP
    %ai16()
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

layout_asm_crabmaze:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_crabmaze_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_crabmaze_door_plm_data
    JSL $84846A : PLX
}

layout_asm_crabmaze_done:
    PLP
    RTS

layout_asm_crabmaze_door_plm_data:
    db #$48, #$C8, #$01, #$16, #$AF, #$9C

layout_asm_glasstunnel:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_glasstunnel_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_glasstunnel_door_plm_data
    JSL $84846A : PLX
}

layout_asm_glasstunnel_done:
    PLP
    RTS

layout_asm_glasstunnel_door_plm_data:
    db #$54, #$C8, #$06, #$02, #$AF, #$9C

layout_asm_crabshaft_no_scrolls:
    PHP
    BRA layout_asm_crabshaft_after_scrolls

layout_asm_crabshaft_update_scrolls:
    STA $7ECD26

layout_asm_crabshaft_after_scrolls:
{
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_crabshaft_done

    ; Replace green door PLM with flashing door PLM
    LDA #$C842 : STA $1C83
    LDA #$BE70 : STA $1D73
    LDA $1E13 : ORA #$8000 : STA $1E13
    LDA #$000E : STA $1E63

    ; Clear space above save station
    LDA #$00FF : STA $7F095C : STA $7F095E

    ; Add save station PLM
    PHX : LDX #layout_asm_crabshaft_savestation_plm_data
    JSL $84846A : PLX
}

layout_asm_crabshaft_done:
    PLP
    RTS

layout_asm_crabshaft_savestation_plm_data:
    db #$6F, #$B7, #$0D, #$29, #$09, #$00

layout_asm_mainstreet:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_crabshaft_done

    ; Add save station and flashing door PLMs
    PHX : LDX #layout_asm_mainstreet_door_plm_data
    JSL $84846A : PLX

    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BNE layout_asm_mainstreet_done

    ; Add save station PLM
    PHX : LDX #layout_asm_mainstreet_savestation_plm_data
    JSL $84846A : PLX
}

layout_asm_mainstreet_done:
    PLP
    RTS

layout_asm_mainstreet_savestation_plm_data:
    db #$6F, #$B7, #$18, #$59, #$0A, #$00

layout_asm_mainstreet_door_plm_data:
    db #$4E, #$C8, #$16, #$7D, #$AF, #$9C

layout_asm_crateria_kihunters:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_mainstreet_done

    ; Replace yellow door PLM with flashing door PLM
    LDA #$C84E : STA $1C7F
    LDA #$BF42 : STA $1D6F
    LDA $1E0F : ORA #$8000 : STA $1E0F
    LDA #$000E : STA $1E5F
}

layout_asm_crateria_kihunters_done:
    PLP
    RTS

layout_asm_forgottenhighwayelbow:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO_OR_DASH_RECALL : BEQ layout_asm_crateria_kihunters_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_forgottenhighwayelbow_door_plm_data
    JSL $84846A : PLX

    ; Set yellow door as already opened
    LDA $7ED8B0 : ORA #$8000 : STA $7ED8B0
}

layout_asm_forgottenhighwayelbow_done:
    PLP
    RTS

layout_asm_forgottenhighwayelbow_door_plm_data:
    db #$42, #$C8, #$0E, #$06, #$AF, #$9C

layout_asm_greenbrinelevator:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_forgottenhighwayelbow_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_greenbrinelevator_door_plm_data
    JSL $84846A : PLX
}

layout_asm_greenbrinelevator_done:
    PLP
    RTS

layout_asm_greenbrinelevator_door_plm_data:
    db #$42, #$C8, #$0E, #$06, #$AF, #$9C

layout_asm_lowermushrooms:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_greenbrinelevator_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_lowermushrooms_door_plm_data
    JSL $84846A : PLX
}

layout_asm_lowermushrooms_done:
    PLP
    RTS

layout_asm_lowermushrooms_door_plm_data:
    db #$48, #$C8, #$01, #$06, #$AF, #$9C

layout_asm_green_pirates_shaft:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_lowermushrooms_done

    ; Replace red door PLM with flashing door PLM
    LDA #$C842 : STA $1C7D
    LDA #$BE70 : STA $1D6D
    LDA $1E0D : ORA #$8000 : STA $1E0D
    LDA #$000E : STA $1E5D
}

layout_asm_green_pirates_shaft_done:
    PLP
    RTS

layout_asm_bowling:
{
    PHP
    %ai16()
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
    %ai16()
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
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO_OR_DASH_RECALL : BEQ layout_asm_wreckedshipmain_done

    ; Activate save station
    JSL $8483D7
    dw $0B07, $B76F
}

layout_asm_wreckedshipsave_done:
    PLP
    RTS

layout_asm_redfish:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_wreckedshipsave_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_redfish_door_plm_data
    JSL $84846A : PLX

    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ layout_asm_redfish_done

    ; Add save station PLM
    PHX : LDX #layout_asm_redfish_savestation_plm_data
    JSL $84846A : PLX
}

layout_asm_redfish_done:
    PLP
    RTS

layout_asm_redfish_savestation_plm_data:
    db #$DF, #$AA, #$8C, #$07, #$06, #$00

layout_asm_redfish_door_plm_data:
    db #$48, #$C8, #$01, #$06, #$AF, #$9C

layout_asm_crabhole:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_redfish_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_crabhole_door_plm_data
    JSL $84846A : PLX
}

layout_asm_crabhole_done:
    PLP
    RTS

layout_asm_crabhole_door_plm_data:
    db #$48, #$C8, #$01, #$16, #$AF, #$9C

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
    %ai16()

    JSL layout_asm_plasma_external
}

layout_asm_plasma_done:
    PLP
    RTS

layout_asm_plasma_spark:
{
    PHP
    %ai16()
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
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_plasma_spark_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_aqueduct_door_plm_data
    JSL $84846A : PLX

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

layout_asm_aqueduct_door_plm_data:
    db #$48, #$C8, #$01, #$16, #$AF, #$9C

layout_asm_butterfly:
{
    PHP
    %ai16()
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
    %ai16()
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

layout_asm_shaktool:
{
    ; Restore shaktool PLM linked to PB explosion
    JSL $8483D7
    dw $0000, $B8EB

    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ layout_asm_botwoon_hallway_done

    JSL layout_asm_shaktool_external
}

layout_asm_shaktool_done:
    PLP
    RTS

layout_asm_halfie_climb:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ layout_asm_shaktool_done

    ; Set grey door as already opened
    LDA $7ED8C2 : ORA #$1000 : STA $7ED8C2
}

layout_asm_halfie_climb_done:
    PLP
    RTS

layout_asm_dust_torizo:
{
    TDC : INC : STA !ram_room_has_set_rng
    RTS
}

layout_asm_big_boy:
{
    TDC : INC : STA !ram_room_has_set_rng
    RTS
}

layout_asm_aqueductfarmsandpit_door_list:
    dw #$A7D4, #hook_layout_asm_aqueductfarmsandpit_door1

layout_asm_westsandhall:
{
    PHP
    %ai16()
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
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO_OR_DASH_RECALL : BEQ layout_asm_westsandhall_done

    ; Replace green door PLM with flashing door PLM
    LDA #$C84E : STA $1C7F
    LDA #$BF42 : STA $1D6F
    LDA $1E0F : ORA #$8000 : STA $1E0F
    LDA #$000E : STA $1E5F
}

layout_asm_crocspeedway_done:
    PLP
    RTS

layout_asm_croc:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO_OR_DASH_RECALL : BEQ layout_asm_crocspeedway_done

    ; Convert grey door PLM into flashing door PLM
    LDA $1E15 : ORA #$8000 : STA $1E15
    LDA #$000E : STA $1E65
}

layout_asm_croc_done:
    PLP
    RTS

layout_asm_kronicboost:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_croc_done

    ; Replace yellow door PLM with flashing door PLM
    LDA #$C848 : STA $1C7B
    LDA #$BED9 : STA $1D6B
    LDA $1E0B : ORA #$8000 : STA $1E0B
    LDA #$000E : STA $1E5B
}

layout_asm_kronicboost_done:
    PLP
    RTS

layout_asm_lavadive:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_kronicboost_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_lavadive_door_plm_data
    JSL $84846A : PLX
}

layout_asm_lavadive_done:
    PLP
    RTS

layout_asm_lavadive_door_plm_data:
    db #$42, #$C8, #$3E, #$06, #$AF, #$9C

layout_asm_threemusketeers:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_lavadive_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_threemusketeers_door_plm_data
    JSL $84846A : PLX
}

layout_asm_threemusketeers_done:
    PLP
    RTS

layout_asm_threemusketeers_door_plm_data:
    db #$48, #$C8, #$11, #$06, #$AF, #$9C

layout_asm_bigpink:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK : BEQ layout_asm_threemusketeers_done

    JSL layout_asm_bigpink_external
}

layout_asm_bigpink_done:
    PLP
    RTS

layout_asm_dachora:
{
    PHP
    %ai16()
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
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_dachora_done
    BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .antisoftlock

    ; Add flashing door PLM
    PHX : LDX #layout_asm_moat_door_plm_data
    JSL $84846A : PLX

    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_dachora_done

  .antisoftlock
    ; Use shootable blocks on the moat pillar
    %a8()
    LDA #$C0 : STA $7F059F : STA $7F061F
    LDA #$BE : STA $7F05DE
    LDA #$D0 : STA $7F05DF

    ; Set BTS so the top block is 1x2
    LDA #$02 : STA $7F66D0
    LDA #$FF : STA $7F66F0
}

layout_asm_moat_done:
    PLP
    RTS

layout_asm_moat_door_plm_data:
    db #$42, #$C8, #$1E, #$06, #$AF, #$9C

layout_asm_redtowerelevator:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANY_RANDO : BEQ layout_asm_moat_done

    ; Replace yellow door PLM with flashing door PLM
    LDA #$C854 : STA $1C83
    LDA #$BFAB : STA $1D73
    LDA $1E13 : ORA #$8000 : STA $1E13
    LDA #$000E : STA $1E63
}

layout_asm_redtowerelevator_done:
    PLP
    RTS

layout_asm_missionimpossible:
{
    PHP
    %ai16()
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
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_missionimpossible_done

    ; Replace green door PLM with flashing door PLM
    LDA #$C842 : STA $1C85
    LDA #$BE70 : STA $1D75
    LDA $1E15 : ORA #$8000 : STA $1E15
    LDA #$000E : STA $1E65
}

layout_asm_noobbridge_done:
    PLP
    RTS

layout_asm_waterway:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ layout_asm_noobbridge_done

    JSL layout_asm_waterway_external
}

layout_asm_waterway_done:
    PLP
    RTS

layout_asm_redtower:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_waterway_done
    BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .antisoftlock

    ; Add flashing door PLM
    PHX : LDX #layout_asm_redtower_door_plm_data
    JSL $84846A : PLX

    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_waterway_done
    BIT !ROOM_LAYOUT_DASH_RECALL : BEQ .antisoftlock

    ; Add save station PLM
    PHX : LDX #layout_asm_redtower_savestation_plm_data
    JSL $84846A : PLX

  .antisoftlock
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

layout_asm_redtower_savestation_plm_data:
    db #$DF, #$AA, #$0C, #$77, #$05, #$00

layout_asm_redtower_door_plm_data:
    db #$48, #$C8, #$01, #$46, #$AF, #$9C

layout_asm_belowspazer:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_redtower_done

    ; Use shootable block
    LDA #$C1EB : STA $7F018E
}

layout_asm_belowspazer_done:
    PLP
    RTS

layout_asm_warehousezeela:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_belowspazer_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_warehousezeela_door_plm_data
    JSL $84846A : PLX
}

layout_asm_warehousezeela_done:
    PLP
    RTS

layout_asm_warehousezeela_door_plm_data:
    db #$48, #$C8, #$01, #$06, #$AF, #$9C

layout_asm_warehousekihunters:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK : BEQ layout_asm_warehousezeela_done

    ; Use shootable block
    %a8()
    LDA #$C5 : STA $7F064F
}

layout_asm_warehousekihunters_done:
    PLP
    RTS

layout_asm_statues_hallway:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_warehousekihunters_done

    ; Add flashing door PLM
    PHX : LDX #layout_asm_statues_hallway_door_plm_data
    JSL $84846A : PLX
}

layout_asm_statues_hallway_done:
    PLP
    RTS

layout_asm_statues_hallway_door_plm_data:
    db #$48, #$C8, #$01, #$06, #$AF, #$9C

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

layout_asm_warehouseentrance:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ layout_asm_warehouseentrance_done

    ; Add flashing door PLMs
    PHX : LDX #layout_asm_warehouse_left_door_plm_data
    JSL $84846A : LDX #layout_asm_warehouse_right_door_plm_data
    JSL $84846A : PLX
}

layout_asm_warehouseentrance_done:
    PLP
    RTS

layout_asm_warehouse_left_door_plm_data:
    db #$48, #$C8, #$01, #$06, #$AF, #$9C

layout_asm_warehouse_right_door_plm_data:
    db #$42, #$C8, #$2E, #$06, #$AF, #$9C

layout_asm_cathedralentrance:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_warehouseentrance_done

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
    %ai16()
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
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_VARIA_TWEAKS : BEQ layout_asm_hjbetank_done

    ; Add platform
    LDA #$836B : STA $7F049E : STA $7F04A0
    STA $7F04A2 : STA $7F04A4
}

layout_asm_acidstatue_done:
    PLP
    RTS

layout_asm_brinstarpremap:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK : BEQ layout_asm_acidstatue_done

    ; Set grey door as already opened
    LDA $7ED8B4 : ORA #$0020 : STA $7ED8B4
}

layout_asm_brinstarpremap_done:
    PLP
    RTS

layout_asm_earlysupers:
{
    PHP
    %ai16()
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_ANTISOFTLOCK_OR_DASH_RECALL : BEQ layout_asm_brinstarpremap_done
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
    STZ !SAMUS_Y_SUBACCELERATION : STZ !SAMUS_Y_ACCELERATION
    STZ !SAMUS_Y_DIRECTION
    STZ !SAMUS_X_RUNSPEED : STZ !SAMUS_X_SUBRUNSPEED
    STZ !SAMUS_X_MOMENTUM : STZ !SAMUS_X_SUBMOMENTUM
    STZ !SAMUS_DOOR_SUBSPEED : STZ !SAMUS_DOOR_SPEED

    LDA !SAMUS_POSE : CMP #$00C7 : BMI .resetPose
    CMP #$00CF : BPL .resetPose

    ; Clear shine timer and type if previously in shinespark or windup
    STZ !SAMUS_DASH_COUNTER
    STZ !SAMUS_SHINE_TIMER
    STZ !SAMUS_SHINE_TIMER_TYPE

  .resetPose
    ; Force Samus to elevator pose
    STZ !SAMUS_POSE : STZ !SAMUS_POSE_DIRECTION
    STZ !SAMUS_PREVIOUS_POSE : STZ !SAMUS_PREVIOUS_POSE_DIRECTION
    STZ !SAMUS_LAST_DIFFERENT_POSE : STZ !SAMUS_LAST_DIFFERENT_POSE_DIRECTION

    ; Set potential pose values to FFFF
    LDA #$FFFF : STA !SAMUS_POTENTIAL_POSE_VALUES
    STA !SAMUS_POTENTIAL_POSE_VALUES+2 : STA !SAMUS_POTENTIAL_POSE_VALUES+4

    ; Clear potential pose flags
    STZ !SAMUS_POTENTIAL_POSE_FLAGS
    STZ !SAMUS_POTENTIAL_POSE_FLAGS+2
    STZ !SAMUS_POTENTIAL_POSE_FLAGS+4

    ; Reset animation timer and contact damage index
    STZ !SAMUS_ANIMATION_FRAME
    STZ !SAMUS_CONTACT_DAMAGE_INDEX

    ; Reset elevator flags
    STZ !ELEVATOR_PROPERTIES
    STZ !ELEVATOR_STATUS

    ; Unlock Samus
    LDA #$E695 : STA !SAMUS_LOCKED_HANDLER
    LDA #$E725 : STA !SAMUS_MOVEMENT_HANDLER
    LDA #$A337 : STA !SAMUS_NORMAL_MOVEMENT_HANDLER
if !FEATURE_PAL
    LDA #$E910 : STA !SAMUS_CONTROLLER_HANDLER
else
    LDA #$E913 : STA !SAMUS_CONTROLLER_HANDLER
endif

    ; Restore I-Frames after pose change
    LDA !ram_door_portal_flags : BIT !DOOR_PORTAL_IFRAMES_BIT : BEQ .setPos
    LDA #$0080 : STA !SAMUS_IFRAME_TIMER

  .setPos
    ; Set Samus position
    LDA $83000C,X : STA !SAMUS_X : STA !SAMUS_PREVIOUS_X
    LDA $83000E,X : STA !SAMUS_Y : STA !SAMUS_PREVIOUS_Y
    LDA !SAMUS_X_SUBPX : STA !SAMUS_PREVIOUS_X_SUBPX
    LDA !SAMUS_Y_SUBPX : STA !SAMUS_PREVIOUS_Y_SUBPX

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

layout_asm_shaktool_to_pants_scrolls:
    PHP
    %a8()

layout_asm_to_pants_scrolls:
{
    TDC : STA $7ECD20 : STA $7ECD21
    STA $7ECD22 : STA $7ECD24 : STA $7ECD26
    PLP
    RTS
}

layout_asm_pants_to_pants_scrolls:
{
    PHP
    %a8()
    TDC : STA $7ECD25
    INC : STA $7ECD27
    BRA layout_asm_to_pants_scrolls
}

%endfree(8F)


%startfree(A1)

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

%endfree(A1)


%startfree(B4)

layout_asm_plasma_dash_enemy_set:
    dw $F693, #$0001, $F393, #$0002
    db #$FF, #$FF, #$00

layout_asm_statues_oob_viewer_enemy_set:
    db #$FF, #$FF, #$00

%endfree(B4)

