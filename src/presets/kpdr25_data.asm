
preset_kpdr25_bombs_ceres_elevator:
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
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E09D4 : db $02 : dw $0000 ; Max reserves
    dl $7E09D6 : db $02 : dw $0000 ; Reserves
    dl $7E0A1C : db $02 : dw $0026 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0E08 ; More position/state
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
    dl $7ED7D2 : db $02 : dw $8000 ; SRAM copy
    dl $7ED7D4 : db $02 : dw $0080 ; SRAM copy
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

preset_kpdr25_bombs_ceres_last_3_rooms:
    dw #preset_kpdr25_bombs_ceres_elevator ; Bombs: Ceres Elevator
    dl $7E078D : db $02 : dw $ABA0 ; DDB
    dl $7E079B : db $02 : dw $E021 ; MDB
    dl $7E07C3 : db $02 : dw $B004 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E3C0 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E093F : db $02 : dw $0002 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0018 ; Health
    dl $7E0A1C : db $02 : dw $0008 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003A ; Samus X
    dl $7E0AFA : db $02 : dw $008E ; Samus Y
    dl $7ED82E : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_bombs_ship:
    dw #preset_kpdr25_bombs_ceres_last_3_rooms ; Bombs: Ceres Last 3 Rooms
    dl $7E078D : db $02 : dw $88FE ; DDB
    dl $7E079B : db $02 : dw $91F8 ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0006 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $03D0 ; Screen Y position in pixels
    dl $7E093F : db $02 : dw $0000 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E0A1C : db $02 : dw $0025 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0E04 ; More position/state
    dl $7E0AF6 : db $02 : dw $0481 ; Samus X
    dl $7E0AFA : db $02 : dw $0440 ; Samus Y
    dl $7ED7F8 : db $02 : dw $0005 ; SRAM copy
    dl $7ED7FA : db $02 : dw $0008 ; SRAM copy
    dl $7ED7FC : db $02 : dw $0001 ; SRAM copy
    dl $7ED8F8 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED914 : db $02 : dw $0005 ; Events, Items, Doors
    dl $7ED918 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED91C : db $02 : dw $1010 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_bombs_morph:
    dw #preset_kpdr25_bombs_ship ; Bombs: Ship
    dl $7E078D : db $02 : dw $8B9E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E9F ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0580 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dl $7ED91A : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_bombs_climb:
    dw #preset_kpdr25_bombs_morph ; Bombs: Morph
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $0004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $0004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09C8 : db $02 : dw $0005 ; Max missiles
    dl $7E0A1C : db $02 : dw $0008 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003C ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED872 : db $02 : dw $0400 ; Events, Items, Doors
    dl $7ED874 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $0400 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0004 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_bombs_bomb_torizo:
    dw #preset_kpdr25_bombs_climb ; Bombs: Climb
    dl $7E078D : db $02 : dw $8982 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $9879 ; MDB
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $000B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $02C3 ; Samus X
    dl $7ED8B2 : db $02 : dw $2400 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_bombs_terminator:
    dw #preset_kpdr25_bombs_bomb_torizo ; Bombs: Bomb Torizo
    dl $7E078D : db $02 : dw $8BB6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E090F : db $02 : dw $4C00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $1004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E0A1C : db $02 : dw $001F ; Samus position/state
    dl $7E0A1E : db $02 : dw $0404 ; More position/state
    dl $7E0AF6 : db $02 : dw $0115 ; Samus X
    dl $7E0AFA : db $02 : dw $0099 ; Samus Y
    dl $7E0B3F : db $02 : dw $0104 ; Blue suit
    dl $7ED828 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED870 : db $02 : dw $0080 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0005 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_kraid_green_brinstar_elevator:
    dw #preset_kpdr25_bombs_terminator ; Bombs: Terminator
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $008B ; Health
    dl $7E09C4 : db $02 : dw $00C7 ; Max helath
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0089 ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED870 : db $02 : dw $0180 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_kraid_green_hills:
    dw #preset_kpdr25_kraid_green_brinstar_elevator ; Kraid: Green Brinstar Elevator
    dl $7E078D : db $02 : dw $8DAE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $060F ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1000 ; Beams
    dl $7E09A8 : db $02 : dw $1000 ; Beams
    dl $7E09C2 : db $02 : dw $009F ; Health
    dl $7E09C8 : db $02 : dw $000A ; Max missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CC : db $02 : dw $0005 ; Max supers
    dl $7E0A1C : db $02 : dw $000B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $039D ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED872 : db $02 : dw $04C1 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0206 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $000F ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_kraid_spazer:
    dw #preset_kpdr25_kraid_green_hills ; Kraid: Green Hills
    dl $7E078D : db $02 : dw $9102 ; DDB
    dl $7E079B : db $02 : dw $A408 ; MDB
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001D ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0007 ; Missiles
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $01B3 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B6 : db $02 : dw $8008 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0010 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_kraid_warehouse_entrance:
    dw #preset_kpdr25_kraid_spazer ; Kraid: Spazer
    dl $7E078D : db $02 : dw $A348 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1004 ; Beams
    dl $7E09A8 : db $02 : dw $1004 ; Beams
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $000B ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0048 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED874 : db $02 : dw $0404 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0011 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_kraid_kraid_2:
    dw #preset_kpdr25_kraid_warehouse_entrance ; Kraid: Warehouse Entrance
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
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0085 ; Health
    dl $7E09C6 : db $02 : dw $0006 ; Missiles
    dl $7E0A1C : db $02 : dw $0089 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1508 ; More position/state
    dl $7E0AF6 : db $02 : dw $01DB ; Samus X
    dl $7ED8B8 : db $02 : dw $0024 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0012 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_kraid_baby_kraid_exiting:
    dw #preset_kpdr25_kraid_kraid_2 ; Kraid: Kraid
    dl $7E078D : db $02 : dw $91CE ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3BFF ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $1005 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1005 ; Collected Items
    dl $7E09C2 : db $02 : dw $0096 ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0044 ; Samus X
    dl $7ED828 : db $02 : dw $0104 ; Events, Items, Doors
    dl $7ED876 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $00E4 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0013 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_kraid_kraid_etank:
    dw #preset_kpdr25_kraid_baby_kraid_exiting ; Kraid: Baby Kraid (Exiting)
    dl $7E078D : db $02 : dw $916E ; DDB
    dl $7E079B : db $02 : dw $A471 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00FF ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0008 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0AF6 : db $02 : dw $0045 ; Samus X
    dl $7ED8B8 : db $02 : dw $00ED ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0014 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_upper_norfair_business_center:
    dw #preset_kpdr25_kraid_kraid_etank ; Kraid: Kraid E-tank
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E079F : db $02 : dw $0002 ; Region
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $023B ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C4 : db $02 : dw $012B ; Max helath
    dl $7E09C6 : db $02 : dw $0009 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $007C ; Samus X
    dl $7E0AFA : db $02 : dw $02AB ; Samus Y
    dl $7ED874 : db $02 : dw $0C04 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $00EF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0015 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_upper_norfair_precathedral:
    dw #preset_kpdr25_upper_norfair_business_center ; Upper Norfair: Business Center
    dl $7E078D : db $02 : dw $941A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $BFFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02F6 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $1105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1105 ; Collected Items
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09C4 : db $02 : dw $018F ; Max helath
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E09C8 : db $02 : dw $000F ; Max missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00B8 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED876 : db $02 : dw $01A1 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $20EF ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001A ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_upper_norfair_bubble_mountain:
    dw #preset_kpdr25_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dl $7E078D : db $02 : dw $929A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $AFA3 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0179 ; Health
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0AF6 : db $02 : dw $04BC ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B8 : db $02 : dw $26EF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001B ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_upper_norfair_speed_hallway:
    dw #preset_kpdr25_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dl $7E078D : db $02 : dw $958E ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $B07A ; MDB
    dl $7E090F : db $02 : dw $EFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0012 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0188 ; Health
    dl $7E0AF6 : db $02 : dw $00C5 ; Samus X
    dl $7ED8BA : db $02 : dw $0011 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001C ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_upper_norfair_single_chamber:
    dw #preset_kpdr25_upper_norfair_speed_hallway ; Upper Norfair: Speed Hallway
    dl $7E078D : db $02 : dw $97AA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E090F : db $02 : dw $7FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00FB ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $3105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3105 ; Collected Items
    dl $7E09C2 : db $02 : dw $018B ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $01B3 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0020 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0031 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0020 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_upper_norfair_leaving_wave:
    dw #preset_kpdr25_upper_norfair_single_chamber ; Upper Norfair: Single Chamber
    dl $7E078D : db $02 : dw $961E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $ADDE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1005 ; Beams
    dl $7E09A8 : db $02 : dw $1005 ; Beams
    dl $7E09C6 : db $02 : dw $0012 ; Missiles
    dl $7E09C8 : db $02 : dw $0014 ; Max missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0A1C : db $02 : dw $001A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0304 ; More position/state
    dl $7E0AF6 : db $02 : dw $009C ; Samus X
    dl $7E0AFA : db $02 : dw $007B ; Samus Y
    dl $7ED878 : db $02 : dw $001C ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $00F1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0022 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_upper_norfair_entering_ice:
    dw #preset_kpdr25_upper_norfair_leaving_wave ; Upper Norfair: Leaving Wave
    dl $7E078D : db $02 : dw $9816 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $6800 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0309 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09C6 : db $02 : dw $0014 ; Missiles
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0030 ; Samus X
    dl $7E0AFA : db $02 : dw $0394 ; Samus Y
    dl $7ED8B8 : db $02 : dw $2EEF ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0024 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_upper_norfair_ice_escape:
    dw #preset_kpdr25_upper_norfair_entering_ice ; Upper Norfair: Entering Ice
    dl $7E078D : db $02 : dw $935A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A8B9 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $5001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1007 ; Beams
    dl $7E09A8 : db $02 : dw $1007 ; Beams
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C7 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED876 : db $02 : dw $01A5 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0025 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_wrecked_ship_alpha_spark:
    dw #preset_kpdr25_upper_norfair_ice_escape ; Upper Norfair: Ice Escape
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
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0025 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0E04 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0087 ; Samus Y
    dw #$FFFF
.after

preset_kpdr25_wrecked_ship_red_tower:
    dw #preset_kpdr25_wrecked_ship_alpha_spark ; Wrecked Ship: Alpha Spark
    dl $7E078D : db $02 : dw $910E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A3DD ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $6C00 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0158 ; Health
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0070 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0604 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $0083 ; Samus Y
    dw #$FFFF
.after

preset_kpdr25_wrecked_ship_hellway:
    dw #preset_kpdr25_wrecked_ship_red_tower ; Wrecked Ship: Red Tower
    dl $7E078D : db $02 : dw $90F6 ; DDB
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $A800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0007 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $015D ; Health
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C3 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kpdr25_wrecked_ship_post_power_bombs:
    dw #preset_kpdr25_wrecked_ship_hellway ; Wrecked Ship: Hellway
    dl $7E078D : db $02 : dw $9096 ; DDB
    dl $7E079B : db $02 : dw $A3AE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $014B ; Health
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E09D0 : db $02 : dw $0005 ; Max pbs
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $000B ; Samus position/state
    dl $7E0AF6 : db $02 : dw $02CA ; Samus X
    dl $7ED874 : db $02 : dw $0D04 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $A008 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0027 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_wrecked_ship_premoat:
    dw #preset_kpdr25_wrecked_ship_post_power_bombs ; Wrecked Ship: Post Power Bombs
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $007D ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8B6 : db $02 : dw $B008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_wrecked_ship_phantoon:
    dw #preset_kpdr25_wrecked_ship_premoat ; Wrecked Ship: Pre-Moat
    dl $7E078D : db $02 : dw $A21C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $CC6F ; MDB
    dl $7E079F : db $02 : dw $0003 ; Region
    dl $7E07C3 : db $02 : dw $AE9E ; GFX Pointers
    dl $7E07C5 : db $02 : dw $A6BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B1 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00BC ; Health
    dl $7E09C6 : db $02 : dw $0018 ; Missiles
    dl $7E09C8 : db $02 : dw $0019 ; Max missiles
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0089 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1508 ; More position/state
    dl $7E0AF6 : db $02 : dw $04DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED870 : db $02 : dw $0190 ; Events, Items, Doors
    dl $7ED8B0 : db $02 : dw $7000 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C01 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0030 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002C ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_wrecked_ship_ws_shaft:
    dw #preset_kpdr25_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dl $7E078D : db $02 : dw $A294 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E07C5 : db $02 : dw $E7BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $06D0 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0120 ; Health
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $04B1 ; Samus X
    dl $7E0AFA : db $02 : dw $075A ; Samus Y
    dl $7ED82A : db $02 : dw $0100 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0070 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002D ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_wrecked_ship_attic:
    dw #preset_kpdr25_wrecked_ship_ws_shaft ; Wrecked Ship: WS Shaft
    dl $7E078D : db $02 : dw $A2E8 ; DDB
    dl $7E090F : db $02 : dw $3C00 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E09CC : db $02 : dw $000A ; Max supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0445 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED880 : db $02 : dw $0020 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0074 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002F ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_wrecked_ship_pre_bowling:
    dw #preset_kpdr25_wrecked_ship_attic ; Wrecked Ship: Attic
    dl $7E078D : db $02 : dw $A1E0 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $93FE ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0800 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0204 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0143 ; Health
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $02D8 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C0 : db $02 : dw $0174 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0032 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_wrecked_ship_impulse_mockball:
    dw #preset_kpdr25_wrecked_ship_pre_bowling ; Wrecked Ship: Pre Bowling
    dl $7E078D : db $02 : dw $A300 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00E4 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0445 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $3125 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3125 ; Collected Items
    dl $7E09C2 : db $02 : dw $00EE ; Health
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0184 ; Samus X
    dl $7E0AFA : db $02 : dw $04D1 ; Samus Y
    dl $7ED880 : db $02 : dw $00A0 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0038 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_wrecked_ship_hellway_return:
    dw #preset_kpdr25_wrecked_ship_impulse_mockball ; Wrecked Ship: Impulse Mockball
    dl $7E078D : db $02 : dw $8B02 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0500 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0030 ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED91A : db $02 : dw $0039 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_maridia_the_tube:
    dw #preset_kpdr25_wrecked_ship_hellway_return ; Wrecked Ship: Hellway Return
    dl $7E078D : db $02 : dw $9102 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A408 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00F3 ; Health
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $01B9 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_kpdr25_maridia_botwoon:
    dw #preset_kpdr25_maridia_the_tube ; Maridia: The Tube
    dl $7E078D : db $02 : dw $A72C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $D617 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $E78D ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2EBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B9 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E090F : db $02 : dw $DFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $DFFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0014 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00B8 ; Health
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $03BC ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0801 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $8174 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003D ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_maridia_halfie:
    dw #preset_kpdr25_maridia_botwoon ; Maridia: Botwoon
    dl $7E078D : db $02 : dw $A918 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D7E4 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $000E ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01F3 ; Health
    dl $7E09C4 : db $02 : dw $01F3 ; Max helath
    dl $7E09C6 : db $02 : dw $0019 ; Missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0AF6 : db $02 : dw $00AD ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED82C : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED882 : db $02 : dw $0100 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003E ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_maridia_draygon:
    dw #preset_kpdr25_maridia_halfie ; Maridia: Halfie
    dl $7E078D : db $02 : dw $A7F8 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D78F ; MDB
    dl $7E090F : db $02 : dw $1001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01BA ; Health
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E0A1C : db $02 : dw $008A ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C2 : db $02 : dw $0C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003F ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_maridia_whomple_jump:
    dw #preset_kpdr25_maridia_draygon ; Maridia: Draygon
    dl $7E078D : db $02 : dw $A96C ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $3325 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3325 ; Collected Items
    dl $7E09C2 : db $02 : dw $0184 ; Health
    dl $7E09C6 : db $02 : dw $0006 ; Missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0AF6 : db $02 : dw $003F ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED82C : db $02 : dw $0003 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $4C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0044 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_maridia_plasma_spark_room:
    dw #preset_kpdr25_maridia_whomple_jump ; Maridia: Whomple Jump
    dl $7E078D : db $02 : dw $A93C ; DDB
    dl $7E079B : db $02 : dw $D5EC ; MDB
    dl $7E07C3 : db $02 : dw $E78D ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2EBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B9 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3C01 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E0A1C : db $02 : dw $0052 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0204 ; More position/state
    dl $7E0AF6 : db $02 : dw $0032 ; Samus X
    dl $7E0AFA : db $02 : dw $0067 ; Samus Y
    dl $7ED8C2 : db $02 : dw $DC00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0041 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_maridia_plasma_spark_revisit:
    dw #preset_kpdr25_maridia_plasma_spark_room ; Maridia: Plasma Spark Room
    dl $7E078D : db $02 : dw $A540 ; DDB
    dl $7E079B : db $02 : dw $D387 ; MDB
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E090F : db $02 : dw $3001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $031C ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $100B ; Beams
    dl $7E09A8 : db $02 : dw $100F ; Beams
    dl $7E09C2 : db $02 : dw $01BB ; Health
    dl $7E09C6 : db $02 : dw $0009 ; Missiles
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $003E ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED880 : db $02 : dw $80A0 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $DC0A ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0042 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_lower_norfair_business_center_revisit:
    dw #preset_kpdr25_maridia_plasma_spark_revisit ; Maridia: Plasma Spark Revisit
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E079F : db $02 : dw $0002 ; Region
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $0239 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01F3 ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $0025 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0E04 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A9 ; Samus Y
    dl $7ED8C2 : db $02 : dw $DC1A ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_lower_norfair_magdollite_tunnel:
    dw #preset_kpdr25_lower_norfair_business_center_revisit ; Lower Norfair: Business Center Revisit
    dl $7E078D : db $02 : dw $9576 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $AEDF ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E0915 : db $02 : dw $01EC ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $006F ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED91A : db $02 : dw $0043 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_lower_norfair_ln_elevator:
    dw #preset_kpdr25_lower_norfair_magdollite_tunnel ; Lower Norfair: Magdollite Tunnel
    dl $7E078D : db $02 : dw $96DE ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $AF3F ; MDB
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01F0 ; Health
    dl $7E09C6 : db $02 : dw $0008 ; Missiles
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0007 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $007B ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8BA : db $02 : dw $01F1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_lower_norfair_fast_pillars:
    dw #preset_kpdr25_lower_norfair_ln_elevator ; Lower Norfair: LN Elevator
    dl $7E078D : db $02 : dw $96F6 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $B236 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $000B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $07D6 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_kpdr25_lower_norfair_kihunter_stairs:
    dw #preset_kpdr25_lower_norfair_fast_pillars ; Lower Norfair: Fast Pillars
    dl $7E078D : db $02 : dw $997E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B4E5 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $02A9 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $003F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $017B ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0011 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0309 ; Samus X
    dl $7E0AFA : db $02 : dw $00AF ; Samus Y
    dw #$FFFF
.after

preset_kpdr25_lower_norfair_metal_pirates:
    dw #preset_kpdr25_lower_norfair_kihunter_stairs ; Lower Norfair: Kihunter Stairs
    dl $7E078D : db $02 : dw $99EA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0179 ; Health
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E0A1C : db $02 : dw $001C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0304 ; More position/state
    dl $7E0AF6 : db $02 : dw $013F ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8BA : db $02 : dw $C1F1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0044 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_lower_norfair_ridley:
    dw #preset_kpdr25_lower_norfair_metal_pirates ; Lower Norfair: Metal Pirates
    dl $7E078D : db $02 : dw $995A ; DDB
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01A5 ; Health
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E0A1C : db $02 : dw $00D0 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED8BA : db $02 : dw $D1F1 ; Events, Items, Doors
    dl $7ED8BC : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_lower_norfair_ridley_etank:
    dw #preset_kpdr25_lower_norfair_ridley ; Lower Norfair: Ridley
    dl $7E078D : db $02 : dw $98B2 ; DDB
    dl $7E079B : db $02 : dw $B698 ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0257 ; Health
    dl $7E09C4 : db $02 : dw $0257 ; Max helath
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00BF ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED82A : db $02 : dw $0101 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $401C ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $D9F1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0045 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_lower_norfair_wasteland_revisit:
    dw #preset_kpdr25_lower_norfair_ridley_etank ; Lower Norfair: Ridley E-tank
    dl $7E078D : db $02 : dw $9966 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5C01 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0234 ; Health
    dl $7E0A1C : db $02 : dw $0017 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0208 ; More position/state
    dl $7E0AF6 : db $02 : dw $02D8 ; Samus X
    dl $7E0AFA : db $02 : dw $006C ; Samus Y
    dl $7E0B3F : db $02 : dw $0002 ; Blue suit
    dl $7ED8BA : db $02 : dw $DDF1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_lower_norfair_fireflea_room:
    dw #preset_kpdr25_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dl $7E078D : db $02 : dw $9A26 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $C180 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $01FB ; Health
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AD ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED91A : db $02 : dw $0046 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_lower_norfair_three_musketeers:
    dw #preset_kpdr25_lower_norfair_fireflea_room ; Lower Norfair: Fireflea Room
    dl $7E078D : db $02 : dw $9A92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B510 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001B ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01EC ; Health
    dl $7E09C6 : db $02 : dw $000D ; Missiles
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $006A ; Samus X
    dl $7ED91A : db $02 : dw $0048 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_golden_4_frog_speedway:
    dw #preset_kpdr25_lower_norfair_three_musketeers ; Lower Norfair: Three Musketeers
    dl $7E078D : db $02 : dw $956A ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $AF72 ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01BA ; Health
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0A1C : db $02 : dw $0010 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0087 ; Samus X
    dl $7ED91A : db $02 : dw $004A ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_golden_4_maridia_tube_revisit:
    dw #preset_kpdr25_golden_4_frog_speedway ; Golden 4: Frog Speedway
    dl $7E078D : db $02 : dw $92EE ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0025 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0E04 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0087 ; Samus Y
    dw #$FFFF
.after

preset_kpdr25_golden_4_premoat_revisit:
    dw #preset_kpdr25_golden_4_maridia_tube_revisit ; Golden 4: Maridia Tube Revisit
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0AFA : db $02 : dw $00A9 ; Samus Y
    dl $7ED91A : db $02 : dw $004C ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_golden_4_terminator_revisit:
    dw #preset_kpdr25_golden_4_premoat_revisit ; Golden 4: Pre-Moat Revisit
    dl $7E078D : db $02 : dw $8916 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0071 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $000D ; Missiles
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0077 ; Samus X
    dl $7E0AFA : db $02 : dw $0093 ; Samus Y
    dl $7E0B3F : db $02 : dw $0104 ; Blue suit
    dw #$FFFF
.after

preset_kpdr25_golden_4_g4_elevator:
    dw #preset_kpdr25_golden_4_terminator_revisit ; Golden 4: Terminator Revisit
    dl $7E078D : db $02 : dw $91F2 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A66A ; MDB
    dl $7E07C3 : db $02 : dw $860B ; GFX Pointers
    dl $7E07C5 : db $02 : dw $9CC0 ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2BC ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E0A1C : db $02 : dw $0007 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AFA : db $02 : dw $019B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED820 : db $02 : dw $0FC1 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $6C01 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004F ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_tourian_metroids_1:
    dw #preset_kpdr25_golden_4_g4_elevator ; Golden 4: G4 Elevator
    dl $7E078D : db $02 : dw $9222 ; DDB
    dl $7E079B : db $02 : dw $DAAE ; MDB
    dl $7E079F : db $02 : dw $0005 ; Region
    dl $7E07C3 : db $02 : dw $D414 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $EDBF ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2BA ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $FFFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0039 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED90C : db $02 : dw $0100 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_tourian_metroids_2:
    dw #preset_kpdr25_tourian_metroids_1 ; Tourian: Metroids 1
    dl $7E078D : db $02 : dw $A984 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $DAE1 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0034 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01C5 ; Health
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0AF6 : db $02 : dw $00D4 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7E0B3F : db $02 : dw $0001 ; Blue suit
    dl $7ED822 : db $02 : dw $0021 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_tourian_metroids_3:
    dw #preset_kpdr25_tourian_metroids_2 ; Tourian: Metroids 2
    dl $7E078D : db $02 : dw $A9B4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $DB31 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $EFFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0106 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0210 ; Health
    dl $7E09C6 : db $02 : dw $0015 ; Missiles
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00CD ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED822 : db $02 : dw $0023 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0003 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_tourian_metroids_4:
    dw #preset_kpdr25_tourian_metroids_3 ; Tourian: Metroids 3
    dl $7E078D : db $02 : dw $A9CC ; DDB
    dl $7E079B : db $02 : dw $DB7D ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0257 ; Health
    dl $7E09C6 : db $02 : dw $0019 ; Missiles
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0AF6 : db $02 : dw $05C7 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED822 : db $02 : dw $0027 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0007 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_tourian_baby_skip:
    dw #preset_kpdr25_tourian_metroids_4 ; Tourian: Metroids 4
    dl $7E078D : db $02 : dw $AA14 ; DDB
    dl $7E079B : db $02 : dw $DC65 ; MDB
    dl $7E07F3 : db $02 : dw $0045 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0239 ; Health
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $01B6 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED822 : db $02 : dw $002F ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $000F ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_tourian_zeb_skip:
    dw #preset_kpdr25_tourian_baby_skip ; Tourian: Baby Skip
    dl $7E078D : db $02 : dw $AAA4 ; DDB
    dl $7E079B : db $02 : dw $DDF3 ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $AFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021A ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0AF6 : db $02 : dw $003E ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C4 : db $02 : dw $03AF ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_tourian_escape_room_3:
    dw #preset_kpdr25_tourian_zeb_skip ; Tourian: Zeb Skip
    dl $7E078D : db $02 : dw $AAEC ; DDB
    dl $7E079B : db $02 : dw $DE7A ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $007C ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1009 ; Beams
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E0A1C : db $02 : dw $0029 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0608 ; More position/state
    dl $7E0A76 : db $02 : dw $8000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $00DB ; Samus X
    dl $7E0AFA : db $02 : dw $00EC ; Samus Y
    dl $7ED820 : db $02 : dw $4FC5 ; Events, Items, Doors
    dl $7ED82C : db $02 : dw $0203 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kpdr25_tourian_escape_parlor:
    dw #preset_kpdr25_tourian_escape_room_3 ; Tourian: Escape Room 3
    dl $7E078D : db $02 : dw $AB34 ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A401 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0189 ; Health
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $019E ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED90C : db $02 : dw $FF00 ; Events, Items, Doors
    dw #$FFFF
.after
