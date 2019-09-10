; Skips the waiting time after teleporting
org $90E870
    JMP $E898


; Skips fade in when teleporting
org $828106
    JSL hook_after_teleport
    NOP : NOP

org $DFDA00
hook_after_teleport:
    LDA #$0008
    STA $0998
    SEP #$20
    LDA #$0F : STA $51
    REP #$20
    RTL
