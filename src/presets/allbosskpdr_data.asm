
preset_allbosskpdr_crateria_ceres_elevator:
    dw #$0000
    dl $7E078B : db $02 : dw $0000 ; Elevator Index
    dl $7E078D : db $02 : dw $AB58 ; DDB
    dl $7E079B : db $02 : dw $DF45 ; MDB
    dl $7E07F3 : db $02 : dw $002D ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
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
    dl $7ED820 : db $02 : dw $0000 ; Events
    dl $7ED822 : db $02 : dw $0000 ; Events
    dl $7ED828 : db $02 : dw $0000 ; Bosses
    dl $7ED82A : db $02 : dw $0000 ; Bosses
    dl $7ED82C : db $02 : dw $0000 ; Bosses
    dl $7ED82E : db $02 : dw $0000 ; Bosses
    dl $7ED870 : db $02 : dw $0000 ; Items
    dl $7ED872 : db $02 : dw $0000 ; Items
    dl $7ED874 : db $02 : dw $0000 ; Items
    dl $7ED876 : db $02 : dw $0000 ; Items
    dl $7ED878 : db $02 : dw $0000 ; Items
    dl $7ED87A : db $02 : dw $0000 ; Items
    dl $7ED87C : db $02 : dw $0000 ; Items
    dl $7ED87E : db $02 : dw $0000 ; Items
    dl $7ED880 : db $02 : dw $0000 ; Items
    dl $7ED882 : db $02 : dw $0000 ; Items
    dl $7ED8B0 : db $02 : dw $0000 ; Doors
    dl $7ED8B2 : db $02 : dw $0000 ; Doors
    dl $7ED8B4 : db $02 : dw $0000 ; Doors
    dl $7ED8B6 : db $02 : dw $0000 ; Doors
    dl $7ED8B8 : db $02 : dw $0000 ; Doors
    dl $7ED8BA : db $02 : dw $0000 ; Doors
    dl $7ED8BC : db $02 : dw $0000 ; Doors
    dl $7ED8BE : db $02 : dw $0000 ; Doors
    dl $7ED8C0 : db $02 : dw $0000 ; Doors
    dl $7ED8C2 : db $02 : dw $0000 ; Doors
    dl $7ED8C4 : db $02 : dw $0000 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_crateria_ceres_last_3_rooms:
    dw #preset_allbosskpdr_crateria_ceres_elevator ; Crateria: Ceres Elevator
    dl $7E078D : db $02 : dw $ABA0 ; DDB
    dl $7E079B : db $02 : dw $E021 ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $0900 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E093F : db $02 : dw $0002 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0018 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0047 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED82E : db $02 : dw $0001 ; Bosses
    dw #$FFFF
.after

preset_allbosskpdr_crateria_ship:
    dw #preset_allbosskpdr_crateria_ceres_last_3_rooms ; Crateria: Ceres Last 3 Rooms
    dl $7E078D : db $02 : dw $88FE ; DDB
    dl $7E079B : db $02 : dw $91F8 ; MDB
    dl $7E07F3 : db $02 : dw $0006 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $03D0 ; Screen Y position in pixels
    dl $7E093F : db $02 : dw $0000 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0481 ; Samus X
    dl $7E0AFA : db $02 : dw $0440 ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_crateria_pit_room:
    dw #preset_allbosskpdr_crateria_ship ; Crateria: Ship
    dl $7E078D : db $02 : dw $898E ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0800 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01DB ; Samus X
    dl $7E0AFA : db $02 : dw $088B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_crateria_morph:
    dw #preset_allbosskpdr_crateria_pit_room ; Crateria: Pit Room
    dl $7E078D : db $02 : dw $8B9E ; DDB
    dl $7E079B : db $02 : dw $9E9F ; MDB
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0580 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_crateria_pit_room_revisit:
    dw #preset_allbosskpdr_crateria_morph ; Crateria: Morph
    dl $7E078D : db $02 : dw $8EB6 ; DDB
    dl $7E079B : db $02 : dw $97B5 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $0004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $0004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09C8 : db $02 : dw $0005 ; Max missiles
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED872 : db $02 : dw $0400 ; Items
    dl $7ED874 : db $02 : dw $0004 ; Items
    dw #$FFFF
.after

preset_allbosskpdr_crateria_climb:
    dw #preset_allbosskpdr_crateria_pit_room_revisit ; Crateria: Pit Room Revisit
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0087 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0001 ; Events
    dw #$FFFF
.after

preset_allbosskpdr_crateria_parlor:
    dw #preset_allbosskpdr_crateria_climb ; Crateria: Climb
    dl $7E078D : db $02 : dw $8B7A ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $BC00 ; Screen subpixel Y position
    dl $7E0AF6 : db $02 : dw $01A0 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED8B2 : db $02 : dw $0400 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_crateria_bomb_torizo:
    dw #preset_allbosskpdr_crateria_parlor ; Crateria: Parlor
    dl $7E078D : db $02 : dw $8982 ; DDB
    dl $7E079B : db $02 : dw $9879 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02BC ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B2 : db $02 : dw $2400 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_crateria_terminator:
    dw #preset_allbosskpdr_crateria_bomb_torizo ; Crateria: Bomb Torizo
    dl $7E078D : db $02 : dw $8BB6 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E090F : db $02 : dw $0400 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F400 ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $1004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E0A1C : db $02 : dw $008A ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0115 ; Samus X
    dl $7E0B3F : db $02 : dw $0104 ; Blue suit
    dl $7ED828 : db $02 : dw $0004 ; Bosses
    dl $7ED870 : db $02 : dw $0080 ; Items
    dl $7ED8B2 : db $02 : dw $2C00 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_brinstar_green_brinstar_elevator:
    dw #preset_allbosskpdr_crateria_terminator ; Crateria: Terminator
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $67FF ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0095 ; Health
    dl $7E09C4 : db $02 : dw $00C7 ; Max health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $007F ; Samus X
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED870 : db $02 : dw $0180 ; Items
    dw #$FFFF
.after

preset_allbosskpdr_brinstar_dachora_room:
    dw #preset_allbosskpdr_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dl $7E078D : db $02 : dw $8D4E ; DDB
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $B001 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $061A ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $008B ; Health
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CC : db $02 : dw $0005 ; Max supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0054 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED872 : db $02 : dw $0401 ; Items
    dl $7ED8B4 : db $02 : dw $0006 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_brinstar_big_pink:
    dw #preset_allbosskpdr_brinstar_dachora_room ; Brinstar: Dachora Room
    dl $7E078D : db $02 : dw $8CE2 ; DDB
    dl $7E079B : db $02 : dw $9CB3 ; MDB
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0081 ; Health
    dl $7E0AF6 : db $02 : dw $06B2 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_brinstar_red_tower:
    dw #preset_allbosskpdr_brinstar_big_pink ; Brinstar: Big Pink
    dl $7E078D : db $02 : dw $8E92 ; DDB
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3400 ; Screen subpixel Y position
    dl $7E09A6 : db $02 : dw $1000 ; Beams
    dl $7E09A8 : db $02 : dw $1000 ; Beams
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09C8 : db $02 : dw $000A ; Max missiles
    dl $7E0AF6 : db $02 : dw $05D0 ; Samus X
    dl $7ED872 : db $02 : dw $04C1 ; Items
    dl $7ED8B4 : db $02 : dw $0206 ; Doors
    dl $7ED8B6 : db $02 : dw $0008 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_brinstar_entering_kraids_lair:
    dw #preset_allbosskpdr_brinstar_red_tower ; Brinstar: Red Tower
    dl $7E078D : db $02 : dw $A348 ; DDB
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $007D ; Health
    dl $7E09C6 : db $02 : dw $0004 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_brinstar_baby_kraid_entering:
    dw #preset_allbosskpdr_brinstar_entering_kraids_lair ; Brinstar: Entering Kraids Lair
    dl $7E078D : db $02 : dw $9156 ; DDB
    dl $7E079B : db $02 : dw $A4DA ; MDB
    dl $7E090F : db $02 : dw $C001 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0006 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $016E ; Samus X
    dw #$FFFF
.after

preset_allbosskpdr_brinstar_kraid:
    dw #preset_allbosskpdr_brinstar_baby_kraid_entering ; Brinstar: Baby Kraid (Entering)
    dl $7E078D : db $02 : dw $919E ; DDB
    dl $7E079B : db $02 : dw $A56B ; MDB
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0067 ; Health
    dl $7E09C6 : db $02 : dw $0004 ; Missiles
    dl $7E0A1C : db $02 : dw $0089 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1508 ; More position/state
    dl $7E0AF6 : db $02 : dw $01DB ; Samus X
    dl $7ED8B8 : db $02 : dw $0024 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_brinstar_baby_kraid_exiting:
    dw #preset_allbosskpdr_brinstar_kraid ; Brinstar: Kraid
    dl $7E078D : db $02 : dw $91CE ; DDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $57FF ; Screen subpixel Y position
    dl $7E09A2 : db $02 : dw $1005 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1005 ; Collected Items
    dl $7E09C2 : db $02 : dw $0053 ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0057 ; Samus X
    dl $7ED828 : db $02 : dw $0104 ; Bosses
    dl $7ED876 : db $02 : dw $0001 ; Items
    dl $7ED8B8 : db $02 : dw $00E4 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_business_center:
    dw #preset_allbosskpdr_brinstar_baby_kraid_exiting ; Brinstar: Baby Kraid (Exiting)
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0009 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dl $7ED8B8 : db $02 : dw $00EC ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_hi_jump_etank:
    dw #preset_allbosskpdr_upper_norfair_business_center ; Upper Norfair: Business Center
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0915 : db $02 : dw $051B ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003C ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED8B8 : db $02 : dw $20EC ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_leaving_hi_jump:
    dw #preset_allbosskpdr_upper_norfair_hi_jump_etank ; Upper Norfair: Hi Jump E-tank
    dl $7E078D : db $02 : dw $9426 ; DDB
    dl $7E079B : db $02 : dw $A9E5 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $1105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1105 ; Collected Items
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C4 : db $02 : dw $012B ; Max health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0047 ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED876 : db $02 : dw $0121 ; Items
    dl $7ED8BA : db $02 : dw $0001 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_precathedral:
    dw #preset_allbosskpdr_upper_norfair_leaving_hi_jump ; Upper Norfair: Leaving Hi Jump
    dl $7E078D : db $02 : dw $941A ; DDB
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02F2 ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09C8 : db $02 : dw $000F ; Max missiles
    dl $7E0AF6 : db $02 : dw $00AD ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED876 : db $02 : dw $01A1 ; Items
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_bubble_mountain:
    dw #preset_allbosskpdr_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dl $7E078D : db $02 : dw $929A ; DDB
    dl $7E079B : db $02 : dw $AFA3 ; MDB
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0106 ; Health
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E0AF6 : db $02 : dw $04B7 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B8 : db $02 : dw $26EC ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_single_chamber:
    dw #preset_allbosskpdr_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dl $7E078D : db $02 : dw $97AA ; DDB
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0103 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $3105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3105 ; Collected Items
    dl $7E09C2 : db $02 : dw $0126 ; Health
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $01B0 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0020 ; Events
    dl $7ED878 : db $02 : dw $0004 ; Items
    dl $7ED8BA : db $02 : dw $0031 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_double_chamber_revisit:
    dw #preset_allbosskpdr_upper_norfair_single_chamber ; Upper Norfair: Single Chamber
    dl $7E078D : db $02 : dw $961E ; DDB
    dl $7E079B : db $02 : dw $ADDE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1001 ; Beams
    dl $7E09A8 : db $02 : dw $1001 ; Beams
    dl $7E09C6 : db $02 : dw $0012 ; Missiles
    dl $7E09C8 : db $02 : dw $0014 ; Max missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00A9 ; Samus X
    dl $7E0AFA : db $02 : dw $007B ; Samus Y
    dl $7ED878 : db $02 : dw $001C ; Items
    dl $7ED8BA : db $02 : dw $00F1 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_bubble_mountain_revisit:
    dw #preset_allbosskpdr_upper_norfair_double_chamber_revisit ; Upper Norfair: Double Chamber Revisit
    dl $7E078D : db $02 : dw $9606 ; DDB
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001C ; Screen Y position in pixels
    dl $7E09C6 : db $02 : dw $0010 ; Missiles
    dl $7E0AF6 : db $02 : dw $008C ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_business_center_revisit:
    dw #preset_allbosskpdr_upper_norfair_bubble_mountain_revisit ; Upper Norfair: Bubble Mountain Revisit
    dl $7E078D : db $02 : dw $97DA ; DDB
    dl $7E079B : db $02 : dw $B167 ; MDB
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C6 : db $02 : dw $0013 ; Missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $003C ; Samus X
    dw #$FFFF
.after

preset_allbosskpdr_wrecked_ship_alpha_spark:
    dw #preset_allbosskpdr_upper_norfair_business_center_revisit ; Upper Norfair: Business Center Revisit
    dl $7E078D : db $02 : dw $92EE ; DDB
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E09C6 : db $02 : dw $0014 ; Missiles
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0086 ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_wrecked_ship_red_tower_2:
    dw #preset_allbosskpdr_wrecked_ship_alpha_spark ; Wrecked Ship: Alpha Spark
    dl $7E078D : db $02 : dw $910E ; DDB
    dl $7E079B : db $02 : dw $A3DD ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $3C01 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $7C00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0129 ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0A1C : db $02 : dw $008A ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_wrecked_ship_hellway:
    dw #preset_allbosskpdr_wrecked_ship_red_tower_2 ; Wrecked Ship: Red Tower
    dl $7E078D : db $02 : dw $90F6 ; DDB
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $DC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0016 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0098 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_wrecked_ship_leaving_power_bombs:
    dw #preset_allbosskpdr_wrecked_ship_hellway ; Wrecked Ship: Hellway
    dl $7E078D : db $02 : dw $9096 ; DDB
    dl $7E079B : db $02 : dw $A3AE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $011E ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E09D0 : db $02 : dw $0005 ; Max pbs
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $0157 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED874 : db $02 : dw $0104 ; Items
    dl $7ED8B6 : db $02 : dw $2008 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_wrecked_ship_crateria_elevator:
    dw #preset_allbosskpdr_wrecked_ship_leaving_power_bombs ; Wrecked Ship: Leaving Power Bombs
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8801 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0028 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0504 ; More position/state
    dl $7E0AF6 : db $02 : dw $006B ; Samus X
    dl $7E0AFA : db $02 : dw $0060 ; Samus Y
    dl $7ED8B2 : db $02 : dw $2C01 ; Doors
    dl $7ED8B6 : db $02 : dw $3008 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_wrecked_ship_entering_wrecked_ship:
    dw #preset_allbosskpdr_wrecked_ship_crateria_elevator ; Wrecked Ship: Crateria Elevator
    dl $7E078D : db $02 : dw $8AEA ; DDB
    dl $7E079B : db $02 : dw $93FE ; MDB
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $03FF ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0400 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0082 ; Health
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $07DB ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dl $7ED8B0 : db $02 : dw $7000 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_wrecked_ship_phantoon:
    dw #preset_allbosskpdr_wrecked_ship_entering_wrecked_ship ; Wrecked Ship: Entering Wrecked Ship
    dl $7E078D : db $02 : dw $A21C ; DDB
    dl $7E079B : db $02 : dw $CC6F ; MDB
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E0A1C : db $02 : dw $0089 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1508 ; More position/state
    dl $7E0AF6 : db $02 : dw $04DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C0 : db $02 : dw $0030 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_wrecked_ship_leaving_phantoon:
    dw #preset_allbosskpdr_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dl $7E078D : db $02 : dw $A2AC ; DDB
    dl $7E079B : db $02 : dw $CD13 ; MDB
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $00B9 ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AC ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED82A : db $02 : dw $0100 ; Bosses
    dl $7ED8C0 : db $02 : dw $0070 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_wrecked_ship_wrecked_ship_shaft:
    dw #preset_allbosskpdr_wrecked_ship_leaving_phantoon ; Wrecked Ship: Leaving Phantoon
    dl $7E078D : db $02 : dw $A210 ; DDB
    dl $7E079B : db $02 : dw $CDA8 ; MDB
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0C00 ; Screen subpixel Y position
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CC : db $02 : dw $000A ; Max supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C1 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED880 : db $02 : dw $0020 ; Items
    dl $7ED8C0 : db $02 : dw $0074 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_wrecked_ship_attic:
    dw #preset_allbosskpdr_wrecked_ship_wrecked_ship_shaft ; Wrecked Ship: Wrecked Ship Shaft
    dl $7E078D : db $02 : dw $A2E8 ; DDB
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E090F : db $02 : dw $8C00 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3000 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $04BD ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_wrecked_ship_bowling_spark:
    dw #preset_allbosskpdr_wrecked_ship_attic ; Wrecked Ship: Attic
    dl $7E078D : db $02 : dw $A1E0 ; DDB
    dl $7E079B : db $02 : dw $93FE ; MDB
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $6400 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0204 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00C5 ; Health
    dl $7E09C6 : db $02 : dw $0013 ; Missiles
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02BF ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C0 : db $02 : dw $0174 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_wrecked_ship_leaving_gravity:
    dw #preset_allbosskpdr_wrecked_ship_bowling_spark ; Wrecked Ship: Bowling Spark
    dl $7E078D : db $02 : dw $A1A4 ; DDB
    dl $7E079B : db $02 : dw $CE40 ; MDB
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $3125 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3125 ; Collected Items
    dl $7E09C2 : db $02 : dw $0071 ; Health
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED880 : db $02 : dw $00A0 ; Items
    dw #$FFFF
.after

preset_allbosskpdr_maridia_red_tower_elevator:
    dw #preset_allbosskpdr_wrecked_ship_leaving_gravity ; Wrecked Ship: Leaving Gravity
    dl $7E078D : db $02 : dw $8B02 ; DDB
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0099 ; Health
    dl $7E09C6 : db $02 : dw $0011 ; Missiles
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_maridia_breaking_tube:
    dw #preset_allbosskpdr_maridia_red_tower_elevator ; Maridia: Red Tower Elevator
    dl $7E078D : db $02 : dw $9102 ; DDB
    dl $7E079B : db $02 : dw $A408 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0090 ; Health
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01AD ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_maridia_mt_everest:
    dw #preset_allbosskpdr_maridia_breaking_tube ; Maridia: Breaking Tube
    dl $7E078D : db $02 : dw $A3B4 ; DDB
    dl $7E079B : db $02 : dw $D017 ; MDB
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0066 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0004 ; Screen Y position in pixels
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C8 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED820 : db $02 : dw $0801 ; Events
    dw #$FFFF
.after

preset_allbosskpdr_maridia_botwoon:
    dw #preset_allbosskpdr_maridia_mt_everest ; Maridia: Mt Everest
    dl $7E078D : db $02 : dw $A72C ; DDB
    dl $7E079B : db $02 : dw $D617 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001C ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $005D ; Health
    dl $7E09C6 : db $02 : dw $0013 ; Missiles
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $03B8 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C0 : db $02 : dw $8174 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_maridia_halfie:
    dw #preset_allbosskpdr_maridia_botwoon ; Maridia: Botwoon
    dl $7E078D : db $02 : dw $A918 ; DDB
    dl $7E079B : db $02 : dw $D7E4 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09C4 : db $02 : dw $018F ; Max health
    dl $7E09C6 : db $02 : dw $0010 ; Missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0AF6 : db $02 : dw $0082 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED82C : db $02 : dw $0002 ; Bosses
    dl $7ED882 : db $02 : dw $0100 ; Items
    dw #$FFFF
.after

preset_allbosskpdr_maridia_draygon:
    dw #preset_allbosskpdr_maridia_halfie ; Maridia: Halfie
    dl $7E078D : db $02 : dw $A7F8 ; DDB
    dl $7E079B : db $02 : dw $D78F ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $C800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0110 ; Health
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0036 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C2 : db $02 : dw $0C00 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_maridia_womple_jump:
    dw #preset_allbosskpdr_maridia_draygon ; Maridia: Draygon
    dl $7E078D : db $02 : dw $A96C ; DDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0001 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $3325 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3325 ; Collected Items
    dl $7E09C2 : db $02 : dw $00B3 ; Health
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A68 : db $02 : dw $0001 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0043 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED82C : db $02 : dw $0003 ; Bosses
    dl $7ED882 : db $02 : dw $0500 ; Items
    dl $7ED8C2 : db $02 : dw $CC00 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_maridia_cac_alley:
    dw #preset_allbosskpdr_maridia_womple_jump ; Maridia: Womple Jump
    dl $7E078D : db $02 : dw $A7E0 ; DDB
    dl $7E079B : db $02 : dw $D913 ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011A ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0043 ; Health
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0034 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8C2 : db $02 : dw $DC00 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_maridia_plasma_spark:
    dw #preset_allbosskpdr_maridia_cac_alley ; Maridia: Cac Alley
    dl $7E078D : db $02 : dw $A93C ; DDB
    dl $7E079B : db $02 : dw $D5EC ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $003E ; Health
    dl $7E09C6 : db $02 : dw $000B ; Missiles
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E0A1C : db $02 : dw $008A ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_maridia_plasma_beam:
    dw #preset_allbosskpdr_maridia_plasma_spark ; Maridia: Plasma Spark
    dl $7E078D : db $02 : dw $A5DC ; DDB
    dl $7E079B : db $02 : dw $D27E ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0052 ; Health
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0086 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C2 : db $02 : dw $DC08 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_maridia_plasma_spark_revisit:
    dw #preset_allbosskpdr_maridia_plasma_beam ; Maridia: Plasma Beam
    dl $7E078D : db $02 : dw $A540 ; DDB
    dl $7E079B : db $02 : dw $D387 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0319 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1009 ; Beams
    dl $7E09A8 : db $02 : dw $1009 ; Beams
    dl $7E09C2 : db $02 : dw $00AC ; Health
    dl $7E09C6 : db $02 : dw $0011 ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED880 : db $02 : dw $80A0 ; Items
    dl $7ED8C2 : db $02 : dw $DC0A ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_maridia_sewers:
    dw #preset_allbosskpdr_maridia_plasma_spark_revisit ; Maridia: Plasma Spark Revisit
    dl $7E078D : db $02 : dw $A600 ; DDB
    dl $7E079B : db $02 : dw $D48E ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $F400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00C5 ; Health
    dl $7E09C6 : db $02 : dw $0013 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED8C2 : db $02 : dw $DC1A ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_revisit_ice_beam_hallway:
    dw #preset_allbosskpdr_maridia_sewers ; Maridia: Sewers
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0324 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00F2 ; Health
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0AF6 : db $02 : dw $0036 ; Samus X
    dl $7E0AFA : db $02 : dw $0397 ; Samus Y
    dl $7ED8B8 : db $02 : dw $2EEC ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_revisit_ice_maze:
    dw #preset_allbosskpdr_upper_norfair_revisit_ice_beam_hallway ; Upper Norfair Revisit: Ice Beam Hallway
    dl $7E078D : db $02 : dw $931E ; DDB
    dl $7E079B : db $02 : dw $A75D ; MDB
    dl $7E090F : db $02 : dw $0881 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $C800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0031 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_revisit_ice_escape:
    dw #preset_allbosskpdr_upper_norfair_revisit_ice_maze ; Upper Norfair Revisit: Ice Maze
    dl $7E078D : db $02 : dw $935A ; DDB
    dl $7E079B : db $02 : dw $A8B9 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $100B ; Beams
    dl $7E09A8 : db $02 : dw $100B ; Beams
    dl $7E09C2 : db $02 : dw $00ED ; Health
    dl $7E09C6 : db $02 : dw $0014 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C8 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED876 : db $02 : dw $01A5 ; Items
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_revisit_crocomire_speedway:
    dw #preset_allbosskpdr_upper_norfair_revisit_ice_escape ; Upper Norfair Revisit: Ice Escape
    dl $7E078D : db $02 : dw $9336 ; DDB
    dl $7E079B : db $02 : dw $A8F8 ; MDB
    dl $7E090F : db $02 : dw $8601 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0089 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1508 ; More position/state
    dl $7E0AF6 : db $02 : dw $00DB ; Samus X
    dl $7E0AFA : db $02 : dw $03BB ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_revisit_crocomire:
    dw #preset_allbosskpdr_upper_norfair_revisit_crocomire_speedway ; Upper Norfair Revisit: Crocomire Speedway
    dl $7E078D : db $02 : dw $9396 ; DDB
    dl $7E079B : db $02 : dw $A923 ; MDB
    dl $7E090F : db $02 : dw $8300 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0C00 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0CB9 ; Samus X
    dl $7E0AFA : db $02 : dw $02AB ; Samus Y
    dl $7ED8B8 : db $02 : dw $6EEC ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_revisit_leaving_crocomire:
    dw #preset_allbosskpdr_upper_norfair_revisit_crocomire ; Upper Norfair Revisit: Crocomire
    dl $7E078D : db $02 : dw $93EA ; DDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0165 ; Health
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0CD0 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED82A : db $02 : dw $0102 ; Bosses
    dl $7ED8B8 : db $02 : dw $EEEC ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_upper_norfair_revisit_kronic_boost:
    dw #preset_allbosskpdr_upper_norfair_revisit_leaving_crocomire ; Upper Norfair Revisit: Leaving Crocomire
    dl $7E078D : db $02 : dw $9792 ; DDB
    dl $7E079B : db $02 : dw $AFFB ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $03D8 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_ln_main_hall:
    dw #preset_allbosskpdr_upper_norfair_revisit_kronic_boost ; Upper Norfair Revisit: Kronic Boost
    dl $7E078D : db $02 : dw $96F6 ; DDB
    dl $7E079B : db $02 : dw $B236 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0162 ; Health
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0026 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0E08 ; More position/state
    dl $7E0AF6 : db $02 : dw $0480 ; Samus X
    dl $7E0AFA : db $02 : dw $0289 ; Samus Y
    dl $7ED8BA : db $02 : dw $01F1 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_green_gate_glitch:
    dw #preset_allbosskpdr_lower_norfair_ln_main_hall ; Lower Norfair: LN Main Hall
    dl $7E078D : db $02 : dw $985E ; DDB
    dl $7E079B : db $02 : dw $B3A5 ; MDB
    dl $7E090F : db $02 : dw $8F00 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_golden_torizo:
    dw #preset_allbosskpdr_lower_norfair_green_gate_glitch ; Lower Norfair: Green Gate Glitch
    dl $7E078D : db $02 : dw $988E ; DDB
    dl $7E079B : db $02 : dw $B6C1 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0160 ; Health
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E0A1C : db $02 : dw $008A ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AFA : db $02 : dw $029B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_screw_attack_escape:
    dw #preset_allbosskpdr_lower_norfair_golden_torizo ; Lower Norfair: Golden Torizo
    dl $7E078D : db $02 : dw $9A86 ; DDB
    dl $7E079B : db $02 : dw $B283 ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $F000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $015B ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0027 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED82A : db $02 : dw $0106 ; Bosses
    dl $7ED8BA : db $02 : dw $03F1 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_worst_room_in_the_game:
    dw #preset_allbosskpdr_lower_norfair_screw_attack_escape ; Lower Norfair: Screw Attack Escape
    dl $7E078D : db $02 : dw $9912 ; DDB
    dl $7E079B : db $02 : dw $B457 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $A780 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09A2 : db $02 : dw $332D ; Equipped Items
    dl $7E09A4 : db $02 : dw $332D ; Collected Items
    dl $7E09C2 : db $02 : dw $0111 ; Health
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $03DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED878 : db $02 : dw $801C ; Items
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_kihunter_stairs:
    dw #preset_allbosskpdr_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room in the Game
    dl $7E078D : db $02 : dw $997E ; DDB
    dl $7E079B : db $02 : dw $B4E5 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $025E ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0026 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0125 ; Health
    dl $7E0AF6 : db $02 : dw $02BE ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_metal_pirates:
    dw #preset_allbosskpdr_lower_norfair_kihunter_stairs ; Lower Norfair: Kihunter Stairs
    dl $7E078D : db $02 : dw $99EA ; DDB
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021B ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0100 ; Health
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0165 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8BA : db $02 : dw $C3F1 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_ridley:
    dw #preset_allbosskpdr_lower_norfair_metal_pirates ; Lower Norfair: Metal Pirates
    dl $7E078D : db $02 : dw $995A ; DDB
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $016F ; Health
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED8BA : db $02 : dw $D3F1 ; Doors
    dl $7ED8BC : db $02 : dw $0001 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_leaving_ridley:
    dw #preset_allbosskpdr_lower_norfair_ridley ; Lower Norfair: Ridley
    dl $7E078D : db $02 : dw $98CA ; DDB
    dl $7E079B : db $02 : dw $B32E ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0188 ; Health
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0061 ; Samus X
    dl $7E0AFA : db $02 : dw $019B ; Samus Y
    dl $7ED82A : db $02 : dw $0107 ; Bosses
    dl $7ED8BA : db $02 : dw $DFF1 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_wasteland_revisit:
    dw #preset_allbosskpdr_lower_norfair_leaving_ridley ; Lower Norfair: Leaving Ridley
    dl $7E078D : db $02 : dw $9966 ; DDB
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $BC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0166 ; Health
    dl $7E0A1C : db $02 : dw $0089 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1508 ; More position/state
    dl $7E0AF6 : db $02 : dw $02DB ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_fire_flea_room:
    dw #preset_allbosskpdr_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dl $7E078D : db $02 : dw $9A26 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $0001 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $012D ; Health
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00BD ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_three_musketeers:
    dw #preset_allbosskpdr_lower_norfair_fire_flea_room ; Lower Norfair: Fire Flea Room
    dl $7E078D : db $02 : dw $9A92 ; DDB
    dl $7E079B : db $02 : dw $B510 ; MDB
    dl $7E090F : db $02 : dw $3D00 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0006 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0123 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0053 ; Samus X
    dw #$FFFF
.after

preset_allbosskpdr_lower_norfair_bubble_mountain_rerevisit:
    dw #preset_allbosskpdr_lower_norfair_three_musketeers ; Lower Norfair: Three Musketeers
    dl $7E078D : db $02 : dw $9A4A ; DDB
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0017 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0112 ; Health
    dl $7E0AF6 : db $02 : dw $0088 ; Samus X
    dw #$FFFF
.after

preset_allbosskpdr_spore_spawn_maridia_passthrough:
    dw #preset_allbosskpdr_lower_norfair_bubble_mountain_rerevisit ; Lower Norfair: Bubble Mountain ReRevisit
    dl $7E078D : db $02 : dw $92EE ; DDB
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $0117 ; Health
    dl $7E09C6 : db $02 : dw $0013 ; Missiles
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0086 ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_spore_spawn_red_tower_3:
    dw #preset_allbosskpdr_spore_spawn_maridia_passthrough ; Spore Spawn: Maridia Passthrough
    dl $7E078D : db $02 : dw $910E ; DDB
    dl $7E079B : db $02 : dw $A3DD ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0A1C : db $02 : dw $008A ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_spore_spawn_lower_green_brinstar:
    dw #preset_allbosskpdr_spore_spawn_red_tower_3 ; Spore Spawn: Red Tower
    dl $7E078D : db $02 : dw $90F6 ; DDB
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $03F9 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003A ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_spore_spawn_big_pink_up:
    dw #preset_allbosskpdr_spore_spawn_lower_green_brinstar ; Spore Spawn: Lower Green Brinstar
    dl $7E078D : db $02 : dw $8EFE ; DDB
    dl $7E079B : db $02 : dw $9E52 ; MDB
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $F400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001C ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0040 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_spore_spawn_spore_spawn_2:
    dw #preset_allbosskpdr_spore_spawn_big_pink_up ; Spore Spawn: Big Pink Up
    dl $7E078D : db $02 : dw $8DC6 ; DDB
    dl $7E079B : db $02 : dw $9D9C ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0382 ; Samus X
    dl $7E0AFA : db $02 : dw $007B ; Samus Y
    dl $7ED8B4 : db $02 : dw $2606 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_spore_spawn_big_pink_down:
    dw #preset_allbosskpdr_spore_spawn_spore_spawn_2 ; Spore Spawn: Spore Spawn
    dl $7E078D : db $02 : dw $8E56 ; DDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $010B ; Health
    dl $7E09C6 : db $02 : dw $0014 ; Missiles
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0038 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED828 : db $02 : dw $0304 ; Bosses
    dl $7ED8B4 : db $02 : dw $7606 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_spore_spawn_dachora_room_revisit:
    dw #preset_allbosskpdr_spore_spawn_big_pink_down ; Spore Spawn: Big Pink Down
    dl $7E078D : db $02 : dw $8E32 ; DDB
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021D ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0234 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_spore_spawn_crateria_2:
    dw #preset_allbosskpdr_spore_spawn_dachora_room_revisit ; Spore Spawn: Dachora Room Revisit
    dl $7E078D : db $02 : dw $8CA6 ; DDB
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dw #$FFFF
.after

preset_allbosskpdr_tourian_metroids_1:
    dw #preset_allbosskpdr_spore_spawn_crateria_2 ; Spore Spawn: Crateria
    dl $7E078D : db $02 : dw $9222 ; DDB
    dl $7E079B : db $02 : dw $DAAE ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4001 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $87FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003D ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED820 : db $02 : dw $0FC1 ; Events
    dl $7ED8B2 : db $02 : dw $6C01 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_tourian_metroids_2:
    dw #preset_allbosskpdr_tourian_metroids_1 ; Tourian: Metroids 1
    dl $7E078D : db $02 : dw $A984 ; DDB
    dl $7E079B : db $02 : dw $DAE1 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $9800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0AF6 : db $02 : dw $0043 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED822 : db $02 : dw $0021 ; Events
    dl $7ED8C4 : db $02 : dw $0001 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_tourian_metroids_3:
    dw #preset_allbosskpdr_tourian_metroids_2 ; Tourian: Metroids 2
    dl $7E078D : db $02 : dw $A9B4 ; DDB
    dl $7E079B : db $02 : dw $DB31 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $5800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0115 ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C8 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0023 ; Events
    dl $7ED8C4 : db $02 : dw $0003 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_tourian_metroids_4:
    dw #preset_allbosskpdr_tourian_metroids_3 ; Tourian: Metroids 3
    dl $7E078D : db $02 : dw $A9E4 ; DDB
    dl $7E079B : db $02 : dw $DBCD ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E0AF6 : db $02 : dw $0066 ; Samus X
    dl $7E0AFA : db $02 : dw $01CB ; Samus Y
    dl $7ED822 : db $02 : dw $002F ; Events
    dl $7ED8C4 : db $02 : dw $0007 ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_tourian_baby_skip:
    dw #preset_allbosskpdr_tourian_metroids_4 ; Tourian: Metroids 4
    dl $7E078D : db $02 : dw $AA14 ; DDB
    dl $7E079B : db $02 : dw $DC65 ; MDB
    dl $7E07F3 : db $02 : dw $0045 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $6FFF ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01D5 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8C4 : db $02 : dw $000F ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_tourian_zeb_skip:
    dw #preset_allbosskpdr_tourian_baby_skip ; Tourian: Baby Skip
    dl $7E078D : db $02 : dw $AAA4 ; DDB
    dl $7E079B : db $02 : dw $DDF3 ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021A ; Screen Y position in pixels
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0AF6 : db $02 : dw $0037 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C4 : db $02 : dw $03AF ; Doors
    dw #$FFFF
.after

preset_allbosskpdr_tourian_escape_room_3:
    dw #preset_allbosskpdr_tourian_zeb_skip ; Tourian: Zeb Skip
    dl $7E078D : db $02 : dw $AAEC ; DDB
    dl $7E079B : db $02 : dw $DE7A ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E09A6 : db $02 : dw $1009 ; Beams
    dl $7E09C2 : db $02 : dw $017B ; Health
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0A76 : db $02 : dw $8000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $00DF ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED820 : db $02 : dw $4FC5 ; Events
    dl $7ED82C : db $02 : dw $0203 ; Bosses
    dw #$FFFF
.after

preset_allbosskpdr_tourian_escape_parlor:
    dw #preset_allbosskpdr_tourian_escape_room_3 ; Tourian: Escape Room 3
    dl $7E078D : db $02 : dw $AB34 ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A401 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E09C2 : db $02 : dw $00CB ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $019C ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after
