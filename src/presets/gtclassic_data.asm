
preset_gtclassic_crateria_ceres_elevator:
    dw #$0000
    dl $7E078B : db $02 : dw $0000 ; Elevator Index
    dl $7E078D : db $02 : dw $88FE ; DDB
    dl $7E079B : db $02 : dw $DF45 ; MDB
    dl $7E07F3 : db $02 : dw $002D ; Music Bank
    dl $7E07F5 : db $02 : dw $0000 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
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
    dl $7E0AFA : db $02 : dw $0000 ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED820 : db $02 : dw $0000 ; Events
    dl $7ED822 : db $02 : dw $0000 ; Events
    dl $7ED828 : db $02 : dw $0000 ; Bosses
    dl $7ED82A : db $02 : dw $0000 ; Bosses
    dl $7ED82C : db $02 : dw $0000 ; Bosses
    dl $7ED82E : db $02 : dw $0001 ; Bosses
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

preset_gtclassic_crateria_ceres_last_3_rooms:
    dw #preset_gtclassic_crateria_ceres_elevator ; Crateria: Ceres Elevator
    dl $7E078D : db $02 : dw $ABA0 ; DDB
    dl $7E079B : db $02 : dw $E021 ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $D400 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $BC00 ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E093F : db $02 : dw $0002 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0018 ; Health
    dl $7E0A1C : db $02 : dw $0006 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0043 ; Samus X
    dl $7E0AFA : db $02 : dw $0097 ; Samus Y
    dl $7ED82E : db $02 : dw $0001 ; Bosses
    dw #$FFFF
.after

preset_gtclassic_crateria_ship:
    dw #preset_gtclassic_crateria_ceres_last_3_rooms ; Crateria: Ceres Last 3 Rooms
    dl $7E078D : db $02 : dw $88FE ; DDB
    dl $7E079B : db $02 : dw $91F8 ; MDB
    dl $7E07F3 : db $02 : dw $0006 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $03D0 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0200 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0200 ; BG2 X offset
    dl $7E093F : db $02 : dw $0000 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0481 ; Samus X
    dl $7E0AFA : db $02 : dw $0440 ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_crateria_parlor:
    dw #preset_gtclassic_crateria_ship ; Crateria: Ship
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0400 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0079 ; Samus X
    dl $7E0AFA : db $02 : dw $049B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_crateria_parlor_downback:
    dw #preset_gtclassic_crateria_parlor ; Crateria: Parlor
    dl $7E078D : db $02 : dw $8916 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02E9 ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01A7 ; Samus X
    dl $7E0AFA : db $02 : dw $035B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_crateria_climb_down:
    dw #preset_gtclassic_crateria_parlor_downback ; Crateria: Parlor Downback
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $041F ; Screen Y position in pixels
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01A8 ; Samus X
    dl $7E0AFA : db $02 : dw $04BB ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_crateria_pit_room:
    dw #preset_gtclassic_crateria_climb_down ; Crateria: Climb Down
    dl $7E078D : db $02 : dw $898E ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E090F : db $02 : dw $6FFF ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0800 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0600 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01DB ; Samus X
    dl $7E0AFA : db $02 : dw $088B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_crateria_morph:
    dw #preset_gtclassic_crateria_pit_room ; Crateria: Pit Room
    dl $7E078D : db $02 : dw $8B9E ; DDB
    dl $7E079B : db $02 : dw $9E9F ; MDB
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X offset
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0580 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_crateria_construction_zone_down:
    dw #preset_gtclassic_crateria_morph ; Crateria: Morph
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0540 ; Layer 2 X position
    dl $7E09A2 : db $02 : dw $0004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $0004 ; Collected Items
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $07AC ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED872 : db $02 : dw $0400 ; Items
    dw #$FFFF
.after

preset_gtclassic_crateria_construction_zone_up:
    dw #preset_gtclassic_crateria_construction_zone_down ; Crateria: Construction Zone Down
    dl $7E078D : db $02 : dw $8EDA ; DDB
    dl $7E079B : db $02 : dw $A107 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09C8 : db $02 : dw $0005 ; Max missiles
    dl $7E0AF6 : db $02 : dw $0055 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED874 : db $02 : dw $0004 ; Items
    dw #$FFFF
.after

preset_gtclassic_crateria_pit_room_revisit:
    dw #preset_gtclassic_crateria_construction_zone_up ; Crateria: Construction Zone Up
    dl $7E078D : db $02 : dw $8EB6 ; DDB
    dl $7E079B : db $02 : dw $97B5 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_crateria_climb_up:
    dw #preset_gtclassic_crateria_pit_room_revisit ; Crateria: Pit Room Revisit
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0083 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0001 ; Events
    dl $7ED8B2 : db $02 : dw $0400 ; Doors
    dw #$FFFF
.after

preset_gtclassic_crateria_parlor_revisit:
    dw #preset_gtclassic_crateria_climb_up ; Crateria: Climb Up
    dl $7E078D : db $02 : dw $8B7A ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $01A0 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_crateria_flyway:
    dw #preset_gtclassic_crateria_parlor_revisit ; Crateria: Parlor Revisit
    dl $7E078D : db $02 : dw $8B3E ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2BFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01E6 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $016C ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0369 ; Samus X
    dl $7E0AFA : db $02 : dw $026B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_crateria_bomb_torizo:
    dw #preset_gtclassic_crateria_flyway ; Crateria: Flyway
    dl $7E078D : db $02 : dw $8982 ; DDB
    dl $7E079B : db $02 : dw $9879 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0AF6 : db $02 : dw $02BE ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B2 : db $02 : dw $2400 ; Doors
    dw #$FFFF
.after

preset_gtclassic_crateria_alcatraz:
    dw #preset_gtclassic_crateria_bomb_torizo ; Crateria: Bomb Torizo
    dl $7E078D : db $02 : dw $8BAA ; DDB
    dl $7E090F : db $02 : dw $2001 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X offset
    dl $7E09A2 : db $02 : dw $1004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0040 ; Samus X
    dl $7ED828 : db $02 : dw $0004 ; Bosses
    dl $7ED870 : db $02 : dw $0080 ; Items
    dl $7ED8B2 : db $02 : dw $2C00 ; Doors
    dw #$FFFF
.after

preset_gtclassic_crateria_terminator:
    dw #preset_gtclassic_crateria_alcatraz ; Crateria: Alcatraz
    dl $7E078D : db $02 : dw $8BB6 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E090F : db $02 : dw $F400 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $0115 ; Samus X
    dl $7E0B3F : db $02 : dw $0104 ; Blue suit
    dw #$FFFF
.after

preset_gtclassic_crateria_green_pirate_shaft:
    dw #preset_gtclassic_crateria_terminator ; Crateria: Terminator
    dl $7E078D : db $02 : dw $895E ; DDB
    dl $7E079B : db $02 : dw $990D ; MDB
    dl $7E090F : db $02 : dw $9F00 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01FC ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $017D ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C4 : db $02 : dw $00C7 ; Max health
    dl $7E0AF6 : db $02 : dw $0063 ; Samus X
    dl $7E0AFA : db $02 : dw $029B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED870 : db $02 : dw $0180 ; Items
    dw #$FFFF
.after

preset_gtclassic_brinstar_green_brinstar_elevator:
    dw #preset_gtclassic_crateria_green_pirate_shaft ; Crateria: Green Pirate Shaft
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $1C80 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $C400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $008F ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_brinstar_early_supers:
    dw #preset_gtclassic_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dl $7E078D : db $02 : dw $8C0A ; DDB
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $041C ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0315 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00A1 ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dl $7ED8B4 : db $02 : dw $0002 ; Doors
    dw #$FFFF
.after

preset_gtclassic_brinstar_dachora_room:
    dw #preset_gtclassic_brinstar_early_supers ; Brinstar: Early Supers
    dl $7E078D : db $02 : dw $8D4E ; DDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position
    dl $7E0915 : db $02 : dw $051F ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $03D7 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00BD ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CC : db $02 : dw $0005 ; Max supers
    dl $7E0A1C : db $02 : dw $0019 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0308 ; More position/state
    dl $7E0AF6 : db $02 : dw $0052 ; Samus X
    dl $7E0AFA : db $02 : dw $058F ; Samus Y
    dl $7ED872 : db $02 : dw $0401 ; Items
    dw #$FFFF
.after

preset_gtclassic_brinstar_big_pink:
    dw #preset_gtclassic_brinstar_dachora_room ; Brinstar: Dachora Room
    dl $7E078D : db $02 : dw $8CE2 ; DDB
    dl $7E079B : db $02 : dw $9CB3 ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $05F4 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0477 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00B3 ; Health
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0692 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B4 : db $02 : dw $0006 ; Doors
    dw #$FFFF
.after

preset_gtclassic_brinstar_green_hill_zone:
    dw #preset_gtclassic_brinstar_big_pink ; Brinstar: Big Pink
    dl $7E078D : db $02 : dw $8DAE ; DDB
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0600 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0480 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $0369 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED8B4 : db $02 : dw $0206 ; Doors
    dw #$FFFF
.after

preset_gtclassic_brinstar_noob_bridge:
    dw #preset_gtclassic_brinstar_green_hill_zone ; Brinstar: Green Hill Zone
    dl $7E078D : db $02 : dw $8DEA ; DDB
    dl $7E079B : db $02 : dw $9E52 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0668 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $04CE ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0240 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C6 : db $02 : dw $0003 ; Missiles
    dl $7E0AF6 : db $02 : dw $06C8 ; Samus X
    dl $7E0AFA : db $02 : dw $03AB ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_brinstar_red_tower:
    dw #preset_gtclassic_brinstar_noob_bridge ; Brinstar: Noob Bridge
    dl $7E078D : db $02 : dw $8E92 ; DDB
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E09C6 : db $02 : dw $0001 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $05BC ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B6 : db $02 : dw $0008 ; Doors
    dw #$FFFF
.after

preset_gtclassic_brinstar_hellway:
    dw #preset_gtclassic_brinstar_red_tower ; Brinstar: Red Tower
    dl $7E078D : db $02 : dw $8F0A ; DDB
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $00A1 ; Samus X
    dw #$FFFF
.after

preset_gtclassic_brinstar_caterpillars_down:
    dw #preset_gtclassic_brinstar_hellway ; Brinstar: Hellway
    dl $7E078D : db $02 : dw $901E ; DDB
    dl $7E079B : db $02 : dw $A2F7 ; MDB
    dl $7E0911 : db $02 : dw $01F9 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C3FF ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $017A ; Layer 2 X position
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00A7 ; Health
    dl $7E09C6 : db $02 : dw $0003 ; Missiles
    dl $7E0AF6 : db $02 : dw $0299 ; Samus X
    dw #$FFFF
.after

preset_gtclassic_brinstar_alpha_power_bombs:
    dw #preset_gtclassic_brinstar_caterpillars_down ; Brinstar: Caterpillars Down
    dl $7E078D : db $02 : dw $908A ; DDB
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E090F : db $02 : dw $0003 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $87FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0717 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0717 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y offset
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0042 ; Samus X
    dl $7E0AFA : db $02 : dw $078B ; Samus Y
    dl $7ED8B6 : db $02 : dw $2008 ; Doors
    dw #$FFFF
.after

preset_gtclassic_brinstar_caterpillars_up:
    dw #preset_gtclassic_brinstar_alpha_power_bombs ; Brinstar: Alpha Power Bombs
    dl $7E078D : db $02 : dw $9096 ; DDB
    dl $7E079B : db $02 : dw $A3AE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CFFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0093 ; Health
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E09D0 : db $02 : dw $0005 ; Max pbs
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02B1 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED874 : db $02 : dw $0104 ; Items
    dw #$FFFF
.after

preset_gtclassic_brinstar_reverse_hellway:
    dw #preset_gtclassic_brinstar_caterpillars_up ; Brinstar: Caterpillars Up
    dl $7E078D : db $02 : dw $90EA ; DDB
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $1001 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0500 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0500 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $F900 ; BG2 Y offset
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $004C ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED8B6 : db $02 : dw $3008 ; Doors
    dw #$FFFF
.after

preset_gtclassic_brinstar_red_tower_down:
    dw #preset_gtclassic_brinstar_reverse_hellway ; Brinstar: Reverse Hellway
    dl $7E078D : db $02 : dw $90AE ; DDB
    dl $7E079B : db $02 : dw $A2F7 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0073 ; Health
    dl $7E0AF6 : db $02 : dw $002D ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_brinstar_skree_boost:
    dw #preset_gtclassic_brinstar_red_tower_down ; Brinstar: Red Tower Down
    dl $7E078D : db $02 : dw $907E ; DDB
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E090F : db $02 : dw $DFFF ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $091A ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $06D3 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $005C ; Samus X
    dl $7E0AFA : db $02 : dw $098B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_brinstar_below_spazer:
    dw #preset_gtclassic_brinstar_skree_boost ; Brinstar: Skree Boost
    dl $7E078D : db $02 : dw $9042 ; DDB
    dl $7E079B : db $02 : dw $A3DD ; MDB
    dl $7E090F : db $02 : dw $6FFF ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $006F ; Health
    dl $7E0AF6 : db $02 : dw $01DC ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_brinstar_breaking_tube:
    dw #preset_gtclassic_brinstar_below_spazer ; Brinstar: Below Spazer
    dl $7E078D : db $02 : dw $9102 ; DDB
    dl $7E079B : db $02 : dw $A408 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $00C0 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $01B7 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_kraid_entering_kraids_lair:
    dw #preset_gtclassic_brinstar_breaking_tube ; Brinstar: Breaking Tube
    dl $7E078D : db $02 : dw $A348 ; DDB
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y position
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7ED820 : db $02 : dw $0801 ; Events
    dw #$FFFF
.after

preset_gtclassic_kraid_kraid_kihunters:
    dw #preset_gtclassic_kraid_entering_kraids_lair ; Kraid: Entering Kraid's Lair
    dl $7E078D : db $02 : dw $923A ; DDB
    dl $7E079B : db $02 : dw $A471 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $83FF ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $0167 ; Samus X
    dw #$FFFF
.after

preset_gtclassic_kraid_mini_kraid:
    dw #preset_gtclassic_kraid_kraid_kihunters ; Kraid: Kraid Kihunters
    dl $7E078D : db $02 : dw $9156 ; DDB
    dl $7E079B : db $02 : dw $A4DA ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $27FF ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $005B ; Health
    dl $7E0AF6 : db $02 : dw $016B ; Samus X
    dw #$FFFF
.after

preset_gtclassic_kraid_kraid_2:
    dw #preset_gtclassic_kraid_mini_kraid ; Kraid: Mini Kraid
    dl $7E078D : db $02 : dw $919E ; DDB
    dl $7E079B : db $02 : dw $A56B ; MDB
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $0031 ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0AF6 : db $02 : dw $01BE ; Samus X
    dl $7ED8B8 : db $02 : dw $0024 ; Doors
    dw #$FFFF
.after

preset_gtclassic_kraid_leaving_varia:
    dw #preset_gtclassic_kraid_kraid_2 ; Kraid: Kraid
    dl $7E078D : db $02 : dw $91DA ; DDB
    dl $7E079B : db $02 : dw $A6E2 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09A2 : db $02 : dw $1005 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1005 ; Collected Items
    dl $7E09C2 : db $02 : dw $0062 ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED828 : db $02 : dw $0104 ; Bosses
    dl $7ED876 : db $02 : dw $0001 ; Items
    dl $7ED8B8 : db $02 : dw $0064 ; Doors
    dw #$FFFF
.after

preset_gtclassic_kraid_mini_kraid_revisit:
    dw #preset_gtclassic_kraid_leaving_varia ; Kraid: Leaving Varia
    dl $7E078D : db $02 : dw $91CE ; DDB
    dl $7E079B : db $02 : dw $A56B ; MDB
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $005A ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $005B ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8B8 : db $02 : dw $00E4 ; Doors
    dw #$FFFF
.after

preset_gtclassic_kraid_kraid_kihunters_revisit:
    dw #preset_gtclassic_kraid_mini_kraid_revisit ; Kraid: Mini Kraid Revisit
    dl $7E078D : db $02 : dw $91AA ; DDB
    dl $7E079B : db $02 : dw $A521 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $00F5 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00B7 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0064 ; Health
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0AF6 : db $02 : dw $0166 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8B8 : db $02 : dw $00EC ; Doors
    dw #$FFFF
.after

preset_gtclassic_kraid_kraid_etank:
    dw #preset_gtclassic_kraid_kraid_kihunters_revisit ; Kraid: Kraid Kihunters Revisit
    dl $7E078D : db $02 : dw $916E ; DDB
    dl $7E079B : db $02 : dw $A471 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $5001 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FFE0 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $005B ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8B8 : db $02 : dw $00ED ; Doors
    dw #$FFFF
.after

preset_gtclassic_kraid_leaving_kraids_lair:
    dw #preset_gtclassic_kraid_kraid_etank ; Kraid: Kraid E-tank
    dl $7E078D : db $02 : dw $9162 ; DDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $F000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001D ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $001D ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C4 : db $02 : dw $012B ; Max health
    dl $7E09C6 : db $02 : dw $0004 ; Missiles
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED874 : db $02 : dw $0904 ; Items
    dl $7ED8B8 : db $02 : dw $00EF ; Doors
    dw #$FFFF
.after

preset_gtclassic_bootless_upper_norfair_business_center:
    dw #preset_gtclassic_kraid_leaving_kraids_lair ; Kraid: Leaving Kraids Lair
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $01AA ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_bootless_upper_norfair_cathedral:
    dw #preset_gtclassic_bootless_upper_norfair_business_center ; Bootless Upper Norfair: Business Center
    dl $7E078D : db $02 : dw $92CA ; DDB
    dl $7E079B : db $02 : dw $A7B3 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0006 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0200 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0006 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02AD ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B8 : db $02 : dw $04EF ; Doors
    dw #$FFFF
.after

preset_gtclassic_bootless_upper_norfair_rising_tide:
    dw #preset_gtclassic_bootless_upper_norfair_cathedral ; Bootless Upper Norfair: Cathedral
    dl $7E078D : db $02 : dw $92B2 ; DDB
    dl $7E079B : db $02 : dw $A788 ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $2000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y position
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0AF6 : db $02 : dw $02AE ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8B8 : db $02 : dw $06EF ; Doors
    dw #$FFFF
.after

preset_gtclassic_bootless_upper_norfair_bubble_mountain:
    dw #preset_gtclassic_bootless_upper_norfair_rising_tide ; Bootless Upper Norfair: Rising Tide
    dl $7E078D : db $02 : dw $929A ; DDB
    dl $7E079B : db $02 : dw $AFA3 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E09C2 : db $02 : dw $0121 ; Health
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $04B1 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_bootless_upper_norfair_magdollite_tunnel:
    dw #preset_gtclassic_bootless_upper_norfair_bubble_mountain ; Bootless Upper Norfair: Bubble Mountain
    dl $7E078D : db $02 : dw $9576 ; DDB
    dl $7E079B : db $02 : dw $AEDF ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01F5 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0177 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $0056 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_bootless_upper_norfair_kronic_room:
    dw #preset_gtclassic_bootless_upper_norfair_magdollite_tunnel ; Bootless Upper Norfair: Magdollite Tunnel
    dl $7E078D : db $02 : dw $96BA ; DDB
    dl $7E079B : db $02 : dw $AEB4 ; MDB
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $02B1 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_bootless_upper_norfair_lava_dive:
    dw #preset_gtclassic_bootless_upper_norfair_kronic_room ; Bootless Upper Norfair: Kronic Room
    dl $7E078D : db $02 : dw $96A2 ; DDB
    dl $7E079B : db $02 : dw $AE74 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0200 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E09C6 : db $02 : dw $0001 ; Missiles
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0155 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8BA : db $02 : dw $0100 ; Doors
    dw #$FFFF
.after

preset_gtclassic_bootless_upper_norfair_ln_main_hall:
    dw #preset_gtclassic_bootless_upper_norfair_lava_dive ; Bootless Upper Norfair: Lava Dive
    dl $7E078D : db $02 : dw $96F6 ; DDB
    dl $7E079B : db $02 : dw $B236 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0301 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $001F ; Health
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0480 ; Samus X
    dl $7E0AFA : db $02 : dw $0288 ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_bootless_upper_norfair_prepillars:
    dw #preset_gtclassic_bootless_upper_norfair_ln_main_hall ; Bootless Upper Norfair: LN Main Hall
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0540 ; Layer 2 X position
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $07A2 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_bootless_upper_norfair_green_gate_glitch:
    dw #preset_gtclassic_bootless_upper_norfair_prepillars ; Bootless Upper Norfair: Pre-Pillars
    dl $7E078D : db $02 : dw $985E ; DDB
    dl $7E079B : db $02 : dw $B3A5 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $006E ; Samus X
    dl $7E0AFA : db $02 : dw $029B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_bootless_upper_norfair_gt_code:
    dw #preset_gtclassic_bootless_upper_norfair_green_gate_glitch ; Bootless Upper Norfair: Green Gate Glitch
    dl $7E078D : db $02 : dw $988E ; DDB
    dl $7E079B : db $02 : dw $B6C1 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $B400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01F6 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0178 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $001A ; Health
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E0AF6 : db $02 : dw $0024 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_business_center:
    dw #preset_gtclassic_kraid_kraid_etank ; Kraid: Kraid E-tank
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $01AA ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0004 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_hi_jump_etank:
    dw #preset_gtclassic_hi_jump_upper_norfair_business_center ; Hi Jump Upper Norfair: Business Center
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position
    dl $7E0915 : db $02 : dw $051B ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $03D4 ; Layer 2 Y position
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0041 ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED8B8 : db $02 : dw $20EC ; Doors
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_leaving_hi_jump:
    dw #preset_gtclassic_hi_jump_upper_norfair_hi_jump_etank ; Hi Jump Upper Norfair: Hi Jump E-tank
    dl $7E078D : db $02 : dw $9426 ; DDB
    dl $7E079B : db $02 : dw $A9E5 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09A2 : db $02 : dw $1105 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1105 ; Collected Items
    dl $7E09C2 : db $02 : dw $0121 ; Health
    dl $7E09C4 : db $02 : dw $012B ; Max health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0047 ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED876 : db $02 : dw $0121 ; Items
    dl $7ED8BA : db $02 : dw $0001 ; Doors
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_business_center_revisit:
    dw #preset_gtclassic_hi_jump_upper_norfair_leaving_hi_jump ; Hi Jump Upper Norfair: Leaving Hi Jump
    dl $7E078D : db $02 : dw $93F6 ; DDB
    dl $7E079B : db $02 : dw $AA41 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $8FFF ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9BFF ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0117 ; Health
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0AF6 : db $02 : dw $01BF ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_precathedral:
    dw #preset_gtclassic_hi_jump_upper_norfair_business_center_revisit ; Hi Jump Upper Norfair: Business Center Revisit
    dl $7E078D : db $02 : dw $941A ; DDB
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $BFFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02F6 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0238 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $00A9 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_cathedral:
    dw #preset_gtclassic_hi_jump_upper_norfair_precathedral ; Hi Jump Upper Norfair: Pre-Cathedral
    dl $7E078D : db $02 : dw $92CA ; DDB
    dl $7E079B : db $02 : dw $A7B3 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0200 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0003 ; Missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $029F ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B8 : db $02 : dw $24EC ; Doors
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_rising_tide:
    dw #preset_gtclassic_hi_jump_upper_norfair_cathedral ; Hi Jump Upper Norfair: Cathedral
    dl $7E078D : db $02 : dw $92B2 ; DDB
    dl $7E079B : db $02 : dw $A788 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y position
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0AF6 : db $02 : dw $02B4 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8B8 : db $02 : dw $26EC ; Doors
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_bubble_mountain:
    dw #preset_gtclassic_hi_jump_upper_norfair_rising_tide ; Hi Jump Upper Norfair: Rising Tide
    dl $7E078D : db $02 : dw $929A ; DDB
    dl $7E079B : db $02 : dw $AFA3 ; MDB
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E09C2 : db $02 : dw $0101 ; Health
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $04B8 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_magdollite_tunnel:
    dw #preset_gtclassic_hi_jump_upper_norfair_bubble_mountain ; Hi Jump Upper Norfair: Bubble Mountain
    dl $7E078D : db $02 : dw $979E ; DDB
    dl $7E079B : db $02 : dw $AEDF ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01F4 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0177 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $00AB ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_kronic_room:
    dw #preset_gtclassic_hi_jump_upper_norfair_magdollite_tunnel ; Hi Jump Upper Norfair: Magdollite Tunnel
    dl $7E078D : db $02 : dw $96BA ; DDB
    dl $7E079B : db $02 : dw $AEB4 ; MDB
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E0AF6 : db $02 : dw $02B6 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_lava_dive:
    dw #preset_gtclassic_hi_jump_upper_norfair_kronic_room ; Hi Jump Upper Norfair: Kronic Room
    dl $7E078D : db $02 : dw $96A2 ; DDB
    dl $7E079B : db $02 : dw $AE74 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0200 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E09C6 : db $02 : dw $0001 ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0155 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8BA : db $02 : dw $0101 ; Doors
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_ln_main_hall:
    dw #preset_gtclassic_hi_jump_upper_norfair_lava_dive ; Hi Jump Upper Norfair: Lava Dive
    dl $7E078D : db $02 : dw $96F6 ; DDB
    dl $7E079B : db $02 : dw $B236 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0301 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $009C ; Health
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0480 ; Samus X
    dl $7E0AFA : db $02 : dw $0288 ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_prepillars:
    dw #preset_gtclassic_hi_jump_upper_norfair_ln_main_hall ; Hi Jump Upper Norfair: LN Main Hall
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0540 ; Layer 2 X position
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $07A5 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_green_gate_glitch:
    dw #preset_gtclassic_hi_jump_upper_norfair_prepillars ; Hi Jump Upper Norfair: Pre-Pillars
    dl $7E078D : db $02 : dw $985E ; DDB
    dl $7E079B : db $02 : dw $B3A5 ; MDB
    dl $7E090F : db $02 : dw $3FFF ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0074 ; Samus X
    dl $7E0AFA : db $02 : dw $029B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_hi_jump_upper_norfair_gt_code:
    dw #preset_gtclassic_hi_jump_upper_norfair_green_gate_glitch ; Hi Jump Upper Norfair: Green Gate Glitch
    dl $7E078D : db $02 : dw $988E ; DDB
    dl $7E079B : db $02 : dw $B6C1 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01F8 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $017A ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0097 ; Health
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0AF6 : db $02 : dw $0024 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_leaving_golden_torizo:
    dw #preset_gtclassic_bootless_upper_norfair_gt_code ; Bootless Upper Norfair: GT Code
    dl $7E078D : db $02 : dw $9A86 ; DDB
    dl $7E079B : db $02 : dw $B283 ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09A2 : db $02 : dw $F337 ; Equipped Items
    dl $7E09A4 : db $02 : dw $F337 ; Collected Items
    dl $7E09A6 : db $02 : dw $100B ; Beams
    dl $7E09A8 : db $02 : dw $100F ; Beams
    dl $7E09C2 : db $02 : dw $02BC ; Health
    dl $7E09C4 : db $02 : dw $02BC ; Max health
    dl $7E09C6 : db $02 : dw $0064 ; Missiles
    dl $7E09C8 : db $02 : dw $0064 ; Max missiles
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E09CC : db $02 : dw $0014 ; Max supers
    dl $7E09CE : db $02 : dw $0014 ; Pbs
    dl $7E09D0 : db $02 : dw $0014 ; Max pbs
    dl $7E09D4 : db $02 : dw $012C ; Max reserves
    dl $7E09D6 : db $02 : dw $012C ; Reserves
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED82A : db $02 : dw $0004 ; Bosses
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_green_gate_revisit:
    dw #preset_gtclassic_lower_norfair_leaving_golden_torizo ; Lower Norfair: Leaving Golden Torizo
    dl $7E078D : db $02 : dw $9882 ; DDB
    dl $7E079B : db $02 : dw $B6C1 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0001 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E09A2 : db $02 : dw $F33F ; Equipped Items
    dl $7E09A4 : db $02 : dw $F33F ; Collected Items
    dl $7E0AF6 : db $02 : dw $0090 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED878 : db $02 : dw $8000 ; Items
    dl $7ED8BA : db $02 : dw $0300 ; Doors
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_worst_room_in_the_game:
    dw #preset_gtclassic_lower_norfair_green_gate_revisit ; Lower Norfair: Green Gate Revisit
    dl $7E078D : db $02 : dw $9912 ; DDB
    dl $7E079B : db $02 : dw $B457 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $E880 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X position
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0272 ; Health
    dl $7E09CA : db $02 : dw $0013 ; Supers
    dl $7E0AF6 : db $02 : dw $03D3 ; Samus X
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_amphitheatre:
    dw #preset_gtclassic_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room in the Game
    dl $7E078D : db $02 : dw $994E ; DDB
    dl $7E079B : db $02 : dw $B4AD ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011D ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $00D5 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $00AD ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_kihunter_stairs_down:
    dw #preset_gtclassic_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dl $7E078D : db $02 : dw $997E ; DDB
    dl $7E079B : db $02 : dw $B4E5 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0262 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0033 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $01C9 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0026 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0277 ; Health
    dl $7E0AF6 : db $02 : dw $02C2 ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_wasteland:
    dw #preset_gtclassic_lower_norfair_kihunter_stairs_down ; Lower Norfair: Kihunter Stairs Down
    dl $7E078D : db $02 : dw $99A2 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $AE01 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $DC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0416 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0310 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $029F ; Health
    dl $7E09CE : db $02 : dw $0012 ; Pbs
    dl $7E0AF6 : db $02 : dw $024A ; Samus X
    dl $7E0AFA : db $02 : dw $047B ; Samus Y
    dl $7ED8BA : db $02 : dw $4300 ; Doors
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_metal_ninja_pirates:
    dw #preset_gtclassic_lower_norfair_wasteland ; Lower Norfair: Wasteland
    dl $7E078D : db $02 : dw $99EA ; DDB
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $90FF ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0197 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0266 ; Health
    dl $7E09CA : db $02 : dw $0012 ; Supers
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $016B ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8BA : db $02 : dw $C300 ; Doors
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_plowerhouse:
    dw #preset_gtclassic_lower_norfair_metal_ninja_pirates ; Lower Norfair: Metal Ninja Pirates
    dl $7E078D : db $02 : dw $9A1A ; DDB
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $016F ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0113 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C0 : db $02 : dw $0001 ; Manual/Auto reserve tank
    dl $7E09C2 : db $02 : dw $02BC ; Health
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E0AF6 : db $02 : dw $01E0 ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED8BC : db $02 : dw $0001 ; Doors
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_ridley:
    dw #preset_gtclassic_lower_norfair_plowerhouse ; Lower Norfair: Plowerhouse
    dl $7E078D : db $02 : dw $995A ; DDB
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E09CA : db $02 : dw $0013 ; Supers
    dl $7E0AF6 : db $02 : dw $0024 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8BA : db $02 : dw $D300 ; Doors
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_leaving_ridley:
    dw #preset_gtclassic_lower_norfair_ridley ; Lower Norfair: Ridley
    dl $7E078D : db $02 : dw $98CA ; DDB
    dl $7E079B : db $02 : dw $B32E ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $00D7 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $0276 ; Health
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $005F ; Samus X
    dl $7E0AFA : db $02 : dw $019B ; Samus Y
    dl $7ED82A : db $02 : dw $0005 ; Bosses
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_reverse_plowerhouse:
    dw #preset_gtclassic_lower_norfair_leaving_ridley ; Lower Norfair: Leaving Ridley
    dl $7E078D : db $02 : dw $98BE ; DDB
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3FFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $0273 ; Health
    dl $7E0AF6 : db $02 : dw $02BB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8BA : db $02 : dw $D700 ; Doors
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_wasteland_revisit:
    dw #preset_gtclassic_lower_norfair_reverse_plowerhouse ; Lower Norfair: Reverse Plowerhouse
    dl $7E078D : db $02 : dw $9966 ; DDB
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $0254 ; Health
    dl $7E0AF6 : db $02 : dw $02DC ; Samus X
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_kihunter_stairs_up:
    dw #preset_gtclassic_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dl $7E078D : db $02 : dw $9A3E ; DDB
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $D480 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F001 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0227 ; Health
    dl $7E09CE : db $02 : dw $0010 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0589 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_fireflea_room:
    dw #preset_gtclassic_lower_norfair_kihunter_stairs_up ; Lower Norfair: Kihunter Stairs Up
    dl $7E078D : db $02 : dw $9A26 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $5780 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0017 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0011 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y offset
    dl $7E09CE : db $02 : dw $000F ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00B6 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_springball_maze:
    dw #preset_gtclassic_lower_norfair_fireflea_room ; Lower Norfair: Fireflea Room
    dl $7E078D : db $02 : dw $9A02 ; DDB
    dl $7E079B : db $02 : dw $B6EE ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0003 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0167 ; Samus X
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_three_musketeers:
    dw #preset_gtclassic_lower_norfair_springball_maze ; Lower Norfair: Springball Maze
    dl $7E078D : db $02 : dw $9A92 ; DDB
    dl $7E079B : db $02 : dw $B510 ; MDB
    dl $7E090F : db $02 : dw $4001 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0002 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $0069 ; Samus X
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_single_chamber_final:
    dw #preset_gtclassic_lower_norfair_three_musketeers ; Lower Norfair: Three Musketeers
    dl $7E078D : db $02 : dw $99AE ; DDB
    dl $7E079B : db $02 : dw $B656 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0004 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0003 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $0171 ; Samus X
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_bubble_mountain_final:
    dw #preset_gtclassic_lower_norfair_single_chamber_final ; Lower Norfair: Single Chamber Final
    dl $7E078D : db $02 : dw $9A4A ; DDB
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0006 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0004 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0062 ; Missiles
    dl $7E0AF6 : db $02 : dw $0091 ; Samus X
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_frog_speedway:
    dw #preset_gtclassic_lower_norfair_bubble_mountain_final ; Lower Norfair: Bubble Mountain Final
    dl $7E078D : db $02 : dw $956A ; DDB
    dl $7E079B : db $02 : dw $AF72 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0026 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $001C ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $022C ; Health
    dl $7E09C6 : db $02 : dw $005F ; Missiles
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E09CE : db $02 : dw $000E ; Pbs
    dl $7E0AF6 : db $02 : dw $00C6 ; Samus X
    dw #$FFFF
.after

preset_gtclassic_lower_norfair_business_center_final:
    dw #preset_gtclassic_lower_norfair_frog_speedway ; Lower Norfair: Frog Speedway
    dl $7E078D : db $02 : dw $97DA ; DDB
    dl $7E079B : db $02 : dw $B167 ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0C00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0AF6 : db $02 : dw $0039 ; Samus X
    dw #$FFFF
.after

preset_gtclassic_maridia_maridia_tube_revisit:
    dw #preset_gtclassic_lower_norfair_business_center_final ; Lower Norfair: Business Center Final
    dl $7E078D : db $02 : dw $92EE ; DDB
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0086 ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_maridia_fish_tank:
    dw #preset_gtclassic_maridia_maridia_tube_revisit ; Maridia: Maridia Tube Revisit
    dl $7E078D : db $02 : dw $A330 ; DDB
    dl $7E079B : db $02 : dw $CFC9 ; MDB
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $00FA ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $05F1 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00BB ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0474 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0168 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_maridia_mt_everest:
    dw #preset_gtclassic_maridia_fish_tank ; Maridia: Fish Tank
    dl $7E078D : db $02 : dw $A3F0 ; DDB
    dl $7E079B : db $02 : dw $D0B9 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0101 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $031F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0257 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $0181 ; Samus X
    dl $7E0AFA : db $02 : dw $03BB ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_maridia_crab_shaft:
    dw #preset_gtclassic_maridia_mt_everest ; Maridia: Mt Everest
    dl $7E090F : db $02 : dw $0800 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E09C2 : db $02 : dw $01EF ; Health
    dl $7E0AF6 : db $02 : dw $05C7 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_maridia_aqueduct:
    dw #preset_gtclassic_maridia_crab_shaft ; Maridia: Crab Shaft
    dl $7E078D : db $02 : dw $A468 ; DDB
    dl $7E079B : db $02 : dw $D1A3 ; MDB
    dl $7E090F : db $02 : dw $F001 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0008 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E09D2 : db $02 : dw $0002 ; Currently selected item
    dl $7E0917 : db $02 : dw $0008 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0240 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $007C ; Samus X
    dl $7E0AFA : db $02 : dw $03AB ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_maridia_botwoon_hallway:
    dw #preset_gtclassic_maridia_aqueduct ; Maridia: Aqueduct
    dl $7E078D : db $02 : dw $A4C8 ; DDB
    dl $7E079B : db $02 : dw $D5A7 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09CA : db $02 : dw $0013 ; Supers
    dl $7E09CE : db $02 : dw $000D ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0092 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED8C0 : db $02 : dw $8000 ; Doors
    dw #$FFFF
.after

preset_gtclassic_maridia_botwoon:
    dw #preset_gtclassic_maridia_botwoon_hallway ; Maridia: Botwoon Hallway
    dl $7E078D : db $02 : dw $A72C ; DDB
    dl $7E079B : db $02 : dw $D617 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $02FF ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0003 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $023F ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0003 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $039F ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_maridia_halfie_setup:
    dw #preset_gtclassic_maridia_botwoon ; Maridia: Botwoon
    dl $7E078D : db $02 : dw $A918 ; DDB
    dl $7E079B : db $02 : dw $D7E4 ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0006 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0004 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $001F ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0253 ; Health
    dl $7E09CA : db $02 : dw $0014 ; Supers
    dl $7E09CE : db $02 : dw $000F ; Pbs
    dl $7E0AF6 : db $02 : dw $00A0 ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED82C : db $02 : dw $0002 ; Bosses
    dw #$FFFF
.after

preset_gtclassic_maridia_draygon:
    dw #preset_gtclassic_maridia_halfie_setup ; Maridia: Halfie Setup
    dl $7E078D : db $02 : dw $A7F8 ; DDB
    dl $7E079B : db $02 : dw $D78F ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y position
    dl $7E09C2 : db $02 : dw $01D4 ; Health
    dl $7E09CA : db $02 : dw $0012 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0040 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C2 : db $02 : dw $0C00 ; Doors
    dw #$FFFF
.after

preset_gtclassic_maridia_reverse_halfie_spikesuit:
    dw #preset_gtclassic_maridia_draygon ; Maridia: Draygon
    dl $7E078D : db $02 : dw $A96C ; DDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $6800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $01CF ; Health
    dl $7E09C6 : db $02 : dw $0056 ; Missiles
    dl $7E0A68 : db $02 : dw $0001 ; Flash suit
    dl $7E0AF6 : db $02 : dw $003B ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED82C : db $02 : dw $0003 ; Bosses
    dl $7ED8C2 : db $02 : dw $4C00 ; Doors
    dw #$FFFF
.after

preset_gtclassic_maridia_womple_jump:
    dw #preset_gtclassic_maridia_reverse_halfie_spikesuit ; Maridia: Reverse Halfie (Spikesuit)
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dw #$FFFF
.after

preset_gtclassic_maridia_reverse_halfie_climb:
    dw #preset_gtclassic_maridia_womple_jump ; Maridia: Womple Jump
    dl $7E078D : db $02 : dw $A834 ; DDB
    dl $7E079B : db $02 : dw $D72A ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $6000 ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $F900 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $015E ; Health
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0037 ; Samus X
    dw #$FFFF
.after

preset_gtclassic_maridia_reverse_botwoon_etank:
    dw #preset_gtclassic_maridia_reverse_halfie_climb ; Maridia: Reverse Halfie Climb
    dl $7E078D : db $02 : dw $A7E0 ; DDB
    dl $7E079B : db $02 : dw $D913 ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0200 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0053 ; Missiles
    dl $7E0AF6 : db $02 : dw $00A5 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_maridia_reverse_botwoon_hallway:
    dw #preset_gtclassic_maridia_reverse_botwoon_etank ; Maridia: Reverse Botwoon E-tank
    dl $7E078D : db $02 : dw $A84C ; DDB
    dl $7E079B : db $02 : dw $D95E ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $6B80 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E0AF6 : db $02 : dw $0024 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C2 : db $02 : dw $6C00 ; Doors
    dw #$FFFF
.after

preset_gtclassic_maridia_aqueduct_revisit:
    dw #preset_gtclassic_maridia_reverse_botwoon_hallway ; Maridia: Reverse Botwoon Hallway
    dl $7E078D : db $02 : dw $A90C ; DDB
    dl $7E079B : db $02 : dw $D617 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0015 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $000F ; Layer 2 X position
    dl $7E0919 : db $02 : dw $001F ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X offset
    dl $7E0AF6 : db $02 : dw $00B5 ; Samus X
    dl $7E0AFA : db $02 : dw $00CB ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_maridia_reverse_crab_shaft:
    dw #preset_gtclassic_maridia_aqueduct_revisit ; Maridia: Aqueduct Revisit
    dl $7E078D : db $02 : dw $A768 ; DDB
    dl $7E079B : db $02 : dw $D5A7 ; MDB
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00FD ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $00FD ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $006A ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_maridia_mt_everest_revisit:
    dw #preset_gtclassic_maridia_reverse_crab_shaft ; Maridia: Reverse Crab Shaft
    dl $7E078D : db $02 : dw $A708 ; DDB
    dl $7E079B : db $02 : dw $D1A3 ; MDB
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $F001 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $2C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $0069 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_maridia_red_brinstar_green_gate:
    dw #preset_gtclassic_maridia_mt_everest_revisit ; Maridia: Mt Everest Revisit
    dl $7E078D : db $02 : dw $A42C ; DDB
    dl $7E079B : db $02 : dw $D104 ; MDB
    dl $7E090F : db $02 : dw $2C00 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0001 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $007A ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_crateria_kihunters:
    dw #preset_gtclassic_maridia_red_brinstar_green_gate ; Maridia: Red Brinstar Green Gate
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3C00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E09CE : db $02 : dw $000E ; Pbs
    dl $7E0AF6 : db $02 : dw $008C ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED8B2 : db $02 : dw $2C01 ; Doors
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_moat:
    dw #preset_gtclassic_wrecked_ship_crateria_kihunters ; Wrecked Ship: Crateria Kihunters
    dl $7E078D : db $02 : dw $8AF6 ; DDB
    dl $7E079B : db $02 : dw $948C ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0163 ; Health
    dl $7E09CE : db $02 : dw $000D ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02B3 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B0 : db $02 : dw $2000 ; Doors
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_ocean:
    dw #preset_gtclassic_wrecked_ship_moat ; Wrecked Ship: Moat
    dl $7E078D : db $02 : dw $8A36 ; DDB
    dl $7E079B : db $02 : dw $95FF ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $01A8 ; Samus X
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_wrecked_ship_shaft:
    dw #preset_gtclassic_wrecked_ship_ocean ; Wrecked Ship: Ocean
    dl $7E078D : db $02 : dw $89D6 ; DDB
    dl $7E079B : db $02 : dw $CA08 ; MDB
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E090F : db $02 : dw $8C00 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7ED8B0 : db $02 : dw $3000 ; Doors
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_basement:
    dw #preset_gtclassic_wrecked_ship_wrecked_ship_shaft ; Wrecked Ship: Wrecked Ship Shaft
    dl $7E078D : db $02 : dw $A1BC ; DDB
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $071F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0557 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y offset
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E0AF6 : db $02 : dw $045F ; Samus X
    dl $7E0AFA : db $02 : dw $07BB ; Samus Y
    dl $7ED8C0 : db $02 : dw $8010 ; Doors
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_phantoon:
    dw #preset_gtclassic_wrecked_ship_basement ; Wrecked Ship: Basement
    dl $7E078D : db $02 : dw $A21C ; DDB
    dl $7E079B : db $02 : dw $CC6F ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $2C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09CA : db $02 : dw $000E ; Supers
    dl $7E09CE : db $02 : dw $000C ; Pbs
    dl $7E0AF6 : db $02 : dw $04CE ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C0 : db $02 : dw $8030 ; Doors
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_shaft_climb:
    dw #preset_gtclassic_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dl $7E078D : db $02 : dw $A2C4 ; DDB
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0225 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $019B ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $0154 ; Health
    dl $7E09C6 : db $02 : dw $0055 ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $02C5 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED82A : db $02 : dw $0105 ; Bosses
    dl $7ED8C0 : db $02 : dw $8070 ; Doors
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_ocean_revisit:
    dw #preset_gtclassic_wrecked_ship_shaft_climb ; Wrecked Ship: Shaft Climb
    dl $7E078D : db $02 : dw $A294 ; DDB
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E090F : db $02 : dw $EC00 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0313 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $024E ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $0466 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED8C0 : db $02 : dw $8074 ; Doors
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_crateria_kihunters_revisit:
    dw #preset_gtclassic_wrecked_ship_ocean_revisit ; Wrecked Ship: Ocean Revisit
    dl $7E078D : db $02 : dw $89CA ; DDB
    dl $7E079B : db $02 : dw $95FF ; MDB
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $0032 ; Samus X
    dl $7E0AFA : db $02 : dw $008E ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_parlor_return:
    dw #preset_gtclassic_wrecked_ship_crateria_kihunters_revisit ; Wrecked Ship: Crateria Kihunters Revisit
    dl $7E078D : db $02 : dw $8AC6 ; DDB
    dl $7E079B : db $02 : dw $91F8 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $05EC ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0400 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $02F6 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $F700 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $068C ; Samus X
    dl $7E0AFA : db $02 : dw $04BB ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_terminator_revisit:
    dw #preset_gtclassic_wrecked_ship_parlor_return ; Wrecked Ship: Parlor Return
    dl $7E078D : db $02 : dw $8916 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E090F : db $02 : dw $F800 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $008A ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0115 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7E0B3F : db $02 : dw $0104 ; Blue suit
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_green_pirate_shaft_2:
    dw #preset_gtclassic_wrecked_ship_terminator_revisit ; Wrecked Ship: Terminator Revisit
    dl $7E078D : db $02 : dw $895E ; DDB
    dl $7E079B : db $02 : dw $990D ; MDB
    dl $7E090F : db $02 : dw $7980 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01FC ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $017D ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X offset
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0062 ; Samus X
    dl $7E0AFA : db $02 : dw $029B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dw #$FFFF
.after

preset_gtclassic_wrecked_ship_g4_elevator:
    dw #preset_gtclassic_wrecked_ship_green_pirate_shaft_2 ; Wrecked Ship: Green Pirate Shaft
    dl $7E078D : db $02 : dw $91F2 ; DDB
    dl $7E079B : db $02 : dw $A66A ; MDB
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001D ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $0159 ; Health
    dl $7E09C6 : db $02 : dw $0057 ; Missiles
    dl $7E09CA : db $02 : dw $000D ; Supers
    dl $7E0AF6 : db $02 : dw $003D ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0FC1 ; Events
    dl $7ED8B2 : db $02 : dw $6C01 ; Doors
    dw #$FFFF
.after

preset_gtclassic_tourian_tourian_elevator_room:
    dw #preset_gtclassic_wrecked_ship_g4_elevator ; Wrecked Ship: G4 Elevator
    dl $7E078D : db $02 : dw $9222 ; DDB
    dl $7E079B : db $02 : dw $DAAE ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $01AA ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_tourian_metroids_1:
    dw #preset_gtclassic_tourian_tourian_elevator_room ; Tourian: Tourian Elevator Room
    dl $7E090F : db $02 : dw $E001 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $DBFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0240 ; Layer 2 Y position
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003F ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_tourian_metroids_2:
    dw #preset_gtclassic_tourian_metroids_1 ; Tourian: Metroids 1
    dl $7E078D : db $02 : dw $A984 ; DDB
    dl $7E079B : db $02 : dw $DAE1 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $00F4 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00B7 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0183 ; Health
    dl $7E09C6 : db $02 : dw $0064 ; Missiles
    dl $7E09CA : db $02 : dw $000B ; Supers
    dl $7E09CE : db $02 : dw $0011 ; Pbs
    dl $7E0AF6 : db $02 : dw $0154 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED822 : db $02 : dw $0001 ; Events
    dl $7ED8C4 : db $02 : dw $0001 ; Doors
    dw #$FFFF
.after

preset_gtclassic_tourian_metroids_3:
    dw #preset_gtclassic_tourian_metroids_2 ; Tourian: Metroids 2
    dl $7E078D : db $02 : dw $A9B4 ; DDB
    dl $7E079B : db $02 : dw $DB31 ; MDB
    dl $7E090F : db $02 : dw $7FFF ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011D ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $00D5 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $01EC ; Health
    dl $7E09CA : db $02 : dw $000F ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C5 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0003 ; Events
    dl $7ED8C4 : db $02 : dw $0003 ; Doors
    dw #$FFFF
.after

preset_gtclassic_tourian_metroids_4:
    dw #preset_gtclassic_tourian_metroids_3 ; Tourian: Metroids 3
    dl $7E078D : db $02 : dw $A9CC ; DDB
    dl $7E079B : db $02 : dw $DB7D ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $025A ; Health
    dl $7E09CE : db $02 : dw $0014 ; Pbs
    dl $7E0AF6 : db $02 : dw $05A4 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED822 : db $02 : dw $0007 ; Events
    dl $7ED8C4 : db $02 : dw $0007 ; Doors
    dw #$FFFF
.after

preset_gtclassic_tourian_giant_hoppers:
    dw #preset_gtclassic_tourian_metroids_4 ; Tourian: Metroids 4
    dl $7E078D : db $02 : dw $A9E4 ; DDB
    dl $7E079B : db $02 : dw $DBCD ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $00D7 ; Layer 2 Y position
    dl $7E09C2 : db $02 : dw $02BC ; Health
    dl $7E09CA : db $02 : dw $0011 ; Supers
    dl $7E0AF6 : db $02 : dw $005A ; Samus X
    dl $7E0AFA : db $02 : dw $01CB ; Samus Y
    dl $7ED822 : db $02 : dw $000F ; Events
    dl $7ED8C4 : db $02 : dw $000F ; Doors
    dw #$FFFF
.after

preset_gtclassic_tourian_baby_skip:
    dw #preset_gtclassic_tourian_giant_hoppers ; Tourian: Giant Hoppers
    dl $7E078D : db $02 : dw $AA14 ; DDB
    dl $7E079B : db $02 : dw $DC65 ; MDB
    dl $7E07F3 : db $02 : dw $0045 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $2FFF ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01DB ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_tourian_gadora_room:
    dw #preset_gtclassic_tourian_baby_skip ; Tourian: Baby Skip
    dl $7E078D : db $02 : dw $AA44 ; DDB
    dl $7E079B : db $02 : dw $DCFF ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0113 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $00CE ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E09CA : db $02 : dw $0010 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00DC ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED8C4 : db $02 : dw $00AF ; Doors
    dw #$FFFF
.after

preset_gtclassic_tourian_zeb_skip:
    dw #preset_gtclassic_tourian_gadora_room ; Tourian: Gadora Room
    dl $7E078D : db $02 : dw $AAA4 ; DDB
    dl $7E079B : db $02 : dw $DDF3 ; MDB
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021D ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0195 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E09CA : db $02 : dw $000E ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0047 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C4 : db $02 : dw $03AF ; Doors
    dw #$FFFF
.after

preset_gtclassic_tourian_escape_room_3:
    dw #preset_gtclassic_tourian_zeb_skip ; Tourian: Zeb Skip
    dl $7E078D : db $02 : dw $AAEC ; DDB
    dl $7E079B : db $02 : dw $DE7A ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00F5 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $00B7 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09A6 : db $02 : dw $1009 ; Beams
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0A76 : db $02 : dw $8000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $00DF ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED820 : db $02 : dw $4FCD ; Events
    dl $7ED82C : db $02 : dw $0203 ; Bosses
    dw #$FFFF
.after

preset_gtclassic_tourian_escape_room_4:
    dw #preset_gtclassic_tourian_escape_room_3 ; Tourian: Escape Room 3
    dl $7E078D : db $02 : dw $AB04 ; DDB
    dl $7E079B : db $02 : dw $DEA7 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001A ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0013 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $05DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_tourian_climb_spark:
    dw #preset_gtclassic_tourian_escape_room_4 ; Tourian: Escape Room 4
    dl $7E078D : db $02 : dw $AB1C ; DDB
    dl $7E079B : db $02 : dw $DEDE ; MDB
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $00F4 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0103 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00B7 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $00C2 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $0154 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_gtclassic_tourian_escape_parlor:
    dw #preset_gtclassic_tourian_climb_spark ; Tourian: Climb Spark
    dl $7E078D : db $02 : dw $AB34 ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E090F : db $02 : dw $EFFF ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6801 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0229 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01D1 ; Samus X
    dl $7E0AFA : db $02 : dw $004B ; Samus Y
    dw #$FFFF
.after
