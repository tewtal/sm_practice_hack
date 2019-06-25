;=======================================================
;InfoHUD timers and stuff
;=======================================================

org $809490
	jmp $9497	; skip resetting player 2 inputs

org $8094DF
	plp			; patch out resetting of controller 2 buttons and enable debug mode
	rtl

org $828B4B		; disable debug functions
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
	
;org $90A91B      ;minimap drawing routine
;	RTL
	
;org $90A8EF      ;minimap update during HUD loading
;	LDA $7FFB00 : STA $7FFB02
;	LDA #$0000 : STA $7FFB00  ;save archive of last room duration, reset timer
;	RTL
	
;org $809AA0     ;saves initial HUD tilemap (located at $80:98CB) to HUD in RAM
;	BRA $0F
	
org $90E6AA      ;hijack, runs on gamestate = 08 (main gameplay), handles most updating HUD information
	JSL ih_room_timer_code : NOP : NOP

org $9493FB      ;hijack, runs when Samus hits a door BTS
	JSL ih_door_trans_code
	
org $9493B8      ;hijack, runs when Samus hits a door BTS
	JSL ih_door_trans_code
	
org $82E764      ;hijack, runs when Samus is coming out of a room transition
	JSL ih_door_exit_code : RTS
	
;org $90A7F7      ;skip drawing minimap grid when entering boss rooms
;	BRA FinishDrawMinimap
	
;org $90A80A      ;normally runs after minimap grid has been drawn
;	FinishDrawMinimap:
;	LDA $179C
	
org $809B4C      ;hijack, HUD routine (game timer by Quote58)
	JSL ih_hud_code : NOP
	
org $82894F      ;hijack, main game loop: runs EVERY frame (used for room transition timer)
	JSL ih_game_loop_code
	
org $84889F      ;hijack, runs every time an item is picked up
	JSL ih_get_item_code
	
org $91DAD8      ;hijack, runs after a shinespark has been charged
	JSL ih_shinespark_code
	
org $8095fc		 ;hijack, end of NMI routine to update realtime frames
	JML ih_nmi_code

org $9AB800		 ;graphics for menu cursor and input display
incbin resources\menugfx.bin

; Main bank stuff
org !IH_BANK_START
print "InfoHud Main Bank Starting at: ", pc
ih_init_code:
	REP #$30
	PHA
	LDA #$0000
	STA $7FFB20  ;RAM initialization
	STA $7FFB16
	STA $7FFB14
	STA $7FFB10
	STA $7FFB12
	STA $7FFB02
	STA $7FFB0C
	STA $7FFB0E
	STA $7FFB2C
	STA $7FFB00
	STA $7FFB30
	STA $7FFB38	; dash counter
	STA $7FFB3A	; iframe counter
	STA $7FFB3C	; vertical speed
	STA $7FFB3E	; mother brain HP
	STA $7FFB40	; enemy HP
	STA $7FFB42
	STA $7FFB44
	STA $7FFB46
	STA $7FFB48
	STA $7FFB4A
	STA $7FFB4C
	STA $7FFB4E
	STA $7EFFFC ; slowdown mode
	STA $7FFB52 ; slowdown frames
	STA $7FFB60 ; display mode
	STA $7FFB62 ; test thing
	STA $7FFB64	; magic pants
	STA $7FFB66	; magic pants
	STA $7FFB70	; magic pants
	STA $7FFB72	; magic pants
	STA $7FFB74	; magic pants
	STA $7FFB80	; rerandomize
	STA $7FFB82	; phantoon rng
	STA $7FFB84	; phantoon rng
	STA $7FFB86	; phantoon rng
	STA $7FFB88	; phantoon rng
	STA $7FFB8A	; botwoon rng
	
	PLA
	JSL $8B9146
	JML $808459

ih_max_etank_code:
	LDA #$0000 : STA $7FFB24	; reset max-etanks value
	LDA $7EC200,X
	RTL

ih_debug_patch:
	LDA $05D1
	BNE +
	JML $828B54
+	JSL $B49809
	JML $828B4F
	
;--- NMI HIJACK ---
ih_nmi_code:
	%ai16()

	LDA $7FFB44
	INC
	STA $7FFB44
	
	LDA $7EFFFC
	BNE +
	JMP end_nmi
	
+	CMP #$FFFF
	BEQ pause_game
	
	LDA $7FFB52
	BNE delay_game
	
	LDA $7EFFFC
	STA $7FFB52

	LDA $7FFB54
	STA !IH_CONTROLLER_PRI_PREV

	LDA $7FFB56
	STA !IH_CONTROLLER_SEC_PREV

	JSL $809459
	JMP end_nmi
	
delay_game:
	CMP $7EFFFC
	BNE +
	
	LDA !IH_CONTROLLER_PRI
	EOR !IH_CONTROLLER_PRI_NEW
	STA $7FFB54

	LDA !IH_CONTROLLER_SEC
	EOR !IH_CONTROLLER_SEC_NEW
	STA $7FFB56
	
	
	LDA $7FFB52
	
+	DEC a
	STA $7FFB52
	%a8()
	LDA #$01
	STA $05B4
	%ai16()
	JMP end_delay
	
pause_game:
	LDA $7FFB52
	BNE +
	
	INC A
	STA $7FFB52
	LDA !IH_CONTROLLER_PRI
	EOR !IH_CONTROLLER_PRI_NEW
	STA $7FFB54

	LDA !IH_CONTROLLER_SEC
	EOR !IH_CONTROLLER_SEC_NEW
	STA $7FFB56	
	
	
+	LDA !IH_CONTROLLER_SEC_NEW
	CMP !IH_PAUSE	; right on controller 20 (step frame)
	BEQ frame_adv

	CMP !IH_RESET ; left (stop pausing)
	BNE +

	LDA #$0000
	STA $7EFFFC
	STA $7FFB52
	JMP end_nmi
	
+	%a8()
	LDA #$01
	STA $05B4
	%ai16()
	JMP end_delay

frame_adv:
	LDA #$0000
	STA $7FFB52
	LDA $7FFB54
	STA $97
	LDA $7FFB56
	STA $99
	JSL $809459
	JMP end_nmi

end_delay:
	LDA $7FFB52
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
	LDA $7FFB00
	CMP #$EA5F
	BEQ +
	INC
	STA $7FFB00  ;increment room timer

+	PLA
	STZ $0A30 ; overwritten code
	STZ $0A32 ; overwritten code
	RTL
	
;---RUNS AFTER ROOM TRANSITION---	
ih_door_exit_code:
	PHX
	PHY

	LDA $7FFB0E : STA $7FFB10
	LDA #$0000 : STA $7FFB16 
	LDA #$0000 : STA $7FFB30
	
	; Update HUD
	JSL ih_update_hud_code
	
	; Reset gametime/transition timer
	LDA #$0000
	STA $7FFB0E
	
	; Reset realtime timer
	LDA #$0000
	STA $7FFB44
	
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
	
	LDA #$0CCB : STA $7EC6B4	;Dot between counters
	JSR Seconds
	JSR Minutes
	
	PLB
	RTL
	
	Seconds:
	LDY #$00B6 				;first number of a counter
	LDA #$00B8 : STA $18	;second number of a counter
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
	LDA $7FFB16 : CMP #$0001 : BEQ FlagTrans 
	LDA #$0001 : STA $7FFB16

	; calculate lag frames
	LDA $7FFB44
	SEC
	SBC $7FFB0E
	STA $7FFB48
	
	LDA #$0000 : STA $7FFB0E
	
	LDA $7FFB00 : STA $7FFB02
	LDA #$0000 : STA $7FFB00
	
	LDA $7FFB44 : STA $7FFB46
	LDA #$0000 : STA $7FFB44

	
	; save temp variables
	LDA $12 : PHA
	LDA $14 : PHA
	
	; Update HUD
	JSL ih_update_hud_code

	; restore temp variables
	PLA : STA $14
	PLA : STA $12
	
	FlagTrans:
	LDA #$0000 : STA $7FFB2C
	
	
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
	LDA $7FFB46 : STA $4204 : SEP #$20
	LDA #$3C : STA $4206
	PHA : PLA : PHA : PLA : REP #$20
	LDA $4214 : STA $7FFB4C : LDA $4216 : STA $7FFB4E  ;divide frames by 60, save seconds, frames seperately
	
	STZ $12 : STZ $14 : STZ $16 : STZ $18  ;clear for later use	
	LDA $7FFB4C : JSR Hex2Dec : LDX #$00B0 : JSR Draw3  ;seconds -> decimal form and drawn on HUD
	LDA #$0CCB : STA $7EC6B6  ;decimal seperator on HUD
	
	LDA $7FFB4E : STA $4204 : SEP #$20
	LDA #$0A : STA $4206
	PHA : PLA : PHA : PLA : REP #$20
	LDA $4214 : ASL A : STA $12  ;first digit of frames
	LDA $4216 : ASL A : STA $14  ;second digit of frames
		
	LDX $12 : LDA NumberGFXTable,X : STA $7EC6B8 : LDX $14 : LDA NumberGFXTable,X : STA $7EC6BA  ;draw frames
	LDX #$003C : JSR CheckLeadZero
	
	EtankMax:
	LDA $7FFB12 : CMP $7FFB24 : BEQ EndOfHudRoutine : STA $7FFB24 : JSR Hex2Dec : LDX #$0054 : JSR Draw3
	LDX #$0054 : JSR CheckLeadZero
	
	; return
	EndOfHudRoutine:
	;JSL ih_game_timer_code ; update game timer
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
	CMP $7FFB42
	BEQ status_display
	
	; -- read input	
	TAY
	LDX #$0000;
	
-	TYA
	AND ControllerTable1, X
	BEQ +
	LDA ControllerGfx1, X
	JMP ++
+	LDA #$2C0F	
++	STA $7EC608, X
	INX
	INX
	CPX #$00C
	BNE -

	LDX #$0000;
	
-	TYA
	AND ControllerTable2, X
	BEQ +
	LDA ControllerGfx2, X
	JMP ++
+	LDA #$2C0F	
++	STA $7EC648, X
	INX
	INX
	CPX #$000C
	BNE -
	
	TYA
	STA $7FFB42

status_display:
	LDA $7FFB60
	BNE +
	JMP EnemyHP
+	CMP #$0001
	BNE +
	JMP ShineTimer
+	CMP #$0002
	BNE +
	JMP ChargeTimer
+	CMP #$0003
	BNE +
	JMP Xfactor
+	CMP #$0004
	BNE +
	JMP MotherBrainHP
+	CMP #$0005
	BNE +
	JMP DashCounter
+	CMP #$0006
	BNE +
	JMP VerticalSpeed
+	CMP #$0007
	BNE +
	JMP IFrameTimer
+	JMP EnemyHP
	
	;--shine timer--	
	ShineTimer:
	LDA $7FFB30 : CMP #$000A : BNE ShineTimerCont : LDA #$0000 : STA $7FFB30
	ShineTimerCont:
	LDA $7FFB30 : INC : STA $7FFB30
	LDA $7FFB14 : CMP $7FFB1A : BEQ shine_done : STA $7FFB1A : CMP #$0000 : BNE ShineCharge : LDA #$00B4
	ShineCharge:
	JSR Hex2Dec : LDX #$008A : JSR Draw3
	LDX #$008A : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE shine_done : LDA #$0C09 : STA $7EC68E
shine_done:
	JMP Etanks
	;--/shine timer--

	;--charge timer--
	ChargeTimer:
	CLC
	LDA #$003D : SBC $0CD0 : CMP $7FFB1C : BEQ charge_done : STA $7FFB1C : CMP #$0000 : BPL Charging : LDA #$0000
	Charging:
	JSR Hex2Dec : LDX #$008A : JSR Draw3
	LDX #$008A : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE charge_done : LDA #$0C09 : STA $7EC68E
charge_done:
	JMP Etanks	
	;--/charge timer--
	
	;--xfactor timer--
	Xfactor:
	CLC
	LDA #$0079 : SBC $0CD0 : CMP $7FFB1E : BEQ + : STA $7FFB1E : JSR Hex2Dec : LDX #$008A : JSR Draw3
	LDX #$008A : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE + : LDA #$0C09 : STA $7EC68E	
+	JMP Etanks	
	;--/xfactor timer--

	;--dash counter-- ;
	DashCounter:
	CLC
	LDA $0B3F : AND #$00FF : CMP $7FFB38 : BEQ + : STA $7FFB38 : JSR Hex2Dec : LDX #$008A : JSR Draw3
;	LDX #$008A : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE + : LDA #$0C09 : STA $7EC68E
+	JMP Etanks
	;--/dash counter--

	;--motherbrain hp--
	MotherBrainHP:
	LDA $0E58 : STA $12 : LDY #$0014
	LDA $0FCC : CMP $7FFB3E : BEQ + : STA $7FFB3E
	JSR Hex2Dec : LDX $12 : LDA NumberGFXTable,X : STA $7EC688 : LDX #$008A : JSR Draw3
	LDX #$0088 : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE + : LDA #$0C09 : STA $7EC68E
+	JMP Etanks
	;--/motherbrain hp--

	;--vertical speed-- ;
	VerticalSpeed:
	CLC
	LDA $0B2E : CMP $7FFB3C : BEQ + : STA $7FFB3C : JSR Hex2Dec : LDX #$008A : JSR Draw3
	LDX #$008A : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE + : LDA #$0C09 : STA $7EC68E
+	JMP Etanks
	;--/vertical speed--

	;--iframe timer-- ;
	IFrameTimer:
	CLC
	LDA $18A8 : CMP $7FFB3A : BEQ + : STA $7FFB3A : JSR Hex2Dec : LDX #$008A : JSR Draw3
	LDX #$008A : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE + : LDA #$0C09 : STA $7EC68E
+	JMP Etanks
	;--/iframe timer--

	; enemy hp
	EnemyHP:
	LDA $0E58 : STA $12 : LDY #$0014
	LDA $0F8C : CMP $7FFB40 : BEQ Etanks : STA $7FFB40
	JSR Hex2Dec : LDX $12 : LDA NumberGFXTable,X : STA $7EC688 : LDX #$008A : JSR Draw3
	LDX #$0088 : JSR CheckLeadZero : LDA $7EC68E : CMP #$0057 : BNE Etanks : LDA #$0C09 : STA $7EC68E
	

	;--etanks -> 4digit display--
	Etanks:
	LDA $09C2 : CMP $0A06 : BEQ EndOfRoutine : JSR Hex2Dec : LDX $12 : LDA NumberGFXTable,X : STA $7EC692 : LDX #$0094 : JSR Draw3
	LDX #$0092 : JSR CheckLeadZero : LDA $7EC698 : CMP #$0057 : BNE EndOfRoutine : LDA #$0C09 : STA $7EC698
	
	EndOfRoutine:
	PLB
	REP #$30		; overwritten code
	LDA $7E09C0		; overwritten code
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
	LDA $4214 : ADC $7FFB20 : STA $7FFB20
	RTS
	
	CalcItem:
	STZ $4214 : STA $4204 : SEP #$20
	LDA #$05 : STA $4206
	PHA : PLA : PHA : PLA : REP #$20
	LDA $4214 : ADC $7FFB20 : STA $7FFB20
	RTS
	
	CalcLargeItem:
	LDA $09A4 : STX $12 : AND $12 : CMP $12 : BEQ AddItem : CPX #$8000 : BEQ EndLI : BRA AgainLI
		AddItem:
		LDA $7FFB20 : INC : STA $7FFB20
		
		AgainLI:
		CPX #$8000 : BEQ EndLI : TXA : ASL A : TAX : BRA CalcLargeItem
		
		EndLI:
		STZ $12 : SEP #$20 : SEP #$10 : LDX #$01 : JSR CalcBeam : RTS
		
	CalcBeam:
	LDA $09A8 : BRA ChargeBeamCheck 
		PostChargeCheck: 
		STX $12 : AND $12 : CMP $12 : BEQ AddBeam : TXA : ASL A : TAX : BRA CalcBeam
		
		AddBeam:
		REP #$20 : LDA $7FFB20 : INC : STA $7FFB20 : TXA : ASL A : TAX : SEP #$20 : BRA CalcBeam
		
		ChargeBeamCheck:
		CPX $10 : BEQ ChargeBeam : BRA PostChargeCheck
			ChargeBeam:
			LDA $09A9 : CMP #$10 : BEQ AddCharge : REP #$20 : REP #$10 : RTS
				AddCharge:
				REP #$20 : REP #$10 : LDA $7FFB20 : INC : STA $7FFB20 : RTS
				
		
ih_game_loop_code:
	PHA
	
	LDA $7FFB0E
	INC
	STA $7FFB0E

	LDA $7FFB64
	BEQ +
	JSR magic_pants
	
	; handle inputs
+	LDA !IH_CONTROLLER_SEC_NEW
	BEQ end_main
	
	CMP !IH_PAUSE	; right (pause)
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
	STA $7EFFFC
	LDA #$0000
	STA $7FFB52
	JMP end_main
	
toggle_slowdown:
	LDA $7EFFFC
	INC A
	STA $7EFFFC
	JMP end_main

toggle_speedup:
	LDA $7EFFFC
	BEQ +
	DEC A
	STA $7EFFFC
+	JMP end_main

reset_slowdown:
	LDA #$0000
	STA $7EFFFC
	STA $7FFB52
	JMP end_main

inc_statusdisplay:
	LDA $7FFB60
	INC A
	CMP #$0008
	BNE +
	LDA #$0000
+	STA $7FFB60
	JMP update_status

dec_statusdisplay:
	LDA $7FFB60
	DEC A
	CMP #$FFFF
	BNE +
	LDA #$0007
+	STA $7FFB60
	JMP update_status

	
update_status:
	LDA #$0000
	STA $7FFB30
	STA $7FFB14
	STA $7FFB1C
	STA $7FFB1E
	INC A
	STA $7FFB38
	STA $7FFB3A
	STA $7FFB3C
	STA $7FFB3E
	STA $7FFB40
	STA $7FFB1A
	JMP end_main

magic_pants:
	LDA $0A96
	CMP #$0009
	BEQ magic_pants_check
	LDA $7FFB66
	BEQ +
	LDA $7FFB70
	STA $7EC194
	LDA $7FFB72
	STA $7EC196
	LDA $7FFB74
	STA $7EC19E
	LDA #$0000
	STA $7FFB66
+	RTS

magic_pants_check:
	LDA $0A1C
	CMP #$0009
	BEQ magic_pants_flash
	CMP #$000A
	BEQ magic_pants_flash
	RTS

magic_pants_flash:
	LDA $7FFB66
	BNE +
	LDA $7EC194
	STA $7FFB70
	LDA $7EC196
	STA $7FFB72
	LDA $7EC19E
	STA $7FFB74
+	LDA #$FFFF
	STA $7EC194
	STA $7EC196
	STA $7EC19E
	STA $7FFB66
	RTS
	
	
ih_get_item_code:
	PHA
	LDA $7FFB26 : INC : STA $7FFB20 : STA $7FFB26

	; calculate lag frames
	LDA $7FFB44
	SEC
	SBC $7FFB0E
	STA $7FFB48
	
	LDA $7FFB00 : STA $7FFB02
	LDA $7FFB44 : STA $7FFB46
	
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
	STA $7FFB14
	STA $0A68
	RTL


print "InfoHud Main Bank Ending at: ", pc

; Stuff that needs to be placed in bank 80
org !IH_BANK80_START
print "InfoHud Bank 80 Starting at: ", pc
NumberGFXTable:
	DW #$0C09,#$0C00,#$0C01,#$0C02,#$0C03,#$0C04,#$0C05,#$0C06,#$0C07,#$0C08,#$0C45,#$0C3C,#$0C3D,#$0C3E,#$0C3F,#$0C40,#$0C41,#$0C42,#$0C43,#$0C44

;	l      u      r      d      a      b      x      y      l      r      s      S 
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
	
org $8098CB  ;initial HUD tilemap                             ;18                                                     ;28                                                     ;38                                                  |||;48                                                     ;58                                                     ;68                                                     ;78                                                  |||;88                                                     ;98                                                     ;A8                                                     ;B8	
	DW #$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$2C0F,#$2C0F,#$2C0F,#$0057,#$0057,#$2C0F,#$2C09,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057,#$0057
	
org $9AB320  ;HUD graphics table
	DW #$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FF3F,#$3FCF,#$0FF3,#$03FC,#$00FF,#$00FF,#$00FF,#$00FF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FF3F,#$3FCF,#$0FF3,#$03FC,#$C03F,#$F0CF,#$FCF3,#$FFFC,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$00FF,#$00FF,#$00FF,#$00FF,#$C03F,#$F0CF,#$FCF3,#$FFFC,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FF3F,#$BF4F,#$8F73,#$837C,#$807F,#$807F,#$807F,#$807F,#$C03F,#$F0CF,#$FCF3,#$FFFC,#$FF3F,#$3FCF,#$0FF3,#$03FC,#$01FE,#$01FE,#$01FE,#$01FE,#$837C,#$8F73,#$BF4F,#$FF3F,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FF00,#$817E,#$817E,#$817E,#$817E,#$817E,#$817E,#$FF00,#$FF00,#$807F,#$807F,#$807F,#$807F,#$807F,#$807F,#$FF00,#$FF00,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$FF00,#$817E,#$817E,#$817E,#$817E,#$817E,#$817E,#$817E,#$817E,#$FF00,#$817E,#$817E,#$817E,#$817E,#$817E,#$817E,#$817E,#$FF00,#$807F,#$807F,#$807F,#$807F,#$807F,#$807F,#$807F,#$FF00,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$00FF,#$01FE,#$01FE,#$01FE,#$01FE,#$01FE,#$01FE,#$01FE,#$01FE,#$00FF,#$00FF,#$00FF,#$00FF,#$03FC,#$0FF3,#$3FCF,#$FF3F,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFC,#$FCF3,#$F0CF,#$C03F,#$03FC,#$0FF3,#$3FCF,#$FF3F,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFC,#$FCF3,#$F0CF,#$C03F,#$00FF,#$00FF,#$00FF,#$00FF,#$FFFF,#$FFFF,#$FFFF,#$FFFF,#$FFFC,#$FDF2,#$F1CE,#$C13E,#$01FE,#$01FE,#$01FE,#$01FE,#$03FC,#$0FF3,#$3FCF,#$FF3F,#$FFFC,#$FCF3,#$F0CF,#$C03F,#$807F,#$807F,#$807F,#$807F,#$837C,#$8F73,#$BF4F,#$FF3F,#$FFFF,#$FFFF,#$FFFF,#$FFFF
	
