org $82FA00
print pc, " presets start"

preset_load:
{
    PHP
    LDA !MUSIC_DATA : STA !SRAM_MUSIC_DATA

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

    LDA #$0008 : STA $0998
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
    LDA $0639 : CMP $063B : BEQ .music_queue_empty

  .music_queue_data_search
    DEC : DEC : AND #$000E : TAX
    LDA $0619,X : BMI .music_check_data
    TXA : CMP $063B : BNE .music_queue_data_search

    ; No music data found in queue
    LDA !SRAM_MUSIC_DATA

  .music_check_data
    CMP !MUSIC_DATA : BEQ .done_load_music_data

    ; Reset music queue, clear track and load data
    LDX $063B : LDA $0629,X : BNE .music_reset_queue_keep_timer
    LDA #$0008 : STA $0629,X

  .music_reset_queue_keep_timer
    LDA #0000 : STA $0619,X : STA $063D
    INX : INX : TXA : AND #$000E : TAX
    LDA #$FF00 : CLC : ADC !MUSIC_DATA : STA $0619,X
    LDA #$0008 : STA $0629,X
    INX : INX : TXA : AND #$000E : STA $0639
    BRA .done_fixing_music_data

  .music_queue_empty
    LDA !SRAM_MUSIC_DATA : CMP !MUSIC_DATA : BEQ .done_load_music_data

    ; Clear track and load data
    LDA #$0000 : JSL !MUSIC_ROUTINE
    LDA #$FF00 : CLC : ADC !MUSIC_DATA : JSL !MUSIC_ROUTINE

  .done_fixing_music_data
    LDA !MUSIC_TRACK : BEQ .done_load_music_track

  .done_load_music_data
    LDA !MUSIC_TRACK : JSL !MUSIC_ROUTINE

  .done_load_music_track
    JSL reset_all_counters
    STZ $0795 ; clear door transition flag

    ; Clear enemies if not in certain rooms
    LDA $079B : CMP #$DD58 : BEQ .set_mb_state
    JSR clear_all_enemies
    BRA .done_clearing_enemies

  .set_mb_state
    ; If glass is broken, assume we should skip MB1
    LDA $7ED820 : BIT #$0004 : BEQ .done_clearing_enemies
    ; Set health to 1 as a hint this was done by a preset
    LDA #$0001 : STA $0FCC

  .done_clearing_enemies
    PLP
    RTL
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

    ; check if custom preset is being loaded
    LDA !ram_custom_preset : BEQ .normal_preset
    JSL custom_preset_load
    BRA .done

  .normal_preset
    LDA !sram_preset_category : ASL : TAX
    LDA.l preset_banks,X : %a8() : PHA : PLB : %a16()

    LDA !ram_load_preset : STA !sram_last_preset : STA $C1
    LDA #$0000 : STA !ram_load_preset

    LDX #$0000
  .loop_path
    LDA $C1 : STA $7F0002,X
    INX #2
    LDA ($C1) : STA $C1 : BNE .loop_path

  ; then traverse from the first preset until the last one, and apply them
  .loop_presets
    DEX #2 : BMI .done
    JSR preset_to_memory
    BRA .loop_presets

  .done
    LDA #$0000
    STA $0795   ; "Currently transitioning"
    STA $0797   ; "Currently transitioning"
    PLB
    RTL
}

preset_to_memory:
{
    STZ $00
    LDA $7F0002,X
    INC #2 : TAY

  .loop
    LDA ($00),Y : INY : INY : CMP #$FFFF : BEQ .done : STA $C3
    LDA ($00),Y : INY : STA $C5
    LDA ($00),Y : INY : AND #$00FF : CMP #$0001 : BEQ .one

  .two
    LDA ($00),Y : INY : INY : STA [$C3]
    BRA .loop

  .one
    %a8()
    LDA ($00),Y : INY : STA [$C3]
    %a16()
    BRA .loop

  .done
    RTS
}

preset_banks:
    dw preset_prkd_crateria_ceres_elevator>>16
    dw preset_kpdr21_crateria_ceres_elevator>>16
    dw preset_hundo_bombs_ceres_elevator>>16
    dw preset_100early_crateria_ceres_elevator>>16
    dw preset_rbo_bombs_ceres_elevator>>16
    dw preset_pkrd_crateria_ship>>16
    dw preset_kpdr25_bombs_ceres_elevator>>16
    dw preset_gtclassic_crateria_ceres_elevator>>16
    dw preset_gtmax_crateria_ship>>16
    dw preset_14ice_crateria_ceres_elevator>>16
    dw preset_14speed_crateria_ceres_elevator>>16
    dw preset_100map_varia_landing_site>>16
    dw preset_nintendopower_crateria_ship>>16
    dw preset_allbosskpdr_crateria_ceres_elevator>>16
    dw preset_allbosspkdr_crateria_ceres_elevator>>16
    dw preset_allbossprkd_crateria_ceres_elevator>>16

print pc, " presets end"


org $82E8D9
    JSL preset_room_setup_asm_fixes


org $80F000
print pc, " preset_start_gameplay start"

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

    LDA #$FFFF : STA $05F5  ; Disable sounds

    JSL $80835D  ; Disable NMI
    JSL $80985F  ; Disable horizontal and vertical timer interrupts
    JSL preset_load_destination_state_and_tiles
    JSL $878016  ; Clear animated tile objects
    JSL $88829E  ; Wait until the end of a v-blank and clear (H)DMA enable flags

    ; Preserve layer 2 values we may have loaded from presets
    LDA $0923 : PHA
    LDA $0921 : PHA
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
    JSL $82E7D3  ; Load level data, CRE, tile table, scroll data, create PLMs and execute door ASM and room setup ASM
    JSL $89AB82  ; Load FX
    JSL $82E97C  ; Load library background

    JSR preset_scroll_fixes

    ; Pull layer 2 values, and use them if they are valid
    PLA : CMP #$5AFE : BEQ .calculate_layer_2
    STA $0917
    PLA : STA $0919
    PLA : STA $0921
    PLA : STA $0923
    BRA .layer_2_loaded

  .calculate_layer_2
    PLA : PLA : PLA        ; Values are not useful, but still need to pull them out of the stack
    JSR $A2F9              ; Calculate layer 2 X position
    JSR $A33A              ; Calculate layer 2 Y position
    LDA $0917 : STA $0921  ; BG2 X scroll = layer 2 X scroll position
    LDA $0919 : STA $0923  ; BG2 Y scroll = layer 2 Y scroll position

  .layer_2_loaded
    JSR $A37B    ; Calculate BG positions
    JSL $80A176  ; Display the viewable part of the room
    JSL $80834B  ; Enable NMI

    LDA #$0004 : STA $A7  ; Set optional next interrupt to Main gameplay

    JSL $80982A  ; Enable horizontal and vertical timer interrupts

    LDA #$E695 : STA $0A42 ; Unlock Samus
    LDA #$E725 : STA $0A44 ; Unlock Samus
    STZ $0E18    ; Set elevator to inactive

    LDA #$0000 : STA $05F5  ; Enable sounds
    JSL stop_all_sounds

    LDA #$E737 : STA $099C  ; Pointer to next frame's room transition code = $82:E737
    PLB
    PLP
    RTL
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
    LDA $0998 : CMP #$0006 : BEQ .execute_setup_asm
    CMP #$001F : BEQ .execute_setup_asm
    CMP #$0028 : BEQ .execute_setup_asm

    ; Disable scrolling sky asm
    STZ $07DF
    ; Clear layer 2 library bits (change 0181 to 0080)
    LDA #$0080 : STA $091B

  .end
    PLB : PLP : RTL
}

preset_scroll_fixes:
{
    ; Fixes bad scrolling caused by a loading into a position that
    ; is normally hidden until passing over a red scroll block.
    ; These fixes can often be found in nearby door asm.
    PHP : %a8() : %i16()
    LDA #$01 : LDX $079B         ; X = room ID
    CPX #$C000 : BPL .halfway    ; organized by room ID so we only have to check half

    CPX #$A011 : BNE +           ; bottom-left of Etecoons Etank
    STA $7ECD25 : STA $7ECD26
    BRA .done
+   CPX #$AC83 : BNE +           ; left of Green Bubbles Missile Room (Norfair Reserve)
    STA $7ECD20
    BRA .done
+   CPX #$AE32 : BNE +           ; bottom of Volcano Room
    STA $7ECD26
    BRA .done
+   CPX #$B07A : BNE +           ; top of Bat Cave
    STA $7ECD20
    BRA .done
+   CPX #$B1E5 : BNE +           ; bottom of Acid Chozo Room
    STA $7ECD26 : STA $7ECD27 : STA $7ECD28
    LDA #$00 : STA $7ECD23 : STA $7ECD24
    BRA .done
+   CPX #$B3A5 : BNE +           ; bottom of Pre-Pillars
    LDY $0AFA : CPY #$0190       ; no scroll fix if Ypos < 400
    BMI .done
    STA $7ECD22 : STA $7ECD24
    LDA #$00 : STA $7ECD21
    BRA .done
+   CPX #$B4AD : BNE .done       ; top of Worst Room in the Game
    LDA #$02 : STA $7ECD20

  .done
    PLP
    RTS

  .halfway
    CPX #$DF45 : BPL .ceres      ; Ceres rooms set BG1 offsets manually
    CPX #$CAF6 : BNE +           ; bottom of WS Shaft
    LDA #$02
    STA $7ECD48 : STA $7ECD4E
    BRA .done
+   CPX #$CBD5 : BNE +           ; top of Electric Death Room (WS E-Tank)
    LDA #$02
    STA $7ECD20
    BRA .done
+   CPX #$CC6F : BNE +           ; right of Basement (Phantoon)
    STA $7ECD24
    BRA .done
+   CPX #$D1A3 : BNE +           ; bottom of Crab Shaft
    STA $7ECD26
    LDA #$02 : STA $7ECD24
    BRA .done
+   CPX #$D48E : BNE +           ; Oasis (bottom of Toilet)
    LDA #$02
    STA $7ECD20 : STA $7ECD21
    BRA .done
+   CPX #$D8C5 : BNE .done       ; Pants Room (door to Shaktool)
    LDA #$00 : STA $7ECD22
    BRA .done

  .ceres
    LDA #$00 : STA $7E005F       ; Initialize mode 7
    CPX #$DF45 : BNE +           ; Ceres Elevator
    LDA #$00 : STA $7E091E : STA $7E0920
    BRL .ceresdone
+   STA $7E0078 : STA $7E0079    ; Ceres Elevator room already does this
    STA $7E007A : STA $7E007B    ; Other rooms should zero out the values
    STA $7E007C : STA $7E007D
    STA $7E007E : STA $7E007F
    STA $7E0080 : STA $7E0081
    STA $7E0082 : STA $7E0083
    CPX #$DF8D : BNE +           ; Ceres Falling Tiles
    LDA #$01 : STA $7E091E
    LDA #$02 : STA $7E0920
    BRA .ceresdone
+   CPX #$DFD7 : BNE +           ; Ceres Magnet Stairs
    LDA #$03 : STA $7E091E
    LDA #$02 : STA $7E0920
    BRA .ceresdone
+   CPX #$E021 : BNE +           ; Ceres Dead Scientists
    LDA #$04 : STA $7E091E
    LDA #$03 : STA $7E0920
    BRA .ceresdone
+   CPX #$E06B : BNE +           ; Ceres 58 Escape
    LDA #$06 : STA $7E091E
    LDA #$03 : STA $7E0920
    BRA .ceresdone
+   CPX #$E0B5 : BNE .ceresdone  ; Ceres Ridley
    LDA #$08 : STA $7E091E
    LDA #$03 : STA $7E0920

  .ceresdone
    PLP
    RTS
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

print pc, " preset_start_gameplay end"
warnpc $80FC00


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

org $F18000
  incsrc presets/prkd_menu.asm
  incsrc presets/kpdr21_menu.asm
  incsrc presets/hundo_menu.asm
  incsrc presets/100early_menu.asm
  incsrc presets/rbo_menu.asm
  incsrc presets/pkrd_menu.asm
  incsrc presets/kpdr25_menu.asm
  print pc, " preset_menu bankF1 end"

org $F28000
  incsrc presets/gtclassic_menu.asm
  incsrc presets/14ice_menu.asm
  incsrc presets/14speed_menu.asm
  incsrc presets/allbosskpdr_menu.asm
  incsrc presets/allbosspkdr_menu.asm
  incsrc presets/allbossprkd_menu.asm
  incsrc presets/gtmax_menu.asm
  incsrc presets/nintendopower_menu.asm
  incsrc presets/100map_menu.asm
  print pc, " preset_menu bankF2 end"

org $EF8000
  incsrc presets/prkd_data.asm
  incsrc presets/hundo_data.asm
  print pc, " preset_data bankEF end"

org $EE8000
  incsrc presets/kpdr21_data.asm
  incsrc presets/rbo_data.asm
  print pc, " preset_data bankEE end"

org $ED8000
  incsrc presets/gtclassic_data.asm
  incsrc presets/14ice_data.asm
  incsrc presets/14speed_data.asm
  print pc, " preset_data bankED end"

org $EC8000
  incsrc presets/allbosskpdr_data.asm
  incsrc presets/allbosspkdr_data.asm
  incsrc presets/allbossprkd_data.asm
  print pc, " preset_data bankEC end"

org $EB8000
  incsrc presets/100early_data.asm
  incsrc presets/kpdr25_data.asm
  print pc, " preset_data bankEB end"

org $EA8000
  incsrc presets/pkrd_data.asm
  incsrc presets/gtmax_data.asm
  print pc, " preset_data bankEA end"

org $E98000
  incsrc presets/nintendopower_data.asm
  incsrc presets/100map_data.asm
  print pc, " preset_data bankE9 end"

