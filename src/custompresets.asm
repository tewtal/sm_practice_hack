; --------------
; Custom Presets
; --------------

org $83B400
print pc, " custompresets start"

if !FEATURE_TINYSTATES
custom_preset_save:
{
    LDA !sram_custom_preset_slot
    XBA : TAX                    ; multiply by 100h (slot offset)
    LDA #$5AFE : STA $703000,X   ; mark this slot as "SAFE" to load
    LDA #$00BE : STA $703002,X   ; record slot size for future compatibility
    LDA $078D : STA $703004,X    ; DDB
    LDA $079B : STA $703006,X    ; MDB
    LDA $07F3 : STA $703008,X    ; Music Bank
    LDA $07F5 : STA $70300A,X    ; Music Track
    LDA $090F : STA $70300C,X    ; Screen subpixel X position
    LDA $0911 : STA $70300E,X    ; Screen X position in pixels
    LDA $0913 : STA $703010,X    ; Screen subpixel Y position
    LDA $0915 : STA $703012,X    ; Screen Y position in pixels
    LDA $0917 : STA $703014,X    ; Layer 2 X position
    LDA $0919 : STA $703016,X    ; Layer 2 Y position
    LDA $0921 : STA $703018,X    ; BG2 X offset
    LDA $0923 : STA $70301A,X    ; BG2 Y offset
    LDA $093F : STA $70301C,X    ; Ceres escape flag
    LDA $09A2 : STA $70301E,X    ; Equipped Items
    LDA $09A4 : STA $703020,X    ; Collected Items
    LDA $09A6 : STA $703022,X    ; Beams
    LDA $09A8 : STA $703024,X    ; Beams
    LDA $09C0 : STA $703026,X    ; Manual/Auto reserve tank
    LDA $09C2 : STA $703028,X    ; Health
    LDA $09C4 : STA $70302A,X    ; Max health
    LDA $09C6 : STA $70302C,X    ; Missiles
    LDA $09C8 : STA $70302E,X    ; Max missiles
    LDA $09CA : STA $703030,X    ; Supers
    LDA $09CC : STA $703032,X    ; Max supers
    LDA $09CE : STA $703034,X    ; Pbs
    LDA $09D0 : STA $703036,X    ; Max pbs
    LDA $09D2 : STA $703038,X    ; Currently selected item
    LDA $09D4 : STA $70303A,X    ; Max reserves
    LDA $09D6 : STA $70303C,X    ; Reserves
    LDA $0A1C : STA $70303E,X    ; Samus position/state
    LDA $0A1E : STA $703040,X    ; More position/state
    LDA $0A68 : STA $703042,X    ; Flash suit
    LDA $0A76 : STA $703044,X    ; Hyper beam
    LDA $0AF6 : STA $703046,X    ; Samus X
    LDA $0AF8 : STA $703048,X    ; Samus subpixel X
    LDA $0AFA : STA $70304A,X    ; Samus Y
    LDA $0AFC : STA $70304C,X    ; Samus subpixel Y
    LDA $0B3F : STA $70304E,X    ; Blue suit
    LDA $7ED820 : STA $703050,X  ; Events
    LDA $7ED822 : STA $703052,X  ; Events
    LDA $7ED828 : STA $703054,X  ; Bosses
    LDA $7ED82A : STA $703056,X  ; Bosses
    LDA $7ED82C : STA $703058,X  ; Bosses
    LDA $7ED82E : STA $70305A,X  ; Bosses
    LDA $7ED870 : STA $70305C,X  ; Items
    LDA $7ED872 : STA $70305E,X  ; Items
    LDA $7ED874 : STA $703060,X  ; Items
    LDA $7ED876 : STA $703062,X  ; Items
    LDA $7ED878 : STA $703064,X  ; Items
    LDA $7ED87A : STA $703066,X  ; Items
    LDA $7ED87C : STA $703068,X  ; Items
    LDA $7ED87E : STA $70306A,X  ; Items
    LDA $7ED880 : STA $70306C,X  ; Items
    LDA $7ED882 : STA $70306E,X  ; Items
    LDA $7ED8B0 : STA $703070,X  ; Doors
    LDA $7ED8B2 : STA $703072,X  ; Doors
    LDA $7ED8B4 : STA $703074,X  ; Doors
    LDA $7ED8B6 : STA $703076,X  ; Doors
    LDA $7ED8B8 : STA $703078,X  ; Doors
    LDA $7ED8BA : STA $70307A,X  ; Doors
    LDA $7ED8BC : STA $70307C,X  ; Doors
    LDA $7ED8BE : STA $70307E,X  ; Doors
    LDA $7ED8C0 : STA $703080,X  ; Doors
    LDA $7ED8C2 : STA $703082,X  ; Doors
    LDA $7ED8C4 : STA $703084,X  ; Doors
    LDA $7ED908 : STA $703086,X  ; Map Stations
    LDA $7ED90A : STA $703088,X  ; Map Stations
    LDA $7ED90C : STA $70308A,X  ; Map Stations
    LDA $7ECD20 : STA $70308C,X  ; Scrolls
    LDA $7ECD22 : STA $70308E,X  ; Scrolls
    LDA $7ECD24 : STA $703090,X  ; Scrolls
    LDA $7ECD26 : STA $703092,X  ; Scrolls
    LDA $7ECD28 : STA $703094,X  ; Scrolls
    LDA $7ECD2A : STA $703096,X  ; Scrolls
    LDA $7ECD2C : STA $703098,X  ; Scrolls
    LDA $7ECD2E : STA $70309A,X  ; Scrolls
    LDA $7ECD30 : STA $70309C,X  ; Scrolls
    LDA $7ECD32 : STA $70309E,X  ; Scrolls
    LDA $7ECD34 : STA $7030A0,X  ; Scrolls
    LDA $7ECD36 : STA $7030A2,X  ; Scrolls
    LDA $7ECD38 : STA $7030A4,X  ; Scrolls
    LDA $7ECD3A : STA $7030A6,X  ; Scrolls
    LDA $7ECD3C : STA $7030A8,X  ; Scrolls
    LDA $7ECD3E : STA $7030AA,X  ; Scrolls
    LDA $7ECD40 : STA $7030AC,X  ; Scrolls
    LDA $7ECD42 : STA $7030AE,X  ; Scrolls
    LDA $7ECD44 : STA $7030B0,X  ; Scrolls
    LDA $7ECD46 : STA $7030B2,X  ; Scrolls
    LDA $7ECD48 : STA $7030B4,X  ; Scrolls
    LDA $7ECD4A : STA $7030B6,X  ; Scrolls
    LDA $7ECD4C : STA $7030B8,X  ; Scrolls
    LDA $7ECD4E : STA $7030BA,X  ; Scrolls
    LDA $7ECD50 : STA $7030BC,X  ; Scrolls
    ; next available byte is $7030BE
    RTL
}

custom_preset_load:
{
    LDA !sram_custom_preset_slot
    XBA : TAX                    ; multiply by 100h (slot offset)
                                 ; skip past "5AFE" word
                                 ; skip past size for now
    LDA $703004,X : STA $078D    ; DDB
    LDA $703006,X : STA $079B    ; MDB
    LDA $703008,X : STA $07F3    ; Music Bank
    LDA $70300A,X : STA $07F5    ; Music Track
    LDA $70300C,X : STA $090F    ; Screen subpixel X position
    LDA $70300E,X : STA $0911    ; Screen X position in pixels
    LDA $703010,X : STA $0913    ; Screen subpixel Y position
    LDA $703012,X : STA $0915    ; Screen Y position in pixels
    LDA $703014,X : STA $0917    ; Layer 2 X position
    LDA $703016,X : STA $0919    ; Layer 2 Y position
    LDA $703018,X : STA $0921    ; BG2 X offset
    LDA $70301A,X : STA $0923    ; BG2 Y offset
    LDA $70301C,X : STA $093F    ; Ceres escape flag
    LDA $70301E,X : STA $09A2    ; Equipped Items
    LDA $703020,X : STA $09A4    ; Collected Items
    LDA $703022,X : STA $09A6    ; Beams
    LDA $703024,X : STA $09A8    ; Beams
    LDA $703026,X : STA $09C0    ; Manual/Auto reserve tank
    LDA $703028,X : STA $09C2    ; Health
    LDA $70302A,X : STA $09C4    ; Max health
    LDA $70302C,X : STA $09C6    ; Missiles
    LDA $70302E,X : STA $09C8    ; Max missiles
    LDA $703030,X : STA $09CA    ; Supers
    LDA $703032,X : STA $09CC    ; Max supers
    LDA $703034,X : STA $09CE    ; Pbs
    LDA $703036,X : STA $09D0    ; Max pbs
    LDA $703038,X : STA $09D2    ; Currently selected item
    LDA $70303A,X : STA $09D4    ; Max reserves
    LDA $70303C,X : STA $09D6    ; Reserves
    LDA $70303E,X : STA $0A1C    ; Samus position/state
    LDA $703040,X : STA $0A1E    ; More position/state
    LDA $703042,X : STA $0A68    ; Flash suit
    LDA $703044,X : STA $0A76    ; Hyper beam
    LDA $703046,X : STA $0AF6    ; Samus X
    LDA $703048,X : STA $0AF8    ; Samus subpixel X
    LDA $70304A,X : STA $0AFA    ; Samus Y
    LDA $70304C,X : STA $0AFC    ; Samus subpixel Y
    LDA $70304E,X : STA $0B3F    ; Blue suit
    LDA $703050,X : STA $7ED820  ; Events
    LDA $703052,X : STA $7ED822  ; Events
    LDA $703054,X : STA $7ED828  ; Bosses
    LDA $703056,X : STA $7ED82A  ; Bosses
    LDA $703058,X : STA $7ED82C  ; Bosses
    LDA $70305A,X : STA $7ED82E  ; Bosses
    LDA $70305C,X : STA $7ED870  ; Items
    LDA $70305E,X : STA $7ED872  ; Items
    LDA $703060,X : STA $7ED874  ; Items
    LDA $703062,X : STA $7ED876  ; Items
    LDA $703064,X : STA $7ED878  ; Items
    LDA $703066,X : STA $7ED87A  ; Items
    LDA $703068,X : STA $7ED87C  ; Items
    LDA $70306A,X : STA $7ED87E  ; Items
    LDA $70306C,X : STA $7ED880  ; Items
    LDA $70306E,X : STA $7ED882  ; Items
    LDA $703070,X : STA $7ED8B0  ; Doors
    LDA $703072,X : STA $7ED8B2  ; Doors
    LDA $703074,X : STA $7ED8B4  ; Doors
    LDA $703076,X : STA $7ED8B6  ; Doors
    LDA $703078,X : STA $7ED8B8  ; Doors
    LDA $70307A,X : STA $7ED8BA  ; Doors
    LDA $70307C,X : STA $7ED8BC  ; Doors
    LDA $70307E,X : STA $7ED8BE  ; Doors
    LDA $703080,X : STA $7ED8C0  ; Doors
    LDA $703082,X : STA $7ED8C2  ; Doors
    LDA $703084,X : STA $7ED8C4  ; Doors
    LDA $703086,X : STA $7ED908  ; Map Stations
    LDA $703088,X : STA $7ED90A  ; Map Stations
    LDA $70308A,X : STA $7ED90C  ; Map Stations
    ; set flag to load scrolls later
    LDA #$5AFE : STA !ram_custom_preset
    ; next available byte is $7030BE
    RTL
}
else
custom_preset_save:
{
    LDA !sram_custom_preset_slot
    ASL : XBA : TAX              ; multiply by 200h (slot offset)
    LDA #$5AFE : STA $703000,X   ; mark this slot as "SAFE" to load
    LDA #$01EE : STA $703002,X   ; record slot size for future compatibility
    LDA $078B : STA $703004,X    ; Elevator Index
    LDA $078D : STA $703006,X    ; DDB
    LDA $078F : STA $703008,X    ; DoorOut Index
    LDA $079B : STA $70300A,X    ; MDB
    LDA $079F : STA $70300C,X    ; Region
    LDA $07C3 : STA $70300E,X    ; GFX Pointers
    LDA $07C5 : STA $703010,X    ; GFX Pointers
    LDA $07C7 : STA $703012,X    ; GFX Pointers
    LDA $07F3 : STA $703014,X    ; Music Bank
    LDA $07F5 : STA $703016,X    ; Music Track
    LDA $090F : STA $703018,X    ; Screen subpixel X position
    LDA $0911 : STA $70301A,X    ; Screen X position in pixels
    LDA $0913 : STA $70301C,X    ; Screen subpixel Y position
    LDA $0915 : STA $70301E,X    ; Screen Y position in pixels
    LDA $093F : STA $703020,X    ; Ceres escape flag
    LDA $09A2 : STA $703022,X    ; Equipped Items
    LDA $09A4 : STA $703024,X    ; Collected Items
    LDA $09A6 : STA $703026,X    ; Beams
    LDA $09A8 : STA $703028,X    ; Beams
    LDA $09C0 : STA $70302A,X    ; Manual/Auto reserve tank
    LDA $09C2 : STA $70302C,X    ; Health
    LDA $09C4 : STA $70302E,X    ; Max health
    LDA $09C6 : STA $703030,X    ; Missiles
    LDA $09C8 : STA $703032,X    ; Max missiles
    LDA $09CA : STA $703034,X    ; Supers
    LDA $09CC : STA $703036,X    ; Max supers
    LDA $09CE : STA $703038,X    ; Pbs
    LDA $09D0 : STA $70303A,X    ; Max pbs
    LDA $09D2 : STA $70303C,X    ; Currently selected item
    LDA $09D4 : STA $70303E,X    ; Max reserves
    LDA $09D6 : STA $703040,X    ; Reserves
    LDA $0A1C : STA $703042,X    ; Samus position/state
    LDA $0A1E : STA $703044,X    ; More position/state
    LDA $0A68 : STA $703046,X    ; Flash suit
    LDA $0A76 : STA $703048,X    ; Hyper beam
    LDA $0AF6 : STA $70304A,X    ; Samus X
    LDA $0AFA : STA $70304C,X    ; Samus Y
    LDA $0B3F : STA $70304E,X    ; Blue suit

    ; Copy SRAM
    TXA : CLC : ADC #$005F : TAX
  .save_sram_loop
    DEX : PHX : TXA : AND #$01FF : TAX
    LDA $7ED7C0,X : PLX : STA $703050,X
    DEX : TXA : BIT #$0100 : BEQ .save_sram_loop

    ; Copy Events, Items, Doors
    CLC : ADC #$0100 : TAX
  .save_events_items_doors_loop
    DEX : PHX : TXA : AND #$01FF : TAX
    LDA $7ED820,X : PLX : STA $7030B0,X
    DEX : TXA : BIT #$0100 : BEQ .save_events_items_doors_loop

    INX                          ; Restore X for sanity
    LDA $0917 : STA $7031B0,X    ; Layer 2 X position
    LDA $0919 : STA $7031B2,X    ; Layer 2 Y position
    LDA $0921 : STA $7031B4,X    ; BG2 X offset
    LDA $0923 : STA $7031B6,X    ; BG2 Y offset

    PHX : PHB
    TXA : CLC : ADC #$31B8 : TAY ; Y = Destination
    LDX #$CD20 : LDA #$0031      ; X = Source, A = Size
    MVN $7E70                    ; srcBank, destBank
    PLB : PLX

    LDA $0AF8 : STA $7031EA,X    ; Samus subpixel X
    LDA $0AFC : STA $7031EC,X    ; Samus subpixel Y
    ; next available byte is $7031EE

    RTL
}

custom_preset_load:
{
    LDA !sram_custom_preset_slot
    ASL : XBA : TAX              ; multiply by 200h
                                 ; skip past "5AFE" word
                                 ; skip past size for now
    LDA $703004,X : STA $078B    ; Elevator Index
    LDA $703006,X : STA $078D    ; DDB
    LDA $703008,X : STA $078F    ; DoorOut Index
    LDA $70300A,X : STA $079B    ; MDB
    LDA $70300C,X : STA $079F    ; Region
    LDA $70300E,X : STA $07C3    ; GFX Pointers
    LDA $703010,X : STA $07C5    ; GFX Pointers
    LDA $703012,X : STA $07C7    ; GFX Pointers
    LDA $703014,X : STA $07F3    ; Music Bank
    LDA $703016,X : STA $07F5    ; Music Track
    LDA $703018,X : STA $090F    ; Screen subpixel X position
    LDA $70301A,X : STA $0911    ; Screen X position in pixels
    LDA $70301C,X : STA $0913    ; Screen subpixel Y position
    LDA $70301E,X : STA $0915    ; Screen Y position in pixels
    LDA $703020,X : STA $093F    ; Ceres escape flag
    LDA $703022,X : STA $09A2    ; Equipped Items
    LDA $703024,X : STA $09A4    ; Collected Items
    LDA $703026,X : STA $09A6    ; Beams
    LDA $703028,X : STA $09A8    ; Beams
    LDA $70302A,X : STA $09C0    ; Manual/Auto reserve tank
    LDA $70302C,X : STA $09C2    ; Health
    LDA $70302E,X : STA $09C4    ; Max health
    LDA $703030,X : STA $09C6    ; Missiles
    LDA $703032,X : STA $09C8    ; Max missiles
    LDA $703034,X : STA $09CA    ; Supers
    LDA $703036,X : STA $09CC    ; Max supers
    LDA $703038,X : STA $09CE    ; Pbs
    LDA $70303A,X : STA $09D0    ; Max pbs
    LDA $70303C,X : STA $09D2    ; Currently selected item
    LDA $70303E,X : STA $09D4    ; Max reserves
    LDA $703040,X : STA $09D6    ; Reserves
    LDA $703042,X : STA $0A1C    ; Samus position/state
    LDA $703044,X : STA $0A1E    ; More position/state
    LDA $703046,X : STA $0A68    ; Flash suit
    LDA $703048,X : STA $0A76    ; Hyper beam
    LDA $70304A,X : STA $0AF6    ; Samus X
    LDA $70304C,X : STA $0AFA    ; Samus Y
    LDA $70304E,X : STA $0B3F    ; Blue suit

    ; Copy SRAM
    TXA : CLC : ADC #$005F : TAX
  .load_sram_loop
    DEX : LDA $703050,X : PHX : PHA
    TXA : AND #$01FF : TAX : PLA
    STA $7ED7C0,X : PLX
    DEX : TXA : BIT #$0100 : BEQ .load_sram_loop

    ; Copy Events, Items, Doors
    CLC : ADC #$0100 : TAX
  .load_events_items_doors_loop
    DEX : LDA $7030B0,X : PHX : PHA
    TXA : AND #$01FF : TAX : PLA
    STA $7ED820,X : PLX
    DEX : TXA : BIT #$0100 : BEQ .load_events_items_doors_loop

    ; Restore X for sanity, then check if we have layer 2 values
    INX : LDA $703002,X : CMP #$01B0 : BEQ .done_no_scrolls

    LDA $7031B0,X : STA $0917    ; Layer 2 X position
    LDA $7031B2,X : STA $0919    ; Layer 2 Y position
    LDA $7031B4,X : STA $0921    ; BG2 X offset
    LDA $7031B6,X : STA $0923    ; BG2 Y offset

    LDA $703002,X : CMP #$01BA : BMI .done_no_scrolls
    LDA #$5AFE : STA !ram_custom_preset

    LDA $703002,X : CMP #$01EC : BMI .done_with_scrolls
    LDA $7031EA,X : STA $0AF8    ; Samus subpixel X
    LDA $7031EC,X : STA $0AFC    ; Samus subpixel Y

  .done_with_scrolls
    RTL

    ; next available byte is $7031EE

  .done_no_scrolls
    LDA #$0000 : STA !ram_custom_preset
    RTL
}
endif

preset_scroll_fixes:
{
    ; Fixes bad scrolling caused by loading into a position that
    ; is normally hidden until passing over a red scroll block.
    ; These fixes can often be found in nearby door asm.
    PHP
    PHB
    %ai16()
    STZ $0921 : STZ $0923
    LDA !ram_custom_preset : CMP #$5AFE : BNE .category_presets
    BRL .custom_presets

  .category_presets
    PEA $7E7E : PLB : PLB
    %a8()
    LDA #$01 : LDX !ROOM_ID      ; X = room ID
    CPX #$C000 : BMI .tophalf    ; organized by room ID for efficiency
    BRL .halfway

    ; -------------------------------------------------
    ; Crateria/Brinstar Scroll Fixes (Category Presets)
    ; -------------------------------------------------
  .parlor
    LDY !SAMUS_Y : CPY #$00D0    ; fix varies depending on Y position
    BPL .parlor_lower
    STA $CD24
    BRL .specialized_parlor
  .parlor_lower
    INC : STA $CD26 : STA $CD28
    BRL .specialized_parlor

  .dachora
    LDY !SAMUS_X : CPY #$0405    ; no fix if Xpos < 1029
    BMI .topdone
    STA $CD24
    BRA .topdone

  .big_pink
    BRL .specialized_big_pink

  .taco_tank_room
    BRL .specialized_taco_tank_room

  .etecoons_etank
    STA $CD25 : STA $CD26
    BRA .topdone

  .red_tower
    LDY !SAMUS_Y : CPY #$06A0    ; no fix if Ypos < 1696
    BMI .topdone
    STA $CD27
    BRA .topdone

  .alpha_pbs
    LDY !SAMUS_X : CPY #$0100    ; no fix if Xpos > 255
    BPL .topdone
    STA $CD20
    BRA .topdone

  .below_spazer
    LDY !SAMUS_Y : CPY #$00B0    ; no fix if Ypos > 176
    BPL .topdone
    INC : STA $CD20 : STA $CD21
  .topdone
    PLB
    PLP
    RTL

  .tophalf
    CPX #$A75D : BPL .norfair
    CPX #$92FD : BEQ .parlor
    CPX #$9CB3 : BEQ .dachora
    CPX #$9D19 : BEQ .big_pink
    CPX #$9F64 : BEQ .taco_tank_room
    CPX #$A011 : BEQ .etecoons_etank
    CPX #$A253 : BEQ .red_tower
    CPX #$A3AE : BEQ .alpha_pbs
    CPX #$A408 : BEQ .below_spazer
    CPX #$A6A1 : BEQ .warehouse_entrance
    BRA .topdone

    ; -----------------------------------------
    ; Warehouse Scroll Fixes (Category Presets)
    ; -----------------------------------------
  .warehouse_entrance
    STA $CD20
    BRA .topdone

    ; ---------------------------------------------
    ; Upper Norfair Scroll Fixes (Category Presets)
    ; ---------------------------------------------
  .ice_snake_room
    LDY !SAMUS_X : CPY #$0100    ; fix varies depending on X position
    BPL .ice_snake_room_hidden
    INC : STA $CD22 : STZ $CD23
    BRA .norfairdone
  .ice_snake_room_hidden
    INC : STA $CD23 : STZ $CD22
    BRA .norfairdone

  .hjb_room
    BRL .specialized_hjb_room

  .green_bubble_missiles
    STA $CD20
    BRA .norfairdone

  .volcano_room
    STA $CD26
    BRA .norfairdone

  .bat_cave
    INC : STA $CD20
    BRA .norfairdone

  .norfair
    CPX #$A8B9 : BEQ .ice_snake_room
    CPX #$A9E5 : BEQ .hjb_room
    CPX #$AC83 : BEQ .green_bubble_missiles
    CPX #$AE32 : BEQ .volcano_room
    CPX #$B07A : BEQ .bat_cave
    CPX #$B1E5 : BEQ .acid_chozo_room
    CPX #$B283 : BEQ .golden_torizo
    CPX #$B3A5 : BEQ .fast_pillars_setup
    CPX #$B4AD : BEQ .worst_room
    CPX #$B585 : BEQ .kihunter_stairs
  .norfairdone
    PLB
    PLP
    RTL

    ; ---------------------------------------------
    ; Lower Norfair Scroll Fixes (Category Presets)
    ; ---------------------------------------------
  .acid_chozo_room
    STA $CD26 : STA $CD27 : STA $CD28
    STZ $CD23 : STZ $CD24
    BRA .norfairdone

  .golden_torizo
    LDY !SAMUS_Y : CPY #$00D0    ; no fix if Ypos < 208
    BMI .norfairdone
    STA $CD22 : STA $CD23
    INC : STA $CD20 : STA $CD21
    BRA .norfairdone

  .fast_pillars_setup
    LDY !SAMUS_Y : CPY #$0199    ; fix varies depending on Y position
    BMI .above_pillars
    STA $CD24 : INC : STA $CD22
    STZ $CD21
    BRA .norfairdone
  .above_pillars
    INC : STA $CD21
    BRA .norfairdone

  .worst_room
    INC : STA $CD20
    BRA .norfairdone

  .kihunter_stairs
    LDY !SAMUS_Y : CPY #$008C    ; no fix if Ypos > 140
    BPL .kihunter_stairs_done
    INC : STA $CD20
    STZ $CD23
  .kihunter_stairs_done
    BRL .specialized_kihunter_stairs

    ; --------------------------------------------
    ; Wrecked Ship Scroll Fixes (Category Presets)
    ; --------------------------------------------
  .bowling
    STZ $CD26 : STZ $CD27
    STZ $CD28 : STZ $CD29
    STZ $CD2A : STZ $CD2B
    BRA .halfwaydone

  .wrecked_ship_shaft
    LDY !SAMUS_X : CPY #$05A0    ; fix varies depending on X position
    BMI .lower_ws_shaft
    STA $CD49
    BRA .halfwaydone
  .lower_ws_shaft
    INC : STA $CD48 : STA $CD4E
    BRA .halfwaydone

  .electric_death
    INC : STA $CD20
    BRA .halfwaydone

  .basement
    STA $CD24
    BRA .halfwaydone

  .halfway
    CPX #$DF45 : BPL .ceres
    CPX #$C98E : BEQ .bowling
    CPX #$CAF6 : BEQ .wrecked_ship_shaft
    CPX #$CBD5 : BEQ .electric_death
    CPX #$CC6F : BEQ .basement
    CPX #$D1A3 : BEQ .crab_shaft
    CPX #$D21C : BEQ .crab_hole
    CPX #$D48E : BEQ .oasis
    CPX #$D69A : BEQ .pants_room
  .halfwaydone
    PLB
    PLP
    RTL

    ; -----------------------------------------------
    ; Maridia/Tourian Scroll Fixes (Category Presets)
    ; -----------------------------------------------
  .crab_shaft
    STA $CD26 : INC : STA $CD24
    BRA .halfwaydone

  .crab_hole
    LDY !SAMUS_Y : CPY #$00D0    ; fix varies depending on Y position
    BPL .lower_crab_hole
    INC : STA $CD20
    BRA .halfwaydone
  .lower_crab_hole
    STA $CD21 : STZ $CD20
    BRA .halfwaydone

  .oasis
    INC : STA $CD20 : STA $CD21
    BRA .halfwaydone

  .pants_room
    STA $CD21 : STZ $CD22
    BRA .halfwaydone

    ; -----------------------------------------
    ; Ceres Fixes (Category and Custom Presets)
    ; -----------------------------------------
  .ceres_elevator
    STZ $091E : STZ $0920
    BRA .ceresdone

  .ceres
    STZ $5F                      ; Initialize mode 7
    CPX #$DF45 : BEQ .ceres_elevator
    %a16() : STZ $78             ; Ceres Elevator room already does this
    STZ $7A : STZ $7C            ; Other Ceres rooms should zero out the values
    STZ $7E : STZ $80
    STZ $82 : %a8()
    CPX #$DF8D : BEQ .ceres_falling_tiles
    CPX #$DFD7 : BEQ .ceres_magnet_stairs
    CPX #$E021 : BEQ .ceres_dead_scientists
    CPX #$E06B : BEQ .ceres_58_escape
    CPX #$E0B5 : BEQ .ceres_ridley
  .ceresdone
    PLB
    PLP
    RTL

  .ceres_falling_tiles
    LDA #$01 : STA $091E
    LDA #$02 : STA $0920
    BRA .ceresdone

  .ceres_magnet_stairs
    LDA #$03 : STA $091E
    LDA #$02 : STA $0920
    BRA .ceresdone

  .ceres_dead_scientists
    LDA #$04 : STA $091E
    LDA #$03 : STA $0920
    BRA .ceresdone

  .ceres_58_escape
    LDA #$06 : STA $091E
    LDA #$03 : STA $0920
    BRA .ceresdone

  .ceres_ridley
    LDA #$08 : STA $091E
    LDA #$03 : STA $0920
    BRA .ceresdone

  .custom_presets
    LDA !sram_custom_preset_slot
if !FEATURE_TINYSTATES
    XBA                          ; multiply by 100h (slot offset)
    CLC : ADC #$30BD : TAX       ; X = Source
else
    ASL : XBA                    ; multiply by 200h (slot offset)
    CLC : ADC #$31E9 : TAX       ; X = Source
endif
    LDY #$CD51 : LDA #$0031      ; Y = Destination, A = Size-1
    MVP $707E                    ; srcBank, destBank
    TDC : STA !ram_custom_preset

    %a8() : LDX !ROOM_ID         ; X = room ID
    CPX #$DF45 : BMI .specialized_fixes
    BRL .ceres                   ; For ceres, use same fixes as category presets

    ; -----------------------------------------------
    ; Specialized Fixes (Category and Custom Presets)
    ; -----------------------------------------------
  .specialized_parlor
    LDY !SAMUS_Y : CPY #$00D0    ; no fix if Ypos > 208
    BPL .specialdone
    LDY !SAMUS_X : CPY #$0175    ; no fix if Xpos > 373
    BPL .specialdone
    %a16() : LDA #$00FF
    STA $7F05C0 : STA $7F05C2
    LDY !SAMUS_PBS_MAX           ; only clear bottom row if no power bombs
    BEQ .specialdone
    STA $7F0520 : STA $7F0522
    STA $7F0480 : STA $7F0482
    BRA .specialdone

  .specialized_big_pink
    LDY !SAMUS_Y : CPY #$02C0    ; no fix if Ypos < 704
    BMI .specialdone
    CPY #$03C9                   ; no fix if Ypos > 969
    BPL .specialdone
    %a16() : LDA #$00FF
    STA $7F2208 : STA $7F220A : STA $7F22A8 : STA $7F22AA
    STA $7F2348 : STA $7F234A : STA $7F23E8 : STA $7F23EA
    BRA .specialdone

  .specialized_fixes
    CPX #$92FD : BEQ .specialized_parlor
    CPX #$9D19 : BEQ .specialized_big_pink
    CPX #$9F64 : BEQ .specialized_taco_tank_room
    CPX #$A9E5 : BEQ .specialized_hjb_room
    CPX #$B585 : BEQ .specialized_kihunter_stairs
  .specialdone
    PLB
    PLP
    RTL

  .specialized_taco_tank_room
    LDY !SAMUS_X : CPY #$022B    ; no fix if Xpos < 555
    BMI .specialdone
    LDY !SAMUS_PBS_MAX           ; no fix if no power bombs
    BEQ .specialdone
    %a16() : LDA #$00FF
    LDX #$0000
  .specialized_taco_tank_loop
    STA $7F1008,X : STA $7F1068,X : INX : INX
    CPX #$0011 : BMI .specialized_taco_tank_loop
    BRA .specialdone

  .specialized_hjb_room
    LDY !SAMUS_X : CPY #$0095    ; no fix if Xpos > 149
    BPL .specialdone
    %a16() : LDA #$00FF
    STA $7F0052 : STA $7F0072 : STA $7F0092
    BRA .specialdone

  .specialized_kihunter_stairs
    LDY !SAMUS_Y : CPY #$00F0    ; no fix if Ypos > 240
    BPL .specialdone
    %a16() : LDA #$00FF
    STA $7F036E : STA $7F0370 : STA $7F0374 : STA $7F0376
    STA $7F03D4 : STA $7F0610 : STA $7F0612
    BRA .specialdone
}

print pc, " custompresets end"
warnpc $B3C000 ; mainmenu.asm

