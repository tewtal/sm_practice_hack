
preset_14speed_crateria_ceres_elevator:
    dw #$0000
    dl $7E078B : db $02 : dw $0000 ; Elevator Index
    dl $7E078D : db $02 : dw $AB58 ; DDB
    dl $7E079B : db $02 : dw $DF45 ; MDB
    dl $7E07F3 : db $02 : dw $002D ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
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
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0A76 : db $02 : dw $0000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $0082 ; Samus X
    dl $7E0AFA : db $02 : dw $004B ; Samus Y
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

preset_14speed_crateria_ceres_last_3_rooms:
    dw #preset_14speed_crateria_ceres_elevator ; Crateria: Ceres Elevator
    dl $7E078D : db $02 : dw $ABA0 ; DDB
    dl $7E079B : db $02 : dw $E021 ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $7400 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $F000 ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E093F : db $02 : dw $0002 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0018 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $004E ; Samus X
    dl $7E0AFA : db $02 : dw $00A2 ; Samus Y
    dl $7ED82E : db $02 : dw $0001 ; Bosses
    dw #$FFFF
.after

preset_14speed_crateria_ship:
    dw #preset_14speed_crateria_ceres_last_3_rooms ; Crateria: Ceres Last 3 Rooms
    dl $7E078D : db $02 : dw $88FE ; DDB
    dl $7E079B : db $02 : dw $91F8 ; MDB
    dl $7E07F3 : db $02 : dw $0006 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $03FB ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $03D3 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $01FD ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0200 ; BG2 X offset
    dl $7E093F : db $02 : dw $0000 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E0AF6 : db $02 : dw $047E ; Samus X
    dl $7E0AFA : db $02 : dw $0443 ; Samus Y
    dw #$FFFF
.after

preset_14speed_crateria_morph:
    dw #preset_14speed_crateria_ship ; Crateria: Ship
    dl $7E078D : db $02 : dw $8B9E ; DDB
    dl $7E079B : db $02 : dw $9E9F ; MDB
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $04FB ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03BC ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $057D ; Samus X
    dl $7E0AFA : db $02 : dw $02AB ; Samus Y
    dw #$FFFF
.after

preset_14speed_crateria_climb:
    dw #preset_14speed_crateria_morph ; Crateria: Morph
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $DC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09A2 : db $02 : dw $0004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $0004 ; Collected Items
    dl $7E09C2 : db $02 : dw $0054 ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09C8 : db $02 : dw $0005 ; Max missiles
    dl $7E0AF6 : db $02 : dw $008B ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0001 ; Events
    dl $7ED872 : db $02 : dw $0400 ; Items
    dl $7ED874 : db $02 : dw $0004 ; Items
    dl $7ED8B2 : db $02 : dw $0400 ; Doors
    dw #$FFFF
.after

preset_14speed_crateria_bomb_torizo:
    dw #preset_14speed_crateria_climb ; Crateria: Climb
    dl $7E078D : db $02 : dw $8982 ; DDB
    dl $7E079B : db $02 : dw $9879 ; MDB
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02C0 ; Samus X
    dl $7ED8B2 : db $02 : dw $2400 ; Doors
    dw #$FFFF
.after

preset_14speed_crateria_terminator:
    dw #preset_14speed_crateria_bomb_torizo ; Crateria: Bomb Torizo
    dl $7E078D : db $02 : dw $8BB6 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E090F : db $02 : dw $0400 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $87FF ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E09A2 : db $02 : dw $1004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E0A1C : db $02 : dw $0041 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0404 ; More position/state
    dl $7E0AF6 : db $02 : dw $0115 ; Samus X
    dl $7E0AFA : db $02 : dw $0099 ; Samus Y
    dl $7ED828 : db $02 : dw $0004 ; Bosses
    dl $7ED870 : db $02 : dw $0080 ; Items
    dl $7ED8B2 : db $02 : dw $2C00 ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_green_brinstar_elevator:
    dw #preset_14speed_crateria_terminator ; Crateria: Terminator
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C4 : db $02 : dw $00C7 ; Max health
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0082 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED870 : db $02 : dw $0180 ; Items
    dw #$FFFF
.after

preset_14speed_brinstar_big_pink:
    dw #preset_14speed_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dl $7E078D : db $02 : dw $8CE2 ; DDB
    dl $7E079B : db $02 : dw $9CB3 ; MDB
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0480 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CC : db $02 : dw $0005 ; Max supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $06AD ; Samus X
    dl $7ED872 : db $02 : dw $0401 ; Items
    dl $7ED8B4 : db $02 : dw $0006 ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_red_tower:
    dw #preset_14speed_brinstar_big_pink ; Brinstar: Big Pink
    dl $7E078D : db $02 : dw $8E92 ; DDB
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X position
    dl $7E09A6 : db $02 : dw $1000 ; Beams
    dl $7E09A8 : db $02 : dw $1000 ; Beams
    dl $7E0AF6 : db $02 : dw $05C1 ; Samus X
    dl $7ED872 : db $02 : dw $0481 ; Items
    dl $7ED8B4 : db $02 : dw $0206 ; Doors
    dl $7ED8B6 : db $02 : dw $0008 ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_hellway:
    dw #preset_14speed_brinstar_red_tower ; Brinstar: Red Tower
    dl $7E078D : db $02 : dw $8F0A ; DDB
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E090F : db $02 : dw $5FFF ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $000B ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0008 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $0098 ; Samus X
    dw #$FFFF
.after

preset_14speed_brinstar_caterpillar_room:
    dw #preset_14speed_brinstar_hellway ; Brinstar: Hellway
    dl $7E078D : db $02 : dw $901E ; DDB
    dl $7E079B : db $02 : dw $A2F7 ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00B7 ; Health
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E0AF6 : db $02 : dw $0298 ; Samus X
    dw #$FFFF
.after

preset_14speed_brinstar_leaving_power_bombs:
    dw #preset_14speed_brinstar_caterpillar_room ; Brinstar: Caterpillar Room
    dl $7E078D : db $02 : dw $9096 ; DDB
    dl $7E079B : db $02 : dw $A3AE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $0001 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0C00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $00AD ; Health
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E09D0 : db $02 : dw $0005 ; Max pbs
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $0157 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED874 : db $02 : dw $0104 ; Items
    dl $7ED8B6 : db $02 : dw $2008 ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_kihunter_room:
    dw #preset_14speed_brinstar_leaving_power_bombs ; Brinstar: Leaving Power Bombs
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $009E ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $008A ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED8B2 : db $02 : dw $2C01 ; Doors
    dl $7ED8B6 : db $02 : dw $3008 ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_moat:
    dw #preset_14speed_brinstar_kihunter_room ; Brinstar: Kihunter Room
    dl $7E078D : db $02 : dw $8AF6 ; DDB
    dl $7E079B : db $02 : dw $948C ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $5C00 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y offset
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $02DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B0 : db $02 : dw $6000 ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_ocean:
    dw #preset_14speed_brinstar_moat ; Brinstar: Moat
    dl $7E078D : db $02 : dw $8A36 ; DDB
    dl $7E079B : db $02 : dw $95FF ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0007 ; Missiles
    dl $7E09C8 : db $02 : dw $000A ; Max missiles
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $01A1 ; Samus X
    dl $7ED870 : db $02 : dw $0190 ; Items
    dw #$FFFF
.after

preset_14speed_wrecked_ship_wrecked_ship_shaft:
    dw #preset_14speed_brinstar_ocean ; Brinstar: Ocean
    dl $7E078D : db $02 : dw $89D6 ; DDB
    dl $7E079B : db $02 : dw $CA08 ; MDB
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $02D8 ; Screen X position in pixels
    dl $7E0917 : db $02 : dw $0222 ; Layer 2 X position
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $0338 ; Samus X
    dl $7ED8B0 : db $02 : dw $7000 ; Doors
    dw #$FFFF
.after

preset_14speed_wrecked_ship_phantoon:
    dw #preset_14speed_wrecked_ship_wrecked_ship_shaft ; Wrecked Ship: Wrecked Ship Shaft
    dl $7E078D : db $02 : dw $A21C ; DDB
    dl $7E079B : db $02 : dw $CC6F ; MDB
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0AF6 : db $02 : dw $04CF ; Samus X
    dl $7ED8C0 : db $02 : dw $0030 ; Doors
    dw #$FFFF
.after

preset_14speed_wrecked_ship_wrecked_ship_supers:
    dw #preset_14speed_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dl $7E078D : db $02 : dw $A2C4 ; DDB
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0229 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $019E ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $02C9 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED82A : db $02 : dw $0100 ; Bosses
    dl $7ED8C0 : db $02 : dw $0070 ; Doors
    dw #$FFFF
.after

preset_14speed_wrecked_ship_shaft_revisit:
    dw #preset_14speed_wrecked_ship_wrecked_ship_supers ; Wrecked Ship: Wrecked Ship Supers
    dl $7E078D : db $02 : dw $A210 ; DDB
    dl $7E079B : db $02 : dw $CDA8 ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CC : db $02 : dw $000A ; Max supers
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C4 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED880 : db $02 : dw $0020 ; Items
    dl $7ED8C0 : db $02 : dw $0074 ; Doors
    dw #$FFFF
.after

preset_14speed_wrecked_ship_attic:
    dw #preset_14speed_wrecked_ship_shaft_revisit ; Wrecked Ship: Shaft Revisit
    dl $7E078D : db $02 : dw $A2E8 ; DDB
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FA00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $044D ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dw #$FFFF
.after

preset_14speed_wrecked_ship_bowling_alley_path:
    dw #preset_14speed_wrecked_ship_attic ; Wrecked Ship: Attic
    dl $7E078D : db $02 : dw $A1E0 ; DDB
    dl $7E079B : db $02 : dw $93FE ; MDB
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0202 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $F800 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E0AF6 : db $02 : dw $02C6 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C0 : db $02 : dw $0174 ; Doors
    dw #$FFFF
.after

preset_14speed_wrecked_ship_bowling_alley:
    dw #preset_14speed_wrecked_ship_bowling_alley_path ; Wrecked Ship: Bowling Alley Path
    dl $7E078D : db $02 : dw $8A1E ; DDB
    dl $7E079B : db $02 : dw $968F ; MDB
    dl $7E090F : db $02 : dw $3800 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $BC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $00BD ; Health
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_14speed_wrecked_ship_leaving_gravity:
    dw #preset_14speed_wrecked_ship_bowling_alley ; Wrecked Ship: Bowling Alley
    dl $7E078D : db $02 : dw $A1A4 ; DDB
    dl $7E079B : db $02 : dw $CE40 ; MDB
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $5800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E09A2 : db $02 : dw $1024 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1024 ; Collected Items
    dl $7E09C2 : db $02 : dw $0045 ; Health
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED880 : db $02 : dw $00A0 ; Items
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_red_tower_elevator:
    dw #preset_14speed_wrecked_ship_leaving_gravity ; Wrecked Ship: Leaving Gravity
    dl $7E078D : db $02 : dw $8B02 ; DDB
    dl $7E079B : db $02 : dw $A322 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0238 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0043 ; Health
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_breaking_tube:
    dw #preset_14speed_brinstar_revisit_red_tower_elevator ; Brinstar Revisit: Red Tower Elevator
    dl $7E078D : db $02 : dw $911A ; DDB
    dl $7E079B : db $02 : dw $CF54 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $5C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0052 ; Health
    dl $7E09C6 : db $02 : dw $0008 ; Missiles
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $002C ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_entering_kraids_lair:
    dw #preset_14speed_brinstar_revisit_breaking_tube ; Brinstar Revisit: Breaking Tube
    dl $7E078D : db $02 : dw $A348 ; DDB
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $1801 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED820 : db $02 : dw $0801 ; Events
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_baby_kraid_entering:
    dw #preset_14speed_brinstar_revisit_entering_kraids_lair ; Brinstar Revisit: Entering Kraids Lair
    dl $7E078D : db $02 : dw $9156 ; DDB
    dl $7E079B : db $02 : dw $A4DA ; MDB
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $DC00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0AF6 : db $02 : dw $0171 ; Samus X
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_kraid:
    dw #preset_14speed_brinstar_revisit_baby_kraid_entering ; Brinstar Revisit: Baby Kraid (Entering)
    dl $7E078D : db $02 : dw $919E ; DDB
    dl $7E079B : db $02 : dw $A56B ; MDB
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $004D ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0AF6 : db $02 : dw $01C8 ; Samus X
    dl $7ED8B8 : db $02 : dw $0024 ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_baby_kraid_exiting:
    dw #preset_14speed_brinstar_revisit_kraid ; Brinstar Revisit: Kraid
    dl $7E078D : db $02 : dw $91CE ; DDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E09A2 : db $02 : dw $1025 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1025 ; Collected Items
    dl $7E09C2 : db $02 : dw $008A ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $005F ; Samus X
    dl $7ED828 : db $02 : dw $0104 ; Bosses
    dl $7ED876 : db $02 : dw $0001 ; Items
    dl $7ED8B8 : db $02 : dw $00E4 ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_kraid_etank:
    dw #preset_14speed_brinstar_revisit_baby_kraid_exiting ; Brinstar Revisit: Baby Kraid (Exiting)
    dl $7E078D : db $02 : dw $916E ; DDB
    dl $7E079B : db $02 : dw $A471 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FFE0 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0085 ; Health
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0AF6 : db $02 : dw $0056 ; Samus X
    dl $7ED8B8 : db $02 : dw $00ED ; Doors
    dw #$FFFF
.after

preset_14speed_upper_norfair_precathedral:
    dw #preset_14speed_brinstar_revisit_kraid_etank ; Brinstar Revisit: Kraid E-tank
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0238 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $01AA ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C4 : db $02 : dw $012B ; Max health
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dl $7ED874 : db $02 : dw $0904 ; Items
    dl $7ED8B8 : db $02 : dw $00EF ; Doors
    dw #$FFFF
.after

preset_14speed_upper_norfair_bubble_mountain:
    dw #preset_14speed_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dl $7E078D : db $02 : dw $929A ; DDB
    dl $7E079B : db $02 : dw $AFA3 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0120 ; Health
    dl $7E09C6 : db $02 : dw $0009 ; Missiles
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $04B5 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B8 : db $02 : dw $06EF ; Doors
    dw #$FFFF
.after

preset_14speed_upper_norfair_bubble_mountain_revisit:
    dw #preset_14speed_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dl $7E078D : db $02 : dw $95A6 ; DDB
    dl $7E079B : db $02 : dw $B07A ; MDB
    dl $7E090F : db $02 : dw $8001 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E09A2 : db $02 : dw $3025 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3025 ; Collected Items
    dl $7E09C2 : db $02 : dw $0129 ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0041 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0020 ; Events
    dl $7ED878 : db $02 : dw $0004 ; Items
    dl $7ED8BA : db $02 : dw $0030 ; Doors
    dw #$FFFF
.after

preset_14speed_upper_norfair_magdollite_room:
    dw #preset_14speed_upper_norfair_bubble_mountain_revisit ; Upper Norfair: Bubble Mountain Revisit
    dl $7E078D : db $02 : dw $9576 ; DDB
    dl $7E079B : db $02 : dw $AEDF ; MDB
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01F5 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0177 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0059 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_14speed_upper_norfair_lava_spark:
    dw #preset_14speed_upper_norfair_magdollite_room ; Upper Norfair: Magdollite Room
    dl $7E078D : db $02 : dw $96A2 ; DDB
    dl $7E079B : db $02 : dw $AE74 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0200 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C6 : db $02 : dw $0008 ; Missiles
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01EB ; Samus X
    dl $7ED8BA : db $02 : dw $0130 ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_ln_main_hall:
    dw #preset_14speed_upper_norfair_lava_spark ; Upper Norfair: Lava Spark
    dl $7E078D : db $02 : dw $96F6 ; DDB
    dl $7E079B : db $02 : dw $B236 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0301 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00D7 ; Health
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0480 ; Samus X
    dl $7E0AFA : db $02 : dw $0288 ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_pillars:
    dw #preset_14speed_lower_norfair_ln_main_hall ; Lower Norfair: LN Main Hall
    dl $7E078D : db $02 : dw $985E ; DDB
    dl $7E079B : db $02 : dw $B3A5 ; MDB
    dl $7E090F : db $02 : dw $5700 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00DC ; Health
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_worst_room:
    dw #preset_14speed_lower_norfair_pillars ; Lower Norfair: Pillars
    dl $7E078D : db $02 : dw $9912 ; DDB
    dl $7E079B : db $02 : dw $B457 ; MDB
    dl $7E090F : db $02 : dw $037F ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0092 ; Health
    dl $7E0AF6 : db $02 : dw $03DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_amphitheatre:
    dw #preset_14speed_lower_norfair_worst_room ; Lower Norfair: Worst Room
    dl $7E078D : db $02 : dw $994E ; DDB
    dl $7E079B : db $02 : dw $B4AD ; MDB
    dl $7E090F : db $02 : dw $1FFF ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $00D7 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0AF6 : db $02 : dw $00B3 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_kihunter_stairs:
    dw #preset_14speed_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dl $7E078D : db $02 : dw $997E ; DDB
    dl $7E079B : db $02 : dw $B4E5 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0244 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0043 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $01B3 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0032 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $02E4 ; Samus X
    dl $7E0AFA : db $02 : dw $00B3 ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_wasteland:
    dw #preset_14speed_lower_norfair_kihunter_stairs ; Lower Norfair: Kihunter Stairs
    dl $7E078D : db $02 : dw $99A2 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0419 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0312 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00B7 ; Health
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0A1C : db $02 : dw $001D ; Samus position/state
    dl $7E0A1E : db $02 : dw $0408 ; More position/state
    dl $7E0AF6 : db $02 : dw $0247 ; Samus X
    dl $7E0AFA : db $02 : dw $0489 ; Samus Y
    dl $7ED8BA : db $02 : dw $4130 ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_metal_pirates:
    dw #preset_14speed_lower_norfair_wasteland ; Lower Norfair: Wasteland
    dl $7E078D : db $02 : dw $99EA ; DDB
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $DFFF ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0197 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00A1 ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0162 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8BA : db $02 : dw $C130 ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_ridley_farming_room:
    dw #preset_14speed_lower_norfair_metal_pirates ; Lower Norfair: Metal Pirates
    dl $7E078D : db $02 : dw $9A32 ; DDB
    dl $7E079B : db $02 : dw $B482 ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00F4 ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E0AF6 : db $02 : dw $004D ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8BC : db $02 : dw $0001 ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_ridley:
    dw #preset_14speed_lower_norfair_ridley_farming_room ; Lower Norfair: Ridley Farming Room
    dl $7E078D : db $02 : dw $995A ; DDB
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0AF6 : db $02 : dw $003F ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED8BA : db $02 : dw $D130 ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_leaving_ridley:
    dw #preset_14speed_lower_norfair_ridley ; Lower Norfair: Ridley
    dl $7E078D : db $02 : dw $9A62 ; DDB
    dl $7E079B : db $02 : dw $B32E ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011C ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $00D5 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09C4 : db $02 : dw $018F ; Max health
    dl $7E09C6 : db $02 : dw $0006 ; Missiles
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0042 ; Samus X
    dl $7E0AFA : db $02 : dw $019B ; Samus Y
    dl $7ED82A : db $02 : dw $0101 ; Bosses
    dl $7ED878 : db $02 : dw $4004 ; Items
    dl $7ED8BA : db $02 : dw $D930 ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_wasteland_revisit:
    dw #preset_14speed_lower_norfair_leaving_ridley ; Lower Norfair: Leaving Ridley
    dl $7E078D : db $02 : dw $9966 ; DDB
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $015E ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $0089 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1508 ; More position/state
    dl $7E0AF6 : db $02 : dw $02DB ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED8BA : db $02 : dw $DD30 ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_kihunter_stairs_revisit:
    dw #preset_14speed_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dl $7E078D : db $02 : dw $9A3E ; DDB
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $012F ; Health
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0581 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_fireflea_room:
    dw #preset_14speed_lower_norfair_kihunter_stairs_revisit ; Lower Norfair: Kihunter Stairs Revisit
    dl $7E078D : db $02 : dw $9A26 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E090F : db $02 : dw $FC7F ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001A ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0013 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00B9 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_three_musketeers:
    dw #preset_14speed_lower_norfair_fireflea_room ; Lower Norfair: Fireflea Room
    dl $7E078D : db $02 : dw $9A92 ; DDB
    dl $7E079B : db $02 : dw $B510 ; MDB
    dl $7E090F : db $02 : dw $DFFF ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001D ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0015 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $005F ; Samus X
    dw #$FFFF
.after

preset_14speed_lower_norfair_bubble_mountain_revisit_2:
    dw #preset_14speed_lower_norfair_three_musketeers ; Lower Norfair: Three Musketeers
    dl $7E078D : db $02 : dw $9A4A ; DDB
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position
    dl $7E0915 : db $02 : dw $001B ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0014 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0084 ; Health
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0AF6 : db $02 : dw $008A ; Samus X
    dw #$FFFF
.after

preset_14speed_maridia_entering_maridia:
    dw #preset_14speed_lower_norfair_bubble_mountain_revisit_2 ; Lower Norfair: Bubble Mountain Revisit
    dl $7E078D : db $02 : dw $92EE ; DDB
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00FB ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0086 ; Samus Y
    dw #$FFFF
.after

preset_14speed_maridia_mt_everest:
    dw #preset_14speed_maridia_entering_maridia ; Maridia: Entering Maridia
    dl $7E078D : db $02 : dw $A3B4 ; DDB
    dl $7E079B : db $02 : dw $D017 ; MDB
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $006D ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0051 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $00D0 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dw #$FFFF
.after

preset_14speed_maridia_aqueduct:
    dw #preset_14speed_maridia_mt_everest ; Maridia: Mt Everest
    dl $7E078D : db $02 : dw $A468 ; DDB
    dl $7E079B : db $02 : dw $D1A3 ; MDB
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $47FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0240 ; Layer 2 Y position
    dl $7E09C2 : db $02 : dw $00C3 ; Health
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E09D2 : db $02 : dw $0003 ; Currently selected item
    dl $7E0A1C : db $02 : dw $001D ; Samus position/state
    dl $7E0A1E : db $02 : dw $0408 ; More position/state
    dl $7E0AF6 : db $02 : dw $01BD ; Samus X
    dl $7E0AFA : db $02 : dw $0399 ; Samus Y
    dl $7ED8C0 : db $02 : dw $8174 ; Doors
    dw #$FFFF
.after

preset_14speed_maridia_botwoon:
    dw #preset_14speed_maridia_aqueduct ; Maridia: Aqueduct
    dl $7E078D : db $02 : dw $A72C ; DDB
    dl $7E079B : db $02 : dw $D617 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $73FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0013 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0013 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E09D2 : db $02 : dw $0000 ; Currently selected item
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $03AD ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_14speed_maridia_botwoon_etank_room:
    dw #preset_14speed_maridia_botwoon ; Maridia: Botwoon
    dl $7E078D : db $02 : dw $A774 ; DDB
    dl $7E079B : db $02 : dw $D95E ; MDB
    dl $7E07F3 : db $02 : dw $002A ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0125 ; Health
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $01C3 ; Samus X
    dl $7ED82C : db $02 : dw $0002 ; Bosses
    dw #$FFFF
.after

preset_14speed_maridia_colosseum:
    dw #preset_14speed_maridia_botwoon_etank_room ; Maridia: Botwoon E-tank Room
    dl $7E078D : db $02 : dw $A870 ; DDB
    dl $7E079B : db $02 : dw $D913 ; MDB
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $B400 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0003 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0003 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09C6 : db $02 : dw $0009 ; Missiles
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0AF6 : db $02 : dw $00C1 ; Samus X
    dw #$FFFF
.after

preset_14speed_maridia_draygon:
    dw #preset_14speed_maridia_colosseum ; Maridia: Colosseum
    dl $7E078D : db $02 : dw $A7F8 ; DDB
    dl $7E079B : db $02 : dw $D78F ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0180 ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $005B ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C2 : db $02 : dw $0C00 ; Doors
    dw #$FFFF
.after

preset_14speed_maridia_colosseum_revisit:
    dw #preset_14speed_maridia_draygon ; Maridia: Draygon
    dl $7E078D : db $02 : dw $A96C ; DDB
    dl $7E090F : db $02 : dw $8001 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $0172 ; Health
    dl $7E09C6 : db $02 : dw $0006 ; Missiles
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E0A68 : db $02 : dw $0001 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0043 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED82C : db $02 : dw $0003 ; Bosses
    dl $7ED8C2 : db $02 : dw $4C00 ; Doors
    dw #$FFFF
.after

preset_14speed_maridia_reverse_botwoon:
    dw #preset_14speed_maridia_colosseum_revisit ; Maridia: Colosseum Revisit
    dl $7E078D : db $02 : dw $A7E0 ; DDB
    dl $7E079B : db $02 : dw $D913 ; MDB
    dl $7E090F : db $02 : dw $7001 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0200 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00F7 ; Health
    dl $7E09C6 : db $02 : dw $0008 ; Missiles
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $00B2 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_14speed_maridia_aqueduct_revisit:
    dw #preset_14speed_maridia_reverse_botwoon ; Maridia: Reverse Botwoon
    dl $7E078D : db $02 : dw $A90C ; DDB
    dl $7E079B : db $02 : dw $D617 ; MDB
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $001F ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $00FC ; Health
    dl $7E0AF6 : db $02 : dw $009D ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C2 : db $02 : dw $6C00 ; Doors
    dw #$FFFF
.after

preset_14speed_maridia_everest_revisit:
    dw #preset_14speed_maridia_aqueduct_revisit ; Maridia: Aqueduct Revisit
    dl $7E078D : db $02 : dw $A708 ; DDB
    dl $7E079B : db $02 : dw $D1A3 ; MDB
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E090F : db $02 : dw $8001 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0207 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0185 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y offset
    dl $7E0AF6 : db $02 : dw $006F ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_14speed_maridia_red_tower_green_gate:
    dw #preset_14speed_maridia_everest_revisit ; Maridia: Everest Revisit
    dl $7E078D : db $02 : dw $A42C ; DDB
    dl $7E079B : db $02 : dw $D104 ; MDB
    dl $7E090F : db $02 : dw $5001 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0013 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0013 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00C8 ; Health
    dl $7E0AF6 : db $02 : dw $0074 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_14speed_tourian_kihunter_room_revisit:
    dw #preset_14speed_maridia_red_tower_green_gate ; Maridia: Red Tower Green Gate
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y offset
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $006E ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_14speed_tourian_terminator_revisit:
    dw #preset_14speed_tourian_kihunter_room_revisit ; Tourian: Kihunter Room Revisit
    dl $7E078D : db $02 : dw $8916 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $FC00 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C6 : db $02 : dw $0007 ; Missiles
    dl $7E0A1C : db $02 : dw $008A ; Samus position/state
    dl $7E0A1E : db $02 : dw $1504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0115 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_14speed_tourian_pirate_shaft_revisit:
    dw #preset_14speed_tourian_terminator_revisit ; Tourian: Terminator Revisit
    dl $7E078D : db $02 : dw $895E ; DDB
    dl $7E079B : db $02 : dw $990D ; MDB
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01FB ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $017C ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $00C5 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $006C ; Samus X
    dl $7E0AFA : db $02 : dw $029B ; Samus Y
    dw #$FFFF
.after

preset_14speed_tourian_metroids_1:
    dw #preset_14speed_tourian_pirate_shaft_revisit ; Tourian: Pirate Shaft Revisit
    dl $7E078D : db $02 : dw $9222 ; DDB
    dl $7E079B : db $02 : dw $DAAE ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E090F : db $02 : dw $A001 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $03FF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0300 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0240 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0000 ; BG2 X offset
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y offset
    dl $7E09C6 : db $02 : dw $0006 ; Missiles
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E0AF6 : db $02 : dw $0036 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED820 : db $02 : dw $0FC1 ; Events
    dl $7ED8B2 : db $02 : dw $6C01 ; Doors
    dw #$FFFF
.after

preset_14speed_tourian_metroids_2:
    dw #preset_14speed_tourian_metroids_1 ; Tourian: Metroids 1
    dl $7E078D : db $02 : dw $A984 ; DDB
    dl $7E079B : db $02 : dw $DAE1 ; MDB
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $DC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X offset
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $018E ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E0AF6 : db $02 : dw $0039 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED822 : db $02 : dw $0021 ; Events
    dl $7ED8C4 : db $02 : dw $0001 ; Doors
    dw #$FFFF
.after

preset_14speed_tourian_metroids_3:
    dw #preset_14speed_tourian_metroids_2 ; Tourian: Metroids 2
    dl $7E078D : db $02 : dw $A9B4 ; DDB
    dl $7E079B : db $02 : dw $DB31 ; MDB
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $3800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00F6 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $00B8 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $015E ; Health
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C1 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0023 ; Events
    dl $7ED8C4 : db $02 : dw $0003 ; Doors
    dw #$FFFF
.after

preset_14speed_tourian_metroids_4:
    dw #preset_14speed_tourian_metroids_3 ; Tourian: Metroids 3
    dl $7E078D : db $02 : dw $A9CC ; DDB
    dl $7E079B : db $02 : dw $DB7D ; MDB
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $011B ; Health
    dl $7E0AF6 : db $02 : dw $05AA ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED822 : db $02 : dw $0027 ; Events
    dl $7ED8C4 : db $02 : dw $0007 ; Doors
    dw #$FFFF
.after

preset_14speed_tourian_doors_and_refills:
    dw #preset_14speed_tourian_metroids_4 ; Tourian: Metroids 4
    dl $7E078D : db $02 : dw $AA2C ; DDB
    dl $7E079B : db $02 : dw $DCB1 ; MDB
    dl $7E07F3 : db $02 : dw $0045 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X position
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $0001 ; Health
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0018 ; Samus X
    dl $7ED822 : db $02 : dw $002F ; Events
    dl $7ED8C4 : db $02 : dw $002F ; Doors
    dw #$FFFF
.after

preset_14speed_tourian_zeb_skip:
    dw #preset_14speed_tourian_doors_and_refills ; Tourian: Doors and Refills
    dl $7E078D : db $02 : dw $AAA4 ; DDB
    dl $7E079B : db $02 : dw $DDF3 ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E090F : db $02 : dw $3FFF ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $021C ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0195 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0AF6 : db $02 : dw $00DB ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C4 : db $02 : dw $03AF ; Doors
    dw #$FFFF
.after

preset_14speed_tourian_escape_room_3:
    dw #preset_14speed_tourian_zeb_skip ; Tourian: Zeb Skip
    dl $7E078D : db $02 : dw $AAEC ; DDB
    dl $7E079B : db $02 : dw $DE7A ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $00C0 ; Layer 2 Y position
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
    dl $7ED820 : db $02 : dw $4FC5 ; Events
    dl $7ED82C : db $02 : dw $0203 ; Bosses
    dw #$FFFF
.after

preset_14speed_tourian_escape_parlor:
    dw #preset_14speed_tourian_escape_room_3 ; Tourian: Escape Room 3
    dl $7E078D : db $02 : dw $AB34 ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6801 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X position
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y position
    dl $7E0921 : db $02 : dw $0100 ; BG2 X offset
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y offset
    dl $7E09C2 : db $02 : dw $00E0 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01D2 ; Samus X
    dl $7E0AFA : db $02 : dw $004B ; Samus Y
    dw #$FFFF
.after
