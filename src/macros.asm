
; ---------------
; General Purpose
; ---------------

macro a8() ; A = 8-bit
    SEP #$20
endmacro

macro a16() ; A = 16-bit
    REP #$20
endmacro

macro i8() ; X/Y = 8-bit
    SEP #$10
endmacro

macro i16() ; X/Y = 16-bit
    REP #$10
endmacro

macro ai8() ; A + X/Y = 8-bit
    SEP #$30
endmacro

macro ai16() ; A + X/Y = 16-bit
    REP #$30
endmacro

macro presetslotsize()
if !FEATURE_TINYSTATES
    XBA : TAX       ; multiply by $100
else
    ASL : XBA : TAX ; multiply by $200
endif
endmacro

macro setmenubank()
; used to set the menu bank before a manual submenu jump
; assumes 16bit A
    PHK : PHK : PLA
    STA !ram_cm_menu_bank
endmacro

macro warnpc(NTSC, PAL)
if !FEATURE_PAL
warnpc <PAL>
else
warnpc <NTSC>
endif
endmacro


; -------------
; Practice Menu
; -------------

macro item_index_to_vram_index()
; find screen position from Y (item number)
    TYA : ASL #5
    CLC : ADC #$0146 : TAX
endmacro

macro norm2head(char)
; used to build a conversion table for normal to header text
    db "<char>"
table ../resources/header.tbl
    db "<char>"
table ../resources/normal.tbl
endmacro

macro cm_header(title)
; outlined text to be drawn above the menu items
  .dm_header
table ../resources/header.tbl
    db #$28, "<title>", #$FF
table ../resources/normal.tbl
endmacro

macro cm_footer(title)
; optional outlined text below the menu items
  .dm_footer
table ../resources/header.tbl
    dw #$F007 : db #$28, "<title>", #$FF
table ../resources/normal.tbl
endmacro

macro cm_version_header(title)
; header text with automatic version number appended
  .dm_verHeader
table ../resources/header.tbl
if !VERSION_REV
    db #$28, "<title> !VERSION_MAJOR.!VERSION_MINOR.!VERSION_BUILD.!VERSION_REV", #$FF
else
    db #$28, "<title> !VERSION_MAJOR.!VERSION_MINOR.!VERSION_BUILD", #$FF
endif
table ../resources/normal.tbl
endmacro

macro cm_numfield(title, addr, start, end, increment, heldincrement, jsltarget)
; Allows editing an 8-bit value at the specified address
  .dm_action
    dw !ACTION_NUMFIELD
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_minMax
    db <start>, <end> ; minimum and maximum values allowed
  .dm_inc
    db <increment> ; inc/dec amount when pressed
  .dm_heldinc
    db <heldincrement> ; inc/dec amount when direction is held (scroll faster)
  .dm_jsl
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_numfield_word(title, addr, start, end, increment, heldincrement, jsltarget)
; Allows editing a 16-bit value at the specified address
  .dm_action
    dw !ACTION_NUMFIELD_WORD
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_minMax
    dw <start>, <end> ; minimum and maximum values allowed
  .dm_inc
    dw <increment> ; inc/dec amount when pressed
  .dm_heldinc
    dw <heldincrement> ; inc/dec amount when direction is held (scroll faster)
  .dm_jsl
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_numfield_hex(title, addr, start, end, increment, heldincrement, jsltarget)
; Allows editing an 8-bit value displayed in hexadecimal
  .dm_action
    dw !ACTION_NUMFIELD_HEX
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_minMax
    db <start>, <end> ; minimum and maximum values allowed
  .dm_inc
    db <increment> ; inc/dec amount when pressed
  .dm_heldinc
    db <heldincrement> ; inc/dec amount when direction is held (scroll faster)
  .dm_jsl
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_numfield_hex_word(title, addr, bitmask, jsltarget)
; Displays a 16-bit value in hexadecimal
  .dm_action
    dw !ACTION_NUMFIELD_HEX_WORD
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_bitmask
    dw <bitmask> ; 16bit mask to cap value (for colors)
  .dm_jsl
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_numfield_readonly(title, addr)
; Allows editing a 16-bit value at the specified address
  .dm_action
    dw !ACTION_NUMFIELD_READONLY
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_minMax
    dw #$0000, #$0000
  .dm_inc
    dw #$0000
  .dm_heldinc
    dw #$0000
  .dm_jsl
    dw #$0000
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_numfield_color(title, addr, jsltarget)
; Allows editing an 8-bit value in increments consistent with SNES color values
  .dm_action
    dw !ACTION_NUMFIELD_COLOR
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_jsl
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_numfield_sound(title, addr, start, end, increment, heldincrement, jsltarget)
; Allows editing an 8-bit value and playing a sound when pressing Y
  .dm_action
    dw !ACTION_NUMFIELD_SOUND
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_minMax
    db <start>, <end> ; minimum and maximum values allowed
  .dm_inc
    db <increment> ; inc/dec amount when pressed
  .dm_heldinc
    db <heldincrement> ; inc/dec amount when direction is held (scroll faster)
  .dm_jsl
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_toggle(title, addr, value, jsltarget)
; toggle between zero (OFF) and value (ON)
  .dm_action
    dw !ACTION_TOGGLE
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_value
    db <value> ; value to write when toggled on
  .dm_jsl
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_toggle_inverted(title, addr, value, jsltarget)
; for toggles where zero = ON
  .dm_action
    dw !ACTION_TOGGLE_INVERTED
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_value
    db <value> ; value to write when toggled off
  .dm_jsl
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_toggle_bit(title, addr, mask, jsltarget)
; toggle specific bits, draw OFF if bits cleared
  .dm_action
    dw !ACTION_TOGGLE_BIT
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_bitmask
    dw <mask> ; which bits to flip
  .dm_jsl
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_toggle_bit_inverted(title, addr, mask, jsltarget)
; toggle specific bits, draw ON if bits cleared
  .dm_action
    dw !ACTION_TOGGLE_BIT_INVERTED
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_bitmask
    dw <mask> ; which bits to flip
  .dm_jsl
    dw <jsltarget> ; 16bit address to code in the same bank as current menu/submenu
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_jsl(title, routine, argument)
; run code when menu item executed
  .dm_action
    dw !ACTION_JSL
  .dm_jsl
    dw <routine> ; 16bit address to code in the same bank as current menu/submenu
  .dm_arg
    dw <argument> ; value passed to routine in Y
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_jsl_submenu(title, routine, argument)
; only used within submenu and mainmenu macros
  .dm_action
    dw !ACTION_JSL_SUBMENU
  .dm_jsl
    dw <routine> ; 16bit address to code in the same bank as current menu/submenu
  .dm_arg
    dw <argument> ; value passed to routine in Y
  .dm_text
table ../resources/normal.tbl
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

macro cm_adjacent_submenu(title, target)
; return to previous menu and then runs action_submenu
; can only used for submenus and when already on a submenu
    %cm_jsl("<title>", #.routine, <target>)
  .routine
    JSL cm_previous_menu
    JML action_submenu
endmacro

macro cm_preset(title, target)
; runs action_load_preset to set the bank of the preset menu that matches the current category
    %cm_jsl_submenu("<title>", #action_load_preset, <target>)
endmacro

macro cm_custompreset(slot)
; Displays custom preset data and allows selecting active slot
custompreset_<slot>:
  .dm_action
    dw !ACTION_CUSTOM_PRESET
  .dm_slot
    db <slot> ; 8bit slot ID
  .dm_text
table ../resources/normal.tbl
    db #$28, "<slot>", #$FF ; slot ID text
endmacro

macro cm_managepreset(slot)
; Allows reorganizing custom preset slots
managepreset_<slot>:
  .dm_action
    dw !ACTION_MANAGE_PRESETS
  .dm_slot
    db <slot> ; 8bit slot ID
  .dm_text
table ../resources/normal.tbl
    db #$28, "<slot>", #$FF ; slot ID text
endmacro

macro cm_ctrl_shortcut(title, addr)
; configure controller shortcuts
  .dm_action
    dw !ACTION_CTRL_SHORTCUT
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro cm_ctrl_input(title, addr, routine, argument)
; set a single controller binding
  .dm_action
    dw !ACTION_CTRL_INPUT
  .dm_addr
    dl <addr> ; 24bit RAM address to display/manipulate
  .dm_jsl
    dw <routine> ; 16bit address to code in the same bank as current menu/submenu
  .dm_arg
    dw <argument> ; value passed to routine in Y
  .dm_text
table ../resources/normal.tbl
    db #$28, "<title>", #$FF
endmacro

macro examplemenu()
; inserts dummy menu objects
    dw #mc_dummy_on
    dw #mc_dummy_off
    dw #mc_dummy_hexnum
    dw #mc_dummy_num
endmacro

macro palettemenu(title, label, addr)
; menu tables for customizing menu color palettes
    %cm_submenu("<title>", <label>)

<label>:
    dw #custompalettes_hex_red
    dw #custompalettes_hex_green
    dw #custompalettes_hex_blue
    dw #$FFFF
    dw #custompalettes_dec_red
    dw #custompalettes_dec_green
    dw #custompalettes_dec_blue
    dw #$FFFF
    dw <label>_hex_word
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    dw #$FFFF
    %examplemenu()
    dw #$0000
    %cm_header("<title>")
    %cm_footer("THREE WAYS TO EDIT COLORS")

<label>_hex_word:
    %cm_numfield_hex_word("SNES 15-bit BGR", !ram_cm_custompalette, #$7FFF, .set)
  .set
    STA <addr>
    JSL cm_colors
    JML MixRGB
}
endmacro

macro setupRGB(addr)
; load SRAM address for cm_colors
    LDA.b #<addr>>>16
    LDX.w #<addr>
    RTS
endmacro

macro cm_equipment_item(name, addr, bitmask, inverse)
; Allows three-way toggling of items:  ON/OFF/UNOBTAINED
  .dm_action
    dw !ACTION_CHOICE
  .dm_addr
    dl <addr>
  .dm_jsl
    dw #.routine
  .dm_text
    db #$28, "<name>", #$FF
  .dm_choices
    db #$28, " UNOBTAINED", #$FF
    db #$28, "         ON", #$FF
    db #$28, "        OFF", #$FF
  .dm_term
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
  .dm_action
    dw !ACTION_CHOICE
  .dm_addr
    dl <addr>
  .dm_jsl
    dw #.routine
  .dm_text
    db #$28, "<name>", #$FF
  .dm_choices
    db #$28, " UNOBTAINED", #$FF
    db #$28, "         ON", #$FF
    db #$28, "        OFF", #$FF
  .dm_term
    db #$FF
  .routine
    LDA.w #<addr> : STA !DP_Address
    LDA.w #<addr>>>16 : STA !DP_Address+2
    LDA <bitmask> : STA !DP_ToggleValue
    LDA <inverse> : STA !DP_Increment
    LDA <and> : STA !DP_Temp
    JMP equipment_toggle_beams
endmacro

macro SDE_add(label, value, mask, inverse)
cm_SDE_add_<label>:
; subroutine to add to a specific hex digit, used in cm_edit_digits
    AND <mask> : CMP <mask> : BEQ .inc2zero
    CLC : ADC <value> : BRA .store
  .inc2zero
    LDA #$0000
  .store
    STA !DP_DigitValue
    ; return original value with edited digit masked away
    LDA [!DP_DigitAddress] : AND <inverse>
    RTS
endmacro

macro SDE_sub(label, value, mask, inverse)
cm_SDE_sub_<label>:
; subroutine to subtract from a specific hex digit, used in cm_edit_digits
    AND <mask> : BEQ .set2max
    SEC : SBC <value> : BRA .store
  .set2max
    LDA <mask>
  .store
    STA !DP_DigitValue
    ; return original value with edited digit masked away
    LDA [!DP_DigitAddress] : AND <inverse>
    RTS
endmacro

macro SDE_dec(label, address)
; increments or decrements an address based on controller input, used in cm_edit_decimal_digits
    LDA !IH_CONTROLLER_PRI : BIT !IH_INPUT_UP : BNE .<label>_inc
    ; dec
    LDA <address> : DEC : BPL .store_<label>
    LDA #$0009 : BRA .store_<label>
  .<label>_inc
    LDA <address> : INC
    CMP #$000A : BMI .store_<label>
    LDA #$0000
  .store_<label>
    STA <address>
endmacro


; -------------
; Sound Effects
; -------------

macro sfxmove() ; Move Cursor
    LDA !sram_customsfx_move : JSL !SFX_LIB1
endmacro

macro sfxconfirm() ; Confirm Selection
    LDA !sram_customsfx_confirm : JSL !SFX_LIB1
endmacro

macro sfxtoggle() ; Toggle
    LDA !sram_customsfx_toggle : JSL !SFX_LIB1
endmacro

macro sfxnumber() ; Number Selection
    LDA !sram_customsfx_number : JSL !SFX_LIB1
endmacro

macro sfxgoback() ; Go Back
    LDA !sram_customsfx_goback : JSL !SFX_LIB1
endmacro

macro sfxclick() ; Click
    LDA #$0037 : JSL !SFX_LIB1
endmacro

macro sfxreset() ; Earthquake
    LDA #$001E : JSL !SFX_LIB3
endmacro

macro sfxreward() ; Energy Drop
    LDA #$0002 : JSL !SFX_LIB2
endmacro

macro sfxbeep() ; Minimap Movement Beep
    LDA #$0036 : JSL !SFX_LIB1
endmacro

macro sfxfail() ; Grapple End
    LDA #$0007 : JSL !SFX_LIB1
endmacro

