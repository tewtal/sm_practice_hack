; --------------
; Custom Presets
; --------------

%startfree(83)

; Backward compatibility was promised. Just because it's unused, doesn't mean you can use it.

if !FEATURE_MAPSTATES
custom_preset_save:
{
    LDA !sram_custom_preset_slot
    %presetslotsize() ; multiply by 800h (slot offset)
    LDA !SAFEWORD : STA !PRESET_SLOTS+$00,X ; mark this slot as "SAFE" to load
    LDA #$00BE : STA !PRESET_SLOTS+$02,X ; record slot size (first 100h) for future compatibility
    LDA !DOOR_ID : STA !PRESET_SLOTS+$04,X
    LDA !ROOM_ID : STA !PRESET_SLOTS+$06,X
    LDA !MUSIC_DATA : STA !PRESET_SLOTS+$08,X
    LDA !MUSIC_TRACK : STA !PRESET_SLOTS+$0A,X
    LDA !LAYER1_SUB_X : STA !PRESET_SLOTS+$0C,X
    LDA !LAYER1_X : STA !PRESET_SLOTS+$0E,X
    LDA !LAYER1_SUB_Y : STA !PRESET_SLOTS+$10,X
    LDA !LAYER1_Y : STA !PRESET_SLOTS+$12,X
    LDA !LAYER2_X : STA !PRESET_SLOTS+$14,X
    LDA !LAYER2_Y : STA !PRESET_SLOTS+$16,X
    LDA !BG2_X_OFFSET : STA !PRESET_SLOTS+$18,X
    LDA !BG2_Y_OFFSET : STA !PRESET_SLOTS+$1A,X
    LDA !CERES_STATUS : STA !PRESET_SLOTS+$1C,X
    LDA !SAMUS_ITEMS_EQUIPPED : STA !PRESET_SLOTS+$1E,X
    LDA !SAMUS_ITEMS_COLLECTED : STA !PRESET_SLOTS+$20,X
    LDA !SAMUS_BEAMS_EQUIPPED : STA !PRESET_SLOTS+$22,X
    LDA !SAMUS_BEAMS_COLLECTED : STA !PRESET_SLOTS+$24,X
    LDA !SAMUS_RESERVE_MODE : STA !PRESET_SLOTS+$26,X
    LDA !SAMUS_HP : STA !PRESET_SLOTS+$28,X
    LDA !SAMUS_HP_MAX : STA !PRESET_SLOTS+$2A,X
    LDA !SAMUS_MISSILES : STA !PRESET_SLOTS+$2C,X
    LDA !SAMUS_MISSILES_MAX : STA !PRESET_SLOTS+$2E,X
    LDA !SAMUS_SUPERS : STA !PRESET_SLOTS+$30,X
    LDA !SAMUS_SUPERS_MAX : STA !PRESET_SLOTS+$32,X
    LDA !SAMUS_PBS : STA !PRESET_SLOTS+$34,X
    LDA !SAMUS_PBS_MAX : STA !PRESET_SLOTS+$36,X
    LDA !SAMUS_ITEM_SELECTED : STA !PRESET_SLOTS+$38,X
    LDA !SAMUS_RESERVE_MAX : STA !PRESET_SLOTS+$3A,X
    LDA !SAMUS_RESERVE_ENERGY : STA !PRESET_SLOTS+$3C,X
    LDA !SAMUS_POSE : STA !PRESET_SLOTS+$3E,X
    LDA !SAMUS_POSE_DIRECTION : STA !PRESET_SLOTS+$40,X
    LDA !SAMUS_SHINE_TIMER : STA !PRESET_SLOTS+$42,X ; Flash suit
    LDA !SAMUS_HYPER_BEAM : STA !PRESET_SLOTS+$44,X
    LDA !SAMUS_X : STA !PRESET_SLOTS+$46,X
    LDA !SAMUS_X_SUBPX : STA !PRESET_SLOTS+$48,X
    LDA !SAMUS_Y : STA !PRESET_SLOTS+$4A,X
    LDA !SAMUS_Y_SUBPX : STA !PRESET_SLOTS+$4C,X
    LDA !SAMUS_DASH_COUNTER : STA !PRESET_SLOTS+$4E,X ; Blue suit
    LDA $7ED820 : STA !PRESET_SLOTS+$50,X  ; Events
    LDA $7ED822 : STA !PRESET_SLOTS+$52,X  ; Events
    LDA $7ED828 : STA !PRESET_SLOTS+$54,X  ; Bosses
    LDA $7ED82A : STA !PRESET_SLOTS+$56,X  ; Bosses
    LDA $7ED82C : STA !PRESET_SLOTS+$58,X  ; Bosses
    LDA $7ED82E : STA !PRESET_SLOTS+$5A,X  ; Bosses
    LDA $7ED870 : STA !PRESET_SLOTS+$5C,X  ; Items
    LDA $7ED872 : STA !PRESET_SLOTS+$5E,X  ; Items
    LDA $7ED874 : STA !PRESET_SLOTS+$60,X  ; Items
    LDA $7ED876 : STA !PRESET_SLOTS+$62,X  ; Items
    LDA $7ED878 : STA !PRESET_SLOTS+$64,X  ; Items
    LDA $7ED87A : STA !PRESET_SLOTS+$66,X  ; Items
    LDA $7ED87C : STA !PRESET_SLOTS+$68,X  ; Items
    LDA $7ED87E : STA !PRESET_SLOTS+$6A,X  ; Items
    LDA $7ED880 : STA !PRESET_SLOTS+$6C,X  ; Items
    LDA $7ED882 : STA !PRESET_SLOTS+$6E,X  ; Items
    LDA $7ED8B0 : STA !PRESET_SLOTS+$70,X  ; Doors
    LDA $7ED8B2 : STA !PRESET_SLOTS+$72,X  ; Doors
    LDA $7ED8B4 : STA !PRESET_SLOTS+$74,X  ; Doors
    LDA $7ED8B6 : STA !PRESET_SLOTS+$76,X  ; Doors
    LDA $7ED8B8 : STA !PRESET_SLOTS+$78,X  ; Doors
    LDA $7ED8BA : STA !PRESET_SLOTS+$7A,X  ; Doors
    LDA $7ED8BC : STA !PRESET_SLOTS+$7C,X  ; Doors
    LDA $7ED8BE : STA !PRESET_SLOTS+$7E,X  ; Doors
    LDA $7ED8C0 : STA !PRESET_SLOTS+$80,X  ; Doors
    LDA $7ED8C2 : STA !PRESET_SLOTS+$82,X  ; Doors
    LDA $7ED8C4 : STA !PRESET_SLOTS+$84,X  ; Doors
    LDA $7ED908 : STA !PRESET_SLOTS+$86,X  ; Map Stations
    LDA $7ED90A : STA !PRESET_SLOTS+$88,X  ; Map Stations
    LDA $7ED90C : STA !PRESET_SLOTS+$8A,X  ; Map Stations
    ; next available byte is !PRESET_SLOTS+$BE
    ; last two bytes of the first 100h are the map counter
    LDA !MAP_COUNTER : STA !PRESET_SLOTS+$FE,X

    ; save scrolls
    PHB : TXA : PHA : CLC
    ADC #(!PRESET_SLOTS+$8C) : TAY   ; Y = Destination
    LDX #$CD20 : LDA #$0031          ; X = Source, A = Size
    MVN $7E70                        ; srcBank, destBank

    ; save explored map tiles
    PLA : PHA : CLC
    ADC #(!PRESET_SLOTS+$1FF) : TAY  ; Y = Destination
    LDX #$08F6 : LDA #$00FF          ; X = Source, A = Size-1
    MVP $7E70                        ; srcBank, destBank

    ; load explored map tiles by area (first six areas)
    PLA : CLC
    ADC #(!PRESET_SLOTS+$7FF) : TAY  ; Y = Destination
    LDX #$D351 : LDA #$05FF          ; X = Source, A = Size-1
    MVP $7E70                        ; srcBank, destBank
    PLB
    RTL
}

custom_preset_load:
{
    LDA !sram_custom_preset_slot
    %presetslotsize() ; multiply by 800h (slot offset)
    ; skip past "5AFE" word
    ; skip past size for now
    LDA !PRESET_SLOTS+$04,X : STA !DOOR_ID
    LDA !PRESET_SLOTS+$06,X : STA !ROOM_ID
    LDA !PRESET_SLOTS+$08,X : STA !MUSIC_DATA
    LDA !PRESET_SLOTS+$0A,X : STA !MUSIC_TRACK
    LDA !PRESET_SLOTS+$0C,X : STA !LAYER1_SUB_X
    LDA !PRESET_SLOTS+$0E,X : STA !LAYER1_X
    LDA !PRESET_SLOTS+$10,X : STA !LAYER1_SUB_Y
    LDA !PRESET_SLOTS+$12,X : STA !LAYER1_Y
    LDA !PRESET_SLOTS+$14,X : STA !LAYER2_X
    LDA !PRESET_SLOTS+$16,X : STA !LAYER2_Y
    LDA !PRESET_SLOTS+$18,X : STA !BG2_X_OFFSET
    LDA !PRESET_SLOTS+$1A,X : STA !BG2_Y_OFFSET
    LDA !PRESET_SLOTS+$1C,X : STA !CERES_STATUS
    LDA !PRESET_SLOTS+$1E,X : STA !SAMUS_ITEMS_EQUIPPED
    LDA !PRESET_SLOTS+$20,X : STA !SAMUS_ITEMS_COLLECTED
    LDA !PRESET_SLOTS+$22,X : STA !SAMUS_BEAMS_EQUIPPED
    LDA !PRESET_SLOTS+$24,X : STA !SAMUS_BEAMS_COLLECTED
    LDA !PRESET_SLOTS+$26,X : STA !SAMUS_RESERVE_MODE
    LDA !PRESET_SLOTS+$28,X : STA !SAMUS_HP
    LDA !PRESET_SLOTS+$2A,X : STA !SAMUS_HP_MAX
    LDA !PRESET_SLOTS+$2C,X : STA !SAMUS_MISSILES
    LDA !PRESET_SLOTS+$2E,X : STA !SAMUS_MISSILES_MAX
    LDA !PRESET_SLOTS+$30,X : STA !SAMUS_SUPERS
    LDA !PRESET_SLOTS+$32,X : STA !SAMUS_SUPERS_MAX
    LDA !PRESET_SLOTS+$34,X : STA !SAMUS_PBS
    LDA !PRESET_SLOTS+$36,X : STA !SAMUS_PBS_MAX
    LDA !PRESET_SLOTS+$38,X : STA !SAMUS_ITEM_SELECTED
    LDA !PRESET_SLOTS+$3A,X : STA !SAMUS_RESERVE_MAX
    LDA !PRESET_SLOTS+$3C,X : STA !SAMUS_RESERVE_ENERGY
    LDA !PRESET_SLOTS+$3E,X : STA !SAMUS_POSE
    LDA !PRESET_SLOTS+$40,X : STA !SAMUS_POSE_DIRECTION
    LDA !PRESET_SLOTS+$42,X : STA !SAMUS_SHINE_TIMER ; Flash suit
    LDA !PRESET_SLOTS+$44,X : STA !SAMUS_HYPER_BEAM
    LDA !PRESET_SLOTS+$46,X : STA !SAMUS_X
    LDA !PRESET_SLOTS+$48,X : STA !SAMUS_X_SUBPX
    LDA !PRESET_SLOTS+$4A,X : STA !SAMUS_Y
    LDA !PRESET_SLOTS+$4C,X : STA !SAMUS_Y_SUBPX
    LDA !PRESET_SLOTS+$4E,X : STA !SAMUS_DASH_COUNTER ; Blue suit
    LDA !PRESET_SLOTS+$50,X : STA $7ED820 ; Events
    LDA !PRESET_SLOTS+$52,X : STA $7ED822 ; Events
    LDA !PRESET_SLOTS+$54,X : STA $7ED828 ; Bosses
    LDA !PRESET_SLOTS+$56,X : STA $7ED82A ; Bosses
    LDA !PRESET_SLOTS+$58,X : STA $7ED82C ; Bosses
    LDA !PRESET_SLOTS+$5A,X : STA $7ED82E ; Bosses
    LDA !PRESET_SLOTS+$5C,X : STA $7ED870 ; Items
    LDA !PRESET_SLOTS+$5E,X : STA $7ED872 ; Items
    LDA !PRESET_SLOTS+$60,X : STA $7ED874 ; Items
    LDA !PRESET_SLOTS+$62,X : STA $7ED876 ; Items
    LDA !PRESET_SLOTS+$64,X : STA $7ED878 ; Items
    LDA !PRESET_SLOTS+$66,X : STA $7ED87A ; Items
    LDA !PRESET_SLOTS+$68,X : STA $7ED87C ; Items
    LDA !PRESET_SLOTS+$6A,X : STA $7ED87E ; Items
    LDA !PRESET_SLOTS+$6C,X : STA $7ED880 ; Items
    LDA !PRESET_SLOTS+$6E,X : STA $7ED882 ; Items
    LDA !PRESET_SLOTS+$70,X : STA $7ED8B0 ; Doors
    LDA !PRESET_SLOTS+$72,X : STA $7ED8B2 ; Doors
    LDA !PRESET_SLOTS+$74,X : STA $7ED8B4 ; Doors
    LDA !PRESET_SLOTS+$76,X : STA $7ED8B6 ; Doors
    LDA !PRESET_SLOTS+$78,X : STA $7ED8B8 ; Doors
    LDA !PRESET_SLOTS+$7A,X : STA $7ED8BA ; Doors
    LDA !PRESET_SLOTS+$7C,X : STA $7ED8BC ; Doors
    LDA !PRESET_SLOTS+$7E,X : STA $7ED8BE ; Doors
    LDA !PRESET_SLOTS+$80,X : STA $7ED8C0 ; Doors
    LDA !PRESET_SLOTS+$82,X : STA $7ED8C2 ; Doors
    LDA !PRESET_SLOTS+$84,X : STA $7ED8C4 ; Doors
    LDA !PRESET_SLOTS+$86,X : STA $7ED908 ; Map Stations
    LDA !PRESET_SLOTS+$88,X : STA $7ED90A ; Map Stations
    LDA !PRESET_SLOTS+$8A,X : STA $7ED90C ; Map Stations
    ; set flag to load scrolls later
    LDA !SAFEWORD : STA !ram_load_preset_low_word
    ; next available byte is !PRESET_SLOTS+$BE
    ; last two bytes of the first 100h are the map counter
    LDA !PRESET_SLOTS+$FE,X : STA !MAP_COUNTER

    ; load explored map tiles
    PHB : TXA : PHA : CLC
    ADC #(!PRESET_SLOTS+$1FF) : TAX  ; X = Source
    LDY #$08F6 : LDA #$00FF          ; Y = Destination, A = Size-1
    MVP $707E                        ; srcBank, destBank

    ; load explored map tiles by area (first six areas)
    PLA : CLC
    ADC #(!PRESET_SLOTS+$7FF) : TAX  ; X = Source
    LDY #$D351 : LDA #$05FF          ; Y = Destination, A = Size-1
    MVP $707E                        ; srcBank, destBank
    PLB
    RTL
}
else
if !FEATURE_TINYSTATES
custom_preset_save:
{
    LDA !sram_custom_preset_slot
    %presetslotsize() ; multiply by 100h (slot offset)
    LDA !SAFEWORD : STA !PRESET_SLOTS+$00,X ; mark this slot as "SAFE" to load
    LDA #$00BE : STA !PRESET_SLOTS+$02,X ; record slot size for future compatibility
    LDA !DOOR_ID : STA !PRESET_SLOTS+$04,X
    LDA !ROOM_ID : STA !PRESET_SLOTS+$06,X
    LDA !MUSIC_DATA : STA !PRESET_SLOTS+$08,X
    LDA !MUSIC_TRACK : STA !PRESET_SLOTS+$0A,X
    LDA !LAYER1_SUB_X : STA !PRESET_SLOTS+$0C,X
    LDA !LAYER1_X : STA !PRESET_SLOTS+$0E,X
    LDA !LAYER1_SUB_Y : STA !PRESET_SLOTS+$10,X
    LDA !LAYER1_Y : STA !PRESET_SLOTS+$12,X
    LDA !LAYER2_X : STA !PRESET_SLOTS+$14,X
    LDA !LAYER2_Y : STA !PRESET_SLOTS+$16,X
    LDA !BG2_X_OFFSET : STA !PRESET_SLOTS+$18,X
    LDA !BG2_Y_OFFSET : STA !PRESET_SLOTS+$1A,X
    LDA !CERES_STATUS : STA !PRESET_SLOTS+$1C,X
    LDA !SAMUS_ITEMS_EQUIPPED : STA !PRESET_SLOTS+$1E,X
    LDA !SAMUS_ITEMS_COLLECTED : STA !PRESET_SLOTS+$20,X
    LDA !SAMUS_BEAMS_EQUIPPED : STA !PRESET_SLOTS+$22,X
    LDA !SAMUS_BEAMS_COLLECTED : STA !PRESET_SLOTS+$24,X
    LDA !SAMUS_RESERVE_MODE : STA !PRESET_SLOTS+$26,X
    LDA !SAMUS_HP : STA !PRESET_SLOTS+$28,X
    LDA !SAMUS_HP_MAX : STA !PRESET_SLOTS+$2A,X
    LDA !SAMUS_MISSILES : STA !PRESET_SLOTS+$2C,X
    LDA !SAMUS_MISSILES_MAX : STA !PRESET_SLOTS+$2E,X
    LDA !SAMUS_SUPERS : STA !PRESET_SLOTS+$30,X
    LDA !SAMUS_SUPERS_MAX : STA !PRESET_SLOTS+$32,X
    LDA !SAMUS_PBS : STA !PRESET_SLOTS+$34,X
    LDA !SAMUS_PBS_MAX : STA !PRESET_SLOTS+$36,X
    LDA !SAMUS_ITEM_SELECTED : STA !PRESET_SLOTS+$38,X
    LDA !SAMUS_RESERVE_MAX : STA !PRESET_SLOTS+$3A,X
    LDA !SAMUS_RESERVE_ENERGY : STA !PRESET_SLOTS+$3C,X
    LDA !SAMUS_POSE : STA !PRESET_SLOTS+$3E,X
    LDA !SAMUS_POSE_DIRECTION : STA !PRESET_SLOTS+$40,X
    LDA !SAMUS_SHINE_TIMER : STA !PRESET_SLOTS+$42,X ; Flash suit
    LDA !SAMUS_HYPER_BEAM : STA !PRESET_SLOTS+$44,X
    LDA !SAMUS_X : STA !PRESET_SLOTS+$46,X
    LDA !SAMUS_X_SUBPX : STA !PRESET_SLOTS+$48,X
    LDA !SAMUS_Y : STA !PRESET_SLOTS+$4A,X
    LDA !SAMUS_Y_SUBPX : STA !PRESET_SLOTS+$4C,X
    LDA !SAMUS_DASH_COUNTER : STA !PRESET_SLOTS+$4E,X ; Blue suit
    LDA $7ED820 : STA !PRESET_SLOTS+$50,X  ; Events
    LDA $7ED822 : STA !PRESET_SLOTS+$52,X  ; Events
    LDA $7ED828 : STA !PRESET_SLOTS+$54,X  ; Bosses
    LDA $7ED82A : STA !PRESET_SLOTS+$56,X  ; Bosses
    LDA $7ED82C : STA !PRESET_SLOTS+$58,X  ; Bosses
    LDA $7ED82E : STA !PRESET_SLOTS+$5A,X  ; Bosses
    LDA $7ED870 : STA !PRESET_SLOTS+$5C,X  ; Items
    LDA $7ED872 : STA !PRESET_SLOTS+$5E,X  ; Items
    LDA $7ED874 : STA !PRESET_SLOTS+$60,X  ; Items
    LDA $7ED876 : STA !PRESET_SLOTS+$62,X  ; Items
    LDA $7ED878 : STA !PRESET_SLOTS+$64,X  ; Items
    LDA $7ED87A : STA !PRESET_SLOTS+$66,X  ; Items
    LDA $7ED87C : STA !PRESET_SLOTS+$68,X  ; Items
    LDA $7ED87E : STA !PRESET_SLOTS+$6A,X  ; Items
    LDA $7ED880 : STA !PRESET_SLOTS+$6C,X  ; Items
    LDA $7ED882 : STA !PRESET_SLOTS+$6E,X  ; Items
    LDA $7ED8B0 : STA !PRESET_SLOTS+$70,X  ; Doors
    LDA $7ED8B2 : STA !PRESET_SLOTS+$72,X  ; Doors
    LDA $7ED8B4 : STA !PRESET_SLOTS+$74,X  ; Doors
    LDA $7ED8B6 : STA !PRESET_SLOTS+$76,X  ; Doors
    LDA $7ED8B8 : STA !PRESET_SLOTS+$78,X  ; Doors
    LDA $7ED8BA : STA !PRESET_SLOTS+$7A,X  ; Doors
    LDA $7ED8BC : STA !PRESET_SLOTS+$7C,X  ; Doors
    LDA $7ED8BE : STA !PRESET_SLOTS+$7E,X  ; Doors
    LDA $7ED8C0 : STA !PRESET_SLOTS+$80,X  ; Doors
    LDA $7ED8C2 : STA !PRESET_SLOTS+$82,X  ; Doors
    LDA $7ED8C4 : STA !PRESET_SLOTS+$84,X  ; Doors
    LDA $7ED908 : STA !PRESET_SLOTS+$86,X  ; Map Stations
    LDA $7ED90A : STA !PRESET_SLOTS+$88,X  ; Map Stations
    LDA $7ED90C : STA !PRESET_SLOTS+$8A,X  ; Map Stations
    ; next available byte is !PRESET_SLOTS+$BE

    ; save scrolls
    PHB
    TXA : CLC
    ADC #(!PRESET_SLOTS+$8C) : TAY   ; Y = Destination
    LDX #$CD20 : LDA #$0031          ; X = Source, A = Size
    MVN $7E70                        ; srcBank, destBank
    PLB
    RTL
}

custom_preset_load:
{
    LDA !sram_custom_preset_slot
    %presetslotsize() ; multiply by 100h (slot offset)
    ; skip past "5AFE" word
    ; skip past size for now
    LDA !PRESET_SLOTS+$04,X : STA !DOOR_ID
    LDA !PRESET_SLOTS+$06,X : STA !ROOM_ID
    LDA !PRESET_SLOTS+$08,X : STA !MUSIC_DATA
    LDA !PRESET_SLOTS+$0A,X : STA !MUSIC_TRACK
    LDA !PRESET_SLOTS+$0C,X : STA !LAYER1_SUB_X
    LDA !PRESET_SLOTS+$0E,X : STA !LAYER1_X
    LDA !PRESET_SLOTS+$10,X : STA !LAYER1_SUB_Y
    LDA !PRESET_SLOTS+$12,X : STA !LAYER1_Y
    LDA !PRESET_SLOTS+$14,X : STA !LAYER2_X
    LDA !PRESET_SLOTS+$16,X : STA !LAYER2_Y
    LDA !PRESET_SLOTS+$18,X : STA !BG2_X_OFFSET
    LDA !PRESET_SLOTS+$1A,X : STA !BG2_Y_OFFSET
    LDA !PRESET_SLOTS+$1C,X : STA !CERES_STATUS
    LDA !PRESET_SLOTS+$1E,X : STA !SAMUS_ITEMS_EQUIPPED
    LDA !PRESET_SLOTS+$20,X : STA !SAMUS_ITEMS_COLLECTED
    LDA !PRESET_SLOTS+$22,X : STA !SAMUS_BEAMS_EQUIPPED
    LDA !PRESET_SLOTS+$24,X : STA !SAMUS_BEAMS_COLLECTED
    LDA !PRESET_SLOTS+$26,X : STA !SAMUS_RESERVE_MODE
    LDA !PRESET_SLOTS+$28,X : STA !SAMUS_HP
    LDA !PRESET_SLOTS+$2A,X : STA !SAMUS_HP_MAX
    LDA !PRESET_SLOTS+$2C,X : STA !SAMUS_MISSILES
    LDA !PRESET_SLOTS+$2E,X : STA !SAMUS_MISSILES_MAX
    LDA !PRESET_SLOTS+$30,X : STA !SAMUS_SUPERS
    LDA !PRESET_SLOTS+$32,X : STA !SAMUS_SUPERS_MAX
    LDA !PRESET_SLOTS+$34,X : STA !SAMUS_PBS
    LDA !PRESET_SLOTS+$36,X : STA !SAMUS_PBS_MAX
    LDA !PRESET_SLOTS+$38,X : STA !SAMUS_ITEM_SELECTED
    LDA !PRESET_SLOTS+$3A,X : STA !SAMUS_RESERVE_MAX
    LDA !PRESET_SLOTS+$3C,X : STA !SAMUS_RESERVE_ENERGY
    LDA !PRESET_SLOTS+$3E,X : STA !SAMUS_POSE
    LDA !PRESET_SLOTS+$40,X : STA !SAMUS_POSE_DIRECTION
    LDA !PRESET_SLOTS+$42,X : STA !SAMUS_SHINE_TIMER ; Flash suit
    LDA !PRESET_SLOTS+$44,X : STA !SAMUS_HYPER_BEAM
    LDA !PRESET_SLOTS+$46,X : STA !SAMUS_X
    LDA !PRESET_SLOTS+$48,X : STA !SAMUS_X_SUBPX
    LDA !PRESET_SLOTS+$4A,X : STA !SAMUS_Y
    LDA !PRESET_SLOTS+$4C,X : STA !SAMUS_Y_SUBPX
    LDA !PRESET_SLOTS+$4E,X : STA !SAMUS_DASH_COUNTER ; Blue suit
    LDA !PRESET_SLOTS+$50,X : STA $7ED820 ; Events
    LDA !PRESET_SLOTS+$52,X : STA $7ED822 ; Events
    LDA !PRESET_SLOTS+$54,X : STA $7ED828 ; Bosses
    LDA !PRESET_SLOTS+$56,X : STA $7ED82A ; Bosses
    LDA !PRESET_SLOTS+$58,X : STA $7ED82C ; Bosses
    LDA !PRESET_SLOTS+$5A,X : STA $7ED82E ; Bosses
    LDA !PRESET_SLOTS+$5C,X : STA $7ED870 ; Items
    LDA !PRESET_SLOTS+$5E,X : STA $7ED872 ; Items
    LDA !PRESET_SLOTS+$60,X : STA $7ED874 ; Items
    LDA !PRESET_SLOTS+$62,X : STA $7ED876 ; Items
    LDA !PRESET_SLOTS+$64,X : STA $7ED878 ; Items
    LDA !PRESET_SLOTS+$66,X : STA $7ED87A ; Items
    LDA !PRESET_SLOTS+$68,X : STA $7ED87C ; Items
    LDA !PRESET_SLOTS+$6A,X : STA $7ED87E ; Items
    LDA !PRESET_SLOTS+$6C,X : STA $7ED880 ; Items
    LDA !PRESET_SLOTS+$6E,X : STA $7ED882 ; Items
    LDA !PRESET_SLOTS+$70,X : STA $7ED8B0 ; Doors
    LDA !PRESET_SLOTS+$72,X : STA $7ED8B2 ; Doors
    LDA !PRESET_SLOTS+$74,X : STA $7ED8B4 ; Doors
    LDA !PRESET_SLOTS+$76,X : STA $7ED8B6 ; Doors
    LDA !PRESET_SLOTS+$78,X : STA $7ED8B8 ; Doors
    LDA !PRESET_SLOTS+$7A,X : STA $7ED8BA ; Doors
    LDA !PRESET_SLOTS+$7C,X : STA $7ED8BC ; Doors
    LDA !PRESET_SLOTS+$7E,X : STA $7ED8BE ; Doors
    LDA !PRESET_SLOTS+$80,X : STA $7ED8C0 ; Doors
    LDA !PRESET_SLOTS+$82,X : STA $7ED8C2 ; Doors
    LDA !PRESET_SLOTS+$84,X : STA $7ED8C4 ; Doors
    LDA !PRESET_SLOTS+$86,X : STA $7ED908 ; Map Stations
    LDA !PRESET_SLOTS+$88,X : STA $7ED90A ; Map Stations
    LDA !PRESET_SLOTS+$8A,X : STA $7ED90C ; Map Stations
    ; set flag to load scrolls later
    LDA !SAFEWORD : STA !ram_load_preset_low_word
    ; next available byte is !PRESET_SLOTS+$BE
    RTL
}
else
custom_preset_save:
{
    LDA !sram_custom_preset_slot
    %presetslotsize() ; multiply by 200h (slot offset)
    LDA !SAFEWORD : STA !PRESET_SLOTS+$00,X ; mark this slot as "SAFE" to load
    LDA #$01EE : STA !PRESET_SLOTS+$02,X ; record slot size for future compatibility
    LDA !LOAD_STATION_INDEX : STA !PRESET_SLOTS+$04,X
    LDA !DOOR_ID : STA !PRESET_SLOTS+$06,X
    LDA !DOOR_BTS : STA !PRESET_SLOTS+$08,X
    LDA !ROOM_ID : STA !PRESET_SLOTS+$0A,X
    LDA !AREA_ID : STA !PRESET_SLOTS+$0C,X
    LDA $07C3 : STA !PRESET_SLOTS+$0E,X ; GFX Pointers
    LDA $07C5 : STA !PRESET_SLOTS+$10,X ; GFX Pointers
    LDA $07C7 : STA !PRESET_SLOTS+$12,X ; GFX Pointers
    LDA !MUSIC_DATA : STA !PRESET_SLOTS+$14,X
    LDA !MUSIC_TRACK : STA !PRESET_SLOTS+$16,X
    LDA !LAYER1_SUB_X : STA !PRESET_SLOTS+$18,X
    LDA !LAYER1_X : STA !PRESET_SLOTS+$1A,X
    LDA !LAYER1_SUB_Y : STA !PRESET_SLOTS+$1C,X
    LDA !LAYER1_Y : STA !PRESET_SLOTS+$1E,X
    LDA !CERES_STATUS : STA !PRESET_SLOTS+$20,X
    LDA !SAMUS_ITEMS_EQUIPPED : STA !PRESET_SLOTS+$22,X
    LDA !SAMUS_ITEMS_COLLECTED : STA !PRESET_SLOTS+$24,X
    LDA !SAMUS_BEAMS_EQUIPPED : STA !PRESET_SLOTS+$26,X
    LDA !SAMUS_BEAMS_COLLECTED : STA !PRESET_SLOTS+$28,X
    LDA !SAMUS_RESERVE_MODE : STA !PRESET_SLOTS+$2A,X
    LDA !SAMUS_HP : STA !PRESET_SLOTS+$2C,X
    LDA !SAMUS_HP_MAX : STA !PRESET_SLOTS+$2E,X
    LDA !SAMUS_MISSILES : STA !PRESET_SLOTS+$30,X
    LDA !SAMUS_MISSILES_MAX : STA !PRESET_SLOTS+$32,X
    LDA !SAMUS_SUPERS : STA !PRESET_SLOTS+$34,X
    LDA !SAMUS_SUPERS_MAX : STA !PRESET_SLOTS+$36,X
    LDA !SAMUS_PBS : STA !PRESET_SLOTS+$38,X
    LDA !SAMUS_PBS_MAX : STA !PRESET_SLOTS+$3A,X
    LDA !SAMUS_ITEM_SELECTED : STA !PRESET_SLOTS+$3C,X
    LDA !SAMUS_RESERVE_MAX : STA !PRESET_SLOTS+$3E,X
    LDA !SAMUS_RESERVE_ENERGY : STA !PRESET_SLOTS+$40,X
    LDA !SAMUS_POSE : STA !PRESET_SLOTS+$42,X
    LDA !SAMUS_POSE_DIRECTION : STA !PRESET_SLOTS+$44,X
    LDA !SAMUS_SHINE_TIMER : STA !PRESET_SLOTS+$46,X ; Flash suit
    LDA !SAMUS_HYPER_BEAM : STA !PRESET_SLOTS+$48,X
    LDA !SAMUS_X : STA !PRESET_SLOTS+$4A,X
    LDA !SAMUS_Y : STA !PRESET_SLOTS+$4C,X
    LDA !SAMUS_DASH_COUNTER : STA !PRESET_SLOTS+$4E,X ; Blue suit

    ; Copy SRAM
    TXA : CLC : ADC #$005F : TAX
  .save_sram_loop
    DEX : PHX : TXA : AND #$01FF : TAX
    LDA $7ED7C0,X : PLX : STA !PRESET_SLOTS+$50,X
    DEX : TXA : BIT #$0100 : BEQ .save_sram_loop

    ; Copy Events, Items, Doors
    CLC : ADC #$0100 : TAX
  .save_events_items_doors_loop
    DEX : PHX : TXA : AND #$01FF : TAX
    LDA $7ED820,X : PLX : STA !PRESET_SLOTS+$B0,X
    DEX : TXA : BIT #$0100 : BEQ .save_events_items_doors_loop

    INX ; Restore X for sanity
    LDA !LAYER2_X : STA !PRESET_SLOTS+$1B0,X
    LDA !LAYER2_Y : STA !PRESET_SLOTS+$1B2,X
    LDA !BG2_X_OFFSET : STA !PRESET_SLOTS+$1B4,X
    LDA !BG2_Y_OFFSET : STA !PRESET_SLOTS+$1B6,X
    LDA !SAMUS_X_SUBPX : STA !PRESET_SLOTS+$1EA,X
    LDA !SAMUS_Y_SUBPX : STA !PRESET_SLOTS+$1EC,X
    ; next available byte is !PRESET_SLOTS+$1EE

    ; save scrolls
    PHB
    TXA : CLC
    ADC #(!PRESET_SLOTS+$1B8) : TAY  ; Y = Destination
    LDX #$CD20 : LDA #$0031          ; X = Source, A = Size
    MVN $7E70                        ; srcBank, destBank
    PLB
    RTL
}

custom_preset_load:
{
    LDA !sram_custom_preset_slot
    %presetslotsize() ; multiply by 200h
    ; skip past "5AFE" word
    ; skip past size for now
    LDA !PRESET_SLOTS+$04,X : STA !LOAD_STATION_INDEX
    LDA !PRESET_SLOTS+$06,X : STA !DOOR_ID
    LDA !PRESET_SLOTS+$08,X : STA !DOOR_BTS
    LDA !PRESET_SLOTS+$0A,X : STA !ROOM_ID
    LDA !PRESET_SLOTS+$0C,X : STA !AREA_ID
    LDA !PRESET_SLOTS+$0E,X : STA $07C3 ; GFX Pointers
    LDA !PRESET_SLOTS+$10,X : STA $07C5 ; GFX Pointers
    LDA !PRESET_SLOTS+$12,X : STA $07C7 ; GFX Pointers
    LDA !PRESET_SLOTS+$14,X : STA !MUSIC_DATA
    LDA !PRESET_SLOTS+$16,X : STA !MUSIC_TRACK
    LDA !PRESET_SLOTS+$18,X : STA !LAYER1_SUB_X
    LDA !PRESET_SLOTS+$1A,X : STA !LAYER1_X
    LDA !PRESET_SLOTS+$1C,X : STA !LAYER1_SUB_Y
    LDA !PRESET_SLOTS+$1E,X : STA !LAYER1_Y
    LDA !PRESET_SLOTS+$20,X : STA !CERES_STATUS
    LDA !PRESET_SLOTS+$22,X : STA !SAMUS_ITEMS_EQUIPPED
    LDA !PRESET_SLOTS+$24,X : STA !SAMUS_ITEMS_COLLECTED
    LDA !PRESET_SLOTS+$26,X : STA !SAMUS_BEAMS_EQUIPPED
    LDA !PRESET_SLOTS+$28,X : STA !SAMUS_BEAMS_COLLECTED
    LDA !PRESET_SLOTS+$2A,X : STA !SAMUS_RESERVE_MODE
    LDA !PRESET_SLOTS+$2C,X : STA !SAMUS_HP
    LDA !PRESET_SLOTS+$2E,X : STA !SAMUS_HP_MAX
    LDA !PRESET_SLOTS+$30,X : STA !SAMUS_MISSILES
    LDA !PRESET_SLOTS+$32,X : STA !SAMUS_MISSILES_MAX
    LDA !PRESET_SLOTS+$34,X : STA !SAMUS_SUPERS
    LDA !PRESET_SLOTS+$36,X : STA !SAMUS_SUPERS_MAX
    LDA !PRESET_SLOTS+$38,X : STA !SAMUS_PBS
    LDA !PRESET_SLOTS+$3A,X : STA !SAMUS_PBS_MAX
    LDA !PRESET_SLOTS+$3C,X : STA !SAMUS_ITEM_SELECTED
    LDA !PRESET_SLOTS+$3E,X : STA !SAMUS_RESERVE_MAX
    LDA !PRESET_SLOTS+$40,X : STA !SAMUS_RESERVE_ENERGY
    LDA !PRESET_SLOTS+$42,X : STA !SAMUS_POSE
    LDA !PRESET_SLOTS+$44,X : STA !SAMUS_POSE_DIRECTION
    LDA !PRESET_SLOTS+$46,X : STA !SAMUS_SHINE_TIMER ; Flash suit
    LDA !PRESET_SLOTS+$48,X : STA !SAMUS_HYPER_BEAM
    LDA !PRESET_SLOTS+$4A,X : STA !SAMUS_X
    LDA !PRESET_SLOTS+$4C,X : STA !SAMUS_Y
    LDA !PRESET_SLOTS+$4E,X : STA !SAMUS_DASH_COUNTER ; Blue suit

    ; Copy SRAM
    TXA : CLC : ADC #$005F : TAX
  .load_sram_loop
    DEX : LDA !PRESET_SLOTS+$50,X : PHX : PHA
    TXA : AND #$01FF : TAX : PLA
    STA $7ED7C0,X : PLX
    DEX : TXA : BIT #$0100 : BEQ .load_sram_loop

    ; Copy Events, Items, Doors
    CLC : ADC #$0100 : TAX
  .load_events_items_doors_loop
    DEX : LDA !PRESET_SLOTS+$B0,X : PHX : PHA
    TXA : AND #$01FF : TAX : PLA
    STA $7ED820,X : PLX
    DEX : TXA : BIT #$0100 : BEQ .load_events_items_doors_loop

    ; Restore X for sanity, then check if we have layer 2 values
    INX : LDA !PRESET_SLOTS+$02,X : CMP #$01B0 : BEQ .done_no_scrolls

    LDA !PRESET_SLOTS+$1B0,X : STA !LAYER2_X
    LDA !PRESET_SLOTS+$1B2,X : STA !LAYER2_Y
    LDA !PRESET_SLOTS+$1B4,X : STA !BG2_X_OFFSET
    LDA !PRESET_SLOTS+$1B6,X : STA !BG2_Y_OFFSET

    LDA !PRESET_SLOTS+$02,X : CMP #$01BA : BMI .done_no_scrolls
    LDA !SAFEWORD : STA !ram_load_preset_low_word

    LDA !PRESET_SLOTS+$02,X : CMP #$01EC : BMI .done_with_scrolls
    LDA !PRESET_SLOTS+$1EA,X : STA !SAMUS_X_SUBPX
    LDA !PRESET_SLOTS+$1EC,X : STA !SAMUS_Y_SUBPX

  .done_with_scrolls
    RTL

    ; next available byte is !PRESET_SLOTS+$1EE

  .done_no_scrolls
    TDC : STA !ram_load_preset_low_word
    RTL
}
endif
endif

preset_scroll_fixes:
{
    ; Fixes bad scrolling caused by loading into a position that
    ; is normally hidden until passing over a red scroll block.
    ; These fixes can often be found in nearby door asm.
    PHP
    PHB
    %ai16()
    STZ !BG2_X_OFFSET : STZ !BG2_Y_OFFSET
    LDA !ram_load_preset_low_word : CMP !SAFEWORD : BNE .category_presets
    JMP .custom_presets

  .category_presets
    ; organized by room ID for efficiency
    PEA $7E7E : PLB : PLB
    %a8()
    LDA #$01 : LDX !ROOM_ID      ; X = room ID
    CPX.w #ROOM_BowlingAlley : BMI .tophalf
    JMP .halfway

    ; -------------------------------------------------
    ; Crateria/Brinstar Scroll Fixes (Category Presets)
    ; -------------------------------------------------
  .parlor
    LDY !SAMUS_Y : CPY #$00D0    ; fix varies depending on Y position
    BPL .parlor_lower
    STA $CD24
    JMP .specialized_parlor
  .parlor_lower
    INC : STA $CD26 : STA $CD28
    JMP .specialized_parlor

  .crateria_kihunters
    LDY !SAMUS_Y : CPY #$00D0    ; no fix if Ypos >= 208
    BPL .topdone
    STA $CD21 : DEC : STA $CD24
    BRA .topdone

  .big_pink
    LDY !SAMUS_X : CPY #$0400    ; fix varies depending on X position
    BPL .big_pink_spospo
    INC : STA $CD3C : TDC : STA $CD3D
    LDY !SAMUS_X : CPY #$0200
    BMI .big_pink_left
    LDY !SAMUS_Y : CPY #$068B    ; specific fix for Ypos = 1675
    BNE .big_pink_done
    INC : INC : STA $CD45 : STA $CD46
    BRA .big_pink_done
  .big_pink_spospo
    STA $CD3D : TDC : STA $CD3C
    BRA .big_pink_done
  .big_pink_left
    INC : INC
    LDY !SAMUS_Y : CPY #$0100    ; fix varies depending on Y position
    BMI .big_pink_top_left
    STA $CD44 : STA $CD45
    BRA .big_pink_done
  .big_pink_top_left
    STA $CD21
  .big_pink_done
    JMP .specialized_big_pink

  .tophalf
    CPX #ROOM_ParlorAndAlcatraz : BEQ .parlor
    CPX #ROOM_IceBeamAcidRoom : BMI .topquarter
    JMP .norfair

  .climb
    STA $CD39
    JMP .specialized_climb

  .topdone
    PLB
    PLP
    RTL

  .topquarter
    CPX.w #ROOM_CrateriaKihunterRoom : BEQ .crateria_kihunters
    CPX.w #ROOM_GauntletETankRoom : BEQ .gauntlet_etank
    CPX.w #ROOM_Climb : BEQ .climb
    CPX.w #ROOM_GreenBrinMainShaft : BEQ .green_brin_main_shaft
    CPX.w #ROOM_DachoraRoom : BEQ .dachora
    CPX.w #ROOM_BigPink : BEQ .big_pink
    CPX.w #ROOM_PinkBrinPowerBombs : BEQ .big_pink_pbs
    CPX.w #ROOM_BlueBrinstarETank : BEQ .taco_tank_room
    CPX.w #ROOM_EtecoonETankRoom : BEQ .etecoons_etank
    CPX.w #ROOM_RedTower : BEQ .red_tower
    CPX.w #ROOM_AlphaPowerBombRoom : BEQ .alpha_pbs
    CPX.w #ROOM_BelowSpazer : BEQ .below_spazer
    CPX.w #ROOM_WarehouseEntrance : BEQ .warehouse_entrance
    CPX.w #ROOM_CaterpillarRoom : BNE .topdone
    BRA .caterpillar

  .gauntlet_etank
    LDY !SAMUS_X : CPY #$0510    ; no fix if Xpos >= 1296
    BPL .topdone
    STA $CD24
    BRA .topdone

  .green_brin_main_shaft
    LDY !SAMUS_Y : CPY #$0700    ; no fix if Ypos < 1792
    BMI .topdone
    LDY !SAMUS_X : CPY #$0100    ; no fix if Xpos >= 256
    BPL .topdone
    INC : STA $CD3C
    BRA .topdone

  .dachora
    LDY !SAMUS_X : CPY #$0405    ; no fix if Xpos < 1029
    BMI .topdone
    STA $CD24
    BRA .topdone

  .big_pink_pbs
    LDY !SAMUS_Y : CPY #$0136    ; no fix if Ypos >= 310
    BMI .big_pink_pbs_done
    STZ $CD21
    STA $CD22 : STA $CD23
  .big_pink_pbs_done
    JMP .topdone

  .taco_tank_room
    JMP .specialized_taco_tank_room

  .etecoons_etank
    STA $CD25 : STA $CD26
    JMP .topdone

    ; --------------------------------------------------------
    ; Red Brinstar / Warehouse Scroll Fixes (Category Presets)
    ; --------------------------------------------------------
  .red_tower
    LDY !SAMUS_Y : CPY #$06A0    ; no fix if Ypos < 1696
    BMI .red_tower_done
    STA $CD27
  .red_tower_done
    JMP .topdone

  .alpha_pbs
    LDY !SAMUS_X : CPY #$0100    ; no fix if Xpos >= 256
    BPL .alpha_pbs_done
    STA $CD20
  .alpha_pbs_done
    JMP .topdone

  .below_spazer
    LDY !SAMUS_Y : CPY #$00B0    ; no fix if Ypos >= 176
    BPL .below_spazer_done
    INC
  .warehouse_entrance
    STA $CD20 : STA $CD21
  .below_spazer_done
    JMP .topdone

  .caterpillar
    LDY !SAMUS_Y : CPY #$05DC    ; no fix if Ypos < 1500
    BMI .caterpillar_done
    INC : STA $CD2F : STA $CD32
  .caterpillar_done
    JMP .topdone

    ; --------------------------------------------------
    ; West Upper Norfair Scroll Fixes (Category Presets)
    ; --------------------------------------------------
  .ice_beam_gates
    ; skip if Ypos < 720
    LDY !SAMUS_Y : CPY #$02D0 : BMI .norfairdone
    STA $CD38
    BRA .norfairdone

  .ice_snake_room
    LDY !SAMUS_X : CPY #$0100    ; fix varies depending on X position
    BPL .ice_snake_room_hidden
    INC : STA $CD22 : STZ $CD23
    BRA .norfairdone
  .ice_snake_room_hidden
    INC : STA $CD23 : STZ $CD22
    BRA .norfairdone

  .hjb_room
    JMP .specialized_hjb_room

  .norfair
    CPX.w #ROOM_IceBeamGateRoom : BEQ .ice_beam_gates
    CPX.w #ROOM_IceBeamSnakeRoom : BEQ .ice_snake_room
    CPX.w #ROOM_HiJumpBootsRoom : BEQ .hjb_room
    CPX.w #ROOM_GreenBubblesMissiles : BEQ .green_bubble_missiles
    CPX.w #ROOM_VolcanoRoom : BEQ .volcano_room
    CPX.w #ROOM_KronicBoostRoom : BEQ .kronic_boost
    CPX.w #ROOM_PurpleShaft : BEQ .purple_shaft
    CPX.w #ROOM_BatCave : BEQ .bat_cave
    CPX.w #ROOM_AcidStatueRoom : BEQ .acid_chozo_room
    CPX.w #ROOM_GoldenTorizoRoom : BEQ .golden_torizo
    CPX.w #ROOM_FastPillarsSetupRoom : BEQ .fast_pillars_setup
    CPX.w #ROOM_WorstRoomInTheGame : BEQ .worst_room
    CPX.w #ROOM_RedKihunterShaft : BEQ .kihunter_stairs
    CPX.w #ROOM_Wasteland : BEQ .wasteland
    BRA .norfairdone

    ; --------------------------------------------------
    ; East Upper Norfair Scroll Fixes (Category Presets)
    ; --------------------------------------------------
  .green_bubble_missiles
    STA $CD20
  .norfairdone
    PLB
    PLP
    RTL

  .volcano_room
    STA $CD26 : STA $CD27
    BRA .norfairdone

  .kronic_boost
    BRA .kronic_boost_check

  .purple_shaft
    INC : STA $CD20 : STA $CD21
    BRA .norfairdone

  .bat_cave
    INC : STA $CD20
    BRA .norfairdone

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
    INC : STA $CD20
    LDY !SAMUS_Y : CPY #$008C    ; fix varies depending on Y position
    BPL .kihunter_stairs_done
    TDC
  .kihunter_stairs_done
    STA $CD23
    JMP .specialized_kihunter_stairs

  .wasteland
    LDY !SAMUS_Y : CPY #$00D0    ; no fix if Ypos < 208
    BMI .norfairdone
    INC : STA $CD21 : STA $CD27
    JMP .norfairdone

  .kronic_boost_check
    LDY !SAMUS_X : CPY #$0100    ; fix varies depending on X position
    BMI .hidden_kronic_boost
    INC : STA $CD23
    TDC : STA $CD22
    JMP .norfairdone
  .hidden_kronic_boost
    STA $CD22
    TDC : STA $CD23
    JMP .norfairdone

    ; --------------------------------------------
    ; Wrecked Ship Scroll Fixes (Category Presets)
    ; --------------------------------------------
  .bowling
    STA $CD2D : STA $CD2E : STA $CD2F
    %a16()
    STZ $CD26 : STZ $CD28 : STZ $CD2A
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
    STA $CD23 : STA $CD24
    BRA .halfwaydone

  .halfway
    CPX.w #ROOM_CeresElevatorRoom : BPL .ceres
    CPX.w #ROOM_BowlingAlley : BEQ .bowling
    CPX.w #ROOM_WreckedShipMainShaft : BEQ .wrecked_ship_shaft
    CPX.w #ROOM_ElectricDeathRoom : BEQ .electric_death
    CPX.w #ROOM_Basement : BEQ .basement
    CPX.w #ROOM_GlassTunnel : BEQ .main_street
    CPX.w #ROOM_RedFishRoom : BEQ .red_fish
    CPX.w #ROOM_CrabShaft : BEQ .crab_shaft
    CPX.w #ROOM_CrabHole : BEQ .crab_hole
    CPX.w #ROOM_Oasis : BEQ .oasis
    CPX.w #ROOM_EastPantsRoom : BEQ .pants_room
    CPX.w #ROOM_ThePreciousRoom : BEQ .precious
  .halfwaydone
    PLB
    PLP
    RTL

  .ceres
    BRA .ceresbegin

    ; -----------------------------------------------
    ; Maridia/Tourian Scroll Fixes (Category Presets)
    ; -----------------------------------------------
  .main_street
    INC : STA $CD20
    BRA .halfwaydone

  .red_fish
    LDY !SAMUS_Y : CPY #$0208    ; no fix if Ypos >= 520
    BPL .halfwaydone
    STA $CD21
    BRA .halfwaydone

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

  .precious
    LDY !SAMUS_Y : CPY #$00D0    ; no fix if Ypos < 208
    BMI .halfwaydone
    INC : STA $CD20 : STA $CD22
    BRA .halfwaydone

    ; -----------------------------------------
    ; Ceres Fixes (Category and Custom Presets)
    ; -----------------------------------------
  .ceres_elevator
    STZ !BG1_X_OFFSET+1 : STZ !BG1_Y_OFFSET+1
    BRA .ceresdone

  .ceresbegin
    STZ $5F ; Initialize mode 7
    CPX.w #ROOM_CeresElevatorRoom : BEQ .ceres_elevator
    %a16() : STZ $78 ; Ceres Elevator room already does this
    STZ $7A : STZ $7C ; Other Ceres rooms should zero out the values
    STZ $7E : STZ $80 : STZ $82
    LDA #$0009 : STA $07EB : %a8()
    LDA #$09 : STA $56
    CPX.w #ROOM_FallingTileRoom : BEQ .ceres_falling_tiles
    CPX.w #ROOM_MagnetStairsRoom : BEQ .ceres_magnet_stairs
    CPX.w #ROOM_DeadScientistRoom : BEQ .ceres_dead_scientists
    CPX.w #ROOM_58Escape : BEQ .ceres_58_escape
    CPX.w #ROOM_CeresRidleyRoom : BEQ .ceres_ridley
  .ceresdone
    PLB
    PLP
    RTL

  .ceres_falling_tiles
    LDA #$01 : STA !BG1_X_OFFSET+1
    LDA #$02 : STA !BG1_Y_OFFSET+1
    BRA .ceresdone

  .ceres_magnet_stairs
    LDA #$03 : STA !BG1_X_OFFSET+1
    LDA #$02 : STA !BG1_Y_OFFSET+1
    BRA .ceresdone

  .ceres_dead_scientists
    LDA #$04 : STA !BG1_X_OFFSET+1
    LDA #$03 : STA !BG1_Y_OFFSET+1
    BRA .ceresdone

  .ceres_58_escape
    LDA #$06 : STA !BG1_X_OFFSET+1
    LDA #$03 : STA !BG1_Y_OFFSET+1
    BRA .ceresdone

  .ceres_ridley
    LDA #$08 : STA !BG1_X_OFFSET+1
    LDA #$03 : STA !BG1_Y_OFFSET+1
    BRA .ceresdone

  .custom_presets
    LDA !sram_custom_preset_slot
if !FEATURE_MAPSTATES
    ASL : ASL : ASL : XBA : CLC      ; multiply by 800h (slot offset)
    ADC #(!PRESET_SLOTS+$BD) : TAX   ; X = Source
else
if !FEATURE_TINYSTATES
    XBA : CLC                        ; multiply by 100h (slot offset)
    ADC #(!PRESET_SLOTS+$BD) : TAX   ; X = Source
else
    ASL : XBA : CLC                  ; multiply by 200h (slot offset)
    ADC #(!PRESET_SLOTS+$1E9) : TAX  ; X = Source
endif
endif
    LDY #$CD51 : LDA #$0031      ; Y = Destination, A = Size-1
    MVP $707E                    ; srcBank, destBank
    TDC : STA !ram_load_preset_low_word

    %a8()
    ; X = room ID
    LDX !ROOM_ID : CPX.w #ROOM_CeresElevatorRoom : BMI .specialized_fixes
    JMP .ceres ; For ceres, use same fixes as category presets

    ; -----------------------------------------------
    ; Specialized Fixes (Category and Custom Presets)
    ; -----------------------------------------------
  .specialized_parlor
    LDY !SAMUS_Y : CPY #$00D0    ; no fix if Ypos >= 208
    BPL .specialized_parlor_done
    LDY !SAMUS_X : CPY #$0175    ; no fix if Xpos >= 373
    BPL .specialized_parlor_done
    %a16() : LDA #$00FF
    STA $7F05C0 : STA $7F05C2
    LDY !SAMUS_PBS_MAX           ; only clear bottom row if no power bombs
    BEQ .specialized_parlor_done
    STA $7F0520 : STA $7F0522
    STA $7F0480 : STA $7F0482
  .specialized_parlor_done
    BRA .specialdone

  .specialized_climb
    LDY !SAMUS_X : CPY #$0125    ; no fix if Xpos >= 285
    BPL .specialdone
    LDA #$01 : STA $CD38
    CPY #$0095                   ; only clear wall if Xpos >= 149
    BPL .specialized_climb_wall
    TDC : STA $CD39
  .specialized_climb_wall
    %a16() : LDA #$00FF : STA $7F3262 : STA $7F3264
    STA $7F32C2 : STA $7F32C4 : STA $7F3322
    STA $7F3324 : STA $7F3382 : STA $7F3384
    BRA .specialdone

  .specialized_fixes
    CPX.w #ROOM_ParlorAndAlcatraz : BEQ .specialized_parlor
    CPX.w #ROOM_Climb : BEQ .specialized_climb
    CPX.w #ROOM_BigPink : BEQ .specialized_big_pink
    CPX.w #ROOM_BlueBrinstarETank : BEQ .specialized_taco_tank_room
    CPX.w #ROOM_HiJumpBootsRoom : BEQ .specialized_hjb_room
    CPX.w #ROOM_RedKihunterShaft : BEQ .specialized_kihunter_stairs
  .specialdone
    PLB
    PLP
    RTL

  .specialized_big_pink
    LDY !SAMUS_Y : CPY #$02C0    ; no fix if Ypos < 704
    BMI .specialdone
    CPY #$03C9                   ; no fix if Ypos >= 969
    BPL .specialdone
    %a16() : LDA #$00FF
    STA $7F2208 : STA $7F220A : STA $7F22A8 : STA $7F22AA
    STA $7F2348 : STA $7F234A : STA $7F23E8 : STA $7F23EA
    BRA .specialdone

  .specialized_taco_tank_room
    LDY !SAMUS_X : CPY #$022B    ; no fix if Xpos < 555
    BMI .specialdone
    LDY !SAMUS_PBS_MAX           ; no fix if no power bombs
    BEQ .specialdone
    %a16() : LDA #$00FF
    LDX #$0000
  .specialized_taco_tank_loop
    STA $7F1008,X : STA $7F1068,X : INX #2
    CPX #$0011 : BMI .specialized_taco_tank_loop
    BRA .specialdone

  .specialized_hjb_room
    LDY !SAMUS_X : CPY #$0095    ; no fix if Xpos >= 149
    BPL .specialdone
    %a16() : LDA #$00FF
    STA $7F0052 : STA $7F0072 : STA $7F0092
    BRA .specialdone

  .specialized_kihunter_stairs
    LDY !SAMUS_Y : CPY #$00F0    ; no fix if Ypos >= 240
    BPL .specialdone
    %a16() : LDA #$00FF
    STA $7F036E : STA $7F0370 : STA $7F0374 : STA $7F0376
    STA $7F03D4 : STA $7F0610 : STA $7F0612
    JMP .specialdone
}

LoadRandomPreset:
{
    PHY : PHX : PHB
    PHK : PLB
    LDA !ram_random_preset_rng : BEQ .seedrandom
    LDA !ram_random_preset_value : STA $12
    BRA .seedpicked

  .seedrandom
    JSL MenuRNG : STA $12                      ; random number

  .seedpicked
    LDA.w #preset_category_banks>>16 : STA $18 ; bank of category list in $18
    LDA !sram_preset_category : ASL : TAY      ; selected category index in Y
    LDA.w #preset_category_submenus : STA $16  ; pointer to category list in $16
    LDA [$16],Y : TAX                          ; pointer to submenu table in X
    LDA.w #preset_category_banks : STA $16     ; bank of submenu table in $16
    LDA [$16],Y : STA $18                      ; pointer to category grouping table in $18

    STX $16 : LDY #$0000                       ; pointer to submenu table in $16, reset Y
  .toploop                                     ; count number of preset groups in Y
    INY #2
    LDA [$16],Y : BNE .toploop
    TYA : LSR : TAY                            ; Y = size of preset category submenu table

    LDA $12 : XBA : AND #$00FF : STA $4204
    %i8()
    STY $4206                                  ; divide top half of random number by Y
    %i16()
    PEA $0000 : PLA : PEA $0000 : PLA
    LDA $4216 : ASL : TAY                      ; randomly selected subcategory in Y
    LDA [$16],Y : STA $16                      ; subcategory pointer in $16
    LDY #$0004 : LDA [$16],Y : STA $16         ; increment four bytes to get the subcategory table

    LDY #$0000
  .subloop                                     ; count number of presets in the subcategory in Y
    INY #2
    LDA [$16],Y : BNE .subloop
    TYA : LSR : TAY                            ; Y = size of subcategory table

    LDA $12 : AND #$00FF : STA $4204
    %i8()
    STY $14 : STY $4206                        ; divide bottom half of random number by Y
    %i16()
    PEA $0000 : PLA : PEA $0000 : PLA
    LDA $4216 : STA $12                        ; randomly selected preset

    ASL : TAY
    LDA [$16],Y : STA $16                      ; random preset macro pointer in $16
    LDY #$0002 : LDA [$16],Y                   ; finally reached the pointer to the preset
    STA !ram_load_preset_low_word
    INY : LDA [$16],Y
    STA !ram_load_preset_high_word

    ; !FEATURE_DEV for crawling through preset categories in order
    LDA !ram_random_preset_rng : BEQ .done
    LDA !ram_random_preset_value : INC : STA !ram_random_preset_value
    LDA $12 : INC : CMP $14 : BMI .done
    LDA !ram_random_preset_value : XBA : INC : XBA
    AND #$FF00 : STA !ram_random_preset_value

  .done
    PLB : PLX : PLY
    RTL
}

Randomize_Preset_Equipment:
{
    LDA !sram_presetequiprando : BIT !PRESET_EQUIP_RANDO_ENABLE : BNE .randomize
    RTL

  .randomize
    PHX
    ; equipment
    LDA !ram_seed_Y : AND #$F32F
    STA !SAMUS_ITEMS_EQUIPPED : STA !SAMUS_ITEMS_COLLECTED

    ; check if morph forced
    LDA !sram_presetequiprando : BIT !PRESET_EQUIP_RANDO_FORCE_MORPH : BEQ .doneMorph
    ; turn on morph
    LDA !SAMUS_ITEMS_EQUIPPED : ORA #$0004 : STA !SAMUS_ITEMS_EQUIPPED : STA !SAMUS_ITEMS_COLLECTED

  .doneMorph
    ; beams
    JSL MenuRNG
    AND #$100F : STA !SAMUS_BEAMS_COLLECTED
    ; check for Spazer+Plasma
    AND #$000C : CMP #$000C : BNE .setBeams
    ; check beam preference, 0 = random
    LDA !sram_presetequiprando_beampref : BEQ .randomPref
    ; after decrement, 0 = spazer, 1 = plasma
    DEC : BEQ .spazer

  .plasma
    LDA !SAMUS_BEAMS_COLLECTED : AND #$100B : STA !SAMUS_BEAMS_EQUIPPED
    BRA .doneBeams
  .spazer
    LDA !SAMUS_BEAMS_COLLECTED : AND #$1007 : STA !SAMUS_BEAMS_EQUIPPED
    BRA .doneBeams
  .randomPref
    LDA !ram_seed_X : AND #$0001 : BEQ .spazer
    BRA .plasma
  .setBeams
    LDA !SAMUS_BEAMS_COLLECTED : STA !SAMUS_BEAMS_EQUIPPED

  .doneBeams
    ; check if charge forced
    LDA !sram_presetequiprando : BIT !PRESET_EQUIP_RANDO_FORCE_CHARGE : BEQ .doneCharge
    ; equip charge beam
    LDA !SAMUS_BEAMS_COLLECTED : ORA #$1000 : STA !SAMUS_BEAMS_COLLECTED
    LDA !SAMUS_BEAMS_EQUIPPED : ORA #$1000 : STA !SAMUS_BEAMS_EQUIPPED

  .doneCharge
    ; reserves
    LDA !sram_presetequiprando_max_reserves : BEQ .setReserves  ; check if max = 0
    LDA !ram_seed_Y : AND #$F000 : LSR #4 : XBA                 ; reuse random number
  .checkReservesCap
    CMP !sram_presetequiprando_max_reserves : BMI .setReserves  ; check if capped
    BEQ .setReserves                                            ; check for 0 condition (value is equal to max)
    SEC : SBC !sram_presetequiprando_max_reserves               ; subtract max from random number
    BRA .checkReservesCap                                       ; check if capped again (loop)

  .setReserves
    ASL : TAX : LDA.l PresetEquipRandoReserveTable,X            ; load value from table
    STA !SAMUS_RESERVE_MAX : STA !SAMUS_RESERVE_ENERGY          ; store random reserves
    CMP #$0000 : BEQ .setReserveMode
    LDA #$0001
  .setReserveMode
    STA !SAMUS_RESERVE_MODE

    ; missiles
    LDA !sram_presetequiprando_max_missiles : BEQ .setMissiles  ; check if max = 0
    LDA !ram_seed_X : AND #$0FF0 : LSR #4                       ; reuse random number
  .checkMissilesCap
    CMP !sram_presetequiprando_max_missiles : BMI .setMissiles  ; check if capped
    BEQ .setMissiles                                            ; check for 0 condition (value is equal to max)
    SEC : SBC !sram_presetequiprando_max_missiles               ; subtract max from random number
    BRA .checkMissilesCap                                       ; check if capped again (loop)

  .setMissiles
    ASL : TAX : LDA.l PresetEquipRandoAmmoTable,X               ; load value from table
    STA !SAMUS_MISSILES : STA !SAMUS_MISSILES_MAX               ; store random missiles

    ; supers
    LDA !sram_presetequiprando_max_supers : BEQ .setSupers      ; check if max = 0
    JSL MenuRNG : AND #$00FF                                    ; get new random number
  .checkSupersCap
    CMP !sram_presetequiprando_max_supers : BMI .setSupers      ; check if capped
    BEQ .setSupers                                              ; check for 0 condition (value is equal to max)
    SEC : SBC !sram_presetequiprando_max_supers                 ; subtract max from random number
    BRA .checkSupersCap                                         ; check if capped again (loop)

  .setSupers
    ASL : TAX : LDA.l PresetEquipRandoAmmoTable,X               ; load value from table
    STA !SAMUS_SUPERS : STA !SAMUS_SUPERS_MAX                   ; store random supers

    ; pbs
    LDA !sram_presetequiprando_max_pbs : BEQ .setPbs            ; check if max = 0
    LDA !ram_seed_Y : XBA : AND #$00FF                          ; get new random number
  .checkPbsCap
    CMP !sram_presetequiprando_max_pbs : BMI .setPbs            ; check if capped
    BEQ .setPbs                                                 ; check for 0 condition (value is equal to max)
    SEC : SBC !sram_presetequiprando_max_pbs                    ; subtract max from random number
    BRA .checkPbsCap                                            ; check if capped again (loop)

  .setPbs
    ASL : TAX : LDA.l PresetEquipRandoAmmoTable,X               ; load value from table
    STA !SAMUS_PBS : STA !SAMUS_PBS_MAX                         ; store random pbs

    ; etanks
    LDA !sram_presetequiprando_max_etanks : BEQ .setEtanks      ; check if max = 0
    JSL MenuRNG2 : AND #$000F                                   ; get new random number
  .checkEtanksCap
    CMP !sram_presetequiprando_max_etanks : BMI .setEtanks      ; check if capped
    BEQ .setEtanks                                              ; check for 0 condition (value is equal to max)
    SEC : SBC !sram_presetequiprando_max_etanks                 ; subtract max from random number
    BRA .checkEtanksCap                                         ; check if capped again (loop)

  .setEtanks
    ASL : TAX : LDA.l PresetEquipRandoETankTable,X              ; load value from table
    STA !SAMUS_HP : STA !SAMUS_HP_MAX                           ; store random energy

    PLX
    RTL
}

; Pickups range 0-46
PresetEquipRandoAmmoTable:
    dw #$0000, #$0005, #$000A, #$000F, #$0014, #$0019, #$001E, #$0023, #$0028, #$002D, #$0032, #$0037, #$003C, #$0041, #$0046, #$004B
    dw #$0050, #$0055, #$005A, #$005F, #$0064, #$0069, #$006E, #$0073, #$0078, #$007D, #$0082, #$0087, #$008C, #$0091, #$0096, #$009B
    dw #$00A0, #$00A5, #$00AA, #$00AF, #$00B4, #$00B9, #$00BE, #$00C3, #$00C8, #$00CD, #$00D2, #$00D7, #$00DC, #$00E1, #$00E6

; Reserve Tanks range 0-4
PresetEquipRandoReserveTable:
    dw #$0000, #$0064, #$00C8, #$012C, #$0190

; Energy Tanks range 0-14
PresetEquipRandoETankTable:
    dw #$0063, #$00C7, #$012B, #$018F, #$01F3, #$0257, #$02BB, #$031F, #$0383, #$03E7, #$044B, #$04AF, #$0513, #$0517, #$05DB

%endfree(83)

