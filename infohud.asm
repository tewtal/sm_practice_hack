;=======================================================
;InfoHUD timers and stuff
;=======================================================

org $809490
    jmp $9497    ; skip resetting player 2 inputs

org $8094DF
    plp            ; patch out resetting of controller 2 buttons and enable debug mode
    rtl

org $828B4B        ; disable debug functions
    JML ih_debug_patch

org $808455      ;hijack, runs as game is starting, JSR to RAM initialization to avoid bad values
    JML ih_init_code

org $809B51
    JMP $9BFB    ;skip drawing auto reserve icon and normal energy numbers and tanks during HUD routine

org $82AED9      ;routine to draw auto reserve icon on HUD from equip screen
    NOP : NOP : NOP

org $82AEAF      ;routine to remove auto reserve icon on HUD from equip screen
    NOP : NOP : NOP

org $828115
    JSL ih_max_etank_code

org $90A91B      ;minimap drawing routine
    RTL

org $90A8EF      ;minimap update during HUD loading
    LDA !ram_gametime_room : STA !ram_last_gametime_room
    LDA #$0000 : STA !ram_gametime_room  ;save archive of last room duration, reset timer
    RTL

;org $809AA0     ;saves initial HUD tilemap (located at $80:98CB) to HUD in RAM
;    BRA $0F

org $90E6AA      ;hijack, runs on gamestate = 08 (main gameplay), handles most updating HUD information
    JSL ih_room_timer_code : NOP : NOP

org $9493FB      ;hijack, runs when Samus hits a door BTS
    JSL ih_door_trans_code

org $9493B8      ;hijack, runs when Samus hits a door BTS
    JSL ih_door_trans_code

org $82E764      ;hijack, runs when Samus is coming out of a room transition
    JSL ih_door_exit_code : RTS

org $90A7F7      ;skip drawing minimap grid when entering boss rooms
    BRA FinishDrawMinimap

org $90A80A      ;normally runs after minimap grid has been drawn
    FinishDrawMinimap:
    LDA $179C

org $809B4C      ;hijack, HUD routine (game timer by Quote58)
    JSL ih_hud_code : NOP

org $82894F      ;hijack, main game loop: runs EVERY frame (used for room transition timer)
    JSL ih_game_loop_code

org $84889F      ;hijack, runs every time an item is picked up
    JSL ih_get_item_code

org $91DAD8      ;hijack, runs after a shinespark has been charged
    JSL ih_shinespark_code

org $8095fc         ;hijack, end of NMI routine to update realtime frames
    JML ih_nmi_code

org $9AB800         ;graphics for menu cursor and input display
incbin resources\menugfx.bin

; Main bank stuff
org !IH_BANK_START
print "InfoHud Main Bank Starting at: ", pc
ih_init_code:
    REP #$30
    PHA

    print pc
    ; We mostly use $7FFB00 and upward, so just zero everything
    LDA #$0000
    LDX #$04FF
  .loop
    STA $7FFB00,X
    DEX : DEX : BPL .loop

    PLA
    JSL $8B9146
    JML $808459

ih_max_etank_code:
    LDA #$0000 : STA !ram_max_etanks ; reset max-etanks value
    LDA $7EC200,X
    RTL

ih_debug_patch:
    LDA $05D1
    BNE +
    JML $828B54
+   JSL $B49809
    JML $828B4F

;--- NMI HIJACK ---
ih_nmi_code:
    %ai16()

    LDA !ram_realtime_room : INC : STA !ram_realtime_room

    LDA !ram_slowdown_mode : BNE +

    JMP end_nmi

+   CMP #$FFFF
    BEQ pause_game

    LDA !ram_slowdown_frames
    BNE delay_game

    LDA !ram_slowdown_mode
    STA !ram_slowdown_frames

    LDA !ram_slowdown_controller_1
    STA !IH_CONTROLLER_PRI_PREV

    LDA !ram_slowdown_controller_2
    STA !IH_CONTROLLER_SEC_PREV

    JSL $809459
    JMP end_nmi

delay_game:
    CMP !ram_slowdown_mode
    BNE +

    LDA !IH_CONTROLLER_PRI
    EOR !IH_CONTROLLER_PRI_NEW
    STA !ram_slowdown_controller_1

    LDA !IH_CONTROLLER_SEC
    EOR !IH_CONTROLLER_SEC_NEW
    STA !ram_slowdown_controller_2


    LDA !ram_slowdown_frames

+   DEC a
    STA !ram_slowdown_frames
    %a8()
    LDA #$01
    STA $05B4
    %ai16()
    JMP end_delay

pause_game:
    LDA !ram_slowdown_frames
    BNE +

    INC A
    STA !ram_slowdown_frames
    LDA !IH_CONTROLLER_PRI
    EOR !IH_CONTROLLER_PRI_NEW
    STA !ram_slowdown_controller_1

    LDA !IH_CONTROLLER_SEC
    EOR !IH_CONTROLLER_SEC_NEW
    STA !ram_slowdown_controller_2


+   LDA !IH_CONTROLLER_SEC_NEW
    CMP !IH_PAUSE    ; right on controller 20 (step frame)
    BEQ frame_adv

    CMP !IH_RESET ; left (stop pausing)
    BNE +

    LDA #$0000
    STA !ram_slowdown_mode
    STA !ram_slowdown_frames
    JMP end_nmi

+   %a8()
    LDA #$01
    STA $05B4
    %ai16()
    JMP end_delay

frame_adv:
    LDA #$0000
    STA !ram_slowdown_frames
    LDA !ram_slowdown_controller_1
    STA $97
    LDA !ram_slowdown_controller_2
    STA $99
    JSL $809459
    JMP end_nmi

end_delay:
    LDA !ram_slowdown_frames
    BNE end_nmi

end_nmi:
    PLY
    PLX
    PLA
    PLD
    PLB
    RTI

;---RUNS DURING NORMAL GAMEPLAY---
ih_room_timer_code:
    PHA
    LDA !ram_gametime_room
    CMP #$EA5F
    BEQ +
    INC
    STA !ram_gametime_room  ;increment room timer

+   PLA
    STZ $0A30 ; overwritten code
    STZ $0A32 ; overwritten code
    RTL

;---RUNS AFTER ROOM TRANSITION---
ih_door_exit_code:
    PHX
    PHY

    LDA !ram_gametime_room_2 : STA !ram_last_gametime_room_2
    LDA #$0000 : STA !ram_transition_flag
    LDA #$0000 : STA !ram_shine_counter_1

    ; Update HUD
    JSL ih_update_hud_code

    ; Reset gametime/transition timer
    LDA #$0000
    STA !ram_gametime_room_2

    ; Reset realtime timer
    LDA #$0000
    STA !ram_realtime_room

    PLY
    PLX

    ; original hijacked code
    LDA #$0008
    STA $0998
    RTL

;---GAME TIMER---
ih_game_timer_code:
    PHB

    PEA $8080
    PLB
    PLB

    LDA #$0CCB : STA $7EC6B4    ;Dot between counters
    JSR Seconds
    JSR Minutes

    PLB
    RTL

    Seconds:
    LDY #$00B6                 ;first number of a counter
    LDA #$00B8 : STA $18    ;second number of a counter
    LDA $09DC : JMP Timer

    Minutes:
    LDY #$00B0
    LDA #$00B2 : STA $18
    LDA $09DE

    Timer:
    STA $4204 : SEP #$20
    LDA #$64 : STA $4206
    PHA : PLA : PHA : PLA : REP #$20
    LDA $4216
    STA $4204 : SEP #$20
    LDA #$0A : STA $4206
    PHA : PLA : PHA : PLA : REP #$20
    LDA $4214 : ASL A : STA $14
    LDA $4216 : ASL A : STA $12

    DrawingNumbers:
    LDX $14 : LDA NumberGFXTable,X : TYX : STA $7EC600,X
    LDX $12 : LDA NumberGFXTable,X : LDX $18 : STA $7EC600,X


    RTS


;--- BEFORE ROOM TRANSITION ---
ih_door_trans_code:
    PHA
    PHX
    PHY


    ; save and reset timers
    LDA !ram_transition_flag : CMP #$0001 : BEQ FlagTrans
    LDA #$0001 : STA !ram_transition_flag

    ; calculate lag frames
    LDA !ram_realtime_room
    SEC
    SBC !ram_gametime_room_2
    STA !ram_last_room_lag

    LDA #$0000 : STA !ram_gametime_room_2

    LDA !ram_gametime_room : STA !ram_last_gametime_room
    LDA #$0000 : STA !ram_gametime_room

    LDA !ram_realtime_room : STA !ram_last_realtime_room
    LDA #$0000 : STA !ram_realtime_room


    ; save temp variables
    LDA $12 : PHA
    LDA $14 : PHA

    ; Update HUD
    JSL ih_update_hud_code

    ; restore temp variables
    PLA : STA $14
    PLA : STA $12

    FlagTrans:
    LDA #$0000 : STA !ram_transition_flag_2


    ; Run standard code and return
    PLY
    PLX
    PLA
    STA $0998
    CLC
    RTL

;--- HUD ROUTINES RAN BEFORE AND AFTER TRANSITION ---
ih_update_hud_code:
    PHX
    PHY
    PHP

    ; fix data bank register
    PHB
    PEA $8080
    PLB
    PLB

    STZ $4205
    LDA !ram_last_gametime_room : STA $4204 : SEP #$20
    LDA #$3C : STA $4206
    PHA : PLA : PHA : PLA : REP #$20
    LDA $4214 : STA !ram_tmp_3 : LDA $4216 : STA !ram_tmp_4  ;divide frames by 60, save seconds, frames seperately

    STZ $12 : STZ $14 : STZ $16 : STZ $18  ;clear for later use

    LDA !ram_tmp_3 : JSR Hex2Dec : LDX #$007C : JSR Draw3  ;seconds -> decimal form and drawn on HUD
    LDA #$0CCB : STA $7EC682  ;decimal seperator on HUD

    LDA !ram_tmp_4 : STA $4204 : SEP #$20
    LDA #$0A : STA $4206
    PHA : PLA : PHA : PLA : REP #$20
    LDA $4214 : ASL A : STA $12  ;first digit of frames
    LDA $4216 : ASL A : STA $14  ;second digit of frames

    LDX $12 : LDA NumberGFXTable,X : STA $7EC684 : LDX $14 : LDA NumberGFXTable,X : STA $7EC686  ;draw frames
    LDX #$007C : JSR CheckLeadZero

    ; realtime
    STZ $4205
    LDA !ram_last_realtime_room : STA $4204 : SEP #$20
    LDA #$3C : STA $4206
    PHA : PLA : PHA : PLA : REP #$20
    LDA $4214 : STA !ram_tmp_1 : LDA $4216 : STA !ram_tmp_2  ;divide frames by 60, save seconds, frames seperately

    STZ $12 : STZ $14 : STZ $16 : STZ $18  ;clear for later use

    LDA !ram_tmp_1 : JSR Hex2Dec : LDX #$003C : JSR Draw3  ;seconds -> decimal form and drawn on HUD
    LDA #$0CCB : STA $7EC642  ;decimal seperator on HUD

    LDA !ram_tmp_2 : STA $4204 : SEP #$20
    LDA #$0A : STA $4206
    PHA : PLA : PHA : PLA : REP #$20
    LDA $4214 : ASL A : STA $12  ;first digit of frames
    LDA $4216 : ASL A : STA $14  ;second digit of frames

    LDX $12 : LDA NumberGFXTable,X : STA $7EC644 : LDX $14 : LDA NumberGFXTable,X : STA $7EC646  ;draw frames
    LDX #$003C : JSR CheckLeadZero


    ;--item percent--
    ItemPercentUpdate:
    LDA #$0000
    STA !ram_pct_1
    CLC
    LDA !ram_pct_1 : CMP !ram_pct_2 : BEQ EtankMax

    LDA $09C4 : SBC #$0063 : CLC : INC : JSR Divide100 : LDA $4214 : STA !ram_etanks
    LDA $09C8 : JSR CalcItem : LDA $09CC : JSR CalcItem : LDA $09D0 : JSR CalcItem
    LDA $09D4 : JSR Divide100
    LDX #$0001 : JSR CalcLargeItem
    LDA !ram_pct_1 : STA !ram_pct_1 : STA !ram_pct_2
    LDA !ram_pct_1 : JSR Hex2Dec : LDX #$0012 : JSR Draw3  ;percent counter -> decimal form and drawn on HUD
    LDA #$0C0A : STA $7EC618  ;percent symbol on HUD
    LDX #$0012 : JSR CheckLeadZero : LDA $7EC616 : CMP #$0057 : BNE EtankMax : LDA #$0C09 : STA $7EC616

    ;--/item percent--

    EtankMax:
    LDA !ram_etanks : CMP !ram_max_etanks : BEQ RoomTrans : STA !ram_max_etanks : JSR Hex2Dec : LDX #$0054 : JSR Draw3
    LDX #$0054 : JSR CheckLeadZero

    RoomTrans:
    LDA !ram_last_gametime_room_2 : CMP !ram_door_lag_frames : BEQ LagFrames : STA !ram_door_lag_frames : JSR Hex2Dec : LDX #$00C2 : JSR Draw3
    LDX #$00C2 : JSR CheckLeadZero : LDA $7EC6C6 : CMP #$0057 : BNE LagFrames : LDA #$0C09 : STA $7EC6C6

    LagFrames:
    LDA !ram_last_room_lag : JSR Hex2Dec : LDX #$00BC : JSR Draw3
    LDX #$00BC : JSR CheckLeadZero : LDA $7EC6C0 : CMP #$0057 : BNE EndOfHudRoutine : LDA #$0C09 : STA $7EC6C0


    ; return
    EndOfHudRoutine:
    JSL ih_game_timer_code ; update game timer
    PLB

    PLP
    PLY
    PLX

    RTL

;---MAIN HUD ROUTINE HIJACK---
ih_hud_code:
    %ai16()

    ; fix data bank register
    PHB
    PEA $8080
    PLB
    PLB

    ; -- input display--
    ; -- check if we want to update --
    LDA !IH_CONTROLLER_PRI
    CMP !ram_ih_controller
    BEQ status_display

    ; -- read input
    TAY
    LDX #$0000;

-    TYA
    AND ControllerTable1, X
    BEQ +
    LDA ControllerGfx1, X
    JMP ++
+   LDA #$2C0F
++  STA $7EC608, X
    INX
    INX
    CPX #$00C
    BNE -

    LDX #$0000;

-    TYA
    AND ControllerTable2, X
    BEQ +
    LDA ControllerGfx2, X
    JMP ++
+   LDA #$2C0F
++  STA $7EC648, X
    INX
    INX
    CPX #$000C
    BNE -

    TYA
    STA !ram_ih_controller

status_display:
    LDA !ram_display_mode
    BNE +
    JMP EnemyHP
+   CMP #$0001
    BNE +
    JMP ShineTimer
+   CMP #$0002
    BNE +
    JMP ChargeTimer
+   CMP #$0003
    BNE +
    JMP Xfactor
+   CMP #$0004
    BNE +
    JMP MotherBrainHP
+   CMP #$0005
    BNE +
    JMP DashCounter
+   CMP #$0006
    BNE +
    JMP VerticalSpeed
+   CMP #$0007
    BNE +
    JMP IFrameTimer
+   JMP EnemyHP

    ;--shine timer--
    ShineTimer:
    LDA !ram_shine_counter_1 : CMP #$000A : BNE ShineTimerCont : LDA #$0000 : STA !ram_shine_counter_1
    ShineTimerCont:
    LDA !ram_shine_counter_1 : INC : STA !ram_shine_counter_1
    LDA !ram_shine_counter_2 : CMP !ram_shine_counter_3 : BEQ shine_done : STA !ram_shine_counter_3 : CMP #$0000 : BNE ShineCharge : LDA #$00B4
    ShineCharge:
    JSR Hex2Dec : LDX #$008A : JSR Draw3
    LDX #$008A : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE shine_done : LDA #$0C09 : STA $7EC68E
shine_done:
    JMP Etanks
    ;--/shine timer--

    ;--charge timer--
    ChargeTimer:
    CLC
    LDA #$003D : SBC $0CD0 : CMP !ram_charge_counter : BEQ charge_done : STA !ram_charge_counter : CMP #$0000 : BPL Charging : LDA #$0000
    Charging:
    JSR Hex2Dec : LDX #$008A : JSR Draw3
    LDX #$008A : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE charge_done : LDA #$0C09 : STA $7EC68E
charge_done:
    JMP Etanks
    ;--/charge timer--

    ;--xfactor timer--
    Xfactor:
    CLC
    LDA #$0079 : SBC $0CD0 : CMP !ram_xfac_counter : BEQ + : STA !ram_xfac_counter : JSR Hex2Dec : LDX #$008A : JSR Draw3
    LDX #$008A : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE + : LDA #$0C09 : STA $7EC68E
+   JMP Etanks
    ;--/xfactor timer--

    ;--dash counter-- ;
    DashCounter:
    CLC
    LDA $0B3F : AND #$00FF : CMP !ram_dash_counter : BEQ + : STA !ram_dash_counter : JSR Hex2Dec : LDX #$008A : JSR Draw3
;    LDX #$008A : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE + : LDA #$0C09 : STA $7EC68E
+   JMP Etanks
    ;--/dash counter--

    ;--motherbrain hp--
    MotherBrainHP:
    LDA $0E58 : STA $12 : LDY #$0014
    LDA $0FCC : CMP !ram_mb_hp : BEQ + : STA !ram_mb_hp
    JSR Hex2Dec : LDX $12 : LDA NumberGFXTable,X : STA $7EC688 : LDX #$008A : JSR Draw3
    LDX #$0088 : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE + : LDA #$0C09 : STA $7EC68E
+   JMP Etanks
    ;--/motherbrain hp--

    ;--vertical speed-- ;
    VerticalSpeed:
    CLC
    LDA $0B2E : CMP !ram_vertical_speed : BEQ + : STA !ram_vertical_speed : JSR Hex2Dec : LDX #$008A : JSR Draw3
    LDX #$008A : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE + : LDA #$0C09 : STA $7EC68E
+   JMP Etanks
    ;--/vertical speed--

    ;--iframe timer-- ;
    IFrameTimer:
    CLC
    LDA $18A8 : CMP !ram_iframe_counter : BEQ + : STA !ram_iframe_counter : JSR Hex2Dec : LDX #$008A : JSR Draw3
    LDX #$008A : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE + : LDA #$0C09 : STA $7EC68E
+   JMP Etanks
    ;--/iframe timer--

    ; enemy hp
    EnemyHP:
    LDA $0E58 : STA $12 : LDY #$0014
    LDA $0F8C : CMP !ram_enemy_hp : BEQ Etanks : STA !ram_enemy_hp
    JSR Hex2Dec : LDX $12 : LDA NumberGFXTable,X : STA $7EC688 : LDX #$008A : JSR Draw3
    LDX #$0088 : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE Etanks : LDA #$0C09 : STA $7EC68E


    ;--etanks -> 4digit display--
    Etanks:
    LDA $09C2 : CMP $0A06 : BEQ EndOfRoutine : JSR Hex2Dec : LDX $12 : LDA NumberGFXTable,X : STA $7EC692 : LDX #$0094 : JSR Draw3
    LDX #$0092 : JSR CheckLeadZero : LDA $7EC698 : CMP #$0057 : BNE EndOfRoutine : LDA #$0C09 : STA $7EC698

    EndOfRoutine:
    PLB
    REP #$30        ; overwritten code
    LDA $7E09C0        ; overwritten code
    RTL




;---SUBROUTINES---
    Hex2Dec:
    STA $4204 : SEP #$20
    LDA #$64 : STA $4206 ; divide by 100d
    PHA : PLA : PHA : PLA : REP #$20
    LDA $4214 : STA $12
    LDA $4216 : STA $4204 : SEP #$20
    LDA #$0A : STA $4206
    PHA : PLA : PHA : PLA : REP #$20
    LDA $4214 : ASL A : STA $16
    LDA $4216 : ASL A : STA $18
    LDA $12 : STA $4204 : SEP #$20
    LDA #$0A : STA $4206
    PHA : PLA : PHA : PLA : REP #$20
    LDA $4214 : ASL A : STA $12
    LDA $4216 : ASL A : STA $14
    RTS

    Draw3:
    LDY $14 : JSR Draw : LDY $16 : JSR Draw : LDY $18 : JSR Draw : RTS

    Draw:
    LDA NumberGFXTable,Y : STA $7EC600,X : INX : INX : RTS

    CheckLeadZero:
    LDA $7EC600,X : CMP #$0C09 : BNE ZeroFinish : LDA #$0057 : STA $7EC600,X : INX : INX : BRA CheckLeadZero
        ZeroFinish:
        CMP #$0CCB : BNE AreTeaEss : DEX : DEX : LDA #$0C09 : STA $7EC600,X

        AreTeaEss:
        RTS

    Divide100:
    STA $4204 : SEP #$20
    LDA #$64 : STA $4206
    PHA : PLA : PHA : PLA : REP #$20
    LDA $4214 : ADC !ram_pct_1 : STA !ram_pct_1
    RTS

    CalcItem:
    STZ $4214 : STA $4204 : SEP #$20
    LDA #$05 : STA $4206
    PHA : PLA : PHA : PLA : REP #$20
    LDA $4214 : ADC !ram_pct_1 : STA !ram_pct_1
    RTS

    CalcLargeItem:
    LDA $09A4 : STX $12 : AND $12 : CMP $12 : BEQ AddItem : CPX #$8000 : BEQ EndLI : BRA AgainLI
        AddItem:
        LDA !ram_pct_1 : INC : STA !ram_pct_1

        AgainLI:
        CPX #$8000 : BEQ EndLI : TXA : ASL A : TAX : BRA CalcLargeItem

        EndLI:
        STZ $12 : SEP #$20 : SEP #$10 : LDX #$01 : JSR CalcBeam : RTS

    CalcBeam:
    LDA $09A8 : BRA ChargeBeamCheck
        PostChargeCheck:
        STX $12 : AND $12 : CMP $12 : BEQ AddBeam : TXA : ASL A : TAX : BRA CalcBeam

        AddBeam:
        REP #$20 : LDA !ram_pct_1 : INC : STA !ram_pct_1 : TXA : ASL A : TAX : SEP #$20 : BRA CalcBeam

        ChargeBeamCheck:
        CPX $10 : BEQ ChargeBeam : BRA PostChargeCheck
            ChargeBeam:
            LDA $09A9 : CMP #$10 : BEQ AddCharge : REP #$20 : REP #$10 : RTS
                AddCharge:
                REP #$20 : REP #$10 : LDA !ram_pct_1 : INC : STA !ram_pct_1 : RTS


ih_game_loop_code:
    PHA

    LDA !ram_gametime_room_2
    INC
    STA !ram_gametime_room_2

    LDA !ram_magic_pants_1
    BEQ +
    JSR magic_pants

    ; handle inputs
+   LDA !IH_CONTROLLER_SEC_NEW
    BEQ end_main

    CMP !IH_PAUSE    ; right (pause)
    BEQ toggle_pause

    CMP !IH_SLOWDOWN ;  down (slowdown)
    BEQ toggle_slowdown

    CMP !IH_SPEEDUP ;  up (speedup)
    BEQ toggle_speedup

    CMP !IH_RESET ;  left (reset)
    BEQ reset_slowdown

    CMP !IH_STATUS_R ; r (change status upwards)
    BEQ inc_statusdisplay

    CMP !IH_STATUS_L ; l (change status upwards)
    BEQ dec_statusdisplay


end_main:
    PLA
    JSL $808111
    RTL

toggle_pause:
    LDA #$FFFF
    STA !ram_slowdown_mode
    LDA #$0000
    STA !ram_slowdown_frames
    JMP end_main

toggle_slowdown:
    LDA !ram_slowdown_mode
    INC A
    STA !ram_slowdown_mode
    JMP end_main

toggle_speedup:
    LDA !ram_slowdown_mode
    BEQ +
    DEC A
    STA !ram_slowdown_mode
+   JMP end_main

reset_slowdown:
    LDA #$0000
    STA !ram_slowdown_mode
    STA !ram_slowdown_frames
    JMP end_main

inc_statusdisplay:
    LDA !ram_display_mode
    INC A
    CMP #$0008
    BNE +
    LDA #$0000
+   STA !ram_display_mode
    JMP update_status

dec_statusdisplay:
    LDA !ram_display_mode
    DEC A
    CMP #$FFFF
    BNE +
    LDA #$0007
+   STA !ram_display_mode
    JMP update_status


update_status:
    LDA #$0000
    STA !ram_shine_counter_1
    STA !ram_shine_counter_2
    STA !ram_charge_counter
    STA !ram_xfac_counter
    INC A
    STA !ram_dash_counter
    STA !ram_iframe_counter
    STA !ram_vertical_speed
    STA !ram_mb_hp
    STA !ram_enemy_hp
    STA !ram_shine_counter_3
    JMP end_main

magic_pants:
    LDA $0A96
    CMP #$0009
    BEQ magic_pants_check
    LDA !ram_magic_pants_2
    BEQ +
    LDA !ram_magic_pants_3
    STA $7EC194
    LDA !ram_magic_pants_4
    STA $7EC196
    LDA !ram_magic_pants_5
    STA $7EC19E
    LDA #$0000
    STA !ram_magic_pants_2
+   RTS

magic_pants_check:
    LDA $0A1C
    CMP #$0009
    BEQ magic_pants_flash
    CMP #$000A
    BEQ magic_pants_flash
    RTS

magic_pants_flash:
    LDA !ram_magic_pants_2
    BNE +
    LDA $7EC194
    STA !ram_magic_pants_3
    LDA $7EC196
    STA !ram_magic_pants_4
    LDA $7EC19E
    STA !ram_magic_pants_5
+   LDA #$FFFF
    STA $7EC194
    STA $7EC196
    STA $7EC19E
    STA !ram_magic_pants_2
    RTS


ih_get_item_code:
    PHA
    LDA !ram_pct_2 : INC : STA !ram_pct_1 : STA !ram_pct_2

    ; calculate lag frames
    LDA !ram_realtime_room
    SEC
    SBC !ram_gametime_room_2
    STA !ram_last_room_lag

    LDA !ram_gametime_room : STA !ram_last_gametime_room
    LDA !ram_realtime_room : STA !ram_last_realtime_room

    ; save temp variables
    LDA $12 : PHA
    LDA $14 : PHA

    ; Update HUD
    JSL ih_update_hud_code

    ; restore temp variables
    PLA : STA $14
    PLA : STA $12

    PLA
    JSL $80818E
    RTL


ih_shinespark_code:
    DEC
    STA !ram_shine_counter_2
    STA $0A68
    RTL


print "InfoHud Main Bank Ending at: ", pc

; Stuff that needs to be placed in bank 80
org !IH_BANK80_START
print "InfoHud Bank 80 Starting at: ", pc
NumberGFXTable:
    DW #$0C09,#$0C00,#$0C01,#$0C02,#$0C03,#$0C04,#$0C05,#$0C06,#$0C07,#$0C08,#$0C45,#$0C3C,#$0C3D,#$0C3E,#$0C3F,#$0C40,#$0C41,#$0C42,#$0C43,#$0C44

;    l      u      r      d      a      b      x      y      l      r      s      S
;DW $0200, $0800, $0100, $0400, $0080, $8000, $0040, $4000, $0020, $0010, $2000, $1000
ControllerTable1:
    DW $0020, $0800, $0010, $4000, $0040, $2000
ControllerTable2:
    DW $0200, $0400, $0100, $8000, $0080, $1000
ControllerGfx1:
    DW $0C68, $0C61, $0C69, $0C67, $0C66, $0C6A
ControllerGfx2:
    DW $0C60, $0C63, $0C62, $0C65, $0C64, $0C6B

print "InfoHud Bank 80 Ending at: ", pc

org $8098CB  ; Initial HUD tilemap
    DW #$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$0057,#$0057,#$0C09,#$0CCB,#$0C09,#$0C09,#$2C0F,#$2C0F,#$2C0F,#$0057,#$0057,#$2C0F,#$2C09,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$0057,#$0057,#$0C09

org $9AB320  ; HUD graphics table
    DW #$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FF3F,#$3FCF,#$0FF3,#$03FC,#$00FF,#$00FF,#$00FF,#$00FF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FF3F,#$3FCF,#$0FF3,#$03FC,#$C03F,#$F0CF,#$FCF3,#$FFFC,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$00FF,#$00FF,#$00FF,#$00FF,#$C03F,#$F0CF,#$FCF3,#$FFFC,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FF3F,#$BF4F,#$8F73,#$837C,#$807F,#$807F,#$807F,#$807F,#$C03F,#$F0CF,#$FCF3,#$FFFC,#$FF3F,#$3FCF,#$0FF3,#$03FC,#$01FE,#$01FE,#$01FE,#$01FE,#$837C,#$8F73,#$BF4F,#$FF3F,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FF00,#$817E,#$817E,#$817E,#$817E,#$817E,#$817E,#$FF00,#$FF00,#$807F,#$807F,#$807F,#$807F,#$807F,#$807F,#$FF00,#$FF00,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$FF00,#$817E,#$817E,#$817E,#$817E,#$817E,#$817E,#$817E,#$817E,#$FF00,#$817E,#$817E,#$817E,#$817E,#$817E,#$817E,#$817E,#$FF00,#$807F,#$807F,#$807F,#$807F,#$807F,#$807F,#$807F,#$FF00,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$01FE,#$01FE,#$01FE,#$01FE,#$01FE,#$01FE,#$01FE,#$01FE,#$00FF,#$00FF,#$00FF,#$00FF,#$03FC,#$0FF3,#$3FCF,#$FF3F,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFC,#$FCF3,#$F0CF,#$C03F,#$03FC,#$0FF3,#$3FCF,#$FF3F,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFC,#$FCF3,#$F0CF,#$C03F,#$00FF,#$00FF,#$00FF,#$00FF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFC,#$FDF2,#$F1CE,#$C13E,#$01FE,#$01FE,#$01FE,#$01FE,#$03FC,#$0FF3,#$3FCF,#$FF3F,#$FFFC,#$FCF3,#$F0CF,#$C03F,#$807F,#$807F,#$807F,#$807F,#$837C,#$8F73,#$BF4F,#$FF3F,#$FFFF,#$FFFF,#$FFFF,#$FFFF
