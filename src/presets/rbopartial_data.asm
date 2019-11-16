
preset_rbo_bombs_parlor_down:
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
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0400 ; Screen Y position in pixels
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
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0A76 : db $02 : dw $0000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $0033 ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
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
    dl $7ED7D6 : db $02 : dw $2000 ; SRAM copy
    dl $7ED7D8 : db $02 : dw $0040 ; SRAM copy
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
    dl $7ED7F8 : db $02 : dw $002A ; SRAM copy
    dl $7ED7FA : db $02 : dw $0007 ; SRAM copy
    dl $7ED7FC : db $02 : dw $0001 ; SRAM copy
    dl $7ED7FE : db $02 : dw $0000 ; SRAM copy
    dl $7ED800 : db $02 : dw $0000 ; SRAM copy
    dl $7ED802 : db $02 : dw $0001 ; SRAM copy
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

preset_rbo_bombs_pit_room:
    dw #preset_rbo_bombs_parlor_down ; Bombs: Parlor Down
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0000 ; Music Track
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $0004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $0004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09C8 : db $02 : dw $0005 ; Max missiles
    dl $7E0AF6 : db $02 : dw $02D8 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED872 : db $02 : dw $0400 ; Events, Items, Doors
    dl $7ED874 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0004 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_bombs_retro_etank:
    dw #preset_rbo_bombs_pit_room ; Bombs: Pit Room
    dl $7E078D : db $02 : dw $8EAA ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9F11 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $BBFF ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0059 ; Health
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0053 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0A08 ; More position/state
    dl $7E0AF6 : db $02 : dw $00D1 ; Samus X
    dl $7ED820 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $0600 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0005 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_bombs_climb:
    dw #preset_rbo_bombs_retro_etank ; Bombs: Retro E-Tank
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00B8 ; Health
    dl $7E09C4 : db $02 : dw $00C7 ; Max helath
    dl $7E09C6 : db $02 : dw $0007 ; Missiles
    dl $7E09C8 : db $02 : dw $000A ; Max missiles
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0076 ; Samus X
    dl $7ED872 : db $02 : dw $3400 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0009 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_bombs_parlor_up:
    dw #preset_rbo_bombs_climb ; Bombs: Climb
    dl $7E078D : db $02 : dw $8B7A ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E0A1C : db $02 : dw $001A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0304 ; More position/state
    dl $7E0AF6 : db $02 : dw $0198 ; Samus X
    dl $7E0AFA : db $02 : dw $0040 ; Samus Y
    dw #$FFFF
.after

preset_rbo_bombs_alcatraz:
    dw #preset_rbo_bombs_parlor_up ; Bombs: Parlor Up
    dl $7E078D : db $02 : dw $8BAA ; DDB
    dl $7E079B : db $02 : dw $9879 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B800 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $1004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1004 ; Collected Items
    dl $7E0A1C : db $02 : dw $0012 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0027 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED828 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED870 : db $02 : dw $0080 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2E00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $000A ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_bombs_terminator:
    dw #preset_rbo_bombs_alcatraz ; Bombs: Alcatraz
    dl $7E078D : db $02 : dw $8BB6 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0032 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0804 ; More position/state
    dl $7E0AF6 : db $02 : dw $0118 ; Samus X
    dl $7E0AFA : db $02 : dw $0082 ; Samus Y
    dw #$FFFF
.after

preset_rbo_brinstar_green_brinstar_elevator:
    dw #preset_rbo_bombs_terminator ; Bombs: Terminator
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $6880 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00EF ; Health
    dl $7E09C4 : db $02 : dw $012B ; Max helath
    dl $7E0A1C : db $02 : dw $0010 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $00D8 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED870 : db $02 : dw $0180 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $000D ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_early_supers_reserve:
    dw #preset_rbo_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dl $7E078D : db $02 : dw $8C0A ; DDB
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
    dl $7E09C2 : db $02 : dw $00E5 ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00B2 ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dl $7ED8B4 : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $000E ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_early_supers_collection:
    dw #preset_rbo_brinstar_early_supers_reserve ; Brinstar: Early Supers Reserve
    dl $7E078D : db $02 : dw $8D5A ; DDB
    dl $7E079B : db $02 : dw $9C07 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C0 : db $02 : dw $0001 ; Manual/Auto reserve tank
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09D4 : db $02 : dw $0064 ; Max reserves
    dl $7E0A1C : db $02 : dw $0012 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $003E ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED872 : db $02 : dw $3402 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0042 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0013 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_big_pink:
    dw #preset_rbo_brinstar_early_supers_collection ; Brinstar: Early Supers Collection
    dl $7E078D : db $02 : dw $8CE2 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $9CB3 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $054F ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00D1 ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CC : db $02 : dw $0005 ; Max supers
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $05DB ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED872 : db $02 : dw $3403 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0046 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0016 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_red_tower_up:
    dw #preset_rbo_brinstar_big_pink ; Brinstar: Big Pink
    dl $7E078D : db $02 : dw $8E92 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E09A6 : db $02 : dw $1000 ; Beams
    dl $7E09A8 : db $02 : dw $1000 ; Beams
    dl $7E09C2 : db $02 : dw $00B3 ; Health
    dl $7E0AF6 : db $02 : dw $0571 ; Samus X
    dl $7ED872 : db $02 : dw $3483 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0246 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $000C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001A ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_reverse_hellway:
    dw #preset_rbo_brinstar_red_tower_up ; Brinstar: Red Tower (Up)
    dl $7E078D : db $02 : dw $90EA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $04F3 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $007F ; Health
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D0 : db $02 : dw $0005 ; Max pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0030 ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED874 : db $02 : dw $0104 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $300C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001C ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_first_visit_norfair_elevator:
    dw #preset_rbo_brinstar_reverse_hellway ; Brinstar: Reverse Hellway
    dl $7E078D : db $02 : dw $A384 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1004 ; Beams
    dl $7E09A8 : db $02 : dw $1004 ; Beams
    dl $7E09C2 : db $02 : dw $004B ; Health
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E0A1C : db $02 : dw $000F ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $0049 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED874 : db $02 : dw $0504 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $B00C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001D ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_first_visit_high_jump:
    dw #preset_rbo_norfair_first_visit_norfair_elevator ; Norfair (First Visit): Norfair Elevator
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E079F : db $02 : dw $0002 ; Region
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $051C ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $002B ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED8B8 : db $02 : dw $2000 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_first_visit_first_hell_run:
    dw #preset_rbo_norfair_first_visit_high_jump ; Norfair (First Visit): High Jump
    dl $7E078D : db $02 : dw $941A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $BFFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02F6 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $1104 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1104 ; Collected Items
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09C4 : db $02 : dw $018F ; Max helath
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E09D6 : db $02 : dw $0028 ; Reserves
    dl $7E0A1C : db $02 : dw $00A4 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00A0 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED876 : db $02 : dw $0120 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0022 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_first_visit_bubble_mountain:
    dw #preset_rbo_norfair_first_visit_first_hell_run ; Norfair (First Visit): First Hell Run
    dl $7E078D : db $02 : dw $929A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $AFA3 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0079 ; Health
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $04B4 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B8 : db $02 : dw $2600 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0023 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_first_visit_bat_cave_speed_farm:
    dw #preset_rbo_norfair_first_visit_bubble_mountain ; Norfair (First Visit): Bubble Mountain
    dl $7E078D : db $02 : dw $973E ; DDB
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0075 ; Health
    dl $7E09C6 : db $02 : dw $0001 ; Missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01BD ; Samus X
    dl $7ED8BA : db $02 : dw $0011 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0024 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_first_visit_wave_escape:
    dw #preset_rbo_norfair_first_visit_bat_cave_speed_farm ; Norfair (First Visit): Bat Cave (Speed Farm)
    dl $7E078D : db $02 : dw $961E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $ADDE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C400 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $3104 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3104 ; Collected Items
    dl $7E09A6 : db $02 : dw $1005 ; Beams
    dl $7E09A8 : db $02 : dw $1005 ; Beams
    dl $7E09C2 : db $02 : dw $00CC ; Health
    dl $7E09C6 : db $02 : dw $000D ; Missiles
    dl $7E09C8 : db $02 : dw $000F ; Max missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E09D6 : db $02 : dw $0064 ; Reserves
    dl $7E0A1C : db $02 : dw $0018 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0204 ; More position/state
    dl $7E0AF6 : db $02 : dw $0051 ; Samus X
    dl $7E0AFA : db $02 : dw $0092 ; Samus Y
    dl $7ED822 : db $02 : dw $0020 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $001C ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $00F1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002A ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_alpha_spark:
    dw #preset_rbo_norfair_first_visit_wave_escape ; Norfair (First Visit): Wave Escape
    dl $7E078D : db $02 : dw $92EE ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0034 ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0087 ; Samus Y
    dl $7ED91A : db $02 : dw $002C ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_spore_spawn_supers:
    dw #preset_rbo_brinstar_cleanup_alpha_spark ; Brinstar Cleanup: Alpha Spark
    dl $7E078D : db $02 : dw $8E7A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0517 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0040 ; Health
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0007 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0389 ; Samus X
    dl $7E0AFA : db $02 : dw $05AB ; Samus Y
    dl $7ED91A : db $02 : dw $0030 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_dachora_room:
    dw #preset_rbo_brinstar_cleanup_spore_spawn_supers ; Brinstar Cleanup: Spore Spawn Supers
    dl $7E078D : db $02 : dw $8FB2 ; DDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $02FA ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01F2 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01A3 ; Health
    dl $7E09C4 : db $02 : dw $01F3 ; Max helath
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E09CC : db $02 : dw $000A ; Max supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0A1C : db $02 : dw $00E7 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $039A ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED870 : db $02 : dw $4180 ; Events, Items, Doors
    dl $7ED874 : db $02 : dw $050C ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0346 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $B0EC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0038 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_green_shaft_down:
    dw #preset_rbo_brinstar_cleanup_dachora_room ; Brinstar Cleanup: Dachora Room
    dl $7E078D : db $02 : dw $8DA2 ; DDB
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $EC01 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $05FB ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0032 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0804 ; More position/state
    dl $7E0AF6 : db $02 : dw $0091 ; Samus X
    dl $7E0AFA : db $02 : dw $0685 ; Samus Y
    dl $7ED91A : db $02 : dw $0039 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_etecoon_supers:
    dw #preset_rbo_brinstar_cleanup_green_shaft_down ; Brinstar Cleanup: Green Shaft (Down)
    dl $7E078D : db $02 : dw $8CBE ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9FE5 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0185 ; Health
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0038 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_green_shaft_up:
    dw #preset_rbo_brinstar_cleanup_etecoon_supers ; Brinstar Cleanup: Etecoon Supers
    dl $7E078D : db $02 : dw $8F46 ; DDB
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0700 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0203 ; Health
    dl $7E09C4 : db $02 : dw $0257 ; Max helath
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CC : db $02 : dw $000F ; Max supers
    dl $7E09CE : db $02 : dw $0009 ; Pbs
    dl $7E09D0 : db $02 : dw $000A ; Max pbs
    dl $7E0AF6 : db $02 : dw $0137 ; Samus X
    dl $7E0AFA : db $02 : dw $078B ; Samus Y
    dl $7ED870 : db $02 : dw $6180 ; Events, Items, Doors
    dl $7ED872 : db $02 : dw $F483 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $B0FC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003D ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_reverse_terminator:
    dw #preset_rbo_brinstar_cleanup_green_shaft_up ; Brinstar Cleanup: Green Shaft (Up)
    dl $7E078D : db $02 : dw $8C16 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $99BD ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $040E ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01FE ; Health
    dl $7E09C6 : db $02 : dw $0009 ; Missiles
    dl $7E09CE : db $02 : dw $0008 ; Pbs
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $005F ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dl $7ED91A : db $02 : dw $0040 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_climb_supers_moonfall:
    dw #preset_rbo_brinstar_cleanup_reverse_terminator ; Brinstar Cleanup: Reverse Terminator
    dl $7E078D : db $02 : dw $8BF2 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $041F ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $002A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0604 ; More position/state
    dl $7E0AF6 : db $02 : dw $018D ; Samus X
    dl $7E0AFA : db $02 : dw $04C2 ; Samus Y
    dl $7ED91A : db $02 : dw $0041 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_retro_brinstar_powerbombs:
    dw #preset_rbo_brinstar_cleanup_climb_supers_moonfall ; Brinstar Cleanup: Climb Supers Moonfall
    dl $7E078D : db $02 : dw $8B86 ; DDB
    dl $7E079B : db $02 : dw $97B5 ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0108 ; Health
    dl $7E09C6 : db $02 : dw $000B ; Missiles
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E09CC : db $02 : dw $0014 ; Max supers
    dl $7E09CE : db $02 : dw $0006 ; Pbs
    dl $7E0A1C : db $02 : dw $000F ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $0052 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED870 : db $02 : dw $6980 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2E08 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0043 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_ball_buster:
    dw #preset_rbo_brinstar_cleanup_retro_brinstar_powerbombs ; Brinstar Cleanup: Retro Brinstar Powerbombs
    dl $7E078D : db $02 : dw $8E92 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E0911 : db $02 : dw $003B ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CE : db $02 : dw $000A ; Pbs
    dl $7E09D0 : db $02 : dw $000F ; Max pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $009B ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED872 : db $02 : dw $FC83 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $B0FE ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0045 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_ice_entry:
    dw #preset_rbo_brinstar_cleanup_ball_buster ; Brinstar Cleanup: Ball Buster
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E079F : db $02 : dw $0002 ; Region
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0322 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0104 ; Health
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E0A1C : db $02 : dw $00A5 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $002F ; Samus X
    dl $7E0AFA : db $02 : dw $0393 ; Samus Y
    dl $7ED8B8 : db $02 : dw $2E00 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_ice_escape:
    dw #preset_rbo_norfair_second_visit_ice_entry ; Norfair (Second Visit): Ice Entry
    dl $7E078D : db $02 : dw $937E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A890 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1007 ; Beams
    dl $7E09A8 : db $02 : dw $1007 ; Beams
    dl $7E09C2 : db $02 : dw $00AF ; Health
    dl $7E09CE : db $02 : dw $0009 ; Pbs
    dl $7E0A1C : db $02 : dw $0008 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $00B6 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $0124 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0046 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_croc_shaft_moonfall:
    dw #preset_rbo_norfair_second_visit_ice_escape ; Norfair (Second Visit): Ice Escape
    dl $7E078D : db $02 : dw $9276 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A815 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0010 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0087 ; Health
    dl $7E09CE : db $02 : dw $000A ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $00B0 ; Samus X
    dl $7E0AFA : db $02 : dw $03AB ; Samus Y
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_croc:
    dw #preset_rbo_norfair_second_visit_croc_shaft_moonfall ; Norfair (Second Visit): Croc Shaft Moonfall
    dl $7E078D : db $02 : dw $9396 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A923 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $D880 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0C00 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $003E ; Health
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E09D6 : db $02 : dw $0000 ; Reserves
    dl $7E0A1C : db $02 : dw $0029 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0608 ; More position/state
    dl $7E0AF6 : db $02 : dw $0C86 ; Samus X
    dl $7E0AFA : db $02 : dw $02C9 ; Samus Y
    dl $7ED8B8 : db $02 : dw $6E00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0047 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_grapple_escape:
    dw #preset_rbo_norfair_second_visit_croc ; Norfair (Second Visit): Croc
    dl $7E078D : db $02 : dw $94DA ; DDB
    dl $7E079B : db $02 : dw $AC2B ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $7104 ; Equipped Items
    dl $7E09A4 : db $02 : dw $7104 ; Collected Items
    dl $7E09C2 : db $02 : dw $0255 ; Health
    dl $7E09C4 : db $02 : dw $02BB ; Max helath
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E09CE : db $02 : dw $000E ; Pbs
    dl $7E09D0 : db $02 : dw $0014 ; Max pbs
    dl $7E09D6 : db $02 : dw $0012 ; Reserves
    dl $7E0A1C : db $02 : dw $009D ; Samus position/state
    dl $7E0A1E : db $02 : dw $0E08 ; More position/state
    dl $7E0AF6 : db $02 : dw $0055 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED82A : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED876 : db $02 : dw $1334 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $00F3 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004B ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_lava_dive_grapple_room:
    dw #preset_rbo_norfair_second_visit_grapple_escape ; Norfair (Second Visit): Grapple Escape
    dl $7E078D : db $02 : dw $9756 ; DDB
    dl $7E079B : db $02 : dw $B026 ; MDB
    dl $7E07C3 : db $02 : dw $860B ; GFX Pointers
    dl $7E07C5 : db $02 : dw $58C0 ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2BE ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $02BB ; Health
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E09CE : db $02 : dw $0010 ; Pbs
    dl $7E09D6 : db $02 : dw $0064 ; Reserves
    dl $7E0A1C : db $02 : dw $0051 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0208 ; More position/state
    dl $7E0AF6 : db $02 : dw $00BF ; Samus X
    dl $7E0AFA : db $02 : dw $007E ; Samus Y
    dl $7ED8B8 : db $02 : dw $EE00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004D ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_lava_dive_entry_room:
    dw #preset_rbo_norfair_second_visit_lava_dive_grapple_room ; Norfair (Second Visit): Lava Dive (Grapple Room)
    dl $7E078D : db $02 : dw $9792 ; DDB
    dl $7E079B : db $02 : dw $AFFB ; MDB
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $CC4C ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5ABE ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0270 ; Health
    dl $7E0A1C : db $02 : dw $00E2 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $03C4 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_rbo_lower_norfair_green_gate_glitch:
    dw #preset_rbo_norfair_second_visit_lava_dive_entry_room ; Norfair (Second Visit): Lava Dive (Entry Room)
    dl $7E078D : db $02 : dw $96F6 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $B236 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01C4 ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $001E ; Samus position/state
    dl $7E0A1E : db $02 : dw $0408 ; More position/state
    dl $7E0AF6 : db $02 : dw $07C8 ; Samus X
    dl $7E0AFA : db $02 : dw $0299 ; Samus Y
    dl $7ED8BA : db $02 : dw $01F3 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_lower_norfair_golden_torizo:
    dw #preset_rbo_lower_norfair_green_gate_glitch ; Lower Norfair: Green Gate Glitch
    dl $7E078D : db $02 : dw $98A6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B6C1 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $3FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $710C ; Equipped Items
    dl $7E09A4 : db $02 : dw $710C ; Collected Items
    dl $7E09C2 : db $02 : dw $0297 ; Health
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $00A8 ; Samus X
    dl $7E0AFA : db $02 : dw $029B ; Samus Y
    dl $7ED878 : db $02 : dw $801C ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0050 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_lower_norfair_energy_refill_escape:
    dw #preset_rbo_lower_norfair_golden_torizo ; Lower Norfair: Golden Torizo
    dl $7E078D : db $02 : dw $9A7A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B305 ; MDB
    dl $7E07C3 : db $02 : dw $860B ; GFX Pointers
    dl $7E07C5 : db $02 : dw $58C0 ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2BE ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E090F : db $02 : dw $1001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1001 ; Beams
    dl $7E09C2 : db $02 : dw $02BB ; Health
    dl $7E09C6 : db $02 : dw $000D ; Missiles
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E09CC : db $02 : dw $0019 ; Max supers
    dl $7E09CE : db $02 : dw $0006 ; Pbs
    dl $7E0A1C : db $02 : dw $0008 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0030 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED82A : db $02 : dw $0006 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $809C ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $03F3 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0053 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_lower_norfair_writg:
    dw #preset_rbo_lower_norfair_energy_refill_escape ; Lower Norfair: Energy Refill (Escape)
    dl $7E078D : db $02 : dw $9912 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $B457 ; MDB
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $E600 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0173 ; Health
    dl $7E09CA : db $02 : dw $0012 ; Supers
    dl $7E09CE : db $02 : dw $0008 ; Pbs
    dl $7E0A1C : db $02 : dw $0067 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0608 ; More position/state
    dl $7E0AF6 : db $02 : dw $03D3 ; Samus X
    dl $7E0AFA : db $02 : dw $0074 ; Samus Y
    dl $7ED91A : db $02 : dw $0054 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_lower_norfair_kihunter_stairs_down:
    dw #preset_rbo_lower_norfair_writg ; Lower Norfair: WRITG
    dl $7E078D : db $02 : dw $9A02 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $B6EE ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0322 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0317 ; Health
    dl $7E09C4 : db $02 : dw $031F ; Max helath
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CE : db $02 : dw $000B ; Pbs
    dl $7E0A1C : db $02 : dw $0012 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $013D ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED87A : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0055 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_lower_norfair_ninja_pirates:
    dw #preset_rbo_lower_norfair_kihunter_stairs_down ; Lower Norfair: Kihunter Stairs (Down)
    dl $7E078D : db $02 : dw $99EA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $010F ; Health
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E09CE : db $02 : dw $0008 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0AF6 : db $02 : dw $013F ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8BA : db $02 : dw $C3F3 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0056 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_lower_norfair_ridley:
    dw #preset_rbo_lower_norfair_ninja_pirates ; Lower Norfair: Ninja Pirates
    dl $7E078D : db $02 : dw $995A ; DDB
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $026C ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09CA : db $02 : dw $0019 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0AF6 : db $02 : dw $0033 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED8BA : db $02 : dw $D3F3 ; Events, Items, Doors
    dl $7ED8BC : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_escape_postridley:
    dw #preset_rbo_lower_norfair_ridley ; Lower Norfair: Ridley
    dl $7E078D : db $02 : dw $9A62 ; DDB
    dl $7E079B : db $02 : dw $B32E ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $EFFF ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1007 ; Beams
    dl $7E09C2 : db $02 : dw $036D ; Health
    dl $7E09C4 : db $02 : dw $0383 ; Max helath
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E09D6 : db $02 : dw $0000 ; Reserves
    dl $7E0A1C : db $02 : dw $0011 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $0050 ; Samus X
    dl $7E0AFA : db $02 : dw $019B ; Samus Y
    dl $7ED82A : db $02 : dw $0007 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $C09C ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $DBF3 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0057 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_escape_firefleas_exit_spikesuit:
    dw #preset_rbo_norfair_escape_postridley ; Norfair Escape: Post-Ridley
    dl $7E078D : db $02 : dw $9A02 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $B6EE ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001D ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0383 ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E09D0 : db $02 : dw $0019 ; Max pbs
    dl $7E09D6 : db $02 : dw $0064 ; Reserves
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $015F ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED878 : db $02 : dw $D09C ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $DFF3 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0059 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_escape_3_muskateers:
    dw #preset_rbo_norfair_escape_firefleas_exit_spikesuit ; Norfair Escape: Firefleas Exit (Spikesuit)
    dl $7E078D : db $02 : dw $9A92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B510 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0017 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $02CF ; Health
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E0A1C : db $02 : dw $00A5 ; Samus position/state
    dl $7E0A68 : db $02 : dw $0001 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0070 ; Samus X
    dl $7ED91A : db $02 : dw $005A ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_norfair_escape_croc_gate_farm:
    dw #preset_rbo_norfair_escape_3_muskateers ; Norfair Escape: 3 Muskateers
    dl $7E078D : db $02 : dw $95CA ; DDB
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02FB ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $012C ; Health
    dl $7E09C6 : db $02 : dw $0004 ; Missiles
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0058 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED91A : db $02 : dw $005C ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_maridia_maridia_entry_spikesuit:
    dw #preset_rbo_norfair_escape_croc_gate_farm ; Norfair Escape: Croc Gate Farm
    dl $7E078D : db $02 : dw $922E ; DDB
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CA : db $02 : dw $0019 ; Supers
    dl $7E09CE : db $02 : dw $000E ; Pbs
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0AF6 : db $02 : dw $009C ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7E0B3F : db $02 : dw $0001 ; Blue suit
    dw #$FFFF
.after

preset_rbo_maridia_aqueduct:
    dw #preset_rbo_maridia_maridia_entry_spikesuit ; Maridia: Maridia Entry (Spikesuit)
    dl $7E078D : db $02 : dw $A468 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $D1A3 ; MDB
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $013F ; Health
    dl $7E09CA : db $02 : dw $0018 ; Supers
    dl $7E0A1C : db $02 : dw $00E4 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01BA ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED820 : db $02 : dw $0801 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $8000 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $005E ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_maridia_botwoon:
    dw #preset_rbo_maridia_aqueduct ; Maridia: Aqueduct
    dl $7E078D : db $02 : dw $A72C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $D617 ; MDB
    dl $7E07C3 : db $02 : dw $E78D ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2EBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B9 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $009F ; Health
    dl $7E09CE : db $02 : dw $000D ; Pbs
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $03A2 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED91A : db $02 : dw $0060 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_maridia_colosseum:
    dw #preset_rbo_maridia_botwoon ; Maridia: Botwoon
    dl $7E078D : db $02 : dw $A7E0 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D913 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0046 ; Health
    dl $7E09CA : db $02 : dw $0013 ; Supers
    dl $7E09CE : db $02 : dw $000F ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $00C6 ; Samus X
    dl $7ED82C : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0061 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_maridia_draygon:
    dw #preset_rbo_maridia_colosseum ; Maridia: Colosseum
    dl $7E078D : db $02 : dw $A7F8 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D78F ; MDB
    dl $7E090F : db $02 : dw $7400 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01FD ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $000A ; Health
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003C ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C2 : db $02 : dw $0C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0062 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_maridia_draygon_escape:
    dw #preset_rbo_maridia_draygon ; Maridia: Draygon
    dl $7E078D : db $02 : dw $A978 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D9AA ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $4C00 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $D800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $730C ; Equipped Items
    dl $7E09A4 : db $02 : dw $730C ; Collected Items
    dl $7E09C2 : db $02 : dw $023A ; Health
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E09D6 : db $02 : dw $0000 ; Reserves
    dl $7E0A1C : db $02 : dw $0019 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0308 ; More position/state
    dl $7E0AF6 : db $02 : dw $00CA ; Samus X
    dl $7E0AFA : db $02 : dw $0087 ; Samus Y
    dl $7E0B3F : db $02 : dw $0004 ; Blue suit
    dl $7ED82C : db $02 : dw $0003 ; Events, Items, Doors
    dl $7ED882 : db $02 : dw $0400 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $8C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0063 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_maridia_plasma_screw_attack_strat:
    dw #preset_rbo_maridia_draygon_escape ; Maridia: Draygon Escape
    dl $7E078D : db $02 : dw $A5DC ; DDB
    dl $7E079B : db $02 : dw $D27E ; MDB
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $015B ; Health
    dl $7E09C6 : db $02 : dw $000B ; Missiles
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $005F ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED8C2 : db $02 : dw $DC08 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0064 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_wrecked_ship_forgotten_highway:
    dw #preset_rbo_maridia_plasma_screw_attack_strat ; Maridia: Plasma (Screw Attack Strat)
    dl $7E078D : db $02 : dw $A594 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $94CC ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E09A6 : db $02 : dw $100B ; Beams
    dl $7E09A8 : db $02 : dw $100F ; Beams
    dl $7E09C2 : db $02 : dw $01A6 ; Health
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E09CE : db $02 : dw $0013 ; Pbs
    dl $7E0A1C : db $02 : dw $0010 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $007C ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED880 : db $02 : dw $8000 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $DC0A ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0065 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_wrecked_ship_east_ocean:
    dw #preset_rbo_wrecked_ship_forgotten_highway ; Wrecked Ship: Forgotten Highway
    dl $7E078D : db $02 : dw $8A96 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $9552 ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $000C ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01BA ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C4 ; Samus X
    dl $7E0AFA : db $02 : dw $007B ; Samus Y
    dw #$FFFF
.after

preset_rbo_wrecked_ship_wrecked_ship_backdoor_entry:
    dw #preset_rbo_wrecked_ship_east_ocean ; Wrecked Ship: East Ocean
    dl $7E078D : db $02 : dw $8A7E ; DDB
    dl $7E079B : db $02 : dw $94FD ; MDB
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $042D ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $016A ; Health
    dl $7E0AF6 : db $02 : dw $0093 ; Samus X
    dl $7E0AFA : db $02 : dw $049B ; Samus Y
    dw #$FFFF
.after

preset_rbo_wrecked_ship_phantoon:
    dw #preset_rbo_wrecked_ship_wrecked_ship_backdoor_entry ; Wrecked Ship: Wrecked Ship Backdoor Entry
    dl $7E078D : db $02 : dw $A21C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $CC6F ; MDB
    dl $7E079F : db $02 : dw $0003 ; Region
    dl $7E07C3 : db $02 : dw $AE9E ; GFX Pointers
    dl $7E07C5 : db $02 : dw $A6BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B1 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E0911 : db $02 : dw $01F4 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $000E ; Supers
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0266 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED8C0 : db $02 : dw $8010 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0066 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_wrecked_ship_ws_shaft_up:
    dw #preset_rbo_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dl $7E078D : db $02 : dw $A2C4 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E07C5 : db $02 : dw $E7BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $021D ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $01E7 ; Health
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E09CE : db $02 : dw $0017 ; Pbs
    dl $7E0AF6 : db $02 : dw $02BD ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED82A : db $02 : dw $0107 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $8070 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_kraidg4_kihunters_room_down:
    dw #preset_rbo_wrecked_ship_ws_shaft_up ; Wrecked Ship: WS Shaft (Up)
    dl $7E078D : db $02 : dw $89CA ; DDB
    dl $7E079B : db $02 : dw $95FF ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $2C00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E09CE : db $02 : dw $0016 ; Pbs
    dl $7E0AF6 : db $02 : dw $0022 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C0 : db $02 : dw $8074 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $006B ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_kraidg4_kraid_entry:
    dw #preset_rbo_kraidg4_kihunters_room_down ; Kraid/G4: Kihunters Room (Down)
    dl $7E078D : db $02 : dw $A348 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0015 ; Supers
    dl $7E09CE : db $02 : dw $0015 ; Pbs
    dl $7E0A1C : db $02 : dw $00E6 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0049 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7E0B3F : db $02 : dw $0001 ; Blue suit
    dl $7ED8B0 : db $02 : dw $4000 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2E09 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_kraidg4_kraid_hallway:
    dw #preset_rbo_kraidg4_kraid_entry ; Kraid/G4: Kraid Entry
    dl $7E078D : db $02 : dw $9156 ; DDB
    dl $7E079B : db $02 : dw $A4DA ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00FB ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0012 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0167 ; Samus X
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED91A : db $02 : dw $006C ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_kraidg4_kraid_hallway_exit:
    dw #preset_rbo_kraidg4_kraid_hallway ; Kraid/G4: Kraid Hallway
    dl $7E078D : db $02 : dw $91CE ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A56B ; MDB
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $BC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0204 ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09CE : db $02 : dw $0019 ; Pbs
    dl $7E0A1C : db $02 : dw $0018 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0204 ; More position/state
    dl $7E0AF6 : db $02 : dw $0038 ; Samus X
    dl $7E0AFA : db $02 : dw $0183 ; Samus Y
    dl $7E0B3F : db $02 : dw $0002 ; Blue suit
    dl $7ED828 : db $02 : dw $0104 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $EEA4 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_kraidg4_kraid_escape:
    dw #preset_rbo_kraidg4_kraid_hallway_exit ; Kraid/G4: Kraid Hallway (Exit)
    dl $7E078D : db $02 : dw $913E ; DDB
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $87FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0007 ; Missiles
    dl $7E09CA : db $02 : dw $0016 ; Supers
    dl $7E09CE : db $02 : dw $0018 ; Pbs
    dl $7E0A1C : db $02 : dw $0081 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0308 ; More position/state
    dl $7E0AF6 : db $02 : dw $02D8 ; Samus X
    dl $7E0AFA : db $02 : dw $0086 ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED8B8 : db $02 : dw $EEAC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $006D ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_kraidg4_kihunters_room_up:
    dw #preset_rbo_kraidg4_kraid_escape ; Kraid/G4: Kraid Escape
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $01E4 ; Health
    dl $7E09CA : db $02 : dw $0015 ; Supers
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $006C ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dw #$FFFF
.after

preset_rbo_tourian_metroids:
    dw #preset_rbo_kraidg4_kihunters_room_up ; Kraid/G4: Kihunters Room (Up)
    dl $7E078D : db $02 : dw $9222 ; DDB
    dl $7E079B : db $02 : dw $DAAE ; MDB
    dl $7E079F : db $02 : dw $0005 ; Region
    dl $7E07C3 : db $02 : dw $D414 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $EDBF ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2BA ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $7C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $01FD ; Health
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E0A1C : db $02 : dw $0012 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0039 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED820 : db $02 : dw $0FC1 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $6E09 ; Events, Items, Doors
    dl $7ED90C : db $02 : dw $0100 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0070 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_tourian_baby_skip:
    dw #preset_rbo_tourian_metroids ; Tourian: Metroids
    dl $7E078D : db $02 : dw $AA14 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $DC65 ; MDB
    dl $7E07F3 : db $02 : dw $0045 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0311 ; Health
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CA : db $02 : dw $0013 ; Supers
    dl $7E09CE : db $02 : dw $0019 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0AF6 : db $02 : dw $01C4 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED822 : db $02 : dw $002F ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $000F ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_tourian_zeb_skip:
    dw #preset_rbo_tourian_baby_skip ; Tourian: Baby Skip
    dl $7E078D : db $02 : dw $AAA4 ; DDB
    dl $7E079B : db $02 : dw $DDF3 ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $1FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0219 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E0AF6 : db $02 : dw $004C ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C4 : db $02 : dw $03AF ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_tourian_escape_room_3:
    dw #preset_rbo_tourian_zeb_skip ; Tourian: Zeb Skip
    dl $7E078D : db $02 : dw $AAEC ; DDB
    dl $7E079B : db $02 : dw $DE7A ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00C6 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1009 ; Beams
    dl $7E09C2 : db $02 : dw $0293 ; Health
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E09D6 : db $02 : dw $0064 ; Reserves
    dl $7E0A1C : db $02 : dw $0029 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0608 ; More position/state
    dl $7E0A76 : db $02 : dw $8000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $00DB ; Samus X
    dl $7E0AFA : db $02 : dw $0136 ; Samus Y
    dl $7ED820 : db $02 : dw $4FC5 ; Events, Items, Doors
    dl $7ED82C : db $02 : dw $0203 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rbo_tourian_escape_parlor:
    dw #preset_rbo_tourian_escape_room_3 ; Tourian: Escape Room 3
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
    dl $7E09C2 : db $02 : dw $01D6 ; Health
    dl $7E0A1C : db $02 : dw $0082 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0304 ; More position/state
    dl $7E0AF6 : db $02 : dw $019B ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED90C : db $02 : dw $FF00 ; Events, Items, Doors
    dw #$FFFF
.after
