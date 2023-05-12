
pushpc
org $AFEC00
print pc, " menu customization bankAF start"

; ------------------
; Menu Customization
; ------------------

CustomizeMenu:
    dw #mc_menubackground
    dw #mc_custompalettes_menu
    dw #mc_paletteprofile
    dw #mc_palette2custom
    dw #mc_paletterando
    dw #$FFFF
    dw #mc_customsfx
    dw #$FFFF
    dw #mc_scroll_delay
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
        db #$28, "       GREY", #$FF
        db #$28, "        RED", #$FF
        db #$28, "     PURPLE", #$FF
        db #$28, "        HUD", #$FF
    db #$FF

mc_palette2custom:
    %cm_jsl("Copy Palette to Custom", .routine, #$0000)
  .routine
    LDA !sram_custompalette_profile : BEQ .custom_selected
    %i8()
    PHB
    LDX.b #PaletteProfileTables>>16 : PHX : PLB
    ASL : TAX
    LDA.l PaletteProfileTables,X : STA $16

    ; copy table to SRAM, Y is already zero from JSL menu macro
    LDY #$00 : LDA ($16),Y : STA !sram_palette_border
    LDY #$02 : LDA ($16),Y : STA !sram_palette_headeroutline
    LDY #$04 : LDA ($16),Y : STA !sram_palette_text
    LDY #$06 : LDA ($16),Y : STA !sram_palette_background
    LDY #$08 : LDA ($16),Y : STA !sram_palette_numoutline
    LDY #$0A : LDA ($16),Y : STA !sram_palette_numfill
    LDY #$0C : LDA ($16),Y : STA !sram_palette_toggleon
    LDY #$0E : LDA ($16),Y : STA !sram_palette_seltext
    LDY #$10 : LDA ($16),Y : STA !sram_palette_seltextbg
    LDY #$12 : LDA ($16),Y : STA !sram_palette_numseloutline
    LDY #$14 : LDA ($16),Y : STA !sram_palette_numsel

    ; play a happy sound and refresh current profile
    JSL refresh_custom_palettes
    %sfxconfirm()
    PLB
    RTL

  .custom_selected
    ; make the animals cry because we couldn't do anything
    LDA #$001D : JML !SFX_LIB2

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
    %examplemenu() ; inserts dummy menu items for display purposes
    dw #$0000
    %cm_header("CONFIRM PALETTE RANDO")
    %cm_footer("YOU WILL LOSE SAVED COLORS")

paletterando_abort:
    %cm_jsl("ABORT", #.routine, #$0000)
  .routine
    %sfxgoback()
    JSL cm_go_back
    JML cm_calculate_max

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

    %ai16()
    JSL PrepMenuPalette_customPalette ; points to a branch within PrepMenuPalette
    JSL refresh_custom_palettes
    %sfxconfirm()
    RTL

mc_customsfx:
    %cm_submenu("Customize Menu Sounds", #CustomMenuSFXMenu)

mc_scroll_delay:
    %cm_numfield("Menu Scroll Delay", !sram_cm_scroll_delay, 1, 10, 1, 2, #0)

CustomPalettesMenu:
    dw #custompalettes_text
    dw #custompalettes_seltext
    dw #custompalettes_seltextbg
    dw #custompalettes_headeroutline
    dw #custompalettes_numfill
    dw #custompalettes_numoutline
    dw #custompalettes_numsel
    dw #custompalettes_numseloutline
    dw #custompalettes_toggleon
    dw #custompalettes_border
    dw #custompalettes_background
    %examplemenu() ; inserts dummy menu items for display purposes
    dw #mc_custompalettes_display_menu
    dw #$0000
    %cm_header("CUSTOMIZE MENU PALETTE")

custompalettes_text:
    %palettemenu("Text", CustomPalettesMenu_menutext, !sram_palette_text)

custompalettes_seltext:
    %palettemenu("Selected Text", CustomPalettesMenu_menuseltext, !sram_palette_seltext)

custompalettes_seltextbg:
    %palettemenu("Selected Text Background", CustomPalettesMenu_menuseltextbg, !sram_palette_seltextbg)

custompalettes_headeroutline:
    %palettemenu("Header Outline", CustomPalettesMenu_menuheaderoutline, !sram_palette_headeroutline)

custompalettes_numfill:
    %palettemenu("Number Field Text", CustomPalettesMenu_menunumfill, !sram_palette_numfill)

custompalettes_numoutline:
    %palettemenu("Number Field Outline", CustomPalettesMenu_menunumoutline, !sram_palette_numoutline)

custompalettes_numsel:
    %palettemenu("Selected Num-Field Text", CustomPalettesMenu_menunumsel, !sram_palette_numsel)

custompalettes_numseloutline:
    %palettemenu("Selected Num-Field Outline", CustomPalettesMenu_menunumseloutline, !sram_palette_numseloutline)

custompalettes_toggleon:
    %palettemenu("Toggle ON", CustomPalettesMenu_menutoggleon, !sram_palette_toggleon)

custompalettes_border:
    %palettemenu("Toggle OFF + Border", CustomPalettesMenu_menuborder, !sram_palette_border)

custompalettes_background:
    %palettemenu("Background", CustomPalettesMenu_menubackground, !sram_palette_background)

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


mc_custompalettes_display_menu:
    %cm_submenu("Screenshot To Share Colors", #CustomPalettesDisplayMenu)

CustomPalettesDisplayMenu:
    dw #custompalettes_border_display
    dw #custompalettes_headeroutline_display
    dw #custompalettes_text_display
    dw #custompalettes_background_display
    dw #custompalettes_numoutline_display
    dw #custompalettes_numfill_display
    dw #custompalettes_toggleon_display
    dw #custompalettes_seltext_display
    dw #custompalettes_seltextbg_display
    dw #custompalettes_numseloutline_display
    dw #custompalettes_numsel_display
    %examplemenu() ; inserts dummy menu items for display purposes
    dw #$0000
    %cm_header("SHARE YOUR COLORS")
    %cm_footer("SCREENSHOT TO SHARE COLORS")

custompalettes_text_display:
    %cm_numfield_hex_word("Text", !sram_palette_text)

custompalettes_seltext_display:
    %cm_numfield_hex_word("Selected Text", !sram_palette_seltext)

custompalettes_seltextbg_display:
    %cm_numfield_hex_word("Selected Text BG", !sram_palette_seltextbg)

custompalettes_border_display:
    %cm_numfield_hex_word("Toggle OFF + Border", !sram_palette_border)

custompalettes_headeroutline_display:
    %cm_numfield_hex_word("Header Text Outline", !sram_palette_headeroutline)

custompalettes_numfill_display:
    %cm_numfield_hex_word("NumField Text", !sram_palette_numfill)

custompalettes_numoutline_display:
    %cm_numfield_hex_word("NumField Outline", !sram_palette_numoutline)

custompalettes_numsel_display:
    %cm_numfield_hex_word("Selected NumField", !sram_palette_numsel)

custompalettes_numseloutline_display:
    %cm_numfield_hex_word("Selected NumField OL", !sram_palette_numseloutline)

custompalettes_toggleon_display:
    %cm_numfield_hex_word("Toggle ON", !sram_palette_toggleon)

custompalettes_background_display:
    %cm_numfield_hex_word("Background", !sram_palette_background)


; ---------------
; Custom Sound FX
; ---------------

CustomMenuSFXMenu:
    dw #sfx_move
    dw #sfx_toggle
    dw #sfx_number
    dw #sfx_confirm
    dw #sfx_goback
    dw #$FFFF
    dw #sfx_reset
    dw #$0000
    %cm_header("CUSTOMIZE MENU SOUND FX")
    %cm_footer("PRESS Y TO PLAY SOUNDS")

sfx_move:
    %cm_numfield_sound("Move Cursor", !sram_customsfx_move, 1, 63, 1, 3, #action_test_sfx)

sfx_toggle:
    %cm_numfield_sound("Toggle", !sram_customsfx_toggle, 1, 63, 1, 3, #action_test_sfx)

sfx_number:
    %cm_numfield_sound("Number Select", !sram_customsfx_number, 1, 63, 1, 3, #action_test_sfx)

sfx_goback:
    %cm_numfield_sound("Go Back", !sram_customsfx_goback, 1, 63, 1, 3, #action_test_sfx)

sfx_confirm:
    %cm_numfield_sound("Confirm Selection", !sram_customsfx_confirm, 1, 63, 1, 3, #action_test_sfx)

sfx_reset:
    %cm_jsl("Reset to Defaults", .routine, #$0000)
  .routine
    %sfxreset()
    JML init_menu_customization_soundFX

action_test_sfx:
{
    JML !SFX_LIB1
}


; ---------
; Menu Code
; ---------

PrepMenuPalette:
{
    LDA !sram_custompalette_profile : BEQ .customPalette

    ; load palettes from profile table
    PHP : %i8()
    PHB
    LDX.b #PaletteProfileTables>>16 : PHX : PLB
    ASL : TAX
    LDA.l PaletteProfileTables,X : STA $14
    LDY #$00 : LDA ($14),Y : STA !ram_cm_palette_border
    LDY #$02 : LDA ($14),Y : STA !ram_cm_palette_headeroutline
    LDY #$04 : LDA ($14),Y : STA !ram_cm_palette_text
    LDY #$06 : LDA ($14),Y : STA !ram_cm_palette_background
    LDY #$08 : LDA ($14),Y : STA !ram_cm_palette_numoutline
    LDY #$0A : LDA ($14),Y : STA !ram_cm_palette_numfill
    LDY #$0C : LDA ($14),Y : STA !ram_cm_palette_toggleon
    LDY #$0E : LDA ($14),Y : STA !ram_cm_palette_seltext
    LDY #$10 : LDA ($14),Y : STA !ram_cm_palette_seltextbg
    LDY #$12 : LDA ($14),Y : STA !ram_cm_palette_numseloutline
    LDY #$14 : LDA ($14),Y : STA !ram_cm_palette_numsel
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

pushpc
org $AEFD20
print pc, " menu PaletteProfileTables start"
; These tables can live anywhere
PaletteProfileTables:
{
    dw #$0000 ; dummy for custom profiles
    dw #TwitchProfileTable
    dw #DefaultProfileTable
    dw #FirebatProfileTable
    dw #wardrinkerProfileTable
    dw #mm2ProfileTable
    dw #ptoilProfileTable
    dw #ZohdinProfileTable
    dw #DarkXoaProfileTable
    dw #MelonaxProfileTable
    dw #TopsyTurveProfileTable
    dw #OSTProfileTable
    dw #JRPProfileTable
    dw #LayrusProfileTable
    dw #DayneProfileTable
    dw #DreamCowboyProfileTable
    dw #GreyProfileTable
    dw #RedProfileTable
    dw #PurpleProfileTable
    dw #HUDProfileTable

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
    dw $5C12, $7F44, $7C80, $0000, $5442, $7FFF, $03E0, $7F44, $0000, $5442, $7F44

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

GreyProfileTable:
    dw $0012, $1CE7, $3DEF, $0C63, $1CE7, $3DEF, $0EE3, $0012, $0C63, $1CE7, $3DEF

RedProfileTable:
    dw $0010, $0000, $0010, $0000, $0010, $0000, $001F, $001F, $0000, $001F, $0010

PurpleProfileTable:
    dw $602F, $0000, $602F, $0000, $0000, $602F, $0338, $0338, $0000, $602F, $0338

HUDProfileTable:
    dw $3D46, $48FB, $7FFF, $0000, $44E5, $7FFF, $4A52, $318C, $0000, $02DF, $001F
}
print pc, " menu PaletteProfileTables end"
pullpc

refresh_custom_palettes:
{
    PHP
    %ai16()
    JSL refresh_cgram_long
    LDA #$0000 : STA !sram_custompalette_profile
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
    LDA !ram_cm_stack_index : DEC #2 : TAX
    LDA !ram_cm_cursor_stack,X : TAX

    ; store indirect address
    LDA.l .MenuPaletteTable,X : STA $12
    LDA.w #!sram_palette_text>>16 : STA $14

    ; mix 5-bit RGB values into 15-bit BGR format
    LDA !ram_cm_custompalette_blue : XBA : ASL #2 : STA $16
    LDA !ram_cm_custompalette_green : ASL #5 : ORA $16 : STA $16
    LDA !ram_cm_custompalette_red : ORA $16
    STA [$12]

    ; split BGR value into high and low bytes
    %a8()
    STA !ram_cm_custompalette_lo : XBA : STA !ram_cm_custompalette_hi
    %a16()

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
    LDA !ram_cm_stack_index : DEC #2 : TAX
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

    ; split BGR value into high and low bytes
    LDA [$C1] : AND #$7FFF
    %a8()
    STA !ram_cm_custompalette_lo : XBA : STA !ram_cm_custompalette_hi

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

print pc, " menu customization bankAF end"
pullpc
