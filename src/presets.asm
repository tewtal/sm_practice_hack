org $82FA00
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
    JSL $91DF72  ; Initialize Samus
else
    JSL $91E00D  ; Initialize Samus
endif

    JSL preset_load_preset

    JSL preset_start_gameplay  ; Start gameplay

    JSL $809A79  ; HUD routine when game is loading
    JSL $90AD22  ; Reset projectile data

    PHP
    REP #$30
    LDY #$0020
    LDX #$0000
  .paletteLoop
    LDA $7EC180,x : STA $7EC380,x  ; Target Samus' palette = [Samus' palette]
    INX #2
    DEY #2
    BNE .paletteLoop
    PLP

    LDA #$0000
    STA $7EC400  ; Used as door fade timer
    STA $0727    ; Pause menu index
    LDA #$0001
    STA $0723    ; Screen fade delay = 1
    STA $0725    ; Screen fade counter = 1

    JSL $80834B  ; Enable NMI with $84 options
    JSL $868000  ; Enable enemy projectiles
    JSL $8483AD  ; Enable PLMs
    JSL $8DC4C2  ; Enable palette FX objects
    JSL $888288  ; Enable HDMA objects
    JSL $878000  ; Enable animated tile objects
    JSL $908E0F  ; Set liquid physics type

    LDA #$0006 : STA $0DA0
  .loopSomething
if !FEATURE_PAL
    JSL $A08CE7  ; Transfer enemy tiles to VRAM and initialize enemies
else
    JSL $A08CD7  ; Transfer enemy tiles to VRAM and initialize enemies
endif
    JSL $808338  ; Wait for NMI
    DEC $0DA0    ; Decrement $0DA0
    BPL .loopSomething

    LDA #$0008 : STA !GAMEMODE
    %a8() : LDA #$0F : STA $51 : %a16()

    PHP
    REP #$30
    LDY #$0200
    LDX #$0000
  .paletteLoop2
    LDA $7EC200,x
    STA $7EC000,x  ; Palettes = [target palettes]
    INX #2
    DEY #2
    BNE .paletteLoop2
    PLP

    ; Fix Samus' palette
if !FEATURE_PAL
    JSL $91DE1F
else
    JSL $91DEBA
endif

    ; Re-upload OOB viewer tiles if needed
    LDA !ram_oob_watch_active : BEQ .done_upload_sprite_oob_tiles
    JSL upload_sprite_oob_tiles

  .done_upload_sprite_oob_tiles
    JSL reset_all_counters
    STZ $0795 : STZ $0797 ; clear door transition flags

    ; Clear enemies if not in certain rooms
    LDA $079B : CMP #$9804 : BEQ .done_clearing_enemies
    CMP #$DD58 : BEQ .set_mb_state
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
    ; Clear enemies (8000 = solid to Samus, 0400 = Ignore Samus projectiles)
    LDA #$0000
  .loop
    TAX : LDA $0F86,X : BIT #$8400 : BNE .done_clearing
    ORA #$0200 : STA $0F86,X
  .done_clearing
    TXA : CLC : ADC #$0040 : CMP #$0400 : BNE .loop
    STZ $0E52 ; unlock grey doors that require killing enemies
    RTS
}

preset_load_destination_state_and_tiles:
{
    ; Original logic from $82E76B
    PHP : PHB
    REP #$30
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
    JSL $80A29C      ; Clear FX tilemap
    LDA $1964 : BEQ .done_fx_tilemap

    STA $4312
    LDA #$5BE0 : STA $2116
    LDA #$1801 : STA $4310
    LDA #$008A : STA $4314
    LDA #$0840 : STA $4315
    %a8()
    LDA #$80 : STA $2115
    LDA #$02 : STA $420B
    %a16() : CLC

  .done_fx_tilemap
    PEA $8F00 : PLB : PLB
    REP #$20
    LDX $07BB
    LDY $0016,X : BPL .done

  .load_library_loop
    LDX $0000,Y : INY : INY
    JSR (preset_load_library_background_jump_table,X)
    BCC .load_library_loop

  .done
    PLB : PLP : RTL
}

preset_load_library_background_jump_table:
    dw $E9E5, $E9F9, $EA2D, $EA4E, $EA66, $EA56, $EA5E, preset_load_library_start_transfer_to_vram

preset_load_library_start_transfer_to_vram:
    JML preset_load_library_transfer_to_vram

preset_load_library_end_transfer_to_vram:
    RTS
endif

reset_all_counters:
{
    LDA #$0000
    STA !ram_room_has_set_rng
    STA $09DA : STA $09DC : STA $09DE : STA $09E0
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
    STA $7E09D2 ; Current selected weapon
    STA $7E0A04 ; Auto-cancel item
    LDA #$5AFE : STA $0917 ; Load garbage into Layer 2 X position
    LDA #$FFFF : STA !ram_reset_segment_later

    ; check if custom preset is being loaded
    LDA !ram_custom_preset : BEQ .category_preset
    JSL custom_preset_load
    BRA .done

  .category_preset
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
    CMP $C3 : BCC .build_list_loop : BEQ .build_list_loop
    INC $C5

  .build_list_loop
    ; Build list of presets to traverse
    LDA [$C3] : BEQ .prepare_traverse_list_loop
    INX : INX : STA $7F0002,X
    CMP $C3 : STA $C3 : BCC .build_list_loop
    ; We just crossed back into the starting bank
    DEC $C5
    BRA .build_list_loop

  .prepare_traverse_list_loop
    ; Set bank to read data from
    STZ $00 : %a8() : LDA $C5 : PHA : PLB
    ; Set bank to store data to
    LDA #$7E : STA $C5 : %a16()

  .traverse_list_loop_with_bank_check
    ; Now traverse from the first preset until the last one
    LDA $7F0002,X : TAY : CMP $C1 : BCC .increment_bank_before_inner_loop
    INY : INY
    BRA .inner_loop_with_bank_check_load_address

    ; For each preset, load and store address and value pairs
  .inner_loop_with_bank_check
    STA $C3 : INY : INY
    CPY #$0000 : BEQ .increment_bank_before_load_value
    LDA ($00),Y : STA [$C3] : INY : INY
  .inner_loop_with_bank_check_load_address
    CPY #$0000 : BEQ .increment_bank_before_load_address
    LDA ($00),Y : CMP #$FFFF : BNE .inner_loop_with_bank_check

    DEX : DEX : BPL .traverse_list_loop_with_bank_check
    RTS

  .increment_bank_before_inner_loop
    %a8() : PHB : PLA : INC : PHA : PLB : %a16()
    INY : INY
    BRA .inner_loop_load_address

  .increment_bank_before_load_address
    %a8() : PHB : PLA : INC : PHA : PLB : %a16()
    LDY #$8000
    BRA .inner_loop_load_address

  .increment_bank_before_load_value
    %a8() : PHB : PLA : INC : PHA : PLB : %a16()
    LDY #$8000
    BRA .inner_loop_load_value

  .traverse_list_loop
    ; Continue traversing from the first preset until the last one
    LDA $7F0002,X : TAY : INY : INY
    BRA .inner_loop_load_address

    ; For each preset, load and store address and value pairs
  .inner_loop
    STA $C3 : INY : INY
  .inner_loop_load_value
    LDA ($00),Y : STA [$C3] : INY : INY
  .inner_loop_load_address
    LDA ($00),Y : CMP #$FFFF : BNE .inner_loop

    DEX : DEX : BPL .traverse_list_loop
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
warnpc $82FE00

org $82E8D9
    JSL preset_room_setup_asm_fixes


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

    ; Set Samus last pose same as current pose
    LDA !SAMUS_POSE : STA !SAMUS_PREVIOUS_POSE
    LDA !SAMUS_POSE_DIRECTION : STA !SAMUS_PREVIOUS_POSE_DIRECTION

    ; Set Samus last position same as current position
    LDA !SAMUS_X : STA $0B10 : LDA !SAMUS_X_SUBPX : STA $0B12
    LDA !SAMUS_Y : STA $0B14 : LDA !SAMUS_Y_SUBPX : STA $0B16

    ; Set loading game state for Ceres
    LDA #$001F : STA $7ED914
    LDA !AREA_ID : CMP #$0006 : BEQ .end_load_game_state
    ; Set loading game state for Zebes
    LDA #$0005 : STA $7ED914
    LDA !SAMUS_POSE : BNE .end_load_game_state
    LDA !ROOM_ID : CMP #$91F8 : BNE .end_load_game_state
    ; If default pose at landing site then assume we are arriving on Zebes
    LDA #$0022 : STA $7ED914
    LDA #$E8CD : STA $0A42 ; Lock Samus
    LDA #$E8DC : STA $0A44 ; Lock Samus
  .end_load_game_state

    ; Preserve layer 2 values we may have loaded from presets
    LDA $0919 : PHA
    LDA $0917 : PHA

    JSL $8882C1  ; Initialize special effects for new room
    JSL $8483C3  ; Clear PLMs
    JSL $868016  ; Clear enemy projectiles
    JSL $8DC4D8  ; Clear palette FX objects
    JSL $90AC8D  ; Update beam graphics
    JSL $82E139  ; Load target colours for common sprites, beams and slashing enemies / pickups
if !FEATURE_PAL
    JSL $A08A2E  ; Load enemies
else
    JSL $A08A1E  ; Load enemies
endif
    JSL $80A23F  ; Clear BG2 tilemap
if !RAW_TILE_GRAPHICS
    JSL preset_load_level_tile_tables_scrolls_plms_and_execute_asm
else
    JSL $82E7D3  ; Load level data, CRE, tile table, scroll data, create PLMs and execute door ASM and room setup ASM
endif
    JSL preset_scroll_fixes

    LDA !sram_preset_options : BIT !PRESETS_CLOSE_BLUE_DOORS : BNE .done_opening_doors
    LDA !SAMUS_POSE : BEQ .done_opening_doors
    CMP #$009B : BEQ .done_opening_doors
    JSR preset_open_all_blue_doors
  .done_opening_doors

    JSL $89AB82  ; Load FX
if !RAW_TILE_GRAPHICS
    JSL preset_load_library_background
else
    JSL $82E97C  ; Load library background
endif

    ; Pull layer 2 values, and use them if they are valid
    PLA : CMP #$5AFE : BEQ .calculate_layer_2
    STA $0917
    PLA : STA $0919
    BRA .layer_2_loaded

  .calculate_layer_2
    PLA                    ; Pull other layer 2 value but do not use it
    JSR $A2F9              ; Calculate layer 2 X position
    JSR $A33A              ; Calculate layer 2 Y position
    LDA $0917 : STA $0921  ; BG2 X scroll = layer 2 X scroll position
    LDA $0919 : STA $0923  ; BG2 Y scroll = layer 2 Y scroll position

  .layer_2_loaded
    JSR $A37B    ; Calculate BG positions

    ; Fix BG2 Y offsets for rooms with scrolling sky
    LDA !ROOM_ID : CMP #$91F8 : BEQ .bg_offsets_scrolling_sky
    CMP #$93FE : BEQ .bg_offsets_scrolling_sky
    CMP #$94FD : BEQ .bg_offsets_scrolling_sky
    BRA .bg_offsets_calculated

  .bg_offsets_scrolling_sky
    LDA $0915 : STA $0919 : STA $B7
    STZ $0923

  .bg_offsets_calculated
    JSL $80A176  ; Display the viewable part of the room

    ; Enable sounds
    STZ !DISABLE_SOUNDS
    JSL stop_all_sounds

    ; Clear music queue
    STZ $0629 : STZ $062B : STZ $062D : STZ $062F
    STZ $0631 : STZ $0633 : STZ $0635 : STZ $0637
    STZ $0639 : STZ $063B : STZ $063D : STZ $063F

    ; If music fast off or preset off, treat music as already loaded
    LDA !sram_music_toggle : CMP #$0002 : BPL .done_music

    ; Compare to currently loaded music data
    LDA !SRAM_MUSIC_DATA : CMP !MUSIC_DATA : BEQ .done_load_music_data

    ; Clear track if necessary
    LDA !SRAM_MUSIC_TRACK : BEQ .load_music_data
    LDA #$0000 : JSL !MUSIC_ROUTINE

  .load_music_data
    LDA !MUSIC_DATA : TAX
    LDA !SRAM_MUSIC_DATA : STA !MUSIC_DATA
    TXA : CLC : ADC #$FF00 : JSL !MUSIC_ROUTINE
    BRA .load_music_track

  .done_load_music_data
    ; Compare to currently playing music
    LDA !SRAM_MUSIC_TRACK : CMP !MUSIC_TRACK : BEQ .done_music

  .load_music_track
    LDA !MUSIC_TRACK : TAX
    LDA !SRAM_MUSIC_TRACK : STA !MUSIC_TRACK
    TXA : JSL !MUSIC_ROUTINE

  .done_music
    JSL $80834B  ; Enable NMI

    LDA #$0004 : STA $A7  ; Set optional next interrupt to Main gameplay

    JSL $80982A  ; Enable horizontal and vertical timer interrupts

    LDA $7ED914 : CMP #$0022 : BEQ .done_unlock_samus
    LDA #$E695 : STA $0A42 ; Unlock Samus
    LDA #$E725 : STA $0A44 ; Unlock Samus
  .done_unlock_samus
    LDA #$9F55 : STA $0A6C ; Set X speed table pointer

    STZ $0E18              ; Set elevator to inactive
    STZ $1C1F              ; Clear message box index
    STZ $0E1A              ; Clear health bomb flag
    STZ $0795 : STZ $0797  ; Clear door transition flags
    LDA #$0000 : STA !ram_transition_flag

    LDA #$E737 : STA $099C ; Pointer to next frame's room transition code = $82:E737

if !RAW_TILE_GRAPHICS
    LDX $07BB : LDA $8F0018,X
    CMP #$91C9 : BEQ .post_preset_scrolling_sky
    CMP #$91CE : BEQ .post_preset_scrolling_sky
    PLB : PLP : RTL
  .post_preset_scrolling_sky
    JML $8FE89B
else
    PLB : PLP : RTL
endif
}

preset_open_all_blue_doors:
{
    PHP : PHB : PHX : PHY
    LDA #$8484 : STA $C3 : PHA : PLB : PLB

    ; First resolve all door PLMs where the door has previously been opened
    LDX #$004E
  .plm_search_loop
    LDA $1C37,X : BEQ .plm_search_done
    LDY $1D27,X : LDA $0000,Y : CMP #$8A72 : BEQ .plm_door_found
  .plm_search_resume
    DEX : DEX : BRA .plm_search_loop

  .plm_door_found
    LDA $1DC7,X : BMI .plm_search_resume
    PHX : JSL $80818E : LDA $7ED8B0,X : PLX
    AND $05E7 : BEQ .plm_search_resume

    ; Door has been previously opened
    ; Execute the next PLM instruction to set the BTS as a blue door
    LDA $0002,Y : TAY
    LDA $0000,Y : CMP #$86BC : BEQ .plm_delete
    INY : INY
    JSL preset_execute_plm_instruction

  .plm_delete
    STZ $1C37,X
    BRA .plm_search_resume

  .plm_search_done
    ; Now search all of the room BTS for doors
    LDA !ROOM_WIDTH_SCROLLS : STA $C7
    LDA !ROOM_WIDTH_BLOCKS : STA $C1 : ASL : STA $C3
    LDA $7F0000 : LSR : TAY
    STZ $C5 : TDC : %a8() : LDA #$7F : PHA : PLB

  .bts_search_loop
    LDA $6401,Y : AND #$FC : CMP #$40 : BEQ .bts_found
  .bts_continue
    DEY : BNE .bts_search_loop

    ; All blue doors opened
    PLY : PLX : PLB : PLP : RTS

  .bts_found
    ; Convert BTS index to tile index
    ; Also verify this is a door and not a slope or half-tile
    %a16() : TYA : ASL : TAX : %a8()
    LDA $0001,X : BIT #$30 : BNE .bts_continue

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
    CMP #$00 : BEQ .bts_continue

    ; Check what type of door we need to open
    LDA $6401,Y : BIT #$02 : BNE .bts_check_up_or_down
    BIT #$01 : BEQ .bts_facing_left_right
    LDA #$04 : STA $C6

  .bts_facing_left_right
    %a16() : LDA #$0082 : ORA $C5 : STA $0000,X
    TXA : CLC : ADC $C3 : TAX : LDA #$00A2 : ORA $C5 : STA $0000,X
    TXA : CLC : ADC $C3 : TAX : LDA #$08A2 : ORA $C5 : STA $0000,X
    TXA : CLC : ADC $C3 : TAX : LDA #$0882 : ORA $C5 : STA $0000,X
    TDC : %a8() : STA $C6 : STA $6401,Y
    %a16() : TYA : CLC : ADC $C1 : TAX : TDC : %a8() : STA $6401,X
    %a16() : TXA : CLC : ADC $C1 : TAX : TDC : %a8() : STA $6401,X
    %a16() : TXA : CLC : ADC $C1 : TAX : TDC : %a8() : STA $6401,X
    BRL .bts_continue

  .bts_check_up_or_down
    BIT #$01 : BEQ .bts_facing_up_down
    LDA #$08 : STA $C6

  .bts_facing_up_down
    %a16() : LDA #$0084 : ORA $C5 : STA $0006,X
    DEC : STA $0004,X : ORA #$0400 : STA $0002,X : INC : STA $0000,X
    TDC : %a8() : STA $C6 : STA $6401,Y
    STA $6402,Y : STA $6403,Y : STA $6404,Y
    BRL .bts_continue
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
    LDX $07BB
    LDA $0018,X : BEQ .end

    ; Check if this is scrolling sky
    CMP #$91C9 : BEQ .scrolling_sky
    CMP #$91CE : BEQ .scrolling_sky

  .execute_setup_asm
    ; Resume execution
    JML $8FE89B

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
    %a16()
    %i8()
    JSR $933A
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
    JMP .resume_infohud_icon_initialization
}

print pc, " presets bank80 end"
warnpc $80F700 ; save.asm


; $80:9AB1: Add x-ray and grapple HUD items if necessary
org $809AB1
    ; Skip x-ray and grapple if max HP is a multiple of 4,
    ; which is only possible if GT code was used
    LDA $09C4 : AND #$0003 : BEQ .resume_infohud_icon_initialization
    JMP add_grapple_and_xray_to_hud

warnpc $809AC9

; $80:9AC9: Resume original logic
org $809AC9
  .resume_infohud_icon_initialization



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

