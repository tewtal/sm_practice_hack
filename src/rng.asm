; Phantoon hijacks
{
    ; 1st pattern
if !FEATURE_PAL
    org $A7D5E9
else
    org $A7D5B5
endif
        ; $A7:D5B5 22 11 81 80 JSL $808111[$80:8111]
        JSL hook_phantoon_1st_dir_rng

if !FEATURE_PAL
    org $A7D5DA
else
    org $A7D5A6
endif
        ; $A7:D5A6 AD B6 05    LDA $05B6  [$7E:05B6] ; Frame counter
        ; $A7:D5A9 4A          LSR A
        JSL hook_phantoon_1st_pat

    ; 2nd pattern
if !FEATURE_PAL
    org $A7D716
else
    org $A7D6E2
endif
        ; $A7:D6E2 22 11 81 80 JSL $808111[$80:8111]
        JSL hook_phantoon_2nd_dir_rng

if !FEATURE_PAL
    org $A7D0BF
else
    org $A7D08B
endif
        ; $A7:D08B AD B6 05    LDA $05B6  [$7E:05B6] ; Frame counter
        ; $A7:D08E 89 01 00    BIT #$0001
        JSL hook_phantoon_2nd_dir_2
        NOP : NOP

if !FEATURE_PAL
    org $A7D0B0 ; hijack, RNG call for second pattern
else
    org $A7D07C ; hijack, RNG call for second pattern
endif
        ; $A7:D07C 22 11 81 80 JSL $808111[$80:8111]
        JSL hook_phantoon_2nd_pat

if !FEATURE_PAL
    org $A7D098 ; Phantoon eye close timer
else
    org $A7D064 ; Phantoon eye close timer
endif
        JSL hook_phantoon_eyeclose
}


; Botwoon hijacks
{
if !FEATURE_PAL
    org $B39953
else
    org $B39943
endif
        ; $B3:9943 22 11 81 80 JSL $808111[$80:8111]
        JSL hook_botwoon_rng
}


; Draygon hijacks
{
if !FEATURE_PAL
    org $A58AEC
else
    org $A58ADC
endif
        JSR hook_draygon_rng_left

if !FEATURE_PAL
    org $A589AD
else
    org $A5899D
endif
        JSR hook_draygon_rng_right
}


; Crocomire hijack
{
if !FEATURE_PAL
    org $A48763
else
    org $A48753
endif
        JSR hook_crocomire_rng
}


; Kraid hijack
{
    org $A7BDBF
        JSR hook_kraid_rng
}


; "Set rng" hijacks
{
    ; $A3:AB0C A9 25 00    LDA #$0025
    ; $A3:AB0F 8D E5 05    STA $05E5  [$7E:05E5]
    ; $A3:AB12 22 11 81 80 JSL $808111[$80:8111]
if !FEATURE_PAL
    org $A3AB2E
else
    org $A3AB12
endif
        JSL hook_hopper_set_rng

    ; $A2:B588 A9 11 00    LDA #$0011
    ; $A2:B58B 8D E5 05    STA $05E5  [$7E:05E5]
if !FEATURE_PAL
    org $A2B5A0
else
    org $A2B588
endif
        JSL hook_lavarocks_set_rng
        NOP #2

    ; $A8:B798 A9 17 00    LDA #$0017
    ; $A8:B79B 8D E5 05    STA $05E5  [$7E:05E5]
if !FEATURE_PAL
    org $A8B7A8
else
    org $A8B798
endif
        JSL hook_beetom_set_rng
        NOP #2
}


; Hooks

org $83B000
print pc, " rng start"

hook_hopper_set_rng:
    LDA #$0001 : STA !ram_room_has_set_rng
    JML $808111


hook_lavarocks_set_rng:
    LDA #$0001 : STA !ram_room_has_set_rng
    LDA #$0011
    STA $05E5
    RTL


hook_beetom_set_rng:
    LDA #$0001 : STA !ram_room_has_set_rng
    LDA #$0017
    STA $05E5
    RTL


hook_phantoon_1st_dir_rng:
    JSL $808111 ; Trying to preserve the number of RNG calls being done in the frame

    LDA !ram_phantoon_rng_1 : BEQ .no_manip
    PHX : TAX : LDA.l phantoon_dirs,X : PLX : AND #$00FF
    RTL

  .no_manip
    LDA $05E5
    RTL


hook_phantoon_1st_pat:
    LDA !ram_phantoon_rng_1 : BEQ .no_manip
    PHX : TAX : LDA.l phantoon_pats,X : PLX : AND #$00FF
    RTL

  .no_manip
    LDA $05B6 : LSR A
    RTL


hook_phantoon_2nd_dir_rng:
    JSL $808111 ; Trying to preserve the number of RNG calls being done in the frame

    LDA !ram_phantoon_rng_2 : BEQ .no_manip

    PHX : TAX : LDA.l phantoon_dirs,X : PLX : AND #$00FF
    EOR #$0001
    RTL

  .no_manip
    LDA $05E5
    RTL


hook_phantoon_2nd_dir_2:
    LDA !ram_phantoon_rng_2 : BEQ .no_manip

    ; I don't quite understand this part, but it works ¯\_(ツ)_/¯
    LDA #$0001
    BIT #$0001
    RTL

  .no_manip
    LDA $05B6 : BIT #$0001
    RTL


hook_phantoon_2nd_pat:
    JSL $808111 ; Trying to preserve the number of RNG calls being done in the frame

    LDA !ram_phantoon_rng_2 : BEQ .no_manip

    PHX : TAX : LDA.l phantoon_pats,X : PLX : AND #$00FF
    RTL

  .no_manip
    LDA $05E5
    RTL

hook_phantoon_eyeclose:
{
    LDA !ram_phantoon_rng_3 : BEQ .no_manip
    DEC : ASL ; return with 0-slow, 2-mid, 4-fast
    RTL

  .no_manip
    LDA $05E5 ; return with random number
    AND #$0007 : ASL   ; overwritten code
    RTL
}

phantoon_dirs:
db $FF
db $01, $01, $01
db $00, $00, $00


phantoon_pats:
db $FF
db $01, $02, $03
db $01, $02, $03


hook_botwoon_rng:
    JSL $808111 ; Trying to preserve the number of RNG calls being done in the frame

    LDA !ram_botwoon_rng : BEQ .no_manip

    DEC : ASL #3 : INC
    RTL

  .no_manip
    LDA $05E5
    RTL

print pc, " rng end"

if !FEATURE_PAL
org $A5FA00
else
org $A5F960
endif
print pc, " draygon rng start"
hook_draygon_rng_left:
{
    LDA !ram_draygon_rng_left : BEQ .no_manip
    DEC    ; return with 1-swoop or 0-goop
    RTS
    
  .no_manip
    LDA $05E5   ; return with random number (overwritten code)
    RTS
}

hook_draygon_rng_right:
{
    LDA !ram_draygon_rng_right : BEQ .no_manip
    DEC    ; return with 1-swoop or 0-goop
    RTS
    
  .no_manip
    LDA $05E5   ; return with random number (overwritten code)
    RTS
}

print pc, " draygon rng end"

org $A4F700
print pc, " crocomire rng start"
hook_crocomire_rng:
{
    LDA !ram_crocomire_rng : BEQ .no_manip
    DEC : BEQ .step
    LDA #$0000    ; return with <400 for swipe
    RTS

  .step
    LDA #$0400    ; return with 400+ for step
    RTS

  .no_manip
    LDA $05E5     ; return with random number (overwritten code)
    RTS
}

print pc, " crocomire rng end"

org $A7FF84
print pc, " kraid rng start"
hook_kraid_rng:
{
    LDA !ram_kraid_rng : BEQ .no_manip
    DEC : DEC     ; return -1 (laggy) or 0 (laggier)
    RTS

  .no_manip
    LDA $05E5     ; return with random number (overwritten code)
    RTS
}

print pc, " kraid rng end"

