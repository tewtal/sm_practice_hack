
; Replace gravity suit checks with the water physics check
org $84B423
misc_water_physics_quicksand_air_surface:
    LDA !SAMUS_WATER_PHYSICS

org $84B4D1
misc_water_physics_quicksand_surface:
    LDA !SAMUS_WATER_PHYSICS

org $908096
misc_water_physics_animate_samus_fx_none:
    LDA !SAMUS_WATER_PHYSICS : BIT #$0020

org $908198
misc_water_physics_water_bubbles:
    LDA !SAMUS_WATER_PHYSICS

org $90841D
misc_water_physics_animation_delay_walljump:
    LDA !SAMUS_WATER_PHYSICS

org $909741
misc_water_physics_samus_extra_run_speed:
    LDA !SAMUS_WATER_PHYSICS

org $9098C2
misc_water_physics_make_samus_jump:
    LDA !SAMUS_WATER_PHYSICS

org $90994F
misc_water_physics_make_samus_walljump:
    LDA !SAMUS_WATER_PHYSICS

org $9099DC
misc_water_physics_samus_knockback_speed:
    LDA !SAMUS_WATER_PHYSICS

org $909A2F
misc_water_physics_make_samus_bomb_jump:
    LDA !SAMUS_WATER_PHYSICS

org $909BD4
misc_water_physics_samus_speed_table:
    LDA !SAMUS_WATER_PHYSICS

org $909C24
misc_water_physics_grapple_swing_speed_table:
    LDA !SAMUS_WATER_PHYSICS

org $909C5B
misc_water_physics_samus_vertical_acceleration:
    LDA !SAMUS_WATER_PHYSICS

org $90A439
misc_water_physics_samus_spin_jump:
    LDA !SAMUS_WATER_PHYSICS : BIT #$0020

if !FEATURE_PAL
org $91D917
else
org $91D9B2
endif
misc_water_physics_screw_attack_speed_booster:
    LDA !SAMUS_WATER_PHYSICS : BIT #$0020

if !FEATURE_PAL
org $91F5EF
else
org $91F68A
endif
misc_water_physics_samus_turnaround_top:
    LDA !SAMUS_WATER_PHYSICS

if !FEATURE_PAL
org $91F650
else
org $91F6EB
endif
misc_water_physics_samus_turnaround_bottom:
    LDA !SAMUS_WATER_PHYSICS

if !FEATURE_PAL
org $91FA73
else
org $91FB0E
endif
misc_water_physics_samus_pose_change:
    LDA !SAMUS_WATER_PHYSICS

org $9BC4BE
misc_water_physics_grapple:
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
double_jump_eligible_check:
    ; Water physics flag also used to determine if space jump or double jump equipped
    LDA !SAMUS_WATER_PHYSICS

org $90A4C4
double_jump_check_hook:
    ; Replace JSL $9098BC so we can check if double jump allowed
    JSL double_jump_check

if !FEATURE_PAL
org $91F006
else
org $91F0A1
endif
double_jump_handle_landing_graphics:
    ; Replace a JSR to next routine with a STZ followed by the next routine
    STZ !SAMUS_DOUBLE_JUMP : NOP


; Re-initialize water physics variables after Init Samus routine clears it
; Overwrites a JSL to an RTL at the end of game state 6
org $828067
    JSL init_water_physics_ram

