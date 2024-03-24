
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

org $80FF80
print pc, " cutscenes bank80 start"

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

warnpc $80FFB0  ; header
print pc, " cutscenes bank80 end"


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
    NOP : NOP
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
    NOP : NOP
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


org $8BF800
print pc, " cutscenes start"

cutscenes_nintendo_logo_hijack:
{
    JSL $80834B     ; hijacked code

    LDA !sram_cutscenes : AND !CUTSCENE_QUICKBOOT : BNE .quickboot
    STA !ram_quickboot_spc_state    ; A is 0
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
    LDA $0F80,x : ADC #$8000 : STA $0F80,x
    LDA $0F7E,x : ADC #$0004 : STA $0F7E,x
    RTL
  .slow
    CLC
    LDA $0F80,x : ADC #$8000 : STA $0F80,x
    LDA $0F7E,x : ADC #$0001 : STA $0F7E,x
    RTL
}

cutscenes_sub_elevator_speed:
{
    LDA !sram_fast_elevators : BEQ .slow
    LDY #$0002 : JSL ih_adjust_realtime
    SEC
    LDA $0F80,x : SBC #$8000 : STA $0F80,x
    LDA $0F7E,x : SBC #$0004 : STA $0F7E,x
    RTL
  .slow
    SEC
    LDA $0F80,x : SBC #$8000 : STA $0F80,x
    LDA $0F7E,x : SBC #$0001 : STA $0F7E,x
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
    STX $092F
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

cutscenes_game_over:
{
    ; check for cutscene flag or whatever
    LDA !sram_cutscenes : BIT !CUTSCENE_SKIP_GAMEOVER : BEQ .game_over
if !FEATURE_SD2SNES
    ; check if valid savestate
    LDA !SRAM_SAVED_STATE : CMP #$5AFE : BNE .no_savestate
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

print pc, " cutscenes end"
warnpc $8BFA00 ; misc.asm


; Non-flashing palette instruction
; Overwriting unused C19A-C2E8 space
org $8DC19A
crateria_1_palette_fx_preinstruction:
{
    ; Start with copy of original preinstruction at $8DEC59
    LDA $0AFA : CMP #$0380 : BCS .end
    LDA #$0001 : STA $1ECD,X
    LDA #crateria_1_palette_loop : STA $1EBD,X

  .end
    RTS
}

crateria_1_set_fx_preinstruction:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_CRATERIA_LIGHTNING : BNE .suppress

    ; Set vanilla parameters
    LDA #$EC59 : STA $1EAD,X
    LDY #$EB3F
    RTS

  .suppress
    LDA #crateria_1_palette_fx_preinstruction : STA $1EAD,X
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


org $88F000
print pc, " cutscenes bank88 start"

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
    LDA $0CF0 : CLC : ADC.l $888DE7 : STA $0CF0
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
    LDA $0CF0 : CLC : ADC.l $888DE7 : STA $0CF0
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
    LDA $0CF0 : CLC : ADC.l $888DE7 : STA $0CF0
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

print pc, " cutscenes bank88 end"


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
    LDA #cutscenes_mb_fake_death_pause

if !FEATURE_PAL
org $A98851
else
org $A98841
endif
    LDA #cutscenes_mb_fake_death_lock

if !FEATURE_PAL
org $A98888
else
org $A98878
endif
    LDA #cutscenes_mb_fake_death_unlock

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
    LDA #cutscenes_mb_bottom_left_tube

if !FEATURE_PAL
org $A989B8
else
org $A989A8
endif
    LDA #cutscenes_mb_ceiling_column_9

if !FEATURE_PAL
org $A989EA
else
org $A989DA
endif
    LDA #cutscenes_mb_ceiling_column_6

if !FEATURE_PAL
org $A98A12
else
org $A98A02
endif
    LDA #cutscenes_mb_bottom_right_tube

if !FEATURE_PAL
org $A98A3A
else
org $A98A2A
endif
    LDA #cutscenes_mb_bottom_middle_left_tube

if !FEATURE_PAL
org $A98A6C
else
org $A98A5C
endif
    LDA #cutscenes_mb_ceiling_column_7

if !FEATURE_PAL
org $A98A9E
else
org $A98A8E
endif
    LDA #cutscenes_mb_ceiling_column_8

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
    LDA #cutscenes_mb_setup_fight_or_escape
    BRA $04

if !FEATURE_PAL
org $A98D8F
else
org $A98D7F
endif
    LDA #cutscenes_mb_pause_phase_2

if !FEATURE_PAL
org $A98DCD
else
org $A98DBD
endif
    LDA #cutscenes_mb_load_tiles_phase_2

if !FEATURE_PAL
org $A98E56
else
org $A98E46
endif
    LDA #cutscenes_mb_raise_mb

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
    LDA #cutscenes_mb_shaking_head

if !FEATURE_PAL
org $A98F11
else
org $A98F01
endif
    LDA #cutscenes_mb_bring_head_back_up

if !FEATURE_PAL
org $A9AF16
else
org $A9AF06
endif
    LDA #cutscenes_mb_death_move_to_back_wall

if !FEATURE_PAL
org $A9AF57
else
org $A9AF47
endif
    LDA #cutscenes_mb_death_first_stumble

if !FEATURE_PAL
org $A9B016
else
org $A9B006
endif
    LDA #cutscenes_mb_death_final_explosions

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
    NOP : NOP : NOP : NOP
cutscenes_mb_death_earthquake_end:

if !FEATURE_PAL
org $A9B176
else
org $A9B166
endif
    LDA #cutscenes_mb_death_load_corpse

if !FEATURE_PAL
org $A9B1BB
else
org $A9B1AB
endif
    LDA #cutscenes_mb_death_corpse_tips_over

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


org $A9FBC0
print pc, " cutscenes MB start"

cutscenes_mb_fast_init:
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

cutscenes_mb_normal_init:
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
    LDA #cutscenes_mb_fake_death_music
    STA $0FA8
    ; Fall through to next method
}

cutscenes_mb_fake_death_music:
{
    DEC $0FB2 : BPL .return

    LDA #$0000 : JSL !MUSIC_ROUTINE
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
    STA $0FA8

    LDA #$000C : STA $0FB2
    LDA $0FCC : BEQ .continue
    LDA #$0002 : STA $0FB2
  .continue
    JMP ($0FA8)

  .return
    RTS
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
    LDA #$0000 : STA $7E781C
    RTS
}

cutscenes_mb_bottom_left_tube:
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

cutscenes_mb_ceiling_column_9:
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

cutscenes_mb_ceiling_column_6:
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

cutscenes_mb_bottom_right_tube:
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

cutscenes_mb_bottom_middle_left_tube:
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

cutscenes_mb_ceiling_column_7:
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

cutscenes_mb_ceiling_column_8:
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

cutscenes_mb_setup_fight_or_escape:
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

cutscenes_mb_pause_phase_2:
{
    LDA $0FCC : BNE .continue
    LDA #$0000 : STA $0FB2
    LDA !sram_cutscenes : BIT !CUTSCENE_FAST_MB : BEQ .lower_acid
    LDA !sram_room_layout : BIT !ROOM_LAYOUT_DASH_RECALL : BEQ .continue

  .lower_acid
    LDA #$00E8 : STA $1962 : STA $1978

  .continue
if !FEATURE_PAL
    LDA #$8D9B
else
    LDA #$8D8B
endif
    STA $0FA8
    JMP ($0FA8)
}

cutscenes_mb_load_tiles_phase_2:
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

cutscenes_mb_death_move_to_back_wall:
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
    CMP #$00C4 : BCC .rts

if !FEATURE_PAL
    JMP $B154
else
    JMP $B144
endif

  .rts
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

cutscenes_mb_first_earthquake_start:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .suppress
    LDA #$0019 : STA $183E
    LDA #$0014 : STA $1840

  .suppress
    LDA #$0025 : JSL $8090CB
    JMP cutscenes_mb_first_earthquake_end
}

cutscenes_mb_death_earthquake_start:
{
    LDA !sram_suppress_flashing : BIT !SUPPRESS_EARTHQUAKE : BNE .suppress
    LDA #$0002 : STA $183E
    LDA #$0014 : STA $1840

  .suppress
    LDA #$0025 : JSL $8090CB
    JMP cutscenes_mb_death_earthquake_end
}

cutscenes_mb_escape_earthquake_start:
{
    LDA #$0005 : STA $183E
    LDA #$FFFF : STA $1840
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

print pc, " cutscenes MB end"

