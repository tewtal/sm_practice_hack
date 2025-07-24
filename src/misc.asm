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


if !PRESERVE_WRAM_DURING_SPACETIME
org $90ACF6
    JSR original_load_beam_palette

org $90AD18
    JMP spacetime_routine
endif


; Skips the waiting time after teleporting
if !FEATURE_PAL
org $90E874
else
org $90E877
endif
    LDA !MUSIC_TRACK
    JSL $808FC1 ; queue room music track
    BRA $18


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

org $CFC2C8       ; Mute track 4 so it can be used when music is off
hook_spc_engine_mute_track_4:
    db $30, $C9, $00, $00


org $E0E7E0       ; Make EOR $E067E0 read $E0E0 to match vanilla behavior
hook_artificial_varia:
    dw $E0E0


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

if !PRESERVE_WRAM_DURING_SPACETIME
original_load_beam_palette:
{
    AND #$0FFF : ASL : TAY
    LDA #$0090 : XBA : STA $01
    LDA $C3C9,Y : STA $00
    LDY #$0000
    LDX #$0000

  .loop
    LDA [$00],Y : STA $7EC1C0,X
    INX #2
    INY #2 : CPY #$0020 : BMI .loop
    RTS
}

spacetime_routine:
{
    ; The normal routine shouldn't come here, but sanity check just in case
    ; Also skips out if spacetime but Y value is positive
    INY #2 : CPY #$0000 : BPL .normal_load_palette

    ; Sanity check that X is 0 (if not then do the original routine)
    CPX #$0000 : BNE .normal_load_palette

    ; Check if Y will cause us to reach infohud
    TYA : CLC : ADC #($7EC608-$7EC1E2) : CMP #$0000 : BPL .normal_load_palette

    ; We will reach infohud, so run our own loop
    INX #2
  .loop_before_infohud
    LDA [$00],Y : STA $7EC1C0,X
    INY #2
    INX #2 : CPX #($7EC608-$7EC1C0) : BMI .loop_before_infohud

    ; Check if we should skip over infohud
    LDA !ram_spacetime_infohud : BEQ .overwrite_infohud

    ; Skip over infohud
    ; Instead of load and store, load and load
  .loop_skip_infohud
    LDA $7EC1C0,X
    LDA [$00],Y
    INY #2
    INX #2 : CPX #($7EC6C8-$7EC1C0) : BMI .loop_skip_infohud

    ; Check if we finished spacetime while skipping over infohud
    CPY #$0020 : BMI .check_sprite_object_ram
    RTS

  .overwrite_infohud
    ; Check if Y will cause us to reach sprite object ram
    TYA : CLC : ADC #($7EEF78-$7EC628) : CMP #$0000 : BMI .loop_before_sprite_object_ram

  .normal_load_loop
    LDA [$00],Y : STA $7EC1C0,X
    INY #2
  .normal_load_palette
    INX #2 : CPY #$0020 : BMI .normal_load_loop
    RTS

  .check_sprite_object_ram
    ; Check if Y will cause us to reach sprite object ram
    TYA : CLC : ADC #($7EEF78-$7EC6E8) : CMP #$0000 : BPL .normal_load_loop

    ; We will reach sprite object ram, so run our own loop
  .loop_before_sprite_object_ram
    LDA [$00],Y : STA $7EC1C0,X
    INY #2
    INX #2 : CPX #($7EEF78-$7EC1C0) : BMI .loop_before_sprite_object_ram

    ; Check if we are copying from unmapped memory ($004500-$007FFF range)
    ; If not then overwrite sprite object ram
    TYA : ADC $00 : CMP #$4500 : BCC .overwrite_sprite_object_ram
    CMP #$7C01 : BCS .overwrite_sprite_object_ram

    ; Skip over sprite object ram
    ; Instead of load and store, load and load
  .loop_skip_sprite_object_ram
    LDA $7EC1C0,X
    LDA [$00],Y
    INY #2
    INX #2 : CPX #($7EF378-$7EC1C0) : BMI .loop_skip_sprite_object_ram

    ; Check if Y will cause us to reach CTRL_SHORTCUT_ROUTINE
    TYA : CLC : ADC #(!CTRL_SHORTCUT_ROUTINE-$7EF398) : CMP #$0000 : BPL .normal_load_loop

    ; It will, so run our own loop
  .loop_before_wram
    LDA [$00],Y : STA $7EC1C0,X
    INY #2
    INX #2 : CPX #(!CTRL_SHORTCUT_ROUTINE-$7EC1C0) : BMI .loop_before_wram

    ; Skip over WRAM
    ; Instead of load and store, load and load
  .loop_skip_wram
    LDA $7EC1C0,X
    LDA [$00],Y
    INY #2
    INX #2 : CPX #(!WRAM_END-$7EC1C0) : BMI .loop_skip_wram

    ; Check if we finished spacetime while skipping over WRAM
    CPY #$0020 : BMI .normal_load_loop
    RTS

  .overwrite_sprite_object_ram
    ; Check if Y will cause us to reach WRAM
    TYA : CLC : ADC #(!CTRL_SHORTCUT_ROUTINE-$7EEF98) : CMP #$0000 : BPL .normal_load_loop
    BRA .loop_before_wram
}
endif

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
    ; Skip drawing bombs and projectile explosions
    ; The rest will be the same as the original routine,
    ; other than adding a touch of artificial lag
    PHA : PLA : PHA : PLA
if !FEATURE_PAL
    JML $A0886D
else
    JML $A0885D
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

