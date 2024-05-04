
; Allow input instruction lists to be repointed outside bank $91
org $9183C0
DemoInputObjectHandler:
{
    PHB
    ; set DB to match input data
    PEA.w DemoInputInstructionLists>>8 : PLB : PLB

    ; check if demo input enabled
    BIT !DEMO_INPUT_ENABLED : BPL .return
    ; check if instruction pointer = 0
    LDA !DEMO_INSTRUCTION_POINTER : BEQ .return

    JSR ProcessDemoInputObject

    ; update previous demo inputs
    LDA !DEMO_PREVIOUS_CONTROLLER_PRI : STA !PREVIOUS_CONTROLLER_PRI
    LDA !DEMO_PREVIOUS_CONTROLLER_PRI_NEW : STA !PREVIOUS_CONTROLLER_PRI_NEW

    ; update current demo inputs
    LDA !DEMO_CONTROLLER_PRI : STA !IH_CONTROLLER_PRI : STA !DEMO_PREVIOUS_CONTROLLER_PRI
    EOR !PREVIOUS_CONTROLLER_PRI : AND !IH_CONTROLLER_PRI
    STA !IH_CONTROLLER_PRI_NEW : STA !DEMO_PREVIOUS_CONTROLLER_PRI_NEW

  .return
    PLB
    RTL
}

ProcessDemoInputObject:
{
    LDX #$0000
    JSR (!DEMO_PREINSTRUCTION_POINTER,X)
    DEC !DEMO_INSTRUCTION_TIMER
    BNE .return

    LDY !DEMO_INSTRUCTION_POINTER
  .instructionLoop
    LDA $0000,Y
    BPL .frameCount
    STA $12 : INY : INY
    PEA .instructionLoop-1
    JMP ($0012)

  .frameCount
    STA !DEMO_INSTRUCTION_TIMER
    LDA $0002,Y : STA !DEMO_CONTROLLER_PRI
    TYA : CLC : ADC #$0006
    STA !DEMO_INSTRUCTION_POINTER

  .return
}
NoCodeRTS:
    RTS
warnpc $918427


org $918427
DemoInstruction_Delete:


org $9186FE
; Next 16-bits are WRAM address, following 16-bits are new value
DemoInstruction_ModifyWRAM:
{
    LDA $0000,Y : INY : INY
    STA $C1 : LDA #$7E7E : STA $C3
    LDA $0000,Y : INY : INY
    STA [$C1]
    RTS
}
warnpc $918739


; adds lava damage to demos, replaces dead debug code
if !FEATURE_PAL
org $90E814
    JSR $E9CB ; Handle periodic damage to Samus
else
org $90E817
    JSR $E9CE ; Handle periodic damage to Samus
endif


; Reduce time to start demos
if !FEATURE_PAL
org $8B9B2B
    LDA #$00F0
else
org $8B9B5B
    LDA #$012C
endif

if !FEATURE_PAL
org $8B9EEA
    LDA #$00F0
else
org $8B9F1A
    LDA #$012C
endif


; unlock the fourth demo set
; normally requires watching credits
org $808262
    LDA #$0004


; Allow DemoSamusSetup table to be relocated
org $9187FE
    LDA.w DemoSamusSetup,X


org $918885
DemoSamusData:
{
    dw DemoSamusData_set1, DemoSamusData_set2, DemoSamusData_set3, DemoSamusData_set4

;        ______________________________________________________ Equipment
;       |       _______________________________________________ Missiles
;       |      |       ________________________________________ Super missiles
;       |      |      |       _________________________________ Power bombs
;       |      |      |      |       __________________________ Health
;       |      |      |      |      |       ___________________ Collected beams
;       |      |      |      |      |      |       ____________ Equipped beams
;       |      |      |      |      |      |      |       _____ Demo input object pointer
;       |      |      |      |      |      |      |      |
  .set1
if !FEATURE_PAL
    dw $2000, $0000, $0000, $0000, $0063, $0000, $0000, DemoObject_landingsite ; PAL
    dw $1004, $0001, $0000, $0000, $00C7, $0000, $0000, DemoObject_mockball ; PAL
    dw $1004, $0002, $0004, $0000, $00C7, $0000, $0000, DemoObject_redtower ; PAL
    dw $1005, $0002, $0002, $0002, $00C7, $0000, $0000, DemoObject_lavadive ; PAL
    dw $1005, $0002, $0002, $0003, $0021, $0000, $0000, DemoObject_ggg ; PAL
    dw $F33F, $0064, $0014, $0014, $02BC, $100F, $100B, DemoObject_babyskip ; PAL
else
    dw $2000, $0000, $0000, $0000, $0063, $0000, $0000, DemoObject_landingsite
    dw $1004, $0001, $0000, $0000, $00C7, $0000, $0000, DemoObject_mockball
    dw $1004, $0002, $0004, $0000, $00C7, $0000, $0000, DemoObject_redtower
    dw $1005, $0002, $0002, $0002, $012B, $0000, $0000, DemoObject_lavadive
    dw $1005, $0002, $0002, $0003, $001D, $0000, $0000, DemoObject_ggg
    dw $F33F, $0064, $0014, $0014, $02BC, $100F, $100B, DemoObject_babyskip
endif

  .set2
if !FEATURE_PAL
    dw $2105, $001E, $0005, $0000, $012B, $1006, $1006, DemoObject_IceBeam
    dw $0004, $000A, $0000, $0000, $00C7, $0000, $0000, DemoObject_FireFleaRoom
    dw $0004, $0019, $0005, $0000, $00C7, $1000, $1000, DemoObject_BrinstarDiagonalRoom
    dw $E325, $004B, $000F, $000A, $0383, $1000, $1000, DemoObject_LowerNorfairEntrance
    dw $E32D, $0055, $000F, $000A, $03E7, $0000, $0000, DemoObject_ScrewAttack
    dw $E105, $002D, $0005, $0005, $018F, $1000, $1000, DemoObject_Dachora
else
    dw $1004, $0006, $0004, $0001, $0081, $0000, $0000, DemoObject_moat
    dw $1004, $0005, $0000, $0000, $0063, $0000, $0000, DemoObject_alcatraz
    dw $3125, $0014, $000A, $0004, $012B, $1001, $1001, DemoObject_pseudo
    dw $1004, $0002, $0004, $0002, $0045, $0000, $0000, DemoObject_kqk
    dw $F33F, $005B, $000F, $000D, $01C1, $100F, $100B, DemoObject_speedball
    dw $2000, $000A, $0005, $0005, $012B, $1001, $1001, DemoObject_wraparound
endif

  .set3
if !FEATURE_PAL
    dw $E105, $0037, $0005, $0005, $018F, $1000, $1000, DemoObject_WreckedShipBasement
    dw $F33F, $0055, $000F, $000A, $03E7, $100F, $1000, DemoObject_Shinespark
    dw $2105, $001E, $0005, $0000, $012B, $0000, $0000, DemoObject_RedBrinstarElevator
    dw $0104, $0019, $0005, $0000, $012B, $0000, $0000, DemoObject_Kraid
    dw $2105, $001E, $0005, $0005, $012B, $1008, $1008, DemoObject_TourianEntrance
else
    dw $F33F, $005E, $0014, $000F, $0239, $100F, $100B, DemoObject_everest
    dw $1004, $0004, $0003, $0005, $0095, $0000, $0000, DemoObject_alphapb
    dw $1004, $0000, $0000, $0000, $0063, $0000, $0000, DemoObject_bombjump
    dw $332F, $005B, $000E, $000F, $01C6, $100F, $100B, DemoObject_tunneljump
    dw $0004, $0005, $0000, $0000, $0063, $0000, $0000, DemoObject_climb
    dw $F33F, $005B, $0010, $000E, $01B7, $100F, $100B, DemoObject_ocean
endif

  .set4
if !FEATURE_PAL
    dw $F32D, $0055, $000F, $000A, $03E7, $1000, $1000, DemoObject_GauntletEntrance
    dw $F32D, $0055, $000F, $000A, $03E7, $0000, $0000, DemoObject_AdvancedGrappleBeam
    dw $F32D, $0055, $000F, $000A, $03E7, $0000, $0000, DemoObject_IBJ
    dw $F32D, $0055, $000F, $000A, $03E7, $1008, $1008, DemoObject_SBA
    dw $F32D, $0055, $0014, $0014, $03E7, $1000, $1000, DemoObject_CrystalFlash
else
    dw $F33F, $0064, $0014, $0014, $02BC, $100F, $100B, DemoObject_metroid3
    dw $0004, $0005, $0000, $0000, $0063, $0000, $0000, DemoObject_flyway
    dw $1005, $000A, $0005, $0000, $012B, $0005, $0005, DemoObject_frogspeedway
    dw $7114, $000F, $0002, $0002, $018F, $0000, $0000, DemoObject_grapplejump
    dw $1004, $000A, $000B, $000C, $0063, $0000, $0000, DemoObject_crystalflash
    dw $1004, $0005, $0004, $0000, $00C7, $0000, $0000, DemoObject_tasdance
endif
}

DemoObject:
{
; Order does not matter
;        _________________ Initialisation (RTS)
;       |       __________ Pre-instruction (ends demo controller input)
;       |      |       ___ Pointer to input instruction list
;       |      |      |
if !FEATURE_PAL
  .IceBeam
    dw NoCodeRTS, EndDemo, DemoInput_IceBeam
  .LowerNorfairEntrance
    dw NoCodeRTS, EndDemo, DemoInput_LowerNorfairEntrance
  .FireFleaRoom
    dw NoCodeRTS, EndDemo, DemoInput_FireFleaRoom
  .BrinstarDiagonalRoom
    dw NoCodeRTS, EndDemo, DemoInput_BrinstarDiagonalRoom
  .WreckedShipBasement
    dw NoCodeRTS, EndDemo, DemoInput_WreckedShipBasement
  .Kraid
    dw NoCodeRTS, EndDemo, DemoInput_Kraid
  .AdvancedGrappleBeam
    dw NoCodeRTS, EndDemo, DemoInput_AdvancedGrappleBeam
  .IBJ
    dw NoCodeRTS, EndDemo, DemoInput_IBJ
  .CrystalFlash
    dw NoCodeRTS, EndDemo, DemoInput_CrystalFlash
  .ScrewAttack
    dw NoCodeRTS, EndDemo, DemoInput_ScrewAttack
  .Dachora
    dw NoCodeRTS, EndDemo, DemoInput_Dachora
  .RedBrinstarElevator
    dw NoCodeRTS, EndDemo, DemoInput_RedBrinstarElevator
  .EyeDoor
    dw NoCodeRTS, EndDemo, DemoInput_EyeDoor
  .Shinespark
    dw NoCodeRTS, EndDemo_Shinespark, DemoInput_Shinespark
  .GauntletEntrance
    dw NoCodeRTS, EndDemo, DemoInput_GauntletEntrance
  .TourianEntrance
    dw NoCodeRTS, EndDemo, DemoInput_TourianEntrance
  .SBA
    dw NoCodeRTS, EndDemo, DemoInput_SBA
endif

; custom demos below, first 6 shared between NTSC and PAL
  .mockball
    dw NoCodeRTS, EndDemo, DemoInput_mockball
  .lavadive
    dw NoCodeRTS, EndDemo, DemoInput_lavadive
  .redtower
    dw NoCodeRTS, EndDemo, DemoInput_redtower
  .ggg
    dw NoCodeRTS, EndDemo, DemoInput_ggg
  .landingsite
    dw NoCodeRTS, EndDemo, DemoInput_landingsite
  .babyskip
    dw NoCodeRTS, EndDemo, DemoInput_babyskip
if !FEATURE_PAL
else
  .metroid3
    dw NoCodeRTS, EndDemo, DemoInput_metroid3
  .moat
    dw NoCodeRTS, EndDemo, DemoInput_moat
  .frogspeedway
    dw NoCodeRTS, EndDemo, DemoInput_frogspeedway
  .wraparound
    dw NoCodeRTS, EndDemo, DemoInput_wraparound
  .speedball
    dw NoCodeRTS, EndDemo, DemoInput_speedball
  .kqk
    dw NoCodeRTS, EndDemo, DemoInput_kqk
  .grapplejump
    dw NoCodeRTS, EndDemo, DemoInput_grapplejump
  .bombjump
    dw NoCodeRTS, EndDemo, DemoInput_bombjump
  .crystalflash
    dw NoCodeRTS, EndDemo, DemoInput_crystalflash
  .flyway
    dw NoCodeRTS, EndDemo, DemoInput_flyway
  .alcatraz
    dw NoCodeRTS, EndDemo, DemoInput_alcatraz
  .tunneljump
    dw NoCodeRTS, EndDemo, DemoInput_tunneljump
  .climb
    dw NoCodeRTS, EndDemo, DemoInput_climb
  .ocean
    dw NoCodeRTS, EndDemo, DemoInput_ocean
  .pseudo
    dw NoCodeRTS, EndDemo, DemoInput_pseudo
  .everest
    dw NoCodeRTS, EndDemo, DemoInput_everest
  .alphapb
    dw NoCodeRTS, EndDemo, DemoInput_alphapb
  .tasdance
    dw NoCodeRTS, EndDemo, DemoInput_tasdance
endif
}

DemoSamusSetup:
{
    dw DemoSamusSetup_set1, DemoSamusSetup_set2, DemoSamusSetup_set3, DemoSamusSetup_set4

  .set1
    dw DSS_LandingSite ; landingsite
    dw DSS_FacingRight ; mockball
    dw DSS_FacingRight ; redtower
    dw DSS_FacingLeft ; lavadive
    dw DSS_FacingLeft ; ggg
    dw DSS_FacingLeft ; babyskip

  .set2
if !FEATURE_PAL
    dw DSS_FacingLeft ; Ice Beam
    dw DSS_FacingLeft ; FireFlea Room
    dw DSS_FacingRight ; Brinstar Diagonal Room
    dw DSS_FacingLeft ; Lower Norfair Entrance
    dw DSS_FacingRight ; Screw Attack
    dw DSS_FallingFacingLeft ; Dachora
else
    dw DSS_FacingRight ; moat
    dw DSS_FacingLeft ; alcatraz
    dw DSS_FacingRight ; pseudo
    dw DSS_FacingRight ; kqk
    dw DSS_FacingRight ; speedball
    dw DSS_FacingLeft ; wraparound
endif

 .set3
if !FEATURE_PAL
    dw DSS_FacingLeft ; Pre Phantoon Hall
    dw DSS_Shinespark ; Shinespark
    dw DSS_FacingRight ; Eye Door
    dw DSS_FacingRight ; Red Brinstar Elevator
    dw DSS_FacingRight ; Kraid
    dw DSS_FacingRight ; Tourian Entrance
else
    dw DSS_FacingRight ; everest
    dw DSS_FacingLeft ; alphapb
    dw DSS_FacingLeft ; bombjump
    dw DSS_FacingLeft ; tunneljump
    dw DSS_FacingLeft ; climb
    dw DSS_FacingLeft ; ocean
endif

  .set4
if !FEATURE_PAL
    dw DSS_GauntletSpark ; Gauntlet Entrance
    dw DSS_FacingLeft ; Advanced Grapple Beam
    dw DSS_FacingLeft ; IBJ
    dw DSS_FacingRight ; SBA
    dw DSS_LowEnergyFacingLeft ; Crystal Flash
else
    dw DSS_FacingRight ; metroid3
    dw DSS_FacingRight ; flyway
    dw DSS_FacingLeft ; frogspeedway
    dw DSS_FacingLeft ; grapplejump
    dw DSS_LowEnergyFacingLeft ; crystalflash
    dw DSS_FacingLeft ; tasdance
endif

DSS_LandingSite:
;;; $8A33: Demo Samus setup - landing site ;;;
{
if !FEATURE_PAL
    JSL $91E35B ; Make Samus face forward
    ; Samus drawing handler = default
    LDA #$EB4F : STA !SAMUS_DRAW_HANDLER
else
    JSL $91E3F6 ; Make Samus face forward
    ; Samus drawing handler = default
    LDA #$EB52 : STA !SAMUS_DRAW_HANDLER
endif
    RTS
}

DSS_LowEnergyFacingLeft:
;;; $8A43: Demo Samus setup - standing facing left - low health ;;;
{
if !FEATURE_PAL
    LDA #$0014 : STA !SAMUS_HP ; Samus health = 20
else
    LDA #$0040 : STA !SAMUS_HP ; Samus health = 64
endif
    ; fallthrough to DSS_FacingLeft
}

DSS_FacingLeft:
;;; $8A49: Demo Samus setup - standing facing left ;;;
{
    LDA #$0002 ; pose = facing left - normal
    BRA DSS_InitPose
}

DSS_FacingRight:
;;; $8A53: Demo Samus setup - standing facing right ;;;
{
    LDA #$0001 ; pose = facing right - normal
    ; fallthrough to DSS_InitPose
}

DSS_InitPose:
;;; $8A56: Initialise Samus with pose = [A] ;;;
{
    STA !SAMUS_POSE
if !FEATURE_PAL
    JSL $91F398 ; Initialise Samus pose
    JSL $91FA6D ; Set Samus animation frame if pose changed
    LDA #$EB4F : STA !SAMUS_DRAW_HANDLER ; Samus drawing handler = default
else
    JSL $91F433 ; Initialise Samus pose
    JSL $91FB08 ; Set Samus animation frame if pose changed
    LDA #$EB52 : STA !SAMUS_DRAW_HANDLER ; Samus drawing handler = default
endif
    RTS
}

if !FEATURE_PAL
DSS_FallingFacingLeft:
;;; $8A4E: Demo Samus setup - falling facing left ;;;
{
    LDA #$002A ; pose = facing left - falling
    BRA DSS_InitPose
}

DSS_Shinespark:
;;; $8A68: Demo Samus setup - shinespark ;;;
{
    LDA #$EB4F : STA !SAMUS_DRAW_HANDLER ; Samus drawing handler = default
    JSL $90CFFA ; Trigger shinespark windup
    LDA #$00CD : STA !SAMUS_POSE ; facing right - shinespark - diagonal
    JSL $91F398 ; Initialise Samus pose
    JSL $91FA6D ; Set Samus animation frame if pose changed
    RTS
}

DSS_GauntletSpark:
;;; $8A81: Demo Samus setup - gauntlet entrance ;;;
{
    LDA #$EB4F : STA !SAMUS_DRAW_HANDLER ; Samus drawing handler = default
    JSL $90CFFA ; Trigger shinespark windup
    LDA #$00CA : STA !SAMUS_POSE ; facing right - shinespark - diagonal
    JSL $91F398 ; Initialise Samus pose
    JSL $91FA6D ; Set Samus animation frame if pose changed
    RTS
}

EndDemo_Shinespark:
; why does this routine exist?
{
;    LDA !SAMUS_MOVEMENT_TYPE : AND #$00FF : CMP #$001A : BEQ .return

    LDA.w #EndDemo : STA !DEMO_PREINSTRUCTION_POINTER
    LDA.w #DemoInput_Shinespark_unseen : STA !DEMO_INSTRUCTION_POINTER
    LDA #$0001 : STA !DEMO_INSTRUCTION_TIMER

  .return
    RTS
}
endif

EndDemo:
{
    ; check if transitioning from demo
    LDA !GAMEMODE : CMP #$002C : BNE .return

    ; instruction list pointer = delete
    LDA #$0001 : STA !DEMO_INSTRUCTION_TIMER
    LDA #$8776 : STA !DEMO_INSTRUCTION_POINTER

  .return
    RTS
}

; Based on $828679 but with several edits due to relocated and reorganized data
LoadDemoRoomData:
{
    PHP : %ai16()
    STZ !DOOR_ID
    LDA !DEMO_CURRENT_SCENE
    ASL : ASL : ASL
    ; Multiply by 10h instead of 12h by skipping ADC $1F57
    ASL : STA $12
    LDA !DEMO_CURRENT_SET : ASL : TAX
    LDA.l DemoRoomData,X
    CLC : ADC $12 : TAX
    LDA.l $910000,X : STA !ROOM_ID
    LDA.l $910002,X : STA !DOOR_ID
    ; Skip loading door slot
    LDA.l $910004,X : STA !LAYER1_X : STA !BG1_X_OFFSET
    LDA.l $910006,X : STA !LAYER1_Y : STA !BG1_Y_OFFSET
    LDA.l $910008,X : CLC : ADC !LAYER1_Y
    STA !SAMUS_Y : STA !SAMUS_PREVIOUS_Y
    LDA.l $91000A,X : CLC : ADC !LAYER1_X
    CLC : ADC #$0080 : STA !SAMUS_X : STA !SAMUS_PREVIOUS_X
    LDA.l $91000C,X : STA !DEMO_TIMER

    PHB : %a8() : LDA #$8F : PHA : PLB
    LDX !ROOM_ID
    LDA $0001,X : STA !AREA_ID
    %a16()
    PLB

    STZ $B1 : STZ $B3
    INC !DEMO_CURRENT_SCENE

    ; set event bits in time for room state checks
    LDX #$0008
    TDC

  .shortLoop
    DEC ; $FFFF
    STA $7ED8F0,X : STA $7ED8F8,X
    STA $7ED900,X : STA $7ED908,X

    INC ; $0000
    STA $7ED820,X : STA $7ED828,X

    DEX : DEX : BPL .shortLoop

    ; set Zebes Awake bit for climb demo
    INC : STA $7ED820

    ; continue vanilla logic from $82872D
  .midLoop
    TDC ; $0000
    STA $7ED8B0,X

    DEC ; $FFFF
    STA $7ED830,X : STA $7ED870,X

    INX : INX : CPX #$0040 : BMI .midLoop

    TDC : TAX
  .mapTileLoop
    STA $7ECD52,X
    INX : INX : CPX #$0600 : BMI .mapTileLoop

    STA !SAMUS_RESERVE_MAX
    STA !SAMUS_RESERVE_ENERGY
    STA !SAMUS_RESERVE_MODE
    STA $7ED914 ; Loading game state = 0 (intro)
    STA !DISABLE_MINIMAP ; Enable mini-map

    ; Jump back to vanilla where there is a PLP : RTS
    JML $828677
}

DemoRoomData:
{
    dw DemoRoomData_set1, DemoRoomData_set2, DemoRoomData_set3, DemoRoomData_set4

; Door slot removed (previously between door pointer and screen position)
;
;        ______________________________________________________ Room pointer
;       |       _______________________________________________ Door pointer
;       |      |       ________________________________________ Screen X position
;       |      |      |       _________________________________ Screen Y position
;       |      |      |      |       __________________________ Samus Y offset from top of screen
;       |      |      |      |      |       ___________________ Samus X offset from centre of screen
;       |      |      |      |      |      |       ____________ Length of demo
;       |      |      |      |      |      |      |       _____ Pointer to code
;       |      |      |      |      |      |      |      |
  .set1
if !FEATURE_PAL
    dw $91F8, $896A, $0400, $0400, $0040, $0000, $01E3, DRC_LandingSite ; PAL landingsite
    dw $9BC8, $8CD6, $0000, $0100, $005B, $FFCC, $00C4, DRC_RTS ; PAL mockball
    dw $A253, $8F0A, $0000, $0400, $008B, $FFAD, $023A, DRC_RTS ; PAL redtower
    dw $AF14, $967E, $0300, $0000, $008B, $0052, $02FA, DRC_RTS ; PAL lavadive
    dw $B2DA, $9906, $0300, $0000, $008B, $0051, $0100, DRC_RTS ; PAL ggg
    dw $DCB1, $AA2C, $0300, $0000, $00BB, $003B, $0615, DRC_RTS ; PAL babyskip
else
    dw $91F8, $896A, $0400, $0400, $0040, $0001, $02C3, DRC_LandingSite ; landingsite
    dw $9BC8, $8CD6, $0000, $0100, $005B, $FFCC, $00F6, DRC_RTS ; mockball
    dw $A253, $8F0A, $0000, $0400, $008B, $FFA5, $027F, DRC_RTS ; redtower
    dw $AF14, $967E, $0300, $0000, $008B, $005B, $03BC, DRC_RTS ; lavadive
    dw $B2DA, $9906, $0300, $0000, $008B, $0051, $0100, DRC_RTS ; ggg
    dw $DCB1, $AA2C, $0300, $0000, $00BB, $003B, $0659, DRC_RTS ; babyskip
endif
    dw $FFFF

  .set2
if !FEATURE_PAL
    dw $A408, $A36C, $0100, $0100, $008B, $0056, $01FD, DRC_RTS ; Ice Beam
    dw $9C5E, $8CCA, $0200, $0000, $008B, $0049, $019A, DRC_RTS ; FireFlea Room
    dw $9E52, $8DEA, $0500, $0300, $00AB, $FFE2, $0117, DRC_RTS ; Brinstar Diagonal Room
    dw $AF14, $967E, $0300, $0000, $008B, $004B, $03CA, DRC_RTS ; Lower Norfair Entrance
    dw $9879, $8982, $0000, $0000, $00BB, $FFF1, $00D5, DRC_RTS ; Screw Attack
    dw $9CB3, $8DD2, $0400, $0200, $0080, $0005, $0317, DRC_RTS ; Dachora
else
    dw $95FF, $8A36, $0000, $0000, $008B, $FFAA, $0199, DRC_RTS ; moat
    dw $92FD, $8BB6, $0300, $0200, $008B, $0055, $0144, DRC_RTS ; alcatraz
    dw $D0B9, $A3F0, $0100, $0300, $00BB, $FFE5, $01DA, DRC_RTS ; pseudo
    dw $A59F, $91B6, $0000, $0100, $008B, $FFCB, $02B4, DRC_Kraid ; kqk
    dw $CC6F, $A21C, $0200, $0000, $005B, $FFFB, $01D7, DRC_RTS ; speedball
    dw $91F8, $89B2, $0800, $0100, $008B, $0055, $02F8, DRC_RTS ; wraparound
endif
    dw $FFFF

  .set3
if !FEATURE_PAL
    dw $CC6F, $A21C, $0200, $0000, $0060, $0004, $02EF, DRC_RTS ; Pre Phantoon Hall
    dw $91F8, $896A, $0300, $0400, $00B0, $0000, $00C7, DRC_LandingSite ; Shinespark
    dw $A56B, $919E, $0000, $0100, $008B, $FFD2, $02D3, DRC_RTS ; Eye Door
    dw $A322, $90EA, $0000, $0700, $008B, $FFAA, $0149, DRC_RTS ; Red Brinstar Elevator
    dw $A59F, $91B6, $0000, $0100, $008B, $FFBF, $013F, DRC_Kraid ; Kraid
    dw $A66A, $91F2, $0000, $0000, $008B, $FFB1, $0197, DRC_G4 ; Tourian Entrance
else
    dw $D0B9, $A3F0, $0100, $0300, $00BB, $FFE5, $015C, DRC_RTS ; everest
    dw $A3AE, $9096, $0200, $0000, $008B, $0053, $015F, DRC_RTS ; alphapb
    dw $91F8, $896A, $0600, $0200, $007B, $0026, $032C, DRC_RTS ; bombjump
    dw $A322, $A480, $0200, $0300, $008B, $0035, $0127, DRC_RTS ; tunneljump
    dw $96BA, $8B7A, $0100, $0800, $008B, $0052, $0311, DRC_RTS ; climb
    dw $93FE, $A1B0, $0700, $0400, $008B, $0054, $019B, DRC_LandingSite ; ocean
endif
    dw $FFFF

  .set4
if !FEATURE_PAL
    dw $91F8, $890A, $0600, $0200, $0080, $0030, $0100, DRC_LandingSite ; Gauntlet Entrance
    dw $D0B9, $A474, $0200, $0000, $00AB, $0000, $0332, DRC_RTS ; Advanced Grapple Beam
    dw $91F8, $890A, $0600, $0200, $007B, $0020, $0185, DRC_LandingSite ; IBJ
    dw $9AD9, $8D42, $0000, $0400, $008B, $FFB7, $018A, DRC_RTS ; SBA
    dw $91F8, $890A, $0600, $0200, $008B, $0004, $0200, DRC_LandingSite ; Crystal Flash
else
    dw $DB7D, $A9CC, $0000, $0000, $008B, $FFAC, $0188, DRC_RTS ; metroid3
    dw $9879, $8982, $0000, $0000, $008B, $FFAE, $011B, DRC_RTS ; flyway
    dw $B106, $970E, $0700, $0000, $008B, $0051, $0312, DRC_RTS ; frogspeedway
    dw $D5A7, $A828, $0000, $0200, $008B, $FFA7, $0485, DRC_RTS ; grapplejump
    dw $9D19, $8F8E, $0200, $0600, $008B, $001C, $040A, DRC_BigPink ; crystalflash
    dw $9AD9, $8D4E, $0000, $0200, $00AB, $0021, $029F, DRC_RTS ; tasdance
endif
    dw $FFFF
}
%warnpc($919EE2, $919E3A) ; space freed up from repointing input data


; Vanilla game uses 12h for demo data because it includes the door slot
; To free up space for more demos, removed useless door slot
; The start of the demo data was also moved up
; This required some patches below

; Multiply by 10h instead of 12h by overwriting ADC $12, freeing two bytes
; One of these bytes is used to convert LDA.w DemoRoomData to LDA.l
; The other byte is used to convert LDA.w $0010,X to LDA.l $91000E,X
; The 0010 offset is shifted to 000E because of the removed door slot
org $828162
    ASL : STA $12
    LDA !DEMO_CURRENT_SET : ASL : TAX
    LDA.l DemoRoomData,X
    CLC : ADC $12 : TAX
    LDA.l $91000E,X
warnpc $828176

; Multiply by 10h instead of 12h by overwriting ADC $1F57, freeing three bytes
; One of these bytes is used to convert LDA.w DemoRoomData to LDA.l
; Another is used to convert LDA.w $0000,X to LDA.l $910000,X
; The last is burned as a NOP
org $828640
    ASL : STA $12
    LDA !DEMO_CURRENT_SET : ASL : TAX
    LDA.l DemoRoomData,X
    CLC : ADC $12 : TAX
    LDA.l $910000,X : NOP
warnpc $828655

; Relocate load demo room data routine as it needs several changes
; Also frees up more room for demo room code
org $828679
    JML LoadDemoRoomData

; Demo Room Code
DRC_BigPink:
{
    %a8()
    ; scroll $21 = red
    LDA #$00 : STA $7ECD41
    %a16()

DRC_RTS:
    RTS
}

DRC_LandingSite:
{
    ; BG2 tilemap address/size
    LDA #$004A : STA $59
    RTS
}

DRC_Kraid:
{
    ; suspense timer = 60 frames
    LDA #$003C : STA $0FB2
    RTS
}

if !FEATURE_PAL
DRC_G4:
{
    %a8()
    LDA #$01 : STA $7ED829
    %a16()
    RTS
}
endif
warnpc $82893D


org $87C964 ; $918ACE ; repoint to any bank with WRAM access
print pc, " demos start"
DemoInputInstructionLists:
; Order of demos does not matter
; Input data:
;   0010 = R    0100 = Right   1000 = Start
;   0020 = L    0200 = Left    2000 = Select
;   0040 = X    0400 = Down    4000 = Y
;   0080 = A    0800 = Up      8000 = B
;
; Normal demo input data
;         ___________________ Instruction or number of frames
;        |       ____________ Current input
;        |      |       _____ New input
;        |      |      |
if !FEATURE_PAL
DemoInput_Dachora:
{
    dw $0006, $0000, $0000
    dw $0001, $0200, $0200
    dw $0001, $0200, $0000
    dw $00D5, $0000, $0000
    dw $0001, $0100, $0100
    dw $0003, $0100, $0000
    dw $000E, $0000, $0000
    dw $0001, $0200, $0200
    dw $0003, $0200, $0000
    dw $002D, $0000, $0000
    dw $0001, $0200, $0200
    dw $0130, $0200, $0000
    dw $00E5, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_RedBrinstarElevator:
{
    dw $0048, $0000, $0000
    dw $0001, $0100, $0100
    dw $0008, $0100, $0000
    dw $0001, $0180, $0080
    dw $0005, $0180, $0000
    dw $000E, $0100, $0000
    dw $001A, $0000, $0000
    dw $0001, $0200, $0200
    dw $0001, $0200, $0000
    dw $0001, $0280, $0080
    dw $0010, $0280, $0000
    dw $0002, $0200, $0000
    dw $0010, $0000, $0000
    dw $0001, $0100, $0100
    dw $0003, $0100, $0000
    dw $003A, $0000, $0000
    dw $0001, $0080, $0080
    dw $000E, $0080, $0000
    dw $0001, $0180, $0100
    dw $0008, $0180, $0000
    dw $0012, $0100, $0000
    dw $019A, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_WreckedShipBasement:
{
    dw $0031, $0000, $0000
    dw $0001, $0100, $0100
    dw $0004, $0100, $0000
    dw $000C, $0000, $0000
    dw $0001, $0200, $0200
    dw $0004, $0200, $0000
    dw $001F, $0000, $0000
    dw $0001, $0200, $0200
    dw $0052, $0200, $0000
    dw $0001, $8200, $8000
    dw $0006, $8200, $0000
    dw $003F, $0200, $0000
    dw $0046, $0000, $0000
    dw $0001, $0100, $0100
    dw $0002, $0100, $0000
    dw $0050, $0000, $0000
    dw $0001, $0100, $0100
    dw $003E, $0100, $0000
    dw $0001, $8100, $8000
    dw $0012, $8100, $0000
    dw $0005, $0100, $0000
    dw $0001, $8100, $8000
    dw $0002, $8100, $0000
    dw $0001, $0100, $0000
    dw $0001, $8100, $8000
    dw $0002, $8100, $0000
    dw $002A, $0100, $0000
    dw $0087, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_LowerNorfairEntrance:
{
    dw $000F, $0000, $0000
    dw $0001, $0200, $0200
    dw $001E, $0200, $0000
    dw $0011, $0000, $0000
    dw $0001, $0200, $0200
    dw $0151, $0200, $0000
    dw $0001, $0280, $0080
    dw $0008, $0280, $0000
    dw $0003, $0080, $0000
    dw $0005, $0000, $0000
    dw $0001, $0100, $0100
    dw $000E, $0100, $0000
    dw $0001, $0180, $0080
    dw $000C, $0180, $0000
    dw $0005, $0080, $0000
    dw $0001, $0280, $0200
    dw $0008, $0280, $0000
    dw $0002, $0200, $0000
    dw $0011, $0000, $0000
    dw $0001, $0080, $0080
    dw $000C, $0080, $0000
    dw $0001, $0180, $0100
    dw $000B, $0180, $0000
    dw $0002, $0100, $0000
    dw $0013, $0000, $0000
    dw $0001, $0080, $0080
    dw $0009, $0080, $0000
    dw $0001, $0280, $0200
    dw $000B, $0280, $0000
    dw $0012, $0000, $0000
    dw $0001, $0100, $0100
    dw $0009, $0100, $0000
    dw $0001, $0180, $0080
    dw $000F, $0180, $0000
    dw $0005, $0100, $0000
    dw $0005, $0000, $0000
    dw $0001, $0200, $0200
    dw $000C, $0200, $0000
    dw $0001, $0280, $0080
    dw $001A, $0280, $0000
    dw $002A, $0200, $0000
    dw $0001, $0280, $0080
    dw $001A, $0280, $0000
    dw $0080, $0200, $0000
    dw DemoInstruction_Delete
}

DemoInput_EyeDoor:
{
    dw $0009, $0100, $0000
    dw $0012, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $0003, $0000, $0000
    dw $0001, $0100, $0100
    dw $0002, $0100, $0000
    dw $000A, $0000, $0000
    dw $0001, $2000, $2000
    dw $0005, $2000, $0000
    dw $000A, $0000, $0000
    dw $0001, $0100, $0100
    dw $0008, $0100, $0000
    dw $0001, $0180, $0080
    dw $0005, $0180, $0000
    dw $000B, $0100, $0000
    dw $000D, $0000, $0000
    dw $0001, $0100, $0100
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0005, $0180, $0000
    dw $000A, $0100, $0000
    dw $000D, $0000, $0000
    dw $0001, $0100, $0100
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0006, $0180, $0000
    dw $0016, $0100, $0000
    dw $001A, $0000, $0000
    dw $0001, $0100, $0100
    dw $0001, $0180, $0080
    dw $0009, $0180, $0000
    dw $000E, $0100, $0000
    dw $0012, $0000, $0000
    dw $0001, $0100, $0100
    dw $0005, $0100, $0000
    dw $0020, $0000, $0000
    dw $0001, $0100, $0100
    dw $0005, $0100, $0000
    dw $0001, $0180, $0080
    dw $0006, $0180, $0000
    dw $0012, $0100, $0000
    dw $000C, $0000, $0000
    dw $0001, $0080, $0080
    dw $0005, $0080, $0000
    dw $0008, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $001E, $0000, $0000
    dw $0001, $0200, $0200
    dw $0006, $0200, $0000
    dw $0006, $0000, $0000
    dw $0001, $0100, $0100
    dw $0006, $0100, $0000
    dw $0042, $0000, $0000
    dw $0001, $0080, $0080
    dw $0006, $0080, $0000
    dw $000E, $0000, $0000
    dw $0001, $0040, $0040
    dw $0003, $0040, $0000
    dw $000A, $0000, $0000
    dw $0001, $0080, $0080
    dw $0009, $0080, $0000
    dw $0018, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $000A, $0000, $0000
    dw $0001, $0080, $0080
    dw $0004, $0080, $0000
    dw $000A, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $0063, $0000, $0000
    dw $0001, $0200, $0200
    dw $0006, $0200, $0000
    dw $000E, $0000, $0000
    dw $0001, $0100, $0100
    dw $0007, $0100, $0000
    dw $0001, $0140, $0040
    dw $0002, $0140, $0000
    dw $0003, $0100, $0000
    dw DemoInstruction_Delete
}

DemoInput_Shinespark:
{
    dw $00A5, $0000, $0000
    dw $8448, DemoInput_Shinespark ; Go to DemoInput_Shinespark

  .unseen
    ; The demo timer expires before these inputs are used
    dw $0078, $0000, $0000
    dw $0001, $0200, $0200
    dw $00A3, $0200, $0000
    dw $0001, $8200, $8000
    dw $005E, $8200, $0000
    dw $0002, $8000, $0000
    dw $0001, $8100, $0100
    dw $0092, $8100, $0000
    dw $000A, $0100, $0000
    dw $0001, $0180, $0080
    dw $0005, $0180, $0000
    dw $000B, $0100, $0000
    dw $001D, $0000, $0000
    dw $0001, $2000, $2000
    dw $0004, $2000, $0000
    dw $0009, $0000, $0000
    dw $0001, $2000, $2000
    dw $0003, $2000, $0000
    dw $000B, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $00C0, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_Kraid:
{
    dw $019A, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_FireFleaRoom:
{
    dw $0009, $0000, $0000
    dw $0001, $0200, $0200
    dw $003F, $0200, $0000
    dw $0028, $0000, $0000
    dw $0001, $0200, $0200
    dw $000A, $0200, $0000
    dw $0001, $0280, $0080
    dw $000B, $0280, $0000
    dw $000E, $0200, $0000
    dw $0001, $0240, $0040
    dw $0008, $0240, $0000
    dw $0013, $0200, $0000
    dw $0001, $0280, $0080
    dw $0009, $0280, $0000
    dw $000E, $0200, $0000
    dw $000B, $0000, $0000
    dw $0001, $0200, $0200
    dw $0008, $0200, $0000
    dw $0001, $0280, $0080
    dw $000B, $0280, $0000
    dw $0005, $0200, $0000
    dw $0012, $0000, $0000
    dw $0001, $0200, $0200
    dw $0005, $0200, $0000
    dw $0001, $0280, $0080
    dw $0004, $0280, $0000
    dw $0010, $0200, $0000
    dw $000E, $0000, $0000
    dw $0001, $0400, $0400
    dw $000A, $0400, $0000
    dw $0001, $0420, $0020
    dw $008A, $0420, $0000
    dw DemoInstruction_Delete
}

DemoInput_ScrewAttack:
{
    dw $0030, $0000, $0000
    dw $0001, $8100, $8100
    dw $001E, $8100, $0000
    dw $0001, $8180, $0080
    dw $000C, $8180, $0000
    dw $001C, $8100, $0000
    dw $0001, $8180, $0080
    dw $0017, $8180, $0000
    dw $002B, $8100, $0000
    dw $0001, $0400, $0400
    dw $0003, $0000, $0000
    dw $0001, $0200, $0200
    dw $0001, $0210, $0010
    dw $009D, $0010, $0000
    dw DemoInstruction_Delete
}

DemoInput_BrinstarDiagonalRoom:
{
    dw $0021, $0000, $0000
    dw $0001, $0100, $0100
    dw $000E, $0100, $0000
    dw $0001, $0180, $0080
    dw $0012, $0180, $0000
    dw $0034, $0100, $0000
    dw $0010, $0000, $0000
    dw $0001, $0010, $0010
    dw $0008, $0010, $0000
    dw $0001, $0050, $0040
    dw $0017, $0050, $0000
    dw $0004, $0040, $0000
    dw $0001, $0440, $0400
    dw $002C, $0440, $0000
    dw $00AF, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_IceBeam:
{
    dw $0021, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $0006, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $0012, $0000, $0000
    dw $0001, $0200, $0200
    dw $0017, $0200, $0000
    dw $001C, $0000, $0000
    dw $0001, $0080, $0080
    dw $000E, $0080, $0000
    dw $0001, $0480, $0400
    dw $0005, $0480, $0000
    dw $000B, $0400, $0000
    dw $0001, $0440, $0040
    dw $0006, $0440, $0000
    dw $0008, $0400, $0000
    dw $0007, $0000, $0000
    dw $0001, $0200, $0200
    dw $001D, $0200, $0000
    dw $0009, $0000, $0000
    dw $0001, $0200, $0200
    dw $000E, $0200, $0000
    dw $0001, $0280, $0080
    dw $001D, $0280, $0000
    dw $0038, $0200, $0000
    dw $0001, $0280, $0080
    dw $0016, $0280, $0000
    dw $002B, $0200, $0000
    dw $0001, $0080, $0080
    dw $0010, $0080, $0000
    dw $0001, $0480, $0400
    dw $0008, $0480, $0000
    dw $0005, $0400, $0000
    dw $0001, $0440, $0040
    dw $0008, $0440, $0000
    dw $0008, $0400, $0000
    dw $0008, $0000, $0000
    dw $0001, $0200, $0200
    dw $002B, $0200, $0000
    dw $0001, $0280, $0080
    dw $0010, $0280, $0000
    dw $0012, $0200, $0000
    dw $005D, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_GauntletEntrance:
{
    dw $0012, $0000, $0000
    dw $0001, $0100, $0100
    dw $0004, $0100, $0000
    dw $00CD, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_AdvancedGrappleBeam:
{
    dw $0032, $0000, $0000
    dw $0001, $2000, $2000
    dw $0007, $2000, $0000
    dw $0006, $0000, $0000
    dw $0001, $2000, $2000
    dw $0004, $2000, $0000
    dw $0008, $0000, $0000
    dw $0001, $2000, $2000
    dw $0007, $2000, $0000
    dw $0005, $0000, $0000
    dw $0001, $2000, $2000
    dw $0005, $2000, $0000
    dw $0010, $0000, $0000
    dw $0001, $0200, $0200
    dw $0015, $0200, $0000
    dw $0001, $0000, $0000
    dw $0001, $0100, $0100
    dw $0005, $0100, $0000
    dw $0003, $0000, $0000
    dw $0001, $0040, $0040
    dw $0013, $0040, $0000
    dw $0001, $0440, $0400
    dw $0011, $0440, $0000
    dw $0022, $0040, $0000
    dw $0001, $0240, $0200
    dw $0013, $0240, $0000
    dw $001F, $0040, $0000
    dw $0001, $0140, $0100
    dw $009F, $0140, $0000
    dw $0070, $0100, $0000
    dw $001E, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_IBJ:
{
    dw $0014, $0000, $0000
    dw $0001, $0100, $0100
    dw $001B, $0100, $0000
    dw $0013, $0000, $0000
    dw $0001, $0080, $0080
    dw $0009, $0080, $0000
    dw $0001, $0480, $0400
    dw $0006, $0480, $0000
    dw $0002, $0080, $0000
    dw $0001, $0480, $0400
    dw $0006, $0480, $0000
    dw $0001, $04C0, $0040
    dw $0002, $04C0, $0000
    dw $0008, $00C0, $0000
    dw $0002, $0080, $0000
    dw $001A, $0000, $0000
    dw $0001, $0040, $0040
    dw $0009, $0040, $0000
    dw $0022, $0000, $0000
    dw $0001, $0040, $0040
    dw $0007, $0040, $0000
    dw $001E, $0000, $0000
    dw $0001, $0040, $0040
    dw $0007, $0040, $0000
    dw $0024, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $0021, $0000, $0000
    dw $0001, $0040, $0040
    dw $0007, $0040, $0000
    dw $0023, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $0020, $0000, $0000
    dw $0001, $0040, $0040
    dw $0007, $0040, $0000
    dw $001E, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $0020, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $0021, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $0021, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $0020, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $001F, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $0022, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $0022, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $0020, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $0020, $0000, $0000
    dw $0001, $0040, $0040
    dw $0006, $0040, $0000
    dw $000D, $0000, $0000
    dw $0001, $0100, $0100
    dw $0018, $0100, $0000
    dw $0012, $0000, $0000
    dw $0001, $0800, $0800
    dw $0007, $0800, $0000
    dw $0006, $0000, $0000
    dw $0001, $0800, $0800
    dw $0004, $0800, $0000
    dw $0001, $0000, $0000
    dw $0001, $0800, $0800
    dw $0007, $0000, $0000
    dw $0001, $0200, $0200
    dw $0003, $0200, $0000
    dw $009D, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_SBA:
{
    dw $001A, $0000, $0000
    dw $0001, $2000, $2000
    dw $0008, $2000, $0000
    dw $0006, $0000, $0000
    dw $0001, $2000, $2000
    dw $0006, $2000, $0000
    dw $0006, $0000, $0000
    dw $0001, $2000, $2000
    dw $0006, $2000, $0000
    dw $0008, $0000, $0000
    dw $0001, $0080, $0080
    dw $0003, $0080, $0000
    dw $0001, $0180, $0100
    dw $0023, $0180, $0000
    dw $0007, $0100, $0000
    dw $0010, $0000, $0000
    dw $0001, $0080, $0080
    dw $0010, $0080, $0000
    dw $0001, $0280, $0200
    dw $0007, $0280, $0000
    dw $0001, $02C0, $0040
    dw $0004, $02C0, $0000
    dw $000E, $0240, $0000
    dw $0010, $0040, $0000
    dw $0001, $00C0, $0080
    dw $0008, $00C0, $0000
    dw $0001, $01C0, $0100
    dw $000B, $01C0, $0000
    dw $0014, $0140, $0000
    dw $0015, $0040, $0000
    dw $0001, $0440, $0400
    dw $0006, $0440, $0000
    dw $0040, $0040, $0000
    dw $0034, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_TourianEntrance:
{
    dw $0144, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_CrystalFlash:
{
    dw $0016, $0000, $0000
    dw $0001, $0400, $0400
    dw $0004, $0400, $0000
    dw $0004, $0000, $0000
    dw $0001, $0400, $0400
    dw $0006, $0400, $0000
    dw $0007, $0000, $0000
    dw $0001, $2000, $2000
    dw $0005, $2000, $0000
    dw $0005, $0000, $0000
    dw $0001, $2000, $2000
    dw $0004, $2000, $0000
    dw $0006, $0000, $0000
    dw $0001, $2000, $2000
    dw $0006, $2000, $0000
    dw $0027, $0000, $0000
    dw $0001, $0430, $0430
    dw $0007, $0430, $0000
    dw $0001, $0470, $0040
    dw $000D, $0470, $0000
    dw $0018, $0430, $0000
    dw $0001, $0470, $0040
    dw $0098, $0470, $0000
    dw $0002, $0070, $0000
    dw $0001, $0030, $0000
    dw $0001, $0010, $0000
    dw $00FD, $0000, $0000
    dw $8427
}

DemoInput_landingsite:
{
    dw $0106, $0000, $0000
    dw $0001, $8000, $8000
    dw $001F, $8200, $0000
    dw $0001, $0280, $0080
    dw $0001, $0280, $0000
    dw $0001, $0000, $0000
    dw $0001, $0100, $0100
    dw $0026, $0000, $0000
    dw $0001, $0100, $0100
    dw $0001, $0100, $0000
    dw $0001, $0000, $0000
    dw $0001, $0100, $0100
    dw $0008, $0100, $0000
    dw $0002, $0000, $0000
    dw $0001, $0100, $0100
    dw $0004, $0100, $0000
    dw $0001, $8100, $8000
    dw $0002, $8100, $0000
    dw $0011, $0100, $0000
    dw $0001, $8100, $8000
    dw $0002, $8100, $0000
    dw $0011, $0100, $0000
    dw $0001, $8100, $8000
    dw $0004, $8100, $0000
    dw $0006, $0100, $0000
    dw $0001, $8100, $8000
    dw $0001, $8100, $0000
    dw $0001, $8500, $0400
    dw $0001, $8500, $0000
    dw $0002, $0400, $0000
    dw $000F, $0000, $0000
    dw DemoInstruction_Delete
} ; PAL landingsite

DemoInput_mockball:
{
    dw $003B, $0000, $0000
    dw $0001, $8000, $8000
    dw $0004, $8000, $0000
    dw $0001, $8100, $0100
    dw $0007, $8100, $0000
    dw $0001, $8120, $0020
    dw $0003, $8120, $0000
    dw $0001, $8130, $0010
    dw $0002, $8130, $0000
    dw $0001, $8120, $0000
    dw $0004, $8100, $0000
    dw $0001, $8130, $0030
    dw $0002, $8130, $0000
    dw $0003, $8120, $0000
    dw $0001, $8100, $0000
    dw $0001, $8110, $0010
    dw $0003, $8110, $0000
    dw $0001, $8120, $0020
    dw $0003, $8120, $0000
    dw $0001, $8110, $0010
    dw $0004, $8110, $0000
    dw $0003, $8100, $0000
    dw $0001, $8120, $0020
    dw $0002, $8120, $0000
    dw $0003, $8100, $0000
    dw $0001, $8190, $0090
    dw $0001, $0190, $0000
    dw $0002, $0180, $0000
    dw $0003, $0100, $0000
    dw $0001, $0180, $0080
    dw $0002, $0180, $0000
    dw $0001, $0580, $0400
    dw $0001, $0580, $0000
    dw $0002, $0480, $0000
    dw $0005, $0080, $0000
    dw $0001, $0480, $0400
    dw $0003, $0580, $0000
    dw $0004, $0180, $0000
    dw $0027, $0100, $0000
    dw $0001, $0900, $0800
    dw $0006, $0810, $0000
    dw $0013, $0010, $0000
    dw $0033, $0000, $0000
    dw DemoInstruction_Delete
} ; PAL mockball

DemoInput_redtower:
{
    dw $002C, $0000, $0000
    dw $0001, $8000, $8000
    dw $000C, $8000, $0000
    dw $0001, $8200, $0200
    dw $0015, $8200, $0000
    dw $0001, $8000, $0000
    dw $0001, $8100, $0100
    dw $0010, $8100, $0000
    dw $0001, $8180, $0080
    dw $001E, $8180, $0000
    dw $0001, $8280, $0200
    dw $0002, $0200, $0000
    dw $0001, $0280, $0080
    dw $0002, $0280, $0000
    dw $0001, $0180, $0100
    dw $0016, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $0002, $0200, $0000
    dw $0001, $0280, $0080
    dw $000D, $0280, $0000
    dw $0001, $8280, $8000
    dw $0002, $82C0, $0000
    dw $0001, $C6C0, $4400
    dw $0001, $C4C0, $0000
    dw $0002, $84C0, $0000
    dw $0002, $8400, $0000
    dw $0001, $8600, $0200
    dw $000B, $8200, $0000
    dw $0001, $8280, $0080
    dw $0010, $8280, $0000
    dw $0001, $0280, $0000
    dw $0001, $0180, $0100
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $000C, $0180, $0000
    dw $0005, $0100, $0000
    dw $0001, $0120, $0020
    dw $0003, $0120, $0000
    dw $0001, $01A0, $0080
    dw $0003, $01A0, $0000
    dw $0007, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $000F, $0280, $0000
    dw $0001, $0080, $0000
    dw $0001, $0180, $0100
    dw $0001, $0100, $0000
    dw $0001, $0180, $0080
    dw $0001, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $0004, $0280, $0000
    dw $0003, $0200, $0000
    dw $0001, $0800, $0800
    dw $0008, $0800, $0000
    dw $0001, $8800, $8000
    dw $0009, $8880, $0000
    dw $0021, $8800, $0000
    dw $0001, $8840, $0040
    dw $0001, $8840, $0000
    dw $0001, $8240, $0200
    dw $0001, $8240, $0000
    dw $0001, $8200, $0000
    dw $0001, $0280, $0080
    dw $000C, $0280, $0000
    dw $0001, $0180, $0100
    dw $0002, $0180, $0000
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0009, $0280, $0000
    dw $0001, $0180, $0100
    dw $0001, $0180, $0000
    dw $0003, $0100, $0000
    dw $0001, $0180, $0080
    dw $0001, $0180, $0000
    dw $0001, $0280, $0200
    dw $0007, $0280, $0000
    dw $0001, $0080, $0000
    dw $0001, $0180, $0100
    dw $0001, $0180, $0000
    dw $0001, $0100, $0000
    dw $0001, $0180, $0080
    dw $0002, $0180, $0000
    dw $0001, $0280, $0200
    dw $0009, $0280, $0000
    dw $000E, $0200, $0000
    dw $0001, $0000, $0000
    dw $0001, $0100, $0100
    dw $0003, $0100, $0000
    dw $0001, $0180, $0080
    dw $0001, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $0002, $0280, $0000
    dw $0006, $0200, $0000
    dw $0001, $0100, $0100
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0003, $0180, $0000
    dw $0001, $0280, $0200
    dw $000C, $0280, $0000
    dw $0001, $0180, $0100
    dw $0002, $0180, $0000
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $001D, $0180, $0000
    dw $0001, $0280, $0200
    dw $0001, $0280, $0000
    dw $0002, $0200, $0000
    dw $0001, $0280, $0080
    dw $0001, $0280, $0000
    dw $0001, $0180, $0100
    dw $0006, $0180, $0000
    dw $0001, $0100, $0000
    dw $0001, $0140, $0040
    dw $0004, $0140, $0000
    dw $0001, $8040, $8000
    dw $0003, $8000, $0000
    dw $003F, $0000, $0000
    dw DemoInstruction_Delete
} ; PAL redtower

DemoInput_lavadive:
{
    dw $0026, $0000, $0000
    dw $0001, $8000, $8000
    dw $0002, $8000, $0000
    dw $0001, $8100, $0100
    dw $001D, $8100, $0000
    dw $0003, $8000, $0000
    dw $0001, $8200, $0200
    dw $0012, $8200, $0000
    dw $0001, $0280, $0080
    dw $0001, $0280, $0000
    dw $0002, $0200, $0000
    dw $0001, $0600, $0400
    dw $0002, $0600, $0000
    dw $0001, $0480, $0080
    dw $0001, $0480, $0000
    dw $0005, $0080, $0000
    dw $0001, $0480, $0400
    dw $0001, $0480, $0000
    dw $0001, $0680, $0200
    dw $0002, $0680, $0000
    dw $00B5, $0200, $0000
    dw $0001, $0280, $0080
    dw $0006, $0280, $0000
    dw $000A, $0200, $0000
    dw $0001, $8200, $8000
    dw $000C, $8200, $0000
    dw $0001, $8220, $0020
    dw $0005, $8220, $0000
    dw $0009, $8200, $0000
    dw $0003, $8000, $0000
    dw $0001, $0000, $0000
    dw $0001, $8000, $8000
    dw $0001, $0000, $0000
    dw $0001, $0200, $0200
    dw $0005, $8200, $0000
    dw $0001, $8280, $0080
    dw $0003, $8280, $0000
    dw $0006, $8200, $0000
    dw $0001, $8220, $0020
    dw $0005, $8220, $0000
    dw $0001, $82A0, $0080
    dw $002C, $8280, $0000
    dw $0007, $8200, $0000
    dw $0001, $8220, $0020
    dw $0004, $8220, $0000
    dw $0004, $8020, $0000
    dw $0001, $8120, $0100
    dw $0003, $8120, $0000
    dw $0009, $8100, $0000
    dw $0001, $8180, $0080
    dw $000A, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $001B, $0280, $0000
    dw $0001, $0180, $0100
    dw $0001, $0180, $0000
    dw $0001, $0100, $0000
    dw $0001, $0180, $0080
    dw $0068, $0180, $0000
    dw $0004, $0100, $0000
    dw $0001, $0200, $0200
    dw $0002, $0200, $0000
    dw $0001, $0280, $0080
    dw $0002, $0280, $0000
    dw $0001, $0180, $0100
    dw $0008, $0100, $0000
    dw $0001, $0000, $0000
    dw $0001, $0200, $0200
    dw $0002, $0200, $0000
    dw $0001, $0280, $0080
    dw $000B, $0280, $0000
    dw $0001, $0080, $0000
    dw $0001, $0180, $0100
    dw $000A, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0200, $0200
    dw $0001, $0200, $0000
    dw $0001, $0280, $0080
    dw $0026, $0280, $0000
    dw $000E, $0200, $0000
    dw $0001, $0100, $0100
    dw $0001, $0100, $0000
    dw $0001, $0180, $0080
    dw $0002, $0180, $0000
    dw $0001, $0280, $0200
    dw $000A, $0280, $0000
    dw $0004, $0200, $0000
    dw $0001, $0220, $0020
    dw $0002, $0220, $0000
    dw $0002, $0020, $0000
    dw $002E, $0000, $0000
    dw DemoInstruction_Delete
} ; PAL lavadive

DemoInput_ggg:
{
    dw $002C, $0000, $0000
    dw $0001, $2000, $2000
    dw $0004, $2000, $0000
    dw $0003, $0000, $0000
    dw $0001, $2000, $2000
    dw $0002, $2000, $0000
    dw $0001, $A000, $8000
    dw $0003, $A000, $0000
    dw $000A, $8000, $0000
    dw $0001, $8010, $0010
    dw $001A, $8110, $0000
    dw $0001, $8010, $0000
    dw $0001, $8210, $0200
    dw $001B, $8210, $0000
    dw $0001, $8290, $0080
    dw $0005, $8290, $0000
    dw $000E, $8210, $0000
    dw $0001, $8250, $0040
    dw $0003, $8250, $0000
    dw $0001, $8150, $0100
    dw $0001, $8150, $0000
    dw $000C, $8110, $0000
    dw $0001, $8100, $0000
    dw $0006, $8000, $0000
    dw $0007, $0000, $0000
    dw $0001, $0200, $0200
    dw $0003, $0200, $0000
    dw $0001, $4200, $4000
    dw $0005, $4000, $0000
    dw $0045, $0000, $0000
    dw DemoInstruction_Delete
} ; PAL ggg

DemoInput_babyskip:
{
    dw $001F, $0000, $0000
    dw $0001, $0040, $0040
    dw $0004, $0040, $0000
    dw $0005, $0000, $0000
    dw $0001, $8000, $8000
    dw $0011, $8000, $0000
    dw $0001, $8200, $0200
    dw $001F, $8200, $0000
    dw $0001, $8280, $0080
    dw $001A, $8280, $0000
    dw $0011, $8200, $0000
    dw $0001, $8280, $0080
    dw $0005, $8280, $0000
    dw $0001, $0100, $0100
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0010, $0180, $0000
    dw $0003, $0100, $0000
    dw $0001, $8100, $8000
    dw $0001, $8100, $0000
    dw $0001, $8000, $0000
    dw $0001, $8200, $0200
    dw $0003, $8200, $0000
    dw $0001, $8600, $0400
    dw $000B, $8400, $0000
    dw $0001, $8100, $0100
    dw $0003, $8100, $0000
    dw $0001, $8800, $0800
    dw $0001, $8200, $0200
    dw $0002, $8200, $0000
    dw $0001, $8600, $0400
    dw $0001, $8000, $0000
    dw $0001, $8100, $0100
    dw $0003, $8100, $0000
    dw $0001, $8400, $0400
    dw $0001, $8200, $0200
    dw $0004, $8200, $0000
    dw $0001, $8100, $0100
    dw $0006, $8100, $0000
    dw $0001, $8400, $0400
    dw $0007, $8400, $0000
    dw $0007, $8000, $0000
    dw $0001, $8400, $0400
    dw $0004, $8400, $0000
    dw $0004, $8000, $0000
    dw $0001, $8400, $0400
    dw $0005, $8400, $0000
    dw $0001, $8500, $0100
    dw $0004, $8100, $0000
    dw $000E, $0100, $0000
    dw $0001, $0140, $0040
    dw $0001, $0140, $0000
    dw $0001, $0040, $0000
    dw $0001, $4000, $4000
    dw $0001, $4000, $0000
    dw $0002, $0000, $0000
    dw $0001, $0800, $0800
    dw $0005, $0800, $0000
    dw $0007, $0000, $0000
    dw $0001, $0200, $0200
    dw $0008, $0200, $0000
    dw $0062, $0000, $0000
    dw $0001, $8000, $8000
    dw $0001, $8200, $0200
    dw $000B, $8200, $0000
    dw $0001, $8000, $0000
    dw $0001, $8100, $0100
    dw $0010, $8100, $0000
    dw $0001, $0180, $0080
    dw $0001, $0180, $0000
    dw $0001, $0100, $0000
    dw $0001, $0200, $0200
    dw $0001, $0200, $0000
    dw $0024, $0000, $0000
    dw $0001, $8000, $8000
    dw $0011, $8000, $0000
    dw $0001, $8100, $0100
    dw $0021, $8100, $0000
    dw $0002, $0100, $0000
    dw $0089, $0000, $0000
    dw $0001, $0200, $0200
    dw $0001, $0200, $0000
    dw $0178, $0000, $0000
    dw $0001, $0040, $0040
    dw $0003, $0040, $0000
    dw $0024, $0000, $0000
    dw $0001, $8000, $8000
    dw $002E, $8000, $0000
    dw $0001, $8200, $0200
    dw $0022, $8200, $0000
    dw $0001, $8280, $0080
    dw $0018, $8280, $0000
    dw $0005, $8200, $0000
    dw $000A, $0200, $0000
    dw $0001, $8200, $8000
    dw $0001, $8280, $0080
    dw $0001, $8280, $0000
    dw $0001, $82C0, $0040
    dw $0002, $82C0, $0000
    dw $0001, $84C0, $0400
    dw $0001, $84C0, $0000
    dw $0003, $0400, $0000
    dw $0001, $8480, $8080
    dw $000B, $8480, $0000
    dw $0007, $8400, $0000
    dw $0001, $8200, $0200
    dw $0005, $8200, $0000
    dw $0001, $8220, $0020
    dw $0007, $8220, $0000
    dw $0001, $8260, $0040
    dw $0002, $8260, $0000
    dw $0002, $8220, $0000
    dw $0002, $8020, $0000
    dw $0001, $8120, $0100
    dw $0001, $8120, $0000
    dw $000A, $8100, $0000
    dw $0001, $8000, $0000
    dw $0001, $8200, $0200
    dw $0006, $8200, $0000
    dw $0001, $8280, $0080
    dw $0014, $8280, $0000
    dw $0003, $8200, $0000
    dw $0002, $0200, $0000
    dw $0001, $8200, $8000
    dw $0014, $8200, $0000
    dw $0001, $8240, $0040
    dw $0006, $8240, $0000
    dw $0008, $8200, $0000
    dw $0001, $8000, $0000
    dw $0001, $8100, $0100
    dw $000F, $8100, $0000
    dw $0001, $8180, $0080
    dw $0002, $8180, $0000
    dw $0001, $8080, $0000
    dw $0001, $8280, $0200
    dw $0011, $8280, $0000
    dw $0003, $8200, $0000
    dw $0001, $0200, $0000
    dw $0001, $8200, $8000
    dw $0005, $8200, $0000
    dw $0001, $8220, $0020
    dw $0009, $8220, $0000
    dw $0001, $8260, $0040
    dw $0006, $8260, $0000
    dw $000D, $8220, $0000
    dw $0001, $8200, $0000
    dw $0001, $8000, $0000
    dw $0001, $8100, $0100
    dw $0012, $8100, $0000
    dw $0002, $8000, $0000
    dw $0001, $8200, $0200
    dw $0001, $8200, $0000
    dw $0001, $8280, $0080
    dw $0012, $8280, $0000
    dw $0001, $8240, $0040
    dw $0005, $8240, $0000
    dw $0013, $8200, $0000
    dw $0001, $8600, $0400
    dw $0005, $8400, $0000
    dw $0001, $8440, $0040
    dw $0005, $8440, $0000
    dw $0004, $8400, $0000
    dw $0001, $8100, $0100
    dw $0004, $8100, $0000
    dw $0007, $8000, $0000
    dw $0001, $8100, $0100
    dw $0004, $8100, $0000
    dw $0001, $8180, $0080
    dw $0002, $8180, $0000
    dw $0001, $8280, $0200
    dw $0018, $8280, $0000
    dw $000A, $8200, $0000
    dw $0010, $0200, $0000
    dw DemoInstruction_Delete
} ; PAL babyskip
else ; END OF PAL DEMOS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DemoInput_mockball:
{
    dw $0018, $0000, $0000
    dw $0001, $8000, $8000
    dw $0006, $8000, $0000
    dw $0001, $8100, $0100
    dw $003D, $8100, $0000
    dw $0001, $8180, $0080
    dw $0003, $0180, $0000
    dw $0003, $0100, $0000
    dw $0001, $0500, $0400
    dw $0001, $0500, $0000
    dw $0001, $0580, $0080
    dw $0003, $0480, $0000
    dw $0006, $0080, $0000
    dw $0001, $0480, $0400
    dw $0002, $0580, $0000
    dw $0008, $0180, $0000
    dw $0030, $0100, $0000
    dw $0001, $0000, $0000
    dw $0001, $0800, $0800
    dw $0008, $0800, $0000
    dw $0041, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_lavadive:
{
    dw $0041, $0000, $0000
    dw $0001, $8000, $8000
    dw $0003, $8000, $0000
    dw $0001, $8100, $0100
    dw $0012, $8100, $0000
    dw $0003, $8000, $0000
    dw $0001, $8200, $0200
    dw $0014, $8200, $0000
    dw $0001, $8280, $0080
    dw $0002, $0280, $0000
    dw $0001, $0200, $0000
    dw $0001, $0600, $0400
    dw $0002, $0600, $0000
    dw $0001, $0400, $0000
    dw $0001, $0480, $0080
    dw $0001, $0480, $0000
    dw $0004, $0080, $0000
    dw $0001, $0480, $0400
    dw $0002, $0480, $0000
    dw $0001, $0680, $0200
    dw $0001, $0680, $0000
    dw $0002, $0280, $0000
    dw $00CA, $0200, $0000
    dw $0001, $0280, $0080
    dw $0005, $0280, $0000
    dw $000B, $0200, $0000
    dw $0001, $8200, $8000
    dw $001D, $8200, $0000
    dw $0001, $8220, $0020
    dw $0007, $8220, $0000
    dw $0001, $8200, $0000
    dw $0001, $8280, $0080
    dw $0006, $8280, $0000
    dw $000C, $8200, $0000
    dw $0001, $8220, $0020
    dw $0006, $8220, $0000
    dw $0001, $82A0, $0080
    dw $0037, $8280, $0000
    dw $0006, $8200, $0000
    dw $0001, $8220, $0020
    dw $000B, $8020, $0000
    dw $0001, $8120, $0100
    dw $0006, $8120, $0000
    dw $0009, $8100, $0000
    dw $0001, $0100, $0000
    dw $0001, $0180, $0080
    dw $000D, $0180, $0000
    dw $0001, $0280, $0200
    dw $000D, $0280, $0000
    dw $0001, $0080, $0000
    dw $0001, $0180, $0100
    dw $0003, $0100, $0000
    dw $0001, $0180, $0080
    dw $0002, $0180, $0000
    dw $0001, $0280, $0200
    dw $000C, $0280, $0000
    dw $0001, $0080, $0000
    dw $0001, $0180, $0100
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0003, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $0010, $0280, $0000
    dw $0001, $0180, $0100
    dw $0001, $0180, $0000
    dw $0003, $0100, $0000
    dw $0001, $0180, $0080
    dw $005C, $0180, $0000
    dw $0022, $0100, $0000
    dw $0001, $0200, $0200
    dw $0004, $0200, $0000
    dw $0001, $0280, $0080
    dw $0002, $0280, $0000
    dw $0001, $0180, $0100
    dw $0001, $0180, $0000
    dw $000A, $0100, $0000
    dw $0001, $0000, $0000
    dw $0001, $0200, $0200
    dw $0001, $0200, $0000
    dw $0001, $0280, $0080
    dw $0010, $0280, $0000
    dw $0001, $0080, $0000
    dw $0001, $0180, $0100
    dw $000A, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $0002, $0280, $0000
    dw $0002, $0200, $0000
    dw $0001, $0280, $0080
    dw $002A, $0280, $0000
    dw $0010, $0200, $0000
    dw $0001, $0000, $0000
    dw $0001, $0100, $0100
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0002, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $000B, $0280, $0000
    dw $0001, $8200, $8000
    dw $0005, $C200, $0000
    dw $0002, $8200, $0000
    dw $0001, $0200, $0000
    dw $0006, $0000, $0000
    dw DemoInstruction_Delete
} ; lavadive

DemoInput_redtower:
{
    dw $002A, $0000, $0000
    dw $0001, $8200, $8200
    dw $0015, $8200, $0000
    dw $0004, $8000, $0000
    dw $0001, $8100, $0100
    dw $000D, $8100, $0000
    dw $0001, $8180, $0080
    dw $002D, $8180, $0000
    dw $0001, $0000, $0000
    dw $0001, $0200, $0200
    dw $0002, $0200, $0000
    dw $0001, $0280, $0080
    dw $0003, $0280, $0000
    dw $0001, $0180, $0100
    dw $001B, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0200, $0200
    dw $0002, $0200, $0000
    dw $0001, $0280, $0080
    dw $000E, $0280, $0000
    dw $0001, $02C0, $0040
    dw $0003, $02C0, $0000
    dw $0001, $04C0, $0400
    dw $0004, $04C0, $0000
    dw $0001, $0480, $0000
    dw $0002, $0400, $0000
    dw $0001, $0600, $0200
    dw $0001, $0200, $0000
    dw $0001, $8200, $8000
    dw $000A, $8200, $0000
    dw $0001, $8280, $0080
    dw $0014, $8280, $0000
    dw $0001, $0080, $0000
    dw $0001, $0100, $0100
    dw $0001, $0100, $0000
    dw $0001, $0180, $0080
    dw $0010, $0180, $0000
    dw $0006, $0100, $0000
    dw $0001, $0120, $0020
    dw $0005, $0120, $0000
    dw $0001, $01A0, $0080
    dw $0002, $01A0, $0000
    dw $000B, $0180, $0000
    dw $0002, $0080, $0000
    dw $0001, $0280, $0200
    dw $0013, $0280, $0000
    dw $0001, $0080, $0000
    dw $0001, $0100, $0100
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0002, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $0008, $0280, $0000
    dw $0001, $0A00, $0800
    dw $0001, $0A00, $0000
    dw $0013, $0800, $0000
    dw $0001, $0880, $0080
    dw $0009, $0880, $0000
    dw $001D, $0800, $0000
    dw $0001, $0840, $0040
    dw $0002, $0840, $0000
    dw $0001, $0240, $0200
    dw $0001, $0200, $0000
    dw $0001, $0280, $0080
    dw $000F, $0280, $0000
    dw $0001, $0080, $0000
    dw $0001, $0180, $0100
    dw $0002, $0180, $0000
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0001, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $0008, $0280, $0000
    dw $0001, $0180, $0100
    dw $0001, $0180, $0000
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0003, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $0009, $0280, $0000
    dw $0001, $0180, $0100
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0004, $0180, $0000
    dw $0001, $0280, $0200
    dw $000A, $0280, $0000
    dw $0013, $0200, $0000
    dw $0001, $0000, $0000
    dw $0001, $0100, $0100
    dw $0004, $0100, $0000
    dw $0001, $0180, $0080
    dw $0001, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $0004, $0280, $0000
    dw $0006, $0200, $0000
    dw $0001, $0100, $0100
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0004, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $000B, $0280, $0000
    dw $0001, $0080, $0000
    dw $0001, $0180, $0100
    dw $0002, $0180, $0000
    dw $0002, $0100, $0000
    dw $0001, $0180, $0080
    dw $0024, $0180, $0000
    dw $0001, $0280, $0200
    dw $0004, $0200, $0000
    dw $0001, $0280, $0080
    dw $0002, $0280, $0000
    dw $0001, $0180, $0100
    dw $0008, $0180, $0000
    dw $0005, $0100, $0000
    dw $0001, $0120, $0020
    dw $0001, $0120, $0000
    dw $0004, $0020, $0000
    dw $0039, $0000, $0000
    dw DemoInstruction_Delete
} ; redtower

DemoInput_ggg:
{
    dw $002B, $0000, $0000
    dw $0001, $2000, $2000
    dw $000F, $2000, $0000
    dw $000B, $0000, $0000
    dw $0001, $2000, $2000
    dw $0001, $2000, $0000
    dw $0001, $A000, $8000
    dw $0004, $A000, $0000
    dw $0007, $8000, $0000
    dw $0001, $8010, $0010
    dw $0007, $8010, $0000
    dw $0001, $8110, $0100
    dw $001D, $8110, $0000
    dw $0004, $8010, $0000
    dw $0001, $8210, $0200
    dw $001F, $8210, $0000
    dw $0001, $8290, $0080
    dw $0006, $8290, $0000
    dw $000F, $8210, $0000
    dw $0001, $8250, $0040
    dw $0004, $8250, $0000
    dw $0001, $8050, $0000
    dw $0001, $8110, $0100
    dw $0015, $8110, $0000
    dw $0003, $8100, $0000
    dw $0003, $8000, $0000
    dw $0001, $8200, $0200
    dw $0006, $8200, $0000
    dw $0023, $0000, $0000
    dw DemoInstruction_Delete
}

DemoInput_landingsite:
{
    dw $016D, $0000, $0000
    dw $0001, $8000, $8000
    dw $0020, $8000, $0000
    dw $0001, $8200, $0200
    dw $0020, $8200, $0000
    dw $0001, $0280, $0080
    dw $0001, $0280, $0000
    dw $0001, $0200, $0000
    dw $0001, $0000, $0000
    dw $0001, $0100, $0100
    dw $0002, $0100, $0000
    dw $0023, $0000, $0000
    dw $0001, $8000, $8000
    dw $0002, $8000, $0000
    dw $0001, $8200, $0200
    dw $0003, $8200, $0000
    dw $0001, $0280, $0080
    dw $0001, $0200, $0000
    dw $0002, $0000, $0000
    dw $0001, $0100, $0100
    dw $0001, $0100, $0000
    dw $0038, $0000, $0000
    dw $0001, $0100, $0100
    dw $0002, $0100, $0000
    dw $0002, $0000, $0000
    dw $0001, $0100, $0100
    dw $0005, $0100, $0000
    dw $0002, $0000, $0000
    dw $0001, $0100, $0100
    dw $0009, $0100, $0000
    dw $0001, $8100, $8000
    dw $0002, $8100, $0000
    dw $0016, $0100, $0000
    dw $0001, $8100, $8000
    dw $0002, $8100, $0000
    dw $0012, $0100, $0000
    dw $0001, $8100, $8000
    dw $0002, $8100, $0000
    dw $000D, $0100, $0000
    dw $0001, $8100, $8000
    dw $0002, $8100, $0000
    dw $0001, $8500, $0400
    dw $0001, $8500, $0000
    dw $0003, $8400, $0000
    dw $0048, $0000, $0000
    dw DemoInstruction_Delete
} ; landingsite

DemoInput_babyskip:
{
    dw $0030, $0000, $0000
    dw $0001, $8040, $8040
    dw $0003, $8040, $0000
    dw $0025, $8000, $0000
    dw $0001, $8200, $0200
    dw $0023, $8200, $0000
    dw $0001, $8280, $0080
    dw $0017, $8280, $0000
    dw $0019, $8200, $0000
    dw $0001, $8280, $0080
    dw $0002, $8280, $0000
    dw $0002, $0280, $0000
    dw $0002, $0000, $0000
    dw $0001, $0100, $0100
    dw $0004, $0100, $0000
    dw $0001, $0180, $0080
    dw $001C, $0180, $0000
    dw $0008, $0100, $0000
    dw $0001, $0000, $0000
    dw $0001, $0200, $0200
    dw $000A, $8200, $0000
    dw $000F, $8000, $0000
    dw $0001, $8200, $0200
    dw $001B, $8200, $0000
    dw $0001, $8000, $0000
    dw $0001, $8100, $0100
    dw $002E, $8100, $0000
    dw $0001, $8000, $0000
    dw $0001, $8200, $0200
    dw $0002, $8200, $0000
    dw $003D, $8000, $0000
    dw $01B4, $0000, $0000
    dw $0001, $0400, $0400
    dw $0004, $0400, $0000
    dw $00CB, $0000, $0000
    dw $0001, $8800, $8800
    dw $0003, $8800, $0000
    dw $0020, $8000, $0000
    dw $0001, $8040, $0040
    dw $0006, $8040, $0000
    dw $0046, $8000, $0000
    dw $0001, $8200, $0200
    dw $0025, $8200, $0000
    dw $0001, $8280, $0080
    dw $0003, $8280, $0000
    dw $0001, $8480, $0400
    dw $004A, $8480, $0000
    dw $0002, $8400, $0000
    dw $0006, $8000, $0000
    dw $0001, $8200, $0200
    dw $000A, $8200, $0000
    dw $0001, $8280, $0080
    dw $0011, $8280, $0000
    dw $0024, $8200, $0000
    dw $0001, $8600, $0400
    dw $0005, $8400, $0000
    dw $0001, $8440, $0040
    dw $0003, $8440, $0000
    dw $0001, $8540, $0100
    dw $0001, $8140, $0000
    dw $000D, $8100, $0000
    dw $0001, $8000, $0000
    dw $0001, $8200, $0200
    dw $0002, $8200, $0000
    dw $0001, $8280, $0080
    dw $0013, $8280, $0000
    dw $001B, $8200, $0000
    dw $0001, $8240, $0040
    dw $0007, $8240, $0000
    dw $0006, $8200, $0000
    dw $0002, $8000, $0000
    dw $0001, $8100, $0100
    dw $0014, $8100, $0000
    dw $0002, $8000, $0000
    dw $0001, $8280, $0280
    dw $0010, $8280, $0000
    dw $0012, $8200, $0000
    dw $0001, $8210, $0010
    dw $0006, $8210, $0000
    dw $0001, $8250, $0040
    dw $0006, $8250, $0000
    dw $0001, $8210, $0000
    dw $0011, $8200, $0000
    dw $0001, $8000, $0000
    dw $0001, $8800, $0800
    dw $0004, $8800, $0000
    dw $0001, $8840, $0040
    dw $0001, $8840, $0000
    dw $0001, $80C0, $0080
    dw $0003, $8080, $0000
    dw $0001, $8480, $0400
    dw $0006, $8480, $0000
    dw $0002, $8080, $0000
    dw $0001, $8480, $0400
    dw $0002, $8480, $0000
    dw $0001, $8680, $0200
    dw $0002, $8280, $0000
    dw $0005, $0280, $0000
    dw $003A, $0200, $0000
    dw $000F, $0000, $0000
    dw DemoInstruction_Delete
} ; babyskip

DemoInput_metroid3:
{
    dw $0019, $0000, $0000
    dw $0001, $0100, $0100
    dw $000C, $0100, $0000
    dw $0001, $8100, $8000
    dw $0001, $8100, $0000
    dw $0002, $8000, $0000
    dw $0001, $8200, $0200
    dw $000D, $8200, $0000
    dw $0006, $8000, $0000
    dw $0001, $8040, $0040
    dw $0003, $8040, $0000
    dw $0001, $8140, $0100
    dw $0002, $8140, $0000
    dw $0009, $8100, $0000
    dw $0001, $8140, $0040
    dw $0006, $8140, $0000
    dw $000C, $8100, $0000
    dw $0001, $8180, $0080
    dw $0004, $8180, $0000
    dw $0001, $8580, $0400
    dw $0003, $8480, $0000
    dw $000C, $8400, $0000
    dw $0002, $8000, $0000
    dw $0013, $0000, $0000
    dw $0001, $8000, $8000
    dw $001C, $8000, $0000
    dw $000A, $0000, $0000
    dw $0001, $8140, $8140
    dw $0005, $8140, $0000
    dw $0001, $A140, $2000
    dw $0006, $A100, $0000
    dw $0006, $8100, $0000
    dw $0001, $A100, $2000
    dw $0008, $A100, $0000
    dw $0001, $8140, $0040
    dw $0006, $8140, $0000
    dw $0030, $8100, $0000
    dw $0001, $8140, $0040
    dw $0001, $81C0, $0080
    dw $0002, $8180, $0000
    dw $0004, $0180, $0000
    dw $0008, $0100, $0000
    dw $0001, $8100, $8000
    dw $000C, $8100, $0000
    dw $0001, $4100, $4000
    dw $0003, $4100, $0000
    dw $0007, $0100, $0000
    dw $0001, $8180, $8080
    dw $0001, $81C0, $0040
    dw $0002, $81C0, $0000
    dw $0001, $A1C0, $2000
    dw $0003, $A1C0, $0000
    dw $0002, $A180, $0000
    dw $0004, $8180, $0000
    dw $0001, $A1A0, $2020
    dw $0003, $A120, $0000
    dw $0001, $8160, $0040
    dw $0007, $8160, $0000
    dw $0001, $C140, $4000
    dw $0002, $C140, $0000
    dw $000E, $8100, $0000
    dw $0001, $81C0, $00C0
    dw $0004, $81C0, $0000
    dw $0001, $8580, $0400
    dw $0001, $8580, $0000
    dw $0002, $8480, $0000
    dw $0004, $8080, $0000
    dw $0001, $8580, $0500
    dw $0002, $8580, $0000
    dw $0006, $8100, $0000
    dw $0001, $8180, $0080
    dw $000B, $8180, $0000
    dw $000E, $0100, $0000
    dw DemoInstruction_Delete
} ; metroid3

DemoInput_moat:
{
    dw $0021, $0000, $0000
    dw $0001, $8000, $8000
    dw $0006, $8000, $0000
    dw $0001, $8200, $0200
    dw $000E, $8200, $0000
    dw $0001, $8240, $0040
    dw $000B, $8240, $0000
    dw $0005, $8200, $0000
    dw $0004, $8000, $0000
    dw $0001, $8010, $0010
    dw $000E, $8010, $0000
    dw $0001, $8210, $0200
    dw $0009, $8210, $0000
    dw $0021, $8010, $0000
    dw $0009, $8000, $0000
    dw $0001, $8400, $0400
    dw $0002, $8400, $0000
    dw $0001, $8000, $0000
    dw $0001, $0000, $0000
    dw $0001, $8000, $8000
    dw $0001, $8000, $0000
    dw $0002, $0000, $0000
    dw $0001, $0400, $0400
    dw $0004, $0400, $0000
    dw $000C, $0000, $0000
    dw $0001, $0100, $0100
    dw $000E, $0000, $0000
    dw $0001, $0800, $0800
    dw $0003, $0800, $0000
    dw $0006, $0000, $0000
    dw $0001, $0800, $0800
    dw $0004, $0800, $0000
    dw $0018, $0000, $0000
    dw $0001, $8000, $8000
    dw $0011, $8000, $0000
    dw $0001, $8100, $0100
    dw $0012, $8100, $0000
    dw $0001, $8180, $0080
    dw $0020, $8180, $0000
    dw $0006, $0180, $0000
    dw $0022, $0100, $0000
    dw $0001, $0180, $0080
    dw $003C, $0180, $0000
    dw $0009, $0100, $0000
    dw $0001, $8100, $8000
    dw $0022, $8100, $0000
    dw $0005, $8000, $0000
    dw $0001, $8010, $0010
    dw $000C, $8010, $0000
    dw $0001, $8050, $0040
    dw $0007, $8050, $0000
    dw $000C, $8010, $0000
    dw $0001, $8110, $0100
    dw $0006, $8110, $0000
    dw $0007, $8010, $0000
    dw $0001, $8110, $0100
    dw $0004, $8110, $0000
    dw $0008, $8010, $0000
    dw $0001, $8210, $0200
    dw $0005, $8210, $0000
    dw $0004, $8010, $0000
    dw $0016, $8000, $0000
    dw $0001, $8200, $0200
    dw $0017, $8200, $0000
    dw $0001, $8280, $0080
    dw $0006, $8280, $0000
    dw $0001, $8680, $0400
    dw $0002, $8480, $0000
    dw $0005, $8080, $0000
    dw $0001, $8480, $0400
    dw $0001, $8680, $0200
    dw $0008, $8680, $0000
    dw $0006, $8280, $0000
    dw $0023, $8200, $0000
    dw $0003, $8000, $0000
    dw $0001, $8100, $0100
    dw $0001, $8100, $0000
    dw $0003, $0100, $0000
    dw $0001, $8100, $8000
    dw $0002, $8100, $0000
    dw $0009, $8000, $0000
    dw $0025, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $0006, $0000, $0000
    dw $0001, $0100, $0100
    dw $0001, $0100, $0000
    dw $0029, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $0002, $0000, $0000
    dw $0001, $0200, $0200
    dw $000E, $0200, $0000
    dw $0001, $0240, $0040
    dw $0006, $0240, $0000
    dw $0012, $0200, $0000
    dw $0001, $0100, $0100
    dw $0001, $0100, $0000
    dw $0002, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $000F, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $0012, $0000, $0000
    dw $0001, $0100, $0100
    dw $0016, $0100, $0000
    dw $0001, $0900, $0800
    dw $0001, $0900, $0000
    dw $0002, $0100, $0000
    dw $0001, $0900, $0800
    dw $000C, $0900, $0000
    dw $0012, $0100, $0000
    dw $0039, $0000, $0000
    dw $0001, $8000, $8000
    dw $000D, $8000, $0000
    dw $0001, $8100, $0100
    dw $0002, $8100, $0000
    dw $0012, $0100, $0000
    dw DemoInstruction_Delete
} ; moat

DemoInput_frogspeedway:
{
    dw $002C, $0000, $0000
    dw $0001, $8200, $8200
    dw $00AA, $8200, $0000
    dw $0002, $8000, $0000
    dw $0001, $8010, $0010
    dw $000F, $8010, $0000
    dw $0001, $8050, $0040
    dw $0007, $8050, $0000
    dw $0008, $8010, $0000
    dw $0001, $8050, $0040
    dw $0008, $8050, $0000
    dw $0007, $8010, $0000
    dw $0001, $8050, $0040
    dw $0008, $8050, $0000
    dw $0007, $8010, $0000
    dw $0001, $8050, $0040
    dw $0007, $8050, $0000
    dw $0007, $8010, $0000
    dw $0001, $8050, $0040
    dw $0007, $8050, $0000
    dw $0007, $8010, $0000
    dw $0001, $8050, $0040
    dw $0005, $8050, $0000
    dw $0001, $8250, $0200
    dw $0002, $8250, $0000
    dw $0008, $8210, $0000
    dw $0001, $8250, $0040
    dw $0007, $8250, $0000
    dw $0006, $8210, $0000
    dw $0001, $8250, $0040
    dw $0007, $8250, $0000
    dw $0008, $8210, $0000
    dw $0001, $8250, $0040
    dw $0007, $8250, $0000
    dw $0005, $8210, $0000
    dw $0001, $8250, $0040
    dw $0007, $8250, $0000
    dw $0007, $8210, $0000
    dw $0001, $8250, $0040
    dw $0007, $8250, $0000
    dw $0007, $8210, $0000
    dw $0001, $8250, $0040
    dw $0006, $8250, $0000
    dw $0007, $8210, $0000
    dw $0001, $8250, $0040
    dw $0006, $8250, $0000
    dw $0007, $8210, $0000
    dw $0001, $8250, $0040
    dw $0007, $8250, $0000
    dw $0007, $8210, $0000
    dw $0001, $8250, $0040
    dw $0007, $8250, $0000
    dw $0006, $8210, $0000
    dw $0001, $8250, $0040
    dw $0007, $8250, $0000
    dw $0007, $8210, $0000
    dw $0001, $8250, $0040
    dw $0007, $8250, $0000
    dw $0006, $8210, $0000
    dw $0001, $8250, $0040
    dw $0007, $8250, $0000
    dw $0006, $8210, $0000
    dw $0001, $8250, $0040
    dw $0006, $8250, $0000
    dw $0004, $8210, $0000
    dw $0033, $8200, $0000
    dw $0001, $A200, $2000
    dw $0007, $A200, $0000
    dw $002A, $8200, $0000
    dw $0001, $8000, $0000
    dw $0001, $8030, $0030
    dw $0006, $8030, $0000
    dw $0001, $8070, $0040
    dw $0005, $8070, $0000
    dw $0001, $8030, $0000
    dw $000A, $8020, $0000
    dw $0004, $8000, $0000
    dw $0001, $0200, $0200
    dw $0001, $0200, $0000
    dw $0001, $4200, $4000
    dw $0004, $4200, $0000
    dw $0001, $8200, $8000
    dw $004C, $8200, $0000
    dw $0001, $8240, $0040
    dw $0006, $8240, $0000
    dw $0035, $8200, $0000
    dw DemoInstruction_Delete
} ; frogspeedway

DemoInput_wraparound:
{
    dw $0031, $0000, $0000
    dw $0001, $8000, $8000
    dw $0003, $8000, $0000
    dw $0001, $8040, $0040
    dw $001A, $8040, $0000
    dw $0001, $8140, $0100
    dw $001E, $8140, $0000
    dw $0002, $8040, $0000
    dw $0001, $8240, $0200
    dw $003C, $8240, $0000
    dw $0001, $8040, $0000
    dw $0001, $8140, $0100
    dw $0005, $8140, $0000
    dw $0001, $8060, $0020
    dw $000F, $8060, $0000
    dw $0001, $8260, $0200
    dw $000D, $8260, $0000
    dw $0001, $8060, $0000
    dw $0001, $8160, $0100
    dw $0005, $8160, $0000
    dw $0019, $8060, $0000
    dw $0001, $8160, $0100
    dw $0002, $8160, $0000
    dw $0010, $8060, $0000
    dw $0001, $8160, $0100
    dw $0001, $8160, $0000
    dw $0048, $8060, $0000
    dw $0004, $8020, $0000
    dw $0001, $8120, $0100
    dw $0001, $8120, $0000
    dw $003C, $8100, $0000
    dw $0001, $8000, $0000
    dw $0001, $8200, $0200
    dw $0002, $8200, $0000
    dw $0001, $0200, $0000
    dw $0008, $0000, $0000
    dw $0001, $0200, $0200
    dw $0012, $0200, $0000
    dw $0001, $8200, $8000
    dw $0055, $8200, $0000
    dw $0001, $8400, $0400
    dw $006A, $8400, $0000
    dw $0001, $8480, $0080
    dw $0001, $0280, $0200
    dw $0001, $0280, $0000
    dw $0001, $0800, $0800
    dw $0004, $0800, $0000
    dw $0001, $0A00, $0200
    dw $0002, $0A00, $0000
    dw $0003, $0200, $0000
    dw $0001, $4280, $4080
    dw $0009, $4280, $0000
    dw $0004, $0200, $0000
    dw $006B, $0000, $0000
    dw DemoInstruction_Delete
} ; wraparound

DemoInput_speedball:
{
    dw $002A, $0000, $0000
    dw $0001, $2000, $2000
    dw $0005, $2000, $0000
    dw $0003, $0000, $0000
    dw $0001, $2000, $2000
    dw $0006, $2000, $0000
    dw $0006, $0000, $0000
    dw $0001, $8000, $8000
    dw $0002, $8000, $0000
    dw $0001, $8200, $0200
    dw $001E, $8200, $0000
    dw $0001, $0280, $0080
    dw $0001, $0280, $0000
    dw $0011, $0200, $0000
    dw $0001, $0000, $0000
    dw $0001, $0010, $0010
    dw $0001, $0110, $0100
    dw $0004, $0110, $0000
    dw $0003, $0010, $0000
    dw $0010, $0000, $0000
    dw $0001, $0100, $0100
    dw $0017, $0100, $0000
    dw $0001, $8100, $8000
    dw $0007, $8100, $0000
    dw $0011, $0100, $0000
    dw $0001, $8100, $8000
    dw $0007, $8100, $0000
    dw $0009, $0100, $0000
    dw $0001, $8100, $8000
    dw $0017, $8100, $0000
    dw $0001, $8180, $0080
    dw $0008, $8180, $0000
    dw $0001, $0180, $0000
    dw $0004, $0100, $0000
    dw $0001, $8180, $8080
    dw $0001, $8580, $0400
    dw $0004, $8580, $0000
    dw $0004, $8480, $0000
    dw $0013, $8080, $0000
    dw $0001, $8480, $0400
    dw $0001, $8480, $0000
    dw $0001, $8580, $0100
    dw $0001, $8500, $0000
    dw $0001, $0500, $0000
    dw $0021, $0100, $0000
    dw $0001, $0180, $0080
    dw $0003, $0180, $0000
    dw $0001, $0980, $0800
    dw $0002, $0980, $0000
    dw $0003, $0880, $0000
    dw $0001, $0980, $0100
    dw $0001, $0980, $0000
    dw $0001, $0900, $0000
    dw $0001, $8100, $8000
    dw $0001, $8140, $0040
    dw $0007, $8140, $0000
    dw $001E, $8100, $0000
    dw $0004, $8000, $0000
    dw $0004, $0000, $0000
    dw $0001, $4000, $4000
    dw $0005, $4000, $0000
    dw $000A, $0000, $0000
    dw $0001, $8000, $8000
    dw $0013, $8000, $0000
    dw $0001, $8010, $0010
    dw $0005, $8010, $0000
    dw $0001, $8050, $0040
    dw $0004, $8050, $0000
    dw $0001, $8010, $0000
    dw $0007, $8000, $0000
    dw $0027, $0000, $0000
    dw DemoInstruction_Delete
} ; speedball

DemoInput_kqk:
{
    dw $0222, $0000, $0000
    dw $0001, $2000, $2000
    dw $0003, $2000, $0000
    dw $0001, $A000, $8000
    dw $000F, $8000, $0000
    dw $0001, $8080, $0080
    dw $0007, $8080, $0000
    dw $0001, $80C0, $0040
    dw $0002, $80C0, $0000
    dw $0004, $8040, $0000
    dw $0008, $8000, $0000
    dw $0001, $8040, $0040
    dw $0005, $8040, $0000
    dw $000C, $8000, $0000
    dw $0001, $A000, $2000
    dw $0007, $A000, $0000
    dw $0005, $8000, $0000
    dw $0001, $8080, $0080
    dw $0008, $8080, $0000
    dw $0001, $80C0, $0040
    dw $0001, $80C0, $0000
    dw $0005, $8040, $0000
    dw $000F, $8000, $0000
    dw $0001, $8040, $0040
    dw $0006, $8040, $0000
    dw $000A, $8000, $0000
    dw $0001, $8080, $0080
    dw $0007, $8080, $0000
    dw $0001, $80C0, $0040
    dw $0002, $80C0, $0000
    dw $0003, $8040, $0000
    dw $000C, $8000, $0000
    dw DemoInstruction_Delete
} ; kqk

DemoInput_grapplejump:
{
    dw $0014, $0000, $0000
    dw $0001, $0200, $0200
    dw $0009, $0200, $0000
    dw $0001, $8200, $8000
    dw $0016, $8200, $0000
    dw $0001, $8000, $0000
    dw $0001, $8100, $0100
    dw $003D, $8100, $0000
    dw $0001, $A100, $2000
    dw $0004, $A100, $0000
    dw $0007, $8100, $0000
    dw $0001, $A100, $2000
    dw $0002, $A100, $0000
    dw $0006, $8100, $0000
    dw $0001, $A100, $2000
    dw $0005, $A100, $0000
    dw $0064, $8100, $0000
    dw $0001, $8180, $0080
    dw $001F, $8180, $0000
    dw $0001, $8580, $0400
    dw $0001, $8500, $0000
    dw $0004, $8400, $0000
    dw $0005, $8000, $0000
    dw $0001, $8400, $0400
    dw $0005, $8400, $0000
    dw $0001, $8500, $0100
    dw $000B, $8500, $0000
    dw $0001, $8540, $0040
    dw $0002, $8540, $0000
    dw $0002, $8140, $0000
    dw $0001, $8940, $0800
    dw $0001, $8940, $0000
    dw $0001, $8800, $0000
    dw $0001, $8900, $0100
    dw $0002, $8900, $0000
    dw $0070, $8100, $0000
    dw $0001, $A100, $2000
    dw $0004, $A100, $0000
    dw $0045, $8100, $0000
    dw $0001, $8180, $0080
    dw $0016, $8180, $0000
    dw $0007, $8080, $0000
    dw $0001, $8280, $0200
    dw $0004, $8280, $0000
    dw $0017, $8080, $0000
    dw $0001, $80C0, $0040
    dw $000D, $80C0, $0000
    dw $0001, $84C0, $0400
    dw $001E, $84C0, $0000
    dw $0001, $86C0, $0200
    dw $0006, $86C0, $0000
    dw $0020, $82C0, $0000
    dw $0002, $8280, $0000
    dw $0004, $8200, $0000
    dw $0005, $0200, $0000
    dw $0001, $0600, $0400
    dw $0006, $0400, $0000
    dw $0004, $0000, $0000
    dw $0001, $0400, $0400
    dw $0007, $0400, $0000
    dw $0007, $0000, $0000
    dw $0001, $0080, $0080
    dw $0006, $0080, $0000
    dw $0004, $0000, $0000
    dw $0001, $0080, $0080
    dw $0005, $0080, $0000
    dw $0004, $0000, $0000
    dw $0001, $0080, $0080
    dw $0007, $0080, $0000
    dw $0007, $0000, $0000
    dw $0001, $0400, $0400
    dw $0006, $0400, $0000
    dw $0003, $0000, $0000
    dw $0001, $0400, $0400
    dw $0005, $0400, $0000
    dw $0005, $0000, $0000
    dw $0001, $0080, $0080
    dw $0005, $0080, $0000
    dw $0004, $0000, $0000
    dw $0001, $0080, $0080
    dw $0005, $0080, $0000
    dw $0004, $0000, $0000
    dw $0001, $0080, $0080
    dw $0005, $0080, $0000
    dw $0003, $0000, $0000
    dw $0001, $0080, $0080
    dw $0007, $0080, $0000
    dw $0004, $0000, $0000
    dw $0001, $0400, $0400
    dw $0006, $0400, $0000
    dw $0002, $0000, $0000
    dw $0001, $0400, $0400
    dw $0007, $0400, $0000
    dw $0005, $0000, $0000
    dw $0001, $0080, $0080
    dw $0006, $0080, $0000
    dw $0005, $0000, $0000
    dw $0001, $0080, $0080
    dw $0005, $0080, $0000
    dw $0005, $0000, $0000
    dw $0001, $0080, $0080
    dw $0004, $0080, $0000
    dw $0005, $0000, $0000
    dw $0001, $0080, $0080
    dw $0006, $0080, $0000
    dw $0001, $0400, $0400
    dw $0005, $0400, $0000
    dw $0004, $0000, $0000
    dw $0001, $0400, $0400
    dw $0006, $0400, $0000
    dw $0002, $0000, $0000
    dw $0001, $0080, $0080
    dw $0006, $0080, $0000
    dw $0005, $0000, $0000
    dw $0001, $0080, $0080
    dw $0005, $0080, $0000
    dw $0005, $0000, $0000
    dw $0001, $0080, $0080
    dw $0006, $0080, $0000
    dw $0004, $0000, $0000
    dw $0001, $0080, $0080
    dw $0002, $0080, $0000
    dw $0001, $0280, $0200
    dw $0010, $0280, $0000
    dw $000C, $0200, $0000
    dw $0001, $8200, $8000
    dw $0002, $8200, $0000
    dw $0001, $8240, $0040
    dw $000A, $8240, $0000
    dw $002D, $8200, $0000
    dw $0001, $8280, $0080
    dw $0008, $8280, $0000
    dw $002E, $8200, $0000
    dw $0001, $8280, $0080
    dw $001C, $8280, $0000
    dw $0012, $8200, $0000
    dw $0001, $8000, $0000
    dw $0001, $8800, $0800
    dw $0006, $8800, $0000
    dw $0001, $8840, $0040
    dw $000F, $8840, $0000
    dw $0002, $8800, $0000
    dw $0002, $8000, $0000
    dw $0014, $0000, $0000
    dw $0001, $0080, $0080
    dw $0015, $0080, $0000
    dw DemoInstruction_Delete
} ; grapplejump

DemoInput_bombjump:
{
    dw $0030, $0000, $0000
    dw $0001, $0100, $0100
    dw $0023, $0100, $0000
    dw $0017, $0000, $0000
    dw $0001, $0100, $0100
    dw $0002, $0100, $0000
    dw $0013, $0000, $0000
    dw $0001, $0080, $0080
    dw $0002, $0080, $0000
    dw $0001, $0480, $0400
    dw $0004, $0480, $0000
    dw $0004, $0080, $0000
    dw $0001, $0480, $0400
    dw $0004, $0400, $0000
    dw $0004, $0000, $0000
    dw $0001, $0040, $0040
    dw $0004, $0040, $0000
    dw $000C, $0000, $0000
    dw $0001, $0040, $0040
    dw $0003, $0040, $0000
    dw $0032, $0000, $0000
    dw $0001, $0040, $0040
    dw $0004, $0040, $0000
    dw $000D, $0000, $0000
    dw $0001, $0040, $0040
    dw $0004, $0040, $0000
    dw $0030, $0000, $0000
    dw $0001, $0040, $0040
    dw $0003, $0040, $0000
    dw $000F, $0000, $0000
    dw $0001, $0040, $0040
    dw $0003, $0040, $0000
    dw $0031, $0000, $0000
    dw $0001, $0040, $0040
    dw $0004, $0040, $0000
    dw $000E, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $002F, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $000E, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $002F, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $000E, $0000, $0000
    dw $0001, $0040, $0040
    dw $0004, $0040, $0000
    dw $002F, $0000, $0000
    dw $0001, $0040, $0040
    dw $0004, $0040, $0000
    dw $0011, $0000, $0000
    dw $0001, $0040, $0040
    dw $0004, $0040, $0000
    dw $0030, $0000, $0000
    dw $0001, $0040, $0040
    dw $0003, $0040, $0000
    dw $0010, $0000, $0000
    dw $0001, $0040, $0040
    dw $0003, $0040, $0000
    dw $003E, $0000, $0000
    dw $0001, $0100, $0100
    dw $0016, $0100, $0000
    dw $0001, $0800, $0800
    dw $0007, $0800, $0000
    dw $0027, $0000, $0000
    dw DemoInstruction_Delete
} ; bombjump

DemoInput_crystalflash:
{
    dw $001B, $0000, $0000
    dw $0001, $8000, $8000
    dw $0004, $8000, $0000
    dw $0001, $8200, $0200
    dw $001B, $8200, $0000
    dw $0001, $8080, $0080
    dw $0001, $8480, $0400
    dw $0002, $8480, $0000
    dw $0003, $8400, $0000
    dw $0001, $8200, $0200
    dw $000E, $8200, $0000
    dw $0001, $8000, $0000
    dw $0001, $8100, $0100
    dw $000D, $8100, $0000
    dw $0001, $8180, $0080
    dw $0004, $8180, $0000
    dw $0001, $8080, $0000
    dw $0001, $8280, $0200
    dw $001D, $8280, $0000
    dw $0001, $8200, $0000
    dw $0001, $8220, $0020
    dw $0009, $8220, $0000
    dw $0005, $8200, $0000
    dw $0001, $8000, $0000
    dw $0001, $8100, $0100
    dw $0012, $8100, $0000
    dw $0001, $8180, $0080
    dw $001C, $8180, $0000
    dw $0001, $81A0, $0020
    dw $0007, $8120, $0000
    dw $0013, $8100, $0000
    dw $0001, $A100, $2000
    dw $0006, $A100, $0000
    dw $0004, $8100, $0000
    dw $0001, $A100, $2000
    dw $0004, $A100, $0000
    dw $0004, $8100, $0000
    dw $0001, $A100, $2000
    dw $0008, $A100, $0000
    dw $0033, $8100, $0000
    dw $0001, $8180, $0080
    dw $0003, $8180, $0000
    dw $0001, $8580, $0400
    dw $0002, $8580, $0000
    dw $0002, $8480, $0000
    dw $0005, $8080, $0000
    dw $0001, $8480, $0400
    dw $0004, $8480, $0000
    dw $0004, $8400, $0000
    dw $0001, $8500, $0100
    dw $0002, $8500, $0000
    dw $0001, $8100, $0000
    dw $0001, $8140, $0040
    dw $0006, $8140, $0000
    dw $0031, $8000, $0000
    dw $0001, $8800, $0800
    dw $0001, $8800, $0000
    dw $0005, $0800, $0000
    dw $000D, $0000, $0000
    dw $0001, $0080, $0080
    dw $0001, $4080, $4000
    dw $0011, $4080, $0000
    dw $0001, $0400, $0400
    dw $0002, $0400, $0000
    dw $0001, $0000, $0000
    dw $0001, $8000, $8000
    dw $0001, $8400, $0400
    dw $0001, $8400, $0000
    dw $0001, $8500, $0100
    dw $0003, $8100, $0000
    dw $0001, $8140, $0040
    dw $0003, $8140, $0000
    dw $0008, $8100, $0000
    dw $0010, $0100, $0000
    dw $0001, $2100, $2000
    dw $0001, $2100, $0000
    dw $0005, $0100, $0000
    dw $0001, $2100, $2000
    dw $0001, $2100, $0000
    dw $0004, $0100, $0000
    dw $0001, $2100, $2000
    dw $0004, $2100, $0000
    dw $0002, $0100, $0000
    dw $0006, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $0001, $0050, $0010
    dw $0005, $0050, $0000
    dw $0001, $0040, $0000
    dw $0023, $0000, $0000
    dw $0001, $4000, $4000
    dw $0005, $4000, $0000
    dw $001B, $0000, $0000
    dw $0001, $0430, $0430
    dw $0001, $0470, $0040
    dw $0075, $0470, $0000
    dw $0001, $0030, $0000
    dw $0001, $0020, $0000
    dw $0010, $0000, $0000
    dw $0001, $4000, $4000
    dw $0008, $4000, $0000
    dw $0001, $6000, $2000
    dw $0006, $6000, $0000
    dw $0002, $4000, $0000
    dw $0001, $6000, $2000
    dw $0005, $6000, $0000
    dw $000C, $4000, $0000
    dw $0025, $0000, $0000
    dw $0001, $8000, $8000
    dw $0037, $8000, $0000
    dw $0059, $0000, $0000
    dw $0001, $0040, $0040
    dw $0007, $0040, $0000
    dw $0001, $0000, $0000
    dw $0001, $0400, $0400
    dw $0006, $0400, $0000
    dw $0001, $0500, $0100
    dw $0001, $0500, $0000
    dw $001A, $0100, $0000
    dw $0001, $4100, $4000
    dw $0002, $4100, $0000
    dw $0001, $4900, $0800
    dw $0003, $4800, $0000
    dw $0003, $0800, $0000
    dw $0005, $0000, $0000
    dw $0001, $0040, $0040
    dw $0005, $0040, $0000
    dw $000F, $0000, $0000
    dw $0001, $0100, $0100
    dw $0003, $0100, $0000
    dw $0001, $8100, $8000
    dw $0018, $8100, $0000
    dw DemoInstruction_Delete
} ; crystalflash

DemoInput_flyway:
{
    dw $003C, $0000, $0000
    dw $0001, $8100, $8100
    dw $001A, $8100, $0000
    dw $0001, $8200, $0200
    dw $000E, $8200, $0000
    dw $0001, $8100, $0100
    dw $004D, $8100, $0000
    dw $0001, $A100, $2000
    dw $0004, $A100, $0000
    dw $0002, $8100, $0000
    dw $0001, $8180, $0080
    dw $0004, $8180, $0000
    dw $0001, $81C0, $0040
    dw $0002, $81C0, $0000
    dw $0001, $8180, $0000
    dw $0006, $8100, $0000
    dw $0001, $8140, $0040
    dw $0002, $8140, $0000
    dw $0008, $8100, $0000
    dw $0001, $8140, $0040
    dw $0002, $8140, $0000
    dw $001A, $8100, $0000
    dw $0001, $8110, $0010
    dw $0001, $8110, $0000
    dw $0001, $8150, $0040
    dw $0002, $8150, $0000
    dw $0007, $8110, $0000
    dw $0001, $8150, $0040
    dw $0002, $8150, $0000
    dw $0003, $8110, $0000
    dw $0001, $8190, $0080
    dw $0002, $8190, $0000
    dw $000D, $8180, $0000
    dw $0009, $8100, $0000
    dw DemoInstruction_Delete
} ; flyway

DemoInput_alcatraz:
{
    dw $002B, $0000, $0000
    dw $0001, $8000, $8000
    dw $0004, $8000, $0000
    dw $0001, $8100, $0100
    dw $0025, $8100, $0000
    dw $0003, $8000, $0000
    dw $0001, $8200, $0200
    dw $0024, $8200, $0000
    dw $0001, $8280, $0080
    dw $0004, $8280, $0000
    dw $0001, $8080, $0000
    dw $0001, $8180, $0100
    dw $0011, $8180, $0000
    dw $0001, $81A0, $0020
    dw $0001, $81A0, $0000
    dw $0003, $8120, $0000
    dw $0002, $0120, $0000
    dw $0001, $8120, $8000
    dw $0001, $8120, $0000
    dw $0001, $8100, $0000
    dw $0001, $8280, $0280
    dw $0012, $8280, $0000
    dw $0002, $8200, $0000
    dw $0001, $8220, $0020
    dw $0006, $8220, $0000
    dw $0006, $8200, $0000
    dw $0001, $8280, $0080
    dw $0013, $8280, $0000
    dw $0001, $8180, $0100
    dw $0001, $8180, $0000
    dw $0003, $0100, $0000
    dw $0001, $0180, $0080
    dw $000E, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $000A, $0280, $0000
    dw $0001, $0180, $0100
    dw $0001, $0180, $0000
    dw $0004, $0100, $0000
    dw $0001, $0180, $0080
    dw $000E, $0180, $0000
    dw $0001, $0280, $0200
    dw $0001, $0280, $0000
    dw $0002, $0200, $0000
    dw $0001, $0280, $0080
    dw $0002, $0280, $0000
    dw $0001, $4680, $4400
    dw $0004, $4480, $0000
    dw $0001, $4680, $0200
    dw $0006, $4680, $0000
    dw $0006, $0680, $0000
    dw $0006, $0600, $0000
    dw $0006, $0200, $0000
    dw $0001, $8200, $8000
    dw $0004, $8200, $0000
    dw $0001, $8A00, $0800
    dw $0003, $8800, $0000
    dw $0005, $0800, $0000
    dw $0006, $0000, $0000
    dw DemoInstruction_Delete
} ; alcatraz

DemoInput_tunneljump:
{
    dw $0032, $0000, $0000
    dw $0001, $2000, $2000
    dw $0002, $2000, $0000
    dw $0002, $0000, $0000
    dw $0001, $2000, $2000
    dw $0002, $2000, $0000
    dw $0001, $0010, $0010
    dw $0006, $0010, $0000
    dw $0001, $0050, $0040
    dw $0002, $0050, $0000
    dw $0001, $8100, $8100
    dw $0032, $8100, $0000
    dw $0001, $8200, $0200
    dw $003B, $8200, $0000
    dw $0001, $8280, $0080
    dw $0003, $8280, $0000
    dw $0001, $8480, $0400
    dw $0002, $8400, $0000
    dw $0001, $8480, $0080
    dw $0003, $8080, $0000
    dw $0001, $8680, $0600
    dw $000A, $8680, $0000
    dw $001E, $8200, $0000
    dw $0001, $8280, $0080
    dw $0007, $8280, $0000
    dw $0001, $A280, $2000
    dw $0003, $A280, $0000
    dw $0019, $8280, $0000
    dw $0001, $8200, $0000
    dw $0001, $8A00, $0800
    dw $0002, $8A00, $0000
    dw $0001, $8220, $0020
    dw $0012, $8220, $0000
    dw $0003, $8020, $0000
    dw DemoInstruction_Delete
} ; tunneljump

DemoInput_climb:
{
    dw $0009, $0000, $0000
    dw $0001, $8000, $8000
    dw $0001, $8000, $0000
    dw $0001, $8100, $0100
    dw $0026, $8100, $0000
    dw $0001, $8200, $0200
    dw $0002, $8200, $0000
    dw $0001, $8280, $0080
    dw $0003, $8280, $0000
    dw $0002, $8080, $0000
    dw $0001, $8180, $0100
    dw $000F, $8180, $0000
    dw $0001, $8280, $0200
    dw $0016, $8280, $0000
    dw $0001, $8800, $0800
    dw $0001, $8840, $0040
    dw $0002, $8840, $0000
    dw $0001, $8200, $0200
    dw $0005, $8200, $0000
    dw $0001, $8280, $0080
    dw $000E, $8280, $0000
    dw $0001, $82C0, $0040
    dw $000E, $82C0, $0000
    dw $0001, $84C0, $0400
    dw $0002, $8480, $0000
    dw $0001, $8200, $0200
    dw $0005, $8200, $0000
    dw $0001, $8280, $0080
    dw $0001, $8280, $0000
    dw $0001, $8180, $0100
    dw $000A, $8180, $0000
    dw $0001, $8120, $0020
    dw $0002, $8120, $0000
    dw $0003, $8100, $0000
    dw $0001, $8180, $0080
    dw $0003, $8180, $0000
    dw $0001, $8280, $0200
    dw $0011, $8280, $0000
    dw $0001, $82A0, $0020
    dw $0003, $82A0, $0000
    dw $0001, $8220, $0000
    dw $0002, $8200, $0000
    dw $0001, $8100, $0100
    dw $0001, $8180, $0080
    dw $0007, $8180, $0000
    dw $0001, $8280, $0200
    dw $0009, $8280, $0000
    dw $0001, $82C0, $0040
    dw $0003, $82C0, $0000
    dw $0001, $84C0, $0400
    dw $0005, $84C0, $0000
    dw $0001, $8200, $0200
    dw $0003, $8200, $0000
    dw $0001, $8280, $0080
    dw $0002, $8280, $0000
    dw $0001, $8180, $0100
    dw $0009, $8180, $0000
    dw $0001, $8120, $0020
    dw $0003, $8120, $0000
    dw $0001, $8180, $0080
    dw $0005, $8180, $0000
    dw $0001, $8280, $0200
    dw $0013, $8280, $0000
    dw $0001, $82A0, $0020
    dw $0004, $8220, $0000
    dw $0003, $8200, $0000
    dw $0001, $8280, $0080
    dw $000E, $8280, $0000
    dw $0001, $8180, $0100
    dw $0002, $8180, $0000
    dw $0001, $81C0, $0040
    dw $0005, $81C0, $0000
    dw $0001, $8580, $0400
    dw $0003, $8480, $0000
    dw $0001, $8100, $0100
    dw $0005, $8100, $0000
    dw $0001, $8180, $0080
    dw $000B, $8180, $0000
    dw $0001, $81A0, $0020
    dw $0004, $8120, $0000
    dw $0001, $8180, $0080
    dw $0005, $8180, $0000
    dw $0001, $8280, $0200
    dw $000F, $8280, $0000
    dw $0001, $8290, $0010
    dw $0003, $8290, $0000
    dw $0001, $8210, $0000
    dw $0001, $8250, $0040
    dw $0002, $8250, $0000
    dw $0003, $8200, $0000
    dw $0001, $8280, $0080
    dw $0010, $8280, $0000
    dw $0001, $8180, $0100
    dw $0001, $8280, $0200
    dw $0001, $8200, $0000
    dw $0001, $8280, $0080
    dw $0011, $8280, $0000
    dw $0001, $8200, $0000
    dw $0001, $8400, $0400
    dw $0002, $8400, $0000
    dw $0001, $8200, $0200
    dw $0005, $8200, $0000
    dw $0001, $8280, $0080
    dw $000C, $8280, $0000
    dw $0001, $8220, $0020
    dw $0002, $8220, $0000
    dw $0001, $8280, $0080
    dw $0004, $8280, $0000
    dw $0001, $8180, $0100
    dw $000F, $8180, $0000
    dw $0001, $81C0, $0040
    dw $0005, $81C0, $0000
    dw $0001, $8480, $0400
    dw $0001, $8480, $0000
    dw $0001, $8400, $0000
    dw $0001, $8100, $0100
    dw $0009, $8100, $0000
    dw $0001, $8180, $0080
    dw $0022, $8180, $0000
    dw $0001, $8120, $0020
    dw $0002, $8120, $0000
    dw $0002, $8100, $0000
    dw $0001, $8180, $0080
    dw $0003, $8180, $0000
    dw $0001, $8280, $0200
    dw $0007, $8280, $0000
    dw $0001, $82C0, $0040
    dw $0006, $82C0, $0000
    dw $0001, $84C0, $0400
    dw $0005, $8480, $0000
    dw $0001, $8200, $0200
    dw $0006, $8200, $0000
    dw $0001, $8280, $0080
    dw $0010, $8280, $0000
    dw $0001, $8180, $0100
    dw $000B, $8180, $0000
    dw $0001, $8140, $0040
    dw $0002, $8140, $0000
    dw $0002, $8100, $0000
    dw $0001, $8180, $0080
    dw $000C, $8180, $0000
    dw $0001, $8120, $0020
    dw $0004, $8120, $0000
    dw $0001, $8180, $0080
    dw $0007, $8180, $0000
    dw $0002, $8080, $0000
    dw $0001, $8280, $0200
    dw $000F, $8280, $0000
    dw $0001, $8200, $0000
    dw $0001, $8240, $0040
    dw $0004, $8240, $0000
    dw $0001, $8200, $0000
    dw $0001, $8280, $0080
    dw $000E, $8280, $0000
    dw $0001, $8180, $0100
    dw $000B, $8180, $0000
    dw $0001, $81A0, $0020
    dw $0001, $81A0, $0000
    dw $0003, $8120, $0000
    dw $0001, $8100, $0000
    dw $0001, $8180, $0080
    dw $0022, $8180, $0000
    dw $0001, $8140, $0040
    dw $0002, $8140, $0000
    dw $0001, $8180, $0080
    dw $0006, $8180, $0000
    dw $0001, $8280, $0200
    dw $0007, $8280, $0000
    dw $0001, $82C0, $0040
    dw $0004, $82C0, $0000
    dw $0001, $84C0, $0400
    dw $0004, $84C0, $0000
    dw $0001, $8200, $0200
    dw $0003, $8200, $0000
    dw $0001, $8280, $0080
    dw $0007, $8280, $0000
    dw $0001, $8880, $0800
    dw $0007, $8880, $0000
    dw $0001, $88C0, $0040
    dw $0009, $88C0, $0000
    dw $0001, $8480, $0400
    dw $000E, $8480, $0000
    dw $0001, $8200, $0200
    dw $0001, $8200, $0000
    dw $0001, $8220, $0020
    dw $0001, $8220, $0000
    dw $0008, $8020, $0000
    dw DemoInstruction_Delete
} ; climb

DemoInput_ocean:
{
    dw $0016, $0000, $0000
    dw $0001, $8000, $8000
    dw $0015, $8000, $0000
    dw $0001, $8200, $0200
    dw $0021, $8200, $0000
    dw $0001, $8280, $0080
    dw $0012, $8280, $0000
    dw $000F, $8200, $0000
    dw $0058, $0200, $0000
    dw $0001, $8200, $8000
    dw $0068, $8200, $0000
    dw $0001, $8280, $0080
    dw $000B, $8280, $0000
    dw $0005, $8200, $0000
    dw $0001, $8280, $0080
    dw $001B, $8280, $0000
    dw $0001, $82C0, $0040
    dw $0002, $82C0, $0000
    dw $0001, $8240, $0000
    dw $0001, $8200, $0000
    dw $0002, $0200, $0000
    dw $0001, $0280, $0080
    dw $0001, $0280, $0000
    dw $0001, $8280, $8000
    dw $0004, $8280, $0000
    dw $0001, $8680, $0400
    dw $0002, $8680, $0000
    dw $0005, $8480, $0000
    dw $0004, $8080, $0000
    dw $0001, $8480, $0400
    dw $0001, $8480, $0000
    dw $0001, $8680, $0200
    dw $0001, $8680, $0000
    dw $0002, $8280, $0000
    dw $0008, $8200, $0000
    dw $0015, $0200, $0000
    dw DemoInstruction_Delete
} ; ocean

DemoInput_pseudo:
{
    dw $000F, $0000, $0000
    dw $0001, $8000, $8000
    dw $0001, $8040, $0040
    dw $0029, $8040, $0000
    dw $0001, $8140, $0100
    dw $0039, $8140, $0000
    dw $0001, $81C0, $0080
    dw $001A, $81C0, $0000
    dw $0001, $85C0, $0400
    dw $0002, $84C0, $0000
    dw $0003, $8440, $0000
    dw $0001, $8540, $0100
    dw $0030, $8140, $0000
    dw $0001, $81C0, $0080
    dw $0004, $81C0, $0000
    dw $000E, $8180, $0000
    dw $003E, $0180, $0000
    dw $0001, $0080, $0000
    dw $0001, $0280, $0200
    dw $0003, $0200, $0000
    dw $0001, $0280, $0080
    dw $0002, $0280, $0000
    dw $0001, $0180, $0100
    dw $0003, $0180, $0000
    dw $0005, $0100, $0000
    dw $0001, $0120, $0020
    dw $0001, $0120, $0000
    dw $0001, $8120, $8000
    dw $0007, $8120, $0000
    dw $002C, $8100, $0000
    dw $0001, $8180, $0080
    dw $0006, $8180, $0000
    dw $0001, $8280, $0200
    dw $001A, $8280, $0000
    dw $0001, $8080, $0000
    dw $0001, $8180, $0100
    dw $001A, $8180, $0000
    dw $0001, $8580, $0400
    dw $0001, $8580, $0000
    dw $0002, $8480, $0000
    dw $0001, $8580, $0100
    dw $0002, $8500, $0000
    dw $000A, $8100, $0000
    dw $0001, $8180, $0080
    dw $0004, $8180, $0000
    dw $0002, $8100, $0000
    dw $0001, $8140, $0040
    dw $0004, $8140, $0000
    dw $0009, $8100, $0000
    dw $0007, $8000, $0000
    dw $0001, $8100, $0100
    dw $0010, $8100, $0000
    dw DemoInstruction_Delete
} ; pseudo

DemoInput_everest:
{
    dw $0028, $0000, $0000
    dw $0001, $8000, $8000
    dw $000B, $8000, $0000
    dw $0001, $8100, $0100
    dw $003B, $8100, $0000
    dw $0001, $8180, $0080
    dw $0019, $8180, $0000
    dw $0001, $8580, $0400
    dw $0001, $8580, $0000
    dw $0001, $8480, $0000
    dw $0004, $8400, $0000
    dw $0001, $8500, $0100
    dw $0001, $8500, $0000
    dw $0032, $8100, $0000
    dw $0001, $8180, $0080
    dw $0018, $8180, $0000
    dw $0003, $8100, $0000
    dw $0001, $0100, $0000
    dw $0001, $8000, $8000
    dw $0002, $8000, $0000
    dw $0001, $8080, $0080
    dw $0014, $8080, $0000
    dw $0002, $8000, $0000
    dw $0003, $0000, $0000
    dw $0001, $8000, $8000
    dw $0002, $8000, $0000
    dw $0001, $8080, $0080
    dw $0015, $8080, $0000
    dw $0003, $8000, $0000
    dw $0002, $0000, $0000
    dw $0001, $8000, $8000
    dw $0002, $8000, $0000
    dw $0001, $8080, $0080
    dw $0003, $8080, $0000
    dw $0001, $8090, $0010
    dw $000E, $8090, $0000
    dw $0001, $80D0, $0040
    dw $0001, $C0D0, $4000
    dw $0004, $C0D0, $0000
    dw $0001, $80D0, $0000
    dw $000F, $8090, $0000
    dw $0001, $8490, $0400
    dw $0011, $8490, $0000
    dw $0001, $8480, $0000
    dw DemoInstruction_Delete
} ; everest

DemoInput_alphapb:
{
    dw $0018, $0000, $0000
    dw $0001, $8000, $8000
    dw $000C, $8000, $0000
    dw $0001, $8100, $0100
    dw $0020, $8100, $0000
    dw $0001, $8000, $0000
    dw $0001, $8200, $0200
    dw $0016, $8200, $0000
    dw $0001, $8280, $0080
    dw $0023, $8280, $0000
    dw $0001, $8180, $0100
    dw $0005, $8180, $0000
    dw $0001, $8280, $0200
    dw $0031, $8280, $0000
    dw $0023, $8200, $0000
    dw $0002, $8000, $0000
    dw $0001, $8100, $0100
    dw $001B, $8100, $0000
    dw $0001, $8180, $0080
    dw $0006, $8180, $0000
    dw $0001, $8580, $0400
    dw $0001, $85C0, $0040
    dw $0001, $C5C0, $4000
    dw $0005, $C4C0, $0000
    dw $001F, $8480, $0000
    dw $0001, $8680, $0200
    dw $0006, $8280, $0000
    dw $0001, $8480, $0400
    dw $0001, $8480, $0000
    dw $0001, $8180, $0100
    dw $0022, $8180, $0000
    dw $0006, $0180, $0000
    dw $0001, $8100, $8000
    dw $0003, $8100, $0000
    dw DemoInstruction_Delete
} ; alphapb

DemoInput_tasdance:
{
    dw DemoInstruction_ModifyWRAM, !SAMUS_MOONWALK, $0001
    dw $001C, $8020, $0000    ; .......B..l.
    dw $0001, $8060, $0000    ; .......BX.l.
    dw $0001, $8160, $0000    ; ...R...BX.l.
    dw $0002, $81E0, $0000    ; ...R...BXAl.
    dw $0002, $81A0, $0000    ; ...R...B.Al.
    dw $0002, $8120, $0000    ; ...R...B..l.
    dw $0001, $8020, $0000    ; .......B..l.
    dw $0006, $8220, $0000    ; ..L....B..l.
    dw $0001, $8020, $0000    ; .......B..l.
    dw $0006, $8120, $0000    ; ...R...B..l.
    dw $0001, $8020, $0000    ; .......B..l.
    dw $0003, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $000A, $8120, $0000    ; ...R...B..l.
    dw $0004, $8220, $0000    ; ..L....B..l.
    dw $0003, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0001, $8220, $0000    ; ..L....B..l.
    dw $0006, $8020, $0000    ; .......B..l.
    dw $0001, $8120, $0000    ; ...R...B..l.
    dw $000D, $8220, $0000    ; ..L....B..l.
    dw $0002, $8120, $0000    ; ...R...B..l.
    dw $0004, $8020, $0000    ; .......B..l.
    dw $0004, $8220, $0000    ; ..L....B..l.
    dw $0003, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8120, $0000    ; ...R...B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $0005, $8220, $0000    ; ..L....B..l.
    dw $0002, $8020, $0000    ; .......B..l.
    dw $000C, $8120, $0000    ; ...R...B..l.
    dw $0003, $A020, $0000    ; ....s..B..l.
    dw $0004, $8220, $0000    ; ..L....B..l.
    dw $000B, $8200, $0000    ; ..L....B....
    dw $0001, $8400, $0000    ; .D.....B....
    dw $0007, $8240, $0000    ; ..L....BX...
    dw $0007, $8040, $0000    ; .......BX...
    dw $0008, $8140, $0000    ; ...R...BX...
    dw $0011, $8040, $0000    ; .......BX...
    dw $000E, $8140, $0000    ; ...R...BX...
    dw $000B, $8040, $0000    ; .......BX...
    dw $0001, $8240, $0000    ; ..L....BX...
    dw $0004, $8040, $0000    ; .......BX...
    dw $0001, $8240, $0000    ; ..L....BX...
    dw $0005, $8440, $0000    ; .D.....BX...
    dw $004E, $8040, $0000    ; .......BX...
    dw DemoInstruction_Delete
} ; tasdance
endif
print pc, " demos end"
