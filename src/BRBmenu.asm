
%startfree(8E)

!BRB_TOTAL_SCREENS = #$0007

; --------
; BRB Data
; --------
cm_brb_table:
; 1000h bytes transferred
incbin ../resources/cm_brb_gfx.bin

%endfree(8E)


%startfree(A1)

; --------
; BRB Menu
; --------

BRBMenu:
    dw #brb_menu_screen
    dw #$FFFF
    dw #brb_menu_timer_mode
    dw #brb_menu_timer_min
    dw #brb_menu_timer_sec
    dw #brb_menu_timer_clear
    dw #$FFFF
    dw #brb_menu_cycle_timer
    dw #brb_menu_palette_cycle
    dw #$FFFF
    dw #brb_menu_scroll
    dw #$FFFF
    dw #brb_menu_music_toggle
    dw #$0000
    %cm_header("BRB SCREEN MENU")

brb_menu_screen:
    %cm_jsl("Launch BRB Screen", .routine, #0)
  .routine
    JSL cm_brb_loop
    JSL cm_wait_for_lag_frame
    JSL cm_transfer_custom_tileset
    JML refresh_cgram_long

brb_menu_timer_mode:
    dw !ACTION_CHOICE
    dl #!ram_cm_brb_timer_mode
    dw #$0000
    db #$28, "Timer Mode", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "   COUNT UP", #$FF
    db #$28, " COUNT DOWN", #$FF
    db #$FF

brb_menu_timer_min:
    %cm_numfield_word("Minutes on Timer", !ram_cm_brb_mins, 0, 99, 1, 2, #0)

brb_menu_timer_sec:
    %cm_numfield_word("Seconds on Timer", !ram_cm_brb_secs, 0, 59, 1, 2, #0)

brb_menu_timer_clear:
    %cm_jsl("Clear Timer", .routine, #0)
  .routine
    TYA : STA !ram_cm_brb_mins
    STA !ram_cm_brb_secs : STA !ram_cm_brb_frames
    RTL

brb_menu_cycle_timer:
    %cm_numfield_word("Cycle Timer (seconds)", !ram_cm_brb_set_cycle, 1, 512, 1, 10, .routine)
  .routine
    LDA !ram_cm_brb_set_cycle : BNE .setTime
    LDA #$0009 ; default to ~10s
  .setTime
    ASL #6 : STA !ram_cm_brb_cycle_time
    RTL

brb_menu_palette_cycle:
    %cm_toggle_bit_inverted("Cycle Palettes", !ram_cm_brb_palette, #$FFFF, #0)

brb_menu_scroll:
    %cm_toggle("Screen Scrolling", !ram_cm_brb_scroll, #$01, #0)

brb_menu_music_toggle:
    dw !ACTION_CHOICE
    dl #!sram_music_toggle
    dw .routine
    db #$28, "Music", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "         ON", #$FF
    db #$28, "   FAST OFF", #$FF
    db #$28, " PRESET OFF", #$FF
    db #$FF
  .routine
    ; Clear music queue
    STZ !MUSIC_QUEUE_TIMERS : STZ !MUSIC_QUEUE_TIMERS+$2
    STZ !MUSIC_QUEUE_TIMERS+$4 : STZ !MUSIC_QUEUE_TIMERS+$6
    STZ !MUSIC_QUEUE_TIMERS+$8 : STZ !MUSIC_QUEUE_TIMERS+$A
    STZ !MUSIC_QUEUE_TIMERS+$C : STZ !MUSIC_QUEUE_TIMERS+$E
    STZ !MUSIC_QUEUE_NEXT : STZ !MUSIC_QUEUE_START
    STZ !MUSIC_ENTRY : STZ !MUSIC_TIMER
    CMP #$0001 : BEQ .resume_music
    STZ $2140
    RTL
  .resume_music
    LDA !MUSIC_DATA : CLC : ADC #$FF00 : PHA : STZ !MUSIC_DATA : PLA : JSL !MUSIC_ROUTINE
    LDA !MUSIC_TRACK : PHA : STZ !MUSIC_TRACK : PLA : JSL !MUSIC_ROUTINE
    RTL


; ---------
; BRB Logic
; ---------

cm_brb_loop:
{
    ; Initial setup
    %ai16()
    LDA !DP_CurrentMenu : PHA
    LDA !DP_CurrentMenu+2 : PHA
    PHX : PHY

    LDA !ram_cm_brb_palette : PHA ; preserve menu palette
    CMP #$FFFF : BEQ .continue_init ; check if palette swapping disabled
    TDC : INC : STA !ram_cm_brb_palette

  .continue_init
    TDC : STA !ram_cm_brb_screen
    STA !ram_cm_brb_frames : STA !ram_cm_brb_timer
    STA !ram_cm_brb_scroll_H : STA !ram_cm_brb_scroll_V
    STA !ram_cm_brb_scroll_X
    LDA #$0008 : STA !ram_cm_brb_scroll_Y

    JSR cm_transfer_brb_tileset
    JSL cm_wait_for_lag_frame
    JSL $808F0C ; Music queue
    JSL $8289EF ; Sound fx queue

if !ZSNES_SPLASHSCREEN_GRAPHICS
    LDA !ram_sram_detection
    CMP !SRAM_DETECTION_ZSNES : BNE .loop
    JSR brb_zsnes_splashscreen
endif

  .loop
    ; [do entertaining stuff here]
    JSR cm_draw_brb

    ; [do loop stuff down here]

    LDA !ram_cm_leave : BEQ .check_input

  .exit
    ; Exit brb loop
    TDC : STA !ram_cm_leave
    PLA : STA !ram_cm_brb_palette ; restore menu palette
    LDA #$0046 : JSL !SFX_LIB2 ; lavaquake sfx
    JSL cm_wait_for_lag_frame

    LDA !REG_2111_BG3_X
    %a8()
    STA $2111 : XBA : STA $2111
    %a16()
    LDA !REG_2112_BG3_Y
    %a8()
    STA $2112 : XBA : STA $2112
    %a16()

    PLY : PLX
    PLA : STA !DP_CurrentMenu+2
    PLA : STA !DP_CurrentMenu
    RTL

  .check_input
    ; Make sure we don't read joysticks twice in the same frame
    LDA !FRAME_COUNTER : CMP !ram_cm_input_counter : PHP
    STA !ram_cm_input_counter
    PLP : BNE .input_read
    JSL $809459 ; Read controller input

  .input_read
    LDA !IH_CONTROLLER_PRI_NEW : BEQ .loop

    ; A = cycle now, B = exit
    CMP !CTRL_B : BEQ .exit
    CMP !CTRL_A : BNE .loop

    LDA !ram_cm_brb_screen : INC : STA !ram_cm_brb_screen
    CMP !BRB_TOTAL_SCREENS : BMI .loop
    TDC : STA !ram_cm_brb_screen : STA !ram_cm_brb_timer
    BRA .loop
}

cm_draw_brb:
{
    LDA !ram_sram_detection : BNE .splash_screen
    JSL cm_tilemap_bg_interior_long
    JSR cm_tilemap_brb
    JSL cm_tilemap_transfer_long
    JMP cm_brb_scroll_BG3

  .splash_screen
if !ZSNES_SPLASHSCREEN_GRAPHICS
    CMP !SRAM_DETECTION_ZSNES : BEQ .end
endif
    JSL cm_tilemap_bg_interior_long
    JSR cm_tilemap_splash_screen
    JSL cm_tilemap_transfer_long

  .end
    RTS
}

cm_tilemap_brb:
{
    ; Handle timer for cycling text and palette
    ; Timer is only incremented once every other frame
    LDA !ram_cm_brb_timer : CMP !ram_cm_brb_cycle_time : BMI .draw_brb_stuff
    TDC : STA !ram_cm_brb_timer
    JSL MenuRNG ; Get new RNG values

    ; Cycle screen text
    LDA !ram_cm_brb_screen : INC : STA !ram_cm_brb_screen
    CMP !BRB_TOTAL_SCREENS : BMI .done_cycle_text
    TDC : STA !ram_cm_brb_screen

  .done_cycle_text
    ; Cycle menu palette
    LDA !ram_cm_brb_palette : CMP #$FFFF : BEQ .draw_brb_stuff
    INC : CMP !PROFILE_COUNT : BMI .done_cycle_palette
    TDC : INC

  .done_cycle_palette
    STA !ram_cm_brb_palette
    JSL PrepMenuPalette_standard
    JSR cm_transfer_brb_cgram

  .draw_brb_stuff
    ; Drawing whatever manually
    LDA !ram_cm_brb_timer : INC : STA !ram_cm_brb_timer
    LDA !ram_seed_X : AND #$07FE : TAX
    LDA !BRB_METROID : STA !ram_tilemap_buffer,X

    LDA !ram_seed_X : XBA : AND #$07FE : TAX
    LDA !BRB_METROID : STA !ram_tilemap_buffer,X

    LDA !ram_seed_Y : AND #$07FE : TAX
    LDA !BRB_METROID : STA !ram_tilemap_buffer,X

    LDA !ram_seed_Y : XBA : AND #$07FE : TAX
    LDA !BRB_METROID : STA !ram_tilemap_buffer,X

  .draw_text
    ; Same bank for all of the BRB text
    PHK : PHK : PLA : STA !DP_CurrentMenu+2

    LDA.w #BRB_common_line1 : STA !DP_CurrentMenu
    LDX #$01C6
    JSR cm_draw_brb_text

    LDA.w #BRB_common_line2 : STA !DP_CurrentMenu
    LDX #$0286
    JSR cm_draw_brb_text

    ; Handle timer
    LDA !ram_cm_brb_timer_mode : BEQ .draw_cycling_text
    DEC : BEQ .countup
    JSR brb_handle_countdown_timer
    BRA .draw_timer

  .countup
    JSR brb_handle_countup_timer

  .draw_timer
    ; Seconds
    LDA !ram_cm_brb_secs : ASL : TAX
    LDA.l TimerNumberGFX1,X : STA !ram_tilemap_buffer+$360
    LDA.l TimerNumberGFX2,X : STA !ram_tilemap_buffer+$362

    ; Minutes
    LDA !ram_cm_brb_mins : ASL : TAX
    LDA.l TimerNumberGFX1,X : STA !ram_tilemap_buffer+$35A
    LDA.l TimerNumberGFX2,X : STA !ram_tilemap_buffer+$35C

    ; Draw colon seperator
    LDA #$2849 : STA !ram_tilemap_buffer+$35E

    ; Draw +/- after countdown expires
    LDA !ram_cm_brb_timer_mode : BEQ .draw_cycling_text
    DEC : BEQ .draw_countup
    LDA #$286C : STA !ram_tilemap_buffer+$358
    BRA .draw_cycling_text

  .draw_countup
    LDA #$288B : STA !ram_tilemap_buffer+$358

  .draw_cycling_text
    ; Draw cycling text
    ; first cycled line
    LDA !ram_cm_brb_screen : ASL : TAX
    LDA.l BRBTilemapTableLine1,X : STA !DP_CurrentMenu
    LDX #$04C6
    JSR cm_draw_brb_text

    ; second cycled line
    LDA !ram_cm_brb_screen : ASL : TAX
    LDA.l BRBTilemapTableLine2,X : STA !DP_CurrentMenu
    LDX #$0586
    JSR cm_draw_brb_text

    RTS
}

cm_tilemap_splash_screen:
{
    ; Same bank for all of the BRB text
    PHK : PHK : PLA : STA !DP_CurrentMenu+2

    LDA !ram_sram_detection
    CMP !SRAM_DETECTION_32KB : BEQ .legacy
    CMP !SRAM_DETECTION_128KB : BEQ .tinystates
    CMP !SRAM_DETECTION_ZSNES : BEQ .zsnes
    BRK

  .legacy
    LDA.w #BRB_legacy_line2 : STA !DP_CurrentMenu
    LDX #$0406
    JSR cm_draw_brb_text
    LDA.w #BRB_legacy_line3 : STA !DP_CurrentMenu
    LDX #$04C6
    JSR cm_draw_brb_text
    BRA .splashLine4

  .tinystates
    LDA.w #BRB_tinystates_line2 : STA !DP_CurrentMenu
    LDX #$0406
    JSR cm_draw_brb_text
    LDA.w #BRB_tinystates_line3 : STA !DP_CurrentMenu
    LDX #$04C6
    JSR cm_draw_brb_text
    BRA .splashLine4

  .zsnes
    LDA.w #BRB_zsnes_line2 : STA !DP_CurrentMenu
    LDX #$0406
    JSR cm_draw_brb_text
    LDA.w #BRB_zsnes_line4 : STA !DP_CurrentMenu
    LDX #$0586
    JSR cm_draw_brb_text
    BRA .splashLine1

  .splashLine4
    LDA.w #BRB_splash_line4 : STA !DP_CurrentMenu
    LDX #$0586
    JSR cm_draw_brb_text

  .splashLine1
    LDA.w #BRB_splash_line1 : STA !DP_CurrentMenu
    LDX #$0346
    JSR cm_draw_brb_text
    LDA.w #BRB_splash_title : STA !DP_CurrentMenu
    LDX #$01C6
    JMP cm_draw_brb_text
}

if !ZSNES_SPLASHSCREEN_GRAPHICS
brb_zsnes_splashscreen:
{
    ; Set up video mode
    %ai8()
    LDA #$80    ; screen off
    STA $2100   ; brightness + screen enable register
    LDA #$03
    STA $2105   ; video mode 3, 8x8 tiles, 256 color BG1, 16 color BG2
    STZ $2106   ; noplanes, no mosaic, = Mosaic register
    LDA #$01
    STA $210B   ; Set BG1 tile data offset to $2000
    STZ $210D   ; Plane 0 scroll x (first 8 bits)
    STZ $210D   ; Plane 0 scroll x (last 3 bits) #$0 - #$07ff
    LDA #$01
    STA $212C   ; Enable BG1
    LDA #$FF
    STA $210E   ; Set BG1 scroll register
    STA $210E
    STZ $212E   ; Window mask for Main Screen
    STZ $212F   ; Window mask for Sub Screen
    LDA #$30
    STA $2130   ; Color addition and screen addition init setting
    STZ $2131   ; Add/Sub sub designation for screen, sprite, color
    LDA #$E0
    STA $2132   ; color data for addition/subtraction
    STZ $2133   ; Screen setting (interlace x,y/enable SFX data)

    ; Load tilemap and tile data
    %i16()
    STZ $2116
    LDA #$0C
    STA $2107   ; Set BG1 tilemap offset to $1800 and size to 32x32
    STA $2117   ; VRAM write address $1800

    LDA #$80
    STA $2115   ; VRAM single word transfer, word increment
    LDX #$1801
    STX $4300   ; DMA destination: VMDATAL/VMDATAH, fixed source
    LDX.w #ZSNES_TileMap
    STX $4302   ; Low DMA source address
    LDA.b #ZSNES_TileMap>>16
    STA $4304   ; High DMA source address
    LDX #$0800
    STX $4305   ; Transfer 2048 bytes
    LDA #$01
    STA $420B   ; Start DMA transfer

    LDX.w #ZSNES_Tiles
    STX $4302   ; Low DMA source address
    LDA.b #ZSNES_Tiles>>16
    STA $4304   ; High DMA source address
    LDX #$8000
    STX $4305   ; Transfer 32768 bytes
    LDA #$01
    STA $420B   ; Start DMA transfer

    LDX.w #ZSNES_Tiles
    STX $4302   ; Low DMA source address
    LDA.b #ZSNES_Tiles>>16
    INC
    STA $4304   ; High DMA source address
    LDX #$6040
    STX $4305   ; Transfer 24640 bytes
    LDA #$01
    STA $420B   ; Start DMA transfer

    ; Load CGRAM via DMA transfer
    STZ $2121   ; Start at color 0
    LDX #$2200
    STX $4300   ; DMA destination: CGDATA, byte increment
    LDX.w #ZSNES_Palette
    STX $4302   ; Low DMA source address
    LDA.b #ZSNES_Palette>>16
    STA $4304   ; High DMA source address
    LDX #$0200
    STX $4305   ; Transfer 512 bytes
    LDA #$01
    STA $420B   ; Start DMA transfer

    LDA #$0F    ; screen on, full brightness
    STA $2100   ; brightness + screen enable register

    %a16()
    RTS
}
endif ; !ZSNES_SPLASHSCREEN_GRAPHICS

brb_handle_countup_timer:
{
    LDA !ram_cm_brb_frames : INC : STA !ram_cm_brb_frames
    CMP !FRAMERATE : BNE .done
    TDC : STA !ram_cm_brb_frames
    LDA !ram_cm_brb_secs : INC : STA !ram_cm_brb_secs
    CMP #$003C : BNE .done
    TDC : STA !ram_cm_brb_secs
    LDA !ram_cm_brb_mins : INC : STA !ram_cm_brb_mins
  .done
    RTS
}

brb_handle_countdown_timer:
{
    LDA !ram_cm_brb_frames : DEC : STA !ram_cm_brb_frames : BPL .done
    LDA !FRAMERATE-1 : STA !ram_cm_brb_frames
    LDA !ram_cm_brb_secs : DEC : STA !ram_cm_brb_secs : BPL .done
    LDA #$003B : STA !ram_cm_brb_secs
    LDA !ram_cm_brb_mins : DEC : STA !ram_cm_brb_mins : BPL .done
    TDC : STA !ram_cm_brb_secs : STA !ram_cm_brb_mins
    INC : STA !ram_cm_brb_timer_mode : STA !ram_cm_brb_frames
  .done
    RTS
}

cm_transfer_brb_cgram:
{
    TDC : STA $7EC000
    LDA !ram_cm_palette_border : STA $7EC00A
    LDA !ram_cm_palette_headeroutline : STA $7EC012
    LDA !ram_cm_palette_text : STA $7EC014
    LDA !ram_cm_palette_background : STA $7EC016 : STA $7EC00E
    LDA !ram_cm_palette_numoutline : STA $7EC01A
    LDA !ram_cm_palette_numfill : STA $7EC01C
    LDA !ram_cm_palette_toggleon : STA $7EC032
    LDA !ram_cm_palette_seltext : STA $7EC034
    LDA !ram_cm_palette_seltextbg : STA $7EC036
    LDA !ram_cm_palette_numseloutline : STA $7EC03A
    LDA !ram_cm_palette_numsel : STA $7EC03C
    JSL transfer_cgram_long
    RTS
}

cm_draw_brb_text:
{
    ; X = pointer to tilemap area (STA !ram_tilemap_buffer,X)
    ; !DP_CurrentMenu[0x3] = address
    %a8()
    LDY #$0000
    ; terminator
    LDA [!DP_CurrentMenu],Y : INY : CMP #$FF : BEQ .end
    ; ORA with palette info
    ORA !DP_Palette : STA !DP_Palette

  .loop
    LDA [!DP_CurrentMenu],Y : CMP #$FF : BEQ .end       ; terminator
    STA !ram_tilemap_buffer,X : INX                     ; tile
    LDA !DP_Palette : STA !ram_tilemap_buffer,X : INX   ; palette
    INY : BRA .loop

  .end
    %a16()
    RTS
}

cm_transfer_brb_tileset:
{
    PHP

    ; Load custom vram to normal location
    %a8()
    LDA #$80 : STA $2100 ; enable forced blanking
    LDA #!DP_CurrentMenu : STA $210C
    LDA #$80 : STA $2115 ; word-access, incr by 1
    LDX #$4000 : STX $2116 ; VRAM address (8000 in vram)
    LDX.w #cm_brb_table : STX $4302 ; Source offset
    LDA.b #cm_brb_table>>16 : STA $4304 ; Source bank
    LDX #$1000 : STX $4305 ; Size (0x10 = 1 tile)
    LDA #$01 : STA $4300 ; word, normal increment (DMA MODE)
    LDA #$18 : STA $4301 ; destination (VRAM write)
    LDA #$01 : STA $420B ; initiate DMA (channel 1)
    LDA #$0F : STA $2100 ; disable forced blanking
    PLP
    RTS
}

cm_brb_scroll_BG3:
{
    LDA !ram_cm_brb_scroll : BNE .incrementTimer

  .skip
    RTS

  .incrementTimer
    LDA !ram_cm_brb_scroll_timer : INC : STA !ram_cm_brb_scroll_timer
    CMP #$0007 : BNE .chooseScrolling
    TDC : STA !ram_cm_brb_scroll_timer

  .chooseScrolling
    PHP : %a16()
    ; vertical scrolling at 3, 5
    LDA !ram_cm_brb_scroll_timer : CMP #$0003 : BEQ .verticalScrolling
    CMP #$0005 : BNE .horizontalScrolling

  .verticalScrolling
    LDA !ram_cm_brb_scroll_V : BNE .moveUp
    LDA !ram_cm_brb_scroll_Y : INC : STA !ram_cm_brb_scroll_Y
    CMP #$0011 : BNE .horizontalScrolling

  .reverseV
    LDA !ram_cm_brb_scroll_V : BEQ .incV
    TDC : STA !ram_cm_brb_scroll_V
    BRA .horizontalScrolling

  .incV
    INC : STA !ram_cm_brb_scroll_V
    BRA .horizontalScrolling

  .moveUp
    LDA !ram_cm_brb_scroll_Y : DEC : STA !ram_cm_brb_scroll_Y
    BPL .horizontalScrolling
    LDA #$0001 : STA !ram_cm_brb_scroll_Y
    BRA .reverseV

  .horizontalScrolling
    ; horizontal scrolling at 1, 3, 5
    LDA !ram_cm_brb_scroll_timer : AND #$0001 : BEQ .applyScrolls
    LDA !ram_cm_brb_scroll_H : BNE .moveLeft
    LDA !ram_cm_brb_scroll_X : INC : STA !ram_cm_brb_scroll_X
    CMP #$000F : BEQ .reverseH
    CMP #$0400 : BNE .applyScrolls
    TDC : STA !ram_cm_brb_scroll_X
    BRA .applyScrolls

  .moveLeft
    LDA !ram_cm_brb_scroll_X : DEC : STA !ram_cm_brb_scroll_X
    BMI .dec3FF
    CMP #$03F1 : BNE .applyScrolls

  .reverseH
    LDA !ram_cm_brb_scroll_H : BEQ .incH
    TDC : STA !ram_cm_brb_scroll_H
    BRA .applyScrolls

  .incH
    INC : STA !ram_cm_brb_scroll_H
    BRA .applyScrolls
    
  .dec3FF
    LDA #$03FF : STA !ram_cm_brb_scroll_X

  .applyScrolls
    ; force blank and apply scrolls
    %i8()
    LDX #$80 : STX $2100

    LDA !ram_cm_brb_scroll_X
    %a8()
    STA $2111 : XBA : STA $2111
    %a16()

    LDA !ram_cm_brb_scroll_Y : DEC
    %a8()
    STA $2112 : XBA : STA $2112

    LDA #$0F : STA $2100

    PLP
    RTS
}


; -------------
; BRB Text Data
; -------------

table ../resources/header.tbl
BRB_common_line1:
    db #$28, "       The Streamer", #$FF
BRB_common_line2:
    db #$28, "    Will Be Right Back", #$FF


BRB_splash_title:
    db #$28, "  Wrong Platform Selected", #$FF


BRB_zsnes_line4:
    db #$28, "     DO NOT USE ZSNES", #$FF
table ../resources/normal.tbl


BRB_splash_line1:
    db #$28, "    You need to select", #$FF
BRB_splash_line4:
    db #$28, " at smpractice.speedga.me", #$FF


BRB_legacy_line2:
    db #$28, "     SNES Classic or", #$FF
BRB_legacy_line3:
    db #$28, "     Virtual Console", #$FF


BRB_tinystates_line2:
    db #$28, "       Everdrive or", #$FF
BRB_tinystates_line3:
    db #$28, "   Snes9x 1.60 or older", #$FF


BRB_zsnes_line2:
    db #$28, "     another emulator", #$FF


BRBTilemapTableLine1:
    dw #BRB_screen1_line1
    dw #BRB_screen2_line1
    dw #BRB_screen3_line1
    dw #BRB_screen4_line1
    dw #BRB_screen5_line1
    dw #BRB_screen6_line1
    dw #BRB_screen7_line1

BRBTilemapTableLine2:
    dw #BRB_screen1_line2
    dw #BRB_screen2_line2
    dw #BRB_screen3_line2
    dw #BRB_screen4_line2
    dw #BRB_screen5_line2
    dw #BRB_screen6_line2
    dw #BRB_screen7_line2


BRB_screen1_line1:
    db #$28, "   SM Speedrunning Wiki", #$FF
BRB_screen1_line2:
    db #$28, "   wiki.supermetroid.run", #$FF


BRB_screen2_line1:
    db #$28, "  SM Speedrunning Discord", #$FF
BRB_screen2_line2:
    db #$28, "   SMDiscord.spazer.link", #$FF


BRB_screen3_line1:
    db #$28, "Find the practice hack at", #$FF
BRB_screen3_line2:
    db #$28, "  smpractice.speedga.me", #$FF


BRB_screen4_line1:
    db #$28, "  Control Schemes for SM", #$FF
BRB_screen4_line2:
    db #$28, "   controls.spazer.link", #$FF


BRB_screen5_line1:
    db #$28, "Support FUNtoon on Patreon", #$FF
BRB_screen5_line2:
; !funtoonpatreon
    db #$28, "      ", #$1A, "funtoonpatreon", #$FF


BRB_screen6_line1:
    db #$28, " Crazy chain damage clips", #$FF
BRB_screen6_line2:
    db #$28, "    chain.spazer.link", #$FF


BRB_screen7_line1:
    db #$28, "  Learn new SM strats at", #$FF
BRB_screen7_line2:
    db #$28, "        crocomi.re", #$FF

%endfree(A1)


if !ZSNES_SPLASHSCREEN_GRAPHICS
org $E28000
check bankcross off
print pc, " zsnes splashscreen graphics crossbank start"

ZSNES_Tiles:
incbin ../resources/zsnes_tiles.bin

ZSNES_TileMap:
incbin ../resources/zsnes_tilemap.bin

ZSNES_Palette:
incbin ../resources/zsnes_palette.bin

print pc, " zsnes splashscreen graphics crossbank end"
warnpc $E48000
check bankcross on
endif

