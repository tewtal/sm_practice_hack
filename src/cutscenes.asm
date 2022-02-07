
org $82EEE0
    dw cutscenes_load_intro


if !FEATURE_PAL
org $8BB124
else
org $8BB240
endif
    JSR cutscenes_load_ceres_arrival


org $8BF800
print pc, " cutscenes start"

cutscenes_load_intro:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_SKIP_INTRO : BEQ .keep_intro
    LDA !sram_cutscenes : BIT !CUTSCENE_SKIP_CERES_ARRIVAL : BEQ .keep_ceres_arrival

    ; Skip intro and ceres arrival
if !FEATURE_PAL
    LDA #$C065
else
    LDA #$C100
endif
    STA $1F51
    JMP ($1F51)

  .keep_intro
if !FEATURE_PAL
    LDA #$A365
else
    LDA #$A395
endif
    STA $1F51
    JMP ($1F51)

  .keep_ceres_arrival
if !FEATURE_PAL
    JSR $B8C7
    LDA #$B3EE
else
    JSR $BC08
    LDA #$B72F
endif
    STA $1F51
    JMP ($1F51)
}

cutscenes_load_ceres_arrival:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_SKIP_CERES_ARRIVAL : BEQ .keep_ceres_arrival

    ; Skip ceres arrival
if !FEATURE_PAL
    JSR $B934
    LDA #$C065
else
    JSR $BC75
    LDA #$C100
endif
    RTS

  .keep_ceres_arrival
if !FEATURE_PAL
    LDA #$B3EE
else
    LDA #$B72F
endif
    RTS
}

print pc, " cutscenes end"


if !FEATURE_PAL
org $A9880C
else
org $A987FC
endif
cutscenes_mb_fake_death_check:
{
    BEQ .check_fast_mb
    CMP #$0001 : BNE $15
  .fast_mb
    JMP cutscenes_mb_fake_death_fast_init
  .check_fast_mb
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BNE .fast_mb
    JMP cutscenes_mb_fake_death_normal_init
}
if !FEATURE_PAL
warnpc $A98824
else
warnpc $A98814
endif

if !FEATURE_PAL
org $A9882E
else
org $A9881E
endif
    dw cutscenes_mb_fake_death_pause

if !FEATURE_PAL
org $A98852
else
org $A98842
endif
    dw cutscenes_mb_fake_death_lock

if !FEATURE_PAL
org $A98871
else
org $A98861
endif
    dw cutscenes_mb_fake_death_music

if !FEATURE_PAL
org $A98889
else
org $A98879
endif
    dw cutscenes_mb_fake_death_unlock

if !FEATURE_PAL
org $A98987
else
org $A98977
endif
    dw cutscenes_mb_clear_bottom_left_tube

if !FEATURE_PAL
org $A989B9
else
org $A989A9
endif
    dw cutscenes_mb_clear_ceiling_column_9

if !FEATURE_PAL
org $A989EB
else
org $A989DB
endif
    dw cutscenes_mb_clear_ceiling_column_6

if !FEATURE_PAL
org $A98A13
else
org $A98A03
endif
    dw cutscenes_mb_clear_bottom_right_tube

if !FEATURE_PAL
org $A98A3B
else
org $A98A2B
endif
    dw cutscenes_mb_clear_bottom_middle_left_tube

if !FEATURE_PAL
org $A98A6D
else
org $A98A5D
endif
    dw cutscenes_mb_clear_ceiling_column_7

if !FEATURE_PAL
org $A98A9F
else
org $A98A8F
endif
    dw cutscenes_mb_clear_ceiling_column_8

if !FEATURE_PAL
org $A98D78
else
org $A98D68
endif
    ; Do not initialize health here, wait until later
    dw cutscenes_mb_fake_death_setup_mb_fight_or_escape
    BRA $04

if !FEATURE_PAL
org $A98D90
else
org $A98D80
endif
    dw cutscenes_mb_fake_death_pause_phase_2

if !FEATURE_PAL
org $A98DCE
else
org $A98DBE
endif
    dw cutscenes_mb_fake_death_load_tiles_phase_2

if !FEATURE_PAL
org $A98E57
else
org $A98E47
endif
    dw cutscenes_mb_fake_death_raise_mb

if !FEATURE_PAL
org $A98EDC
else
org $A98ECC
endif
    JMP cutscenes_mb_choose_phase_2_or_3

if !FEATURE_PAL
org $A98EF9
else
org $A98EE9
endif
    dw cutscenes_mb_shaking_head

if !FEATURE_PAL
org $A98F12
else
org $A98F02
endif
    dw cutscenes_mb_bring_head_back_up

if !FEATURE_PAL
org $A9AF17
else
org $A9AF07
endif
    dw cutscenes_mb_death_move_to_back_of_room

if !FEATURE_PAL
org $A9AF58
else
org $A9AF48
endif
    dw cutscenes_mb_death_first_stumble

if !FEATURE_PAL
org $A9B017
else
org $A9B007
endif
    dw cutscenes_mb_death_final_explosions

if !FEATURE_PAL
org $A9B137
else
org $A9B127
endif
    JMP cutscenes_mb_death_brain_falling

if !FEATURE_PAL
org $A9B177
else
org $A9B167
endif
    dw cutscenes_mb_death_load_corpse

if !FEATURE_PAL
org $A9B1BC
else
org $A9B1AC
endif
    dw cutscenes_mb_death_corpse_tips_over

if !FEATURE_PAL
org $A9B1FB
else
org $A9B1EB
endif
    ; Make dead MB invisible and intangible, in case we jump here from a preset
    ORA #$0500


org $A9FBC0
print pc, " cutscenes MB start"

cutscenes_mb_fake_death_fast_init:
{
    ; Set health to non-zero value indicating we want fast logic
    ; If loading a preset, certain flags may already be set
    ; which allow MB to take damage, so setting value high,
    ; but also set below 18000 to avoid confusion with vanilla logic
    LDA #$464F : STA $0FCC

    ; If MB already defeated, reset health to full to simulate baby metroid refill
    LDA $7ED82D : BIT #$0002 : BEQ .end_refill
    LDA $7E09C4 : STA $7E09C2

  .end_refill
    ; Overwritten logic without the song
    STA $7E783A : STA $7E7800
    JSL $90A7E2

if !FEATURE_PAL
    JMP $8824
else
    JMP $8814
endif
}

cutscenes_mb_fake_death_normal_init:
{
    ; Overwritten logic with the song
    LDA #$0001 : STA $7E783A : STA $7E7800
    JSL $90A7E2
    LDA #$0006
    JSL $808FC1

if !FEATURE_PAL
    JMP $8824
else
    JMP $8814
endif
}

cutscenes_mb_fake_death_pause:
{
    LDA $0FCC : BEQ .continue
    LDA #$0001 : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$8839
else
    LDA #$8829
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_fake_death_lock:
{
    LDA $0FCC : BEQ .continue
    LDA #$0001 : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$885D
else
    LDA #$884D
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_fake_death_music:
{
    LDA $0FCC : BEQ .continue
    LDA #$0001 : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$887C
else
    LDA #$886C
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_fake_death_unlock:
{
    LDA $0FCC : BEQ .continue
    LDA #$0001 : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$8894
else
    LDA #$8884
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_clear_bottom_left_tube:
{
    LDA $0FCC : BEQ .continue
    LDA #$0010 : STA $0FF2

  .continue
if !FEATURE_PAL
    LDA #$8993
else
    LDA #$8983
endif
    STA $0FF0
    JMP ($0FF0)
}

cutscenes_mb_clear_ceiling_column_9:
{
    LDA $0FCC : BEQ .continue
    LDA #$0010 : STA $0FF2

  .continue
if !FEATURE_PAL
    LDA #$89C5
else
    LDA #$89B5
endif
    STA $0FF0
    JMP ($0FF0)
}

cutscenes_mb_clear_ceiling_column_6:
{
    LDA $0FCC : BEQ .continue
    LDA #$0010 : STA $0FF2

  .continue
if !FEATURE_PAL
    LDA #$89F7
else
    LDA #$89E7
endif
    STA $0FF0
    JMP ($0FF0)
}

cutscenes_mb_clear_bottom_right_tube:
{
    LDA $0FCC : BEQ .continue
    LDA #$0010 : STA $0FF2

  .continue
if !FEATURE_PAL
    LDA #$8A1F
else
    LDA #$8A0F
endif
    STA $0FF0
    JMP ($0FF0)
}

cutscenes_mb_clear_bottom_middle_left_tube:
{
    LDA $0FCC : BEQ .continue
    LDA #$0010 : STA $0FF2

  .continue
if !FEATURE_PAL
    LDA #$8A47
else
    LDA #$8A37
endif
    STA $0FF0
    JMP ($0FF0)
}

cutscenes_mb_clear_ceiling_column_7:
{
    LDA $0FCC : BEQ .continue
    LDA #$0010 : STA $0FF2

  .continue
if !FEATURE_PAL
    LDA #$8A79
else
    LDA #$8A69
endif
    STA $0FF0
    JMP ($0FF0)
}

cutscenes_mb_clear_ceiling_column_8:
{
    LDA $0FCC : BEQ .continue
    LDA #$0010 : STA $0FF2

  .continue
if !FEATURE_PAL
    LDA #$8AAB
else
    LDA #$8A9B
endif
    STA $0FF0
    JMP ($0FF0)
}

cutscenes_mb_fake_death_setup_mb_fight_or_escape:
{
    LDA $7ED821 : BIT #$0040 : BEQ .mb

    ; Disable MB hitboxes
    LDA #$0000 : STA $7E7808
    ; Jump to escape sequence
if !FEATURE_PAL
    JMP $B1F8
else
    JMP $B1E8
endif

  .mb
    LDA $0FCC : BEQ .init_health
    LDA #$0000 : STA $0FB2 : STA $0FCC
    BRA .continue

  .init_health
    LDA #$4650 : STA $0FCC

  .continue
if !FEATURE_PAL
    LDA #$8D89
else
    LDA #$8D79
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_fake_death_pause_phase_2:
{
    LDA $0FCC : BNE .continue
    LDA #$0000 : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$8D9B
else
    LDA #$8D8B
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_fake_death_load_tiles_phase_2:
{
    LDA $0FCC : BNE .continue
    LDA #$0000 : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$8DD3
else
    LDA #$8DC3
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_fake_death_raise_mb:
{
    LDA $0FCC : BNE .continue
    LDA $05B6 : AND #$0001 : BNE .done
if !FEATURE_PAL
    JMP $8E65
else
    JMP $8E55
endif

  .continue
if !FEATURE_PAL
    LDA #$8E5D
else
    LDA #$8E4D
endif
    STA $0FA8
    JMP ($0FA8)

  .done
    RTS
}

cutscenes_mb_choose_phase_2_or_3:
{
    LDA $7ED82D : BIT #$0002 : BEQ .phase2

    ; Phase 3
    LDA #$0004 : STA $7E7800

    ; 36000 health
    LDA #$8CA0 : STA $0FCC

    ; Enable health-based palette
    TDC : STA $7E7860 : STA $7E7868
    INC : STA $7E7862
    INC : STA $7E783E

    ; Allow Samus to stand up and enable hyper beam
if !FEATURE_PAL
    LDA #$0017 : JSL $90F081
    LDA #$0003 : JSL $91E412
    JMP $C242
else
    LDA #$0017 : JSL $90F084
    LDA #$0003 : JSL $91E4AD
    JMP $C1F5
endif

  .phase2
    LDA #$0002 : STA $7E7800

    ; 18000 health
    LDA #$4650 : STA $0FCC
if !FEATURE_PAL
    JMP $8EE1
else
    JMP $8ED1
endif
}

cutscenes_mb_shaking_head:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #$000A : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$8F05
else
    LDA #$8EF5
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_bring_head_back_up:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #$0060 : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$8F24
else
    LDA #$8F14
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_death_move_to_back_of_room:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #$000A : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$AF22
else
    LDA #$AF12
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_death_first_stumble:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #$000A : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$AF64
else
    LDA #$AF54
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_death_final_explosions:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #$0000 : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$B023
else
    LDA #$B013
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_death_brain_falling:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #cutscenes_mb_death_brain_falling_fast
    STA $0FA8
    JMP ($0FA8)

  .continue
if !FEATURE_PAL
    LDA #$B13D
else
    LDA #$B12D
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_death_brain_falling_fast:
{
    ; Vanilla logic except add $40 instead of $20
    LDA $0FB2 : CLC : ADC #$0040 : STA $0FB2
    XBA : AND #$00FF : CLC : ADC $0FBE
    CMP #$00C4 : BCC .still_falling

if !FEATURE_PAL
    JMP $B154
else
    JMP $B144
endif

  .still_falling
    STA $0FBE
    RTS
}

cutscenes_mb_death_load_corpse:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #$0000 : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$B183
else
    LDA #$B173
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_death_corpse_tips_over:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #$0030 : STA $0FB2

  .continue
if !FEATURE_PAL
    LDA #$B1C8
else
    LDA #$B1B8
endif
    STA $0FA8
    JMP ($0FA8)
}

print pc, " cutscenes MB end"

