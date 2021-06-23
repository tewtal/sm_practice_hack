
preset_kpdr21_crateria_ship:
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
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $03D0 ; Screen Y position in pixels
    dl $7E093F : db $02 : dw $0000 ; Ceres escape flag
    dl $7E09A2 : db $02 : dw $0000 ; Equipped Items
    dl $7E09A4 : db $02 : dw $0000 ; Collected Items
    dl $7E09A6 : db $02 : dw $0000 ; Beams
    dl $7E09A8 : db $02 : dw $0000 ; Beams
    dl $7E09C0 : db $02 : dw $0000 ; Manual/Auto reserve tank
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E09C4 : db $02 : dw $0063 ; Max helath
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09C8 : db $02 : dw $0000 ; Max missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CC : db $02 : dw $0000 ; Max supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E09D0 : db $02 : dw $0000 ; Max pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
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
    dl $7ED7F8 : db $02 : dw $0026 ; SRAM copy
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

preset_kpdr21_crateria_parlor:
    dw #preset_kpdr21_crateria_ship ; Crateria: Ship
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0400 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0079 ; Samus X
    dl $7E0AFA : db $02 : dw $049B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_crateria_parlor_downback:
    dw #preset_kpdr21_crateria_parlor ; Crateria: Parlor
    dl $7E078D : db $02 : dw $8916 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02E9 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01A7 ; Samus X
    dl $7E0AFA : db $02 : dw $035B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_crateria_climb_down:
    dw #preset_kpdr21_crateria_parlor_downback ; Crateria: Parlor Downback
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $041F ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01A8 ; Samus X
    dl $7E0AFA : db $02 : dw $04BB ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_crateria_pit_room:
    dw #preset_kpdr21_crateria_climb_down ; Crateria: Climb Down
    dl $7E078D : db $02 : dw $898E ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $15BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E090F : db $02 : dw $6FFF ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0800 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01DB ; Samus X
    dl $7E0AFA : db $02 : dw $088B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_crateria_morph:
    dw #preset_kpdr21_crateria_pit_room ; Crateria: Pit Room
    dl $7E078D : db $02 : dw $8B9E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E9F ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0580 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dl $7ED91A : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_crateria_construction_zone:
    dw #preset_kpdr21_crateria_morph ; Crateria: Morph
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $0004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $0004 ; Collected Items
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $07AC ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED872 : db $02 : dw $0400 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_crateria_construction_zone_revisit:
    dw #preset_kpdr21_crateria_construction_zone ; Crateria: Construction Zone
    dl $7E078D : db $02 : dw $8EDA ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A107 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09C8 : db $02 : dw $0005 ; Max missiles
    dl $7E0AF6 : db $02 : dw $0055 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED874 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0002 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_crateria_pit_room_revisit:
    dw #preset_kpdr21_crateria_construction_zone_revisit ; Crateria: Construction Zone Revisit
    dl $7E078D : db $02 : dw $8EB6 ; DDB
    dl $7E079B : db $02 : dw $97B5 ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED91A : db $02 : dw $0003 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_crateria_climb_up:
    dw #preset_kpdr21_crateria_pit_room_revisit ; Crateria: Pit Room Revisit
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0083 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $0400 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0004 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_crateria_parlor_revisit:
    dw #preset_kpdr21_crateria_climb_up ; Crateria: Climb Up
    dl $7E078D : db $02 : dw $8B7A ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E0AF6 : db $02 : dw $01A0 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_crateria_flyway:
    dw #preset_kpdr21_crateria_parlor_revisit ; Crateria: Parlor Revisit
    dl $7E078D : db $02 : dw $8B3E ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2BFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01E6 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0369 ; Samus X
    dl $7E0AFA : db $02 : dw $026B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_crateria_bomb_torizo:
    dw #preset_kpdr21_crateria_flyway ; Crateria: Flyway
    dl $7E078D : db $02 : dw $8982 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $9879 ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0AF6 : db $02 : dw $02BE ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B2 : db $02 : dw $2400 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_crateria_alcatraz:
    dw #preset_kpdr21_crateria_bomb_torizo ; Crateria: Bomb Torizo
    dl $7E078D : db $02 : dw $8BAA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $2001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E09A2 : db $02 : dw $1004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0040 ; Samus X
    dl $7ED828 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED870 : db $02 : dw $0080 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0005 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_crateria_terminator:
    dw #preset_kpdr21_crateria_alcatraz ; Crateria: Alcatraz
    dl $7E078D : db $02 : dw $8BB6 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E090F : db $02 : dw $F400 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E0AF6 : db $02 : dw $0115 ; Samus X
    dl $7E0B3F : db $02 : dw $0104 ; Blue suit
    dw #$FFFF
.after

preset_kpdr21_crateria_green_pirate_shaft:
    dw #preset_kpdr21_crateria_terminator ; Crateria: Terminator
    dl $7E078D : db $02 : dw $895E ; DDB
    dl $7E079B : db $02 : dw $990D ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $9F00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01FC ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C4 : db $02 : dw $00C7 ; Max helath
    dl $7E0AF6 : db $02 : dw $0063 ; Samus X
    dl $7E0AFA : db $02 : dw $029B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED870 : db $02 : dw $0180 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0006 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_brinstar_green_brinstar_elevator:
    dw #preset_kpdr21_crateria_green_pirate_shaft ; Crateria: Green Pirate Shaft
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $C400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $008B ; Health
    dl $7E0AF6 : db $02 : dw $007E ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED91A : db $02 : dw $0008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_brinstar_early_supers:
    dw #preset_kpdr21_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dl $7E078D : db $02 : dw $8C0A ; DDB
    dl $7E078F : db $02 : dw $0009 ; DoorOut Index
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $041B ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00A5 ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dl $7ED8B4 : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0009 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_brinstar_dachora_room:
    dw #preset_kpdr21_brinstar_early_supers ; Brinstar: Early Supers
    dl $7E078D : db $02 : dw $8D4E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $061B ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0081 ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CC : db $02 : dw $0005 ; Max supers
    dl $7E0AF6 : db $02 : dw $0057 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED872 : db $02 : dw $0401 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0006 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $000C ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_brinstar_big_pink:
    dw #preset_kpdr21_brinstar_dachora_room ; Brinstar: Dachora Room
    dl $7E078D : db $02 : dw $8CE2 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $9CB3 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E0AF6 : db $02 : dw $069C ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_brinstar_green_hill_zone:
    dw #preset_kpdr21_brinstar_big_pink ; Brinstar: Big Pink
    dl $7E078D : db $02 : dw $8DAE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0611 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1000 ; Beams
    dl $7E09A8 : db $02 : dw $1000 ; Beams
    dl $7E09C6 : db $02 : dw $0007 ; Missiles
    dl $7E09C8 : db $02 : dw $000A ; Max missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $0365 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED872 : db $02 : dw $04C1 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0206 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $000F ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_brinstar_noob_bridge:
    dw #preset_kpdr21_brinstar_green_hill_zone ; Brinstar: Green Hill Zone
    dl $7E078D : db $02 : dw $8DEA ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E52 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0077 ; Health
    dl $7E0AF6 : db $02 : dw $07B9 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED91A : db $02 : dw $0010 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_brinstar_red_tower:
    dw #preset_kpdr21_brinstar_noob_bridge ; Brinstar: Noob Bridge
    dl $7E078D : db $02 : dw $8E92 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E0911 : db $02 : dw $0482 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $0522 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8B6 : db $02 : dw $0008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_brinstar_skree_boost:
    dw #preset_kpdr21_brinstar_red_tower ; Brinstar: Red Tower
    dl $7E078D : db $02 : dw $8F0A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $3001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $091A ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0056 ; Samus X
    dl $7E0AFA : db $02 : dw $098B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_brinstar_below_spazer:
    dw #preset_kpdr21_brinstar_skree_boost ; Brinstar: Skree Boost
    dl $7E078D : db $02 : dw $9042 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $A3DD ; MDB
    dl $7E090F : db $02 : dw $2FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $006D ; Health
    dl $7E0AF6 : db $02 : dw $01DC ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_brinstar_entering_kraids_lair:
    dw #preset_kpdr21_brinstar_below_spazer ; Brinstar: Below Spazer
    dl $7E078D : db $02 : dw $A348 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0006 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_brinstar_kraid_kihunters:
    dw #preset_kpdr21_brinstar_entering_kraids_lair ; Brinstar: Entering Kraids Lair
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
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $0167 ; Samus X
    dw #$FFFF
.after

preset_kpdr21_brinstar_mini_kraid:
    dw #preset_kpdr21_brinstar_kraid_kihunters ; Brinstar: Kraid Kihunters
    dl $7E078D : db $02 : dw $9156 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A4DA ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0059 ; Health
    dl $7E0AF6 : db $02 : dw $016B ; Samus X
    dl $7ED91A : db $02 : dw $0011 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_brinstar_kraid:
    dw #preset_kpdr21_brinstar_mini_kraid ; Brinstar: Mini Kraid
    dl $7E078D : db $02 : dw $919E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A56B ; MDB
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0043 ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E0AF6 : db $02 : dw $01C1 ; Samus X
    dl $7ED8B8 : db $02 : dw $0024 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_brinstar_leaving_varia:
    dw #preset_kpdr21_brinstar_kraid ; Brinstar: Kraid
    dl $7E078D : db $02 : dw $91DA ; DDB
    dl $7E079B : db $02 : dw $A6E2 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $1005 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1005 ; Collected Items
    dl $7E09C2 : db $02 : dw $0084 ; Health
    dl $7E09C6 : db $02 : dw $0007 ; Missiles
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED828 : db $02 : dw $0104 ; Events, Items, Doors
    dl $7ED876 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $0064 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0012 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_brinstar_mini_kraid_revisit:
    dw #preset_kpdr21_brinstar_leaving_varia ; Brinstar: Leaving Varia
    dl $7E078D : db $02 : dw $91CE ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A56B ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $007C ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0058 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8B8 : db $02 : dw $00E4 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_brinstar_kraid_kihunters_revisit:
    dw #preset_kpdr21_brinstar_mini_kraid_revisit ; Brinstar: Mini Kraid Revisit
    dl $7E078D : db $02 : dw $91AA ; DDB
    dl $7E079B : db $02 : dw $A521 ; MDB
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0004 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0AF6 : db $02 : dw $009A ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8B8 : db $02 : dw $00EC ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_brinstar_kraid_etank:
    dw #preset_kpdr21_brinstar_kraid_kihunters_revisit ; Brinstar: Kraid Kihunters Revisit
    dl $7E078D : db $02 : dw $916E ; DDB
    dl $7E079B : db $02 : dw $A471 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0051 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8B8 : db $02 : dw $00ED ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0013 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_business_center:
    dw #preset_kpdr21_brinstar_kraid_etank ; Brinstar: Kraid E-tank
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E079F : db $02 : dw $0002 ; Region
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0006 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_hi_jump_etank:
    dw #preset_kpdr21_upper_norfair_business_center ; Upper Norfair: Business Center
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E090F : db $02 : dw $EFFF ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $051B ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0041 ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED8B8 : db $02 : dw $20ED ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_leaving_hi_jump:
    dw #preset_kpdr21_upper_norfair_hi_jump_etank ; Upper Norfair: Hi Jump E-tank
    dl $7E078D : db $02 : dw $9426 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A9E5 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $1FFF ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $1105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1105 ; Collected Items
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C4 : db $02 : dw $012B ; Max helath
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00B5 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $0121 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0016 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_business_center_2:
    dw #preset_kpdr21_upper_norfair_leaving_hi_jump ; Upper Norfair: Leaving Hi Jump
    dl $7E078D : db $02 : dw $93F6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $AA41 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $000B ; Missiles
    dl $7E09C8 : db $02 : dw $000F ; Max missiles
    dl $7E0AF6 : db $02 : dw $019C ; Samus X
    dl $7ED876 : db $02 : dw $01A1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0018 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_precathedral:
    dw #preset_kpdr21_upper_norfair_business_center_2 ; Upper Norfair: Business Center 2
    dl $7E078D : db $02 : dw $941A ; DDB
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $53FE ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02F8 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $00A5 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_cathedral:
    dw #preset_kpdr21_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dl $7E078D : db $02 : dw $92CA ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7B3 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0009 ; Missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0AF6 : db $02 : dw $02A6 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B8 : db $02 : dw $24ED ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_rising_tide:
    dw #preset_kpdr21_upper_norfair_cathedral ; Upper Norfair: Cathedral
    dl $7E078D : db $02 : dw $92B2 ; DDB
    dl $7E079B : db $02 : dw $A788 ; MDB
    dl $7E090F : db $02 : dw $7FFF ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E0AF6 : db $02 : dw $02BB ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8B8 : db $02 : dw $26ED ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0019 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_bubble_mountain:
    dw #preset_kpdr21_upper_norfair_rising_tide ; Upper Norfair: Rising Tide
    dl $7E078D : db $02 : dw $929A ; DDB
    dl $7E079B : db $02 : dw $AFA3 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0115 ; Health
    dl $7E0AF6 : db $02 : dw $04AD ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_bat_cave:
    dw #preset_kpdr21_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dl $7E078D : db $02 : dw $973E ; DDB
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0110 ; Health
    dl $7E09C6 : db $02 : dw $0008 ; Missiles
    dl $7E0AF6 : db $02 : dw $01C2 ; Samus X
    dl $7ED8BA : db $02 : dw $0011 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001A ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_single_chamber:
    dw #preset_kpdr21_upper_norfair_bat_cave ; Upper Norfair: Bat Cave
    dl $7E078D : db $02 : dw $97AA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $BFFF ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0104 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $3105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3105 ; Collected Items
    dl $7E09C2 : db $02 : dw $0126 ; Health
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $01AD ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0020 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0031 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001E ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_double_chamber:
    dw #preset_kpdr21_upper_norfair_single_chamber ; Upper Norfair: Single Chamber
    dl $7E078D : db $02 : dw $9582 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011C ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0008 ; Missiles
    dl $7E0AF6 : db $02 : dw $00BE ; Samus X
    dl $7ED8BA : db $02 : dw $0071 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_double_chamber_revisit:
    dw #preset_kpdr21_upper_norfair_double_chamber ; Upper Norfair: Double Chamber
    dl $7E078D : db $02 : dw $961E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $ADDE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1001 ; Beams
    dl $7E09A8 : db $02 : dw $1001 ; Beams
    dl $7E09C6 : db $02 : dw $000D ; Missiles
    dl $7E09C8 : db $02 : dw $0014 ; Max missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0051 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED878 : db $02 : dw $001C ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $00F1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0020 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_single_chamber_revisit:
    dw #preset_kpdr21_upper_norfair_double_chamber_revisit ; Upper Norfair: Double Chamber Revisit
    dl $7E078D : db $02 : dw $962A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $ADAD ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $6000 ; Screen subpixel Y position
    dl $7E0AF6 : db $02 : dw $0050 ; Samus X
    dl $7ED91A : db $02 : dw $0021 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_bubble_mountain_revisit:
    dw #preset_kpdr21_upper_norfair_single_chamber_revisit ; Upper Norfair: Single Chamber Revisit
    dl $7E078D : db $02 : dw $9606 ; DDB
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0002 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $008F ; Samus X
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_frog_speedway:
    dw #preset_kpdr21_upper_norfair_bubble_mountain_revisit ; Upper Norfair: Bubble Mountain Revisit
    dl $7E078D : db $02 : dw $956A ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $AF72 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $008E ; Samus X
    dl $7ED91A : db $02 : dw $0022 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_business_center_3:
    dw #preset_kpdr21_upper_norfair_frog_speedway ; Upper Norfair: Frog Speedway
    dl $7E078D : db $02 : dw $97DA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B167 ; MDB
    dl $7E07C3 : db $02 : dw $860B ; GFX Pointers
    dl $7E07C5 : db $02 : dw $21C0 ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2C0 ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $A800 ; Screen subpixel Y position
    dl $7E0AF6 : db $02 : dw $0029 ; Samus X
    dw #$FFFF
.after

preset_kpdr21_red_brinstar_alpha_spark:
    dw #preset_kpdr21_upper_norfair_business_center_3 ; Upper Norfair: Business Center 3
    dl $7E078D : db $02 : dw $92EE ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0014 ; Missiles
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0086 ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_red_brinstar_reverse_skree_boost:
    dw #preset_kpdr21_red_brinstar_alpha_spark ; Red Brinstar: Alpha Spark
    dl $7E078D : db $02 : dw $A36C ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A408 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003F ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_red_brinstar_red_tower_climb:
    dw #preset_kpdr21_red_brinstar_reverse_skree_boost ; Red Brinstar: Reverse Skree Boost
    dl $7E078D : db $02 : dw $910E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A3DD ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0129 ; Health
    dl $7E0AF6 : db $02 : dw $0024 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_red_brinstar_hellway:
    dw #preset_kpdr21_red_brinstar_red_tower_climb ; Red Brinstar: Red Tower Climb
    dl $7E078D : db $02 : dw $90F6 ; DDB
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $008F ; Samus X
    dw #$FFFF
.after

preset_kpdr21_red_brinstar_caterpillars_down:
    dw #preset_kpdr21_red_brinstar_hellway ; Red Brinstar: Hellway
    dl $7E078D : db $02 : dw $901E ; DDB
    dl $7E079B : db $02 : dw $A2F7 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $01FB ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0119 ; Health
    dl $7E0AF6 : db $02 : dw $0291 ; Samus X
    dw #$FFFF
.after

preset_kpdr21_red_brinstar_alpha_power_bombs:
    dw #preset_kpdr21_red_brinstar_caterpillars_down ; Red Brinstar: Caterpillars Down
    dl $7E078D : db $02 : dw $908A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $071C ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0041 ; Samus X
    dl $7E0AFA : db $02 : dw $078B ; Samus Y
    dl $7ED8B6 : db $02 : dw $2008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_red_brinstar_caterpillars_up:
    dw #preset_kpdr21_red_brinstar_alpha_power_bombs ; Red Brinstar: Alpha Power Bombs
    dl $7E078D : db $02 : dw $9096 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A3AE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $010F ; Health
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E09D0 : db $02 : dw $0005 ; Max pbs
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02AF ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED874 : db $02 : dw $0104 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0024 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_crateria_kihunters:
    dw #preset_kpdr21_red_brinstar_caterpillars_up ; Red Brinstar: Caterpillars Up
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0123 ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0028 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0068 ; Samus X
    dl $7E0AFA : db $02 : dw $0060 ; Samus Y
    dl $7ED8B2 : db $02 : dw $2C01 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $3008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_oceanfly_setup:
    dw #preset_kpdr21_wrecked_ship_crateria_kihunters ; Wrecked Ship: Crateria Kihunters
    dl $7E078D : db $02 : dw $8AF6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $948C ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $8C00 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $3000 ; Screen subpixel Y position
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $002C ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B0 : db $02 : dw $6000 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_ocean_spark:
    dw #preset_kpdr21_wrecked_ship_oceanfly_setup ; Wrecked Ship: Oceanfly Setup
    dl $7E078D : db $02 : dw $8A36 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $95FF ; MDB
    dl $7E090F : db $02 : dw $A3FF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00EE ; Health
    dl $7E0AF6 : db $02 : dw $01C6 ; Samus X
    dl $7ED91A : db $02 : dw $0025 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_entering_wrecked_ship:
    dw #preset_kpdr21_wrecked_ship_ocean_spark ; Wrecked Ship: Ocean Spark
    dl $7E078D : db $02 : dw $8AEA ; DDB
    dl $7E079B : db $02 : dw $93FE ; MDB
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0400 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0074 ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $07DB ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dl $7ED8B0 : db $02 : dw $7000 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0028 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_basement:
    dw #preset_kpdr21_wrecked_ship_entering_wrecked_ship ; Wrecked Ship: Entering Wrecked Ship
    dl $7E078D : db $02 : dw $A1BC ; DDB
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E079F : db $02 : dw $0003 ; Region
    dl $7E07C3 : db $02 : dw $AE9E ; GFX Pointers
    dl $7E07C5 : db $02 : dw $A6BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B1 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $071F ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $0455 ; Samus X
    dl $7E0AFA : db $02 : dw $07BB ; Samus Y
    dl $7ED8C0 : db $02 : dw $0010 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0029 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_phantoon:
    dw #preset_kpdr21_wrecked_ship_basement ; Wrecked Ship: Basement
    dl $7E078D : db $02 : dw $A21C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $CC6F ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0AF6 : db $02 : dw $04CC ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C0 : db $02 : dw $0030 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_leaving_phantoon:
    dw #preset_kpdr21_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dl $7E078D : db $02 : dw $A2C4 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E07C5 : db $02 : dw $E7BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00E2 ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $04D6 ; Samus X
    dl $7ED82A : db $02 : dw $0100 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0070 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_shaft_to_supers:
    dw #preset_kpdr21_wrecked_ship_leaving_phantoon ; Wrecked Ship: Leaving Phantoon
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0226 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E0AF6 : db $02 : dw $02C4 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_wrecked_ship_shaft:
    dw #preset_kpdr21_wrecked_ship_shaft_to_supers ; Wrecked Ship: Shaft to Supers
    dl $7E078D : db $02 : dw $A210 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $CDA8 ; MDB
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CC : db $02 : dw $000A ; Max supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C4 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED880 : db $02 : dw $0020 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0074 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002B ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_attic:
    dw #preset_kpdr21_wrecked_ship_wrecked_ship_shaft ; Wrecked Ship: Wrecked Ship Shaft
    dl $7E078D : db $02 : dw $A2E8 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E090F : db $02 : dw $AC00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0AF6 : db $02 : dw $0445 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED91A : db $02 : dw $002C ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_upper_west_ocean:
    dw #preset_kpdr21_wrecked_ship_attic ; Wrecked Ship: Attic
    dl $7E078D : db $02 : dw $A228 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $CA52 ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C7FD ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00EE ; Health
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003B ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C0 : db $02 : dw $0174 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_pancakes_and_wavers:
    dw #preset_kpdr21_wrecked_ship_upper_west_ocean ; Wrecked Ship: Upper West Ocean
    dl $7E078D : db $02 : dw $A1E0 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $93FE ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01FC ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0102 ; Health
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02C2 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED91A : db $02 : dw $002F ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_bowling_spark:
    dw #preset_kpdr21_wrecked_ship_pancakes_and_wavers ; Wrecked Ship: Pancakes and Wavers
    dl $7E078D : db $02 : dw $89E2 ; DDB
    dl $7E079B : db $02 : dw $9461 ; MDB
    dl $7E090F : db $02 : dw $6800 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $016E ; Samus X
    dl $7E0AFA : db $02 : dw $009D ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_leaving_gravity:
    dw #preset_kpdr21_wrecked_ship_bowling_spark ; Wrecked Ship: Bowling Spark
    dl $7E078D : db $02 : dw $A1A4 ; DDB
    dl $7E079B : db $02 : dw $CE40 ; MDB
    dl $7E079F : db $02 : dw $0003 ; Region
    dl $7E07C3 : db $02 : dw $AE9E ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E7BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $3125 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3125 ; Collected Items
    dl $7E09C2 : db $02 : dw $00A9 ; Health
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED880 : db $02 : dw $00A0 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0032 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_moat_ball:
    dw #preset_kpdr21_wrecked_ship_leaving_gravity ; Wrecked Ship: Leaving Gravity
    dl $7E078D : db $02 : dw $A300 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $93FE ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00E4 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0445 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0184 ; Samus X
    dl $7E0AFA : db $02 : dw $04D0 ; Samus Y
    dl $7ED91A : db $02 : dw $0035 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_wrecked_ship_crateria_kihunters_return:
    dw #preset_kpdr21_wrecked_ship_moat_ball ; Wrecked Ship: Moat Ball
    dl $7E078D : db $02 : dw $89CA ; DDB
    dl $7E079B : db $02 : dw $95FF ; MDB
    dl $7E090F : db $02 : dw $8400 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0007 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $003B ; Samus X
    dl $7E0AFA : db $02 : dw $0097 ; Samus Y
    dl $7ED91A : db $02 : dw $0036 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_red_brinstar_final_red_tower_elevator:
    dw #preset_kpdr21_wrecked_ship_crateria_kihunters_return ; Wrecked Ship: Crateria Kihunters Return
    dl $7E078D : db $02 : dw $8B02 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00BD ; Health
    dl $7E09C6 : db $02 : dw $0012 ; Missiles
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_red_brinstar_final_hellway_revisit:
    dw #preset_kpdr21_red_brinstar_final_red_tower_elevator ; Red Brinstar Final: Red Tower Elevator
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0500 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0040 ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_red_brinstar_final_red_tower_down:
    dw #preset_kpdr21_red_brinstar_final_hellway_revisit ; Red Brinstar Final: Hellway Revisit
    dl $7E078D : db $02 : dw $90AE ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A2F7 ; MDB
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00B5 ; Health
    dl $7E0AF6 : db $02 : dw $003D ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_red_brinstar_final_skree_boost_final:
    dw #preset_kpdr21_red_brinstar_final_red_tower_down ; Red Brinstar Final: Red Tower Down
    dl $7E078D : db $02 : dw $907E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E090F : db $02 : dw $A001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $091A ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0054 ; Samus X
    dl $7E0AFA : db $02 : dw $098B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_red_brinstar_final_below_spazer_final:
    dw #preset_kpdr21_red_brinstar_final_skree_boost_final ; Red Brinstar Final: Skree Boost Final
    dl $7E078D : db $02 : dw $9042 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $A3DD ; MDB
    dl $7E090F : db $02 : dw $5FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00B4 ; Health
    dl $7E0AF6 : db $02 : dw $01DC ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_maridia_breaking_tube:
    dw #preset_kpdr21_red_brinstar_final_below_spazer_final ; Red Brinstar Final: Below Spazer Final
    dl $7E078D : db $02 : dw $911A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $CF54 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E0AF6 : db $02 : dw $002D ; Samus X
    dw #$FFFF
.after

preset_kpdr21_maridia_fish_tank:
    dw #preset_kpdr21_maridia_breaking_tube ; Maridia: Breaking Tube
    dl $7E078D : db $02 : dw $A330 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CFC9 ; MDB
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $4FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00FE ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $05F4 ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $0167 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED820 : db $02 : dw $0801 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0038 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_maridia_mt_everest:
    dw #preset_kpdr21_maridia_fish_tank ; Maridia: Fish Tank
    dl $7E078D : db $02 : dw $A3F0 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D0B9 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $BC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $031F ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $017C ; Samus X
    dl $7E0AFA : db $02 : dw $03BB ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_maridia_crab_shaft:
    dw #preset_kpdr21_maridia_mt_everest ; Maridia: Mt Everest
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C01 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0079 ; Health
    dl $7E0AF6 : db $02 : dw $05C0 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_maridia_aqueduct:
    dw #preset_kpdr21_maridia_crab_shaft ; Maridia: Crab Shaft
    dl $7E078D : db $02 : dw $A468 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $D1A3 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $83FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $01AD ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED8C0 : db $02 : dw $8174 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_maridia_botwoon_hallway:
    dw #preset_kpdr21_maridia_aqueduct ; Maridia: Aqueduct
    dl $7E078D : db $02 : dw $A4C8 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D5A7 ; MDB
    dl $7E07C3 : db $02 : dw $E78D ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2EBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B9 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $009D ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED91A : db $02 : dw $003A ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_maridia_botwoon:
    dw #preset_kpdr21_maridia_botwoon_hallway ; Maridia: Botwoon Hallway
    dl $7E078D : db $02 : dw $A72C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $D617 ; MDB
    dl $7E090F : db $02 : dw $DFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5800 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $03A4 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_maridia_botwoon_etank:
    dw #preset_kpdr21_maridia_botwoon ; Maridia: Botwoon
    dl $7E078D : db $02 : dw $A774 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D95E ; MDB
    dl $7E07F3 : db $02 : dw $002A ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00A1 ; Health
    dl $7E09C6 : db $02 : dw $0014 ; Missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0AF6 : db $02 : dw $01C6 ; Samus X
    dl $7ED82C : db $02 : dw $0002 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_maridia_halfie_setup:
    dw #preset_kpdr21_maridia_botwoon_etank ; Maridia: Botwoon E-tank
    dl $7E078D : db $02 : dw $A918 ; DDB
    dl $7E079B : db $02 : dw $D7E4 ; MDB
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09C4 : db $02 : dw $018F ; Max helath
    dl $7E0AF6 : db $02 : dw $008D ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED882 : db $02 : dw $0100 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003B ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_maridia_draygon:
    dw #preset_kpdr21_maridia_halfie_setup ; Maridia: Halfie Setup
    dl $7E078D : db $02 : dw $A7F8 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D78F ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0110 ; Health
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0041 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C2 : db $02 : dw $0C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003C ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_maridia_reverse_halfie_spikesuit:
    dw #preset_kpdr21_maridia_draygon ; Maridia: Draygon
    dl $7E078D : db $02 : dw $A96C ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $3325 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3325 ; Collected Items
    dl $7E09C2 : db $02 : dw $00BA ; Health
    dl $7E09C6 : db $02 : dw $000D ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A68 : db $02 : dw $0001 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0044 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED82C : db $02 : dw $0003 ; Events, Items, Doors
    dl $7ED882 : db $02 : dw $0500 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $CC00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003E ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_maridia_womple_jump:
    dw #preset_kpdr21_maridia_reverse_halfie_spikesuit ; Maridia: Reverse Halfie (Spikesuit)
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dw #$FFFF
.after

preset_kpdr21_maridia_cac_alley_east:
    dw #preset_kpdr21_maridia_womple_jump ; Maridia: Womple Jump
    dl $7E078D : db $02 : dw $A7E0 ; DDB
    dl $7E079B : db $02 : dw $D913 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $011A ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00BA ; Health
    dl $7E09C6 : db $02 : dw $000C ; Missiles
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0030 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8C2 : db $02 : dw $DC00 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_maridia_cac_alley_west:
    dw #preset_kpdr21_maridia_cac_alley_east ; Maridia: Cac Alley East
    dl $7E078D : db $02 : dw $A900 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $DA2B ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $0002 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $000B ; Missiles
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0AF6 : db $02 : dw $005B ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_maridia_plasma_spark:
    dw #preset_kpdr21_maridia_cac_alley_west ; Maridia: Cac Alley West
    dl $7E078D : db $02 : dw $A93C ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D5EC ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E0AF6 : db $02 : dw $0024 ; Samus X
    dw #$FFFF
.after

preset_kpdr21_maridia_plasma_climb:
    dw #preset_kpdr21_maridia_plasma_spark ; Maridia: Plasma Spark
    dl $7E078D : db $02 : dw $A750 ; DDB
    dl $7E079B : db $02 : dw $D340 ; MDB
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E090F : db $02 : dw $FFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00F3 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $027F ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_maridia_plasma_beam:
    dw #preset_kpdr21_maridia_plasma_climb ; Maridia: Plasma Climb
    dl $7E078D : db $02 : dw $A5DC ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D27E ; MDB
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0095 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C2 : db $02 : dw $DC08 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_maridia_plasma_spark_revisit:
    dw #preset_kpdr21_maridia_plasma_beam ; Maridia: Plasma Beam
    dl $7E078D : db $02 : dw $A540 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D387 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $031A ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1009 ; Beams
    dl $7E09A8 : db $02 : dw $1009 ; Beams
    dl $7E09C2 : db $02 : dw $00A4 ; Health
    dl $7E09C6 : db $02 : dw $0011 ; Missiles
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED880 : db $02 : dw $80A0 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $DC0A ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003F ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_maridia_toilet:
    dw #preset_kpdr21_maridia_plasma_spark_revisit ; Maridia: Plasma Spark Revisit
    dl $7E078D : db $02 : dw $A5D0 ; DDB
    dl $7E079B : db $02 : dw $D340 ; MDB
    dl $7E0911 : db $02 : dw $002E ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00A9 ; Health
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0AF6 : db $02 : dw $00A3 ; Samus X
    dl $7E0AFA : db $02 : dw $02AB ; Samus Y
    dl $7ED8C2 : db $02 : dw $DC1A ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_maridia_sewers:
    dw #preset_kpdr21_maridia_toilet ; Maridia: Toilet
    dl $7E078D : db $02 : dw $A600 ; DDB
    dl $7E079B : db $02 : dw $D48E ; MDB
    dl $7E07C3 : db $02 : dw $E78D ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2EBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B9 ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011C ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $00BB ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_maridia_lower_maridia_gate:
    dw #preset_kpdr21_maridia_sewers ; Maridia: Sewers
    dl $7E078D : db $02 : dw $A528 ; DDB
    dl $7E079B : db $02 : dw $D21C ; MDB
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $5C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00AE ; Health
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_revisit_ice_beam_gates:
    dw #preset_kpdr21_maridia_lower_maridia_gate ; Maridia: Lower Maridia Gate
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E079F : db $02 : dw $0002 ; Region
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0326 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0AF6 : db $02 : dw $0032 ; Samus X
    dl $7E0AFA : db $02 : dw $0395 ; Samus Y
    dl $7ED8B8 : db $02 : dw $2EED ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_revisit_ice_maze_up:
    dw #preset_kpdr21_upper_norfair_revisit_ice_beam_gates ; Upper Norfair Revisit: Ice Beam Gates
    dl $7E078D : db $02 : dw $931E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A75D ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_revisit_ice_maze_down:
    dw #preset_kpdr21_upper_norfair_revisit_ice_maze_up ; Upper Norfair Revisit: Ice Maze Up
    dl $7E078D : db $02 : dw $937E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A890 ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E09A6 : db $02 : dw $100B ; Beams
    dl $7E09A8 : db $02 : dw $100B ; Beams
    dl $7E09C2 : db $02 : dw $00BD ; Health
    dl $7E0AF6 : db $02 : dw $00BA ; Samus X
    dl $7ED876 : db $02 : dw $01A5 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0040 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_revisit_ice_escape:
    dw #preset_kpdr21_upper_norfair_revisit_ice_maze_down ; Upper Norfair Revisit: Ice Maze Down
    dl $7E078D : db $02 : dw $935A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A8B9 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C5 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_revisit_purple_shaft_upper:
    dw #preset_kpdr21_upper_norfair_revisit_ice_escape ; Upper Norfair Revisit: Ice Escape
    dl $7E078D : db $02 : dw $971A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0036 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED91A : db $02 : dw $0041 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_revisit_magdollite_tunnel_upper:
    dw #preset_kpdr21_upper_norfair_revisit_purple_shaft_upper ; Upper Norfair Revisit: Purple Shaft (Upper)
    dl $7E078D : db $02 : dw $9576 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $AEDF ; MDB
    dl $7E090F : db $02 : dw $B001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01F4 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0059 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_revisit_kronic_boost_upper:
    dw #preset_kpdr21_upper_norfair_revisit_magdollite_tunnel_upper ; Upper Norfair Revisit: Magdollite Tunnel (Upper)
    dl $7E078D : db $02 : dw $96BA ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $AEB4 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $02B7 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_revisit_croc_speedway_lower:
    dw #preset_kpdr21_upper_norfair_revisit_ice_escape ; Upper Norfair Revisit: Ice Escape
    dl $7E078D : db $02 : dw $9336 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $A8F8 ; MDB
    dl $7E090F : db $02 : dw $6781 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $00DD ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED91A : db $02 : dw $0041 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_revisit_spiky_acid_snakes_lower:
    dw #preset_kpdr21_upper_norfair_revisit_croc_speedway_lower ; Upper Norfair Revisit: Croc Speedway (Lower)
    dl $7E078D : db $02 : dw $93C6 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $AFCE ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $02A3 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $030E ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dw #$FFFF
.after

preset_kpdr21_upper_norfair_revisit_kronic_boost_lower:
    dw #preset_kpdr21_upper_norfair_revisit_spiky_acid_snakes_lower ; Upper Norfair Revisit: Spiky Acid Snakes (Lower)
    dl $7E078D : db $02 : dw $9792 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $AFFB ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0AF6 : db $02 : dw $03BC ; Samus X
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_ln_main_hall:
    dw #preset_kpdr21_upper_norfair_revisit_kronic_boost_upper ; Upper Norfair Revisit: Kronic Boost (Upper)
    dl $7E078D : db $02 : dw $96F6 ; DDB
    dl $7E079B : db $02 : dw $B236 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00BA ; Health
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0480 ; Samus X
    dl $7E0AFA : db $02 : dw $0288 ; Samus Y
    dl $7ED8BA : db $02 : dw $01F1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_prepillars:
    dw #preset_kpdr21_lower_norfair_ln_main_hall ; Lower Norfair: LN Main Hall
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $07A2 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_worst_room_in_the_game:
    dw #preset_kpdr21_lower_norfair_prepillars ; Lower Norfair: Pre-Pillars
    dl $7E078D : db $02 : dw $9912 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $B457 ; MDB
    dl $7E090F : db $02 : dw $64FF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0070 ; Health
    dl $7E09C6 : db $02 : dw $0013 ; Missiles
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0AF6 : db $02 : dw $03DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_amphitheatre:
    dw #preset_kpdr21_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room in the Game
    dl $7E078D : db $02 : dw $994E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B4AD ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011D ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0084 ; Health
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $00A7 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_kihunter_stairs_down:
    dw #preset_kpdr21_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dl $7E078D : db $02 : dw $997E ; DDB
    dl $7E079B : db $02 : dw $B4E5 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0282 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0043 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $02E2 ; Samus X
    dl $7E0AFA : db $02 : dw $00B3 ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_wasteland:
    dw #preset_kpdr21_lower_norfair_kihunter_stairs_down ; Lower Norfair: Kihunter Stairs Down
    dl $7E078D : db $02 : dw $99A2 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0419 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00AC ; Health
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0A1C : db $02 : dw $001D ; Samus position/state
    dl $7E0A1E : db $02 : dw $0408 ; More position/state
    dl $7E0AF6 : db $02 : dw $0248 ; Samus X
    dl $7E0AFA : db $02 : dw $0489 ; Samus Y
    dl $7ED8BA : db $02 : dw $41F1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_metal_ninja_pirates:
    dw #preset_kpdr21_lower_norfair_wasteland ; Lower Norfair: Wasteland
    dl $7E078D : db $02 : dw $99EA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $021B ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0087 ; Health
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0168 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8BA : db $02 : dw $C1F1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0042 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_plowerhouse:
    dw #preset_kpdr21_lower_norfair_metal_ninja_pirates ; Lower Norfair: Metal Ninja Pirates
    dl $7E078D : db $02 : dw $9A1A ; DDB
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0122 ; Health
    dl $7E09C6 : db $02 : dw $0014 ; Missiles
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0AF6 : db $02 : dw $006A ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED8BC : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_ridley:
    dw #preset_kpdr21_lower_norfair_plowerhouse ; Lower Norfair: Plowerhouse
    dl $7E078D : db $02 : dw $995A ; DDB
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00E3 ; Health
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E0AF6 : db $02 : dw $003D ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED8BA : db $02 : dw $D1F1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_leaving_ridley:
    dw #preset_kpdr21_lower_norfair_ridley ; Lower Norfair: Ridley
    dl $7E078D : db $02 : dw $98CA ; DDB
    dl $7E079B : db $02 : dw $B32E ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $3C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00D9 ; Health
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0057 ; Samus X
    dl $7E0AFA : db $02 : dw $019B ; Samus Y
    dl $7ED82A : db $02 : dw $0101 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_reverse_plowerhouse:
    dw #preset_kpdr21_lower_norfair_leaving_ridley ; Lower Norfair: Leaving Ridley
    dl $7E078D : db $02 : dw $98BE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00D6 ; Health
    dl $7E0AF6 : db $02 : dw $02B8 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8BA : db $02 : dw $D5F1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_wasteland_revisit:
    dw #preset_kpdr21_lower_norfair_reverse_plowerhouse ; Lower Norfair: Reverse Plowerhouse
    dl $7E078D : db $02 : dw $9966 ; DDB
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00B4 ; Health
    dl $7E0AF6 : db $02 : dw $02DC ; Samus X
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_kihunter_stairs_up:
    dw #preset_kpdr21_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dl $7E078D : db $02 : dw $9A3E ; DDB
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $D5FF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00B2 ; Health
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0AF6 : db $02 : dw $055B ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED91A : db $02 : dw $0043 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_fire_flea_room:
    dw #preset_kpdr21_lower_norfair_kihunter_stairs_up ; Lower Norfair: Kihunter Stairs Up
    dl $7E078D : db $02 : dw $9A26 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $000D ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $00B7 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_springball_maze:
    dw #preset_kpdr21_lower_norfair_fire_flea_room ; Lower Norfair: Fire Flea Room
    dl $7E078D : db $02 : dw $9A02 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $B6EE ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0001 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $016C ; Samus X
    dl $7ED91A : db $02 : dw $0044 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_three_musketeers:
    dw #preset_kpdr21_lower_norfair_springball_maze ; Lower Norfair: Springball Maze
    dl $7E078D : db $02 : dw $9A92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B510 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $5A81 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0003 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0060 ; Samus X
    dl $7ED91A : db $02 : dw $0045 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_single_chamber_final:
    dw #preset_kpdr21_lower_norfair_three_musketeers ; Lower Norfair: Three Musketeers
    dl $7E078D : db $02 : dw $99AE ; DDB
    dl $7E079B : db $02 : dw $B656 ; MDB
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0080 ; Health
    dl $7E0AF6 : db $02 : dw $016E ; Samus X
    dl $7ED91A : db $02 : dw $0046 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_bubble_mountain_final:
    dw #preset_kpdr21_lower_norfair_single_chamber_final ; Lower Norfair: Single Chamber Final
    dl $7E078D : db $02 : dw $9A4A ; DDB
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0016 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0074 ; Health
    dl $7E0AF6 : db $02 : dw $0075 ; Samus X
    dw #$FFFF
.after

preset_kpdr21_lower_norfair_business_center_final:
    dw #preset_kpdr21_lower_norfair_bubble_mountain_final ; Lower Norfair: Bubble Mountain Final
    dl $7E078D : db $02 : dw $97DA ; DDB
    dl $7E079B : db $02 : dw $B167 ; MDB
    dl $7E07C3 : db $02 : dw $860B ; GFX Pointers
    dl $7E07C5 : db $02 : dw $21C0 ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2C0 ; GFX Pointers
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0088 ; Health
    dl $7E09C6 : db $02 : dw $0011 ; Missiles
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E0AF6 : db $02 : dw $0032 ; Samus X
    dl $7ED91A : db $02 : dw $0047 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_backtracking_maridia_tube_revisit:
    dw #preset_kpdr21_lower_norfair_business_center_final ; Lower Norfair: Business Center Final
    dl $7E078D : db $02 : dw $92EE ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0086 ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_backtracking_fish_tank_revisit:
    dw #preset_kpdr21_backtracking_maridia_tube_revisit ; Backtracking: Maridia Tube Revisit
    dl $7E078D : db $02 : dw $A330 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CFC9 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E0911 : db $02 : dw $00FA ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $05F3 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0168 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED91A : db $02 : dw $0049 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_backtracking_mt_everest_revisit_revisit:
    dw #preset_kpdr21_backtracking_fish_tank_revisit ; Backtracking: Fish Tank Revisit
    dl $7E078D : db $02 : dw $A3B4 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D017 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0068 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C8 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_backtracking_red_brinstar_green_gate:
    dw #preset_kpdr21_backtracking_mt_everest_revisit_revisit ; Backtracking: Mt Everest Revisit Revisit
    dl $7E078D : db $02 : dw $A42C ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D104 ; MDB
    dl $7E090F : db $02 : dw $3801 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E0AF6 : db $02 : dw $0079 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_backtracking_crateria_kihunters_final:
    dw #preset_kpdr21_backtracking_red_brinstar_green_gate ; Backtracking: Red Brinstar Green Gate
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0063 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_backtracking_parlor_spacejump:
    dw #preset_kpdr21_backtracking_crateria_kihunters_final ; Backtracking: Crateria Kihunters Final
    dl $7E078D : db $02 : dw $8AC6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $91F8 ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $05DC ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0400 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0010 ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $067C ; Samus X
    dl $7E0AFA : db $02 : dw $04BB ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_backtracking_terminator_revisit:
    dw #preset_kpdr21_backtracking_parlor_spacejump ; Backtracking: Parlor Spacejump
    dl $7E078D : db $02 : dw $8916 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $001C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0304 ; More position/state
    dl $7E0AF6 : db $02 : dw $0101 ; Samus X
    dl $7E0AFA : db $02 : dw $0086 ; Samus Y
    dl $7E0B3F : db $02 : dw $0104 ; Blue suit
    dw #$FFFF
.after

preset_kpdr21_backtracking_green_pirate_shaft_revisit:
    dw #preset_kpdr21_backtracking_terminator_revisit ; Backtracking: Terminator Revisit
    dl $7E078D : db $02 : dw $895E ; DDB
    dl $7E079B : db $02 : dw $990D ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0073 ; Samus X
    dl $7E0AFA : db $02 : dw $029B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED91A : db $02 : dw $004A ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_tourian_metroids_1:
    dw #preset_kpdr21_backtracking_green_pirate_shaft_revisit ; Backtracking: Green Pirate Shaft Revisit
    dl $7E078D : db $02 : dw $9222 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $DAAE ; MDB
    dl $7E079F : db $02 : dw $0005 ; Region
    dl $7E07C3 : db $02 : dw $D414 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $EDBF ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2BA ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00B0 ; Health
    dl $7E09C6 : db $02 : dw $0012 ; Missiles
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dl $7ED820 : db $02 : dw $0FC1 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $6C01 ; Events, Items, Doors
    dl $7ED90C : db $02 : dw $0100 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004C ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_tourian_metroids_2:
    dw #preset_kpdr21_tourian_metroids_1 ; Tourian: Metroids 1
    dl $7E078D : db $02 : dw $A984 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $DAE1 ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00EC ; Health
    dl $7E09C6 : db $02 : dw $0014 ; Missiles
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003B ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED822 : db $02 : dw $0021 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_tourian_metroids_3:
    dw #preset_kpdr21_tourian_metroids_2 ; Tourian: Metroids 2
    dl $7E078D : db $02 : dw $A9B4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $DB31 ; MDB
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0109 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0164 ; Health
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C2 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0023 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0003 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_tourian_metroids_4:
    dw #preset_kpdr21_tourian_metroids_3 ; Tourian: Metroids 3
    dl $7E078D : db $02 : dw $A9CC ; DDB
    dl $7E079B : db $02 : dw $DB7D ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E0AF6 : db $02 : dw $059E ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED822 : db $02 : dw $0027 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0007 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_tourian_giant_hoppers:
    dw #preset_kpdr21_tourian_metroids_4 ; Tourian: Metroids 4
    dl $7E078D : db $02 : dw $A9E4 ; DDB
    dl $7E079B : db $02 : dw $DBCD ; MDB
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0AF6 : db $02 : dw $0058 ; Samus X
    dl $7E0AFA : db $02 : dw $01CB ; Samus Y
    dl $7ED822 : db $02 : dw $002F ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $000F ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_tourian_baby_skip:
    dw #preset_kpdr21_tourian_giant_hoppers ; Tourian: Giant Hoppers
    dl $7E078D : db $02 : dw $AA14 ; DDB
    dl $7E079B : db $02 : dw $DC65 ; MDB
    dl $7E07F3 : db $02 : dw $0045 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0171 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01D8 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dw #$FFFF
.after

preset_kpdr21_tourian_gedora_room:
    dw #preset_kpdr21_tourian_baby_skip ; Tourian: Baby Skip
    dl $7E078D : db $02 : dw $AA44 ; DDB
    dl $7E079B : db $02 : dw $DCFF ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0117 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00DC ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8C4 : db $02 : dw $00AF ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_tourian_zeb_skip:
    dw #preset_kpdr21_tourian_gedora_room ; Tourian: Gedora Room
    dl $7E078D : db $02 : dw $AAA4 ; DDB
    dl $7E079B : db $02 : dw $DDF3 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021A ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0038 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C4 : db $02 : dw $03AF ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_tourian_escape_room_3:
    dw #preset_kpdr21_tourian_zeb_skip ; Tourian: Zeb Skip
    dl $7E078D : db $02 : dw $AAEC ; DDB
    dl $7E079B : db $02 : dw $DE7A ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1009 ; Beams
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0A76 : db $02 : dw $8000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $00DF ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED820 : db $02 : dw $4FC5 ; Events, Items, Doors
    dl $7ED82C : db $02 : dw $0203 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr21_tourian_climb_spark:
    dw #preset_kpdr21_tourian_escape_room_3 ; Tourian: Escape Room 3
    dl $7E078D : db $02 : dw $AB1C ; DDB
    dl $7E079B : db $02 : dw $DEDE ; MDB
    dl $7E0911 : db $02 : dw $00F6 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00EF ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0171 ; Health
    dl $7E0AF6 : db $02 : dw $0156 ; Samus X
    dw #$FFFF
.after

preset_kpdr21_tourian_escape_parlor:
    dw #preset_kpdr21_tourian_climb_spark ; Tourian: Climb Spark
    dl $7E078D : db $02 : dw $AB34 ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $BFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6801 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00DE ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01DA ; Samus X
    dl $7E0AFA : db $02 : dw $004B ; Samus Y
    dl $7ED90C : db $02 : dw $FF00 ; Events, Items, Doors
    dw #$FFFF
.after
