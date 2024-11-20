
; Re-initialize water physics variables after Init Samus routine clears it
; Overwrites a JSL to an RTL in game state 6
org $828067
    JSL init_physics_ram

; Replace gravity suit checks with the water physics check
org $84B423
    LDA !SAMUS_WATER_PHYSICS

org $84B4D1
    LDA !SAMUS_WATER_PHYSICS

org $908096
    LDA !SAMUS_WATER_PHYSICS : BIT #$0020

org $908198
    LDA !SAMUS_WATER_PHYSICS

org $90841D
    LDA !SAMUS_WATER_PHYSICS

org $909741
    LDA !SAMUS_WATER_PHYSICS

org $9098C2
    LDA !SAMUS_WATER_PHYSICS

org $90994F
    LDA !SAMUS_WATER_PHYSICS

org $9099DC
    LDA !SAMUS_WATER_PHYSICS

org $909A2F
    LDA !SAMUS_WATER_PHYSICS

org $909BD4
    LDA !SAMUS_WATER_PHYSICS

org $909C24
    LDA !SAMUS_WATER_PHYSICS

org $909C5B
    LDA !SAMUS_WATER_PHYSICS

org $90A439
    LDA !SAMUS_WATER_PHYSICS : BIT #$0020

if !FEATURE_PAL
org $91D917
else
org $91D9B2
endif
    LDA !SAMUS_WATER_PHYSICS : BIT #$0020

if !FEATURE_PAL
org $91F5EF
else
org $91F68A
endif
    LDA !SAMUS_WATER_PHYSICS

if !FEATURE_PAL
org $91F650
else
org $91F6EB
endif
    LDA !SAMUS_WATER_PHYSICS

if !FEATURE_PAL
org $91FA73
else
org $91FB0E
endif
    LDA !SAMUS_WATER_PHYSICS

org $9BC4BE
    LDA !SAMUS_WATER_PHYSICS : BIT #$0020


org $9092EA
double_jump_check:
{
    LDA !SAMUS_ITEMS_EQUIPPED : BIT #$0200 : BEQ .no_space_jump

  .jump_allowed
    JMP $98BC

  .no_space_jump
    ; Increment double jump counter
    INC !SAMUS_DOUBLE_JUMP

    ; This might end up being a walljump,
    ; in which case it shouldn't count as a double jump
    ; Increment a counter for that case as well
    INC !SAMUS_SUBTRACT_WALL_JUMP

    ; Allow double jump if counter is one
    LDA !SAMUS_DOUBLE_JUMP : CMP #$0001 : BNE .end
    JMP $98BC

  .end
    TDC
    RTL
}
warnpc $909348

org $90A46E
    ; Water physics flag also used to determine if space jump or double jump equipped
    LDA !SAMUS_WATER_PHYSICS

org $90A4C4
    ; Replace JSL $9098BC so we can check if double jump allowed
    JSL double_jump_check

if !FEATURE_PAL
org $91F006
else
org $91F0A1
endif
    ; Replace a JSR to next routine with a STZ followed by the next routine
    STZ !SAMUS_DOUBLE_JUMP : NOP

if !FEATURE_PAL
org $91F3AB
else
org $91F446
endif
    JSR double_jump_walljump_check

if !FEATURE_PAL
org $91FBA7
else
org $91FC42
endif
double_jump_walljump_check:
{
    ; If transitioning to walljump
    AND #$FF00 : CMP #$1400 : BNE .done
    ; If flag to give back double jump set
    LDA !SAMUS_SUBTRACT_WALL_JUMP : BEQ .done
    DEC !SAMUS_DOUBLE_JUMP

  .done
    STZ !SAMUS_SUBTRACT_WALL_JUMP

if !FEATURE_PAL
    JMP $F3CD
else
    JMP $F468
endif
}
%warnpc($91FC66, $91FBCB)

; The following three fix double jump when landing on spikes
org $948EA9
    STA $0A4E : STZ !SAMUS_DOUBLE_JUMP

org $948EE4
    STA $0A4E : STZ !SAMUS_DOUBLE_JUMP

org $948F1F
    STA $0A4E : STZ !SAMUS_DOUBLE_JUMP


; Relocate $9182D9 routine
org $9BC868
    JSL handle_transition_table_lookup_failure

org $9180BE
handle_transition_table_lookup_failure:
{
    PHP : PHB : PHK : PLB
    %ai16()
    JSR set_prospective_pose_change_command
    BCC $08
    LDA !SAMUS_POSE : STA !SAMUS_POTENTIAL_POSE_VALUES
    BRA $15
    LDA !SAMUS_POSE : ASL : ASL : ASL : TAX
    LDA.w $91B62B,X : AND #$00FF
    CMP #$00FF : BEQ $E6
    STA !SAMUS_POTENTIAL_POSE_VALUES
    PLB : PLP : RTL
}

; Relocate $918332 table
prospective_pose_change_table:
{
    db $02 ; 0: Standing
    db $01 ; 1: Running
    db $01 ; 2: Normal jumping
    db $00 ; 3: Spin jumping
    db $06 ; 4: Morph ball - on ground
    db $02 ; 5: Crouching
    db $08 ; 6: Falling
    db $02 ; 7: Unused
    db $01 ; 8: Morph ball - falling
    db $06 ; 9: Unused
    db $02 ; Ah: Knockback / crystal flash ending
    db $02 ; Bh: Unused
    db $02 ; Ch: Unused
    db $06 ; Dh: Unused
    db $02 ; Eh: Turning around - on ground
    db $02 ; Fh: Crouching/standing/morphing/unmorphing transition
    db $02 ; 10h: Moonwalking
    db $06 ; 11h: Spring ball - on ground
    db $06 ; 12h: Spring ball - in air
    db $06 ; 13h: Spring ball - falling
    db $06 ; 14h: Wall jumping
    db $02 ; 15h: Ran into a wall
    db $06 ; 16h: Grappling
    db $02 ; 17h: Turning around - jumping
    db $02 ; 18h: Turning around - falling
    db $02 ; 19h: Damage boost
    db $02 ; 1Ah: Grabbed by Draygon
    db $02 ; 1Bh: Shinespark / crystal flash / drained by metroid / damaged by MB's attacks
    db $08 ; should not be used but keeping same as vanilla just in case
}
warnpc $91810A

; Relocate most of $9181A9 routine to the end of $9181F4 routine,
; so instead of JSR $81F4 make it JMP $81F4
org $9181A9
determine_perspective_pose:
{
    LDA !IH_CONTROLLER_PRI : BEQ .no_input
    JMP $81F4
  .no_input
    STZ $0A18
    JSL handle_transition_table_lookup_failure
    CLC : RTS
}

; Relocate $918304 routine
set_prospective_pose_change_command:
{
    LDA !SAMUS_MOVEMENT_TYPE : AND #$00FF : TAX
    LDA.w prospective_pose_change_table,X
    AND #$00FF : CMP #$0001 : BEQ $05
    STA !SAMUS_POTENTIAL_POSE_FLAGS
    CLC : RTS
    LDA !SAMUS_X_MOMENTUM : BNE $0A
    LDA !SAMUS_X_SUBMOMENTUM : BNE $05
    LDA #$0002 : BRA $EC
    LDA #$0001 : STA !SAMUS_POTENTIAL_POSE_FLAGS
    SEC : RTS
}
warnpc $9181F4

; Overwrite $9182D9 routine and RTS at end of $9181F4 routine
org $9182D8
hook_spin_lock:
{
    LDA !sram_spin_lock : BEQ .resume_vanilla
    LDA !SAMUS_MOVEMENT_TYPE : AND #$00FF
    CMP #$0003  ; spin-jumping movement type
    BEQ .disable_up_down
    CMP #$0014  ; wall-jumping movement type
    BNE .resume_vanilla

  .disable_up_down:
    ; Override up/down inputs to be treated as not held or newly pressed
    LDA $14 : ORA #$0C00 : STA $14
    LDA $12 : ORA #$0C00 : LDA $12

  .resume_vanilla:
    ; Finish $9181A9 routine starting from $9181B0
    LDA !SAMUS_POSE : ASL : TAX
    LDA.w $919EE2,X : TAY
    LDA $0000,Y : INC : BEQ $23
    DEC : BEQ $04
    AND $12 : BNE $09
    LDA $0002,Y : BEQ $19
    AND $14 : BEQ $15
    TYA : CLC : ADC #$0006 : TAY
    LDA $0000,Y : INC : BNE $E4
    STZ $0A18
    JSL handle_transition_table_lookup_failure
    CLC : RTS
    LDA $0004,Y : CMP !SAMUS_POSE : BEQ $F6
    STA !SAMUS_POTENTIAL_POSE_VALUES
    STZ !SAMUS_BOMB_JUMP_DIRECTION
    SEC : RTS
}
warnpc $91834E

