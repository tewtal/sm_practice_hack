
%startfree(82)

preset_load:
{
    PHP
    LDA !MUSIC_DATA : STA !SRAM_MUSIC_DATA
    LDA !MUSIC_TRACK : STA !SRAM_MUSIC_TRACK

    JSL $809E93  ; Clear timer RAM
    JSR $819B    ; Initialize IO registers
    JSR $82E2    ; Load standard BG3 tiles and sprite tiles, clear tilemaps
    JSR $82C5    ; Load initial palette
if !FEATURE_PAL
    JSL $91DF72
else             ; Initialize Samus
    JSL $91E00D
endif

    JSL preset_load_preset

    JSL preset_start_gameplay  ; Start gameplay

    ; Fix Phantoon and Draygon rooms
    LDA !ROOM_ID : CMP.w #ROOM_PhantoonRoom : BEQ .fixBG2
    CMP.w #ROOM_DraygonRoom : BNE .doneBG2
  .fixBG2
    JSL preset_clear_BG2_tilemap

  .doneBG2
    JSL $809A79  ; HUD routine when game is loading
    JSL $809B44  ; Handle HUD tilemap
if !FEATURE_VANILLAHUD
else
    JSL ih_update_hud_code
endif
    JSL $90AD22  ; Reset projectile data

    TDC : STA !ram_load_preset
    TAX : LDY #$0020
  .paletteLoop
    ; Target Samus' palette = [Samus' palette]
    LDA $7EC180,X : STA $7EC380,X
    INX #2
    DEY #2 : BNE .paletteLoop

    TDC : STA $7EC400 ; door fade timer
    STA !PAUSE_MENU_INDEX ; Clear pause menu index

    ; Screen fade delay/counter = 1
    INC
    STA !SCREEN_FADE_DELAY : STA !SCREEN_FADE_COUNTER

    ; Enable NMI
    %a8()
    LDA !REG_4200_NMI : ORA #$80 : STA $4200 : STA !REG_4200_NMI
    %a16()

    LDA #$8000
    TSB $198D ; Enable enemy projectiles
    TSB $1C23 ; Enable PLMs
    TSB $1E79 ; Enable palette FX objects
    TSB $18B0 ; Enable HDMA objects
    TSB $1EF1 ; Enable animated tile objects
    JSL $908E0F ; Set liquid physics type

    ; Transfer enemy tiles to VRAM and initialize enemies
    LDA #$0006 : STA $0DA0 ; loop counter
  .loopEnemyVRAM
    LDA !SAMUS_Y : PHA
if !FEATURE_PAL
    JSL $A08CE7
else ; Transfer enemy tiles to VRAM and initialize enemies
    JSL $A08CD7
endif
    LDA !ELEVATOR_STATUS : BEQ .noElevator
    TDC
  .loopElevator
    TAX : LDA !ENEMY_ID,X : CMP #$D73F : BEQ .loopElevatorFound
    TXA : CLC : ADC #$0040 : CMP #$0800 : BNE .loopElevator
  .noElevator
    PLA
    BRA .loopNext
  .loopElevatorFound
    PLA : STA !SAMUS_Y : CLC : ADC #$001A : STA !ENEMY_Y,X
  .loopNext
    JSL $808338  ; Wait for NMI
    DEC $0DA0
    BPL .loopEnemyVRAM

    ; Create Ceres elevator projectiles if needed
    LDA !GAMEMODE : CMP #$001F : BNE .doneCeresProjectiles
    LDY #$A387 : JSL $868027
    LDY #$A395 : JSL $868027
  .doneCeresProjectiles

    LDA #$0008 : STA !GAMEMODE

    ; Set full brightness and forced blank off
    %a8() : LDA #$0F : STA !REG_2100_BRIGHTNESS : %ai16()

    TDC : TAX
    LDY #$0200
  .secondPaletteLoop
    ; Palettes = [target palettes]
    LDA $7EC200,X : STA $7EC000,X
    INX #2
    DEY #2 : BNE .secondPaletteLoop

if !FEATURE_PAL
    JSL $91DE1F
else             ; Fix Samus' palette
    JSL $91DEBA
endif

    ; Re-upload OOB viewer tiles if needed
    LDA !ram_sprite_feature_flags : BIT !SPRITE_OOB_WATCH : BEQ .done_upload_sprite_oob_tiles
    JSL upload_sprite_oob_tiles

  .done_upload_sprite_oob_tiles
    JSL reset_all_counters
    STZ !DOOR_TRANSITION_FLAG_ELEVATOR
    STZ !DOOR_TRANSITION_FLAG_ENEMY

    ; Clear minimap tiles
    LDA !sram_preset_options : BIT !PRESETS_CLEAR_MAP_TILES : BEQ .enemies
    JSL game_clear_minimap_routine

  .enemies
    ; Clear enemies if not in certain rooms
    LDA !ROOM_ID : CMP.w #ROOM_BombTorizoRoom : BEQ .done
    CMP.w #ROOM_MotherBrainRoom : BEQ .set_mb_state
    LDA !sram_preset_options : BIT !PRESETS_PRESERVE_ENEMIES : BNE .done
    LDA !ELEVATOR_STATUS : BNE .done
    JSL clear_all_enemies
    BRA .done

  .set_mb_state
    ; If glass is broken, assume we should skip MB1
    LDA $7ED820 : BIT #$0004 : BEQ .done
    ; Set health to 1 as a hint this was done by a preset
    LDA #$0001 : STA !ENEMY_HP+$40
    ; Reset segment timer now
    TDC : STA !ram_reset_segment_later
    STA !ram_seg_rt_frames : STA !ram_seg_rt_seconds
    STA !ram_seg_rt_minutes

  .done
    PLP
    RTL
}

preset_load_destination_state_and_tiles:
{
    ; Original logic from $82E76B
    PHP : %ai16()
    PHB : PEA $8F00 : PLB : PLB

    STZ !ELEVATOR_PROPERTIES
    STZ !ELEVATOR_STATUS

    JSR $DDF1 ; Load destination room CRE bitset
    JSR $DE12 ; Load door header
    JSR $DE6F ; Load room header
    JSR $DEF2 ; Load state header

    ; Initialize area map collected
    LDX !AREA_ID : LDA $7ED908,X
    AND #$00FF : STA !AREA_MAP_COLLECTED

    ; Clear elevator if turned off in preset options
    LDA !sram_preset_options : BIT !PRESETS_ELEVATOR_OFF : BEQ .load
    STZ !ELEVATOR_PROPERTIES
    STZ !ELEVATOR_STATUS

  .load
if !RAW_TILE_GRAPHICS
    JML load_raw_tile_graphics
else
    JMP $E78C
endif
}

if !RAW_TILE_GRAPHICS
; This is similar to $82E97C except we overwrite the door dependent transfer to VRAM
preset_load_library_background:
{
    PHP : %ai16()
    PHB
    JSL $80A29C ; Clear FX tilemap
    LDA $1964 : BEQ .done_fx

    STA $4312 ; src addr
    LDA #$5BE0 : STA $2116 ; VRAM addr
    LDA #$1801 : STA $4310 ; VRAM write, word
    LDA #$008A : STA $4314 ; src bank
    LDA #$0840 : STA $4315 ; size
    %a8()
    LDA #$80 : STA $2115 ; inc on low byte
    LDA #$02 : STA $420B ; initiate DMA channel 1
    %a16() : CLC

  .done_fx
    PEA $8F00 : PLB : PLB
    %a16()
    LDX !STATE_POINTER
    LDY $0016,X : BPL .done

  .load_loop
    LDX $0000,Y : INY #2
    JSR (preset_load_background_jump_table,X)
    BCC .load_loop

  .done
    PLB : PLP : RTL
}

preset_load_background_jump_table:
    dw $E9E5, $E9F9, $EA2D, $EA4E, $EA66, $EA56, $EA5E, preset_start_transfer_to_vram

preset_start_transfer_to_vram:
    JML preset_transfer_to_vram

preset_end_transfer_to_vram:
    RTS
endif

EnsureSamusIsDrawn_long:
; called from menu.asm
{
    JSR $DFC7 ; Ensures Samus is drawn every frame
    RTL
}

%endfree(82)


%startfree(83)

clear_all_enemies:
{
    LDA.w #ClearEnemiesTable>>16 : STA $C3
    TDC
  .loop
    TAX : LDA !ENEMY_ID,X
    SEC : ROR : ROR : STA $C1
    LDA [$C1] : BEQ .done_clearing
    LDA !ENEMY_PROPERTIES : ORA #$0200 : STA !ENEMY_PROPERTIES,X
  .done_clearing
    TXA : CLC : ADC #$0040 : CMP #$0800 : BNE .loop
    STZ !ENEMY_KILLS_UNLOCK ; unlock grey doors that require killing enemies
    RTL
}

reset_all_counters:
{
    TDC
    STZ !IGT_FRAMES : STZ !IGT_SECONDS : STZ !IGT_MINUTES : STZ !IGT_HOURS
    STA !ram_seg_rt_frames : STA !ram_seg_rt_seconds : STA !ram_seg_rt_minutes
    STA !ram_realtime_room : STA !ram_last_realtime_room
    STA !ram_gametime_room : STA !ram_last_gametime_room
    STA !ram_last_room_lag : STA !ram_last_door_lag_frames : STA !ram_transition_counter
    RTL
}

startgame_seg_timer:
{
    ; seg timer will be 1:50 (1 second, 50 frames) behind by the time it appears
    ; 20 frames more if the file was new
    ; initializing to 1:50 for now
    TDC : STA !ram_seg_rt_minutes
if !FEATURE_PAL
    INC : INC : STA !ram_seg_rt_seconds
    LDA #$000A : STA !ram_seg_rt_frames
else
    INC : STA !ram_seg_rt_seconds
    LDA #$0032 : STA !ram_seg_rt_frames
endif
    JML $808924 ; overwritten code
}

preset_load_preset:
{
    PHB
    TDC : STA !ram_room_has_set_rng
    STZ !SAMUS_ITEM_SELECTED : STZ !SAMUS_AUTO_CANCEL
    LDA !SAFEWORD : STA !LAYER2_X ; Load garbage into Layer 2 X position

    ; check if segment timer should be reset now or later
    LDA !sram_preset_options : BIT !PRESETS_AUTO_SEGMENT_OFF : BNE .check_load
    LDA #$FFFF : STA !ram_reset_segment_later

  .check_load
    ; check if custom preset is being loaded
    LDA !ram_custom_preset : BEQ .category_preset

  .custom_preset
    JSL custom_preset_load
    LDA !SAFEWORD : STA !sram_last_preset
    BRA .done

  .category_preset
    LDA !ram_load_preset : CMP !SAFEWORD : BEQ .custom_preset
    JSR category_preset_load

  .done
    PLB
    RTL
}

category_preset_load:
{
    ; Get offset into preset data table
    LDA !sram_preset_category : STA $C3
    ASL : CLC : ADC $C3 : TAX

    ; Get starting preset data bank into $C5
    INX : LDA.l category_preset_data_table,X : STA $C4 : DEX

    ; Get preset address to load into $C3
    LDA !ram_load_preset : STA !sram_last_preset
    STA $C3 : STA !CATEGORY_PRESET_STACK

    ; Get start of preset data into $C1
    LDA.l category_preset_data_table,X : LDX #$0000 : STA $C1

    ; If start of preset data is greater than preset address,
    ; then our preset address is in the next bank
    CMP $C3 : BCC .buildLoop : BEQ .buildLoop
    INC $C5

  .buildLoop
    ; Build list of presets to traverse
    LDA [$C3] : BEQ .traversePrep
    INX #2 : STA !CATEGORY_PRESET_STACK,X
    CMP $C3 : STA $C3 : BCC .buildLoop
    ; We just crossed back into the starting bank
    DEC $C5
    BRA .buildLoop

  .traversePrep
    ; If this is a map category, then clear map data
    LDA $C1 : CMP.w #preset_100map_bombs_ceres_elevator : BNE .setBanks
    LDA $C5 : AND #$00FF : CMP.w #preset_100map_bombs_ceres_elevator>>16 : BNE .setBanks

    PHX : LDX #$00FE : TDC
  .clearMapDataLoop
    STA !MAP_TILES_EXPLORED,X
    STA !MAP_TILES_EXPLORED_CRATERIA,X
    STA !MAP_TILES_EXPLORED_BRINSTAR,X
    STA !MAP_TILES_EXPLORED_NORFAIR,X
    STA !MAP_TILES_EXPLORED_WRECKED_SHIP,X
    STA !MAP_TILES_EXPLORED_MARIDIA,X
    STA !MAP_TILES_EXPLORED_TOURIAN,X
    DEX #2
    BPL .clearMapDataLoop
    PLX

  .setBanks
    ; Set bank to read data from
    STZ $00 : %a8() : LDA $C5 : PHA : PLB
    ; Set bank to store data to
    LDA #$7E : STA $C5 : %a16()

  .crossBankTraverseLoop
    ; Now traverse from the first preset until the last one
    LDA !CATEGORY_PRESET_STACK,X : TAY : CMP $C1 : BCC .incBankInnerLoop
    INY #2
    BRA .crossBankLoadAddr

    ; For each preset, load and store address and value pairs
  .crossBankInnerLoop
    STA $C3 : INY #2
    CPY #$0000 : BEQ .incBankLoadValue
    LDA ($00),Y : STA [$C3] : INY #2

  .crossBankLoadAddr
    CPY #$0000 : BEQ .incBankLoadAddr
    LDA ($00),Y : CMP #$FFFF : BNE .crossBankInnerLoop

    DEX #2 : BPL .crossBankTraverseLoop
    RTS

  .incBankInnerLoop
    %a8() : PHB : PLA : INC : PHA : PLB : %a16()
    INY #2
    BRA .simpleLoadAddr

  .incBankLoadAddr
    %a8() : PHB : PLA : INC : PHA : PLB : %a16()
    LDY #$8000
    BRA .simpleLoadAddr

  .incBankLoadValue
    %a8() : PHB : PLA : INC : PHA : PLB : %a16()
    LDY #$8000
    BRA .simpleLoadValue

  .simpleTraverseLoop
    ; Continue traversing from the first preset until the last one
    LDA !CATEGORY_PRESET_STACK,X : TAY : INY #2
    BRA .simpleLoadAddr

    ; For each preset, load and store address and value pairs
  .simpleInnerLoop
    STA $C3 : INY #2
  .simpleLoadValue
    LDA ($00),Y : STA [$C3] : INY #2
  .simpleLoadAddr
    LDA ($00),Y : CMP #$FFFF : BNE .simpleInnerLoop

    DEX #2 : BPL .simpleTraverseLoop
    RTS
}

category_preset_data_table:
    dl preset_kpdr21_crateria_ceres_elevator
    dl preset_kpdr22_crateria_ceres_elevator
    dl preset_kpdr23_crateria_ceres_elevator
    dl preset_kpdr25_crateria_ceres_elevator
    dl preset_prkd19_crateria_ceres_elevator
    dl preset_prkd20_crateria_ceres_elevator
    dl preset_pkrd_crateria_ceres_elevator
    dl preset_gtclassic_crateria_ceres_elevator
    dl preset_gtmax_crateria_ceres_elevator
    dl preset_100early_crateria_ceres_elevator
    dl preset_hundo_bombs_ceres_elevator
    dl preset_100map_bombs_ceres_elevator
    dl preset_14ice_crateria_ceres_elevator
    dl preset_14speed_crateria_ceres_elevator
    dl preset_rbo_bombs_ceres_elevator
    dl preset_suitless_bombs_ceres_elevator
    dl preset_ngplasma_ceres_station_ceres_elevator
    dl preset_nghyper_ceres_station_ceres_elevator
    dl preset_nintendopower_crateria_ceres_elevator
    dl preset_allbosskpdr_crateria_ceres_elevator
    dl preset_allbosspkdr_crateria_ceres_elevator
    dl preset_allbossprkd_crateria_ceres_elevator

; This method is very similar to $80A07B (start gameplay)
preset_start_gameplay:
{
    PHP
    PHB : PHK : PLB ; DB = $80
    %ai16()
    SEI ; Disable IRQ
    STZ $420B ; Disable all (H)DMA
    STZ $07E9 ; Scrolling finished hook = 0
    STZ !TIMER_STATUS

    JSL $828A9A  ; Reset sound queues

    LDA #$FFFF : STA !DISABLE_SOUNDS ; Disable sounds

    ; Disable NMI
    %a8()
    LDA !REG_4200_NMI : AND #$7F : STA !REG_4200_NMI : STA $4200
    %a16()

    ; Disable horizontal and vertical timer interrupts
    LDA #$0030 : TRB !REG_4200_NMI

    JSL preset_load_destination_state_and_tiles
    JSL $878016 ; Clear animated tile objects
    JSL $88829E ; Wait until the end of a v-blank and clear (H)DMA enable flags

    ; Set Samus last pose same as current pose if not shinesparking
    LDA !SAMUS_POSE_DIRECTION : STA !SAMUS_PREVIOUS_POSE_DIRECTION
    STA !SAMUS_LAST_DIFFERENT_POSE_DIRECTION
    LDA !SAMUS_POSE : CMP #$00C9 : BMI .storePreviousPose
    CMP #$00CF : BPL .storePreviousPose
    ; Set timer type to shinespark
    LDA #$0006 : STA !SAMUS_SHINE_TIMER_TYPE
    ; Set timer very high in case player holds inputs before spark moves
    LDA #$7FFF : STA !SAMUS_SHINE_TIMER
    ; Clear previous pose
    TDC
  .storePreviousPose
    STA !SAMUS_PREVIOUS_POSE : STA !SAMUS_LAST_DIFFERENT_POSE

    ; Clear potential pose flags
    TDC : STA !SAMUS_POTENTIAL_POSE_FLAGS
    STA !SAMUS_POTENTIAL_POSE_FLAGS+2
    STA !SAMUS_POTENTIAL_POSE_FLAGS+4

    ; Set potential pose values to FFFF
    DEC : STA !SAMUS_POTENTIAL_POSE_VALUES
    STA !SAMUS_POTENTIAL_POSE_VALUES+2
    STA !SAMUS_POTENTIAL_POSE_VALUES+4

    ; Set loading game state for Ceres
    TDC : STA !GAMEMODE
    LDA #$001F : STA !LOADING_GAME_STATE
    ; Set delay for first falling tile in Ceres
    LDA #$0022 : STA $07E1
    LDA !AREA_ID : CMP #$0006 : BEQ .ceresLoadGameState
    ; Set loading game state for Zebes
    LDA #$0005 : STA !LOADING_GAME_STATE
    LDA !SAMUS_POSE : BNE .endLoadGameState
    LDA !ROOM_ID : CMP.w #ROOM_LandingSite : BNE .endLoadGameState
    ; If default pose at landing site then assume we are arriving on Zebes
    LDA #$0022 : STA !LOADING_GAME_STATE
    LDA #$0400 : STA !LAYER1_X : STA !LAYER1_Y
    LDA #$0481 : STA !SAMUS_X : LDA #$0471 : STA !SAMUS_Y
  .lockLoadGameState
if !FEATURE_PAL
    LDA #$E8CA : STA !SAMUS_LOCKED_HANDLER ; Lock Samus
    LDA #$E8D9 : STA !SAMUS_MOVEMENT_HANDLER ; Lock Samus
else
    LDA #$E8CD : STA !SAMUS_LOCKED_HANDLER ; Lock Samus
    LDA #$E8DC : STA !SAMUS_MOVEMENT_HANDLER ; Lock Samus
endif
    BRA .endLoadGameState
  .ceresLoadGameState
    LDA !SAMUS_POSE : BNE .endLoadGameState
    LDA !DOOR_ID : CMP #$AB58 : BNE .endLoadGameState
    LDA #$0080 : STA !SAMUS_X
    STZ !SAMUS_Y
    STZ !SAMUS_X_SUBPX : STZ !SAMUS_Y_SUBPX
    LDA #$001F : STA !GAMEMODE
    BRA .lockLoadGameState
  .endLoadGameState

    ; If on elevator then place Samus on top of elevator
    LDA !ELEVATOR_PROPERTIES : BEQ .doneElevator
    LDA !SAMUS_POSE : BEQ .elevatorLoopPrep
    CMP #$009B : BNE .clearElevatorStatus
  .elevatorLoopPrep
    LDX !ENEMY_POPULATION
  .elevatorLoop
    LDA $A10000,X : CMP #$FFFF : BEQ .clearElevatorStatus
    CMP #$D73F : BEQ .elevatorLoopFound
    TXA : CLC : ADC #$0010 : TAX
    BRA .elevatorLoop

  .elevatorLoopFound
    LDA $A10002,X : STA !SAMUS_X
    LDA $A1000E,X : SEC : SBC #$001A : STA !SAMUS_Y
    STZ !SAMUS_X_SUBPX : STZ !SAMUS_Y_SUBPX
    LDA !DOOR_DESTINATION_X : STA !LAYER1_X
    LDA !DOOR_DIRECTION : AND #$0003 : CMP #$0003 : BEQ .elevatorMovingUp
    STZ !ELEVATOR_DIRECTION
    LDA #elevator_state_handler : STA !SAMUS_MOVEMENT_HANDLER
    LDA !sram_preset_options : BIT !PRESETS_ELEVATOR_LONG : BNE .longElevator
    LDA !DOOR_DESTINATION_Y : CLC : ADC #$01AA : STA !LAYER1_Y
    LDA !SAMUS_Y : CLC : ADC #$021A : STA !SAMUS_Y
    BRA .elevatorLockSamus

  .clearElevatorStatus
    STZ !ELEVATOR_PROPERTIES
    STZ !ELEVATOR_STATUS
  .doneElevator
    LDA !LOADING_GAME_STATE : CMP #$0022 : BEQ .doneLockUnlockSamus
    LDA !GAMEMODE : CMP #$001F : BEQ .doneLockUnlockSamus
    LDA #$E695 : STA !SAMUS_LOCKED_HANDLER   ; Unlock Samus
    LDA #$E725 : STA !SAMUS_MOVEMENT_HANDLER ; Unlock Samus
    BRA .doneLockUnlockSamus

  .elevatorMovingUp
    LDA !DOOR_DESTINATION_Y : CLC : ADC #$0020 : STA !LAYER1_Y
    LDA #$8000 : STA !ELEVATOR_DIRECTION
if !FEATURE_PAL
    LDA #$E8D9 : STA !SAMUS_MOVEMENT_HANDLER
else
    LDA #$E8DC : STA !SAMUS_MOVEMENT_HANDLER
endif
    BRA .elevatorLockSamus

  .longElevator
    LDA !DOOR_DESTINATION_Y : STA !LAYER1_Y
    LDA !SAMUS_Y : SEC : SBC #$0017 : STA !SAMUS_Y
  .elevatorLockSamus
    LDA #$0002 : STA !ELEVATOR_STATUS
    LDA #$E713 : STA !SAMUS_LOCKED_HANDLER
if !FEATURE_PAL
    LDA #$EC11 : STA !SAMUS_DRAW_HANDLER
else
    LDA #$EC14 : STA !SAMUS_DRAW_HANDLER
endif
  .doneLockUnlockSamus

    ; Set Samus last position same as current position
    LDA !SAMUS_X : STA !SAMUS_PREVIOUS_X
    LDA !SAMUS_X_SUBPX : STA !SAMUS_PREVIOUS_X_SUBPX
    LDA !SAMUS_Y : STA !SAMUS_PREVIOUS_Y
    LDA !SAMUS_Y_SUBPX : STA !SAMUS_PREVIOUS_Y_SUBPX

    ; Preserve layer 2 values we may have loaded from presets
    LDA !LAYER2_Y : PHA
    LDA !LAYER2_X : PHA

    JSL $8882C1 ; Initialize special effects for new room

    ; Clear PLMs
    LDX #$004E
  .clearPLMLoop
    STZ !PLM_ID,X
    DEX #2 : BPL .clearPLMLoop
    STZ !PLM_GFX_INDEX

    ; Clear enemy projectiles
    LDX #$0022
  .clearEnemyProjectileLoop
    STZ !ENEMY_PROJ_ID,X
    DEX #2 : BPL .clearEnemyProjectileLoop

    ; Clear palette FX objects
    LDX #$000E
  .clearFXPaletteLoop
    STZ !PALETTE_FX_ID,X
    DEX #2 : BPL .clearFXPaletteLoop

    JSL Randomize_Preset_Equipment
    JSL $90AC8D ; Update beam graphics
    JSL $82E139 ; Load target colours for common sprites, beams and slashing enemies / pickups
if !FEATURE_PAL
    JSL $A08A2E
else ; Load enemies
    JSL $A08A1E
endif
    JSL $80A23F ; Clear BG2 tilemap
if !RAW_TILE_GRAPHICS
    JSL preset_load_level
else
    JSL $82E7D3  ; Load level data, CRE, tile table, scroll data, create PLMs and execute door ASM and room setup ASM
endif

    JSL preset_scroll_fixes

    LDA !sram_preset_options : BIT !PRESETS_CLOSE_BLUE_DOORS : BNE .doneOpeningDoors
    LDA !SAMUS_POSE : BEQ .doneOpeningDoors ; facing forward
    CMP #$009B : BEQ .doneOpeningDoors ; facing forward with suit
    JSR preset_open_all_blue_doors
  .doneOpeningDoors

    JSL $89AB82  ; Load FX
if !RAW_TILE_GRAPHICS
    JSL preset_load_library_background
else
    JSL $82E97C  ; Load library background
endif

    ; Pull layer 2 values, and use them if they are valid
    PLA : CMP !SAFEWORD : BEQ .calculateLayer2
    STA !LAYER2_X
    ; Calculator layer 2 if on elevator or landing on Zebes
    LDA !ELEVATOR_STATUS : BNE .calculateLayer2
    LDA !LOADING_GAME_STATE : CMP #$0022 : BEQ .calculateLayer2
    PLA : STA !LAYER2_Y
    JSL preset_bg_offsets
    BRA .doneLayerBGOffsets

  .calculateLayer2
    PLA ; Pull other layer 2 value but do not use it
    JSL preset_layer_bg_offsets

  .doneLayerBGOffsets
    JSL $80A176 ; Display the viewable part of the room

    STZ !DISABLE_SOUNDS ; Enable sounds
    JSL stop_all_sounds

    ; Clear music queue
    STZ !MUSIC_QUEUE_TIMERS : STZ !MUSIC_QUEUE_TIMERS+$2
    STZ !MUSIC_QUEUE_TIMERS+$4 : STZ !MUSIC_QUEUE_TIMERS+$6
    STZ !MUSIC_QUEUE_TIMERS+$8 : STZ !MUSIC_QUEUE_TIMERS+$A
    STZ !MUSIC_QUEUE_TIMERS+$C : STZ !MUSIC_QUEUE_TIMERS+$E
    STZ !MUSIC_QUEUE_NEXT : STZ !MUSIC_QUEUE_START
    STZ !MUSIC_ENTRY : STZ !MUSIC_TIMER

    ; If music fast off or preset off, treat music as already loaded
    LDA !sram_music_toggle : CMP #$0002 : BPL .doneMusic

    ; Compare to currently loaded music data
    LDA !SRAM_MUSIC_DATA : CMP !MUSIC_DATA : BEQ .doneLoadMusicData

    ; Clear track if necessary
    LDA !SRAM_MUSIC_TRACK : BEQ .loadMusicData
    TDC : JSL !MUSIC_ROUTINE

  .loadMusicData
    LDA !MUSIC_DATA : TAX
    LDA !SRAM_MUSIC_DATA : STA !MUSIC_DATA
    TXA : CLC : ADC #$FF00 : JSL !MUSIC_ROUTINE
    BRA .loadMusicTrack

  .doneLoadMusicData
    ; Compare to currently playing music
    LDA !SRAM_MUSIC_TRACK : CMP !MUSIC_TRACK : BEQ .doneMusic

  .loadMusicTrack
    LDA !MUSIC_TRACK : TAX
    LDA !SRAM_MUSIC_TRACK : STA !MUSIC_TRACK
    TXA : JSL !MUSIC_ROUTINE

  .doneMusic
    ; Enable NMI
    %a8()
    LDA !REG_4200_NMI : ORA #$80 : STA !REG_4200_NMI : STA $4200
    %a16()

    LDA #$0004 : STA !NEXT_IRQ_CMD   ; Set optional next interrupt to Main gameplay

    ; Enable horizontal and vertical timer interrupts
    STZ $4209
    LDA #$0098 : STA $4207
    LDA #$0030 : TSB !REG_4200_NMI
    CLI

    LDA #$9F55 : STA !SAMUS_X_SPEED_TABLE ; Set X speed table pointer
    STZ !HEALTH_BOMB_FLAG
    LDA !sram_healthalarm : CMP #$0004 : BNE .doneHealthAlarm
    LDA #$0002 : JSL $80914D
  .doneHealthAlarm
    STZ !MESSAGE_BOX_INDEX : STZ !SAVE_STATION_LOCKOUT
    STZ !DOOR_TRANSITION_FLAG_ELEVATOR : STZ !DOOR_TRANSITION_FLAG_ENEMY
    TDC : STA !ram_transition_flag
    JSL init_heat_damage_ram
    JSL init_physics_ram

    LDA #$E737 : STA !DOOR_FUNCTION_POINTER
if !RAW_TILE_GRAPHICS
    LDX !STATE_POINTER
    LDA $8F0018,X : CMP #$91C9 : BEQ .postPresetScrollingSky
    CMP #$91CE : BEQ .postPresetScrollingSky
    CMP #layout_landing_site_setup_asm : BEQ .postPresetScrollingSky
    CMP #layout_asm_westocean : BEQ .postPresetScrollingSky
    CMP #layout_asm_eastocean : BEQ .postPresetScrollingSky
    PLB : PLP
    RTL

  .postPresetScrollingSky
    JML layout_execute_setup_asm_execute
else
    PLB : PLP
    RTL
endif
}

preset_clear_BG2_tilemap:
{
    PHP : %ai16()

    ; Clear BG2 Tilemap
    LDA #$0338 : LDX #$07FE
  .loop
    STA $7E4000,X : STA $7E4800,X
    DEX #2 : BPL .loop

    ; Upload BG2 Tilemap
    %a8()
    LDA #$80 : STA $2100 ; enable forced blanking
    LDA #$04 : STA $210C ; BG2 starts at $4000 (8000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$4800 : STX $2116 ; VRAM address (8000 in vram)
    LDX #$4000 : STX $4302 ; Source offset
    LDA #$7E : STA $4304 ; Source bank
    LDX #$1000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    LDA #$0F : STA $2100 ; disable forced blanking
    PLP
    RTL
}

preset_open_all_blue_doors:
{
    PHP : PHB : PHX : PHY
    LDA #$8484 : STA $C3
    PHA : PLB : PLB

    ; First resolve all door PLMs where the door has previously been opened
    LDX #$004E
  .plmSearchLoop
    LDA !PLM_ID,X : BEQ .plmSearchDone
    LDY !PLM_INSTRUCTION_LIST_POINTER,X
    LDA $0000,Y : CMP #$8A72 : BEQ .plmDoorFound
  .plmSearchResume
    DEX #2 : BRA .plmSearchLoop

  .plmDoorFound
    LDA !PLM_ROOM_ARGUMENT,X : BMI .plmSearchResume
    PHX : JSL $80818E : LDA $7ED8B0,X : PLX
    AND !BITMASK : BEQ .plmSearchResume

    ; Door has been previously opened
    ; Execute the next PLM instruction to set the BTS as a blue door
    LDA $0002,Y : TAY
    LDA $0000,Y : CMP #$86BC : BEQ .plmDelete
    INY #2
    JSL preset_execute_plm_instruction

  .plmDelete
    STZ !PLM_ID,X
    BRA .plmSearchResume

  .plmSearchDone
    ; Now search all of the room BTS for doors
    LDA !ROOM_WIDTH_SCROLLS : STA $C7
    LDA !ROOM_WIDTH_BLOCKS : STA $C1 : ASL : STA $C3
    LDA !LEVEL_DATA_SIZE : LSR : TAY
    STZ $C5 : TDC
    %a8()
    LDA #$7F : PHA : PLB

  .btsSearchLoop
    LDA.w !LEVEL_BTS-1,Y : AND #$FC : CMP #$40 : BEQ .btsFound

  .btsContinue
    DEY : BNE .btsSearchLoop

    ; All blue doors opened
    PLY : PLX : PLB : PLP
    RTS

  .btsFound
    ; Convert BTS index to tile index
    ; Also verify this is a door and not a slope or half-tile
    %a16()
    TYA : ASL : TAX
    %a8()
    LDA.w !LEVEL_DATA-1,X : BIT #$30 : BNE .btsContinue

    ; If this door has a red scroll, then leave it closed
    ; Most of the work is to determine the scroll index
    %a16()
    TYA : DEC : LSR #4 : STA $004204
    %a8()
    LDA $C7 : STA $004206
    %a16()
    PHA : PLA : PHA : PLA
    LDA $004216 : STA $C8
    LDA $004214 : LSR #4
    %a8()
    STA $004202
    LDA $C7 : STA $004203
    PHA : PLA : TDC
    LDA $004216 : CLC : ADC $C8
    PHX : TAX : LDA !SCROLLS,X : PLX
    CMP #$00 : BEQ .btsContinue

    ; Check what type of door we need to open
    LDA.w !LEVEL_BTS-1,Y : BIT #$02 : BNE .btsCheckUpDown
    BIT #$01 : BEQ .btsFacingLeftRight
    LDA #$04 : STA $C6

  .btsFacingLeftRight
    %a16()
    LDA #$0082 : ORA $C5 : STA $0000,X
    TXA : CLC : ADC $C3 : TAX : LDA #$00A2 : ORA $C5 : STA $0000,X
    TXA : CLC : ADC $C3 : TAX : LDA #$08A2 : ORA $C5 : STA $0000,X
    TXA : CLC : ADC $C3 : TAX : LDA #$0882 : ORA $C5 : STA $0000,X
    TDC : %a8() : STA $C6 : STA.w !LEVEL_BTS-1,Y
    %a16() : TYA : CLC : ADC $C1 : TAX : TDC : %a8() : STA.w !LEVEL_BTS-1,X
    %a16() : TXA : CLC : ADC $C1 : TAX : TDC : %a8() : STA.w !LEVEL_BTS-1,X
    %a16() : TXA : CLC : ADC $C1 : TAX : TDC : %a8() : STA.w !LEVEL_BTS-1,X
    JMP .btsContinue

  .btsCheckUpDown
    BIT #$01 : BEQ .btsFacingUpDown
    LDA #$08 : STA $C6

  .btsFacingUpDown
    %a16()
    LDA #$0084 : ORA $C5 : STA $0006,X
    DEC : STA $0004,X
    ORA #$0400 : STA $0002,X
    INC : STA $0000,X
    TDC : %a8()
    STA $C6 : STA.w !LEVEL_BTS-1,Y
    STA.w !LEVEL_BTS,Y
    STA.w !LEVEL_BTS+1,Y
    STA.w !LEVEL_BTS+2,Y
    JMP .btsContinue
}

preset_execute_plm_instruction:
{
    ; A = Bank 84 PLM instruction to execute
    ; $C3 already set to $84
    STA $C1
    ; PLM instruction ends with an RTS, but we need an RTL
    ; Have the RTS return to $848031 which is an RTL
    PEA $8030
    JML [$00C1]
}

preset_room_setup_asm_fixes:
{
    ; Start with original logic
    PHP : PHB
    %ai16()
    LDX !STATE_POINTER
    LDA $0018,X : BEQ .end

    ; Check if this is scrolling sky
    CMP #$91C9 : BEQ .scrolling_sky
    CMP #$91CE : BEQ .scrolling_sky
    CMP #layout_landing_site_setup_asm : BEQ .scrolling_sky
    CMP #layout_asm_westocean : BEQ .scrolling_sky
    CMP #layout_asm_eastocean : BEQ .scrolling_sky

  .execute_setup_asm
    ; Resume execution
    JML layout_execute_setup_asm_execute

  .scrolling_sky
    ; If we got here through normal gameplay, allow scrolling sky
    LDA !GAMEMODE : CMP #$0006 : BEQ .execute_setup_asm
    CMP #$001F : BEQ .execute_setup_asm
    CMP #$0028 : BEQ .execute_setup_asm

if !RAW_TILE_GRAPHICS
    ; Defer scrolling sky asm until later
else
    ; Disable scrolling sky asm
    STZ !ROOM_MAIN_ASM_POINTER
    ; Clear layer 2 library bits (change 0181 to 0080)
    LDA #$0080 : STA $091B
endif

  .end
    PLB : PLP
    RTL
}

%endfree(83)


%startfree(80)

preset_layer_bg_offsets:
{
    JSR $A2F9 ; Calculate layer 2 X position
    JSR $A33A ; Calculate layer 2 Y position
    LDA !LAYER2_X : STA !BG2_X_OFFSET
    LDA !LAYER2_Y : STA !BG2_Y_OFFSET

    ; Fallthrough to bg offsets
    ; Also offsets should be set as they would be at the start of the room
    LDA !ELEVATOR_STATUS : BEQ preset_bg_offsets
    STZ !BG2_Y_OFFSET
    LDA !ROOM_ID : CMP #ROOM_MorphBallRoom : BNE preset_bg_offsets
    %a8() : LDA #$02 : STA !SCROLLS+$D : %a16()
}

preset_bg_offsets:
{
    LDA !ROOM_ID : CMP #ROOM_CeresElevatorRoom : BPL .bg1OffsetsSet
    TDC : STA !BG1_X_OFFSET : STA !BG1_Y_OFFSET

  .bg1OffsetsSet
    JSR $A37B    ; Calculate BG positions

    ; Fix BG2 Y offsets for rooms with scrolling sky
    ; Also fix rooms that need to be handled before door scroll
    LDA !ROOM_ID : CMP.w #ROOM_EastTunnel : BEQ .eastTunnel
    CMP.w #ROOM_PantsRoom : BEQ .pantsRoom
    CMP.w #ROOM_BelowBotwoonETank : BEQ .aqueductFarmsAndPitRoom
    CMP.w #ROOM_LandingSite : BEQ .bgOffsetsScrollingSky
    CMP.w #ROOM_WestOcean : BEQ .bgOffsetsScrollingSky
    CMP.w #ROOM_EastOcean : BEQ .bgOffsetsScrollingSky
    BRA .bgOffsetsCalculated

  .eastTunnel
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .bgOffsetsCalculated
    JSL layout_asm_easttunnel_external
    BRA .bgOffsetsCalculated

  .pantsRoom
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ .bgOffsetsCalculated
    JSL layout_asm_pants_external
    BRA .bgOffsetsCalculated

  .aqueductFarmsAndPitRoom
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_AREA_RANDO : BEQ .bgOffsetsCalculated
    JSL layout_asm_aqueductfarmsandpit_external
    BRA .bgOffsetsCalculated

  .bgOffsetsScrollingSky
    LDA !LAYER1_Y : STA !LAYER2_Y : STA !REG_2110_BG2_Y
    STZ !BG2_Y_OFFSET

  .bgOffsetsCalculated
    RTL
}

transfer_cgram_long:
{
    PHP
    %a16() : %i8()
    LDX #$80 : STX $2100 ; forced blanking
    JSR $933A
    LDX #$0F : STX $2100
    PLP
    RTL
}

add_grapple_and_xray_to_hud:
{
    ; Copied from $809AB1 to $809AC9
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$8000 : BEQ $04
    JSL $809A3E ; Add x-ray to HUD tilemap
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$4000 : BEQ $04
    JSL $809A2E ; Add grapple to HUD tilemap
    JMP resume_infohud_icon_initialization
}

%endfree(80)


; $80:9AB1: Add x-ray and grapple HUD items if necessary
org $809AB1
    ; Skip x-ray and grapple if max HP is a multiple of 4,
    ; which is only possible if GT code was used
    LDA !SAMUS_HP_MAX : AND #$0003 : BEQ resume_infohud_icon_initialization
    JMP add_grapple_and_xray_to_hud
warnpc $809AC9

; $80:9AC9: Resume original logic
org $809AC9
resume_infohud_icon_initialization:



; -------------------
; Category Menus/Data
; -------------------

org $E8E000
check bankcross off
print pc, " preset data crossbank start"
incsrc presets/kpdr21_data.asm ; 2158h bytes
incsrc presets/kpdr22_data.asm ; 21A0h bytes
incsrc presets/kpdr23_data.asm ; 2218h bytes
incsrc presets/kpdr25_data.asm ; 2100h bytes
incsrc presets/prkd19_data.asm ; 2100h bytes
incsrc presets/prkd20_data.asm ; 20DCh bytes
incsrc presets/pkrd_data.asm ; 1EF4h bytes
incsrc presets/gtclassic_data.asm ; 1EDCh bytes
incsrc presets/gtmax_data.asm ; 2E00h bytes
incsrc presets/hundo_data.asm ; 2638h bytes
incsrc presets/100early_data.asm ; 2D0Ch bytes
incsrc presets/100map_data.asm ; 31FCh bytes
incsrc presets/14ice_data.asm ; 12CCh bytes
incsrc presets/14speed_data.asm ; 1318h bytes
incsrc presets/rbo_data.asm ; 1AFCh bytes
incsrc presets/nintendopower_data.asm ; 10A0h bytes
incsrc presets/allbosskpdr_data.asm ; 12B4h bytes
incsrc presets/allbosspkdr_data.asm ; 12F4h bytes
incsrc presets/allbossprkd_data.asm ; 136Ch bytes
incsrc presets/nghyper_data.asm ; E88h bytes
incsrc presets/ngplasma_data.asm ; EA4h bytes
incsrc presets/suitless_data.asm ; 3DF0h bytes
print pc, " preset data crossbank end"
warnpc $F08000
check bankcross on

%startfree(F1)
incsrc presets/kpdr21_menu.asm ; 11A3h bytes
incsrc presets/kpdr22_menu.asm ; 11C1h bytes
incsrc presets/kpdr23_menu.asm ; 11E7h bytes
incsrc presets/kpdr25_menu.asm ; 10D8h bytes
incsrc presets/prkd19_menu.asm ; 10B3h bytes
incsrc presets/prkd20_menu.asm ; 10A9h bytes
incsrc presets/pkrd_menu.asm ; F79h bytes
%endfree(F1)

%startfree(F2)
incsrc presets/14ice_menu.asm   ; 7C6h bytes
incsrc presets/14speed_menu.asm   ; 7EBh bytes
incsrc presets/hundo_menu.asm   ; 1220h bytes
incsrc presets/100early_menu.asm   ; 1320h bytes
incsrc presets/100map_menu.asm   ; 1670h bytes
incsrc presets/gtclassic_menu.asm   ; D7Ch bytes
incsrc presets/gtmax_menu.asm   ; 1378h bytes
%endfree(F2)

%startfree(F3)
incsrc presets/rbo_menu.asm   ; D97h bytes
incsrc presets/nintendopower_menu.asm   ; 70Ch bytes
incsrc presets/allbosskpdr_menu.asm   ; 942h bytes
incsrc presets/allbosspkdr_menu.asm   ; 9B0h bytes
incsrc presets/allbossprkd_menu.asm   ; 9BEh bytes
incsrc presets/ngplasma_menu.asm   ; 85Ch bytes
incsrc presets/nghyper_menu.asm   ; 864h bytes
incsrc presets/suitless_menu.asm   ; 1B43h bytes
%endfree(F3)

