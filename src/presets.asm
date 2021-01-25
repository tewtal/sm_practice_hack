org $82FA00
print pc, " presets start"
preset_load:
{
    PHP

    LDA !MUSIC_BANK : STA !SRAM_MUSIC_BANK
    LDA !MUSIC_TRACK : STA !SRAM_MUSIC_TRACK

    JSL $809E93  ; Clear timer RAM
    JSR $819B  ; Initialise IO registers
    JSR $82E2  ; Load standard BG3 tiles and sprite tiles, clear tilemaps
    JSR $82C5  ; Load initial palette
    JSL $91E00D  ; Initialise Samus

    JSL preset_load_preset

    JSL preset_start_gameplay  ; Start gameplay
    JSL $809A79  ; HUD routine when game is loading

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
    STA $0723  ; Screen fade delay = 1
    STA $0725  ; Screen fade counter = 1

    JSL $80834B  ; Enable NMI with $84 options
    JSL $868000  ; Enable enemy projectiles
    JSL $8483AD  ; Enable PLMs
    JSL $8DC4C2  ; Enable palette FX objects
    JSL $888288  ; Enable HDMA objects
    JSL $878000  ; Enable animated tile objects
    JSL $908E0F  ; Something to do with setting $0AD2 FX1-related

    LDA #$0006 : STA $0DA0
  .loopSomething
    JSL $A08CD7  ; Load enemies
    JSL $808338  ; Wait for NMI
    DEC $0DA0  ; Decrement $0DA0
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
    JSL $91DEBA

    LDA !SRAM_MUSIC_BANK
    CMP !MUSIC_BANK
    BEQ .load_music_track

    ; loads new music bank
    LDA #$FF00 : CLC : ADC !MUSIC_BANK
    JSL !MUSIC_ROUTINE

  .load_music_track
    LDA !MUSIC_TRACK
    JSL !MUSIC_ROUTINE

    JSL reset_all_counters

    ; Clear enemies (8000 = solid to Samus, 0400 = Ignore Samus projectiles)
    LDA #$0000
    -
    TAX : LDA $0F86,X : BIT #$8400 : BNE +
    ORA #$0200 : STA $0F86,X
    +
    TXA : CLC : ADC #$0040 : CMP #$0400 : BNE -
    ; JSL $A08A6D
    PLP
    RTL
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

preset_load_preset:
  PHB
    LDA !sram_preset_category : ASL : TAX
    LDA.l preset_banks,X : %a8() : PHA : PLB : %a16()

    LDA !ram_load_preset : STA !sram_last_preset : STA $C1
    LDA #$0000 : STA !ram_load_preset

    LDX #$0000
  .loop_path
    LDA $C1 : STA $7FF000,X
    INX #2
    LDA ($C1) : STA $C1 : BNE .loop_path

  ; then traverse $7FF000 from the first preset until the last one, and apply them
  .loop_presets
    DEX #2 : BMI .done

    JSR preset_to_memory
    BRA .loop_presets

  .done
    LDA #$0000
    STA $7E09D2 ; Current selected weapon
    STA $7E0A04 ; Auto-cancel item
    STA $0795   ; "Currently transitioning"
    STA $0797   ; "Currently transitioning"
  PLB
    RTL


preset_to_memory:
  PHX
    STZ $00
    LDA $7FF000,X
    INC #2 : TAY

  .loop
    LDA ($00),Y : INY : INY : CMP #$FFFF : BEQ .done : STA $C3
    LDA ($00),Y : INY : STA $C5
    LDA ($00),Y : INY : AND #$00FF : CMP #$0001 : BEQ .one

  .two
    LDA ($00),Y : INY : INY : STA [$C3]
    INX #6
    BRA .loop

  .one
    %a8()
    LDA ($00),Y : INY : STA [$C3]
    %a16()
    INX #5
    BRA .loop

  .done
  PLX
    RTS

preset_banks:
{
  dw preset_prkd_crateria_ship>>16
  dw preset_kpdr21_crateria_ship>>16
  dw preset_hundo_bombs_ceres_elevator>>16
  dw preset_100early_crateria_ceres_elevator>>16
  dw preset_rbo_bombs_ceres_elevator>>16
  dw preset_kpdr25_bombs_ceres_elevator>>16
  dw preset_gtclassic_crateria_ship>>16
  dw preset_14ice_crateria_ceres_elevator>>16
  dw preset_14speed_crateria_ceres_elevator>>16
  dw preset_allbosskpdr_crateria_ceres_elevator>>16
  dw preset_allbosspkdr_crateria_ceres_elevator>>16
  dw preset_allbossprkd_crateria_ceres_elevator>>16
}

print pc, " presets end"


org $80F000
print pc, " preset_start_gameplay start"
preset_start_gameplay:
{
    PHP
    PHB
    PHK : PLB
    %ai16()
    SEI  ; Enable interrupts
    STZ $420B  ; Disable all (H)DMA
    STZ $07E9  ; Clear $07E9
    STZ $0943  ; Disable timer

    JSL $828A9A  ; Execute subroutine $82:8A9A

    LDA #$FFFF : STA $05F5  ; Disable sounds

    JSL $80835D  ; Disable NMI
    JSL $80985F  ; Disable horizontal and vertical timer interrupts
    JSL $82E76B  ; Execute subroutine $82:E76B
    JSR $A12B    ; Play 14h frames of music
    JSL $878016  ; Clear misc. animations
    JSL $88829E  ; Execute subroutine $88:829E
    JSL $8882C1  ; Execute subroutine $88:82C1
    JSL $8483C3  ; Clear PLMs
    JSL $868016  ; Clear E/R projectiles
    JSL $8DC4D8  ; Clear $8D PLM-esque headers
    JSL $90AC8D  ; Update beam graphics
    JSL $82E139  ; Load target colours for common sprites, beams and slashing enemies / pickups
    JSL $A08A1E  ; Load enemies
    JSL $82E071  ; Clear music
    JSR $A12B    ; Play 14h frames of music
    JSL $82E09B  ; Execute subroutine $82:E09B
    JSL $82E113  ; Execute subroutine $82:E113
    JSL $80A23F  ; VRAM $4800..4FFF = 3838h
    JSL $82E7D3  ; Execute subroutine $82:E7D3
    JSL $89AB82  ; Load FX1
    JSL $82E97C  ; Execute subroutine $82:E97C

    JSR $A2F9    ; Calculate layer 2 X position
    JSR $A33A    ; Calculate layer 2 Y position
    LDA $0917 : STA $0921  ; BG2 X scroll = layer 2 X scroll position
    LDA $0919 : STA $0923  ; BG2 Y scroll = layer 2 Y scroll position
    JSR $A37B    ; Calculate BG positions
    JSL $80A176  ; Display the viewable part of the room
    JSL $80834B  ; Enable NMI

    LDA #$0004 : STA $A7  ; Set optional next interrupt to Main gameplay

    JSL $80982A  ; Enable horizontal and vertical timer interrupts
    JSR $A12B    ; Play 14h frames of music

    LDA #$0000 : STA $05F5  ; Enable sounds
    JSL stop_all_sounds

    LDA #$E737 : STA $099C  ; Pointer to next frame's room transition code = $82:E737
    PLB
    PLP
    RTL
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
print pc, " preset_start_gameplay end"
org $E08000 
  ; 42A2 (length in hex)
  print pc, " hundo data start"
  incsrc presets/hundo_data.asm
  print pc, " hundo data end"

  ; 2EAA (length in hex)
  print pc, " prkd data start"
  incsrc presets/prkd_data.asm
  print pc, " prkd data end"

org $E18000
  ; 2FF6 (length in hex)
  print pc, " kpdr21 data start"
  incsrc presets/kpdr21_data.asm
  print pc, " kpdr21 data end"

  ; 3274 (length in hex)
  print pc, " rbo data start"
  incsrc presets/rbo_data.asm
  print pc, " rbo data end"

org $E28000
  ; 2B5E (length in hex)
  print pc, " gtclassic data start"
  incsrc presets/gtclassic_data.asm
  print pc, " gtclassic data end"

  ; 1E95 (length in hex)
  print pc, " 14ice data start"
  incsrc presets/14ice_data.asm
  print pc, " 14ice data end"

  ; 1EE6 (length in hex)
  print pc, " 14speed data start"
  incsrc presets/14speed_data.asm
  print pc, " 14speed data end"

org $E38000
  
  ; 2400 (length in hex)
  print pc, " allbosskpdr data start"
  incsrc presets/allbosskpdr_data.asm
  print pc, " allbosskpdr data end"

  ; 2484 (length in hex)
  print pc, " allbosspkdr data start"
  incsrc presets/allbosspkdr_data.asm
  print pc, " allbosspkdr data end"

  ; 2568 (length in hex)
  print pc, " allbossprkd data start"
  incsrc presets/allbossprkd_data.asm
  print pc, " allbossprkd data end"    

org $E48000
  
  ; 423C (length in hex)
  print pc, " 100early data start"
  incsrc presets/100early_data.asm
  print pc, " 100early data end"

  ; 1E3A (length in hex)
  print pc, " kpdr25 data start"
  incsrc presets/kpdr25_data.asm
  print pc, " kpdr25 data end"
