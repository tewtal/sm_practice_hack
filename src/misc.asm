; Patch out copy protection
org $008000
    db $FF

; Set SRAM size
org $00FFD8
if !FEATURE_SD2SNES
    db $08 ; 256kb
else
    db $05 ; 64kb
endif

; Enable version display
org $8B8697
    NOP

if !FEATURE_PAL
org $8BF6DC
else
org $8BF754
endif
    db #$20, #($30+!VERSION_MAJOR)
    db #$2E, #($30+!VERSION_MINOR)
    db #$2E, #($30+!VERSION_BUILD)
if !VERSION_REV_1
    db #$2E, #($30+!VERSION_REV_1)
    db #($30+!VERSION_REV_2)
    db #$20, #$20
else
if !VERSION_REV_2
    db #$2E, #($30+!VERSION_REV_2)
    db #$20, #$20, #$20
else
    db #$20, #$20, #$20, #$20, #$20
endif
endif


; Fix Zebes planet tiling error
org $8C9607
    dw #$0E2F


; Suit periodic damage
org $8DE37C
    ; Replaced the check and also take one additional byte
    ; Thus the following logic is the same but shifted down
    AND !ram_suits_periodic_damage_check : BNE $29
    LDA $0A4E : CLC : ADC #$4000 : STA $0A4E
    ; We don't have enough space to add the carry bit inline,
    ; so we need to jump to freespace, but only do that if the carry bit is set
    BCC $06
    JMP increment_periodic_damage


org $8DFFF1
print pc, " misc bank8D start"

increment_periodic_damage:
{
    LDA $0A50 : INC : STA $0A50
    JMP $E394
}

print pc, " misc bank8D end"


; We now have three separate periodic damage routines,
; so we need to load an index to jump to the correct routine
org $90E72B
    LDA !sram_suit_properties : ASL : PHA
    JSR misc_overwritten_movement_routine

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
    BIT #$0020 : BEQ .checksuit
    LSR $12
  .checksuit
    AND !ram_suits_enemy_damage_check : BEQ .return
    LSR $12
  .return
    LDA $12
    RTL


; Suit metroid damage
if !FEATURE_PAL
org $A3EEF4
else
org $A3EED8
endif
    LDA #$C000 : STA $12
    LDA $09A2 : AND !ram_suits_enemy_damage_check : BEQ .metroidcheckgravity
    LSR $12
  .metroidcheckgravity
    LDA $09A2 : BIT #$0020 : BEQ .metroidnogravity
    LSR $12
  .metroidnogravity
    ; Continue vanilla routine


if !PRESERVE_WRAM_DURING_SPACETIME
org $90ACF6
    JSR original_load_projectile_palette

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


; Adds frames when unpausing (nmi is turned off during vram transfers)
; $80:A16B 22 4B 83 80 JSL $80834B[$80:834B]
org $80A16B
    JSL hook_unpause


; $82:8BB3 22 69 91 A0 JSL $A09169[$A0:9169]  ; Handles Samus getting hurt?
org $828BB3
    JSL gamemode_end


; Replace unnecessary logic checking controller input to toggle debug CPU brightness
; with logic to collect the v-counter data
org $828AB1
    %a8() : LDA $4201 : ORA #$80 : STA $4201 : %ai16()
    LDA $2137 : LDA $213D : STA !ram_vcounter_data

    ; For efficiency, re-implement the debug brightness logic here
    LDA $0DF4 : BEQ .skip_debug_brightness
    %a8() : LDA $51 : AND #$F0 : ORA #$05 : STA $2100 : %a16()
    BRA .skip_debug_brightness

warnpc $828ADD
org $828ADD       ; Resume original logic
    .skip_debug_brightness


org $CF8BBF       ; Set map scroll beep to high priority
    dw $2A97


; $80:8F24 9C F6 07    STZ $07F6  [$7E:07F6]  ;/
; $80:8F27 8D 40 21    STA $2140  [$7E:2140]  ; APU IO 0 = [music track]
org $808F24
    JSL hook_set_music_track
    NOP #2

; $80:8F65 8D F3 07    STA $07F3  [$7E:07F3]  ;} Music data = [music entry] & FFh
; $80:8F68 AA          TAX                    ; X = [music data]
org $808F65
    JML hook_set_music_data


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

hook_unpause:
{
    ; RT room
    LDA !ram_realtime_room : CLC : ADC.w #41 : STA !ram_realtime_room

    ; RT seg
    LDA !ram_seg_rt_frames : CLC : ADC.w #41 : STA !ram_seg_rt_frames
    CMP.w #60 : BCC .done
    SEC : SBC.w #60 : STA !ram_seg_rt_frames

    LDA !ram_seg_rt_seconds : INC : STA !ram_seg_rt_seconds
    CMP.w #60 : BCC .done
    LDA #$0000 : STA !ram_seg_rt_seconds

    LDA !ram_seg_rt_minutes : INC : STA !ram_seg_rt_minutes

  .done
    ; Replace overwritten logic to enable NMI
    JSL $80834B
    RTL
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

    ; Ignore artifical lag if OOB viewer is active
    LDA !ram_sprite_features_active : BNE .endlag

    ; Artificial lag, multiplied by 16 to get loop count
    ; Each loop takes 5 clock cycles (assuming branch taken)
    ; For reference, 41 loops ~= 1 scanline
    LDA !sram_artificial_lag : BEQ .endlag

    ; To account for various changes, we may need to tack on more clock cycles
    ; These can be removed as code is added to maintain CPU parity during normal gameplay
    LDA !sram_top_display_mode : CMP !TOP_DISPLAY_VANILLA : BEQ .vanilla_display_lag_loop
    LDA !sram_artificial_lag
    ASL
    ASL
    ASL
    ASL
    NOP  ; Add 2 more clock cycles
    NOP  ; Add 2 more clock cycles
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


misc_overwritten_movement_routine:
    ; We overwrote an unnecessary JSR, a STZ command, and a jump to the movement routine
    STZ $0A6E
    JMP ($0A58)

periodic_damage_table:
if !FEATURE_PAL
    dw $E9CB   ; vanilla routine
else
    dw $E9CE   ; vanilla routine
endif
    dw periodic_damage_balanced
    dw periodic_damage_progressive

; Make our minor adjustments and jump back to the vanilla routine
periodic_damage_balanced:
{
    PHP : REP #$30
    LDA $0A78 : BEQ $03
if !FEATURE_PAL
    JMP $EA32
else
    JMP $EA35
endif
    LDA $09A2 : BIT #$0001 : BNE $03
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


if !PRESERVE_WRAM_DURING_SPACETIME
original_load_projectile_palette:
{
    AND #$0FFF : ASL : TAY
    LDA #$0090 : XBA : STA $01
    LDA $C3C9,Y : STA $00
    LDY #$0000
    LDX #$0000

  .original_load_palette_loop
    LDA [$00],Y
    STA $7EC1C0,X
    INX : INX : INY : INY
    CPY #$0020 : BMI .original_load_palette_loop
    RTS
}

spacetime_routine:
{
    ; The normal routine shouldn't come here, but sanity check just in case
    ; Also skips out if spacetime but Y value is positive
    INY : INY : CPY #$0000 : BPL .normal_load_palette

    ; Sanity check that X is 0 (if not then do the original routine)
    CPX #$0000 : BNE .normal_load_palette

    ; Spacetime
    LDA $00 : STA !ram_spacetime_read_address
    LDA $02 : STA !ram_spacetime_read_bank
    TYA : DEC : DEC : STA !ram_spacetime_y

    ; Check if Y will cause us to reach infohud
    CLC : ADC #($7EC608-$7EC1E0) : CMP #$0000 : BPL .normal_load_palette

    ; It will, so run our own loop
    INX : INX
  .loop_before_infohud
    LDA [$00],Y
    STA $7EC1C0,X
    INX : INX : INY : INY
    CPX #($7EC608-$7EC1C0) : BMI .loop_before_infohud
 
    ; Check if we should skip over infohud
    LDA !ram_spacetime_infohud : BEQ .check_wram

    ; Skip over infohud and check for wram
    TXA : CLC : ADC #($7EC6C8-$7EC608) : TAX
    TYA : CLC : ADC #($7EC6C8-$7EC608) : TAY
    CPY #$0020 : BMI .check_wram
    RTS

  .normal_load_loop
    LDA [$00],Y
    STA $7EC1C0,X
    INY : INY
  .normal_load_palette
    INX : INX
    CPY #$0020 : BMI .normal_load_loop
    RTS

  .check_wram_overwrite_infohud
    ; Check if Y will cause us to reach WRAM
    TYA : CLC : ADC #(!WRAM_START-$7EC62A) : CMP #$0000 : BPL .normal_load_palette
    BRA .loop_before_wram

  .check_wram
    ; Check if Y will cause us to reach WRAM
    TYA : CLC : ADC #(!WRAM_START-$7EC6EA) : CMP #$0000 : BPL .normal_load_palette

    ; It will, so run our own loop
  .loop_before_wram
    LDA [$00],Y
    STA $7EC1C0,X
    INX : INX : INY : INY
    CPX #(!WRAM_START-$7EC1C0) : BMI .loop_before_wram

    ; Skip over WRAM and resume normal loop
    TXA : CLC : ADC !WRAM_SIZE : TAX
    TYA : CLC : ADC !WRAM_SIZE : TAY
    CPY #$0020 : BMI .normal_load_loop
    RTS
}
endif

print pc, " misc bank90 end"


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
print pc, " misc bankA0 start"
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

print pc, " misc bankA0 end"

