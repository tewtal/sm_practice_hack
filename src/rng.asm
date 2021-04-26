; Phantoon hijacks
{
    ; 1st pattern
    org $A7D5B5
        ; $A7:D5B5 22 11 81 80 JSL $808111[$80:8111]
        JSL hook_phantoon_1st_dir_rng

    org $A7D5A6
        ; $A7:D5A6 AD B6 05    LDA $05B6  [$7E:05B6] ; Frame counter
        ; $A7:D5A9 4A          LSR A
        JSL hook_phantoon_1st_pat

    ; 2nd pattern
    org $A7D6E2
        ; $A7:D6E2 22 11 81 80 JSL $808111[$80:8111]
        JSL hook_phantoon_2nd_dir_rng

    org $A7D08B
        ; $A7:D08B AD B6 05    LDA $05B6  [$7E:05B6] ; Frame counter
        ; $A7:D08E 89 01 00    BIT #$0001
        JSL hook_phantoon_2nd_dir_2
        NOP : NOP

    org $A7D07C ; hijack, RNG call for second pattern
        ; $A7:D07C 22 11 81 80 JSL $808111[$80:8111]
        JSL hook_phantoon_2nd_pat
}


; Botwoon hijacks
{
    org $B39943
        ; $B3:9943 22 11 81 80 JSL $808111[$80:8111]
        JSL hook_botwoon_rng
}

; "Set rng" hijacks
{
    ; $A3:AB0C A9 25 00    LDA #$0025
    ; $A3:AB0F 8D E5 05    STA $05E5  [$7E:05E5]
    ; $A3:AB12 22 11 81 80 JSL $808111[$80:8111]
    org $A3AB12
        JSL hook_hopper_set_rng

    ; $A2:B588 A9 11 00    LDA #$0011
    ; $A2:B58B 8D E5 05    STA $05E5  [$7E:05E5]
    org $A2B588
        JSL hook_lavarocks_set_rng
        NOP #2

    ; $A8:B798 A9 17 00    LDA #$0017
    ; $A8:B79B 8D E5 05    STA $05E5  [$7E:05E5]
    org $A8B798
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


hook_botwoon_rng:
    JSL $808111 ; Trying to preserve the number of RNG calls being done in the frame

    LDA !ram_botwoon_rng : BEQ .no_manip

    ASL #3 : DEC
    RTL

  .no_manip
    LDA $05E5
    RTL


phantoon_dirs:
db $FF
db $01, $01, $01
db $00, $00, $00


phantoon_pats:
db $FF
db $01, $02, $03
db $01, $02, $03


print pc, " rng end"

