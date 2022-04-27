
preset_gtclassic_crateria_ceres_elevator:
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
    dw $09A6, $0000  ; Beams
    dw $09A8, $0000  ; Beams
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

preset_gtclassic_crateria_ceres_escape:
    dw #preset_gtclassic_crateria_ceres_elevator ; Crateria: Ceres Elevator
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

preset_gtclassic_crateria_ceres_last_3_rooms:
    dw #preset_gtclassic_crateria_ceres_escape ; Crateria: Ceres Escape
    dw $078D, $ABA0  ; DDB
    dw $079B, $E021  ; MDB
    dw $090F, $7400  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $00A2  ; Samus Y
    dw #$FFFF

preset_gtclassic_crateria_ship:
    dw #preset_gtclassic_crateria_ceres_last_3_rooms ; Crateria: Ceres Last 3 Rooms
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

preset_gtclassic_crateria_parlor:
    dw #preset_gtclassic_crateria_ship ; Crateria: Ship
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0079  ; Samus X
    dw $0AFA, $049B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_gtclassic_crateria_parlor_downback:
    dw #preset_gtclassic_crateria_parlor ; Crateria: Parlor
    dw $078D, $8916  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $02E9  ; Screen Y position in pixels
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01A7  ; Samus X
    dw $0AFA, $035B  ; Samus Y
    dw #$FFFF

preset_gtclassic_crateria_climb_down:
    dw #preset_gtclassic_crateria_parlor_downback ; Crateria: Parlor Downback
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01A8  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw #$FFFF

preset_gtclassic_crateria_pit_room:
    dw #preset_gtclassic_crateria_climb_down ; Crateria: Climb Down
    dw $078D, $898E  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $6FFF  ; Screen subpixel X position
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $0800  ; Screen Y position in pixels
    dw $0919, $0600  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $088B  ; Samus Y
    dw #$FFFF

preset_gtclassic_crateria_morph:
    dw #preset_gtclassic_crateria_pit_room ; Crateria: Pit Room
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

preset_gtclassic_crateria_construction_zone_down:
    dw #preset_gtclassic_crateria_morph ; Crateria: Morph
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

preset_gtclassic_crateria_construction_zone_up:
    dw #preset_gtclassic_crateria_construction_zone_down ; Crateria: Construction Zone Down
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

preset_gtclassic_crateria_pit_room_revisit:
    dw #preset_gtclassic_crateria_construction_zone_up ; Crateria: Construction Zone Up
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

preset_gtclassic_crateria_climb_up:
    dw #preset_gtclassic_crateria_pit_room_revisit ; Crateria: Pit Room Revisit
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

preset_gtclassic_crateria_parlor_revisit:
    dw #preset_gtclassic_crateria_climb_up ; Crateria: Climb Up
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0AF6, $01A0  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_gtclassic_crateria_flyway:
    dw #preset_gtclassic_crateria_parlor_revisit ; Crateria: Parlor Revisit
    dw $078D, $8B3E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $2BFF  ; Screen subpixel Y position
    dw $0915, $01E6  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $016C  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0369  ; Samus X
    dw $0AFA, $026B  ; Samus Y
    dw #$FFFF

preset_gtclassic_crateria_bomb_torizo:
    dw #preset_gtclassic_crateria_flyway ; Crateria: Flyway
    dw $078D, $8982  ; DDB
    dw $079B, $9879  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0000  ; Missiles
    dw $0AF6, $02BE  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B2, $2400  ; Doors
    dw #$FFFF

preset_gtclassic_crateria_alcatraz:
    dw #preset_gtclassic_crateria_bomb_torizo ; Crateria: Bomb Torizo
    dw $078D, $8BAA  ; DDB
    dw $090F, $2001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C6, $0005  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0040  ; Samus X
    dw $D828, $0004  ; Bosses
    dw $D870, $0080  ; Items
    dw $D8B2, $2C00  ; Doors
    dw #$FFFF

preset_gtclassic_crateria_terminator:
    dw #preset_gtclassic_crateria_alcatraz ; Crateria: Alcatraz
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

preset_gtclassic_crateria_green_pirate_shaft:
    dw #preset_gtclassic_crateria_terminator ; Crateria: Terminator
    dw $078D, $895E  ; DDB
    dw $079B, $990D  ; MDB
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
    dw $D870, $0180  ; Items
    dw #$FFFF

preset_gtclassic_brinstar_green_brinstar_elevator:
    dw #preset_gtclassic_crateria_green_pirate_shaft ; Crateria: Green Pirate Shaft
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $1C80  ; Screen subpixel X position
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0002  ; Missiles
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $008F  ; Samus Y
    dw #$FFFF

preset_gtclassic_brinstar_early_supers:
    dw #preset_gtclassic_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dw $078D, $8C0A  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $041C  ; Screen Y position in pixels
    dw $0919, $0315  ; Layer 2 Y position
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A1  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $D8B4, $0002  ; Doors
    dw #$FFFF

preset_gtclassic_brinstar_dachora_room:
    dw #preset_gtclassic_brinstar_early_supers ; Brinstar: Early Supers
    dw $078D, $8D4E  ; DDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0915, $051F  ; Screen Y position in pixels
    dw $0919, $03D7  ; Layer 2 Y position
    dw $09C2, $00BD  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $0A1C, $0019  ; Samus position/state
    dw $0A1E, $0308  ; More position/state
    dw $0AF6, $0052  ; Samus X
    dw $0AFA, $058F  ; Samus Y
    dw $D872, $0401  ; Items
    dw #$FFFF

preset_gtclassic_brinstar_big_pink:
    dw #preset_gtclassic_brinstar_dachora_room ; Brinstar: Dachora Room
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $05F4  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0477  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00B3  ; Health
    dw $09C6, $0002  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0692  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B4, $0006  ; Doors
    dw #$FFFF

preset_gtclassic_brinstar_green_hill_zone:
    dw #preset_gtclassic_brinstar_big_pink ; Brinstar: Big Pink
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0600  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0480  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $0AF6, $0369  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D8B4, $0206  ; Doors
    dw #$FFFF

preset_gtclassic_brinstar_noob_bridge:
    dw #preset_gtclassic_brinstar_green_hill_zone ; Brinstar: Green Hill Zone
    dw $078D, $8DEA  ; DDB
    dw $079B, $9E52  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0668  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $04CE  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C2, $00C7  ; Health
    dw $09C6, $0003  ; Missiles
    dw $0AF6, $06C8  ; Samus X
    dw $0AFA, $03AB  ; Samus Y
    dw #$FFFF

preset_gtclassic_brinstar_red_tower:
    dw #preset_gtclassic_brinstar_noob_bridge ; Brinstar: Noob Bridge
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $3400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0001  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0AF6, $05BC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B6, $0008  ; Doors
    dw #$FFFF

preset_gtclassic_brinstar_hellway:
    dw #preset_gtclassic_brinstar_red_tower ; Brinstar: Red Tower
    dw $078D, $8F0A  ; DDB
    dw $079B, $A253  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0AF6, $00A1  ; Samus X
    dw #$FFFF

preset_gtclassic_brinstar_caterpillars_down:
    dw #preset_gtclassic_brinstar_hellway ; Brinstar: Hellway
    dw $078D, $901E  ; DDB
    dw $079B, $A2F7  ; MDB
    dw $0911, $01F9  ; Screen X position in pixels
    dw $0913, $C3FF  ; Screen subpixel Y position
    dw $0917, $017A  ; Layer 2 X position
    dw $09C2, $00A7  ; Health
    dw $09C6, $0003  ; Missiles
    dw $0AF6, $0299  ; Samus X
    dw #$FFFF

preset_gtclassic_brinstar_alpha_power_bombs:
    dw #preset_gtclassic_brinstar_caterpillars_down ; Brinstar: Caterpillars Down
    dw $078D, $908A  ; DDB
    dw $079B, $A322  ; MDB
    dw $090F, $0003  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $87FF  ; Screen subpixel Y position
    dw $0915, $0717  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0717  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0042  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D8B6, $2008  ; Doors
    dw #$FFFF

preset_gtclassic_brinstar_caterpillars_up:
    dw #preset_gtclassic_brinstar_alpha_power_bombs ; Brinstar: Alpha Power Bombs
    dw $078D, $9096  ; DDB
    dw $079B, $A3AE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $CFFF  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0093  ; Health
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02B1  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $0104  ; Items
    dw #$FFFF

preset_gtclassic_brinstar_reverse_hellway:
    dw #preset_gtclassic_brinstar_caterpillars_up ; Brinstar: Caterpillars Up
    dw $078D, $90EA  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $1001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0500  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0500  ; Layer 2 Y position
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004C  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $D8B6, $3008  ; Doors
    dw #$FFFF

preset_gtclassic_brinstar_red_tower_down:
    dw #preset_gtclassic_brinstar_reverse_hellway ; Brinstar: Reverse Hellway
    dw $078D, $90AE  ; DDB
    dw $079B, $A2F7  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0073  ; Health
    dw $0AF6, $002D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtclassic_brinstar_skree_boost:
    dw #preset_gtclassic_brinstar_red_tower_down ; Brinstar: Red Tower Down
    dw $078D, $907E  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $DFFF  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $091A  ; Screen Y position in pixels
    dw $0919, $06D3  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $005C  ; Samus X
    dw $0AFA, $098B  ; Samus Y
    dw #$FFFF

preset_gtclassic_brinstar_below_spazer:
    dw #preset_gtclassic_brinstar_skree_boost ; Brinstar: Skree Boost
    dw $078D, $9042  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $090F, $6FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $006F  ; Health
    dw $0AF6, $01DC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtclassic_brinstar_breaking_tube:
    dw #preset_gtclassic_brinstar_below_spazer ; Brinstar: Below Spazer
    dw $078D, $9102  ; DDB
    dw $079B, $A408  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09CA, $0004  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $01B7  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_gtclassic_kraid_entering_kraids_lair:
    dw #preset_gtclassic_brinstar_breaking_tube ; Brinstar: Breaking Tube
    dw $078D, $A348  ; DDB
    dw $079B, $CF80  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09CE, $0003  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $002E  ; Samus X
    dw $D820, $0801  ; Events
    dw #$FFFF

preset_gtclassic_kraid_kraid_kihunters:
    dw #preset_gtclassic_kraid_entering_kraids_lair ; Kraid: Entering Kraid's Lair
    dw $078D, $923A  ; DDB
    dw $079B, $A471  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $83FF  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09CA, $0003  ; Supers
    dw $0AF6, $0167  ; Samus X
    dw #$FFFF

preset_gtclassic_kraid_mini_kraid:
    dw #preset_gtclassic_kraid_kraid_kihunters ; Kraid: Kraid Kihunters
    dw $078D, $9156  ; DDB
    dw $079B, $A4DA  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $27FF  ; Screen subpixel Y position
    dw $09C2, $005B  ; Health
    dw $0AF6, $016B  ; Samus X
    dw #$FFFF

preset_gtclassic_kraid_kraid_2:
    dw #preset_gtclassic_kraid_mini_kraid ; Kraid: Mini Kraid
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0917, $0100  ; Layer 2 X position
    dw $09C2, $0031  ; Health
    dw $09CA, $0004  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0AF6, $01BE  ; Samus X
    dw $D8B8, $0024  ; Doors
    dw #$FFFF

preset_gtclassic_kraid_leaving_varia:
    dw #preset_gtclassic_kraid_kraid_2 ; Kraid: Kraid
    dw $078D, $91DA  ; DDB
    dw $079B, $A6E2  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1005  ; Equipped Items
    dw $09A4, $1005  ; Collected Items
    dw $09C2, $0062  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CA, $0002  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0078  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $D828, $0104  ; Bosses
    dw $D876, $0001  ; Items
    dw $D8B8, $0064  ; Doors
    dw #$FFFF

preset_gtclassic_kraid_mini_kraid_revisit:
    dw #preset_gtclassic_kraid_leaving_varia ; Kraid: Leaving Varia
    dw $078D, $91CE  ; DDB
    dw $079B, $A56B  ; MDB
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $005A  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $005B  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $00E4  ; Doors
    dw #$FFFF

preset_gtclassic_kraid_kraid_kihunters_revisit:
    dw #preset_gtclassic_kraid_mini_kraid_revisit ; Kraid: Mini Kraid Revisit
    dw $078D, $91AA  ; DDB
    dw $079B, $A521  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $00F5  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00B7  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0064  ; Health
    dw $09C6, $0002  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $0AF6, $0166  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $00EC  ; Doors
    dw #$FFFF

preset_gtclassic_kraid_kraid_etank:
    dw #preset_gtclassic_kraid_kraid_kihunters_revisit ; Kraid: Kraid Kihunters Revisit
    dw $078D, $916E  ; DDB
    dw $079B, $A471  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $5001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $0AF6, $005B  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $00ED  ; Doors
    dw #$FFFF

preset_gtclassic_kraid_leaving_kraids_lair:
    dw #preset_gtclassic_kraid_kraid_etank ; Kraid: Kraid E-tank
    dw $078D, $9162  ; DDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0919, $001D  ; Layer 2 Y position
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $0004  ; Missiles
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $0904  ; Items
    dw $D8B8, $00EF  ; Doors
    dw #$FFFF

preset_gtclassic_bootless_upper_norfair_business_center:
    dw #preset_gtclassic_kraid_leaving_kraids_lair ; Kraid: Leaving Kraids Lair
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $09CA, $0004  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF

preset_gtclassic_bootless_upper_norfair_cathedral:
    dw #preset_gtclassic_bootless_upper_norfair_business_center ; Bootless Upper Norfair: Business Center
    dw $078D, $92CA  ; DDB
    dw $079B, $A7B3  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0006  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $0919, $0006  ; Layer 2 Y position
    dw $09C6, $0002  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02AD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $04EF  ; Doors
    dw #$FFFF

preset_gtclassic_bootless_upper_norfair_rising_tide:
    dw #preset_gtclassic_bootless_upper_norfair_cathedral ; Bootless Upper Norfair: Cathedral
    dw $078D, $92B2  ; DDB
    dw $079B, $A788  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09CA, $0002  ; Supers
    dw $0AF6, $02AE  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $06EF  ; Doors
    dw #$FFFF

preset_gtclassic_bootless_upper_norfair_bubble_mountain:
    dw #preset_gtclassic_bootless_upper_norfair_rising_tide ; Bootless Upper Norfair: Rising Tide
    dw $078D, $929A  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0121  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $04B1  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtclassic_bootless_upper_norfair_magdollite_tunnel:
    dw #preset_gtclassic_bootless_upper_norfair_bubble_mountain ; Bootless Upper Norfair: Bubble Mountain
    dw $078D, $9576  ; DDB
    dw $079B, $AEDF  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01F5  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0177  ; Layer 2 Y position
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0056  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtclassic_bootless_upper_norfair_kronic_room:
    dw #preset_gtclassic_bootless_upper_norfair_magdollite_tunnel ; Bootless Upper Norfair: Magdollite Tunnel
    dw $078D, $96BA  ; DDB
    dw $079B, $AEB4  ; MDB
    dw $0911, $0200  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $02B1  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtclassic_bootless_upper_norfair_lava_dive:
    dw #preset_gtclassic_bootless_upper_norfair_kronic_room ; Bootless Upper Norfair: Kronic Room
    dw $078D, $96A2  ; DDB
    dw $079B, $AE74  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $09C6, $0001  ; Missiles
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0155  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $0100  ; Doors
    dw #$FFFF

preset_gtclassic_bootless_upper_norfair_ln_main_hall:
    dw #preset_gtclassic_bootless_upper_norfair_lava_dive ; Bootless Upper Norfair: Lava Dive
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0301  ; Layer 2 Y position
    dw $09C2, $001F  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0480  ; Samus X
    dw $0AFA, $0288  ; Samus Y
    dw #$FFFF

preset_gtclassic_bootless_upper_norfair_prepillars:
    dw #preset_gtclassic_bootless_upper_norfair_ln_main_hall ; Bootless Upper Norfair: LN Main Hall
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0917, $0540  ; Layer 2 X position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $07A2  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtclassic_bootless_upper_norfair_green_gate_glitch:
    dw #preset_gtclassic_bootless_upper_norfair_prepillars ; Bootless Upper Norfair: Pre-Pillars
    dw $078D, $985E  ; DDB
    dw $079B, $B3A5  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $006E  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw #$FFFF

preset_gtclassic_bootless_upper_norfair_gt_code:
    dw #preset_gtclassic_bootless_upper_norfair_green_gate_glitch ; Bootless Upper Norfair: Green Gate Glitch
    dw $078D, $988E  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $01F6  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0178  ; Layer 2 Y position
    dw $09C2, $001A  ; Health
    dw $09CA, $0000  ; Supers
    dw $0AF6, $0024  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_business_center:
    dw #preset_gtclassic_kraid_kraid_etank ; Kraid: Kraid E-tank
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $09C6, $0004  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_hi_jump_etank:
    dw #preset_gtclassic_hi_jump_upper_norfair_business_center ; Hi Jump Upper Norfair: Business Center
    dw $090F, $1000  ; Screen subpixel X position
    dw $0915, $051B  ; Screen Y position in pixels
    dw $0919, $03D4  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0041  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $D8B8, $20EC  ; Doors
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_leaving_hi_jump:
    dw #preset_gtclassic_hi_jump_upper_norfair_hi_jump_etank ; Hi Jump Upper Norfair: Hi Jump E-tank
    dw $078D, $9426  ; DDB
    dw $079B, $A9E5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1105  ; Equipped Items
    dw $09A4, $1105  ; Collected Items
    dw $09C2, $0121  ; Health
    dw $09C4, $012B  ; Max health
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0047  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D876, $0121  ; Items
    dw $D8BA, $0001  ; Doors
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_business_center_revisit:
    dw #preset_gtclassic_hi_jump_upper_norfair_leaving_hi_jump ; Hi Jump Upper Norfair: Leaving Hi Jump
    dw $078D, $93F6  ; DDB
    dw $079B, $AA41  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $8FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $9BFF  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $0117  ; Health
    dw $09CE, $0004  ; Pbs
    dw $0AF6, $01BF  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_precathedral:
    dw #preset_gtclassic_hi_jump_upper_norfair_business_center_revisit ; Hi Jump Upper Norfair: Business Center Revisit
    dw $078D, $941A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $BFFF  ; Screen subpixel Y position
    dw $0915, $02F6  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0238  ; Layer 2 Y position
    dw $0AF6, $00A9  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_cathedral:
    dw #preset_gtclassic_hi_jump_upper_norfair_precathedral ; Hi Jump Upper Norfair: Pre-Cathedral
    dw $078D, $92CA  ; DDB
    dw $079B, $A7B3  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0003  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0AF6, $029F  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $24EC  ; Doors
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_rising_tide:
    dw #preset_gtclassic_hi_jump_upper_norfair_cathedral ; Hi Jump Upper Norfair: Cathedral
    dw $078D, $92B2  ; DDB
    dw $079B, $A788  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09CA, $0002  ; Supers
    dw $0AF6, $02B4  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $26EC  ; Doors
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_bubble_mountain:
    dw #preset_gtclassic_hi_jump_upper_norfair_rising_tide ; Hi Jump Upper Norfair: Rising Tide
    dw $078D, $929A  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0101  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $04B8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_magdollite_tunnel:
    dw #preset_gtclassic_hi_jump_upper_norfair_bubble_mountain ; Hi Jump Upper Norfair: Bubble Mountain
    dw $078D, $979E  ; DDB
    dw $079B, $AEDF  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01F4  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0177  ; Layer 2 Y position
    dw $09C2, $012B  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $00AB  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_kronic_room:
    dw #preset_gtclassic_hi_jump_upper_norfair_magdollite_tunnel ; Hi Jump Upper Norfair: Magdollite Tunnel
    dw $078D, $96BA  ; DDB
    dw $079B, $AEB4  ; MDB
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0002  ; Missiles
    dw $0AF6, $02B6  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_lava_dive:
    dw #preset_gtclassic_hi_jump_upper_norfair_kronic_room ; Hi Jump Upper Norfair: Kronic Room
    dw $078D, $96A2  ; DDB
    dw $079B, $AE74  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $09C6, $0001  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0155  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $0101  ; Doors
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_ln_main_hall:
    dw #preset_gtclassic_hi_jump_upper_norfair_lava_dive ; Hi Jump Upper Norfair: Lava Dive
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0301  ; Layer 2 Y position
    dw $09C2, $009C  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0480  ; Samus X
    dw $0AFA, $0288  ; Samus Y
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_prepillars:
    dw #preset_gtclassic_hi_jump_upper_norfair_ln_main_hall ; Hi Jump Upper Norfair: LN Main Hall
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0917, $0540  ; Layer 2 X position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $07A5  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_green_gate_glitch:
    dw #preset_gtclassic_hi_jump_upper_norfair_prepillars ; Hi Jump Upper Norfair: Pre-Pillars
    dw $078D, $985E  ; DDB
    dw $079B, $B3A5  ; MDB
    dw $090F, $3FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0074  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw #$FFFF

preset_gtclassic_hi_jump_upper_norfair_gt_code:
    dw #preset_gtclassic_hi_jump_upper_norfair_green_gate_glitch ; Hi Jump Upper Norfair: Green Gate Glitch
    dw $078D, $988E  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $01F8  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $017A  ; Layer 2 Y position
    dw $09C2, $0097  ; Health
    dw $09CA, $0003  ; Supers
    dw $0AF6, $0024  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtclassic_lower_norfair_leaving_golden_torizo:
    dw #preset_gtclassic_bootless_upper_norfair_gt_code ; Bootless Upper Norfair: GT Code
    dw $078D, $9A86  ; DDB
    dw $079B, $B283  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09A2, $F337  ; Equipped Items
    dw $09A4, $F337  ; Collected Items
    dw $09A6, $100B  ; Beams
    dw $09A8, $100F  ; Beams
    dw $09C2, $02BC  ; Health
    dw $09C4, $02BC  ; Max health
    dw $09C6, $0064  ; Missiles
    dw $09C8, $0064  ; Max missiles
    dw $09CA, $0014  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $09CE, $0014  ; Pbs
    dw $09D0, $0014  ; Max pbs
    dw $09D4, $012C  ; Max reserves
    dw $09D6, $012C  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D82A, $0004  ; Bosses
    dw #$FFFF

preset_gtclassic_lower_norfair_green_gate_revisit:
    dw #preset_gtclassic_lower_norfair_leaving_golden_torizo ; Lower Norfair: Leaving Golden Torizo
    dw $078D, $9882  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0001  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $F33F  ; Equipped Items
    dw $09A4, $F33F  ; Collected Items
    dw $0AF6, $0090  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $8000  ; Items
    dw $D8BA, $0300  ; Doors
    dw #$FFFF

preset_gtclassic_lower_norfair_worst_room_in_the_game:
    dw #preset_gtclassic_lower_norfair_green_gate_revisit ; Lower Norfair: Green Gate Revisit
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $E880  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $09C2, $0272  ; Health
    dw $09CA, $0013  ; Supers
    dw $0AF6, $03D3  ; Samus X
    dw #$FFFF

preset_gtclassic_lower_norfair_amphitheatre:
    dw #preset_gtclassic_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room in the Game
    dw $078D, $994E  ; DDB
    dw $079B, $B4AD  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $0AF6, $00AD  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_gtclassic_lower_norfair_kihunter_stairs_down:
    dw #preset_gtclassic_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dw $078D, $997E  ; DDB
    dw $079B, $B4E5  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0262  ; Screen X position in pixels
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0915, $0033  ; Screen Y position in pixels
    dw $0917, $01C9  ; Layer 2 X position
    dw $0919, $0026  ; Layer 2 Y position
    dw $09C2, $0277  ; Health
    dw $0AF6, $02C2  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw #$FFFF

preset_gtclassic_lower_norfair_wasteland:
    dw #preset_gtclassic_lower_norfair_kihunter_stairs_down ; Lower Norfair: Kihunter Stairs Down
    dw $078D, $99A2  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $AE01  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0416  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0310  ; Layer 2 Y position
    dw $09C2, $029F  ; Health
    dw $09CE, $0012  ; Pbs
    dw $0AF6, $024A  ; Samus X
    dw $0AFA, $047B  ; Samus Y
    dw $D8BA, $4300  ; Doors
    dw #$FFFF

preset_gtclassic_lower_norfair_metal_ninja_pirates:
    dw #preset_gtclassic_lower_norfair_wasteland ; Lower Norfair: Wasteland
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $90FF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $09C2, $0266  ; Health
    dw $09CA, $0012  ; Supers
    dw $09CE, $0011  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $016B  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $C300  ; Doors
    dw #$FFFF

preset_gtclassic_lower_norfair_plowerhouse:
    dw #preset_gtclassic_lower_norfair_metal_ninja_pirates ; Lower Norfair: Metal Ninja Pirates
    dw $078D, $9A1A  ; DDB
    dw $079B, $B62B  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $016F  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0113  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C0, $0001  ; Manual/Auto reserve tank
    dw $09C2, $02BC  ; Health
    dw $09CA, $0014  ; Supers
    dw $0AF6, $01E0  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D8BC, $0001  ; Doors
    dw #$FFFF

preset_gtclassic_lower_norfair_ridley:
    dw #preset_gtclassic_lower_norfair_plowerhouse ; Lower Norfair: Plowerhouse
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $0013  ; Supers
    dw $0AF6, $0024  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8BA, $D300  ; Doors
    dw #$FFFF

preset_gtclassic_lower_norfair_leaving_ridley:
    dw #preset_gtclassic_lower_norfair_ridley ; Lower Norfair: Ridley
    dw $078D, $98CA  ; DDB
    dw $079B, $B32E  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $09C2, $0276  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $005F  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $D82A, $0005  ; Bosses
    dw #$FFFF

preset_gtclassic_lower_norfair_reverse_plowerhouse:
    dw #preset_gtclassic_lower_norfair_leaving_ridley ; Lower Norfair: Leaving Ridley
    dw $078D, $98BE  ; DDB
    dw $079B, $B37A  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $3FFF  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0273  ; Health
    dw $0AF6, $02BB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8BA, $D700  ; Doors
    dw #$FFFF

preset_gtclassic_lower_norfair_wasteland_revisit:
    dw #preset_gtclassic_lower_norfair_reverse_plowerhouse ; Lower Norfair: Reverse Plowerhouse
    dw $078D, $9966  ; DDB
    dw $079B, $B62B  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $7400  ; Screen subpixel Y position
    dw $09C2, $0254  ; Health
    dw $0AF6, $02DC  ; Samus X
    dw #$FFFF

preset_gtclassic_lower_norfair_kihunter_stairs_up:
    dw #preset_gtclassic_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dw $078D, $9A3E  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $D480  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $F001  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $09C2, $0227  ; Health
    dw $09CE, $0010  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0589  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_gtclassic_lower_norfair_fireflea_room:
    dw #preset_gtclassic_lower_norfair_kihunter_stairs_up ; Lower Norfair: Kihunter Stairs Up
    dw $078D, $9A26  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $5780  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0017  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0011  ; Layer 2 Y position
    dw $09CE, $000F  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $009C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtclassic_lower_norfair_springball_maze:
    dw #preset_gtclassic_lower_norfair_fireflea_room ; Lower Norfair: Fireflea Room
    dw $078D, $9A02  ; DDB
    dw $079B, $B6EE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0003  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0167  ; Samus X
    dw #$FFFF

preset_gtclassic_lower_norfair_three_musketeers:
    dw #preset_gtclassic_lower_norfair_springball_maze ; Lower Norfair: Springball Maze
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $4001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0002  ; Layer 2 Y position
    dw $0AF6, $0069  ; Samus X
    dw #$FFFF

preset_gtclassic_lower_norfair_single_chamber_final:
    dw #preset_gtclassic_lower_norfair_three_musketeers ; Lower Norfair: Three Musketeers
    dw $078D, $99AE  ; DDB
    dw $079B, $B656  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $0004  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0003  ; Layer 2 Y position
    dw $0AF6, $0171  ; Samus X
    dw #$FFFF

preset_gtclassic_lower_norfair_bubble_mountain_final:
    dw #preset_gtclassic_lower_norfair_single_chamber_final ; Lower Norfair: Single Chamber Final
    dw $078D, $9A4A  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $0006  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0004  ; Layer 2 Y position
    dw $09C6, $0062  ; Missiles
    dw $0AF6, $0091  ; Samus X
    dw #$FFFF

preset_gtclassic_lower_norfair_frog_speedway:
    dw #preset_gtclassic_lower_norfair_bubble_mountain_final ; Lower Norfair: Bubble Mountain Final
    dw $078D, $956A  ; DDB
    dw $079B, $AF72  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0026  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $001C  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $022C  ; Health
    dw $09C6, $005F  ; Missiles
    dw $09CA, $0014  ; Supers
    dw $09CE, $000E  ; Pbs
    dw $0AF6, $00C6  ; Samus X
    dw #$FFFF

preset_gtclassic_lower_norfair_business_center_final:
    dw #preset_gtclassic_lower_norfair_frog_speedway ; Lower Norfair: Frog Speedway
    dw $078D, $97DA  ; DDB
    dw $079B, $B167  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0AF6, $0039  ; Samus X
    dw #$FFFF

preset_gtclassic_maridia_maridia_tube_revisit:
    dw #preset_gtclassic_lower_norfair_business_center_final ; Lower Norfair: Business Center Final
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0086  ; Samus Y
    dw #$FFFF

preset_gtclassic_maridia_fish_tank:
    dw #preset_gtclassic_maridia_maridia_tube_revisit ; Maridia: Maridia Tube Revisit
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $00FA  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $05F1  ; Screen Y position in pixels
    dw $0917, $00BB  ; Layer 2 X position
    dw $0919, $0474  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0168  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw #$FFFF

preset_gtclassic_maridia_mt_everest:
    dw #preset_gtclassic_maridia_fish_tank ; Maridia: Fish Tank
    dw $078D, $A3F0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0101  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0257  ; Layer 2 Y position
    dw $0AF6, $0181  ; Samus X
    dw $0AFA, $03BB  ; Samus Y
    dw #$FFFF

preset_gtclassic_maridia_crab_shaft:
    dw #preset_gtclassic_maridia_mt_everest ; Maridia: Mt Everest
    dw $090F, $0800  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01EF  ; Health
    dw $0AF6, $05C7  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtclassic_maridia_aqueduct:
    dw #preset_gtclassic_maridia_crab_shaft ; Maridia: Crab Shaft
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $F001  ; Screen subpixel X position
    dw $0911, $0008  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $09D2, $0002  ; Currently selected item
    dw $0917, $0008  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $0AF6, $007C  ; Samus X
    dw $0AFA, $03AB  ; Samus Y
    dw #$FFFF

preset_gtclassic_maridia_botwoon_hallway:
    dw #preset_gtclassic_maridia_aqueduct ; Maridia: Aqueduct
    dw $078D, $A4C8  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0013  ; Supers
    dw $09CE, $000D  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0092  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D8C0, $8000  ; Doors
    dw #$FFFF

preset_gtclassic_maridia_botwoon:
    dw #preset_gtclassic_maridia_botwoon_hallway ; Maridia: Botwoon Hallway
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $02FF  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0003  ; Screen Y position in pixels
    dw $0917, $023F  ; Layer 2 X position
    dw $0919, $0003  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $039F  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtclassic_maridia_halfie_setup:
    dw #preset_gtclassic_maridia_botwoon ; Maridia: Botwoon
    dw $078D, $A918  ; DDB
    dw $079B, $D7E4  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0006  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $0004  ; Layer 2 X position
    dw $0919, $001F  ; Layer 2 Y position
    dw $09C2, $0253  ; Health
    dw $09CA, $0014  ; Supers
    dw $09CE, $000F  ; Pbs
    dw $0AF6, $00A0  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D82C, $0002  ; Bosses
    dw #$FFFF

preset_gtclassic_maridia_draygon:
    dw #preset_gtclassic_maridia_halfie_setup ; Maridia: Halfie Setup
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $01D4  ; Health
    dw $09CA, $0012  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0040  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C2, $0C00  ; Doors
    dw #$FFFF

preset_gtclassic_maridia_reverse_halfie_spikesuit:
    dw #preset_gtclassic_maridia_draygon ; Maridia: Draygon
    dw $078D, $A96C  ; DDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01CF  ; Health
    dw $09C6, $0056  ; Missiles
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82C, $0003  ; Bosses
    dw $D8C2, $4C00  ; Doors
    dw #$FFFF

preset_gtclassic_maridia_womple_jump:
    dw #preset_gtclassic_maridia_reverse_halfie_spikesuit ; Maridia: Reverse Halfie (Spikesuit)
    dw $0A68, $0000  ; Flash suit
    dw #$FFFF

preset_gtclassic_maridia_reverse_halfie_climb:
    dw #preset_gtclassic_maridia_womple_jump ; Maridia: Womple Jump
    dw $078D, $A834  ; DDB
    dw $079B, $D72A  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $6000  ; Screen subpixel Y position
    dw $09C2, $015E  ; Health
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $0037  ; Samus X
    dw #$FFFF

preset_gtclassic_maridia_reverse_botwoon_etank:
    dw #preset_gtclassic_maridia_reverse_halfie_climb ; Maridia: Reverse Halfie Climb
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0200  ; Layer 2 Y position
    dw $09C6, $0053  ; Missiles
    dw $0AF6, $00A5  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtclassic_maridia_reverse_botwoon_hallway:
    dw #preset_gtclassic_maridia_reverse_botwoon_etank ; Maridia: Reverse Botwoon E-tank
    dw $078D, $A84C  ; DDB
    dw $079B, $D95E  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $6B80  ; Screen subpixel X position
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $0024  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C2, $6C00  ; Doors
    dw #$FFFF

preset_gtclassic_maridia_aqueduct_revisit:
    dw #preset_gtclassic_maridia_reverse_botwoon_hallway ; Maridia: Reverse Botwoon Hallway
    dw $078D, $A90C  ; DDB
    dw $079B, $D617  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0015  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $000F  ; Layer 2 X position
    dw $0919, $001F  ; Layer 2 Y position
    dw $0AF6, $00B5  ; Samus X
    dw $0AFA, $00CB  ; Samus Y
    dw #$FFFF

preset_gtclassic_maridia_reverse_crab_shaft:
    dw #preset_gtclassic_maridia_aqueduct_revisit ; Maridia: Aqueduct Revisit
    dw $078D, $A768  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $00FD  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00FD  ; Layer 2 Y position
    dw $0AF6, $006A  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_gtclassic_maridia_mt_everest_revisit:
    dw #preset_gtclassic_maridia_reverse_crab_shaft ; Maridia: Reverse Crab Shaft
    dw $078D, $A708  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $F001  ; Screen subpixel X position
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0180  ; Layer 2 Y position
    dw $0AF6, $0069  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtclassic_maridia_red_brinstar_green_gate:
    dw #preset_gtclassic_maridia_mt_everest_revisit ; Maridia: Mt Everest Revisit
    dw $078D, $A42C  ; DDB
    dw $079B, $D104  ; MDB
    dw $090F, $2C00  ; Screen subpixel X position
    dw $0911, $0001  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $007A  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtclassic_wrecked_ship_crateria_kihunters:
    dw #preset_gtclassic_maridia_red_brinstar_green_gate ; Maridia: Red Brinstar Green Gate
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3C00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $0011  ; Supers
    dw $09CE, $000E  ; Pbs
    dw $0AF6, $008C  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw $D8B2, $2C01  ; Doors
    dw #$FFFF

preset_gtclassic_wrecked_ship_moat:
    dw #preset_gtclassic_wrecked_ship_crateria_kihunters ; Wrecked Ship: Crateria Kihunters
    dw $078D, $8AF6  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $09C2, $0163  ; Health
    dw $09CE, $000D  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02B3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B0, $2000  ; Doors
    dw #$FFFF

preset_gtclassic_wrecked_ship_ocean:
    dw #preset_gtclassic_wrecked_ship_moat ; Wrecked Ship: Moat
    dw $078D, $8A36  ; DDB
    dw $079B, $95FF  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0AF6, $01A8  ; Samus X
    dw #$FFFF

preset_gtclassic_wrecked_ship_wrecked_ship_shaft:
    dw #preset_gtclassic_wrecked_ship_ocean ; Wrecked Ship: Ocean
    dw $078D, $89D6  ; DDB
    dw $079B, $CA08  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $090F, $8C00  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $0010  ; Supers
    dw $0AF6, $002E  ; Samus X
    dw $D8B0, $3000  ; Doors
    dw #$FFFF

preset_gtclassic_wrecked_ship_basement:
    dw #preset_gtclassic_wrecked_ship_wrecked_ship_shaft ; Wrecked Ship: Wrecked Ship Shaft
    dw $078D, $A1BC  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0915, $071F  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0557  ; Layer 2 Y position
    dw $09CA, $000F  ; Supers
    dw $0AF6, $045F  ; Samus X
    dw $0AFA, $07BB  ; Samus Y
    dw $D8C0, $8010  ; Doors
    dw #$FFFF

preset_gtclassic_wrecked_ship_phantoon:
    dw #preset_gtclassic_wrecked_ship_basement ; Wrecked Ship: Basement
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $000E  ; Supers
    dw $09CE, $000C  ; Pbs
    dw $0AF6, $04CE  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $8030  ; Doors
    dw #$FFFF

preset_gtclassic_wrecked_ship_shaft_climb:
    dw #preset_gtclassic_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dw $078D, $A2C4  ; DDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0225  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0917, $019B  ; Layer 2 X position
    dw $09C2, $0154  ; Health
    dw $09C6, $0055  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $02C5  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D82A, $0105  ; Bosses
    dw $D8C0, $8070  ; Doors
    dw #$FFFF

preset_gtclassic_wrecked_ship_ocean_revisit:
    dw #preset_gtclassic_wrecked_ship_shaft_climb ; Wrecked Ship: Shaft Climb
    dw $078D, $A294  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $EC00  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0915, $0313  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $024E  ; Layer 2 Y position
    dw $0AF6, $0466  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D8C0, $8074  ; Doors
    dw #$FFFF

preset_gtclassic_wrecked_ship_crateria_kihunters_revisit:
    dw #preset_gtclassic_wrecked_ship_ocean_revisit ; Wrecked Ship: Ocean Revisit
    dw $078D, $89CA  ; DDB
    dw $079B, $95FF  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $0032  ; Samus X
    dw $0AFA, $008E  ; Samus Y
    dw #$FFFF

preset_gtclassic_wrecked_ship_parlor_return:
    dw #preset_gtclassic_wrecked_ship_crateria_kihunters_revisit ; Wrecked Ship: Crateria Kihunters Revisit
    dw $078D, $8AC6  ; DDB
    dw $079B, $91F8  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $05EC  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $0917, $02F6  ; Layer 2 X position
    dw $0AF6, $068C  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw #$FFFF

preset_gtclassic_wrecked_ship_terminator_revisit:
    dw #preset_gtclassic_wrecked_ship_parlor_return ; Wrecked Ship: Parlor Return
    dw $078D, $8916  ; DDB
    dw $079B, $92FD  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $F800  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0115  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0104  ; Blue suit
    dw #$FFFF

preset_gtclassic_wrecked_ship_green_pirate_shaft_2:
    dw #preset_gtclassic_wrecked_ship_terminator_revisit ; Wrecked Ship: Terminator Revisit
    dw $078D, $895E  ; DDB
    dw $079B, $990D  ; MDB
    dw $090F, $7980  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $01FC  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $017D  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0062  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw #$FFFF

preset_gtclassic_wrecked_ship_g4_elevator:
    dw #preset_gtclassic_wrecked_ship_green_pirate_shaft_2 ; Wrecked Ship: Green Pirate Shaft
    dw $078D, $91F2  ; DDB
    dw $079B, $A66A  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0159  ; Health
    dw $09C6, $0057  ; Missiles
    dw $09CA, $000D  ; Supers
    dw $0AF6, $003D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $0FC1  ; Events
    dw $D8B2, $6C01  ; Doors
    dw #$FFFF

preset_gtclassic_tourian_tourian_elevator_room:
    dw #preset_gtclassic_wrecked_ship_g4_elevator ; Wrecked Ship: G4 Elevator
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw $D90C, $0100  ; Map Stations
    dw #$FFFF

preset_gtclassic_tourian_metroids_1:
    dw #preset_gtclassic_tourian_tourian_elevator_room ; Tourian: Tourian Elevator Room
    dw $090F, $E001  ; Screen subpixel X position
    dw $0913, $DBFF  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003F  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_gtclassic_tourian_metroids_2:
    dw #preset_gtclassic_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00F4  ; Screen X position in pixels
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00B7  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0183  ; Health
    dw $09C6, $0064  ; Missiles
    dw $09CA, $000B  ; Supers
    dw $09CE, $0011  ; Pbs
    dw $0AF6, $0154  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D822, $0001  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF

preset_gtclassic_tourian_metroids_3:
    dw #preset_gtclassic_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $090F, $7FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09C2, $01EC  ; Health
    dw $09CA, $000F  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C5  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0003  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF

preset_gtclassic_tourian_metroids_4:
    dw #preset_gtclassic_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $025A  ; Health
    dw $09CE, $0014  ; Pbs
    dw $0AF6, $05A4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0007  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF

preset_gtclassic_tourian_giant_hoppers:
    dw #preset_gtclassic_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $A9E4  ; DDB
    dw $079B, $DBCD  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $09C2, $02BC  ; Health
    dw $09CA, $0011  ; Supers
    dw $0AF6, $005A  ; Samus X
    dw $0AFA, $01CB  ; Samus Y
    dw $D822, $000F  ; Events
    dw $D8C4, $000F  ; Doors
    dw #$FFFF

preset_gtclassic_tourian_baby_skip:
    dw #preset_gtclassic_tourian_giant_hoppers ; Tourian: Giant Hoppers
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $2FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF

preset_gtclassic_tourian_gadora_room:
    dw #preset_gtclassic_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AA44  ; DDB
    dw $079B, $DCFF  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0113  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00CE  ; Layer 2 Y position
    dw $09CA, $0010  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DC  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C4, $00AF  ; Doors
    dw #$FFFF

preset_gtclassic_tourian_zeb_skip:
    dw #preset_gtclassic_tourian_gadora_room ; Tourian: Gadora Room
    dw $078D, $AAA4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021D  ; Screen Y position in pixels
    dw $0919, $0195  ; Layer 2 Y position
    dw $09CA, $000E  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0047  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF

preset_gtclassic_tourian_mother_brain_2:
    dw #preset_gtclassic_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAC8  ; DDB
    dw $079B, $DD58  ; MDB
    dw $07F3, $0021  ; Music Bank
    dw $07F5, $0000  ; Music Track
    dw $090F, $79FF  ; Screen subpixel X position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $005B  ; Missiles
    dw $09CA, $0001  ; Supers
    dw $0AF6, $00CF  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D820, $0FC5  ; Events
    dw #$FFFF

preset_gtclassic_tourian_zebes_escape:
    dw #preset_gtclassic_tourian_mother_brain_2 ; Tourian: Mother Brain 2
    dw $09A6, $1009  ; Beams
    dw $09C6, $0000  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $09CE, $0000  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0A76, $8000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $009E  ; Samus Y
    dw $D820, $4FCD  ; Events
    dw $D82C, $0203  ; Bosses
    dw #$FFFF

preset_gtclassic_tourian_escape_room_3:
    dw #preset_gtclassic_tourian_zebes_escape ; Tourian: Zebes Escape
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $00F5  ; Screen Y position in pixels
    dw $0919, $00B7  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DF  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_gtclassic_tourian_escape_room_4:
    dw #preset_gtclassic_tourian_escape_room_3 ; Tourian: Escape Room 3
    dw $078D, $AB04  ; DDB
    dw $079B, $DEA7  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001A  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0013  ; Layer 2 Y position
    dw $0AF6, $05DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtclassic_tourian_escape_climb:
    dw #preset_gtclassic_tourian_escape_room_4 ; Tourian: Escape Room 4
    dw $078D, $AB1C  ; DDB
    dw $079B, $DEDE  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $00F4  ; Screen X position in pixels
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0915, $0103  ; Screen Y position in pixels
    dw $0917, $00B7  ; Layer 2 X position
    dw $0919, $00C2  ; Layer 2 Y position
    dw $0AF6, $0154  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_gtclassic_tourian_escape_parlor:
    dw #preset_gtclassic_tourian_escape_climb ; Tourian: Escape Climb
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $EFFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6801  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0229  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01D1  ; Samus X
    dw $0AFA, $004B  ; Samus Y
    dw #$FFFF
