
preset_gtmax_crateria_ship:
    dw #$0000
    dl $7E078B : db $02 : dw $0000 ; Elevator Index
    dl $7E078D : db $02 : dw $88FE ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $91F8 ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0006 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $03D0 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0200 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0200 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E093F : db $02 : dw $0000 ; Ceres escape flag
    dl $7E09A2 : db $02 : dw $0000 ; Equipped Items
    dl $7E09A4 : db $02 : dw $0000 ; Collected Items
    dl $7E09A6 : db $02 : dw $0000 ; Beams
    dl $7E09A8 : db $02 : dw $0000 ; Beams
    dl $7E09C0 : db $02 : dw $0000 ; Manual/Auto reserve tank
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E09C4 : db $02 : dw $0063 ; Max health
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09C8 : db $02 : dw $0000 ; Max missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CC : db $02 : dw $0000 ; Max supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E09D0 : db $02 : dw $0000 ; Max pbs
    dl $7E09D4 : db $02 : dw $0000 ; Max reserves
    dl $7E09D6 : db $02 : dw $0000 ; Reserves
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0A76 : db $02 : dw $0000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $0481 ; Samus X
    dl $7E0AFA : db $02 : dw $0440 ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED7C0 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7C2 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7C4 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7C6 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7C8 : db $02 : dw $0800 ; SRAM copy
    dl $7ED7CA : db $02 : dw $0400 ; SRAM copy
    dl $7ED7CC : db $02 : dw $0200 ; SRAM copy
    dl $7ED7CE : db $02 : dw $0100 ; SRAM copy
    dl $7ED7D0 : db $02 : dw $4000 ; SRAM copy
    dl $7ED7D2 : db $02 : dw $0080 ; SRAM copy
    dl $7ED7D4 : db $02 : dw $8000 ; SRAM copy
    dl $7ED7D6 : db $02 : dw $0040 ; SRAM copy
    dl $7ED7D8 : db $02 : dw $2000 ; SRAM copy
    dl $7ED7DA : db $02 : dw $0020 ; SRAM copy
    dl $7ED7DC : db $02 : dw $0010 ; SRAM copy
    dl $7ED7DE : db $02 : dw $0000 ; SRAM copy
    dl $7ED7E0 : db $02 : dw $0063 ; SRAM copy
    dl $7ED7E2 : db $02 : dw $0063 ; SRAM copy
    dl $7ED7E4 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7E6 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7E8 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7EA : db $02 : dw $0000 ; SRAM copy
    dl $7ED7EC : db $02 : dw $0000 ; SRAM copy
    dl $7ED7EE : db $02 : dw $0000 ; SRAM copy
    dl $7ED7F0 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7F2 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7F4 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7F6 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7F8 : db $02 : dw $0015 ; SRAM copy
    dl $7ED7FA : db $02 : dw $0006 ; SRAM copy
    dl $7ED7FC : db $02 : dw $0001 ; SRAM copy
    dl $7ED7FE : db $02 : dw $0000 ; SRAM copy
    dl $7ED800 : db $02 : dw $0000 ; SRAM copy
    dl $7ED802 : db $02 : dw $0000 ; SRAM copy
    dl $7ED804 : db $02 : dw $0001 ; SRAM copy
    dl $7ED806 : db $02 : dw $0001 ; SRAM copy
    dl $7ED808 : db $02 : dw $0000 ; SRAM copy
    dl $7ED80A : db $02 : dw $0000 ; SRAM copy
    dl $7ED80C : db $02 : dw $0000 ; SRAM copy
    dl $7ED80E : db $02 : dw $0000 ; SRAM copy
    dl $7ED810 : db $02 : dw $0000 ; SRAM copy
    dl $7ED812 : db $02 : dw $0000 ; SRAM copy
    dl $7ED814 : db $02 : dw $0000 ; SRAM copy
    dl $7ED816 : db $02 : dw $0000 ; SRAM copy
    dl $7ED818 : db $02 : dw $0000 ; SRAM copy
    dl $7ED81A : db $02 : dw $0000 ; SRAM copy
    dl $7ED81C : db $02 : dw $0000 ; SRAM copy
    dl $7ED81E : db $02 : dw $0000 ; SRAM copy
    dl $7ED820 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED822 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED824 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED826 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED828 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED82A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED82C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED82E : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED830 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED832 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED834 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED836 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED838 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED83A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED83C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED83E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED840 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED842 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED844 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED846 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED848 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED84A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED84C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED84E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED850 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED852 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED854 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED856 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED858 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED85A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED85C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED85E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED860 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED862 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED864 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED866 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED868 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED86A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED86C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED86E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED870 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED872 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED874 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED876 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED87A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED87C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED87E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED880 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED882 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED884 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED886 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED888 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED88A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED88C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED88E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED890 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED892 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED894 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED896 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED898 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED89A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED89C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED89E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8A0 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8A2 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8A4 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8A6 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8A8 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8AA : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8AC : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8AE : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8B0 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8BC : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8BE : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8C6 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8C8 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8CA : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8CC : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8CE : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8D0 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8D2 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8D4 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8D6 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8D8 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8DA : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8DC : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8DE : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8E0 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8E2 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8E4 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8E6 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8E8 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8EA : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8EC : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8EE : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8F0 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8F2 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8F4 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8F6 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8F8 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8FA : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8FC : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8FE : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED900 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED902 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED904 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED906 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED908 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED90A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED90C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED90E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED910 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED912 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED914 : db $02 : dw $0005 ; Events, Items, Doors
    dl $7ED916 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED918 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED91C : db $02 : dw $1010 ; Events, Items, Doors
    dl $7ED91E : db $02 : dw $0000 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_crateria_parlor:
    dw #preset_gtmax_crateria_ship ; Crateria: Ship
    dl $7E090F : db $02 : dw $F400 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0400 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0084 ; Samus X
    dl $7E0AFA : db $02 : dw $04A0 ; Samus Y
    dw #$FFFF
.after

preset_gtmax_crateria_parlor_downback:
    dw #preset_gtmax_crateria_parlor ; Crateria: Parlor
    dl $7E078D : db $02 : dw $8916 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E090F : db $02 : dw $8001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02F3 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0236 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01A1 ; Samus X
    dl $7E0AFA : db $02 : dw $035B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_crateria_climb_down:
    dw #preset_gtmax_crateria_parlor_downback ; Crateria: Parlor Downback
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $041F ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0317 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0198 ; Samus X
    dl $7E0AFA : db $02 : dw $04BB ; Samus Y
    dw #$FFFF
.after

preset_gtmax_crateria_pit_room:
    dw #preset_gtmax_crateria_climb_down ; Crateria: Climb Down
    dl $7E078D : db $02 : dw $898E ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $15BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E090F : db $02 : dw $4FFF ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0800 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0600 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01DB ; Samus X
    dl $7E0AFA : db $02 : dw $088B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_crateria_morph:
    dw #preset_gtmax_crateria_pit_room ; Crateria: Pit Room
    dl $7E078D : db $02 : dw $8B9E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E9F ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0580 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dl $7ED91A : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_crateria_construction_zone_down:
    dw #preset_gtmax_crateria_morph ; Crateria: Morph
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $DC00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0540 ; Layer 2 X scroll in room in pixels?
    dl $7E09A2 : db $02 : dw $0004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $0004 ; Collected Items
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $07A6 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED872 : db $02 : dw $0400 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_crateria_construction_zone_up:
    dw #preset_gtmax_crateria_construction_zone_down ; Crateria: Construction Zone Down
    dl $7E078D : db $02 : dw $8EDA ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A107 ; MDB
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09C8 : db $02 : dw $0005 ; Max missiles
    dl $7E0AF6 : db $02 : dw $0056 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED874 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0002 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_crateria_pit_room_revisit:
    dw #preset_gtmax_crateria_construction_zone_up ; Crateria: Construction Zone Up
    dl $7E078D : db $02 : dw $8EB6 ; DDB
    dl $7E079B : db $02 : dw $97B5 ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED91A : db $02 : dw $0003 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_crateria_climb_up:
    dw #preset_gtmax_crateria_pit_room_revisit ; Crateria: Pit Room Revisit
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $D800 ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0076 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $0400 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0004 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_crateria_parlor_flyway:
    dw #preset_gtmax_crateria_climb_up ; Crateria: Climb Up
    dl $7E078D : db $02 : dw $8B7A ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0AF6 : db $02 : dw $019B ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_crateria_flyway:
    dw #preset_gtmax_crateria_parlor_flyway ; Crateria: Parlor Flyway
    dl $7E078D : db $02 : dw $8B3E ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01E9 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $016E ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0027 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0508 ; More position/state
    dl $7E0AF6 : db $02 : dw $0369 ; Samus X
    dl $7E0AFA : db $02 : dw $0270 ; Samus Y
    dw #$FFFF
.after

preset_gtmax_crateria_bomb_torizo:
    dw #preset_gtmax_crateria_flyway ; Crateria: Flyway
    dl $7E078D : db $02 : dw $8982 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $9879 ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02BD ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B2 : db $02 : dw $2400 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_crateria_alcatraz:
    dw #preset_gtmax_crateria_bomb_torizo ; Crateria: Bomb Torizo
    dl $7E078D : db $02 : dw $8BAA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09A2 : db $02 : dw $1004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0038 ; Samus X
    dl $7ED828 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED870 : db $02 : dw $0080 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0005 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_crateria_terminator:
    dw #preset_gtmax_crateria_alcatraz ; Crateria: Alcatraz
    dl $7E078D : db $02 : dw $8BF2 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E090F : db $02 : dw $5C00 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0AF6 : db $02 : dw $0059 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED91A : db $02 : dw $0006 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_crateria_green_pirate_shaft:
    dw #preset_gtmax_crateria_terminator ; Crateria: Terminator
    dl $7E078D : db $02 : dw $895E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $990D ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $6C00 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01FA ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $017B ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0AFA : db $02 : dw $0298 ; Samus Y
    dl $7ED91A : db $02 : dw $0007 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_green_brinstar_elevator:
    dw #preset_gtmax_crateria_green_pirate_shaft ; Crateria: Green Pirate Shaft
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E0AF6 : db $02 : dw $007D ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED91A : db $02 : dw $0009 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_early_supers:
    dw #preset_gtmax_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dl $7E078D : db $02 : dw $8C0A ; DDB
    dl $7E078F : db $02 : dw $0009 ; DoorOut Index
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $041C ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0315 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00A3 ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dl $7ED8B4 : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $000A ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_dachora_room:
    dw #preset_gtmax_brinstar_early_supers ; Brinstar: Early Supers
    dl $7E078D : db $02 : dw $8D4E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $6001 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $061A ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0493 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0059 ; Health
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CC : db $02 : dw $0005 ; Max supers
    dl $7E0AF6 : db $02 : dw $004B ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED872 : db $02 : dw $0401 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0006 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $000D ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_big_pink:
    dw #preset_gtmax_brinstar_dachora_room ; Brinstar: Dachora Room
    dl $7E078D : db $02 : dw $8CE2 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $9CB3 ; MDB
    dl $7E090F : db $02 : dw $6C00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B3FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0480 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E0AF6 : db $02 : dw $0696 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_brinstar_green_hill_zone:
    dw #preset_gtmax_brinstar_big_pink ; Brinstar: Big Pink
    dl $7E078D : db $02 : dw $8DAE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2FFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0600 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0480 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $0374 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED8B4 : db $02 : dw $0206 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0010 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_noob_bridge:
    dw #preset_gtmax_brinstar_green_hill_zone ; Brinstar: Green Hill Zone
    dl $7E078D : db $02 : dw $8DEA ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E52 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $06D2 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $051D ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0240 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0059 ; Health
    dl $7E0AF6 : db $02 : dw $0732 ; Samus X
    dl $7E0AFA : db $02 : dw $03AB ; Samus Y
    dl $7ED91A : db $02 : dw $0011 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_red_tower_up:
    dw #preset_gtmax_brinstar_noob_bridge ; Brinstar: Noob Bridge
    dl $7E078D : db $02 : dw $8E92 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $05C0 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B6 : db $02 : dw $0008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_hellway:
    dw #preset_gtmax_brinstar_red_tower_up ; Brinstar: Red Tower Up
    dl $7E078D : db $02 : dw $8F0A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $000C ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0009 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0AF6 : db $02 : dw $008E ; Samus X
    dw #$FFFF
.after

preset_gtmax_brinstar_caterpillars_down:
    dw #preset_gtmax_brinstar_hellway ; Brinstar: Hellway
    dl $7E078D : db $02 : dw $901E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A2F7 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E0AF6 : db $02 : dw $0270 ; Samus X
    dw #$FFFF
.after

preset_gtmax_brinstar_alpha_power_bombs:
    dw #preset_gtmax_brinstar_caterpillars_down ; Brinstar: Caterpillars Down
    dl $7E078D : db $02 : dw $908A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $070C ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $070C ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0049 ; Samus X
    dl $7E0AFA : db $02 : dw $078B ; Samus Y
    dl $7ED8B6 : db $02 : dw $2008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_caterpillars_up:
    dw #preset_gtmax_brinstar_alpha_power_bombs ; Brinstar: Alpha Power Bombs
    dl $7E078D : db $02 : dw $9096 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A3AE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $004F ; Health
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E09D0 : db $02 : dw $0005 ; Max pbs
    dl $7E09D2 : db $02 : dw $0003 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02BE ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED874 : db $02 : dw $0104 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0013 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_reverse_hellway:
    dw #preset_gtmax_brinstar_caterpillars_up ; Brinstar: Caterpillars Up
    dl $7E078D : db $02 : dw $90EA ; DDB
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0500 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0500 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $F900 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $004E ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED8B6 : db $02 : dw $3008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_red_tower_down:
    dw #preset_gtmax_brinstar_reverse_hellway ; Brinstar: Reverse Hellway
    dl $7E078D : db $02 : dw $90AE ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A2F7 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $003B ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_brinstar_skree_boost:
    dw #preset_gtmax_brinstar_red_tower_down ; Brinstar: Red Tower Down
    dl $7E078D : db $02 : dw $907E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $091A ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $06D3 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0055 ; Samus X
    dl $7E0AFA : db $02 : dw $098B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_brinstar_below_spazer:
    dw #preset_gtmax_brinstar_skree_boost ; Brinstar: Skree Boost
    dl $7E078D : db $02 : dw $9042 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $A3DD ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $004B ; Health
    dl $7E0AF6 : db $02 : dw $01DD ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_brinstar_breaking_tube:
    dw #preset_gtmax_brinstar_below_spazer ; Brinstar: Below Spazer
    dl $7E078D : db $02 : dw $9102 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A408 ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $00C0 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09D2 : db $02 : dw $0003 ; Current selected weapon
    dl $7E0AF6 : db $02 : dw $01B6 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_kraid_entering_kraids_lair:
    dw #preset_gtmax_brinstar_breaking_tube ; Brinstar: Breaking Tube
    dl $7E078D : db $02 : dw $A348 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4C01 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Current selected weapon
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7ED820 : db $02 : dw $0801 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_kraid_kraid_kihunters:
    dw #preset_gtmax_kraid_entering_kraids_lair ; Kraid: Entering Kraid's Lair
    dl $7E078D : db $02 : dw $923A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A471 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0AF6 : db $02 : dw $0167 ; Samus X
    dw #$FFFF
.after

preset_gtmax_kraid_mini_kraid:
    dw #preset_gtmax_kraid_kraid_kihunters ; Kraid: Kraid Kihunters
    dl $7E078D : db $02 : dw $9156 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A4DA ; MDB
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E09D2 : db $02 : dw $0003 ; Current selected weapon
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0AF6 : db $02 : dw $016B ; Samus X
    dl $7ED91A : db $02 : dw $0014 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_kraid_kraid_2:
    dw #preset_gtmax_kraid_mini_kraid ; Kraid: Mini Kraid
    dl $7E078D : db $02 : dw $919E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A56B ; MDB
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0021 ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Current selected weapon
    dl $7E0AF6 : db $02 : dw $01BE ; Samus X
    dl $7ED8B8 : db $02 : dw $0024 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_kraid_leaving_varia:
    dw #preset_gtmax_kraid_kraid_2 ; Kraid: Kraid
    dl $7E078D : db $02 : dw $91DA ; DDB
    dl $7E079B : db $02 : dw $A6E2 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09A2 : db $02 : dw $1005 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1005 ; Collected Items
    dl $7E09C2 : db $02 : dw $0044 ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED828 : db $02 : dw $0104 ; Events, Items, Doors
    dl $7ED876 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $0064 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0015 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_kraid_mini_kraid_revisit:
    dw #preset_gtmax_kraid_leaving_varia ; Kraid: Leaving Varia
    dl $7E078D : db $02 : dw $91CE ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A56B ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $003C ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0052 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8B8 : db $02 : dw $00E4 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_kraid_kraid_kihunters_revisit:
    dw #preset_gtmax_kraid_mini_kraid_revisit ; Kraid: Mini Kraid Revisit
    dl $7E078D : db $02 : dw $91AA ; DDB
    dl $7E079B : db $02 : dw $A521 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0020 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0018 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0AF6 : db $02 : dw $00C0 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8B8 : db $02 : dw $00EC ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_kraid_leaving_kraids_lair:
    dw #preset_gtmax_kraid_kraid_kihunters_revisit ; Kraid: Kraid Kihunters Revisit
    dl $7E078D : db $02 : dw $923A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A471 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $0004 ; Missiles
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED91A : db $02 : dw $0016 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_business_center:
    dw #preset_gtmax_kraid_leaving_kraids_lair ; Kraid: Leaving Kraid's Lair
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E079F : db $02 : dw $0002 ; Region
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $01AA ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dw #$FFFF
.after

preset_gtmax_upper_norfair_hijump_etank_room:
    dw #preset_gtmax_upper_norfair_business_center ; Upper Norfair: Business Center
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $051B ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $03D4 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0042 ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED8B8 : db $02 : dw $20EC ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_leaving_hijump:
    dw #preset_gtmax_upper_norfair_hijump_etank_room ; Upper Norfair: Hi-Jump E-Tank Room
    dl $7E078D : db $02 : dw $9426 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A9E5 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09A2 : db $02 : dw $1105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1105 ; Collected Items
    dl $7E09C2 : db $02 : dw $0050 ; Health
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0045 ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED876 : db $02 : dw $0021 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0019 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_business_center_revisit:
    dw #preset_gtmax_upper_norfair_leaving_hijump ; Upper Norfair: Leaving Hi-Jump
    dl $7E078D : db $02 : dw $93F6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $AA41 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $BBFF ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0046 ; Health
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0AF6 : db $02 : dw $01C1 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8BA : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001B ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_precathedral:
    dw #preset_gtmax_upper_norfair_business_center_revisit ; Upper Norfair: Business Center Revisit
    dl $7E078D : db $02 : dw $941A ; DDB
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7FFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0304 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0243 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0AF6 : db $02 : dw $00AF ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_upper_norfair_cathedral:
    dw #preset_gtmax_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dl $7E078D : db $02 : dw $92CA ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7B3 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0200 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $0003 ; Missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0AF6 : db $02 : dw $02A6 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B8 : db $02 : dw $24EC ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_rising_tide:
    dw #preset_gtmax_upper_norfair_cathedral ; Upper Norfair: Cathedral
    dl $7E078D : db $02 : dw $92B2 ; DDB
    dl $7E079B : db $02 : dw $A788 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E0AF6 : db $02 : dw $02B7 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8B8 : db $02 : dw $26EC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001C ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_bubble_mountain:
    dw #preset_gtmax_upper_norfair_rising_tide ; Upper Norfair: Rising Tide
    dl $7E078D : db $02 : dw $929A ; DDB
    dl $7E079B : db $02 : dw $AFA3 ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $BA00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E09C2 : db $02 : dw $003A ; Health
    dl $7E09D2 : db $02 : dw $0003 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $0027 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0508 ; More position/state
    dl $7E0AF6 : db $02 : dw $04BA ; Samus X
    dl $7E0AFA : db $02 : dw $0090 ; Samus Y
    dw #$FFFF
.after

preset_gtmax_upper_norfair_magdollite_tunnel:
    dw #preset_gtmax_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dl $7E078D : db $02 : dw $979E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $AEDF ; MDB
    dl $7E090F : db $02 : dw $7280 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01F2 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0175 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AB ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED91A : db $02 : dw $001D ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_kronic_room:
    dw #preset_gtmax_upper_norfair_magdollite_tunnel ; Upper Norfair: Magdollite Tunnel
    dl $7E078D : db $02 : dw $96BA ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $AEB4 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E0AF6 : db $02 : dw $02B8 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_upper_norfair_lava_dive:
    dw #preset_gtmax_upper_norfair_kronic_room ; Upper Norfair: Kronic Room
    dl $7E078D : db $02 : dw $96A2 ; DDB
    dl $7E079B : db $02 : dw $AE74 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0200 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0169 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8BA : db $02 : dw $0101 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_ln_main_hall:
    dw #preset_gtmax_upper_norfair_lava_dive ; Upper Norfair: Lava Dive
    dl $7E078D : db $02 : dw $96F6 ; DDB
    dl $7E079B : db $02 : dw $B236 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0301 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0009 ; Health
    dl $7E09D2 : db $02 : dw $0003 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0480 ; Samus X
    dl $7E0AFA : db $02 : dw $0288 ; Samus Y
    dw #$FFFF
.after

preset_gtmax_upper_norfair_prepillars:
    dw #preset_gtmax_upper_norfair_ln_main_hall ; Upper Norfair: LN Main Hall
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0540 ; Layer 2 X scroll in room in pixels?
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0796 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_upper_norfair_green_gate_glitch:
    dw #preset_gtmax_upper_norfair_prepillars ; Upper Norfair: Pre-Pillars
    dl $7E078D : db $02 : dw $985E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B3A5 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5C00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0013 ; Health
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $007E ; Samus X
    dl $7E0AFA : db $02 : dw $029B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_upper_norfair_gt_code:
    dw #preset_gtmax_upper_norfair_green_gate_glitch ; Upper Norfair: Green Gate Glitch
    dl $7E078D : db $02 : dw $988E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B6C1 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $000E ; Health
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E09D2 : db $02 : dw $0003 ; Current selected weapon
    dl $7E0AF6 : db $02 : dw $0024 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED91A : db $02 : dw $001E ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_leaving_golden_torizo:
    dw #preset_gtmax_upper_norfair_gt_code ; Upper Norfair: GT Code
    dl $7E078D : db $02 : dw $9A86 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $B283 ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $D000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09A2 : db $02 : dw $F337 ; Equipped Items
    dl $7E09A4 : db $02 : dw $F337 ; Collected Items
    dl $7E09A6 : db $02 : dw $100B ; Beams
    dl $7E09A8 : db $02 : dw $100F ; Beams
    dl $7E09C2 : db $02 : dw $02BC ; Health
    dl $7E09C4 : db $02 : dw $02BC ; Max health
    dl $7E09C6 : db $02 : dw $0064 ; Missiles
    dl $7E09C8 : db $02 : dw $0064 ; Max missiles
    dl $7E09CA : db $02 : dw $0019 ; Supers
    dl $7E09CC : db $02 : dw $0019 ; Max supers
    dl $7E09CE : db $02 : dw $0013 ; Pbs
    dl $7E09D0 : db $02 : dw $0014 ; Max pbs
    dl $7E09D2 : db $02 : dw $0000 ; Current selected weapon
    dl $7E09D4 : db $02 : dw $012C ; Max reserves
    dl $7E09D6 : db $02 : dw $012C ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED82A : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $0080 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0020 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_green_gate_revisit:
    dw #preset_gtmax_lower_norfair_leaving_golden_torizo ; Lower Norfair: Leaving Golden Torizo
    dl $7E078D : db $02 : dw $9882 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B6C1 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09A2 : db $02 : dw $F33F ; Equipped Items
    dl $7E09A4 : db $02 : dw $F33F ; Collected Items
    dl $7E0AF6 : db $02 : dw $0090 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED878 : db $02 : dw $8080 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0301 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0021 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_ln_main_hall_revisit:
    dw #preset_gtmax_lower_norfair_green_gate_revisit ; Lower Norfair: Green Gate Revisit
    dl $7E078D : db $02 : dw $989A ; DDB
    dl $7E079B : db $02 : dw $B3A5 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011D ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00D5 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E09CA : db $02 : dw $0018 ; Supers
    dl $7E09CE : db $02 : dw $0012 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0033 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_lower_norfair_green_gate_final:
    dw #preset_gtmax_lower_norfair_ln_main_hall_revisit ; Lower Norfair: LN Main Hall Revisit
    dl $7E078D : db $02 : dw $9882 ; DDB
    dl $7E079B : db $02 : dw $B6C1 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0FFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0009 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0006 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E09C2 : db $02 : dw $02B5 ; Health
    dl $7E09C6 : db $02 : dw $0069 ; Missiles
    dl $7E09C8 : db $02 : dw $0069 ; Max missiles
    dl $7E09CE : db $02 : dw $0010 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0091 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $1801 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $80C0 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0024 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_worst_room_in_the_game:
    dw #preset_gtmax_lower_norfair_green_gate_final ; Lower Norfair: Green Gate Final
    dl $7E078D : db $02 : dw $9912 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $B457 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $026A ; Health
    dl $7E09CA : db $02 : dw $0017 ; Supers
    dl $7E0AF6 : db $02 : dw $03DB ; Samus X
    dw #$FFFF
.after

preset_gtmax_lower_norfair_mickey_mouse_missiles:
    dw #preset_gtmax_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room in the Game
    dl $7E078D : db $02 : dw $994E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B4AD ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $000B ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0008 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $027E ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0050 ; Samus X
    dw #$FFFF
.after

preset_gtmax_lower_norfair_amphitheatre:
    dw #preset_gtmax_lower_norfair_mickey_mouse_missiles ; Lower Norfair: Mickey Mouse Missiles
    dl $7E078D : db $02 : dw $9936 ; DDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $C400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011D ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $00D5 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $006E ; Missiles
    dl $7E09C8 : db $02 : dw $006E ; Max missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00A7 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED878 : db $02 : dw $82C0 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0025 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_kihunter_stairs_down:
    dw #preset_gtmax_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dl $7E078D : db $02 : dw $997E ; DDB
    dl $7E079B : db $02 : dw $B4E5 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0282 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $003D ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $01E1 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $002D ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0AF6 : db $02 : dw $02E2 ; Samus X
    dl $7E0AFA : db $02 : dw $00B3 ; Samus Y
    dw #$FFFF
.after

preset_gtmax_lower_norfair_wasteland:
    dw #preset_gtmax_lower_norfair_kihunter_stairs_down ; Lower Norfair: Kihunter Stairs Down
    dl $7E078D : db $02 : dw $99EA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $041F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0317 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CE : db $02 : dw $000F ; Pbs
    dl $7E0A1C : db $02 : dw $007E ; Samus position/state
    dl $7E0A1E : db $02 : dw $1304 ; More position/state
    dl $7E0AF6 : db $02 : dw $0265 ; Samus X
    dl $7E0AFA : db $02 : dw $04EC ; Samus Y
    dl $7ED8BA : db $02 : dw $4301 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_metal_ninja_pirates:
    dw #preset_gtmax_lower_norfair_wasteland ; Lower Norfair: Wasteland
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0197 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0245 ; Health
    dl $7E09CA : db $02 : dw $0016 ; Supers
    dl $7E09CE : db $02 : dw $0013 ; Pbs
    dl $7E09D0 : db $02 : dw $0019 ; Max pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $016B ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED878 : db $02 : dw $92C0 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $C301 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0026 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_plowerhouse:
    dw #preset_gtmax_lower_norfair_metal_ninja_pirates ; Lower Norfair: Metal Ninja Pirates
    dl $7E078D : db $02 : dw $9A1A ; DDB
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $017F ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $011F ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C0 : db $02 : dw $0001 ; Manual/Auto reserve tank
    dl $7E09C2 : db $02 : dw $02BC ; Health
    dl $7E09CA : db $02 : dw $0019 ; Supers
    dl $7E0AF6 : db $02 : dw $01E8 ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED8BC : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_ridley:
    dw #preset_gtmax_lower_norfair_plowerhouse ; Lower Norfair: Plowerhouse
    dl $7E078D : db $02 : dw $995A ; DDB
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E09CA : db $02 : dw $0018 ; Supers
    dl $7E0AF6 : db $02 : dw $003C ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED8BA : db $02 : dw $D301 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_leaving_ridley_etank:
    dw #preset_gtmax_lower_norfair_ridley ; Lower Norfair: Ridley
    dl $7E078D : db $02 : dw $98CA ; DDB
    dl $7E079B : db $02 : dw $B32E ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00D7 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E09CE : db $02 : dw $0019 ; Pbs
    dl $7E0AF6 : db $02 : dw $00C0 ; Samus X
    dl $7E0AFA : db $02 : dw $019B ; Samus Y
    dl $7ED82A : db $02 : dw $0005 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_reverse_plowerhouse:
    dw #preset_gtmax_lower_norfair_leaving_ridley_etank ; Lower Norfair: Leaving Ridley E-Tank
    dl $7E078D : db $02 : dw $98BE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $97FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $031D ; Health
    dl $7E09C4 : db $02 : dw $0320 ; Max health
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02CD ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED878 : db $02 : dw $D2C0 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $DF01 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0027 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_wasteland_revisit:
    dw #preset_gtmax_lower_norfair_reverse_plowerhouse ; Lower Norfair: Reverse Plowerhouse
    dl $7E078D : db $02 : dw $9966 ; DDB
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $02FF ; Health
    dl $7E0AF6 : db $02 : dw $02DC ; Samus X
    dw #$FFFF
.after

preset_gtmax_lower_norfair_kihunter_stairs_up:
    dw #preset_gtmax_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dl $7E078D : db $02 : dw $9A3E ; DDB
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $02A5 ; Health
    dl $7E09CE : db $02 : dw $0018 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0589 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED91A : db $02 : dw $0028 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_fireflea_room:
    dw #preset_gtmax_lower_norfair_kihunter_stairs_up ; Lower Norfair: Kihunter Stairs Up
    dl $7E078D : db $02 : dw $9A26 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $3480 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0014 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $000F ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CE : db $02 : dw $0017 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00B2 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_lower_norfair_springball_maze:
    dw #preset_gtmax_lower_norfair_fireflea_room ; Lower Norfair: Fireflea Room
    dl $7E078D : db $02 : dw $9A02 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $B6EE ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001C ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $001C ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0374 ; Health
    dl $7E09C4 : db $02 : dw $0384 ; Max health
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $016C ; Samus X
    dl $7ED87A : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0029 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_lower_norfair_three_muskateers:
    dw #preset_gtmax_lower_norfair_springball_maze ; Lower Norfair: Springball Maze
    dl $7E078D : db $02 : dw $9A92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B510 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0006 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0004 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $0073 ; Missiles
    dl $7E09C8 : db $02 : dw $0073 ; Max missiles
    dl $7E09CE : db $02 : dw $001C ; Pbs
    dl $7E09D0 : db $02 : dw $001E ; Max pbs
    dl $7E0AF6 : db $02 : dw $006F ; Samus X
    dl $7ED878 : db $02 : dw $DEC0 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002D ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_single_chamber:
    dw #preset_gtmax_lower_norfair_three_muskateers ; Lower Norfair: Three Muskateers
    dl $7E078D : db $02 : dw $99AE ; DDB
    dl $7E079B : db $02 : dw $B656 ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0370 ; Health
    dl $7E09C6 : db $02 : dw $0078 ; Missiles
    dl $7E09C8 : db $02 : dw $0078 ; Max missiles
    dl $7E0AF6 : db $02 : dw $0170 ; Samus X
    dl $7ED878 : db $02 : dw $FEC0 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002E ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_double_chamber:
    dw #preset_gtmax_upper_norfair_and_kraid_single_chamber ; Upper Norfair and Kraid: Single Chamber
    dl $7E078D : db $02 : dw $9A4A ; DDB
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011D ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00D5 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $003B ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8BA : db $02 : dw $DF41 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_bat_cave:
    dw #preset_gtmax_upper_norfair_and_kraid_double_chamber ; Upper Norfair and Kraid: Double Chamber
    dl $7E078D : db $02 : dw $95CA ; DDB
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0375 ; Health
    dl $7E09C6 : db $02 : dw $007B ; Missiles
    dl $7E09C8 : db $02 : dw $007D ; Max missiles
    dl $7E09CA : db $02 : dw $000E ; Supers
    dl $7E09CE : db $02 : dw $001D ; Pbs
    dl $7E0AF6 : db $02 : dw $01B9 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED878 : db $02 : dw $FEC8 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $DF51 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0030 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_bat_cave_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_bat_cave ; Upper Norfair and Kraid: Bat Cave
    dl $7E078D : db $02 : dw $97B6 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $ACF0 ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $029B ; Health
    dl $7E09C6 : db $02 : dw $0081 ; Missiles
    dl $7E09C8 : db $02 : dw $0082 ; Max missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7ED878 : db $02 : dw $FECA ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0031 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_bubble_mountain_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_bat_cave_revisit ; Upper Norfair and Kraid: Bat Cave Revisit
    dl $7E078D : db $02 : dw $95A6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B07A ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $A000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0299 ; Health
    dl $7E0A1C : db $02 : dw $0014 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0204 ; More position/state
    dl $7E0AF6 : db $02 : dw $0035 ; Samus X
    dl $7E0AFA : db $02 : dw $0187 ; Samus Y
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_leaving_norfair_reserve:
    dw #preset_gtmax_upper_norfair_and_kraid_bubble_mountain_revisit ; Upper Norfair and Kraid: Bubble Mountain Revisit
    dl $7E078D : db $02 : dw $9546 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $AC5A ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $008B ; Missiles
    dl $7E09C8 : db $02 : dw $008C ; Max missiles
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E09D4 : db $02 : dw $0190 ; Max reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01B1 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $E021 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $DF59 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0035 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_bubble_mountain_final:
    dw #preset_gtmax_upper_norfair_and_kraid_leaving_norfair_reserve ; Upper Norfair and Kraid: Leaving Norfair Reserve
    dl $7E078D : db $02 : dw $952E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $AC83 ; MDB
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $02AD ; Health
    dl $7E0AF6 : db $02 : dw $01C3 ; Samus X
    dl $7ED91A : db $02 : dw $0036 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_cathedral_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_bubble_mountain_final ; Upper Norfair and Kraid: Bubble Mountain Final
    dl $7E078D : db $02 : dw $955E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $AFA3 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $0090 ; Missiles
    dl $7E09C8 : db $02 : dw $0091 ; Max missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0049 ; Samus X
    dl $7ED878 : db $02 : dw $FECB ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0037 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_ice_gate_room:
    dw #preset_gtmax_upper_norfair_and_kraid_cathedral_revisit ; Upper Norfair and Kraid: Cathedral Revisit
    dl $7E078D : db $02 : dw $92A6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B7FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0325 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $025B ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $02C1 ; Health
    dl $7E09C6 : db $02 : dw $0095 ; Missiles
    dl $7E09C8 : db $02 : dw $0096 ; Max missiles
    dl $7E09CA : db $02 : dw $000C ; Supers
    dl $7E0AF6 : db $02 : dw $0052 ; Samus X
    dl $7E0AFA : db $02 : dw $039B ; Samus Y
    dl $7ED876 : db $02 : dw $E023 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $2EEC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0038 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_crocomire:
    dw #preset_gtmax_upper_norfair_and_kraid_ice_gate_room ; Upper Norfair and Kraid: Ice Gate Room
    dl $7E078D : db $02 : dw $9396 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A923 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0C00 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021B ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0900 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0194 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $02BD ; Health
    dl $7E09C6 : db $02 : dw $009A ; Missiles
    dl $7E09C8 : db $02 : dw $009B ; Max missiles
    dl $7E09CA : db $02 : dw $000B ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0C21 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED876 : db $02 : dw $E02B ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $6EEC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0039 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_leaving_crocomire:
    dw #preset_gtmax_upper_norfair_and_kraid_crocomire ; Upper Norfair and Kraid: Crocomire
    dl $7E078D : db $02 : dw $93D2 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $A98D ; MDB
    dl $7E07C3 : db $02 : dw $FE2A ; GFX Pointers
    dl $7E07C5 : db $02 : dw $98BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B7 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0001 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $03CF ; Health
    dl $7E09C4 : db $02 : dw $03E8 ; Max health
    dl $7E09C6 : db $02 : dw $009B ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $07C9 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED82A : db $02 : dw $0007 ; Events, Items, Doors
    dl $7ED876 : db $02 : dw $E03B ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003A ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_grapple_shaft_down:
    dw #preset_gtmax_upper_norfair_and_kraid_leaving_crocomire ; Upper Norfair and Kraid: Leaving Crocomire
    dl $7E078D : db $02 : dw $946E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $AA82 ; MDB
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0026 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $011D ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0026 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $011D ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CE : db $02 : dw $0022 ; Pbs
    dl $7E09D0 : db $02 : dw $0023 ; Max pbs
    dl $7E0AF6 : db $02 : dw $00A6 ; Samus X
    dl $7E0AFA : db $02 : dw $01AB ; Samus Y
    dl $7ED876 : db $02 : dw $E23B ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $DF5B ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003B ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_sine_missiles:
    dw #preset_gtmax_upper_norfair_and_kraid_grapple_shaft_down ; Upper Norfair and Kraid: Grapple Shaft Down
    dl $7E078D : db $02 : dw $94CE ; DDB
    dl $7E079B : db $02 : dw $AB07 ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02F6 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0238 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $03E8 ; Health
    dl $7E09C6 : db $02 : dw $00A0 ; Missiles
    dl $7E09C8 : db $02 : dw $00A0 ; Max missiles
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E09D6 : db $02 : dw $012E ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AF ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED876 : db $02 : dw $EA3B ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $DF5F ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003C ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_crocomire_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_sine_missiles ; Upper Norfair and Kraid: Sine Missiles
    dl $7E078D : db $02 : dw $947A ; DDB
    dl $7E079B : db $02 : dw $AA82 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $035F ; Health
    dl $7E09C6 : db $02 : dw $00A5 ; Missiles
    dl $7E09C8 : db $02 : dw $00A5 ; Max missiles
    dl $7E0AF6 : db $02 : dw $01C4 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $EE3B ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003D ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_croc_escape_super_gate:
    dw #preset_gtmax_upper_norfair_and_kraid_crocomire_revisit ; Upper Norfair and Kraid: Crocomire Revisit
    dl $7E078D : db $02 : dw $93EA ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A923 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0C00 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0014 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0900 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $000F ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $F400 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0C91 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8B8 : db $02 : dw $EEEC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003E ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_hijump_etank_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_croc_escape_super_gate ; Upper Norfair and Kraid: Croc Escape Super Gate
    dl $7E078D : db $02 : dw $9402 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $BF00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0503 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $03C2 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FA00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00AA ; Missiles
    dl $7E09C8 : db $02 : dw $00AA ; Max missiles
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E0AF6 : db $02 : dw $007F ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED876 : db $02 : dw $EE7B ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003F ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_business_center_final:
    dw #preset_gtmax_upper_norfair_and_kraid_hijump_etank_revisit ; Upper Norfair and Kraid: Hi-Jump E-Tank Revisit
    dl $7E078D : db $02 : dw $92D6 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $AA41 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $044C ; Health
    dl $7E09C4 : db $02 : dw $044C ; Max health
    dl $7E09C6 : db $02 : dw $00AF ; Missiles
    dl $7E09C8 : db $02 : dw $00AF ; Max missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0191 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $EFFB ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0041 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_kraid_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_business_center_final ; Upper Norfair and Kraid: Business Center Final
    dl $7E078D : db $02 : dw $92EE ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E09D2 : db $02 : dw $0002 ; Current selected weapon
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0086 ; Samus Y
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_kraid_etank:
    dw #preset_gtmax_upper_norfair_and_kraid_kraid_revisit ; Upper Norfair and Kraid: Kraid Revisit
    dl $7E078D : db $02 : dw $923A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A471 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E09D2 : db $02 : dw $0000 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0059 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8B8 : db $02 : dw $EEED ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_upper_norfair_and_kraid_kraid_kihunters_final:
    dw #preset_gtmax_upper_norfair_and_kraid_kraid_etank ; Upper Norfair and Kraid: Kraid E-Tank
    dl $7E078D : db $02 : dw $9162 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3FFF ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $04B0 ; Health
    dl $7E09C4 : db $02 : dw $04B0 ; Max health
    dl $7E09CE : db $02 : dw $0023 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0167 ; Samus X
    dl $7ED874 : db $02 : dw $0904 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $EEEF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0042 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_maridia_tube_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_kraid_kihunters_final ; Upper Norfair and Kraid: Kraid Kihunters Final
    dl $7E078D : db $02 : dw $923A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00B4 ; Missiles
    dl $7E09C8 : db $02 : dw $00B4 ; Max missiles
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E09CE : db $02 : dw $0022 ; Pbs
    dl $7E09D6 : db $02 : dw $0142 ; Reserves
    dl $7E0A1C : db $02 : dw $008A ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED874 : db $02 : dw $1904 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0043 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_fish_tank:
    dw #preset_gtmax_maridia_predraygon_maridia_tube_revisit ; Maridia Pre-Draygon: Maridia Tube Revisit
    dl $7E078D : db $02 : dw $A330 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CFC9 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $EFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00F9 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $05ED ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00BA ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0471 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0165 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED91A : db $02 : dw $0045 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_tatori_room:
    dw #preset_gtmax_maridia_predraygon_fish_tank ; Maridia Pre-Draygon: Fish Tank
    dl $7E078D : db $02 : dw $A3B4 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D017 ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $020D ; Screen Y position in pixels
    dl $7E09D2 : db $02 : dw $0002 ; Current selected weapon
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0189 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0AF6 : db $02 : dw $01E3 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_mt_everest_and_crab_supers:
    dw #preset_gtmax_maridia_predraygon_tatori_room ; Maridia Pre-Draygon: Tatori Room
    dl $7E078D : db $02 : dw $A408 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0025 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $001B ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0514 ; Health
    dl $7E09C4 : db $02 : dw $0514 ; Max health
    dl $7E09C6 : db $02 : dw $00B9 ; Missiles
    dl $7E09C8 : db $02 : dw $00B9 ; Max missiles
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E09D2 : db $02 : dw $0000 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C5 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED880 : db $02 : dw $0C00 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $4000 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0047 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_crab_shaft:
    dw #preset_gtmax_maridia_predraygon_mt_everest_and_crab_supers ; Maridia Pre-Draygon: Mt Everest and Crab Supers
    dl $7E078D : db $02 : dw $A3CC ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $D0B9 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $000B ; Supers
    dl $7E09CC : db $02 : dw $001E ; Max supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $05AD ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED880 : db $02 : dw $0E00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0049 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_path_to_watering_hole:
    dw #preset_gtmax_maridia_predraygon_crab_shaft ; Maridia Pre-Draygon: Crab Shaft
    dl $7E078D : db $02 : dw $A4BC ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D1DD ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00FF ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00FF ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00BE ; Missiles
    dl $7E09C8 : db $02 : dw $00BE ; Max missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0069 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED880 : db $02 : dw $4E00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004A ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_beach_exit:
    dw #preset_gtmax_maridia_predraygon_path_to_watering_hole ; Maridia Pre-Draygon: Path to Watering Hole
    dl $7E078D : db $02 : dw $A498 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D13B ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0011 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0003 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $000C ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0003 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00C3 ; Missiles
    dl $7E09C8 : db $02 : dw $00C3 ; Max missiles
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E09CC : db $02 : dw $0023 ; Max supers
    dl $7E09D6 : db $02 : dw $0147 ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AC ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED880 : db $02 : dw $7E00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004C ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_crab_shaft_revisit:
    dw #preset_gtmax_maridia_predraygon_beach_exit ; Maridia Pre-Draygon: Beach Exit
    dl $7E078D : db $02 : dw $A4A4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D1DD ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0028 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $001E ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $021F ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00A8 ; Samus X
    dl $7E0AFA : db $02 : dw $02B3 ; Samus Y
    dl $7ED91A : db $02 : dw $004D ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_botwoon_hallway:
    dw #preset_gtmax_maridia_predraygon_crab_shaft_revisit ; Maridia Pre-Draygon: Crab Shaft Revisit
    dl $7E078D : db $02 : dw $A4C8 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D5A7 ; MDB
    dl $7E07C3 : db $02 : dw $E78D ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2EBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B9 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $1001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00B7 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0004 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0089 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0004 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E09CE : db $02 : dw $0021 ; Pbs
    dl $7E0AF6 : db $02 : dw $0121 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED8C0 : db $02 : dw $C000 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004F ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_botwoon:
    dw #preset_gtmax_maridia_predraygon_botwoon_hallway ; Maridia Pre-Draygon: Botwoon Hallway
    dl $7E078D : db $02 : dw $A72C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $D617 ; MDB
    dl $7E090F : db $02 : dw $BFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $03A4 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_halfie_setup:
    dw #preset_gtmax_maridia_predraygon_botwoon ; Maridia Pre-Draygon: Botwoon
    dl $7E078D : db $02 : dw $A918 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D7E4 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $001F ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E09CE : db $02 : dw $0023 ; Pbs
    dl $7E09D6 : db $02 : dw $0190 ; Reserves
    dl $7E0AF6 : db $02 : dw $0079 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED82C : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0050 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_precious_room:
    dw #preset_gtmax_maridia_predraygon_halfie_setup ; Maridia Pre-Draygon: Halfie Setup
    dl $7E078D : db $02 : dw $A8E8 ; DDB
    dl $7E079B : db $02 : dw $D72A ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $051C ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $051C ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E09C2 : db $02 : dw $04AD ; Health
    dl $7E09D2 : db $02 : dw $0002 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $00C9 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1B08 ; More position/state
    dl $7E0A68 : db $02 : dw $000E ; Flash suit
    dl $7E0AF6 : db $02 : dw $057C ; Samus X
    dl $7E0AFA : db $02 : dw $0066 ; Samus Y
    dw #$FFFF
.after

preset_gtmax_maridia_predraygon_draygon:
    dw #preset_gtmax_maridia_predraygon_precious_room ; Maridia Pre-Draygon: Precious Room
    dl $7E078D : db $02 : dw $A7F8 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D78F ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E09C2 : db $02 : dw $04A9 ; Health
    dl $7E09C6 : db $02 : dw $00C8 ; Missiles
    dl $7E09C8 : db $02 : dw $00C8 ; Max missiles
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E09D2 : db $02 : dw $0000 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0060 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED882 : db $02 : dw $0080 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $0C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0051 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_reverse_halfie:
    dw #preset_gtmax_maridia_predraygon_draygon ; Maridia Pre-Draygon: Draygon
    dl $7E078D : db $02 : dw $A96C ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0001 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $049C ; Health
    dl $7E09C6 : db $02 : dw $00BF ; Missiles
    dl $7E0A68 : db $02 : dw $0001 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0044 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED82C : db $02 : dw $0003 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $4C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0052 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_womple_jump:
    dw #preset_gtmax_maridia_postdraygon_reverse_halfie ; Maridia Post-Draygon: Reverse Halfie
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_reverse_botwoon_etank:
    dw #preset_gtmax_maridia_postdraygon_womple_jump ; Maridia Post-Draygon: Womple Jump
    dl $7E078D : db $02 : dw $A7E0 ; DDB
    dl $7E079B : db $02 : dw $D913 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0200 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $042A ; Health
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $00AC ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_aqueduct_ammo:
    dw #preset_gtmax_maridia_postdraygon_reverse_botwoon_etank ; Maridia Post-Draygon: Reverse Botwoon E-Tank
    dl $7E078D : db $02 : dw $A8AC ; DDB
    dl $7E079B : db $02 : dw $D6FD ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0117 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0117 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0573 ; Health
    dl $7E09C4 : db $02 : dw $0578 ; Max health
    dl $7E0A1C : db $02 : dw $00A5 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0189 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED882 : db $02 : dw $0180 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0053 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_right_sandpit:
    dw #preset_gtmax_maridia_postdraygon_aqueduct_ammo ; Maridia Post-Draygon: Aqueduct Ammo
    dl $7E078D : db $02 : dw $A7D4 ; DDB
    dl $7E079B : db $02 : dw $D5A7 ; MDB
    dl $7E090F : db $02 : dw $3FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $021F ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00C4 ; Missiles
    dl $7E09C8 : db $02 : dw $00CD ; Max missiles
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E09CC : db $02 : dw $0028 ; Max supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $05A5 ; Samus X
    dl $7E0AFA : db $02 : dw $02CB ; Samus Y
    dl $7ED882 : db $02 : dw $01B0 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0055 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_oasis_and_sewer:
    dw #preset_gtmax_maridia_postdraygon_right_sandpit ; Maridia Post-Draygon: Right Sandpit
    dl $7E078D : db $02 : dw $A6CC ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D4C2 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0001 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00C9 ; Missiles
    dl $7E09C8 : db $02 : dw $00D2 ; Max missiles
    dl $7E09CE : db $02 : dw $0028 ; Pbs
    dl $7E09D0 : db $02 : dw $0028 ; Max pbs
    dl $7E0AF6 : db $02 : dw $0053 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED882 : db $02 : dw $01BC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0057 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_maridia_ggg:
    dw #preset_gtmax_maridia_postdraygon_oasis_and_sewer ; Maridia Post-Draygon: Oasis and Sewer
    dl $7E078D : db $02 : dw $A660 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D461 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0AF6 : db $02 : dw $004E ; Samus X
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_left_sandpit:
    dw #preset_gtmax_maridia_postdraygon_maridia_ggg ; Maridia Post-Draygon: Maridia GGG
    dl $7E078D : db $02 : dw $A4C8 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D5A7 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $021F ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0578 ; Health
    dl $7E09CA : db $02 : dw $0013 ; Supers
    dl $7E09CE : db $02 : dw $0027 ; Pbs
    dl $7E0AF6 : db $02 : dw $05A5 ; Samus X
    dl $7E0AFA : db $02 : dw $02CB ; Samus Y
    dl $7ED91A : db $02 : dw $005B ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_maridia_ggg_revisit:
    dw #preset_gtmax_maridia_postdraygon_left_sandpit ; Maridia Post-Draygon: Left Sandpit
    dl $7E078D : db $02 : dw $A6B4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D461 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0101 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $055D ; Health
    dl $7E09C6 : db $02 : dw $00CE ; Missiles
    dl $7E09C8 : db $02 : dw $00D7 ; Max missiles
    dl $7E09D4 : db $02 : dw $01F4 ; Max reserves
    dl $7E0AF6 : db $02 : dw $0043 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED882 : db $02 : dw $01BF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $005D ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_mt_everest_exit:
    dw #preset_gtmax_maridia_postdraygon_maridia_ggg_revisit ; Maridia Post-Draygon: Maridia GGG Revisit
    dl $7E078D : db $02 : dw $A414 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CFC9 ; MDB
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $009F ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0038 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0077 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $002A ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $F900 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0527 ; Health
    dl $7E09C6 : db $02 : dw $00D3 ; Missiles
    dl $7E09C8 : db $02 : dw $00DC ; Max missiles
    dl $7E09CA : db $02 : dw $0012 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0104 ; Samus X
    dl $7E0AFA : db $02 : dw $00A7 ; Samus Y
    dl $7ED880 : db $02 : dw $7F00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $005F ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_red_brinstar_green_gate:
    dw #preset_gtmax_maridia_postdraygon_mt_everest_exit ; Maridia Post-Draygon: Mt Everest Exit
    dl $7E078D : db $02 : dw $A42C ; DDB
    dl $7E079B : db $02 : dw $D104 ; MDB
    dl $7E090F : db $02 : dw $0001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0005 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0005 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $007D ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_leaving_alpha_power_bombs:
    dw #preset_gtmax_maridia_postdraygon_red_brinstar_green_gate ; Maridia Post-Draygon: Red Brinstar Green Gate
    dl $7E078D : db $02 : dw $9096 ; DDB
    dl $7E079B : db $02 : dw $A3AE ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00D8 ; Missiles
    dl $7E09C8 : db $02 : dw $00E1 ; Max missiles
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E09CE : db $02 : dw $0026 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0036 ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED874 : db $02 : dw $1B04 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0061 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_maridia_postdraygon_beta_power_bombs:
    dw #preset_gtmax_maridia_postdraygon_leaving_alpha_power_bombs ; Maridia Post-Draygon: Leaving Alpha Power Bombs
    dl $7E078D : db $02 : dw $90EA ; DDB
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $C400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02FB ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $02FB ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $F900 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $005D ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED8B6 : db $02 : dw $3808 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_crateria_kihunters:
    dw #preset_gtmax_maridia_postdraygon_beta_power_bombs ; Maridia Post-Draygon: Beta Power Bombs
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $5C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0523 ; Health
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E09CE : db $02 : dw $0029 ; Pbs
    dl $7E09D0 : db $02 : dw $002D ; Max pbs
    dl $7E09D2 : db $02 : dw $0003 ; Current selected weapon
    dl $7E0AF6 : db $02 : dw $0091 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED874 : db $02 : dw $1B84 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C01 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $7808 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0062 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_moat:
    dw #preset_gtmax_wrecked_ship_crateria_kihunters ; Wrecked Ship: Crateria Kihunters
    dl $7E078D : db $02 : dw $8AF6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $948C ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00DA ; Missiles
    dl $7E09CE : db $02 : dw $0028 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02AD ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B0 : db $02 : dw $2000 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_ocean:
    dw #preset_gtmax_wrecked_ship_moat ; Wrecked Ship: Moat
    dl $7E078D : db $02 : dw $8A36 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $95FF ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00DF ; Missiles
    dl $7E09C8 : db $02 : dw $00E6 ; Max missiles
    dl $7E0AF6 : db $02 : dw $01A9 ; Samus X
    dl $7ED870 : db $02 : dw $0090 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0063 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_enter_wrecked_ship:
    dw #preset_gtmax_wrecked_ship_ocean ; Wrecked Ship: Ocean
    dl $7E078D : db $02 : dw $8AEA ; DDB
    dl $7E079B : db $02 : dw $93FE ; MDB
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $040B ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0380 ; Layer 2 X scroll in room in pixels?
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E0AF6 : db $02 : dw $0791 ; Samus X
    dl $7E0AFA : db $02 : dw $049B ; Samus Y
    dl $7ED8B0 : db $02 : dw $3000 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0066 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_basement:
    dw #preset_gtmax_wrecked_ship_enter_wrecked_ship ; Wrecked Ship: Enter Wrecked Ship
    dl $7E078D : db $02 : dw $A294 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E079F : db $02 : dw $0003 ; Region
    dl $7E07C3 : db $02 : dw $AE9E ; GFX Pointers
    dl $7E07C5 : db $02 : dw $A6BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B1 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $071F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0557 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00E4 ; Missiles
    dl $7E09C8 : db $02 : dw $00EB ; Max missiles
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E09CE : db $02 : dw $0027 ; Pbs
    dl $7E0AF6 : db $02 : dw $0455 ; Samus X
    dl $7E0AFA : db $02 : dw $07BB ; Samus Y
    dl $7ED880 : db $02 : dw $7F01 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $C010 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0068 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_phantoon:
    dw #preset_gtmax_wrecked_ship_basement ; Wrecked Ship: Basement
    dl $7E078D : db $02 : dw $A21C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $CC6F ; MDB
    dl $7E090F : db $02 : dw $2FFF ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $000E ; Supers
    dl $7E0AF6 : db $02 : dw $04CD ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C0 : db $02 : dw $C030 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_shaft_to_supers:
    dw #preset_gtmax_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dl $7E078D : db $02 : dw $A2C4 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E07C5 : db $02 : dw $E7BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0218 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0192 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0519 ; Health
    dl $7E09C6 : db $02 : dw $00E3 ; Missiles
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E09CE : db $02 : dw $0028 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $02B8 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED82A : db $02 : dw $0107 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $C070 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_east_supers:
    dw #preset_gtmax_wrecked_ship_shaft_to_supers ; Wrecked Ship: Shaft to Supers
    dl $7E078D : db $02 : dw $A294 ; DDB
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E090F : db $02 : dw $EFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5FFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0600 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0480 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CE : db $02 : dw $0027 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $05B7 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED8C0 : db $02 : dw $C074 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0069 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_west_supers:
    dw #preset_gtmax_wrecked_ship_east_supers ; Wrecked Ship: East Supers
    dl $7E078D : db $02 : dw $A234 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $CDF1 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0019 ; Supers
    dl $7E09CC : db $02 : dw $002D ; Max supers
    dl $7E09D2 : db $02 : dw $0003 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0065 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED880 : db $02 : dw $7F41 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $006A ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_sponge_bath:
    dw #preset_gtmax_wrecked_ship_west_supers ; Wrecked Ship: West Supers
    dl $7E078D : db $02 : dw $A2E8 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E090F : db $02 : dw $A401 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0462 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0349 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FA00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0512 ; Health
    dl $7E09C6 : db $02 : dw $00E2 ; Missiles
    dl $7E09CA : db $02 : dw $001E ; Supers
    dl $7E09CC : db $02 : dw $0032 ; Max supers
    dl $7E09CE : db $02 : dw $0026 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $042F ; Samus X
    dl $7E0AFA : db $02 : dw $04EB ; Samus Y
    dl $7ED880 : db $02 : dw $7F61 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $006D ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_leaving_ws_etank:
    dw #preset_gtmax_wrecked_ship_sponge_bath ; Wrecked Ship: Sponge Bath
    dl $7E078D : db $02 : dw $A27C ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $CC27 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $05DC ; Health
    dl $7E09C4 : db $02 : dw $05DC ; Max health
    dl $7E09CA : db $02 : dw $001D ; Supers
    dl $7E0AF6 : db $02 : dw $004F ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED880 : db $02 : dw $7F71 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $C87C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $006E ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_reverse_spiky_room:
    dw #preset_gtmax_wrecked_ship_leaving_ws_etank ; Wrecked Ship: Leaving WS E-Tank
    dl $7E078D : db $02 : dw $A288 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CBD5 ; MDB
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $4FFF ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0216 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0190 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $05D5 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00DB ; Samus X
    dl $7E0AFA : db $02 : dw $029B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_shaft_to_attic:
    dw #preset_gtmax_wrecked_ship_reverse_spiky_room ; Wrecked Ship: Reverse Spiky Room
    dl $7E078D : db $02 : dw $A24C ; DDB
    dl $7E079B : db $02 : dw $CD5C ; MDB
    dl $7E090F : db $02 : dw $1FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0BFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $05B7 ; Health
    dl $7E09CE : db $02 : dw $0027 ; Pbs
    dl $7E0AF6 : db $02 : dw $01DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_attic:
    dw #preset_gtmax_wrecked_ship_shaft_to_attic ; Wrecked Ship: Shaft to Attic
    dl $7E078D : db $02 : dw $A2D0 ; DDB
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E090F : db $02 : dw $BC00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0004 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0003 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0AF6 : db $02 : dw $04C4 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED91A : db $02 : dw $006F ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_antispeedrun_robots:
    dw #preset_gtmax_wrecked_ship_attic ; Wrecked Ship: Attic
    dl $7E078D : db $02 : dw $A228 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $CA52 ; MDB
    dl $7E090F : db $02 : dw $F800 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0FFD ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0480 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $001E ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $05B5 ; Health
    dl $7E09C6 : db $02 : dw $00E1 ; Missiles
    dl $7E09CA : db $02 : dw $001C ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $068F ; Samus X
    dl $7E0AFA : db $02 : dw $00AC ; Samus Y
    dl $7ED8C0 : db $02 : dw $CA7C ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_attic_revisit:
    dw #preset_gtmax_wrecked_ship_antispeedrun_robots ; Wrecked Ship: Anti-Speedrun Robots
    dl $7E078D : db $02 : dw $A1D4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $CAAE ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0029 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $001E ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $05A0 ; Health
    dl $7E09C6 : db $02 : dw $00D9 ; Missiles
    dl $7E09C8 : db $02 : dw $00F0 ; Max missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED880 : db $02 : dw $7F79 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0070 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_pancake_room:
    dw #preset_gtmax_wrecked_ship_attic_revisit ; Wrecked Ship: Attic Revisit
    dl $7E078D : db $02 : dw $A1E0 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $93FE ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01FC ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $F800 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00E3 ; Missiles
    dl $7E09C8 : db $02 : dw $00FA ; Max missiles
    dl $7E09CA : db $02 : dw $001B ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02BD ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED870 : db $02 : dw $009C ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $CB7C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0073 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_bowling_spark:
    dw #preset_gtmax_wrecked_ship_pancake_room ; Wrecked Ship: Pancake Room
    dl $7E078D : db $02 : dw $89E2 ; DDB
    dl $7E079B : db $02 : dw $9461 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00E5 ; Missiles
    dl $7E0AF6 : db $02 : dw $0164 ; Samus X
    dl $7E0AFA : db $02 : dw $00A7 ; Samus Y
    dw #$FFFF
.after

preset_gtmax_wrecked_ship_ocean_revisit:
    dw #preset_gtmax_wrecked_ship_bowling_spark ; Wrecked Ship: Bowling Spark
    dl $7E078D : db $02 : dw $A1A4 ; DDB
    dl $7E079B : db $02 : dw $CE40 ; MDB
    dl $7E079F : db $02 : dw $0003 ; Region
    dl $7E07C3 : db $02 : dw $AE9E ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E7BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0522 ; Health
    dl $7E09C6 : db $02 : dw $00E4 ; Missiles
    dl $7E09C8 : db $02 : dw $00FF ; Max missiles
    dl $7E09CE : db $02 : dw $0026 ; Pbs
    dl $7E09D4 : db $02 : dw $0258 ; Max reserves
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED880 : db $02 : dw $7FFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0076 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_crateria_power_bombs:
    dw #preset_gtmax_wrecked_ship_ocean_revisit ; Wrecked Ship: Ocean Revisit
    dl $7E078D : db $02 : dw $8AC6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $91F8 ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $9C00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $079A ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00E2 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03CD ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $F700 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $04E1 ; Health
    dl $7E09D2 : db $02 : dw $0003 ; Current selected weapon
    dl $7E0A1C : db $02 : dw $0079 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1108 ; More position/state
    dl $7E0AF6 : db $02 : dw $0803 ; Samus X
    dl $7E0AFA : db $02 : dw $0159 ; Samus Y
    dl $7ED91A : db $02 : dw $007A ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_landing_site_revisit:
    dw #preset_gtmax_brinstar_cleanup_1_crateria_power_bombs ; Brinstar Cleanup 1: Crateria Power Bombs
    dl $7E078D : db $02 : dw $893A ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $93AA ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $04A3 ; Health
    dl $7E09CE : db $02 : dw $002C ; Pbs
    dl $7E09D0 : db $02 : dw $0032 ; Max pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0054 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED870 : db $02 : dw $009D ; Events, Items, Doors
    dl $7ED8B0 : db $02 : dw $3002 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $007B ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_gauntlet_etank:
    dw #preset_gtmax_brinstar_cleanup_1_landing_site_revisit ; Brinstar Cleanup 1: Landing Site Revisit
    dl $7E078D : db $02 : dw $892E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $92B3 ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $041C ; Health
    dl $7E09D2 : db $02 : dw $0000 ; Current selected weapon
    dl $7E0AF6 : db $02 : dw $0081 ; Samus X
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_crumble_blocks:
    dw #preset_gtmax_brinstar_cleanup_1_gauntlet_etank ; Brinstar Cleanup 1: Gauntlet E-Tank
    dl $7E078D : db $02 : dw $8952 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $965B ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0632 ; Health
    dl $7E09C4 : db $02 : dw $0640 ; Max health
    dl $7E0AF6 : db $02 : dw $0044 ; Samus X
    dl $7ED870 : db $02 : dw $00BD ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $007C ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_kago_mushroom_room:
    dw #preset_gtmax_brinstar_cleanup_1_crumble_blocks ; Brinstar Cleanup 1: Crumble Blocks
    dl $7E078D : db $02 : dw $8B1A ; DDB
    dl $7E079B : db $02 : dw $99BD ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0600 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0480 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0640 ; Health
    dl $7E09C6 : db $02 : dw $00F0 ; Missiles
    dl $7E09C8 : db $02 : dw $0109 ; Max missiles
    dl $7E09D6 : db $02 : dw $0196 ; Reserves
    dl $7E0AF6 : db $02 : dw $00B5 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED870 : db $02 : dw $06BD ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $007E ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_green_brinstar_revisit:
    dw #preset_gtmax_brinstar_cleanup_1_kago_mushroom_room ; Brinstar Cleanup 1: Kago Mushroom Room
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0AF6 : db $02 : dw $007D ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_brinstar_reserve_tank:
    dw #preset_gtmax_brinstar_cleanup_1_green_brinstar_revisit ; Brinstar Cleanup 1: Green Brinstar Revisit
    dl $7E078D : db $02 : dw $8CD6 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $9BC8 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00C0 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $001A ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02DB ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8B4 : db $02 : dw $0246 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0081 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_reverse_mockball:
    dw #preset_gtmax_brinstar_cleanup_1_brinstar_reserve_tank ; Brinstar Cleanup 1: Brinstar Reserve Tank
    dl $7E078D : db $02 : dw $8D5A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9C07 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00FA ; Missiles
    dl $7E09C8 : db $02 : dw $0113 ; Max missiles
    dl $7E09CE : db $02 : dw $002B ; Pbs
    dl $7E09D4 : db $02 : dw $02BC ; Max reserves
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0044 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED872 : db $02 : dw $040F ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0084 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_green_shaft_descent:
    dw #preset_gtmax_brinstar_cleanup_1_reverse_mockball ; Brinstar Cleanup 1: Reverse Mockball
    dl $7E078D : db $02 : dw $8D66 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $9BC8 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $002F ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC02 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0023 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00C0 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $00FF ; Missiles
    dl $7E09C8 : db $02 : dw $0118 ; Max missiles
    dl $7E0AF6 : db $02 : dw $00CF ; Samus X
    dl $7E0AFA : db $02 : dw $015B ; Samus Y
    dl $7ED870 : db $02 : dw $86BD ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0086 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_green_brinstar_beetoms:
    dw #preset_gtmax_brinstar_cleanup_1_green_shaft_descent ; Brinstar Cleanup 1: Green Shaft Descent
    dl $7E078D : db $02 : dw $8D4E ; DDB
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0A1F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0797 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CE : db $02 : dw $002A ; Pbs
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $0A8B ; Samus Y
    dl $7ED91A : db $02 : dw $0087 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_etecoon_etank_room:
    dw #preset_gtmax_brinstar_cleanup_1_green_brinstar_beetoms ; Brinstar Cleanup 1: Green Brinstar Beetoms
    dl $7E078D : db $02 : dw $8F3A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A051 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $EBFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $001E ; Supers
    dl $7E09CC : db $02 : dw $0037 ; Max supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0087 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED872 : db $02 : dw $840F ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $7818 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0089 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_etecoon_room:
    dw #preset_gtmax_brinstar_cleanup_1_etecoon_etank_room ; Brinstar Cleanup 1: Etecoon E-Tank Room
    dl $7E078D : db $02 : dw $8F5E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A011 ; MDB
    dl $7E090F : db $02 : dw $BFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00C0 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0687 ; Health
    dl $7E09C4 : db $02 : dw $06A4 ; Max health
    dl $7E0A1C : db $02 : dw $0089 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1508 ; More position/state
    dl $7E0AF6 : db $02 : dw $04DB ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED872 : db $02 : dw $C40F ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $008A ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_green_shaft_final:
    dw #preset_gtmax_brinstar_cleanup_1_etecoon_room ; Brinstar Cleanup 1: Etecoon Room
    dl $7E078D : db $02 : dw $8F46 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $01B9 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $074D ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $01B9 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0579 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $F500 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CE : db $02 : dw $002F ; Pbs
    dl $7E09D0 : db $02 : dw $0037 ; Max pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0259 ; Samus X
    dl $7E0AFA : db $02 : dw $07BB ; Samus Y
    dl $7ED870 : db $02 : dw $A6BD ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $008B ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_dachora_room_revisit:
    dw #preset_gtmax_brinstar_cleanup_1_green_shaft_final ; Brinstar Cleanup 1: Green Shaft Final
    dl $7E078D : db $02 : dw $8D06 ; DDB
    dl $7E078F : db $02 : dw $0008 ; DoorOut Index
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0604 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0483 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $F900 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CE : db $02 : dw $002E ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00B2 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED91A : db $02 : dw $008C ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_big_pink_revisit:
    dw #preset_gtmax_brinstar_cleanup_1_dachora_room_revisit ; Brinstar Cleanup 1: Dachora Room Revisit
    dl $7E078D : db $02 : dw $8CE2 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $9CB3 ; MDB
    dl $7E090F : db $02 : dw $9C00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0480 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0685 ; Health
    dl $7E09C6 : db $02 : dw $00FE ; Missiles
    dl $7E0AF6 : db $02 : dw $06B0 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_mission_impossible:
    dw #preset_gtmax_brinstar_cleanup_1_big_pink_revisit ; Brinstar Cleanup 1: Big Pink Revisit
    dl $7E078D : db $02 : dw $8DAE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $031C ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0255 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0680 ; Health
    dl $7E09C6 : db $02 : dw $0103 ; Missiles
    dl $7E09C8 : db $02 : dw $011D ; Max missiles
    dl $7E09CE : db $02 : dw $002D ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0224 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED872 : db $02 : dw $C42F ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0346 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $008F ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_leaving_pink_etank:
    dw #preset_gtmax_brinstar_cleanup_1_mission_impossible ; Brinstar Cleanup 1: Mission Impossible
    dl $7E078D : db $02 : dw $8FBE ; DDB
    dl $7E079B : db $02 : dw $A15B ; MDB
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0708 ; Health
    dl $7E09C4 : db $02 : dw $0708 ; Max health
    dl $7E09CA : db $02 : dw $001D ; Supers
    dl $7E09CE : db $02 : dw $0032 ; Pbs
    dl $7E09D0 : db $02 : dw $003C ; Max pbs
    dl $7E0AF6 : db $02 : dw $00AB ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED872 : db $02 : dw $C52F ; Events, Items, Doors
    dl $7ED874 : db $02 : dw $1B8C ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $8346 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $78D8 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0094 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_leaving_spore_spawn_supers:
    dw #preset_gtmax_brinstar_cleanup_1_leaving_pink_etank ; Brinstar Cleanup 1: Leaving Pink E-Tank
    dl $7E078D : db $02 : dw $8F76 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $9B5B ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0800 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0600 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $06F1 ; Health
    dl $7E09C6 : db $02 : dw $0105 ; Missiles
    dl $7E09CA : db $02 : dw $0020 ; Supers
    dl $7E09CC : db $02 : dw $003C ; Max supers
    dl $7E09CE : db $02 : dw $0031 ; Pbs
    dl $7E0AF6 : db $02 : dw $019B ; Samus X
    dl $7E0AFA : db $02 : dw $088B ; Samus Y
    dl $7ED870 : db $02 : dw $E6BD ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $78F8 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0098 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_1_waterway_etank:
    dw #preset_gtmax_brinstar_cleanup_1_leaving_spore_spawn_supers ; Brinstar Cleanup 1: Leaving Spore Spawn Supers
    dl $7E078D : db $02 : dw $8F82 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $1FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $091F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $06D7 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $010C ; Missiles
    dl $7E09C8 : db $02 : dw $0122 ; Max missiles
    dl $7E09CA : db $02 : dw $001E ; Supers
    dl $7E09CE : db $02 : dw $002E ; Pbs
    dl $7E0AF6 : db $02 : dw $0065 ; Samus X
    dl $7E0AFA : db $02 : dw $098B ; Samus Y
    dl $7ED872 : db $02 : dw $C56F ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $8B46 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $009B ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_2_green_hills_revisit:
    dw #preset_gtmax_brinstar_cleanup_1_waterway_etank ; Brinstar Cleanup 1: Waterway E-Tank
    dl $7E078D : db $02 : dw $8F8E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $02E0 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $061D ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0228 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0495 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $F700 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $076C ; Health
    dl $7E09C4 : db $02 : dw $076C ; Max health
    dl $7E09CE : db $02 : dw $002F ; Pbs
    dl $7E09D6 : db $02 : dw $01AF ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0340 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED874 : db $02 : dw $1B8E ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $009F ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_2_blue_brinstar_hoppers:
    dw #preset_gtmax_brinstar_cleanup_2_green_hills_revisit ; Brinstar Cleanup 2: Green Hills Revisit
    dl $7E078D : db $02 : dw $8DEA ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E52 ; MDB
    dl $7E0911 : db $02 : dw $00E5 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001D ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00AB ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0015 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $0111 ; Missiles
    dl $7E09C8 : db $02 : dw $0127 ; Max missiles
    dl $7E09CE : db $02 : dw $002E ; Pbs
    dl $7E09D6 : db $02 : dw $01B4 ; Reserves
    dl $7E0AF6 : db $02 : dw $0145 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED872 : db $02 : dw $C76F ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $78F9 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A0 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_2_billy_mays:
    dw #preset_gtmax_brinstar_cleanup_2_blue_brinstar_hoppers ; Brinstar Cleanup 2: Blue Brinstar Hoppers
    dl $7E078D : db $02 : dw $8ECE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9F64 ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001C ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $07D0 ; Health
    dl $7E09C4 : db $02 : dw $07D0 ; Max health
    dl $7E09CA : db $02 : dw $001D ; Supers
    dl $7E09CE : db $02 : dw $0030 ; Pbs
    dl $7E09D0 : db $02 : dw $0041 ; Max pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0258 ; Samus X
    dl $7ED872 : db $02 : dw $EF6F ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $78FD ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A3 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_2_leaving_blue_brinstar:
    dw #preset_gtmax_brinstar_cleanup_2_billy_mays ; Brinstar Cleanup 2: Billy Mays
    dl $7E078D : db $02 : dw $8FE2 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $019E ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0136 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $07B9 ; Health
    dl $7E09C6 : db $02 : dw $0120 ; Missiles
    dl $7E09C8 : db $02 : dw $0136 ; Max missiles
    dl $7E0AF6 : db $02 : dw $0229 ; Samus X
    dl $7E0AFA : db $02 : dw $02BB ; Samus Y
    dl $7ED872 : db $02 : dw $FF6F ; Events, Items, Doors
    dl $7ED874 : db $02 : dw $1BBE ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A7 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_2_pit_room_final_spark:
    dw #preset_gtmax_brinstar_cleanup_2_leaving_blue_brinstar ; Brinstar Cleanup 2: Leaving Blue Brinstar
    dl $7E078D : db $02 : dw $8EB6 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $97B5 ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $07B8 ; Health
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0A68 : db $02 : dw $0068 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED91A : db $02 : dw $00A8 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_2_climb_supers:
    dw #preset_gtmax_brinstar_cleanup_2_pit_room_final_spark ; Brinstar Cleanup 2: Pit Room Final (Spark)
    dl $7E078D : db $02 : dw $8B7A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0400 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0700 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0540 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $078E ; Health
    dl $7E09C6 : db $02 : dw $0125 ; Missiles
    dl $7E09C8 : db $02 : dw $013B ; Max missiles
    dl $7E09CE : db $02 : dw $002F ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $02BD ; Samus X
    dl $7E0AFA : db $02 : dw $078B ; Samus Y
    dl $7ED870 : db $02 : dw $E6FD ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C09 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A9 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_2_to_final_missiles:
    dw #preset_gtmax_brinstar_cleanup_2_climb_supers ; Brinstar Cleanup 2: Climb Supers
    dl $7E078D : db $02 : dw $8C6A ; DDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7803 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $06F0 ; Health
    dl $7E09CA : db $02 : dw $0022 ; Supers
    dl $7E09CC : db $02 : dw $0041 ; Max supers
    dl $7E09CE : db $02 : dw $002E ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01D6 ; Samus X
    dl $7E0AFA : db $02 : dw $004B ; Samus Y
    dl $7ED870 : db $02 : dw $EEFD ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00AA ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_2_parlor_missiles:
    dw #preset_gtmax_brinstar_cleanup_2_to_final_missiles ; Brinstar Cleanup 2: To Final Missiles
    dl $7E078D : db $02 : dw $89A6 ; DDB
    dl $7E078F : db $02 : dw $0006 ; DoorOut Index
    dl $7E079B : db $02 : dw $9A44 ; MDB
    dl $7E090F : db $02 : dw $E001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3C00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CE : db $02 : dw $002D ; Pbs
    dl $7E0AF6 : db $02 : dw $004B ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_2_parlor_again:
    dw #preset_gtmax_brinstar_cleanup_2_parlor_missiles ; Brinstar Cleanup 2: Parlor Missiles
    dl $7E078D : db $02 : dw $8C9A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6401 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $012A ; Missiles
    dl $7E09C8 : db $02 : dw $0140 ; Max missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01B9 ; Samus X
    dl $7ED870 : db $02 : dw $FEFD ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00AB ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_brinstar_cleanup_2_terminator_etank:
    dw #preset_gtmax_brinstar_cleanup_2_parlor_again ; Brinstar Cleanup 2: Parlor Again
    dl $7E078D : db $02 : dw $8C8E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $016C ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dw #$FFFF
.after

preset_gtmax_tourian_tourian_elevator_room:
    dw #preset_gtmax_brinstar_cleanup_2_terminator_etank ; Brinstar Cleanup 2: Terminator E-tank
    dl $7E078D : db $02 : dw $9222 ; DDB
    dl $7E079B : db $02 : dw $DAAE ; MDB
    dl $7E079F : db $02 : dw $0005 ; Region
    dl $7E07C3 : db $02 : dw $D414 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $EDBF ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2BA ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $01AA ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0834 ; Health
    dl $7E09C4 : db $02 : dw $0834 ; Max health
    dl $7E09CA : db $02 : dw $0021 ; Supers
    dl $7E09D6 : db $02 : dw $01D2 ; Reserves
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dl $7ED820 : db $02 : dw $1FC1 ; Events, Items, Doors
    dl $7ED870 : db $02 : dw $FFFD ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $6C09 ; Events, Items, Doors
    dl $7ED90C : db $02 : dw $0100 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00AE ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_tourian_metroids_1:
    dw #preset_gtmax_tourian_tourian_elevator_room ; Tourian: Tourian Elevator Room
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E090F : db $02 : dw $4FFF ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $43FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0240 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003B ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_tourian_metroids_2:
    dw #preset_gtmax_tourian_metroids_1 ; Tourian: Metroids 1
    dl $7E078D : db $02 : dw $A984 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $DAE1 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0058 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0042 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0821 ; Health
    dl $7E09C6 : db $02 : dw $0132 ; Missiles
    dl $7E09CA : db $02 : dw $001E ; Supers
    dl $7E09D6 : db $02 : dw $0204 ; Reserves
    dl $7E0AF6 : db $02 : dw $00F8 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED822 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_tourian_metroids_3:
    dw #preset_gtmax_tourian_metroids_2 ; Tourian: Metroids 2
    dl $7E078D : db $02 : dw $A9B4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $DB31 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0107 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00C5 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $0834 ; Health
    dl $7E09CA : db $02 : dw $001D ; Supers
    dl $7E09D6 : db $02 : dw $0223 ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C4 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0003 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0003 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_tourian_metroids_4:
    dw #preset_gtmax_tourian_metroids_3 ; Tourian: Metroids 3
    dl $7E078D : db $02 : dw $A9CC ; DDB
    dl $7E079B : db $02 : dw $DB7D ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C6 : db $02 : dw $0140 ; Missiles
    dl $7E09CA : db $02 : dw $001C ; Supers
    dl $7E09CE : db $02 : dw $0030 ; Pbs
    dl $7E09D6 : db $02 : dw $024A ; Reserves
    dl $7E0AF6 : db $02 : dw $05A3 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED822 : db $02 : dw $0007 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0007 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_tourian_giant_hoppers:
    dw #preset_gtmax_tourian_metroids_4 ; Tourian: Metroids 4
    dl $7E078D : db $02 : dw $A9E4 ; DDB
    dl $7E079B : db $02 : dw $DBCD ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00D7 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E09CA : db $02 : dw $001B ; Supers
    dl $7E09CE : db $02 : dw $0032 ; Pbs
    dl $7E09D6 : db $02 : dw $02A4 ; Reserves
    dl $7E0AF6 : db $02 : dw $0061 ; Samus X
    dl $7E0AFA : db $02 : dw $01CB ; Samus Y
    dl $7ED822 : db $02 : dw $000F ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $000F ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_tourian_baby_skip:
    dw #preset_gtmax_tourian_giant_hoppers ; Tourian: Giant Hoppers
    dl $7E078D : db $02 : dw $AA14 ; DDB
    dl $7E079B : db $02 : dw $DC65 ; MDB
    dl $7E07F3 : db $02 : dw $0045 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01DB ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dw #$FFFF
.after

preset_gtmax_tourian_gadora_room:
    dw #preset_gtmax_tourian_baby_skip ; Tourian: Baby Skip
    dl $7E078D : db $02 : dw $AA44 ; DDB
    dl $7E079B : db $02 : dw $DCFF ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0117 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00D1 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $001A ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00DC ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8C4 : db $02 : dw $00AF ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_tourian_zeb_skip:
    dw #preset_gtmax_tourian_gadora_room ; Tourian: Gadora Room
    dl $7E078D : db $02 : dw $AAA4 ; DDB
    dl $7E079B : db $02 : dw $DDF3 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021A ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0193 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09CA : db $02 : dw $0018 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0041 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C4 : db $02 : dw $03AF ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_tourian_escape_room_3:
    dw #preset_gtmax_tourian_zeb_skip ; Tourian: Zeb Skip
    dl $7E078D : db $02 : dw $AAEC ; DDB
    dl $7E079B : db $02 : dw $DE7A ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $00C0 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09A6 : db $02 : dw $1009 ; Beams
    dl $7E09C6 : db $02 : dw $00EA ; Missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E09D6 : db $02 : dw $02BC ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0A76 : db $02 : dw $8000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $00E0 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED820 : db $02 : dw $5FCD ; Events, Items, Doors
    dl $7ED82C : db $02 : dw $0203 ; Events, Items, Doors
    dw #$FFFF
.after

preset_gtmax_tourian_escape_room_4:
    dw #preset_gtmax_tourian_escape_room_3 ; Tourian: Escape Room 3
    dl $7E078D : db $02 : dw $AB04 ; DDB
    dl $7E079B : db $02 : dw $DEA7 ; MDB
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001A ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0013 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0AF6 : db $02 : dw $05DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_tourian_climb_spark:
    dw #preset_gtmax_tourian_escape_room_4 ; Tourian: Escape Room 4
    dl $7E078D : db $02 : dw $AB1C ; DDB
    dl $7E079B : db $02 : dw $DEDE ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00F2 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00F3 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00B5 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00B6 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0AF6 : db $02 : dw $0152 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_gtmax_tourian_escape_parlor:
    dw #preset_gtmax_tourian_climb_spark ; Tourian: Climb Spark
    dl $7E078D : db $02 : dw $AB34 ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $7FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6801 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $07A1 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01DA ; Samus X
    dl $7E0AFA : db $02 : dw $004B ; Samus Y
    dl $7ED90C : db $02 : dw $FF00 ; Events, Items, Doors
    dw #$FFFF
.after
