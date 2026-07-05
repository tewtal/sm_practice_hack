; Patch out copy protection
org $808000
hook_copy_protection:
    db $FF

; Set SRAM size
org $80FFD8
hook_sram_size:
if !FEATURE_TINYSTATES
    db $07 ; 128kb
else
if !FEATURE_SD2SNES
    db $08 ; 256kb
else
    db $05 ; 32kb
endif
endif


; Enable version display
org $8B8697
    NOP

org $8B871D
if !FEATURE_PAL
    LDA #$39DF  ; P
else
    LDA #$39DD  ; N
endif

org $8B8731
if !FEATURE_SD2SNES
if !FEATURE_TINYSTATES
    LDA #$39E3 ; T
else
    LDA #$39E2 ; S
endif
else
    LDA #$04F0 ; blank
endif

if !FEATURE_PAL
org $8BF6DC
else
org $8BF754
endif
hook_version_data:
cleartable ; ASCII
if !VERSION_MAJOR > 9
    db ' ', $30+(!VERSION_MAJOR/10), $30+(!VERSION_MAJOR%10)
else
    db ' ', $30+!VERSION_MAJOR
endif
if !VERSION_MINOR > 9
    db '.', $30+(!VERSION_MINOR/10), $30+(!VERSION_MINOR%10)
else
    db '.', $30+!VERSION_MINOR
endif
if !VERSION_BUILD > 9
    db '.', $30+(!VERSION_BUILD/10), $30+(!VERSION_BUILD%10)
else
    db '.', $30+!VERSION_BUILD
endif
if !VERSION_REV > 9
    db '.', $30+(!VERSION_REV/10), $30+(!VERSION_REV%10)
else
if !VERSION_REV
    db '.', $30+!VERSION_REV
endif
endif
    db $00
table ../resources/normal.tbl
warnpc $8BF760


; Fix Zebes planet tiling error
org $8C9607
zebes_planet_tile_data:
    dw #$0E2F


; Skips the waiting time after teleporting
if !FEATURE_PAL
org $90E874
else
org $90E877
endif
    LDA !sram_fast_teleport : BNE .fast
    JSR $8000
    STZ !ELEVATOR_STATUS
    LDA !SAMUS_Y : STA !SAMUS_PREVIOUS_Y
    JSL $92ED24
    BCC $18
    BRA .end
  .fast
    LDA !MUSIC_TRACK
    JSL $808FC1 ; queue room music track
  .end
%warnpc($90E898, $90E895)


; $82:8BB3 22 69 91 A0 JSL $A09169[$A0:9169]  ; Handles Samus getting hurt?
org $828BB3
if !FEATURE_VANILLAHUD
    ; Vanilla HUD build doesn't need artificial lag
else
    JSL gamemode_end
endif


; Replace unnecessary logic checking controller input to toggle debug CPU brightness
; with logic to collect the v-counter data
org $828AB1
misc_debug_brightness:
    %a8() : LDA $4201 : ORA #$80 : STA $4201 : %ai16()
    LDA $2137 : LDA $213D : STA !ram_vcounter_data

    ; For efficiency, re-implement the debug brightness logic here
    LDA $0DF4 : BEQ .skipDebugBrightness
    %a8() : LDA !REG_2100_BRIGHTNESS : AND #$F0 : ORA #$05 : STA $2100 : %a16()
    BRA .skipDebugBrightness

warnpc $828ADD
org $828ADD       ; Resume original logic
  .skipDebugBrightness


org $82E725
    JSL set_fade_in_door_function
    RTS
optimized_fade_in:
    JSL fade_in_skip_draw
    BRA resume_original_fade_in
warnpc $82E737

org $82E74B
resume_original_fade_in:


org $CF8BBF       ; Set map scroll beep to high priority
hook_spc_engine_map_scroll_beep_priority:
    dw $2A97

if !FEATURE_PAL
org $CFC288
else              ; Mute track 4 so it can be used when music is off
org $CFC2C8
endif
hook_spc_engine_mute_track_4:
    db $30, $C9, $00, $00


org $808F24
    JSL hook_set_music_track
    BRA $00

org $808F65
    JML hook_set_music_data


org $90D000       ; hijack, runs when a shinespark is activated
    JMP misc_shinespark_activation


; Continue drawing escape timer after reaching ship
if !FEATURE_PAL
org $90E905
else
org $90E908
endif
    JSR preserve_escape_timer


if !FEATURE_PAL
org $91EAB8
else
org $91EB53
endif
    JMP misc_check_bonk
hijack_bonk_return:


%startfree(91)

misc_check_bonk:
{
    LDA !SAMUS_POTENTIAL_POSE_VALUES : BMI .return
    LDA !sram_bonk_indicators : BEQ .return
    LDA $7EC622 : CMP !IH_BLANK : BNE .second
    LDA !IH_LETTER_B : STA $7EC622
  .return
    LDA !SAMUS_POSE
    JMP hijack_bonk_return
  .second
    LDA !IH_LETTER_B : STA $7EC628
    BRA .return
}

%endfree(91)


; Stop drawing timer when its VRAM is overwritten
if !FEATURE_PAL
org $A2AC15
else
org $A2ABFD
endif
    JML clear_escape_timer


; Fast bowling chozo cutscene
if !FEATURE_PAL
org $84D671
else
org $84D66B
endif
    JSL lock_samus_bowling

org $84878F
    JMP hook_load_item_plm_gfx

org $848610
    JSR process_plm_draw_instruction

org $848B46
    JSR process_plm_draw_instruction

if !FEATURE_PAL
org $84E090
else
org $84E08A
endif
    JSR process_plm_draw_instruction

%startfree(84)

; Copied from vanilla, but modified to handle block shuffler
process_plm_draw_instruction:
{
    LDA $7EDE6C,X : TAY
    LDA !PLM_BLOCK_INDEX,X : STA $12 : TAX
    LDA $0000,Y : BPL .row
    JMP $8647

  .row
    BEQ .shuffler
    STA $16 : INY #2

  .loop_row
    LDA $0000,Y
    STA $7F0002,X
    INY #2 : INX #2
    DEC $16 : BNE .loop_row

  .done
    JMP $8664

  .shuffler
    STA $16 : INY #2
    CPY #$F000 : BCS .loop_F000_check

  .loop_shuffler
    LDA $0000,Y
    STA $7F0002,X
    INY #2 : INX #2
    DEC $16 : BEQ .done_shuffler
    CPY #$F000 : BCC .loop_shuffler

  .loop_F000
    LDA #$FFFF
    STA $7F0002,X
    INY #2 : INX #2
    DEC $16 : BEQ .done_shuffler
  .loop_F000_check
    CPY #$FFFE : BCS .loop_shuffler
    BRA .loop_F000

  .done_shuffler
    ; subtract Y from X
    PHY : TXA
    SEC : SBC $01,X : TAX

if !FEATURE_PAL
else
    ; account for bank 84 patches
    LDA #$861E : STA $7F8613,X ; $848610 misc
    LDA #$00B9 : STA $7F8791,X ; $84878F misc
    TDC        : STA $7F8792,X ; $84878F misc
    LDA #$8E22 : STA $7F88A1,X ; $84889F infohud
    LDA #$8081 : STA $7F88A3,X ; $84889F infohud
    LDA #$861E : STA $7F8B49,X ; $848B46 misc
    LDA #$A2DA : STA $7F8BDF,X ; $848BDD fanfare
    LDA #$0EA2 : STA $7F8BE0,X ; $848BDD fanfare
    LDA #$0007 : STA $7F8D0F,X ; $848D0C layout
    LDA #$0001 : STA $7FAAE1,X ; $84AADF layout
    LDA #$A2B5 : STA $7FAAE3,X ; $84AADF layout
    LDA #$949D : STA $7FAC03,X ; $84AC01 layout
    LDA #$09A2 : STA $7FB426,X ; $84B423 layout
    LDA #$09A2 : STA $7FB4D4,X ; $84B4D1 layout
    LDA #$2000 : STA $7FB7F5,X ; $84B7F2 layout
                               ; $84BA4C layout
    LDA #$BA6F : STA $7FBA52,X ; $84BA50 layout
                               ; $84BA54 layout
                               ; $84BA6F layout
                               ; $84BA7A layout
    LDA #$C8B9 : STA $7FBAD3,X ; $84BAD1 layout
    LDA #$291D : STA $7FBAD5,X ; $84BAD1 layout
    LDA #$007C : STA $7FBAD7,X ; $84BAD1 layout
    LDA #$A94A : STA $7FBAD9,X ; $84BAD1 layout
    LDA #$0004 : STA $7FBADB,X ; $84BAD1 layout
    LDA #$9900 : STA $7FBADC,X ; $84BAD1 layout
    LDA #$BA4C : STA $7FBAFA,X ; $84BAF8 layout
    LDA #$BE4B : STA $7FBE45,X ; $84BE43 layout
    LDA #$CFA0 : STA $7FD016,X ; $84D014 layout
    LDA #$C910 : STA $7FD018,X ; $84D014 layout
    LDA #$A4AD : STA $7FD191,X ; $84D18F layout
    LDA #$2909 : STA $7FD193,X ; $84D18F layout
    LDA #$0200 : STA $7FD195,X ; $84D18F layout
    LDA #$47F0 : STA $7FD197,X ; $84D18F layout
    LDA #$02AD : STA $7FD199,X ; $84D18F layout
    LDA #$290B : STA $7FD19B,X ; $84D18F layout
    LDA #$000F : STA $7FD19D,X ; $84D18F layout
    LDA #$03C9 : STA $7FD19F,X ; $84D18F layout
    LDA #$D000 : STA $7FD1A1,X ; $84D18F layout
    LDA #$AD3C : STA $7FD1A3,X ; $84D18F layout
    LDA #$0A1C : STA $7FD1A5,X ; $84D18F layout
    LDA #$1DC9 : STA $7FD1A7,X ; $84D18F layout
    LDA #$F000 : STA $7FD1A9,X ; $84D18F layout
    LDA #$C90A : STA $7FD1AB,X ; $84D18F layout
    LDA #$0079 : STA $7FD1AD,X ; $84D18F layout
    LDA #$05F0 : STA $7FD1AF,X ; $84D18F layout
    LDA #$7AC9 : STA $7FD1B1,X ; $84D18F layout
    LDA #$D000 : STA $7FD1B3,X ; $84D18F layout
    LDA #$A92A : STA $7FD1B5,X ; $84D18F layout
    LDA #$000C : STA $7FD1B7,X ; $84D18F layout
    LDA #$FA22 : STA $7FD1B9,X ; $84D18F layout
    LDA #$8081 : STA $7FD1BB,X ; $84D18F layout
    LDA #$01A9 : STA $7FD1BD,X ; $84D18F layout
    LDA #$9D00 : STA $7FD1BF,X ; $84D18F layout
    LDA #$0FB4 : STA $7FD1C1,X ; $84D18F layout
                               ; $84D1DE layout
    LDA #$A4AD : STA $7FD33D,X ; $84D33B layout
    LDA #$2909 : STA $7FD33F,X ; $84D33B layout
    LDA #$1000 : STA $7FD341,X ; $84D33B layout
    LDA #$13F0 : STA $7FD343,X ; $84D33B layout
    LDA #$01A9 : STA $7FD345,X ; $84D33B layout
    LDA #$9F00 : STA $7FD347,X ; $84D33B layout
    LDA #$DE1C : STA $7FD349,X ; $84D33B layout
    LDA #$FE7E : STA $7FD34B,X ; $84D33B layout
    LDA #$1D27 : STA $7FD34D,X ; $84D33B layout
    LDA #$27FE : STA $7FD34F,X ; $84D33B layout
    LDA #$A91D : STA $7FD351,X ; $84D33B layout
    LDA #$D356 : STA $7FD353,X ; $84D33B layout
    LDA #$D79D : STA $7FD355,X ; $84D33B layout
    LDA #$1CD7 : STA $7FD356,X ; $84D33B layout
    LDA #$F084 : STA $7FD66E,X ; $84D66B misc
    LDA #$861E : STA $7FE08D,X ; $84E08A misc
    LDA #$8899 : STA $7FE53F,X ; $84E53D layout
    LDA #$0002 : STA $7FE8D0,X ; $84E8CE layout
    LDA #$0002 : STA $7FEE04,X ; $84EE02 layout
endif

    ; account for WRAM modifications
    TDC
    STA $7F003B,X ; $39-3B
    STA $7F003C,X ; $39-3B
    STA $7F0040,X ; $3E-43
    STA $7F0042,X ; $3E-43
    STA $7F0044,X ; $3E-43
    STA $7F00C3,X ; $C1-CF
    STA $7F00C5,X ; $C1-CF
    STA $7F00C7,X ; $C1-CF
    STA $7F00C9,X ; $C1-CF
    STA $7F00CB,X ; $C1-CF
    STA $7F00CD,X ; $C1-CF
    STA $7F00CF,X ; $C1-CF
    STA $7F00D0,X ; $C1-CF
    STA $7F05A2,X ; !REALTIME_LAG_COUNTER
    STA $7F05D7,X ; !MENU_STACK_INDEX
    STA $7F05D9,X ; !MENU_STACK_INDEX
    STA $7F0A04,X ; !SAMUS_FAKE_SHINESPARK_FLAG
    STA $7F0A16,X ; !SAMUS_DOUBLE_JUMP
    STA $7F0A18,X ; !SAMUS_SUBTRACT_WALL_JUMP
    STA $7F0A1C,X ; !SAMUS_SPEED_OR_BLUE_BOOSTER_BITMASK
    STA $7F0A72,X ; !SAMUS_WATER_PHYSICS
    STA $7F0A9A,X ; !SAMUS_LAVA_DAMAGE_SUITS
    STA $7F0B0E,X ; !DAMAGE_COUNTER

if !FEATURE_VANILLAHUD
else
    ; Check if door skip is selected
    LDA !sram_display_mode : CMP !IH_MODE_ROOMSTRAT_INDEX : BNE .check_sprite_flags
    LDA !sram_room_strat : BEQ .check_super_hud
    CMP !IH_STRAT_DOORSKIP_INDEX : BNE .check_sprite_flags

  .draw_earthquake
    ; Draw value relevant for block shuffler
    LDA !EARTHQUAKE_EXECUTION_COUNT
    AND #$F000 : XBA : LSR #3 : TAX
    LDA.l HexGFXTable,X : STA !HUD_TILEMAP+$88
    LDA !EARTHQUAKE_EXECUTION_COUNT
    AND #$0F00 : XBA : ASL : TAX
    LDA.l HexGFXTable,X : STA !HUD_TILEMAP+$8A
    LDA !EARTHQUAKE_EXECUTION_COUNT
    AND #$00F0 : LSR #3 : TAX
    LDA.l HexGFXTable,X : STA !HUD_TILEMAP+$8C
    LDA !EARTHQUAKE_EXECUTION_COUNT
    AND #$000F : ASL : TAX
    LDA.l HexGFXTable,X : STA !HUD_TILEMAP+$8E
    BRA .check_sprite_flags

  .check_super_hud
    LDA !sram_superhud_bottom : CMP !IH_SUPERHUD_DOORSKIP_BOTTOM_INDEX
    BEQ .draw_earthquake

  .check_sprite_flags
endif
    LDA !ram_sprite_feature_flags : BEQ .end

    ; Remove up to !OAM_HIGH
    LDA !OAM_STACK_POINTER : PHA
    LDA #(!OAM_HIGH-!OAM_LOW) : STA !OAM_STACK_POINTER
    JSR hide_sprite_features
    TYA : CMP 1,S : BPL .clear_oam
    PLA : TYA : PHA
  .clear_oam
    PLA : STA !OAM_STACK_POINTER

    ; Set remaining OAM to default values
    CPY #(!OAM_HIGH-!OAM_LOW) : BPL .end
  .clear_oam_loop
    LDA #$F000 : STA !OAM_LOW,Y
    TDC : STA !OAM_LOW+2,Y
    TYA : CLC : ADC #$0004 : TAY
    CPY #(!OAM_HIGH-!OAM_LOW) : BMI .clear_oam_loop

  .end
    PLY
    JMP $8664
}

hook_load_item_plm_gfx:
{
    LDA $0000,Y
    CMP #$AF00 : BCC .end
    CMP #$FF00 : BCS .end

    ; We are attempting to load GFX from freespace,
    ; probably because of some OOB block shuffler shenanigans
    ; However we are using the freespace so we don't want to use that,
    ; so transfer data from $AF00 which we know is FFFF
    LDA #$AF00

  .end
    JMP $8792
}

hide_sprite_features:
{
    LDX #$0000 : TXY
  .loop
    LDA !OAM_LOW+2,X : AND #$00FF
    CMP #$0047 : BEQ .skip
    CMP #$00D0 : BCC .keep
    CMP #$00F0 : BCC .skip
  .keep
    PHX : TYA
    CMP 1,S : BEQ .continue

    ; Replace earlier entries we skipped
    LDA !OAM_LOW,X : STA !OAM_LOW,Y
    LDA !OAM_LOW+2,X : STA !OAM_LOW+2,Y

  .continue
    PLX
    TYA : CLC : ADC #$0004 : TAY
  .skip
    TXA : CLC : ADC #$0004 : TAX
    CPX #(!OAM_HIGH-!OAM_LOW) : BPL .done
    CPY !OAM_STACK_POINTER : BMI .loop
  .done
    RTS
}

handle_gold_block:
{
    PHA : PHP
    LDA !ram_sprite_feature_flags : BEQ .continue

    ; Remove up to either stack pointer or #$0384
    LDA !OAM_STACK_POINTER : PHA
    CMP #($0384-!OAM_LOW) : BPL .remove
    LDA #($0384-!OAM_LOW) : STA !OAM_STACK_POINTER
  .remove
    PHY
    JSR hide_sprite_features
    PLY
    PLA : STA !OAM_STACK_POINTER

  .continue
    ; Fix up the PLM
    LDA #$0380 : TAX : STA !PLM_ID,Y
    LDA $0382 : STA !PLM_INSTRUCTION_POINTER,Y
    PLP : PLA
    JMP ($0380)
}

handle_gold_block_pointer:
    dw #handle_gold_block

%endfree(84)


org $949422
    ; Replace AND #$00FF with NOP since it is not needed,
    ; but we still want to burn a little CPU for parity with vanilla
    NOP : BRA $05
hook_gold_block:
    dw #handle_gold_block_pointer


org $869D59
    JSR move_kraid_rocks_horizontally


%startfree(86)

; Copied from $8688B6 but optimized for Kraid rocks using a hard-coded radius
; This is intended to offset extra practice rom lag in Kraid's room
move_kraid_rocks_horizontally:
{
    PHX
    STZ $12 : STZ $14
    LDA !ENEMY_PROJ_X_VELOCITY,X : BPL .storeVelocity
    DEC $14
  .storeVelocity
    STA $13
    LDA #$0004 : STA $1C
    LDA !ENEMY_PROJ_Y,X : SEC : SBC #$0004 : AND #$FFF0 : STA $1A
    LDA !ENEMY_PROJ_Y,X : CLC : ADC #$0003 : SEC : SBC $1A
    LSR #4
    STA $1A : STA $20
    LDA !ENEMY_PROJ_Y,X : SEC : SBC #$0004 : LSR #4
    %a8()
    STA $4202
    LDA !ROOM_WIDTH_BLOCKS : STA $4203
    %a16()
    LDA !ENEMY_PROJ_X_SUBPX,X : CLC : ADC $12 : STA $16
    LDA !ENEMY_PROJ_X,X : ADC $14 : STA $18
    BIT $14 : BMI .subtract
    CLC : ADC #$0003
    BRA .store
  .subtract
    SEC : SBC #$0004
  .store
    STA $22 : LSR #4 : CLC : ADC $4216 : ASL : TAX
    JMP $8930
}

%endfree(86)


org $88B439
    JMP misc_lava_bubble_sfx

org $908176
    JMP misc_water_bubble_sfx


%startfree(88)

misc_lava_bubble_sfx:
{
    LDA !sram_random_bubble_sfx : BNE .override

    ; Vanilla logic
    LDA !CACHED_RANDOM_NUMBER : AND #$0007
    TAY : LDA $B3A1,Y : AND #$00FF

  .play
    JSL $8090CB
    JMP $B44A

  .override
    PHX : ASL : TAX : JMP (.table,X)

  .table
    dw .return
    dw .return
    dw .play12
    dw .play13
    dw .play14
    dw .play12
    dw .play13
    dw .play14

  .return
    PLX : JMP $B44A

  .play12
    PLX : LDA #$0012 : BRA .play

  .play13
    PLX : LDA #$0013 : BRA .play

  .play14
    PLX : LDA #$0014 : BRA .play
}

%endfree(88)


%startfree(90)

misc_water_bubble_sfx:
{
    LDA !sram_random_bubble_sfx : BNE .override

    ; Vanilla logic
    JSL $808111 : BIT #$0001 : BEQ .high

  .low
    LDA #$000F
    BRA .play

  .high
    LDA #$0011

  .play
    JSL $8090CB

  .return
    JMP $818B

  .override
    ASL : TAX : JMP (.table,X)

  .table
    dw .return
    dw .return
    dw .low
    dw .low
    dw .low
    dw .high
    dw .high
    dw .high
}

hook_set_music_track:
{
    STZ !MUSIC_TRACK+1
    PHA
    LDA !sram_music_toggle : CMP #$01 : BNE .music_off

  .play_music
    PLA : STA $2140
    RTL

  .music_off
    ; option to force fanfare music
    LDA !sram_fanfare : CMP.b !FANFARE_FORCE_MUSIC : BNE .no_music
    LDA !MUSIC_TRACK : BEQ .play_music
    CMP #$02 : BEQ .play_music

  .no_music
    PLA : BEQ .set_register

    ; play muted track 4
    LDA #$04

  .set_register
    STA $2140
    RTL
}

hook_set_music_data:
{
    STA !MUSIC_DATA : TAX ; overwritten code
    LDA !sram_music_toggle : CMP #$0002 : BEQ .fast_no_music
    JML $808F69

  .fast_no_music
    JML $808F89
}

RandomizeOnLoad:
; Allows users to configure a range of variation in energy/ammo
{
    ; randomize energy on loadstate
    LDA !sram_loadstate_rando_energy : BEQ .reserves
    %a8()
    ; treat low byte of seed as a signed value
    LDA !ram_seed_X : BMI .subEnergy
  .loopAddEnergy
    ; check if it's within the chosen range
    CMP !sram_loadstate_rando_energy : BEQ .addAndSetEnergy : BCS .oorAddEnergy
  .addAndSetEnergy
    ; within range, add it to energy
    %a16() ; assuming high byte is clean from flag check
    CLC : ADC !SAMUS_HP : STA !SAMUS_HP
    BRA .doneEnergy
  .oorAddEnergy
    ; subtract chosen range from seed and try again
    SBC !sram_loadstate_rando_energy ; carry was already set
    BRA .loopAddEnergy

  .subEnergy
    ; seed was negative, invert it to positive
    EOR #$FF : INC
  .loopSubEnergy
    ; check if it's within the chosen range
    CMP !sram_loadstate_rando_energy : BEQ .subAndSetEnergy : BCS .oorSubEnergy
  .subAndSetEnergy
    ; within range, subtract it from energy
    %a16()
    STA $C1
    LDA !SAMUS_HP : SEC : SBC $C1 : STA !SAMUS_HP
    BRA .doneEnergy
  .oorSubEnergy
    ; subtract chosen range from seed and try again
    SBC !sram_loadstate_rando_energy ; carry was already set
    BRA .loopSubEnergy

  .dontDie
    ; minimum of 1 energy
    LDA #$0001 : STA !SAMUS_HP

  .doneEnergy
    ; check if energy is negative
    LDA !SAMUS_HP : BEQ .dontDie : BMI .dontDie
    ; check if energy exceeded max
    CMP !SAMUS_HP_MAX : BCC .doneEnergyRerandomize
    LDA !SAMUS_HP_MAX : STA !SAMUS_HP
  .doneEnergyRerandomize
    ; this normally only runs while the menu is open
    JSL MenuRNG

  .reserves
    ; skip if no reserve tanks
    LDA !SAMUS_RESERVE_MAX : BEQ .missiles
    LDA !sram_loadstate_rando_reserves : BEQ .missiles
    ; feature enabled
    %a8()
    ; treat low byte of seed as a signed value
    LDA !ram_seed_X : BMI .subReserves
  .loopAddReserves
    ; check if it's within the chosen range
    CMP !sram_loadstate_rando_reserves : BEQ .addAndSetReserves : BCS .oorAddReserves
  .addAndSetReserves
    ; within range, add it to reserves
    %a16() ; assuming high byte is clean from flag check
    CLC : ADC !SAMUS_RESERVE_ENERGY : STA !SAMUS_RESERVE_ENERGY
    BRA .doneReserves
  .oorAddReserves
    ; subtract chosen range from seed and try again
    SBC !sram_loadstate_rando_reserves ; carry was already set
    BRA .loopAddReserves

  .subReserves
    ; seed was negative, invert it to positive
    EOR #$FF : INC
  .loopSubReserves
    ; check if it's within the chosen range
    CMP !sram_loadstate_rando_reserves : BEQ .subAndSetReserves : BCS .oorSubReserves
  .subAndSetReserves
    ; within range, subtract it from reserves
    %a16()
    STA $C1
    LDA !SAMUS_RESERVE_ENERGY : SEC : SBC $C1 : STA !SAMUS_RESERVE_ENERGY
    BRA .doneReserves
  .oorSubReserves
    ; subtract chosen range from seed and try again
    SBC !sram_loadstate_rando_reserves ; carry was already set
    BRA .loopSubReserves

  .minReserves
    ; minimum of 0 reserves
    STZ !SAMUS_RESERVE_ENERGY

  .doneReserves
    ; check if reserves is negative
    LDA !SAMUS_RESERVE_ENERGY : BMI .minReserves
    ; check if reserves exceeded max
    CMP !SAMUS_RESERVE_MAX : BCC .doneReservesRerandomize
    LDA !SAMUS_RESERVE_MAX : STA !SAMUS_RESERVE_ENERGY
  .doneReservesRerandomize
    ; this normally only runs while the menu is open
    JSL MenuRNG

  .missiles
    ; skip if no missile tanks
    LDA !SAMUS_MISSILES_MAX : BEQ .supers
    LDA !sram_loadstate_rando_missiles : BEQ .supers
    ; feature enabled
    %a8()
    ; treat low byte of seed as a signed value
    LDA !ram_seed_X : BMI .subMissiles
  .loopAddMissiles
    ; check if it's within the chosen range
    CMP !sram_loadstate_rando_missiles : BEQ .addAndSetMissiles : BCS .oorAddMissiles
  .addAndSetMissiles
    ; within range, add it to missiles
    %a16() ; assuming high byte is clean from flag check
    CLC : ADC !SAMUS_MISSILES : STA !SAMUS_MISSILES
    BRA .doneMissiles
  .oorAddMissiles
    ; subtract chosen range from seed and try again
    SBC !sram_loadstate_rando_missiles ; carry was already set
    BRA .loopAddMissiles

  .subMissiles
    ; seed was negative, invert it to positive
    EOR #$FF : INC
  .loopSubMissiles
    ; check if it's within the chosen range
    CMP !sram_loadstate_rando_missiles : BEQ .subAndSetMissiles : BCS .oorSubMissiles
  .subAndSetMissiles
    ; within range, subtract it from missiles
    %a16()
    STA $C1
    LDA !SAMUS_MISSILES : SEC : SBC $C1 : STA !SAMUS_MISSILES
    BRA .doneMissiles
  .oorSubMissiles
    ; subtract chosen range from seed and try again
    SBC !sram_loadstate_rando_missiles ; carry was already set
    BRA .loopSubMissiles

  .minMissiles
    ; minimum of 0 missiles
    STZ !SAMUS_MISSILES

  .doneMissiles
    ; check if missiles is negative
    LDA !SAMUS_MISSILES : BMI .minMissiles
    ; check if missiles exceeded max
    CMP !SAMUS_MISSILES_MAX : BCC .doneMissilesRerandomize
    LDA !SAMUS_MISSILES_MAX : STA !SAMUS_MISSILES
  .doneMissilesRerandomize
    ; this normally only runs while the menu is open
    JSL MenuRNG

  .supers
    ; skip if no super missile tanks
    LDA !SAMUS_SUPERS_MAX : BEQ .powerbombs
    LDA !sram_loadstate_rando_supers : BEQ .powerbombs
    ; feature enabled
    %a8()
    ; treat low byte of seed as a signed value
    LDA !ram_seed_X : BMI .subSupers
  .loopAddSupers
    ; check if it's within the chosen range
    CMP !sram_loadstate_rando_supers : BEQ .addAndSetSupers : BCS .oorAddSupers
  .addAndSetSupers
    ; within range, add it to supers
    %a16() ; assuming high byte is clean from flag check
    CLC : ADC !SAMUS_SUPERS : STA !SAMUS_SUPERS
    BRA .doneSupers
  .oorAddSupers
    ; subtract chosen range from seed and try again
    SBC !sram_loadstate_rando_supers ; carry was already set
    BRA .loopAddSupers

  .subSupers
    ; seed was negative, invert it to positive
    EOR #$FF : INC
  .loopSubSupers
    ; check if it's within the chosen range
    CMP !sram_loadstate_rando_supers : BEQ .subAndSetSupers : BCS .oorSubSupers
  .subAndSetSupers
    ; within range, subtract it from supers
    %a16()
    STA $C1
    LDA !SAMUS_SUPERS : SEC : SBC $C1 : STA !SAMUS_SUPERS
    BRA .doneSupers
  .oorSubSupers
    ; subtract chosen range from seed and try again
    SBC !sram_loadstate_rando_supers ; carry was already set
    BRA .loopSubSupers

  .minSupers
    ; minimum of 0 supers
    STZ !SAMUS_SUPERS

  .doneSupers
    ; check if supers is negative
    LDA !SAMUS_SUPERS : BMI .minSupers
    ; check if supers exceeded max
    CMP !SAMUS_SUPERS_MAX : BCC .doneSupersRerandomize
    LDA !SAMUS_SUPERS_MAX : STA !SAMUS_SUPERS
  .doneSupersRerandomize
    ; this normally only runs while the menu is open
    JSL MenuRNG

  .powerbombs
    ; skip if no power bomb tanks
    LDA !SAMUS_PBS_MAX : BEQ .exit
    LDA !sram_loadstate_rando_powerbombs : BEQ .exit
    ; feature enabled
    %a8()
    ; treat low byte of seed as a signed value
    LDA !ram_seed_X : BMI .subPBs
  .loopAddPBs
    ; check if it's within the chosen range
    CMP !sram_loadstate_rando_powerbombs : BEQ .addAndSetPBs : BCS .oorAddPBs
  .addAndSetPBs
    ; within range, add it to power bombs
    %a16() ; assuming high byte is clean from flag check
    CLC : ADC !SAMUS_PBS : STA !SAMUS_PBS
    BRA .donePBs
  .oorAddPBs
    ; subtract chosen range from seed and try again
    SBC !sram_loadstate_rando_powerbombs ; carry was already set
    BRA .loopAddPBs

  .subPBs
    ; seed was negative, invert it to positive
    EOR #$FF : INC
  .loopSubPBs
    ; check if it's within the chosen range
    CMP !sram_loadstate_rando_powerbombs : BEQ .subAndSetPBs : BCS .oorSubPBs
  .subAndSetPBs
    ; within range, subtract it from power bombs
    %a16()
    STA $C1
    LDA !SAMUS_PBS : SEC : SBC $C1 : STA !SAMUS_PBS
    BRA .donePBs
  .oorSubPBs
    ; subtract chosen range from seed and try again
    SBC !sram_loadstate_rando_powerbombs ; carry was already set
    BRA .loopSubPBs

  .minPBs
    ; minimum of 0 power bombs
    STZ !SAMUS_PBS

  .donePBs
    ; check if power bombs is negative
    LDA !SAMUS_PBS : BMI .minPBs
    ; check if power bombs exceeded max
    CMP !SAMUS_PBS_MAX : BCC .donePBsRerandomize
    LDA !SAMUS_PBS_MAX : STA !SAMUS_PBS
  .donePBsRerandomize
    ; this normally only runs while the menu is open
    JSL MenuRNG

  .exit
    RTL
}

lock_samus_bowling:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_BOWLING : BNE .speedup
    TDC
if !FEATURE_PAL
    JMP $F081
else
    JMP $F084
endif

  .speedup
    TDC
if !FEATURE_PAL
    JSL $90F081
else
    JSL $90F084
endif
    LDA.w #locked_samus_speedup_movement_handler : STA !SAMUS_LOCKED_HANDLER
    RTL
}

locked_samus_speedup_movement_handler:
{
    ; Original logic
    PHP : PHB : PHK : PLB
    %ai16()
    JSR $AECE     ; Handle projectiles
if !FEATURE_PAL
    JSR $EAFF     ; Handle Samus movement
else
    JSR $EB02     ; Handle Samus movement
endif

    ; Bowling cutscene runs for 1938 frames, which is divisible by 6
    ; We can therefore run two extra passes per frame
    ; without having to check if the cutscene has ended
    ; (we could do five extra passes but the rendering is not good)

    ; Execute first extra pass
    JSL $868104   ; Enemy projectile handler
    JSL $8485B4   ; PLM handler
if !FEATURE_PAL
    JSL $A08FE4   ; Main enemy routine
    JSR $AECE     ; Handle projectiles
    JSR $EAFF     ; Handle Samus movement
else
    JSL $A08FD4   ; Main enemy routine
    JSR $AECE     ; Handle projectiles
    JSR $EB02     ; Handle Samus movement
endif

    ; Execute second extra pass
    JSL $868104   ; Enemy projectile handler
    JSL $8485B4   ; PLM handler
if !FEATURE_PAL
    JSL $A08FE4   ; Main enemy routine
    JSR $AECE     ; Handle projectiles
    JSR $EAFF     ; Handle Samus movement
else
    JSL $A08FD4   ; Main enemy routine
    JSR $AECE     ; Handle projectiles
    JSR $EB02     ; Handle Samus movement
endif

    PLB : PLP : RTL
}

elevator_state_handler:
{
    ; Act like Samus locked ($90E8DC) until Samus moves far enough down,
    ; then switch to riding elevator ($90E8EC)
    PHP : PHB : PHK : PLB
    %ai16()
    LDA !SAMUS_Y : CMP #$0010 : BMI .stayLocked

    ; Switch to riding elevator
if !FEATURE_PAL
    LDA #$E8E9 : STA !SAMUS_MOVEMENT_HANDLER
    JMP $E8EF
else
    LDA #$E8EC : STA !SAMUS_MOVEMENT_HANDLER
    JMP $E8F2
endif

  .stayLocked
    STZ !SAMUS_CONTACT_DAMAGE_INDEX
    JSL $90A91B
    PLB : PLP : RTL
}

gamemode_end:
{
    ; overwritten logic
if !FEATURE_PAL
    JSL $A09179
else
    JSL $A09169
endif

    ; If minimap is disabled or shown, we ignore artificial lag
    LDA !DISABLE_MINIMAP : BNE .endlag
    LDA !ram_minimap : BNE .endlag

    ; Ignore artifical lag if sprite features are active
    LDA !ram_sprite_feature_flags : BNE .endlag

    ; Artificial lag, multiplied by 16 to get loop count
    ; Each loop takes 5 clock cycles (assuming branch taken)
    ; For reference, 41 loops ~= 1 scanline
    LDA !sram_artificial_lag : BEQ .endlag

if !FEATURE_VANILLAHUD
else
    ; To account for various changes, we may need to tack on more clock cycles
    ; These can be removed as code is added to maintain CPU parity during normal gameplay
    LDA !sram_top_display_mode : BIT !TOP_HUD_VANILLA_BIT : BNE .vanilla_display_lag_loop
    LDA !ram_frames_held : BNE .vanilla_display_lag_loop
endif
    LDA !sram_artificial_lag
    ASL #4
    NOP #4 ; Add 8 more clock cycles
    CLC : ADC #$000B ; Add 60 cycles including CLC+ADC
    TAX
  .lagloop
    DEX : BNE .lagloop
  .endlag
    RTL

  .vanilla_display_lag_loop
    ; Vanilla display logic uses more CPU so reduce artificial lag
    LDA !sram_artificial_lag
    DEC : BEQ .endlag ; Remove 76 clock cycles
    DEC : BEQ .endlag ; Remove 76 clock cycles
    ASL #2
    INC ; Add 4 loops (22 clock cycles including the INC)
    ASL #2
    INC  ; Add 1 loop (7 clock cycles including the INC)
    NOP #2 ; Add 4 more clock cycles
    CLC : ADC #$000B ; Add 60 cycles including CLC+ADC
    TAX
  .vanilla_lagloop
    DEX : BNE .vanilla_lagloop
    RTL
}

stop_all_sounds:
{
    ; If sounds are not enabled, the game won't clear the sounds
    LDA !DISABLE_SOUNDS : PHA
    STZ !DISABLE_SOUNDS
    JSL $82BE17 ; Cancel sound effects
    PLA : STA !DISABLE_SOUNDS

    ; Makes the game check Samus' health again, to see if we need annoying sound
    STZ !SAMUS_HEALTH_WARNING
    LDA !sram_healthalarm : CMP #$0004 : BNE .done_health_alarm
    LDA #$0002 : JSL $80914D
  .done_health_alarm
    RTL
}

misc_shinespark_activation:
{
    ; store timer when shinespark activated
    LDA !SAMUS_SHINE_TIMER : STA !ram_activated_shine_duration

    LDA #$D068 ; overwritten code
    JMP $D003 ; return
}

preserve_escape_timer:
{
    ; check if timer is active
    LDA !TIMER_STATUS : AND #$0007 : BEQ .done
    JSL $809F6C ; Draw timer

  .done
if !FEATURE_PAL
    JMP $EA7C
else          ; overwritten code
    JMP $EA7F
endif
}

clear_escape_timer:
{
    ; clear timer status
    STZ !TIMER_STATUS

    ; overwritten code
if !FEATURE_PAL
    LDA #$AC33
else
    LDA #$AC1B
endif
    STA !ENEMY_VAR_5,X
    STZ $0DEC
    RTL
}

set_fade_in_door_function:
{
    ; Fade in has considerable lag (multiple lag frames per game frame)
    ; which exacerbates the CPU load that the practice hack adds each frame (including lag frames)
    ; To offset this, we can optimize away a couple of draw routines for most rooms
    ; The optimizations adversely affect yapping maw and metroid enemies,
    ; so avoid using the optimizations in those rooms.

    ; If we are in Ceres, use original routine
    LDA !AREA_ID : CMP #$0006 : BEQ .original
    ; If the first enemy is a yapping maw, use original routine
    LDA !ENEMY_ID : CMP #$E7BF : BEQ .original
    ; If this is Red Brinstar Firefleas, use original routine
    LDA !ROOM_ID : CMP.w #ROOM_RedBrinstarElevRoom : BEQ .original
    ; If this room is not one of the metroid rooms, use optimized routine
    CMP.w #ROOM_MetroidRoom1 : BCC .optimized : CMP.w #ROOM_BlueHopperRoom : BCS .optimized
  .original
    LDA #$E737
    BRA .set
  .optimized
    LDA #optimized_fade_in
  .set
    STA !DOOR_FUNCTION_POINTER

    ; Overwritten logic
    LDA $51 : ORA #$001F : STA $51
    JML $908E0F
}

misc_force_stand_routine:
{
    ; Similar to $90:E2D4 routine, except use facing forward pose
    PHP : PHB : PHK : PLB
    LDA !SAMUS_ITEMS_EQUIPPED : AND #$0021 : BEQ .pose_chosen
    LDA #$009B
  .pose_chosen
    JSR $E2F4
    PLB : PLP : RTL
}

%endfree(90)


%startfree(B4)

; No reason these drop tables can't overlap
all_power_bombs_drop_table:
    db #$00
all_supers_drop_table:
    db #$00
all_nothing_drop_table:
    db #$00
all_missiles_drop_table:
    db #$00
all_big_hp_drop_table:
    db #$00
all_small_hp_drop_table:
    db #$FF, #$00, #$00, #$00, #$00, #$00

drop_chance_tables:
    dw #$0000
    dw #all_small_hp_drop_table
    dw #all_big_hp_drop_table
    dw #all_missiles_drop_table
    dw #all_nothing_drop_table
    dw #all_supers_drop_table
    dw #all_power_bombs_drop_table
  .end

%endfree(B4)


if !FEATURE_PAL
org $8B9EEA
else ; runs when title intro completes
org $8B9F1A
endif
    JSR DemoWaitTimer

if !FEATURE_PAL
org $8B9B2B
else ; runs when title intro is interrupted
org $8B9B5B
endif
    JSR DemoWaitTimer


%startfree(8B)

DemoWaitTimer:
{
    ; initial demo wait timer
    LDA !sram_demo_timer
    RTS
}

fade_in_skip_draw:
{
    ; Copy start of $82E737
    JSL $878064   ; Animated tiles objects handler
if !FEATURE_PAL
    JSL $A08EC6   ; Determine which enemies to process
    JSL $A08FE4   ; Main enemy routine
else
    JSL $A08EB6   ; Determine which enemies to process
    JSL $A08FD4   ; Main enemy routine
endif
    JSL $868104   ; Enemy projectile handler

    ; Copy start of $A0884D
    PHB
    PEA $A000 : PLB : PLB
    %ai16()
    ; Skip draw sprite objects
    ; The rest will be the same as the original routine,
    ; other than adding a touch of artificial lag
    PHX : LDX #$0038
  .lagloop
    DEX #2 : BPL .lagloop
    PLX : NOP #3
if !FEATURE_PAL
    JML $A08869
else
    JML $A08859
endif
}

; Decompression optimization adapted from Kejardon, with fixes by PJBoy and Maddo
; Compression format: One byte (XXX YYYYY) or two byte (111 XXX YY-YYYYYYYY) headers
; XXX = instruction, YYYYYYYYYY = counter
optimized_decompression_end:
{
    PLB : PLP
    RTL
}

optimized_decompression:
{
    PHP : %a8() : %i16()
    ; Set bank
    PHB : LDA !DECOMP_SRC+2 : PHA : PLB

    STZ !DECOMP_DICTCOPY_INV+1 : LDY #$0000

  .nextByte
    LDA (!DECOMP_SRC)
    INC !DECOMP_SRC : BNE .readCommand
    INC !DECOMP_SRC+1 : BNE .readCommand
    JSR decompression_increment_bank
  .readCommand
    STA !DECOMP_VAR
    CMP #$FF : BEQ optimized_decompression_end
    CMP #$E0 : BCC .oneByteCommand

    ; Two byte command
    ASL #3
    AND #$E0 : PHA
    LDA !DECOMP_VAR : AND #$03 : XBA

    LDA (!DECOMP_SRC)
    INC !DECOMP_SRC : BNE .readData
    INC !DECOMP_SRC+1 : BNE .readData
    JSR decompression_increment_bank
    BRA .readData

  .oneByteCommand
    AND #$E0 : PHA
    TDC ; clear high byte
    LDA !DECOMP_VAR : AND #$1F

  .readData
    TAX : INX : PLA
    BMI .option4567 : BEQ .option0
    CMP #$20 : BEQ .option1
    CMP #$40 : BEQ .option2
    JMP .option3

  .option0:
    ; Option X = 0: Directly copy Y bytes
    LDA (!DECOMP_SRC)
    INC !DECOMP_SRC : BNE .option0_copy
    INC !DECOMP_SRC+1 : BNE .option0_copy
    JSR decompression_increment_bank
  .option0_copy
    STA [!DECOMP_DEST],Y
    INY
    DEX : BNE .option0
    JMP .nextByte

  .option1:
    ; Option X = 1: Copy the next byte Y times
    LDA (!DECOMP_SRC)
    INC !DECOMP_SRC : BNE .option1_copy
    INC !DECOMP_SRC+1 : BNE .option1_copy
    JSR decompression_increment_bank
  .option1_copy
    STA [!DECOMP_DEST],Y
    INY
    DEX : BNE .option1_copy
    JMP .nextByte

  .option2:
    ; Option X = 2: Copy the next two bytes, one at a time, for the next Y bytes
    ; Apply PJ's fix to divide X by 2 and set carry if X was odd
    %a16() : TXA : LSR : TAX : %a8()
    LDA (!DECOMP_SRC)
    INC !DECOMP_SRC : BNE .option2_readMSB
    INC !DECOMP_SRC+1 : BNE .option2_readMSB
    JSR decompression_increment_bank
  .option2_readMSB
    XBA : LDA (!DECOMP_SRC)
    INC !DECOMP_SRC : BNE .option2_prepCopy
    INC !DECOMP_SRC+1 : BNE .option2_prepCopy
    JSR decompression_increment_bank
  .option2_prepCopy
    XBA
    ; Apply Maddo's fix accounting for single copy (X = 1 before divide by 2)
    INX
    DEX : BEQ .option2_singleCopy
    %a16()
  .option2_loop
    STA [!DECOMP_DEST],Y
    INY #2
    DEX : BNE .option2_loop
    ; PJ's fix to account for case where X was odd
    %a8()
  .option2_singleCopy
    BCC .option2_end
    STA [!DECOMP_DEST],Y : INY
  .option2_end
    JMP .nextByte

  .option4567:
    CMP #$C0 : AND #$20 : STA !DECOMP_DICTCOPY_INV : BCS .option67

    ; Option X = 4: Copy Y bytes starting from a given address in the decompressed data
    ; Option X = 5: Copy and invert (EOR #$FF) Y bytes starting from a given address in the decompressed data
    LDA (!DECOMP_SRC)
    INC !DECOMP_SRC : BNE .option45_readMSB
    INC !DECOMP_SRC+1 : BNE .option45_readMSB
    JSR decompression_increment_bank
  .option45_readMSB
    XBA : LDA (!DECOMP_SRC)
    INC !DECOMP_SRC : BNE .option45_prepDictionary
    INC !DECOMP_SRC+1 : BNE .option45_prepDictionary
    JSR decompression_increment_bank
  .option45_prepDictionary
    XBA : REP #$21 ; %a16 + set carry
    ADC !DECOMP_DEST : STY !DECOMP_44 : SEC

  .option_dictionary
    SBC !DECOMP_44 : STA !DECOMP_44
    %a8()
    LDA !DECOMP_DEST+2 : BCS .skip_carrySubtraction
    DEC
  .skip_carrySubtraction
    STA !DECOMP_44+2
    LDA !DECOMP_DICTCOPY_INV : BNE .option57_loop

  .option46_loop
    LDA [!DECOMP_44],Y : STA [!DECOMP_DEST],Y
    INY
    DEX : BNE .option46_loop
    JMP .nextByte

  .option57_loop
    LDA [!DECOMP_44],Y : EOR #$FF : STA [!DECOMP_DEST],Y
    INY
    DEX : BNE .option57_loop
    JMP .nextByte

  .option67
    ; Option X = 6: Copy Y bytes starting from a given number of bytes ago in the decompressed data
    ; Option X = 7: Copy and invert (EOR #$FF) Y bytes starting from a given number of bytes ago in the decompressed data
    TDC ; clear high byte
    LDA (!DECOMP_SRC)
    INC !DECOMP_SRC : BNE .option67_prepDictionary
    INC !DECOMP_SRC+1 : BNE .option67_prepDictionary
    JSR decompression_increment_bank
  .option67_prepDictionary
    %a16()
    STA !DECOMP_44
    LDA !DECOMP_DEST
    BRA .option_dictionary

  .option3
    ; Option X = 3: Incrementing fill Y bytes starting with next byte
    LDA (!DECOMP_SRC)
    INC !DECOMP_SRC : BNE .option3_loop
    INC !DECOMP_SRC+1 : BNE .option3_loop
    JSR decompression_increment_bank
  .option3_loop
    STA [!DECOMP_DEST],Y
    INC : INY
    DEX : BNE .option3_loop
    JMP .nextByte
}

decompression_increment_bank:
{
    PHA
    PHB : PLA
    INC
    PHA : PLB
    LDA #$80 : STA !DECOMP_SRC+1
    PLA
    RTS
}

%endfree(8B)

