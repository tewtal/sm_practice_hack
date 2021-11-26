
preset_100early_crateria_ceres_elevator:
    dw #$0000
    dl $7E078B : db $02 : dw $0000 ; Elevator Index
    dl $7E078D : db $02 : dw $AB58 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $DF45 ; MDB
    dl $7E079F : db $02 : dw $0006 ; Region
    dl $7E07C3 : db $02 : dw $E22A ; GFX Pointers
    dl $7E07C5 : db $02 : dw $04C0 ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2C1 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $002D ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
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
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E09D4 : db $02 : dw $0000 ; Max reserves
    dl $7E09D6 : db $02 : dw $0000 ; Reserves
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0A76 : db $02 : dw $0000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0048 ; Samus Y
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
    dl $7ED7F8 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7FA : db $02 : dw $0000 ; SRAM copy
    dl $7ED7FC : db $02 : dw $0000 ; SRAM copy
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
    dl $7ED82E : db $02 : dw $0000 ; Events, Items, Doors
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
    dl $7ED8F8 : db $02 : dw $0000 ; Events, Items, Doors
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
    dl $7ED914 : db $02 : dw $001F ; Events, Items, Doors
    dl $7ED916 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED918 : db $02 : dw $0006 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED91C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED91E : db $02 : dw $0000 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_crateria_ceres_last_3_rooms:
    dw #preset_100early_crateria_ceres_elevator ; Crateria: Ceres Elevator
    dl $7E078D : db $02 : dw $ABA0 ; DDB
    dl $7E079B : db $02 : dw $E021 ; MDB
    dl $7E07C3 : db $02 : dw $B004 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E3C0 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $0900 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E093F : db $02 : dw $0002 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0018 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0047 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED82E : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_crateria_ship:
    dw #preset_100early_crateria_ceres_last_3_rooms ; Crateria: Ceres Last 3 Rooms
    dl $7E078D : db $02 : dw $88FE ; DDB
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
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0481 ; Samus X
    dl $7E0AFA : db $02 : dw $0440 ; Samus Y
    dl $7ED7F8 : db $02 : dw $0001 ; SRAM copy
    dl $7ED7FA : db $02 : dw $0007 ; SRAM copy
    dl $7ED7FC : db $02 : dw $0001 ; SRAM copy
    dl $7ED8F8 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED914 : db $02 : dw $0005 ; Events, Items, Doors
    dl $7ED918 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED91C : db $02 : dw $1010 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_crateria_pit_room:
    dw #preset_100early_crateria_ship ; Crateria: Ship
    dl $7E078D : db $02 : dw $898E ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $15BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0800 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01DB ; Samus X
    dl $7E0AFA : db $02 : dw $088B ; Samus Y
    dw #$FFFF
.after

preset_100early_crateria_morph:
    dw #preset_100early_crateria_pit_room ; Crateria: Pit Room
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

preset_100early_crateria_pit_room_revisit:
    dw #preset_100early_crateria_morph ; Crateria: Morph
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
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $0004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $0004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09C8 : db $02 : dw $0005 ; Max missiles
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED872 : db $02 : dw $0400 ; Events, Items, Doors
    dl $7ED874 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0003 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_crateria_climb:
    dw #preset_100early_crateria_pit_room_revisit ; Crateria: Pit Room Revisit
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0087 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $0400 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0004 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_crateria_parlor_revisit:
    dw #preset_100early_crateria_climb ; Crateria: Climb
    dl $7E078D : db $02 : dw $8B7A ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E0AF6 : db $02 : dw $019F ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_100early_crateria_bomb_torizo:
    dw #preset_100early_crateria_parlor_revisit ; Crateria: Parlor Revisit
    dl $7E078D : db $02 : dw $8982 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $9879 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02C8 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B2 : db $02 : dw $2400 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_crateria_alcatraz:
    dw #preset_100early_crateria_bomb_torizo ; Crateria: Bomb Torizo
    dl $7E078D : db $02 : dw $8BAA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $1004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0037 ; Samus X
    dl $7ED828 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED870 : db $02 : dw $0080 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0005 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_crateria_terminator:
    dw #preset_100early_crateria_alcatraz ; Crateria: Alcatraz
    dl $7E078D : db $02 : dw $8BB6 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5800 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $008A ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0115 ; Samus X
    dw #$FFFF
.after

preset_100early_crateria_green_pirate_shaft:
    dw #preset_100early_crateria_terminator ; Crateria: Terminator
    dl $7E078D : db $02 : dw $895E ; DDB
    dl $7E079B : db $02 : dw $990D ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01FD ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C4 : db $02 : dw $00C7 ; Max health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0077 ; Samus X
    dl $7E0AFA : db $02 : dw $029B ; Samus Y
    dl $7ED870 : db $02 : dw $0180 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0006 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_green_brinstar:
    dw #preset_100early_crateria_green_pirate_shaft ; Crateria: Green Pirate Shaft
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $008B ; Health
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED91A : db $02 : dw $0008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_early_supers:
    dw #preset_100early_brinstar_green_brinstar ; Brinstar: Green Brinstar
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
    dl $7E0915 : db $02 : dw $041C ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00A6 ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dl $7ED8B4 : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0009 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_reverse_mockball:
    dw #preset_100early_brinstar_early_supers ; Brinstar: Early Supers
    dl $7E078D : db $02 : dw $8D5A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9C07 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $3400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C0 : db $02 : dw $0001 ; Manual/Auto reserve tank
    dl $7E09C2 : db $02 : dw $0077 ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09C8 : db $02 : dw $000F ; Max missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CC : db $02 : dw $0005 ; Max supers
    dl $7E09D4 : db $02 : dw $0064 ; Max reserves
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0044 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED872 : db $02 : dw $040F ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0042 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $000E ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_dachora_room:
    dw #preset_100early_brinstar_reverse_mockball ; Brinstar: Reverse Mockball
    dl $7E078D : db $02 : dw $8D4E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $061A ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09C8 : db $02 : dw $0014 ; Max missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0056 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED870 : db $02 : dw $8180 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0046 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0011 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_big_pink:
    dw #preset_100early_brinstar_dachora_room ; Brinstar: Dachora Room
    dl $7E078D : db $02 : dw $8CE2 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $9CB3 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $008B ; Health
    dl $7E0AF6 : db $02 : dw $06A3 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_100early_brinstar_green_hill_zone:
    dw #preset_100early_brinstar_big_pink ; Brinstar: Big Pink
    dl $7E078D : db $02 : dw $8DAE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $73FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0617 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1000 ; Beams
    dl $7E09A8 : db $02 : dw $1000 ; Beams
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0AF6 : db $02 : dw $0382 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED872 : db $02 : dw $048F ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0246 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0014 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_red_tower:
    dw #preset_100early_brinstar_green_hill_zone ; Brinstar: Green Hill Zone
    dl $7E078D : db $02 : dw $8E92 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $0568 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8B6 : db $02 : dw $0008 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0015 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_skree_boost:
    dw #preset_100early_brinstar_red_tower ; Brinstar: Red Tower
    dl $7E078D : db $02 : dw $8F0A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $091A ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0066 ; Samus X
    dl $7E0AFA : db $02 : dw $098B ; Samus Y
    dw #$FFFF
.after

preset_100early_brinstar_kraid_entry:
    dw #preset_100early_brinstar_skree_boost ; Brinstar: Skree Boost
    dl $7E078D : db $02 : dw $A348 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1004 ; Beams
    dl $7E09A8 : db $02 : dw $1004 ; Beams
    dl $7E09C2 : db $02 : dw $008C ; Health
    dl $7E0AF6 : db $02 : dw $0050 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED874 : db $02 : dw $0404 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $8008 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0016 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_kraid:
    dw #preset_100early_brinstar_kraid_entry ; Brinstar: Kraid Entry
    dl $7E078D : db $02 : dw $919E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A56B ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0062 ; Health
    dl $7E09C6 : db $02 : dw $000D ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $01C0 ; Samus X
    dl $7ED8B8 : db $02 : dw $0024 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0017 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_leaving_varia:
    dw #preset_100early_brinstar_kraid ; Brinstar: Kraid
    dl $7E078D : db $02 : dw $91DA ; DDB
    dl $7E079B : db $02 : dw $A6E2 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $1005 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1005 ; Collected Items
    dl $7E09C2 : db $02 : dw $00A1 ; Health
    dl $7E09C6 : db $02 : dw $0011 ; Missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED828 : db $02 : dw $0104 ; Events, Items, Doors
    dl $7ED876 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $0064 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0018 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_leaving_kraid_hallway:
    dw #preset_100early_brinstar_leaving_varia ; Brinstar: Leaving Varia
    dl $7E078D : db $02 : dw $91AA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A521 ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0099 ; Health
    dl $7E09C6 : db $02 : dw $0010 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0087 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8B8 : db $02 : dw $00EC ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_leaving_kraid_etank:
    dw #preset_100early_brinstar_leaving_kraid_hallway ; Brinstar: Leaving Kraid Hallway
    dl $7E078D : db $02 : dw $914A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A4B1 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $1C00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C4 : db $02 : dw $012B ; Max health
    dl $7E09D6 : db $02 : dw $0014 ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $008D ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED874 : db $02 : dw $0C04 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $00EF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001A ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_business_center:
    dw #preset_100early_brinstar_leaving_kraid_etank ; Brinstar: Leaving Kraid E-Tank
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E079F : db $02 : dw $0002 ; Region
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0012 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dw #$FFFF
.after

preset_100early_upper_norfair_hijump:
    dw #preset_100early_upper_norfair_business_center ; Upper Norfair: Business Center
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $051B ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0046 ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED8B8 : db $02 : dw $20EF ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_business_center_climb:
    dw #preset_100early_upper_norfair_hijump ; Upper Norfair: Hi-Jump
    dl $7E078D : db $02 : dw $93F6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $AA41 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $1105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1105 ; Collected Items
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09C4 : db $02 : dw $018F ; Max health
    dl $7E09C6 : db $02 : dw $0017 ; Missiles
    dl $7E09C8 : db $02 : dw $0019 ; Max missiles
    dl $7E09D6 : db $02 : dw $0028 ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01A3 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $01A1 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001F ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_precathedral:
    dw #preset_100early_upper_norfair_business_center_climb ; Upper Norfair: Business Center Climb
    dl $7E078D : db $02 : dw $941A ; DDB
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $BFFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02F6 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $00AB ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dw #$FFFF
.after

preset_100early_upper_norfair_cathedral:
    dw #preset_100early_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dl $7E078D : db $02 : dw $92CA ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7B3 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0001 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0AF6 : db $02 : dw $02A4 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B8 : db $02 : dw $24EF ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_rising_tide:
    dw #preset_100early_upper_norfair_cathedral ; Upper Norfair: Cathedral
    dl $7E078D : db $02 : dw $92B2 ; DDB
    dl $7E079B : db $02 : dw $A788 ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0167 ; Health
    dl $7E09C6 : db $02 : dw $001D ; Missiles
    dl $7E09C8 : db $02 : dw $001E ; Max missiles
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E0AF6 : db $02 : dw $02BB ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED876 : db $02 : dw $01A3 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $26EF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0020 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_bubble_mountain:
    dw #preset_100early_upper_norfair_rising_tide ; Upper Norfair: Rising Tide
    dl $7E078D : db $02 : dw $929A ; DDB
    dl $7E079B : db $02 : dw $AFA3 ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0142 ; Health
    dl $7E0AF6 : db $02 : dw $04B0 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_100early_upper_norfair_bat_cave:
    dw #preset_100early_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dl $7E078D : db $02 : dw $973E ; DDB
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0003 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $015B ; Health
    dl $7E0AF6 : db $02 : dw $01BE ; Samus X
    dl $7ED8BA : db $02 : dw $0011 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0021 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_leaving_speed_booster:
    dw #preset_100early_upper_norfair_bat_cave ; Upper Norfair: Bat Cave
    dl $7E078D : db $02 : dw $95B2 ; DDB
    dl $7E079B : db $02 : dw $AD1B ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $3105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3105 ; Collected Items
    dl $7E09C2 : db $02 : dw $0179 ; Health
    dl $7E09C8 : db $02 : dw $0023 ; Max missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0045 ; Samus X
    dl $7ED878 : db $02 : dw $0006 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0031 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0023 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_single_chamber:
    dw #preset_100early_upper_norfair_leaving_speed_booster ; Upper Norfair: Leaving Speed Booster
    dl $7E078D : db $02 : dw $97AA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0104 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $018A ; Health
    dl $7E09C6 : db $02 : dw $0021 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09D6 : db $02 : dw $003A ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01AD ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0020 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0025 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_double_chamber:
    dw #preset_100early_upper_norfair_single_chamber ; Upper Norfair: Single Chamber
    dl $7E078D : db $02 : dw $9582 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0126 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $001F ; Missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $00B8 ; Samus X
    dl $7ED8BA : db $02 : dw $0071 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_double_chamber_revisited:
    dw #preset_100early_upper_norfair_double_chamber ; Upper Norfair: Double Chamber
    dl $7E078D : db $02 : dw $961E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $ADDE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1005 ; Beams
    dl $7E09A8 : db $02 : dw $1005 ; Beams
    dl $7E09C6 : db $02 : dw $0024 ; Missiles
    dl $7E09C8 : db $02 : dw $0028 ; Max missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $004F ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED878 : db $02 : dw $001E ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $00F1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0027 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_bubble_mountain_revisited:
    dw #preset_100early_upper_norfair_double_chamber_revisited ; Upper Norfair: Double Chamber Revisited
    dl $7E078D : db $02 : dw $9606 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001B ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E0AF6 : db $02 : dw $008F ; Samus X
    dl $7ED91A : db $02 : dw $0028 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_red_pirate_shaft:
    dw #preset_100early_upper_norfair_bubble_mountain_revisited ; Upper Norfair: Bubble Mountain Revisited
    dl $7E078D : db $02 : dw $956A ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $AF72 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00ED ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09D6 : db $02 : dw $0053 ; Reserves
    dl $7E0AF6 : db $02 : dw $005B ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED91A : db $02 : dw $0029 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_crocomire:
    dw #preset_100early_upper_norfair_red_pirate_shaft ; Upper Norfair: Red Pirate Shaft
    dl $7E078D : db $02 : dw $974A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A923 ; MDB
    dl $7E0911 : db $02 : dw $0C00 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $018D ; Health
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0AF6 : db $02 : dw $0CD0 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8B8 : db $02 : dw $66EF ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_postcrocomire:
    dw #preset_100early_upper_norfair_crocomire ; Upper Norfair: Crocomire
    dl $7E078D : db $02 : dw $93D2 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $A98D ; MDB
    dl $7E07C3 : db $02 : dw $FE2A ; GFX Pointers
    dl $7E07C5 : db $02 : dw $98BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B7 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $017B ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01F3 ; Health
    dl $7E09C4 : db $02 : dw $01F3 ; Max health
    dl $7E09C6 : db $02 : dw $0028 ; Missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E09D6 : db $02 : dw $0064 ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0217 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED82A : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED876 : db $02 : dw $01B3 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002A ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_leaving_power_bombs:
    dw #preset_100early_upper_norfair_postcrocomire ; Upper Norfair: Post-Crocomire
    dl $7E078D : db $02 : dw $943E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $AADE ; MDB
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $01A2 ; Health
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E09D0 : db $02 : dw $0005 ; Max pbs
    dl $7E0AF6 : db $02 : dw $00A7 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $03B3 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $00F3 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002B ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_postcrocomire_jump_room:
    dw #preset_100early_upper_norfair_leaving_power_bombs ; Upper Norfair: Leaving Power Bombs
    dl $7E078D : db $02 : dw $944A ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $AB07 ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $041F ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AB ; Samus X
    dl $7E0AFA : db $02 : dw $04BB ; Samus Y
    dw #$FFFF
.after

preset_100early_upper_norfair_leaving_grapple:
    dw #preset_100early_upper_norfair_postcrocomire_jump_room ; Upper Norfair: Post-Crocomire Jump Room
    dl $7E078D : db $02 : dw $94DA ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $AC2B ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $F000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $7105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $7105 ; Collected Items
    dl $7E09C2 : db $02 : dw $01B6 ; Health
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0055 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED876 : db $02 : dw $13B3 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002D ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_postcrocomire_missiles:
    dw #preset_100early_upper_norfair_leaving_grapple ; Upper Norfair: Leaving Grapple
    dl $7E078D : db $02 : dw $94CE ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $AB07 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $B781 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02F4 ; Screen Y position in pixels
    dl $7E09C8 : db $02 : dw $002D ; Max missiles
    dl $7E0AF6 : db $02 : dw $00BB ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED876 : db $02 : dw $1BB3 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $00F7 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002E ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_crocomire_revisit:
    dw #preset_100early_upper_norfair_postcrocomire_missiles ; Upper Norfair: Post-Crocomire Missiles
    dl $7E078D : db $02 : dw $947A ; DDB
    dl $7E079B : db $02 : dw $AA82 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $3D00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $016A ; Health
    dl $7E09C6 : db $02 : dw $0032 ; Missiles
    dl $7E09C8 : db $02 : dw $0032 ; Max missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $01BF ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $1FB3 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002F ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_crocomire_escape:
    dw #preset_100early_upper_norfair_crocomire_revisit ; Upper Norfair: Crocomire Revisit
    dl $7E078D : db $02 : dw $93EA ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A923 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0C00 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0021 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0C89 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8B8 : db $02 : dw $E6EF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0030 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_business_center_return:
    dw #preset_100early_upper_norfair_crocomire_escape ; Upper Norfair: Crocomire Escape
    dl $7E078D : db $02 : dw $93AE ; DDB
    dl $7E079B : db $02 : dw $AA0E ; MDB
    dl $7E090F : db $02 : dw $D348 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1E80 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $017E ; Health
    dl $7E09C6 : db $02 : dw $0037 ; Missiles
    dl $7E09C8 : db $02 : dw $0037 ; Max missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $005A ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $1FF3 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0031 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_warehouse_elevator:
    dw #preset_100early_upper_norfair_business_center_return ; Upper Norfair: Business Center Return
    dl $7E078D : db $02 : dw $92EE ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $01A6 ; Health
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0086 ; Samus Y
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_red_tower_climb:
    dw #preset_100early_red_tower_and_crateria_warehouse_elevator ; Red Tower and Crateria: Warehouse Elevator
    dl $7E078D : db $02 : dw $910E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A3DD ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0801 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0169 ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_hellway:
    dw #preset_100early_red_tower_and_crateria_red_tower_climb ; Red Tower and Crateria: Red Tower Climb
    dl $7E078D : db $02 : dw $90F6 ; DDB
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0017 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $00A4 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0095 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_alpha_power_bombs:
    dw #preset_100early_red_tower_and_crateria_hellway ; Red Tower and Crateria: Hellway
    dl $7E078D : db $02 : dw $908A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $071D ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $016D ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003D ; Samus X
    dl $7E0AFA : db $02 : dw $078B ; Samus Y
    dl $7ED8B6 : db $02 : dw $A008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_elevator_room_ascent:
    dw #preset_100early_red_tower_and_crateria_alpha_power_bombs ; Red Tower and Crateria: Alpha Power Bombs
    dl $7E078D : db $02 : dw $9096 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A3AE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $3FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0163 ; Health
    dl $7E09C6 : db $02 : dw $003C ; Missiles
    dl $7E09C8 : db $02 : dw $003C ; Max missiles
    dl $7E09CE : db $02 : dw $0008 ; Pbs
    dl $7E09D0 : db $02 : dw $000A ; Max pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02AE ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED874 : db $02 : dw $0F04 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0033 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_beta_power_bombs:
    dw #preset_100early_red_tower_and_crateria_elevator_room_ascent ; Red Tower and Crateria: Elevator Room Ascent
    dl $7E078D : db $02 : dw $90EA ; DDB
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02FB ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0177 ; Health
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0061 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED8B6 : db $02 : dw $A808 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_crateria_kihunters:
    dw #preset_100early_red_tower_and_crateria_beta_power_bombs ; Red Tower and Crateria: Beta Power Bombs
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $016D ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $000B ; Pbs
    dl $7E09D0 : db $02 : dw $000F ; Max pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $006A ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED874 : db $02 : dw $0F84 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C01 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $E808 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0034 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_oceanfly:
    dw #preset_100early_red_tower_and_crateria_crateria_kihunters ; Red Tower and Crateria: Crateria Kihunters
    dl $7E078D : db $02 : dw $8AF6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $948C ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $E401 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B800 ; Screen subpixel Y position
    dl $7E09CE : db $02 : dw $000A ; Pbs
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B0 : db $02 : dw $2000 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_the_moat:
    dw #preset_100early_red_tower_and_crateria_oceanfly ; Red Tower and Crateria: Oceanfly
    dl $7E090F : db $02 : dw $17FF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0172 ; Health
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $02B1 ; Samus X
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_ocean_spark:
    dw #preset_100early_red_tower_and_crateria_the_moat ; Red Tower and Crateria: The Moat
    dl $7E078D : db $02 : dw $8A36 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $95FF ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6A80 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0041 ; Missiles
    dl $7E09C8 : db $02 : dw $0041 ; Max missiles
    dl $7E0AF6 : db $02 : dw $01A2 ; Samus X
    dl $7ED870 : db $02 : dw $8190 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0035 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_enter_wrecked_ship:
    dw #preset_100early_red_tower_and_crateria_ocean_spark ; Red Tower and Crateria: Ocean Spark
    dl $7E078D : db $02 : dw $89D6 ; DDB
    dl $7E079B : db $02 : dw $CA08 ; MDB
    dl $7E079F : db $02 : dw $0003 ; Region
    dl $7E07C3 : db $02 : dw $AE9E ; GFX Pointers
    dl $7E07C5 : db $02 : dw $A6BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B1 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E090F : db $02 : dw $6C80 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E09A6 : db $02 : dw $1001 ; Beams
    dl $7E09C2 : db $02 : dw $00F7 ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $002B ; Samus X
    dl $7ED8B0 : db $02 : dw $3000 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0038 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_phantoon:
    dw #preset_100early_wrecked_ship_enter_wrecked_ship ; Wrecked Ship: Enter Wrecked Ship
    dl $7E078D : db $02 : dw $A21C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $CC6F ; MDB
    dl $7E090F : db $02 : dw $93FF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0046 ; Missiles
    dl $7E09C8 : db $02 : dw $0046 ; Max missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E09CE : db $02 : dw $0009 ; Pbs
    dl $7E0AF6 : db $02 : dw $04CE ; Samus X
    dl $7ED880 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0030 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0039 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_leaving_phantoon:
    dw #preset_100early_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dl $7E078D : db $02 : dw $A2AC ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $CD13 ; MDB
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0160 ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CE : db $02 : dw $0008 ; Pbs
    dl $7E0A1C : db $02 : dw $008A ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED82A : db $02 : dw $0102 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0070 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_east_supers:
    dw #preset_100early_wrecked_ship_leaving_phantoon ; Wrecked Ship: Leaving Phantoon
    dl $7E078D : db $02 : dw $A294 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E07C5 : db $02 : dw $E7BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $04DD ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0600 ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $0007 ; Pbs
    dl $7E0A1C : db $02 : dw $0027 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0508 ; More position/state
    dl $7E0AF6 : db $02 : dw $05B9 ; Samus X
    dl $7E0AFA : db $02 : dw $0690 ; Samus Y
    dl $7ED8C0 : db $02 : dw $0074 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003A ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_leaving_west_supers:
    dw #preset_100early_wrecked_ship_east_supers ; Wrecked Ship: East Supers
    dl $7E078D : db $02 : dw $A210 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $CDA8 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C6 : db $02 : dw $0045 ; Missiles
    dl $7E09CA : db $02 : dw $000E ; Supers
    dl $7E09CC : db $02 : dw $000F ; Max supers
    dl $7E09CE : db $02 : dw $0006 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C2 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED880 : db $02 : dw $0061 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003D ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_spiky_room_of_death:
    dw #preset_100early_wrecked_ship_leaving_west_supers ; Wrecked Ship: Leaving West Supers
    dl $7E078D : db $02 : dw $A2E8 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E090F : db $02 : dw $AC01 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0472 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $042F ; Samus X
    dl $7E0AFA : db $02 : dw $04EB ; Samus Y
    dl $7ED91A : db $02 : dw $003E ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_wrecked_ship_etank:
    dw #preset_100early_wrecked_ship_spiky_room_of_death ; Wrecked Ship: Spiky Room of Death
    dl $7E078D : db $02 : dw $A258 ; DDB
    dl $7E079B : db $02 : dw $CBD5 ; MDB
    dl $7E090F : db $02 : dw $F400 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $004E ; Samus position/state
    dl $7E0A1E : db $02 : dw $0204 ; More position/state
    dl $7E0AF6 : db $02 : dw $0079 ; Samus X
    dl $7E0AFA : db $02 : dw $016B ; Samus Y
    dw #$FFFF
.after

preset_100early_wrecked_ship_spiky_room_revisit:
    dw #preset_100early_wrecked_ship_wrecked_ship_etank ; Wrecked Ship: Wrecked Ship E-Tank
    dl $7E078D : db $02 : dw $A288 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0248 ; Health
    dl $7E09C4 : db $02 : dw $0257 ; Max health
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $02BB ; Samus Y
    dl $7ED880 : db $02 : dw $0071 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003F ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_shaft_ascent:
    dw #preset_100early_wrecked_ship_spiky_room_revisit ; Wrecked Ship: Spiky Room Revisit
    dl $7E078D : db $02 : dw $A24C ; DDB
    dl $7E079B : db $02 : dw $CD5C ; MDB
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $C800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $022A ; Health
    dl $7E0AF6 : db $02 : dw $0054 ; Samus X
    dl $7E0AFA : db $02 : dw $0090 ; Samus Y
    dw #$FFFF
.after

preset_100early_wrecked_ship_attic:
    dw #preset_100early_wrecked_ship_shaft_ascent ; Wrecked Ship: Shaft Ascent
    dl $7E078D : db $02 : dw $A2D0 ; DDB
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E090F : db $02 : dw $47FF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E0AF6 : db $02 : dw $04B1 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED91A : db $02 : dw $0040 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_attic_missiles:
    dw #preset_100early_wrecked_ship_attic ; Wrecked Ship: Attic
    dl $7E078D : db $02 : dw $A228 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $CA52 ; MDB
    dl $7E090F : db $02 : dw $6800 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $ABFE ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $022E ; Health
    dl $7E09C6 : db $02 : dw $0045 ; Missiles
    dl $7E09CA : db $02 : dw $000B ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $06CC ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C0 : db $02 : dw $0B7C ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_attic_revisit:
    dw #preset_100early_wrecked_ship_attic_missiles ; Wrecked Ship: Attic Missiles
    dl $7E078D : db $02 : dw $A1D4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $CAAE ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $000A ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $020D ; Health
    dl $7E09C6 : db $02 : dw $003A ; Missiles
    dl $7E09C8 : db $02 : dw $004B ; Max missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AA ; Samus X
    dl $7ED880 : db $02 : dw $0079 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0041 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_sky_missiles:
    dw #preset_100early_wrecked_ship_attic_revisit ; Wrecked Ship: Attic Revisit
    dl $7E078D : db $02 : dw $A1EC ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CA52 ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $03FE ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01DB ; Health
    dl $7E0AF6 : db $02 : dw $003E ; Samus X
    dw #$FFFF
.after

preset_100early_wrecked_ship_bowling_alley_path:
    dw #preset_100early_wrecked_ship_sky_missiles ; Wrecked Ship: Sky Missiles
    dl $7E078D : db $02 : dw $A1E0 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $93FE ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $F400 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0204 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01EF ; Health
    dl $7E09C6 : db $02 : dw $0044 ; Missiles
    dl $7E09C8 : db $02 : dw $0055 ; Max missiles
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02C0 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED870 : db $02 : dw $819C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0044 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_bowling_alley:
    dw #preset_100early_wrecked_ship_bowling_alley_path ; Wrecked Ship: Bowling Alley Path
    dl $7E078D : db $02 : dw $89E2 ; DDB
    dl $7E079B : db $02 : dw $9461 ; MDB
    dl $7E090F : db $02 : dw $1F00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00F7 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0212 ; Health
    dl $7E09CA : db $02 : dw $000B ; Supers
    dl $7E0AF6 : db $02 : dw $0170 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dw #$FFFF
.after

preset_100early_wrecked_ship_leaving_gravity:
    dw #preset_100early_wrecked_ship_bowling_alley ; Wrecked Ship: Bowling Alley
    dl $7E078D : db $02 : dw $A1A4 ; DDB
    dl $7E079B : db $02 : dw $CE40 ; MDB
    dl $7E079F : db $02 : dw $0003 ; Region
    dl $7E07C3 : db $02 : dw $AE9E ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E7BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $7125 ; Equipped Items
    dl $7E09A4 : db $02 : dw $7125 ; Collected Items
    dl $7E09C2 : db $02 : dw $0191 ; Health
    dl $7E09C6 : db $02 : dw $0049 ; Missiles
    dl $7E09C8 : db $02 : dw $005A ; Max missiles
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E09D4 : db $02 : dw $00C8 ; Max reserves
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED880 : db $02 : dw $00FF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0047 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_landing_site:
    dw #preset_100early_wrecked_ship_leaving_gravity ; Wrecked Ship: Leaving Gravity
    dl $7E078D : db $02 : dw $8ADE ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $948C ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $004F ; Missiles
    dl $7E09C8 : db $02 : dw $005F ; Max missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $005C ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED870 : db $02 : dw $819E ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004B ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_gauntlet_spark:
    dw #preset_100early_brinstar_cleanup_landing_site ; Brinstar Cleanup: Landing Site
    dl $7E078D : db $02 : dw $893A ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $93AA ; MDB
    dl $7E090F : db $02 : dw $5001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00EF ; Health
    dl $7E09C6 : db $02 : dw $004C ; Missiles
    dl $7E09CE : db $02 : dw $000B ; Pbs
    dl $7E09D0 : db $02 : dw $0014 ; Max pbs
    dl $7E0AF6 : db $02 : dw $0052 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED870 : db $02 : dw $819F ; Events, Items, Doors
    dl $7ED8B0 : db $02 : dw $3002 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004C ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_gauntlet_etank:
    dw #preset_100early_brinstar_cleanup_gauntlet_spark ; Brinstar Cleanup: Gauntlet Spark
    dl $7E078D : db $02 : dw $892E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $92B3 ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $001C ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $001D ; Health
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_leaving_gauntlet:
    dw #preset_100early_brinstar_cleanup_gauntlet_etank ; Brinstar Cleanup: Gauntlet E-Tank
    dl $7E078D : db $02 : dw $8952 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $965B ; MDB
    dl $7E090F : db $02 : dw $E400 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $028D ; Health
    dl $7E09C4 : db $02 : dw $02BB ; Max health
    dl $7E09CA : db $02 : dw $000C ; Supers
    dl $7E09CE : db $02 : dw $0007 ; Pbs
    dl $7E0AF6 : db $02 : dw $0049 ; Samus X
    dl $7ED870 : db $02 : dw $81BF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004D ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_green_brinstar_elevator:
    dw #preset_100early_brinstar_cleanup_leaving_gauntlet ; Brinstar Cleanup: Leaving Gauntlet
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $A7FF ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0051 ; Missiles
    dl $7E09C8 : db $02 : dw $0069 ; Max missiles
    dl $7E0AF6 : db $02 : dw $0082 ; Samus X
    dl $7ED870 : db $02 : dw $87BF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004F ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_green_brinstar_beetoms:
    dw #preset_100early_brinstar_cleanup_green_brinstar_elevator ; Brinstar Cleanup: Green Brinstar Elevator
    dl $7E078D : db $02 : dw $8C0A ; DDB
    dl $7E078F : db $02 : dw $0009 ; DoorOut Index
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $3000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0A1D ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $0006 ; Pbs
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $0A8B ; Samus Y
    dl $7ED91A : db $02 : dw $0050 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_etecoon_etank_room:
    dw #preset_100early_brinstar_cleanup_green_brinstar_beetoms ; Brinstar Cleanup: Green Brinstar Beetoms
    dl $7E078D : db $02 : dw $8CBE ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9FE5 ; MDB
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0287 ; Health
    dl $7E09C6 : db $02 : dw $0050 ; Missiles
    dl $7E09CE : db $02 : dw $0009 ; Pbs
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_etecoon_room:
    dw #preset_100early_brinstar_cleanup_etecoon_etank_room ; Brinstar Cleanup: Etecoon E-Tank Room
    dl $7E078D : db $02 : dw $8F5E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A011 ; MDB
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $030F ; Health
    dl $7E09C4 : db $02 : dw $031F ; Max health
    dl $7E09C6 : db $02 : dw $004F ; Missiles
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E09CC : db $02 : dw $0014 ; Max supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $04D0 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED872 : db $02 : dw $C48F ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $E818 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0053 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_dachora_room_revisit:
    dw #preset_100early_brinstar_cleanup_etecoon_room ; Brinstar Cleanup: Etecoon Room
    dl $7E078D : db $02 : dw $8F46 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0700 ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $000E ; Pbs
    dl $7E09D0 : db $02 : dw $0019 ; Max pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $014C ; Samus X
    dl $7E0AFA : db $02 : dw $078B ; Samus Y
    dl $7ED870 : db $02 : dw $A7BF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0054 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_big_pink_revisit:
    dw #preset_100early_brinstar_cleanup_dachora_room_revisit ; Brinstar Cleanup: Dachora Room Revisit
    dl $7E078D : db $02 : dw $8CE2 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $9CB3 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0407 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $000D ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $04E3 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED91A : db $02 : dw $0055 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_big_pink_power_bombs:
    dw #preset_100early_brinstar_cleanup_big_pink_revisit ; Brinstar Cleanup: Big Pink Revisit
    dl $7E078D : db $02 : dw $8DAE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $020B ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0315 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $030A ; Health
    dl $7E09C6 : db $02 : dw $0054 ; Missiles
    dl $7E09C8 : db $02 : dw $006E ; Max missiles
    dl $7E09CE : db $02 : dw $000C ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $026B ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED872 : db $02 : dw $C4AF ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0346 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0058 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_big_pink_hopper_room:
    dw #preset_100early_brinstar_cleanup_big_pink_power_bombs ; Brinstar Cleanup: Big Pink Power Bombs
    dl $7E078D : db $02 : dw $8E62 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0430 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $02FB ; Health
    dl $7E09C6 : db $02 : dw $0051 ; Missiles
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E09D0 : db $02 : dw $001E ; Max pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AFA : db $02 : dw $049B ; Samus Y
    dl $7ED872 : db $02 : dw $C5AF ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $8346 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $005C ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_spore_spawn_supers:
    dw #preset_100early_brinstar_cleanup_big_pink_hopper_room ; Brinstar Cleanup: Big Pink Hopper Room
    dl $7E078D : db $02 : dw $8FCA ; DDB
    dl $7E079B : db $02 : dw $A130 ; MDB
    dl $7E090F : db $02 : dw $A001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0383 ; Health
    dl $7E09C4 : db $02 : dw $0383 ; Max health
    dl $7E09C6 : db $02 : dw $004C ; Missiles
    dl $7E0A1C : db $02 : dw $008A ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $01BB ; Samus Y
    dl $7ED874 : db $02 : dw $0F8C ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $E8D8 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $005D ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_waterway_etank:
    dw #preset_100early_brinstar_cleanup_spore_spawn_supers ; Brinstar Cleanup: Spore Spawn Supers
    dl $7E078D : db $02 : dw $8F82 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $091F ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0055 ; Missiles
    dl $7E09C8 : db $02 : dw $0073 ; Max missiles
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E09CC : db $02 : dw $0019 ; Max supers
    dl $7E09CE : db $02 : dw $000E ; Pbs
    dl $7E0A1C : db $02 : dw $0028 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0065 ; Samus X
    dl $7E0AFA : db $02 : dw $0990 ; Samus Y
    dl $7ED870 : db $02 : dw $E7BF ; Events, Items, Doors
    dl $7ED872 : db $02 : dw $C5EF ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $8B46 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $E8F8 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0064 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_green_hills_revisit:
    dw #preset_100early_brinstar_cleanup_waterway_etank ; Brinstar Cleanup: Waterway E-Tank
    dl $7E078D : db $02 : dw $8F8E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $02ED ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $061E ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $03E7 ; Health
    dl $7E09C4 : db $02 : dw $03E7 ; Max health
    dl $7E09C6 : db $02 : dw $0057 ; Missiles
    dl $7E09D6 : db $02 : dw $0096 ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $034D ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED874 : db $02 : dw $0F8E ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0068 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_blockbuster:
    dw #preset_100early_brinstar_cleanup_green_hills_revisit ; Brinstar Cleanup: Green Hills Revisit
    dl $7E078D : db $02 : dw $8DEA ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E52 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $005C ; Missiles
    dl $7E09C8 : db $02 : dw $0078 ; Max missiles
    dl $7E09CE : db $02 : dw $000D ; Pbs
    dl $7E0AF6 : db $02 : dw $07B4 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED872 : db $02 : dw $C7EF ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $E8F9 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0069 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_main_street:
    dw #preset_100early_brinstar_cleanup_blockbuster ; Brinstar Cleanup: Blockbuster
    dl $7E078D : db $02 : dw $A360 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CEFB ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2C01 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $03E5 ; Health
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E09CE : db $02 : dw $000C ; Pbs
    dl $7E0AF6 : db $02 : dw $0044 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED820 : db $02 : dw $0801 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_fish_tank:
    dw #preset_100early_maridia_predraygon_main_street ; Maridia Pre-Draygon: Main Street
    dl $7E078D : db $02 : dw $A330 ; DDB
    dl $7E079B : db $02 : dw $CFC9 ; MDB
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0109 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0619 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $039F ; Health
    dl $7E09C6 : db $02 : dw $0061 ; Missiles
    dl $7E09C8 : db $02 : dw $007D ; Max missiles
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E09D6 : db $02 : dw $00A8 ; Reserves
    dl $7E0AF6 : db $02 : dw $0169 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED880 : db $02 : dw $01FF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $006B ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_mama_turtle_etank:
    dw #preset_100early_maridia_predraygon_fish_tank ; Maridia Pre-Draygon: Fish Tank
    dl $7E078D : db $02 : dw $A3B4 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D017 ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01FD ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0350 ; Health
    dl $7E0AF6 : db $02 : dw $01E1 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_predraygon_fish_tank_revisit:
    dw #preset_100early_maridia_predraygon_mama_turtle_etank ; Maridia Pre-Draygon: Mama Turtle E-Tank
    dl $7E078D : db $02 : dw $A3E4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D055 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00C0 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0309 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $044B ; Health
    dl $7E09C4 : db $02 : dw $044B ; Max health
    dl $7E09C6 : db $02 : dw $0066 ; Missiles
    dl $7E09C8 : db $02 : dw $0082 ; Max missiles
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0135 ; Samus X
    dl $7E0AFA : db $02 : dw $037B ; Samus Y
    dl $7ED880 : db $02 : dw $0DFF ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $4B7C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $006D ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_mt_everest:
    dw #preset_100early_maridia_predraygon_fish_tank_revisit ; Maridia Pre-Draygon: Fish Tank Revisit
    dl $7E078D : db $02 : dw $A3CC ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $D0B9 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0118 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $031F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $03E5 ; Health
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E09CC : db $02 : dw $001E ; Max supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0178 ; Samus X
    dl $7E0AFA : db $02 : dw $03BB ; Samus Y
    dl $7ED880 : db $02 : dw $0FFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $006F ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_beach_missiles:
    dw #preset_100early_maridia_predraygon_mt_everest ; Maridia Pre-Draygon: Mt Everest
    dl $7E078D : db $02 : dw $A468 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $D1A3 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $03A9 ; Health
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_predraygon_west_beach:
    dw #preset_100early_maridia_predraygon_beach_missiles ; Maridia Pre-Draygon: Beach Missiles
    dl $7E078D : db $02 : dw $A4BC ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D1DD ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $00F9 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $006B ; Missiles
    dl $7E09C8 : db $02 : dw $0087 ; Max missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0069 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED880 : db $02 : dw $4FFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0070 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_watering_hole:
    dw #preset_100early_maridia_predraygon_west_beach ; Maridia Pre-Draygon: West Beach
    dl $7E078D : db $02 : dw $A4D4 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D16D ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0017 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $006C ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_predraygon_west_beach_revisit:
    dw #preset_100early_maridia_predraygon_watering_hole ; Maridia Pre-Draygon: Watering Hole
    dl $7E078D : db $02 : dw $A498 ; DDB
    dl $7E079B : db $02 : dw $D13B ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00FC ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $03AE ; Health
    dl $7E09C6 : db $02 : dw $006F ; Missiles
    dl $7E09C8 : db $02 : dw $008C ; Max missiles
    dl $7E09CA : db $02 : dw $0019 ; Supers
    dl $7E09CC : db $02 : dw $0023 ; Max supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $019C ; Samus X
    dl $7ED880 : db $02 : dw $7FFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0072 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_beach_missiles_revisit:
    dw #preset_100early_maridia_predraygon_west_beach_revisit ; Maridia Pre-Draygon: West Beach Revisit
    dl $7E078D : db $02 : dw $A48C ; DDB
    dl $7E079B : db $02 : dw $D16D ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $039F ; Health
    dl $7E0AF6 : db $02 : dw $03A2 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_predraygon_aqueduct:
    dw #preset_100early_maridia_predraygon_beach_missiles_revisit ; Maridia Pre-Draygon: Beach Missiles Revisit
    dl $7E078D : db $02 : dw $A4E0 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D1A3 ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0018 ; Supers
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $01B0 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED8C0 : db $02 : dw $CB7C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0073 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_botwoon:
    dw #preset_100early_maridia_predraygon_aqueduct ; Maridia Pre-Draygon: Aqueduct
    dl $7E078D : db $02 : dw $A72C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $D617 ; MDB
    dl $7E07C3 : db $02 : dw $E78D ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2EBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B9 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0001 ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $000B ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $03A8 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED91A : db $02 : dw $0075 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_full_halfie:
    dw #preset_100early_maridia_predraygon_botwoon ; Maridia Pre-Draygon: Botwoon
    dl $7E078D : db $02 : dw $A774 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D95E ; MDB
    dl $7E07F3 : db $02 : dw $002A ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $9FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $03DB ; Health
    dl $7E09C6 : db $02 : dw $0077 ; Missiles
    dl $7E09CA : db $02 : dw $0013 ; Supers
    dl $7E09CE : db $02 : dw $000C ; Pbs
    dl $7E0AF6 : db $02 : dw $01C4 ; Samus X
    dl $7ED82C : db $02 : dw $0002 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_draygon_missiles:
    dw #preset_100early_maridia_predraygon_full_halfie ; Maridia Pre-Draygon: Full Halfie
    dl $7E078D : db $02 : dw $A8E8 ; DDB
    dl $7E079B : db $02 : dw $D72A ; MDB
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00FB ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $035C ; Health
    dl $7E09CA : db $02 : dw $0012 ; Supers
    dl $7E0AF6 : db $02 : dw $06BB ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8C2 : db $02 : dw $0400 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0076 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_draygon:
    dw #preset_100early_maridia_predraygon_draygon_missiles ; Maridia Pre-Draygon: Draygon Missiles
    dl $7E078D : db $02 : dw $A7F8 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D78F ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $007C ; Missiles
    dl $7E09C8 : db $02 : dw $0091 ; Max missiles
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $004E ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED882 : db $02 : dw $0080 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $0C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0077 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_return_halfie:
    dw #preset_100early_maridia_predraygon_draygon ; Maridia Pre-Draygon: Draygon
    dl $7E078D : db $02 : dw $A96C ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $7325 ; Equipped Items
    dl $7E09A4 : db $02 : dw $7325 ; Collected Items
    dl $7E09C2 : db $02 : dw $02CB ; Health
    dl $7E09C6 : db $02 : dw $007B ; Missiles
    dl $7E09CA : db $02 : dw $0015 ; Supers
    dl $7E09CE : db $02 : dw $000D ; Pbs
    dl $7E0A68 : db $02 : dw $0001 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0040 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED82C : db $02 : dw $0003 ; Events, Items, Doors
    dl $7ED882 : db $02 : dw $0480 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $CC00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0079 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_reverse_botwoon_etank:
    dw #preset_100early_maridia_postdraygon_return_halfie ; Maridia Post-Draygon: Return Halfie
    dl $7E078D : db $02 : dw $A7E0 ; DDB
    dl $7E079B : db $02 : dw $D913 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $025A ; Health
    dl $7E09C6 : db $02 : dw $0078 ; Missiles
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $00A9 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_east_sand_pit:
    dw #preset_100early_maridia_postdraygon_reverse_botwoon_etank ; Maridia Post-Draygon: Reverse Botwoon E-Tank
    dl $7E078D : db $02 : dw $A7D4 ; DDB
    dl $7E079B : db $02 : dw $D5A7 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0258 ; Health
    dl $7E0AF6 : db $02 : dw $05BB ; Samus X
    dl $7E0AFA : db $02 : dw $02CB ; Samus Y
    dl $7ED91A : db $02 : dw $007C ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_pants_room:
    dw #preset_100early_maridia_postdraygon_east_sand_pit ; Maridia Post-Draygon: East Sand Pit
    dl $7E078D : db $02 : dw $A6CC ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D4C2 ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $007D ; Missiles
    dl $7E09C8 : db $02 : dw $0096 ; Max missiles
    dl $7E09CE : db $02 : dw $0012 ; Pbs
    dl $7E09D0 : db $02 : dw $0023 ; Max pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02B3 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED882 : db $02 : dw $048C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $007E ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_shaktool:
    dw #preset_100early_maridia_postdraygon_pants_room ; Maridia Post-Draygon: Pants Room
    dl $7E078D : db $02 : dw $A690 ; DDB
    dl $7E079B : db $02 : dw $D646 ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0249 ; Health
    dl $7E0AF6 : db $02 : dw $01BC ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_shaktool_revisit:
    dw #preset_100early_maridia_postdraygon_shaktool ; Maridia Post-Draygon: Shaktool
    dl $7E078D : db $02 : dw $A8D0 ; DDB
    dl $7E079B : db $02 : dw $D6D0 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $83FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0005 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $7327 ; Equipped Items
    dl $7E09A4 : db $02 : dw $7327 ; Collected Items
    dl $7E09C2 : db $02 : dw $022B ; Health
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0077 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $2801 ; Events, Items, Doors
    dl $7ED882 : db $02 : dw $04CC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $007F ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_east_sand_hall:
    dw #preset_100early_maridia_postdraygon_shaktool_revisit ; Maridia Post-Draygon: Shaktool Revisit
    dl $7E078D : db $02 : dw $A7B0 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D646 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $020D ; Health
    dl $7E0AF6 : db $02 : dw $003A ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_plasma_spark_room:
    dw #preset_100early_maridia_postdraygon_east_sand_hall ; Maridia Post-Draygon: East Sand Hall
    dl $7E078D : db $02 : dw $A684 ; DDB
    dl $7E079B : db $02 : dw $D48E ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $F000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E0AF6 : db $02 : dw $009A ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED8C2 : db $02 : dw $CC20 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_kassiuz_room:
    dw #preset_100early_maridia_postdraygon_plasma_spark_room ; Maridia Post-Draygon: Plasma Spark Room
    dl $7E078D : db $02 : dw $A60C ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D340 ; MDB
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00F6 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01F9 ; Health
    dl $7E09C6 : db $02 : dw $007F ; Missiles
    dl $7E09CA : db $02 : dw $0015 ; Supers
    dl $7E09CE : db $02 : dw $0012 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0299 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8C2 : db $02 : dw $CC28 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_plasma:
    dw #preset_100early_maridia_postdraygon_kassiuz_room ; Maridia Post-Draygon: Kassiuz Room
    dl $7E078D : db $02 : dw $A5DC ; DDB
    dl $7E079B : db $02 : dw $D27E ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C001 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_leaving_plasma:
    dw #preset_100early_maridia_postdraygon_plasma ; Maridia Post-Draygon: Plasma
    dl $7E078D : db $02 : dw $A54C ; DDB
    dl $7E079B : db $02 : dw $D2AA ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001D ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1009 ; Beams
    dl $7E09A8 : db $02 : dw $100D ; Beams
    dl $7E09C2 : db $02 : dw $01DB ; Health
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $002D ; Samus X
    dl $7ED880 : db $02 : dw $FFFF ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $CC2A ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0080 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_leaving_kassiuz:
    dw #preset_100early_maridia_postdraygon_leaving_plasma ; Maridia Post-Draygon: Leaving Plasma
    dl $7E078D : db $02 : dw $A540 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D387 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $0319 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_cac_alley:
    dw #preset_100early_maridia_postdraygon_leaving_kassiuz ; Maridia Post-Draygon: Leaving Kassiuz
    dl $7E078D : db $02 : dw $A5A0 ; DDB
    dl $7E079B : db $02 : dw $D5EC ; MDB
    dl $7E07C3 : db $02 : dw $E78D ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2EBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B9 ; GFX Pointers
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0089 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1508 ; More position/state
    dl $7E0AF6 : db $02 : dw $00DB ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_botwoon_etank:
    dw #preset_100early_maridia_postdraygon_cac_alley ; Maridia Post-Draygon: Cac Alley
    dl $7E078D : db $02 : dw $A960 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D913 ; MDB
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01E0 ; Health
    dl $7E09CA : db $02 : dw $0016 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $008E ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C2 : db $02 : dw $CCAA ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_aqueduct_final:
    dw #preset_100early_maridia_postdraygon_botwoon_etank ; Maridia Post-Draygon: Botwoon E-Tank
    dl $7E078D : db $02 : dw $A8AC ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D6FD ; MDB
    dl $7E090F : db $02 : dw $2900 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $012F ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $04A0 ; Health
    dl $7E09C4 : db $02 : dw $04AF ; Max health
    dl $7E0AF6 : db $02 : dw $01AA ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED882 : db $02 : dw $05CC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0081 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_west_sand_pit:
    dw #preset_100early_maridia_postdraygon_aqueduct_final ; Maridia Post-Draygon: Aqueduct Final
    dl $7E078D : db $02 : dw $A7D4 ; DDB
    dl $7E079B : db $02 : dw $D5A7 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $04A5 ; Health
    dl $7E09C6 : db $02 : dw $0084 ; Missiles
    dl $7E09C8 : db $02 : dw $009B ; Max missiles
    dl $7E09CA : db $02 : dw $001B ; Supers
    dl $7E09CC : db $02 : dw $0028 ; Max supers
    dl $7E0AF6 : db $02 : dw $05DB ; Samus X
    dl $7E0AFA : db $02 : dw $02CB ; Samus Y
    dl $7ED882 : db $02 : dw $05FC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0083 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_thread_the_needle:
    dw #preset_100early_maridia_postdraygon_west_sand_pit ; Maridia Post-Draygon: West Sand Pit
    dl $7E078D : db $02 : dw $A528 ; DDB
    dl $7E079B : db $02 : dw $D21C ; MDB
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00FF ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $047D ; Health
    dl $7E09C6 : db $02 : dw $0089 ; Missiles
    dl $7E09C8 : db $02 : dw $00A0 ; Max missiles
    dl $7E09CE : db $02 : dw $0013 ; Pbs
    dl $7E09D4 : db $02 : dw $012C ; Max reserves
    dl $7E0AF6 : db $02 : dw $002F ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED882 : db $02 : dw $05FF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0085 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_kraidicekronic_kraid_entrance_revisit:
    dw #preset_100early_maridia_postdraygon_thread_the_needle ; Maridia Post-Draygon: Thread the Needle
    dl $7E078D : db $02 : dw $A510 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $A001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $001A ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $005B ; Samus X
    dw #$FFFF
.after

preset_100early_kraidicekronic_kraid_missiles:
    dw #preset_100early_kraidicekronic_kraid_entrance_revisit ; Kraid-Ice-Kronic: Kraid Entrance Revisit
    dl $7E078D : db $02 : dw $923A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A471 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5C00 ; Screen subpixel Y position
    dl $7E09CE : db $02 : dw $0012 ; Pbs
    dl $7E0AF6 : db $02 : dw $016C ; Samus X
    dw #$FFFF
.after

preset_100early_kraidicekronic_kraid_missiles_escape:
    dw #preset_100early_kraidicekronic_kraid_missiles ; Kraid-Ice-Kronic: Kraid Missiles
    dl $7E078D : db $02 : dw $9156 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A4DA ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $01BB ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $008E ; Missiles
    dl $7E09C8 : db $02 : dw $00A5 ; Max missiles
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0250 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED874 : db $02 : dw $1F8E ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0086 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_kraidicekronic_ice_beam_gate_room:
    dw #preset_100early_kraidicekronic_kraid_missiles_escape ; Kraid-Ice-Kronic: Kraid Missiles Escape
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E079F : db $02 : dw $0002 ; Region
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0321 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0092 ; Missiles
    dl $7E09CA : db $02 : dw $0018 ; Supers
    dl $7E09CE : db $02 : dw $0010 ; Pbs
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7E0AFA : db $02 : dw $0393 ; Samus Y
    dl $7ED8B8 : db $02 : dw $EEEF ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_kraidicekronic_ice_beam_snake_room:
    dw #preset_100early_kraidicekronic_ice_beam_gate_room ; Kraid-Ice-Kronic: Ice Beam Gate Room
    dl $7E078D : db $02 : dw $931E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A75D ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0035 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_100early_kraidicekronic_snake_room_revisit:
    dw #preset_100early_kraidicekronic_ice_beam_snake_room ; Kraid-Ice-Kronic: Ice Beam Snake Room
    dl $7E078D : db $02 : dw $937E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A890 ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E09A6 : db $02 : dw $100B ; Beams
    dl $7E09A8 : db $02 : dw $100F ; Beams
    dl $7E09C2 : db $02 : dw $0478 ; Health
    dl $7E09CA : db $02 : dw $0019 ; Supers
    dl $7E0AF6 : db $02 : dw $00BA ; Samus X
    dl $7ED876 : db $02 : dw $1FF7 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0087 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_kraidicekronic_ice_escape:
    dw #preset_100early_kraidicekronic_snake_room_revisit ; Kraid-Ice-Kronic: Snake Room Revisit
    dl $7E078D : db $02 : dw $935A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A8B9 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $2001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C7 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_100early_kraidicekronic_crumble_shaft_missiles:
    dw #preset_100early_kraidicekronic_ice_escape ; Kraid-Ice-Kronic: Ice Escape
    dl $7E078D : db $02 : dw $9276 ; DDB
    dl $7E079B : db $02 : dw $A815 ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0284 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $000F ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0324 ; Samus X
    dl $7E0AFA : db $02 : dw $03B3 ; Samus Y
    dw #$FFFF
.after

preset_100early_kraidicekronic_crocomire_speedway:
    dw #preset_100early_kraidicekronic_crumble_shaft_missiles ; Kraid-Ice-Kronic: Crumble Shaft Missiles
    dl $7E078D : db $02 : dw $9336 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $A8F8 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $7FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0479 ; Health
    dl $7E09C6 : db $02 : dw $0097 ; Missiles
    dl $7E09C8 : db $02 : dw $00AA ; Max missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00DD ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED876 : db $02 : dw $1FFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0088 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_kraidicekronic_kronic_boost:
    dw #preset_100early_kraidicekronic_crocomire_speedway ; Kraid-Ice-Kronic: Crocomire Speedway
    dl $7E078D : db $02 : dw $9792 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $AFFB ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $03C3 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_100early_lower_norfair_ln_main_hall:
    dw #preset_100early_kraidicekronic_kronic_boost ; Kraid-Ice-Kronic: Kronic Boost
    dl $7E078D : db $02 : dw $96F6 ; DDB
    dl $7E079B : db $02 : dw $B236 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0476 ; Health
    dl $7E09CE : db $02 : dw $000E ; Pbs
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0480 ; Samus X
    dl $7E0AFA : db $02 : dw $0288 ; Samus Y
    dl $7ED8BA : db $02 : dw $01F7 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_golden_torizo:
    dw #preset_100early_lower_norfair_ln_main_hall ; Lower Norfair: LN Main Hall
    dl $7E078D : db $02 : dw $9852 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B1E5 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2C00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0449 ; Health
    dl $7E09CE : db $02 : dw $000C ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02B2 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED820 : db $02 : dw $3801 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_leaving_golden_torizo:
    dw #preset_100early_lower_norfair_golden_torizo ; Lower Norfair: Golden Torizo
    dl $7E078D : db $02 : dw $983A ; DDB
    dl $7E079B : db $02 : dw $B283 ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $B001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $009C ; Missiles
    dl $7E09C8 : db $02 : dw $00AF ; Max missiles
    dl $7E09CA : db $02 : dw $001E ; Supers
    dl $7E09CC : db $02 : dw $002D ; Max supers
    dl $7E09CE : db $02 : dw $000B ; Pbs
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED82A : db $02 : dw $0106 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $00DE ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $008A ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_fast_ripper_room:
    dw #preset_100early_lower_norfair_leaving_golden_torizo ; Lower Norfair: Leaving Golden Torizo
    dl $7E078D : db $02 : dw $9882 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B6C1 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $000B ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $732F ; Equipped Items
    dl $7E09A4 : db $02 : dw $732F ; Collected Items
    dl $7E0AF6 : db $02 : dw $0091 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED878 : db $02 : dw $80DE ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $03F7 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $008B ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_worst_room_in_the_game:
    dw #preset_100early_lower_norfair_fast_ripper_room ; Lower Norfair: Fast Ripper Room
    dl $7E078D : db $02 : dw $9912 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $B457 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $03FD ; Health
    dl $7E09CA : db $02 : dw $001D ; Supers
    dl $7E0AF6 : db $02 : dw $03DB ; Samus X
    dw #$FFFF
.after

preset_100early_lower_norfair_mickey_mouse_missiles:
    dw #preset_100early_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room in the Game
    dl $7E078D : db $02 : dw $994E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B4AD ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0103 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0411 ; Health
    dl $7E0AF6 : db $02 : dw $0071 ; Samus X
    dl $7E0AFA : db $02 : dw $017B ; Samus Y
    dw #$FFFF
.after

preset_100early_lower_norfair_amphitheatre:
    dw #preset_100early_lower_norfair_mickey_mouse_missiles ; Lower Norfair: Mickey Mouse Missiles
    dl $7E078D : db $02 : dw $9936 ; DDB
    dl $7E090F : db $02 : dw $0001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011D ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $00A1 ; Missiles
    dl $7E09C8 : db $02 : dw $00B4 ; Max missiles
    dl $7E0AF6 : db $02 : dw $00AB ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED878 : db $02 : dw $82DE ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $008C ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_red_kihunter_shaft:
    dw #preset_100early_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dl $7E078D : db $02 : dw $997E ; DDB
    dl $7E079B : db $02 : dw $B4E5 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0270 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0031 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $02D0 ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dw #$FFFF
.after

preset_100early_lower_norfair_ninja_pirates:
    dw #preset_100early_lower_norfair_red_kihunter_shaft ; Lower Norfair: Red Kihunter Shaft
    dl $7E078D : db $02 : dw $99EA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $4FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $03D8 ; Health
    dl $7E09C6 : db $02 : dw $00A3 ; Missiles
    dl $7E09CA : db $02 : dw $001C ; Supers
    dl $7E09CE : db $02 : dw $000D ; Pbs
    dl $7E09D0 : db $02 : dw $0028 ; Max pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0163 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED878 : db $02 : dw $92DE ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $C3F7 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $008D ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_plowerhouse_room:
    dw #preset_100early_lower_norfair_ninja_pirates ; Lower Norfair: Ninja Pirates
    dl $7E078D : db $02 : dw $9A1A ; DDB
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $017E ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0437 ; Health
    dl $7E09C6 : db $02 : dw $00A5 ; Missiles
    dl $7E09CA : db $02 : dw $0022 ; Supers
    dl $7E0AF6 : db $02 : dw $01EB ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED8BC : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_ridley:
    dw #preset_100early_lower_norfair_plowerhouse_room ; Lower Norfair: Plowerhouse Room
    dl $7E078D : db $02 : dw $995A ; DDB
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0434 ; Health
    dl $7E09CA : db $02 : dw $0021 ; Supers
    dl $7E0AF6 : db $02 : dw $0039 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED8BA : db $02 : dw $D3F7 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_ridley_escape:
    dw #preset_100early_lower_norfair_ridley ; Lower Norfair: Ridley
    dl $7E078D : db $02 : dw $98CA ; DDB
    dl $7E079B : db $02 : dw $B32E ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0022 ; Supers
    dl $7E09CE : db $02 : dw $000E ; Pbs
    dl $7E0AF6 : db $02 : dw $00C9 ; Samus X
    dl $7E0AFA : db $02 : dw $019B ; Samus Y
    dl $7ED82A : db $02 : dw $0107 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_wasteland_revisit:
    dw #preset_100early_lower_norfair_ridley_escape ; Lower Norfair: Ridley Escape
    dl $7E078D : db $02 : dw $9966 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $04F1 ; Health
    dl $7E09C4 : db $02 : dw $0513 ; Max health
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02DB ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED878 : db $02 : dw $D2DE ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $DFF7 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $008E ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_kihunter_shaft_revisit:
    dw #preset_100early_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dl $7E078D : db $02 : dw $9A3E ; DDB
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2FFF ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $04C4 ; Health
    dl $7E09CE : db $02 : dw $000D ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0590 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED91A : db $02 : dw $008F ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_firefleas_room:
    dw #preset_100early_lower_norfair_kihunter_shaft_revisit ; Lower Norfair: Kihunter Shaft Revisit
    dl $7E078D : db $02 : dw $9A26 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $4180 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001A ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $000C ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00B8 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_100early_lower_norfair_springball_maze:
    dw #preset_100early_lower_norfair_firefleas_room ; Lower Norfair: Firefleas Room
    dl $7E078D : db $02 : dw $9A02 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $B6EE ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001C ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0576 ; Health
    dl $7E09C4 : db $02 : dw $0577 ; Max health
    dl $7E09CA : db $02 : dw $0021 ; Supers
    dl $7E09CE : db $02 : dw $000D ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $016B ; Samus X
    dl $7ED87A : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0090 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_three_muskateers:
    dw #preset_100early_lower_norfair_springball_maze ; Lower Norfair: Springball Maze
    dl $7E078D : db $02 : dw $9A92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B510 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $D801 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E09C6 : db $02 : dw $00AA ; Missiles
    dl $7E09C8 : db $02 : dw $00B9 ; Max missiles
    dl $7E09CE : db $02 : dw $0012 ; Pbs
    dl $7E09D0 : db $02 : dw $002D ; Max pbs
    dl $7E0AF6 : db $02 : dw $0059 ; Samus X
    dl $7ED878 : db $02 : dw $DEDE ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0094 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_bubble_mountain_return:
    dw #preset_100early_lower_norfair_three_muskateers ; Lower Norfair: Three Muskateers
    dl $7E078D : db $02 : dw $9A4A ; DDB
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E09C2 : db $02 : dw $0571 ; Health
    dl $7E09C6 : db $02 : dw $00AD ; Missiles
    dl $7E09C8 : db $02 : dw $00BE ; Max missiles
    dl $7E0AF6 : db $02 : dw $008F ; Samus X
    dl $7ED878 : db $02 : dw $FEDE ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0095 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_norfair_reserve:
    dw #preset_100early_lower_norfair_bubble_mountain_return ; Lower Norfair: Bubble Mountain Return
    dl $7E078D : db $02 : dw $95CA ; DDB
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $056F ; Health
    dl $7E09C6 : db $02 : dw $00AE ; Missiles
    dl $7E0AF6 : db $02 : dw $003D ; Samus X
    dl $7ED8BA : db $02 : dw $DFFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0096 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_bubble_mountain_final:
    dw #preset_100early_lower_norfair_norfair_reserve ; Lower Norfair: Norfair Reserve
    dl $7E078D : db $02 : dw $952E ; DDB
    dl $7E079B : db $02 : dw $AC83 ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $00B8 ; Missiles
    dl $7E09C8 : db $02 : dw $00C8 ; Max missiles
    dl $7E09D4 : db $02 : dw $0190 ; Max reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01C1 ; Samus X
    dl $7ED876 : db $02 : dw $FFFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $009A ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_business_center_final:
    dw #preset_100early_lower_norfair_bubble_mountain_final ; Lower Norfair: Bubble Mountain Final
    dl $7E078D : db $02 : dw $97DA ; DDB
    dl $7E079B : db $02 : dw $B167 ; MDB
    dl $7E07C3 : db $02 : dw $860B ; GFX Pointers
    dl $7E07C5 : db $02 : dw $21C0 ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2C0 ; GFX Pointers
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $056A ; Health
    dl $7E09C6 : db $02 : dw $00BD ; Missiles
    dl $7E09C8 : db $02 : dw $00CD ; Max missiles
    dl $7E09CA : db $02 : dw $0022 ; Supers
    dl $7E09CE : db $02 : dw $0010 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003F ; Samus X
    dl $7ED878 : db $02 : dw $FEDF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $009B ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_below_spazer:
    dw #preset_100early_lower_norfair_business_center_final ; Lower Norfair: Business Center Final
    dl $7E078D : db $02 : dw $A33C ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $CF54 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0577 ; Health
    dl $7E09D6 : db $02 : dw $00B4 ; Reserves
    dl $7E0AF6 : db $02 : dw $00CE ; Samus X
    dw #$FFFF
.after

preset_100early_final_cleanup_red_tower_xray:
    dw #preset_100early_final_cleanup_below_spazer ; Final Cleanup: Below Spazer
    dl $7E078D : db $02 : dw $910E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A3DD ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dw #$FFFF
.after

preset_100early_final_cleanup_xray_passage:
    dw #preset_100early_final_cleanup_red_tower_xray ; Final Cleanup: Red Tower X-Ray
    dl $7E078D : db $02 : dw $90F6 ; DDB
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E090F : db $02 : dw $0FFF ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $3400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $061D ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $000F ; Pbs
    dl $7E0AF6 : db $02 : dw $003B ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED8B6 : db $02 : dw $EAF9 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_xray_passage_return:
    dw #preset_100early_final_cleanup_xray_passage ; Final Cleanup: X-Ray Passage
    dl $7E078D : db $02 : dw $905A ; DDB
    dl $7E079B : db $02 : dw $A2CE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00F2 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $37FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $F32F ; Equipped Items
    dl $7E09A4 : db $02 : dw $F32F ; Collected Items
    dl $7E09CA : db $02 : dw $0021 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0178 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED874 : db $02 : dw $1FCE ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $EEF9 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $009C ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_reverse_slinky:
    dw #preset_100early_final_cleanup_xray_passage_return ; Final Cleanup: X-Ray Passage Return
    dl $7E078D : db $02 : dw $902A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E0911 : db $02 : dw $03D6 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E09CE : db $02 : dw $000E ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0476 ; Samus X
    dl $7E0AFA : db $02 : dw $004B ; Samus Y
    dw #$FFFF
.after

preset_100early_final_cleanup_retro_brinstar_hoppers:
    dw #preset_100early_final_cleanup_reverse_slinky ; Final Cleanup: Reverse Slinky
    dl $7E078D : db $02 : dw $8EFE ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E52 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00DE ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0015 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0572 ; Health
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0152 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED91A : db $02 : dw $009D ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_retro_brinstar_etank:
    dw #preset_100early_final_cleanup_retro_brinstar_hoppers ; Final Cleanup: Retro Brinstar Hoppers
    dl $7E078D : db $02 : dw $8E86 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E9F ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $058B ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $0012 ; Pbs
    dl $7E09D0 : db $02 : dw $0032 ; Max pbs
    dl $7E0AF6 : db $02 : dw $05EB ; Samus X
    dl $7E0AFA : db $02 : dw $02BB ; Samus Y
    dl $7ED872 : db $02 : dw $CFEF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $009E ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_boulder_room:
    dw #preset_100early_final_cleanup_retro_brinstar_etank ; Final Cleanup: Retro Brinstar E-Tank
    dl $7E078D : db $02 : dw $8ECE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9F64 ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001D ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $05DB ; Health
    dl $7E09C4 : db $02 : dw $05DB ; Max health
    dl $7E09CA : db $02 : dw $0020 ; Supers
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0259 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED872 : db $02 : dw $EFEF ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $EEFD ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A0 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_leaving_billy_mays:
    dw #preset_100early_final_cleanup_boulder_room ; Final Cleanup: Boulder Room
    dl $7E078D : db $02 : dw $8FEE ; DDB
    dl $7E079B : db $02 : dw $A1D8 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $00C7 ; Missiles
    dl $7E09C8 : db $02 : dw $00D7 ; Max missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00D6 ; Samus X
    dl $7ED874 : db $02 : dw $1FFE ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A2 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_retro_brinstar_escape:
    dw #preset_100early_final_cleanup_leaving_billy_mays ; Final Cleanup: Leaving Billy Mays
    dl $7E078D : db $02 : dw $8FE2 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $9F64 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $05D1 ; Health
    dl $7E09C6 : db $02 : dw $00CC ; Missiles
    dl $7E09C8 : db $02 : dw $00DC ; Max missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $02D9 ; Samus X
    dl $7E0AFA : db $02 : dw $02BB ; Samus Y
    dl $7ED872 : db $02 : dw $FFEF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A4 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_old_tourian_missiles:
    dw #preset_100early_final_cleanup_retro_brinstar_escape ; Final Cleanup: Retro Brinstar Escape
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
    dl $7E09CE : db $02 : dw $0010 ; Pbs
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0A68 : db $02 : dw $0068 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED91A : db $02 : dw $00A5 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_climb_supers:
    dw #preset_100early_final_cleanup_old_tourian_missiles ; Final Cleanup: Old Tourian Missiles
    dl $7E078D : db $02 : dw $8B7A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0700 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0598 ; Health
    dl $7E09C6 : db $02 : dw $00D1 ; Missiles
    dl $7E09C8 : db $02 : dw $00E1 ; Max missiles
    dl $7E09CE : db $02 : dw $000F ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $02B9 ; Samus X
    dl $7E0AFA : db $02 : dw $078B ; Samus Y
    dl $7ED870 : db $02 : dw $E7FF ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C09 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A6 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_parlor_missiles:
    dw #preset_100early_final_cleanup_climb_supers ; Final Cleanup: Climb Supers
    dl $7E078D : db $02 : dw $8B3E ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E090F : db $02 : dw $5800 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0314 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $04FE ; Health
    dl $7E09CA : db $02 : dw $0025 ; Supers
    dl $7E09CC : db $02 : dw $0032 ; Max supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $012C ; Samus X
    dl $7E0AFA : db $02 : dw $0398 ; Samus Y
    dl $7ED870 : db $02 : dw $EFFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A7 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_leaving_parlor_missiles:
    dw #preset_100early_final_cleanup_parlor_missiles ; Final Cleanup: Parlor Missiles
    dl $7E078D : db $02 : dw $8C82 ; DDB
    dl $7E079B : db $02 : dw $9A90 ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $00D6 ; Missiles
    dl $7E09C8 : db $02 : dw $00E6 ; Max missiles
    dl $7E09CE : db $02 : dw $000E ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0056 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED870 : db $02 : dw $FFFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A8 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_terminator_revisit:
    dw #preset_100early_final_cleanup_leaving_parlor_missiles ; Final Cleanup: Leaving Parlor Missiles
    dl $7E078D : db $02 : dw $8C8E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0166 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dw #$FFFF
.after

preset_100early_tourian_metroids_1:
    dw #preset_100early_final_cleanup_terminator_revisit ; Final Cleanup: Terminator Revisit
    dl $7E078D : db $02 : dw $9222 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $DAAE ; MDB
    dl $7E079F : db $02 : dw $0005 ; Region
    dl $7E07C3 : db $02 : dw $D414 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $EDBF ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2BA ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E090F : db $02 : dw $C001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4FFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0517 ; Health
    dl $7E09C6 : db $02 : dw $00D8 ; Missiles
    dl $7E09CA : db $02 : dw $0024 ; Supers
    dl $7E0AF6 : db $02 : dw $003E ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED820 : db $02 : dw $3FC1 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $6C09 ; Events, Items, Doors
    dl $7ED90C : db $02 : dw $0100 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00AB ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_tourian_metroids_2:
    dw #preset_100early_tourian_metroids_1 ; Tourian: Metroids 1
    dl $7E078D : db $02 : dw $A984 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $DAE1 ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0549 ; Health
    dl $7E09C6 : db $02 : dw $00DE ; Missiles
    dl $7E09CA : db $02 : dw $0025 ; Supers
    dl $7E09CE : db $02 : dw $0010 ; Pbs
    dl $7E0AF6 : db $02 : dw $003A ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED822 : db $02 : dw $0021 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_tourian_metroids_3:
    dw #preset_100early_tourian_metroids_2 ; Tourian: Metroids 2
    dl $7E078D : db $02 : dw $A9B4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $DB31 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00F2 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0567 ; Health
    dl $7E09C6 : db $02 : dw $00E2 ; Missiles
    dl $7E09CA : db $02 : dw $0027 ; Supers
    dl $7E09CE : db $02 : dw $0012 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00CA ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0023 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0003 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_tourian_metroids_4:
    dw #preset_100early_tourian_metroids_3 ; Tourian: Metroids 3
    dl $7E078D : db $02 : dw $A9CC ; DDB
    dl $7E079B : db $02 : dw $DB7D ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $05CF ; Health
    dl $7E09C6 : db $02 : dw $00E6 ; Missiles
    dl $7E09CE : db $02 : dw $0015 ; Pbs
    dl $7E0AF6 : db $02 : dw $05B0 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED822 : db $02 : dw $0027 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0007 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_tourian_baby_skip:
    dw #preset_100early_tourian_metroids_4 ; Tourian: Metroids 4
    dl $7E078D : db $02 : dw $AA14 ; DDB
    dl $7E079B : db $02 : dw $DC65 ; MDB
    dl $7E07F3 : db $02 : dw $0045 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $05BD ; Health
    dl $7E09CA : db $02 : dw $0029 ; Supers
    dl $7E09CE : db $02 : dw $0017 ; Pbs
    dl $7E09D6 : db $02 : dw $0157 ; Reserves
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01B3 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED822 : db $02 : dw $002F ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $000F ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_tourian_zeb_skip:
    dw #preset_100early_tourian_baby_skip ; Tourian: Baby Skip
    dl $7E078D : db $02 : dw $AAA4 ; DDB
    dl $7E079B : db $02 : dw $DDF3 ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021D ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0026 ; Supers
    dl $7E0AF6 : db $02 : dw $0037 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C4 : db $02 : dw $03AF ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_tourian_escape_room_3:
    dw #preset_100early_tourian_zeb_skip ; Tourian: Zeb Skip
    dl $7E078D : db $02 : dw $AAEC ; DDB
    dl $7E079B : db $02 : dw $DE7A ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1009 ; Beams
    dl $7E09C2 : db $02 : dw $05DB ; Health
    dl $7E09C6 : db $02 : dw $008C ; Missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E09D6 : db $02 : dw $0190 ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0A76 : db $02 : dw $8000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $00DF ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED820 : db $02 : dw $7FCD ; Events, Items, Doors
    dl $7ED82C : db $02 : dw $0203 ; Events, Items, Doors
    dw #$FFFF
.after

preset_100early_tourian_escape_room_4:
    dw #preset_100early_tourian_escape_room_3 ; Tourian: Escape Room 3
    dl $7E078D : db $02 : dw $AB04 ; DDB
    dl $7E079B : db $02 : dw $DEA7 ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001C ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $05D6 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_100early_tourian_escape_parlor:
    dw #preset_100early_tourian_escape_room_4 ; Tourian: Escape Room 4
    dl $7E078D : db $02 : dw $AB34 ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A401 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0548 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $019A ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED90C : db $02 : dw $FF00 ; Events, Items, Doors
    dw #$FFFF
.after
