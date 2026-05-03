
; Re-initialize water physics variables after Init Samus routine clears it
; Overwrites a JSL to an RTL in game state 6
org $828067
    JSL init_physics_ram


; Replace gravity suit checks with the water physics check
org $84B423
    LDA !SAMUS_WATER_PHYSICS

org $84B4D1
    LDA !SAMUS_WATER_PHYSICS

org $84B7F2
    BIT !SAMUS_SPEED_OR_BLUE_BOOSTER_BITMASK


org $908096
    LDA !SAMUS_WATER_PHYSICS : BIT #$0020

org $908198
    LDA !SAMUS_WATER_PHYSICS

org $90841D
    LDA !SAMUS_WATER_PHYSICS

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

org $909741
    LDA !SAMUS_WATER_PHYSICS

org $9097A9
    JMP spark_booster_speed_clamp

org $9098C2
    LDA !SAMUS_WATER_PHYSICS

org $909919
    JMP spark_booster_jump_lose_blue

org $90994F
    LDA !SAMUS_WATER_PHYSICS

org $9099A9
    BIT !SAMUS_SPEED_OR_BLUE_BOOSTER_BITMASK

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

org $90A347
    JSR blue_booster_update_speed_echoes

org $90A439
    LDA !SAMUS_WATER_PHYSICS : BIT #$0020

org $90A46E
    ; Water physics flag also used to determine if space jump or double jump equipped
    LDA !SAMUS_WATER_PHYSICS

org $90A4C4
    ; Replace JSL $9098BC so we can check if double jump allowed
    JSL double_jump_check

org $90D0BD
    JSR blue_booster_update_speed_echoes

org $90D0E9
    JSR blue_booster_update_speed_echoes

org $90D118
    JSR blue_booster_update_speed_echoes


%startfree(90)

blue_booster_update_speed_echoes:
{
    LDA !sram_speed_booster_physics : BIT #$0001 : BNE .blue
  .vanilla
if !FEATURE_PAL
    JMP $EEE4
else
    JMP $EEE7
endif

  .blue
    LDA !SAMUS_RUNNING_MOMENTUM_FLAG : BEQ .vanilla
    RTS
}

spark_booster_speed_clamp:
{
    LDA !SAMUS_SPEED_OR_BLUE_BOOSTER_BITMASK : BEQ .spark_booster
    LDA !SAMUS_X_RUNSPEED
    JMP $97AC

  .spark_booster
    JMP $97D5
}

spark_booster_jump_lose_blue:
{
    LDA !SAMUS_SPEED_OR_BLUE_BOOSTER_BITMASK : BEQ .check
    AND !SAMUS_ITEMS_EQUIPPED
    JMP $991F

  .check
    LDA !SAMUS_RUNNING_MOMENTUM_FLAG : BEQ .skip
    JSL spark_booster_remove_echoes
    LDA #$0001 : STA !SAMUS_SPEED_BOOST_TIMER

  .skip:
    JMP $993A
}

%endfree(90)


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
if !FEATURE_PAL
    LDA.w $919E3A,X
else
    LDA.w $919EE2,X
endif
    TAY : LDA $0000,Y : INC : BEQ $23
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

if !FEATURE_PAL
org $91D699
else
org $91D741
endif
hook_samus_unused_palette_pointer_rts:
    dw $804C

if !FEATURE_PAL
org $91D917
else
org $91D9B2
endif
    LDA !SAMUS_WATER_PHYSICS : BIT #$0020

if !FEATURE_PAL
org $91D932
else
org $91D9CD
endif
    JMP hook_special_palette_fx_liquid_check

if !FEATURE_PAL
org $91D93B
else
org $91D9D6
endif
    JMP hook_special_palette_lava_acid_check

if !FEATURE_PAL
org $91D94F
else
org $91D9EA
endif
    JMP spark_booster_speed_boosting

if !FEATURE_PAL
org $91D958
else
org $91D9F3
endif
    BNE $7F

if !FEATURE_PAL
org $91DA41
else
org $91DADC
endif
modified_speed_booster_shine_palette:
{
    BEQ .finish : BMI .finish
    LDA !SAMUS_SUIT_PALETTE_INDEX
    ORA !SAMUS_FAKE_SHINESPARK_FLAG : TAX
    LDA.w shinecharge_palette_table,X : STA $24
    LDA !SAMUS_SHINE_PALETTE_TYPE : CLC : ADC $24
    TAX : LDA $0000,X : TAX
    JSR $DD5B
    LDA !SAMUS_SHINE_PALETTE_TYPE : INC : INC
    CMP #$000C : BMI .set
    TDC
  .set
    STA !SAMUS_SHINE_PALETTE_TYPE
    SEC : RTS

  .finish
    STZ !SAMUS_FAKE_SHINESPARK_FLAG
    STZ !SAMUS_SHINE_PALETTE_TYPE
    STZ !SAMUS_SHINE_TIMER_TYPE
    CLC : RTS
}
%warnpc($91DB16, $91DA7B)

if !FEATURE_PAL
org $91DAA6
else
org $91DB41
endif
    BEQ modified_speed_booster_shine_palette_finish
    BMI modified_speed_booster_shine_palette_finish

if !FEATURE_PAL
org $91DAD2
else
org $91DB6D
endif
    STA !SAMUS_MULTI_PURPOSE_PALETTE_TIMER
    SEC : RTS
%warnpc($91DB75, $91DADA)

if !FEATURE_PAL
org $91D8FB
else
org $91DB96
endif
    BMI $50

if !FEATURE_PAL
org $91DB2A
else
org $91DBC5
endif
    BPL $A6

if !FEATURE_PAL
org $91DB46
else
org $91DBE1
endif
    BMI $8A
    TDC : BRA $87
    NOP #2
    STZ !SAMUS_FAKE_SHINESPARK_FLAG
%warnpc($91DBEB, $91DB50)

if !FEATURE_PAL
org $91DC94
else
org $91DD2F
endif
    STZ !SAMUS_FAKE_SHINESPARK_FLAG
    CLC : RTS

if !FEATURE_PAL
org $91E5A9
else
org $91E644
endif
    JMP hook_blue_unpause

if !FEATURE_PAL
org $91E866
else
org $91E901
endif
    JMP spark_booster_fall_lose_blue

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
org $91F4C9
else
org $91F564
endif
    JSR hook_normal_jump_spark

if !FEATURE_PAL
org $91F4D6
else
org $91F571
endif
    JSR hook_normal_jump_spark

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
org $91F6F5
else
org $91F790
endif
    dw crouching_transition, crouching_transition

if !FEATURE_PAL
org $91FA73
else
org $91FB0E
endif
    LDA !SAMUS_WATER_PHYSICS

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


%startfree(91)

handle_transition_table_lookup_failure:
{
    PHP : PHB : PHK : PLB
    %ai16()
    JSR set_prospective_pose_change_command
    BCC $08
    LDA !SAMUS_POSE : STA !SAMUS_POTENTIAL_POSE_VALUES
    BRA $15
    LDA !SAMUS_POSE : ASL : ASL : ASL : TAX
if !FEATURE_PAL
    LDA.w $91B583,X
else
    LDA.w $91B62B,X
endif
    AND #$00FF
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

spark_booster_speed_boosting:
{
    LDA !SAMUS_SPEED_OR_BLUE_BOOSTER_BITMASK : BEQ .check
  .vanilla
    LDA !SAMUS_SPEED_BOOST_TIMER : AND #$0400
if !FEATURE_PAL
    JMP $D958
else
    JMP $D9F3
endif

  .check
    LDA !SAMUS_RUNNING_MOMENTUM_FLAG : BEQ .vanilla
if !FEATURE_PAL
    JMP $D95A
else
    JMP $D9F5
endif
}

hook_special_palette:
{
  .fx_liquid_check
    BNE .not_liquid
  .blue_check:
    LDA !sram_speed_booster_physics : BIT #$0001 : BNE .blue
  .vanilla
if !FEATURE_PAL
    JMP $D95A
else
    JMP $D9F5
endif

  .blue
    LDA !SAMUS_RUNNING_MOMENTUM_FLAG : BEQ .vanilla
    LDA !SAMUS_SPEED_BOOST_TIMER : AND #$0400
if !FEATURE_PAL
    JMP $D958
else
    JMP $D9F3
endif

  .lava_acid_check:
    CMP $14 : BMI .blue_check
  .not_liquid
if !FEATURE_PAL
    JMP $D93F
else
    JMP $D9DA
endif
}

crouching_transition:
{
    LDA !SAMUS_SPEED_BOOST_TIMER
    AND #$FF00 : CMP #$0400 : BMI .return
if !FEATURE_PAL
    LDA #$0090
else
    LDA #$00B4
endif
    STA !SAMUS_SHINE_TIMER
    LDA !sram_speed_booster_physics : BIT #$0001 : BNE .blue
  .vanilla
    TDC
  .set_fake_flag
    STA !SAMUS_FAKE_SHINESPARK_FLAG
    LDA #$0001 : STA !SAMUS_SHINE_TIMER_TYPE
    STZ !SAMUS_SHINE_PALETTE_TYPE
  .return
    CLC : RTS

  .blue
    LDA !SAMUS_RUNNING_MOMENTUM_FLAG : BEQ .vanilla
    LDA #$0008 : BRA .set_fake_flag
}

hook_normal_jump_spark:
{
    LDA !SAMUS_FAKE_SHINESPARK_FLAG : BNE .fake
    LDA !SAMUS_SHINE_TIMER
    RTS

  .fake
    ; If attempting to activate a "fake shinecharge", clear the dash counter.
    ; This makes it so you still have to wait out the fake shinecharge when doing temporary blue,
    ; or the blue is lost.
    TDC : STA !SAMUS_SPEED_BOOST_TIMER
    RTS
}

hook_blue_unpause:
{
    LDA !SAMUS_SPEED_OR_BLUE_BOOSTER_BITMASK : BEQ .spark_booster
    AND !SAMUS_ITEMS_EQUIPPED : BEQ .no_blue

  .keep_blue
if !FEATURE_PAL
    JMP $E5D4
else
    JMP $E66F
endif

  .spark_booster
    LDA !SAMUS_RUNNING_MOMENTUM_FLAG : BEQ .no_blue
    LDA !SAMUS_MOVEMENT_TYPE : AND #$00FF : DEC : BEQ .keep_blue
    
  .no_blue
if !FEATURE_PAL
    JMP $E5B1
else
    JMP $E64C
endif
}

spark_booster_fall_lose_blue:
{
    LDA !SAMUS_SPEED_OR_BLUE_BOOSTER_BITMASK : BNE .skip
    LDA !SAMUS_RUNNING_MOMENTUM_FLAG : BEQ .skip
    JSL spark_booster_remove_echoes
    LDA #$0001 : STA !SAMUS_SPEED_BOOST_TIMER

  .skip:
    LDA !SAMUS_POSE_DIRECTION
if !FEATURE_PAL
    JMP $E869
else
    JMP $E904
endif
}

spark_booster_remove_echoes:
{
    PHP : PHB
if !FEATURE_PAL
    JMP $DEF2
else
    JMP $DE8D
endif
}

shinecharge_palette_table:
if !FEATURE_PAL
    dw $DA7B, $DB87, $DB93
else
    dw $DB16, $DB22, $DB2E
endif
    dw $0000, .fake_no_suit, .fake_varia_suit, .fake_gravity_suit
  .fake_no_suit:
    dw $9B20, $9B40, $9B60, $9B80, $9B60, $9B40
  .fake_varia_suit:
    dw $9D20, $9D40, $9D60, $9D80, $9D60, $9D40
  .fake_gravity_suit:
    dw $9FA0, $9F20, $9F40, $9F60, $9F40, $9F20

%endfree(91)


; The following three fix double jump when landing on spikes
org $948EA9
    STA $0A4E : STZ !SAMUS_DOUBLE_JUMP

org $948EE4
    STA $0A4E : STZ !SAMUS_DOUBLE_JUMP

org $948F1F
    STA $0A4E : STZ !SAMUS_DOUBLE_JUMP


org $9BC4BE
    LDA !SAMUS_WATER_PHYSICS : BIT #$0020

; Relocate $9182D9 routine
org $9BC868
    JSL handle_transition_table_lookup_failure

