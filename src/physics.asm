
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
    LDA !SAMUS_DOUBLE_JUMP : BNE .end

    ; Jump allowed
    ; Increment counter unless in a walljump pose
    LDA !SAMUS_ANIMATION_FRAME : AND #$000F : CMP #$000B : BEQ .jump_allowed
    INC !SAMUS_DOUBLE_JUMP
    JMP $98BC

  .end
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

; The following three fix double jump when landing on spikes
org $948EA9
    STA $0A4E : STZ !SAMUS_DOUBLE_JUMP

org $948EE4
    STA $0A4E : STZ !SAMUS_DOUBLE_JUMP

org $948F1F
    STA $0A4E : STZ !SAMUS_DOUBLE_JUMP

