; Phantoon hijacks

org $A7D5B5 ; hijack, RNG call for first direction
    ; $A7:D5B5 22 11 81 80 JSL $808111[$80:8111]
    JSL hook_phantoon_1st_dir_rng

org $A7D6E2
    ; $A7:D6E2 22 11 81 80 JSL $808111[$80:8111]
    JSL hook_phantoon_2nd_dir_rng

org $A7D08B
    ; $A7:D08B AD B6 05    LDA $05B6  [$7E:05B6] ; Frame counter
    ; $A7:D08E 89 01 00    BIT #$0001
    JSL hook_phantoon_2nd_dir_2
    NOP : NOP

org $A7D5A6 ; hijack, code for first pattern
    ; $A7:D5A6 AD B6 05    LDA $05B6  [$7E:05B6] ; Frame counter
    ; $A7:D5A9 4A          LSR A
    JSL hook_phantoon_1st_pat

org $A7D07C ; hijack, RNG call for second pattern
    ; $A7:D07C 22 11 81 80 JSL $808111[$80:8111]
    JSL hook_phantoon_2nd_pat


; Botwoon hijacks

org $B39943
    ; $B3:9943 22 11 81 80 JSL $808111[$80:8111]
    JSL hook_botwoon_rng


; Hooks

org $83B000
print "rng start ", pc
hook_phantoon_1st_dir_rng:
    JSL $808111 ; Trying to preserve the number of RNG calls being done in the frame

    LDA !ram_phantoon_rng_1 : BEQ .no_manip
    RTL

  .no_manip
    LDA $05E5
    RTL

hook_phantoon_1st_pat:
    LDA !ram_phantoon_rng_3 : BEQ .no_manip
    RTL

  .no_manip
    LDA $05B6 : LSR A
    RTL

hook_phantoon_2nd_dir_rng:
    JSL $808111 ; Trying to preserve the number of RNG calls being done in the frame

    LDA !ram_phantoon_rng_2 : BEQ .no_manip

    DEC
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

    LDA !ram_phantoon_rng_4 : BEQ .no_manip
    RTL

  .no_manip
    LDA $05E5
    RTL

hook_botwoon_rng:
    JSL $808111 ; Trying to preserve the number of RNG calls being done in the frame

    LDA !ram_botwoon_rng : BEQ .no_manip

    DEC
    RTL

  .no_manip
    LDA $05E5
    RTL

incsrc presets_data.asm

print "rng end ", pc

