
; Suit periodic damage
org $8DE37C
    AND !ram_suits_heat_damage_check : BNE $29
    LDA !ram_suits_heat_damage_value : BEQ $23
    CLC : ADC $0A4E : STA $0A4E
    BCC $03 : INC $0A50
warnpc $8DE394


; Lava suit check
org $9081DB
    ; The AND/CMP replaces a BIT operation
    ; Everything else is vanilla but needs to be shifted down three bytes
    AND !SAMUS_LAVA_DAMAGE_SUITS
    CMP !SAMUS_LAVA_DAMAGE_SUITS : BEQ $2C
    LDA $09DA : BIT #$0007 : BNE $0F
    LDA $09C2 : CMP #$0047 : BMI $07
    LDA #$002D : JSL $809139
    LDA $0A4E : CLC : ADC $9E8B : STA $0A4E
    LDA $0A50 : ADC $9E8D
    ; Originally STA $0A50 and BRA $40 to $90824C
    ; Conveniently the command at $908249 is STA $0A50 so we can save three bytes
    BRA $3D
warnpc $90820C

org $90B8E8
    JSL damage_init_beam

org $90B9E2
    JSL damage_init_beam

; We now have three separate periodic damage routines,
; so we need to load an index to jump to the correct routine
org $90E72B
    LDA !sram_suit_properties : ASL : PHA
    JSR damage_overwritten_movement_routine

; Handle periodic damage based on suit properties
; Overwritten logic will be transferred
org $90E74D
    PLA : PHX : TAX
    JSR (periodic_damage_table,X)
    PLX : NOP : NOP

; Transfer logic here by overwriting redundant end of periodic damage
; Also repoint jump and branch to avoid the redundant section
if !FEATURE_PAL
org $90E9D3
    JMP $EA32
else
org $90E9D6
    JMP $EA35
endif

if !FEATURE_PAL
org $90EA2A
else
org $90EA2D
endif
    BPL $06

; Optimize CPU by overwriting our PLP/RTS
; and skipping over the PHP/REP #$30 in the pause check routine
if !FEATURE_PAL
org $90EA38
else
org $90EA3B
endif
    BRA $0B

; Optimize CPU by removing RTS so we go straight to the low health check
if !FEATURE_PAL
org $90EA7B
else
org $90EA7E
endif
    NOP


; Turn off health alarm
if !FEATURE_PAL
org $90EA89
else
org $90EA8C
endif
    LDA !sram_healthalarm : ASL : PHX : TAX
    JMP (healthalarm_turn_off_table,X)

; Turn on health alarm
if !FEATURE_PAL
org $90EA9A
else
org $90EA9D
endif
    LDA !sram_healthalarm : ASL : PHX : TAX
    JMP (healthalarm_turn_on_table,X)

; Turn on health alarm
if !FEATURE_PAL
org $90F336
    JSR $EA9A
else
org $90F339
    JSR $EA9D
endif
    BRA $02

; Turn on health alarm from bank 91
if !FEATURE_PAL
org $91E63F
else
org $91E6DA
endif
    JML healthalarm_turn_on_remote


; Suit enemy damage
if !FEATURE_PAL
org $A0A473
else
org $A0A463
endif
suit_enemy_damage:
{
    BIT #$0020 : BEQ .checkSuit
    LSR $12
  .checkSuit
    AND !ram_suits_enemy_damage_check : BEQ .return
    LSR $12
  .return
    LDA $12
    RTL
}


; Suit metroid damage
if !FEATURE_PAL
org $A3EEF4
else
org $A3EED8
endif
suit_metroid_damage:
{
    LDA #$C000 : STA $12
    LDA $09A2 : AND !ram_suits_enemy_damage_check : BEQ .checkGrav
    LSR $12
  .checkGrav
    LDA $09A2 : BIT #$0020 : BEQ .noGrav
    LSR $12
  .noGrav
    ; Continue vanilla routine
}


org $90FE00
print pc, " damage bank90 start"

damage_overwritten_movement_routine:
    ; We overwrote an unnecessary JSR, a STZ command, and a jump to the movement routine
    STZ $0A6E
    JMP ($0A58)

periodic_damage_table:
if !FEATURE_PAL
    dw $E9CB
else           ; vanilla routine
    dw $E9CE
endif
    dw periodic_damage_balanced
    dw periodic_damage_progressive
    dw periodic_damage_progressive
    dw periodic_damage_dash_recall
    dw periodic_damage_heat_shield
if !FEATURE_PAL
    dw $E9CB
    dw $E9CB
else           ; vanilla routine
    dw $E9CE
    dw $E9CE
endif
    dw periodic_damage_pal_debug
    dw periodic_damage_pal_debug
    dw periodic_damage_pal_debug
    dw periodic_damage_pal_debug
    dw periodic_damage_pal_debug
    dw periodic_damage_pal_debug
    dw periodic_damage_pal_debug
    dw periodic_damage_pal_debug

periodic_damage_pal_debug:
{
    ; If we are here then the PAL debug flag was set
    ; First execute the correct periodic damage routine
    LDA !sram_suit_properties : AND !SUIT_PROPERTIES_MASK
    ASL : TAX : JSR (periodic_damage_table,X)

    ; Now jump to demo recorder routine, but first fix the stack
    ; Skip over an RTS and pull X from stack
    PLA : PLX
if !FEATURE_PAL
    JMP $E75B
else
    JMP $E75E
endif
}

periodic_damage_balanced:
{
    PHP : REP #$30
    LDA $0A78 : BEQ $03
    ; Nothing to do, jump back to vanilla routine
if !FEATURE_PAL
    JMP $EA32
else
    JMP $EA35
endif
    LDA $09A2 : BIT #$0001 : BNE $03
    ; Either jump to gravity (75% reduction) or power suit (no reduction)
if !FEATURE_PAL
    JMP $EA0E   ; Varia not equipped
    JMP $E9F9   ; Varia equipped
else
    JMP $EA11   ; Varia not equipped
    JMP $E9FC   ; Varia equipped
endif
}

periodic_damage_progressive:
{
    PHP : REP #$30
    LDA $0A78 : BEQ $03
    ; Nothing to do, jump back to vanilla routine
if !FEATURE_PAL
    JMP $EA32
else
    JMP $EA35
endif

    LDA $09A2 : BIT #$0020 : BEQ .nogravity
    ; Gravity equipped, so halve damage
    LDA $0A4F : LSR
    PHA : XBA : AND #$FF00 : STA $0A4E
    PLA : XBA : AND #$00FF : STA $0A50

  .nogravity
    LDA $09A2 : BIT #$0001 : BEQ .novaria
    ; Varia equipped, so halve damage
    LDA $0A4F : LSR
    PHA : XBA : AND #$FF00 : STA $0A4E
    PLA : XBA : AND #$00FF : STA $0A50

  .novaria
    ; Jump back into the vanilla routine
if !FEATURE_PAL
    JMP $EA0E
else
    JMP $EA11
endif
}

periodic_damage_dash_recall:
{
    PHP : REP #$30
    LDA $0A78 : BEQ $03
    ; Nothing to do, jump back to vanilla routine
if !FEATURE_PAL
    JMP $EA32
else
    JMP $EA35
endif

    LDA $09A2 : BIT #$0001 : BEQ .novaria
    ; Jump back to gravity vanilla routine for 75% reduction
if !FEATURE_PAL
    JMP $E9F9
else
    JMP $E9FC
endif

  .novaria
    LDA $09A2 : BIT #$0020 : BEQ .nogravity
    ; Gravity equipped, so halve damage
    LDA $0A4F : LSR
    PHA : XBA : AND #$FF00 : STA $0A4E
    PLA : XBA : AND #$00FF : STA $0A50

  .nogravity
    ; Jump back into the vanilla routine
if !FEATURE_PAL
    JMP $EA0E
else
    JMP $EA11
endif
}

periodic_damage_heat_shield:
{
    PHP : REP #$30
    LDA $0A78 : BEQ $03
    ; Nothing to do, jump back to vanilla routine
if !FEATURE_PAL
    JMP $EA32
else
    JMP $EA35
endif

    LDA $09A2 : BIT #$0020 : BEQ .nogravity
    ; Gravity equipped, so halve damage
    LDA $0A4F : LSR
    PHA : XBA : AND #$FF00 : STA $0A4E
    PLA : XBA : AND #$00FF : STA $0A50

  .nogravity
    ; Jump back into the vanilla routine
if !FEATURE_PAL
    JMP $EA0E
else
    JMP $EA11
endif
}


healthalarm_turn_on_table:
    dw healthalarm_turn_on_never
    dw healthalarm_turn_on_vanilla
    dw healthalarm_turn_on_pb_fix
    dw healthalarm_turn_on_improved

healthalarm_turn_on_improved:
    ; Do not sound alarm until below 30 combined health
    LDA $09C2 : CLC : ADC $09D6 : CMP #$001E : BPL healthalarm_turn_on_done

healthalarm_turn_on_pb_fix:
    ; Do not sound alarm if it won't play due to power bomb explosion
    LDA $0592 : BMI healthalarm_turn_on_done

healthalarm_turn_on_vanilla:
    LDA #$0002 : JSL $80914D

healthalarm_turn_on_never:
    LDA #$0001 : STA !SAMUS_HEALTH_WARNING

healthalarm_turn_on_done:
    PLX : RTS


healthalarm_turn_off_table:
    dw healthalarm_turn_off_never
    dw healthalarm_turn_off_vanilla
    dw healthalarm_turn_off_pb_fix
    dw healthalarm_turn_off_improved

healthalarm_turn_off_improved:
healthalarm_turn_off_pb_fix:
    ; Do not stop alarm if it won't stop due to power bomb explosion
    LDA $0592 : BMI healthalarm_turn_off_done

healthalarm_turn_off_vanilla:
    LDA #$0001 : JSL $80914D

healthalarm_turn_off_never:
    STZ !SAMUS_HEALTH_WARNING

healthalarm_turn_off_done:
    PLX : RTS


healthalarm_turn_on_remote:
if !FEATURE_PAL
    JSR $EA9A
else
    JSR $EA9D
endif
    PLB : PLP : RTL

print pc, " damage bank90 end"


org $93F61D
print pc, " damage bank93 start"

damage_init_beam:
{
    ; Based on $938000 initialize projectile method,
    ; but optimized for beam shots
    ; so we can inject custom damage without a CPU hit
    PHP : PHB : PHK : PLB
    %ai16()
    LDA $0C04,X : AND #$000F
    ASL : STA $12
    LDA $0C18,X
    BIT #$0010 : BNE .charged
    AND #$000F : ASL
    TAY : LDA $83C1,Y : TAY
    LDA !sram_custom_damage : BNE .nonVanillaUncharged
    LDA $0000,Y : STA $0C2C,X
    JMP $8048

  .charged
    AND #$000F : ASL
    TAY : LDA $83D9,Y : TAY
    LDA !sram_custom_damage : BNE .nonVanillaCharged
    LDA $0000,Y : STA $0C2C,X
    JMP $8048

  .nonVanillaUncharged
    DEC : BEQ .customUncharged

  .dashCharge0
    PHX : JSL compute_dash_charge_0_damage : PLX : STA $0C2C,X
    JMP $8048

  .customUncharged
    LDA !sram_custom_uncharge_damage : STA $0C2C,X
    JMP $8048

  .nonVanillaCharged
    DEC : BEQ .customCharged
    DEC : BEQ .dashCharge0
    DEC : BEQ .dashCharge1
    DEC : BEQ .dashCharge2
    DEC : BEQ .dashCharge3
    PHX : JSL compute_dash_charge_4_damage : PLX : STA $0C2C,X
    JMP $8048

  .customCharged
    LDA !sram_custom_charge_damage : STA $0C2C,X
    JMP $8048

  .dashCharge1
    PHX : JSL compute_dash_charge_1_damage : PLX : STA $0C2C,X
    JMP $8048

  .dashCharge2
    PHX : JSL compute_dash_charge_2_damage : PLX : STA $0C2C,X
    JMP $8048

  .dashCharge3
    PHX : JSL compute_dash_charge_3_damage : PLX : STA $0C2C,X
    JMP $8048
}

compute_vanilla_uncharged_damage:
{
    LDA !SAMUS_BEAMS_EQUIPPED : AND #$000F : ASL : TAX
    LDA.l vanilla_uncharged_damage_table,X
    RTL
}

compute_vanilla_charged_damage:
{
    LDA !SAMUS_BEAMS_EQUIPPED : AND #$000F : ASL : TAX
    LDA.l vanilla_charged_damage_table,X
    RTL
}

compute_dash_charge_0_damage:
{
    LDA !SAMUS_BEAMS_EQUIPPED : AND #$000F : ASL : TAX
    LDA.l dash_charge_0_damage_table,X
    RTL
}

compute_dash_charge_1_damage:
{
    LDA !SAMUS_BEAMS_EQUIPPED : AND #$000F : ASL : TAX
    LDA.l dash_charge_1_damage_table,X
    RTL
}

compute_dash_charge_2_damage:
{
    LDA !SAMUS_BEAMS_EQUIPPED : AND #$000F : ASL : TAX
    LDA.l dash_charge_2_damage_table,X
    RTL
}

compute_dash_charge_3_damage:
{
    LDA !SAMUS_BEAMS_EQUIPPED : AND #$000F : ASL : TAX
    LDA.l dash_charge_3_damage_table,X
    RTL
}

compute_dash_charge_4_damage:
{
    LDA !SAMUS_BEAMS_EQUIPPED : AND #$000F : ASL : TAX
    LDA.l dash_charge_4_damage_table,X
    RTL
}

vanilla_uncharged_damage_table:
    dw #$0014, #$0032, #$001E, #$003C, #$0028, #$0046, #$003C, #$0064, #$0096, #$00FA, #$00C8, #$012C, #$0000, #$0000, #$0000, #$0000
vanilla_charged_damage_table:
    dw #$003C, #$0096, #$005A, #$00B4, #$0078, #$00D2, #$00B4, #$012C, #$01C2, #$02EE, #$0258, #$0384, #$0000, #$0000, #$0000, #$0000

dash_charge_0_damage_table:
    dw #$0014, #$0032, #$001E, #$003C, #$0028, #$0050, #$0032, #$0064, #$0064, #$0064, #$0064, #$0064, #$0000, #$0000, #$0000, #$0000
dash_charge_1_damage_table:
    dw #$0028, #$0064, #$003C, #$0078, #$0050, #$00B4, #$0064, #$00C8, #$00C8, #$00C8, #$00C8, #$00C8, #$0000, #$0000, #$0000, #$0000
dash_charge_2_damage_table:
    dw #$003C, #$0096, #$005A, #$00B4, #$0078, #$00FA, #$0096, #$012C, #$012C, #$012C, #$012C, #$012C, #$0000, #$0000, #$0000, #$0000
dash_charge_3_damage_table:
    dw #$0050, #$00C8, #$0078, #$00F0, #$00A0, #$0168, #$00C8, #$0190, #$0190, #$0190, #$0190, #$0190, #$0000, #$0000, #$0000, #$0000
dash_charge_4_damage_table:
    dw #$0064, #$00FA, #$0096, #$012C, #$00C8, #$01C2, #$00FA, #$01F4, #$01F4, #$01F4, #$01F4, #$01F4, #$0000, #$0000, #$0000, #$0000

print pc, " damage bank93 end"


if !FEATURE_PAL
org $A0A872
else            ; general damage hijack
org $A0A862
endif
    JSR EnemyDamage

if !FEATURE_PAL
org $A0A55C
else            ; shinespark damage
org $A0A54C
endif
    JSR EnemyDamageShinespark

if !FEATURE_PAL
org $A0A63B
else            ; power bomb damage
org $A0A62B
endif
    JSR EnemyDamagePowerBomb

org $A0FFD0
print pc, " damage bankA0 start"

EnemyDamage:
{
    LDA !ram_pacifist : BNE .no_damage
    LDA $0F8C,X ; original code
    RTS

  .no_damage
    PLA ; pull return address and jump past storing enemy hp
if !FEATURE_PAL
    JMP $A8CA
else
    JMP $A8BA
endif
}

EnemyDamageShinespark:
{
    LDA !ram_pacifist : BNE .no_damage
    LDA $0F8C,X ; original code
    RTS

  .no_damage
    PLA ; pull return address and jump past storing enemy hp
if !FEATURE_PAL
    JMP $A86A
else
    JMP $A55A
endif
}

EnemyDamagePowerBomb:
{
    LDA !ram_pacifist : BNE .no_damage
    LDA $0F8C,X ; original code
    RTS

  .no_damage
    PLA ; pull return address and jump past storing enemy hp
if !FEATURE_PAL
    JMP $A64C
else
    JMP $A63C
endif

print pc, " damage bankA0 end"

