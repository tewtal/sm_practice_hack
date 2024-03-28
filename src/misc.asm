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
    LDA $07F5
    JSL $808FC1 ; queue room music track
    BRA $18


; $82:8BB3 22 69 91 A0 JSL $A09169[$A0:9169]  ; Handles Samus getting hurt?
org $828BB3
    JSL gamemode_end


; Replace unnecessary logic checking controller input to toggle debug CPU brightness
; with logic to collect the v-counter data
org $828AB1
misc_debug_brightness:
    %a8() : LDA $4201 : ORA #$80 : STA $4201 : %ai16()
    LDA $2137 : LDA $213D : STA !ram_vcounter_data

    ; For efficiency, re-implement the debug brightness logic here
    LDA $0DF4 : BEQ .skipDebugBrightness
    %a8() : LDA $51 : AND #$F0 : ORA #$05 : STA $2100 : %a16()
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


; $80:8F24 9C F6 07    STZ $07F6  [$7E:07F6]  ;/
; $80:8F27 8D 40 21    STA $2140  [$7E:2140]  ; APU IO 0 = [music track]
org $808F24
    JSL hook_set_music_track
    NOP : NOP

; $80:8F65 8D F3 07    STA $07F3  [$7E:07F3]  ;} Music data = [music entry] & FFh
; $80:8F68 AA          TAX                    ; X = [music data]
org $808F65
    JML hook_set_music_data


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


if !FEATURE_PAL
org $84D671
else
org $84D66B
endif
    JSL lock_samus_bowling


org $869D59
    JSR move_kraid_rocks_horizontally


org $86F500
print pc, " misc bank86 start"

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
    LDA !ENEMY_PROJ_Y,X : SEC : SBC #$0004
    AND #$FFF0 : STA $1A
    LDA !ENEMY_PROJ_Y,X : CLC : ADC #$0003
    SEC : SBC $1A
    LSR : LSR : LSR : LSR
    STA $1A : STA $20
    LDA !ENEMY_PROJ_Y,X : SEC : SBC #$0004
    LSR : LSR : LSR : LSR
    %a8() : STA $4202
    LDA !ROOM_WIDTH_BLOCKS : STA $4203
    %a16() : LDA !ENEMY_PROJ_X_SUBPX,X
    CLC : ADC $12 : STA $16
    LDA !ENEMY_PROJ_X,X : ADC $14 : STA $18
    BIT $14 : BMI .subtract
    CLC : ADC #$0003
    BRA .store
  .subtract
    SEC : SBC #$0004
  .store
    STA $22
    LSR : LSR : LSR : LSR
    CLC : ADC $4216
    ASL : TAX
    JMP $8930
}

print pc, " misc bank86 end"


org $90F800
print pc, " misc bank90 start"

hook_set_music_track:
{
    STZ $07F6
    PHA
    LDA !sram_music_toggle : CMP #$01 : BNE .no_music
    PLA : STA $2140
    RTL

  .no_music
    PLA
    RTL
}

hook_set_music_data:
{
    STA $07F3 : TAX
    LDA !sram_music_toggle : CMP #$0002 : BEQ .fast_no_music
    JML $808F69

  .fast_no_music
    JML $808F89
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
    LDA #locked_samus_speedup_movement_handler
    STA $0A42
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

gamemode_end:
{
    ; overwritten logic
if !FEATURE_PAL
    JSL $A09179
else
    JSL $A09169
endif

    ; If minimap is disabled or shown, we ignore artificial lag
    LDA $05F7 : BNE .endlag
    LDA !ram_minimap : BNE .endlag

    ; Ignore artifical lag if sprite features are active
    LDA !ram_sprite_feature_flags : BNE .endlag

    ; Artificial lag, multiplied by 16 to get loop count
    ; Each loop takes 5 clock cycles (assuming branch taken)
    ; For reference, 41 loops ~= 1 scanline
    LDA !sram_artificial_lag : BEQ .endlag

    ; To account for various changes, we may need to tack on more clock cycles
    ; These can be removed as code is added to maintain CPU parity during normal gameplay
    LDA !sram_top_display_mode : CMP !TOP_DISPLAY_VANILLA : BEQ .vanilla_display_lag_loop
    LDA !ram_frames_held : BNE .vanilla_display_lag_loop
    LDA !sram_artificial_lag
    ASL
    ASL
    ASL
    ASL
    NOP  ; Add 2 more clock cycles
    NOP  ; Add 2 more clock cycles
    NOP  ; Add 2 more clock cycles
    NOP  ; Add 2 more clock cycles
    CLC : ADC #$000B ; Add 60 cycles including CLC+ADC
    TAX
  .lagloop
    DEX : BNE .lagloop
  .endlag
    RTL

  .vanilla_display_lag_loop
    ; Vanilla display logic uses more CPU so reduce artificial lag
    LDA !sram_artificial_lag
    DEC : BEQ .endlag   ; Remove 76 clock cycles
    DEC : BEQ .endlag   ; Remove 76 clock cycles
    ASL
    ASL
    INC  ; Add 4 loops (22 clock cycles including the INC)
    ASL
    ASL
    INC  ; Add 1 loop (7 clock cycles including the INC)
    NOP  ; Add 2 more clock cycles
    NOP  ; Add 2 more clock cycles
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
    JSL $82BE17
    PLA : STA !DISABLE_SOUNDS

    ; Makes the game check Samus' health again, to see if we need annoying sound
    STZ !SAMUS_HEALTH_WARNING
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
    LDA [$00],Y
    STA $7EC1C0,X
    INX : INX : INY : INY
    CPY #$0020 : BMI .loop
    RTS
}

spacetime_routine:
{
    ; The normal routine shouldn't come here, but sanity check just in case
    ; Also skips out if spacetime but Y value is positive
    INY : INY : CPY #$0000 : BPL .normal_load_palette

    ; Sanity check that X is 0 (if not then do the original routine)
    CPX #$0000 : BNE .normal_load_palette

    ; Check if Y will cause us to reach infohud
    TYA : CLC : ADC #($7EC608-$7EC1E2) : CMP #$0000 : BPL .normal_load_palette

    ; We will reach infohud, so run our own loop
    INX : INX
  .loop_before_infohud
    LDA [$00],Y
    STA $7EC1C0,X
    INX : INX : INY : INY
    CPX #($7EC608-$7EC1C0) : BMI .loop_before_infohud

    ; Check if we should skip over infohud
    LDA !ram_spacetime_infohud : BEQ .overwrite_infohud

    ; Skip over infohud
    ; Instead of load and store, load and load
  .loop_skip_infohud
    LDA $7EC1C0,X
    LDA [$00],Y
    INX : INX : INY : INY
    CPX #($7EC6C8-$7EC1C0) : BMI .loop_skip_infohud

    ; Check if we finished spacetime while skipping over infohud
    CPY #$0020 : BMI .check_sprite_object_ram
    RTS

  .overwrite_infohud
    ; Check if Y will cause us to reach sprite object ram
    TYA : CLC : ADC #($7EEF78-$7EC628) : CMP #$0000 : BMI .loop_before_sprite_object_ram

  .normal_load_loop
    LDA [$00],Y
    STA $7EC1C0,X
    INY : INY
  .normal_load_palette
    INX : INX
    CPY #$0020 : BMI .normal_load_loop
    RTS

  .check_sprite_object_ram
    ; Check if Y will cause us to reach sprite object ram
    TYA : CLC : ADC #($7EEF78-$7EC6E8) : CMP #$0000 : BPL .normal_load_loop

    ; We will reach sprite object ram, so run our own loop
  .loop_before_sprite_object_ram
    LDA [$00],Y
    STA $7EC1C0,X
    INX : INX : INY : INY
    CPX #($7EEF78-$7EC1C0) : BMI .loop_before_sprite_object_ram

    ; Check if we are copying from unmapped memory ($004500-$007FFF range)
    ; If not then overwrite sprite object ram
    TYA : ADC $00 : CMP #$4500 : BCC .overwrite_sprite_object_ram
    CMP #$7C01 : BCS .overwrite_sprite_object_ram

    ; Skip over sprite object ram
    ; Instead of load and store, load and load
  .loop_skip_sprite_object_ram
    LDA $7EC1C0,X
    LDA [$00],Y
    INX : INX : INY : INY
    CPX #($7EF378-$7EC1C0) : BMI .loop_skip_sprite_object_ram

    ; Check if Y will cause us to reach WRAM
    TYA : CLC : ADC #(!WRAM_START-$7EF398) : CMP #$0000 : BPL .normal_load_loop

    ; It will, so run our own loop
  .loop_before_wram
    LDA [$00],Y
    STA $7EC1C0,X
    INX : INX : INY : INY
    CPX #(!WRAM_START-$7EC1C0) : BMI .loop_before_wram

    ; Skip over WRAM
    ; Instead of load and store, load and load
  .loop_skip_wram
    LDA $7EC1C0,X
    LDA [$00],Y
    INX : INX : INY : INY
    CPX #(!WRAM_END-$7EC1C0) : BMI .loop_skip_wram

    ; Check if we finished spacetime while skipping over WRAM
    CPY #$0020 : BMI .normal_load_loop
    RTS

  .overwrite_sprite_object_ram
    ; Check if Y will cause us to reach WRAM
    TYA : CLC : ADC #(!WRAM_START-$7EEF98) : CMP #$0000 : BPL .normal_load_loop
    BRA .loop_before_wram
}
endif


preserve_escape_timer:
{
    ; check if timer is active
    LDA $0943 : AND #$0006 : BEQ .done
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
    STZ $0943

    ; overwritten code
if !FEATURE_PAL
    LDA #$AC33
else
    LDA #$AC1B
endif
    STA $0FB2,X
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
    LDA !ROOM_ID : CMP #$962A : BEQ .original
    ; If this room is not one of the metroid rooms, use optimized routine
    CMP #$DAE0 : BCC .optimized : CMP #$DBCE : BCS .optimized
  .original
    LDA #$E737
    BRA .set
  .optimized
    LDA #optimized_fade_in
  .set
    STA $099C

    ; Overwritten logic
    LDA $51 : ORA #$001F : STA $51
    JML $908E0F
}

print pc, " misc bank90 end"
warnpc $90FE00 ; damage.asm


org $8BFA00
print pc, " misc bank8B start"

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
    PHB : LDA $49 : PHA : PLB

    STZ $50 : LDY #$0000

  .nextByte
    LDA ($47)
    INC $47 : BNE .readCommand
    INC $48 : BNE .readCommand
    JSR decompression_increment_bank
  .readCommand
    STA $4A
    CMP #$FF : BEQ optimized_decompression_end
    CMP #$E0 : BCC .oneByteCommand

    ; Two byte command
    ASL : ASL : ASL
    AND #$E0 : PHA
    LDA $4A : AND #$03 : XBA

    LDA ($47)
    INC $47 : BNE .readData
    INC $48 : BNE .readData
    JSR decompression_increment_bank
    BRA .readData

  .oneByteCommand
    AND #$E0 : PHA
    TDC : LDA $4A : AND #$1F

  .readData
    TAX : INX : PLA
    BMI .option4567 : BEQ .option0
    CMP #$20 : BEQ .option1
    CMP #$40 : BEQ .option2
    BRL .option3

  .option0:
    ; Option X = 0: Directly copy Y bytes
    LDA ($47)
    INC $47 : BNE .option0_copy
    INC $48 : BNE .option0_copy
    JSR decompression_increment_bank
  .option0_copy
    STA [$4C],Y
    INY : DEX : BNE .option0
    BRL .nextByte

  .option1:
    ; Option X = 1: Copy the next byte Y times
    LDA ($47)
    INC $47 : BNE .option1_copy
    INC $48 : BNE .option1_copy
    JSR decompression_increment_bank
  .option1_copy
    STA [$4C],Y
    INY : DEX : BNE .option1_copy
    BRL .nextByte

  .option2:
    ; Option X = 2: Copy the next two bytes, one at a time, for the next Y bytes
    ; Apply PJ's fix to divide X by 2 and set carry if X was odd
    REP #$20 : TXA : LSR : TAX : SEP #$20
    LDA ($47)
    INC $47 : BNE .option2_readMSB
    INC $48 : BNE .option2_readMSB
    JSR decompression_increment_bank
  .option2_readMSB
    XBA : LDA ($47)
    INC $47 : BNE .option2_prepCopy
    INC $48 : BNE .option2_prepCopy
    JSR decompression_increment_bank
  .option2_prepCopy
    XBA
    ; Apply Maddo's fix accounting for single copy (X = 1 before divide by 2)
    INX : DEX : BEQ .option2_singleCopy
    REP #$20
  .option2_loop
    STA [$4C],Y
    INY : INY : DEX : BNE .option2_loop
    ; PJ's fix to account for case where X was odd
    SEP #$20
  .option2_singleCopy
    BCC .option2_end
    STA [$4C],Y : INY
  .option2_end
    BRL .nextByte

  .option4567:
    CMP #$C0 : AND #$20 : STA $4F : BCS .option67

    ; Option X = 4: Copy Y bytes starting from a given address in the decompressed data
    ; Option X = 5: Copy and invert (EOR #$FF) Y bytes starting from a given address in the decompressed data
    LDA ($47)
    INC $47 : BNE .option45_readMSB
    INC $48 : BNE .option45_readMSB
    JSR decompression_increment_bank
  .option45_readMSB
    XBA : LDA ($47)
    INC $47 : BNE .option45_prepDictionary
    INC $48 : BNE .option45_prepDictionary
    JSR decompression_increment_bank
  .option45_prepDictionary
    XBA : REP #$21
    ADC $4C : STY $44 : SEC

  .option_dictionary
    SBC $44 : STA $44
    SEP #$20
    LDA $4E : BCS .skip_carrySubtraction
    DEC
  .skip_carrySubtraction
    STA $46
    LDA $4F : BNE .option57_loop

  .option46_loop
    LDA [$44],Y
    STA [$4C],Y
    INY : DEX : BNE .option46_loop
    BRL .nextByte

  .option57_loop
    LDA [$44],Y
    EOR #$FF
    STA [$4C],Y
    INY : DEX : BNE .option57_loop
    BRL .nextByte

  .option67
    ; Option X = 6: Copy Y bytes starting from a given number of bytes ago in the decompressed data
    ; Option X = 7: Copy and invert (EOR #$FF) Y bytes starting from a given number of bytes ago in the decompressed data
    TDC : LDA ($47)
    INC $47 : BNE .option67_prepDictionary
    INC $48 : BNE .option67_prepDictionary
    JSR decompression_increment_bank
  .option67_prepDictionary
    REP #$20
    STA $44 : LDA $4C
    BRA .option_dictionary

  .option3
    ; Option X = 3: Incrementing fill Y bytes starting with next byte
    LDA ($47)
    INC $47 : BNE .option3_loop
    INC $48 : BNE .option3_loop
    JSR decompression_increment_bank
  .option3_loop
    STA [$4C],Y
    INC : INY : DEX : BNE .option3_loop
    BRL .nextByte
}

decompression_increment_bank:
{
    PHA
    PHB : PLA
    INC
    PHA : PLB
    LDA #$80 : STA $48
    PLA
    RTS
}

print pc, " misc bank8B end"

