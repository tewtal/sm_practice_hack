
preset_spazermap_bombs_ceres_elevator:
    dw #$0000
    dw $078D, $AB58  ; DDB
    dw $079B, $DF45  ; MDB
    dw $07F3, $002D  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $0000  ; Equipped Items
    dw $09A4, $0000  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $0000  ; Missiles
    dw $09C8, $0000  ; Max missiles
    dw $09CA, $0000  ; Supers
    dw $09CC, $0000  ; Max supers
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0080  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $0048  ; Samus Y
    dw $0AFC, $0000  ; Samus subpixel Y
    dw $0B3F, $0000  ; Blue suit
    dw $CAE8, $0000  ; Map counter
    dw $D820, $0000  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0000  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $0000  ; Items
    dw $D872, $0000  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $0000  ; Doors
    dw $D8B4, $0000  ; Doors
    dw $D8B6, $0000  ; Doors
    dw $D8B8, $0000  ; Doors
    dw $D8BA, $0000  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_spazermap_bombs_ceres_escape:
    dw #preset_spazermap_bombs_ceres_elevator ; Bombs: Ceres Elevator
    dw $078D, $ABAC  ; DDB
    dw $079B, $E0B5  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $082F, $0800  ; Explored map tiles
    dw $0833, $0800  ; Explored map tiles
    dw $0837, $0F00  ; Explored map tiles
    dw $083B, $0100  ; Explored map tiles
    dw $083D, $00F0  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $9400  ; Screen subpixel Y position
    dw $093F, $0002  ; Ceres escape flag
    dw $09C2, $0018  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0033  ; Samus X
    dw $0AF8, $B000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $CAE8, $000B  ; Map counter
    dw $D82E, $0001  ; Bosses
    dw #$FFFF

preset_spazermap_bombs_ceres_last_3_rooms:
    dw #preset_spazermap_bombs_ceres_escape ; Bombs: Ceres Escape
    dw $078D, $ABA0  ; DDB
    dw $079B, $E021  ; MDB
    dw $083D, $00F8  ; Explored map tiles
    dw $090F, $7400  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $00A2  ; Samus Y
    dw $CAE8, $000C  ; Map counter
    dw #$FFFF

preset_spazermap_bombs_ship:
    dw #preset_spazermap_bombs_ceres_last_3_rooms ; Bombs: Ceres Last 3 Rooms
    dw $078D, $88FE  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $0006  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $07FD, $1000  ; Explored map tiles
    dw $0801, $1000  ; Explored map tiles
    dw $0805, $1000  ; Explored map tiles
    dw $0809, $1000  ; Explored map tiles
    dw $080D, $1000  ; Explored map tiles
    dw $082F, $0000  ; Explored map tiles
    dw $0833, $0000  ; Explored map tiles
    dw $0837, $0000  ; Explored map tiles
    dw $083B, $0000  ; Explored map tiles
    dw $083D, $0000  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $093F, $0000  ; Ceres escape flag
    dw $09C2, $0063  ; Health
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0481  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $0471  ; Samus Y
    dw $0AFC, $8000  ; Samus subpixel Y
    dw $CAE8, $0011  ; Map counter
    dw #$FFFF

preset_spazermap_bombs_parlor:
    dw #preset_spazermap_bombs_ship ; Bombs: Ship
    dw $080D, $F001  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0079  ; Samus X
    dw $0AFA, $049B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $CAE8, $0015  ; Map counter
    dw #$FFFF

preset_spazermap_bombs_climb_down:
    dw #preset_spazermap_bombs_parlor ; Bombs: Parlor
    dw $078D, $8916  ; DDB
    dw $079B, $92FD  ; MDB
    dw $080D, $F01F  ; Explored map tiles
    dw $0811, $0010  ; Explored map tiles
    dw $0815, $0010  ; Explored map tiles
    dw $0819, $0010  ; Explored map tiles
    dw $081D, $0010  ; Explored map tiles
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $7BFF  ; Screen subpixel Y position
    dw $0915, $03F2  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $02F5  ; Layer 2 Y position
    dw $0A1C, $0018  ; Samus position/state
    dw $0A1E, $0204  ; More position/state
    dw $0AF6, $0199  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $0AFA, $048A  ; Samus Y
    dw $0AFC, $0000  ; Samus subpixel Y
    dw $CAE8, $001D  ; Map counter
    dw #$FFFF

preset_spazermap_bombs_pit_room:
    dw #preset_spazermap_bombs_climb_down ; Bombs: Climb Down
    dw $078D, $898E  ; DDB
    dw $079B, $96BA  ; MDB
    dw $0821, $0010  ; Explored map tiles
    dw $0825, $0010  ; Explored map tiles
    dw $0829, $0010  ; Explored map tiles
    dw $082D, $0010  ; Explored map tiles
    dw $0831, $0010  ; Explored map tiles
    dw $0835, $0010  ; Explored map tiles
    dw $0839, $0010  ; Explored map tiles
    dw $083D, $0010  ; Explored map tiles
    dw $0841, $0010  ; Explored map tiles
    dw $090F, $6FFF  ; Screen subpixel X position
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $0800  ; Screen Y position in pixels
    dw $0919, $0600  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $088B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $CAE8, $0026  ; Map counter
    dw #$FFFF

preset_spazermap_bombs_morph:
    dw #preset_spazermap_bombs_pit_room ; Bombs: Pit Room
    dw $078D, $8B9E  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F5, $0007  ; Music Track
    dw $07FD, $0000  ; Explored map tiles
    dw $0801, $0000  ; Explored map tiles
    dw $0805, $0000  ; Explored map tiles
    dw $0809, $0000  ; Explored map tiles
    dw $080D, $0000  ; Explored map tiles
    dw $0811, $0000  ; Explored map tiles
    dw $0815, $0000  ; Explored map tiles
    dw $0819, $0000  ; Explored map tiles
    dw $081D, $2000  ; Explored map tiles
    dw $0821, $2000  ; Explored map tiles
    dw $0825, $2000  ; Explored map tiles
    dw $0829, $0000  ; Explored map tiles
    dw $082D, $0000  ; Explored map tiles
    dw $0831, $0000  ; Explored map tiles
    dw $0835, $0000  ; Explored map tiles
    dw $0839, $0000  ; Explored map tiles
    dw $083D, $0000  ; Explored map tiles
    dw $0841, $0000  ; Explored map tiles
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0580  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw $CAE8, $002D  ; Map counter
    dw $CD58, $1000  ; Explored map tiles (Crateria)
    dw $CD5C, $1000  ; Explored map tiles (Crateria)
    dw $CD60, $1000  ; Explored map tiles (Crateria)
    dw $CD64, $1000  ; Explored map tiles (Crateria)
    dw $CD68, $F01F  ; Explored map tiles (Crateria)
    dw $CD6C, $0010  ; Explored map tiles (Crateria)
    dw $CD70, $0010  ; Explored map tiles (Crateria)
    dw $CD74, $0010  ; Explored map tiles (Crateria)
    dw $CD78, $0010  ; Explored map tiles (Crateria)
    dw $CD7C, $0010  ; Explored map tiles (Crateria)
    dw $CD80, $0010  ; Explored map tiles (Crateria)
    dw $CD84, $0010  ; Explored map tiles (Crateria)
    dw $CD88, $0010  ; Explored map tiles (Crateria)
    dw $CD8C, $0010  ; Explored map tiles (Crateria)
    dw $CD90, $0010  ; Explored map tiles (Crateria)
    dw $CD94, $0010  ; Explored map tiles (Crateria)
    dw $CD98, $0010  ; Explored map tiles (Crateria)
    dw $CD9C, $001F  ; Explored map tiles (Crateria)
    dw #$FFFF

preset_spazermap_bombs_construction_zone_down:
    dw #preset_spazermap_bombs_morph ; Bombs: Morph
    dw $0825, $7800  ; Explored map tiles
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0917, $0540  ; Layer 2 X position
    dw $09A2, $0004  ; Equipped Items
    dw $09A4, $0004  ; Collected Items
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $07AC  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $CAE8, $0030  ; Map counter
    dw $D872, $0400  ; Items
    dw #$FFFF

preset_spazermap_bombs_construction_zone_up:
    dw #preset_spazermap_bombs_construction_zone_down ; Bombs: Construction Zone Down
    dw $078D, $8EDA  ; DDB
    dw $079B, $A107  ; MDB
    dw $0825, $7C00  ; Explored map tiles
    dw $0829, $0C00  ; Explored map tiles
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0005  ; Missiles
    dw $09C8, $0005  ; Max missiles
    dw $0AF6, $0055  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0033  ; Map counter
    dw $D874, $0004  ; Items
    dw #$FFFF

preset_spazermap_bombs_pit_room_revisit:
    dw #preset_spazermap_bombs_construction_zone_up ; Bombs: Construction Zone Up
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $07FD, $1000  ; Explored map tiles
    dw $0801, $1000  ; Explored map tiles
    dw $0805, $1000  ; Explored map tiles
    dw $0809, $1000  ; Explored map tiles
    dw $080D, $F01F  ; Explored map tiles
    dw $0811, $0010  ; Explored map tiles
    dw $0815, $0010  ; Explored map tiles
    dw $0819, $0010  ; Explored map tiles
    dw $081D, $0010  ; Explored map tiles
    dw $0821, $0010  ; Explored map tiles
    dw $0825, $0010  ; Explored map tiles
    dw $0829, $0010  ; Explored map tiles
    dw $082D, $0010  ; Explored map tiles
    dw $0831, $0010  ; Explored map tiles
    dw $0835, $0010  ; Explored map tiles
    dw $0839, $0010  ; Explored map tiles
    dw $083D, $0010  ; Explored map tiles
    dw $0841, $001F  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $CE78, $2000  ; Explored map tiles (Brinstar)
    dw $CE7C, $2000  ; Explored map tiles (Brinstar)
    dw $CE80, $7C00  ; Explored map tiles (Brinstar)
    dw $CE84, $0C00  ; Explored map tiles (Brinstar)
    dw #$FFFF

preset_spazermap_bombs_climb_up:
    dw #preset_spazermap_bombs_pit_room_revisit ; Bombs: Pit Room Revisit
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0083  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $0001  ; Events
    dw $D8B2, $0400  ; Doors
    dw #$FFFF

preset_spazermap_bombs_parlor_revisit:
    dw #preset_spazermap_bombs_climb_up ; Bombs: Climb Up
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0AF6, $01A0  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_spazermap_bombs_flyway:
    dw #preset_spazermap_bombs_parlor_revisit ; Bombs: Parlor Revisit
    dw $078D, $8B3E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $0811, $0014  ; Explored map tiles
    dw $0815, $0014  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $2BFF  ; Screen subpixel Y position
    dw $0915, $01E6  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $016C  ; Layer 2 Y position
    dw $09D2, $0001  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0369  ; Samus X
    dw $0AFA, $026B  ; Samus Y
    dw $CAE8, $0035  ; Map counter
    dw #$FFFF

preset_spazermap_bombs_bomb_torizo:
    dw #preset_spazermap_bombs_flyway ; Bombs: Flyway
    dw $078D, $8982  ; DDB
    dw $079B, $9879  ; MDB
    dw $0815, $8017  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0000  ; Missiles
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $02BE  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0038  ; Map counter
    dw $D8B2, $2400  ; Doors
    dw #$FFFF

preset_spazermap_bombs_alcatraz:
    dw #preset_spazermap_bombs_bomb_torizo ; Bombs: Bomb Torizo
    dw $078D, $8BAA  ; DDB
    dw $0815, $C017  ; Explored map tiles
    dw $090F, $2001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C6, $0005  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0040  ; Samus X
    dw $CAE8, $0039  ; Map counter
    dw $D828, $0004  ; Bosses
    dw $D870, $0080  ; Items
    dw $D8B2, $2C00  ; Doors
    dw #$FFFF

preset_spazermap_bombs_terminator:
    dw #preset_spazermap_bombs_alcatraz ; Bombs: Alcatraz
    dw $078D, $8BB6  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0A1C, $0041  ; Samus position/state
    dw $0A1E, $0404  ; More position/state
    dw $0AF6, $0115  ; Samus X
    dw $0AFA, $0099  ; Samus Y
    dw #$FFFF

preset_spazermap_bombs_green_pirate_shaft:
    dw #preset_spazermap_bombs_terminator ; Bombs: Terminator
    dw $078D, $895E  ; DDB
    dw $079B, $990D  ; MDB
    dw $080B, $0100  ; Explored map tiles
    dw $080D, $F0FF  ; Explored map tiles
    dw $080F, $0700  ; Explored map tiles
    dw $0811, $0094  ; Explored map tiles
    dw $0813, $0E00  ; Explored map tiles
    dw $090F, $9F00  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01FC  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $017D  ; Layer 2 Y position
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0063  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw $CAE8, $0042  ; Map counter
    dw $D870, $0180  ; Items
    dw #$FFFF

preset_spazermap_varia_green_brinstar_elevator:
    dw #preset_spazermap_bombs_green_pirate_shaft ; Bombs: Green Pirate Shaft
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $0813, $1E00  ; Explored map tiles
    dw $0817, $1000  ; Explored map tiles
    dw $081B, $F003  ; Explored map tiles
    dw $090F, $1C80  ; Screen subpixel X position
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $008B  ; Health
    dw $0AF6, $007C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $004A  ; Map counter
    dw #$FFFF

preset_spazermap_varia_early_supers:
    dw #preset_spazermap_varia_green_brinstar_elevator ; Varia: Green Brinstar Elevator
    dw $078D, $8C0A  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $07FB, $4000  ; Explored map tiles
    dw $07FD, $0000  ; Explored map tiles
    dw $07FF, $4000  ; Explored map tiles
    dw $0801, $0000  ; Explored map tiles
    dw $0803, $4000  ; Explored map tiles
    dw $0805, $0000  ; Explored map tiles
    dw $0807, $4000  ; Explored map tiles
    dw $0809, $0000  ; Explored map tiles
    dw $080B, $4000  ; Explored map tiles
    dw $080D, $0000  ; Explored map tiles
    dw $080F, $0000  ; Explored map tiles
    dw $0811, $0000  ; Explored map tiles
    dw $0813, $0000  ; Explored map tiles
    dw $0815, $0000  ; Explored map tiles
    dw $0817, $0000  ; Explored map tiles
    dw $0819, $0000  ; Explored map tiles
    dw $081B, $0000  ; Explored map tiles
    dw $081D, $2000  ; Explored map tiles
    dw $0821, $2000  ; Explored map tiles
    dw $0825, $7C00  ; Explored map tiles
    dw $0829, $0C00  ; Explored map tiles
    dw $082D, $0000  ; Explored map tiles
    dw $0831, $0000  ; Explored map tiles
    dw $0835, $0000  ; Explored map tiles
    dw $0839, $0000  ; Explored map tiles
    dw $083D, $0000  ; Explored map tiles
    dw $0841, $0000  ; Explored map tiles
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $041C  ; Screen Y position in pixels
    dw $0919, $0315  ; Layer 2 Y position
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A1  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $CAE8, $004F  ; Map counter
    dw $CD66, $0100  ; Explored map tiles (Crateria)
    dw $CD68, $F0FF  ; Explored map tiles (Crateria)
    dw $CD6A, $0700  ; Explored map tiles (Crateria)
    dw $CD6C, $0094  ; Explored map tiles (Crateria)
    dw $CD6E, $1E00  ; Explored map tiles (Crateria)
    dw $CD70, $C017  ; Explored map tiles (Crateria)
    dw $CD72, $1000  ; Explored map tiles (Crateria)
    dw $CD76, $F003  ; Explored map tiles (Crateria)
    dw $D8B4, $0002  ; Doors
    dw #$FFFF

preset_spazermap_varia_brinstar_reserve:
    dw #preset_spazermap_varia_early_supers ; Varia: Early Supers
    dw $078D, $8CD6  ; DDB
    dw $079B, $9BC8  ; MDB
    dw $0807, $7800  ; Explored map tiles
    dw $080B, $7800  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $0077  ; Health
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $0AF6, $02CE  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $0055  ; Map counter
    dw $D872, $0401  ; Items
    dw $D8B4, $0042  ; Doors
    dw #$FFFF

preset_spazermap_varia_reverse_mockball:
    dw #preset_spazermap_varia_brinstar_reserve ; Varia: Brinstar Reserve
    dw $078D, $8D5A  ; DDB
    dw $079B, $9C07  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $080B, $7E00  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003F  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0057  ; Map counter
    dw #$FFFF

preset_spazermap_varia_green_hill_zone:
    dw #preset_spazermap_varia_reverse_mockball ; Varia: Reverse Mockball
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $080F, $4000  ; Explored map tiles
    dw $0813, $7F00  ; Explored map tiles
    dw $0815, $00E0  ; Explored map tiles
    dw $0819, $0020  ; Explored map tiles
    dw $081D, $2060  ; Explored map tiles
    dw $0821, $2060  ; Explored map tiles
    dw $0825, $7C60  ; Explored map tiles
    dw $0829, $0C40  ; Explored map tiles
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $061D  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0495  ; Layer 2 Y position
    dw $09A6, $1000  ; Equipped Beams
    dw $09A8, $1000  ; Collected Beams
    dw $09C6, $0005  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0002  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0372  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $CAE8, $006A  ; Map counter
    dw $D872, $04C1  ; Items
    dw $D8B4, $0246  ; Doors
    dw #$FFFF

preset_spazermap_varia_red_tower_down:
    dw #preset_spazermap_varia_green_hill_zone ; Varia: Green Hill Zone
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $0825, $7C70  ; Explored map tiles
    dw $0829, $0C5E  ; Explored map tiles
    dw $082D, $8007  ; Explored map tiles
    dw $0831, $FF01  ; Explored map tiles
    dw $08AF, $0080  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0004  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0AF6, $05BD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $007D  ; Map counter
    dw $D8B6, $0008  ; Doors
    dw #$FFFF

preset_spazermap_varia_skree_boost:
    dw #preset_spazermap_varia_red_tower_down ; Varia: Red Tower Down
    dw $078D, $8F0A  ; DDB
    dw $079B, $A253  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $08AF, $00C0  ; Explored map tiles
    dw $08B3, $0040  ; Explored map tiles
    dw $08B7, $0040  ; Explored map tiles
    dw $08BB, $0040  ; Explored map tiles
    dw $08BF, $0040  ; Explored map tiles
    dw $08C3, $0040  ; Explored map tiles
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $091A  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $06D3  ; Layer 2 Y position
    dw $0AF6, $0066  ; Samus X
    dw $0AFA, $098B  ; Samus Y
    dw $CAE8, $0083  ; Map counter
    dw $D8B6, $0108  ; Doors
    dw #$FFFF

preset_spazermap_varia_leaving_spazer:
    dw #preset_spazermap_varia_skree_boost ; Varia: Skree Boost
    dw $078D, $9132  ; DDB
    dw $079B, $A408  ; MDB
    dw $08BF, $004E  ; Explored map tiles
    dw $08C3, $007C  ; Explored map tiles
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09A6, $1004  ; Equipped Beams
    dw $09A8, $1004  ; Collected Beams
    dw $09C2, $006E  ; Health
    dw $09CA, $0002  ; Supers
    dw $0AF6, $01AF  ; Samus X
    dw $0AF8, $87FF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $008A  ; Map counter
    dw $D8B6, $8108  ; Doors
    dw #$FFFF

preset_spazermap_varia_kraid_kihunter_room:
    dw #preset_spazermap_varia_leaving_spazer ; Varia: Leaving Spazer
    dw $078D, $923A  ; DDB
    dw $079B, $A471  ; MDB
    dw $08C3, $787C  ; Explored map tiles
    dw $08C7, $2C00  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09CA, $0001  ; Supers
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $016B  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $0190  ; Samus Y
    dw $CAE8, $0094  ; Map counter
    dw $CE56, $4000  ; Explored map tiles (Brinstar)
    dw $CE5A, $4000  ; Explored map tiles (Brinstar)
    dw $CE5E, $4000  ; Explored map tiles (Brinstar)
    dw $CE62, $7800  ; Explored map tiles (Brinstar)
    dw $CE66, $7E00  ; Explored map tiles (Brinstar)
    dw $CE6A, $4000  ; Explored map tiles (Brinstar)
    dw $CE6E, $7F00  ; Explored map tiles (Brinstar)
    dw $CE70, $00E0  ; Explored map tiles (Brinstar)
    dw $CE74, $0020  ; Explored map tiles (Brinstar)
    dw $CE78, $2060  ; Explored map tiles (Brinstar)
    dw $CE7C, $2060  ; Explored map tiles (Brinstar)
    dw $CE80, $7C70  ; Explored map tiles (Brinstar)
    dw $CE84, $0C5E  ; Explored map tiles (Brinstar)
    dw $CE88, $8007  ; Explored map tiles (Brinstar)
    dw $CE8C, $FF01  ; Explored map tiles (Brinstar)
    dw $CF0A, $00C0  ; Explored map tiles (Brinstar)
    dw $CF0E, $0040  ; Explored map tiles (Brinstar)
    dw $CF12, $0040  ; Explored map tiles (Brinstar)
    dw $CF16, $0040  ; Explored map tiles (Brinstar)
    dw $CF1A, $004E  ; Explored map tiles (Brinstar)
    dw $CF1E, $007C  ; Explored map tiles (Brinstar)
    dw $D19E, $3800  ; Explored map tiles (Maridia)
    dw #$FFFF

preset_spazermap_varia_kihunter_save_room:
    dw #preset_spazermap_varia_kraid_kihunter_room ; Varia: Kraid Kihunter Room
    dw $078D, $9186  ; DDB
    dw $079B, $A70B  ; MDB
    dw $08C3, $7F7C  ; Explored map tiles
    dw $08C5, $00C0  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0028  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0099  ; Map counter
    dw #$FFFF

preset_spazermap_varia_kraid:
    dw #preset_spazermap_varia_kihunter_save_room ; Varia: Kihunter Save Room
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $08C7, $2F00  ; Explored map tiles
    dw $08C9, $00FE  ; Explored map tiles
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $93FF  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $005D  ; Health
    dw $09C6, $0003  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01D8  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $00A2  ; Map counter
    dw $D8B8, $0024  ; Doors
    dw #$FFFF

preset_spazermap_varia_kraid_dboost_room_out:
    dw #preset_spazermap_varia_kraid ; Varia: Kraid
    dw $078D, $9252  ; DDB
    dw $079B, $A59F  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $08C5, $80C1  ; Explored map tiles
    dw $08C9, $C0FF  ; Explored map tiles
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $00FE  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1005  ; Equipped Items
    dw $09A4, $1005  ; Collected Items
    dw $09C2, $00A3  ; Health
    dw $09C6, $0009  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0054  ; Samus X
    dw $CAE8, $00A3  ; Map counter
    dw $D828, $0104  ; Bosses
    dw $D876, $0001  ; Items
    dw $D8B8, $00E4  ; Doors
    dw #$FFFF

preset_spazermap_varia_leaving_kraid_refill:
    dw #preset_spazermap_varia_kraid_dboost_room_out ; Varia: Kraid D-Boost Room Out
    dw $078D, $91C2  ; DDB
    dw $079B, $A641  ; MDB
    dw $08C5, $80C7  ; Explored map tiles
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $009B  ; Health
    dw $09CA, $0002  ; Supers
    dw $0AF6, $0029  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $00A5  ; Map counter
    dw $D8B8, $00F4  ; Doors
    dw #$FFFF

preset_spazermap_varia_kihunter_room_leaving:
    dw #preset_spazermap_varia_leaving_kraid_refill ; Varia: Leaving Kraid Refill
    dw $078D, $91AA  ; DDB
    dw $079B, $A521  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $003A  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0917, $002B  ; Layer 2 X position
    dw $09C6, $0006  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $0AF6, $00BA  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $00FC  ; Doors
    dw #$FFFF

preset_spazermap_varia_mouthball:
    dw #preset_spazermap_varia_kihunter_room_leaving ; Varia: Kihunter Room Leaving
    dw $078D, $9162  ; DDB
    dw $079B, $A471  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $08C7, $3F00  ; Explored map tiles
    dw $090F, $8001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $001C  ; Layer 2 Y position
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $0005  ; Missiles
    dw $0AF6, $001E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $00A6  ; Map counter
    dw $D874, $0804  ; Items
    dw $D8B8, $00FF  ; Doors
    dw #$FFFF

preset_spazermap_upper_norfair_hi_jump_boots:
    dw #preset_spazermap_varia_mouthball ; Varia: Mouthball
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07FB, $2000  ; Explored map tiles
    dw $07FF, $2000  ; Explored map tiles
    dw $0803, $2000  ; Explored map tiles
    dw $0807, $2000  ; Explored map tiles
    dw $080B, $2000  ; Explored map tiles
    dw $080F, $2000  ; Explored map tiles
    dw $0813, $0000  ; Explored map tiles
    dw $0815, $0000  ; Explored map tiles
    dw $0819, $0000  ; Explored map tiles
    dw $081D, $0000  ; Explored map tiles
    dw $0821, $0000  ; Explored map tiles
    dw $0825, $0000  ; Explored map tiles
    dw $0829, $0000  ; Explored map tiles
    dw $082D, $0000  ; Explored map tiles
    dw $0831, $0000  ; Explored map tiles
    dw $08AF, $0000  ; Explored map tiles
    dw $08B3, $0000  ; Explored map tiles
    dw $08B7, $0000  ; Explored map tiles
    dw $08BB, $0000  ; Explored map tiles
    dw $08BF, $0000  ; Explored map tiles
    dw $08C3, $0000  ; Explored map tiles
    dw $08C5, $0000  ; Explored map tiles
    dw $08C7, $0000  ; Explored map tiles
    dw $08C9, $0000  ; Explored map tiles
    dw $090F, $8002  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $051A  ; Screen Y position in pixels
    dw $0919, $03D3  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $0AF6, $0040  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $0AFA, $058B  ; Samus Y
    dw $CAE8, $00AC  ; Map counter
    dw $CF1E, $7F7C  ; Explored map tiles (Brinstar)
    dw $CF20, $80C7  ; Explored map tiles (Brinstar)
    dw $CF22, $3F00  ; Explored map tiles (Brinstar)
    dw $CF24, $C0FF  ; Explored map tiles (Brinstar)
    dw $D8B8, $20FF  ; Doors
    dw #$FFFF

preset_spazermap_upper_norfair_precathedral:
    dw #preset_spazermap_upper_norfair_hi_jump_boots ; Upper Norfair: Hi Jump Boots
    dw $078D, $941A  ; DDB
    dw $080F, $E000  ; Explored map tiles
    dw $0813, $8001  ; Explored map tiles
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $BFFF  ; Screen subpixel Y position
    dw $0915, $02F6  ; Screen Y position in pixels
    dw $0919, $0238  ; Layer 2 Y position
    dw $09A2, $1105  ; Equipped Items
    dw $09A4, $1105  ; Collected Items
    dw $09C2, $017B  ; Health
    dw $09C4, $018F  ; Max health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A6  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw $CAE8, $00B0  ; Map counter
    dw $D876, $0121  ; Items
    dw $D8BA, $0001  ; Doors
    dw #$FFFF

preset_spazermap_upper_norfair_cathedral:
    dw #preset_spazermap_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dw $078D, $92CA  ; DDB
    dw $079B, $A7B3  ; MDB
    dw $0807, $3C00  ; Explored map tiles
    dw $080B, $3C00  ; Explored map tiles
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0002  ; Supers
    dw $0AF6, $02A3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $00B6  ; Map counter
    dw $D8B8, $24FF  ; Doors
    dw #$FFFF

preset_spazermap_upper_norfair_bubble_mountain:
    dw #preset_spazermap_upper_norfair_cathedral ; Upper Norfair: Cathedral
    dw $078D, $929A  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $0807, $3F00  ; Explored map tiles
    dw $0809, $0080  ; Explored map tiles
    dw $080B, $3F00  ; Explored map tiles
    dw $080D, $00FC  ; Explored map tiles
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $09C2, $0171  ; Health
    dw $09CA, $0001  ; Supers
    dw $0AF6, $04B0  ; Samus X
    dw $CAE8, $00C1  ; Map counter
    dw $D8B8, $26FF  ; Doors
    dw #$FFFF

preset_spazermap_upper_norfair_bubble_mountain_climb:
    dw #preset_spazermap_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dw $078D, $959A  ; DDB
    dw $079B, $B0DD  ; MDB
    dw $0809, $0086  ; Explored map tiles
    dw $080D, $00FE  ; Explored map tiles
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0AF6, $00C7  ; Samus X
    dw $CAE8, $00C4  ; Map counter
    dw #$FFFF

preset_spazermap_upper_norfair_bat_cave:
    dw #preset_spazermap_upper_norfair_bubble_mountain_climb ; Upper Norfair: Bubble Mountain Climb
    dw $078D, $97CE  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $0805, $0003  ; Explored map tiles
    dw $0809, $0087  ; Explored map tiles
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C6, $0004  ; Missiles
    dw $0AF6, $01BC  ; Samus X
    dw $CAE8, $00C7  ; Map counter
    dw $D8BA, $0011  ; Doors
    dw #$FFFF

preset_spazermap_upper_norfair_speed_hallway_in:
    dw #preset_spazermap_upper_norfair_bat_cave ; Upper Norfair: Bat Cave
    dw $078D, $958E  ; DDB
    dw $079B, $B07A  ; MDB
    dw $0801, $8000  ; Explored map tiles
    dw $0805, $8003  ; Explored map tiles
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $0023  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0023  ; Layer 2 Y position
    dw $09C2, $018F  ; Health
    dw $09C6, $0008  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0AF6, $00B6  ; Samus X
    dw $CAE8, $00C9  ; Map counter
    dw #$FFFF

preset_spazermap_upper_norfair_speed_booster:
    dw #preset_spazermap_upper_norfair_speed_hallway_in ; Upper Norfair: Speed Hallway In
    dw $078D, $97B6  ; DDB
    dw $079B, $ACF0  ; MDB
    dw $0801, $FE00  ; Explored map tiles
    dw $0805, $8F03  ; Explored map tiles
    dw $0883, $00F8  ; Explored map tiles
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0B00  ; Screen X position in pixels
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0840  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09CA, $0002  ; Supers
    dw $0AF6, $0BAD  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $00D8  ; Map counter
    dw $D8BA, $0031  ; Doors
    dw #$FFFF

preset_spazermap_upper_norfair_single_chamber:
    dw #preset_spazermap_upper_norfair_speed_booster ; Upper Norfair: Speed Booster
    dw $078D, $97AA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $0883, $00FC  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $00FD  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $00BD  ; Layer 2 Y position
    dw $09A2, $3105  ; Equipped Items
    dw $09A4, $3105  ; Collected Items
    dw $09C2, $018A  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $0AF6, $01B3  ; Samus X
    dw $CAE8, $00D9  ; Map counter
    dw $D822, $0020  ; Events
    dw $D878, $0004  ; Items
    dw #$FFFF

preset_spazermap_upper_norfair_double_chamber:
    dw #preset_spazermap_upper_norfair_single_chamber ; Upper Norfair: Single Chamber
    dw $078D, $9606  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $0809, $8087  ; Explored map tiles
    dw $080D, $80FE  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $0104  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C3  ; Layer 2 Y position
    dw $09C2, $0171  ; Health
    dw $0AF6, $00B1  ; Samus X
    dw $CAE8, $00DB  ; Map counter
    dw $D8BA, $0071  ; Doors
    dw #$FFFF

preset_spazermap_upper_norfair_double_chamber_out:
    dw #preset_spazermap_upper_norfair_double_chamber ; Upper Norfair: Double Chamber
    dw $078D, $961E  ; DDB
    dw $079B, $ADDE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $080D, $FCFE  ; Explored map tiles
    dw $0811, $0800  ; Explored map tiles
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A6, $1005  ; Equipped Beams
    dw $09A8, $1005  ; Collected Beams
    dw $09C6, $000F  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0053  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $00E1  ; Map counter
    dw $D878, $001C  ; Items
    dw $D8BA, $00F1  ; Doors
    dw #$FFFF

preset_spazermap_upper_norfair_river_styx:
    dw #preset_spazermap_upper_norfair_double_chamber_out ; Upper Norfair: Double Chamber Out
    dw $078D, $9612  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $0811, $F800  ; Explored map tiles
    dw $0815, $8000  ; Explored map tiles
    dw $090F, $A201  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C2, $0153  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $036B  ; Samus Y
    dw $CAE8, $00E6  ; Map counter
    dw #$FFFF

preset_spazermap_upper_norfair_volcano_room:
    dw #preset_spazermap_upper_norfair_river_styx ; Upper Norfair: River Styx
    dw $078D, $95EE  ; DDB
    dw $079B, $AE07  ; MDB
    dw $0815, $F800  ; Explored map tiles
    dw $090F, $9200  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00CA  ; Health
    dw $0AF6, $03AC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $00EA  ; Map counter
    dw #$FFFF

preset_spazermap_upper_norfair_reverse_magdollite_room:
    dw #preset_spazermap_upper_norfair_volcano_room ; Upper Norfair: Volcano Room
    dw $078D, $965A  ; DDB
    dw $079B, $AE74  ; MDB
    dw $0815, $FC00  ; Explored map tiles
    dw $0819, $0400  ; Explored map tiles
    dw $081D, $3C00  ; Explored map tiles
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0022  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0022  ; Layer 2 Y position
    dw $09C2, $0073  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0152  ; Samus X
    dw $CAE8, $00F0  ; Map counter
    dw #$FFFF

preset_spazermap_upper_norfair_purple_shaft:
    dw #preset_spazermap_upper_norfair_reverse_magdollite_room ; Upper Norfair: Reverse Magdollite Room
    dw $078D, $9666  ; DDB
    dw $079B, $AEB4  ; MDB
    dw $081D, $FC01  ; Explored map tiles
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $008C  ; Health
    dw $0AF6, $0052  ; Samus X
    dw $CAE8, $00F3  ; Map counter
    dw #$FFFF

preset_spazermap_upper_norfair_bubble_mountain_corner:
    dw #preset_spazermap_upper_norfair_purple_shaft ; Upper Norfair: Purple Shaft
    dw $078D, $96C6  ; DDB
    dw $079B, $B051  ; MDB
    dw $0819, $0403  ; Explored map tiles
    dw $081D, $FC03  ; Explored map tiles
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $3C00  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09C2, $00AA  ; Health
    dw $09CA, $0004  ; Supers
    dw $0AF6, $002A  ; Samus X
    dw $CAE8, $00F6  ; Map counter
    dw #$FFFF

preset_spazermap_grapple_crocomire:
    dw #preset_spazermap_upper_norfair_bubble_mountain_corner ; Upper Norfair: Bubble Mountain Corner
    dw $078D, $974A  ; DDB
    dw $079B, $A923  ; MDB
    dw $0811, $F807  ; Explored map tiles
    dw $0815, $FC1E  ; Explored map tiles
    dw $0819, $0413  ; Explored map tiles
    dw $081D, $FC13  ; Explored map tiles
    dw $081F, $0100  ; Explored map tiles
    dw $0821, $00F0  ; Explored map tiles
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $0900  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $09C2, $00DA  ; Health
    dw $0AF6, $0CA9  ; Samus X
    dw $0AFA, $02BB  ; Samus Y
    dw $CAE8, $0104  ; Map counter
    dw $D8B8, $66FF  ; Doors
    dw #$FFFF

preset_spazermap_grapple_leaving_croc:
    dw #preset_spazermap_grapple_crocomire ; Grapple: Crocomire
    dw $078D, $93D2  ; DDB
    dw $079B, $A98D  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $0823, $0300  ; Explored map tiles
    dw $0825, $00F0  ; Explored map tiles
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0289  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $09C2, $01F3  ; Health
    dw $09C4, $01F3  ; Max health
    dw $09CA, $0003  ; Supers
    dw $0AF6, $02F9  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $CAE8, $0107  ; Map counter
    dw $D82A, $0002  ; Bosses
    dw $D876, $0131  ; Items
    dw #$FFFF

preset_spazermap_grapple_crocomire_shaft:
    dw #preset_spazermap_grapple_leaving_croc ; Grapple: Leaving Croc
    dw $078D, $943E  ; DDB
    dw $079B, $AADE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $0823, $7F00  ; Explored map tiles
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01C2  ; Health
    dw $09CA, $0002  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A5  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $010C  ; Map counter
    dw $D876, $0331  ; Items
    dw $D8BA, $00F3  ; Doors
    dw #$FFFF

preset_spazermap_grapple_cosine_missile_room:
    dw #preset_spazermap_grapple_crocomire_shaft ; Grapple: Crocomire Shaft
    dw $078D, $944A  ; DDB
    dw $079B, $AB07  ; MDB
    dw $0827, $2000  ; Explored map tiles
    dw $082B, $2000  ; Explored map tiles
    dw $082F, $2000  ; Explored map tiles
    dw $0833, $2000  ; Explored map tiles
    dw $0837, $2000  ; Explored map tiles
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $02FB  ; Screen Y position in pixels
    dw $0919, $023C  ; Layer 2 Y position
    dw $09CA, $0001  ; Supers
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $CAE8, $0111  ; Map counter
    dw $D8BA, $00F7  ; Doors
    dw #$FFFF

preset_spazermap_grapple_indiana_jones_room:
    dw #preset_spazermap_grapple_cosine_missile_room ; Grapple: Cosine Missile Room
    dw $078D, $94AA  ; DDB
    dw $0837, $3E00  ; Explored map tiles
    dw $083B, $2000  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $0919, $0317  ; Layer 2 Y position
    dw $09C2, $0179  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00A7  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw $CAE8, $0116  ; Map counter
    dw #$FFFF

preset_spazermap_grapple_grapple_beam:
    dw #preset_spazermap_grapple_indiana_jones_room ; Grapple: Indiana Jones Room
    dw $078D, $949E  ; DDB
    dw $079B, $AB8F  ; MDB
    dw $0837, $BE0F  ; Explored map tiles
    dw $083B, $A00F  ; Explored map tiles
    dw $083F, $F00F  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0010  ; Screen X position in pixels
    dw $0915, $00F6  ; Screen Y position in pixels
    dw $0917, $000C  ; Layer 2 X position
    dw $0919, $00F6  ; Layer 2 Y position
    dw $09C2, $0183  ; Health
    dw $09CE, $0004  ; Pbs
    dw $0AF6, $00B0  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $0128  ; Map counter
    dw #$FFFF

preset_spazermap_grapple_grapple_playground_1:
    dw #preset_spazermap_grapple_grapple_beam ; Grapple: Grapple Beam
    dw $078D, $94DA  ; DDB
    dw $079B, $AC2B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $0833, $2010  ; Explored map tiles
    dw $0837, $BE1F  ; Explored map tiles
    dw $083B, $A01F  ; Explored map tiles
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $7105  ; Equipped Items
    dw $09A4, $7105  ; Collected Items
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $012B  ; Map counter
    dw $D876, $1331  ; Items
    dw #$FFFF

preset_spazermap_grapple_grapple_playground_2:
    dw #preset_spazermap_grapple_grapple_playground_1 ; Grapple: Grapple Playground 1
    dw $078D, $9522  ; DDB
    dw $079B, $AC00  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $0833, $201C  ; Explored map tiles
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0AF6, $0181  ; Samus X
    dw $CAE8, $012D  ; Map counter
    dw #$FFFF

preset_spazermap_grapple_grapple_playground_final:
    dw #preset_spazermap_grapple_grapple_playground_2 ; Grapple: Grapple Playground 2
    dw $078D, $950A  ; DDB
    dw $079B, $ABD2  ; MDB
    dw $082B, $2002  ; Explored map tiles
    dw $082F, $2002  ; Explored map tiles
    dw $0833, $201E  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0915, $000C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0009  ; Layer 2 Y position
    dw $0AF6, $00A9  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $CAE8, $0130  ; Map counter
    dw #$FFFF

preset_spazermap_grapple_crocomire_farm_room:
    dw #preset_spazermap_grapple_grapple_playground_final ; Grapple: Grapple Playground Final
    dw $078D, $94C2  ; DDB
    dw $079B, $AB07  ; MDB
    dw $082B, $E003  ; Explored map tiles
    dw $082F, $E003  ; Explored map tiles
    dw $090F, $05A0  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0165  ; Health
    dw $09CA, $0000  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $002C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0136  ; Map counter
    dw #$FFFF

preset_spazermap_grapple_crocomire_cac_shaft:
    dw #preset_spazermap_grapple_crocomire_farm_room ; Grapple: Crocomire Farm Room
    dw $078D, $9432  ; DDB
    dw $079B, $A98D  ; MDB
    dw $0827, $3800  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $00DB  ; Screen X position in pixels
    dw $0913, $57FF  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09C2, $01A6  ; Health
    dw $09CA, $0003  ; Supers
    dw $0AF6, $013B  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $CAE8, $0138  ; Map counter
    dw #$FFFF

preset_spazermap_grapple_crocomire_escape:
    dw #preset_spazermap_grapple_crocomire_cac_shaft ; Grapple: Crocomire Cac Shaft
    dw $078D, $93BA  ; DDB
    dw $079B, $B192  ; MDB
    dw $081B, $0100  ; Explored map tiles
    dw $081D, $FC93  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002A  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $013A  ; Map counter
    dw $D8B8, $E6FF  ; Doors
    dw #$FFFF

preset_spazermap_grapple_business_center:
    dw #preset_spazermap_grapple_crocomire_escape ; Grapple: Crocomire Escape
    dw $078D, $93AE  ; DDB
    dw $079B, $AA0E  ; MDB
    dw $0813, $9E01  ; Explored map tiles
    dw $0817, $1F00  ; Explored map tiles
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0004  ; Screen Y position in pixels
    dw $0919, $0004  ; Layer 2 Y position
    dw $09C2, $0188  ; Health
    dw $09CA, $0004  ; Supers
    dw $0AF6, $0053  ; Samus X
    dw $CAE8, $0143  ; Map counter
    dw #$FFFF

preset_spazermap_red_brinstar_warehouse_entrance:
    dw #preset_spazermap_grapple_business_center ; Grapple: Business Center
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $07FB, $4000  ; Explored map tiles
    dw $07FF, $4000  ; Explored map tiles
    dw $0801, $0000  ; Explored map tiles
    dw $0803, $4000  ; Explored map tiles
    dw $0805, $0000  ; Explored map tiles
    dw $0807, $7800  ; Explored map tiles
    dw $0809, $0000  ; Explored map tiles
    dw $080B, $7E00  ; Explored map tiles
    dw $080D, $0000  ; Explored map tiles
    dw $080F, $4000  ; Explored map tiles
    dw $0811, $0000  ; Explored map tiles
    dw $0813, $7F00  ; Explored map tiles
    dw $0815, $00E0  ; Explored map tiles
    dw $0817, $0000  ; Explored map tiles
    dw $0819, $0020  ; Explored map tiles
    dw $081B, $0000  ; Explored map tiles
    dw $081D, $2060  ; Explored map tiles
    dw $081F, $0000  ; Explored map tiles
    dw $0821, $2060  ; Explored map tiles
    dw $0823, $0000  ; Explored map tiles
    dw $0825, $7C70  ; Explored map tiles
    dw $0827, $0000  ; Explored map tiles
    dw $0829, $0C5E  ; Explored map tiles
    dw $082B, $0000  ; Explored map tiles
    dw $082D, $8007  ; Explored map tiles
    dw $082F, $0000  ; Explored map tiles
    dw $0831, $FF01  ; Explored map tiles
    dw $0833, $0000  ; Explored map tiles
    dw $0837, $0000  ; Explored map tiles
    dw $083B, $0000  ; Explored map tiles
    dw $083F, $0000  ; Explored map tiles
    dw $0883, $0000  ; Explored map tiles
    dw $08AF, $00C0  ; Explored map tiles
    dw $08B3, $0040  ; Explored map tiles
    dw $08B7, $0040  ; Explored map tiles
    dw $08BB, $0040  ; Explored map tiles
    dw $08BF, $004E  ; Explored map tiles
    dw $08C3, $7F7C  ; Explored map tiles
    dw $08C5, $80C7  ; Explored map tiles
    dw $08C7, $7F00  ; Explored map tiles
    dw $08C9, $C0FF  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $018D  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $09D2, $0004  ; Currently selected item
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $CAE8, $0146  ; Map counter
    dw $CF56, $2000  ; Explored map tiles (Norfair)
    dw $CF5A, $2000  ; Explored map tiles (Norfair)
    dw $CF5C, $FE00  ; Explored map tiles (Norfair)
    dw $CF5E, $2000  ; Explored map tiles (Norfair)
    dw $CF60, $8F03  ; Explored map tiles (Norfair)
    dw $CF62, $3F00  ; Explored map tiles (Norfair)
    dw $CF64, $8087  ; Explored map tiles (Norfair)
    dw $CF66, $7F00  ; Explored map tiles (Norfair)
    dw $CF68, $FCFE  ; Explored map tiles (Norfair)
    dw $CF6A, $E000  ; Explored map tiles (Norfair)
    dw $CF6C, $F807  ; Explored map tiles (Norfair)
    dw $CF6E, $BE01  ; Explored map tiles (Norfair)
    dw $CF70, $FC1E  ; Explored map tiles (Norfair)
    dw $CF72, $1F00  ; Explored map tiles (Norfair)
    dw $CF74, $0413  ; Explored map tiles (Norfair)
    dw $CF76, $0100  ; Explored map tiles (Norfair)
    dw $CF78, $FC93  ; Explored map tiles (Norfair)
    dw $CF7A, $0100  ; Explored map tiles (Norfair)
    dw $CF7C, $00F0  ; Explored map tiles (Norfair)
    dw $CF7E, $7F00  ; Explored map tiles (Norfair)
    dw $CF80, $00F0  ; Explored map tiles (Norfair)
    dw $CF82, $3800  ; Explored map tiles (Norfair)
    dw $CF86, $E003  ; Explored map tiles (Norfair)
    dw $CF8A, $E003  ; Explored map tiles (Norfair)
    dw $CF8E, $201E  ; Explored map tiles (Norfair)
    dw $CF92, $BE1F  ; Explored map tiles (Norfair)
    dw $CF96, $A01F  ; Explored map tiles (Norfair)
    dw $CF9A, $F00F  ; Explored map tiles (Norfair)
    dw $CFDE, $00FC  ; Explored map tiles (Norfair)
    dw $D8B8, $F6FF  ; Doors
    dw #$FFFF

preset_spazermap_red_brinstar_red_tower_climb:
    dw #preset_spazermap_red_brinstar_warehouse_entrance ; Red Brinstar: Warehouse Entrance
    dw $078D, $904E  ; DDB
    dw $079B, $A618  ; MDB
    dw $08C3, $7FFC  ; Explored map tiles
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $09C2, $0168  ; Health
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00D2  ; Samus X
    dw $CAE8, $0147  ; Map counter
    dw #$FFFF

preset_spazermap_red_brinstar_xray_hall_in:
    dw #preset_spazermap_red_brinstar_red_tower_climb ; Red Brinstar: Red Tower Climb
    dw $078D, $91FE  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $4001  ; Screen subpixel X position
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $061C  ; Screen Y position in pixels
    dw $0919, $0495  ; Layer 2 Y position
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D8B6, $8308  ; Doors
    dw #$FFFF

preset_spazermap_red_brinstar_xray_hall_out:
    dw #preset_spazermap_red_brinstar_xray_hall_in ; Red Brinstar: X-Ray Hall In
    dw $078D, $905A  ; DDB
    dw $079B, $A2CE  ; MDB
    dw $0839, $FF01  ; Explored map tiles
    dw $083D, $0600  ; Explored map tiles
    dw $08B7, $00C0  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $010E  ; Health
    dw $09CA, $0004  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0179  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0153  ; Map counter
    dw $D8B6, $8708  ; Doors
    dw #$FFFF

preset_spazermap_red_brinstar_red_tower_up:
    dw #preset_spazermap_red_brinstar_xray_hall_out ; Red Brinstar: X-Ray Hall Out
    dw $078D, $9072  ; DDB
    dw $079B, $A293  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $083D, $6600  ; Explored map tiles
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0700  ; Layer 2 X position
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $07A4  ; Samus X
    dw $CAE8, $0155  ; Map counter
    dw #$FFFF

preset_spazermap_red_brinstar_hellway:
    dw #preset_spazermap_red_brinstar_red_tower_up ; Red Brinstar: Red Tower Up
    dw $078D, $9066  ; DDB
    dw $079B, $A253  ; MDB
    dw $089F, $0040  ; Explored map tiles
    dw $08A3, $0040  ; Explored map tiles
    dw $08A7, $0040  ; Explored map tiles
    dw $08AB, $0040  ; Explored map tiles
    dw $090F, $3FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $000F  ; Layer 2 Y position
    dw $09CE, $0004  ; Pbs
    dw $0AF6, $0091  ; Samus X
    dw $CAE8, $0159  ; Map counter
    dw #$FFFF

preset_spazermap_red_brinstar_alpha_pbs:
    dw #preset_spazermap_red_brinstar_hellway ; Red Brinstar: Hellway
    dw $078D, $908A  ; DDB
    dw $079B, $A322  ; MDB
    dw $089F, $007C  ; Explored map tiles
    dw $08A3, $0044  ; Explored map tiles
    dw $08A7, $0044  ; Explored map tiles
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $071C  ; Screen Y position in pixels
    dw $0919, $071C  ; Layer 2 Y position
    dw $09C2, $00FE  ; Health
    dw $09CA, $0003  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0045  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $CAE8, $015F  ; Map counter
    dw $D8B6, $A708  ; Doors
    dw #$FFFF

preset_spazermap_red_brinstar_caterpillar_room_up:
    dw #preset_spazermap_red_brinstar_alpha_pbs ; Red Brinstar: Alpha PBs
    dw $078D, $9096  ; DDB
    dw $079B, $A3AE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $08A7, $007C  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00F4  ; Health
    dw $09CE, $0008  ; Pbs
    dw $09D0, $000A  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02B0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0162  ; Map counter
    dw $D874, $0904  ; Items
    dw #$FFFF

preset_spazermap_red_brinstar_beta_pbs:
    dw #preset_spazermap_red_brinstar_caterpillar_room_up ; Red Brinstar: Caterpillar Room Up
    dw $078D, $926A  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $0897, $0004  ; Explored map tiles
    dw $089B, $0006  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $02F1  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $02F1  ; Layer 2 Y position
    dw $09CA, $0004  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0060  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $CAE8, $0165  ; Map counter
    dw $D8B6, $AF08  ; Doors
    dw #$FFFF

preset_spazermap_red_brinstar_crateria_kihunters_room:
    dw #preset_spazermap_red_brinstar_beta_pbs ; Red Brinstar: Beta PBs
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $07FB, $0000  ; Explored map tiles
    dw $07FD, $1000  ; Explored map tiles
    dw $07FF, $0000  ; Explored map tiles
    dw $0801, $1000  ; Explored map tiles
    dw $0803, $0000  ; Explored map tiles
    dw $0805, $1000  ; Explored map tiles
    dw $0807, $0000  ; Explored map tiles
    dw $0809, $1000  ; Explored map tiles
    dw $080B, $0100  ; Explored map tiles
    dw $080D, $F0FF  ; Explored map tiles
    dw $080F, $0700  ; Explored map tiles
    dw $0811, $0094  ; Explored map tiles
    dw $0813, $1E00  ; Explored map tiles
    dw $0815, $C017  ; Explored map tiles
    dw $0817, $1000  ; Explored map tiles
    dw $0819, $0010  ; Explored map tiles
    dw $081B, $F003  ; Explored map tiles
    dw $081D, $0010  ; Explored map tiles
    dw $0821, $0010  ; Explored map tiles
    dw $0825, $0010  ; Explored map tiles
    dw $0829, $0010  ; Explored map tiles
    dw $082D, $0010  ; Explored map tiles
    dw $0831, $0010  ; Explored map tiles
    dw $0835, $0010  ; Explored map tiles
    dw $0839, $0010  ; Explored map tiles
    dw $083D, $0010  ; Explored map tiles
    dw $0841, $001F  ; Explored map tiles
    dw $0897, $0020  ; Explored map tiles
    dw $089B, $0000  ; Explored map tiles
    dw $089F, $0000  ; Explored map tiles
    dw $08A3, $0000  ; Explored map tiles
    dw $08A7, $0000  ; Explored map tiles
    dw $08AB, $0000  ; Explored map tiles
    dw $08AF, $0000  ; Explored map tiles
    dw $08B3, $0000  ; Explored map tiles
    dw $08B7, $0000  ; Explored map tiles
    dw $08BB, $0000  ; Explored map tiles
    dw $08BF, $0000  ; Explored map tiles
    dw $08C3, $0000  ; Explored map tiles
    dw $08C5, $0000  ; Explored map tiles
    dw $08C7, $0000  ; Explored map tiles
    dw $08C9, $0000  ; Explored map tiles
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00D6  ; Health
    dw $09CE, $0007  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $00A8  ; Samus Y
    dw $CAE8, $016C  ; Map counter
    dw $CE94, $FF01  ; Explored map tiles (Brinstar)
    dw $CE98, $6600  ; Explored map tiles (Brinstar)
    dw $CEE6, $0004  ; Explored map tiles (Brinstar)
    dw $CEEA, $0004  ; Explored map tiles (Brinstar)
    dw $CEEE, $0004  ; Explored map tiles (Brinstar)
    dw $CEF2, $001C  ; Explored map tiles (Brinstar)
    dw $CEF6, $0016  ; Explored map tiles (Brinstar)
    dw $CEFA, $007C  ; Explored map tiles (Brinstar)
    dw $CEFE, $0044  ; Explored map tiles (Brinstar)
    dw $CF02, $007C  ; Explored map tiles (Brinstar)
    dw $CF06, $0040  ; Explored map tiles (Brinstar)
    dw $CF12, $00C0  ; Explored map tiles (Brinstar)
    dw $CF1E, $7FFC  ; Explored map tiles (Brinstar)
    dw $CF22, $7F00  ; Explored map tiles (Brinstar)
    dw $D8B6, $EF08  ; Doors
    dw #$FFFF

preset_spazermap_wrecked_ship_ws_shaft_down:
    dw #preset_spazermap_red_brinstar_crateria_kihunters_room ; Red Brinstar: Crateria Kihunters Room
    dw $078D, $89D6  ; DDB
    dw $079B, $CA08  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $07FD, $0000  ; Explored map tiles
    dw $0801, $0000  ; Explored map tiles
    dw $0805, $0000  ; Explored map tiles
    dw $0809, $0000  ; Explored map tiles
    dw $080B, $0000  ; Explored map tiles
    dw $080D, $0000  ; Explored map tiles
    dw $080F, $0000  ; Explored map tiles
    dw $0811, $0000  ; Explored map tiles
    dw $0813, $0000  ; Explored map tiles
    dw $0815, $0000  ; Explored map tiles
    dw $0817, $0000  ; Explored map tiles
    dw $0819, $0000  ; Explored map tiles
    dw $081B, $0000  ; Explored map tiles
    dw $081D, $0000  ; Explored map tiles
    dw $0821, $0000  ; Explored map tiles
    dw $0825, $0000  ; Explored map tiles
    dw $0829, $0000  ; Explored map tiles
    dw $082D, $0000  ; Explored map tiles
    dw $0831, $0000  ; Explored map tiles
    dw $0833, $0F00  ; Explored map tiles
    dw $0835, $0000  ; Explored map tiles
    dw $0839, $0000  ; Explored map tiles
    dw $083D, $0000  ; Explored map tiles
    dw $0841, $0000  ; Explored map tiles
    dw $0897, $0000  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $02FD  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0917, $023D  ; Layer 2 X position
    dw $09C2, $0062  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09CE, $0005  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $035D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0180  ; Map counter
    dw $CDE6, $FC3F  ; Explored map tiles (Crateria)
    dw $CDEA, $002C  ; Explored map tiles (Crateria)
    dw $CDEE, $0020  ; Explored map tiles (Crateria)
    dw $CDF2, $0020  ; Explored map tiles (Crateria)
    dw $D8B0, $3000  ; Doors
    dw $D8B2, $2C01  ; Doors
    dw #$FFFF

preset_spazermap_wrecked_ship_basement:
    dw #preset_spazermap_wrecked_ship_ws_shaft_down ; Wrecked Ship: WS Shaft Down
    dw $078D, $A318  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $0835, $00C0  ; Explored map tiles
    dw $0839, $0080  ; Explored map tiles
    dw $083B, $0F00  ; Explored map tiles
    dw $083D, $0080  ; Explored map tiles
    dw $0841, $0080  ; Explored map tiles
    dw $0845, $0080  ; Explored map tiles
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $071F  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0557  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $04A7  ; Samus X
    dw $0AFA, $07BB  ; Samus Y
    dw $CAE8, $018A  ; Map counter
    dw $D8C0, $0010  ; Doors
    dw #$FFFF

preset_spazermap_wrecked_ship_basement_speedball:
    dw #preset_spazermap_wrecked_ship_basement ; Wrecked Ship: Basement
    dw $078D, $A2A0  ; DDB
    dw $079B, $CCCB  ; MDB
    dw $0847, $0700  ; Explored map tiles
    dw $0849, $0080  ; Explored map tiles
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $018E  ; Map counter
    dw #$FFFF

preset_spazermap_wrecked_ship_phantoon:
    dw #preset_spazermap_wrecked_ship_basement_speedball ; Wrecked Ship: Basement Speedball
    dw $078D, $A2B8  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $0849, $00E0  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $09CA, $0002  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $04D4  ; Samus X
    dw $CAE8, $0190  ; Map counter
    dw $D8C0, $0030  ; Doors
    dw #$FFFF

preset_spazermap_wrecked_ship_right_supers:
    dw #preset_spazermap_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dw $078D, $A2C4  ; DDB
    dw $07F5, $0006  ; Music Track
    dw $0849, $00F0  ; Explored map tiles
    dw $0911, $0217  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0917, $0191  ; Layer 2 X position
    dw $09C2, $00BC  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09CE, $0008  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $02B7  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D82A, $0102  ; Bosses
    dw $D8C0, $0070  ; Doors
    dw #$FFFF

preset_spazermap_wrecked_ship_main_shaft_climb:
    dw #preset_spazermap_wrecked_ship_right_supers ; Wrecked Ship: Right Supers
    dw $078D, $A210  ; DDB
    dw $079B, $CDA8  ; MDB
    dw $083F, $0100  ; Explored map tiles
    dw $0841, $00FC  ; Explored map tiles
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $00A5  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09CA, $000E  ; Supers
    dw $09CC, $000F  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DA  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0196  ; Map counter
    dw $D880, $0060  ; Items
    dw $D8C0, $0074  ; Doors
    dw #$FFFF

preset_spazermap_wrecked_ship_attic:
    dw #preset_spazermap_wrecked_ship_main_shaft_climb ; Wrecked Ship: Main Shaft Climb
    dw $078D, $A2E8  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $0829, $0080  ; Explored map tiles
    dw $082D, $0080  ; Explored map tiles
    dw $0831, $0080  ; Explored map tiles
    dw $090F, $DC00  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $09C2, $00B9  ; Health
    dw $09C6, $000D  ; Missiles
    dw $0AF6, $0443  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $CAE8, $0199  ; Map counter
    dw #$FFFF

preset_spazermap_wrecked_ship_robots_of_pain:
    dw #preset_spazermap_wrecked_ship_attic ; Wrecked Ship: Attic
    dw $078D, $A228  ; DDB
    dw $079B, $CA52  ; MDB
    dw $0823, $0F00  ; Explored map tiles
    dw $0825, $00E0  ; Explored map tiles
    dw $090F, $9800  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $8FFF  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $001E  ; Layer 2 Y position
    dw $09C2, $00CB  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $0AF6, $06D0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $01A0  ; Map counter
    dw $D8C0, $0374  ; Doors
    dw #$FFFF

preset_spazermap_wrecked_ship_west_ocean:
    dw #preset_spazermap_wrecked_ship_robots_of_pain ; Wrecked Ship: Robots of Pain
    dw $078D, $A1EC  ; DDB
    dw $0825, $00FC  ; Explored map tiles
    dw $090F, $1401  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $77FF  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $00B2  ; Health
    dw $09C6, $0007  ; Missiles
    dw $09CA, $0008  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003C  ; Samus X
    dw $CAE8, $01A3  ; Map counter
    dw #$FFFF

preset_spazermap_wrecked_ship_bowling_area:
    dw #preset_spazermap_wrecked_ship_west_ocean ; Wrecked Ship: West Ocean
    dw $078D, $89E2  ; DDB
    dw $079B, $9461  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $07FD, $1000  ; Explored map tiles
    dw $0801, $1000  ; Explored map tiles
    dw $0805, $1000  ; Explored map tiles
    dw $0809, $1000  ; Explored map tiles
    dw $080B, $0100  ; Explored map tiles
    dw $080D, $F0FF  ; Explored map tiles
    dw $080F, $0700  ; Explored map tiles
    dw $0811, $0094  ; Explored map tiles
    dw $0813, $1E00  ; Explored map tiles
    dw $0815, $C017  ; Explored map tiles
    dw $0817, $1000  ; Explored map tiles
    dw $0819, $0010  ; Explored map tiles
    dw $081B, $F003  ; Explored map tiles
    dw $081D, $0010  ; Explored map tiles
    dw $0821, $0010  ; Explored map tiles
    dw $0823, $0000  ; Explored map tiles
    dw $0825, $0010  ; Explored map tiles
    dw $0829, $0010  ; Explored map tiles
    dw $082D, $0010  ; Explored map tiles
    dw $0831, $0010  ; Explored map tiles
    dw $0833, $0000  ; Explored map tiles
    dw $0835, $0010  ; Explored map tiles
    dw $0839, $0010  ; Explored map tiles
    dw $083B, $0000  ; Explored map tiles
    dw $083D, $0010  ; Explored map tiles
    dw $083F, $0000  ; Explored map tiles
    dw $0841, $001F  ; Explored map tiles
    dw $0845, $0000  ; Explored map tiles
    dw $0847, $0000  ; Explored map tiles
    dw $0849, $0000  ; Explored map tiles
    dw $087B, $FC03  ; Explored map tiles
    dw $087F, $FC03  ; Explored map tiles
    dw $0883, $E003  ; Explored map tiles
    dw $088B, $FC3F  ; Explored map tiles
    dw $088F, $002C  ; Explored map tiles
    dw $0893, $0020  ; Explored map tiles
    dw $0897, $0020  ; Explored map tiles
    dw $090F, $D400  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00AD  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $017B  ; Samus X
    dw $0AFA, $0090  ; Samus Y
    dw $CAE8, $01BC  ; Map counter
    dw $CDD6, $0C00  ; Explored map tiles (Crateria)
    dw $CDDA, $0C00  ; Explored map tiles (Crateria)
    dw $D07E, $0F00  ; Explored map tiles (Wrecked Ship)
    dw $D080, $00FC  ; Explored map tiles (Wrecked Ship)
    dw $D082, $0F00  ; Explored map tiles (Wrecked Ship)
    dw $D084, $0080  ; Explored map tiles (Wrecked Ship)
    dw $D088, $0080  ; Explored map tiles (Wrecked Ship)
    dw $D08C, $0080  ; Explored map tiles (Wrecked Ship)
    dw $D08E, $0F00  ; Explored map tiles (Wrecked Ship)
    dw $D090, $00C0  ; Explored map tiles (Wrecked Ship)
    dw $D094, $0080  ; Explored map tiles (Wrecked Ship)
    dw $D096, $0F00  ; Explored map tiles (Wrecked Ship)
    dw $D098, $0080  ; Explored map tiles (Wrecked Ship)
    dw $D09A, $0100  ; Explored map tiles (Wrecked Ship)
    dw $D09C, $00FC  ; Explored map tiles (Wrecked Ship)
    dw $D0A0, $0080  ; Explored map tiles (Wrecked Ship)
    dw $D0A2, $0700  ; Explored map tiles (Wrecked Ship)
    dw $D0A4, $00F0  ; Explored map tiles (Wrecked Ship)
    dw #$FFFF

preset_spazermap_wrecked_ship_leaving_gravity:
    dw #preset_spazermap_wrecked_ship_bowling_area ; Wrecked Ship: Bowling Area
    dw $078D, $A1A4  ; DDB
    dw $079B, $CE40  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $07FD, $0000  ; Explored map tiles
    dw $0801, $0000  ; Explored map tiles
    dw $0805, $0000  ; Explored map tiles
    dw $0809, $0000  ; Explored map tiles
    dw $080B, $0000  ; Explored map tiles
    dw $080D, $0000  ; Explored map tiles
    dw $080F, $0000  ; Explored map tiles
    dw $0811, $0000  ; Explored map tiles
    dw $0813, $0000  ; Explored map tiles
    dw $0815, $0000  ; Explored map tiles
    dw $0817, $0000  ; Explored map tiles
    dw $0819, $0000  ; Explored map tiles
    dw $081B, $0000  ; Explored map tiles
    dw $081D, $0000  ; Explored map tiles
    dw $0821, $0000  ; Explored map tiles
    dw $0823, $0F00  ; Explored map tiles
    dw $0825, $00FC  ; Explored map tiles
    dw $0827, $0F00  ; Explored map tiles
    dw $0829, $0080  ; Explored map tiles
    dw $082B, $3F00  ; Explored map tiles
    dw $082D, $0080  ; Explored map tiles
    dw $082F, $3F00  ; Explored map tiles
    dw $0831, $0080  ; Explored map tiles
    dw $0833, $0F00  ; Explored map tiles
    dw $0835, $00C0  ; Explored map tiles
    dw $0839, $0080  ; Explored map tiles
    dw $083B, $0F00  ; Explored map tiles
    dw $083D, $0080  ; Explored map tiles
    dw $083F, $0100  ; Explored map tiles
    dw $0841, $00FC  ; Explored map tiles
    dw $0845, $0080  ; Explored map tiles
    dw $0847, $0700  ; Explored map tiles
    dw $0849, $00F0  ; Explored map tiles
    dw $087B, $0000  ; Explored map tiles
    dw $087F, $0000  ; Explored map tiles
    dw $0883, $0000  ; Explored map tiles
    dw $088B, $0000  ; Explored map tiles
    dw $088F, $0000  ; Explored map tiles
    dw $0893, $0000  ; Explored map tiles
    dw $0897, $0000  ; Explored map tiles
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09A2, $7125  ; Equipped Items
    dw $09A4, $7125  ; Collected Items
    dw $09C2, $0055  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0078  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $CAE8, $01C9  ; Map counter
    dw $CDD6, $FC03  ; Explored map tiles (Crateria)
    dw $CDDA, $FC03  ; Explored map tiles (Crateria)
    dw $CDDE, $F003  ; Explored map tiles (Crateria)
    dw $D880, $00E0  ; Items
    dw #$FFFF

preset_spazermap_wrecked_ship_sponge_bath:
    dw #preset_spazermap_wrecked_ship_leaving_gravity ; Wrecked Ship: Leaving Gravity
    dw $078D, $A1BC  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0445  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0333  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0487  ; Samus X
    dw $0AFA, $04B4  ; Samus Y
    dw $CAE8, $01D7  ; Map counter
    dw $CDE2, $F003  ; Explored map tiles (Crateria)
    dw $CDEA, $FC2F  ; Explored map tiles (Crateria)
    dw $D086, $3F00  ; Explored map tiles (Wrecked Ship)
    dw $D08A, $3F00  ; Explored map tiles (Wrecked Ship)
    dw $D8C0, $037C  ; Doors
    dw #$FFFF

preset_spazermap_wrecked_ship_electric_death_room:
    dw #preset_spazermap_wrecked_ship_sponge_bath ; Wrecked Ship: Sponge Bath
    dw $078D, $A2DC  ; DDB
    dw $079B, $CB8B  ; MDB
    dw $0839, $00F8  ; Explored map tiles
    dw $090F, $9FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0014  ; Health
    dw $09C6, $0004  ; Missiles
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $CAE8, $01DB  ; Map counter
    dw #$FFFF

preset_spazermap_wrecked_ship_wrecked_ship_etank:
    dw #preset_spazermap_wrecked_ship_electric_death_room ; Wrecked Ship: Electric Death Room
    dw $078D, $A258  ; DDB
    dw $079B, $CBD5  ; MDB
    dw $0831, $0084  ; Explored map tiles
    dw $0835, $00C4  ; Explored map tiles
    dw $0839, $00FC  ; Explored map tiles
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09C2, $000D  ; Health
    dw $09CA, $0007  ; Supers
    dw $09D2, $0004  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $01DE  ; Map counter
    dw $D8C0, $0B7C  ; Doors
    dw #$FFFF

preset_spazermap_forgotten_highway_east_ocean:
    dw #preset_spazermap_wrecked_ship_wrecked_ship_etank ; Wrecked Ship: Wrecked Ship E-Tank
    dw $078D, $A288  ; DDB
    dw $0831, $00BC  ; Explored map tiles
    dw $0835, $00FC  ; Explored map tiles
    dw $090F, $F000  ; Screen subpixel X position
    dw $0915, $011B  ; Screen Y position in pixels
    dw $0919, $00D4  ; Layer 2 Y position
    dw $09C2, $0253  ; Health
    dw $09C4, $0257  ; Max health
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B1  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $01E4  ; Map counter
    dw $D880, $00F4  ; Items
    dw #$FFFF

preset_spazermap_forgotten_highway_kago_room:
    dw #preset_spazermap_forgotten_highway_east_ocean ; Forgotten Highway: East Ocean
    dw $078D, $A264  ; DDB
    dw $079B, $94FD  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $07FD, $1000  ; Explored map tiles
    dw $0801, $1000  ; Explored map tiles
    dw $0805, $1000  ; Explored map tiles
    dw $0809, $1000  ; Explored map tiles
    dw $080B, $0100  ; Explored map tiles
    dw $080D, $F0FF  ; Explored map tiles
    dw $080F, $0700  ; Explored map tiles
    dw $0811, $0094  ; Explored map tiles
    dw $0813, $1E00  ; Explored map tiles
    dw $0815, $C017  ; Explored map tiles
    dw $0817, $1000  ; Explored map tiles
    dw $0819, $0010  ; Explored map tiles
    dw $081B, $F003  ; Explored map tiles
    dw $081D, $0010  ; Explored map tiles
    dw $0821, $0010  ; Explored map tiles
    dw $0823, $0000  ; Explored map tiles
    dw $0825, $0010  ; Explored map tiles
    dw $0827, $0000  ; Explored map tiles
    dw $0829, $0010  ; Explored map tiles
    dw $082B, $0000  ; Explored map tiles
    dw $082D, $0010  ; Explored map tiles
    dw $082F, $0000  ; Explored map tiles
    dw $0831, $0010  ; Explored map tiles
    dw $0833, $0000  ; Explored map tiles
    dw $0835, $0010  ; Explored map tiles
    dw $0839, $0010  ; Explored map tiles
    dw $083B, $0000  ; Explored map tiles
    dw $083D, $0010  ; Explored map tiles
    dw $083F, $0000  ; Explored map tiles
    dw $0841, $001F  ; Explored map tiles
    dw $0845, $0000  ; Explored map tiles
    dw $0847, $0000  ; Explored map tiles
    dw $0849, $0000  ; Explored map tiles
    dw $087B, $FC03  ; Explored map tiles
    dw $087F, $FC03  ; Explored map tiles
    dw $0883, $F003  ; Explored map tiles
    dw $0887, $F003  ; Explored map tiles
    dw $088B, $FC3F  ; Explored map tiles
    dw $088D, $007F  ; Explored map tiles
    dw $088F, $FC2F  ; Explored map tiles
    dw $0891, $007F  ; Explored map tiles
    dw $0893, $0020  ; Explored map tiles
    dw $0897, $0020  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $041A  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $022B  ; Health
    dw $09C6, $0003  ; Missiles
    dw $09CA, $0008  ; Supers
    dw $0AF6, $06A6  ; Samus X
    dw $0AFA, $049B  ; Samus Y
    dw $CAE8, $01F2  ; Map counter
    dw $D08C, $00BC  ; Explored map tiles (Wrecked Ship)
    dw $D090, $00FC  ; Explored map tiles (Wrecked Ship)
    dw $D094, $00FC  ; Explored map tiles (Wrecked Ship)
    dw #$FFFF

preset_spazermap_forgotten_highway_crab_maze:
    dw #preset_spazermap_forgotten_highway_kago_room ; Forgotten Highway: Kago Room
    dw $078D, $8A72  ; DDB
    dw $079B, $9552  ; MDB
    dw $088D, $807F  ; Explored map tiles
    dw $0891, $807F  ; Explored map tiles
    dw $0895, $8000  ; Explored map tiles
    dw $0899, $8000  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0257  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00A9  ; Samus X
    dw $0AFA, $03BB  ; Samus Y
    dw $CAE8, $01F6  ; Map counter
    dw #$FFFF

preset_spazermap_forgotten_highway_maridia_elevator:
    dw #preset_spazermap_forgotten_highway_crab_maze ; Forgotten Highway: Crab Maze
    dw $078D, $8ABA  ; DDB
    dw $079B, $94CC  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $089D, $8007  ; Explored map tiles
    dw $08A1, $800F  ; Explored map tiles
    dw $08A5, $0008  ; Explored map tiles
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0082  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $CAE8, $0200  ; Map counter
    dw $D8B0, $B000  ; Doors
    dw #$FFFF

preset_spazermap_forgotten_highway_pancakes_from_hell:
    dw #preset_spazermap_forgotten_highway_maridia_elevator ; Forgotten Highway: Maridia Elevator
    dw $078D, $A5F4  ; DDB
    dw $079B, $D30B  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $07FD, $0000  ; Explored map tiles
    dw $0801, $0000  ; Explored map tiles
    dw $0805, $0000  ; Explored map tiles
    dw $0809, $0000  ; Explored map tiles
    dw $080B, $0000  ; Explored map tiles
    dw $080D, $0000  ; Explored map tiles
    dw $080F, $0000  ; Explored map tiles
    dw $0811, $0000  ; Explored map tiles
    dw $0813, $0000  ; Explored map tiles
    dw $0815, $0000  ; Explored map tiles
    dw $0817, $0000  ; Explored map tiles
    dw $0819, $0000  ; Explored map tiles
    dw $081B, $0000  ; Explored map tiles
    dw $081D, $0000  ; Explored map tiles
    dw $0821, $0000  ; Explored map tiles
    dw $0825, $0000  ; Explored map tiles
    dw $0829, $0000  ; Explored map tiles
    dw $082D, $0000  ; Explored map tiles
    dw $0831, $0000  ; Explored map tiles
    dw $0835, $0000  ; Explored map tiles
    dw $0839, $0000  ; Explored map tiles
    dw $083D, $0000  ; Explored map tiles
    dw $0841, $0000  ; Explored map tiles
    dw $0843, $3800  ; Explored map tiles
    dw $087B, $0020  ; Explored map tiles
    dw $087F, $0020  ; Explored map tiles
    dw $0883, $0020  ; Explored map tiles
    dw $0887, $0020  ; Explored map tiles
    dw $088B, $0030  ; Explored map tiles
    dw $088D, $0000  ; Explored map tiles
    dw $088F, $0020  ; Explored map tiles
    dw $0891, $0000  ; Explored map tiles
    dw $0893, $0000  ; Explored map tiles
    dw $0895, $0000  ; Explored map tiles
    dw $0897, $0000  ; Explored map tiles
    dw $0899, $0000  ; Explored map tiles
    dw $089D, $0000  ; Explored map tiles
    dw $08A1, $0000  ; Explored map tiles
    dw $08A5, $0000  ; Explored map tiles
    dw $090F, $E001  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0500  ; Screen Y position in pixels
    dw $0919, $03C0  ; Layer 2 Y position
    dw $09A2, $7124  ; Equipped Items
    dw $09A6, $1001  ; Equipped Beams
    dw $09C2, $022A  ; Health
    dw $09CA, $0007  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $CAE8, $0207  ; Map counter
    dw $CDE8, $807F  ; Explored map tiles (Crateria)
    dw $CDEC, $807F  ; Explored map tiles (Crateria)
    dw $CDF0, $8000  ; Explored map tiles (Crateria)
    dw $CDF4, $8000  ; Explored map tiles (Crateria)
    dw $CDF8, $8007  ; Explored map tiles (Crateria)
    dw $CDFC, $800F  ; Explored map tiles (Crateria)
    dw $CE00, $0008  ; Explored map tiles (Crateria)
    dw $D8C2, $0004  ; Doors
    dw #$FFFF

preset_spazermap_forgotten_highway_plasma_spark_room:
    dw #preset_spazermap_forgotten_highway_pancakes_from_hell ; Forgotten Highway: Pancakes From Hell
    dw $078D, $A8A0  ; DDB
    dw $079B, $D5EC  ; MDB
    dw $0811, $3F00  ; Explored map tiles
    dw $0815, $2000  ; Explored map tiles
    dw $0819, $2000  ; Explored map tiles
    dw $088F, $00E0  ; Explored map tiles
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $021B  ; Health
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AFA, $00AB  ; Samus Y
    dw $CAE8, $0211  ; Map counter
    dw #$FFFF

preset_spazermap_forgotten_highway_west_sand_hall:
    dw #preset_spazermap_forgotten_highway_plasma_spark_room ; Forgotten Highway: Plasma Spark Room
    dw $078D, $A600  ; DDB
    dw $079B, $D48E  ; MDB
    dw $080D, $0003  ; Explored map tiles
    dw $0811, $3F03  ; Explored map tiles
    dw $0815, $2003  ; Explored map tiles
    dw $0819, $E003  ; Explored map tiles
    dw $081D, $0002  ; Explored map tiles
    dw $0821, $0002  ; Explored map tiles
    dw $0825, $0002  ; Explored map tiles
    dw $0829, $0002  ; Explored map tiles
    dw $082D, $0002  ; Explored map tiles
    dw $0831, $0002  ; Explored map tiles
    dw $0835, $0002  ; Explored map tiles
    dw $0839, $0002  ; Explored map tiles
    dw $083D, $0002  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $011A  ; Screen Y position in pixels
    dw $0919, $00D3  ; Layer 2 Y position
    dw $09C6, $0005  ; Missiles
    dw $09CA, $0006  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0049  ; Samus position/state
    dw $0A1E, $1008  ; More position/state
    dw $0AF6, $00D4  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $0224  ; Map counter
    dw $D8C2, $0014  ; Doors
    dw #$FFFF

preset_spazermap_forgotten_highway_crab_ggg:
    dw #preset_spazermap_forgotten_highway_west_sand_hall ; Forgotten Highway: West Sand Hall
    dw $078D, $A528  ; DDB
    dw $079B, $D21C  ; MDB
    dw $083D, $00FE  ; Explored map tiles
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01D2  ; Health
    dw $09D2, $0004  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0038  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $022A  ; Map counter
    dw #$FFFF

preset_spazermap_space_jump_main_street:
    dw #preset_spazermap_forgotten_highway_crab_ggg ; Forgotten Highway: Crab GGG
    dw $078D, $A4F8  ; DDB
    dw $079B, $D08A  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $083B, $0F00  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0055  ; Screen X position in pixels
    dw $0913, $37FF  ; Screen subpixel Y position
    dw $0917, $003F  ; Layer 2 X position
    dw $09C2, $0196  ; Health
    dw $09CA, $0005  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $00E1  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $CAE8, $022E  ; Map counter
    dw #$FFFF

preset_spazermap_space_jump_mama_turtle:
    dw #preset_spazermap_space_jump_main_street ; Space Jump: Main Street
    dw $078D, $A3B4  ; DDB
    dw $079B, $D017  ; MDB
    dw $082F, $0600  ; Explored map tiles
    dw $0833, $0600  ; Explored map tiles
    dw $0837, $1E00  ; Explored map tiles
    dw $083B, $1F00  ; Explored map tiles
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $020A  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0187  ; Layer 2 Y position
    dw $09C2, $0178  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01E1  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $CAE8, $0237  ; Map counter
    dw #$FFFF

preset_spazermap_space_jump_leaving_mama_turtle:
    dw #preset_spazermap_space_jump_mama_turtle ; Space Jump: Mama Turtle
    dw $078D, $A3E4  ; DDB
    dw $079B, $D055  ; MDB
    dw $082D, $0032  ; Explored map tiles
    dw $0831, $0032  ; Explored map tiles
    dw $0835, $0032  ; Explored map tiles
    dw $0837, $1F00  ; Explored map tiles
    dw $0839, $00F2  ; Explored map tiles
    dw $090F, $17F4  ; Screen subpixel X position
    dw $0911, $00F4  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $030A  ; Screen Y position in pixels
    dw $0917, $00F4  ; Layer 2 X position
    dw $0919, $0247  ; Layer 2 Y position
    dw $09C2, $0140  ; Health
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $012E  ; Samus X
    dw $0AFA, $037B  ; Samus Y
    dw $CAE8, $0242  ; Map counter
    dw $D8C0, $4B7C  ; Doors
    dw #$FFFF

preset_spazermap_space_jump_everest_post_fish_tank:
    dw #preset_spazermap_space_jump_leaving_mama_turtle ; Space Jump: Leaving Mama Turtle
    dw $078D, $A408  ; DDB
    dw $079B, $D017  ; MDB
    dw $082F, $0700  ; Explored map tiles
    dw $0831, $00B2  ; Explored map tiles
    dw $0833, $0700  ; Explored map tiles
    dw $0835, $00B2  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $02F0  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0234  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0377  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $CAE8, $0246  ; Map counter
    dw #$FFFF

preset_spazermap_space_jump_everest_post_crab_supers:
    dw #preset_spazermap_space_jump_everest_post_fish_tank ; Space Jump: Everest Post Fish Tank
    dw $078D, $A45C  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $0827, $1D00  ; Explored map tiles
    dw $0829, $0082  ; Explored map tiles
    dw $082B, $0700  ; Explored map tiles
    dw $082D, $00B2  ; Explored map tiles
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0136  ; Screen X position in pixels
    dw $0913, $93FF  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $00E8  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $01D6  ; Samus X
    dw $0AFA, $028F  ; Samus Y
    dw $CAE8, $024F  ; Map counter
    dw #$FFFF

preset_spazermap_space_jump_beach:
    dw #preset_spazermap_space_jump_everest_post_crab_supers ; Space Jump: Everest Post Crab Supers
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $0819, $E023  ; Explored map tiles
    dw $081D, $0022  ; Explored map tiles
    dw $081F, $0100  ; Explored map tiles
    dw $0821, $00E2  ; Explored map tiles
    dw $0823, $0100  ; Explored map tiles
    dw $0825, $00C2  ; Explored map tiles
    dw $0827, $1F00  ; Explored map tiles
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C801  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $010D  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0083  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw $CAE8, $0259  ; Map counter
    dw #$FFFF

preset_spazermap_space_jump_swiss_cheese_room:
    dw #preset_spazermap_space_jump_beach ; Space Jump: Beach
    dw $078D, $A4BC  ; DDB
    dw $079B, $D1DD  ; MDB
    dw $0811, $3F23  ; Explored map tiles
    dw $0815, $203B  ; Explored map tiles
    dw $090F, $EC80  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0102  ; Screen Y position in pixels
    dw $0919, $0102  ; Layer 2 Y position
    dw $09C2, $00F9  ; Health
    dw $0AF6, $0071  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $025D  ; Map counter
    dw #$FFFF

preset_spazermap_space_jump_swiss_cheese_revisit:
    dw #preset_spazermap_space_jump_swiss_cheese_room ; Space Jump: Swiss Cheese Room
    dw $078D, $A498  ; DDB
    dw $079B, $D13B  ; MDB
    dw $080B, $0E00  ; Explored map tiles
    dw $080F, $0B00  ; Explored map tiles
    dw $0811, $3FE3  ; Explored map tiles
    dw $0813, $0800  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0050  ; Screen X position in pixels
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0022  ; Screen Y position in pixels
    dw $0917, $003C  ; Layer 2 X position
    dw $0919, $0022  ; Layer 2 Y position
    dw $09C2, $00FE  ; Health
    dw $09C6, $0004  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0266  ; Map counter
    dw $D880, $10F4  ; Items
    dw #$FFFF

preset_spazermap_space_jump_beach_revisit:
    dw #preset_spazermap_space_jump_swiss_cheese_revisit ; Space Jump: Swiss Cheese Revisit
    dw $078D, $A48C  ; DDB
    dw $079B, $D16D  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $00EF  ; Health
    dw $0AF6, $03A2  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_spazermap_space_jump_crab_shaft_down:
    dw #preset_spazermap_space_jump_beach_revisit ; Space Jump: Beach Revisit
    dw $078D, $A4A4  ; DDB
    dw $079B, $D1DD  ; MDB
    dw $080D, $003F  ; Explored map tiles
    dw $0811, $3FFF  ; Explored map tiles
    dw $090F, $2C00  ; Screen subpixel X position
    dw $0911, $000E  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $000A  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $09CA, $000B  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0AF6, $00AB  ; Samus X
    dw $0AFA, $02B0  ; Samus Y
    dw $CAE8, $026D  ; Map counter
    dw #$FFFF

preset_spazermap_space_jump_aqueduct_post_save:
    dw #preset_spazermap_space_jump_crab_shaft_down ; Space Jump: Crab Shaft Down
    dw $078D, $A744  ; DDB
    dw $079B, $D765  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $0825, $00FA  ; Explored map tiles
    dw $0829, $009A  ; Explored map tiles
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0009  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0AF6, $00CF  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0272  ; Map counter
    dw $D8C0, $CB7C  ; Doors
    dw $D8C2, $0054  ; Doors
    dw #$FFFF

preset_spazermap_space_jump_prebotwoon:
    dw #preset_spazermap_space_jump_aqueduct_post_save ; Space Jump: Aqueduct (Post Save)
    dw $078D, $A828  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $0821, $00EE  ; Explored map tiles
    dw $0825, $00FE  ; Explored map tiles
    dw $0829, $009E  ; Explored map tiles
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $6400  ; Screen subpixel Y position
    dw $09D2, $0003  ; Currently selected item
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $008D  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $CAE8, $0276  ; Map counter
    dw #$FFFF

preset_spazermap_space_jump_botwoon:
    dw #preset_spazermap_space_jump_prebotwoon ; Space Jump: Pre-Botwoon
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $081D, $002F  ; Explored map tiles
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $DFFF  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0014  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03B9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0279  ; Map counter
    dw #$FFFF

preset_spazermap_space_jump_over_under_spark:
    dw #preset_spazermap_space_jump_botwoon ; Space Jump: Botwoon
    dw $078D, $A918  ; DDB
    dw $079B, $D7E4  ; MDB
    dw $081D, $E02F  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0038  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $002A  ; Layer 2 X position
    dw $0919, $001F  ; Layer 2 Y position
    dw $09C2, $0167  ; Health
    dw $09C6, $0008  ; Missiles
    dw $09CA, $0007  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $00CA  ; Samus X
    dw $0AFA, $0098  ; Samus Y
    dw $CAE8, $027C  ; Map counter
    dw $D82C, $0002  ; Bosses
    dw #$FFFF

preset_spazermap_space_jump_under_over_spark:
    dw #preset_spazermap_space_jump_over_under_spark ; Space Jump: Over Under Spark
    dw $078D, $A8F4  ; DDB
    dw $079B, $D845  ; MDB
    dw $081D, $FF2F  ; Explored map tiles
    dw $089B, $00FE  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0132  ; Health
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0288  ; Map counter
    dw #$FFFF

preset_spazermap_space_jump_colosseum:
    dw #preset_spazermap_space_jump_under_over_spark ; Space Jump: Under Over Spark
    dw $078D, $A894  ; DDB
    dw $079B, $D913  ; MDB
    dw $0893, $0040  ; Explored map tiles
    dw $0897, $0040  ; Explored map tiles
    dw $090F, $F001  ; Screen subpixel X position
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $001B  ; Screen Y position in pixels
    dw $0919, $001B  ; Layer 2 Y position
    dw $09C2, $010B  ; Health
    dw $09CA, $0008  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C2  ; Samus X
    dw $CAE8, $028A  ; Map counter
    dw #$FFFF

preset_spazermap_space_jump_draygon:
    dw #preset_spazermap_space_jump_colosseum ; Space Jump: Colosseum
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $0893, $E06F  ; Explored map tiles
    dw $0897, $E07F  ; Explored map tiles
    dw $089B, $40FE  ; Explored map tiles
    dw $089F, $4000  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $01FC  ; Screen Y position in pixels
    dw $0919, $017D  ; Layer 2 Y position
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $CAE8, $029D  ; Map counter
    dw $D8C2, $0D54  ; Doors
    dw #$FFFF

preset_spazermap_maridia_cleanup_reverse_halfie:
    dw #preset_spazermap_space_jump_draygon ; Space Jump: Draygon
    dw $078D, $A96C  ; DDB
    dw $089F, $C001  ; Explored map tiles
    dw $08A3, $8003  ; Explored map tiles
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $7324  ; Equipped Items
    dw $09A4, $7325  ; Collected Items
    dw $09C2, $00CF  ; Health
    dw $09C6, $0002  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $0040  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $029E  ; Map counter
    dw $D82C, $0003  ; Bosses
    dw $D882, $0400  ; Items
    dw $D8C2, $CD54  ; Doors
    dw #$FFFF

preset_spazermap_maridia_cleanup_botwoon_hallway_revisit:
    dw #preset_spazermap_maridia_cleanup_reverse_halfie ; Maridia Cleanup: Reverse Halfie
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $0893, $E07F  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0200  ; Layer 2 Y position
    dw $09C2, $005F  ; Health
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $00B4  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $CAE8, $029F  ; Map counter
    dw #$FFFF

preset_spazermap_maridia_cleanup_right_sand_pit:
    dw #preset_spazermap_maridia_cleanup_botwoon_hallway_revisit ; Maridia Cleanup: Botwoon Hallway Revisit
    dw $078D, $A7D4  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $0821, $04EF  ; Explored map tiles
    dw $0825, $FCFF  ; Explored map tiles
    dw $0829, $C09F  ; Explored map tiles
    dw $0911, $0355  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $027F  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $09C2, $005A  ; Health
    dw $0AF6, $03F5  ; Samus X
    dw $0AFA, $02CB  ; Samus Y
    dw $CAE8, $02AB  ; Map counter
    dw #$FFFF

preset_spazermap_maridia_cleanup_east_sand_hall:
    dw #preset_spazermap_maridia_cleanup_right_sand_pit ; Maridia Cleanup: Right Sand Pit
    dw $078D, $A6FC  ; DDB
    dw $079B, $D51E  ; MDB
    dw $082D, $00B3  ; Explored map tiles
    dw $0831, $00B3  ; Explored map tiles
    dw $0835, $80B3  ; Explored map tiles
    dw $0839, $80F3  ; Explored map tiles
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $011F  ; Layer 2 Y position
    dw $09C2, $0058  ; Health
    dw $0AF6, $01C8  ; Samus X
    dw $0AFA, $01AB  ; Samus Y
    dw $CAE8, $02B1  ; Map counter
    dw #$FFFF

preset_spazermap_maridia_cleanup_pants_room:
    dw #preset_spazermap_maridia_cleanup_east_sand_hall ; Maridia Cleanup: East Sand Hall
    dw $078D, $A6CC  ; DDB
    dw $079B, $D4C2  ; MDB
    dw $083D, $C0FE  ; Explored map tiles
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $09C2, $0039  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02AE  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $02B3  ; Map counter
    dw #$FFFF

preset_spazermap_maridia_cleanup_spring_ball_room:
    dw #preset_spazermap_maridia_cleanup_pants_room ; Maridia Cleanup: Pants Room
    dw $078D, $A798  ; DDB
    dw $079B, $D8C5  ; MDB
    dw $0831, $30B3  ; Explored map tiles
    dw $0835, $B0B3  ; Explored map tiles
    dw $0839, $BFF3  ; Explored map tiles
    dw $083D, $E0FE  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $002A  ; Health
    dw $09CE, $0003  ; Pbs
    dw $0AF6, $03DD  ; Samus X
    dw $CAE8, $02BE  ; Map counter
    dw $D820, $2001  ; Events
    dw #$FFFF

preset_spazermap_maridia_cleanup_pants_room_corner:
    dw #preset_spazermap_maridia_cleanup_spring_ball_room ; Maridia Cleanup: Spring Ball Room
    dw $078D, $A7C8  ; DDB
    dw $08B7, $0080  ; Explored map tiles
    dw $08BB, $00C0  ; Explored map tiles
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09A2, $7326  ; Equipped Items
    dw $09A4, $7327  ; Collected Items
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $CAE8, $02C1  ; Map counter
    dw $D882, $0440  ; Items
    dw #$FFFF

preset_spazermap_maridia_cleanup_plasma_spark_room_revisit:
    dw #preset_spazermap_maridia_cleanup_pants_room_corner ; Maridia Cleanup: Pants Room Corner
    dw $078D, $A780  ; DDB
    dw $079B, $D4C2  ; MDB
    dw $083D, $F0FF  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $3400  ; Screen subpixel Y position
    dw $09C2, $0030  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0052  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $02C3  ; Map counter
    dw #$FFFF

preset_spazermap_maridia_cleanup_kassiuz_room:
    dw #preset_spazermap_maridia_cleanup_plasma_spark_room_revisit ; Maridia Cleanup: Plasma Spark Room Revisit
    dw $078D, $A60C  ; DDB
    dw $079B, $D340  ; MDB
    dw $0805, $8001  ; Explored map tiles
    dw $0809, $8001  ; Explored map tiles
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $011C  ; Screen Y position in pixels
    dw $0917, $01C0  ; Layer 2 X position
    dw $0919, $011C  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0289  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $02C7  ; Map counter
    dw $D8C2, $CD7C  ; Doors
    dw #$FFFF

preset_spazermap_maridia_cleanup_plasma_room:
    dw #preset_spazermap_maridia_cleanup_kassiuz_room ; Maridia Cleanup: Kassiuz Room
    dw $078D, $A5DC  ; DDB
    dw $079B, $D27E  ; MDB
    dw $07FD, $6000  ; Explored map tiles
    dw $0801, $4000  ; Explored map tiles
    dw $0805, $C001  ; Explored map tiles
    dw $0809, $C001  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $008D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $02CC  ; Map counter
    dw #$FFFF

preset_spazermap_maridia_cleanup_plasma_spark_room_final:
    dw #preset_spazermap_maridia_cleanup_plasma_room ; Maridia Cleanup: Plasma Room
    dw $078D, $A540  ; DDB
    dw $079B, $D387  ; MDB
    dw $07FD, $7800  ; Explored map tiles
    dw $0801, $5800  ; Explored map tiles
    dw $0805, $D801  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0919, $0257  ; Layer 2 Y position
    dw $09A6, $1009  ; Equipped Beams
    dw $09A8, $100D  ; Collected Beams
    dw $09C2, $0044  ; Health
    dw $09C6, $0004  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002A  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $CAE8, $02D2  ; Map counter
    dw $D880, $90F4  ; Items
    dw $D8C2, $CD7E  ; Doors
    dw #$FFFF

preset_spazermap_maridia_cleanup_west_cac_alley:
    dw #preset_spazermap_maridia_cleanup_plasma_spark_room_final ; Maridia Cleanup: Plasma Spark Room Final
    dw $078D, $A5D0  ; DDB
    dw $079B, $D340  ; MDB
    dw $080D, $C03F  ; Explored map tiles
    dw $0811, $FFFF  ; Explored map tiles
    dw $0815, $E03B  ; Explored map tiles
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0159  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0500  ; Screen Y position in pixels
    dw $0917, $012D  ; Layer 2 X position
    dw $0919, $0500  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01C3  ; Samus X
    dw $0AFA, $05BB  ; Samus Y
    dw $CAE8, $02D8  ; Map counter
    dw #$FFFF

preset_spazermap_maridia_cleanup_east_cac_alley:
    dw #preset_spazermap_maridia_cleanup_west_cac_alley ; Maridia Cleanup: West Cac Alley
    dw $078D, $A75C  ; DDB
    dw $079B, $D9FE  ; MDB
    dw $0815, $F03B  ; Explored map tiles
    dw $0819, $F023  ; Explored map tiles
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0011  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $000C  ; Layer 2 Y position
    dw $09CA, $000C  ; Supers
    dw $0AF6, $00C8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $02DA  ; Map counter
    dw $D8C2, $CDFE  ; Doors
    dw #$FFFF

preset_spazermap_maridia_cleanup_botwoon_hallway_final:
    dw #preset_spazermap_maridia_cleanup_east_cac_alley ; Maridia Cleanup: East Cac Alley
    dw $078D, $A960  ; DDB
    dw $079B, $D913  ; MDB
    dw $0815, $FF3B  ; Explored map tiles
    dw $0819, $FF23  ; Explored map tiles
    dw $0893, $E0FF  ; Explored map tiles
    dw $0897, $E0FF  ; Explored map tiles
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0200  ; Layer 2 Y position
    dw $09CA, $000F  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $009C  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $CAE8, $02E4  ; Map counter
    dw #$FFFF

preset_spazermap_maridia_cleanup_aqueduct_final:
    dw #preset_spazermap_maridia_cleanup_botwoon_hallway_final ; Maridia Cleanup: Botwoon Hallway Final
    dw $078D, $A8AC  ; DDB
    dw $079B, $D6FD  ; MDB
    dw $0821, $0CEF  ; Explored map tiles
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $011E  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $011E  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0278  ; Health
    dw $09C4, $02BB  ; Max health
    dw $0AF6, $01A5  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $CAE8, $02E5  ; Map counter
    dw $D882, $0540  ; Items
    dw #$FFFF

preset_spazermap_maridia_cleanup_left_sand_pit:
    dw #preset_spazermap_maridia_cleanup_aqueduct_final ; Maridia Cleanup: Aqueduct Final
    dw $078D, $A7D4  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $0821, $CCEF  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0148  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $00F6  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $0AF6, $01E8  ; Samus X
    dw $0AFA, $02CB  ; Samus Y
    dw $CAE8, $02E7  ; Map counter
    dw #$FFFF

preset_spazermap_maridia_cleanup_crab_hole:
    dw #preset_spazermap_maridia_cleanup_left_sand_pit ; Maridia Cleanup: Left Sand Pit
    dw $078D, $A6B4  ; DDB
    dw $079B, $D461  ; MDB
    dw $082D, $00B7  ; Explored map tiles
    dw $0831, $30B7  ; Explored map tiles
    dw $0835, $B0BF  ; Explored map tiles
    dw $0839, $BFFF  ; Explored map tiles
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0101  ; Layer 2 Y position
    dw $09C2, $025D  ; Health
    dw $0AF6, $0033  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $02ED  ; Map counter
    dw #$FFFF

preset_spazermap_maridia_cleanup_kpdr_exit:
    dw #preset_spazermap_maridia_cleanup_crab_hole ; Maridia Cleanup: Crab Hole
    dw $078D, $A5E8  ; DDB
    dw $079B, $D21C  ; MDB
    dw $0841, $00C0  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $0271  ; Health
    dw $09CA, $000E  ; Supers
    dw $09CE, $0006  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $002D  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $02EF  ; Map counter
    dw $D8C2, $CDFF  ; Doors
    dw #$FFFF

preset_spazermap_screw_attack_business_center:
    dw #preset_spazermap_maridia_cleanup_kpdr_exit ; Maridia Cleanup: KPDR Exit
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07FB, $2000  ; Explored map tiles
    dw $07FD, $0000  ; Explored map tiles
    dw $07FF, $2000  ; Explored map tiles
    dw $0801, $FE00  ; Explored map tiles
    dw $0803, $2000  ; Explored map tiles
    dw $0805, $8F03  ; Explored map tiles
    dw $0807, $3F00  ; Explored map tiles
    dw $0809, $8087  ; Explored map tiles
    dw $080B, $7F00  ; Explored map tiles
    dw $080D, $FCFE  ; Explored map tiles
    dw $080F, $E000  ; Explored map tiles
    dw $0811, $F807  ; Explored map tiles
    dw $0813, $BE01  ; Explored map tiles
    dw $0815, $FC1E  ; Explored map tiles
    dw $0817, $1F00  ; Explored map tiles
    dw $0819, $0413  ; Explored map tiles
    dw $081B, $0100  ; Explored map tiles
    dw $081D, $FC93  ; Explored map tiles
    dw $0821, $00F0  ; Explored map tiles
    dw $0823, $7F00  ; Explored map tiles
    dw $0825, $00F0  ; Explored map tiles
    dw $0827, $3800  ; Explored map tiles
    dw $0829, $0000  ; Explored map tiles
    dw $082B, $E003  ; Explored map tiles
    dw $082D, $0000  ; Explored map tiles
    dw $082F, $E003  ; Explored map tiles
    dw $0831, $0000  ; Explored map tiles
    dw $0833, $201E  ; Explored map tiles
    dw $0835, $0000  ; Explored map tiles
    dw $0837, $BE1F  ; Explored map tiles
    dw $0839, $0000  ; Explored map tiles
    dw $083B, $A01F  ; Explored map tiles
    dw $083D, $0000  ; Explored map tiles
    dw $083F, $F00F  ; Explored map tiles
    dw $0841, $0000  ; Explored map tiles
    dw $0843, $0000  ; Explored map tiles
    dw $087B, $0000  ; Explored map tiles
    dw $087F, $0000  ; Explored map tiles
    dw $0883, $00FC  ; Explored map tiles
    dw $0887, $0000  ; Explored map tiles
    dw $088B, $0000  ; Explored map tiles
    dw $088F, $0000  ; Explored map tiles
    dw $0893, $0000  ; Explored map tiles
    dw $0897, $0000  ; Explored map tiles
    dw $089B, $0000  ; Explored map tiles
    dw $089F, $0000  ; Explored map tiles
    dw $08A3, $0000  ; Explored map tiles
    dw $08B7, $0000  ; Explored map tiles
    dw $08BB, $0000  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $09CA, $000D  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw $CAE8, $02F3  ; Map counter
    dw $D158, $7800  ; Explored map tiles (Maridia)
    dw $D15C, $5800  ; Explored map tiles (Maridia)
    dw $D160, $D801  ; Explored map tiles (Maridia)
    dw $D164, $C001  ; Explored map tiles (Maridia)
    dw $D166, $0E00  ; Explored map tiles (Maridia)
    dw $D168, $C03F  ; Explored map tiles (Maridia)
    dw $D16A, $0B00  ; Explored map tiles (Maridia)
    dw $D16C, $FFFF  ; Explored map tiles (Maridia)
    dw $D16E, $0800  ; Explored map tiles (Maridia)
    dw $D170, $FF3B  ; Explored map tiles (Maridia)
    dw $D174, $FF23  ; Explored map tiles (Maridia)
    dw $D178, $FF2F  ; Explored map tiles (Maridia)
    dw $D17A, $0100  ; Explored map tiles (Maridia)
    dw $D17C, $CCEF  ; Explored map tiles (Maridia)
    dw $D17E, $0100  ; Explored map tiles (Maridia)
    dw $D180, $FCFF  ; Explored map tiles (Maridia)
    dw $D182, $1F00  ; Explored map tiles (Maridia)
    dw $D184, $C09F  ; Explored map tiles (Maridia)
    dw $D186, $0700  ; Explored map tiles (Maridia)
    dw $D188, $00B7  ; Explored map tiles (Maridia)
    dw $D18A, $0700  ; Explored map tiles (Maridia)
    dw $D18C, $30B7  ; Explored map tiles (Maridia)
    dw $D18E, $0700  ; Explored map tiles (Maridia)
    dw $D190, $B0BF  ; Explored map tiles (Maridia)
    dw $D192, $1F00  ; Explored map tiles (Maridia)
    dw $D194, $BFFF  ; Explored map tiles (Maridia)
    dw $D196, $1F00  ; Explored map tiles (Maridia)
    dw $D198, $F0FF  ; Explored map tiles (Maridia)
    dw $D19A, $0F00  ; Explored map tiles (Maridia)
    dw $D19C, $00C0  ; Explored map tiles (Maridia)
    dw $D1D6, $0020  ; Explored map tiles (Maridia)
    dw $D1DA, $0020  ; Explored map tiles (Maridia)
    dw $D1DE, $0020  ; Explored map tiles (Maridia)
    dw $D1E2, $0020  ; Explored map tiles (Maridia)
    dw $D1E6, $0030  ; Explored map tiles (Maridia)
    dw $D1EA, $00E0  ; Explored map tiles (Maridia)
    dw $D1EE, $E0FF  ; Explored map tiles (Maridia)
    dw $D1F2, $E0FF  ; Explored map tiles (Maridia)
    dw $D1F6, $40FE  ; Explored map tiles (Maridia)
    dw $D1FA, $C001  ; Explored map tiles (Maridia)
    dw $D1FE, $8003  ; Explored map tiles (Maridia)
    dw $D212, $0080  ; Explored map tiles (Maridia)
    dw $D216, $00C0  ; Explored map tiles (Maridia)
    dw #$FFFF

preset_spazermap_screw_attack_ice_beam_snake_room:
    dw #preset_spazermap_screw_attack_business_center ; Screw Attack: Business Center
    dw $078D, $931E  ; DDB
    dw $079B, $A75D  ; MDB
    dw $0807, $FF0F  ; Explored map tiles
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $000C  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0036  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $02F9  ; Map counter
    dw $D8B8, $FEFF  ; Doors
    dw #$FFFF

preset_spazermap_screw_attack_ice_beam_foosball:
    dw #preset_spazermap_screw_attack_ice_beam_snake_room ; Screw Attack: Ice Beam Snake Room
    dw $078D, $937E  ; DDB
    dw $079B, $A890  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $0803, $201C  ; Explored map tiles
    dw $0807, $FF1F  ; Explored map tiles
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09A6, $100B  ; Equipped Beams
    dw $09A8, $100F  ; Collected Beams
    dw $09C2, $0261  ; Health
    dw $09D2, $0004  ; Currently selected item
    dw $0AF6, $00B9  ; Samus X
    dw $CAE8, $02FD  ; Map counter
    dw $D876, $1335  ; Items
    dw #$FFFF

preset_spazermap_screw_attack_ice_beam_boyon_room:
    dw #preset_spazermap_screw_attack_ice_beam_foosball ; Screw Attack: Ice Beam Foosball
    dw $078D, $935A  ; DDB
    dw $079B, $A8B9  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $07FF, $2010  ; Explored map tiles
    dw $090F, $6001  ; Screen subpixel X position
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0019  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0012  ; Layer 2 Y position
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DD  ; Samus X
    dw $CAE8, $02FE  ; Map counter
    dw #$FFFF

preset_spazermap_screw_attack_crocomire_speedway:
    dw #preset_spazermap_screw_attack_ice_beam_boyon_room ; Screw Attack: Ice Beam Boyon Room
    dw $078D, $9336  ; DDB
    dw $079B, $A8F8  ; MDB
    dw $07FF, $201E  ; Explored map tiles
    dw $0803, $201E  ; Explored map tiles
    dw $080B, $7F3E  ; Explored map tiles
    dw $080F, $E020  ; Explored map tiles
    dw $0813, $BE21  ; Explored map tiles
    dw $0817, $1F20  ; Explored map tiles
    dw $090F, $C400  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $00DC  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $CAE8, $030A  ; Map counter
    dw #$FFFF

preset_spazermap_screw_attack_kronic_boost_room:
    dw #preset_spazermap_screw_attack_crocomire_speedway ; Screw Attack: Crocomire Speedway
    dw $078D, $9792  ; DDB
    dw $079B, $AFFB  ; MDB
    dw $0817, $1F3F  ; Explored map tiles
    dw $081B, $C103  ; Explored map tiles
    dw $081F, $FF00  ; Explored map tiles
    dw $0821, $80FF  ; Explored map tiles
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $03AD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $031D  ; Map counter
    dw #$FFFF

preset_spazermap_screw_attack_lava_dive_room:
    dw #preset_spazermap_screw_attack_kronic_boost_room ; Screw Attack: Kronic Boost Room
    dw $078D, $977A  ; DDB
    dw $079B, $AE74  ; MDB
    dw $0821, $E0FF  ; Explored map tiles
    dw $0825, $20F0  ; Explored map tiles
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $09CE, $0006  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0158  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $CAE8, $0320  ; Map counter
    dw $D8BA, $01F7  ; Doors
    dw #$FFFF

preset_spazermap_screw_attack_lower_norfair_main_hall:
    dw #preset_spazermap_screw_attack_lava_dive_room ; Screw Attack: Lava Dive Room
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $0825, $E0FF  ; Explored map tiles
    dw $0829, $C005  ; Explored map tiles
    dw $082D, $8005  ; Explored map tiles
    dw $0831, $0004  ; Explored map tiles
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0301  ; Layer 2 Y position
    dw $09C2, $023A  ; Health
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0480  ; Samus X
    dw $0AFA, $0288  ; Samus Y
    dw $CAE8, $032E  ; Map counter
    dw #$FFFF

preset_spazermap_screw_attack_blue_fireball:
    dw #preset_spazermap_screw_attack_lower_norfair_main_hall ; Screw Attack: Lower Norfair Main Hall
    dw $078D, $992A  ; DDB
    dw $079B, $B3A5  ; MDB
    dw $0829, $C405  ; Explored map tiles
    dw $082D, $FC05  ; Explored map tiles
    dw $0831, $C007  ; Explored map tiles
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $0221  ; Health
    dw $09C6, $0008  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0066  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $0338  ; Map counter
    dw $D8BA, $21F7  ; Doors
    dw #$FFFF

preset_spazermap_screw_attack_golden_torizo:
    dw #preset_spazermap_screw_attack_blue_fireball ; Screw Attack: Blue Fireball
    dw $078D, $9852  ; DDB
    dw $079B, $B1E5  ; MDB
    dw $082F, $E103  ; Explored map tiles
    dw $0831, $C0FF  ; Explored map tiles
    dw $0833, $211E  ; Explored map tiles
    dw $0835, $0080  ; Explored map tiles
    dw $0837, $BF1F  ; Explored map tiles
    dw $0839, $00C0  ; Explored map tiles
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $020E  ; Health
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02AE  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $CAE8, $0343  ; Map counter
    dw $D820, $3001  ; Events
    dw #$FFFF

preset_spazermap_screw_attack_screw_attack:
    dw #preset_spazermap_screw_attack_golden_torizo ; Screw Attack: Golden Torizo
    dw $078D, $983A  ; DDB
    dw $079B, $B283  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $0839, $00F0  ; Explored map tiles
    dw $083D, $0030  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $0271  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $0011  ; Supers
    dw $09CE, $000A  ; Pbs
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $0347  ; Map counter
    dw $D82A, $0106  ; Bosses
    dw #$FFFF

preset_spazermap_lower_norfair_fast_ripper_room:
    dw #preset_spazermap_screw_attack_screw_attack ; Screw Attack: Screw Attack
    dw $078D, $98A6  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $0835, $0088  ; Explored map tiles
    dw $0839, $00FC  ; Explored map tiles
    dw $083D, $0038  ; Explored map tiles
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09A2, $732E  ; Equipped Items
    dw $09A4, $732F  ; Collected Items
    dw $0AF6, $00B2  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $034B  ; Map counter
    dw $D878, $801C  ; Items
    dw $D8BA, $23F7  ; Doors
    dw #$FFFF

preset_spazermap_lower_norfair_worst_room_in_the_game:
    dw #preset_spazermap_lower_norfair_fast_ripper_room ; Lower Norfair: Fast Ripper Room
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $0835, $FC8F  ; Explored map tiles
    dw $090F, $7900  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0225  ; Health
    dw $09CA, $0010  ; Supers
    dw $0AF6, $03DB  ; Samus X
    dw $CAE8, $0354  ; Map counter
    dw #$FFFF

preset_spazermap_lower_norfair_mickey_mouse:
    dw #preset_spazermap_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room In The Game
    dw $078D, $994E  ; DDB
    dw $079B, $B4AD  ; MDB
    dw $0821, $E2FF  ; Explored map tiles
    dw $0825, $E2FF  ; Explored map tiles
    dw $0829, $C605  ; Explored map tiles
    dw $082D, $FE05  ; Explored map tiles
    dw $0831, $C2FF  ; Explored map tiles
    dw $0835, $FE8F  ; Explored map tiles
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004A  ; Samus X
    dw $CAE8, $035A  ; Map counter
    dw #$FFFF

preset_spazermap_lower_norfair_amphitheatre:
    dw #preset_spazermap_lower_norfair_mickey_mouse ; Lower Norfair: Mickey Mouse
    dw $078D, $9936  ; DDB
    dw $0821, $E6FF  ; Explored map tiles
    dw $0825, $EEFF  ; Explored map tiles
    dw $090F, $CFFF  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0919, $00D5  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A9  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $035D  ; Map counter
    dw #$FFFF

preset_spazermap_lower_norfair_kihunter_stairs_down:
    dw #preset_spazermap_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dw $078D, $997E  ; DDB
    dw $079B, $B4E5  ; MDB
    dw $0825, $EFFF  ; Explored map tiles
    dw $0829, $C705  ; Explored map tiles
    dw $082D, $FF05  ; Explored map tiles
    dw $0831, $C3FF  ; Explored map tiles
    dw $089F, $00C0  ; Explored map tiles
    dw $08A3, $00E0  ; Explored map tiles
    dw $08A7, $00E0  ; Explored map tiles
    dw $08AB, $00E0  ; Explored map tiles
    dw $08AF, $00E0  ; Explored map tiles
    dw $090F, $8780  ; Screen subpixel X position
    dw $0911, $0280  ; Screen X position in pixels
    dw $0915, $0043  ; Screen Y position in pixels
    dw $0917, $01E0  ; Layer 2 X position
    dw $0919, $0032  ; Layer 2 Y position
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $02ED  ; Samus X
    dw $0AFA, $00B3  ; Samus Y
    dw $CAE8, $036F  ; Map counter
    dw #$FFFF

preset_spazermap_lower_norfair_wasteland:
    dw #preset_spazermap_lower_norfair_kihunter_stairs_down ; Lower Norfair: Kihunter Stairs Down
    dw $078D, $99A2  ; DDB
    dw $079B, $B585  ; MDB
    dw $089F, $00F0  ; Explored map tiles
    dw $08A3, $00F0  ; Explored map tiles
    dw $08A7, $00F0  ; Explored map tiles
    dw $08AB, $00F0  ; Explored map tiles
    dw $08AF, $00FC  ; Explored map tiles
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0317  ; Layer 2 Y position
    dw $09C2, $0229  ; Health
    dw $09CE, $0008  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $025E  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw $CAE8, $0377  ; Map counter
    dw $D8BA, $63F7  ; Doors
    dw #$FFFF

preset_spazermap_lower_norfair_metal_pirates:
    dw #preset_spazermap_lower_norfair_wasteland ; Lower Norfair: Wasteland
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $08B3, $00FC  ; Explored map tiles
    dw $08B7, $0040  ; Explored map tiles
    dw $08BB, $0040  ; Explored map tiles
    dw $090F, $6FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $09C2, $0221  ; Health
    dw $09CA, $000F  ; Supers
    dw $09CE, $0007  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0165  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $CAE8, $037F  ; Map counter
    dw $D8BA, $E3F7  ; Doors
    dw #$FFFF

preset_spazermap_lower_norfair_ridley:
    dw #preset_spazermap_lower_norfair_metal_pirates ; Lower Norfair: Metal Pirates
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $083D, $FF38  ; Explored map tiles
    dw $08BB, $00C0  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $02AF  ; Health
    dw $09CA, $0012  ; Supers
    dw $0AF6, $003E  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $CAE8, $0388  ; Map counter
    dw $D8BA, $F3F7  ; Doors
    dw $D8BC, $0001  ; Doors
    dw #$FFFF

preset_spazermap_lower_norfair_leaving_ridley:
    dw #preset_spazermap_lower_norfair_ridley ; Lower Norfair: Ridley
    dw $078D, $9A62  ; DDB
    dw $079B, $B32E  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $083D, $FF39  ; Explored map tiles
    dw $0841, $0003  ; Explored map tiles
    dw $090F, $AFFF  ; Screen subpixel X position
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $011C  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09C2, $02BB  ; Health
    dw $09CA, $0014  ; Supers
    dw $09CE, $0009  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0048  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $CAE8, $0389  ; Map counter
    dw $D82A, $0107  ; Bosses
    dw $D8BA, $FBF7  ; Doors
    dw #$FFFF

preset_spazermap_lower_norfair_wasteland_revisit:
    dw #preset_spazermap_lower_norfair_leaving_ridley ; Lower Norfair: Leaving Ridley
    dw $078D, $9966  ; DDB
    dw $079B, $B62B  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0297  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $02DB  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8BA, $FFF7  ; Doors
    dw #$FFFF

preset_spazermap_lower_norfair_kihunter_stairs_up:
    dw #preset_spazermap_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dw $078D, $9A0E  ; DDB
    dw $079B, $B741  ; MDB
    dw $08AB, $00F8  ; Explored map tiles
    dw $090F, $B600  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $0290  ; Health
    dw $09CE, $0007  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0030  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $038A  ; Map counter
    dw #$FFFF

preset_spazermap_lower_norfair_fireflea_room:
    dw #preset_spazermap_lower_norfair_kihunter_stairs_up ; Lower Norfair: Kihunter Stairs Up
    dw $078D, $9AB6  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $367F  ; Screen subpixel X position
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0001  ; Screen Y position in pixels
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00AC  ; Samus X
    dw #$FFFF

preset_spazermap_lower_norfair_hotarubi_missile_room:
    dw #preset_spazermap_lower_norfair_fireflea_room ; Lower Norfair: Fireflea Room
    dw $078D, $9A02  ; DDB
    dw $079B, $B6EE  ; MDB
    dw $0893, $0008  ; Explored map tiles
    dw $0897, $0008  ; Explored map tiles
    dw $089B, $0008  ; Explored map tiles
    dw $089F, $00FC  ; Explored map tiles
    dw $08A3, $00FC  ; Explored map tiles
    dw $08A7, $00FC  ; Explored map tiles
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $001D  ; Layer 2 Y position
    dw $09C2, $0281  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $0013  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0169  ; Samus X
    dw $CAE8, $0393  ; Map counter
    dw #$FFFF

preset_spazermap_lower_norfair_three_musketeers_room:
    dw #preset_spazermap_lower_norfair_hotarubi_missile_room ; Lower Norfair: Hotarubi Missile Room
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $088F, $007C  ; Explored map tiles
    dw $0893, $007C  ; Explored map tiles
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0007  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0005  ; Layer 2 Y position
    dw $09C6, $000E  ; Missiles
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0067  ; Samus X
    dw $CAE8, $039C  ; Map counter
    dw #$FFFF

preset_spazermap_begin_cleanup_single_chamber_revisit:
    dw #preset_spazermap_lower_norfair_three_musketeers_room ; Lower Norfair: Three Musketeers Room
    dw $078D, $99AE  ; DDB
    dw $079B, $B656  ; MDB
    dw $0809, $8287  ; Explored map tiles
    dw $080D, $FEFE  ; Explored map tiles
    dw $0811, $FF07  ; Explored map tiles
    dw $088F, $00FC  ; Explored map tiles
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $000F  ; Layer 2 Y position
    dw $09C2, $027C  ; Health
    dw $0AF6, $0168  ; Samus X
    dw $CAE8, $03A2  ; Map counter
    dw #$FFFF

preset_spazermap_begin_cleanup_bubble_mountain_dboost:
    dw #preset_spazermap_begin_cleanup_single_chamber_revisit ; Begin Cleanup: Single Chamber Revisit
    dw $078D, $9A4A  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $0809, $FE87  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0010  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $000C  ; Layer 2 Y position
    dw $09C6, $000F  ; Missiles
    dw $0AF6, $0086  ; Samus X
    dw $CAE8, $03A7  ; Map counter
    dw #$FFFF

preset_spazermap_begin_cleanup_norfair_reserve_front:
    dw #preset_spazermap_begin_cleanup_bubble_mountain_dboost ; Begin Cleanup: Bubble Mountain D-Boost
    dw $078D, $95CA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $027A  ; Health
    dw $0AF6, $0045  ; Samus X
    dw $D8BA, $FFFF  ; Doors
    dw #$FFFF

preset_spazermap_begin_cleanup_norfair_reserve_back:
    dw #preset_spazermap_begin_cleanup_norfair_reserve_front ; Begin Cleanup: Norfair Reserve Front
    dw $078D, $9552  ; DDB
    dw $079B, $AC83  ; MDB
    dw $0805, $8F0F  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $E000  ; Screen subpixel Y position
    dw $CAE8, $03A9  ; Map counter
    dw #$FFFF

preset_spazermap_begin_cleanup_bubble_mountain_final:
    dw #preset_spazermap_begin_cleanup_norfair_reserve_back ; Begin Cleanup: Norfair Reserve Back
    dw $078D, $952E  ; DDB
    dw $0805, $8F3F  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $0265  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01C5  ; Samus X
    dw $CAE8, $03AB  ; Map counter
    dw #$FFFF

preset_spazermap_begin_cleanup_tube:
    dw #preset_spazermap_begin_cleanup_bubble_mountain_final ; Begin Cleanup: Bubble Mountain Final
    dw $078D, $922E  ; DDB
    dw $079B, $CF80  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07FB, $0000  ; Explored map tiles
    dw $07FD, $7800  ; Explored map tiles
    dw $07FF, $0000  ; Explored map tiles
    dw $0801, $5800  ; Explored map tiles
    dw $0803, $0000  ; Explored map tiles
    dw $0805, $D801  ; Explored map tiles
    dw $0807, $0000  ; Explored map tiles
    dw $0809, $C001  ; Explored map tiles
    dw $080B, $0E00  ; Explored map tiles
    dw $080D, $C03F  ; Explored map tiles
    dw $080F, $0B00  ; Explored map tiles
    dw $0811, $FFFF  ; Explored map tiles
    dw $0813, $0800  ; Explored map tiles
    dw $0815, $FF3B  ; Explored map tiles
    dw $0817, $0000  ; Explored map tiles
    dw $0819, $FF23  ; Explored map tiles
    dw $081B, $0000  ; Explored map tiles
    dw $081D, $FF2F  ; Explored map tiles
    dw $081F, $0100  ; Explored map tiles
    dw $0821, $CCEF  ; Explored map tiles
    dw $0823, $0100  ; Explored map tiles
    dw $0825, $FCFF  ; Explored map tiles
    dw $0827, $1F00  ; Explored map tiles
    dw $0829, $C09F  ; Explored map tiles
    dw $082B, $0700  ; Explored map tiles
    dw $082D, $00B7  ; Explored map tiles
    dw $082F, $0700  ; Explored map tiles
    dw $0831, $30B7  ; Explored map tiles
    dw $0833, $0700  ; Explored map tiles
    dw $0835, $B0BF  ; Explored map tiles
    dw $0837, $1F00  ; Explored map tiles
    dw $0839, $BFFF  ; Explored map tiles
    dw $083B, $1F00  ; Explored map tiles
    dw $083D, $F0FF  ; Explored map tiles
    dw $083F, $0F00  ; Explored map tiles
    dw $0841, $00C0  ; Explored map tiles
    dw $0843, $3800  ; Explored map tiles
    dw $087B, $0020  ; Explored map tiles
    dw $087F, $0020  ; Explored map tiles
    dw $0883, $0020  ; Explored map tiles
    dw $0887, $0020  ; Explored map tiles
    dw $088B, $0030  ; Explored map tiles
    dw $088F, $00E0  ; Explored map tiles
    dw $0893, $E0FF  ; Explored map tiles
    dw $0897, $E0FF  ; Explored map tiles
    dw $089B, $40FE  ; Explored map tiles
    dw $089F, $C001  ; Explored map tiles
    dw $08A3, $8003  ; Explored map tiles
    dw $08A7, $0000  ; Explored map tiles
    dw $08AB, $0000  ; Explored map tiles
    dw $08AF, $0000  ; Explored map tiles
    dw $08B3, $0000  ; Explored map tiles
    dw $08B7, $0080  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $0263  ; Health
    dw $09CE, $0006  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00D1  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $03B6  ; Map counter
    dw $CF5A, $201E  ; Explored map tiles (Norfair)
    dw $CF5E, $201E  ; Explored map tiles (Norfair)
    dw $CF60, $8F3F  ; Explored map tiles (Norfair)
    dw $CF62, $FF1F  ; Explored map tiles (Norfair)
    dw $CF64, $FE87  ; Explored map tiles (Norfair)
    dw $CF66, $7F3E  ; Explored map tiles (Norfair)
    dw $CF68, $FEFF  ; Explored map tiles (Norfair)
    dw $CF6A, $FF20  ; Explored map tiles (Norfair)
    dw $CF6C, $FFFF  ; Explored map tiles (Norfair)
    dw $CF6E, $BE21  ; Explored map tiles (Norfair)
    dw $CF72, $1F3F  ; Explored map tiles (Norfair)
    dw $CF76, $C103  ; Explored map tiles (Norfair)
    dw $CF7A, $FF00  ; Explored map tiles (Norfair)
    dw $CF7C, $E6FF  ; Explored map tiles (Norfair)
    dw $CF80, $EFFF  ; Explored map tiles (Norfair)
    dw $CF84, $C705  ; Explored map tiles (Norfair)
    dw $CF88, $FF05  ; Explored map tiles (Norfair)
    dw $CF8A, $E103  ; Explored map tiles (Norfair)
    dw $CF8C, $C3FF  ; Explored map tiles (Norfair)
    dw $CF8E, $211E  ; Explored map tiles (Norfair)
    dw $CF90, $FE8F  ; Explored map tiles (Norfair)
    dw $CF92, $BF1F  ; Explored map tiles (Norfair)
    dw $CF94, $00FC  ; Explored map tiles (Norfair)
    dw $CF98, $FF39  ; Explored map tiles (Norfair)
    dw $CF9C, $0003  ; Explored map tiles (Norfair)
    dw $CFEA, $00FC  ; Explored map tiles (Norfair)
    dw $CFEE, $007C  ; Explored map tiles (Norfair)
    dw $CFF2, $0008  ; Explored map tiles (Norfair)
    dw $CFF6, $0008  ; Explored map tiles (Norfair)
    dw $CFFA, $00FC  ; Explored map tiles (Norfair)
    dw $CFFE, $00FC  ; Explored map tiles (Norfair)
    dw $D002, $00FC  ; Explored map tiles (Norfair)
    dw $D006, $00F8  ; Explored map tiles (Norfair)
    dw $D00A, $00FC  ; Explored map tiles (Norfair)
    dw $D00E, $00FC  ; Explored map tiles (Norfair)
    dw $D012, $0040  ; Explored map tiles (Norfair)
    dw $D016, $00C0  ; Explored map tiles (Norfair)
    dw #$FFFF

preset_spazermap_begin_cleanup_tube_climb:
    dw #preset_spazermap_begin_cleanup_tube ; Begin Cleanup: Tube
    dw $078D, $A354  ; DDB
    dw $079B, $CED2  ; MDB
    dw $0847, $1800  ; Explored map tiles
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0012  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $0029  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $03B8  ; Map counter
    dw $D820, $3801  ; Events
    dw $D8C0, $DB7C  ; Doors
    dw #$FFFF

preset_spazermap_begin_cleanup_sephy_fish_room:
    dw #preset_spazermap_begin_cleanup_tube_climb ; Begin Cleanup: Tube Climb
    dw $078D, $A3C0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $081F, $3F00  ; Explored map tiles
    dw $0823, $3F00  ; Explored map tiles
    dw $0827, $3F00  ; Explored map tiles
    dw $082B, $3700  ; Explored map tiles
    dw $082F, $3700  ; Explored map tiles
    dw $0833, $3700  ; Explored map tiles
    dw $0837, $3F00  ; Explored map tiles
    dw $083B, $3F00  ; Explored map tiles
    dw $083F, $1F00  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0219  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0192  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0279  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $CAE8, $03CC  ; Map counter
    dw #$FFFF

preset_spazermap_begin_cleanup_crateria_kihunters_revisit:
    dw #preset_spazermap_begin_cleanup_sephy_fish_room ; Begin Cleanup: Sephy Fish Room
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $07FD, $1000  ; Explored map tiles
    dw $0801, $1000  ; Explored map tiles
    dw $0805, $1000  ; Explored map tiles
    dw $0809, $1000  ; Explored map tiles
    dw $080B, $0100  ; Explored map tiles
    dw $080D, $F0FF  ; Explored map tiles
    dw $080F, $0700  ; Explored map tiles
    dw $0811, $0094  ; Explored map tiles
    dw $0813, $1E00  ; Explored map tiles
    dw $0815, $C017  ; Explored map tiles
    dw $0817, $1000  ; Explored map tiles
    dw $0819, $0010  ; Explored map tiles
    dw $081B, $F003  ; Explored map tiles
    dw $081D, $0010  ; Explored map tiles
    dw $081F, $0000  ; Explored map tiles
    dw $0821, $0010  ; Explored map tiles
    dw $0823, $0000  ; Explored map tiles
    dw $0825, $0010  ; Explored map tiles
    dw $0827, $0000  ; Explored map tiles
    dw $0829, $0010  ; Explored map tiles
    dw $082B, $0000  ; Explored map tiles
    dw $082D, $0010  ; Explored map tiles
    dw $082F, $0000  ; Explored map tiles
    dw $0831, $0010  ; Explored map tiles
    dw $0833, $0000  ; Explored map tiles
    dw $0835, $0010  ; Explored map tiles
    dw $0837, $0000  ; Explored map tiles
    dw $0839, $0010  ; Explored map tiles
    dw $083B, $0000  ; Explored map tiles
    dw $083D, $0010  ; Explored map tiles
    dw $083F, $0000  ; Explored map tiles
    dw $0841, $001F  ; Explored map tiles
    dw $0843, $0000  ; Explored map tiles
    dw $0847, $0000  ; Explored map tiles
    dw $087B, $FC03  ; Explored map tiles
    dw $087F, $FC03  ; Explored map tiles
    dw $0883, $F003  ; Explored map tiles
    dw $0887, $F003  ; Explored map tiles
    dw $088B, $FC3F  ; Explored map tiles
    dw $088D, $807F  ; Explored map tiles
    dw $088F, $FC2F  ; Explored map tiles
    dw $0891, $807F  ; Explored map tiles
    dw $0893, $0020  ; Explored map tiles
    dw $0895, $8000  ; Explored map tiles
    dw $0897, $0020  ; Explored map tiles
    dw $0899, $8000  ; Explored map tiles
    dw $089B, $0000  ; Explored map tiles
    dw $089D, $8007  ; Explored map tiles
    dw $089F, $0000  ; Explored map tiles
    dw $08A1, $800F  ; Explored map tiles
    dw $08A3, $0000  ; Explored map tiles
    dw $08A5, $0008  ; Explored map tiles
    dw $08B7, $0000  ; Explored map tiles
    dw $08BB, $0000  ; Explored map tiles
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0011  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $00A8  ; Samus Y
    dw $CAE8, $03D2  ; Map counter
    dw $CEF2, $001F  ; Explored map tiles (Brinstar)
    dw $D172, $0E00  ; Explored map tiles (Maridia)
    dw $D176, $0200  ; Explored map tiles (Maridia)
    dw $D17A, $3F00  ; Explored map tiles (Maridia)
    dw $D17E, $3F00  ; Explored map tiles (Maridia)
    dw $D182, $3F00  ; Explored map tiles (Maridia)
    dw $D186, $3700  ; Explored map tiles (Maridia)
    dw $D18A, $3700  ; Explored map tiles (Maridia)
    dw $D18E, $3700  ; Explored map tiles (Maridia)
    dw $D192, $3F00  ; Explored map tiles (Maridia)
    dw $D196, $3F00  ; Explored map tiles (Maridia)
    dw $D19A, $1F00  ; Explored map tiles (Maridia)
    dw $D1A2, $1800  ; Explored map tiles (Maridia)
    dw #$FFFF

preset_spazermap_begin_cleanup_landing_site_revisit:
    dw #preset_spazermap_begin_cleanup_crateria_kihunters_revisit ; Begin Cleanup: Crateria Kihunters Revisit
    dw $078D, $8AF6  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00FE  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0917, $00BE  ; Layer 2 X position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $015E  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw #$FFFF

preset_spazermap_begin_cleanup_crateria_pbs:
    dw #preset_spazermap_begin_cleanup_landing_site_revisit ; Begin Cleanup: Landing Site Revisit
    dw $078D, $8AC6  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07FD, $1700  ; Explored map tiles
    dw $0801, $1F00  ; Explored map tiles
    dw $0805, $1F00  ; Explored map tiles
    dw $0809, $1F00  ; Explored map tiles
    dw $080D, $FFFF  ; Explored map tiles
    dw $088B, $FCFF  ; Explored map tiles
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $07EC  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $00FB  ; Screen Y position in pixels
    dw $0917, $03F6  ; Layer 2 X position
    dw $09C2, $0213  ; Health
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $087B  ; Samus X
    dw $0AFA, $016B  ; Samus Y
    dw $CAE8, $03E7  ; Map counter
    dw $D8B0, $B002  ; Doors
    dw #$FFFF

preset_spazermap_begin_cleanup_gauntlet_etank:
    dw #preset_spazermap_begin_cleanup_crateria_pbs ; Begin Cleanup: Crateria PBs
    dw $078D, $892E  ; DDB
    dw $079B, $92B3  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07FD, $1F00  ; Explored map tiles
    dw $0801, $3F00  ; Explored map tiles
    dw $0805, $FF3F  ; Explored map tiles
    dw $087F, $FCC3  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $0203  ; Health
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0084  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $03F4  ; Map counter
    dw #$FFFF

preset_spazermap_begin_cleanup_quickdrops:
    dw #preset_spazermap_begin_cleanup_gauntlet_etank ; Begin Cleanup: Gauntlet E-Tank
    dw $078D, $8952  ; DDB
    dw $079B, $965B  ; MDB
    dw $0803, $0F00  ; Explored map tiles
    dw $0805, $FFFF  ; Explored map tiles
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $C800  ; Screen subpixel Y position
    dw $09C2, $013F  ; Health
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0025  ; Samus X
    dw $CAE8, $03FA  ; Map counter
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_green_brinstar_elevator:
    dw #preset_spazermap_begin_cleanup_quickdrops ; Begin Cleanup: Quickdrops
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $0803, $1F00  ; Explored map tiles
    dw $0807, $1000  ; Explored map tiles
    dw $080B, $1100  ; Explored map tiles
    dw $080F, $1700  ; Explored map tiles
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $CAE8, $03FE  ; Map counter
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_brinstar_map_entrance:
    dw #preset_spazermap_greenpink_brin_cleanup_green_brinstar_elevator ; Green-Pink Brin Cleanup: Green Brinstar Elevator
    dw $078D, $8C0A  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $07FB, $4000  ; Explored map tiles
    dw $07FD, $0000  ; Explored map tiles
    dw $07FF, $4000  ; Explored map tiles
    dw $0801, $0000  ; Explored map tiles
    dw $0803, $4000  ; Explored map tiles
    dw $0805, $0000  ; Explored map tiles
    dw $0807, $7800  ; Explored map tiles
    dw $0809, $0000  ; Explored map tiles
    dw $080B, $7E00  ; Explored map tiles
    dw $080D, $0000  ; Explored map tiles
    dw $080F, $4000  ; Explored map tiles
    dw $0811, $0000  ; Explored map tiles
    dw $0813, $7F00  ; Explored map tiles
    dw $0815, $00E0  ; Explored map tiles
    dw $0817, $0000  ; Explored map tiles
    dw $0819, $0020  ; Explored map tiles
    dw $081B, $0000  ; Explored map tiles
    dw $081D, $2060  ; Explored map tiles
    dw $0821, $2060  ; Explored map tiles
    dw $0825, $7C70  ; Explored map tiles
    dw $0829, $0C5E  ; Explored map tiles
    dw $082D, $8007  ; Explored map tiles
    dw $0831, $FF01  ; Explored map tiles
    dw $0835, $0000  ; Explored map tiles
    dw $0839, $FF01  ; Explored map tiles
    dw $083D, $6600  ; Explored map tiles
    dw $0841, $0000  ; Explored map tiles
    dw $087B, $0000  ; Explored map tiles
    dw $087F, $0000  ; Explored map tiles
    dw $0883, $0000  ; Explored map tiles
    dw $0887, $0000  ; Explored map tiles
    dw $088B, $0004  ; Explored map tiles
    dw $088D, $0000  ; Explored map tiles
    dw $088F, $0004  ; Explored map tiles
    dw $0891, $0000  ; Explored map tiles
    dw $0893, $0004  ; Explored map tiles
    dw $0895, $0000  ; Explored map tiles
    dw $0897, $001F  ; Explored map tiles
    dw $0899, $0000  ; Explored map tiles
    dw $089B, $0016  ; Explored map tiles
    dw $089D, $0000  ; Explored map tiles
    dw $089F, $007C  ; Explored map tiles
    dw $08A1, $0000  ; Explored map tiles
    dw $08A3, $0044  ; Explored map tiles
    dw $08A5, $0000  ; Explored map tiles
    dw $08A7, $007C  ; Explored map tiles
    dw $08AB, $0040  ; Explored map tiles
    dw $08AF, $00C0  ; Explored map tiles
    dw $08B3, $0040  ; Explored map tiles
    dw $08B7, $00C0  ; Explored map tiles
    dw $08BB, $0040  ; Explored map tiles
    dw $08BF, $004E  ; Explored map tiles
    dw $08C3, $7FFC  ; Explored map tiles
    dw $08C5, $80C7  ; Explored map tiles
    dw $08C7, $7F00  ; Explored map tiles
    dw $08C9, $C0FF  ; Explored map tiles
    dw $090F, $2FFF  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $041D  ; Screen Y position in pixels
    dw $0919, $0315  ; Layer 2 Y position
    dw $09CA, $0012  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0044  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $CD58, $1F00  ; Explored map tiles (Crateria)
    dw $CD5C, $3F00  ; Explored map tiles (Crateria)
    dw $CD5E, $1F00  ; Explored map tiles (Crateria)
    dw $CD60, $FFFF  ; Explored map tiles (Crateria)
    dw $CD62, $1000  ; Explored map tiles (Crateria)
    dw $CD64, $1F00  ; Explored map tiles (Crateria)
    dw $CD66, $1100  ; Explored map tiles (Crateria)
    dw $CD68, $FFFF  ; Explored map tiles (Crateria)
    dw $CD6A, $1700  ; Explored map tiles (Crateria)
    dw $CDDA, $FCC3  ; Explored map tiles (Crateria)
    dw $CDE6, $FCFF  ; Explored map tiles (Crateria)
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_green_brin_fireflea_room:
    dw #preset_spazermap_greenpink_brin_cleanup_brinstar_map_entrance ; Green-Pink Brin Cleanup: Brinstar Map Entrance
    dw $078D, $9006  ; DDB
    dw $080B, $FE07  ; Explored map tiles
    dw $080F, $C000  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0616  ; Screen Y position in pixels
    dw $0919, $0490  ; Layer 2 Y position
    dw $09C2, $013D  ; Health
    dw $09CA, $0010  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0AF6, $0045  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $CAE8, $0403  ; Map counter
    dw $D8B2, $AC01  ; Doors
    dw $D8B4, $026F  ; Doors
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_etecoons_etank_skip:
    dw #preset_spazermap_greenpink_brin_cleanup_green_brin_fireflea_room ; Green-Pink Brin Cleanup: Green Brin Fireflea Room
    dw $078D, $8CBE  ; DDB
    dw $079B, $9FE5  ; MDB
    dw $0813, $FF03  ; Explored map tiles
    dw $0817, $4007  ; Explored map tiles
    dw $081B, $4000  ; Explored map tiles
    dw $081F, $4000  ; Explored map tiles
    dw $0823, $C000  ; Explored map tiles
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0136  ; Health
    dw $09CE, $0006  ; Pbs
    dw $0AF6, $0036  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $040E  ; Map counter
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_etecoons_dboosts:
    dw #preset_spazermap_greenpink_brin_cleanup_etecoons_etank_skip ; Green-Pink Brin Cleanup: Etecoons E-Tank Skip
    dw $078D, $8F52  ; DDB
    dw $079B, $A22A  ; MDB
    dw $0823, $C007  ; Explored map tiles
    dw $0827, $0006  ; Explored map tiles
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $000F  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C0  ; Samus X
    dw $CAE8, $0413  ; Map counter
    dw $D8B6, $EF18  ; Doors
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_etecoons_climb:
    dw #preset_spazermap_greenpink_brin_cleanup_etecoons_dboosts ; Green-Pink Brin Cleanup: Etecoons D-Boosts
    dw $078D, $9012  ; DDB
    dw $079B, $A011  ; MDB
    dw $0827, $E007  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $0126  ; Health
    dw $0AF6, $04C6  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $0417  ; Map counter
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_dachora_moonfall:
    dw #preset_spazermap_greenpink_brin_cleanup_etecoons_climb ; Green-Pink Brin Cleanup: Etecoons Climb
    dw $078D, $8F46  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $0817, $7807  ; Explored map tiles
    dw $081B, $5000  ; Explored map tiles
    dw $081F, $5000  ; Explored map tiles
    dw $0823, $F007  ; Explored map tiles
    dw $0827, $F007  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0700  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0540  ; Layer 2 Y position
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0137  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $CAE8, $041F  ; Map counter
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_big_pink_climb:
    dw #preset_spazermap_greenpink_brin_cleanup_dachora_moonfall ; Green-Pink Brin Cleanup: Dachora Moonfall
    dw $078D, $8F6A  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $0817, $7A07  ; Explored map tiles
    dw $081B, $5200  ; Explored map tiles
    dw $081F, $5200  ; Explored map tiles
    dw $0823, $F207  ; Explored map tiles
    dw $0827, $F207  ; Explored map tiles
    dw $082B, $7E00  ; Explored map tiles
    dw $090F, $6400  ; Screen subpixel X position
    dw $0911, $0460  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0348  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00B5  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CE, $0005  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0505  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $CAE8, $042A  ; Map counter
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_spo_spo_kihunters_room:
    dw #preset_spazermap_greenpink_brin_cleanup_big_pink_climb ; Green-Pink Brin Cleanup: Big Pink Climb
    dw $078D, $8FD6  ; DDB
    dw $079B, $9D19  ; MDB
    dw $080B, $FF07  ; Explored map tiles
    dw $080D, $00C0  ; Explored map tiles
    dw $0811, $0060  ; Explored map tiles
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0298  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0023  ; Screen Y position in pixels
    dw $0917, $01F2  ; Layer 2 X position
    dw $0919, $001A  ; Layer 2 Y position
    dw $0AF6, $02F8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $042F  ; Map counter
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_spore_spawn:
    dw #preset_spazermap_greenpink_brin_cleanup_spo_spo_kihunters_room ; Green-Pink Brin Cleanup: Spo Spo Kihunters Room
    dw $078D, $8DC6  ; DDB
    dw $079B, $9D9C  ; MDB
    dw $080D, $00FE  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $000E  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $0370  ; Samus X
    dw $0AFA, $007B  ; Samus Y
    dw $CAE8, $0434  ; Map counter
    dw $D8B4, $266F  ; Doors
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_spo_spo_moonfall:
    dw #preset_spazermap_greenpink_brin_cleanup_spore_spawn ; Green-Pink Brin Cleanup: Spore Spawn
    dw $078D, $8E3E  ; DDB
    dw $079B, $9DC7  ; MDB
    dw $07F3, $002A  ; Music Bank
    dw $0801, $0002  ; Explored map tiles
    dw $0805, $0002  ; Explored map tiles
    dw $0809, $0002  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $000D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $000D  ; Layer 2 Y position
    dw $09C2, $00EA  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0072  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0437  ; Map counter
    dw $D828, $0304  ; Bosses
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_spo_spo_farm_room:
    dw #preset_spazermap_greenpink_brin_cleanup_spo_spo_moonfall ; Green-Pink Brin Cleanup: Spo Spo Moonfall
    dw $078D, $8E4A  ; DDB
    dw $079B, $9B5B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $0801, $8003  ; Explored map tiles
    dw $0805, $8002  ; Explored map tiles
    dw $0809, $8002  ; Explored map tiles
    dw $080D, $80FE  ; Explored map tiles
    dw $0811, $8060  ; Explored map tiles
    dw $0815, $80E0  ; Explored map tiles
    dw $0819, $8020  ; Explored map tiles
    dw $081D, $A060  ; Explored map tiles
    dw $0821, $A061  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0044  ; Screen X position in pixels
    dw $0913, $9800  ; Screen subpixel Y position
    dw $0915, $0800  ; Screen Y position in pixels
    dw $0917, $0033  ; Layer 2 X position
    dw $0919, $0600  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00E4  ; Samus X
    dw $0AFA, $088B  ; Samus Y
    dw $CAE8, $0442  ; Map counter
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_wave_gate_room:
    dw #preset_spazermap_greenpink_brin_cleanup_spo_spo_farm_room ; Green-Pink Brin Cleanup: Spo Spo Farm Room
    dw $078D, $8F82  ; DDB
    dw $079B, $9D19  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $0821, $A07F  ; Explored map tiles
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $0403  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0302  ; Layer 2 Y position
    dw $09CA, $000C  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03DD  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $CAE8, $0446  ; Map counter
    dw $D8B4, $276F  ; Doors
    dw $D8B6, $EF38  ; Doors
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_mission_impossible_room:
    dw #preset_spazermap_greenpink_brin_cleanup_wave_gate_room ; Green-Pink Brin Cleanup: Wave Gate Room
    dw $078D, $8FB2  ; DDB
    dw $0819, $8078  ; Explored map tiles
    dw $081D, $A07C  ; Explored map tiles
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0203  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $031D  ; Screen Y position in pixels
    dw $0917, $0182  ; Layer 2 X position
    dw $0919, $0255  ; Layer 2 Y position
    dw $09C2, $00D6  ; Health
    dw $09C6, $000D  ; Missiles
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $026B  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $CAE8, $044C  ; Map counter
    dw $D8B6, $EFF8  ; Doors
    dw #$FFFF

preset_spazermap_greenpink_brin_cleanup_green_hill_zone_final:
    dw #preset_spazermap_greenpink_brin_cleanup_mission_impossible_room ; Green-Pink Brin Cleanup: Mission Impossible Room
    dw $078D, $8F8E  ; DDB
    dw $0817, $7B07  ; Explored map tiles
    dw $0819, $80F8  ; Explored map tiles
    dw $081B, $5300  ; Explored map tiles
    dw $081D, $A0FC  ; Explored map tiles
    dw $0827, $F307  ; Explored map tiles
    dw $0829, $0CDE  ; Explored map tiles
    dw $082B, $7F00  ; Explored map tiles
    dw $082F, $FF00  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $02FE  ; Screen X position in pixels
    dw $0915, $061D  ; Screen Y position in pixels
    dw $0917, $023E  ; Layer 2 X position
    dw $0919, $0495  ; Layer 2 Y position
    dw $09C2, $006B  ; Health
    dw $09C6, $0008  ; Missiles
    dw $09CA, $000B  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $035E  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $CAE8, $045B  ; Map counter
    dw $D8B4, $2F6F  ; Doors
    dw #$FFFF

preset_spazermap_blue_brinstar_cleanup_blue_brinstar_hoppers:
    dw #preset_spazermap_greenpink_brin_cleanup_green_hill_zone_final ; Green-Pink Brin Cleanup: Green Hill Zone Final
    dw $078D, $8DEA  ; DDB
    dw $079B, $9E52  ; MDB
    dw $0825, $7C78  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $00FA  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $00BB  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $015A  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $045C  ; Map counter
    dw $D8B6, $EFF9  ; Doors
    dw #$FFFF

preset_spazermap_blue_brinstar_cleanup_blue_brinstar_etank_room:
    dw #preset_spazermap_blue_brinstar_cleanup_blue_brinstar_hoppers ; Blue Brinstar Cleanup: Blue Brinstar Hoppers
    dw $078D, $8EAA  ; DDB
    dw $079B, $9F11  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $0825, $FC7F  ; Explored map tiles
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F7FE  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0069  ; Health
    dw $09C6, $0003  ; Missiles
    dw $09CE, $0003  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $00D8  ; Samus X
    dw $CAE8, $0460  ; Map counter
    dw $D8B6, $EFFD  ; Doors
    dw #$FFFF

preset_spazermap_blue_brinstar_cleanup_john_cena_bridge:
    dw #preset_spazermap_blue_brinstar_cleanup_blue_brinstar_etank_room ; Blue Brinstar Cleanup: Blue Brinstar E-Tank Room
    dw $078D, $8ECE  ; DDB
    dw $079B, $9F64  ; MDB
    dw $0825, $FF7F  ; Explored map tiles
    dw $089B, $0096  ; Explored map tiles
    dw $089F, $00FC  ; Explored map tiles
    dw $08A3, $00C4  ; Explored map tiles
    dw $090F, $4FFC  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09C2, $031F  ; Health
    dw $09C4, $031F  ; Max health
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $025B  ; Samus X
    dw $CAE8, $0465  ; Map counter
    dw $D872, $24C1  ; Items
    dw #$FFFF

preset_spazermap_blue_brinstar_cleanup_blue_brinstar_screwfall:
    dw #preset_spazermap_blue_brinstar_cleanup_john_cena_bridge ; Blue Brinstar Cleanup: John Cena Bridge
    dw $078D, $8FFA  ; DDB
    dw $079B, $A1AD  ; MDB
    dw $081D, $A7FC  ; Explored map tiles
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $000A  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01DC  ; Samus X
    dw $CAE8, $0468  ; Map counter
    dw $D872, $04C1  ; Items
    dw #$FFFF

preset_spazermap_blue_brinstar_cleanup_pit_room_final:
    dw #preset_spazermap_blue_brinstar_cleanup_blue_brinstar_screwfall ; Blue Brinstar Cleanup: Blue Brinstar Screwfall
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $07FB, $0000  ; Explored map tiles
    dw $07FD, $1F00  ; Explored map tiles
    dw $07FF, $0000  ; Explored map tiles
    dw $0801, $3F00  ; Explored map tiles
    dw $0803, $1F00  ; Explored map tiles
    dw $0805, $FFFF  ; Explored map tiles
    dw $0807, $1000  ; Explored map tiles
    dw $0809, $1F00  ; Explored map tiles
    dw $080B, $1100  ; Explored map tiles
    dw $080D, $FFFF  ; Explored map tiles
    dw $080F, $1700  ; Explored map tiles
    dw $0811, $0094  ; Explored map tiles
    dw $0813, $1E00  ; Explored map tiles
    dw $0815, $C017  ; Explored map tiles
    dw $0817, $1000  ; Explored map tiles
    dw $0819, $0010  ; Explored map tiles
    dw $081B, $F003  ; Explored map tiles
    dw $081D, $0010  ; Explored map tiles
    dw $081F, $0000  ; Explored map tiles
    dw $0821, $0010  ; Explored map tiles
    dw $0823, $0000  ; Explored map tiles
    dw $0825, $0010  ; Explored map tiles
    dw $0827, $0000  ; Explored map tiles
    dw $0829, $0010  ; Explored map tiles
    dw $082B, $0000  ; Explored map tiles
    dw $082D, $0010  ; Explored map tiles
    dw $082F, $0000  ; Explored map tiles
    dw $0831, $0010  ; Explored map tiles
    dw $0835, $0010  ; Explored map tiles
    dw $0839, $0010  ; Explored map tiles
    dw $083D, $0010  ; Explored map tiles
    dw $0841, $001F  ; Explored map tiles
    dw $087B, $FC03  ; Explored map tiles
    dw $087F, $FCC3  ; Explored map tiles
    dw $0883, $F003  ; Explored map tiles
    dw $0887, $F003  ; Explored map tiles
    dw $088B, $FCFF  ; Explored map tiles
    dw $088D, $807F  ; Explored map tiles
    dw $088F, $FC2F  ; Explored map tiles
    dw $0891, $807F  ; Explored map tiles
    dw $0893, $0020  ; Explored map tiles
    dw $0895, $8000  ; Explored map tiles
    dw $0897, $0020  ; Explored map tiles
    dw $0899, $8000  ; Explored map tiles
    dw $089B, $0000  ; Explored map tiles
    dw $089D, $8007  ; Explored map tiles
    dw $089F, $0000  ; Explored map tiles
    dw $08A1, $800F  ; Explored map tiles
    dw $08A3, $0000  ; Explored map tiles
    dw $08A5, $0008  ; Explored map tiles
    dw $08A7, $0000  ; Explored map tiles
    dw $08AB, $0000  ; Explored map tiles
    dw $08AF, $0000  ; Explored map tiles
    dw $08B3, $0000  ; Explored map tiles
    dw $08B7, $0000  ; Explored map tiles
    dw $08BB, $0000  ; Explored map tiles
    dw $08BF, $0000  ; Explored map tiles
    dw $08C3, $0000  ; Explored map tiles
    dw $08C5, $0000  ; Explored map tiles
    dw $08C7, $0000  ; Explored map tiles
    dw $08C9, $0000  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $031B  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $002D  ; Flash suit
    dw $0AF6, $007E  ; Samus X
    dw $CE5C, $8003  ; Explored map tiles (Brinstar)
    dw $CE60, $8002  ; Explored map tiles (Brinstar)
    dw $CE64, $8002  ; Explored map tiles (Brinstar)
    dw $CE66, $FF07  ; Explored map tiles (Brinstar)
    dw $CE68, $80FE  ; Explored map tiles (Brinstar)
    dw $CE6A, $C000  ; Explored map tiles (Brinstar)
    dw $CE6C, $8060  ; Explored map tiles (Brinstar)
    dw $CE6E, $FF03  ; Explored map tiles (Brinstar)
    dw $CE70, $80E0  ; Explored map tiles (Brinstar)
    dw $CE72, $7B07  ; Explored map tiles (Brinstar)
    dw $CE74, $80F8  ; Explored map tiles (Brinstar)
    dw $CE76, $5300  ; Explored map tiles (Brinstar)
    dw $CE78, $A7FC  ; Explored map tiles (Brinstar)
    dw $CE7A, $5200  ; Explored map tiles (Brinstar)
    dw $CE7C, $A07F  ; Explored map tiles (Brinstar)
    dw $CE7E, $F207  ; Explored map tiles (Brinstar)
    dw $CE80, $FF7F  ; Explored map tiles (Brinstar)
    dw $CE82, $F307  ; Explored map tiles (Brinstar)
    dw $CE84, $0CDE  ; Explored map tiles (Brinstar)
    dw $CE86, $7F00  ; Explored map tiles (Brinstar)
    dw $CE8A, $FF00  ; Explored map tiles (Brinstar)
    dw $CEF6, $0096  ; Explored map tiles (Brinstar)
    dw $CEFA, $00FC  ; Explored map tiles (Brinstar)
    dw $CEFE, $00C4  ; Explored map tiles (Brinstar)
    dw #$FFFF

preset_spazermap_blue_brinstar_cleanup_climb_supers:
    dw #preset_spazermap_blue_brinstar_cleanup_pit_room_final ; Blue Brinstar Cleanup: Pit Room Final
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $083D, $0018  ; Explored map tiles
    dw $0845, $0008  ; Explored map tiles
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $0700  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0540  ; Layer 2 Y position
    dw $09C2, $02DC  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CE, $0001  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $02B6  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $CAE8, $046A  ; Map counter
    dw $D8B2, $AC09  ; Doors
    dw #$FFFF

preset_spazermap_blue_brinstar_cleanup_parlor_again:
    dw #preset_spazermap_blue_brinstar_cleanup_climb_supers ; Blue Brinstar Cleanup: Climb Supers
    dw $078D, $8C6A  ; DDB
    dw $0821, $801F  ; Explored map tiles
    dw $0825, $8010  ; Explored map tiles
    dw $0829, $8010  ; Explored map tiles
    dw $082D, $8010  ; Explored map tiles
    dw $0831, $8010  ; Explored map tiles
    dw $0835, $8010  ; Explored map tiles
    dw $0839, $8010  ; Explored map tiles
    dw $083D, $801F  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $B402  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $024C  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $019D  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw $CAE8, $0479  ; Map counter
    dw #$FFFF

preset_spazermap_blue_brinstar_cleanup_crateria_map_entry:
    dw #preset_spazermap_blue_brinstar_cleanup_parlor_again ; Blue Brinstar Cleanup: Parlor Again
    dw $078D, $8B3E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $47FF  ; Screen subpixel Y position
    dw $0915, $030C  ; Screen Y position in pixels
    dw $0919, $0249  ; Layer 2 Y position
    dw $09CA, $0009  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01B2  ; Samus X
    dw $0AFA, $039B  ; Samus Y
    dw $D8B0, $B022  ; Doors
    dw #$FFFF

preset_spazermap_blue_brinstar_cleanup_crateria_map_exit:
    dw #preset_spazermap_blue_brinstar_cleanup_crateria_map_entry ; Blue Brinstar Cleanup: Crateria Map Entry
    dw $078D, $8BDA  ; DDB
    dw $079B, $9994  ; MDB
    dw $0819, $001F  ; Explored map tiles
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002B  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $047D  ; Map counter
    dw #$FFFF

preset_spazermap_blue_brinstar_cleanup_230_mockball:
    dw #preset_spazermap_blue_brinstar_cleanup_crateria_map_exit ; Blue Brinstar Cleanup: Crateria Map Exit
    dw $078D, $8C82  ; DDB
    dw $079B, $9A90  ; MDB
    dw $0819, $00FF  ; Explored map tiles
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $9800  ; Screen subpixel Y position
    dw $09CE, $0000  ; Pbs
    dw $09D2, $0004  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $006F  ; Samus X
    dw $CAE8, $0480  ; Map counter
    dw #$FFFF

preset_spazermap_blue_brinstar_cleanup_parlor_not_final_climb:
    dw #preset_spazermap_blue_brinstar_cleanup_230_mockball ; Blue Brinstar Cleanup: 230 Mockball
    dw $078D, $899A  ; DDB
    dw $079B, $93D5  ; MDB
    dw $0815, $C037  ; Explored map tiles
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $3000  ; Screen subpixel Y position
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $00C0  ; Samus X
    dw $CAE8, $0481  ; Map counter
    dw #$FFFF

preset_spazermap_tourian_tourian_elevator:
    dw #preset_spazermap_blue_brinstar_cleanup_parlor_not_final_climb ; Blue Brinstar Cleanup: Parlor (not) Final Climb
    dw $078D, $91F2  ; DDB
    dw $079B, $A66A  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $081B, $FF03  ; Explored map tiles
    dw $081D, $00D0  ; Explored map tiles
    dw $0821, $805F  ; Explored map tiles
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $09CA, $0008  ; Supers
    dw $0AF6, $007D  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $CAE8, $0488  ; Map counter
    dw $D820, $3FC1  ; Events
    dw $D8B2, $EC09  ; Doors
    dw #$FFFF

preset_spazermap_tourian_metroids_1:
    dw #preset_spazermap_tourian_tourian_elevator ; Tourian: Tourian Elevator
    dw $078D, $AB40  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $07FD, $0000  ; Explored map tiles
    dw $0801, $0000  ; Explored map tiles
    dw $0803, $0000  ; Explored map tiles
    dw $0805, $0000  ; Explored map tiles
    dw $0807, $0000  ; Explored map tiles
    dw $0809, $0000  ; Explored map tiles
    dw $080B, $0000  ; Explored map tiles
    dw $080D, $0000  ; Explored map tiles
    dw $080F, $0000  ; Explored map tiles
    dw $0811, $0000  ; Explored map tiles
    dw $0813, $0000  ; Explored map tiles
    dw $0815, $0000  ; Explored map tiles
    dw $0817, $0000  ; Explored map tiles
    dw $0819, $0000  ; Explored map tiles
    dw $081B, $0000  ; Explored map tiles
    dw $081D, $0000  ; Explored map tiles
    dw $0821, $0008  ; Explored map tiles
    dw $0825, $0008  ; Explored map tiles
    dw $0829, $0008  ; Explored map tiles
    dw $082D, $000C  ; Explored map tiles
    dw $0831, $0000  ; Explored map tiles
    dw $0835, $0000  ; Explored map tiles
    dw $0839, $0000  ; Explored map tiles
    dw $083D, $0000  ; Explored map tiles
    dw $0841, $0000  ; Explored map tiles
    dw $0845, $0000  ; Explored map tiles
    dw $087B, $0000  ; Explored map tiles
    dw $087F, $0000  ; Explored map tiles
    dw $0883, $0000  ; Explored map tiles
    dw $0887, $0000  ; Explored map tiles
    dw $088B, $0000  ; Explored map tiles
    dw $088D, $0000  ; Explored map tiles
    dw $088F, $0000  ; Explored map tiles
    dw $0891, $0000  ; Explored map tiles
    dw $0893, $0000  ; Explored map tiles
    dw $0895, $0000  ; Explored map tiles
    dw $0897, $0000  ; Explored map tiles
    dw $0899, $0000  ; Explored map tiles
    dw $089D, $0000  ; Explored map tiles
    dw $08A1, $0000  ; Explored map tiles
    dw $08A5, $0000  ; Explored map tiles
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0037  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $CAE8, $048D  ; Map counter
    dw $CD70, $C037  ; Explored map tiles (Crateria)
    dw $CD74, $00FF  ; Explored map tiles (Crateria)
    dw $CD76, $FF03  ; Explored map tiles (Crateria)
    dw $CD78, $00D0  ; Explored map tiles (Crateria)
    dw $CD7C, $805F  ; Explored map tiles (Crateria)
    dw $CD80, $8010  ; Explored map tiles (Crateria)
    dw $CD84, $8010  ; Explored map tiles (Crateria)
    dw $CD88, $8010  ; Explored map tiles (Crateria)
    dw $CD8C, $8010  ; Explored map tiles (Crateria)
    dw $CD90, $8010  ; Explored map tiles (Crateria)
    dw $CD94, $8010  ; Explored map tiles (Crateria)
    dw $CD98, $801F  ; Explored map tiles (Crateria)
    dw $CDA0, $0008  ; Explored map tiles (Crateria)
    dw $D90C, $0100  ; Map Stations
    dw #$FFFF

preset_spazermap_tourian_metroids_2:
    dw #preset_spazermap_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $082B, $0300  ; Explored map tiles
    dw $082D, $00FC  ; Explored map tiles
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0271  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $000B  ; Supers
    dw $09CE, $0001  ; Pbs
    dw $0AF6, $0033  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $0493  ; Map counter
    dw $D822, $0021  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF

preset_spazermap_tourian_metroids_3:
    dw #preset_spazermap_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $082B, $0700  ; Explored map tiles
    dw $082F, $0400  ; Explored map tiles
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0119  ; Screen Y position in pixels
    dw $0919, $00D2  ; Layer 2 Y position
    dw $09C2, $02BD  ; Health
    dw $09CA, $000C  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $0495  ; Map counter
    dw $D822, $0023  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF

preset_spazermap_tourian_metroids_4:
    dw #preset_spazermap_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $082F, $0700  ; Explored map tiles
    dw $0831, $00F0  ; Explored map tiles
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $031F  ; Health
    dw $09CE, $0002  ; Pbs
    dw $0AF6, $05AF  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $049B  ; Map counter
    dw $D822, $0027  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF

preset_spazermap_tourian_baby_skip:
    dw #preset_spazermap_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $0831, $00F8  ; Explored map tiles
    dw $0835, $0008  ; Explored map tiles
    dw $0839, $0038  ; Explored map tiles
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $031F  ; Health
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01B5  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $CAE8, $04A0  ; Map counter
    dw $D822, $002F  ; Events
    dw $D8C4, $000F  ; Doors
    dw #$FFFF

preset_spazermap_tourian_dusty_shaft_revisit:
    dw #preset_spazermap_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AA68  ; DDB
    dw $079B, $DD2E  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $0837, $0F00  ; Explored map tiles
    dw $0839, $00F8  ; Explored map tiles
    dw $083B, $1800  ; Explored map tiles
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00D9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $04A8  ; Map counter
    dw $D8C4, $002F  ; Doors
    dw #$FFFF

preset_spazermap_tourian_zeb_skip:
    dw #preset_spazermap_tourian_dusty_shaft_revisit ; Tourian: Dusty Shaft Revisit
    dw $078D, $AAD4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $083B, $1F00  ; Explored map tiles
    dw $083D, $00C0  ; Explored map tiles
    dw $0841, $00C0  ; Explored map tiles
    dw $0845, $0040  ; Explored map tiles
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021A  ; Screen Y position in pixels
    dw $0919, $0193  ; Layer 2 Y position
    dw $09CA, $000A  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0045  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $CAE8, $04B0  ; Map counter
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF

preset_spazermap_tourian_mother_brain_2:
    dw #preset_spazermap_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAC8  ; DDB
    dw $079B, $DD58  ; MDB
    dw $07F3, $0021  ; Music Bank
    dw $07F5, $0000  ; Music Track
    dw $0843, $0700  ; Explored map tiles
    dw $0845, $00C0  ; Explored map tiles
    dw $090F, $79FF  ; Screen subpixel X position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0306  ; Health
    dw $09C6, $0006  ; Missiles
    dw $09CA, $0001  ; Supers
    dw $0AF6, $00CF  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $CAE8, $04B4  ; Map counter
    dw $D820, $3FC5  ; Events
    dw #$FFFF

preset_spazermap_tourian_zebes_escape:
    dw #preset_spazermap_tourian_mother_brain_2 ; Tourian: Mother Brain 2
    dw $09A6, $1009  ; Equipped Beams
    dw $09C2, $031F  ; Health
    dw $09C6, $0000  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $09CE, $0000  ; Pbs
    dw $09D6, $0190  ; Reserves
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0A76, $8000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $009E  ; Samus Y
    dw $D820, $7FC5  ; Events
    dw $D82C, $0203  ; Bosses
    dw #$FFFF

preset_spazermap_tourian_escape_room_3:
    dw #preset_spazermap_tourian_zebes_escape ; Tourian: Zebes Escape
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $0843, $1F00  ; Explored map tiles
    dw $0847, $1000  ; Explored map tiles
    dw $084B, $1000  ; Explored map tiles
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DE  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $04B8  ; Map counter
    dw #$FFFF

preset_spazermap_tourian_escape_room_4:
    dw #preset_spazermap_tourian_escape_room_3 ; Tourian: Escape Room 3
    dw $078D, $AB04  ; DDB
    dw $079B, $DEA7  ; MDB
    dw $0847, $1E00  ; Explored map tiles
    dw $084B, $1F00  ; Explored map tiles
    dw $084D, $00C0  ; Explored map tiles
    dw $0911, $01D7  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $0161  ; Layer 2 X position
    dw $0919, $000F  ; Layer 2 Y position
    dw $0AF6, $0237  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $CAE8, $04C1  ; Map counter
    dw #$FFFF

preset_spazermap_tourian_escape_climb:
    dw #preset_spazermap_tourian_escape_room_4 ; Tourian: Escape Room 4
    dw $078D, $AB1C  ; DDB
    dw $079B, $DEDE  ; MDB
    dw $083D, $00F8  ; Explored map tiles
    dw $0841, $00F0  ; Explored map tiles
    dw $0845, $00F8  ; Explored map tiles
    dw $0847, $1F00  ; Explored map tiles
    dw $0849, $00F8  ; Explored map tiles
    dw $084D, $00F8  ; Explored map tiles
    dw $0851, $0038  ; Explored map tiles
    dw $0911, $00F1  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $00FB  ; Screen Y position in pixels
    dw $0917, $00B4  ; Layer 2 X position
    dw $0919, $00BC  ; Layer 2 Y position
    dw $0AF6, $0151  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $CAE8, $04D5  ; Map counter
    dw #$FFFF

preset_spazermap_tourian_escape_parlor:
    dw #preset_spazermap_tourian_escape_climb ; Tourian: Escape Climb
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $07FD, $1F00  ; Explored map tiles
    dw $0801, $3F00  ; Explored map tiles
    dw $0803, $1F00  ; Explored map tiles
    dw $0805, $FFFF  ; Explored map tiles
    dw $0807, $1000  ; Explored map tiles
    dw $0809, $1F00  ; Explored map tiles
    dw $080B, $1100  ; Explored map tiles
    dw $080D, $FFFF  ; Explored map tiles
    dw $080F, $1700  ; Explored map tiles
    dw $0811, $0094  ; Explored map tiles
    dw $0813, $1E00  ; Explored map tiles
    dw $0815, $C037  ; Explored map tiles
    dw $0817, $1000  ; Explored map tiles
    dw $0819, $00FF  ; Explored map tiles
    dw $081B, $FF03  ; Explored map tiles
    dw $081D, $00D0  ; Explored map tiles
    dw $0821, $805F  ; Explored map tiles
    dw $0825, $8010  ; Explored map tiles
    dw $0829, $8010  ; Explored map tiles
    dw $082B, $0000  ; Explored map tiles
    dw $082D, $8010  ; Explored map tiles
    dw $082F, $0000  ; Explored map tiles
    dw $0831, $8010  ; Explored map tiles
    dw $0835, $8010  ; Explored map tiles
    dw $0837, $0000  ; Explored map tiles
    dw $0839, $8010  ; Explored map tiles
    dw $083B, $0000  ; Explored map tiles
    dw $083D, $801F  ; Explored map tiles
    dw $0841, $003F  ; Explored map tiles
    dw $0843, $0000  ; Explored map tiles
    dw $0845, $0008  ; Explored map tiles
    dw $0847, $0000  ; Explored map tiles
    dw $0849, $0000  ; Explored map tiles
    dw $084B, $0000  ; Explored map tiles
    dw $084D, $0000  ; Explored map tiles
    dw $0851, $0000  ; Explored map tiles
    dw $087B, $FC03  ; Explored map tiles
    dw $087F, $FCC3  ; Explored map tiles
    dw $0883, $F003  ; Explored map tiles
    dw $0887, $F003  ; Explored map tiles
    dw $088B, $FCFF  ; Explored map tiles
    dw $088D, $807F  ; Explored map tiles
    dw $088F, $FC2F  ; Explored map tiles
    dw $0891, $807F  ; Explored map tiles
    dw $0893, $0020  ; Explored map tiles
    dw $0895, $8000  ; Explored map tiles
    dw $0897, $0020  ; Explored map tiles
    dw $0899, $8000  ; Explored map tiles
    dw $089D, $8007  ; Explored map tiles
    dw $08A1, $800F  ; Explored map tiles
    dw $08A5, $0008  ; Explored map tiles
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0258  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $019D  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw $CAE8, $04D7  ; Map counter
    dw $D27C, $0008  ; Explored map tiles (Tourian)
    dw $D280, $0008  ; Explored map tiles (Tourian)
    dw $D284, $0008  ; Explored map tiles (Tourian)
    dw $D286, $0700  ; Explored map tiles (Tourian)
    dw $D288, $00FC  ; Explored map tiles (Tourian)
    dw $D28A, $0700  ; Explored map tiles (Tourian)
    dw $D28C, $00F8  ; Explored map tiles (Tourian)
    dw $D290, $0008  ; Explored map tiles (Tourian)
    dw $D292, $0F00  ; Explored map tiles (Tourian)
    dw $D294, $00F8  ; Explored map tiles (Tourian)
    dw $D296, $1F00  ; Explored map tiles (Tourian)
    dw $D298, $00F8  ; Explored map tiles (Tourian)
    dw $D29C, $00F8  ; Explored map tiles (Tourian)
    dw $D29E, $1F00  ; Explored map tiles (Tourian)
    dw $D2A0, $00F8  ; Explored map tiles (Tourian)
    dw $D2A2, $1F00  ; Explored map tiles (Tourian)
    dw $D2A4, $00F8  ; Explored map tiles (Tourian)
    dw $D2A6, $1F00  ; Explored map tiles (Tourian)
    dw $D2A8, $00F8  ; Explored map tiles (Tourian)
    dw $D2AC, $0038  ; Explored map tiles (Tourian)
    dw #$FFFF

preset_spazermap_tourian_landing_site_final:
    dw #preset_spazermap_tourian_escape_parlor ; Tourian: Escape Parlor
    dw $078D, $8B3E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $047A  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF
