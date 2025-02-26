
if !FEATURE_PAL
org $8BB124
else
org $8BB240
endif
    JSR cutscenes_load_ceres_arrival

if !FEATURE_PAL
org $8B9287
else
org $8B92DE
endif
    JSR cutscenes_nintendo_logo_hijack
    NOP

org $80AE5C
    JSR cutscenes_door_transition


%startfree(80)

cutscenes_door_transition:
{
    LDA !sram_fast_doors : BEQ .slow
    ; If fast doors are enabled, run the door transition twice per frame.
    PHX
    JSR ($AE76,x)
    PLX
    BCC .again
    RTS             ; If the door transition is done, don't run it again.
  .again
    LDY #$0001
    JSL ih_adjust_realtime
  .slow
    JMP ($AE76,x)
}

%endfree(80)


if !FEATURE_PAL
org $A39597
    JSL cutscenes_add_elevator_speed
    BRA $0D
org $A395B2
    JSL cutscenes_sub_elevator_speed
    BRA $0D
org $A395D4
    JSL cutscenes_add_elevator_speed
    BRA $0D
org $A395EE
    JSL cutscenes_sub_elevator_speed
    BRA $0D
org $82E18E
    JSL cutscenes_set_elevator_delay
    BRA $00
else
org $A39587
    JSL cutscenes_add_elevator_speed
    BRA $0D
org $A395A2
    JSL cutscenes_sub_elevator_speed
    BRA $0D
org $A395C4
    JSL cutscenes_add_elevator_speed
    BRA $0D
org $A395DE
    JSL cutscenes_sub_elevator_speed
    BRA $0D
org $82E18E
    JSL cutscenes_set_elevator_delay
    BRA $00
endif

; Patch room loading to use optimized_decompression for the tilesets
; if fast doors are enabled.
; This is because the room state can be affected by the timing of the
; decompression; for example, the Rinkas in Mother Brain's room will spawn
; differently depending on how far the door has scrolled when decompression finishes.

org $82E41D
    LDA #$7E70
    JSL cutscenes_fast_decompress_if_fast_doors

org $82E42E
    LDA #$7E20
    JSL cutscenes_fast_decompress_if_fast_doors


org $82DCF4
    JSL cutscenes_game_over

org $82EEDF
    LDA #cutscenes_load_intro


if !FEATURE_PAL
org $A7C394
else
org $A7C360
endif
    JSL cutscenes_kraid_death_camera


%startfree(8B)

cutscenes_nintendo_logo_hijack:
{
    JSL $80834B ; hijacked code

    LDA !sram_cutscenes : AND !CUTSCENE_QUICKBOOT : BNE .quickboot
    STA !ram_quickboot_spc_state
    RTS

  .quickboot
    PLA ; pop return address
    PLB
    PLA ; saved processor status and 1 byte of next return address
    PLA ; remainder of next return address

    LDA #$0001 : STA !ram_quickboot_spc_state

    JML $808482  ; finish boot code; another hijack will launch the menu
}

cutscenes_add_elevator_speed:
{
    LDA !sram_fast_elevators : BEQ .slow
    LDY #$0002 : JSL ih_adjust_realtime
    CLC
    LDA !ENEMY_Y_SUBPX,X : ADC #$8000 : STA !ENEMY_Y_SUBPX,X
    LDA !ENEMY_Y,X : ADC #$0004 : STA !ENEMY_Y,X
    RTL
  .slow
    CLC
    LDA !ENEMY_Y_SUBPX,X : ADC #$8000 : STA !ENEMY_Y_SUBPX,X
    LDA !ENEMY_Y,X : ADC #$0001 : STA !ENEMY_Y,X
    RTL
}

cutscenes_sub_elevator_speed:
{
    LDA !sram_fast_elevators : BEQ .slow
    LDY #$0002 : JSL ih_adjust_realtime
    SEC
    LDA !ENEMY_Y_SUBPX,X : SBC #$8000 : STA !ENEMY_Y_SUBPX,X
    LDA !ENEMY_Y,X : SBC #$0004 : STA !ENEMY_Y,X
    RTL
  .slow
    SEC
    LDA !ENEMY_Y_SUBPX,X : SBC #$8000 : STA !ENEMY_Y_SUBPX,X
    LDA !ENEMY_Y,X : SBC #$0001 : STA !ENEMY_Y,X
    RTL
}

cutscenes_set_elevator_delay:
{
    ; We tripled the elevator speed, so decrease the room transition delay accordingly
if !FEATURE_PAL
    LDX #$0028
    LDA !sram_fast_elevators : BEQ .slow
    LDX #$000D
else
    LDX #$0030
    LDA !sram_fast_elevators : BEQ .slow
    LDX #$0010
endif
  .slow
    STX !DOWNWARDS_ELEVATOR_DELAY_TIMER
    RTL
}

cutscenes_fast_decompress_if_fast_doors:
{
    STZ $4C
    STA $4D
    ; decompress, but fast if fast doors & slow if slow doors
    ; this is because the room state (e.g. rinkas in MBs room) can be affected
    ; by the timing of the decompression
    LDA !sram_fast_doors : BEQ .slow
    JML optimized_decompression
  .slow
    JML $80B119
}

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
    STA !CINEMATIC_FUNCTION_POINTER
    JMP (!CINEMATIC_FUNCTION_POINTER)

  .keep_intro
if !FEATURE_PAL
    LDA #$A365
else
    LDA #$A395
endif
    STA !CINEMATIC_FUNCTION_POINTER
    JMP (!CINEMATIC_FUNCTION_POINTER)

  .keep_ceres_arrival
if !FEATURE_PAL
    JSR $B8C7
    LDA #$B3EE
else
    JSR $BC08
    LDA #$B72F
endif
    STA !CINEMATIC_FUNCTION_POINTER
    JMP (!CINEMATIC_FUNCTION_POINTER)
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

cutscenes_game_over:
{
    ; check for cutscene flag or whatever
    LDA !sram_cutscenes : BIT !CUTSCENE_SKIP_GAMEOVER : BEQ .game_over
if !FEATURE_SD2SNES
    ; check if valid savestate
    LDA !SRAM_SAVED_STATE : CMP !SAFEWORD : BNE .no_savestate
    JML gamemode_shortcuts_load_state
endif

  .no_savestate
    ; reload last preset if it exists
    LDA !sram_last_preset : BEQ .save_file : STA !ram_load_preset
    BRA .skip_gameplay

  .save_file
    ; load from SRAM, carry set if corrupt/empty
    LDA !CURRENT_SAVE_FILE : JSL $818085 : BCS .game_over
    JSL $82BE17 ; Cancel sound effects
    LDA #$0006 : STA !GAMEMODE

  .skip_gameplay
    ; cleanup the stack and skip gameplay this frame
    ; JSR (+2) to game state $14, PHP (+1), JSL (+3) to here
    PLA : PLA : PLA
    JML end_of_normal_gameplay

  .game_over
    ; overwritten code
    JML $88829E
}

cutscenes_kraid_death_camera:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_KRAID_DEATH_CAMERA : BEQ .done
    LDA #$0202 : STA $7ECD20
    LDA #$0101 : STA $7ECD22

  .done
    LDA $7E782A ; overwritten code
    RTL
}

if !FEATURE_PAL
else
custom_intro_init:
{
    JSL $888293
    JSL $88829E
    LDA #$0001 : STA !sram_music_toggle
    JSR $A395
    LDA #custom_intro_InitialFadeIn : STA !CINEMATIC_FUNCTION_POINTER
    RTS
}

custom_intro_InitialFadeIn:
{
    JSL $808EF4 : BCS .done
    LDA #custom_intro_InitialFadeInWait : STA !CINEMATIC_FUNCTION_POINTER
    LDA #$0002 : STA !SCREEN_FADE_DELAY : STA !SCREEN_FADE_COUNTER
  .done
    RTS
}

custom_intro_InitialFadeInWait:
{
    JSR $911B : BCC .done
    LDA #custom_intro_LastMetroidMusic : STA !CINEMATIC_FUNCTION_POINTER
    LDA #$003C : STA $1A49
  .done
    RTS
}

custom_intro_LastMetroidMusic:
{
    DEC $1A49 : BNE .done
    LDA #custom_intro_GalaxyIsAtPeaceMusic : STA !CINEMATIC_FUNCTION_POINTER
    LDA #$00C8 : STA $1A49
    LDA #$0005 : JSL !MUSIC_ROUTINE
  .done
    RTS
}

custom_intro_GalaxyIsAtPeaceMusic:
{
    DEC $1A49 : BNE .done
    TDC : JSL !MUSIC_ROUTINE
    LDA #$FF42 : JSL !MUSIC_ROUTINE
    LDA #$0005 : LDY #$000E : JSL $808FF7
    LDA #custom_intro_WaitMusicQueue : STA !CINEMATIC_FUNCTION_POINTER
  .done
    RTS
}

custom_intro_WaitMusicQueue:
{
    JSL $808EF4 : BCS .done
    LDA #custom_intro_InitialFadeOut : STA !CINEMATIC_FUNCTION_POINTER
    LDA #$00F0 : STA $1A49
  .done
    RTS
}

custom_intro_InitialFadeOut:
{
    DEC $1A49 : BNE .done
    LDA #custom_intro_InitialFadeOutWait : STA !CINEMATIC_FUNCTION_POINTER
    LDA #$0002 : STA !SCREEN_FADE_DELAY : STA !SCREEN_FADE_COUNTER
  .done
    RTS
}

custom_intro_InitialFadeOutWait:
{
    JSR $90D5 : BCC .done
    LDA #custom_intro_SetupCustomPage : STA !CINEMATIC_FUNCTION_POINTER
  .done
    RTS
}

custom_intro_SetupCustomPage:
{
    JSR $A66F
    LDA.W #custom_intro_SpawnCustomText : STA !CINEMATIC_FUNCTION_POINTER
    RTS
}

custom_intro_SpawnCustomText:
{
    JSL $808EF4 : BCS .done
    LDA #custom_intro_CustomFadeInWait : STA !CINEMATIC_FUNCTION_POINTER
    LDA #$0002 : STA !SCREEN_FADE_DELAY : STA !SCREEN_FADE_COUNTER
    LDA #custom_intro_HideCaret : STA $1B3B
    LDY #custom_intro_CustomDefinition : LDA #$4C00
    JSR $95F0
  .done
    RTS
}

custom_intro_HideCaret:
    dw $0005, $0000
    dw $94BC, #custom_intro_HideCaret

custom_intro_CustomFadeInWait:
{
    JSR $911B : BCC .done
    LDA #$A391 : STA !CINEMATIC_FUNCTION_POINTER
  .done
    RTS
}

custom_intro_CustomDefinition:
    dw #custom_intro_CustomFadeInWait_done
    dw #custom_intro_CustomFadeInWait_done
    dw custom_intro_CustomText

custom_intro_EndCustomText:
{
    JSR $ADE1
    LDA #custom_intro_WaitForInput : STA !CINEMATIC_FUNCTION_POINTER
    RTS
}

custom_intro_WaitForInput:
{
    LDA $1BA3 : BEQ .timerExpired
    DEC : STA $1BA3
    RTS

  .timerExpired:
    LDA !IH_CONTROLLER_PRI_NEW : BNE .newInputs
    RTS

  .newInputs:
    JML $808462
}

endif
%endfree(8B)


org $8CD67D
IndirectInstructions_IntroText_Space:
org $8CD683
IndirectInstructions_IntroText_Nothing:
org $8CD685
IndirectInstructions_IntroText_A:
org $8CD68B
IndirectInstructions_IntroText_B:
org $8CD691
IndirectInstructions_IntroText_C:
org $8CD697
IndirectInstructions_IntroText_D:
org $8CD69D
IndirectInstructions_IntroText_E:
org $8CD6A3
IndirectInstructions_IntroText_F:
org $8CD6A9
IndirectInstructions_IntroText_G:
org $8CD6AF
IndirectInstructions_IntroText_H:
org $8CD6B5
IndirectInstructions_IntroText_I:
org $8CD6BB
IndirectInstructions_IntroText_J:
org $8CD6C1
IndirectInstructions_IntroText_K:
org $8CD6C7
IndirectInstructions_IntroText_L:
org $8CD6CD
IndirectInstructions_IntroText_M:
org $8CD6D3
IndirectInstructions_IntroText_N:
org $8CD6D9
IndirectInstructions_IntroText_O:
org $8CD6DF
IndirectInstructions_IntroText_P:
org $8CD6E5
IndirectInstructions_IntroText_Q:
org $8CD6EB
IndirectInstructions_IntroText_R:
org $8CD6F1
IndirectInstructions_IntroText_S:
org $8CD6F7
IndirectInstructions_IntroText_T:
org $8CD6FD
IndirectInstructions_IntroText_U:
org $8CD703
IndirectInstructions_IntroText_V:
org $8CD709
IndirectInstructions_IntroText_W:
org $8CD70F
IndirectInstructions_IntroText_X:
org $8CD715
IndirectInstructions_IntroText_Y:
org $8CD71B
IndirectInstructions_IntroText_Z:
org $8CD721
IndirectInstructions_IntroText_Zero:
org $8CD727
IndirectInstructions_IntroText_One:
org $8CD72D
IndirectInstructions_IntroText_Two:
org $8CD733
IndirectInstructions_IntroText_Three:
org $8CD739
IndirectInstructions_IntroText_Four:
org $8CD73F
IndirectInstructions_IntroText_Five:
org $8CD745
IndirectInstructions_IntroText_Six:
org $8CD74B
IndirectInstructions_IntroText_Seven:
org $8CD751
IndirectInstructions_IntroText_Eight:
org $8CD757
IndirectInstructions_IntroText_Nine:
org $8CD75D
IndirectInstructions_IntroText_Period:
org $8CD763
IndirectInstructions_IntroText_Comma:
org $8CD769
IndirectInstructions_IntroText_DecimalPoint:
org $8CD76F
IndirectInstructions_IntroText_Apostrophe:
org $8CD775
IndirectInstructions_IntroText_Colon:
org $8CD77B
IndirectInstructions_IntroText_ExclamationPoint:


macro intro_char(label, x, y)
    dw $0005
    db <x>
    db <y>
    dw #IndirectInstructions_IntroText_<label>
endmacro


if !FEATURE_PAL
else
%startfree(8C)

custom_intro_CustomText:
    dw $0001
    db $01,$01
    dw IndirectInstructions_IntroText_Nothing
    %intro_char(One, $00, $04)
    %intro_char(Zero, $01, $04)
    %intro_char(Space, $02, $04)
    %intro_char(Y, $03, $04)
    %intro_char(E, $04, $04)
    %intro_char(A, $05, $04)
    %intro_char(R, $06, $04)
    %intro_char(S, $07, $04)
    %intro_char(Space, $08, $04)
    %intro_char(S, $09, $04)
    %intro_char(I, $0A, $04)
    %intro_char(N, $0B, $04)
    %intro_char(C, $0C, $04)
    %intro_char(E, $0D, $04)
    %intro_char(Space, $0E, $04)
    %intro_char(E, $0F, $04)
    %intro_char(D, $10, $04)
    %intro_char(D, $11, $04)
    %intro_char(I, $12, $04)
    %intro_char(E, $13, $04)
    %intro_char(Space, $14, $04)
    %intro_char(S, $15, $04)
    %intro_char(T, $16, $04)
    %intro_char(R, $17, $04)
    %intro_char(I, $18, $04)
    %intro_char(M, $19, $04)
    %intro_char(Period, $1A, $04)
    %intro_char(I, $00, $06)
    %intro_char(Space, $01, $06)
    %intro_char(W, $02, $06)
    %intro_char(A, $03, $06)
    %intro_char(L, $04, $06)
    %intro_char(K, $05, $06)
    %intro_char(Space, $06, $06)
    %intro_char(T, $07, $06)
    %intro_char(H, $08, $06)
    %intro_char(R, $09, $06)
    %intro_char(O, $0A, $06)
    %intro_char(U, $0B, $06)
    %intro_char(G, $0C, $06)
    %intro_char(H, $0D, $06)
    %intro_char(Space, $0E, $06)
    %intro_char(T, $0F, $06)
    %intro_char(H, $10, $06)
    %intro_char(E, $11, $06)
    %intro_char(Space, $12, $06)
    %intro_char(E, $13, $06)
    %intro_char(M, $14, $06)
    %intro_char(P, $15, $06)
    %intro_char(T, $16, $06)
    %intro_char(Y, $17, $06)
    %intro_char(Space, $18, $06)
    %intro_char(S, $19, $06)
    %intro_char(T, $1A, $06)
    %intro_char(R, $1B, $06)
    %intro_char(E, $1C, $06)
    %intro_char(E, $1D, $06)
    %intro_char(T, $1E, $06)
    %intro_char(S, $1F, $06)
    %intro_char(T, $00, $07)
    %intro_char(R, $01, $07)
    %intro_char(Y, $02, $07)
    %intro_char(I, $03, $07)
    %intro_char(N, $04, $07)
    %intro_char(G, $05, $07)
    %intro_char(Space, $06, $07)
    %intro_char(T, $07, $07)
    %intro_char(O, $08, $07)
    %intro_char(Space, $09, $07)
    %intro_char(T, $0A, $07)
    %intro_char(H, $0B, $07)
    %intro_char(I, $0C, $07)
    %intro_char(N, $0D, $07)
    %intro_char(K, $0E, $07)
    %intro_char(Space, $0F, $07)
    %intro_char(O, $10, $07)
    %intro_char(F, $11, $07)
    %intro_char(Space, $12, $07)
    %intro_char(S, $13, $07)
    %intro_char(O, $14, $07)
    %intro_char(M, $15, $07)
    %intro_char(E, $16, $07)
    %intro_char(T, $17, $07)
    %intro_char(H, $18, $07)
    %intro_char(I, $19, $07)
    %intro_char(N, $1A, $07)
    %intro_char(G, $1B, $07)
    %intro_char(E, $00, $08)
    %intro_char(L, $01, $08)
    %intro_char(S, $02, $08)
    %intro_char(E, $03, $08)
    %intro_char(Space, $04, $08)
    %intro_char(B, $05, $08)
    %intro_char(U, $06, $08)
    %intro_char(T, $07, $08)
    %intro_char(Space, $08, $08)
    %intro_char(M, $09, $08)
    %intro_char(Y, $0A, $08)
    %intro_char(Space, $0B, $08)
    %intro_char(P, $0C, $08)
    %intro_char(A, $0D, $08)
    %intro_char(T, $0E, $08)
    %intro_char(H, $0F, $08)
    %intro_char(Space, $10, $08)
    %intro_char(A, $11, $08)
    %intro_char(L, $12, $08)
    %intro_char(W, $13, $08)
    %intro_char(A, $14, $08)
    %intro_char(Y, $15, $08)
    %intro_char(S, $16, $08)
    %intro_char(Space, $17, $08)
    %intro_char(L, $18, $08)
    %intro_char(E, $19, $08)
    %intro_char(A, $1A, $08)
    %intro_char(D, $1B, $08)
    %intro_char(S, $1C, $08)
    %intro_char(T, $00, $09)
    %intro_char(O, $01, $09)
    %intro_char(Space, $02, $09)
    %intro_char(T, $03, $09)
    %intro_char(H, $04, $09)
    %intro_char(E, $05, $09)
    %intro_char(Space, $06, $09)
    %intro_char(S, $07, $09)
    %intro_char(T, $08, $09)
    %intro_char(R, $09, $09)
    %intro_char(E, $0A, $09)
    %intro_char(A, $0B, $09)
    %intro_char(M, $0C, $09)
    %intro_char(Period, $0D, $09)
    %intro_char(I, $00, $0B)
    %intro_char(Space, $01, $0B)
    %intro_char(S, $02, $0B)
    %intro_char(T, $03, $0B)
    %intro_char(A, $04, $0B)
    %intro_char(R, $05, $0B)
    %intro_char(E, $06, $0B)
    %intro_char(Space, $07, $0B)
    %intro_char(A, $08, $0B)
    %intro_char(T, $09, $0B)
    %intro_char(Space, $0A, $0B)
    %intro_char(T, $0B, $0B)
    %intro_char(H, $0C, $0B)
    %intro_char(E, $0D, $0B)
    %intro_char(Space, $0E, $0B)
    %intro_char(S, $0F, $0B)
    %intro_char(C, $10, $0B)
    %intro_char(R, $11, $0B)
    %intro_char(E, $12, $0B)
    %intro_char(E, $13, $0B)
    %intro_char(N, $14, $0B)
    %intro_char(Space, $15, $0B)
    %intro_char(F, $16, $0B)
    %intro_char(O, $17, $0B)
    %intro_char(R, $18, $0B)
    %intro_char(Space, $19, $0B)
    %intro_char(H, $1A, $0B)
    %intro_char(O, $1B, $0B)
    %intro_char(U, $1C, $0B)
    %intro_char(R, $1D, $0B)
    %intro_char(S, $1E, $0B)
    %intro_char(A, $00, $0C)
    %intro_char(N, $01, $0C)
    %intro_char(D, $02, $0C)
    %intro_char(Space, $03, $0C)
    %intro_char(T, $04, $0C)
    %intro_char(R, $05, $0C)
    %intro_char(Y, $06, $0C)
    %intro_char(Space, $07, $0C)
    %intro_char(T, $08, $0C)
    %intro_char(O, $09, $0C)
    %intro_char(Space, $0A, $0C)
    %intro_char(S, $0B, $0C)
    %intro_char(U, $0C, $0C)
    %intro_char(M, $0D, $0C)
    %intro_char(M, $0E, $0C)
    %intro_char(O, $0F, $0C)
    %intro_char(N, $10, $0C)
    %intro_char(Space, $11, $0C)
    %intro_char(T, $12, $0C)
    %intro_char(H, $13, $0C)
    %intro_char(E, $14, $0C)
    %intro_char(Space, $15, $0C)
    %intro_char(U, $16, $0C)
    %intro_char(W, $17, $0C)
    %intro_char(J, $18, $0C)
    %intro_char(Space, $19, $0C)
    %intro_char(G, $1A, $0C)
    %intro_char(O, $1B, $0C)
    %intro_char(D, $1C, $0C)
    %intro_char(Period, $1D, $0C)
    %intro_char(I, $00, $0E)
    %intro_char(Space, $01, $0E)
    %intro_char(W, $02, $0E)
    %intro_char(A, $03, $0E)
    %intro_char(T, $04, $0E)
    %intro_char(C, $05, $0E)
    %intro_char(H, $06, $0E)
    %intro_char(Space, $07, $0E)
    %intro_char(O, $08, $0E)
    %intro_char(T, $09, $0E)
    %intro_char(H, $0A, $0E)
    %intro_char(E, $0B, $0E)
    %intro_char(R, $0C, $0E)
    %intro_char(Space, $0D, $0E)
    %intro_char(M, $0E, $0E)
    %intro_char(A, $0F, $0E)
    %intro_char(P, $10, $0E)
    %intro_char(Space, $11, $0E)
    %intro_char(R, $12, $0E)
    %intro_char(A, $13, $0E)
    %intro_char(N, $14, $0E)
    %intro_char(D, $15, $0E)
    %intro_char(O, $16, $0E)
    %intro_char(Space, $17, $0E)
    %intro_char(S, $18, $0E)
    %intro_char(T, $19, $0E)
    %intro_char(R, $1A, $0E)
    %intro_char(E, $1B, $0E)
    %intro_char(A, $1C, $0E)
    %intro_char(M, $1D, $0E)
    %intro_char(S, $1E, $0E)
    %intro_char(B, $00, $0F)
    %intro_char(U, $01, $0F)
    %intro_char(T, $02, $0F)
    %intro_char(Space, $03, $0F)
    %intro_char(I, $04, $0F)
    %intro_char(T, $05, $0F)
    %intro_char(Space, $06, $0F)
    %intro_char(I, $07, $0F)
    %intro_char(S, $08, $0F)
    %intro_char(Space, $09, $0F)
    %intro_char(N, $0A, $0F)
    %intro_char(O, $0B, $0F)
    %intro_char(Space, $0C, $0F)
    %intro_char(G, $0D, $0F)
    %intro_char(O, $0E, $0F)
    %intro_char(O, $0F, $0F)
    %intro_char(D, $10, $0F)
    %intro_char(Period, $11, $0F)
    %intro_char(I, $00, $11)
    %intro_char(Space, $01, $11)
    %intro_char(F, $02, $11)
    %intro_char(L, $03, $11)
    %intro_char(A, $04, $11)
    %intro_char(M, $05, $11)
    %intro_char(E, $06, $11)
    %intro_char(Space, $07, $11)
    %intro_char(C, $08, $11)
    %intro_char(H, $09, $11)
    %intro_char(A, $0A, $11)
    %intro_char(R, $0B, $11)
    %intro_char(L, $0C, $11)
    %intro_char(E, $0D, $11)
    %intro_char(S, $0E, $11)
    %intro_char(Space, $0F, $11)
    %intro_char(I, $10, $11)
    %intro_char(N, $11, $11)
    %intro_char(Space, $12, $11)
    %intro_char(D, $13, $11)
    %intro_char(M, $14, $11)
    %intro_char(S, $15, $11)
    %intro_char(Space, $16, $11)
    %intro_char(A, $17, $11)
    %intro_char(N, $18, $11)
    %intro_char(D, $19, $11)
    %intro_char(Space, $1A, $11)
    %intro_char(T, $1B, $11)
    %intro_char(R, $1C, $11)
    %intro_char(Y, $1D, $11)
    %intro_char(T, $00, $12)
    %intro_char(O, $01, $12)
    %intro_char(Space, $02, $12)
    %intro_char(C, $03, $12)
    %intro_char(H, $04, $12)
    %intro_char(E, $05, $12)
    %intro_char(E, $06, $12)
    %intro_char(R, $07, $12)
    %intro_char(Six, $08, $12)
    %intro_char(Six, $09, $12)
    %intro_char(Six, $0A, $12)
    %intro_char(Six, $0B, $12)
    %intro_char(Space, $0C, $12)
    %intro_char(I, $0D, $12)
    %intro_char(N, $0E, $12)
    %intro_char(Space, $0F, $12)
    %intro_char(O, $10, $12)
    %intro_char(T, $11, $12)
    %intro_char(H, $12, $12)
    %intro_char(E, $13, $12)
    %intro_char(R, $14, $12)
    %intro_char(Space, $15, $12)
    %intro_char(C, $16, $12)
    %intro_char(H, $17, $12)
    %intro_char(A, $18, $12)
    %intro_char(N, $19, $12)
    %intro_char(N, $1A, $12)
    %intro_char(E, $1B, $12)
    %intro_char(L, $1C, $12)
    %intro_char(S, $1D, $12)
    %intro_char(B, $00, $13)
    %intro_char(U, $01, $13)
    %intro_char(T, $02, $13)
    %intro_char(Space, $03, $13)
    %intro_char(I, $04, $13)
    %intro_char(T, $05, $13)
    %intro_char(Space, $06, $13)
    %intro_char(I, $07, $13)
    %intro_char(S, $08, $13)
    %intro_char(Space, $09, $13)
    %intro_char(A, $0A, $13)
    %intro_char(L, $0B, $13)
    %intro_char(L, $0C, $13)
    %intro_char(Space, $0D, $13)
    %intro_char(M, $0E, $13)
    %intro_char(E, $0F, $13)
    %intro_char(A, $10, $13)
    %intro_char(N, $11, $13)
    %intro_char(I, $12, $13)
    %intro_char(N, $13, $13)
    %intro_char(G, $14, $13)
    %intro_char(L, $15, $13)
    %intro_char(E, $16, $13)
    %intro_char(S, $17, $13)
    %intro_char(S, $18, $13)
    %intro_char(Period, $19, $13)
    %intro_char(T, $00, $15)
    %intro_char(H, $01, $15)
    %intro_char(E, $02, $15)
    %intro_char(Space, $03, $15)
    %intro_char(E, $04, $15)
    %intro_char(N, $05, $15)
    %intro_char(D, $06, $15)
    %intro_char(Space, $07, $15)
    %intro_char(I, $08, $15)
    %intro_char(S, $09, $15)
    %intro_char(Space, $0A, $15)
    %intro_char(N, $0B, $15)
    %intro_char(E, $0C, $15)
    %intro_char(A, $0D, $15)
    %intro_char(R, $0E, $15)
    %intro_char(Period, $0F, $15)
    %intro_char(Space, $10, $15)
    %intro_char(I, $11, $15)
    %intro_char(Space, $12, $15)
    %intro_char(T, $13, $15)
    %intro_char(H, $14, $15)
    %intro_char(E, $15, $15)
    %intro_char(N, $16, $15)
    %intro_char(Space, $17, $15)
    %intro_char(U, $18, $15)
    %intro_char(S, $19, $15)
    %intro_char(U, $1A, $15)
    %intro_char(A, $1B, $15)
    %intro_char(L, $1C, $15)
    %intro_char(L, $1D, $15)
    %intro_char(Y, $1E, $15)
    %intro_char(W, $00, $16)
    %intro_char(A, $01, $16)
    %intro_char(T, $02, $16)
    %intro_char(C, $03, $16)
    %intro_char(H, $04, $16)
    %intro_char(Space, $05, $16)
    %intro_char(S, $06, $16)
    %intro_char(O, $07, $16)
    %intro_char(M, $08, $16)
    %intro_char(E, $09, $16)
    %intro_char(Space, $0A, $16)
    %intro_char(O, $0B, $16)
    %intro_char(L, $0C, $16)
    %intro_char(D, $0D, $16)
    %intro_char(Space, $0E, $16)
    %intro_char(S, $0F, $16)
    %intro_char(U, $10, $16)
    %intro_char(P, $11, $16)
    %intro_char(E, $12, $16)
    %intro_char(R, $13, $16)
    %intro_char(Space, $14, $16)
    %intro_char(M, $15, $16)
    %intro_char(E, $16, $16)
    %intro_char(T, $17, $16)
    %intro_char(R, $18, $16)
    %intro_char(O, $19, $16)
    %intro_char(I, $1A, $16)
    %intro_char(D, $1B, $16)
    %intro_char(V, $00, $17)
    %intro_char(O, $01, $17)
    %intro_char(D, $02, $17)
    %intro_char(S, $03, $17)
    %intro_char(Space, $04, $17)
    %intro_char(A, $05, $17)
    %intro_char(N, $06, $17)
    %intro_char(D, $07, $17)
    %intro_char(Space, $08, $17)
    %intro_char(D, $09, $17)
    %intro_char(R, $0A, $17)
    %intro_char(I, $0B, $17)
    %intro_char(N, $0C, $17)
    %intro_char(K, $0D, $17)
    %intro_char(Space, $0E, $17)
    %intro_char(C, $0F, $17)
    %intro_char(O, $10, $17)
    %intro_char(C, $11, $17)
    %intro_char(A, $12, $17)
    %intro_char(Space, $13, $17)
    %intro_char(C, $14, $17)
    %intro_char(O, $15, $17)
    %intro_char(L, $16, $17)
    %intro_char(A, $17, $17)
    %intro_char(U, $00, $18)
    %intro_char(N, $01, $18)
    %intro_char(T, $02, $18)
    %intro_char(I, $03, $18)
    %intro_char(L, $04, $18)
    %intro_char(Space, $05, $18)
    %intro_char(I, $06, $18)
    %intro_char(Space, $07, $18)
    %intro_char(P, $08, $18)
    %intro_char(A, $09, $18)
    %intro_char(S, $0A, $18)
    %intro_char(S, $0B, $18)
    %intro_char(Space, $0C, $18)
    %intro_char(T, $0D, $18)
    %intro_char(F, $0E, $18)
    %intro_char(Space, $0F, $18)
    %intro_char(O, $10, $18)
    %intro_char(U, $11, $18)
    %intro_char(T, $12, $18)
    %intro_char(Period, $13, $18)
    dw custom_intro_EndCustomText
    dw $9698

%endfree(8C)
endif


; Non-flashing palette instruction
; Overwriting unused C19A-C2E8 space
org $8DC19A
crateria_1_palette_fx_preinstruction:
{
    ; Start with copy of original preinstruction at $8DEC59
    LDA $0AFA : CMP #$0380 : BCS .end
    LDA #$0001 : STA !PALETTE_FX_INSTRUCTION_TIMER,X
    LDA #crateria_1_palette_loop : STA !PALETTE_FX_INSTRUCTION_POINTER,X

  .end
    RTS
}

crateria_1_set_fx_preinstruction:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_CRATERIA_LIGHTNING : BNE .suppress

    ; Set vanilla parameters
    LDA #$EC59 : STA !PALETTE_FX_PREINSTRUCTION,X
    LDY #$EB3F
    RTS

  .suppress
    LDA #crateria_1_palette_fx_preinstruction : STA !PALETTE_FX_PREINSTRUCTION,X
    RTS
}

crateria_1_palette:
    dw #crateria_1_set_fx_preinstruction
    dw $C655, $00A8
crateria_1_palette_loop:
    dw $00F0, $2D6C, $294B, $252A, $2109, $1CE8, $18C7, $14A6, $1085, $C595
    dw $C61E, #crateria_1_palette_loop

escape_flashing_palette_color_index:
{
    ; Start with copy of original logic at $8DC655
    LDA $0000,Y : STA $1E8D,X
    LDA !sram_suppress_flashing : BIT !SUPPRESS_ESCAPE_FLASHING : BNE .suppress

    ; Jump to vanilla palette loop
    LDA $0002,Y : TAY
    RTS

  .suppress
    INY : INY : INY : INY
    RTS
}

tourian_10_palette:
    dw #escape_flashing_palette_color_index
    dw $0070, $F895
tourian_10_palette_loop:
    dw $0004, $1471, $104C, $0848, $0422, $C595
    dw $C61E, #tourian_10_palette_loop

tourian_20_palette:
    dw #escape_flashing_palette_color_index
    dw $00A8, $F94D
tourian_20_palette_loop:
    dw $0002, $4636, $2D70, $18C9, $0844, $080D, $0809, $C5AB, $6B5F, $C595
    dw $C61E, #tourian_20_palette_loop

tourian_40_palette:
    dw #escape_flashing_palette_color_index
    dw $00E8, $F94D
tourian_40_palette_loop:
    dw $0002, $4636, $2D70, $18C9, $0844, $080D, $0809, $C5AB, $6B5F, $C595
    dw $C61E, #tourian_40_palette_loop

crateria_8_palette:
    dw #escape_flashing_palette_color_index
    dw $00A2, $FA6D
crateria_8_palette_loop:
    dw $0003, $4E14, $396E, $24C8, $C5AB, $0014, $000E, $4900, $1C60, $C599, $6F3C, $C595
    dw $C61E, #crateria_8_palette_loop

crateria_10_palette:
    dw #escape_flashing_palette_color_index
    dw $00D2, $FBC5
crateria_10_palette_loop:
    dw $0010, $35AD, $1CE7, $0C63, $C595
    dw $C61E, #crateria_10_palette_loop

crateria_20_palette:
    dw #escape_flashing_palette_color_index
    dw $00A8, $FC63
crateria_20_palette_loop:
    dw $00AA, $28C8, $2484, $1C61, $C595
    dw $C61E, #crateria_20_palette_loop

crateria_2_palette:
    dw #escape_flashing_palette_color_index
    dw $0082, $FD01
crateria_2_palette_loop:
    dw $0008, $1DAB, $1149, $10C5, $2D0F, $2D0B, $28C7, $0845, $C595
    dw $C61E, #crateria_2_palette_loop

crateria_4_palette:
    dw #escape_flashing_palette_color_index
    dw $00A2, $FE05
crateria_4_palette_loop:
    dw $0031, $48D5, $38B0, $286A, $2488, $2067, $1846, $1425, $1024, $0C23, $0C03, $0802, $C595
    dw $C61E, #crateria_4_palette_loop

warnpc $8DC2E9

org $8DF767
hook_crateria_1_palette_fx_object:
    dw #crateria_1_palette

org $8DFFCF
hook_tourian_crateria_palette_fx_objects:
    dw #tourian_10_palette
    dw $C685, #tourian_20_palette
    dw $C685, #tourian_40_palette
    dw $C685, #crateria_8_palette
    dw $C685, #crateria_10_palette
    dw $C685, #crateria_20_palette
    dw $C685, #crateria_2_palette
    dw $C685, #crateria_4_palette


%startfree(88)

pb_soft_explosion_colors:
    db $01, $01, $00
    db $02, $02, $00
    db $03, $03, $00
    db $04, $04, $00
    db $05, $05, $00
    db $06, $06, $00
    db $07, $07, $00
    db $08, $08, $00
    db $09, $09, $00
    db $08, $08, $00
    db $07, $07, $00
    db $06, $06, $00
    db $05, $05, $00
    db $04, $04, $00
    db $03, $03, $00
    db $02, $02, $00
    db $01, $01, $00
pb_transparent_explosion_colors:
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00
    db $00, $00, $00

pb_stage_1_explosion:
{
    ; Copy of $8890DF routine, except uses above power bomb transparent colors
    LDA $0592 : BMI .continue
    RTL

  .continue
    PHP : PHB : %ai16() : PHX : PHY
    JSL $888F56   ; Calculate power bomb pre-explosion HDMA object table pointers
    PEA $8800 : PLB : PLB
    %ai8() : LDA #$00 : XBA : LDY #$60
    LDA $0CED : STA $4202
    LDA $A286 : STA $4203
    NOP : NOP : NOP
    LDA $4217 : STA $12 : TAX
    PEA .loop1
    LDA $0CE7 : AND #$FF : BEQ .offscreenleft
    DEC : BEQ .onscreen
    JMP $8D46
  .onscreen
    JMP $8D04
  .offscreenleft
    JMP $8CC6

  .loop1
    NOP           ; Account for PEA skipping one byte
    STA $7EC406,X : XBA
    STA $7EC506,X : XBA
    DEX : BPL .loop1
    LDX $12 : INX
    CPX #$C0 : BEQ .loopend
    LDA #$FF
  .loop2
    STA $7EC406,X : INC
    STA $7EC506,X : DEC
    INX : CPX #$C0 : BNE .loop2
  .loopend
    LDA $0CED : LSR : LSR : LSR
    AND #$0F : STA $12
    ASL : CLC : ADC $12 : TAX
    LDA.l pb_transparent_explosion_colors,X
    ORA #$20 : STA $0074
    LDA.l pb_transparent_explosion_colors+1,X
    ORA #$40 : STA $0075
    LDA.l pb_transparent_explosion_colors+2,X
    ORA #$80 : STA $0076
    %ai16() : PLY : PLX
    LDA $0CEC : CLC : ADC $0CF0 : STA $0CEC
    CMP #$9200 : BCC .radius
    LDA #$0001 : STA $18E4,X
    INC $18CC,X : INC $18CC,X
    STZ $1908,X
    JMP .end
  .radius
    LDA $0CF0 : SEC : SBC $8890DD : STA $0CF0
  .end
    PLB : PLP : RTL
}

pb_stage_2_explosion:
{
    ; Copy of $8891A8 routine, except uses above power bomb transparent colors
    LDA $0592 : BMI .continue
    RTL

  .continue
    PHP : PHB : %ai16() : PHX : PHY
    JSL $888F56   ; Calculate power bomb pre-explosion HDMA object table pointers
    PEA $8800 : PLB : PLB
    LDY $0CF2 : LDX #$0000 : %a8()
    PEA .loop1
    LDA $0CE7 : AND #$FF : BEQ .offscreenleft
    DEC : BEQ .onscreen
    JMP $8C3A
  .onscreen
    JMP $8C12
  .offscreenleft
    JMP $8BEA

  .loop1
    NOP           ; Account for PEA skipping one byte
    %ai8() : LDA #$00 : XBA
    LDA $0CED : LSR : LSR : LSR
    AND #$0F : STA $12
    ASL : CLC : ADC $12 : TAX
    LDA.l pb_transparent_explosion_colors,X
    ORA #$20 : STA $0074
    LDA.l pb_transparent_explosion_colors+1,X
    ORA #$40 : STA $0075
    LDA.l pb_transparent_explosion_colors+2,X
    ORA #$80 : STA $0076
    %ai16() : PLY : PLX
    LDA $0CF2 : CLC : ADC #$00C0 : STA $0CF2
    CMP #$A206 : BNE .radius
    LDA #$0001 : STA $18E4,X
    INC $18CC,X : INC $18CC,X
    STZ $1908,X
  .radius
    LDA $0CEC : CLC : ADC $0CF0 : BCS .end
    STA $0CEC
    LDA $0CF0 : SEC : SBC $8890DD : STA $0CF0
  .end
    PLB : PLP : RTL
}

pb_stage_3_explosion:
{
    ; Copy of $888DE9 routine, except uses above power bomb soft colors
    LDA $0592 : BMI .continue
    RTL

  .continue
    PHP : PHB : %ai16() : PHX : PHY
    JSL $888C62   ; Calculate power bomb explosion HDMA object table pointers
    PEA $8800 : PLB : PLB
    %ai8() : LDA #$00 : XBA : LDY #$60
    LDA $0CEB : STA $4202
    LDA $A286 : STA $4203
    NOP : NOP : NOP
    LDA $4217 : STA $12 : TAX
    PEA .loop1
    LDA $0CE7 : AND #$FF : BEQ .offscreenleft
    DEC : BEQ .onscreen
    JMP $8D46
  .onscreen
    JMP $8D04
  .offscreenleft
    JMP $8CC6

  .loop1
    NOP           ; Account for PEA skipping one byte
    STA $7EC406,X : XBA
    STA $7EC506,X : XBA
    DEX : BPL .loop1
    LDX $12 : INX
    CPX #$C0 : BEQ .loopend
    LDA #$FF
  .loop2
    STA $7EC406,X : INC
    STA $7EC506,X : DEC
    INX : CPX #$C0 : BNE .loop2
  .loopend
    LDA $0CEB : LSR : LSR : LSR
    AND #$1F : STA $12
    ASL : CLC : ADC $12 : TAX
    LDA.l pb_soft_explosion_colors,X
    ORA #$20 : STA $0074
    LDA.l pb_soft_explosion_colors+1,X
    ORA #$40 : STA $0075
    LDA.l pb_soft_explosion_colors+2,X
    ORA #$80 : STA $0076
    %ai16() : PLY : PLX
    LDA $0CEA : CLC : ADC $0CF0 : STA $0CEA
    CMP #$8600 : BCC .radius
    LDA #$0001 : STA $18E4,X
    INC $18CC,X : INC $18CC,X
    STZ $1908,X
    JMP .end
  .radius
    LDA $0CF0 : CLC : ADC $888DE7 : STA $0CF0
  .end
    PLB : PLP : RTL
}

pb_stage_4_explosion:
{
    ; Copy of $888EB2 routine, except uses above power bomb soft colors
    LDA $0592 : BMI .continue
    RTL

  .continue
    PHP : PHB : %ai16() : PHX : PHY
    JSL $888C62   ; Calculate power bomb explosion HDMA object table pointers
    PEA $8800 : PLB : PLB
    LDY $0CF2 : LDX #$0000 : %a8()
    PEA .loop1
    LDA $0CE7 : AND #$FF : BEQ .offscreenleft
    DEC : BEQ .onscreen
    JMP $8C3A
  .onscreen
    JMP $8C12
  .offscreenleft
    JMP $8BEA

  .loop1
    NOP           ; Account for PEA skipping one byte
    %ai8() : LDA #$00 : XBA
    LDA $0CEB : LSR : LSR : LSR
    AND #$1F : STA $12
    ASL : CLC : ADC $12 : TAX
    LDA.l pb_soft_explosion_colors,X
    ORA #$20 : STA $0074
    LDA.l pb_soft_explosion_colors+1,X
    ORA #$40 : STA $0075
    LDA.l pb_soft_explosion_colors+2,X
    ORA #$80 : STA $0076
    %ai16() : PLY : PLX
    LDA $0CF2 : CLC : ADC #$00C0 : STA $0CF2
    CMP #$9F06 : BNE .radius
    LDA #$0001 : STA $18E4,X
    INC $18CC,X : INC $18CC,X
    STZ $1908,X
    LDA #$0020 : STA $1938,X
  .radius
    LDA $0CEA : CLC : ADC $0CF0 : BCS .end
    STA $0CEA
    LDA $0CF0 : CLC : ADC $888DE7 : STA $0CF0
  .end
    PLB : PLP : RTL
}

cf_stage_1_explosion:
{
    ; Copy of $88A552 routine, except uses above power bomb soft colors
    LDA $0592 : BMI .continue
    RTL

  .continue
    PHP : PHB : %ai16() : PHX : PHY
    JSL $888C62   ; Calculate power bomb explosion HDMA object table pointers
    PEA $8800 : PLB : PLB
    %ai8() : LDA #$00 : XBA : LDY #$60
    LDA $0CEB : STA $4202
    LDA $A286 : STA $4203
    NOP : NOP : NOP
    LDA $4217 : STA $12 : TAX
    PEA .loop1
    LDA $0CE7 : AND #$FF : BEQ .offscreenleft
    DEC : BEQ .onscreen
    JMP $8D46
  .onscreen
    JMP $8D04
  .offscreenleft
    JMP $8CC6

  .loop1
    NOP           ; Account for PEA skipping one byte
    STA $7EC406,X : XBA
    STA $7EC506,X : XBA
    DEX : BPL .loop1
    LDX $12 : INX
    CPX #$C0 : BEQ .loopend
    LDA #$FF
  .loop2
    STA $7EC406,X : INC
    STA $7EC506,X : DEC
    INX : CPX #$C0 : BNE .loop2
  .loopend
    LDA $0CEB : LSR : LSR : LSR
    AND #$1F : STA $12
    ASL : CLC : ADC $12 : TAX
    LDA.l pb_soft_explosion_colors,X
    ORA #$20 : STA $0074
    LDA.l pb_soft_explosion_colors+1,X
    ORA #$40 : STA $0075
    LDA.l pb_soft_explosion_colors+2,X
    ORA #$80 : STA $0076
    %ai16() : PLY : PLX
    LDA $0CEA : CLC : ADC $0CF0 : STA $0CEA
    CMP #$2000 : BCC .radius
    LDA #$0001 : STA $18E4,X
    INC $18CC,X : INC $18CC,X
    STZ $1908,X
    JMP .end
  .radius
    LDA $0CF0 : CLC : ADC $888DE7 : STA $0CF0
  .end
    PLB : PLP : RTL
}

pb_instruction_list:
    ; Copy of $888ACE instruction list, except uses above power bomb soft colors
    dw $85B4      ; Power bomb explosion - stage 1 setup
    dl $888B14
    dw $8570      ; Pre-instruction = power bomb explosion - stage 1
    dl #pb_stage_1_explosion
    dw $8682      ; Sleep
    dw $85B4      ; Power bomb explosion - stage 2 setup
    dl $888B32
    dw $8570      ; Pre-instruction = power bomb explosion - stage 2
    dl #pb_stage_2_explosion
    dw $8682      ; Sleep
    dw $85B4      ; Power bomb explosion - stage 3 setup
    dl $888B39
    dw $8570      ; Pre-instruction = power bomb explosion - stage 3
    dl #pb_stage_3_explosion
    dw $8682      ; Sleep
    dw $85B4      ; Power bomb explosion - stage 4 setup
    dl $888B47
    dw $8570      ; Pre-instruction = power bomb explosion - stage 4
    dl #pb_stage_4_explosion
    dw $8682      ; Sleep
    dw $8570      ; Pre-instruction = power bomb explosion - stage 5
    dl $888B98
    dw $8682      ; Sleep
    dw $85B4      ; Power bomb explosion - clean up
    dl $888B4E
    dw $8682      ; Sleep
    dw $8569      ; Delete

cf_instruction_list:
    ; Copy of $88A2BD instruction list, except uses above power bomb soft colors
    dw $85B4      ; Crystal flash - setup - part 1
    dl $88A2E4
    dw $85B4      ; Crystal flash - setup - part 2
    dl $88A309
    dw $8570      ; Pre-instruction = crystal flash - stage 1 - explosion
    dl #cf_stage_1_explosion
    dw $8682      ; Sleep
    dw $8570      ; Pre-instruction = crystal flash - stage 2 - after-glow
    dl $88A35D
    dw $8682      ; Sleep
    dw $85B4      ; Crystal flash - clean up
    dl $88A317
    dw $8682      ; Sleep
    dw $8569      ; Delete

pb_cf_set_data_bank:
{
    ; Start with copy of original instruction at $88866A
    PHX : LDA $18C0,X : AND #$00FF : TAX
    %a8() : LDA #$7E : STA $4307,X : %a16() : PLX
    LDA !sram_suppress_flashing : BIT !SUPPRESS_POWER_BOMB_FLASH : BNE .suppress
    INY : RTS

  .suppress
    CPY #$A2C2 : BEQ .suppress_cf
    LDY #pb_instruction_list
    RTS

  .suppress_cf
    LDY #cf_instruction_list
    RTS
}

wait_to_rise_earthquake_start:
{
    LDA #$0015 : STA $183E
    LDA #$0020 : TSB $1840
    JMP wait_to_rise_earthquake_end
}

rising_earthquake_start:
{
    LDA #$0015 : STA $183E
    LDA #$0020 : TSB $1840
    JMP rising_earthquake_end
}

%endfree(88)


org $888AD1
hook_pb_instruction_list:
    dw #pb_cf_set_data_bank

org $88A2C0
hook_cf_instruction_list:
    dw #pb_cf_set_data_bank

org $88B36A
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE wait_to_rise_earthquake_end
    JMP wait_to_rise_earthquake_start
wait_to_rise_earthquake_end:

org $88B385
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE rising_earthquake_end
    JMP rising_earthquake_start
rising_earthquake_end:


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
    JMP cutscenes_mb_fast_init
  .check_fast_mb
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BNE .fast_mb
    JMP cutscenes_mb_normal_init
}
%warnpc($A98814, $A98824)

if !FEATURE_PAL
org $A9882D
else
org $A9881D
endif
    LDA.w #cutscenes_mb_fake_death_pause

if !FEATURE_PAL
org $A98851
else
org $A98841
endif
    LDA.w #cutscenes_mb_fake_death_lock

if !FEATURE_PAL
org $A98888
else
org $A98878
endif
    LDA.w #cutscenes_mb_fake_death_unlock

if !FEATURE_PAL
org $A98899
else
org $A98889
endif
    JSR cutscenes_mb_begin_screen_flashing

if !FEATURE_PAL
org $A98986
else
org $A98976
endif
    LDA.w #cutscenes_mb_bottom_left_tube

if !FEATURE_PAL
org $A989B8
else
org $A989A8
endif
    LDA.w #cutscenes_mb_ceiling_column_9

if !FEATURE_PAL
org $A989EA
else
org $A989DA
endif
    LDA.w #cutscenes_mb_ceiling_column_6

if !FEATURE_PAL
org $A98A12
else
org $A98A02
endif
    LDA.w #cutscenes_mb_bottom_right_tube

if !FEATURE_PAL
org $A98A3A
else
org $A98A2A
endif
    LDA.w #cutscenes_mb_bottom_middle_left_tube

if !FEATURE_PAL
org $A98A6C
else
org $A98A5C
endif
    LDA.w #cutscenes_mb_ceiling_column_7

if !FEATURE_PAL
org $A98A9E
else
org $A98A8E
endif
    LDA.w #cutscenes_mb_ceiling_column_8

if !FEATURE_PAL
org $A98C15
else
org $A98C05
endif
    JMP cutscenes_mb_first_earthquake_start
    NOP : NOP : NOP : NOP
cutscenes_mb_first_earthquake_end:

if !FEATURE_PAL
org $A98D77
else
org $A98D67
endif
    ; Do not initialize health here, wait until later
    LDA.w #cutscenes_mb_setup_fight_or_escape
    BRA $04

if !FEATURE_PAL
org $A98D8F
else
org $A98D7F
endif
    LDA.w #cutscenes_mb_pause_phase_2

if !FEATURE_PAL
org $A98DCD
else
org $A98DBD
endif
    LDA.w #cutscenes_mb_load_tiles_phase_2

if !FEATURE_PAL
org $A98E56
else
org $A98E46
endif
    LDA.w #cutscenes_mb_raise_mb

if !FEATURE_PAL
org $A98EDC
else
org $A98ECC
endif
    JMP cutscenes_mb_choose_phase_2_or_3

if !FEATURE_PAL
org $A98EF8
else
org $A98EE8
endif
    LDA.w #cutscenes_mb_shaking_head

if !FEATURE_PAL
org $A98F11
else
org $A98F01
endif
    LDA.w #cutscenes_mb_bring_head_back_up

if !FEATURE_PAL
org $A9AF16
else
org $A9AF06
endif
    LDA.w #cutscenes_mb_death_move_to_back_wall

if !FEATURE_PAL
org $A9AF57
else
org $A9AF47
endif
    LDA.w #cutscenes_mb_death_first_stumble

if !FEATURE_PAL
org $A9B016
else
org $A9B006
endif
    LDA.w #cutscenes_mb_death_final_explosions

if !FEATURE_PAL
org $A9B137
else
org $A9B127
endif
    JMP cutscenes_mb_death_brain_falling

if !FEATURE_PAL
org $A9B154
else
org $A9B144
endif
    JMP cutscenes_mb_death_earthquake_start

if !FEATURE_PAL
org $A9B15B
else
org $A9B14B
endif
cutscenes_mb_death_earthquake_end:

if !FEATURE_PAL
org $A9B176
else
org $A9B166
endif
    LDA.w #cutscenes_mb_death_load_corpse

if !FEATURE_PAL
org $A9B1BB
else
org $A9B1AB
endif
    LDA.w #cutscenes_mb_death_corpse_tips_over

if !FEATURE_PAL
org $A9B1FB
else
org $A9B1EB
endif
    ; Make dead MB invisible and intangible, in case we jump here from a preset
    ORA #$0500

if !FEATURE_PAL
org $A9B2E1
else
org $A9B289
endif
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE cutscenes_mb_escape_earthquake_end
    JMP cutscenes_mb_escape_earthquake_start
cutscenes_mb_escape_earthquake_end:

if !FEATURE_PAL
org $A9B62E
else
org $A9B5E1
endif
    JSL cutscenes_mb_custom_damage


%startfree(A9)

cutscenes_mb_fast_init:
{
    ; Set health to non-zero value indicating we want fast logic
    ; If loading a preset, certain flags may already be set
    ; which allow MB to take damage, so setting value high,
    ; but also set below 18000 to avoid confusion with vanilla logic
    LDA #$464F : STA !ENEMY_HP+$40

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

cutscenes_mb_normal_init:
{
    ; Overwritten logic with the song
    LDA #$0001 : STA $7E783A : STA $7E7800
    JSL $90A7E2
    LDA #$0006 : JSL !MUSIC_ROUTINE

if !FEATURE_PAL
    JMP $8824
else
    JMP $8814
endif
}

cutscenes_mb_fake_death_pause:
{
    LDA !ENEMY_HP+$40 : BEQ .continue
    LDA #$0001 : STA !ENEMY_VAR_5

  .continue
if !FEATURE_PAL
    LDA #$8839
else
    LDA #$8829
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_fake_death_lock:
{
    LDA !ENEMY_HP+$40 : BEQ .continue
    LDA #$0001 : STA !ENEMY_VAR_5

  .continue
    LDA #cutscenes_mb_fake_death_music
    STA !ENEMY_FUNCTION_POINTER
    ; Fall through to next method
}

cutscenes_mb_fake_death_music:
{
    DEC !ENEMY_VAR_5 : BPL .return

    TDC : JSL !MUSIC_ROUTINE
    LDA $7ED82D : BIT #$0002 : BEQ .phase2
    LDA $7ED821 : BIT #$0040 : BEQ .phase3
    LDA #$FF24
    BRA .load_music

  .phase2
    LDA #$FF21
    BRA .load_music

  .phase3
    LDA #$FF48

  .load_music
    JSL !MUSIC_ROUTINE

if !FEATURE_PAL
    LDA #$887C
else
    LDA #$886C
endif
    STA !ENEMY_FUNCTION_POINTER

    LDA #$000C : STA !ENEMY_VAR_5
    LDA !ENEMY_HP+$40 : BEQ .continue
    LDA #$0002 : STA !ENEMY_VAR_5

  .continue
    JMP (!ENEMY_FUNCTION_POINTER)

  .return
    RTS
}

cutscenes_mb_fake_death_unlock:
{
    LDA !ENEMY_HP+$40 : BEQ .continue
    LDA #$0001 : STA !ENEMY_VAR_5

  .continue
if !FEATURE_PAL
    LDA #$8894
else
    LDA #$8884
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_begin_screen_flashing:
{
    LDA #$0001 : STA $7E781E
    LDA !sram_suppress_flashing : BIT !SUPPRESS_MB1_FLASHING : BNE .suppress
if !FEATURE_PAL
    LDA #$D093
else
    LDA #$D046
endif
    STA $7E781C
    RTS

  .suppress
    TDC : STA $7E781C
    RTS
}

cutscenes_mb_bottom_left_tube:
{
    LDA !ENEMY_HP+$40 : BEQ .continue
    LDA #$0010 : STA !ENEMY_VAR_5+$40

  .continue
if !FEATURE_PAL
    LDA #$8993
else
    LDA #$8983
endif
    STA !ENEMY_VAR_4+$40
    JMP (!ENEMY_VAR_4+$40)
}

cutscenes_mb_ceiling_column_9:
{
    LDA !ENEMY_HP+$40 : BEQ .continue
    LDA #$0010 : STA !ENEMY_VAR_5+$40

  .continue
if !FEATURE_PAL
    LDA #$89C5
else
    LDA #$89B5
endif
    STA !ENEMY_VAR_4+$40
    JMP (!ENEMY_VAR_4+$40)
}

cutscenes_mb_ceiling_column_6:
{
    LDA !ENEMY_HP+$40 : BEQ .continue
    LDA #$0010 : STA !ENEMY_VAR_5+$40

  .continue
if !FEATURE_PAL
    LDA #$89F7
else
    LDA #$89E7
endif
    STA !ENEMY_VAR_4+$40
    JMP (!ENEMY_VAR_4+$40)
}

cutscenes_mb_bottom_right_tube:
{
    LDA !ENEMY_HP+$40 : BEQ .continue
    LDA #$0010 : STA !ENEMY_VAR_5+$40

  .continue
if !FEATURE_PAL
    LDA #$8A1F
else
    LDA #$8A0F
endif
    STA !ENEMY_VAR_4+$40
    JMP (!ENEMY_VAR_4+$40)
}

cutscenes_mb_bottom_middle_left_tube:
{
    LDA !ENEMY_HP+$40 : BEQ .continue
    LDA #$0010 : STA !ENEMY_VAR_5+$40

  .continue
if !FEATURE_PAL
    LDA #$8A47
else
    LDA #$8A37
endif
    STA !ENEMY_VAR_4+$40
    JMP (!ENEMY_VAR_4+$40)
}

cutscenes_mb_ceiling_column_7:
{
    LDA !ENEMY_HP+$40 : BEQ .continue
    LDA #$0010 : STA !ENEMY_VAR_5+$40

  .continue
if !FEATURE_PAL
    LDA #$8A79
else
    LDA #$8A69
endif
    STA !ENEMY_VAR_4+$40
    JMP (!ENEMY_VAR_4+$40)
}

cutscenes_mb_ceiling_column_8:
{
    LDA !ENEMY_HP+$40 : BEQ .continue
    LDA #$0010 : STA !ENEMY_VAR_5+$40

  .continue
if !FEATURE_PAL
    LDA #$8AAB
else
    LDA #$8A9B
endif
    STA !ENEMY_VAR_4+$40
    JMP (!ENEMY_VAR_4+$40)
}

cutscenes_mb_setup_fight_or_escape:
{
    LDA $7ED821 : BIT #$0040 : BEQ .mb

    ; Disable MB hitboxes
    TDC : STA $7E7808
    ; Jump to escape sequence
if !FEATURE_PAL
    JMP $B1F8
else
    JMP $B1E8
endif

  .mb
    LDA !ENEMY_HP+$40 : BEQ .init_health
    TDC : STA !ENEMY_VAR_5 : STA !ENEMY_HP+$40
    BRA .continue

  .init_health
    LDA #$4650 : STA !ENEMY_HP+$40

  .continue
if !FEATURE_PAL
    LDA #$8D89
else
    LDA #$8D79
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_pause_phase_2:
{
    LDA !ENEMY_HP+$40 : BNE .continue
    TDC : STA !ENEMY_VAR_5
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .lower_acid
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ .continue

  .lower_acid
    LDA #$00E8 : STA !LAVA_ACID_Y : STA !FX_BASE_Y

  .continue
if !FEATURE_PAL
    LDA #$8D9B
else
    LDA #$8D8B
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_load_tiles_phase_2:
{
    LDA !ENEMY_HP+$40 : BNE .continue
    TDC : STA !ENEMY_VAR_5

  .continue
if !FEATURE_PAL
    LDA #$8DD3
else
    LDA #$8DC3
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_raise_mb:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA !FRAME_COUNTER : AND #$0001 : BNE .done
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
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)

  .done
    RTS
}

cutscenes_mb_choose_phase_2_or_3:
{
    LDA $7ED82D : BIT #$0002 : BEQ .phase2

    ; Phase 3
    LDA #$0004 : STA $7E7800

    ; 36000 health
    LDA #$8CA0 : STA !ENEMY_HP+$40

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
    LDA #$4650 : STA !ENEMY_HP+$40
if !FEATURE_PAL
    JMP $8EE1
else
    JMP $8ED1
endif
}

cutscenes_mb_shaking_head:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #$000A : STA !ENEMY_VAR_5

  .continue
if !FEATURE_PAL
    LDA #$8F05
else
    LDA #$8EF5
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_bring_head_back_up:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #$0060 : STA !ENEMY_VAR_5

  .continue
if !FEATURE_PAL
    LDA #$8F24
else
    LDA #$8F14
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_death_move_to_back_wall:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #$000A : STA !ENEMY_VAR_5

  .continue
if !FEATURE_PAL
    LDA #$AF22
else
    LDA #$AF12
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_death_first_stumble:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #$000A : STA !ENEMY_VAR_5

  .continue
if !FEATURE_PAL
    LDA #$AF64
else
    LDA #$AF54
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_death_final_explosions:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    TDC : STA !ENEMY_VAR_5

  .continue
if !FEATURE_PAL
    LDA #$B023
else
    LDA #$B013
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_death_brain_falling:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #cutscenes_mb_death_brain_falling_fast
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)

  .continue
if !FEATURE_PAL
    LDA #$B13D
else
    LDA #$B12D
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_death_brain_falling_fast:
{
    ; Vanilla logic except add $40 instead of $20
    LDA !ENEMY_VAR_5 : CLC : ADC #$0040 : STA !ENEMY_VAR_5
    XBA : AND #$00FF : CLC : ADC !ENEMY_Y+$40
    CMP #$00C4 : BCC .rts

if !FEATURE_PAL
    JMP $B154
else
    JMP $B144
endif

  .rts
    STA !ENEMY_Y+$40
    RTS
}

cutscenes_mb_death_load_corpse:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    TDC : STA !ENEMY_VAR_5

  .continue
if !FEATURE_PAL
    LDA #$B183
else
    LDA #$B173
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_death_corpse_tips_over:
{
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .continue
    LDA #$0030 : STA !ENEMY_VAR_5

  .continue
if !FEATURE_PAL
    LDA #$B1C8
else
    LDA #$B1B8
endif
    STA !ENEMY_FUNCTION_POINTER
    JMP (!ENEMY_FUNCTION_POINTER)
}

cutscenes_mb_first_earthquake_start:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .suppress
    LDA #$0019 : STA !EARTHQUAKE_TYPE
    LDA #$0014 : STA !EARTHQUAKE_TIMER

  .suppress
    LDA #$0025 : JSL $8090CB
    JMP cutscenes_mb_first_earthquake_end
}

cutscenes_mb_death_earthquake_start:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .suppress
    LDA #$0002 : STA !EARTHQUAKE_TYPE
    LDA #$0014 : STA !EARTHQUAKE_TIMER

  .suppress
    LDA #$0025 : JSL $8090CB
    JMP cutscenes_mb_death_earthquake_end
}

cutscenes_mb_escape_earthquake_start:
{
    LDA #$0005 : STA !EARTHQUAKE_TYPE
    LDA #$FFFF : STA !EARTHQUAKE_TIMER
    JMP cutscenes_mb_escape_earthquake_end
}

cutscenes_mb_custom_damage:
{
    LDA !sram_suit_properties : AND !SUIT_PROPERTIES_MASK
    CMP #$0004 : BPL .dash_custom_damage
    JML $A6D453

  .dash_custom_damage
    LDX !ENEMY_INDEX
    LDA !ENEMY_ID,X : TAX
    LDA $A00006,X : STA $12
    LDA !SAMUS_ITEMS_EQUIPPED : AND #$0021 : BEQ .end
    LSR $12
    BIT #$0020 : BEQ .end
    LSR $12
  .end
    LDA $12
    JML $91DF51
}

%endfree(A9)

