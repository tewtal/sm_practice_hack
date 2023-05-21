
; -------
; General
; -------

macro a8()
    SEP #$20
endmacro

macro a16()
    REP #$20
endmacro

macro i8()
    SEP #$10
endmacro

macro ai8()
    SEP #$30
endmacro

macro ai16()
    REP #$30
endmacro

macro i16()
    REP #$10
endmacro

macro item_index_to_vram_index()
    ; Find screen position from Y (item number)
    TYA : ASL #5
    CLC : ADC #$0146 : TAX
endmacro

macro setmenubank()
; used to set the menu bank before a manual submenu jump
; assumes 16bit A
    PHK : PHK : PLA
    STA !ram_cm_menu_bank
endmacro

macro setupRGB(addr)
; load SRAM address for cm_colors
    LDA.b #<addr>>>16
    LDX.w #<addr>
    RTS
endmacro


; -------------
; Sound Effects
; -------------

macro sfxmove()
    LDA !sram_customsfx_move : JSL !SFX_LIB1
endmacro

macro sfxconfirm()
    LDA !sram_customsfx_confirm : JSL !SFX_LIB1
endmacro

macro sfxtoggle()
    LDA !sram_customsfx_toggle : JSL !SFX_LIB1
endmacro

macro sfxnumber()
    LDA !sram_customsfx_number : JSL !SFX_LIB1
endmacro

macro sfxgoback()
    LDA !sram_customsfx_goback : JSL !SFX_LIB1
endmacro

macro sfxfail()
    LDA #$0007 : JSL !SFX_LIB1 ; grapple end
endmacro

macro sfxreset()
    LDA #$001E : JSL !SFX_LIB3 ; quake
endmacro


; ---------
; Menu Data
; ---------

macro cm_header(title)
; outlined text to be drawn above the menu items
    table ../resources/header.tbl
    db #$28, "<title>", #$FF
    table ../resources/normal.tbl
endmacro

macro cm_footer(title)
; optional outlined text below the menu items
    table ../resources/header.tbl
    dw #$F007 : db #$28, "<title>", #$FF
    table ../resources/normal.tbl
endmacro

macro cm_version_header(title, major, minor, build, rev_1, rev_2)
; header text with automatic version number appended
    table ../resources/header.tbl
if !VERSION_REV_1
    db #$28, "<title> <major>.<minor>.<build>.<rev_1><rev_2>", #$FF
else
if !VERSION_REV_2
    db #$28, "<title> <major>.<minor>.<build>.<rev_2>", #$FF
else
    db #$28, "<title> <major>.<minor>.<build>", #$FF
endif
endif
    table ../resources/normal.tbl
endmacro

macro cm_numfield(title, addr, start, end, increment, heldincrement, jsltarget)
; Allows editing an 8-bit value at the specified address
    dw !ACTION_NUMFIELD
    dl <addr> ; 24bit RAM address to display/manipulate
    db <start>, <end> ; minimum and maximum values allowed
    db <increment> ; inc/dec amount when pressed
    db <heldincrement> ; inc/dec amount when direction is held (scroll faster)
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
    db #$28, "<title>", #$FF
endmacro

macro cm_numfield_word(title, addr, start, end, increment, heldincrement, jsltarget)
; Allows editing a 16-bit value at the specified address
    dw !ACTION_NUMFIELD_WORD
    dl <addr> ; 24bit RAM address to display/manipulate
    dw <start>, <end> ; minimum and maximum values allowed
    dw <increment> ; inc/dec amount when pressed
    dw <heldincrement> ; inc/dec amount when direction is held (scroll faster)
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
    db #$28, "<title>", #$FF
endmacro

macro cm_numfield_hex(title, addr, start, end, increment, heldincrement, jsltarget)
; Allows editing an 8-bit value displayed in hexadecimal
    dw !ACTION_NUMFIELD_HEX
    dl <addr> ; 24bit RAM address to display/manipulate
    db <start>, <end> ; minimum and maximum values allowed
    db <increment> ; inc/dec amount when pressed
    db <heldincrement> ; inc/dec amount when direction is held (scroll faster)
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
    db #$28, "<title>", #$FF
endmacro

macro cm_numfield_hex_word(title, addr)
; Displays a 16-bit value in hexadecimal
    dw !ACTION_NUMFIELD_HEX_WORD
    dl <addr> ; 24bit RAM address to display/manipulate
    db #$28, "<title>", #$FF
endmacro

macro cm_numfield_color(title, addr, jsltarget)
; Allows editing an 8-bit value in increments consistent with SNES color values
    dw !ACTION_NUMFIELD_COLOR
    dl <addr> ; 24bit RAM address to display/manipulate
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
    db #$28, "<title>", #$FF
endmacro

macro cm_numfield_sound(title, addr, start, end, increment, heldincrement, jsltarget)
; Allows editing an 8-bit value and playing a sound when pressing Y
    dw !ACTION_NUMFIELD_SOUND
    dl <addr> ; 24bit RAM address to display/manipulate
    db <start>, <end> ; minimum and maximum values allowed
    db <increment> ; inc/dec amount when pressed
    db <heldincrement> ; inc/dec amount when direction is held (scroll faster)
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
    db #$28, "<title>", #$FF
endmacro

macro cm_toggle(title, addr, value, jsltarget)
; toggle between zero (OFF) and value (ON)
    dw !ACTION_TOGGLE
    dl <addr> ; 24bit RAM address to display/manipulate
    db <value> ; value to write when toggled on
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
    db #$28, "<title>", #$FF
endmacro

macro cm_toggle_inverted(title, addr, value, jsltarget)
; for toggles where zero = ON
    dw !ACTION_TOGGLE_INVERTED
    dl <addr> ; 24bit RAM address to display/manipulate
    db <value> ; value to write when toggled off
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
    db #$28, "<title>", #$FF
endmacro

macro cm_toggle_bit(title, addr, mask, jsltarget)
; toggle specific bits, draw OFF if bits cleared
    dw !ACTION_TOGGLE_BIT
    dl <addr> ; 24bit RAM address to display/manipulate
    dw <mask> ; which bits to flip
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
    db #$28, "<title>", #$FF
endmacro

macro cm_toggle_bit_inverted(title, addr, mask, jsltarget)
; toggle specific bits, draw ON if bits cleared
    dw !ACTION_TOGGLE_BIT_INVERTED
    dl <addr> ; 24bit RAM address to display/manipulate
    dw <mask> ; which bits to flip
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
    db #$28, "<title>", #$FF
endmacro

macro cm_jsl(title, routine, argument)
; run code when menu item executed
    dw !ACTION_JSL
    dw <routine> ; 16bit address to code in the same bank as current menu/submenu
    dw <argument> ; value passed to routine in Y
    db #$28, "<title>", #$FF
endmacro

macro cm_jsl_submenu(title, routine, argument)
; only used within submenu and mainmenu macros
    dw !ACTION_JSL_SUBMENU
    dw <routine> ; 16bit address to code in the same bank as current menu/submenu
    dw <argument> ; value passed to routine in Y
    db #$28, "<title>", #$FF
endmacro

macro cm_mainmenu(title, target)
; runs action_mainmenu to set the bank of the next menu and continue into action_submenu
; can only used for submenus listed on the mainmenu
    %cm_jsl("<title>", #action_mainmenu, <target>)
endmacro

macro cm_submenu(title, target)
; run action_submenu to load the next menu from the same bank
    %cm_jsl_submenu("<title>", #action_submenu, <target>)
endmacro

macro cm_preset(title, target)
; runs action_load_preset to set the bank of the preset menu that matches the current category
    %cm_jsl_submenu("<title>", #action_load_preset, <target>)
endmacro

macro cm_custompreset(slot)
; Displays custom preset data and allows selecting active slot
custompreset_<slot>:
  .dm_actionIndex
    dw !ACTION_CUSTOM_PRESET
  .dm_slot
    db <slot>
  .dm_text
    db #$28, "<slot>", #$FF
endmacro

macro cm_ctrl_shortcut(title, addr)
; configure controller shortcuts
    dw !ACTION_CTRL_SHORTCUT
    dl <addr> ; 24bit RAM address to display/manipulate
    db #$28, "<title>", #$FF
endmacro

macro cm_ctrl_input(title, addr, routine, argument)
; set a single controller binding
    dw !ACTION_CTRL_INPUT
    dl <addr> ; 24bit RAM address to display/manipulate
    dw <routine> ; 16bit address to code in the same bank as current menu/submenu
    dw <argument> ; value passed to routine in Y
    db #$28, "<title>", #$FF
endmacro

macro cm_equipment_item(name, addr, bitmask, inverse)
; Allows three-way toggling of items:  ON/OFF/UNOBTAINED
    dw !ACTION_CHOICE
    dl <addr>
    dw #.routine
    db #$28, "<name>", #$FF
    db #$28, " UNOBTAINED", #$FF
    db #$28, "         ON", #$FF
    db #$28, "        OFF", #$FF
    db #$FF
  .routine
    LDA.w #<addr> : STA !DP_Address
    LDA.w #<addr>>>16 : STA !DP_Address+2
    LDA <bitmask> : STA !DP_ToggleValue
    LDA <inverse> : STA !DP_Increment
    JMP equipment_toggle_items
endmacro

macro cm_equipment_beam(name, addr, bitmask, inverse, and)
; Allows three-way toggling of beams:  ON/OFF/UNOBTAINED
    dw !ACTION_CHOICE
    dl <addr>
    dw #.routine
    db #$28, "<name>", #$FF
    db #$28, " UNOBTAINED", #$FF
    db #$28, "         ON", #$FF
    db #$28, "        OFF", #$FF
    db #$FF
  .routine
    LDA.w #<addr> : STA !DP_Address
    LDA.w #<addr>>>16 : STA !DP_Address+2
    LDA <bitmask> : STA !DP_ToggleValue
    LDA <inverse> : STA !DP_Increment
    LDA <and> : STA !DP_Temp
    JMP equipment_toggle_beams
endmacro

macro examplemenu()
; inserts blank lines and dummy menu objects
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #mc_dummy_on
    dw #mc_dummy_off
    dw #mc_dummy_hexnum
    dw #mc_dummy_num
endmacro

macro palettemenu(title, pointer, addr)
; menu pointers for customizing menu color palettes
    %cm_submenu("<title>", <pointer>)

<pointer>:
    dw #custompalettes_hex_red
    dw #custompalettes_hex_green
    dw #custompalettes_hex_blue
    dw #$FFFF
    dw #custompalettes_dec_red
    dw #custompalettes_dec_green
    dw #custompalettes_dec_blue
    dw #$FFFF
    dw <pointer>_hex_hi
    dw <pointer>_hex_lo
    dw #$FFFF
    %examplemenu()
    dw #$0000
    %cm_header("<title>")
    %cm_footer("THREE WAYS TO EDIT COLORS")

<pointer>_hex_hi:
    %cm_numfield_hex("SNES BGR - HI BYTE", !ram_cm_custompalette_hi, 0, 255, 1, 8, .routine_hi)
  .routine_hi
    %a8() ; sram_custompalette_hi already in A
    XBA : LDA !ram_cm_custompalette_lo
    %a16()
    STA <addr>
    JSL cm_colors
    JML MixRGB

<pointer>_hex_lo:
    %cm_numfield_hex("SNES BGR - LO BYTE", !ram_cm_custompalette_lo, 0, 255, 1, 8, .routine_lo)
  .routine_lo
    %a8() ; sram_custompalette_lo already in A
    XBA : LDA !ram_cm_custompalette_hi : XBA
    %a16()
    STA <addr>
    JSL cm_colors
    JML MixRGB
}
endmacro
