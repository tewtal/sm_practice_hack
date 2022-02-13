; --------------
; Custom Presets
; --------------

custom_preset_save:
{
    LDA !sram_custom_preset_slot
    ASL : XBA : TAX ; multiply by 200h (slot offset)
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

preset_scroll_fixes:
{
    ; Fixes bad scrolling caused by a loading into a position that
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
    CPX #$C000 : BMI .tophalf    ; organized by room ID so we only have to check half
    BRL .halfway

  .parlor
    LDY !SAMUS_Y : CPY #$00D0    ; fix varies depending on Y position
    BPL .parlor_lower
    STA $CD24
    BRA .topdone
  .parlor_lower
    INC : STA $CD26 : STA $CD28
    BRA .topdone

  .dachora
    LDY !SAMUS_X : CPY #$0405    ; no fix if Xpos < 1029
    BMI .topdone
    STA $CD24
    BRA .topdone

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
    BRA .topdone

  .warehouse_entrance
    STA $CD20
    BRA .topdone

  .ice_snake_room
    LDY !SAMUS_X : CPY #$0100    ; fix varies depending on X position
    BPL .ice_snake_room_hidden
    INC : STA $CD22 : TDC : STA $CD23
    BRA .topdone
  .ice_snake_room_hidden
    INC : STA $CD23 : TDC : STA $CD22

  .topdone
    PLB
    PLP
    RTL

  .tophalf
    CPX #$92FD : BEQ .parlor
    CPX #$9CB3 : BEQ .dachora
    CPX #$A011 : BEQ .etecoons_etank
    CPX #$A253 : BEQ .red_tower
    CPX #$A3AE : BEQ .alpha_pbs
    CPX #$A408 : BEQ .below_spazer
    CPX #$A6A1 : BEQ .warehouse_entrance
    CPX #$A8B9 : BEQ .ice_snake_room
    CPX #$AC83 : BNE +           ; left of Green Bubbles Missile Room (Norfair Reserve)
    STA $7ECD20
    BRA .topdone
+   CPX #$AE32 : BNE +           ; bottom of Volcano Room
    STA $7ECD26
    BRA .topdone
+   CPX #$B07A : BNE +           ; top of Bat Cave
    STA $7ECD20
    BRA .topdone
+   CPX #$B1E5 : BNE +           ; bottom of Acid Chozo Room
    STA $7ECD26 : STA $7ECD27 : STA $7ECD28
    LDA #$00 : STA $7ECD23 : STA $7ECD24
    BRA .done
+   CPX #$B283 : BNE +           ; bottom of GT's Room
    LDY !SAMUS_Y : CPY #$00D0    ; no fix if Ypos < 208
    BMI .done
    STA $7ECD22 : STA $7ECD23    ; leaving GT's room
    LDA #$02
    STA $7ECD20 : STA $7ECD21
+   CPX #$B3A5 : BNE +           ; Pre-Pillars
    LDY !SAMUS_Y : CPY #$0199    ; no scroll fix if Ypos < 409
    BMI ++
    STA $7ECD22 : STA $7ECD24    ; bottom of Pre-Pillars
    LDA #$00 : STA $7ECD21
    BRA .done
++  LDA #$02 : STA $7ECD21       ; middle/top of Pre-Pillars
    BRA .done
+   CPX #$B4AD : BNE +           ; top of Worst Room in the Game
    LDA #$02 : STA $7ECD20
+   CPX #$B585 : BNE .done       ; top of Kihunter Stairs
    LDY !SAMUS_Y : CPY #$008C    ; no scroll fix if Ypos > 140
    BPL .done
    STA $7ECD20
    LDA #$00 : STA $7ECD23

  .done
    PLB
    PLP
    RTL

  .halfway
    CPX #$DF45 : BMI +           ; Ceres rooms set BG1 offsets manually
    BRL .ceres
+   CPX #$C98E : BNE +           ; bottom-left of Bowling Room
    LDA #$00 : STA $7ECD26 : STA $7ECD27
    STA $7ECD28 : STA $7ECD29
    STA $7ECD2A : STA $7ECD2B
    BRA .done
+   CPX #$CAF6 : BNE +           ; WS Shaft
    LDY !SAMUS_X : CPY #$05A0    ; fix East Supers if Xpos > 1440
    BPL ++
    LDA #$02                     ; lower area before Basement
    STA $7ECD48 : STA $7ECD4E
    BRA .done
++  STA $7ECD49                  ; hidden area before WS East Supers
    BRA .done
+   CPX #$CBD5 : BNE +           ; top of Electric Death Room (WS E-Tank)
    LDA #$02
    STA $7ECD20
    BRA .done
+   CPX #$CC6F : BNE +           ; right of Basement (Phantoon)
    STA $7ECD24
    BRA .bottomdone
+   CPX #$D1A3 : BNE +           ; bottom of Crab Shaft
    STA $7ECD26
    LDA #$02 : STA $7ECD24
    BRA .bottomdone
+   CPX #$D21C : BNE +           ; Crab Hole
    LDY !SAMUS_Y : CPY #$00D0
    BMI ++    
    STA $7ECD21                  ; bottom of Crab Hole
    LDA #$00 : STA $7ECD20
    BRA .bottomdone
++  LDA #$02 : STA $7ECD20       ; top of Crab Hole
    BRA .bottomdone
+   CPX #$D48E : BNE +           ; Oasis (bottom of Toilet)
    LDA #$02
    STA $7ECD20 : STA $7ECD21
    BRA .bottomdone
+   CPX #$D69A : BNE .bottomdone ; Pants Room (door to Shaktool)
    STA $7ECD21
    LDA #$00 : STA $7ECD22

  .bottomdone
    PLB
    PLP
    RTL

  .ceres
    LDA #$00 : STA $7E005F       ; Initialize mode 7
    CPX #$DF45 : BNE +           ; Ceres Elevator
    LDA #$00 : STA $7E091E : STA $7E0920
    BRL .ceresdone
+   STA $7E0078 : STA $7E0079    ; Ceres Elevator room already does this
    STA $7E007A : STA $7E007B    ; Other rooms should zero out the values
    STA $7E007C : STA $7E007D
    STA $7E007E : STA $7E007F
    STA $7E0080 : STA $7E0081
    STA $7E0082 : STA $7E0083
    CPX #$DF8D : BNE +           ; Ceres Falling Tiles
    LDA #$01 : STA $7E091E
    LDA #$02 : STA $7E0920
    BRA .ceresdone
+   CPX #$DFD7 : BNE +           ; Ceres Magnet Stairs
    LDA #$03 : STA $7E091E
    LDA #$02 : STA $7E0920
    BRA .ceresdone
+   CPX #$E021 : BNE +           ; Ceres Dead Scientists
    LDA #$04 : STA $7E091E
    LDA #$03 : STA $7E0920
    BRA .ceresdone
+   CPX #$E06B : BNE +           ; Ceres 58 Escape
    LDA #$06 : STA $7E091E
    LDA #$03 : STA $7E0920
    BRA .ceresdone
+   CPX #$E0B5 : BNE .ceresdone  ; Ceres Ridley
    LDA #$08 : STA $7E091E
    LDA #$03 : STA $7E0920

  .ceresdone
    PLB
    PLP
    RTL

  .custom_presets
    LDA !sram_custom_preset_slot
    ASL : XBA
    CLC : ADC #$31E9 : TAX       ; X = Source
    LDY #$CD51 : LDA #$0031      ; Y = Destination, A = Size-1
    MVP $707E                    ; srcBank, destBank
    LDA #$0000 : STA !ram_custom_preset
    PLB
    PLP
    RTL
}

