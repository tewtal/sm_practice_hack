
preset_hundo_bombs_ceres_elevator:
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
    dl $7E09C4 : db $02 : dw $0063 ; Max helath
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
    dl $7ED7D0 : db $02 : dw $0040 ; SRAM copy
    dl $7ED7D2 : db $02 : dw $0080 ; SRAM copy
    dl $7ED7D4 : db $02 : dw $8000 ; SRAM copy
    dl $7ED7D6 : db $02 : dw $4000 ; SRAM copy
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

preset_hundo_bombs_ceres_last_3_rooms:
    dw #preset_hundo_bombs_ceres_elevator ; Bombs: Ceres elevator
    dl $7E078D : db $02 : dw $ABA0 ; DDB
    dl $7E079B : db $02 : dw $E021 ; MDB
    dl $7E07C3 : db $02 : dw $B004 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E3C0 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $6900 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E093F : db $02 : dw $0002 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0018 ; Health
    dl $7E0A1C : db $02 : dw $0006 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $004A ; Samus X
    dl $7E0AFA : db $02 : dw $009E ; Samus Y
    dl $7ED82E : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_bombs_ship:
    dw #preset_hundo_bombs_ceres_last_3_rooms ; Bombs: Ceres Last 3 rooms
    dl $7E078B : db $02 : dw $0012 ; Elevator Index
    dl $7E078D : db $02 : dw $88FE ; DDB
    dl $7E079B : db $02 : dw $91F8 ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0006 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $03D0 ; Screen Y position in pixels
    dl $7E093F : db $02 : dw $0000 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0481 ; Samus X
    dl $7E0AFA : db $02 : dw $0440 ; Samus Y
    dl $7ED7D0 : db $02 : dw $4000 ; SRAM copy
    dl $7ED7D2 : db $02 : dw $8000 ; SRAM copy
    dl $7ED7D4 : db $02 : dw $0080 ; SRAM copy
    dl $7ED7D6 : db $02 : dw $2000 ; SRAM copy
    dl $7ED7D8 : db $02 : dw $0040 ; SRAM copy
    dl $7ED7E0 : db $02 : dw $0018 ; SRAM copy
    dl $7ED7F8 : db $02 : dw $0002 ; SRAM copy
    dl $7ED7FA : db $02 : dw $0039 ; SRAM copy
    dl $7ED802 : db $02 : dw $0001 ; SRAM copy
    dl $7ED914 : db $02 : dw $0022 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_bombs_parlor_down:
    dw #preset_hundo_bombs_ship ; Bombs: Ship
    dl $7E078B : db $02 : dw $0000 ; Elevator Index
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0400 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0033 ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dl $7ED7E0 : db $02 : dw $0063 ; SRAM copy
    dl $7ED7F8 : db $02 : dw $002A ; SRAM copy
    dl $7ED7FA : db $02 : dw $0007 ; SRAM copy
    dl $7ED7FC : db $02 : dw $0001 ; SRAM copy
    dl $7ED8F8 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED914 : db $02 : dw $0005 ; Events, Items, Doors
    dl $7ED918 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED91C : db $02 : dw $1010 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_bombs_morph:
    dw #preset_hundo_bombs_parlor_down ; Bombs: Parlor down
    dl $7E078D : db $02 : dw $8B9E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E9F ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
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

preset_hundo_bombs_pit_room:
    dw #preset_hundo_bombs_morph ; Bombs: Morph
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

preset_hundo_bombs_climb:
    dw #preset_hundo_bombs_pit_room ; Bombs: Pit Room
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0059 ; Health
    dl $7E0A1C : db $02 : dw $0008 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0033 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $0400 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0004 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_bombs_parlor_up:
    dw #preset_hundo_bombs_climb ; Bombs: Climb
    dl $7E078D : db $02 : dw $8B7A ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $019C ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_hundo_bombs_bomb_torizo:
    dw #preset_hundo_bombs_parlor_up ; Bombs: Parlor up
    dl $7E078D : db $02 : dw $8982 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $9879 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $02D6 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B2 : db $02 : dw $2400 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_alcatraz:
    dw #preset_hundo_bombs_bomb_torizo ; Bombs: Bomb Torizo
    dl $7E078D : db $02 : dw $8BAA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $1004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0004 ; Missiles
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0028 ; Samus X
    dl $7ED828 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED870 : db $02 : dw $0080 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0005 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_terminator:
    dw #preset_hundo_kraid_alcatraz ; Kraid: Alcatraz
    dl $7E078D : db $02 : dw $8BB6 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E090F : db $02 : dw $0800 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0032 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0804 ; More position/state
    dl $7E0AF6 : db $02 : dw $0115 ; Samus X
    dl $7E0AFA : db $02 : dw $0095 ; Samus Y
    dl $7E0B3F : db $02 : dw $0104 ; Blue suit
    dw #$FFFF
.after

preset_hundo_kraid_pirates_shaft:
    dw #preset_hundo_kraid_terminator ; Kraid: Terminator
    dl $7E078D : db $02 : dw $895E ; DDB
    dl $7E079B : db $02 : dw $990D ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $4280 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01EB ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C4 : db $02 : dw $00C7 ; Max helath
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED870 : db $02 : dw $0180 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0006 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_elevator:
    dw #preset_hundo_kraid_pirates_shaft ; Kraid: Pirates Shaft
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E0A1C : db $02 : dw $0006 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0084 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED91A : db $02 : dw $0008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_early_supers:
    dw #preset_hundo_kraid_elevator ; Kraid: Elevator
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
    dl $7E0915 : db $02 : dw $041B ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AB ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dl $7ED8B4 : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0009 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_reverse_mockball:
    dw #preset_hundo_kraid_early_supers ; Kraid: Early Supers
    dl $7E078D : db $02 : dw $8D5A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9C07 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $3400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C0 : db $02 : dw $0001 ; Manual/Auto reserve tank
    dl $7E09C2 : db $02 : dw $00B3 ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09C8 : db $02 : dw $000F ; Max missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CC : db $02 : dw $0005 ; Max supers
    dl $7E09D4 : db $02 : dw $0064 ; Max reserves
    dl $7E0A1C : db $02 : dw $0008 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003F ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED872 : db $02 : dw $040F ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0042 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $000E ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_dachora_room:
    dw #preset_hundo_kraid_reverse_mockball ; Kraid: Reverse Mockball
    dl $7E078D : db $02 : dw $8D4E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $061A ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09C8 : db $02 : dw $0014 ; Max missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $004D ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED870 : db $02 : dw $8180 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0046 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0011 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_big_pink:
    dw #preset_hundo_kraid_dachora_room ; Kraid: Dachora Room
    dl $7E078D : db $02 : dw $8CE2 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $9CB3 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00C2 ; Health
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $06A5 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_hundo_kraid_green_hill_zone:
    dw #preset_hundo_kraid_big_pink ; Kraid: Big Pink
    dl $7E078D : db $02 : dw $8DAE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $77FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0618 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1000 ; Beams
    dl $7E09A8 : db $02 : dw $1000 ; Beams
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0365 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED872 : db $02 : dw $048F ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0246 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0014 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_red_tower:
    dw #preset_hundo_kraid_green_hill_zone ; Kraid: Green Hill Zone
    dl $7E078D : db $02 : dw $8E92 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00B8 ; Health
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $0590 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8B6 : db $02 : dw $0008 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0015 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_kraid_entry:
    dw #preset_hundo_kraid_red_tower ; Kraid: Red Tower
    dl $7E078D : db $02 : dw $A348 ; DDB
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1004 ; Beams
    dl $7E09A8 : db $02 : dw $1004 ; Beams
    dl $7E09C2 : db $02 : dw $00AF ; Health
    dl $7E09C6 : db $02 : dw $0010 ; Missiles
    dl $7E0AF6 : db $02 : dw $004B ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED874 : db $02 : dw $0404 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $8008 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0016 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_kraid_2:
    dw #preset_hundo_kraid_kraid_entry ; Kraid: Kraid Entry
    dl $7E078D : db $02 : dw $919E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A56B ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0099 ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E0AF6 : db $02 : dw $01CC ; Samus X
    dl $7ED8B8 : db $02 : dw $0024 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0017 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_leaving_varia:
    dw #preset_hundo_kraid_kraid_2 ; Kraid: Kraid
    dl $7E078D : db $02 : dw $91DA ; DDB
    dl $7E079B : db $02 : dw $A6E2 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $6001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $1005 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1005 ; Collected Items
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C6 : db $02 : dw $0012 ; Missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E09D6 : db $02 : dw $0004 ; Reserves
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0027 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED828 : db $02 : dw $0104 ; Events, Items, Doors
    dl $7ED876 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $0064 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0018 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_leaving_kraid_hallway:
    dw #preset_hundo_kraid_leaving_varia ; Kraid: Leaving Varia
    dl $7E078D : db $02 : dw $91AA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A521 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0041 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00BF ; Health
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0AF6 : db $02 : dw $00E1 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8B8 : db $02 : dw $00EC ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_kraid_kraid_escape:
    dw #preset_hundo_kraid_leaving_kraid_hallway ; Kraid: Leaving Kraid Hallway
    dl $7E078D : db $02 : dw $914A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A4B1 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C4 : db $02 : dw $012B ; Max helath
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AA ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED874 : db $02 : dw $0C04 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $00EF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001A ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_speed_booster_business_center:
    dw #preset_hundo_kraid_kraid_escape ; Kraid: Kraid Escape
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E079F : db $02 : dw $0002 ; Region
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0232 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0011 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09D6 : db $02 : dw $0018 ; Reserves
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A2 ; Samus Y
    dw #$FFFF
.after

preset_hundo_speed_booster_hi_jump:
    dw #preset_hundo_speed_booster_business_center ; Speed Booster: Business Center
    dl $7E090F : db $02 : dw $6001 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $051B ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09D6 : db $02 : dw $001D ; Reserves
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0041 ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED8B8 : db $02 : dw $20EF ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_speed_booster_business_center_climb:
    dw #preset_hundo_speed_booster_hi_jump ; Speed Booster: Hi Jump
    dl $7E078D : db $02 : dw $93F6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $AA41 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $1105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1105 ; Collected Items
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09C4 : db $02 : dw $018F ; Max helath
    dl $7E09C6 : db $02 : dw $0018 ; Missiles
    dl $7E09C8 : db $02 : dw $0019 ; Max missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $019C ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $01A1 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001F ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_speed_booster_cathedral_entrance:
    dw #preset_hundo_speed_booster_business_center_climb ; Speed Booster: Business Center Climb
    dl $7E078D : db $02 : dw $941A ; DDB
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $BFFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02F6 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00B7 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dw #$FFFF
.after

preset_hundo_speed_booster_cathedral:
    dw #preset_hundo_speed_booster_cathedral_entrance ; Speed Booster: Cathedral Entrance
    dl $7E078D : db $02 : dw $92CA ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7B3 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E09D6 : db $02 : dw $0022 ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02A6 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B8 : db $02 : dw $24EF ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_speed_booster_rising_tide:
    dw #preset_hundo_speed_booster_cathedral ; Speed Booster: Cathedral
    dl $7E078D : db $02 : dw $92B2 ; DDB
    dl $7E079B : db $02 : dw $A788 ; MDB
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $016E ; Health
    dl $7E09C6 : db $02 : dw $001A ; Missiles
    dl $7E09C8 : db $02 : dw $001E ; Max missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $02AF ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED876 : db $02 : dw $01A3 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $26EF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0020 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_speed_booster_bubble_mountain:
    dw #preset_hundo_speed_booster_rising_tide ; Speed Booster: Rising Tide
    dl $7E078D : db $02 : dw $929A ; DDB
    dl $7E079B : db $02 : dw $AFA3 ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0169 ; Health
    dl $7E0AF6 : db $02 : dw $04C2 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_hundo_speed_booster_bat_cave:
    dw #preset_hundo_speed_booster_bubble_mountain ; Speed Booster: Bubble Mountain
    dl $7E078D : db $02 : dw $973E ; DDB
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0178 ; Health
    dl $7E09C6 : db $02 : dw $001B ; Missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0AF6 : db $02 : dw $01B8 ; Samus X
    dl $7ED8BA : db $02 : dw $0011 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0021 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_speed_booster_leaving_speed_booster:
    dw #preset_hundo_speed_booster_bat_cave ; Speed Booster: Bat Cave
    dl $7E078D : db $02 : dw $95B2 ; DDB
    dl $7E079B : db $02 : dw $AD1B ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3400 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $3105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3105 ; Collected Items
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09C6 : db $02 : dw $001C ; Missiles
    dl $7E09C8 : db $02 : dw $0023 ; Max missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09D6 : db $02 : dw $0038 ; Reserves
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0042 ; Samus X
    dl $7ED878 : db $02 : dw $0006 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0031 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0023 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ice_beam_single_chamber:
    dw #preset_hundo_speed_booster_leaving_speed_booster ; Speed Booster: Leaving Speed Booster
    dl $7E078D : db $02 : dw $97AA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00FD ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $018A ; Health
    dl $7E09C6 : db $02 : dw $0020 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09D6 : db $02 : dw $0064 ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01AD ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0020 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0025 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ice_beam_double_chamber:
    dw #preset_hundo_ice_beam_single_chamber ; Ice Beam: Single Chamber
    dl $7E078D : db $02 : dw $9582 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E090F : db $02 : dw $A002 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $011A ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0171 ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $0049 ; Samus X
    dl $7ED8BA : db $02 : dw $0071 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ice_beam_double_chamber_revisited:
    dw #preset_hundo_ice_beam_double_chamber ; Ice Beam: Double Chamber
    dl $7E078D : db $02 : dw $961E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $ADDE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1005 ; Beams
    dl $7E09A8 : db $02 : dw $1005 ; Beams
    dl $7E09C6 : db $02 : dw $0025 ; Missiles
    dl $7E09C8 : db $02 : dw $0028 ; Max missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $004E ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED878 : db $02 : dw $001E ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $00F1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0027 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ice_beam_bubble_mountain_revisited:
    dw #preset_hundo_ice_beam_double_chamber_revisited ; Ice Beam: Double Chamber Revisited
    dl $7E078D : db $02 : dw $9606 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $000D ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0023 ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $008C ; Samus X
    dl $7ED91A : db $02 : dw $0028 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ice_beam_business_center_climb_ice:
    dw #preset_hundo_ice_beam_bubble_mountain_revisited ; Ice Beam: Bubble Mountain Revisited
    dl $7E078D : db $02 : dw $97DA ; DDB
    dl $7E079B : db $02 : dw $B167 ; MDB
    dl $7E07C3 : db $02 : dw $860B ; GFX Pointers
    dl $7E07C5 : db $02 : dw $21C0 ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2C0 ; GFX Pointers
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0185 ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0AF6 : db $02 : dw $0040 ; Samus X
    dl $7ED91A : db $02 : dw $0029 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ice_beam_ice_beam_gate_room:
    dw #preset_hundo_ice_beam_business_center_climb_ice ; Ice Beam: Business Center Climb Ice
    dl $7E078D : db $02 : dw $9816 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0025 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $0021 ; Samus X
    dl $7E0AFA : db $02 : dw $038C ; Samus Y
    dl $7ED8B8 : db $02 : dw $2EEF ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ice_beam_ice_beam_snake_room:
    dw #preset_hundo_ice_beam_ice_beam_gate_room ; Ice Beam: Ice Beam Gate Room
    dl $7E078D : db $02 : dw $931E ; DDB
    dl $7E079B : db $02 : dw $A75D ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $FA00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0180 ; Health
    dl $7E09C6 : db $02 : dw $0024 ; Missiles
    dl $7E0AF6 : db $02 : dw $0030 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_hundo_ice_beam_ice_beam_snake_room_revisit:
    dw #preset_hundo_ice_beam_ice_beam_snake_room ; Ice Beam: Ice Beam Snake Room
    dl $7E078D : db $02 : dw $937E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A890 ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E09A6 : db $02 : dw $1007 ; Beams
    dl $7E09A8 : db $02 : dw $1007 ; Beams
    dl $7E09C2 : db $02 : dw $0185 ; Health
    dl $7E0AF6 : db $02 : dw $00BA ; Samus X
    dl $7ED876 : db $02 : dw $01A7 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002A ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ice_beam_ice_beam_gate_room_escape:
    dw #preset_hundo_ice_beam_ice_beam_snake_room_revisit ; Ice Beam: Ice Beam Snake Room Revisit
    dl $7E078D : db $02 : dw $935A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A8B9 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $5001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C7 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_hundo_ice_beam_business_center_elevator:
    dw #preset_hundo_ice_beam_ice_beam_gate_room_escape ; Ice Beam: Ice Beam Gate Room Escape
    dl $7E078D : db $02 : dw $9276 ; DDB
    dl $7E079B : db $02 : dw $A815 ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $03CA ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $042A ; Samus X
    dw #$FFFF
.after

preset_hundo_phantoon_alpha_spark:
    dw #preset_hundo_ice_beam_business_center_elevator ; Ice Beam: Business Center Elevator
    dl $7E078D : db $02 : dw $92EE ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0030 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_hundo_phantoon_red_tower_revisit:
    dw #preset_hundo_phantoon_alpha_spark ; Phantoon: Alpha Spark
    dl $7E078D : db $02 : dw $910E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A3DD ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $3C00 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $014C ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0A1C : db $02 : dw $00CA ; Samus position/state
    dl $7E0A1E : db $02 : dw $1B04 ; More position/state
    dl $7E0A68 : db $02 : dw $000E ; Flash suit
    dl $7E0AF6 : db $02 : dw $0047 ; Samus X
    dl $7E0AFA : db $02 : dw $007A ; Samus Y
    dl $7E0B3F : db $02 : dw $0004 ; Blue suit
    dw #$FFFF
.after

preset_hundo_phantoon_hellway:
    dw #preset_hundo_phantoon_red_tower_revisit ; Phantoon: Red Tower Revisit
    dl $7E078D : db $02 : dw $90F6 ; DDB
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $87FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0006 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0149 ; Health
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $00C7 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dw #$FFFF
.after

preset_hundo_phantoon_leaving_alpha_pbs:
    dw #preset_hundo_phantoon_hellway ; Phantoon: Hellway
    dl $7E078D : db $02 : dw $9096 ; DDB
    dl $7E079B : db $02 : dw $A3AE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $012F ; Health
    dl $7E09C6 : db $02 : dw $0029 ; Missiles
    dl $7E09C8 : db $02 : dw $002D ; Max missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D0 : db $02 : dw $0005 ; Max pbs
    dl $7E0A1C : db $02 : dw $000B ; Samus position/state
    dl $7E0AF6 : db $02 : dw $02C0 ; Samus X
    dl $7ED874 : db $02 : dw $0F04 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $A008 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002C ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_phantoon_kihunter_room:
    dw #preset_hundo_phantoon_leaving_alpha_pbs ; Phantoon: Leaving Alpha PBs
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C01 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0137 ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0007 ; Pbs
    dl $7E09D0 : db $02 : dw $000A ; Max pbs
    dl $7E0A1C : db $02 : dw $0019 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0308 ; More position/state
    dl $7E0AF6 : db $02 : dw $0072 ; Samus X
    dl $7E0AFA : db $02 : dw $002D ; Samus Y
    dl $7ED874 : db $02 : dw $0F84 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C01 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $E808 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002D ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_phantoon_ocean_fly:
    dw #preset_hundo_phantoon_kihunter_room ; Phantoon: Kihunter Room
    dl $7E078D : db $02 : dw $8AF6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $948C ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0131 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0028 ; Missiles
    dl $7E0A1C : db $02 : dw $0011 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0A68 : db $02 : dw $00AD ; Flash suit
    dl $7E0AF6 : db $02 : dw $0191 ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED8B0 : db $02 : dw $2000 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_phantoon_phantoon_2:
    dw #preset_hundo_phantoon_ocean_fly ; Phantoon: Ocean Fly
    dl $7E078D : db $02 : dw $A21C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $CC6F ; MDB
    dl $7E079F : db $02 : dw $0003 ; Region
    dl $7E07C3 : db $02 : dw $AE9E ; GFX Pointers
    dl $7E07C5 : db $02 : dw $A6BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B1 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $01F8 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $008F ; Health
    dl $7E09C6 : db $02 : dw $0032 ; Missiles
    dl $7E09C8 : db $02 : dw $0037 ; Max missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CE : db $02 : dw $0006 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0271 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED870 : db $02 : dw $8190 ; Events, Items, Doors
    dl $7ED880 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8B0 : db $02 : dw $3000 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0010 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0032 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_gravity_ws_shaft_up_1:
    dw #preset_hundo_phantoon_phantoon_2 ; Phantoon: Phantoon
    dl $7E078D : db $02 : dw $A2C4 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E07C5 : db $02 : dw $E7BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $01E9 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $012F ; Health
    dl $7E09C6 : db $02 : dw $0035 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0007 ; Pbs
    dl $7E0A1C : db $02 : dw $001A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0304 ; More position/state
    dl $7E0AF6 : db $02 : dw $0289 ; Samus X
    dl $7E0AFA : db $02 : dw $003A ; Samus Y
    dl $7ED82A : db $02 : dw $0100 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0070 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_gravity_ws_right_supers:
    dw #preset_hundo_gravity_ws_shaft_up_1 ; Gravity: WS Shaft Up 1
    dl $7E078D : db $02 : dw $A294 ; DDB
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $04D7 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $53FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0600 ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $0006 ; Pbs
    dl $7E0A1C : db $02 : dw $0027 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0508 ; More position/state
    dl $7E0AF6 : db $02 : dw $05BC ; Samus X
    dl $7E0AFA : db $02 : dw $0690 ; Samus Y
    dl $7ED8C0 : db $02 : dw $0074 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0033 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_gravity_spiky_room_of_death:
    dw #preset_hundo_gravity_ws_right_supers ; Gravity: WS Right Supers
    dl $7E078D : db $02 : dw $A2E8 ; DDB
    dl $7E090F : db $02 : dw $D801 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0471 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $011B ; Health
    dl $7E09C6 : db $02 : dw $0034 ; Missiles
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E09CC : db $02 : dw $000F ; Max supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $000F ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $0455 ; Samus X
    dl $7E0AFA : db $02 : dw $04E6 ; Samus Y
    dl $7ED880 : db $02 : dw $0061 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0037 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_gravity_ws_etank:
    dw #preset_hundo_gravity_spiky_room_of_death ; Gravity: Spiky Room of Death
    dl $7E078D : db $02 : dw $A258 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $CBD5 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00B7 ; Health
    dl $7E09C6 : db $02 : dw $0033 ; Missiles
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7E0AFA : db $02 : dw $016B ; Samus Y
    dl $7ED8C0 : db $02 : dw $007C ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_gravity_spiky_room_of_death_revisit:
    dw #preset_hundo_gravity_ws_etank ; Gravity: WS E-Tank
    dl $7E078D : db $02 : dw $A27C ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $CC27 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $D400 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0005 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01F3 ; Health
    dl $7E09C4 : db $02 : dw $01F3 ; Max helath
    dl $7E09CA : db $02 : dw $000E ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $029E ; Samus X
    dl $7E0AFA : db $02 : dw $008D ; Samus Y
    dl $7ED880 : db $02 : dw $0071 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $087C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0038 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_gravity_ws_shaft_up_2:
    dw #preset_hundo_gravity_spiky_room_of_death_revisit ; Gravity: Spiky Room of Death Revisit
    dl $7E078D : db $02 : dw $A24C ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CD5C ; MDB
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $F300 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01DF ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $004E ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_hundo_gravity_attic:
    dw #preset_hundo_gravity_ws_shaft_up_2 ; Gravity: WS Shaft Up 2
    dl $7E078D : db $02 : dw $A2D0 ; DDB
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E090F : db $02 : dw $0800 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5C00 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0035 ; Missiles
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0449 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED91A : db $02 : dw $0039 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_gravity_ws_robot_missiles:
    dw #preset_hundo_gravity_attic ; Gravity: Attic
    dl $7E078D : db $02 : dw $A228 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $CA52 ; MDB
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $63FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01EB ; Health
    dl $7E09C6 : db $02 : dw $002D ; Missiles
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E0A1C : db $02 : dw $001E ; Samus position/state
    dl $7E0A1E : db $02 : dw $0408 ; More position/state
    dl $7E0AF6 : db $02 : dw $06CD ; Samus X
    dl $7E0AFA : db $02 : dw $0099 ; Samus Y
    dl $7E0B3F : db $02 : dw $0104 ; Blue suit
    dl $7ED8C0 : db $02 : dw $0B7C ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_gravity_attic_revisit:
    dw #preset_hundo_gravity_ws_robot_missiles ; Gravity: WS Robot Missiles
    dl $7E078D : db $02 : dw $A1D4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $CAAE ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01AD ; Health
    dl $7E09C6 : db $02 : dw $0026 ; Missiles
    dl $7E09C8 : db $02 : dw $003C ; Max missiles
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0046 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED880 : db $02 : dw $0079 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003A ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_gravity_sky_missiles:
    dw #preset_hundo_gravity_attic_revisit ; Gravity: Attic Revisit
    dl $7E078D : db $02 : dw $A1EC ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CA52 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $97FE ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01A3 ; Health
    dl $7E09C6 : db $02 : dw $0025 ; Missiles
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0AF6 : db $02 : dw $003C ; Samus X
    dw #$FFFF
.after

preset_hundo_gravity_bowling:
    dw #preset_hundo_gravity_sky_missiles ; Gravity: Sky Missiles
    dl $7E078D : db $02 : dw $89E2 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9461 ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $A900 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $019E ; Health
    dl $7E09C6 : db $02 : dw $002E ; Missiles
    dl $7E09C8 : db $02 : dw $0046 ; Max missiles
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E09CE : db $02 : dw $0006 ; Pbs
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $0194 ; Samus X
    dl $7E0B3F : db $02 : dw $0001 ; Blue suit
    dl $7ED870 : db $02 : dw $819C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003D ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_gravity_leaving_gravity:
    dw #preset_hundo_gravity_bowling ; Gravity: Bowling
    dl $7E078D : db $02 : dw $A1A4 ; DDB
    dl $7E079B : db $02 : dw $CE40 ; MDB
    dl $7E079F : db $02 : dw $0003 ; Region
    dl $7E07C3 : db $02 : dw $AE9E ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E7BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $3125 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3125 ; Collected Items
    dl $7E09C2 : db $02 : dw $011C ; Health
    dl $7E09C6 : db $02 : dw $0033 ; Missiles
    dl $7E09C8 : db $02 : dw $004B ; Max missiles
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D4 : db $02 : dw $00C8 ; Max reserves
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $006D ; Samus X
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED880 : db $02 : dw $00FF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0040 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_crateria_pbs:
    dw #preset_hundo_gravity_leaving_gravity ; Gravity: Leaving Gravity
    dl $7E078D : db $02 : dw $8ADE ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $948C ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $9C00 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $03FF ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0038 ; Missiles
    dl $7E09C8 : db $02 : dw $0050 ; Max missiles
    dl $7E0A1C : db $02 : dw $0010 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $008C ; Samus X
    dl $7E0AFA : db $02 : dw $00A8 ; Samus Y
    dl $7E0B3F : db $02 : dw $0003 ; Blue suit
    dl $7ED870 : db $02 : dw $819E ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0044 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_ship_room:
    dw #preset_hundo_brinstar_cleanup_crateria_pbs ; Brinstar Cleanup: Crateria PBs
    dl $7E078D : db $02 : dw $893A ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $93AA ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00B9 ; Health
    dl $7E09C6 : db $02 : dw $0034 ; Missiles
    dl $7E09CE : db $02 : dw $000A ; Pbs
    dl $7E09D0 : db $02 : dw $000F ; Max pbs
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0042 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED870 : db $02 : dw $819F ; Events, Items, Doors
    dl $7ED8B0 : db $02 : dw $3002 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0045 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_gauntlet_etank:
    dw #preset_hundo_brinstar_cleanup_ship_room ; Brinstar Cleanup: Ship Room
    dl $7E078D : db $02 : dw $892E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $92B3 ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E090F : db $02 : dw $E800 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0002 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $BC00 ; Screen subpixel Y position
    dl $7E09A6 : db $02 : dw $1001 ; Beams
    dl $7E09C2 : db $02 : dw $001D ; Health
    dl $7E09D6 : db $02 : dw $0035 ; Reserves
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0074 ; Samus X
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_green_pirates_shaft:
    dw #preset_hundo_brinstar_cleanup_gauntlet_etank ; Brinstar Cleanup: Gauntlet E-Tank
    dl $7E078D : db $02 : dw $8952 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $965B ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $01F8 ; Health
    dl $7E09C4 : db $02 : dw $0257 ; Max helath
    dl $7E09CE : db $02 : dw $0009 ; Pbs
    dl $7E0AF6 : db $02 : dw $002B ; Samus X
    dl $7ED870 : db $02 : dw $81BF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0046 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_green_shaft_revisit:
    dw #preset_hundo_brinstar_cleanup_green_pirates_shaft ; Brinstar Cleanup: Green Pirates Shaft
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0C00 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0039 ; Missiles
    dl $7E09C8 : db $02 : dw $005A ; Max missiles
    dl $7E0A1C : db $02 : dw $0008 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0088 ; Samus X
    dl $7ED870 : db $02 : dw $87BF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0048 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_green_brinstar_beetoms:
    dw #preset_hundo_brinstar_cleanup_green_shaft_revisit ; Brinstar Cleanup: Green Shaft Revisit
    dl $7E078D : db $02 : dw $8C0A ; DDB
    dl $7E078F : db $02 : dw $0009 ; DoorOut Index
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0A1D ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01FD ; Health
    dl $7E09CE : db $02 : dw $0008 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0032 ; Samus X
    dl $7E0AFA : db $02 : dw $0A8B ; Samus Y
    dl $7ED91A : db $02 : dw $0049 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_etecoon_energy_tank_room:
    dw #preset_hundo_brinstar_cleanup_green_brinstar_beetoms ; Brinstar Cleanup: Green Brinstar Beetoms
    dl $7E078D : db $02 : dw $8F3A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A051 ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01F5 ; Health
    dl $7E09C6 : db $02 : dw $0038 ; Missiles
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CC : db $02 : dw $0014 ; Max supers
    dl $7E09CE : db $02 : dw $000C ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C5 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED872 : db $02 : dw $848F ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $E818 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004B ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_etecoon_room:
    dw #preset_hundo_brinstar_cleanup_etecoon_energy_tank_room ; Brinstar Cleanup: Etecoon Energy Tank Room
    dl $7E078D : db $02 : dw $8F5E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A011 ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $029B ; Health
    dl $7E09C4 : db $02 : dw $02BB ; Max helath
    dl $7E0AF6 : db $02 : dw $04D8 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED872 : db $02 : dw $C48F ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004C ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_dachora_room_revisit:
    dw #preset_hundo_brinstar_cleanup_etecoon_room ; Brinstar Cleanup: Etecoon Room
    dl $7E078D : db $02 : dw $8D06 ; DDB
    dl $7E078F : db $02 : dw $0008 ; DoorOut Index
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $05F5 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $028F ; Health
    dl $7E09CE : db $02 : dw $000F ; Pbs
    dl $7E09D0 : db $02 : dw $0014 ; Max pbs
    dl $7E0A1C : db $02 : dw $0027 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0508 ; More position/state
    dl $7E0AF6 : db $02 : dw $00B4 ; Samus X
    dl $7E0AFA : db $02 : dw $0690 ; Samus Y
    dl $7ED870 : db $02 : dw $A7BF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004E ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_big_pink_revisit:
    dw #preset_hundo_brinstar_cleanup_dachora_room_revisit ; Brinstar Cleanup: Dachora Room Revisit
    dl $7E078D : db $02 : dw $8CE2 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $9CB3 ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $04ED ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $000B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $05AA ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_mission_impossible_pbs:
    dw #preset_hundo_brinstar_cleanup_big_pink_revisit ; Brinstar Cleanup: Big Pink Revisit
    dl $7E078D : db $02 : dw $8DAE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $031A ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0277 ; Health
    dl $7E09C6 : db $02 : dw $003D ; Missiles
    dl $7E09C8 : db $02 : dw $005F ; Max missiles
    dl $7E09CE : db $02 : dw $000E ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0264 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED872 : db $02 : dw $C4AF ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0346 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0051 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_pink_brinstar_etank:
    dw #preset_hundo_brinstar_cleanup_mission_impossible_pbs ; Brinstar Cleanup: Mission Impossible PBs
    dl $7E078D : db $02 : dw $8E62 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0296 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $042A ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0268 ; Health
    dl $7E09C6 : db $02 : dw $003A ; Missiles
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E09CE : db $02 : dw $0013 ; Pbs
    dl $7E09D0 : db $02 : dw $0019 ; Max pbs
    dl $7E0A1C : db $02 : dw $000B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $02F6 ; Samus X
    dl $7E0AFA : db $02 : dw $049B ; Samus Y
    dl $7E0B3F : db $02 : dw $0001 ; Blue suit
    dl $7ED872 : db $02 : dw $C5AF ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $8346 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0055 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_spore_spawn_supers:
    dw #preset_hundo_brinstar_cleanup_pink_brinstar_etank ; Brinstar Cleanup: Pink Brinstar E-Tank
    dl $7E078D : db $02 : dw $8FB2 ; DDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $02F3 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $053F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0308 ; Health
    dl $7E09C4 : db $02 : dw $031F ; Max helath
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E09CE : db $02 : dw $0012 ; Pbs
    dl $7E0A1C : db $02 : dw $0007 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0389 ; Samus X
    dl $7E0AFA : db $02 : dw $05AB ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED874 : db $02 : dw $0F8C ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $E8D8 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0059 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_waterway_etank:
    dw #preset_hundo_brinstar_cleanup_spore_spawn_supers ; Brinstar Cleanup: Spore Spawn Supers
    dl $7E078D : db $02 : dw $8F82 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $090A ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $003F ; Missiles
    dl $7E09C8 : db $02 : dw $0064 ; Max missiles
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E09CC : db $02 : dw $0019 ; Max supers
    dl $7E09CE : db $02 : dw $000F ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0051 ; Samus X
    dl $7E0AFA : db $02 : dw $098B ; Samus Y
    dl $7ED870 : db $02 : dw $E7BF ; Events, Items, Doors
    dl $7ED872 : db $02 : dw $C5EF ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $8B46 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $E8F8 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $005D ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_mama_turtle_etank_big_pink_charge_escape:
    dw #preset_hundo_brinstar_cleanup_waterway_etank ; Brinstar Cleanup: Waterway E-Tank
    dl $7E078D : db $02 : dw $8F8E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $C800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0900 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0383 ; Health
    dl $7E09C4 : db $02 : dw $0383 ; Max helath
    dl $7E09C6 : db $02 : dw $0041 ; Missiles
    dl $7E09CE : db $02 : dw $0012 ; Pbs
    dl $7E09D6 : db $02 : dw $005D ; Reserves
    dl $7E0A1C : db $02 : dw $0019 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0308 ; More position/state
    dl $7E0AF6 : db $02 : dw $0048 ; Samus X
    dl $7ED874 : db $02 : dw $0F8E ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0061 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_mama_turtle_etank_green_hills_revisit:
    dw #preset_hundo_mama_turtle_etank_big_pink_charge_escape ; Mama Turtle E-Tank: Big Pink Charge Escape
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $02F2 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $061D ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $0352 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dw #$FFFF
.after

preset_hundo_mama_turtle_etank_blockbuster:
    dw #preset_hundo_mama_turtle_etank_green_hills_revisit ; Mama Turtle E-Tank: Green Hills Revisit
    dl $7E078D : db $02 : dw $8E92 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E0911 : db $02 : dw $0021 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $037E ; Health
    dl $7E09C6 : db $02 : dw $0045 ; Missiles
    dl $7E09C8 : db $02 : dw $0069 ; Max missiles
    dl $7E09CE : db $02 : dw $0010 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0081 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED872 : db $02 : dw $C7EF ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $E8F9 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0062 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_mama_turtle_etank_main_street:
    dw #preset_hundo_mama_turtle_etank_blockbuster ; Mama Turtle E-Tank: Blockbuster
    dl $7E078D : db $02 : dw $A330 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CFC9 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $071F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $037C ; Health
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E09CE : db $02 : dw $000F ; Pbs
    dl $7E0A1C : db $02 : dw $0016 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0204 ; More position/state
    dl $7E0AF6 : db $02 : dw $019A ; Samus X
    dl $7E0AFA : db $02 : dw $07A8 ; Samus Y
    dl $7ED820 : db $02 : dw $0801 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0064 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_mama_turtle_etank_fish_tank:
    dw #preset_hundo_mama_turtle_etank_main_street ; Mama Turtle E-Tank: Main Street
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0618 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0330 ; Health
    dl $7E09C6 : db $02 : dw $0044 ; Missiles
    dl $7E09C8 : db $02 : dw $006E ; Max missiles
    dl $7E09CE : db $02 : dw $0010 ; Pbs
    dl $7E0A1C : db $02 : dw $0007 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0160 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED880 : db $02 : dw $01FF ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_mama_turtle_etank_mama_turtle_etank_2:
    dw #preset_hundo_mama_turtle_etank_fish_tank ; Mama Turtle E-Tank: Fish Tank
    dl $7E078D : db $02 : dw $A3B4 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D017 ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01FD ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $01E1 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7E0B3F : db $02 : dw $0001 ; Blue suit
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_fish_tank_revisit:
    dw #preset_hundo_mama_turtle_etank_mama_turtle_etank_2 ; Mama Turtle E-Tank: Mama Turtle E-Tank
    dl $7E078D : db $02 : dw $A3E4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D055 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $008E ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0301 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $03E7 ; Health
    dl $7E09C4 : db $02 : dw $03E7 ; Max helath
    dl $7E09C6 : db $02 : dw $0049 ; Missiles
    dl $7E09C8 : db $02 : dw $0073 ; Max missiles
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $012E ; Samus X
    dl $7E0AFA : db $02 : dw $037B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED880 : db $02 : dw $0DFF ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $4B7C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0066 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_crab_supers:
    dw #preset_hundo_maridia_cleanup_fish_tank_revisit ; Maridia Cleanup: Fish Tank Revisit
    dl $7E078D : db $02 : dw $A3F0 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D0B9 ; MDB
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $031F ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0180 ; Samus X
    dl $7E0AFA : db $02 : dw $03BB ; Samus Y
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_mt_everest:
    dw #preset_hundo_maridia_cleanup_crab_supers ; Maridia Cleanup: Crab Supers
    dl $7E078D : db $02 : dw $A45C ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $CFC9 ; MDB
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1BFD ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $03AB ; Health
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E09CC : db $02 : dw $001E ; Max supers
    dl $7E0A1C : db $02 : dw $001E ; Samus position/state
    dl $7E0A1E : db $02 : dw $0408 ; More position/state
    dl $7E0AF6 : db $02 : dw $02A4 ; Samus X
    dl $7E0AFA : db $02 : dw $0299 ; Samus Y
    dl $7ED880 : db $02 : dw $0FFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0068 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_beach_missiles:
    dw #preset_hundo_maridia_cleanup_mt_everest ; Maridia Cleanup: Mt Everest
    dl $7E078D : db $02 : dw $A468 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $D1A3 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $036E ; Health
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $0079 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_maridia_bug_room:
    dw #preset_hundo_maridia_cleanup_beach_missiles ; Maridia Cleanup: Beach Missiles
    dl $7E078D : db $02 : dw $A4BC ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D1DD ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $1C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00F4 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $035A ; Health
    dl $7E09C6 : db $02 : dw $004E ; Missiles
    dl $7E09C8 : db $02 : dw $0078 ; Max missiles
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0060 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED880 : db $02 : dw $4FFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0069 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_watering_hole:
    dw #preset_hundo_maridia_cleanup_maridia_bug_room ; Maridia Cleanup: Maridia Bug Room
    dl $7E078D : db $02 : dw $A4D4 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D16D ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0019 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $005F ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_maridia_bug_room_revisit:
    dw #preset_hundo_maridia_cleanup_watering_hole ; Maridia Cleanup: Watering Hole
    dl $7E078D : db $02 : dw $A498 ; DDB
    dl $7E079B : db $02 : dw $D13B ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00C5 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $036E ; Health
    dl $7E09C6 : db $02 : dw $0052 ; Missiles
    dl $7E09C8 : db $02 : dw $007D ; Max missiles
    dl $7E09CA : db $02 : dw $0012 ; Supers
    dl $7E09CC : db $02 : dw $0023 ; Max supers
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $012C ; Samus X
    dl $7ED880 : db $02 : dw $7FFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $006B ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_beach_revisit:
    dw #preset_hundo_maridia_cleanup_maridia_bug_room_revisit ; Maridia Cleanup: Maridia Bug Room Revisit
    dl $7E078D : db $02 : dw $A48C ; DDB
    dl $7E079B : db $02 : dw $D16D ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0355 ; Health
    dl $7E0A1C : db $02 : dw $0051 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0208 ; More position/state
    dl $7E0AF6 : db $02 : dw $03A2 ; Samus X
    dl $7E0AFA : db $02 : dw $0183 ; Samus Y
    dw #$FFFF
.after

preset_hundo_draygon_aqueduct:
    dw #preset_hundo_maridia_cleanup_beach_revisit ; Maridia Cleanup: Beach Revisit
    dl $7E078D : db $02 : dw $A4E0 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D1A3 ; MDB
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1BFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E0A1C : db $02 : dw $0027 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0508 ; More position/state
    dl $7E0AF6 : db $02 : dw $01B3 ; Samus X
    dl $7E0AFA : db $02 : dw $0390 ; Samus Y
    dl $7ED8C0 : db $02 : dw $CB7C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $006C ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_draygon_botwoon:
    dw #preset_hundo_draygon_aqueduct ; Draygon: Aqueduct
    dl $7E078D : db $02 : dw $A72C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $D617 ; MDB
    dl $7E07C3 : db $02 : dw $E78D ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2EBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B9 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $000D ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $000F ; Pbs
    dl $7E0A1C : db $02 : dw $0051 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0208 ; More position/state
    dl $7E0AF6 : db $02 : dw $03DA ; Samus X
    dl $7E0AFA : db $02 : dw $0085 ; Samus Y
    dl $7E0B3F : db $02 : dw $0104 ; Blue suit
    dl $7ED91A : db $02 : dw $006E ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_draygon_full_halfie:
    dw #preset_hundo_draygon_botwoon ; Draygon: Botwoon
    dl $7E078D : db $02 : dw $A918 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D7E4 ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0006 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $03AF ; Health
    dl $7E09C6 : db $02 : dw $0054 ; Missiles
    dl $7E09CA : db $02 : dw $000E ; Supers
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E0A1C : db $02 : dw $0067 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0608 ; More position/state
    dl $7E0AF6 : db $02 : dw $004B ; Samus X
    dl $7E0AFA : db $02 : dw $0091 ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED82C : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $006F ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_draygon_draygon_missiles:
    dw #preset_hundo_draygon_full_halfie ; Draygon: Full Halfie
    dl $7E078D : db $02 : dw $A8E8 ; DDB
    dl $7E079B : db $02 : dw $D72A ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00FD ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0330 ; Health
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $06B0 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8C2 : db $02 : dw $0400 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_draygon_draygon_2:
    dw #preset_hundo_draygon_draygon_missiles ; Draygon: Draygon Missiles
    dl $7E078D : db $02 : dw $A7F8 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D78F ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0059 ; Missiles
    dl $7E09C8 : db $02 : dw $0082 ; Max missiles
    dl $7E09CA : db $02 : dw $000C ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $002F ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED882 : db $02 : dw $0080 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $0C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0070 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_draygon_draygon_escape:
    dw #preset_hundo_draygon_draygon_2 ; Draygon: Draygon
    dl $7E078D : db $02 : dw $A978 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D9AA ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $3325 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3325 ; Collected Items
    dl $7E09C2 : db $02 : dw $0291 ; Health
    dl $7E09C6 : db $02 : dw $0046 ; Missiles
    dl $7E09CE : db $02 : dw $0010 ; Pbs
    dl $7E0A1C : db $02 : dw $0007 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0A68 : db $02 : dw $0001 ; Flash suit
    dl $7E0AF6 : db $02 : dw $00C0 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED82C : db $02 : dw $0003 ; Events, Items, Doors
    dl $7ED882 : db $02 : dw $0480 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $8C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0071 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_aqueduct_revisit_1:
    dw #preset_hundo_draygon_draygon_escape ; Draygon: Draygon Escape
    dl $7E078D : db $02 : dw $A8DC ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D7E4 ; MDB
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $02B9 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6000 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $3324 ; Equipped Items
    dl $7E09A6 : db $02 : dw $1007 ; Beams
    dl $7E09C2 : db $02 : dw $044B ; Health
    dl $7E09C4 : db $02 : dw $044B ; Max helath
    dl $7E0A1C : db $02 : dw $001F ; Samus position/state
    dl $7E0A1E : db $02 : dw $0404 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $032A ; Samus X
    dl $7E0AFA : db $02 : dw $0059 ; Samus Y
    dl $7ED882 : db $02 : dw $0580 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $CC00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0073 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_right_sandpit:
    dw #preset_hundo_maridia_cleanup_2_aqueduct_revisit_1 ; Maridia Cleanup 2: Aqueduct Revisit 1
    dl $7E078D : db $02 : dw $A7D4 ; DDB
    dl $7E079B : db $02 : dw $D5A7 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0446 ; Health
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $05B6 ; Samus X
    dl $7E0AFA : db $02 : dw $02CB ; Samus Y
    dl $7ED91A : db $02 : dw $0075 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_puyo_ice_clip_springball:
    dw #preset_hundo_maridia_cleanup_2_right_sandpit ; Maridia Cleanup 2: Right Sandpit
    dl $7E078D : db $02 : dw $A690 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D646 ; MDB
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $042D ; Health
    dl $7E09C6 : db $02 : dw $004B ; Missiles
    dl $7E09C8 : db $02 : dw $0087 ; Max missiles
    dl $7E09CE : db $02 : dw $0015 ; Pbs
    dl $7E09D0 : db $02 : dw $001E ; Max pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C5 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED882 : db $02 : dw $058C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0077 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_shaktool:
    dw #preset_hundo_maridia_cleanup_2_puyo_ice_clip_springball ; Maridia Cleanup 2: Puyo Ice Clip (Springball)
    dl $7E078D : db $02 : dw $A78C ; DDB
    dl $7E079B : db $02 : dw $D69A ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011C ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $041E ; Health
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00D0 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_shaktool_revisit:
    dw #preset_hundo_maridia_cleanup_2_shaktool ; Maridia Cleanup 2: Shaktool
    dl $7E078D : db $02 : dw $A8D0 ; DDB
    dl $7E079B : db $02 : dw $D6D0 ; MDB
    dl $7E090F : db $02 : dw $C001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $83FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0005 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $3326 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3327 ; Collected Items
    dl $7E09C2 : db $02 : dw $036A ; Health
    dl $7E09CE : db $02 : dw $0014 ; Pbs
    dl $7E0A1C : db $02 : dw $0028 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0072 ; Samus X
    dl $7E0AFA : db $02 : dw $0090 ; Samus Y
    dl $7ED820 : db $02 : dw $2801 ; Events, Items, Doors
    dl $7ED882 : db $02 : dw $05CC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0078 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_east_sand_hall:
    dw #preset_hundo_maridia_cleanup_2_shaktool_revisit ; Maridia Cleanup 2: Shaktool Revisit
    dl $7E078D : db $02 : dw $A7B0 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D646 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $035B ; Health
    dl $7E09C6 : db $02 : dw $004A ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003D ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_kassiuz_room:
    dw #preset_hundo_maridia_cleanup_2_east_sand_hall ; Maridia Cleanup 2: East Sand Hall
    dl $7E078D : db $02 : dw $A60C ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D340 ; MDB
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011D ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0048 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0284 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8C2 : db $02 : dw $CC28 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_plasma:
    dw #preset_hundo_maridia_cleanup_2_kassiuz_room ; Maridia Cleanup 2: Kassiuz Room
    dl $7E078D : db $02 : dw $A5DC ; DDB
    dl $7E079B : db $02 : dw $D27E ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $034C ; Health
    dl $7E09C6 : db $02 : dw $0046 ; Missiles
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AA ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7E0B3F : db $02 : dw $0001 ; Blue suit
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_kassiuz_room_revisit:
    dw #preset_hundo_maridia_cleanup_2_plasma ; Maridia Cleanup 2: Plasma
    dl $7E078D : db $02 : dw $A54C ; DDB
    dl $7E079B : db $02 : dw $D2AA ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001D ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $100B ; Beams
    dl $7E09A8 : db $02 : dw $100F ; Beams
    dl $7E09C2 : db $02 : dw $0324 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0040 ; Samus X
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED880 : db $02 : dw $FFFF ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $CC2A ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0079 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_plasma_spark_room_down:
    dw #preset_hundo_maridia_cleanup_2_kassiuz_room_revisit ; Maridia Cleanup 2: Kassiuz Room Revisit
    dl $7E078D : db $02 : dw $A540 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D387 ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $0319 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0310 ; Health
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0035 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_cac_alley:
    dw #preset_hundo_maridia_cleanup_2_plasma_spark_room_down ; Maridia Cleanup 2: Plasma Spark Room Down
    dl $7E078D : db $02 : dw $A5D0 ; DDB
    dl $7E079B : db $02 : dw $D340 ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0125 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0500 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0067 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0608 ; More position/state
    dl $7E0AF6 : db $02 : dw $01BB ; Samus X
    dl $7E0AFA : db $02 : dw $05B7 ; Samus Y
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_aqueduct_revisit_2:
    dw #preset_hundo_maridia_cleanup_2_cac_alley ; Maridia Cleanup 2: Cac Alley
    dl $7E078D : db $02 : dw $A960 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D913 ; MDB
    dl $7E07C3 : db $02 : dw $E78D ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2EBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B9 ; GFX Pointers
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0301 ; Health
    dl $7E09C6 : db $02 : dw $0044 ; Missiles
    dl $7E09CA : db $02 : dw $000E ; Supers
    dl $7E0A1C : db $02 : dw $00A5 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00A5 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C2 : db $02 : dw $CCAA ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_left_sandpit:
    dw #preset_hundo_maridia_cleanup_2_aqueduct_revisit_2 ; Maridia Cleanup 2: Aqueduct Revisit 2
    dl $7E078D : db $02 : dw $A7D4 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D5A7 ; MDB
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $02FC ; Health
    dl $7E09C6 : db $02 : dw $0049 ; Missiles
    dl $7E09C8 : db $02 : dw $008C ; Max missiles
    dl $7E09CA : db $02 : dw $0013 ; Supers
    dl $7E09CC : db $02 : dw $0028 ; Max supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $05B9 ; Samus X
    dl $7E0AFA : db $02 : dw $02CB ; Samus Y
    dl $7ED882 : db $02 : dw $05FC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $007C ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_maridia_cleanup_2_thread_the_needle_room:
    dw #preset_hundo_maridia_cleanup_2_left_sandpit ; Maridia Cleanup 2: Left Sandpit
    dl $7E078D : db $02 : dw $A528 ; DDB
    dl $7E079B : db $02 : dw $D21C ; MDB
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00F2 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $02A0 ; Health
    dl $7E09C6 : db $02 : dw $004E ; Missiles
    dl $7E09C8 : db $02 : dw $0091 ; Max missiles
    dl $7E09CE : db $02 : dw $0015 ; Pbs
    dl $7E09D4 : db $02 : dw $012C ; Max reserves
    dl $7E0AF6 : db $02 : dw $002F ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED882 : db $02 : dw $05FF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $007E ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_golden_torizo_kraid_entrance_revisit:
    dw #preset_hundo_maridia_cleanup_2_thread_the_needle_room ; Maridia Cleanup 2: Thread the Needle Room
    dl $7E078D : db $02 : dw $A510 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00D5 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0012 ; Supers
    dl $7E0A1C : db $02 : dw $00A4 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $005B ; Samus X
    dw #$FFFF
.after

preset_hundo_golden_torizo_kraid_missiles:
    dw #preset_hundo_golden_torizo_kraid_entrance_revisit ; Golden Torizo: Kraid Entrance Revisit
    dl $7E078D : db $02 : dw $923A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A471 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4FFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E0A1C : db $02 : dw $003D ; Samus position/state
    dl $7E0A1E : db $02 : dw $0F08 ; More position/state
    dl $7E0AF6 : db $02 : dw $016E ; Samus X
    dl $7E0AFA : db $02 : dw $0190 ; Samus Y
    dw #$FFFF
.after

preset_hundo_golden_torizo_kraid_missiles_escape:
    dw #preset_hundo_golden_torizo_kraid_missiles ; Golden Torizo: Kraid Missiles
    dl $7E078D : db $02 : dw $9156 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A4DA ; MDB
    dl $7E0911 : db $02 : dw $01AC ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0050 ; Missiles
    dl $7E09C8 : db $02 : dw $0096 ; Max missiles
    dl $7E09CE : db $02 : dw $0014 ; Pbs
    dl $7E0A1C : db $02 : dw $002A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0604 ; More position/state
    dl $7E0AF6 : db $02 : dw $024C ; Samus X
    dl $7E0AFA : db $02 : dw $00AD ; Samus Y
    dl $7ED874 : db $02 : dw $1F8E ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $007F ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_golden_torizo_ice_missiles:
    dw #preset_hundo_golden_torizo_kraid_missiles_escape ; Golden Torizo: Kraid Missiles Escape
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E079F : db $02 : dw $0002 ; Region
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0323 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0054 ; Missiles
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E09CE : db $02 : dw $0013 ; Pbs
    dl $7E0A1C : db $02 : dw $00A5 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7E0AFA : db $02 : dw $0393 ; Samus Y
    dw #$FFFF
.after

preset_hundo_golden_torizo_croc_speedway:
    dw #preset_hundo_golden_torizo_ice_missiles ; Golden Torizo: Ice Missiles
    dl $7E078D : db $02 : dw $9336 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $A8F8 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $029B ; Health
    dl $7E09C6 : db $02 : dw $0059 ; Missiles
    dl $7E09C8 : db $02 : dw $009B ; Max missiles
    dl $7E09CE : db $02 : dw $0012 ; Pbs
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00E2 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED876 : db $02 : dw $01AF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0080 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_golden_torizo_kronic_boost:
    dw #preset_hundo_golden_torizo_croc_speedway ; Golden Torizo: Croc Speedway
    dl $7E078D : db $02 : dw $9792 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $AFFB ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $000F ; Samus position/state
    dl $7E0AF6 : db $02 : dw $03C6 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_hundo_golden_torizo_blue_fireball:
    dw #preset_hundo_golden_torizo_kronic_boost ; Golden Torizo: Kronic Boost
    dl $7E078D : db $02 : dw $96F6 ; DDB
    dl $7E079B : db $02 : dw $B236 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0298 ; Health
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0480 ; Samus X
    dl $7E0AFA : db $02 : dw $0285 ; Samus Y
    dl $7ED8BA : db $02 : dw $01F1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_golden_torizo_golden_torizo_2:
    dw #preset_hundo_golden_torizo_blue_fireball ; Golden Torizo: Blue Fireball
    dl $7E078D : db $02 : dw $983A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B283 ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0273 ; Health
    dl $7E09CE : db $02 : dw $000F ; Pbs
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $0027 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $3801 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0082 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ridley_fast_ripper_room:
    dw #preset_hundo_golden_torizo_golden_torizo_2 ; Golden Torizo: Golden Torizo
    dl $7E078D : db $02 : dw $9882 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B6C1 ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $A000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001B ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $332E ; Equipped Items
    dl $7E09A4 : db $02 : dw $332F ; Collected Items
    dl $7E09C2 : db $02 : dw $024B ; Health
    dl $7E09C6 : db $02 : dw $005E ; Missiles
    dl $7E09C8 : db $02 : dw $00A0 ; Max missiles
    dl $7E09CA : db $02 : dw $0015 ; Supers
    dl $7E09CC : db $02 : dw $002D ; Max supers
    dl $7E09CE : db $02 : dw $000E ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $006E ; Samus X
    dl $7ED82A : db $02 : dw $0104 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $80DE ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $03F1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0083 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ridley_writg:
    dw #preset_hundo_ridley_fast_ripper_room ; Ridley: Fast Ripper Room
    dl $7E078D : db $02 : dw $9912 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $B457 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $66FF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01FC ; Health
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E0A1C : db $02 : dw $00A4 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $03DB ; Samus X
    dw #$FFFF
.after

preset_hundo_ridley_mickey_mouse_missiles:
    dw #preset_hundo_ridley_writg ; Ridley: WRITG
    dl $7E078D : db $02 : dw $994E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B4AD ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $010D ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0071 ; Samus X
    dl $7E0AFA : db $02 : dw $017B ; Samus Y
    dw #$FFFF
.after

preset_hundo_ridley_amphitheatre:
    dw #preset_hundo_ridley_mickey_mouse_missiles ; Ridley: Mickey Mouse Missiles
    dl $7E078D : db $02 : dw $9936 ; DDB
    dl $7E090F : db $02 : dw $B001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0109 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01CA ; Health
    dl $7E09C6 : db $02 : dw $0063 ; Missiles
    dl $7E09C8 : db $02 : dw $00A5 ; Max missiles
    dl $7E09CA : db $02 : dw $0015 ; Supers
    dl $7E0A1C : db $02 : dw $00A4 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $00BD ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED878 : db $02 : dw $82DE ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0084 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ridley_kihunter_shaft_down:
    dw #preset_hundo_ridley_amphitheatre ; Ridley: Amphitheatre
    dl $7E078D : db $02 : dw $997E ; DDB
    dl $7E079B : db $02 : dw $B4E5 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $027E ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0032 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $02DE ; Samus X
    dl $7E0AFA : db $02 : dw $00B4 ; Samus Y
    dw #$FFFF
.after

preset_hundo_ridley_wasteland_down:
    dw #preset_hundo_ridley_kihunter_shaft_down ; Ridley: Kihunter Shaft Down
    dl $7E078D : db $02 : dw $99A2 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $FC00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $01F2 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $041F ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $000C ; Pbs
    dl $7E0A1C : db $02 : dw $007D ; Samus position/state
    dl $7E0A1E : db $02 : dw $1308 ; More position/state
    dl $7E0AF6 : db $02 : dw $026E ; Samus X
    dl $7E0AFA : db $02 : dw $04AC ; Samus Y
    dl $7ED8BA : db $02 : dw $43F1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ridley_ninja_pirates:
    dw #preset_hundo_ridley_wasteland_down ; Ridley: Wasteland Down
    dl $7E078D : db $02 : dw $99EA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021D ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0191 ; Health
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E09D0 : db $02 : dw $0023 ; Max pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0164 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED878 : db $02 : dw $92DE ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $C3F1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0085 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ridley_plowerhouse_room:
    dw #preset_hundo_ridley_ninja_pirates ; Ridley: Ninja Pirates
    dl $7E078D : db $02 : dw $9A1A ; DDB
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $017B ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0213 ; Health
    dl $7E09CA : db $02 : dw $0018 ; Supers
    dl $7E0AF6 : db $02 : dw $01DC ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED8BC : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ridley_ridley_2:
    dw #preset_hundo_ridley_plowerhouse_room ; Ridley: Plowerhouse Room
    dl $7E078D : db $02 : dw $995A ; DDB
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0210 ; Health
    dl $7E09CA : db $02 : dw $0017 ; Supers
    dl $7E0A1C : db $02 : dw $0082 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0304 ; More position/state
    dl $7E0AF6 : db $02 : dw $002C ; Samus X
    dl $7E0AFA : db $02 : dw $0095 ; Samus Y
    dl $7ED8BA : db $02 : dw $D3F1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ridley_ridley_escape:
    dw #preset_hundo_ridley_ridley_2 ; Ridley: Ridley
    dl $7E078D : db $02 : dw $98B2 ; DDB
    dl $7E079B : db $02 : dw $B698 ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $04AF ; Health
    dl $7E09C4 : db $02 : dw $04AF ; Max helath
    dl $7E09C6 : db $02 : dw $0067 ; Missiles
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E09CE : db $02 : dw $0012 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C8 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED82A : db $02 : dw $0105 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $D2DE ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $DBF1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0086 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ridley_wasteland_up:
    dw #preset_hundo_ridley_ridley_escape ; Ridley: Ridley Escape
    dl $7E078D : db $02 : dw $9966 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5C00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $048E ; Health
    dl $7E0A1C : db $02 : dw $007D ; Samus position/state
    dl $7E0A1E : db $02 : dw $1308 ; More position/state
    dl $7E0AF6 : db $02 : dw $02D4 ; Samus X
    dl $7E0AFA : db $02 : dw $0085 ; Samus Y
    dl $7E0B3F : db $02 : dw $0003 ; Blue suit
    dl $7ED8BA : db $02 : dw $DFF1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ridley_kihunter_shaft_up:
    dw #preset_hundo_ridley_wasteland_up ; Ridley: Wasteland Up
    dl $7E078D : db $02 : dw $9A3E ; DDB
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $EC01 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $03F3 ; Health
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $057F ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED91A : db $02 : dw $0087 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ridley_firefleas_room:
    dw #preset_hundo_ridley_kihunter_shaft_up ; Ridley: Kihunter Shaft Up
    dl $7E078D : db $02 : dw $9A26 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $FE7F ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D000 ; Screen subpixel Y position
    dl $7E09CE : db $02 : dw $0010 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00A2 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_hundo_ridley_hotarubi_special:
    dw #preset_hundo_ridley_firefleas_room ; Ridley: Firefleas Room
    dl $7E078D : db $02 : dw $9A02 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $B6EE ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001D ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0512 ; Health
    dl $7E09C4 : db $02 : dw $0513 ; Max helath
    dl $7E09CA : db $02 : dw $000E ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $016B ; Samus X
    dl $7ED87A : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0088 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_ridley_3_muskateers:
    dw #preset_hundo_ridley_hotarubi_special ; Ridley: Hotarubi Special
    dl $7E078D : db $02 : dw $9A92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B510 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $001C ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $006C ; Missiles
    dl $7E09C8 : db $02 : dw $00AA ; Max missiles
    dl $7E09CE : db $02 : dw $0015 ; Pbs
    dl $7E09D0 : db $02 : dw $0028 ; Max pbs
    dl $7E0AF6 : db $02 : dw $0071 ; Samus X
    dl $7ED878 : db $02 : dw $DEDE ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $008C ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_crocomire_bubble_mountain_revisit:
    dw #preset_hundo_ridley_3_muskateers ; Ridley: 3 Muskateers
    dl $7E078D : db $02 : dw $9A4A ; DDB
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $000B ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $006F ; Missiles
    dl $7E09C8 : db $02 : dw $00AF ; Max missiles
    dl $7E0A1C : db $02 : dw $0012 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7ED878 : db $02 : dw $FEDE ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $008D ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_crocomire_norfair_reserve:
    dw #preset_hundo_crocomire_bubble_mountain_revisit ; Crocomire: Bubble Mountain Revisit
    dl $7E078D : db $02 : dw $95CA ; DDB
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0071 ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0044 ; Samus X
    dl $7ED8BA : db $02 : dw $DFF9 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $008E ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_crocomire_bubble_mountain_cleanup:
    dw #preset_hundo_crocomire_norfair_reserve ; Crocomire: Norfair Reserve
    dl $7E078D : db $02 : dw $952E ; DDB
    dl $7E079B : db $02 : dw $AC83 ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0504 ; Health
    dl $7E09C6 : db $02 : dw $007A ; Missiles
    dl $7E09C8 : db $02 : dw $00B9 ; Max missiles
    dl $7E09D4 : db $02 : dw $0190 ; Max reserves
    dl $7E09D6 : db $02 : dw $006B ; Reserves
    dl $7E0A1C : db $02 : dw $0027 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0508 ; More position/state
    dl $7E0AF6 : db $02 : dw $01C9 ; Samus X
    dl $7E0AFA : db $02 : dw $0090 ; Samus Y
    dl $7ED876 : db $02 : dw $E1AF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0092 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_crocomire_red_pirate_shaft:
    dw #preset_hundo_crocomire_bubble_mountain_cleanup ; Crocomire: Bubble Mountain Cleanup
    dl $7E078D : db $02 : dw $956A ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $AF72 ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00ED ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $04F3 ; Health
    dl $7E09C6 : db $02 : dw $007F ; Missiles
    dl $7E09C8 : db $02 : dw $00BE ; Max missiles
    dl $7E09CE : db $02 : dw $0014 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0094 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED878 : db $02 : dw $FEDF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0093 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_crocomire_crocomire_2:
    dw #preset_hundo_crocomire_red_pirate_shaft ; Crocomire: Red Pirate Shaft
    dl $7E078D : db $02 : dw $974A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A923 ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0C00 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $04F2 ; Health
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E0A1C : db $02 : dw $002D ; Samus position/state
    dl $7E0A1E : db $02 : dw $0608 ; More position/state
    dl $7E0AF6 : db $02 : dw $0C95 ; Samus X
    dl $7E0AFA : db $02 : dw $02DB ; Samus Y
    dl $7ED8B8 : db $02 : dw $6EEF ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_crocomire_grapple_shaft_down:
    dw #preset_hundo_crocomire_crocomire_2 ; Crocomire: Crocomire
    dl $7E078D : db $02 : dw $944A ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $AB07 ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $056E ; Health
    dl $7E09C4 : db $02 : dw $0577 ; Max helath
    dl $7E09C6 : db $02 : dw $0085 ; Missiles
    dl $7E09CA : db $02 : dw $000C ; Supers
    dl $7E09CE : db $02 : dw $0019 ; Pbs
    dl $7E09D0 : db $02 : dw $002D ; Max pbs
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0A68 : db $02 : dw $0001 ; Flash suit
    dl $7E0AF6 : db $02 : dw $007C ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED82A : db $02 : dw $0107 ; Events, Items, Doors
    dl $7ED876 : db $02 : dw $E3BF ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $DFFB ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0095 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_crocomire_grapple_shaft_up:
    dw #preset_hundo_crocomire_grapple_shaft_down ; Crocomire: Grapple Shaft Down
    dl $7E078D : db $02 : dw $9516 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $AB8F ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $05B0 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $732E ; Equipped Items
    dl $7E09A4 : db $02 : dw $732F ; Collected Items
    dl $7E09C6 : db $02 : dw $008A ; Missiles
    dl $7E09C8 : db $02 : dw $00C3 ; Max missiles
    dl $7E09CE : db $02 : dw $0018 ; Pbs
    dl $7E0AF6 : db $02 : dw $0610 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED876 : db $02 : dw $FBBF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0098 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_crocomire_crocomire_room_revisit:
    dw #preset_hundo_crocomire_grapple_shaft_up ; Crocomire: Grapple Shaft Up
    dl $7E078D : db $02 : dw $947A ; DDB
    dl $7E079B : db $02 : dw $AA82 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0002 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $053F ; Health
    dl $7E09C6 : db $02 : dw $0093 ; Missiles
    dl $7E09C8 : db $02 : dw $00C8 ; Max missiles
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E09CE : db $02 : dw $0019 ; Pbs
    dl $7E0AF6 : db $02 : dw $01CD ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $FFBF ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $DFFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0099 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_crocomire_croc_escape:
    dw #preset_hundo_crocomire_crocomire_room_revisit ; Crocomire: Crocomire Room Revisit
    dl $7E078D : db $02 : dw $93EA ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A923 ; MDB
    dl $7E090F : db $02 : dw $C001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0C00 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0015 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $053E ; Health
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0C8B ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8B8 : db $02 : dw $EEEF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $009A ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_crocomire_business_center_climb_final:
    dw #preset_hundo_crocomire_croc_escape ; Crocomire: Croc Escape
    dl $7E078D : db $02 : dw $93AE ; DDB
    dl $7E079B : db $02 : dw $AA0E ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0098 ; Missiles
    dl $7E09C8 : db $02 : dw $00CD ; Max missiles
    dl $7E09CA : db $02 : dw $000E ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $009D ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $FFFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $009B ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_below_spazer:
    dw #preset_hundo_crocomire_business_center_climb_final ; Crocomire: Business Center Climb Final
    dl $7E078D : db $02 : dw $A33C ; DDB
    dl $7E079B : db $02 : dw $CF54 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $D800 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C7 ; Samus X
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_red_tower_xray:
    dw #preset_hundo_brinstar_cleanup_2_below_spazer ; Brinstar Cleanup: Below Spazer
    dl $7E078D : db $02 : dw $910E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A3DD ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0068 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0604 ; More position/state
    dl $7E0AF6 : db $02 : dw $004A ; Samus X
    dl $7E0AFA : db $02 : dw $0098 ; Samus Y
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_red_brinstar_firefleas:
    dw #preset_hundo_brinstar_cleanup_2_red_tower_xray ; Brinstar Cleanup: Red Tower X-Ray
    dl $7E078D : db $02 : dw $90F6 ; DDB
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $FBFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $061A ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $0018 ; Pbs
    dl $7E0A1C : db $02 : dw $00A7 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0039 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED8B6 : db $02 : dw $EAF9 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_red_brinstar_firefleas_2:
    dw #preset_hundo_brinstar_cleanup_2_red_brinstar_firefleas ; Brinstar Cleanup: Red Brinstar Firefleas
    dl $7E078D : db $02 : dw $905A ; DDB
    dl $7E079B : db $02 : dw $A2CE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $F32E ; Equipped Items
    dl $7E09A4 : db $02 : dw $F32F ; Collected Items
    dl $7E09C2 : db $02 : dw $04A9 ; Health
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0177 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED874 : db $02 : dw $1FCE ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $EEF9 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $009C ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_reverse_slinky:
    dw #preset_hundo_brinstar_cleanup_2_red_brinstar_firefleas_2 ; Brinstar Cleanup: Red Brinstar Firefleas 2
    dl $7E078D : db $02 : dw $902A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $03C7 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5C01 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0477 ; Health
    dl $7E09CE : db $02 : dw $0017 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0467 ; Samus X
    dl $7E0AFA : db $02 : dw $004B ; Samus Y
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_retro_brinstar_hoppers:
    dw #preset_hundo_brinstar_cleanup_2_reverse_slinky ; Brinstar Cleanup: Reverse Slinky
    dl $7E078D : db $02 : dw $8EFE ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E52 ; MDB
    dl $7E090F : db $02 : dw $5FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00E4 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001D ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $0155 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED91A : db $02 : dw $009D ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_retro_brinstar_etank:
    dw #preset_hundo_brinstar_cleanup_2_retro_brinstar_hoppers ; Brinstar Cleanup: Retro Brinstar Hoppers
    dl $7E078D : db $02 : dw $8E86 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E9F ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0573 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $001B ; Pbs
    dl $7E09D0 : db $02 : dw $0032 ; Max pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $05D3 ; Samus X
    dl $7E0AFA : db $02 : dw $02BB ; Samus Y
    dl $7ED872 : db $02 : dw $CFEF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $009E ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_billy_mays:
    dw #preset_hundo_brinstar_cleanup_2_retro_brinstar_etank ; Brinstar Cleanup: Retro Brinstar E-Tank
    dl $7E078D : db $02 : dw $8ECE ; DDB
    dl $7E079B : db $02 : dw $9F64 ; MDB
    dl $7E090F : db $02 : dw $A001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001D ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $05DB ; Health
    dl $7E09C4 : db $02 : dw $05DB ; Max helath
    dl $7E09CA : db $02 : dw $000C ; Supers
    dl $7E09CE : db $02 : dw $001A ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0253 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED872 : db $02 : dw $EFEF ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $EEFD ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A0 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_billy_mays_escape:
    dw #preset_hundo_brinstar_cleanup_2_billy_mays ; Brinstar Cleanup: Billy Mays
    dl $7E078D : db $02 : dw $8FEE ; DDB
    dl $7E079B : db $02 : dw $A1D8 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $00A2 ; Missiles
    dl $7E09C8 : db $02 : dw $00D7 ; Max missiles
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00E0 ; Samus X
    dl $7ED874 : db $02 : dw $1FFE ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A2 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_retro_brinstar_escape:
    dw #preset_hundo_brinstar_cleanup_2_billy_mays_escape ; Brinstar Cleanup: Billy Mays Escape
    dl $7E078D : db $02 : dw $8FE2 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $9F64 ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $05D1 ; Health
    dl $7E09C6 : db $02 : dw $00A7 ; Missiles
    dl $7E09C8 : db $02 : dw $00DC ; Max missiles
    dl $7E09CE : db $02 : dw $0019 ; Pbs
    dl $7E0A1C : db $02 : dw $00A5 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $02D6 ; Samus X
    dl $7E0AFA : db $02 : dw $02BB ; Samus Y
    dl $7ED872 : db $02 : dw $FFEF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A4 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_pit_room_2:
    dw #preset_hundo_brinstar_cleanup_2_retro_brinstar_escape ; Brinstar Cleanup: Retro Brinstar Escape
    dl $7E078D : db $02 : dw $8EB6 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $97B5 ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $00EA ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED91A : db $02 : dw $00A5 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_climb_supers:
    dw #preset_hundo_brinstar_cleanup_2_pit_room_2 ; Brinstar Cleanup: Pit Room
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $8001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $47FE ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $00AC ; Missiles
    dl $7E09C8 : db $02 : dw $00E1 ; Max missiles
    dl $7E0AF6 : db $02 : dw $0045 ; Samus X
    dl $7ED870 : db $02 : dw $E7FF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A6 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_the_last_missiles:
    dw #preset_hundo_brinstar_cleanup_2_climb_supers ; Brinstar Cleanup: Climb Supers
    dl $7E078D : db $02 : dw $8B3E ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0306 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0541 ; Health
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E09CC : db $02 : dw $0032 ; Max supers
    dl $7E09CE : db $02 : dw $0017 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $015E ; Samus X
    dl $7E0AFA : db $02 : dw $039B ; Samus Y
    dl $7ED870 : db $02 : dw $EFFF ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C09 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A7 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_brinstar_cleanup_2_the_last_missiles_escape:
    dw #preset_hundo_brinstar_cleanup_2_the_last_missiles ; Brinstar Cleanup: The Last Missiles
    dl $7E078D : db $02 : dw $8C82 ; DDB
    dl $7E079B : db $02 : dw $9A90 ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $00B1 ; Missiles
    dl $7E09C8 : db $02 : dw $00E6 ; Max missiles
    dl $7E09CE : db $02 : dw $0016 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0057 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED870 : db $02 : dw $FFFF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00A8 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_tourian_metroids_1:
    dw #preset_hundo_brinstar_cleanup_2_the_last_missiles_escape ; Brinstar Cleanup: The Last Missiles Escape
    dl $7E078D : db $02 : dw $9222 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $DAAE ; MDB
    dl $7E079F : db $02 : dw $0005 ; Region
    dl $7E07C3 : db $02 : dw $D414 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $EDBF ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2BA ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $A000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $054B ; Health
    dl $7E09C6 : db $02 : dw $00B5 ; Missiles
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E0A1C : db $02 : dw $0008 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0036 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED820 : db $02 : dw $3FC1 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $6C09 ; Events, Items, Doors
    dl $7ED90C : db $02 : dw $0100 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $00AB ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_tourian_metroids_2:
    dw #preset_hundo_tourian_metroids_1 ; Tourian: Metroids 1
    dl $7E078D : db $02 : dw $A984 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $DAE1 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $014B ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $DC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $056C ; Health
    dl $7E09C6 : db $02 : dw $00BF ; Missiles
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E09CE : db $02 : dw $0018 ; Pbs
    dl $7E0A1C : db $02 : dw $0010 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $01EB ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dw #$FFFF
.after

preset_hundo_tourian_metroids_3:
    dw #preset_hundo_tourian_metroids_2 ; Tourian: Metroids 2
    dl $7E078D : db $02 : dw $A9B4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $DB31 ; MDB
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00FF ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $059D ; Health
    dl $7E09C6 : db $02 : dw $00C7 ; Missiles
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E09CE : db $02 : dw $001B ; Pbs
    dl $7E0A1C : db $02 : dw $00A4 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00BD ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0023 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0003 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_tourian_metroids_4:
    dw #preset_hundo_tourian_metroids_3 ; Tourian: Metroids 3
    dl $7E078D : db $02 : dw $A9CC ; DDB
    dl $7E079B : db $02 : dw $DB7D ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $05DB ; Health
    dl $7E09C6 : db $02 : dw $00D1 ; Missiles
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E09CE : db $02 : dw $001D ; Pbs
    dl $7E09D6 : db $02 : dw $0073 ; Reserves
    dl $7E0A1C : db $02 : dw $0011 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $05A5 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED822 : db $02 : dw $0027 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0007 ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_tourian_baby_skip:
    dw #preset_hundo_tourian_metroids_4 ; Tourian: Metroids 4
    dl $7E078D : db $02 : dw $AA14 ; DDB
    dl $7E079B : db $02 : dw $DC65 ; MDB
    dl $7E07F3 : db $02 : dw $0045 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3C00 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $00D9 ; Missiles
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E09CE : db $02 : dw $001E ; Pbs
    dl $7E09D6 : db $02 : dw $00E1 ; Reserves
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0079 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7E0B3F : db $02 : dw $0002 ; Blue suit
    dl $7ED822 : db $02 : dw $002F ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $002F ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_tourian_zeb_skip:
    dw #preset_hundo_tourian_baby_skip ; Tourian: Baby Skip
    dl $7E078D : db $02 : dw $AA5C ; DDB
    dl $7E079B : db $02 : dw $DDC4 ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E0A1C : db $02 : dw $0007 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $03DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED8C4 : db $02 : dw $01AF ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_tourian_escape_room_3:
    dw #preset_hundo_tourian_zeb_skip ; Tourian: Zeb Skip
    dl $7E078D : db $02 : dw $AAEC ; DDB
    dl $7E079B : db $02 : dw $DE7A ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $DFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0095 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1009 ; Beams
    dl $7E09C6 : db $02 : dw $007F ; Missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E09D6 : db $02 : dw $0190 ; Reserves
    dl $7E0A1C : db $02 : dw $0029 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0608 ; More position/state
    dl $7E0A76 : db $02 : dw $8000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $00DB ; Samus X
    dl $7E0AFA : db $02 : dw $0105 ; Samus Y
    dl $7ED820 : db $02 : dw $7FC5 ; Events, Items, Doors
    dl $7ED82C : db $02 : dw $0203 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $03AF ; Events, Items, Doors
    dw #$FFFF
.after

preset_hundo_tourian_escape_parlor:
    dw #preset_hundo_tourian_escape_room_3 ; Tourian: Escape Room 3
    dl $7E078D : db $02 : dw $AB34 ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A401 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0548 ; Health
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $019D ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED90C : db $02 : dw $FF00 ; Events, Items, Doors
    dw #$FFFF
.after
