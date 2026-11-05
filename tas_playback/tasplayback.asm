
; When booting or starting gameplay, we are not yet recording frames,
; so you will need to compensate by adding frames to the TAS input file.
; Lag may vary from run to run, so the following are estimates:
; For initial boot, add ~258 frames
; For starting Ceres, add ~94 frames
; End Ceres on the last frame of the fadeout (before the two lag frames)
; For starting Zebes after Ceres, add ~2069 frames

tas_playback_rng_time_next_bank:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $E6, $E3, $E8, $E7, $00, $ED, $EB, $E9, $EA, $EC, $EF, $F1, $EE, $E0, $F2, $F3
    db $00, $F6, $F4, $E1, $F7, $FD, $FB, $F9, $FA, $FC, $FF, $F5, $FE, $E5, $F8, $E2

tas_playback_verify_next_bank:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $E5, $00, $00, $E8, $00, $00, $EA, $00, $ED, $00, $00, $EF, $00, $F3
    db $00, $00, $00, $F5, $00, $F8, $00, $00, $FA, $00, $FD, $00, $00, $FF, $00, $E2

incsrc tasplayback_E0.asm
incsrc tasplayback_E1.asm
incsrc tasplayback_E2.asm
incsrc tasplayback_E3.asm
incsrc tasplayback_E5.asm
incsrc tasplayback_E6.asm
incsrc tasplayback_E7.asm
incsrc tasplayback_E8.asm
incsrc tasplayback_E9.asm
incsrc tasplayback_EA.asm
incsrc tasplayback_EB.asm
incsrc tasplayback_EC.asm
incsrc tasplayback_ED.asm
incsrc tasplayback_EE.asm
incsrc tasplayback_EF.asm
incsrc tasplayback_F1.asm
incsrc tasplayback_F2.asm
incsrc tasplayback_F3.asm
incsrc tasplayback_F4.asm
incsrc tasplayback_F5.asm
incsrc tasplayback_F6.asm
incsrc tasplayback_F7.asm
incsrc tasplayback_F8.asm
incsrc tasplayback_F9.asm
incsrc tasplayback_FA.asm
incsrc tasplayback_FB.asm
incsrc tasplayback_FC.asm
incsrc tasplayback_FD.asm
incsrc tasplayback_FE.asm
incsrc tasplayback_FF.asm

