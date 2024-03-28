org $82FA80
print pc, " presets bank82 start"

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
    LDA !ROOM_ID : CMP #$CD13 : BEQ .fixBG2
    CMP #$DA60 : BNE .doneBG2
  .fixBG2
    JSL preset_clear_BG2_tilemap

  .doneBG2
    JSL $809A79  ; HUD routine when game is loading
    JSL $90AD22  ; Reset projectile data

    TDC : TAX
    LDY #$0020
  .paletteLoop
    ; Target Samus' palette = [Samus' palette]
    LDA $7EC180,X : STA $7EC380,X
    INX : INX
    DEY : DEY : BNE .paletteLoop

    TDC
    STA $7EC400  ; Used as door fade timer
    STA $0727    ; Pause menu index
    INC
    STA $0723    ; Screen fade delay = 1
    STA $0725    ; Screen fade counter = 1

    JSL $80834B  ; Enable NMI with $84 options
    LDA #$8000
    TSB $198D    ; Enable enemy projectiles
    TSB $1C23    ; Enable PLMs
    TSB $1E79    ; Enable palette FX objects
    TSB $18B0    ; Enable HDMA objects
    TSB $1EF1    ; Enable animated tile objects
    JSL $908E0F  ; Set liquid physics type

    LDA #$0006 : STA $0DA0
  .loopSomething
if !FEATURE_PAL
    JSL $A08CE7
else             ; Transfer enemy tiles to VRAM and initialize enemies
    JSL $A08CD7
endif
    JSL $808338  ; Wait for NMI
    DEC $0DA0    ; Decrement $0DA0
    BPL .loopSomething

    ; set gamemode and brightness
    LDA #$0008 : STA !GAMEMODE
    %a8() : LDA #$0F : STA $51 : %a16()

    TDC : TAX
    LDY #$0200
  .secondPaletteLoop
    ; Palettes = [target palettes]
    LDA $7EC200,X : STA $7EC000,X
    INX : INX
    DEY : DEY : BNE .secondPaletteLoop

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
    STZ $0795 : STZ $0797 ; clear door transition flags

    ; Clear minimap tiles
    LDA !sram_preset_options : BIT !PRESETS_CLEAR_MAP_TILES : BEQ .clear_enemies
    JSL game_clear_minimap_clear_minimap

  .clear_enemies
    ; Clear enemies if not in BT or MB rooms
    LDA !ROOM_ID : CMP #$9804 : BEQ .done_clearing_enemies
    CMP #$DD58 : BEQ .set_mb_state
    LDA !sram_preset_options : BIT !PRESETS_PRESERVE_ENEMIES : BNE .done_clearing_enemies
    JSR clear_all_enemies

  .done_clearing_enemies
    PLP
    RTL

  .set_mb_state
    ; If glass is broken, assume we should skip MB1
    LDA $7ED820 : BIT #$0004 : BEQ .done_clearing_enemies
    ; Set health to 1 as a hint this was done by a preset
    LDA #$0001 : STA $0FCC
    ; Reset segment timer now
    LDA #$0000 : STA !ram_reset_segment_later
    STA !ram_seg_rt_frames : STA !ram_seg_rt_seconds
    STA !ram_seg_rt_minutes
    BRA .done_clearing_enemies
}

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
    STZ $0E52 ; unlock grey doors that require killing enemies
    RTS
}

preset_load_destination_state_and_tiles:
{
    ; Original logic from $82E76B
    PHP : PHB
    %ai16()
    PEA $8F00
    PLB : PLB
    JSR $DDF1  ; Load destination room CRE bitset
    JSR $DE12  ; Load door header
    JSR $DE6F  ; Load room header
    JSR $DEF2  ; Load state header
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
    PHP : PHB : %ai16()
    JSL $80A29C ; Clear FX tilemap
    LDA $1964 : BEQ .done_fx

    STA $4312 ; src addr
    LDA #$008A : STA $4314 ; src bank
    LDA #$5BE0 : STA $2116 ; VRAM addr
    LDA #$1801 : STA $4310 ; VRAM write, word
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
    LDX $0000,Y : INY : INY
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

reset_all_counters:
{
    LDA #$0000
    STA !ram_room_has_set_rng
    STA !IGT_FRAMES : STA !IGT_SECONDS : STA !IGT_MINUTES : STA !IGT_HOURS
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
    LDA #$0032 : STA !ram_seg_rt_frames
    LDA #$0001 : STA !ram_seg_rt_seconds
    LDA #$0000 : STA !ram_seg_rt_minutes
    JSL $808924    ; overwritten code
    RTL
}

preset_load_preset:
{
    PHB
    LDA #$0000
    STA !SAMUS_ITEM_SELECTED : STA !SAMUS_AUTO_CANCEL
    LDA #$5AFE : STA !LAYER2_X ; Load garbage into Layer 2 X position

    ; check if segment timer should be reset now or after a door
    LDA !sram_preset_options : BIT !PRESETS_AUTO_SEGMENT_OFF : BNE .check_load
    LDA #$FFFF : STA !ram_reset_segment_later

  .check_load
    ; check if custom preset is being loaded
    LDA !ram_custom_preset : BEQ .category_preset

  .custom_preset
    JSL custom_preset_load
    LDA #$5AFE : STA !sram_last_preset
    LDA #$0000 : STA !ram_load_preset
    BRA .done

  .category_preset
    LDA !ram_load_preset : CMP #$5AFE : BEQ .custom_preset
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
    LDA !ram_load_preset : STA !sram_last_preset : STA $C3 : STA $7F0002
    LDA #$0000 : STA !ram_load_preset

    ; Get start of preset data into $C1
    LDA.l category_preset_data_table,X : LDX #$0000 : STA $C1

    ; If start of preset data is greater than preset address,
    ; then our preset address is in the next bank
    CMP $C3 : BCC .buildLoop : BEQ .buildLoop
    INC $C5

  .buildLoop
    ; Build list of presets to traverse
    LDA [$C3] : BEQ .traversePrep
    INX : INX : STA $7F0002,X
    CMP $C3 : STA $C3 : BCC .buildLoop
    ; We just crossed back into the starting bank
    DEC $C5
    BRA .buildLoop

  .traversePrep
    ; Set bank to read data from
    STZ $00 : %a8() : LDA $C5 : PHA : PLB
    ; Set bank to store data to
    LDA #$7E : STA $C5 : %a16()

  .crossBankTraverseLoop
    ; Now traverse from the first preset until the last one
    LDA $7F0002,X : TAY : CMP $C1 : BCC .incBankInnerLoop
    INY : INY
    BRA .crossBankLoadAddr

    ; For each preset, load and store address and value pairs
  .crossBankInnerLoop
    STA $C3 : INY : INY
    CPY #$0000 : BEQ .incBankLoadValue
    LDA ($00),Y : STA [$C3] : INY : INY

  .crossBankLoadAddr
    CPY #$0000 : BEQ .incBankLoadAddr
    LDA ($00),Y : CMP #$FFFF : BNE .crossBankInnerLoop

    DEX : DEX : BPL .crossBankTraverseLoop
    RTS

  .incBankInnerLoop
    %a8() : PHB : PLA : INC : PHA : PLB : %a16()
    INY : INY
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
    LDA $7F0002,X : TAY : INY : INY
    BRA .simpleLoadAddr

    ; For each preset, load and store address and value pairs
  .simpleInnerLoop
    STA $C3 : INY : INY
  .simpleLoadValue
    LDA ($00),Y : STA [$C3] : INY : INY
  .simpleLoadAddr
    LDA ($00),Y : CMP #$FFFF : BNE .simpleInnerLoop

    DEX : DEX : BPL .simpleTraverseLoop
    RTS
}

category_preset_data_table:
    dl preset_prkd_crateria_ceres_elevator
    dl preset_kpdr21_crateria_ceres_elevator
    dl preset_hundo_bombs_ceres_elevator
    dl preset_100early_crateria_ceres_elevator
    dl preset_rbo_bombs_ceres_elevator
    dl preset_pkrd_crateria_ceres_elevator
    dl preset_kpdr25_bombs_ceres_elevator
    dl preset_gtclassic_crateria_ceres_elevator
    dl preset_gtmax_crateria_ceres_elevator
    dl preset_14ice_crateria_ceres_elevator
    dl preset_14speed_crateria_ceres_elevator
    dl preset_100map_bombs_ceres_elevator
    dl preset_nintendopower_crateria_ceres_elevator
    dl preset_allbosskpdr_crateria_ceres_elevator
    dl preset_allbosspkdr_crateria_ceres_elevator
    dl preset_allbossprkd_crateria_ceres_elevator

print pc, " presets bank82 end"
warnpc $82FE00 ; tinystates.asm


org $80F000
print pc, " presets bank80 start"

; This method is very similar to $80A07B (start gameplay)
preset_start_gameplay:
{
    PHP
    PHB
    PHK : PLB    ; DB = $80
    %ai16()
    SEI          ; Disable IRQ
    STZ $420B    ; Disable all (H)DMA
    STZ $07E9    ; Scrolling finished hook = 0
    STZ $0943    ; Timer status = inactive

    JSL $828A9A  ; Reset sound queues
    LDA #$FFFF : STA !DISABLE_SOUNDS

    JSL $80835D  ; Disable NMI
    JSL $80985F  ; Disable horizontal and vertical timer interrupts
    JSL preset_load_destination_state_and_tiles
    JSL $878016  ; Clear animated tile objects
    JSL $88829E  ; Wait until the end of a v-blank and clear (H)DMA enable flags

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
    STA !SAMUS_POTENTIAL_POSE_FLAGS
    STA !SAMUS_POTENTIAL_POSE_FLAGS+2
    STA !SAMUS_POTENTIAL_POSE_FLAGS+4

    ; Set potential pose values to FFFF
    LDA #$FFFF : STA !SAMUS_POTENTIAL_POSE_VALUES
    STA !SAMUS_POTENTIAL_POSE_VALUES+2 : STA !SAMUS_POTENTIAL_POSE_VALUES+4

    ; Set Samus last position same as current position
    LDA !SAMUS_X : STA !SAMUS_PREVIOUS_X
    LDA !SAMUS_X_SUBPX : STA !SAMUS_PREVIOUS_X_SUBPX
    LDA !SAMUS_Y : STA !SAMUS_PREVIOUS_Y
    LDA !SAMUS_Y_SUBPX : STA !SAMUS_PREVIOUS_Y_SUBPX

    ; Set loading game state for Ceres
    LDA #$001F : STA $7ED914
    ; Set delay for first falling tile in Ceres
    LDA #$0022 : STA $07E1
    LDA !AREA_ID : CMP #$0006 : BEQ .end_load_game_state
    ; Set loading game state for Zebes
    LDA #$0005 : STA $7ED914
    LDA !SAMUS_POSE : BNE .end_load_game_state
    LDA !ROOM_ID : CMP #$91F8 : BNE .end_load_game_state
    ; If default pose at landing site then assume we are arriving on Zebes
    LDA #$0022 : STA $7ED914
if !FEATURE_PAL
    LDA #$E8CA : STA !SAMUS_LOCKED_HANDLER
    LDA #$E867 : STA !SAMUS_MOVEMENT_HANDLER
else             ; Lock Samus
    LDA #$E8CD : STA !SAMUS_LOCKED_HANDLER
    LDA #$E8DC : STA !SAMUS_MOVEMENT_HANDLER
endif
  .end_load_game_state

    ; Preserve layer 2 values we may have loaded from presets
    LDA !LAYER2_Y : PHA
    LDA !LAYER2_X : PHA

    JSL $8882C1  ; Initialize special effects for new room
    JSL $8483C3  ; Clear PLMs
    JSL $868016  ; Clear enemy projectiles
    JSL $8DC4D8  ; Clear palette FX objects
    JSL $90AC8D  ; Update beam graphics
    JSL $82E139  ; Load target colours for common sprites, beams and slashing enemies / pickups
if !FEATURE_PAL
    JSL $A08A2E
else             ; Load enemies
    JSL $A08A1E
endif
    JSL $80A23F  ; Clear BG2 tilemap
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
    PLA : CMP #$5AFE : BEQ .calculate_layer_2
    STA !LAYER2_X
    PLA : STA !LAYER2_Y
    BRA .layer_2_loaded

  .calculate_layer_2
    PLA ; Pull other layer 2 value but do not use it
    JSR $A2F9 ; Calculate layer 2 X position
    JSR $A33A ; Calculate layer 2 Y position
    LDA !LAYER2_X : STA !BG2_X_SCROLL ; BG2 X scroll = layer 2 X scroll position
    LDA !LAYER2_Y : STA !BG2_Y_SCROLL ; BG2 Y scroll = layer 2 Y scroll position

  .layer_2_loaded
    JSR $A37B    ; Calculate BG positions

    ; Fix BG2 Y offsets for rooms with scrolling sky
    ; Also fix rooms that need to be handled before door scroll
    LDA !ROOM_ID : CMP #$CF80 : BEQ .eastTunnel
    CMP #$D646 : BEQ .pantsRoom : CMP #$D6FD : BEQ .aqueductFarmsAndPitRoom
    CMP #$91F8 : BEQ .bgOffsetsScrollingSky
    CMP #$93FE : BEQ .bgOffsetsScrollingSky
    CMP #$94FD : BEQ .bgOffsetsScrollingSky
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
    LDA !LAYER1_Y : STA !LAYER2_Y : STA $B7
    STZ !BG2_Y_SCROLL

  .bgOffsetsCalculated
    JSL $80A176  ; Display the viewable part of the room

    ; Enable sounds
    STZ !DISABLE_SOUNDS
    JSL stop_all_sounds

    ; Clear music queue
    STZ $0629 : STZ $062B : STZ $062D : STZ $062F
    STZ $0631 : STZ $0633 : STZ $0635 : STZ $0637
    STZ $0639 : STZ $063B : STZ $063D : STZ $063F

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
    JSL $80834B  ; Enable NMI

    LDA #$0004 : STA $A7  ; Set optional next interrupt to Main gameplay

    JSL $80982A  ; Enable horizontal and vertical timer interrupts

    LDA $7ED914 : CMP #$0022 : BEQ .done_unlock_samus
    LDA #$E695 : STA !SAMUS_LOCKED_HANDLER   ; Unlock Samus
    LDA #$E725 : STA !SAMUS_MOVEMENT_HANDLER ; Unlock Samus
  .done_unlock_samus
    LDA #$9F55 : STA $0A6C ; Set X speed table pointer

    STZ !ELEVATOR_PROPERTIES
    STZ !ELEVATOR_STATUS
    STZ !HEALTH_BOMB_FLAG
    STZ !MESSAGE_BOX_INDEX
    STZ $1E75 ; Save Station Lockout flag
    STZ $0795 : STZ $0797  ; Clear door transition flags
    TDC : STA !ram_transition_flag
    JSL init_heat_damage_ram
    JSL init_physics_ram

    LDA #$E737 : STA $099C ; Pointer to next frame's room transition code = $82:E737

if !RAW_TILE_GRAPHICS
    LDX !STATE_POINTER : LDA $8F0018,X
    CMP #$91C9 : BEQ .post_preset_scrolling_sky
    CMP #$91CE : BEQ .post_preset_scrolling_sky
    CMP #layout_landing_site_setup_asm : BEQ .post_preset_scrolling_sky
    CMP #layout_asm_westocean : BEQ .post_preset_scrolling_sky
    CMP #layout_asm_eastocean : BEQ .post_preset_scrolling_sky
    PLB : PLP : RTL
  .post_preset_scrolling_sky
    JML layout_execute_setup_asm_execute
else
    PLB : PLP : RTL
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
    LDA #$80 : STA $802100 ; enable forced blanking
    LDA #$04 : STA $210C ; BG2 starts at $4000 (8000 in vram)
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$4800 : STX $2116 ; VRAM address (8000 in vram)
    LDX #$4000 : STX $4302 ; Source offset
    LDA #$7E : STA $4304 ; Source bank
    LDX #$1000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    LDA #$0F : STA $0F2100 ; disable forced blanking
    PLP
    RTL
}

preset_open_all_blue_doors:
{
    PHP : PHB : PHX : PHY
    LDA #$8484 : STA $C3 : PHA : PLB : PLB

    ; First resolve all door PLMs where the door has previously been opened
    LDX #$004E
  .plmSearchLoop
    LDA $1C37,X : BEQ .plmSearchDone
    LDY $1D27,X : LDA $0000,Y : CMP #$8A72 : BEQ .plmDoorFound
  .plmSearchResume
    DEX : DEX : BRA .plmSearchLoop

  .plmDoorFound
    LDA $1DC7,X : BMI .plmSearchResume
    PHX : JSL $80818E : LDA $7ED8B0,X : PLX
    AND $05E7 : BEQ .plmSearchResume

    ; Door has been previously opened
    ; Execute the next PLM instruction to set the BTS as a blue door
    LDA $0002,Y : TAY
    LDA $0000,Y : CMP #$86BC : BEQ .plmDelete
    INY : INY
    JSL preset_execute_plm_instruction

  .plmDelete
    STZ $1C37,X
    BRA .plmSearchResume

  .plmSearchDone
    ; Now search all of the room BTS for doors
    LDA !ROOM_WIDTH_SCROLLS : STA $C7
    LDA !ROOM_WIDTH_BLOCKS : STA $C1 : ASL : STA $C3
    LDA $7F0000 : LSR : TAY
    STZ $C5 : TDC : %a8() : LDA #$7F : PHA : PLB

  .btsSearchLoop
    LDA $6401,Y : AND #$FC : CMP #$40 : BEQ .btsFound
  .btsContinue
    DEY : BNE .btsSearchLoop

    ; All blue doors opened
    PLY : PLX : PLB : PLP : RTS

  .btsFound
    ; Convert BTS index to tile index
    ; Also verify this is a door and not a slope or half-tile
    %a16() : TYA : ASL : TAX : %a8()
    LDA $0001,X : BIT #$30 : BNE .btsContinue

    ; If this door has a red scroll, then leave it closed
    ; Most of the work is to determine the scroll index
    %a16() : TYA : DEC : LSR : LSR : LSR : LSR : STA $004204
    %a8() : LDA $C7 : STA $004206
    %a16() : PHA : PLA : PHA : PLA
    LDA $004216 : STA $C8
    LDA $004214 : LSR : LSR : LSR : LSR
    %a8() : STA $004202
    LDA $C7 : STA $004203
    PHA : PLA : TDC
    LDA $004216 : CLC : ADC $C8
    PHX : TAX : LDA $7ECD20,X : PLX
    CMP #$00 : BEQ .btsContinue

    ; Check what type of door we need to open
    LDA $6401,Y : BIT #$02 : BNE .btsCheckUpDown
    BIT #$01 : BEQ .btsFacingLeftRight
    LDA #$04 : STA $C6

  .btsFacingLeftRight
    %a16() : LDA #$0082 : ORA $C5 : STA $0000,X
    TXA : CLC : ADC $C3 : TAX : LDA #$00A2 : ORA $C5 : STA $0000,X
    TXA : CLC : ADC $C3 : TAX : LDA #$08A2 : ORA $C5 : STA $0000,X
    TXA : CLC : ADC $C3 : TAX : LDA #$0882 : ORA $C5 : STA $0000,X
    TDC : %a8() : STA $C6 : STA $6401,Y
    %a16() : TYA : CLC : ADC $C1 : TAX : TDC : %a8() : STA $6401,X
    %a16() : TXA : CLC : ADC $C1 : TAX : TDC : %a8() : STA $6401,X
    %a16() : TXA : CLC : ADC $C1 : TAX : TDC : %a8() : STA $6401,X
    BRL .btsContinue

  .btsCheckUpDown
    BIT #$01 : BEQ .btsFacingUpDown
    LDA #$08 : STA $C6

  .btsFacingUpDown
    %a16() : LDA #$0084 : ORA $C5 : STA $0006,X
    DEC : STA $0004,X : ORA #$0400 : STA $0002,X : INC : STA $0000,X
    TDC : %a8() : STA $C6 : STA $6401,Y
    STA $6402,Y : STA $6403,Y : STA $6404,Y
    BRL .btsContinue
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
    STZ $07DF
    ; Clear layer 2 library bits (change 0181 to 0080)
    LDA #$0080 : STA $091B
endif

  .end
    PLB : PLP : RTL
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
    LDA $09A2 : BIT #$8000 : BEQ $04
    JSL $809A3E            ; Add x-ray to HUD tilemap
    LDA $09A2 : BIT #$4000 : BEQ $04
    JSL $809A2E            ; Add grapple to HUD tilemap
    JMP resume_infohud_icon_initialization
}

print pc, " presets bank80 end"
warnpc $80F600 ; save.asm or tinystates.asm


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

org $EAE000
check bankcross off
print pc, " preset data crossbank start"
  incsrc presets/14ice_data.asm
  incsrc presets/14speed_data.asm
  incsrc presets/100early_data.asm
  incsrc presets/100map_data.asm
  incsrc presets/allbosskpdr_data.asm
  incsrc presets/allbosspkdr_data.asm
  incsrc presets/allbossprkd_data.asm
  incsrc presets/gtclassic_data.asm
  incsrc presets/gtmax_data.asm
  incsrc presets/hundo_data.asm
  incsrc presets/kpdr21_data.asm
  incsrc presets/kpdr25_data.asm
  incsrc presets/nintendopower_data.asm
  incsrc presets/pkrd_data.asm
  incsrc presets/prkd_data.asm
  incsrc presets/rbo_data.asm
print pc, " preset data crossbank end"
warnpc $F08000 ; infohud.asm
check bankcross on

org $F18000
print pc, " preset menu bankF1 start"
  incsrc presets/14ice_menu.asm
  incsrc presets/14speed_menu.asm
  incsrc presets/100early_menu.asm
  incsrc presets/100map_menu.asm
  incsrc presets/allbosskpdr_menu.asm
  incsrc presets/allbosspkdr_menu.asm
  incsrc presets/allbossprkd_menu.asm
  incsrc presets/gtclassic_menu.asm
print pc, " preset menu bankF1 end"

org $F28000
print pc, " preset menu bankF2 start"
  incsrc presets/gtmax_menu.asm
  incsrc presets/hundo_menu.asm
  incsrc presets/kpdr21_menu.asm
  incsrc presets/kpdr25_menu.asm
  incsrc presets/nintendopower_menu.asm
  incsrc presets/pkrd_menu.asm
  incsrc presets/prkd_menu.asm
  incsrc presets/rbo_menu.asm
print pc, " preset menu bankF2 end"

