
%startfree(85)

; --------------
; Equipment menu
; --------------

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
    ; don't fix underflow, make the player fix them with numfields
    LDA !SAMUS_MISSILES_MAX : CMP !SAMUS_MISSILES : BCC .doneMissiles
    STA !SAMUS_MISSILES
  .doneMissiles
    LDA !SAMUS_SUPERS_MAX : CMP !SAMUS_SUPERS : BCC .doneSupers
    STA !SAMUS_SUPERS
  .doneSupers
    LDA !SAMUS_PBS_MAX : CMP !SAMUS_PBS : BCC .donePowerBombs
    STA !SAMUS_PBS
  .donePowerBombs
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
    ; Zebettites
    LDA $7ED820 : AND #$0038
    CMP #$0020 : BEQ .fourZeb
    CMP #$0018 : BEQ .threeZeb
    CMP #$0010 : BEQ .twoZeb
    CMP #$0008 : BEQ .oneZeb
    LDA #$0000 : BRA .doneZeb
  .fourZeb
    LDA #$0004 : BRA .doneZeb
  .threeZeb
    LDA #$0003 : BRA .doneZeb
  .twoZeb
    LDA #$0002 : BRA .doneZeb
  .oneZeb
    LDA #$0001 : BRA .doneZeb
  .doneZeb
    STA !ram_cm_zebmask

    ; Metroids
    LDA $7ED822 : AND #$000F
    BIT #$0008 : BNE .fourMet
    BIT #$0004 : BNE .threeMet
    BIT #$0002 : BNE .twoMet
    BIT #$0001 : BNE .oneMet
    LDA #$0000 : BRA .doneMet
  .fourMet
    LDA #$0004 : BRA .doneMet
  .threeMet
    LDA #$0003 : BRA .doneMet
  .twoMet
    LDA #$0002 : BRA .doneMet
  .oneMet
    LDA #$0001 : BRA .doneMet
  .doneMet
    STA !ram_cm_metmask

    %setmenubank()
    JML action_submenu
}

EventsMenu:
    dw #events_zebesawake
    dw #events_speedboostquake
    dw #events_maridiatubebroken
    dw #events_shaktool
    dw #events_chozoacid
    dw #events_metroids
    dw #events_zebettites
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

events_speedboostquake:
    %cm_toggle_bit("Speedbooster Lavaquake", $7ED822, #$0020, #0)

events_maridiatubebroken:
    %cm_toggle_bit("Maridia Tube Broken", $7ED820, #$0800, #0)

events_shaktool:
    %cm_toggle_bit("Shaktool Done Digging", $7ED820, #$2000, #0)

events_chozoacid:
    %cm_toggle_bit("Chozo Lowered Acid", $7ED821, #$0010, #0)

events_metroids:
    %cm_numfield("Metroid Rooms Cleared", !ram_cm_metmask, 0, 4, 1, 1, #.routine)
  .routine
    CMP #$0000 : BEQ .done
    CMP #$0001 : BEQ .one
    CMP #$0002 : BEQ .two
    CMP #$0003 : BEQ .three

    LDA #$000F : BRA .done
  .three
    LDA #$0007 : BRA .done
  .two
    LDA #$0003 : BRA .done
  .one
    LDA #$0001 : BRA .done

  .done
    STA $C1
    LDA $7ED822 : AND #$FFF0 : ORA $C1 : STA $7ED822
    RTL

events_zebettites:
    %cm_numfield("Zebs Killed", !ram_cm_zebmask, 0, 4, 1, 1, #.routine)
  .routine
    CMP #$0000 : BEQ .done
    CMP #$0001 : BEQ .one
    CMP #$0002 : BEQ .two
    CMP #$0003 : BEQ .three

    LDA #$0020 : BRA .done
  .three
    LDA #$0018 : BRA .done
  .two
    LDA #$0010 : BRA .done
  .one
    LDA #$0008

  .done
    STA $C1
    LDA $7ED820 : AND #$FFC7 : ORA $C1 : STA $7ED820
    RTL

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
    dw #doors_goto_wreckedshipoff
    dw #doors_goto_wreckedshipon
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

doors_goto_wreckedshipoff:
    %cm_submenu("Wrecked Ship (Off)", #DoorsWreckedShipOffMenu)

doors_goto_wreckedshipon:
    %cm_submenu("Wrecked Ship (On)", #DoorsWreckedShipOnMenu)

doors_goto_westmaridia:
    %cm_submenu("West Maridia", #DoorsWestMaridiaMenu)

doors_goto_eastmaridia:
    %cm_submenu("East Maridia", #DoorsEastMaridiaMenu)

doors_goto_tourian:
    %cm_submenu("Tourian", #DoorsTourianMenu)

DoorsCrateriaMenu:
    ; 0000-001E, 0048
    dw #doors_0000_crateria
    dw #doors_0001_crateria
    dw #doors_0005_crateria
    dw #doors_000B_crateria
    dw #doors_000C_crateria
    dw #doors_000D_crateria
    dw #doors_000E_crateria
    dw #doors_000F_crateria
    dw #doors_0010_crateria
    dw #doors_0011_crateria
    dw #doors_0012_crateria
    dw #doors_0013_crateria
    dw #doors_0018_crateria
    dw #doors_0019_crateria
    dw #doors_001A_crateria
    dw #doors_001B_crateria
    dw #doors_001D_crateria
    dw #doors_001E_crateria
    dw #doors_0048_crateria
    dw #$0000
    %cm_header("CRATERIA DOORS")

doors_0000_crateria:
    %cm_toggle_bit_inverted("Landing Site (Green)", #$7ED8B0, #$0001, #0)

doors_0001_crateria:
    %cm_toggle_bit_inverted("Landing Site (Yellow)", #$7ED8B0, #$0002, #0)

doors_0005_crateria:
    %cm_toggle_bit_inverted("Parlor (Red)", #$7ED8B0, #$0020, #0)

doors_000B_crateria:
    %cm_toggle_bit_inverted("West Ocean (Grey)", #$7ED8B0, #$0800, #0)

doors_000C_crateria:
    %cm_toggle_bit_inverted("West Ocean (Green)", #$7ED8B0, #$1000, #0)

doors_000D_crateria:
    %cm_toggle_bit_inverted("Kihunters (To Moat)", #$7ED8B0, #$2000, #0)

doors_000E_crateria:
    %cm_toggle_bit_inverted("Kihunters (To Red Brin)", #$7ED8B0, #$4000, #0)

doors_000F_crateria:
    %cm_toggle_bit_inverted("Forgotten Highway Elbow", #$7ED8B0, #$8000, #0)

doors_0010_crateria:
    %cm_toggle_bit_inverted("Red Brinstar Elevator", #$7ED8B2, #$0001, #0)

doors_0011_crateria:
    %cm_toggle_bit_inverted("Climb (Grey To Shaft)", #$7ED8B2, #$0002, #0)

doors_0012_crateria:
    %cm_toggle_bit_inverted("Climb (Grey To Tourian)", #$7ED8B2, #$0004, #0)

doors_0013_crateria:
    %cm_toggle_bit_inverted("Climb (Yellow)", #$7ED8B2, #$0008, #0)

doors_0018_crateria:
    %cm_toggle_bit_inverted("Pit Room (Zebes Asleep)", #$7ED8B2, #$0100, #0)

doors_0019_crateria:
    %cm_toggle_bit_inverted("Pit Room (To Climb)", #$7ED8B2, #$0200, #0)

doors_001A_crateria:
    %cm_toggle_bit_inverted("Pit Room (To Elevator)", #$7ED8B2, #$0400, #0)

doors_001B_crateria:
    %cm_toggle_bit_inverted("Bomb Torizo", #$7ED8B2, #$0800, #0)

doors_001D_crateria:
    %cm_toggle_bit_inverted("Flyway", #$7ED8B2, #$2000, #0)

doors_001E_crateria:
    %cm_toggle_bit_inverted("Green Pirate Shaft", #$7ED8B2, #$4000, #0)

doors_0048_crateria:
    %cm_toggle_bit_inverted("G4 Statues", #$7ED8B8, #$0100, #0)

DoorsCrateriaEscapeMenu:
    dw #doors_0002_crateriaescape
    dw #doors_0003_crateriaescape
    dw #doors_0004_crateriaescape
    dw #doors_0006_crateriaescape
    dw #doors_0007_crateriaescape
    dw #doors_0008_crateriaescape
    dw #doors_0009_crateriaescape
    dw #doors_000A_crateriaescape
    dw #doors_0014_crateriaescape
    dw #doors_0015_crateriaescape
    dw #doors_0016_crateriaescape
    dw #doors_0017_crateriaescape
    dw #doors_001C_crateriaescape
    dw #$0000
    %cm_header("CRATERIA ESCAPE DOORS")

doors_0002_crateriaescape:
    %cm_toggle_bit_inverted("Landing Site (Hidden)", #$7ED8B0, #$0004, #0)

doors_0003_crateriaescape:
    %cm_toggle_bit_inverted("Landing Site (To WS)", #$7ED8B0, #$0008, #0)

doors_0004_crateriaescape:
    %cm_toggle_bit_inverted("Landing Site (To PBs)", #$7ED8B0, #$0010, #0)

doors_0006_crateriaescape:
    %cm_toggle_bit_inverted("Parlor (To Terminator)", #$7ED8B0, #$0040, #0)

doors_0007_crateriaescape:
    %cm_toggle_bit_inverted("Parlor (To Save)", #$7ED8B0, #$0080, #0)

doors_0008_crateriaescape:
    %cm_toggle_bit_inverted("Parlor (To Bombway)", #$7ED8B0, #$0100, #0)

doors_0009_crateriaescape:
    %cm_toggle_bit_inverted("Parlor (To Pre-Map)", #$7ED8B0, #$0200, #0)

doors_000A_crateriaescape:
    %cm_toggle_bit_inverted("Parlor (To Climb)", #$7ED8B0, #$0400, #0)

doors_0014_crateriaescape:
    %cm_toggle_bit_inverted("Climb (To Upper Shaft)", #$7ED8B2, #$0010, #0)

doors_0015_crateriaescape:
    %cm_toggle_bit_inverted("Climb (To Lower Shaft)", #$7ED8B2, #$0020, #0)

doors_0016_crateriaescape:
    %cm_toggle_bit_inverted("Climb (To Pit Room)", #$7ED8B2, #$0040, #0)

doors_0017_crateriaescape:
    %cm_toggle_bit_inverted("Climb (To Tourian)", #$7ED8B2, #$0080, #0)

doors_001C_crateriaescape:
    %cm_toggle_bit_inverted("Animals", #$7ED8B2, #$1000, #0)

DoorsGreenBrinstarMenu:
    dw #doors_001F_greenbrinstar
    dw #doors_0020_greenbrinstar
    dw #doors_0021_greenbrinstar
    dw #doors_0022_greenbrinstar
    dw #doors_0023_greenbrinstar
    dw #doors_0024_greenbrinstar
    dw #doors_0025_greenbrinstar
    dw #doors_0026_greenbrinstar
    dw #doors_0030_greenbrinstar
    dw #doors_0033_greenbrinstar
    dw #doors_0034_greenbrinstar
    dw #$0000
    %cm_header("GREEN BRINSTAR DOORS")

doors_001F_greenbrinstar:
    %cm_toggle_bit_inverted("Main Shaft (To Save)", #$7ED8B2, #$8000, #0)

doors_0020_greenbrinstar:
    %cm_toggle_bit_inverted("Main Shaft (To Pre-Map)", #$7ED8B4, #$0001, #0)

doors_0021_greenbrinstar:
    %cm_toggle_bit_inverted("Main Shaft (To Supers)", #$7ED8B4, #$0002, #0)

doors_0022_greenbrinstar:
    %cm_toggle_bit_inverted("Main Shaft (To Dachora)", #$7ED8B4, #$0004, #0)

doors_0023_greenbrinstar:
    %cm_toggle_bit_inverted("Main Shaft (To Refill)", #$7ED8B4, #$0008, #0)

doors_0024_greenbrinstar:
    %cm_toggle_bit_inverted("Main Shaft (Grey)", #$7ED8B4, #$0010, #0)

doors_0025_greenbrinstar:
    %cm_toggle_bit_inverted("Pre-Map", #$7ED8B4, #$0020, #0)

doors_0026_greenbrinstar:
    %cm_toggle_bit_inverted("Early Supers", #$7ED8B4, #$0040, #0)

doors_0030_greenbrinstar:
    %cm_toggle_bit_inverted("Green Hills Zone", #$7ED8B6, #$0001, #0)

doors_0033_greenbrinstar:
    %cm_toggle_bit_inverted("Noob Bridge", #$7ED8B6, #$0008, #0)

doors_0034_greenbrinstar:
    %cm_toggle_bit_inverted("Etecoons E-Tank Room", #$7ED8B6, #$0010, #0)

DoorsPinkBrinstarMenu:
    dw #doors_0028_pinkbrinstar
    dw #doors_0029_pinkbrinstar
    dw #doors_002A_pinkbrinstar
    dw #doors_002B_pinkbrinstar
    dw #doors_002C_pinkbrinstar
    dw #doors_002D_pinkbrinstar
    dw #doors_002E_pinkbrinstar
    dw #doors_002F_pinkbrinstar
    dw #doors_0035_pinkbrinstar
    dw #doors_0036_pinkbrinstar
    dw #doors_0037_pinkbrinstar
    dw #$0000
    %cm_header("PINK BRINSTAR DOORS")

doors_0028_pinkbrinstar:
    %cm_toggle_bit_inverted("Big Pink (Yellow)", #$7ED8B4, #$0100, #0)

doors_0029_pinkbrinstar:
    %cm_toggle_bit_inverted("Big Pink (Green)", #$7ED8B4, #$0200, #0)

doors_002A_pinkbrinstar:
    %cm_toggle_bit_inverted("Big Pink (To PreSpoSpo)", #$7ED8B4, #$0400, #0)

doors_002B_pinkbrinstar:
    %cm_toggle_bit_inverted("Big Pink (To Waterway)", #$7ED8B4, #$0800, #0)

doors_002C_pinkbrinstar:
    %cm_toggle_bit_inverted("PreSpoSpo (To Big Pink)", #$7ED8B4, #$1000, #0)

doors_002D_pinkbrinstar:
    %cm_toggle_bit_inverted("PreSpoSpo (To Spo Spo)", #$7ED8B4, #$2000, #0)

doors_002E_pinkbrinstar:
    %cm_toggle_bit_inverted("Spo Spo (To PreSpoSpo)", #$7ED8B4, #$4000, #0)

doors_002F_pinkbrinstar:
    %cm_toggle_bit_inverted("Mission Impossible", #$7ED8B4, #$8000, #0)

doors_0035_pinkbrinstar:
    %cm_toggle_bit_inverted("Spo Spo Farming Room", #$7ED8B6, #$0020, #0)

doors_0036_pinkbrinstar:
    %cm_toggle_bit_inverted("Wave Gate (To Big Pink)", #$7ED8B6, #$0040, #0)

doors_0037_pinkbrinstar:
    %cm_toggle_bit_inverted("Wave Gate (To E-Tank)", #$7ED8B6, #$0080, #0)

DoorsBlueBrinstarMenu:
    dw #doors_0031_bluebrinstar
    dw #doors_0032_bluebrinstar
    dw #$0000
    %cm_header("BLUE BRINSTAR DOORS")

doors_0031_bluebrinstar:
    %cm_toggle_bit_inverted("Morph Ball Room", #$7ED8B6, #$0002, #0)

doors_0032_bluebrinstar:
    %cm_toggle_bit_inverted("Construction Zone", #$7ED8B6, #$0004, #0)

DoorsRedBrinstarMenu:
    dw #doors_0038_redbrinstar
    dw #doors_0039_redbrinstar
    dw #doors_003A_redbrinstar
    dw #doors_003B_redbrinstar
    dw #doors_003C_redbrinstar
    dw #doors_003D_redbrinstar
    dw #doors_003E_redbrinstar
    dw #doors_003F_redbrinstar
    dw #$0000
    %cm_header("RED BRINSTAR DOORS")

doors_0038_redbrinstar:
    %cm_toggle_bit_inverted("Red Tower (Green)", #$7ED8B6, #$0100, #0)

doors_0039_redbrinstar:
    %cm_toggle_bit_inverted("Red Tower (Yellow)", #$7ED8B6, #$0200, #0)

doors_003A_redbrinstar:
    %cm_toggle_bit_inverted("Red Brin Firefleas", #$7ED8B6, #$0400, #0)

doors_003B_redbrinstar:
    %cm_toggle_bit_inverted("Caterpillars (To Beta)", #$7ED8B6, #$0800, #0)

doors_003C_redbrinstar:
    %cm_toggle_bit_inverted("Caterpillars (To Hell)", #$7ED8B6, #$1000, #0)

doors_003D_redbrinstar:
    %cm_toggle_bit_inverted("Caterpillars (To Alpha)", #$7ED8B6, #$2000, #0)

doors_003E_redbrinstar:
    %cm_toggle_bit_inverted("Beta PBs", #$7ED8B6, #$4000, #0)

doors_003F_redbrinstar:
    %cm_toggle_bit_inverted("Below Spazer", #$7ED8B6, #$8000, #0)

DoorsKraidMenu:
    dw #doors_0040_kraid
    dw #doors_0041_kraid
    dw #doors_0042_kraid
    dw #doors_0043_kraid
    dw #doors_0044_kraid
    dw #doors_0045_kraid
    dw #doors_0046_kraid
    dw #doors_0047_kraid
    dw #$0000
    %cm_header("KRAID DOORS")

doors_0040_kraid:
    %cm_toggle_bit_inverted("Warehouse Zeela", #$7ED8B8, #$0001, #0)

doors_0041_kraid:
    %cm_toggle_bit_inverted("Warehouse E-Tank", #$7ED8B8, #$0002, #0)

doors_0042_kraid:
    %cm_toggle_bit_inverted("Mini-Kraid (To EyeDoor)", #$7ED8B8, #$0004, #0)

doors_0043_kraid:
    %cm_toggle_bit_inverted("Mini-Kraid (To Party)", #$7ED8B8, #$0008, #0)

doors_0044_kraid:
    %cm_toggle_bit_inverted("Kraid Eye Door (Green)", #$7ED8B8, #$0010, #0)

doors_0045_kraid:
    %cm_toggle_bit_inverted("Kraid Eye Door (Eye)", #$7ED8B8, #$0020, #0)

doors_0046_kraid:
    %cm_toggle_bit_inverted("Kraid (To Varia)", #$7ED8B8, #$0040, #0)

doors_0047_kraid:
    %cm_toggle_bit_inverted("Kraid (To Eye Door)", #$7ED8B8, #$0080, #0)

DoorsUpperNorfairMenu:
    dw #doors_0049_uppernorfair
    dw #doors_004A_uppernorfair
    dw #doors_004B_uppernorfair
    dw #doors_004C_uppernorfair
    dw #doors_004D_uppernorfair
    dw #doors_004E_uppernorfair
    dw #doors_004F_uppernorfair
    dw #doors_0050_uppernorfair
    dw #doors_0051_uppernorfair
    dw #doors_0052_uppernorfair
    dw #doors_0053_uppernorfair
    dw #doors_0054_uppernorfair
    dw #doors_0055_uppernorfair
    dw #doors_0056_uppernorfair
    dw #doors_0057_uppernorfair
    dw #doors_0058_uppernorfair
    dw #$0000
    %cm_header("UPPER NORFAIR DOORS")

doors_0049_uppernorfair:
    %cm_toggle_bit_inverted("Cathedral", #$7ED8B8, #$0200, #0)

doors_004A_uppernorfair:
    %cm_toggle_bit_inverted("Cathedral Entrance", #$7ED8B8, #$0400, #0)

doors_004B_uppernorfair:
    %cm_toggle_bit_inverted("Business Center (Green)", #$7ED8B8, #$0800, #0)

doors_004C_uppernorfair:
    %cm_toggle_bit_inverted("Business Center (Yellow)", #$7ED8B8, #$1000, #0)

doors_004D_uppernorfair:
    %cm_toggle_bit_inverted("Business Center (Red)", #$7ED8B8, #$2000, #0)

doors_004E_uppernorfair:
    %cm_toggle_bit_inverted("Crocomire Speedway", #$7ED8B8, #$4000, #0)

doors_004F_uppernorfair:
    %cm_toggle_bit_inverted("Crocomire", #$7ED8B8, #$8000, #0)

doors_0050_uppernorfair:
    %cm_toggle_bit_inverted("Hi Jump E-Tank", #$7ED8BA, #$0001, #0)

doors_0051_uppernorfair:
    %cm_toggle_bit_inverted("Post Croc Farm", #$7ED8BA, #$0002, #0)

doors_0052_uppernorfair:
    %cm_toggle_bit_inverted("Post Croc Shaft", #$7ED8BA, #$0004, #0)

doors_0053_uppernorfair:
    %cm_toggle_bit_inverted("Bubble Mtn (To Reserve)", #$7ED8BA, #$0008, #0)

doors_0054_uppernorfair:
    %cm_toggle_bit_inverted("Bubble Mtn (To Bat Cave)", #$7ED8BA, #$0010, #0)

doors_0055_uppernorfair:
    %cm_toggle_bit_inverted("Speed Booster Hall", #$7ED8BA, #$0020, #0)

doors_0056_uppernorfair:
    %cm_toggle_bit_inverted("Single Chamber", #$7ED8BA, #$0040, #0)

doors_0057_uppernorfair:
    %cm_toggle_bit_inverted("Double Chamber", #$7ED8BA, #$0080, #0)

doors_0058_uppernorfair:
    %cm_toggle_bit_inverted("Kronic Boost", #$7ED8BA, #$0100, #0)

DoorsLowerNorfairMenu:
    dw #doors_0059_lowernorfair
    dw #doors_005A_lowernorfair
    dw #doors_005B_lowernorfair
    dw #doors_005C_lowernorfair
    dw #doors_005D_lowernorfair
    dw #doors_005E_lowernorfair
    dw #doors_005F_lowernorfair
    dw #doors_0060_lowernorfair
    dw #$0000
    %cm_header("LOWER NORFAIR DOORS")

doors_0059_lowernorfair:
    %cm_toggle_bit_inverted("Golden Torizo", #$7ED8BA, #$0200, #0)

doors_005A_lowernorfair:
    %cm_toggle_bit_inverted("Ridley (To Farming)", #$7ED8BA, #$0400, #0)

doors_005B_lowernorfair:
    %cm_toggle_bit_inverted("Ridley (To E-Tank)", #$7ED8BA, #$0800, #0)

doors_005C_lowernorfair:
    %cm_toggle_bit_inverted("Ridley Farming", #$7ED8BA, #$1000, #0)

doors_005D_lowernorfair:
    %cm_toggle_bit_inverted("Mickey Mouse", #$7ED8BA, #$2000, #0)

doors_005E_lowernorfair:
    %cm_toggle_bit_inverted("Red Kihunter Shaft", #$7ED8BA, #$4000, #0)

doors_005F_lowernorfair:
    %cm_toggle_bit_inverted("Wasteland", #$7ED8BA, #$8000, #0)

doors_0060_lowernorfair:
    %cm_toggle_bit_inverted("Metal Pirates", #$7ED8BC, #$0001, #0)

DoorsWreckedShipOffMenu:
    dw #doors_0080_wreckedshipoff
    dw #doors_0081_wreckedshipoff
    dw #doors_0082_wreckedship
    dw #doors_0083_wreckedship
    dw #doors_0084_wreckedshipoff
    dw #doors_0085_wreckedshipoff
    dw #doors_0086_wreckedship
    dw #$0000
    %cm_header("WRECKED SHIP OFF DOORS")

doors_0080_wreckedshipoff:
    %cm_toggle_bit_inverted("Attic (To West Ocean)", #$7ED8C0, #$0001, #0)

doors_0081_wreckedshipoff:
    %cm_toggle_bit_inverted("Attic (To Robot Missiles)", #$7ED8C0, #$0002, #0)

doors_0082_wreckedship:
    %cm_toggle_bit_inverted("Main Shaft (To Left Supers)", #$7ED8C0, #$0004, #0)

doors_0083_wreckedship:
    %cm_toggle_bit_inverted("Main Shaft (To Sponge Bath)", #$7ED8C0, #$0008, #0)

doors_0084_wreckedshipoff:
    %cm_toggle_bit_inverted("Main Shaft (To Basement)", #$7ED8C0, #$0010, #0)

doors_0085_wreckedshipoff:
    %cm_toggle_bit_inverted("Phantoon Eye Door", #$7ED8C0, #$0020, #0)

doors_0086_wreckedship:
    %cm_toggle_bit_inverted("Phantoon", #$7ED8C0, #$0040, #0)

DoorsWreckedShipOnMenu:
    dw #doors_0082_wreckedship
    dw #doors_0083_wreckedship
    dw #doors_0086_wreckedship
    dw #doors_0087_wreckedshipon
    dw #doors_0088_wreckedshipon
    dw #doors_0089_wreckedshipon
    dw #doors_008A_wreckedshipon
    dw #doors_008B_wreckedshipon
    dw #$0000
    %cm_header("WRECKED SHIP ON DOORS")

doors_0087_wreckedshipon:
    %cm_toggle_bit_inverted("Bowling Alley", #$7ED8C0, #$0080, #0)

doors_0088_wreckedshipon:
    %cm_toggle_bit_inverted("Attic (To West Ocean)", #$7ED8C0, #$0100, #0)

doors_0089_wreckedshipon:
    %cm_toggle_bit_inverted("Attic (To Robot Missiles)", #$7ED8C0, #$0200, #0)

doors_008A_wreckedshipon:
    %cm_toggle_bit_inverted("Attic (To Main Shaft)", #$7ED8C0, #$0400, #0)

doors_008B_wreckedshipon:
    %cm_toggle_bit_inverted("Electric Death", #$7ED8C0, #$0800, #0)

DoorsWestMaridiaMenu:
    dw #doors_008C_westmaridia
    dw #doors_008D_westmaridia
    dw #doors_008E_westmaridia
    dw #doors_008F_westmaridia
    dw #doors_0090_westmaridia
    dw #$0000
    %cm_header("WEST MARIDIA DOORS")

doors_008C_westmaridia:
    %cm_toggle_bit_inverted("Glass Tunnel", #$7ED8C0, #$1000, #0)

doors_008D_westmaridia:
    %cm_toggle_bit_inverted("Main Street", #$7ED8C0, #$2000, #0)

doors_008E_westmaridia:
    %cm_toggle_bit_inverted("Fish Tank", #$7ED8C0, #$4000, #0)

doors_008F_westmaridia:
    %cm_toggle_bit_inverted("Crab Shaft", #$7ED8C0, #$8000, #0)

doors_0090_westmaridia:
    %cm_toggle_bit_inverted("Crab Hole", #$7ED8C2, #$0001, #0)

DoorsEastMaridiaMenu:
    dw #doors_0091_eastmaridia
    dw #doors_0092_eastmaridia
    dw #doors_0093_eastmaridia
    dw #doors_0094_eastmaridia
    dw #doors_0095_eastmaridia
    dw #doors_0096_eastmaridia
    dw #doors_0097_eastmaridia
    dw #doors_0098_eastmaridia
    dw #doors_009A_eastmaridia
    dw #doors_009B_eastmaridia
    dw #doors_009C_eastmaridia
    dw #doors_009D_eastmaridia
    dw #doors_009E_eastmaridia
    dw #doors_009F_eastmaridia
    dw #$0000
    %cm_header("EAST MARIDIA DOORS")

doors_0091_eastmaridia:
    %cm_toggle_bit_inverted("Plasma Beam", #$7ED8C2, #$0002, #0)

doors_0092_eastmaridia:
    %cm_toggle_bit_inverted("Maridia Elevator", #$7ED8C2, #$0004, #0)

doors_0093_eastmaridia:
    %cm_toggle_bit_inverted("Plasma Spark (Grey)", #$7ED8C2, #$0008, #0)

doors_0094_eastmaridia:
    %cm_toggle_bit_inverted("Plasma Spark (Green)", #$7ED8C2, #$0010, #0)

doors_0095_eastmaridia:
    %cm_toggle_bit_inverted("Oasis", #$7ED8C2, #$0020, #0)

doors_0096_eastmaridia:
    %cm_toggle_bit_inverted("Aqueduct", #$7ED8C2, #$0040, #0)

doors_0097_eastmaridia:
    %cm_toggle_bit_inverted("Butterfly", #$7ED8C2, #$0080, #0)

doors_0098_eastmaridia:
    %cm_toggle_bit_inverted("Colosseum (Red)", #$7ED8C2, #$0100, #0)

doors_009A_eastmaridia:
    %cm_toggle_bit_inverted("Colosseum (Green)", #$7ED8C2, #$0400, #0)

doors_009B_eastmaridia:
    %cm_toggle_bit_inverted("Draygon Eye Door", #$7ED8C2, #$0800, #0)

doors_009C_eastmaridia:
    %cm_toggle_bit_inverted("Halfie Climb", #$7ED8C2, #$1000, #0)

doors_009D_eastmaridia:
    %cm_toggle_bit_inverted("Botwoon", #$7ED8C2, #$2000, #0)

doors_009E_eastmaridia:
    %cm_toggle_bit_inverted("Draygon (To Precious)", #$7ED8C2, #$4000, #0)

doors_009F_eastmaridia:
    %cm_toggle_bit_inverted("Draygon (To Space Jump)", #$7ED8C2, #$8000, #0)

DoorsTourianMenu:
    dw #doors_00A0_tourian
    dw #doors_00A1_tourian
    dw #doors_00A2_tourian
    dw #doors_00A3_tourian
    dw #doors_00A4_tourian
    dw #doors_00A5_tourian
    dw #doors_00A6_tourian
    dw #doors_00A7_tourian
    dw #doors_00A8_tourian
    dw #doors_00A9_tourian
    dw #doors_00AA_tourian
    dw #doors_00AB_tourian
    dw #doors_00AC_tourian
    dw #$0000
    %cm_header("TOURIAN DOORS")

doors_00A0_tourian:
    %cm_toggle_bit_inverted("Metroid Room 1", #$7ED8C4, #$0001, #0)

doors_00A1_tourian:
    %cm_toggle_bit_inverted("Metroid Room 2", #$7ED8C4, #$0002, #0)

doors_00A2_tourian:
    %cm_toggle_bit_inverted("Metroid Room 3", #$7ED8C4, #$0004, #0)

doors_00A3_tourian:
    %cm_toggle_bit_inverted("Metroid Room 4", #$7ED8C4, #$0008, #0)

doors_00A4_tourian:
    %cm_toggle_bit_inverted("Dust Torizo (To Hoppers)", #$7ED8C4, #$0010, #0)

doors_00A5_tourian:
    %cm_toggle_bit_inverted("Dust Torizo (To Big Boy)", #$7ED8C4, #$0020, #0)

doors_00A6_tourian:
    %cm_toggle_bit_inverted("Big Boy Room", #$7ED8C4, #$0040, #0)

doors_00A7_tourian:
    %cm_toggle_bit_inverted("Seaweed Room", #$7ED8C4, #$0080, #0)

doors_00A8_tourian:
    %cm_toggle_bit_inverted("Tourian Eye Door", #$7ED8C4, #$0100, #0)

doors_00A9_tourian:
    %cm_toggle_bit_inverted("Rinka Shaft", #$7ED8C4, #$0200, #0)

doors_00AA_tourian:
    %cm_toggle_bit_inverted("Escape Room 2", #$7ED8C4, #$0400, #0)

doors_00AB_tourian:
    %cm_toggle_bit_inverted("Escape Room 3", #$7ED8C4, #$0800, #0)

doors_00AC_tourian:
    %cm_toggle_bit_inverted("Escape Room 4", #$7ED8C4, #$1000, #0)


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
    dw #misc_infidoppler
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
    %cm_header("MISC OPTIONS")

misc_bluesuit:
    %cm_toggle("Blue Suit", !SAMUS_DASH_COUNTER, #$04, #0)

misc_flashsuit:
    %cm_toggle("Flash Suit", !SAMUS_SHINE_TIMER, #$01, #0)

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
    %cm_toggle("Health Bomb Flag", !SAMUS_HEALTH_WARNING, #$01, #0)

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
    %cm_toggle("Metronome", !ram_metronome, #$01, GameLoopExtras)

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
    %cm_toggle("Spin Lock", !sram_spin_lock, #$01, #0)

misc_infidoppler:
    %cm_toggle("Phantoon Infi-Doppler", !sram_infidoppler_enabled, #$01, #0)

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

%endfree(85)

