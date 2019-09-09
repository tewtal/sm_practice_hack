; Super Metroid HUD Menu 0.8
; by total
; total@viskos.org
;

; hijack init code and end of NMI
org $808449
	JSL ih_menu_init : NOP

org $8095F7
	JSL ih_menu_nmi : NOP


org !MENU_BANK_START
print "Menu Bank Starting at: ", pc

; Call this somewhere in the game startup code
; intialize variables
ih_menu_init:
	%ai16()
	LDA #$0000
	STA !MENU_MODE
	STA !MENU_SEL
	STA !MENU_VAL
	STA !MENU_MAX
	STA !MENU_SKIP
	STA !MENU_PTR
	STA !MENU_STACK
	LDX #$1FFE
	RTL
	
	
; Call this at the end of NMI
ih_menu_nmi:
	PHA
	%ai16()
	LDA !MENU_MODE
	BEQ ih_menu_nmi_none
	JSR ih_menu
	%a8()
	LDA #$01
	STA $05B4
	%ai16()	
	JMP ih_menu_nmi_done
	
ih_menu_nmi_none:
	LDA !MENU_CONTROLLER
	CMP !MENU_INPUT
	BNE ih_menu_nmi_done
	LDA #$0001
	STA !MENU_MODE

	; Reset inputs to stop pausing
	LDA #$0000
	STA !MENU_CONTROLLER
	STA !MENU_CONTROLLER_NEW
	STA !MENU_CONTROLLER_PREV
	
ih_menu_nmi_done:

	PLA
	INC $05B8
	RTL
	
; Main menu code
ih_menu:
	PHA
	PHX
	PHY
	PHP
	
	%ai16()
	LDA !MENU_MODE
	
	CMP #$0001
	BEQ ih_menu_em
	
	CMP #$0002
	BEQ ih_menu_hm
	
	CMP #$0003
	BEQ ih_menu_cm


ih_menu_end:
	JSR ih_update_hud
	PLP
	PLY
	PLX
	PLA
	RTS

ih_menu_em:
	JSR ih_enter_menu
	JMP ih_menu_end

ih_menu_hm:
	JSR ih_handle_menu
	JMP ih_menu_end

ih_menu_cm:
	JSR ih_close_menu
	JMP ih_menu_end
	

; Entering the menu, will redraw the HUD with the menu options
ih_enter_menu:

	JSR ih_clear_hud
	
	; Draw Main menu
	LDA #MainMenu
	STA !MENU_PTR
	LDA #$0000
	STA !MENU_SKIP
	STA !MENU_SEL
	STA !MENU_MAX
	STA !MENU_STACK
	
	JSR ih_draw_menu
	
	LDA #$0002
	STA !MENU_MODE
	RTS
	

ih_get_controller_input:
	LDA !MENU_CONTROLLER_NEW
    BEQ .check_holding

    ; Initial delay of 16 frames
    LDA #$0010 : STA !MENU_INPUT_TIMER

    ; Return the new input
    LDA !MENU_CONTROLLER_NEW
    RTS

.check_holding
    ; Check if we're holding up or down
    LDA !MENU_CONTROLLER : AND #$0C00 : BEQ .noinput

    ; Decrement delay timer and check if it's zero
    LDA !MENU_INPUT_TIMER : DEC : STA !MENU_INPUT_TIMER : BNE .noinput

    ; Set new delay to 4 frames and return the input we're holding
    LDA #$0004 : STA !MENU_INPUT_TIMER
    LDA !MENU_CONTROLLER
    RTS

.noinput
    LDA #$0000
    RTS
	
	
ih_handle_menu:
    JSR ih_get_controller_input
	CMP #$0400 ; down
	BEQ hm_down
	
	CMP #$0800 ; up
	BEQ hm_up
	
	CMP #$1000 ; start
	BEQ hm_menu
	
	CMP #$0080 ; A
	BEQ hm_confirm
	
	CMP #$8000 ; B
	BEQ hm_back

	RTS

hm_down:
	LDA !MENU_SEL
	CMP !MENU_MAX
	BNE +
	JMP hm_done
+	INC
	STA !MENU_SEL
	JMP hm_done

hm_up:
	LDA !MENU_SEL
	BNE +
	JMP hm_done
+	DEC
	STA !MENU_SEL
	JMP hm_done
	
hm_menu:
	LDA #$0003
	STA !MENU_MODE
	RTS
	
hm_back:
	LDA !MENU_STACK
	BEQ hm_menu ; if stack is empty, close menu

	TAX
	DEC #2
	STA !MENU_STACK		; decrement menu stack pointer

	LDA !MENU_STACK, X	; store pointer to previous menu in X
	STA !MENU_PTR

	; Load previous menu
	JSR ih_clear_hud
	LDA #$0000
	STA !MENU_SKIP
	STA !MENU_SEL
	STA !MENU_MAX
	
	LDA #$0001
	STA !MENU_VAL
	JMP hm_skip_done
	
hm_confirm:
	; loop through current menu and find code pointer and jump to item
	
	; set correct bank
	PHB
	PEA !MENU_BANK_DB
	PLB
	PLB
	
	
	LDA !MENU_PTR
	STA $CC

	LDY #$0000
	STY $C7
	
	LDA !MENU_SEL
	ASL #3
	TAY
	
	LDA ($CC), Y ; load pointer type
	TAX
	INY #2
	
	CPX #$0000
	BEQ hm_confirm_ptr
	
	CPX #$007E
	BEQ hm_confirm_toggle
	CPX #$007F
	BEQ hm_confirm_toggle

	CPX #$107E
	BEQ hm_confirm_toggle_bit	
	CPX #$107F
	BEQ hm_confirm_toggle_bit
	
	JMP hm_confirm_done
	
hm_confirm_ptr:
	TYA
	CLC
	ADC $CC
	TAX
	INY #2
	LDA ($CC), Y
	TAY
	JSR ($0000,X) ; Call pointer with argument in Y
	JMP hm_confirm_done
	
hm_confirm_toggle:
	STX $C5
	LDA ($CC), Y
	STA $C3
	INY #2
	LDA ($CC), Y
	STA $C1
	LDA [$C3]
	CMP $C1
	BNE hm_confirm_toggle_set
	LDA #$0000
	JMP hm_confirm_toggle_reset
hm_confirm_toggle_set:
	LDA $C1
hm_confirm_toggle_reset:
	STA [$C3]
	JSR ih_draw_menu
	LDA #$0001
	STA !MENU_VAL
	JMP hm_confirm_done

hm_confirm_toggle_bit:
	STX $C5
	LDA ($CC), Y	; address of variable
	STA $C3
	INY #2
	LDA [$C3]
	EOR ($CC), Y
	STA [$C3]
	JSR ih_draw_menu
	LDA #$0001
	STA !MENU_VAL
	JMP hm_confirm_done	
	
hm_confirm_done:
	PLB
	LDA !MENU_VAL
	BEQ +

	LDA #$0000
	STA !MENU_VAL
	RTS
	
+	LDA #$0003
	STA !MENU_MODE
	RTS
	
hm_done:
	; set skip to the correct value
	
	; check if skip needs to be increased
	LDA !MENU_SKIP
	CLC
	ADC #$0003
	CMP !MENU_SEL
	BNE +
	LDA !MENU_SKIP
	INC
	STA !MENU_SKIP
	JMP hm_skip_done
	
+	LDA !MENU_SKIP
	SEC
	SBC #$0001
	CMP !MENU_SEL
	BNE hm_skip_done
	LDA !MENU_SKIP
	DEC
	STA !MENU_SKIP

hm_skip_done:	
	JSR ih_draw_menu
	RTS

ih_clear_hud:
	; Clear HUD
	LDA #$2C0F
	LDX #$0000
-	STA $7EC608, X
	INX #2
	CPX #$00C8
	BNE -
	RTS
	
ih_close_menu:
	JSR ih_clear_hud

	JSL ih_update_hud_code		; INFOHUD UPDATES
	JSL $809A79
	JSL $809B44
	
	LDA #$0000
	STA !MENU_MODE
	STA $7FFB50
	STA $7FFB52
	
	RTS

ih_update_hud:
    LDX $0330 

    ; DMA transfer size
    LDA #$00C0
    STA $D0,x 
    INX       
    INX       

    ; DMA source address
    LDA #$C608
    STA $D0,x
    INX       
    INX       
    LDA #$007E
    STA $D0,x 
    INX       

    ; DMA target address (VRAM)
    LDA #$5820
    STA $D0,x 
    INX       
    INX       
    STX $0330
	RTS

	
ih_draw_menu:
	; Draws the menu entries for the selected menu
	; Address to menu table in !IH_MENU_PTR
	; Amount of entries to skip in !IH_MENU_SKIP
	
	; Current menu entry index saved to $C7

	; Set bank
	PHB
	PEA !MENU_BANK_DB
	PLB
	PLB

	; Setup temp variables
	LDA #$7E00
	STA $CA
	LDA #$C608
	STA $C9
	
	LDA !MENU_PTR
	STA $CC
	
	LDA !MENU_SKIP
	STA $CE
	
	LDA #$0000
	STA $C7
	
	; Clear A,X,Y
	LDA #$0000
	LDX #$0002
	LDY #$0000
	
	; Skip entries not shown
	LDA $CE
	STA $C7
	ASL #3
	TAY
	
	; Draw menu entry
dm_draw_menu:	
	LDA ($CC), Y
	CMP #$FFFF
	BNE +
	JMP dm_draw_done

	; Save pointer type and pointer in reverse (for use with DP indirect addressing)
+	STA $C5
 	INY #2
	LDA ($CC), Y
	STA $C3
	
	INY #2
	
	; Check if we should skip entry
	LDA $C9	
	CMP #$C6C8
	BEQ dm_skip_tail
	JMP dm_draw_char_start

dm_skip_tail:
	LDA !MENU_MAX
	BEQ dm_skip
	PLB
	RTS
	
dm_skip:
	INY #4
	INC $C7
	JMP dm_draw_menu
	
dm_draw_char_start:
	LDA $C7
	CMP !MENU_SEL
	BEQ dm_draw_pointer
	LDA #$2C0F
	STA [$C9]
	JMP dm_draw_char_init
	
dm_draw_pointer:
	LDA #$0C62
	STA [$C9]
	
dm_draw_char_init:
	; Load pointer to string and save to $C1
	INY #2
	LDA ($CC), Y
	STA $C1
	PHY
	LDY #$0000
	LDX #$0002
	
; Load next character to draw
dm_draw_char:
	LDA #$0000
	LDA ($C1), Y
	AND #$00FF
	BNE +
	JMP dm_draw_char_done
	
+	PHY
	ASL
	TAY
	LDA CharTable, Y
	TXY
	STA [$C9], Y
	PLY
	
	; loop until null
	INX #2
	INY
	BRA dm_draw_char
	
dm_draw_char_done:
	INY
	
	; Check pointer type
	LDA $C5
	
	CMP #$0000
	BEQ dm_draw_char_pad
	
	BIT #$1000
	BNE dm_draw_char_bit
	
	; RAM toggle pointer
	PLY
	DEY #2
	LDA ($CC), Y
	INY #2
	PHY
	STA $C1
	LDA [$C3]
	CMP $C1
	BNE dm_draw_char_pad
	
	JMP dm_draw_toggle

dm_draw_char_bit:	
	PLY				; Restore Y and decrement it to load the argument
	DEY #2
	LDA ($CC), Y
	INY #2
	PHY
	STA $C1			; Overwriting string pointer here since we're done with it
	LDA [$C3]
	BIT $C1
	BEQ dm_draw_char_pad
	
dm_draw_toggle:
	PHY
	TXY
	LDA #$2C0F
	STA [$C9], Y
	INY #2
	LDA #$0CF7
	STA [$C9], Y
	PLY	
	INX #4
	
dm_draw_char_pad:	
	; Pad with spaces
	PHY
	TXY
	LDA #$2C0F
	
-	STA [$C9], Y
	INY #2
	CPY #$0040
	BNE -
	PLY
		
	; Increment row
	LDA $C9
	CLC
	ADC #$0040
	STA $C9
	LDX #$0002
	INC $C7
	PLY
	INY #2
	JMP dm_draw_menu
		
dm_draw_done:
	DEC $C7
	LDA $C7
	STA !MENU_MAX
	PLB
	RTS	

load_menu:
	; Increment stack pointer by 2, then store current menu
	LDA !MENU_STACK
	INC #2
	STA !MENU_STACK
	TAX
	LDA !MENU_PTR
	STA !MENU_STACK, X

	TYA
	STA !MENU_PTR
	; Load misc menu
	JSR ih_clear_hud
	LDA #$0000
	STA !MENU_SKIP
	STA !MENU_SEL
	STA !MENU_MAX
	
	LDA #$0001
	STA !MENU_VAL
	
	JSR ih_draw_menu
	RTS	
	
; Main Menu	
MainMenu:
	;  Type    Pointer      		Param   			String		
	DW #$0000, #mainmenu_refill, 	#$0000, 			#str_refill
	DW #$0000, #load_menu,  		#EquipmentMenu, 	#str_equipment
	DW #$0000, #load_menu, 			#TeleportMenu, 		#str_teleport
	DW #$0000, #load_menu, 			#MiscMenu, 			#str_misc
	DW #$0000, #load_menu,			#EventMenu, 		#str_events
	DW #$0000, #load_menu,			#BossMenu, 			#str_bosses
	DW #$0000, #load_menu,			#ConfigMenu,		#str_config
	DW #$FFFF
	
str_refill: DB "REFILL", #$00
str_equipment: DB "EQUIPMENT", #$00
str_teleport: DB "TELEPORT", #$00
str_misc: DB "MISC", #$00
str_events: DB "EVENTS", #$00
str_bosses: DB "BOSSES", #$00
str_config: DB "CONFIG", #$00
	
; Menu choice code
mainmenu_refill:
	LDA $7E09C4 : STA $7E09C2 ; health
	LDA $7E09C8 : STA $7E09C6 ; missiles
	LDA $7E09CC : STA $7E09CA ; supers
	LDA $7E09D0 : STA $7E09CE ; pbs
	LDA $7E09D4 : STA $7E09D6 ; reserves
	RTS

; Equipment Menu	
EquipmentMenu:
	DW #$0000, #equipment, #$0000, 				#str_100
	DW #$0000, #equipment, #$0000, 				#str_any_new
	DW #$0000, #equipment, #$0000, 				#str_any_old
	DW #$0000, #equipment, #$0000, 				#str_14ice
	DW #$0000, #equipment, #$0000, 				#str_14speed
	DW #$0000, #equipment, #$0000, 				#str_gt_code
	DW #$0000, #equipment, #$0000, 				#str_rbo
	DW #$0000, #equipment, #$0000, 				#str_any_glitched
	DW #$0000, #equipment, #$0000, 				#str_nothing
	DW #$0000, #load_menu, #ToggleItemsMenu, 	#str_toggleitems
	DW #$0000, #load_menu, #ToggleBeamsMenu,	#str_togglebeams
	DW #$0000, #load_menu, #SetEtanksMenu,		#str_setetanks
	DW #$0000, #load_menu, #SetReservesMenu,	#str_setreserves
	DW #$0000, #load_menu, #SetMissilesMenu,	#str_setmissiles
	DW #$0000, #load_menu, #SetSupersMenu,		#str_setsupers
	DW #$0000, #load_menu, #SetPBsMenu,			#str_setpbs
	DW #$FFFF
	
str_100: DB "100%", #$00
str_any_new: DB "ANY% NEW", #$00
str_any_old: DB "ANY% OLD", #$00
str_14ice: DB "14% ICE", #$00
str_14speed: DB "14% SPEED", #$00
str_gt_code: DB "GT CODE", #$00
str_rbo: DB "RBO", #$00
str_any_glitched: DB "ANY% GLITCHED", #$00
str_nothing: DB "NOTHING", #$00
str_toggleitems: DB "TOGGLE ITEMS", #$00
str_togglebeams: DB "TOGGLE BEAMS", #$00
str_setetanks: DB "ENERGY TANKS", #$00
str_setreserves: DB "RESERVE TANKS", #$00
str_setmissiles: DB "MISSILES", #$00
str_setsupers: DB "SUPER MISSILES", #$00
str_setpbs: DB "POWER BOMBS", #$00


EquipmentTable:
	;  Items,  Beams,  Health, Miss,   Supers, PBs,    Reserv, Dummy
	DW #$F32F, #$100F, #$05DB, #$00E6, #$0032, #$0032, #$0190, #$0000		;	100%
	DW #$3125, #$1007, #$018F, #$000F, #$000A, #$0005, #$0000, #$0000		;	any% new
	DW #$3325, #$100B, #$018F, #$000F, #$000A, #$0005, #$0000, #$0000		;   any% old
	DW #$1025, #$1002, #$018F, #$000A, #$000A, #$0005, #$0000, #$0000		;	14% ice
	DW #$3025, #$1000, #$018F, #$000A, #$000A, #$0005, #$0000, #$0000		;	14% speed
	DW #$F32F, #$100F, #$02BC, #$0064, #$0014, #$0014, #$012C, #$0000		;   gt code
	DW #$710C, #$1001, #$031F, #$001E, #$0019, #$0014, #$0064, #$0000		;   rbo
	DW #$9004, #$0000, #$00C7, #$0005, #$0005, #$0005, #$0000, #$0000		;	any% glitched
	DW #$0000, #$0000, #$0063, #$0000, #$0000, #$0000, #$0000, #$0000		;   nothing
	
equipment:
	LDA !MENU_SEL
	ASL #4
	TAX
	
	; Items
	LDA EquipmentTable, X
	STA $7E09A4
	STA $7E09A2
	INX #2
	
	; Beams
	LDA EquipmentTable, X
	STA $7E09A8
	AND #$FFF7
	STA $7E09A6
	INX #2
	
	; Health
	LDA EquipmentTable, X
	STA $7E09C2
	STA $7E09C4
	INX #2	

	; Missiles
	LDA EquipmentTable, X
	STA $7E09C6
	STA $7E09C8
	INX #2	

	; Supers
	LDA EquipmentTable, X
	STA $7E09CA
	STA $7E09CC
	INX #2	

	; PBs
	LDA EquipmentTable, X
	STA $7E09CE
	STA $7E09D0
	INX #2		

	; Reserves
	LDA EquipmentTable, X
	STA $7E09D4
	STA $7E09D6
	INX #2		

	RTS

; Toggle Items Menu
ToggleItemsMenu:
	DW #$107E, #$09A4, #$0001, #str_variasuit
	DW #$107E, #$09A4, #$0020, #str_gravitysuit
	DW #$107E, #$09A4, #$0004, #str_morphball
	DW #$107E, #$09A4, #$1000, #str_bomb
	DW #$107E, #$09A4, #$0002, #str_springball
	DW #$107E, #$09A4, #$0008, #str_screwattack
	DW #$107E, #$09A4, #$0100, #str_hijumpboots
	DW #$107E, #$09A4, #$0200, #str_spacejump
	DW #$107E, #$09A4, #$2000, #str_speedbooster	
	DW #$107E, #$09A2, #$4000, #str_grapple
	DW #$107E, #$09A2, #$8000, #str_xray
	DW #$FFFF

str_variasuit: DB "VARIA SUIT", #$00
str_gravitysuit: DB "GRAVITY SUIT", #$00
str_morphball: DB "MORPHING BALL", #$00
str_bomb: DB "BOMB", #$00
str_springball: DB "SPRING BALL", #$00
str_screwattack: DB "SCREW ATTACK", #$00
str_hijumpboots: DB "HI JUMP BOOTS", #$00
str_spacejump: DB "SPACE JUMP", #$00
str_speedbooster: DB "SPEED BOOSTER", #$00
str_grapple: DB "GRAPPLE", #$00
str_xray: DB "XRAY", #$00

; Toggle Beams Menu
ToggleBeamsMenu:
	DW #$107E, #$09A8, #$1000, #str_chargebeam
	DW #$107E, #$09A8, #$0002, #str_icebeam
	DW #$107E, #$09A8, #$0001, #str_wavebeam
	DW #$107E, #$09A8, #$0004, #str_spazerbeam
	DW #$107E, #$09A8, #$0008, #str_plasmabeam
	DW #$FFFF

str_chargebeam: DB "CHARGE", #$00
str_icebeam: DB "ICE", #$00
str_wavebeam: DB "WAVE", #$00
str_spazerbeam: DB "SPAZER", #$00
str_plasmabeam: DB "PLASMA", #$00
	
; E-tanks
SetEtanksMenu:
	DW #$007E, #$09C4, #$0063, #str_zero
	DW #$007E, #$09C4, #$00C7, #str_one
	DW #$007E, #$09C4, #$012B, #str_two
	DW #$007E, #$09C4, #$018F, #str_three
	DW #$007E, #$09C4, #$01F3, #str_four
	DW #$007E, #$09C4, #$0257, #str_five
	DW #$007E, #$09C4, #$02BB, #str_six
	DW #$007E, #$09C4, #$031F, #str_seven
	DW #$007E, #$09C4, #$0383, #str_eight
	DW #$007E, #$09C4, #$03E7, #str_nine
	DW #$007E, #$09C4, #$044B, #str_ten
	DW #$007E, #$09C4, #$04AF, #str_eleven
	DW #$007E, #$09C4, #$0513, #str_twelve
	DW #$007E, #$09C4, #$0577, #str_thirteen
	DW #$007E, #$09C4, #$05DB, #str_fourteen
	DW #$FFFF
	
; Reserves
SetReservesMenu:
	DW #$007E, #$09D4, #$0000, #str_zero
	DW #$007E, #$09D4, #$0064, #str_one
	DW #$007E, #$09D4, #$00C8, #str_two
	DW #$007E, #$09D4, #$012C, #str_three
	DW #$007E, #$09D4, #$0190, #str_four
	DW #$FFFF

; Missiles
SetMissilesMenu:
	DW #$007E, #$09C8, #$0000, #str_zero
	DW #$007E, #$09C8, #$0005, #str_one
	DW #$007E, #$09C8, #$000A, #str_two
	DW #$007E, #$09C8, #$000F, #str_three
	DW #$007E, #$09C8, #$0014, #str_four
	DW #$007E, #$09C8, #$0019, #str_five
	DW #$007E, #$09C8, #$001E, #str_six
	DW #$007E, #$09C8, #$0023, #str_seven
	DW #$007E, #$09C8, #$0028, #str_eight
	DW #$007E, #$09C8, #$002D, #str_nine
	DW #$007E, #$09C8, #$0032, #str_ten
	DW #$FFFF

; Supers
SetSupersMenu:
	DW #$007E, #$09CC, #$0000, #str_zero
	DW #$007E, #$09CC, #$0005, #str_one
	DW #$007E, #$09CC, #$000A, #str_two
	DW #$007E, #$09CC, #$000F, #str_three
	DW #$007E, #$09CC, #$0014, #str_four
	DW #$007E, #$09CC, #$0019, #str_five
	DW #$007E, #$09CC, #$001E, #str_six
	DW #$007E, #$09CC, #$0023, #str_seven
	DW #$007E, #$09CC, #$0028, #str_eight
	DW #$007E, #$09CC, #$002D, #str_nine
	DW #$007E, #$09CC, #$0032, #str_ten
	DW #$FFFF

; PBS
SetPBsMenu:
	DW #$007E, #$09D0, #$0000, #str_zero
	DW #$007E, #$09D0, #$0005, #str_one
	DW #$007E, #$09D0, #$000A, #str_two
	DW #$007E, #$09D0, #$000F, #str_three
	DW #$007E, #$09D0, #$0014, #str_four
	DW #$007E, #$09D0, #$0019, #str_five
	DW #$007E, #$09D0, #$001E, #str_six
	DW #$007E, #$09D0, #$0023, #str_seven
	DW #$007E, #$09D0, #$0028, #str_eight
	DW #$007E, #$09D0, #$002D, #str_nine
	DW #$007E, #$09D0, #$0032, #str_ten
	DW #$FFFF
		
str_zero: DB "0", #$00
str_one: DB "1", #$00	
str_two: DB "2", #$00	
str_three: DB "3", #$00	
str_four: DB "4", #$00	
str_five: DB "5", #$00	
str_six: DB "6", #$00	
str_seven: DB "7", #$00	
str_eight: DB "8", #$00	
str_nine: DB "9", #$00	
str_ten: DB "10", #$00	
str_eleven: DB "11", #$00	
str_twelve: DB "12", #$00	
str_thirteen: DB "13", #$00	
str_fourteen: DB "14", #$00	

	
; Teleport Menu
TeleportMenu:
	DW #$0000, #teleport, #$0000, #str_crateriaship
	DW #$0000, #teleport, #$0001, #str_crateriaparlor
	DW #$0000, #teleport, #$0100, #str_brinstarpink
	DW #$0000, #teleport, #$0101, #str_brinstargreenshaft
	DW #$0000, #teleport, #$0102, #str_brinstargreenetecoons
	DW #$0000, #teleport, #$0103, #str_brinstarkraid
	DW #$0000, #teleport, #$0104, #str_brinstarredtower
	DW #$0000, #teleport, #$0200, #str_norfairgrapple
	DW #$0000, #teleport, #$0201, #str_norfairbubble
	DW #$0000, #teleport, #$0202, #str_norfairtunnel
	DW #$0000, #teleport, #$0203, #str_norfaircrocomire
	DW #$0000, #teleport, #$0204, #str_norfairlnelevator
	DW #$0000, #teleport, #$0205, #str_norfairridley
	DW #$0000, #teleport, #$0300, #str_wreckedship
	DW #$0000, #teleport, #$0400, #str_maridiatube
	DW #$0000, #teleport, #$0401, #str_maridiaelevator
	DW #$0000, #teleport, #$0402, #str_maridiaaqueduct
	DW #$0000, #teleport, #$0403, #str_maridiadraygon
	DW #$0000, #teleport, #$0501, #str_tourianentrance
	DW #$0000, #teleport, #$0500, #str_tourianmb	
	DW #$FFFF

str_crateriaship: DB "CRATERIA SHIP", #$00
str_crateriaparlor: DB "CRATERIA PARLOR", #$00
str_brinstarpink: DB "BRINSTAR PINK SPOSPO", #$00
str_brinstargreenshaft: DB "BRINSTAR GREEN SHAFT", #$00
str_brinstargreenetecoons: DB "BRINSTAR GREEN ETECOONS", #$00
str_brinstarkraid: DB "BRINSTAR KRAID", #$00
str_brinstarredtower: DB "BRINSTAR RED TOWER", #$00
str_norfairgrapple: DB "NORFAIR GRAPPLE", #$00
str_norfairbubble: DB "NORFAIR BUBBLE MOUNTAIN", #$00
str_norfairtunnel: DB "NORFAIR TUNNEL", #$00
str_norfaircrocomire: DB "NORFAIR CROCOMIRE", #$00
str_norfairlnelevator: DB "NORFAIR LN ELEVATOR", #$00
str_norfairridley: DB "NORFAIR RIDLEY", #$00
str_wreckedship: DB "WRECKED SHIP", #$00
str_maridiatube: DB "MARIDIA TUBE", #$00
str_maridiaelevator: DB "MARIDIA ELEVATOR", #$00
str_maridiaaqueduct: DB "MARIDIA AQUEDUCT", #$00
str_maridiadraygon: DB "MARIDIA DRAYGON", #$00
str_tourianentrance: DB "TOURIAN ENTRANCE", #$00
str_tourianmb: DB "TOURIAN MB", #$00 

teleport:	; teleport destination in Y when called
	TYA : AND #$FF00 : XBA : STA $7E079F

	TYA : AND #$00FF : STA $7E078B

	LDA #$0006 : STA $7E0998

    ; Make sure we can teleport to Zebes from Ceres
    SEP #$20
    LDA #$05 : STA $7ED914
    REP #$20

	RTS

; Misc Menu	
MiscMenu:
	DW #$007E, #$0B3F, #$0004, #str_bluesuit			; pointer type #$007E and #$007F toggles a ram address between 0
	DW #$007E, #$0A68, #$0001, #str_flashsuit			; and the value of given parameter
	DW #$007E, #$0A76, #$0001, #str_hyperbeam			; if the #$1000 bit is also set, this instead changes to toggling
	DW #$007E, #$0A66, #$0002, #str_babyslowdown			; only the bits specified in the parameter as a bitmask
	DW #$FFFF							; 

str_bluesuit: DB "BLUE SUIT", #$00
str_flashsuit: DB "FLASH SUIT", #$00
str_hyperbeam: DB "HYPER BEAM", #$00
str_babyslowdown: DB "BABY SLOWDOWN", #$00

; Event Menu
EventMenu:
	DW #$107E, #$D820, #$0001, #str_zebesawake
	DW #$107E, #$D820, #$0800, #str_maridiatubebroken
	DW #$107E, #$D820, #$2000, #str_shaktool
	DW #$107E, #$D820, #$0400, #str_tourian
	DW #$107E, #$D820, #$4000, #str_zebesexploding
	DW #$107E, #$D820, #$8000, #str_animals
	DW #$0000, #reset_events, #$0000, #str_resetevents
	DW #$0000, #reset_doors, #$0000, #str_resetdoors
	DW #$0000, #reset_items, #$0000, #str_resetitems
	DW #$FFFF

str_zebesawake: DB "ZEBES AWAKE", #$00
str_maridiatubebroken: DB "MARIDIA TUBE BROKEN", #$00
str_shaktool: DB "SHAKTOOL DONE DIGGING", #$00
str_tourian: DB "TOURIAN OPEN", #$00
str_zebesexploding: DB "ZEBES SET ABLAZE", #$00
str_animals: DB "ANIMALS SAVED", #$00
str_resetevents: DB "RESET ALL EVENTS", #$00
str_resetdoors: DB "RESET ALL DOORS", #$00
str_resetitems: DB "RESET ALL ITEMS", #$00

reset_events:
	LDA #$0000
	STA $7ED820
	STA $7ED822
	RTS

reset_doors:
	PHP
	%ai8()
	LDX #$B0
	LDA #$00
-	STA $7ED800, X
	INX
	CPX #$D0
	BNE -
	PLP
	RTS

reset_items:
	PHP
	%ai8()
	LDX #$70
	LDA #$00
-	STA $7ED800, X
	INX
	CPX #$90
	BNE -
	PLP
	RTS


; Boss Menu
BossMenu:
	DW #$107E, #$D828, #$0004, #str_bombtorizo
	DW #$107E, #$D828, #$0200, #str_spospo
	DW #$107E, #$D828, #$0100, #str_kraid
	DW #$107E, #$D82A, #$0100, #str_phantoon
	DW #$107E, #$D82C, #$0002, #str_botwoon
	DW #$107E, #$D82C, #$0001, #str_draygon
	DW #$107E, #$D82A, #$0002, #str_crocomire
	DW #$107E, #$D82A, #$0004, #str_gt
	DW #$107E, #$D82A, #$0001, #str_ridley
	DW #$FFFF
	
str_bombtorizo: DB "BOMB TORIZO", #$00
str_spospo: DB "SPORE SPAWN", #$00
str_kraid: DB "KRAID", #$00
str_phantoon: DB "PHANTOON", #$00
str_botwoon: DB "BOTWOON", #$00
str_draygon: DB "DRAYGON", #$00
str_crocomire: DB "CROCOMIRE", #$00
str_gt: DB "GOLDEN TORIZO", #$00
str_ridley: DB "RIDLEY", #$00

; Config Menu
ConfigMenu:
	DW #$0000, #load_menu, #InfoHudMenu, #str_infohudmenu
	DW #$0000, #load_menu, #GameMenu, #str_gamemenu
	DW #$0000, #load_menu, #RngMenu, #str_rngmenu
	DW #$FFFF
	
str_infohudmenu: DB "INFOHUD", #$00
str_gamemenu: DB "GAME", #$00
str_rngmenu: DB "RNG CONTROL", #$00

InfoHudMenu:
	DW #$007F, #$FB60, #$0000, #str_enemyhp
	DW #$007F, #$FB60, #$0001, #str_shinesparktimer
	DW #$007F, #$FB60, #$0002, #str_chargetimer
	DW #$007F, #$FB60, #$0003, #str_xfactortimer
	DW #$107F, #$FB64, #$0001, #str_magicpants
	DW #$007F, #$FB60, #$0004, #str_mbhp
	DW #$007F, #$FB60, #$0005, #str_dashcounter
	DW #$007F, #$FB60, #$0006, #str_vspeed
	DW #$007F, #$FB60, #$0007, #str_iframes
	DW #$FFFF

str_enemyhp: DB "ENEMY HP", #$00
str_shinesparktimer: DB "SHINESPARK TIMER", #$00
str_chargetimer: DB "CHARGE TIMER", #$00
str_xfactortimer: DB "X FACTOR TIMER", #$00	
str_magicpants: DB "MAGIC PANTS", #$00
str_mbhp: DB "MOTHER BRAIN HP", #$00
str_dashcounter: DB "DASH COUNTER", #$00
str_vspeed: DB "VERTICAL SPEED", #$00
str_iframes: DB "IFRAME TIMER", #$00

GameMenu:
	DW #$007E, #$09E2, #$0001, #str_japanesetext
	DW #$007E, #$09E4, #$0001, #str_moonwalk
	DW #$007E, #$09EA, #$0001, #str_iconcancel
	DW #$007E, #$05D1, #$0001, #str_debugmode
	DW #$FFFF
	
str_japanesetext: DB "JAPANESE TEXT", #$00
str_moonwalk: DB "MOON WALK", #$00
str_iconcancel: DB "ICON CANCEL", #$00
str_debugmode: DB "DEBUG MODE", #$00

RngMenu:
	DW #$007F, #$FB80, #$0001, #str_rerandomize
	DW #$0000, #load_menu, #PhantoonMenu, #str_phantoonrngmenu
	DW #$0000, #load_menu, #BotwoonMenu, #str_botwoonrngmenu
	DW #$FFFF

str_rerandomize: DB "RERANDOMIZE", #$00
str_phantoonrngmenu: DB "PHANTOON RNG", #$00
str_botwoonrngmenu: DB "BOTWOON RNG", #$00

PhantoonMenu:
	DW #$007F, #$FB82, #$0000, #str_first_direction_random
	DW #$007F, #$FB82, #$0001, #str_first_direction_left
	DW #$007F, #$FB82, #$0002, #str_first_direction_right
	DW #$007F, #$FB86, #$0000, #str_first_pattern_random
	DW #$007F, #$FB86, #$0001, #str_first_pattern_fast
	DW #$007F, #$FB86, #$0002, #str_first_pattern_mid
	DW #$007F, #$FB86, #$0003, #str_first_pattern_slow
	DW #$007F, #$FB84, #$0000, #str_second_direction_random
	DW #$007F, #$FB84, #$0001, #str_second_direction_left
	DW #$007F, #$FB84, #$0002, #str_second_direction_right
	DW #$007F, #$FB88, #$0000, #str_second_pattern_random
	DW #$007F, #$FB88, #$0001, #str_second_pattern_fast
	DW #$007F, #$FB88, #$0002, #str_second_pattern_mid
	DW #$007F, #$FB88, #$0003, #str_second_pattern_slow
	DW #$FFFF

str_first_direction_random: DB "1ST DIRECTION RANDOM", #$00
str_second_direction_random: DB "2ND DIRECTION RANDOM", #$00
str_first_pattern_random: DB "1ST PATTERN RANDOM", #$00
str_second_pattern_random: DB "2ND PATTERN RANDOM", #$00
str_first_direction_left: DB "1ST LEFT", #$00
str_first_direction_right: DB "1ST RIGHT", #$00
str_second_direction_left: DB "2ND LEFT", #$00
str_second_direction_right: DB "2ND RIGHT", #$00
str_first_pattern_fast: DB "1ST FAST", #$00
str_first_pattern_mid: DB "1ST MID", #$00
str_first_pattern_slow: DB "1ST SLOW", #$00
str_second_pattern_fast: DB "2ND FAST", #$00
str_second_pattern_mid: DB "2ND MID", #$00
str_second_pattern_slow: DB "2ND SLOW", #$00

BotwoonMenu:
	DW #$007F, #$FB8A, #$0000, #str_botwoon_rng_random
	DW #$007F, #$FB8A, #$0001, #str_botwoon_rng_down
	DW #$007F, #$FB8A, #$0009, #str_botwoon_rng_up
	DW #$007F, #$FB8A, #$0011, #str_botwoon_rng_right
	DW #$007F, #$FB8A, #$0019, #str_botwoon_rng_left
	DW #$FFFF

str_botwoon_rng_random: DB "RANDOM", #$00
str_botwoon_rng_down: DB "DOWN", #$00
str_botwoon_rng_up: DB "UP", #$00
str_botwoon_rng_right: DB "RIGHT", #$00
str_botwoon_rng_left: DB "LEFT", #$00

	
CharTable:
	;  0x00																										0x0F
	DW #$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F
	;  0x10																										0x1F
	DW #$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F,#$2C0F
	;  0x20																										0x2F
	DW #$2C0F,#$0CFF,#$0CFD,#$0CFE,#$0CFE,#$0C0A,#$0CFE,#$0CFE,#$0CFC,#$0CFE,#$0CFE,#$0CFE,#$0CFB,#$0CFE,#$0CFA,#$0CFE
	;  0x30																										0x3F
	DW #$0C09,#$0C00,#$0C01,#$0C02,#$0C03,#$0C04,#$0C05,#$0C06,#$0C07,#$0C08,#$0CFE,#$0CFE,#$0CFE,#$0CFE,#$0CFE,#$0CFE
	;  0x40																										0x4F
	DW #$0CFE,#$0CE0,#$0CE1,#$0CE2,#$0CE3,#$0CE4,#$0CE5,#$0CE6,#$0CE7,#$0CE8,#$0CE9,#$0CEA,#$0CEB,#$0CEC,#$0CED,#$0CEE
	;  0x50																										0x5F
	DW #$0CEF,#$0CF0,#$0CF1,#$0CF2,#$0CF3,#$0CF4,#$0CF5,#$0CF6,#$0CF7,#$0CF8,#$0CF9,#$0CFA,#$0CFB,#$0CFC,#$0CFD,#$0CFE

print "Menu Bank Ending at: ", pc
warnpc $DFFFFF
