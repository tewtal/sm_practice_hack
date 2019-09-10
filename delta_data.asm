delta_ceres_elevator:
    print "ceres_elevator ", pc
    dw #$0000
    dl $7E078D : db $02 : dw $AB58 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $DF45 ; MDB
    dl $7E0911 : db $02 : dw $0000 ; Camera X
    dl $7E0915 : db $02 : dw $0000 ; Camera Y
    dl $7E09A2 : db $02 : dw $0000 ; Items
    dl $7E09A4 : db $02 : dw $0000 ; Items
    dl $7E09A6 : db $02 : dw $0000 ; Beams
    dl $7E09A8 : db $02 : dw $0000 ; Beams
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
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0A76 : db $02 : dw $0000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0048 ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED800 : db $02 : dw $0001 ; Events, Doors, Items, Bosses
    dl $7ED802 : db $02 : dw $0001 ; Events, Doors, Items, Bosses
    dl $7ED804 : db $02 : dw $0001 ; Events, Doors, Items, Bosses
    dl $7ED806 : db $02 : dw $0001 ; Events, Doors, Items, Bosses
    dl $7ED808 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED80A : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED80C : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED80E : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED810 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED812 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED814 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED816 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED818 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED81A : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED81C : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED81E : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED820 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED822 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED824 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED826 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED828 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED82A : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED82C : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED82E : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED830 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED832 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED834 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED836 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED838 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED83A : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED83C : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED83E : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED840 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED842 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED844 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED846 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED848 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED84A : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED84C : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED84E : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED850 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED852 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED854 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED856 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED858 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED85A : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED85C : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED85E : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED860 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED862 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED864 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED866 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED868 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED86A : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED86C : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED86E : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED870 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED872 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED874 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED876 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED878 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED87A : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED87C : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED87E : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED880 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED882 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED884 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED886 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED888 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED88A : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED88C : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED88E : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED890 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED892 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED894 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED896 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED898 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED89A : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED89C : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED89E : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8A0 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8A2 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8A4 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8A6 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8A8 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8AA : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8AC : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8AE : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8B0 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8B2 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8B4 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8B6 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8B8 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8BA : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8BC : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8BE : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8C0 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8C2 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8C4 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8C6 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8C8 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8CA : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8CC : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8CE : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8D0 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8D2 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8D4 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8D6 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8D8 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8DA : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8DC : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8DE : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8E0 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8E2 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8E4 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8E6 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8E8 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8EA : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8EC : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8EE : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8F0 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8F2 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8F4 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8F6 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8F8 : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8FA : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8FC : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dl $7ED8FE : db $02 : dw $0000 ; Events, Doors, Items, Bosses
    dw #$FFFF
.after

delta_ceres_ridley:
    print "ceres_ridley ", pc
    dw #delta_ceres_elevator ; Ceres: Elevator
    dl $7E078D : db $02 : dw $AB94 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $E06B ; MDB
    dl $7E0911 : db $02 : dw $0100 ; Camera X
    dl $7E0AF6 : db $02 : dw $01BE ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

delta_ceres_last_3_screens:
    print "ceres_last_3_screens ", pc
    dw #delta_ceres_ridley ; Ceres: Ridley
    dl $7E078D : db $02 : dw $ABA0 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $E021 ; MDB
    dl $7E0911 : db $02 : dw $0000 ; Camera X
    dl $7E09C2 : db $02 : dw $0018 ; Health
    dl $7E0AF6 : db $02 : dw $004F ; Samus X
    dl $7E0AFA : db $02 : dw $00A3 ; Samus Y
    dl $7ED82E : db $02 : dw $0001 ; Events, Doors, Items, Bosses
    dw #$FFFF
.after

delta_bombs_ship:
    dw #delta_ceres_last_3_screens ; Ceres: Last 3 screens
    dl $7E078D : db $02 : dw $88FE ; DDB
    dl $7E079B : db $02 : dw $91F8 ; MDB
    dl $7E0911 : db $02 : dw $0400 ; Camera X
    dl $7E0915 : db $02 : dw $03D0 ; Camera Y
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E0AF6 : db $02 : dw $0481 ; Samus X
    dl $7E0AFA : db $02 : dw $0440 ; Samus Y
    dl $7ED8F8 : db $02 : dw $0001 ; Events, Doors, Items, Bosses
    dw #$FFFF
.after

delta_bombs_morph:
    dw #delta_bombs_ship ; Bombs: Ship
    dl $7E078D : db $02 : dw $8B9E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E9F ; MDB
    dl $7E0911 : db $02 : dw $0500 ; Camera X
    dl $7E0915 : db $02 : dw $0200 ; Camera Y
    dl $7E0AF6 : db $02 : dw $0580 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dw #$FFFF
.after

delta_bombs_pit_backtrack:
    dw #delta_bombs_morph ; Bombs: Morph
    dl $7E078D : db $02 : dw $8EB6 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $97B5 ; MDB
    dl $7E0911 : db $02 : dw $0000 ; Camera X
    dl $7E0915 : db $02 : dw $0000 ; Camera Y
    dl $7E09A2 : db $02 : dw $0004 ; Items
    dl $7E09A4 : db $02 : dw $0004 ; Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09C8 : db $02 : dw $0005 ; Max missiles
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED872 : db $02 : dw $0400 ; Events, Doors, Items, Bosses
    dl $7ED874 : db $02 : dw $0004 ; Events, Doors, Items, Bosses
    dw #$FFFF
.after

delta_bombs_climb:
    dw #delta_bombs_pit_backtrack ; Bombs: Pit backtrack
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E0AF6 : db $02 : dw $0032 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0001 ; Events, Doors, Items, Bosses
    dl $7ED8B2 : db $02 : dw $0400 ; Events, Doors, Items, Bosses
    dw #$FFFF
.after

delta_bombs_parlor:
    dw #delta_bombs_climb ; Bombs: Climb
    dl $7E078D : db $02 : dw $8B7A ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E0911 : db $02 : dw $0100 ; Camera X
    dl $7E0AF6 : db $02 : dw $019F ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

delta_bombs_bomb_torizo:
    dw #delta_bombs_parlor ; Bombs: Parlor
    dl $7E078D : db $02 : dw $8982 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $9879 ; MDB
    dl $7E0911 : db $02 : dw $0200 ; Camera X
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0AF6 : db $02 : dw $02D2 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B2 : db $02 : dw $2400 ; Events, Doors, Items, Bosses
    dw #$FFFF
.after
