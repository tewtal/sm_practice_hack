
preset_hundo_bombs_ceres_elevator:
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

preset_hundo_bombs_ceres_escape:
    dw #preset_hundo_bombs_ceres_elevator ; Bombs: Ceres Elevator
    dw $078D, $ABAC  ; DDB
    dw $079B, $E0B5  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
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
    dw $D82E, $0001  ; Bosses
    dw #$FFFF

preset_hundo_bombs_ceres_last_3_rooms:
    dw #preset_hundo_bombs_ceres_escape ; Bombs: Ceres Escape
    dw $078D, $ABA0  ; DDB
    dw $079B, $E021  ; MDB
    dw $090F, $7400  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $00A2  ; Samus Y
    dw #$FFFF

preset_hundo_bombs_ship:
    dw #preset_hundo_bombs_ceres_last_3_rooms ; Bombs: Ceres Last 3 Rooms
    dw $078D, $88FE  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $0006  ; Music Bank
    dw $07F5, $0005  ; Music Track
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
    dw #$FFFF

preset_hundo_bombs_parlor:
    dw #preset_hundo_bombs_ship ; Bombs: Ship
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0079  ; Samus X
    dw $0AFA, $049B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_hundo_bombs_climb_down:
    dw #preset_hundo_bombs_parlor ; Bombs: Parlor
    dw $078D, $8916  ; DDB
    dw $079B, $92FD  ; MDB
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
    dw #$FFFF

preset_hundo_bombs_pit_room:
    dw #preset_hundo_bombs_climb_down ; Bombs: Climb Down
    dw $078D, $898E  ; DDB
    dw $079B, $96BA  ; MDB
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
    dw #$FFFF

preset_hundo_bombs_morph:
    dw #preset_hundo_bombs_pit_room ; Bombs: Pit Room
    dw $078D, $8B9E  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F5, $0007  ; Music Track
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
    dw #$FFFF

preset_hundo_bombs_construction_zone_down:
    dw #preset_hundo_bombs_morph ; Bombs: Morph
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
    dw $D872, $0400  ; Items
    dw #$FFFF

preset_hundo_bombs_construction_zone_up:
    dw #preset_hundo_bombs_construction_zone_down ; Bombs: Construction Zone Down
    dw $078D, $8EDA  ; DDB
    dw $079B, $A107  ; MDB
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
    dw $D874, $0004  ; Items
    dw #$FFFF

preset_hundo_bombs_pit_room_revisit:
    dw #preset_hundo_bombs_construction_zone_up ; Bombs: Construction Zone Up
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw #$FFFF

preset_hundo_bombs_climb_up:
    dw #preset_hundo_bombs_pit_room_revisit ; Bombs: Pit Room Revisit
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0087  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $0001  ; Events
    dw $D8B2, $0400  ; Doors
    dw #$FFFF

preset_hundo_bombs_parlor_revisit:
    dw #preset_hundo_bombs_climb_up ; Bombs: Climb Up
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0AF6, $01A0  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_hundo_bombs_flyway:
    dw #preset_hundo_bombs_parlor_revisit ; Bombs: Parlor Revisit
    dw $078D, $8B3E  ; DDB
    dw $079B, $92FD  ; MDB
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
    dw #$FFFF

preset_hundo_bombs_bomb_torizo:
    dw #preset_hundo_bombs_flyway ; Bombs: Flyway
    dw $078D, $8982  ; DDB
    dw $079B, $9879  ; MDB
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
    dw $D8B2, $2400  ; Doors
    dw #$FFFF

preset_hundo_kraid_alcatraz:
    dw #preset_hundo_bombs_bomb_torizo ; Bombs: Bomb Torizo
    dw $078D, $8BAA  ; DDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C6, $0004  ; Missiles
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0028  ; Samus X
    dw $D828, $0004  ; Bosses
    dw $D870, $0080  ; Items
    dw $D8B2, $2C00  ; Doors
    dw #$FFFF

preset_hundo_kraid_terminator:
    dw #preset_hundo_kraid_alcatraz ; Kraid: Alcatraz
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

preset_hundo_kraid_green_pirate_shaft:
    dw #preset_hundo_kraid_terminator ; Kraid: Terminator
    dw $078D, $895E  ; DDB
    dw $079B, $990D  ; MDB
    dw $090F, $4280  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01EB  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $017D  ; Layer 2 Y position
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09C6, $0005  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002E  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D870, $0180  ; Items
    dw #$FFFF

preset_hundo_kraid_elevator:
    dw #preset_hundo_kraid_green_pirate_shaft ; Kraid: Green Pirate Shaft
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $008B  ; Health
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_hundo_kraid_early_supers:
    dw #preset_hundo_kraid_elevator ; Kraid: Elevator
    dw $078D, $8C0A  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $041C  ; Screen Y position in pixels
    dw $0919, $0315  ; Layer 2 Y position
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00AB  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $D8B4, $0002  ; Doors
    dw #$FFFF

preset_hundo_kraid_reverse_mockball:
    dw #preset_hundo_kraid_early_supers ; Kraid: Early Supers
    dw $078D, $8D5A  ; DDB
    dw $079B, $9C07  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0001  ; Screen subpixel X position
    dw $0913, $3400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C0, $0001  ; Manual/Auto reserve tank
    dw $09C2, $00B3  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09D4, $0064  ; Max reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003F  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D872, $040F  ; Items
    dw $D8B4, $0042  ; Doors
    dw #$FFFF

preset_hundo_kraid_dachora_room:
    dw #preset_hundo_kraid_reverse_mockball ; Kraid: Reverse Mockball
    dw $078D, $8D4E  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $061A  ; Screen Y position in pixels
    dw $0919, $0493  ; Layer 2 Y position
    dw $09C2, $00C7  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $004D  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D870, $8180  ; Items
    dw $D8B4, $0046  ; Doors
    dw #$FFFF

preset_hundo_kraid_big_pink:
    dw #preset_hundo_kraid_dachora_room ; Kraid: Dachora Room
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00C2  ; Health
    dw $0AF6, $06A3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_hundo_kraid_green_hill_zone:
    dw #preset_hundo_kraid_big_pink ; Kraid: Big Pink
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $77FF  ; Screen subpixel Y position
    dw $0915, $0618  ; Screen Y position in pixels
    dw $09A6, $1000  ; Equipped Beams
    dw $09A8, $1000  ; Collected Beams
    dw $09CA, $0002  ; Supers
    dw $0AF6, $0365  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D872, $048F  ; Items
    dw $D8B4, $0246  ; Doors
    dw #$FFFF

preset_hundo_kraid_red_tower:
    dw #preset_hundo_kraid_green_hill_zone ; Kraid: Green Hill Zone
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $09C2, $00B8  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0AF6, $0590  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B6, $0008  ; Doors
    dw #$FFFF

preset_hundo_kraid_skree_boost:
    dw #preset_hundo_kraid_red_tower ; Kraid: Red Tower
    dw $078D, $8F0A  ; DDB
    dw $079B, $A253  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $091A  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $06D3  ; Layer 2 Y position
    dw $0AF6, $0066  ; Samus X
    dw $0AFA, $098B  ; Samus Y
    dw #$FFFF

preset_hundo_kraid_kraid_entry:
    dw #preset_hundo_kraid_skree_boost ; Kraid: Skree Boost
    dw $078D, $A348  ; DDB
    dw $079B, $CF80  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09A6, $1004  ; Equipped Beams
    dw $09A8, $1004  ; Collected Beams
    dw $09C2, $00AF  ; Health
    dw $09C6, $0010  ; Missiles
    dw $0AF6, $0050  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D874, $0404  ; Items
    dw $D8B6, $8008  ; Doors
    dw #$FFFF

preset_hundo_kraid_kraid_kihunter_room:
    dw #preset_hundo_kraid_kraid_entry ; Kraid: Kraid Entry
    dw $078D, $923A  ; DDB
    dw $079B, $A471  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $00A5  ; Health
    dw $09CA, $0000  ; Supers
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $016B  ; Samus X
    dw $0AFA, $0190  ; Samus Y
    dw #$FFFF

preset_hundo_kraid_kraid:
    dw #preset_hundo_kraid_kraid_kihunter_room ; Kraid: Kraid Kihunter Room
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0917, $0100  ; Layer 2 X position
    dw $09C2, $0099  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0AF6, $01CC  ; Samus X
    dw $D8B8, $0024  ; Doors
    dw #$FFFF

preset_hundo_kraid_leaving_varia:
    dw #preset_hundo_kraid_kraid ; Kraid: Kraid
    dw $078D, $91DA  ; DDB
    dw $079B, $A6E2  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1005  ; Equipped Items
    dw $09A4, $1005  ; Collected Items
    dw $09C2, $00C7  ; Health
    dw $09C6, $0012  ; Missiles
    dw $09CA, $0002  ; Supers
    dw $09D6, $0004  ; Reserves
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0078  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $D828, $0104  ; Bosses
    dw $D876, $0001  ; Items
    dw $D8B8, $0064  ; Doors
    dw #$FFFF

preset_hundo_kraid_leaving_kraid_hallway:
    dw #preset_hundo_kraid_leaving_varia ; Kraid: Leaving Varia
    dw $078D, $91AA  ; DDB
    dw $079B, $A521  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $4000  ; Screen subpixel Y position
    dw $09C2, $00BF  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0087  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $00EC  ; Doors
    dw #$FFFF

preset_hundo_kraid_leaving_kraid_etank:
    dw #preset_hundo_kraid_leaving_kraid_hallway ; Kraid: Leaving Kraid Hallway
    dw $078D, $914A  ; DDB
    dw $079B, $A4B1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09D6, $0014  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $008D  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D874, $0C04  ; Items
    dw $D8B8, $00EF  ; Doors
    dw #$FFFF

preset_hundo_speed_booster_business_center:
    dw #preset_hundo_kraid_leaving_kraid_etank ; Kraid: Leaving Kraid E-Tank
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $09C6, $0011  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09D6, $0018  ; Reserves
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF

preset_hundo_speed_booster_hijump_boots:
    dw #preset_hundo_speed_booster_business_center ; Speed Booster: Business Center
    dw $090F, $6001  ; Screen subpixel X position
    dw $0915, $051B  ; Screen Y position in pixels
    dw $0919, $03D4  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $09D6, $001D  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0046  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $D8B8, $20EF  ; Doors
    dw #$FFFF

preset_hundo_speed_booster_business_center_climb:
    dw #preset_hundo_speed_booster_hijump_boots ; Speed Booster: Hi-Jump Boots
    dw $078D, $93F6  ; DDB
    dw $079B, $AA41  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1105  ; Equipped Items
    dw $09A4, $1105  ; Collected Items
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $0018  ; Missiles
    dw $09C8, $0019  ; Max missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01A3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $01A1  ; Items
    dw $D8BA, $0001  ; Doors
    dw #$FFFF

preset_hundo_speed_booster_cathedral_entrance:
    dw #preset_hundo_speed_booster_business_center_climb ; Speed Booster: Business Center Climb
    dw $078D, $941A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $BFFF  ; Screen subpixel Y position
    dw $0915, $02F6  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0238  ; Layer 2 Y position
    dw $0AF6, $00AB  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_hundo_speed_booster_cathedral:
    dw #preset_hundo_speed_booster_cathedral_entrance ; Speed Booster: Cathedral Entrance
    dw $078D, $92CA  ; DDB
    dw $079B, $A7B3  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $0001  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $09CA, $0002  ; Supers
    dw $09D6, $0022  ; Reserves
    dw $0AF6, $02A4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $24EF  ; Doors
    dw #$FFFF

preset_hundo_speed_booster_rising_tide:
    dw #preset_hundo_speed_booster_cathedral ; Speed Booster: Cathedral
    dw $078D, $92B2  ; DDB
    dw $079B, $A788  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $016E  ; Health
    dw $09C6, $001A  ; Missiles
    dw $09C8, $001E  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0AF6, $02AF  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D876, $01A3  ; Items
    dw $D8B8, $26EF  ; Doors
    dw #$FFFF

preset_hundo_speed_booster_bubble_mountain:
    dw #preset_hundo_speed_booster_rising_tide ; Speed Booster: Rising Tide
    dw $078D, $929A  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0169  ; Health
    dw $0AF6, $04B0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_hundo_speed_booster_bat_cave:
    dw #preset_hundo_speed_booster_bubble_mountain ; Speed Booster: Bubble Mountain
    dw $078D, $973E  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $0003  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0002  ; Layer 2 Y position
    dw $09C2, $0178  ; Health
    dw $09C6, $001B  ; Missiles
    dw $09CA, $0002  ; Supers
    dw $0AF6, $01B8  ; Samus X
    dw $D8BA, $0011  ; Doors
    dw #$FFFF

preset_hundo_speed_booster_leaving_speed_booster:
    dw #preset_hundo_speed_booster_bat_cave ; Speed Booster: Bat Cave
    dw $078D, $95B2  ; DDB
    dw $079B, $AD1B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $3105  ; Equipped Items
    dw $09A4, $3105  ; Collected Items
    dw $09C2, $018F  ; Health
    dw $09C6, $001C  ; Missiles
    dw $09C8, $0023  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09D6, $0038  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0042  ; Samus X
    dw $D878, $0006  ; Items
    dw $D8BA, $0031  ; Doors
    dw #$FFFF

preset_hundo_ice_beam_single_chamber:
    dw #preset_hundo_speed_booster_leaving_speed_booster ; Speed Booster: Leaving Speed Booster
    dw $078D, $97AA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0104  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $00C3  ; Layer 2 Y position
    dw $09C2, $018A  ; Health
    dw $09C6, $0020  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $09D6, $0064  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01AD  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0020  ; Events
    dw #$FFFF

preset_hundo_ice_beam_double_chamber:
    dw #preset_hundo_ice_beam_single_chamber ; Ice Beam: Single Chamber
    dw $078D, $9582  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0126  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00DC  ; Layer 2 Y position
    dw $09C2, $0171  ; Health
    dw $09CA, $0004  ; Supers
    dw $0AF6, $00B8  ; Samus X
    dw $D8BA, $0071  ; Doors
    dw #$FFFF

preset_hundo_ice_beam_double_chamber_revisit:
    dw #preset_hundo_ice_beam_double_chamber ; Ice Beam: Double Chamber
    dw $078D, $961E  ; DDB
    dw $079B, $ADDE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A6, $1005  ; Equipped Beams
    dw $09A8, $1005  ; Collected Beams
    dw $09C6, $0025  ; Missiles
    dw $09C8, $0028  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004F  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $001E  ; Items
    dw $D8BA, $00F1  ; Doors
    dw #$FFFF

preset_hundo_ice_beam_bubble_mountain_revisit:
    dw #preset_hundo_ice_beam_double_chamber_revisit ; Ice Beam: Double Chamber Revisit
    dw $078D, $9606  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $001B  ; Screen Y position in pixels
    dw $0919, $0014  ; Layer 2 Y position
    dw $09C6, $0023  ; Missiles
    dw $0AF6, $008F  ; Samus X
    dw #$FFFF

preset_hundo_ice_beam_business_center_climb_ice:
    dw #preset_hundo_ice_beam_bubble_mountain_revisit ; Ice Beam: Bubble Mountain Revisit
    dw $078D, $97DA  ; DDB
    dw $079B, $B167  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0185  ; Health
    dw $09CA, $0005  ; Supers
    dw $0AF6, $0040  ; Samus X
    dw #$FFFF

preset_hundo_ice_beam_ice_beam_gate_room:
    dw #preset_hundo_ice_beam_business_center_climb_ice ; Ice Beam: Business Center Climb Ice
    dw $078D, $9816  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $09C6, $0025  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0AF6, $0021  ; Samus X
    dw $0AFA, $038C  ; Samus Y
    dw $D8B8, $2EEF  ; Doors
    dw #$FFFF

preset_hundo_ice_beam_ice_beam_snake_room:
    dw #preset_hundo_ice_beam_ice_beam_gate_room ; Ice Beam: Ice Beam Gate Room
    dw $078D, $931E  ; DDB
    dw $079B, $A75D  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $FA00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0180  ; Health
    dw $09C6, $0024  ; Missiles
    dw $0AF6, $0030  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_hundo_ice_beam_ice_beam_snake_room_revisit:
    dw #preset_hundo_ice_beam_ice_beam_snake_room ; Ice Beam: Ice Beam Snake Room
    dw $078D, $937E  ; DDB
    dw $079B, $A890  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $09A6, $1007  ; Equipped Beams
    dw $09A8, $1007  ; Collected Beams
    dw $09C2, $0185  ; Health
    dw $0AF6, $00BA  ; Samus X
    dw $D876, $01A7  ; Items
    dw #$FFFF

preset_hundo_ice_beam_ice_beam_gate_room_escape:
    dw #preset_hundo_ice_beam_ice_beam_snake_room_revisit ; Ice Beam: Ice Beam Snake Room Revisit
    dw $078D, $935A  ; DDB
    dw $079B, $A8B9  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $5001  ; Screen subpixel X position
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C7  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_hundo_ice_beam_business_center_elevator:
    dw #preset_hundo_ice_beam_ice_beam_gate_room_escape ; Ice Beam: Ice Beam Gate Room Escape
    dw $078D, $9276  ; DDB
    dw $079B, $A815  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $03CA  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $042A  ; Samus X
    dw #$FFFF

preset_hundo_phantoon_alpha_spark:
    dw #preset_hundo_ice_beam_business_center_elevator ; Ice Beam: Business Center Elevator
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_hundo_phantoon_red_tower_revisit:
    dw #preset_hundo_phantoon_alpha_spark ; Phantoon: Alpha Spark
    dw $078D, $910E  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $3C00  ; Screen subpixel X position
    dw $0913, $E400  ; Screen subpixel Y position
    dw $09C2, $014C  ; Health
    dw $09CA, $0005  ; Supers
    dw $0A1C, $00CA  ; Samus position/state
    dw $0A1E, $1B04  ; More position/state
    dw $0A68, $000E  ; Flash suit
    dw $0AF6, $0047  ; Samus X
    dw $0AFA, $0070  ; Samus Y
    dw $0B3F, $0004  ; Blue suit
    dw #$FFFF

preset_hundo_phantoon_hellway:
    dw #preset_hundo_phantoon_red_tower_revisit ; Phantoon: Red Tower Revisit
    dw $078D, $90F6  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $87FF  ; Screen subpixel Y position
    dw $0915, $0006  ; Screen Y position in pixels
    dw $09C2, $0149  ; Health
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $00C7  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw #$FFFF

preset_hundo_phantoon_leaving_alpha_power_bombs:
    dw #preset_hundo_phantoon_hellway ; Phantoon: Hellway
    dw $078D, $9096  ; DDB
    dw $079B, $A3AE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $012F  ; Health
    dw $09C6, $0029  ; Missiles
    dw $09C8, $002D  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $000B  ; Samus position/state
    dw $0AF6, $02C0  ; Samus X
    dw $D874, $0F04  ; Items
    dw $D8B6, $A008  ; Doors
    dw #$FFFF

preset_hundo_phantoon_kihunter_room:
    dw #preset_hundo_phantoon_leaving_alpha_power_bombs ; Phantoon: Leaving Alpha Power Bombs
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9C01  ; Screen subpixel Y position
    dw $09C2, $0137  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CE, $0007  ; Pbs
    dw $09D0, $000A  ; Max pbs
    dw $0A1C, $0019  ; Samus position/state
    dw $0A1E, $0308  ; More position/state
    dw $0AF6, $0072  ; Samus X
    dw $0AFA, $002D  ; Samus Y
    dw $D874, $0F84  ; Items
    dw $D8B2, $2C01  ; Doors
    dw $D8B6, $E808  ; Doors
    dw #$FFFF

preset_hundo_phantoon_ocean_fly:
    dw #preset_hundo_phantoon_kihunter_room ; Phantoon: Kihunter Room
    dw $078D, $8AF6  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0131  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $09C6, $0028  ; Missiles
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0011  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0A68, $00AD  ; Flash suit
    dw $0AF6, $0191  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D8B0, $2000  ; Doors
    dw #$FFFF

preset_hundo_phantoon_phantoon:
    dw #preset_hundo_phantoon_ocean_fly ; Phantoon: Ocean Fly
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $008F  ; Health
    dw $09C6, $0032  ; Missiles
    dw $09C8, $0037  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $09CE, $0006  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $026B  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw $D870, $8190  ; Items
    dw $D880, $0001  ; Items
    dw $D8B0, $3000  ; Doors
    dw $D8C0, $0010  ; Doors
    dw #$FFFF

preset_hundo_gravity_ws_shaft_up_to_supers:
    dw #preset_hundo_phantoon_phantoon ; Phantoon: Phantoon
    dw $078D, $A2C4  ; DDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0205  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0183  ; Layer 2 X position
    dw $09C2, $012F  ; Health
    dw $09C6, $0035  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $09CE, $0007  ; Pbs
    dw $0AF6, $02A5  ; Samus X
    dw $0AFA, $0061  ; Samus Y
    dw $D82A, $0100  ; Bosses
    dw $D8C0, $0070  ; Doors
    dw #$FFFF

preset_hundo_gravity_ws_right_supers:
    dw #preset_hundo_gravity_ws_shaft_up_to_supers ; Gravity: WS Shaft Up To Supers
    dw $078D, $A294  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $04E5  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0600  ; Screen Y position in pixels
    dw $0917, $03AB  ; Layer 2 X position
    dw $0919, $0480  ; Layer 2 Y position
    dw $09CE, $0006  ; Pbs
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $05B7  ; Samus X
    dw $0AFA, $0690  ; Samus Y
    dw $D8C0, $0074  ; Doors
    dw #$FFFF

preset_hundo_gravity_leaving_ws_left_supers:
    dw #preset_hundo_gravity_ws_right_supers ; Gravity: WS Right Supers
    dw $078D, $A210  ; DDB
    dw $079B, $CDA8  ; MDB
    dw $090F, $AC00  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $011B  ; Health
    dw $09C6, $0034  ; Missiles
    dw $09CA, $000F  ; Supers
    dw $09CC, $000F  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00E9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $0061  ; Items
    dw #$FFFF

preset_hundo_gravity_spiky_room_of_death:
    dw #preset_hundo_gravity_leaving_ws_left_supers ; Gravity: Leaving WS Left Supers
    dw $078D, $A2E8  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $4C00  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0915, $0474  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0357  ; Layer 2 Y position
    dw $0AF6, $0457  ; Samus X
    dw $0AFA, $04E4  ; Samus Y
    dw #$FFFF

preset_hundo_gravity_ws_etank:
    dw #preset_hundo_gravity_spiky_room_of_death ; Gravity: Spiky Room of Death
    dw $078D, $A258  ; DDB
    dw $079B, $CBD5  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $00B7  ; Health
    dw $09C6, $0033  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $007D  ; Samus X
    dw $0AFA, $016B  ; Samus Y
    dw $D8C0, $007C  ; Doors
    dw #$FFFF

preset_hundo_gravity_spiky_room_of_death_revisit:
    dw #preset_hundo_gravity_ws_etank ; Gravity: WS E-Tank
    dw $078D, $A27C  ; DDB
    dw $079B, $CC27  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $01FD  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $017D  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01F3  ; Health
    dw $09C4, $01F3  ; Max health
    dw $09CA, $000E  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $029D  ; Samus X
    dw $0AFA, $008E  ; Samus Y
    dw $D880, $0071  ; Items
    dw $D8C0, $087C  ; Doors
    dw #$FFFF

preset_hundo_gravity_ws_shaft_up_to_attic:
    dw #preset_hundo_gravity_spiky_room_of_death_revisit ; Gravity: Spiky Room of Death Revisit
    dw $078D, $A24C  ; DDB
    dw $079B, $CD5C  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $3700  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $01DF  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_hundo_gravity_attic:
    dw #preset_hundo_gravity_ws_shaft_up_to_attic ; Gravity: WS Shaft Up To Attic
    dw $078D, $A2D0  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $0800  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $09C6, $0035  ; Missiles
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0449  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_hundo_gravity_ws_robot_missiles:
    dw #preset_hundo_gravity_attic ; Gravity: Attic
    dw $078D, $A228  ; DDB
    dw $079B, $CA52  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $63FF  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $001E  ; Layer 2 Y position
    dw $09C2, $01EB  ; Health
    dw $09C6, $002D  ; Missiles
    dw $09CA, $0008  ; Supers
    dw $0AF6, $06CD  ; Samus X
    dw $0AFA, $0099  ; Samus Y
    dw $D8C0, $0B7C  ; Doors
    dw #$FFFF

preset_hundo_gravity_attic_revisit:
    dw #preset_hundo_gravity_ws_robot_missiles ; Gravity: WS Robot Missiles
    dw $078D, $A1D4  ; DDB
    dw $079B, $CAAE  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01AD  ; Health
    dw $09C6, $0026  ; Missiles
    dw $09C8, $003C  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0046  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $0079  ; Items
    dw #$FFFF

preset_hundo_gravity_sky_missiles:
    dw #preset_hundo_gravity_attic_revisit ; Gravity: Attic Revisit
    dw $078D, $A1EC  ; DDB
    dw $079B, $CA52  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $97FE  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0919, $001E  ; Layer 2 Y position
    dw $09C2, $01A3  ; Health
    dw $09C6, $0025  ; Missiles
    dw $09CA, $0007  ; Supers
    dw $0AF6, $003C  ; Samus X
    dw #$FFFF

preset_hundo_gravity_bowling:
    dw #preset_hundo_gravity_sky_missiles ; Gravity: Sky Missiles
    dw $078D, $89E2  ; DDB
    dw $079B, $9461  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $A900  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $019E  ; Health
    dw $09C6, $002E  ; Missiles
    dw $09C8, $0046  ; Max missiles
    dw $09CA, $0006  ; Supers
    dw $09CE, $0006  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0194  ; Samus X
    dw $0B3F, $0001  ; Blue suit
    dw $D870, $819C  ; Items
    dw #$FFFF

preset_hundo_gravity_leaving_gravity:
    dw #preset_hundo_gravity_bowling ; Gravity: Bowling
    dw $078D, $A1A4  ; DDB
    dw $079B, $CE40  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09A2, $3125  ; Equipped Items
    dw $09A4, $3125  ; Collected Items
    dw $09C2, $011C  ; Health
    dw $09C6, $0033  ; Missiles
    dw $09C8, $004B  ; Max missiles
    dw $09CE, $0004  ; Pbs
    dw $09D4, $00C8  ; Max reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $006B  ; Samus X
    dw $0B3F, $0000  ; Blue suit
    dw $D880, $00FF  ; Items
    dw #$FFFF

preset_hundo_brinstar_cleanup_crateria_power_bombs:
    dw #preset_hundo_gravity_leaving_gravity ; Gravity: Leaving Gravity
    dw $078D, $8ADE  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $9C00  ; Screen subpixel X position
    dw $0913, $03FF  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C6, $0038  ; Missiles
    dw $09C8, $0050  ; Max missiles
    dw $0AF6, $008C  ; Samus X
    dw $0AFA, $00A8  ; Samus Y
    dw $D870, $819E  ; Items
    dw #$FFFF

preset_hundo_brinstar_cleanup_ship_room:
    dw #preset_hundo_brinstar_cleanup_crateria_power_bombs ; Brinstar Cleanup: Crateria Power Bombs
    dw $078D, $893A  ; DDB
    dw $079B, $93AA  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $E400  ; Screen subpixel Y position
    dw $09C2, $00B9  ; Health
    dw $09C6, $0034  ; Missiles
    dw $09CE, $000A  ; Pbs
    dw $09D0, $000F  ; Max pbs
    dw $0AF6, $0042  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D870, $819F  ; Items
    dw $D8B0, $3002  ; Doors
    dw #$FFFF

preset_hundo_brinstar_cleanup_gauntlet_etank:
    dw #preset_hundo_brinstar_cleanup_ship_room ; Brinstar Cleanup: Ship Room
    dw $078D, $892E  ; DDB
    dw $079B, $92B3  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0004  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0917, $0003  ; Layer 2 X position
    dw $09A6, $1001  ; Equipped Beams
    dw $09C2, $001D  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $09D6, $0035  ; Reserves
    dw $0AF6, $0084  ; Samus X
    dw #$FFFF

preset_hundo_brinstar_cleanup_green_pirate_shaft:
    dw #preset_hundo_brinstar_cleanup_gauntlet_etank ; Brinstar Cleanup: Gauntlet E-Tank
    dw $078D, $8952  ; DDB
    dw $079B, $965B  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $01F8  ; Health
    dw $09C4, $0257  ; Max health
    dw $09CE, $0009  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $002B  ; Samus X
    dw $D870, $81BF  ; Items
    dw #$FFFF

preset_hundo_brinstar_cleanup_green_shaft_revisit:
    dw #preset_hundo_brinstar_cleanup_green_pirate_shaft ; Brinstar Cleanup: Green Pirate Shaft
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $09C6, $0039  ; Missiles
    dw $09C8, $005A  ; Max missiles
    dw $0AF6, $0088  ; Samus X
    dw $D870, $87BF  ; Items
    dw #$FFFF

preset_hundo_brinstar_cleanup_green_brinstar_beetoms:
    dw #preset_hundo_brinstar_cleanup_green_shaft_revisit ; Brinstar Cleanup: Green Shaft Revisit
    dw $078D, $8C0A  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0A1B  ; Screen Y position in pixels
    dw $0919, $0794  ; Layer 2 Y position
    dw $09C2, $01FD  ; Health
    dw $09CE, $0008  ; Pbs
    dw $0AF6, $0036  ; Samus X
    dw $0AFA, $0A8B  ; Samus Y
    dw #$FFFF

preset_hundo_brinstar_cleanup_etecoon_energy_tank_room:
    dw #preset_hundo_brinstar_cleanup_green_brinstar_beetoms ; Brinstar Cleanup: Green Brinstar Beetoms
    dw $078D, $8F3A  ; DDB
    dw $079B, $A051  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01F5  ; Health
    dw $09C6, $0038  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $09CE, $000C  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C5  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D872, $848F  ; Items
    dw $D8B6, $E818  ; Doors
    dw #$FFFF

preset_hundo_brinstar_cleanup_etecoon_room:
    dw #preset_hundo_brinstar_cleanup_etecoon_energy_tank_room ; Brinstar Cleanup: Etecoon Energy Tank Room
    dw $078D, $8F5E  ; DDB
    dw $079B, $A011  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $029B  ; Health
    dw $09C4, $02BB  ; Max health
    dw $0AF6, $04CE  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D872, $C48F  ; Items
    dw #$FFFF

preset_hundo_brinstar_cleanup_dachora_room_revisit:
    dw #preset_hundo_brinstar_cleanup_etecoon_room ; Brinstar Cleanup: Etecoon Room
    dw $078D, $8D06  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $061F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0497  ; Layer 2 Y position
    dw $09C2, $028F  ; Health
    dw $09CE, $000F  ; Pbs
    dw $09D0, $0014  ; Max pbs
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $00B4  ; Samus X
    dw $0AFA, $0690  ; Samus Y
    dw $D870, $A7BF  ; Items
    dw #$FFFF

preset_hundo_brinstar_cleanup_big_pink_revisit:
    dw #preset_hundo_brinstar_cleanup_dachora_room_revisit ; Brinstar Cleanup: Dachora Room Revisit
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $054A  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03F7  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $05AA  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF

preset_hundo_brinstar_cleanup_mission_impossible:
    dw #preset_hundo_brinstar_cleanup_big_pink_revisit ; Brinstar Cleanup: Big Pink Revisit
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $031D  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0255  ; Layer 2 Y position
    dw $09C2, $0277  ; Health
    dw $09C6, $003D  ; Missiles
    dw $09C8, $005F  ; Max missiles
    dw $09CE, $000E  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0264  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D872, $C4AF  ; Items
    dw $D8B4, $0346  ; Doors
    dw #$FFFF

preset_hundo_brinstar_cleanup_pink_brinstar_etank:
    dw #preset_hundo_brinstar_cleanup_mission_impossible ; Brinstar Cleanup: Mission Impossible
    dw $078D, $8E62  ; DDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0299  ; Screen X position in pixels
    dw $0915, $042D  ; Screen Y position in pixels
    dw $0917, $01F2  ; Layer 2 X position
    dw $0919, $0321  ; Layer 2 Y position
    dw $09C2, $0268  ; Health
    dw $09C6, $003A  ; Missiles
    dw $09CA, $0007  ; Supers
    dw $09CE, $0013  ; Pbs
    dw $09D0, $0019  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02F9  ; Samus X
    dw $0AFA, $049B  ; Samus Y
    dw $0B3F, $0001  ; Blue suit
    dw $D872, $C5AF  ; Items
    dw $D8B4, $8346  ; Doors
    dw #$FFFF

preset_hundo_brinstar_cleanup_spore_spawn_supers:
    dw #preset_hundo_brinstar_cleanup_pink_brinstar_etank ; Brinstar Cleanup: Pink Brinstar E-Tank
    dw $078D, $8FB2  ; DDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $02F3  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $053A  ; Screen Y position in pixels
    dw $0917, $0236  ; Layer 2 X position
    dw $0919, $03EB  ; Layer 2 Y position
    dw $09C2, $0308  ; Health
    dw $09C4, $031F  ; Max health
    dw $09CA, $0006  ; Supers
    dw $09CE, $0012  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $0389  ; Samus X
    dw $0AFA, $05AB  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D874, $0F8C  ; Items
    dw $D8B6, $E8D8  ; Doors
    dw #$FFFF

preset_hundo_brinstar_cleanup_waterway_etank:
    dw #preset_hundo_brinstar_cleanup_spore_spawn_supers ; Brinstar Cleanup: Spore Spawn Supers
    dw $078D, $8F82  ; DDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0900  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $06C0  ; Layer 2 Y position
    dw $09C6, $003F  ; Missiles
    dw $09C8, $0064  ; Max missiles
    dw $09CA, $0007  ; Supers
    dw $09CC, $0019  ; Max supers
    dw $09CE, $000F  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004F  ; Samus X
    dw $0AFA, $098B  ; Samus Y
    dw $D870, $E7BF  ; Items
    dw $D872, $C5EF  ; Items
    dw $D8B4, $8B46  ; Doors
    dw $D8B6, $E8F8  ; Doors
    dw #$FFFF

preset_hundo_mama_turtle_etank_big_pink_charge_escape:
    dw #preset_hundo_brinstar_cleanup_waterway_etank ; Brinstar Cleanup: Waterway E-Tank
    dw $078D, $8F8E  ; DDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $B3FF  ; Screen subpixel Y position
    dw $09C2, $0383  ; Health
    dw $09C4, $0383  ; Max health
    dw $09C6, $0041  ; Missiles
    dw $09CE, $0012  ; Pbs
    dw $09D6, $005D  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0048  ; Samus X
    dw $D874, $0F8E  ; Items
    dw #$FFFF

preset_hundo_mama_turtle_etank_green_hill_zone_revisit:
    dw #preset_hundo_mama_turtle_etank_big_pink_charge_escape ; Mama Turtle E-Tank: Big Pink Charge Escape
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $02D1  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $061D  ; Screen Y position in pixels
    dw $0917, $021C  ; Layer 2 X position
    dw $0919, $0495  ; Layer 2 Y position
    dw $09CE, $0011  ; Pbs
    dw $0AF6, $0331  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw #$FFFF

preset_hundo_mama_turtle_etank_blockbuster:
    dw #preset_hundo_mama_turtle_etank_green_hill_zone_revisit ; Mama Turtle E-Tank: Green Hill Zone Revisit
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $001E  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0016  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $037E  ; Health
    dw $09C6, $0045  ; Missiles
    dw $09C8, $0069  ; Max missiles
    dw $09CE, $0010  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0081  ; Samus X
    dw $0AFA, $00A8  ; Samus Y
    dw $D872, $C7EF  ; Items
    dw $D8B6, $E8F9  ; Doors
    dw #$FFFF

preset_hundo_mama_turtle_etank_breaking_the_tube:
    dw #preset_hundo_mama_turtle_etank_blockbuster ; Mama Turtle E-Tank: Blockbuster
    dw $078D, $A360  ; DDB
    dw $079B, $CEFB  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6401  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $037C  ; Health
    dw $09CA, $0009  ; Supers
    dw $09CE, $000F  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $003A  ; Samus X
    dw $0AFA, $0188  ; Samus Y
    dw #$FFFF

preset_hundo_mama_turtle_etank_main_street:
    dw #preset_hundo_mama_turtle_etank_breaking_the_tube ; Mama Turtle E-Tank: Breaking The Tube
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $00FC  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0915, $071F  ; Screen Y position in pixels
    dw $0917, $00BD  ; Layer 2 X position
    dw $0919, $0557  ; Layer 2 Y position
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0198  ; Samus X
    dw $0AFA, $07B8  ; Samus Y
    dw $D820, $0801  ; Events
    dw #$FFFF

preset_hundo_mama_turtle_etank_fish_tank:
    dw #preset_hundo_mama_turtle_etank_main_street ; Mama Turtle E-Tank: Main Street
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $00D2  ; Screen X position in pixels
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $0603  ; Screen Y position in pixels
    dw $0917, $009D  ; Layer 2 X position
    dw $0919, $0482  ; Layer 2 Y position
    dw $09C2, $0330  ; Health
    dw $09C6, $0044  ; Missiles
    dw $09C8, $006E  ; Max missiles
    dw $09CE, $0010  ; Pbs
    dw $0AF6, $0165  ; Samus X
    dw $0AFA, $0688  ; Samus Y
    dw $D880, $01FF  ; Items
    dw #$FFFF

preset_hundo_mama_turtle_etank_mama_turtle_etank:
    dw #preset_hundo_mama_turtle_etank_fish_tank ; Mama Turtle E-Tank: Fish Tank
    dw $078D, $A3B4  ; DDB
    dw $079B, $D017  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0211  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $018C  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01E2  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $0B3F, $0001  ; Blue suit
    dw #$FFFF

preset_hundo_mama_turtle_etank_fish_tank_revisit:
    dw #preset_hundo_mama_turtle_etank_mama_turtle_etank ; Mama Turtle E-Tank: Mama Turtle E-Tank
    dw $078D, $A3E4  ; DDB
    dw $079B, $D055  ; MDB
    dw $0911, $00C8  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $030C  ; Screen Y position in pixels
    dw $0917, $00C8  ; Layer 2 X position
    dw $0919, $0249  ; Layer 2 Y position
    dw $09C2, $03E7  ; Health
    dw $09C4, $03E7  ; Max health
    dw $09C6, $0049  ; Missiles
    dw $09C8, $0073  ; Max missiles
    dw $09CA, $0008  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $012D  ; Samus X
    dw $0AFA, $037B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D880, $0DFF  ; Items
    dw $D8C0, $4B7C  ; Doors
    dw #$FFFF

preset_hundo_maridia_beach_crab_supers:
    dw #preset_hundo_mama_turtle_etank_fish_tank_revisit ; Mama Turtle E-Tank: Fish Tank Revisit
    dw $078D, $A3F0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $2C00  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0257  ; Layer 2 Y position
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0185  ; Samus X
    dw $0AFA, $03B8  ; Samus Y
    dw #$FFFF

preset_hundo_maridia_beach_mt_everest:
    dw #preset_hundo_maridia_beach_crab_supers ; Maridia Beach: Crab Supers
    dw $078D, $A45C  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $1BFD  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $03AB  ; Health
    dw $09CA, $000D  ; Supers
    dw $09CC, $001E  ; Max supers
    dw $0A1C, $001E  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0AF6, $02A4  ; Samus X
    dw $0AFA, $0299  ; Samus Y
    dw $D880, $0FFF  ; Items
    dw #$FFFF

preset_hundo_maridia_beach_beach_missiles:
    dw #preset_hundo_maridia_beach_mt_everest ; Maridia Beach: Mt. Everest
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $036E  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $007A  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_hundo_maridia_beach_maridia_bug_room:
    dw #preset_hundo_maridia_beach_beach_missiles ; Maridia Beach: Beach Missiles
    dw $078D, $A4BC  ; DDB
    dw $079B, $D1DD  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $010B  ; Screen Y position in pixels
    dw $0919, $010B  ; Layer 2 Y position
    dw $09C2, $035A  ; Health
    dw $09C6, $004E  ; Missiles
    dw $09C8, $0078  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $005B  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D880, $4FFF  ; Items
    dw #$FFFF

preset_hundo_maridia_beach_watering_hole:
    dw #preset_hundo_maridia_beach_maridia_bug_room ; Maridia Beach: Maridia Bug Room
    dw $078D, $A4D4  ; DDB
    dw $079B, $D16D  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0919, $001C  ; Layer 2 Y position
    dw $0AF6, $005C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_hundo_maridia_beach_maridia_bug_room_revisit:
    dw #preset_hundo_maridia_beach_watering_hole ; Maridia Beach: Watering Hole
    dw $078D, $A498  ; DDB
    dw $079B, $D13B  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00CB  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0098  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $036E  ; Health
    dw $09C6, $0052  ; Missiles
    dw $09C8, $007D  ; Max missiles
    dw $09CA, $0012  ; Supers
    dw $09CC, $0023  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $012B  ; Samus X
    dw $D880, $7FFF  ; Items
    dw #$FFFF

preset_hundo_maridia_beach_beach_revisit:
    dw #preset_hundo_maridia_beach_maridia_bug_room_revisit ; Maridia Beach: Maridia Bug Room Revisit
    dw $078D, $A48C  ; DDB
    dw $079B, $D16D  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $0355  ; Health
    dw $0AF6, $03A2  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_hundo_draygon_aqueduct:
    dw #preset_hundo_maridia_beach_beach_revisit ; Maridia Beach: Beach Revisit
    dw $078D, $A4E0  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5BFF  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09CA, $0011  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $001D  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0AF6, $01B3  ; Samus X
    dw $0AFA, $0399  ; Samus Y
    dw $D8C0, $CB7C  ; Doors
    dw #$FFFF

preset_hundo_draygon_botwoon:
    dw #preset_hundo_draygon_aqueduct ; Draygon: Aqueduct
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $7FFF  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $DFFF  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0014  ; Layer 2 Y position
    dw $09CE, $000F  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03A1  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_hundo_draygon_full_halfie:
    dw #preset_hundo_draygon_botwoon ; Draygon: Botwoon
    dw $078D, $A918  ; DDB
    dw $079B, $D7E4  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $001E  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $001E  ; Layer 2 Y position
    dw $09C2, $03AF  ; Health
    dw $09C6, $0054  ; Missiles
    dw $09CA, $000E  ; Supers
    dw $09CE, $0011  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $004B  ; Samus X
    dw $0AFA, $0098  ; Samus Y
    dw $D82C, $0002  ; Bosses
    dw #$FFFF

preset_hundo_draygon_draygon_missiles:
    dw #preset_hundo_draygon_full_halfie ; Draygon: Full Halfie
    dw $078D, $A8E8  ; DDB
    dw $079B, $D72A  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $00FD  ; Screen Y position in pixels
    dw $0917, $0600  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $0330  ; Health
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $06B0  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $0400  ; Doors
    dw #$FFFF

preset_hundo_draygon_draygon:
    dw #preset_hundo_draygon_draygon_missiles ; Draygon: Draygon Missiles
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C6, $0059  ; Missiles
    dw $09C8, $0082  ; Max missiles
    dw $09CA, $000C  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002F  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D882, $0080  ; Items
    dw $D8C2, $0C00  ; Doors
    dw #$FFFF

preset_hundo_draygon_draygon_escape:
    dw #preset_hundo_draygon_draygon ; Draygon: Draygon
    dw $078D, $A978  ; DDB
    dw $079B, $D9AA  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $3325  ; Equipped Items
    dw $09A4, $3325  ; Collected Items
    dw $09C2, $0291  ; Health
    dw $09C6, $0046  ; Missiles
    dw $09CE, $0010  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $00C0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82C, $0003  ; Bosses
    dw $D882, $0480  ; Items
    dw $D8C2, $8C00  ; Doors
    dw #$FFFF

preset_hundo_maridia_cleanup_aqueduct_revisit:
    dw #preset_hundo_draygon_draygon_escape ; Draygon: Draygon Escape
    dw $078D, $A8DC  ; DDB
    dw $079B, $D7E4  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0289  ; Screen X position in pixels
    dw $0913, $6000  ; Screen subpixel Y position
    dw $0917, $01E6  ; Layer 2 X position
    dw $09A2, $3324  ; Equipped Items
    dw $09A6, $1007  ; Equipped Beams
    dw $09C2, $044B  ; Health
    dw $09C4, $044B  ; Max health
    dw $0A1C, $001F  ; Samus position/state
    dw $0A1E, $0404  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $032A  ; Samus X
    dw $0AFA, $0059  ; Samus Y
    dw $D882, $0580  ; Items
    dw $D8C2, $CC00  ; Doors
    dw #$FFFF

preset_hundo_maridia_cleanup_right_sand_pit:
    dw #preset_hundo_maridia_cleanup_aqueduct_revisit ; Maridia Cleanup: Aqueduct Revisit
    dw $078D, $A7D4  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $09C2, $0446  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $05B6  ; Samus X
    dw $0AFA, $02CB  ; Samus Y
    dw #$FFFF

preset_hundo_maridia_cleanup_puyo_ice_clip_springball:
    dw #preset_hundo_maridia_cleanup_right_sand_pit ; Maridia Cleanup: Right Sand Pit
    dw $078D, $A690  ; DDB
    dw $079B, $D646  ; MDB
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C2, $042D  ; Health
    dw $09C6, $004B  ; Missiles
    dw $09C8, $0087  ; Max missiles
    dw $09CE, $0015  ; Pbs
    dw $09D0, $001E  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C5  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D882, $058C  ; Items
    dw #$FFFF

preset_hundo_maridia_cleanup_shaktool:
    dw #preset_hundo_maridia_cleanup_puyo_ice_clip_springball ; Maridia Cleanup: Puyo Ice Clip (Springball)
    dw $078D, $A78C  ; DDB
    dw $079B, $D69A  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0915, $011C  ; Screen Y position in pixels
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09C2, $041E  ; Health
    dw $0AF6, $00D0  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_hundo_maridia_cleanup_shaktool_revisit:
    dw #preset_hundo_maridia_cleanup_shaktool ; Maridia Cleanup: Shaktool
    dw $078D, $A8D0  ; DDB
    dw $079B, $D6D0  ; MDB
    dw $090F, $C001  ; Screen subpixel X position
    dw $0913, $83FF  ; Screen subpixel Y position
    dw $0915, $0005  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $3326  ; Equipped Items
    dw $09A4, $3327  ; Collected Items
    dw $09C2, $036A  ; Health
    dw $09CE, $0014  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0072  ; Samus X
    dw $0AFA, $0090  ; Samus Y
    dw $D820, $2801  ; Events
    dw $D882, $05CC  ; Items
    dw #$FFFF

preset_hundo_maridia_cleanup_east_sand_hall:
    dw #preset_hundo_maridia_cleanup_shaktool_revisit ; Maridia Cleanup: Shaktool Revisit
    dw $078D, $A7B0  ; DDB
    dw $079B, $D646  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C2, $035B  ; Health
    dw $09C6, $004A  ; Missiles
    dw $0AF6, $003D  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_hundo_maridia_cleanup_kassiuz_room:
    dw #preset_hundo_maridia_cleanup_east_sand_hall ; Maridia Cleanup: East Sand Hall
    dw $078D, $A60C  ; DDB
    dw $079B, $D340  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0917, $01C0  ; Layer 2 X position
    dw $0919, $0122  ; Layer 2 Y position
    dw $09C6, $0048  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0284  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $CC28  ; Doors
    dw #$FFFF

preset_hundo_maridia_cleanup_plasma:
    dw #preset_hundo_maridia_cleanup_kassiuz_room ; Maridia Cleanup: Kassiuz Room
    dw $078D, $A5DC  ; DDB
    dw $079B, $D27E  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $034C  ; Health
    dw $09C6, $0046  ; Missiles
    dw $09CA, $000D  ; Supers
    dw $0AF6, $00AA  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0001  ; Blue suit
    dw #$FFFF

preset_hundo_maridia_cleanup_kassiuz_room_revisit:
    dw #preset_hundo_maridia_cleanup_plasma ; Maridia Cleanup: Plasma
    dw $078D, $A54C  ; DDB
    dw $079B, $D2AA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0919, $001D  ; Layer 2 Y position
    dw $09A6, $100B  ; Equipped Beams
    dw $09A8, $100F  ; Collected Beams
    dw $09C2, $0324  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0040  ; Samus X
    dw $0B3F, $0000  ; Blue suit
    dw $D880, $FFFF  ; Items
    dw $D8C2, $CC2A  ; Doors
    dw #$FFFF

preset_hundo_maridia_cleanup_plasma_spark_room_down:
    dw #preset_hundo_maridia_cleanup_kassiuz_room_revisit ; Maridia Cleanup: Kassiuz Room Revisit
    dw $078D, $A540  ; DDB
    dw $079B, $D387  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0915, $031B  ; Screen Y position in pixels
    dw $0919, $0254  ; Layer 2 Y position
    dw $09C2, $0310  ; Health
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0035  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_hundo_maridia_cleanup_cac_alley:
    dw #preset_hundo_maridia_cleanup_plasma_spark_room_down ; Maridia Cleanup: Plasma Spark Room Down
    dw $078D, $A5D0  ; DDB
    dw $079B, $D340  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0120  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $0500  ; Screen Y position in pixels
    dw $0917, $00FC  ; Layer 2 X position
    dw $0919, $0500  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01BB  ; Samus X
    dw $0AFA, $05BB  ; Samus Y
    dw #$FFFF

preset_hundo_maridia_cleanup_aqueduct_final_visit:
    dw #preset_hundo_maridia_cleanup_cac_alley ; Maridia Cleanup: Cac Alley
    dw $078D, $A960  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $09C2, $0301  ; Health
    dw $09C6, $0044  ; Missiles
    dw $09CA, $000E  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00A5  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C2, $CCAA  ; Doors
    dw #$FFFF

preset_hundo_maridia_cleanup_left_sand_pit:
    dw #preset_hundo_maridia_cleanup_aqueduct_revisit ; Maridia Cleanup: Aqueduct Revisit
    dw $078D, $A7D4  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $09A2, $3326  ; Equipped Items
    dw $09A4, $3327  ; Collected Items
    dw $09A6, $100B  ; Equipped Beams
    dw $09A8, $100F  ; Collected Beams
    dw $09C2, $02FC  ; Health
    dw $09C6, $0049  ; Missiles
    dw $09C8, $008C  ; Max missiles
    dw $09CA, $0013  ; Supers
    dw $09CC, $0028  ; Max supers
    dw $09CE, $0014  ; Pbs
    dw $09D0, $001E  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $05B9  ; Samus X
    dw $0AFA, $02CB  ; Samus Y
    dw $D820, $2801  ; Events
    dw $D880, $FFFF  ; Items
    dw $D882, $05FC  ; Items
    dw $D8C2, $CCAA  ; Doors
    dw #$FFFF

preset_hundo_maridia_cleanup_leaving_maridia:
    dw #preset_hundo_maridia_cleanup_left_sand_pit ; Maridia Cleanup: Left Sand Pit
    dw $078D, $A528  ; DDB
    dw $079B, $D21C  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $00F2  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00FD  ; Layer 2 Y position
    dw $09C2, $02A0  ; Health
    dw $09C6, $004E  ; Missiles
    dw $09C8, $0091  ; Max missiles
    dw $09CE, $0015  ; Pbs
    dw $09D4, $012C  ; Max reserves
    dw $0AF6, $002F  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D882, $05FF  ; Items
    dw #$FFFF

preset_hundo_golden_torizo_kraid_entrance_revisit:
    dw #preset_hundo_maridia_cleanup_leaving_maridia ; Maridia Cleanup: Leaving Maridia
    dw $078D, $A510  ; DDB
    dw $079B, $CF80  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09CA, $0012  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $005B  ; Samus X
    dw #$FFFF

preset_hundo_golden_torizo_kraid_missiles:
    dw #preset_hundo_golden_torizo_kraid_entrance_revisit ; Golden Torizo: Kraid Entrance Revisit
    dw $078D, $923A  ; DDB
    dw $079B, $A471  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $4FFF  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09CA, $0011  ; Supers
    dw $0A1C, $003D  ; Samus position/state
    dw $0A1E, $0F08  ; More position/state
    dw $0AF6, $016E  ; Samus X
    dw $0AFA, $0190  ; Samus Y
    dw #$FFFF

preset_hundo_golden_torizo_kraid_missiles_escape:
    dw #preset_hundo_golden_torizo_kraid_missiles ; Golden Torizo: Kraid Missiles
    dw $078D, $9156  ; DDB
    dw $079B, $A4DA  ; MDB
    dw $0911, $01AC  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0141  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0050  ; Missiles
    dw $09C8, $0096  ; Max missiles
    dw $09CE, $0014  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $024C  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D874, $1F8E  ; Items
    dw #$FFFF

preset_hundo_golden_torizo_ice_missiles:
    dw #preset_hundo_golden_torizo_kraid_missiles_escape ; Golden Torizo: Kraid Missiles Escape
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $7680  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0323  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $025A  ; Layer 2 Y position
    dw $09C6, $0054  ; Missiles
    dw $09CA, $0010  ; Supers
    dw $09CE, $0013  ; Pbs
    dw $0AF6, $002E  ; Samus X
    dw $0AFA, $0393  ; Samus Y
    dw #$FFFF

preset_hundo_golden_torizo_croc_speedway:
    dw #preset_hundo_golden_torizo_ice_missiles ; Golden Torizo: Ice Missiles
    dw $078D, $9336  ; DDB
    dw $079B, $A8F8  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C2, $029B  ; Health
    dw $09C6, $0059  ; Missiles
    dw $09C8, $009B  ; Max missiles
    dw $09CE, $0012  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00E2  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D876, $01AF  ; Items
    dw #$FFFF

preset_hundo_golden_torizo_kronic_boost:
    dw #preset_hundo_golden_torizo_croc_speedway ; Golden Torizo: Croc Speedway
    dw $078D, $9792  ; DDB
    dw $079B, $AFFB  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $03C6  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_hundo_golden_torizo_blue_fireball:
    dw #preset_hundo_golden_torizo_kronic_boost ; Golden Torizo: Kronic Boost
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0301  ; Layer 2 Y position
    dw $09C2, $0298  ; Health
    dw $09CE, $0011  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0480  ; Samus X
    dw $0AFA, $0288  ; Samus Y
    dw $D8BA, $01F1  ; Doors
    dw #$FFFF

preset_hundo_golden_torizo_golden_torizo:
    dw #preset_hundo_golden_torizo_blue_fireball ; Golden Torizo: Blue Fireball
    dw $078D, $983A  ; DDB
    dw $079B, $B283  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0273  ; Health
    dw $09CE, $000F  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0027  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $3801  ; Events
    dw #$FFFF

preset_hundo_ridley_fast_ripper_room:
    dw #preset_hundo_golden_torizo_golden_torizo ; Golden Torizo: Golden Torizo
    dw $078D, $9882  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $001B  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0014  ; Layer 2 Y position
    dw $09A2, $332E  ; Equipped Items
    dw $09A4, $332F  ; Collected Items
    dw $09C2, $024B  ; Health
    dw $09C6, $005E  ; Missiles
    dw $09C8, $00A0  ; Max missiles
    dw $09CA, $0015  ; Supers
    dw $09CC, $002D  ; Max supers
    dw $09CE, $000E  ; Pbs
    dw $0AF6, $006E  ; Samus X
    dw $D82A, $0104  ; Bosses
    dw $D878, $80DE  ; Items
    dw $D8BA, $03F1  ; Doors
    dw #$FFFF

preset_hundo_ridley_worst_room_in_the_game:
    dw #preset_hundo_ridley_fast_ripper_room ; Ridley: Fast Ripper Room
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $66FF  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01FC  ; Health
    dw $09CA, $0014  ; Supers
    dw $0AF6, $03DB  ; Samus X
    dw #$FFFF

preset_hundo_ridley_mickey_mouse_missiles:
    dw #preset_hundo_ridley_worst_room_in_the_game ; Ridley: Worst Room In The Game
    dw $078D, $994E  ; DDB
    dw $079B, $B4AD  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $010D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C9  ; Layer 2 Y position
    dw $0AF6, $0071  ; Samus X
    dw $0AFA, $017B  ; Samus Y
    dw #$FFFF

preset_hundo_ridley_amphitheatre:
    dw #preset_hundo_ridley_mickey_mouse_missiles ; Ridley: Mickey Mouse Missiles
    dw $078D, $9936  ; DDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09C2, $01CA  ; Health
    dw $09C6, $0063  ; Missiles
    dw $09C8, $00A5  ; Max missiles
    dw $09CA, $0015  ; Supers
    dw $0AF6, $00BD  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D878, $82DE  ; Items
    dw #$FFFF

preset_hundo_ridley_kihunter_shaft_down:
    dw #preset_hundo_ridley_amphitheatre ; Ridley: Amphitheatre
    dw $078D, $997E  ; DDB
    dw $079B, $B4E5  ; MDB
    dw $090F, $A080  ; Screen subpixel X position
    dw $0911, $0241  ; Screen X position in pixels
    dw $0915, $004D  ; Screen Y position in pixels
    dw $0917, $01B0  ; Layer 2 X position
    dw $0919, $0039  ; Layer 2 Y position
    dw $0AF6, $02D5  ; Samus X
    dw $0AFA, $00B9  ; Samus Y
    dw #$FFFF

preset_hundo_ridley_wasteland_down:
    dw #preset_hundo_ridley_kihunter_shaft_down ; Ridley: Kihunter Shaft Down
    dw $078D, $99A2  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $FC00  ; Screen subpixel X position
    dw $0911, $01F2  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0312  ; Layer 2 Y position
    dw $09CE, $000C  ; Pbs
    dw $0A1C, $0079  ; Samus position/state
    dw $0A1E, $1108  ; More position/state
    dw $0AF6, $0245  ; Samus X
    dw $0AFA, $0489  ; Samus Y
    dw $D8BA, $43F1  ; Doors
    dw #$FFFF

preset_hundo_ridley_ninja_pirates:
    dw #preset_hundo_ridley_wasteland_down ; Ridley: Wasteland Down
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021B  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0194  ; Layer 2 Y position
    dw $09C2, $0191  ; Health
    dw $09CA, $0014  ; Supers
    dw $09CE, $0011  ; Pbs
    dw $09D0, $0023  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0164  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D878, $92DE  ; Items
    dw $D8BA, $C3F1  ; Doors
    dw #$FFFF

preset_hundo_ridley_plowerhouse_room:
    dw #preset_hundo_ridley_ninja_pirates ; Ridley: Ninja Pirates
    dw $078D, $9A1A  ; DDB
    dw $079B, $B62B  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $013C  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00ED  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0213  ; Health
    dw $09CA, $0018  ; Supers
    dw $0AF6, $01DC  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D8BC, $0001  ; Doors
    dw #$FFFF

preset_hundo_ridley_ridley:
    dw #preset_hundo_ridley_plowerhouse_room ; Ridley: Plowerhouse Room
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $0210  ; Health
    dw $09CA, $0017  ; Supers
    dw $0AF6, $002F  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D8BA, $D3F1  ; Doors
    dw #$FFFF

preset_hundo_ridley_ridley_escape:
    dw #preset_hundo_ridley_ridley ; Ridley: Ridley
    dw $078D, $98CA  ; DDB
    dw $079B, $B32E  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0102  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $00C1  ; Layer 2 Y position
    dw $09C6, $0067  ; Missiles
    dw $09CA, $000F  ; Supers
    dw $09CE, $0012  ; Pbs
    dw $0AF6, $00CA  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $D82A, $0105  ; Bosses
    dw #$FFFF

preset_hundo_ridley_wasteland_up:
    dw #preset_hundo_ridley_ridley_escape ; Ridley: Ridley Escape
    dw $078D, $9966  ; DDB
    dw $079B, $B62B  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $048E  ; Health
    dw $09C4, $04AF  ; Max health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02D4  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $0B3F, $0003  ; Blue suit
    dw $D878, $D2DE  ; Items
    dw $D8BA, $DFF1  ; Doors
    dw #$FFFF

preset_hundo_ridley_kihunter_shaft_up:
    dw #preset_hundo_ridley_wasteland_up ; Ridley: Wasteland Up
    dw $078D, $9A3E  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $EC02  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $09C2, $03F3  ; Health
    dw $09CE, $0011  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $057F  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw #$FFFF

preset_hundo_ridley_firefleas_room:
    dw #preset_hundo_ridley_kihunter_shaft_up ; Ridley: Kihunter Shaft Up
    dw $078D, $9A26  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $FE7F  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CE, $0010  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A2  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_hundo_ridley_hotarubi_special:
    dw #preset_hundo_ridley_firefleas_room ; Ridley: Firefleas Room
    dw $078D, $9A02  ; DDB
    dw $079B, $B6EE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0100  ; Layer 2 X position
    dw $09C2, $0512  ; Health
    dw $09C4, $0513  ; Max health
    dw $09CA, $000E  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $016B  ; Samus X
    dw $D87A, $0001  ; Items
    dw #$FFFF

preset_hundo_ridley_3_musketeers:
    dw #preset_hundo_ridley_hotarubi_special ; Ridley: Hotarubi Special
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09C6, $006C  ; Missiles
    dw $09C8, $00AA  ; Max missiles
    dw $09CE, $0015  ; Pbs
    dw $09D0, $0028  ; Max pbs
    dw $0AF6, $006E  ; Samus X
    dw $D878, $DEDE  ; Items
    dw #$FFFF

preset_hundo_crocomire_bubble_mountain_revisit:
    dw #preset_hundo_ridley_3_musketeers ; Ridley: 3 Musketeers
    dw $078D, $9A4A  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $000B  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $006F  ; Missiles
    dw $09C8, $00AF  ; Max missiles
    dw $0A1C, $0012  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0078  ; Samus X
    dw $D878, $FEDE  ; Items
    dw #$FFFF

preset_hundo_crocomire_norfair_reserve:
    dw #preset_hundo_crocomire_bubble_mountain_revisit ; Crocomire: Bubble Mountain Revisit
    dw $078D, $95CA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C6, $0071  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0044  ; Samus X
    dw $D8BA, $DFF9  ; Doors
    dw #$FFFF

preset_hundo_crocomire_bubble_mountain_cleanup:
    dw #preset_hundo_crocomire_norfair_reserve ; Crocomire: Norfair Reserve
    dw $078D, $952E  ; DDB
    dw $079B, $AC83  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $09C2, $0504  ; Health
    dw $09C6, $007A  ; Missiles
    dw $09C8, $00B9  ; Max missiles
    dw $09D4, $0190  ; Max reserves
    dw $09D6, $006B  ; Reserves
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $01C9  ; Samus X
    dw $0AFA, $0090  ; Samus Y
    dw $D876, $E1AF  ; Items
    dw #$FFFF

preset_hundo_crocomire_red_pirate_shaft:
    dw #preset_hundo_crocomire_bubble_mountain_cleanup ; Crocomire: Bubble Mountain Cleanup
    dw $078D, $956A  ; DDB
    dw $079B, $AF72  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $00ED  ; Screen Y position in pixels
    dw $09C2, $04F3  ; Health
    dw $09C6, $007F  ; Missiles
    dw $09C8, $00BE  ; Max missiles
    dw $09CE, $0014  ; Pbs
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0094  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D878, $FEDF  ; Items
    dw #$FFFF

preset_hundo_crocomire_crocomire:
    dw #preset_hundo_crocomire_red_pirate_shaft ; Crocomire: Red Pirate Shaft
    dw $078D, $974A  ; DDB
    dw $079B, $A923  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $09C2, $04F2  ; Health
    dw $09CA, $000D  ; Supers
    dw $0A1C, $002D  ; Samus position/state
    dw $0A1E, $0608  ; More position/state
    dw $0AF6, $0C95  ; Samus X
    dw $0AFA, $02DB  ; Samus Y
    dw $D8B8, $6EEF  ; Doors
    dw #$FFFF

preset_hundo_crocomire_grapple_shaft_down:
    dw #preset_hundo_crocomire_crocomire ; Crocomire: Crocomire
    dw $078D, $944A  ; DDB
    dw $079B, $AB07  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $056E  ; Health
    dw $09C4, $0577  ; Max health
    dw $09C6, $0085  ; Missiles
    dw $09CA, $000C  ; Supers
    dw $09CE, $0019  ; Pbs
    dw $09D0, $002D  ; Max pbs
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $007C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82A, $0107  ; Bosses
    dw $D876, $E3BF  ; Items
    dw $D8BA, $DFFB  ; Doors
    dw #$FFFF

preset_hundo_crocomire_grapple_shaft_up:
    dw #preset_hundo_crocomire_grapple_shaft_down ; Crocomire: Grapple Shaft Down
    dw $078D, $9516  ; DDB
    dw $079B, $AB8F  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $05B1  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0444  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $09A2, $732E  ; Equipped Items
    dw $09A4, $732F  ; Collected Items
    dw $09C6, $008A  ; Missiles
    dw $09C8, $00C3  ; Max missiles
    dw $09CE, $0018  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0611  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D876, $FBBF  ; Items
    dw #$FFFF

preset_hundo_crocomire_crocomire_room_revisit:
    dw #preset_hundo_crocomire_grapple_shaft_up ; Crocomire: Grapple Shaft Up
    dw $078D, $947A  ; DDB
    dw $079B, $AA82  ; MDB
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0002  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $053F  ; Health
    dw $09C6, $0093  ; Missiles
    dw $09C8, $00C8  ; Max missiles
    dw $09CA, $000D  ; Supers
    dw $09CE, $0019  ; Pbs
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $01CD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $FFBF  ; Items
    dw $D8BA, $DFFF  ; Doors
    dw #$FFFF

preset_hundo_crocomire_croc_escape:
    dw #preset_hundo_crocomire_crocomire_room_revisit ; Crocomire: Crocomire Room Revisit
    dw $078D, $93EA  ; DDB
    dw $079B, $A923  ; MDB
    dw $090F, $C001  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0015  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $053E  ; Health
    dw $09CA, $000F  ; Supers
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0C8B  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $EEEF  ; Doors
    dw #$FFFF

preset_hundo_crocomire_business_center_climb_final:
    dw #preset_hundo_crocomire_croc_escape ; Crocomire: Croc Escape
    dw $078D, $93AE  ; DDB
    dw $079B, $AA0E  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C6, $0098  ; Missiles
    dw $09C8, $00CD  ; Max missiles
    dw $09CA, $000E  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $009D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $FFFF  ; Items
    dw #$FFFF

preset_hundo_final_cleanup_below_spazer:
    dw #preset_hundo_crocomire_business_center_climb_final ; Crocomire: Business Center Climb Final
    dw $078D, $A33C  ; DDB
    dw $079B, $CF54  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $00C7  ; Samus X
    dw #$FFFF

preset_hundo_final_cleanup_red_tower_xray:
    dw #preset_hundo_final_cleanup_below_spazer ; Final Cleanup: Below Spazer
    dw $078D, $910E  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0A1C, $0068  ; Samus position/state
    dw $0A1E, $0604  ; More position/state
    dw $0AF6, $004A  ; Samus X
    dw $0AFA, $0098  ; Samus Y
    dw #$FFFF

preset_hundo_final_cleanup_red_brinstar_firefleas:
    dw #preset_hundo_final_cleanup_red_tower_xray ; Final Cleanup: Red Tower X-Ray
    dw $078D, $90F6  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $061B  ; Screen Y position in pixels
    dw $0919, $0494  ; Layer 2 Y position
    dw $09CE, $0018  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0039  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D8B6, $EAF9  ; Doors
    dw #$FFFF

preset_hundo_final_cleanup_leaving_xray:
    dw #preset_hundo_final_cleanup_red_brinstar_firefleas ; Final Cleanup: Red Brinstar Firefleas
    dw $078D, $905A  ; DDB
    dw $079B, $A2CE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $F32E  ; Equipped Items
    dw $09A4, $F32F  ; Collected Items
    dw $09C2, $04A9  ; Health
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $0177  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $1FCE  ; Items
    dw $D8B6, $EEF9  ; Doors
    dw #$FFFF

preset_hundo_final_cleanup_reverse_slinky:
    dw #preset_hundo_final_cleanup_leaving_xray ; Final Cleanup: Leaving X-Ray
    dw $078D, $902A  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $03C7  ; Screen X position in pixels
    dw $0913, $5C01  ; Screen subpixel Y position
    dw $09C2, $0477  ; Health
    dw $09CE, $0017  ; Pbs
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0467  ; Samus X
    dw $0AFA, $004B  ; Samus Y
    dw #$FFFF

preset_hundo_final_cleanup_retro_brinstar_hoppers:
    dw #preset_hundo_final_cleanup_reverse_slinky ; Final Cleanup: Reverse Slinky
    dw $078D, $8EFE  ; DDB
    dw $079B, $9E52  ; MDB
    dw $090F, $5FFF  ; Screen subpixel X position
    dw $0911, $00E4  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $0155  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_hundo_final_cleanup_retro_brinstar_etank:
    dw #preset_hundo_final_cleanup_retro_brinstar_hoppers ; Final Cleanup: Retro Brinstar Hoppers
    dw $078D, $8E86  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0573  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $09CE, $001B  ; Pbs
    dw $09D0, $0032  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $05D3  ; Samus X
    dw $0AFA, $02BB  ; Samus Y
    dw $D872, $CFEF  ; Items
    dw #$FFFF

preset_hundo_final_cleanup_billy_mays:
    dw #preset_hundo_final_cleanup_retro_brinstar_etank ; Final Cleanup: Retro Brinstar E-Tank
    dw $078D, $8ECE  ; DDB
    dw $079B, $9F64  ; MDB
    dw $090F, $A001  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $09C2, $05DB  ; Health
    dw $09C4, $05DB  ; Max health
    dw $09CA, $000C  ; Supers
    dw $09CE, $001A  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0253  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D872, $EFEF  ; Items
    dw $D8B6, $EEFD  ; Doors
    dw #$FFFF

preset_hundo_final_cleanup_billy_mays_escape:
    dw #preset_hundo_final_cleanup_billy_mays ; Final Cleanup: Billy Mays
    dw $078D, $8FEE  ; DDB
    dw $079B, $A1D8  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C6, $00A2  ; Missiles
    dw $09C8, $00D7  ; Max missiles
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $00E0  ; Samus X
    dw $D874, $1FFE  ; Items
    dw #$FFFF

preset_hundo_final_cleanup_retro_brinstar_escape:
    dw #preset_hundo_final_cleanup_billy_mays_escape ; Final Cleanup: Billy Mays Escape
    dw $078D, $8FE2  ; DDB
    dw $079B, $9F64  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $09C2, $05D1  ; Health
    dw $09C6, $00A7  ; Missiles
    dw $09C8, $00DC  ; Max missiles
    dw $09CE, $0019  ; Pbs
    dw $0A1C, $00A5  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $02D6  ; Samus X
    dw $0AFA, $02BB  ; Samus Y
    dw $D872, $FFEF  ; Items
    dw #$FFFF

preset_hundo_final_cleanup_pit_room_missiles:
    dw #preset_hundo_final_cleanup_retro_brinstar_escape ; Final Cleanup: Retro Brinstar Escape
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0A68, $0068  ; Flash suit
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw #$FFFF

preset_hundo_final_cleanup_climb_supers:
    dw #preset_hundo_final_cleanup_pit_room_missiles ; Final Cleanup: Pit Room Missiles
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $8001  ; Screen subpixel X position
    dw $0913, $47FE  ; Screen subpixel Y position
    dw $09C6, $00AC  ; Missiles
    dw $09C8, $00E1  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $0045  ; Samus X
    dw $D870, $E7FF  ; Items
    dw #$FFFF

preset_hundo_final_cleanup_the_last_missiles:
    dw #preset_hundo_final_cleanup_climb_supers ; Final Cleanup: Climb Supers
    dw $078D, $8B3E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0306  ; Screen Y position in pixels
    dw $09C2, $0541  ; Health
    dw $09CA, $0011  ; Supers
    dw $09CC, $0032  ; Max supers
    dw $09CE, $0017  ; Pbs
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $015E  ; Samus X
    dw $0AFA, $039B  ; Samus Y
    dw $D870, $EFFF  ; Items
    dw $D8B2, $2C09  ; Doors
    dw #$FFFF

preset_hundo_final_cleanup_the_last_missiles_escape:
    dw #preset_hundo_final_cleanup_the_last_missiles ; Final Cleanup: The Last Missiles
    dw $078D, $8C82  ; DDB
    dw $079B, $9A90  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C6, $00B1  ; Missiles
    dw $09C8, $00E6  ; Max missiles
    dw $09CE, $0016  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0057  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D870, $FFFF  ; Items
    dw #$FFFF

preset_hundo_tourian_metroids_1:
    dw #preset_hundo_final_cleanup_the_last_missiles_escape ; Final Cleanup: The Last Missiles Escape
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $090F, $C001  ; Screen subpixel X position
    dw $0913, $4FFF  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C2, $054B  ; Health
    dw $09C6, $00B5  ; Missiles
    dw $09CA, $0010  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0036  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D820, $3FC1  ; Events
    dw $D8B2, $6C09  ; Doors
    dw $D90C, $0100  ; Map Stations
    dw #$FFFF

preset_hundo_tourian_metroids_2:
    dw #preset_hundo_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $056C  ; Health
    dw $09C6, $00BF  ; Missiles
    dw $09CA, $000F  ; Supers
    dw $09CE, $0018  ; Pbs
    dw $0AF6, $003A  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0021  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF

preset_hundo_tourian_metroids_3:
    dw #preset_hundo_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $00F2  ; Screen Y position in pixels
    dw $0919, $00B5  ; Layer 2 Y position
    dw $09C2, $059D  ; Health
    dw $09C6, $00C7  ; Missiles
    dw $09CA, $0011  ; Supers
    dw $09CE, $001B  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00CA  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0023  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF

preset_hundo_tourian_metroids_4:
    dw #preset_hundo_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $05DB  ; Health
    dw $09C6, $00D1  ; Missiles
    dw $09CA, $0010  ; Supers
    dw $09CE, $001D  ; Pbs
    dw $09D6, $0073  ; Reserves
    dw $0AF6, $05B0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0027  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF

preset_hundo_tourian_baby_skip:
    dw #preset_hundo_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C6, $00D9  ; Missiles
    dw $09CA, $000F  ; Supers
    dw $09CE, $001E  ; Pbs
    dw $09D6, $00E1  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01B3  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D822, $002F  ; Events
    dw $D8C4, $000F  ; Doors
    dw #$FFFF

preset_hundo_tourian_after_baby_skip:
    dw #preset_hundo_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AA44  ; DDB
    dw $079B, $DCFF  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $3FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0006  ; Layer 2 Y position
    dw $0AF6, $00AC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C4, $002F  ; Doors
    dw #$FFFF

preset_hundo_tourian_zeb_skip:
    dw #preset_hundo_tourian_after_baby_skip ; Tourian: After Baby Skip
    dw $078D, $AAA4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021D  ; Screen Y position in pixels
    dw $0919, $0195  ; Layer 2 Y position
    dw $09CA, $000C  ; Supers
    dw $0AF6, $0037  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF

preset_hundo_tourian_mother_brain_2:
    dw #preset_hundo_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAC8  ; DDB
    dw $079B, $DD58  ; MDB
    dw $07F3, $0021  ; Music Bank
    dw $07F5, $0000  ; Music Track
    dw $090F, $79FF  ; Screen subpixel X position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $05CC  ; Health
    dw $09C6, $00D0  ; Missiles
    dw $09CA, $0001  ; Supers
    dw $0AF6, $00CF  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D820, $3FC5  ; Events
    dw #$FFFF

preset_hundo_tourian_zebes_escape:
    dw #preset_hundo_tourian_mother_brain_2 ; Tourian: Mother Brain 2
    dw $09A6, $1009  ; Equipped Beams
    dw $09C2, $05DB  ; Health
    dw $09C6, $007F  ; Missiles
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

preset_hundo_tourian_escape_room_3:
    dw #preset_hundo_tourian_zebes_escape ; Tourian: Zebes Escape
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DF  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_hundo_tourian_escape_room_4:
    dw #preset_hundo_tourian_escape_room_3 ; Tourian: Escape Room 3
    dw $078D, $AB04  ; DDB
    dw $079B, $DEA7  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0AF6, $05D6  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_hundo_tourian_escape_climb:
    dw #preset_hundo_tourian_escape_room_4 ; Tourian: Escape Room 4
    dw $078D, $AB1C  ; DDB
    dw $079B, $DEDE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00F1  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $00FB  ; Screen Y position in pixels
    dw $0917, $00B4  ; Layer 2 X position
    dw $0919, $00BC  ; Layer 2 Y position
    dw $0AF6, $0151  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_hundo_tourian_escape_parlor:
    dw #preset_hundo_tourian_escape_climb ; Tourian: Escape Climb
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0548  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $019A  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
