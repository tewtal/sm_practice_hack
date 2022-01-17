; --------------
; Custom Presets
; --------------

custom_preset_save:
{
    LDA !sram_custom_preset_slot
    ASL : XBA : TAX ; multiply by 200h (slot offset)
    LDA #$5AFE : STA $703000,X   ; mark this slot as "SAFE" to load
    LDA #$01EA : STA $703002,X   ; record slot size for future compatibility
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

    ; next available byte is $7031EA

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
    RTL

    ; next available byte is $7031EA

  .done_no_scrolls
    LDA #$0000 : STA !ram_custom_preset
    RTL
}

