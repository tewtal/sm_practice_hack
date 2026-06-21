
org $90ACF6
    JSR original_load_beam_palette

org $90AD18
    JMP spacetime_routine


%startfree(90)

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
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_SPACETIME : BEQ .overwrite_infohud

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

    ; Check if Y will cause us to reach DP_REGISTER_BACKUP_START
    TYA : CLC : ADC #(!DP_REGISTER_BACKUP_START-$7EF398) : CMP #$0000 : BPL .normal_load_loop

    ; It will, so run our own loop
  .loop_before_wram
    LDA [$00],Y : STA $7EC1C0,X
    INY #2
    INX #2 : CPX #(!DP_REGISTER_BACKUP_START-$7EC1C0) : BMI .loop_before_wram

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
    TYA : CLC : ADC #(!DP_REGISTER_BACKUP_START-$7EEF98) : CMP #$0000 : BPL .normal_load_loop
    BRA .loop_before_wram
}

%endfree(90)


if !FEATURE_PAL
org $91BE0A
else
org $91BEB2
endif
    PLB
    JMP (hook_xray_offscreen_table,X)
hook_xray_offscreen_table:
    dw hook_xray_offscreen_aim_right
    dw hook_xray_offscreen_aim_up
    dw hook_xray_offscreen_aim_down
    dw hook_xray_offscreen_aim_left
    dw hook_xray_offscreen_horizontal

if !FEATURE_PAL
org $91BEC9
else
org $91BF71
endif
    RTL

if !FEATURE_PAL
org $91BF79
else
org $91C021
endif
    RTL

if !FEATURE_PAL
org $91BFBA
else
org $91C062
endif
    RTL

if !FEATURE_PAL
org $91C20E
else
org $91C2B6
endif
    RTL

if !FEATURE_PAL
org $91C4A2
else
org $91C54A
endif
    RTL

if !FEATURE_PAL
org $91C547
else
org $91C5EF
endif
    PLB
    JMP (hook_xray_onscreen_table,X)
hook_xray_onscreen_table:
    dw hook_xray_onscreen_aim_right
    dw hook_xray_onscreen_aim_up
    dw hook_xray_onscreen_aim_down
    dw hook_xray_onscreen_aim_left
    dw hook_xray_onscreen_horizontal

if !FEATURE_PAL
org $91C5B7
else
org $91C65F
endif
    RTL

if !FEATURE_PAL
org $91C618
else
org $91C6C0
endif
    RTL

if !FEATURE_PAL
org $91C66D
else
org $91C715
endif
    RTL

if !FEATURE_PAL
org $91C7CB
else
org $91C873
endif
    RTL

if !FEATURE_PAL
org $91C92B
else
org $91C9D3
endif
    RTL


%startfree(91)

hook_xray_offscreen_aim_right:
{
    %ai16()
    LDA $18 : DEC : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $BE22
else
    JMP $BECA
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    JML xray_offscreen_aim_right
}

hook_xray_offscreen_aim_left:
{
    %ai16()
    LDA $18 : DEC : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $BED2
else
    JMP $BF7A
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    JML xray_offscreen_aim_left
}

hook_xray_offscreen_aim_up:
{
    %ai16()
    LDA $18 : DEC : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $BF82
else
    JMP $C02A
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    LDA $16 : STA $22 : STA $24
    LDA $1A : CMP #$00C0 : BMI .up_right
    LDA $1C : CMP #$00C0 : BPL .up_left

    ; Protection not needed for straight up case since this should not happen
if !FEATURE_PAL
    JMP $BF9B
else
    JMP $C043
endif

  .up_right
    JML xray_offscreen_up_right

  .up_left
    JML xray_offscreen_up_left
}

hook_xray_offscreen_aim_down:
{
    %ai16()
    LDA $18 : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $C1DE
else
    JMP $C286
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    LDA $16 : STA $22 : STA $24
    LDA $1C : CMP #$0080 : BMI .down_right
    LDA $1A : CMP #$0080 : BPL .down_left

    ; Protection not needed for straight down case since this should not happen
if !FEATURE_PAL
    JMP $C1F7
else
    JMP $C29F
endif

  .down_right
    JML xray_offscreen_down_right

  .down_left
    JML xray_offscreen_down_left
}

hook_xray_offscreen_horizontal:
{
    %ai16()
    LDA $18 : DEC : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $C473
else
    JMP $C51B
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    JML xray_offscreen_horizontal
}

hook_xray_onscreen_aim_right:
{
    %ai16()
    LDA $18 : DEC : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $C55F
else
    JMP $C607
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    JML xray_onscreen_aim_right
}

hook_xray_onscreen_aim_left:
{
    %ai16()
    LDA $18 : DEC : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $C5C0
else
    JMP $C668
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    JML xray_onscreen_aim_left
}

hook_xray_onscreen_aim_up:
{
    %ai16()
    LDA $18 : DEC : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $C621
else
    JMP $C6C9
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    CPY #$6708 : BCS .store
    CPY #$5CF8 : BCS .skip
    CPY #$32EC : BCS .store
    CPY #$27FF : BCC .store : BEQ .store_one
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BNE .skip
  .store
    %a8()
    LDA $17 : STA [$00],Y
    INY
    LDA $17 : STA [$00],Y
    %a16()
    DEY
  .skip
    DEY #2
    LDA $16 : STA $22 : STA $24
    LDA $1A : CMP #$00C0 : BMI .up_right
    LDA $1C : CMP #$00C0 : BPL .up_left

    ; Protection not needed for straight up case since this should not happen
if !FEATURE_PAL
    JMP $C64A
else
    JMP $C6F2
endif

  .store_one
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .store
    %a8()
    LDA $17 : STA [$00],Y
    %a16()
    BRA .skip

  .up_right
    JML xray_onscreen_up_right

  .up_left
    JML xray_onscreen_up_left
}

hook_xray_onscreen_aim_down:
{
    %ai16()
    LDA $18 : DEC : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $C782
else
    JMP $C82A
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    CPY #$6708 : BCS .store
    CPY #$5CF8 : BCS .skip
    CPY #$32EC : BCS .store
    CPY #$27FF : BCC .store : BEQ .store_one
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BNE .skip
  .store
    %a8()
    LDA $17 : STA [$00],Y
    INY
    LDA $17 : STA [$00],Y
    %a16()
  .merge
    INY
    LDA $16 : STA $22 : STA $24
    LDA $1C : CMP #$0080 : BMI .down_right
    LDA $1A : CMP #$0080 : BPL .down_left

    ; Protection not needed for straight down case since this should not happen
if !FEATURE_PAL
    JMP $C7A9
else
    JMP $C851
endif

  .store_one
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .store
    %a8()
    LDA $17 : STA [$00],Y
    %a16()
  .skip
    INY
    BRA .merge

  .down_right
    JML xray_onscreen_down_right

  .down_left
    JML xray_onscreen_down_left
}

hook_xray_onscreen_horizontal:
{
    %ai16()
    LDA $18 : DEC : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $C8F8
else
    JMP $C9A0
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    JML xray_onscreen_horizontal
}

%endfree(91)


org $E0E7E0
print pc, " preserve WRAM start"

; Make EOR $E067E0 read $E0E0 to match vanilla behavior
hook_artificial_varia:
    dw $E0E0

xray_offscreen_aim_right:
{
    LDA $16 : STA $22 : STA $24
  .leftOffscreenLoop
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .leftFoundScreen
    DEY #2 : BPL .leftOffscreenLoop
    STZ $12
    JMP .leftEdgeEnd

  .leftFoundScreen
    TYA : INC #2 : STA $12
    CPY #$6708 : BCS .leftFoundFirst
    CPY #$5CF8 : BCS .leftFoundSkip
    CPY #$32EC : BCS .leftFoundSecond
    CPY #$27FF : BCC .leftFoundThird
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .leftFoundThird
    DEY #2 : CPY #$27FF : BCC .leftFoundThirdContinue
    JMP .leftOnscreenSecondSkip

  .leftFoundFirst
    LDA $23 : ORA #$FF00 : STA [$00],Y
    DEY #2
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .firstLostScreen
    LDA $23 : ORA #$FF00 : STA [$00],Y
    DEY #2 : BPL .leftOnscreenFirstLoop
    JMP .leftEdgeEnd

  .leftFoundSkip
    DEY #2
    BRA .leftOnscreenFirstSkip

  .leftFoundSecond
    LDA $23 : ORA #$FF00 : STA [$00],Y
    DEY #2
    BRA .leftOnscreenSecondLoop

  .leftFoundThird
    LDA $23 : ORA #$FF00 : STA [$00],Y
    DEY #2
  .leftFoundThirdContinue
    BRA .leftOnscreenThirdLoop

  .firstLostScreen
    LDA #$00FF : STA [$00],Y
    DEY #2 : BPL .leftLostFirstLoop
    JMP .leftEdgeEnd

  .leftOnscreenFirstLoop
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .leftLostFirst
    LDA $23 : ORA #$FF00 : STA [$00],Y
    DEY #2 : CPY #$6708 : BCS .leftOnscreenFirstLoop
  .leftOnscreenFirstSkip
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .leftLostFirstSkip
    LDA $23 : ORA #$FF00
    DEY #2 : CPY #$5CF8 : BCS .leftOnscreenFirstSkip
  .leftOnscreenSecondLoop
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .leftLostSecond
    LDA $23 : ORA #$FF00 : STA [$00],Y
    DEY #2 : CPY #$32EC : BCS .leftOnscreenSecondLoop
  .leftOnscreenCheckFlag
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .leftOnscreenThirdLoop
  .leftOnscreenSecondSkip
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .leftLostSecondSkip
    LDA $23 : ORA #$FF00
    DEY #2 : CPY #$27FF : BCS .leftOnscreenSecondSkip
  .leftOnscreenThirdLoop
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .leftLostThirdLoop
    LDA $23 : ORA #$FF00 : STA [$00],Y
    DEY #2 : BPL .leftOnscreenThirdLoop
    BRA .leftEdgeEnd

  .leftLostFirst
    LDA #$00FF
  .leftLostFirstLoop
    STA [$00],Y
    DEY #2 : CPY #$6708 : BCS .leftLostFirstLoop
  .leftLostFirstSkip
    LDA #$00FF
    DEY #2 : CPY #$5CF8 : BCS .leftLostFirstSkip
  .leftLostSecond
    LDA #$00FF
  .leftLostSecondLoop
    STA [$00],Y
    DEY #2 : CPY #$32EC : BCS .leftLostSecondLoop
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .leftLostThirdLoop
  .leftLostSecondSkip
    LDA #$00FF
    DEY #2 : CPY #$27FF : BCS .leftLostSecondSkip
  .leftLostThirdLoop
    LDA #$00FF : STA [$00],Y
    DEY #2 : BPL .leftLostThirdLoop

  .leftEdgeEnd
    LDA $18 : ASL : TAY
  .rightOffscreenLoop
    LDA $24 : CLC : ADC $20 : STA $24
    BCS .rightFoundScreen
    INY #2 : CPY #$01CC : BMI .rightOffscreenLoop
    STY $14
    JMP .rightEdgeEnd

  .rightFoundScreen
    TYA : DEC #2 : STA $14
    CPY #$6708 : BCS .rightFoundStore
    CPY #$5CF8 : BCS .rightFoundSkip
    CPY #$32EC : BCS .rightFoundStore
    CPY #$27FF : BCC .rightFoundStore
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BNE .rightFoundSkip
  .rightFoundStore
    LDA $25 : ORA #$FF00 : STA [$00],Y
  .rightFoundSkip
    INY #2
    LDA $24 : CLC : ADC $20 : STA $24
    BCS .rightLostScreen
    CPY #$6708 : BCS .rightOnscreenStore
    CPY #$5CF8 : BCS .rightOnscreenIny
    CPY #$32EC : BCS .rightOnscreenStore
    CPY #$27FF : BCC .rightOnscreenStore
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .rightOnscreenStore
    BRA .rightOnscreenIny

  .rightOnscreenLoop
    LDA $24 : CLC : ADC $20 : STA $24
    BCS .rightLostScreen
  .rightOnscreenStore
    LDA $25 : ORA #$FF00 : STA [$00],Y
  .rightOnscreenIny
    INY #2 : CPY #$01CC : BMI .rightOnscreenLoop
    BRA .rightEdgeEnd

  .rightLostScreen
    CPY #$6708 : BCS .rightLostLoop
    CPY #$5CF8 : BCS .rightLostSkip
    CPY #$32EC : BCS .rightLostLoop
    CPY #$27FF : BCC .rightLostLoop
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BNE .rightLostLoop
  .rightLostSkip
    LDA #$00FF
    BRA .rightLostIny

  .rightLostLoop
    LDA #$00FF : STA [$00],Y
  .rightLostIny
    INY #2 : CPY #$01CC : BMI .rightLostLoop

  .rightEdgeEnd
    LDY $12
    CPY #$6708 : BCS .finalThirdLoop
    CPY #$5CF8 : BCS .finalSecondSkip
    CPY #$32EC : BCS .finalSecond
    CPY #$27FF : BCC .finalFirst
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BNE .finalSecond
    BRA .finalFirstSkip

  .finalFirst
    LDA $14 : CMP #$27FE : BCC .finalThirdLoop
  .finalFirstLoop
    LDA #$FF00 : STA [$00],Y
    INY #2 : CPY #$27FE : BMI .finalFirstLoop : BEQ .finalFirstLoop
  .finalFirstSkip
    LDA $14 : CMP #$32EC : BCC .finalSkipLoop
  .finalFirstSkipLoop
    LDA #$FF00
    INY #2 : CPY #$32EC : BMI .finalFirstSkipLoop : BEQ .finalFirstSkipLoop
  .finalSecond
    LDA $14 : CMP #$5CF8 : BCC .finalThirdLoop
  .finalSecondLoop
    LDA #$FF00 : STA [$00],Y
    INY #2 : CPY #$5CF8 : BMI .finalSecondLoop : BEQ .finalSecondLoop
  .finalSecondSkip
    LDA $14 : CMP #$6708 : BCC .finalSkipLoop
  .finalSecondSkipLoop
    LDA #$FF00
    INY #2 : CPY #$6708 : BMI .finalSecondSkipLoop : BEQ .finalSecondSkipLoop
  .finalThirdLoop
    LDA #$FF00 : STA [$00],Y
    INY #2 : CPY $14 : BMI .finalThirdLoop : BEQ .finalThirdLoop
    PLP
    RTL

  .finalSkipLoop
    LDA #$FF00
    INY #2 : CPY $14 : BMI .finalSkipLoop : BEQ .finalSkipLoop
    PLP
    RTL
}

xray_offscreen_aim_left:
{
    LDA $16 : STA $22 : STA $24
  .rightOffscreenLoop
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .rightFoundScreen
    DEY #2 : BPL .rightOffscreenLoop
    STZ $12
    JMP .rightEdgeEnd

  .rightFoundScreen
    TYA : INC #2 : STA $12
    CPY #$6708 : BCS .rightFoundFirst
    CPY #$5CF8 : BCS .rightFoundSkip
    CPY #$32EC : BCS .rightFoundSecond
    CPY #$27FF : BCC .rightFoundThird
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .rightFoundThird
    DEY #2 : CPY #$27FF : BCC .rightFoundThirdContinue
    JMP .rightOnscreenSecondSkip

  .rightFoundFirst
    LDA $24 : AND #$FF00 : STA [$00],Y
    DEY #2
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .firstLostScreen
    LDA $24 : AND #$FF00 : STA [$00],Y
    DEY #2 : BPL .rightOnscreenFirstLoop
    JMP .rightEdgeEnd

  .rightFoundSkip
    DEY #2
    BRA .rightOnscreenFirstSkip

  .rightFoundSecond
    LDA $24 : AND #$FF00 : STA [$00],Y
    DEY #2
    BRA .rightOnscreenSecondLoop

  .rightFoundThird
    LDA $24 : AND #$FF00 : STA [$00],Y
    DEY #2
  .rightFoundThirdContinue
    BRA .rightOnscreenThirdLoop

  .firstLostScreen
    LDA #$00FF : STA [$00],Y
    DEY #2 : BPL .rightLostFirstLoop
    JMP .rightEdgeEnd

  .rightOnscreenFirstLoop
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .rightLostFirst
    LDA $24 : AND #$FF00 : STA [$00],Y
    DEY #2 : CPY #$6708 : BCS .rightOnscreenFirstLoop
  .rightOnscreenFirstSkip
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .rightLostFirstSkip
    LDA $24 : AND #$FF00
    DEY #2 : CPY #$5CF8 : BCS .rightOnscreenFirstSkip
  .rightOnscreenSecondLoop
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .rightLostSecond
    LDA $24 : AND #$FF00 : STA [$00],Y
    DEY #2 : CPY #$32EC : BCS .rightOnscreenSecondLoop
  .rightOnscreenCheckFlag
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .rightOnscreenThirdLoop
  .rightOnscreenSecondSkip
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .rightLostSecondSkip
    LDA $24 : AND #$FF00
    DEY #2 : CPY #$27FF : BCS .rightOnscreenSecondSkip
  .rightOnscreenThirdLoop
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .rightLostThirdLoop
    LDA $24 : AND #$FF00 : STA [$00],Y
    DEY #2 : BPL .rightOnscreenThirdLoop
    BRA .rightEdgeEnd

  .rightLostFirst
    LDA #$00FF
  .rightLostFirstLoop
    STA [$00],Y
    DEY #2 : CPY #$6708 : BCS .rightLostFirstLoop
  .rightLostFirstSkip
    LDA #$00FF
    DEY #2 : CPY #$5CF8 : BCS .rightLostFirstSkip
  .rightLostSecond
    LDA #$00FF
  .rightLostSecondLoop
    STA [$00],Y
    DEY #2 : CPY #$32EC : BCS .rightLostSecondLoop
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .rightLostThirdLoop
  .rightLostSecondSkip
    LDA #$00FF
    DEY #2 : CPY #$27FF : BCS .rightLostSecondSkip
  .rightLostThirdLoop
    LDA #$00FF : STA [$00],Y
    DEY #2 : BPL .rightLostThirdLoop

  .rightEdgeEnd
    LDA $18 : ASL : TAY
  .leftOffscreenLoop
    LDA $22 : SEC : SBC $1E : STA $22
    BCC .leftFoundScreen
    INY #2 : CPY #$01CC : BMI .leftOffscreenLoop
    STY $14
    JMP .leftEdgeEnd

  .leftFoundScreen
    TYA : DEC #2 : STA $14
    CPY #$6708 : BCS .leftFoundStore
    CPY #$5CF8 : BCS .leftFoundSkip
    CPY #$32EC : BCS .leftFoundStore
    CPY #$27FF : BCC .leftFoundStore
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BNE .leftFoundSkip
  .leftFoundStore
    LDA $22 : AND #$FF00 : STA [$00],Y
  .leftFoundSkip
    INY #2
    LDA $22 : SEC : SBC $1E : STA $22
    BCC .leftLostScreen
    CPY #$6708 : BCS .leftOnscreenStore
    CPY #$5CF8 : BCS .leftOnscreenIny
    CPY #$32EC : BCS .leftOnscreenStore
    CPY #$27FF : BCC .leftOnscreenStore
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .leftOnscreenStore
    BRA .leftOnscreenIny

  .leftOnscreenLoop
    LDA $22 : SEC : SBC $1E : STA $22
    BCC .leftLostScreen
  .leftOnscreenStore
    LDA $22 : AND #$FF00 : STA [$00],Y
  .leftOnscreenIny
    INY #2 : CPY #$01CC : BMI .leftOnscreenLoop
    BRA .leftEdgeEnd

  .leftLostScreen
    CPY #$6708 : BCS .leftLostLoop
    CPY #$5CF8 : BCS .leftLostSkip
    CPY #$32EC : BCS .leftLostLoop
    CPY #$27FF : BCC .leftLostLoop
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BNE .leftLostLoop
  .leftLostSkip
    LDA #$00FF
    BRA .leftLostIny

  .leftLostLoop
    LDA #$00FF : STA [$00],Y
  .leftLostIny
    INY #2 : CPY #$01CC : BMI .leftLostLoop

  .leftEdgeEnd
    LDY $12
    CPY #$6708 : BCS .finalThirdLoop
    CPY #$5CF8 : BCS .finalSecondSkip
    CPY #$32EC : BCS .finalSecond
    CPY #$27FF : BCC .finalFirst
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BNE .finalSecond
    BRA .finalFirstSkip

  .finalFirst
    LDA $14 : CMP #$27FE : BCC .finalThirdLoop
  .finalFirstLoop
    LDA #$FF00 : STA [$00],Y
    INY #2 : CPY #$27FE : BMI .finalFirstLoop : BEQ .finalFirstLoop
  .finalFirstSkip
    LDA $14 : CMP #$32EC : BCC .finalSkipLoop
  .finalFirstSkipLoop
    LDA #$FF00
    INY #2 : CPY #$32EC : BMI .finalFirstSkipLoop : BEQ .finalFirstSkipLoop
  .finalSecond
    LDA $14 : CMP #$5CF8 : BCC .finalThirdLoop
  .finalSecondLoop
    LDA #$FF00 : STA [$00],Y
    INY #2 : CPY #$5CF8 : BMI .finalSecondLoop : BEQ .finalSecondLoop
  .finalSecondSkip
    LDA $14 : CMP #$6708 : BCC .finalSkipLoop
  .finalSecondSkipLoop
    LDA #$FF00
    INY #2 : CPY #$6708 : BMI .finalSecondSkipLoop : BEQ .finalSecondSkipLoop
  .finalThirdLoop
    LDA #$FF00 : STA [$00],Y
    INY #2 : CPY $14 : BMI .finalThirdLoop : BEQ .finalThirdLoop
    PLP
    RTL

  .finalSkipLoop
    LDA #$FF00
    INY #2 : CPY $14 : BMI .finalSkipLoop : BEQ .finalSkipLoop
    PLP
    RTL
}

xray_offscreen_up_right:
{
    BRK
}

xray_offscreen_up_left:
{
    BRK
}

xray_offscreen_down_right:
{
    BRK
}

xray_offscreen_down_left:
{
    BRK
}

xray_offscreen_horizontal:
{
    CPY #$6708 : BCS .firstStore
    CPY #$5CF8 : BCS .firstSkip
    CPY #$32EC : BCS .secondStore
    CPY #$27FF : BCC .thirdStore
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .thirdStore
    DEY #2 : CPY #$27FF : BCC .thirdContinue
    JMP .topSecondSkip

  .firstStore
    LDA #$FF00 : STA [$00],Y
    PHY : INY #2
  .firstBottomLoop
    LDA [$00],Y : CMP #$00FF : BEQ .firstBottomEnd
    LDA #$00FF : STA [$00],Y
    INY #2 : CPY #$01CC : BMI .firstBottomLoop
  .firstBottomEnd
    PLY : DEY #2
    LDA [$00],Y : CMP #$00FF : BEQ .firstDone
    LDA #$00FF : STA [$00],Y
    DEY #2 : BPL .topFirstLoop
  .firstDone
    JMP .topEnd

  .firstSkip
    BRA .topFirstSkip

  .secondStore
    LDA #$FF00 : STA [$00],Y
    PHY : INY #2
    LDA [$00],Y : CMP #$00FF : BEQ .secondBottomEnd
    LDA #$00FF : STA [$00],Y
  .secondBottomEnd
    PLY : DEY #2
    BRA .topSecondLoop

  .thirdStore
    LDA #$FF00 : STA [$00],Y
    PHY : INY #2
    LDA [$00],Y : CMP #$00FF : BEQ .thirdBottomEnd
    CPY #$27FF : BCC .thirdBottomStore
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BNE .thirdBottomEnd
  .thirdBottomStore
    LDA #$00FF : STA [$00],Y
  .thirdBottomEnd
    PLY : DEY #2
  .thirdContinue
    BRA .topThirdLoop

  .topFirstLoop
    LDA [$00],Y : CMP #$00FF : BEQ .topEnd
    LDA #$00FF : STA [$00],Y
    DEY #2 : CPY #$6708 : BCS .topFirstLoop
  .topFirstSkip
    LDA [$00],Y : CMP #$00FF
    LDA #$00FF
    DEY #2 : CPY #$5CF8 : BCS .topFirstSkip
  .topSecondLoop
    LDA [$00],Y : CMP #$00FF : BEQ .topEnd
    LDA #$00FF : STA [$00],Y
    DEY #2 : CPY #$32EC : BCS .topSecondLoop
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .topThirdLoop
  .topSecondSkip
    LDA [$00],Y : CMP #$00FF
    LDA #$00FF
    DEY #2 : CPY #$27FF : BCS .topSecondSkip
  .topThirdLoop
    LDA [$00],Y : CMP #$00FF : BEQ .topEnd
    LDA #$00FF : STA [$00],Y
    DEY #2 : BPL .topThirdLoop

  .topEnd
    PLP
    RTL
}

xray_onscreen_aim_right:
{
    PHP : %ai16()
    LDA $18 : DEC : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $C54F
else
    JMP $C607
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    LDA $16 : STA $22 : STA $24
    CPY #$6708 : BCS .firstStore
    CPY #$5CF8 : BCS .firstSkip
    CPY #$32EC : BCS .secondStore
    CPY #$27FF : BCC .thirdStore
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .thirdStore
    DEY #2 : CPY #$27FF : BCC .thirdContinue
    JMP .leftOnscreenSecondSkip

  .firstStore
    LDA $17 : ORA #$FF00 : STA [$00],Y
    DEY #2
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .firstLostScreen
    LDA $23 : ORA #$FF00 : STA [$00],Y
    DEY #2 : BPL .leftOnscreenFirstLoop
    JMP .leftEdgeEnd

  .firstSkip
    DEY #2
    BRA .leftOnscreenFirstSkip

  .secondStore
    LDA $17 : ORA #$FF00 : STA [$00],Y
    DEY #2
    BRA .leftOnscreenSecondLoop

  .thirdStore
    LDA $17 : ORA #$FF00 : STA [$00],Y
    DEY #2
  .thirdContinue
    BRA .leftOnscreenThirdLoop

  .firstLostScreen
    LDA #$00FF : STA [$00],Y
    DEY #2 : BPL .leftLostFirstLoop
    JMP .leftEdgeEnd

  .leftOnscreenFirstLoop
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .leftLostFirst
    LDA $23 : ORA #$FF00 : STA [$00],Y
    DEY #2 : CPY #$6708 : BCS .leftOnscreenFirstLoop
  .leftOnscreenFirstSkip
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .leftLostFirstSkip
    LDA $23 : ORA #$FF00
    DEY #2 : CPY #$5CF8 : BCS .leftOnscreenFirstSkip
  .leftOnscreenSecondLoop
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .leftLostSecond
    LDA $23 : ORA #$FF00 : STA [$00],Y
    DEY #2 : CPY #$32EC : BCS .leftOnscreenSecondLoop
  .leftOnscreenCheckFlag
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .leftOnscreenThirdLoop
  .leftOnscreenSecondSkip
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .leftLostSecondSkip
    LDA $23 : ORA #$FF00
    DEY #2 : CPY #$27FF : BCS .leftOnscreenSecondSkip
  .leftOnscreenThirdLoop
    LDA $22 : CLC : ADC $1E : STA $22
    BCS .leftLostThirdLoop
    LDA $23 : ORA #$FF00 : STA [$00],Y
    DEY #2 : BPL .leftOnscreenThirdLoop
    BRA .leftEdgeEnd

  .leftLostFirst
    LDA #$00FF
  .leftLostFirstLoop
    STA [$00],Y
    DEY #2 : CPY #$6708 : BCS .leftLostFirstLoop
  .leftLostFirstSkip
    LDA #$00FF
    DEY #2 : CPY #$5CF8 : BCS .leftLostFirstSkip
  .leftLostSecond
    LDA #$00FF
  .leftLostSecondLoop
    STA [$00],Y
    DEY #2 : CPY #$32EC : BCS .leftLostSecondLoop
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .leftLostThirdLoop
  .leftLostSecondSkip
    LDA #$00FF
    DEY #2 : CPY #$27FF : BCS .leftLostSecondSkip
  .leftLostThirdLoop
    LDA #$00FF : STA [$00],Y
    DEY #2 : BPL .leftLostThirdLoop

  .leftEdgeEnd
    LDA $18 : ASL : TAY
    LDA $24 : CLC : ADC $20 : STA $24
    BCS .rightLostScreen
    CPY #$6708 : BCS .rightOnscreenStore
    CPY #$5CF8 : BCS .rightOnscreenIny
    CPY #$32EC : BCS .rightOnscreenStore
    CPY #$27FF : BCC .rightOnscreenStore
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .rightOnscreenStore
    BRA .rightOnscreenIny

  .rightOnscreenLoop
    LDA $24 : CLC : ADC $20 : STA $24
    BCS .rightLostScreen
  .rightOnscreenStore
    LDA $25 : ORA #$FF00 : STA [$00],Y
  .rightOnscreenIny
    INY #2 : CPY #$01CC : BMI .rightOnscreenLoop
    BRA .rightEdgeEnd

  .rightLostScreen
    CPY #$6708 : BCS .rightLostLoop
    CPY #$5CF8 : BCS .rightLostSkip
    CPY #$32EC : BCS .rightLostLoop
    CPY #$27FF : BCC .rightLostLoop
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BNE .rightLostLoop
  .rightLostSkip
    LDA #$00FF
    BRA .rightLostIny

  .rightLostLoop
    LDA #$00FF : STA [$00],Y
  .rightLostIny
    INY #2 : CPY #$01CC : BMI .rightLostLoop

  .rightEdgeEnd
    PLP
    RTL
}

xray_onscreen_aim_left:
{
    PHP : %ai16()
    LDA $18 : DEC : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $C5B0
else
    JMP $C668
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    LDA $16 : STA $22 : STA $24
    CPY #$6708 : BCS .firstStore
    CPY #$5CF8 : BCS .firstSkip
    CPY #$32EC : BCS .secondStore
    CPY #$27FF : BCC .thirdStore
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .thirdStore
    DEY #2 : CPY #$27FF : BCC .thirdContinue
    JMP .rightOnscreenSecondSkip

  .firstStore
    LDA $16 : AND #$FF00 : STA [$00],Y
    DEY #2
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .firstLostScreen
    LDA $24 : AND #$FF00 : STA [$00],Y
    DEY #2 : BPL .rightOnscreenFirstLoop
    JMP .rightEdgeEnd

  .firstSkip
    DEY #2
    BRA .rightOnscreenFirstSkip

  .secondStore
    LDA $16 : AND #$FF00 : STA [$00],Y
    DEY #2
    BRA .rightOnscreenSecondLoop

  .thirdStore
    LDA $16 : AND #$FF00 : STA [$00],Y
    DEY #2
  .thirdContinue
    BRA .rightOnscreenThirdLoop

  .firstLostScreen
    LDA #$00FF : STA [$00],Y
    DEY #2 : BPL .rightLostFirstLoop
    JMP .rightEdgeEnd

  .rightOnscreenFirstLoop
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .rightLostFirst
    LDA $24 : AND #$FF00 : STA [$00],Y
    DEY #2 : CPY #$6708 : BCS .rightOnscreenFirstLoop
  .rightOnscreenFirstSkip
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .rightLostFirstSkip
    LDA $24 : AND #$FF00
    DEY #2 : CPY #$5CF8 : BCS .rightOnscreenFirstSkip
  .rightOnscreenSecondLoop
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .rightLostSecond
    LDA $24 : AND #$FF00 : STA [$00],Y
    DEY #2 : CPY #$32EC : BCS .rightOnscreenSecondLoop
  .rightOnscreenCheckFlag
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .rightOnscreenThirdLoop
  .rightOnscreenSecondSkip
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .rightLostSecondSkip
    LDA $24 : AND #$FF00
    DEY #2 : CPY #$27FF : BCS .rightOnscreenSecondSkip
  .rightOnscreenThirdLoop
    LDA $24 : SEC : SBC $20 : STA $24
    BCC .rightLostThirdLoop
    LDA $24 : AND #$FF00 : STA [$00],Y
    DEY #2 : BPL .rightOnscreenThirdLoop
    BRA .rightEdgeEnd

  .rightLostFirst
    LDA #$00FF
  .rightLostFirstLoop
    STA [$00],Y
    DEY #2 : CPY #$6708 : BCS .rightLostFirstLoop
  .rightLostFirstSkip
    LDA #$00FF
    DEY #2 : CPY #$5CF8 : BCS .rightLostFirstSkip
  .rightLostSecond
    LDA #$00FF
  .rightLostSecondLoop
    STA [$00],Y
    DEY #2 : CPY #$32EC : BCS .rightLostSecondLoop
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .rightLostThirdLoop
  .rightLostSecondSkip
    LDA #$00FF
    DEY #2 : CPY #$27FF : BCS .rightLostSecondSkip
  .rightLostThirdLoop
    LDA #$00FF : STA [$00],Y
    DEY #2 : BPL .rightLostThirdLoop

  .rightEdgeEnd
    LDA $18 : ASL : TAY
    LDA $22 : SEC : SBC $1E : STA $22
    BCC .leftLostScreen
    CPY #$6708 : BCS .leftOnscreenStore
    CPY #$5CF8 : BCS .leftOnscreenIny
    CPY #$32EC : BCS .leftOnscreenStore
    CPY #$27FF : BCC .leftOnscreenStore
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .leftOnscreenStore
    BRA .leftOnscreenIny

  .leftOnscreenLoop
    LDA $22 : SEC : SBC $1E : STA $22
    BCC .leftLostScreen
  .leftOnscreenStore
    LDA $22 : AND #$FF00 : STA [$00],Y
  .leftOnscreenIny
    INY #2 : CPY #$01CC : BMI .leftOnscreenLoop
    BRA .leftEdgeEnd

  .leftLostScreen
    CPY #$6708 : BCS .leftLostLoop
    CPY #$5CF8 : BCS .leftLostSkip
    CPY #$32EC : BCS .leftLostLoop
    CPY #$27FF : BCC .leftLostLoop
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BNE .leftLostLoop
  .leftLostSkip
    LDA #$00FF
    BRA .leftLostIny

  .leftLostLoop
    LDA #$00FF : STA [$00],Y
  .leftLostIny
    INY #2 : CPY #$01CC : BMI .leftLostLoop

  .leftEdgeEnd
    PLP
    RTL
}

xray_onscreen_up_right:
{
    BRK
}

xray_onscreen_up_left:
{
    BRK
}

xray_onscreen_down_right:
{
    BRK
}

xray_onscreen_down_left:
{
    BRK
}

xray_onscreen_horizontal:
{
    PHP : %ai16()
    LDA $18 : DEC : ASL : TAY
    CPY #$27F8 : BCS .preserve
  .vanilla
if !FEATURE_PAL
    JMP $C8F8
else
    JMP $C9A0
endif

  .preserve
    CPY #$8008 : BCS .vanilla
    CPY #$6708 : BCS .firstStore
    CPY #$5CF8 : BCS .topFirstSkip
    CPY #$32EC : BCS .secondStore
    CPY #$27FF : BCC .thirdStore
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .thirdStore
    DEY #2 : CPY #$27FF : BCC .topThird
    BRA .topSecondSkip

  .firstStore
    LDA $12 : CMP #$0040 : BEQ .first40
    LDA $16 : AND #$FF00
    BRA .firstBottom

  .first40
    LDA $17 : ORA #$FF00
  .firstBottom
    STA [$00],Y
    PHY : INY #2
    LDA #$00FF
  .firstBottomLoop
    STA [$00],Y
    INY #2 : CPY #$01CC : BMI .firstBottomLoop
    PLY : DEY #2
    LDA #$00FF : STA [$00],Y
    DEY #2 : BPL .topFirstLoop
    BRA .topEnd

  .secondStore
    LDA $12 : CMP #$0040 : BEQ .second40
    LDA $16 : AND #$FF00
    BRA .secondBottom

  .thirdStore
    LDA $12 : CMP #$0040 : BEQ .third40
    LDA $16 : AND #$FF00
    BRA .thirdBottom

  .topFirstLoop
    STA [$00],Y
    DEY #2 : CPY #$6708 : BCS .topFirstLoop
  .topFirstSkip
    LDA #$00FF
    DEY #2 : CPY #$5CF8 : BCS .topFirstSkip
  .topSecondLoop
    STA [$00],Y
    DEY #2 : CPY #$32EC : BCS .topSecondLoop
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BEQ .topThird
  .topSecondSkip
    LDA #$00FF
    DEY #2 : CPY #$27FF : BCS .topSecondSkip
  .topThird
    LDA #$00FF
  .topThirdLoop
    STA [$00],Y
    DEY #2 : BPL .topThirdLoop

  .topEnd
    PLP
    RTL

  .second40
    LDA $17 : ORA #$FF00
  .secondBottom
    STA [$00],Y
    PHY : INY #2
    LDA #$00FF : STA [$00],Y
    PLY : DEY #2
    LDA #$00FF
    BRA .topSecondLoop

  .third40
    LDA $17 : ORA #$FF00
  .thirdBottom
    STA [$00],Y
    PHY : INY #2
    CPY #$27FF : BCC .thirdBottomStore
    LDA !ram_sprite_feature_flags : AND !SPRITE_HUD_XRAY : BNE .thirdBottomEnd
  .thirdBottomStore
    LDA #$00FF : STA [$00],Y
  .thirdBottomEnd
    PLY : DEY #2
    BRA .topThird
}

print pc, " preserve WRAM end"

