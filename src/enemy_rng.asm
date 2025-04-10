
; ----------------
; Phantoon hijacks
; ----------------

org $8699EB
    ; Phantoon flame direction
    JSL hook_phantoon_flame_direction
    BRA $05

if !FEATURE_PAL
org $A7894D
else    ; Overwrite unused instruction list
org $A7893D
endif
phantoon_always_visible:
{
    LDA !ram_phantoon_always_visible : BNE .enabled
    ; overwritten code
if !FEATURE_PAL
    JMP $DBCE
else
    JMP $DB9A
endif

  .enabled
    ; fake the fade in so it takes the same number of frames
    LDA !ENEMY_VAR_3+!ENEMY_1_OFFSET : INC
    CMP !ENEMY_VAR_4+!ENEMY_1_OFFSET : BCS .inc
    STZ !ENEMY_VAR_4+!ENEMY_1_OFFSET
    SEC : RTS

  .inc
    INC !ENEMY_VAR_4+!ENEMY_1_OFFSET
    CLC : RTS
}

phantoon_reset_damagecounter:
{
    TDC : STA !DAMAGE_COUNTER
    STZ !ENEMY_TIMER,X ; overwritten code
    RTS
}
%warnpc($A789F3, $A78A03)

if !FEATURE_PAL
org $A7CE98
else    ; hijack, Phantoon AI init
org $A7CE64
endif
    JSR phantoon_reset_damagecounter

if !FEATURE_PAL
org $A7D00A
else    ; Phantoon flame pattern
org $A7CFD6
endif
    JSL hook_phantoon_flame_pattern

if !FEATURE_PAL
org $A7D098
else    ; Phantoon eye close timer
org $A7D064
endif
    JSL hook_phantoon_eyeclose

if !FEATURE_PAL
org $A7D0B0
else    ; 2nd pattern
org $A7D07C
endif
    JSL hook_phantoon_2nd_rng
    BRA $0F

if !FEATURE_PAL
org $A7D4DD
else    ; Phantoon Intro
org $A7D4A9
endif
    JSL hook_phantoon_init
    BNE $3E : NOP

if !FEATURE_PAL
org $A7D5DA
else    ; 1st pattern
org $A7D5A6
endif
    JSL hook_phantoon_1st_rng
    BRA $10

if !FEATURE_PAL
org $A7D4AD
else
org $A7D479
endif
    JSR phantoon_always_visible

if !FEATURE_PAL
org $A7D6B9
else
org $A7D685
endif
    JML infidoppler_hook_phantoon_swoop_end

if !FEATURE_PAL
org $A7DDB3
else
org $A7DD7F
endif
    JMP phantoon_damage_palette

; Adjust Phantoon to look at adjusted projectile damage instead of absolute difference in health
if !FEATURE_PAL
org $A7DE2F
else
org $A7DDFB
endif
    LDA $187A

if !FEATURE_PAL
org $A7DE99
else
org $A7DE65
endif
    LDA $187A


; --------------
; Botwoon hijack
; --------------

if !FEATURE_PAL
org $B39953
else
org $B39943
endif
    ; $B3:9943 22 11 81 80 JSL $808111[$80:8111]
    JSL hook_botwoon_move

if !FEATURE_PAL
org $B398D1
else
org $B398C1
endif
    JSL hook_botwoon_spit


; ---------------
; Draygon hijacks
; ---------------

if !FEATURE_PAL
org $A587C2
else
org $A587B2
endif
    LDA !ram_turret_rng : TAX
    JSL $808111 : AND #$0003
    JMP (hook_turret_rng_table,X)

if !FEATURE_PAL
org $A589AD
else
org $A5899D
endif
    JSR hook_draygon_rng_right

if !FEATURE_PAL
org $A58AEC
else
org $A58ADC
endif
    JSR hook_draygon_rng_left

if !FEATURE_PAL
org $A5956B
else
org $A5955B
endif
    JSR hook_draygon_damage

if !FEATURE_PAL
org $A595BA
else
org $A595AA
endif
    JSR hook_draygon_damage


; ----------------
; Crocomire hijack
; ----------------

if !FEATURE_PAL
org $A48763
else
org $A48753
endif
    JSR hook_crocomire_rng

if !FEATURE_PAL
org $A48CED
else
org $A48CDD
endif
    JMP hook_crocomire_damage


; -------------
; Kraid hijacks
; -------------

if !FEATURE_PAL
org $A786B7
else
org $A786A7
endif
KraidWaitTable:
    ; Overwrite unused palette
    dw #$0080, #$0040, #$0080, #$00C0, #$0100, #$0140, #$0180, #$01C0

if !FEATURE_PAL
org $A7AA7F
else    ; Kraid intro
org $A7AA69
endif
    JSR kraid_intro_skip

if !FEATURE_PAL
org $A7AE23
else
org $A7AE0D
endif
    LDA !ram_kraid_wait_rng : BNE kraid_wait_load_delay
    LDA !CACHED_RANDOM_NUMBER : AND #$0007
kraid_wait_load_delay:
    ASL : TAX : LDA.w KraidWaitTable,X
%warnpc($A7AE1E, $A7AE34)

if !FEATURE_PAL
org $A7B381
else
org $A7B36B
endif
    ; Combined two methods, so overwrite JSR
    PLY : PLX : RTS

if !FEATURE_PAL
org $A7B3A9
else
org $A7B393
endif
    JMP kraid_palette_handling
    TAY

if !FEATURE_PAL
org $A7BDF3
else    ; Kraid rng
org $A7BDBF
endif
    JSR hook_kraid_claw_rng


; -----------
; Baby hijack
; -----------

if !FEATURE_PAL
org $A9F21B
else    ; Baby skip rng
org $A9F1CE
endif
    JMP hook_baby_skip_rng


; -----------------
; "Set rng" hijacks
; -----------------

    ; $A3:AB0C A9 25 00    LDA #$0025
    ; $A3:AB0F 8D E5 05    STA $05E5  [$7E:05E5]
    ; $A3:AB12 22 11 81 80 JSL $808111[$80:8111]
if !FEATURE_PAL
org $A3AB2E
else
org $A3AB12
endif
    JSL hook_hopper_set_rng

    ; $A2:B588 A9 11 00    LDA #$0011
    ; $A2:B58B 8D E5 05    STA $05E5  [$7E:05E5]
if !FEATURE_PAL
org $A2B5A0
else
org $A2B588
endif
    JSL hook_lavarocks_set_rng
    NOP #2

    ; $A8:B798 A9 17 00    LDA #$0017
    ; $A8:B79B 8D E5 05    STA $05E5  [$7E:05E5]
if !FEATURE_PAL
org $A8B7A8
else
org $A8B798
endif
    JSL hook_beetom_set_rng
    NOP #2


; -----
; Hooks
; -----

%startfree(83)

MenuRNG:
; Generates new random number
; 32-bit period (uses two 16-bit seeds)
; Make sure ram_seed_X and ram_seed_Y is initialized to something other than zero
{
    LDA !ram_seed_X : ASL #5
    EOR !ram_seed_X : STA $C1

    LDA !ram_seed_Y : STA !ram_seed_X

    LDA $C1 : LSR #3
    EOR $C1 : STA $C1

    LDA !ram_seed_Y : LSR
    EOR !ram_seed_Y : EOR $C1
    STA !ram_seed_Y

    ; return y (in a)
    RTL	
}

MenuRNG2:
; 16-bit period xorshift (uses only ram_seed_X)
; Make sure ram_seed_X is not zero
{
    LDA !ram_seed_X
    STA $C1
    ASL #2 : EOR $C1 : STA $C1
    LSR #5 : EOR $C1 : STA $C1
    ASL : EOR $C1
    STA !ram_seed_X
    RTL
}

hook_hopper_set_rng:
{
    LDA #$0001 : STA !ram_room_has_set_rng
    JML $808111
}

hook_lavarocks_set_rng:
{
    LDA #$0001 : STA !ram_room_has_set_rng
    LDA #$0011 : STA !CACHED_RANDOM_NUMBER
    RTL
}

hook_beetom_set_rng:
{
    LDA #$0001 : STA !ram_room_has_set_rng
    LDA #$0017 : STA !CACHED_RANDOM_NUMBER
    RTL
}

; Patch to the following code (which waits a few frames
; before spawning flames in a circle)
; $A7:D4A9 DE B0 0F    DEC $0FB0,x[$7E:0FB0]    ; decrement timer
; $A7:D4AC F0 02       BEQ $02    [$D4B0]       ; if zero, proceed
; $A7:D4AE 10 3D       BPL $3D    [$D4ED]       ; else, return
hook_phantoon_init:
{
    LDA !sram_cutscenes : AND !CUTSCENE_FAST_PHANTOON : BNE .skip_cutscene

    DEC !ENEMY_VAR_4,X
    RTL

  .skip_cutscene
    ; get rid of the return address
    PLA ; pop 2 bytes
    PHP ; push 1
    PLA ; pop 2 (for a total of 3 bytes popped)

    ; start boss music & fade-in animation
if !FEATURE_PAL
    JML $A7D543
else
    JML $A7D50F
endif
}


; Table of Phantoon pattern durations & directions
; bit 0 is direction, remaining bits are duration
; Note that later entries in the table will tend to occur slightly more often.
phan_pattern_table:
    dw $003C<<1|1 ; fast left
    dw $003C<<1|0 ; fast right
    dw $0168<<1|1 ;  mid left
    dw $0168<<1|0 ;  mid right
    dw $02D0<<1|1 ; slow left
    dw $02D0<<1|0 ; slow right


; Patch to the following code, to determine Phantoon's first-round direction and pattern
; $A7:D5A6 AD B6 05    LDA $05B6  [$7E:05B6]    ; Frame counter
; $A7:D5A9 4A          LSR A
; $A7:D5AA 29 03 00    AND #$0003
; $A7:D5AD 0A          ASL A
; $A7:D5AE A8          TAY
; $A7:D5AF B9 53 CD    LDA $CD53,y[$A7:CD59]    ; Number of frames to figure-8
; $A7:D5B2 8D E8 0F    STA $0FE8  [$7E:0FE8]
; $A7:D5B5 22 11 81 80 JSL $808111[$80:8111]    ; RNG
; $A7:D5B9 89 01 00    BIT #$0001               ; Sets Z for left pattern, !Z for right
hook_phantoon_1st_rng:
{
    ; If fast Phantoon is on, adjust the timer by the cutscene time
    ; (we can't do that while we skip the cutscene since that code
    ;  happens during the door transition)
    LDA !sram_cutscenes : AND !CUTSCENE_FAST_PHANTOON : BEQ .rng
    LDY #$0257 : JSL ih_adjust_realtime

  .rng
    ; If set to all-on or all-off, don't mess with RNG
    LDA !ram_phantoon_rng_round_1 : BEQ .no_manip
    CMP #$003F : BNE choose_phantoon_pattern

  .no_manip
    LDA !FRAME_COUNTER : LSR
    AND #$0003 : ASL : TAY
if !FEATURE_PAL
    LDA $CD87,Y
else
    LDA $CD53,Y
endif
    STA !ENEMY_FUNCTION_POINTER+!ENEMY_1_OFFSET
    JSL $808111
    BIT #$0001
    RTL
}

; Patch to the following code, to determine Phantoon's second-round direction and pattern
; Also affects patterns during Phantoon's invisible phase
; $A7:D07C 22 11 81 80 JSL $808111[$80:8111]
; $A7:D080 29 07 00    AND #$0007
; $A7:D083 0A          ASL A
; $A7:D084 A8          TAY
; $A7:D085 B9 53 CD    LDA $CD53,y[$A7:CD5B]
; $A7:D088 8D E8 0F    STA $0FE8  [$7E:0FE8]
; $A7:D08B AD B6 05    LDA $05B6  [$7E:05B6]
; $A7:D08E 89 01 00    BIT #$0001
hook_phantoon_2nd_rng:
{
    ; If set to all-on or all-off, don't mess with RNG
    LDA !ram_phantoon_rng_round_2 : BEQ .no_manip
    CMP #$003F : BNE choose_phantoon_pattern

  .no_manip
    JSL $808111
    AND #$0007 : ASL : TAY
if !FEATURE_PAL
    LDA $CD87,Y
else
    LDA $CD53,Y
endif
    STA !ENEMY_FUNCTION_POINTER+!ENEMY_1_OFFSET
    ; Intentional fallthrough to invert logic
}

hook_phantoon_invert:
{
    LDA !ram_phantoon_rng_inverted : BEQ .vanilla_inverted
    CMP #$0001 : BEQ .inverted
    CMP #$0002 : BEQ .not_inverted

    ; Random
    LDA !CACHED_RANDOM_NUMBER : BIT #$0080
    RTL

  .inverted
    LDA #$0000 : BIT #$0001
    RTL

  .not_inverted
    LDA #$0001 : BIT #$0001
    RTL

  .vanilla_inverted
    LDA !FRAME_COUNTER : BIT #$0001
    RTL
}

; Selects a Phantoon pattern from a bitmask (passed in A).
choose_phantoon_pattern:
{
    PHX     ; push enemy index
    PHA     ; push pattern mask

    ; get random number in range 0-7
    JSL $808111
    AND #$0007 : TAX

    ; play a game of eeny-meeny-miny-moe with the enabled patterns
    ; X = number of enabled patterns to find before stopping
    ; Y = index in phan_pattern_table of pattern currently being checked
    ; A = bitmask of enabled patterns
  .reload
    LDA $01,S ; reload pattern mask
    LDY #$0006  ; number of patterns (decremented immediately to index of last pattern)

  .loop
    DEY
    LSR : BCC .skip

    ; Pattern index Y is enabled
    DEX : BMI .done ; is this the last one?
    BRA .loop   ; no, keep looping

  .skip
    ; Pattern Y is not enabled, try the next pattern
    BEQ .reload ; if we've tried all the patterns, start over
    BRA .loop

  .done
    ; We've found the pattern to use.
    PLA ; we don't need the pattern mask anymore
    TYA : ASL : TAX
    LDA.l phan_pattern_table,X
    PLX ; pop enemy index

    ; Check if Phantoon is in the round 2 AI state
    LDY !ENEMY_VAR_5
if !FEATURE_PAL
    CPY #$D716
else
    CPY #$D6E2
endif
    BNE .round1
    ; Save the pattern timer, check the direction,
    ; and set Phantoon's starting point and pattern index.
    LSR : STA !ENEMY_FUNCTION_POINTER+!ENEMY_1_OFFSET : BCS .round2left

    ; Right pattern
    LDA #$0088 : LDY #$00D0
    BRA .round2done

  .round2left
    LDA #$018F : LDY #$0030

  .round2done
    STA !ENEMY_FUNCTION_POINTER  ; Index into figure-8 movement table
    STY !ENEMY_X  ; X position
    LDA #$0060 : STA !ENEMY_Y  ; Y position
    BRA hook_phantoon_invert

  .round1
    ; Save the pattern timer and check the direction
    LSR : STA !ENEMY_FUNCTION_POINTER+!ENEMY_1_OFFSET
    BCS .round1left

    ; Round 1 right pattern
    SEP #$02 ; set zero flag
    RTL

  .round1left
    REP #$02 ; clear zero flag
    RTL
}

hook_phantoon_eyeclose:
{
    LDA !ram_phantoon_rng_eyeclose : BEQ .no_manip
    DEC : ASL ; return with 0-slow, 2-mid, 4-fast
    RTL

  .no_manip
    LDA !CACHED_RANDOM_NUMBER ; return with random number
    AND #$0007 : ASL   ; overwritten code
    RTL
}

hook_phantoon_flame_pattern:
{
    JSL $808111 ; Trying to preserve the number of RNG calls being done in the frame

    LDA !ram_phantoon_rng_flames : TAY
    LDA !ram_phantoon_rng_next_flames : STA !ram_phantoon_rng_flames
    TYA : STA !ram_phantoon_rng_next_flames : BEQ .no_manip
    DEC
    RTL

  .no_manip
    LDA !CACHED_RANDOM_NUMBER ; return with random number
    RTL
}

hook_phantoon_flame_direction:
{
    LDA !ram_phantoon_flame_direction : BEQ .no_manip
    DEC : BNE .right

  .left
if !FEATURE_PAL
    LDA #$FF67
else
    LDA #$FF80
endif
    RTL

  .no_manip
    LDA !FRAME_COUNTER : BIT #$0001 : BNE .left

  .right
if !FEATURE_PAL
    LDA #$0099
else
    LDA #$0080
endif
    RTL
}


hook_botwoon_move:
{
    LDA !ram_botwoon_rng : BEQ .no_manip
    ; 0 = head visible, 1 = behind wall
    LDA $7E8026 : BNE .hidden
    ; check if first round, $7E8022 unused by Botwoon
    LDA $7E8022 : BEQ .first_round

    ; preserve number of RNG calls in the frame
    JSL $808111
    ; return chosen pattern
    LDA !ram_botwoon_second
    RTL

  .first_round
    ; preserve number of RNG calls in the frame
    JSL $808111
    ; mark first round complete
    LDA #$0001 : STA $7E8022
    ; return chosen pattern
    LDA !ram_botwoon_first
    RTL

  .hidden
    LDA !ram_botwoon_hidden : BEQ .no_manip
    ; preserve number of RNG calls in the frame
    JSL $808111
    ; return chosen pattern
    LDA !ram_botwoon_hidden
    RTL

  .no_manip
    ; return random pattern
    JML $808111
}

hook_botwoon_spit:
{
    LDA !ram_botwoon_spit : BEQ .no_manip
    ; preserve number of RNG calls in the frame
    JSL $808111
    ; return chosen pattern
    LDA !ram_botwoon_spit
    RTL

  .no_manip
    ; return random pattern
    JML $808111
}

%endfree(83)


%startfree(A4)

hook_crocomire_rng:
{
    LDA !ram_crocomire_rng : BEQ .no_manip
    DEC : BEQ .step
    LDA #$0000    ; return with <400 for swipe
    RTS

  .step
    LDA #$0400    ; return with 400+ for step
    RTS

  .no_manip
    LDA !CACHED_RANDOM_NUMBER ; return with random number (overwritten code)
    RTS
}

hook_crocomire_damage:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_BOSS_DAMAGE_FLASH : BNE .suppress
    LDA #$7FFF : LDX #$000E
  .vanillaloop
    STA $7EC0E0,X : DEX : DEX : BPL .vanillaloop
    RTS

  .suppress
    LDA #$0814 : LDX #$000E
  .suppressloop
    STA $7EC0E0,X : DEX : DEX : BPL .suppressloop
    RTS
}

%endfree(A4)


%startfree(A5)

turret_x_positions:
    dw $0034, $01CC, $01CC, $01BC

turret_y_positions:
    dw $012F, $0101, $015E, $0188

hook_turret_rng_table:
    dw turret_rng_vanilla
    dw turret_rng_reroll
    dw turret_rng_aggressive
    dw turret_rng_upper_left
    dw turret_rng_lower_left
    dw turret_rng_upper_right
    dw turret_rng_lower_right
    dw turret_rng_left
    dw turret_rng_right
    dw turret_rng_upper
    dw turret_rng_lower
    dw turret_rng_not_upper_left
    dw turret_rng_not_lower_left
    dw turret_rng_not_upper_right
    dw turret_rng_not_lower_right

turret_rng_upper:
{
    BIT #$0002 : BEQ turret_rng_upper_right
    ; Fallthrough to turret_rng_upper_left
}

turret_rng_upper_left:
{
    LDX #$0006
    BRA turret_rng_vanilla_check_alive
}

turret_rng_left:
{
    BIT #$0002 : BNE turret_rng_upper_left
    ; Fallthrough to turret_rng_lower_left
}

turret_rng_lower_left:
{
    LDX #$0000
    BRA turret_rng_vanilla_check_alive
}

turret_rng_right:
{
    BIT #$0002 : BNE turret_rng_lower_right
    ; Fallthrough to turret_rng_upper_right
}

turret_rng_upper_right:
{
    LDX #$0002
    BRA turret_rng_vanilla_check_alive
}

turret_rng_lower:
{
    BIT #$0002 : BEQ turret_rng_lower_left
    ; Fallthrough to turret_rng_lower_right
}

turret_rng_lower_right:
{
    LDX #$0004
    BRA turret_rng_vanilla_check_alive
}

turret_rng_vanilla:
{
    ASL : TAX
  .check_alive
    LDA $7E8804,X : BNE .done
    LDA.w turret_x_positions,X : STA $12
    LDA.w turret_y_positions,X : STA $14
    LDY #$8E5E
    LDA #$0003
    JSL $868027
  .done
    RTS
}

turret_rng_not_upper_left:
{
    LDX #$0003 : STX $12
    BRA turret_rng_not
}

turret_rng_not_lower_left:
{
    LDX #$0000 : STX $12
    BRA turret_rng_not
}

turret_rng_not_upper_right:
{
    LDX #$0001 : STX $12
    BRA turret_rng_not
}

turret_rng_not_lower_right:
{
    LDX #$0002 : STX $12
    BRA turret_rng_not
}

turret_rng_not:
{
    CMP $12 : BNE turret_rng_vanilla
    LDA !CACHED_RANDOM_NUMBER
    LSR : LSR : STA $14 : AND #$0003
    CMP $12 : BNE turret_rng_vanilla
    LDA $14 : LSR : LSR : STA $14 : AND #$0003
    CMP $12 : BNE turret_rng_vanilla
    LDA $14 : LSR : LSR : STA $14 : AND #$0003
    CMP $12 : BNE turret_rng_vanilla
    LDA $14 : LSR : LSR : STA $14 : AND #$0003
    CMP $12 : BNE turret_rng_vanilla
    LDA $14 : LSR : LSR : STA $14 : AND #$0003
    CMP $12 : BNE turret_rng_vanilla
    JSL $808111 : AND #$0003
    BRA turret_rng_not
}

turret_rng_aggressive:
{
    LDA $7E8804 : ASL
    ORA $7E8806 : ASL
    ORA $7E8808 : ASL
    TAX : JMP (turret_rng_aggressive_table,X)
}

turret_rng_aggressive_table:
    dw turret_rng_all_alive
    dw turret_rng_lower_right_dead
    dw turret_rng_upper_right_dead
    dw turret_rng_lower_left_alive
    dw turret_rng_lower_left_dead
    dw turret_rng_upper_right_alive
    dw turret_rng_lower_right_alive
    dw turret_rng_vanilla_done ; all turrets dead

turret_rng_all_alive:
{
    LDA !CACHED_RANDOM_NUMBER : AND #$0003
  .loop
    CMP #$0003 : BNE turret_rng_all_alive_option_picked
    LDA !CACHED_RANDOM_NUMBER
    LSR : LSR : STA $14 : AND #$0003
    CMP #$0003 : BNE turret_rng_all_alive_option_picked
    LDA $14 : LSR : LSR : STA $14 : AND #$0003
    CMP #$0003 : BNE turret_rng_all_alive_option_picked
    LDA $14 : LSR : LSR : STA $14 : AND #$0003
    CMP #$0003 : BNE turret_rng_all_alive_option_picked
    LDA $14 : LSR : LSR : STA $14 : AND #$0003
    CMP #$0003 : BNE turret_rng_all_alive_option_picked
    LDA $14 : LSR : LSR : STA $14 : AND #$0003
    CMP #$0003 : BNE turret_rng_all_alive_option_picked
    JSL $808111 : AND #$0003
    BRA .loop
}

turret_rng_all_alive_option_picked:
{
    ASL : TAX
    ; Fallthrough to next routine
}

turret_rng_skip_alive_check:
{
    LDA.w turret_x_positions,X : STA $12
    LDA.w turret_y_positions,X : STA $14
    LDY #$8E5E
    LDA #$0003
    JSL $868027
  .done
    RTS
}

turret_rng_lower_right_dead:
{
    LDA !CACHED_RANDOM_NUMBER
    BIT #$0002 : BNE turret_rng_upper_right_alive
    ; Fallthrough to turret_rng_lower_left_alive
}

turret_rng_lower_left_alive:
{
    LDX #$0000
    BRA turret_rng_skip_alive_check
}

turret_rng_lower_left_dead:
{
    LDA !CACHED_RANDOM_NUMBER
    BIT #$0002 : BNE turret_rng_lower_right_alive
    ; Fallthrough to turret_rng_upper_right_alive
}

turret_rng_upper_right_alive:
{
    LDX #$0002
    BRA turret_rng_skip_alive_check
}

turret_rng_upper_right_dead:
{
    LDA !CACHED_RANDOM_NUMBER
    BIT #$0002 : BEQ turret_rng_lower_left_alive
    ; Fallthrough to turret_rng_lower_right_alive
}

turret_rng_lower_right_alive:
{
    LDX #$0004
    BRA turret_rng_skip_alive_check
}

turret_rng_reroll:
{
    ASL : TAX
    LDA $7E8804,X : BNE .reroll
  .spawn
    LDA.w turret_x_positions,X : STA $12
    LDA.w turret_y_positions,X : STA $14
    LDY #$8E5E
    LDA #$0003
    JSL $868027
    RTS

  .reroll
    LDA !CACHED_RANDOM_NUMBER : LSR
    AND #$0006 : TAX
    LDA $7E8804,X : BEQ .spawn
    RTS
}

hook_draygon_rng_right:
{
    LDA !ram_draygon_rng_right : BEQ .no_manip
    DEC    ; return with 1-swoop or 0-goop
    RTS

  .no_manip
    LDA !CACHED_RANDOM_NUMBER ; return with random number (overwritten code)
    RTS
}

hook_draygon_rng_left:
{
    LDA !ram_draygon_rng_left : BEQ .no_manip
    DEC    ; return with 1-swoop or 0-goop
    RTS

  .no_manip
    LDA !CACHED_RANDOM_NUMBER ; return with random number (overwritten code)
    RTS
}

hook_draygon_damage:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_BOSS_DAMAGE_FLASH : BNE .suppress
if !FEATURE_PAL
    LDY #$A2A3
else
    LDY #$A297
endif
    RTS

  .suppress
if !FEATURE_PAL
    LDY #$A263
else
    LDY #$A257
endif
    RTS
}

; Migrated from bank A6 since not enough freespace there
init_ceres_ridley_rng:
{
    LDA !ram_ridley_rng_flags : AND !RIDLEY_RNG_CERES_MASK : BEQ .set_ceres_rng
    CMP !RIDLEY_RNG_CERES_FIREBALL : BEQ .ceres_fireball
    CMP !RIDLEY_RNG_CERES_LUNGE : BEQ .ceres_lunge
    CMP !RIDLEY_RNG_CERES_SWOOP : BEQ .ceres_swoop
    TDC : BRA .set_ceres_rng

  .ceres_fireball
if !FEATURE_PAL
    LDA #$A792
else
    LDA #$A782
endif
    BRA .set_ceres_rng

  .ceres_lunge
if !FEATURE_PAL
    LDA #$A84C
else
    LDA #$A83C
endif
    BRA .set_ceres_rng

  .ceres_swoop
if !FEATURE_PAL
    LDA #$A8(D
else
    LDA #$A88D
endif

  .set_ceres_rng
    STA !eram_ceres_ridley_rng
    RTL
}

init_zebes_ridley_rng:
{
    LDA !ram_ridley_rng_flags
    BIT !RIDLEY_RNG_75_25_LUNGE : BNE .set_75_25_lunge
    BIT !RIDLEY_RNG_75_25_POGO : BNE .set_75_25_pogo
if !FEATURE_PAL
    LDA #$B3BC
else
    LDA #$B3AC
endif
    BRA .set_75_25

  .set_75_25_lunge
if !FEATURE_PAL
    LDA #$B3EC
else
    LDA #$B3DC
endif
    BRA .set_75_25

  .set_75_25_pogo
if !FEATURE_PAL
    LDA #$B3CC
else
    LDA #$B3BC
endif

  .set_75_25
    STA !eram_ridley_lunge_pogo_rng

    LDA !ram_ridley_rng_flags
    BIT !RIDLEY_RNG_50_50_SWOOP : BNE .set_50_50_swoop
    BIT !RIDLEY_RNG_50_50_POGO : BNE .set_50_50_pogo
if !FEATURE_PAL
    LDA #$B3AC
else
    LDA #$B39C
endif
    STA !eram_ridley_swoop_pogo_rng
if !FEATURE_PAL
    LDA #$B39C
else
    LDA #$B38C
endif
    BRA .set_50_50

  .set_50_50_swoop
    LDA #ridley_all_swoop_table
    BRA .set_50_50_both

  .set_50_50_pogo
if !FEATURE_PAL
    LDA #$B3CC
else
    LDA #$B3BC
endif

  .set_50_50_both
    STA !eram_ridley_swoop_pogo_rng
  .set_50_50
    STA !eram_ridley_pogo_swoop_rng

    LDA !ram_ridley_rng_times_and_fireball
    BIT !RIDLEY_RNG_ALL_FIREBALL : BNE .set_all_fireball
    BIT !RIDLEY_RNG_NO_FIREBALL : BNE .set_no_fireball
    TDC : BRA .set_fireball

  .set_all_fireball
    LDA #$0081
    BRA .set_fireball

  .set_no_fireball
    TDC : INC

  .set_fireball
    STA !eram_ridley_fireball_rng

    LDA !ram_ridley_rng_times_and_fireball : AND !RIDLEY_RNG_HOVER_TIME_MASK
    STA !eram_ridley_hover_time_rng

    LDA !ram_ridley_rng_times_and_fireball : AND !RIDLEY_RNG_POGO_TIME_MASK
    XBA : STA !eram_ridley_pogo_time_rng

    LDA !ram_ridley_rng_flags : AND !RIDLEY_RNG_POGO_HEIGHT_MASK
    STA !eram_ridley_pogo_height_rng

    PHX : LDA !ram_ridley_rng_flags : LSR #2 : PHA
    AND #$000E : TAX : LDA.l ridley_backpogo_threshold_table,X
    STA !eram_ridley_backpogo_left_rng : PLA : XBA
    AND #$000E : TAX : LDA.l ridley_backpogo_threshold_table,X
    STA !eram_ridley_backpogo_right_rng : PLX
    RTL
}

%endfree(A5)


; This is actually for preset support instead of RNG
; Keep Ceres Ridley enemy alive even if the main boss flag is set
if !FEATURE_PAL
org $A6A10C
else
org $A6A0FC
endif
    LSR : BCC $0F
    CPX #$0006 : BEQ $0A
    LDA !ENEMY_PROPERTIES

if !FEATURE_PAL
org $A6A18C
else             ; hijack, Ridley AI init
org $A6A17C
endif
    JSR ridley_reset_damagecounter

if !FEATURE_PAL
org $A6A302
else
org $A6A2F2
endif
    JMP ceres_ridley_draw_metroid

if !FEATURE_PAL
org $A6A370
else
org $A6A360
endif
    LDA #ridley_init_hook

if !FEATURE_PAL
org $A6A72C
else
org $A6A71C
endif
    BCC $0E ; overwrite a NOP to save one byte

if !FEATURE_PAL
org $A6A73A
else
org $A6A72A
endif
    BCC $55 ; branch to a different RTS since we overwrite the original

    ; See if Ceres Ridley RNG is fixed, requires five bytes
    LDA !eram_ceres_ridley_rng : BNE ceres_ridley_set_ai

    ; Original vanilla RNG
    LDA !CACHED_RANDOM_NUMBER : AND #$000F
    ASL : TAX : LDA.w ceres_ridley_set_ai_table,X
ceres_ridley_set_ai:
    STA !ENEMY_FUNCTION_POINTER

    ; We need to save five bytes, but we already saved one
    ; Replacing LDA #$0000 with TDC saves two more
    ; Jumping to another location that does STA $7E7800 : RTS saves two more
    TDC
if !FEATURE_PAL
    JMP $B4CE
else
    JMP $B4BE
endif
ceres_ridley_set_ai_table:
%warnpc($A6A743, $A6A753)

if !FEATURE_PAL
org $A6B36F
else
org $A6B35F
endif
    LDY !eram_ridley_pogo_swoop_rng

if !FEATURE_PAL
org $A6B385
else
org $A6B375
endif
    LDY !eram_ridley_lunge_pogo_rng

if !FEATURE_PAL
org $A6B38B
else
org $A6B37B
endif
    LDY !eram_ridley_pogo_swoop_rng

if !FEATURE_PAL
org $A6B396
else
org $A6B386
endif
    LDY !eram_ridley_swoop_pogo_rng

if !FEATURE_PAL
org $A6B3DC
else
org $A6B3CC
endif
ridley_all_hover_table:
    ; move hover start back five bytes
if !FEATURE_PAL
    dw $B5CF, $B5CF, $B5CF, $B5CF, $B5CF, $B5CF, $B5CF, $B5CF
else
    dw $B5BF, $B5BF, $B5BF, $B5BF, $B5BF, $B5BF, $B5BF, $B5BF
endif

if !FEATURE_PAL
org $A6B5CF
else
org $A6B5BF
endif
    ; Vanilla logic from $A6:B5C4
    LDA #$000B : STA $7E201E
    LDA #$0180 : STA $7E2012
if !FEATURE_PAL
    LDA #$B5F5
else
    LDA #$B5E5
endif
    STA !ENEMY_FUNCTION_POINTER

    ; Check if we have a fixed hover delay
    LDA !eram_ridley_hover_time_rng : BNE $0A

    ; Continue to vanilla logic
%warnpc($A6B5D8, $A6B5E8)

if !FEATURE_PAL
org $A6B605
    JMP $B69C
else ; Move jump by one byte due to below changes
org $A6B5F5
    JMP $B68C
endif

if !FEATURE_PAL
org $A6B633
    JMP $B69C
else ; Move jump by one byte due to below changes
org $A6B623
    JMP $B68C
endif

if !FEATURE_PAL
org $A6B651
else
org $A6B641
endif
    ; We need to save five bytes, which we can do if we switch to 8-bit mode,
    ; but this means we now need to save eleven bytes
    ; Start by replacing LDX #$0000 with TDC : TAX (saved 1, spent 0)
    TDC : TAX
    ; Vanilla logic
    LDA !SAMUS_Y : CMP #$0160 : BMI $03
    LDA #$0160
    STA $14
if !FEATURE_PAL
    JSR $B43E
    JSR $D533
else
    JSR $B42E
    JSR $D523
endif
    ; Replace LDA #$0001 with TDC : INC (saved 2, spent 0)
    TDC : INC : STA $7E2004
    ; Switch to 8-bit mode (saved 2, spent 2)
    %a8()
    ; Skip AND #$00FF and reduce CMP #$0003 (saved 6, spent 2)
    LDA !SAMUS_MOVEMENT_TYPE : CMP #$03
    BNE $23
    ; New logic (saved 6, spent 7)
    LDA !eram_ridley_fireball_rng : BNE $03
    ; Original logic, but skip AND #$00FF and reduce #$0080 (saved 10, spent 7)
    LDA !CACHED_RANDOM_NUMBER : CMP #$80
    ; Switch back to 16-bit mode (saved 10, spent 9)
    %a16()
    ; Vanilla logic
    BCC $13
    LDA $7E781E : BNE $0D
    LDA $7E7820 : DEC : BEQ $06
if !FEATURE_PAL
    LDA #$E711
    JSR $D43E
else
    LDA #$E73A
    JSR $D467
endif
    CLC : RTS
    ; Switch back to 16-bit mode (saved 10, spent 11)
    %a16()
    SEC : RTS
    ; Start into the next routine one byte later than vanilla
    LDA #$00F0 : STA $7E2012
    LDA #$0010 : STA $7E201E
    ; Replace LDA #$0001 with TDC : INC (saved 11, spent 11)
    TDC : INC
%warnpc($A6B69C, $A6B6AC)

if !FEATURE_PAL
org $A6B6BD
else ; Migrate vanilla routine up five bytes
org $A6B6AD
endif
    BMI $1A

if !FEATURE_PAL
org $A6B6C5
else
org $A6B6B5
endif
    LDA.w ridley_acceleration_table,Y

if !FEATURE_PAL
org $A6B6D9
    JSR $D92C
    LDA #$B6E8
else ; Migrate vanilla routine up five bytes
org $A6B6C9
    JSR $D955
    LDA #$B6D8
endif
    STA !ENEMY_FUNCTION_POINTER
    LDA #$0020 : STA !ENEMY_VAR_5
    ; Start into the next routine five bytes earlier than vanilla
    LDA !ENEMY_X : STA $12
    LDA #$0120 : STA $14
    LDX #$0000 : LDY #$0000
if !FEATURE_PAL
    JSR $D4FA
else
    JSR $D523
endif
    DEC !ENEMY_VAR_5 : BPL $1D
if !FEATURE_PAL
    JSR $CB0A
    JSR ridley_set_pogo_height
    LDA #$B71E
else
    JSR $CB33
    JSR ridley_set_pogo_height
    LDA #$B70E
endif
    STA !ENEMY_FUNCTION_POINTER
    ; Add new logic here
    LDA !eram_ridley_pogo_time_rng : BNE $09
%warnpc($A6B701, $A6B711)

   if !FEATURE_PAL
org $A6B772
else
org $A6B762
endif
    JSR ridley_set_pogo_height

if !FEATURE_PAL
org $A6B8EB
else
org $A6B8DB
endif
    CMP !eram_ridley_backpogo_right_rng

if !FEATURE_PAL
org $A6B90D
else
org $A6B8FD
endif
    CMP !eram_ridley_backpogo_left_rng

if !FEATURE_PAL
org $A6B93B
else
org $A6B92B
endif
    LDA.w ridley_pogo_parameter_table,Y

if !FEATURE_PAL
org $A6B95D
else
org $A6B94D
endif
ridley_set_pogo_height:
    LDA !eram_ridley_pogo_height_rng : BEQ $BD
    DEC : BRA $C0
%warnpc($A6B959, $A6B969)

if !FEATURE_PAL
org $A6EFA9
else
org $A6EFD2
endif
; Overwrite end of steam ai init (also used by zebes steam)
ceres_steam_ai_init:
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_NO_STEAM_COLLISION : BNE .noCollision

    ; vanilla palette index
    LDA #$0A00

  .setPaletteIndex
    STA !ENEMY_PALETTE_INDEX,X
    JSL $808111 : AND #$001F
    INC : STA !ENEMY_VAR_3,X
    LDA !ENEMY_PARAM_1,X : ASL : TAY
    LDA.w SteamInstructionListPointers,Y
    STA !ENEMY_INIT_PARAM,X
    LDA.w SteamInitialFunctionPointers,Y
    STA !ENEMY_FUNCTION_POINTER,X
    RTL

  .noCollision
    ; Use a different palette index
    LDA #$0800
    BRA .setPaletteIndex
%warnpc($A6F00D, $A6EFE4)

if !FEATURE_PAL
org $A6F016
else
org $A6F03F
endif
hook_ceres_steam_touch_ai:
    LDX $0E54
    LDA #$7FFF : STA !ENEMY_HP
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_NO_STEAM_COLLISION : BNE .noCollision
    JML $A0A477
  .noCollision
    RTL
%warnpc($A6F059, $A6F030)

; Fix ceres ridley door instruction list to keep door visible when skipping ridley fight
if !FEATURE_PAL
org $A6F533
else
org $A6F55C
endif
hook_ceres_ridley_door_instructions:
if !FEATURE_PAL
    dw $F64F, ridley_ceres_door_original_instructions
else
    dw $F678, ridley_ceres_door_original_instructions
endif
    dw $80ED, ridley_ceres_door_escape_instructions

; Lock ceres ridley door if timer not started or if boss not dead
if !FEATURE_PAL
org $A6F641
else
org $A6F66A
endif
    LDA !TIMER_STATUS : BEQ $F6
    LDA $7ED82E


%startfree(A6)

ridley_acceleration_table:
    dw #$00B0, #$0080, #$0060

ridley_pogo_parameter_table:
    dw #$000A, #$0010, #$0020, #$0030, #$0040, #$0050

ridley_all_swoop_table:
if !FEATURE_PAL
    dw $B451, $B451, $B451, $B451, $B451, $B451, $B451, $B451
else
    dw $B441, $B441, $B441, $B441, $B441, $B441, $B441, $B441
endif

ridley_backpogo_threshold_table:
    dw #$0555, #$0AAA, #$0FFF, #$1AA9, #$2AA8, #$4551, #$6FF9, #$0000

ridley_reset_damagecounter:
{
    TDC : STA !DAMAGE_COUNTER
    RTS
}

ridley_init_hook:
{
    LDA !ROOM_ID : CMP.w #ROOM_CeresRidleyRoom : BNE .not_ceres
    JSL init_ceres_ridley_rng

    LDA $7ED82E : BIT #$0001 : BEQ .continue

    ; Ceres Ridley is already dead, so skip to the escape
    ; We do need to mark Ceres Ridley alive
    ; to keep the door locked until the timer starts
    AND #$FFFE : STA $7ED82E

    ; Clear out the room main asm so it doesn't also trigger the escape
    STZ !ROOM_MAIN_ASM_POINTER

    ; Set up the escape timer routine
    LDA #$0001 : STA !CERES_STATUS
    LDA #$E0E6 : STA !SAMUS_TIMER_HACK_HANDLER

    ; Jump to the escape
if !FEATURE_PAL
    LDA #$AB47
else
    LDA #$AB37
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)

  .not_ceres
    JSL init_zebes_ridley_rng

  .continue
if !FEATURE_PAL
    LDA #$A387
else
    LDA #$A377
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

ceres_ridley_draw_metroid:
{
    LDA $7ED82E : BIT #$0001 : BNE .end
    LDA !CERES_STATUS : BNE .end
if !FEATURE_PAL
    JSR $BF2A
else
    JSR $BF1A
endif

  .end
if !FEATURE_PAL
    JMP $A30A
else
    JMP $A2FA
endif
}

ridley_ceres_door_original_instructions:
if !FEATURE_PAL
    dw $F67D
    dw #$0002, $F9EA
    dw $F641, $F533
    dw $F687
    dw $80ED, $F56F
else
    dw $F6A6
    dw #$0002, $FA13
    dw $F66A, $F55C
    dw $F6B0
    dw $80ED, $F598
endif

ridley_ceres_door_escape_instructions:
if !FEATURE_PAL
    dw $F687
    dw #$0002, $F9EA
    dw $F641, $F533
    dw $80ED, $F56F
else
    dw $F6B0
    dw #$0002, $FA13
    dw $F66A, $F55C
    dw $80ED, $F598
endif

SteamInstructionListPointers:
    dw #ceres_steam_up_instruction_list
if !FEATURE_PAL
    dw $F058, $F08C, $F0C0, $F058, $F0C0
else
    dw $F081, $F0B5, $F0E9, $F081, $F0E9
endif

SteamInitialFunctionPointers:
if !FEATURE_PAL
    dw $F015, $F015, $F015, $F015, $EFF0, $EFF0
else  ; Use a different RTL since we overwrote the one being used
    dw $F03E, $F03E, $F03E, $F03E, $F019, $F019
endif

ceres_steam_up_instruction_list:
if !FEATURE_PAL
    dw $F0F4
    dw $0001, $F119
    dw $F0FE, #ceres_steam_up_instruction_list, $F038
else
    dw $F11D
    dw $0001, $F142
    dw $F127, #ceres_steam_up_instruction_list, $F061
endif

%endfree(A6)


%startfree(A7)

phantoon_damage_palette:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_BOSS_DAMAGE_FLASH : BNE .suppress
    LDA #$7FFF
if !FEATURE_PAL
    JMP $DDB6
else
    JMP $DD82
endif

  .suppress
    LDA #$092B
if !FEATURE_PAL
    JMP $DDB6
else
    JMP $DD82
endif
}

kraid_palette_handling:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_BOSS_DAMAGE_FLASH : BNE .suppress
    TDC
if !FEATURE_PAL
    JMP $B3AC
else
    JMP $B396
endif

  .suppress
    LDA #$0020
if !FEATURE_PAL
    JMP $B3AC
else
    JMP $B396
endif
}

hook_kraid_claw_rng:
{
    LDA !ram_kraid_claw_rng : BEQ .no_manip
    DEC #2 ; return -1 (laggy) or 0 (laggier)
    RTS

  .no_manip
    LDA !CACHED_RANDOM_NUMBER ; return with random number (overwritten code)
    RTS
}

kraid_intro_skip:
{
    LDA !sram_cutscenes : AND !CUTSCENE_FAST_KRAID : BEQ .noSkip
    ; We can't adjust the timer here, because we're in a door transition and it will be 
    ; considered part of the previous room. Instead, set a flag to adjust the timer at 
    ; the end of the door transition.
    TDC : INC : STA !ram_kraid_adjust_timer
    RTS

  .noSkip
if !FEATURE_PAL
    LDA #$00FA
else
    LDA #$012C
endif
    RTS
}

%endfree(A7)


%startfree(A9)

hook_baby_skip_rng:
{
    LDA !ram_baby_rng : BEQ .no_manip
    DEC : BEQ .rng_set
    ; lunge
    LDA #$0020 : STA $7E7802,X

  .rng_set
if !FEATURE_PAL
    JMP $F22D
else
    JMP $F1E0
endif

  .no_manip
    LDA !CACHED_RANDOM_NUMBER ; overwritten code
if !FEATURE_PAL
    JMP $F21E
else
    JMP $F1D1
endif
}

%endfree(A9)

