
pushpc
org $E4E000
print pc, " menu customization start"

; ----------
; Audio Menu
; ----------

AudioMenu:
    dw #audio_music_toggle
    dw #audio_fanfare_toggle
    dw #audio_health_alarm
    dw #$FFFF
    dw #mc_customsfx
    dw #$FFFF
    dw #audio_goto_music
    dw #$FFFF
    dw #audio_sfx_lib1
    dw #audio_sfx_lib2
    dw #audio_sfx_lib3
    dw #audio_sfx_silence
    dw #$0000
    %cm_header("AUDIO MENU")
    %cm_footer("PRESS Y TO PLAY SOUNDS")

audio_music_toggle:
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

audio_fanfare_toggle:
!FANFARE_FORCE_MUSIC = #$0002
    dw !ACTION_CHOICE
    dl #!sram_fanfare
    dw #$0000
    db #$28, "Fanfare", #$FF
    db #$28, "        OFF", #$FF
    db #$28, "         ON", #$FF
    db #$28, "FORCE MUSIC", #$FF
    db #$FF

audio_health_alarm:
    dw !ACTION_CHOICE
    dl #!sram_healthalarm
    dw #$0000
    db #$28, "Low Health Alar", #$FF
    db #$28, "m     NEVER", #$FF
    db #$28, "m   VANILLA", #$FF
    db #$28, "m    PB FIX", #$FF
    db #$28, "m  IMPROVED", #$FF
    db #$28, "m ALWAYS ON", #$FF
    db #$FF

audio_goto_music:
    %cm_submenu("Music Selection", #MusicSelectMenu1)

audio_sfx_lib1:
    %cm_numfield_sound("Library One Sound", !ram_cm_sfxlib1, 1, 66, 1, 4, .routine)
  .routine
    LDA !IH_CONTROLLER_PRI_NEW : BIT !CTRL_Y : BEQ .done
    LDA !ram_cm_sfxlib1 : JML !SFX_LIB1
  .done
    RTL

audio_sfx_lib2:
    %cm_numfield_sound("Library Two Sound", !ram_cm_sfxlib2, 1, 127, 1, 4, .routine)
  .routine
    LDA !IH_CONTROLLER_PRI_NEW : BIT !CTRL_Y : BEQ audio_sfx_lib1_done
    LDA !ram_cm_sfxlib2 : JML !SFX_LIB2

audio_sfx_lib3:
    %cm_numfield_sound("Library Three Sound", !ram_cm_sfxlib3, 1, 47, 1, 4, .routine)
  .routine
    LDA !IH_CONTROLLER_PRI_NEW : BIT !CTRL_Y : BEQ audio_sfx_lib1_done
    LDA !ram_cm_sfxlib3 : JML !SFX_LIB3

audio_sfx_silence:
    %cm_jsl("Silence Sound FX", .routine, #0)
  .routine
    JML stop_all_sounds

MusicSelectMenu1:
    dw #audio_music_title1
    dw #audio_music_title2
    dw #audio_music_intro
    dw #audio_music_ceres
    dw #audio_music_escape
    dw #audio_music_rainstorm
    dw #audio_music_spacepirate
    dw #audio_music_samustheme
    dw #audio_music_greenbrinstar
    dw #audio_music_redbrinstar
    dw #audio_music_uppernorfair
    dw #audio_music_lowernorfair
    dw #audio_music_easternmaridia
    dw #audio_music_westernmaridia
    dw #audio_music_wreckedshipoff
    dw #audio_music_wreckedshipon
    dw #audio_music_hallway
    dw #audio_music_goldenstatue
    dw #audio_music_tourian
    dw #$FFFF
    dw #audio_music_goto_2
    dw #$0000
    %cm_header("PLAY MUSIC - PAGE ONE")

audio_music_title1:
    %cm_jsl("Title Theme Part 1", #audio_playmusic, #$0305)

audio_music_title2:
    %cm_jsl("Title Theme Part 2", #audio_playmusic, #$0306)

audio_music_intro:
    %cm_jsl("Intro", #audio_playmusic, #$3605)

audio_music_ceres:
    %cm_jsl("Ceres Station", #audio_playmusic, #$2D06)

audio_music_escape:
    %cm_jsl("Escape Sequence", #audio_playmusic, #$2407)

audio_music_rainstorm:
    %cm_jsl("Zebes Rainstorm", #audio_playmusic, #$0605)

audio_music_spacepirate:
    %cm_jsl("Space Pirate Theme", #audio_playmusic, #$0905)

audio_music_samustheme:
    %cm_jsl("Samus Theme", #audio_playmusic, #$0C05)

audio_music_greenbrinstar:
    %cm_jsl("Green Brinstar", #audio_playmusic, #$0F05)

audio_music_redbrinstar:
    %cm_jsl("Red Brinstar", #audio_playmusic, #$1205)

audio_music_uppernorfair:
    %cm_jsl("Upper Norfair", #audio_playmusic, #$1505)

audio_music_lowernorfair:
    %cm_jsl("Lower Norfair", #audio_playmusic, #$1805)

audio_music_easternmaridia:
    %cm_jsl("Eastern Maridia", #audio_playmusic, #$1B05)

audio_music_westernmaridia:
    %cm_jsl("Western Maridia", #audio_playmusic, #$1B06)

audio_music_wreckedshipoff:
    %cm_jsl("Wrecked Ship Unpowered", #audio_playmusic, #$3005)

audio_music_wreckedshipon:
    %cm_jsl("Wrecked Ship", #audio_playmusic, #$3006)

audio_music_hallway:
    %cm_jsl("Hallway to Statue", #audio_playmusic, #$0004)

audio_music_goldenstatue:
    %cm_jsl("Golden Statue", #audio_playmusic, #$0906)

audio_music_tourian:
    %cm_jsl("Tourian", #audio_playmusic, #$1E05)

audio_music_goto_2:
    %cm_adjacent_submenu("GOTO PAGE TWO", #MusicSelectMenu2)

MusicSelectMenu2:
    dw #audio_music_preboss1
    dw #audio_music_preboss2
    dw #audio_music_miniboss
    dw #audio_music_smallboss
    dw #audio_music_bigboss
    dw #audio_music_motherbrain
    dw #audio_music_credits
    dw #audio_music_itemroom
    dw #audio_music_itemfanfare
    dw #audio_music_spacecolony
    dw #audio_music_zebesexplodes
    dw #audio_music_loadsave
    dw #audio_music_death
    dw #audio_music_lastmetroid
    dw #audio_music_galaxypeace
    dw #$FFFF
    dw #audio_music_goto_1
    dw #$0000
    %cm_header("PLAY MUSIC - PAGE TWO")

audio_music_preboss1:
    %cm_jsl("Chozo Statue Awakens", #audio_playmusic, #$2406)

audio_music_preboss2:
    %cm_jsl("Approaching Confrontation", #audio_playmusic, #$2706)

audio_music_miniboss:
    %cm_jsl("Miniboss Fight", #audio_playmusic, #$2A05)

audio_music_smallboss:
    %cm_jsl("Small Boss Confrontation", #audio_playmusic, #$2705)

audio_music_bigboss:
    %cm_jsl("Big Boss Confrontation", #audio_playmusic, #$2405)

audio_music_motherbrain:
    %cm_jsl("Mother Brain Fight", #audio_playmusic, #$2105)

audio_music_credits:
    %cm_jsl("Credits", #audio_playmusic, #$3C05)

audio_music_itemroom:
    %cm_jsl("Item - Elevator Room", #audio_playmusic, #$0003)

audio_music_itemfanfare:
    %cm_jsl("Item Fanfare", #audio_playmusic, #$0002)

audio_music_spacecolony:
    %cm_jsl("Arrival at Space Colony", #audio_playmusic, #$2D05)

audio_music_zebesexplodes:
    %cm_jsl("Zebes Explodes", #audio_playmusic, #$3305)

audio_music_loadsave:
    %cm_jsl("Samus Appears", #audio_playmusic, #$0001)

audio_music_death:
    %cm_jsl("Death", #audio_playmusic, #$3905)

audio_music_lastmetroid:
    %cm_jsl("Last Metroid in Captivity", #audio_playmusic, #$3F05)

audio_music_galaxypeace:
    %cm_jsl("The Galaxy is at Peace", #audio_playmusic, #$4205)

audio_music_goto_1:
    %cm_adjacent_submenu("GOTO PAGE TWO", #MusicSelectMenu1)

audio_playmusic:
{
    PHY
    ; always load silence first
    TDC : JSL !MUSIC_ROUTINE
    PLY : TYA
    STZ $C1 : %a8() : STA $C1
    XBA : %a16()
    STA !ROOM_MUSIC_DATA_INDEX
    ; play from negative data index
    ORA #$FF00 : JSL !MUSIC_ROUTINE
    ; play from track index
    LDA $C1 : JSL !MUSIC_ROUTINE
    RTL
}


; -----------------------
; Customize Practice Menu
; -----------------------

CustomizeMenu:
    dw #mc_menubackground
    dw #mc_custompalettes_menu
    dw #mc_paletteprofile
    dw #mc_palette2custom
    dw #mc_paletterando
    dw #$FFFF
    dw #mc_customsfx
    dw #$FFFF
    dw #mc_customfont
    dw #$FFFF
    dw #mc_menuscroll_button
    dw #mc_menuscroll_delay
    dw #$FFFF
    dw #mc_customheader
    dw #$0000
    %cm_header("CUSTOMIZE PRACTICE MENU")

mc_menubackground:
    %cm_toggle("Menu Background", !sram_menu_background, #$0001, #0)

mc_custompalettes_menu:
    %cm_submenu("Customize Menu Palette", #CustomPalettesMenu)

mc_paletteprofile:
    dw !ACTION_CHOICE
    dl #!sram_custompalette_profile
    dw refresh_cgram_long
    db #$28, "Menu Palette", #$FF
    db #$28, "     CUSTOM", #$FF ; CUSTOM should always be first
    db #$28, "     TWITCH", #$FF
    db #$28, "    DEFAULT", #$FF
    db #$28, "    FIREBAT", #$FF
    db #$28, " WARDRINKER", #$FF
    db #$28, "        MM2", #$FF
    db #$28, "      PTOIL", #$FF
    db #$28, "     ZOHDIN", #$FF
    db #$28, "    DARKXOA", #$FF
    db #$28, "    MELONAX", #$FF
    db #$28, " TOPSYTURVE", #$FF
    db #$28, "        OST", #$FF
    db #$28, "        JRP", #$FF
    db #$28, "     LAYRUS", #$FF
    db #$28, "      DAYNE", #$FF
    db #$28, "DREAMCOWBOY", #$FF
    db #$28, "       ZENI", #$FF
    db #$28, "       DYCE", #$FF
    db #$28, "    FOREVER", #$FF
    db #$28, "       GREY", #$FF
    db #$28, "        RED", #$FF
    db #$28, "     PURPLE", #$FF
    db #$28, "        HUD", #$FF
    db #$28, "      MEMES", #$FF
    db #$28, "GRAPEDRINKZ", #$FF
    db #$28, "  PAPASCHMO", #$FF
    db #$28, "    VESPHER", #$FF
    db #$28, "      EXAKT", #$FF
    db #$FF

mc_palette2custom:
    %cm_submenu("Copy Palette to Custom", #Palette2CustomConfirm)

Palette2CustomConfirm:
    dw #palette2custom_abort
    dw #$FFFF
    dw #palette2custom_confirm
    dw #$0000
    %cm_header("OVERWRITE CUSTOM PALETTES")
    %cm_footer("YOU WILL LOSE SAVED COLORS")

palette2custom_abort:
    %cm_jsl("ABORT", #.routine, #$0000)
  .routine
    JML cm_previous_menu

palette2custom_confirm:
    %cm_jsl("Copy Palette to Custom", .routine, #$0000)
  .routine
    LDA !sram_custompalette_profile : BEQ .custom_selected
    PHB : %i8()
    LDX.b #PaletteProfileTables>>16 : PHX : PLB
    ASL : TAX
    LDA.l PaletteProfileTables,X : STA $C1

    ; copy table to SRAM
    LDY #$00 : LDA ($C1),Y : STA !sram_palette_border
    LDY #$02 : LDA ($C1),Y : STA !sram_palette_headeroutline
    LDY #$04 : LDA ($C1),Y : STA !sram_palette_text
    LDY #$06 : LDA ($C1),Y : STA !sram_palette_background
    LDY #$08 : LDA ($C1),Y : STA !sram_palette_numoutline
    LDY #$0A : LDA ($C1),Y : STA !sram_palette_numfill
    LDY #$0C : LDA ($C1),Y : STA !sram_palette_toggleon
    LDY #$0E : LDA ($C1),Y : STA !sram_palette_seltext
    LDY #$10 : LDA ($C1),Y : STA !sram_palette_seltextbg
    LDY #$12 : LDA ($C1),Y : STA !sram_palette_numseloutline
    LDY #$14 : LDA ($C1),Y : STA !sram_palette_numsel

    ; play sfx and refresh current profile
    JSL refresh_custom_palettes
    %sfxconfirm()
    PLB : %i16()
    BRA .go_back

  .custom_selected
    %sfxfail()

  .go_back
    ; go back to CustomizeMenu manually to avoid %sfxgoback
    LDX !MENU_STACK_INDEX
    TDC : STA !ram_cm_cursor_stack,X
    LDA !MENU_STACK_INDEX : SEC : SBC #$0004 : STA !MENU_STACK_INDEX
    JSL cm_calculate_max
    LDY.w #CustomizeMenu
    JML action_submenu

mc_paletterando:
    %cm_submenu("Randomize Custom Palette", #PaletteRandoConfirm)

PaletteRandoConfirm:
    dw #paletterando_abort
    dw #$FFFF
    dw #paletterando_confirm
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    %examplemenu() ; inserts dummy menu items for display purposes
    dw #$0000
    %cm_header("CONFIRM PALETTE RANDO")
    %cm_footer("YOU WILL LOSE SAVED COLORS")

paletterando_abort:
    %cm_jsl("ABORT", #.routine, #$0000)
  .routine
    %sfxgoback()
    JML cm_previous_menu

paletterando_confirm:
    %cm_jsl("RANDOMIZE!", #.routine, #$0000)
  .routine
    LDA !ram_seed_Y : AND #$7FFF : STA !sram_palette_border
    JSL MenuRNG : AND #$7FFF : STA !sram_palette_headeroutline
    LDA !ram_seed_X : AND #$7FFF : STA !sram_palette_text
    JSL MenuRNG2 : AND #$7FFF : STA !sram_palette_background
    JSL MenuRNG : AND #$7FFF : STA !sram_palette_numoutline
    JSL MenuRNG : AND #$7FFF : STA !sram_palette_numfill
    LDA !ram_seed_X : AND #$7FFF : STA !sram_palette_toggleon
    JSL MenuRNG2 : AND #$7FFF : STA !sram_palette_seltext
    JSL MenuRNG : AND #$7FFF : STA !sram_palette_seltextbg
    JSL MenuRNG2 : AND #$7FFF : STA !sram_palette_numseloutline
    JSL MenuRNG : AND #$7FFF : STA !sram_palette_numsel

    ; play a happy sound and refresh current profile
    %ai16()
    JSL PrepMenuPalette_customPalette ; points to a branch within PrepMenuPalette
    JSL refresh_custom_palettes
    %sfxconfirm()
    RTL

mc_customsfx:
    %cm_submenu("Customize Menu Sounds", #CustomMenuSFXMenu)

mc_customfont:
    %cm_numfield("Select Font", !sram_cm_font, 0, 1, 1, 1, .routine)
  .routine
    JML cm_transfer_custom_tileset

mc_customheader:
    %cm_jsl("Customize Menu Header", #.routine, #$0000)
  .routine
    ; enter keyboard editing mode
    LDA.w #!sram_custom_header : STA !DP_Address
    LDA.w #!sram_custom_header>>16 : STA !DP_Address+2
    ; check if custom header exists
    LDA !sram_custom_header : AND #$00FF : CMP #$0028 : BNE .keyboardMode
    ; store SAFE word to indicate a name already exists
    LDA !SAFEWORD : STA !DP_KB_Control
    ; load existing name
    LDX #$0016 : TXY
  .loopExistingName
    LDA [!DP_Address],Y : STA !ram_cm_keyboard_buffer,X
    DEX #2
    DEY #2 : BPL .loopExistingName
  .keyboardMode
    JSL kb_ctrl_mode : BCC .done
    ; check if "nothing" was saved
    LDA !sram_custom_header : CMP #$FF28 : BEQ .blank
    JML ConvertNormal2Header
  .blank
    ; restore default header
    TDC : STA !sram_custom_header
  .done
    RTL

CustomPalettesMenu:
    dw #custompalettes_text
    dw #custompalettes_seltext
    dw #custompalettes_seltextbg
    dw #custompalettes_headerline
    dw #custompalettes_numfill
    dw #custompalettes_numline
    dw #custompalettes_numsel
    dw #custompalettes_numselline
    dw #custompalettes_toggleon
    dw #custompalettes_border
    dw #custompalettes_background
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    %examplemenu() ; inserts dummy menu items for display purposes
    dw #mc_custompalettes_test_menu
    dw #$0000
    %cm_header("CUSTOMIZE MENU PALETTE")

custompalettes_text:
    %palettemenu("Text", PalettesMenu_text, !sram_palette_text)

custompalettes_seltext:
    %palettemenu("Selected Text", PalettesMenu_seltext, !sram_palette_seltext)

custompalettes_seltextbg:
    %palettemenu("Selected Text Background", PalettesMenu_seltextbg, !sram_palette_seltextbg)

custompalettes_headerline:
    %palettemenu("Header Outline", PalettesMenu_headerline, !sram_palette_headeroutline)

custompalettes_numfill:
    %palettemenu("Number Field Text", PalettesMenu_numfill, !sram_palette_numfill)

custompalettes_numline:
    %palettemenu("Number Field Outline", PalettesMenu_numline, !sram_palette_numoutline)

custompalettes_numsel:
    %palettemenu("Selected Num-Field Text", PalettesMenu_numsel, !sram_palette_numsel)

custompalettes_numselline:
    %palettemenu("Selected Num-Field Outline", PalettesMenu_numselline, !sram_palette_numseloutline)

custompalettes_toggleon:
    %palettemenu("Toggle ON", PalettesMenu_toggleon, !sram_palette_toggleon)

custompalettes_border:
    %palettemenu("Toggle OFF + Border", PalettesMenu_border, !sram_palette_border)

custompalettes_background:
    %palettemenu("Background", PalettesMenu_background, !sram_palette_background)

custompalettes_hex_red:
    %cm_numfield_color("Hexadecimal Red", !ram_cm_custompalette_red, #MixRGB)

custompalettes_hex_green:
    %cm_numfield_color("Hexadecimal Green", !ram_cm_custompalette_green, #MixRGB)

custompalettes_hex_blue:
    %cm_numfield_color("Hexadecimal Blue", !ram_cm_custompalette_blue, #MixRGB)

custompalettes_dec_red:
    %cm_numfield("Decimal Red", !ram_cm_custompalette_red, 0, 31, 1, 2, #MixRGB)

custompalettes_dec_green:
    %cm_numfield("Decimal Green", !ram_cm_custompalette_green, 0, 31, 1, 2, #MixRGB)

custompalettes_dec_blue:
    %cm_numfield("Decimal Blue", !ram_cm_custompalette_blue, 0, 31, 1, 2, #MixRGB)

mc_dummy_on:
    %cm_toggle("Example Toggle ON", !ram_cm_dummy_on, #$0001, #0)

mc_dummy_off:
    %cm_toggle("Example Toggle OFF", !ram_cm_dummy_off, #$0001, #0)

mc_dummy_hexnum:
    %cm_numfield_hex("Example Hex Number", !ram_cm_dummy_num, 0, 255, 1, 8, #0)

mc_dummy_num:
    %cm_numfield("Example Number", !ram_cm_dummy_num, 0, 255, 1, 8, #0)


mc_custompalettes_test_menu:
    %cm_submenu("Screenshot To Share Colors", #CustomPalettesTestMenu)

CustomPalettesTestMenu:
    dw #custompalettes_border_test
    dw #custompalettes_headerline_test
    dw #custompalettes_text_test
    dw #custompalettes_background_test
    dw #custompalettes_numline_test
    dw #custompalettes_numfill_test
    dw #custompalettes_toggleon_test
    dw #custompalettes_seltext_test
    dw #custompalettes_seltextbg_test
    dw #custompalettes_numselline_test
    dw #custompalettes_numsel_test
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    %examplemenu() ; inserts dummy menu items for display purposes
    dw #$0000
    %cm_header("SHARE YOUR COLORS")
    %cm_footer("SCREENSHOT TO SHARE COLORS")

custompalettes_text_test:
    %cm_numfield_hex_word("Text", !sram_palette_text, #$7FFF, #0)

custompalettes_seltext_test:
    %cm_numfield_hex_word("Selected Text", !sram_palette_seltext, #$7FFF, #0)

custompalettes_seltextbg_test:
    %cm_numfield_hex_word("Selected Text BG", !sram_palette_seltextbg, #$7FFF, #0)

custompalettes_border_test:
    %cm_numfield_hex_word("Toggle OFF + Border", !sram_palette_border, #$7FFF, #0)

custompalettes_headerline_test:
    %cm_numfield_hex_word("Header Text Outline", !sram_palette_headeroutline, #$7FFF, #0)

custompalettes_numfill_test:
    %cm_numfield_hex_word("NumField Text", !sram_palette_numfill, #$7FFF, #0)

custompalettes_numline_test:
    %cm_numfield_hex_word("NumField Outline", !sram_palette_numoutline, #$7FFF, #0)

custompalettes_numsel_test:
    %cm_numfield_hex_word("Selected NumField", !sram_palette_numsel, #$7FFF, #0)

custompalettes_numselline_test:
    %cm_numfield_hex_word("Selected NumField OL", !sram_palette_numseloutline, #$7FFF, #0)

custompalettes_toggleon_test:
    %cm_numfield_hex_word("Toggle ON", !sram_palette_toggleon, #$7FFF, #0)

custompalettes_background_test:
    %cm_numfield_hex_word("Background", !sram_palette_background, #$7FFF, #0)


; ---------------
; Custom Sound FX
; ---------------

CustomMenuSFXMenu:
    dw #mc_sfx_move
    dw #mc_sfx_toggle
    dw #mc_sfx_number
    dw #mc_sfx_confirm
    dw #mc_sfx_goback
    dw #$FFFF
    dw #mc_sfx_reset
    dw #$0000
    %cm_header("CUSTOMIZE MENU SOUND FX")
    %cm_footer("PRESS Y TO PLAY SOUNDS")

mc_sfx_move:
    %cm_numfield_sound("Move Cursor", !sram_customsfx_move, 1, 63, 1, 3, #action_test_sfx)

mc_sfx_toggle:
    %cm_numfield_sound("Toggle", !sram_customsfx_toggle, 1, 63, 1, 3, #action_test_sfx)

mc_sfx_number:
    %cm_numfield_sound("Number Select", !sram_customsfx_number, 1, 63, 1, 3, #action_test_sfx)

mc_sfx_goback:
    %cm_numfield_sound("Go Back", !sram_customsfx_goback, 1, 63, 1, 3, #action_test_sfx)

mc_sfx_confirm:
    %cm_numfield_sound("Confirm Selection", !sram_customsfx_confirm, 1, 63, 1, 3, #action_test_sfx)

mc_sfx_reset:
    %cm_jsl("Reset to Defaults", .routine, #$0000)
  .routine
    %sfxreset()
    JML init_menu_customization_soundFX

action_test_sfx:
{
    JML !SFX_LIB1
}


; -----------
; Menu Config
; -----------

mc_menuscroll_button:
    dw !ACTION_CHOICE
    dl #!ram_cm_fast_scroll_menu_selection
    dw .routine
    db #$28, "Fast-Scroll But", #$FF
    db #$28, "ton       X", #$FF
    db #$28, "ton       Y", #$FF
    db #$28, "ton    NONE", #$FF
    db #$FF
  .routine
    LDA !ram_cm_fast_scroll_menu_selection : BEQ .selectX
    CMP #$0001 : BEQ .selectY
    TDC : STA !sram_cm_fast_scroll_button
    RTL
  .selectX
    LDA !CTRL_X : STA !sram_cm_fast_scroll_button
    RTL
  .selectY
    LDA !CTRL_Y : STA !sram_cm_fast_scroll_button
    RTL

mc_menuscroll_delay:
    %cm_numfield("Menu Scroll Delay", !sram_cm_scroll_delay, 1, 10, 1, 2, #0)


; ---------
; Menu Code
; ---------

PrepMenuPalette:
{
    LDA !sram_custompalette_profile : BEQ .customPalette

    ; load palettes from profile table
    PHP : PHB
    %i8()
    LDY.b #PaletteProfileTables>>16 : PHY : PLB ; set bank of tables
    ASL : TAX
    LDA.w PaletteProfileTables,X : STA $C1
    LDY #$00 : LDA ($C1),Y : STA !ram_cm_palette_border
    LDY #$02 : LDA ($C1),Y : STA !ram_cm_palette_headeroutline
    LDY #$04 : LDA ($C1),Y : STA !ram_cm_palette_text
    LDY #$06 : LDA ($C1),Y : STA !ram_cm_palette_background
    LDY #$08 : LDA ($C1),Y : STA !ram_cm_palette_numoutline
    LDY #$0A : LDA ($C1),Y : STA !ram_cm_palette_numfill
    LDY #$0C : LDA ($C1),Y : STA !ram_cm_palette_toggleon
    LDY #$0E : LDA ($C1),Y : STA !ram_cm_palette_seltext
    LDY #$10 : LDA ($C1),Y : STA !ram_cm_palette_seltextbg
    LDY #$12 : LDA ($C1),Y : STA !ram_cm_palette_numseloutline
    LDY #$14 : LDA ($C1),Y : STA !ram_cm_palette_numsel
    PLB : PLP
    RTL

  .customPalette
    ; load palettes from SRAM
    LDA !sram_palette_border : STA !ram_cm_palette_border
    LDA !sram_palette_headeroutline : STA !ram_cm_palette_headeroutline
    LDA !sram_palette_text : STA !ram_cm_palette_text
    LDA !sram_palette_background : STA !ram_cm_palette_background
    LDA !sram_palette_numoutline : STA !ram_cm_palette_numoutline
    LDA !sram_palette_numfill : STA !ram_cm_palette_numfill
    LDA !sram_palette_toggleon : STA !ram_cm_palette_toggleon
    LDA !sram_palette_seltext : STA !ram_cm_palette_seltext
    LDA !sram_palette_seltextbg : STA !ram_cm_palette_seltextbg
    LDA !sram_palette_numseloutline : STA !ram_cm_palette_numseloutline
    LDA !sram_palette_numsel : STA !ram_cm_palette_numsel
    RTL
}

refresh_custom_palettes:
{
    PHP
    %ai16()
    JSL refresh_cgram_long
    TDC : STA !sram_custompalette_profile
    PLP
    RTL
}

refresh_cgram_long:
{
    JSL cm_transfer_original_cgram
    JML cm_transfer_custom_cgram
}

MixRGB:
{
    ; determine which menu element is being edited
    LDA !MENU_STACK_INDEX : DEC #2 : TAX
    LDA !ram_cm_cursor_stack,X : TAX

    ; store indirect address
    LDA.l .MenuPaletteTable,X : STA $C1
    LDA.w #!sram_palette_text>>16 : STA $C3

    ; mix 5-bit RGB values into 15-bit BGR format
    LDA !ram_cm_custompalette_blue : XBA : ASL #2 : STA $C5
    LDA !ram_cm_custompalette_green : ASL #5 : ORA $C5 : STA $C5
    LDA !ram_cm_custompalette_red : ORA $C5
    STA [$C1]

    ; store BGR value
    STA !ram_cm_custompalette

    JSL refresh_custom_palettes
    RTL

  .MenuPaletteTable
    ; the order of this table must match the menu order
    dw !sram_palette_text
    dw !sram_palette_seltext
    dw !sram_palette_seltextbg
    dw !sram_palette_headeroutline
    dw !sram_palette_numfill
    dw !sram_palette_numoutline
    dw !sram_palette_numsel
    dw !sram_palette_numseloutline
    dw !sram_palette_toggleon
    dw !sram_palette_border
    dw !sram_palette_background
}

cm_colors:
{
    PHP : PHB
    PHK : PLB
    ; determine which menu element is being edited
    LDA !MENU_STACK_INDEX : DEC #2 : TAX
    ; exit if not in a color menu
    LDA !ram_cm_menu_stack,X : CMP #CustomPalettesMenu : BNE .done
    ; exit if beyond table boundaries
    LDA !ram_cm_cursor_stack,X : CMP #$0016 : BPL .done

    ; setup indirect address [$C1] with sram pointer
    %a8()
    TAX : JSR (.ColorMenuTable,X)
    STX $C1 : STA $C3
    %ai16()

    ; split 15-bit BGR format into 5-bit red, green, and blue
    LDA [$C1] : AND #$7C00 : XBA : LSR #2 : STA !ram_cm_custompalette_blue
    LDA [$C1] : AND #$03E0 : LSR #5 : STA !ram_cm_custompalette_green
    LDA [$C1] : AND #$001F : STA !ram_cm_custompalette_red

    ; store BGR value
    LDA [$C1] : AND #$7FFF : STA !ram_cm_custompalette

  .done
    PLB : PLP
    RTL
}

  .ColorMenuTable
    ; the order of this table must match the menu order
    dw ColorMenuTable_text
    dw ColorMenuTable_seltext
    dw ColorMenuTable_seltextbg
    dw ColorMenuTable_headeroutline
    dw ColorMenuTable_numfill
    dw ColorMenuTable_numoutline
    dw ColorMenuTable_numsel
    dw ColorMenuTable_numseloutline
    dw ColorMenuTable_toggleon
    dw ColorMenuTable_border
    dw ColorMenuTable_background

; macro routines to load an SRAM address into A/X
ColorMenuTable_text:
    %setupRGB(!sram_palette_text)

ColorMenuTable_seltext:
    %setupRGB(!sram_palette_seltext)

ColorMenuTable_seltextbg:
    %setupRGB(!sram_palette_seltextbg)

ColorMenuTable_headeroutline:
    %setupRGB(!sram_palette_headeroutline)

ColorMenuTable_numfill:
    %setupRGB(!sram_palette_numfill)

ColorMenuTable_numoutline:
    %setupRGB(!sram_palette_numoutline)

ColorMenuTable_numsel:
    %setupRGB(!sram_palette_numsel)

ColorMenuTable_numseloutline:
    %setupRGB(!sram_palette_numseloutline)

ColorMenuTable_toggleon:
    %setupRGB(!sram_palette_toggleon)

ColorMenuTable_border:
    %setupRGB(!sram_palette_border)

ColorMenuTable_background:
    %setupRGB(!sram_palette_background)

ConvertNormal2Header:
{
    PHB : PHK : PLB
    %ai8()
    ; X = text, Y = table
    LDX #$01 : LDY #$00

  .next_char
    ; safety net in case no terminator
    CPX #$18 : BPL .done
    ; grab next byte of user text, exit if term ($FF)
    LDA !sram_custom_header,X : CMP #$FF : BEQ .done
  .loop_compare
    ; compare to first column of table
    CMP.w .Table,Y : BEQ .found
    INY #2 : CPY #$9A : BCS .not_found
    BRA .loop_compare

  .found
    ; replace with byte from second column of table
    INY : LDA.w .Table,Y : STA !sram_custom_header,X
    INX : LDY #$00 : BRA .next_char

  .not_found
    ; searched whole table
    LDY #$00
    INX
    BRA .next_char

  .done
    %ai16()
    PLB
    RTL

  .Table
; normal, header
; db $00, $50
; db $01, $51
    %norm2head("A")
    %norm2head("B")
    %norm2head("C")
    %norm2head("D")
    %norm2head("E")
    %norm2head("F")
    %norm2head("G")
    %norm2head("H")
    %norm2head("I")
    %norm2head("J")
    %norm2head("K")
    %norm2head("L")
    %norm2head("M")
    %norm2head("N")
    %norm2head("O")
    %norm2head("P")
    %norm2head("Q")
    %norm2head("R")
    %norm2head("S")
    %norm2head("T")
    %norm2head("U")
    %norm2head("V")
    %norm2head("W")
    %norm2head("X")
    %norm2head("Y")
    %norm2head("Z")
    %norm2head("a")
    %norm2head("b")
    %norm2head("c")
    %norm2head("d")
    %norm2head("e")
    %norm2head("f")
    %norm2head("g")
    %norm2head("h")
    %norm2head("i")
    %norm2head("j")
    %norm2head("k")
    %norm2head("l")
    %norm2head("m")
    %norm2head("n")
    %norm2head("o")
    %norm2head("p")
    %norm2head("q")
    %norm2head("r")
    %norm2head("s")
    %norm2head("t")
    %norm2head("u")
    %norm2head("v")
    %norm2head("w")
    %norm2head("x")
    %norm2head("y")
    %norm2head("z")
    %norm2head("0")
    %norm2head("1")
    %norm2head("2")
    %norm2head("3")
    %norm2head("4")
    %norm2head("5")
    %norm2head("6")
    %norm2head("7")
    %norm2head("8")
    %norm2head("9")
    %norm2head(" ")
    %norm2head(".")
    %norm2head(",")
    %norm2head("!")
    %norm2head("?")
    %norm2head("-")
    %norm2head("#")
    %norm2head("(")
    %norm2head(")")
    %norm2head("'")
    %norm2head(":")
    %norm2head("/")
    %norm2head("$")
    %norm2head("+")
    %norm2head("%")
}

print pc, " menu customization end"


org $AEFD20
print pc, " menu PaletteProfileTables start"

; These tables can live anywhere
PaletteProfileTables:
{
    dw #$0000 ; dummy for custom profiles
    dw #TwitchProfileTable        ; 1
    dw #DefaultProfileTable       ; 2
    dw #FirebatProfileTable       ; 3
    dw #wardrinkerProfileTable    ; 4
    dw #mm2ProfileTable           ; 5
    dw #ptoilProfileTable         ; 6
    dw #ZohdinProfileTable        ; 7
    dw #DarkXoaProfileTable       ; 8
    dw #MelonaxProfileTable       ; 9
    dw #TopsyTurveProfileTable    ; A
    dw #OSTProfileTable           ; B
    dw #JRPProfileTable           ; C
    dw #LayrusProfileTable        ; D
    dw #DayneProfileTable         ; E
    dw #DreamCowboyProfileTable   ; F
    dw #ZeniProfileTable          ; 10
    dw #DyceProfileTable          ; 11
    dw #ForeverProfileTable       ; 12
    dw #GreyProfileTable          ; 13
    dw #RedProfileTable           ; 14
    dw #PurpleProfileTable        ; 15
    dw #HUDProfileTable           ; 16
    dw #MemesProfileTable         ; 17
    dw #GrapedrinkzProfileTable   ; 18
    dw #PapaSchmoProfileTable     ; 19
    dw #VespherProfileTable       ; 1A
    dw #EXAKTProfileTable         ; 1B
    dw #$0000

; border, headeroutline, text, background, numoutline, numfill, toggleon, seltext, seltextbg, numseloutline, numsel
TwitchProfileTable:
    dw $550D, $550D, $7FFF, $0000, $0000, $7FFF, $550D, $550D, $0000, $550D, $7FFF

DefaultProfileTable:
    dw $7277, $48F3, $7FFF, $0000, $0000, $7FFF, $4376, $761F, $0000, $0000, $761F

FirebatProfileTable:
    dw $000E, $000E, $0A20, $0000, $0A20, $0002, $0680, $000F, $0005, $0A20, $000F

wardrinkerProfileTable:
    dw $7277, $7FFF, $7A02, $0000, $0000, $9200, $7277, $7F29, $0000, $0000, $7F29

mm2ProfileTable:
    dw $0539, $7F44, $7C80, $0000, $5442, $7F44, $03E0, $0B7E, $0000, $0539, $0F7E

ptoilProfileTable:
    dw $5CAA, $14A5, $01EF, $0000, $0000, $5294, $4376, $03FF, $0000, $0000, $7FFF

ZohdinProfileTable:
    dw $7BFF, $0402, $0300, $0060, $0100, $9700, $7B64, $7BFF, $94A6, $2051, $09BF

DarkXoaProfileTable:
    dw $24C4, $45A8, $24C4, $0000, $0000, $24C4, $45A8, $45A8, $0000, $1505, $45A8

MelonaxProfileTable:
    dw $7FFF, $0000, $3DEF, $0C63, $0000, $7FFF, $266B, $3DFE, $0C63, $0000, $266B

TopsyTurveProfileTable:
    dw $7264, $7264, $7FFF, $0000, $0000, $7FFF, $7264, $7264, $0000, $0000, $7264

OSTProfileTable:
    dw $7FFF, $7FFF, $0010, $0000, $0010, $7FFF, $001F, $001E, $0000, $7FFF, $001E

JRPProfileTable:
    dw $7976, $384B, $66D1, $484A, $E54F, $7B97, $7B7B, $6B5E, $70F0, $654F, $7B97

LayrusProfileTable:
    dw $2D5B, $3005, $1E9D, $0C00, $1C03, $059F, $2ADF, $4E5F, $4088, $6969, $77EE

DayneProfileTable:
    dw $2959, $4086, $0294, $1044, $1044, $35AD, $2B2A, $3ACE, $1C87, $20C8, $3ACE

DreamCowboyProfileTable:
    dw $35B2, $35B2, $6B5A, $7FFF, $35B2, $7FFF, $35B2, $35B2, $7FFF, $35B2, $6B5A

ZeniProfileTable:
    dw $7D40, $3900, $7F00, $0000, $0000, $7FE0, $7EA0, $7FE0, $0000, $0000, $7E00

DyceProfileTable:
    dw $5DC0, $5DC0, $77BD, $2060, $0000, $7FFF, $7FFF, $7FFF, $5DC0, $5DC0, $7FFF

ForeverProfileTable:
    dw $650D, $0000, $01F9, $0000, $0000, $22DC, $79EA, $650D, $0000, $650D, $7FFF

GreyProfileTable:
    dw $0012, $1CE7, $3DEF, $0C63, $1CE7, $3DEF, $0EE3, $0012, $0C63, $1CE7, $3DEF

RedProfileTable:
    dw $0010, $0000, $0010, $0000, $0010, $0000, $001F, $001F, $0000, $001F, $0010

PurpleProfileTable:
    dw $602F, $0000, $602F, $0000, $0000, $602F, $0338, $0338, $0000, $602F, $0338

HUDProfileTable:
    dw $3D46, $48FB, $7FFF, $0000, $44E5, $7FFF, $4A52, $318C, $0000, $02DF, $001F

MemesProfileTable:
    dw $0014, $7FFF, $281E, $0000, $5000, $7BC0, $03C0, $37C0, $0000, $2940, $37C0

GrapedrinkzProfileTable:
    dw $56B5, $4010, $56B5, $1400, $0000, $56B5, $02E0, $02E0, $4010, $4010, $02E0

PapaSchmoProfileTable:
    dw $0005, $0005, $000B, $0001, $0009, $0000, $00F8, $0014, $0000, $0014, $0000

VespherProfileTable:
    dw $49FE, $4159, $7FFF, $0804, $0000, $7FFF, $5E80, $55FE, $0000, $0000, $761F

EXAKTProfileTable:
    dw $2DC6, $5F65, $3A42, $18A1, $2982, $4F0A, $6F08, $4EC9, $18A1, $2DE6, $63CC
}

print pc, " menu PaletteProfileTables end"
pullpc
