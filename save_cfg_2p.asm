; Savestate code variables
!SS_BANK = $8000
!SS_HOOK = $82897A
!SS_CODE = $80D000
!SS_INPUT_CUR = $8D
!SS_INPUT_NEW = $91
!SS_INPUT_PREV = $99
!SS_INPUT_SAVE = #$0040     ; x
!SS_INPUT_LOAD = #$4000     ; y
!SS_INPUT_COMPARE = #$4040  ; x/y

!SRAM_START = $700000
!SRAM_WRAM_7E0000 = $710000
!SRAM_WRAM_7E8000 = $720000
!SRAM_WRAM_7F0000 = $730000
!SRAM_WRAM_7F8000 = $740000
!SRAM_VRAM_0000 = $750000
!SRAM_VRAM_8000 = $760000
!SRAM_CGRAM = $772000
!SRAM_DMA_BANK = $770000
!SRAM_VALIDITY = $774000
!SRAM_SAVED_SP = $774004
!SRAM_VM_RETURN = $774006
!SRAM_SIZE = $080000

; SM specific things
!SRAM_MUSIC_BANK = $701FD0
!SRAM_MUSIC_TRACK = $701FD2
!MUSIC_BANK = $07F3
!MUSIC_TRACK = $07F5
!MUSIC_ROUTINE = $808FC1

; Game-specific patches for save-state code
org $008000
    db $FF          ; patch out copy protection

org $809490
    jmp $9497       ; skip resetting player 2 inputs

org $8094DF
    plp             ; patch out resetting of controller 2 buttons and enable debug mode
    rtl
; End of game-specific patches
