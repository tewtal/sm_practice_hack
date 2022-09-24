
preset_gtmax_crateria_ceres_elevator:
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

preset_gtmax_crateria_ceres_escape:
    dw #preset_gtmax_crateria_ceres_elevator ; Crateria: Ceres Elevator
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

preset_gtmax_crateria_ceres_last_3_rooms:
    dw #preset_gtmax_crateria_ceres_escape ; Crateria: Ceres Escape
    dw $078D, $ABA0  ; DDB
    dw $079B, $E021  ; MDB
    dw $090F, $7400  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $00A2  ; Samus Y
    dw #$FFFF

preset_gtmax_crateria_ship:
    dw #preset_gtmax_crateria_ceres_last_3_rooms ; Crateria: Ceres Last 3 Rooms
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

preset_gtmax_crateria_parlor:
    dw #preset_gtmax_crateria_ship ; Crateria: Ship
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

preset_gtmax_crateria_parlor_downback:
    dw #preset_gtmax_crateria_parlor ; Crateria: Parlor
    dw $078D, $8916  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $8001  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $02F3  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0236  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01A1  ; Samus X
    dw $0AFA, $035B  ; Samus Y
    dw #$FFFF

preset_gtmax_crateria_climb_down:
    dw #preset_gtmax_crateria_parlor_downback ; Crateria: Parlor Downback
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $0919, $0317  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0198  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw #$FFFF

preset_gtmax_crateria_pit_room:
    dw #preset_gtmax_crateria_climb_down ; Crateria: Climb Down
    dw $078D, $898E  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $4FFF  ; Screen subpixel X position
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $0800  ; Screen Y position in pixels
    dw $0919, $0600  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $088B  ; Samus Y
    dw #$FFFF

preset_gtmax_crateria_morph:
    dw #preset_gtmax_crateria_pit_room ; Crateria: Pit Room
    dw $078D, $8B9E  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F5, $0007  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
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

preset_gtmax_crateria_construction_zone_down:
    dw #preset_gtmax_crateria_morph ; Crateria: Morph
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0917, $0540  ; Layer 2 X position
    dw $09A2, $0004  ; Equipped Items
    dw $09A4, $0004  ; Collected Items
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $07A6  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D872, $0400  ; Items
    dw #$FFFF

preset_gtmax_crateria_construction_zone_up:
    dw #preset_gtmax_crateria_construction_zone_down ; Crateria: Construction Zone Down
    dw $078D, $8EDA  ; DDB
    dw $079B, $A107  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0005  ; Missiles
    dw $09C8, $0005  ; Max missiles
    dw $0AF6, $0056  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $0004  ; Items
    dw #$FFFF

preset_gtmax_crateria_pit_room_revisit:
    dw #preset_gtmax_crateria_construction_zone_up ; Crateria: Construction Zone Up
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

preset_gtmax_crateria_climb_up:
    dw #preset_gtmax_crateria_pit_room_revisit ; Crateria: Pit Room Revisit
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0076  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $0001  ; Events
    dw $D8B2, $0400  ; Doors
    dw #$FFFF

preset_gtmax_crateria_parlor_flyway:
    dw #preset_gtmax_crateria_climb_up ; Crateria: Climb Up
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0AF6, $019B  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_gtmax_crateria_flyway:
    dw #preset_gtmax_crateria_parlor_flyway ; Crateria: Parlor Flyway
    dw $078D, $8B3E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $01E9  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $016E  ; Layer 2 Y position
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $0369  ; Samus X
    dw $0AFA, $0270  ; Samus Y
    dw #$FFFF

preset_gtmax_crateria_bomb_torizo:
    dw #preset_gtmax_crateria_flyway ; Crateria: Flyway
    dw $078D, $8982  ; DDB
    dw $079B, $9879  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02BD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B2, $2400  ; Doors
    dw #$FFFF

preset_gtmax_crateria_alcatraz:
    dw #preset_gtmax_crateria_bomb_torizo ; Crateria: Bomb Torizo
    dw $078D, $8BAA  ; DDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C6, $0005  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0038  ; Samus X
    dw $D828, $0004  ; Bosses
    dw $D870, $0080  ; Items
    dw $D8B2, $2C00  ; Doors
    dw #$FFFF

preset_gtmax_crateria_terminator:
    dw #preset_gtmax_crateria_alcatraz ; Crateria: Alcatraz
    dw $078D, $8BF2  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $5C00  ; Screen subpixel X position
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0AF6, $0059  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF

preset_gtmax_crateria_green_pirate_shaft:
    dw #preset_gtmax_crateria_terminator ; Crateria: Terminator
    dw $078D, $895E  ; DDB
    dw $079B, $990D  ; MDB
    dw $090F, $6C00  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01FA  ; Screen Y position in pixels
    dw $0919, $017B  ; Layer 2 Y position
    dw $0AFA, $0298  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_green_brinstar_elevator:
    dw #preset_gtmax_crateria_green_pirate_shaft ; Crateria: Green Pirate Shaft
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0002  ; Missiles
    dw $0AF6, $007D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_early_supers:
    dw #preset_gtmax_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dw $078D, $8C0A  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $041C  ; Screen Y position in pixels
    dw $0919, $0315  ; Layer 2 Y position
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A3  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $D8B4, $0002  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_dachora_room:
    dw #preset_gtmax_brinstar_early_supers ; Brinstar: Early Supers
    dw $078D, $8D4E  ; DDB
    dw $090F, $6001  ; Screen subpixel X position
    dw $0915, $061A  ; Screen Y position in pixels
    dw $0919, $0493  ; Layer 2 Y position
    dw $09C2, $0059  ; Health
    dw $09C6, $0002  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $0AF6, $004B  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D872, $0401  ; Items
    dw $D8B4, $0006  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_big_pink:
    dw #preset_gtmax_brinstar_dachora_room ; Brinstar: Dachora Room
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $090F, $6C00  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $B3FF  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0063  ; Health
    dw $0AF6, $0696  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_green_hill_zone:
    dw #preset_gtmax_brinstar_big_pink ; Brinstar: Big Pink
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $2FFF  ; Screen subpixel Y position
    dw $0915, $0600  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0480  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $0AF6, $0374  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D8B4, $0206  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_noob_bridge:
    dw #preset_gtmax_brinstar_green_hill_zone ; Brinstar: Green Hill Zone
    dw $078D, $8DEA  ; DDB
    dw $079B, $9E52  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $06D2  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $051D  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C2, $0059  ; Health
    dw $0AF6, $0732  ; Samus X
    dw $0AFA, $03AB  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_red_tower_up:
    dw #preset_gtmax_brinstar_noob_bridge ; Brinstar: Noob Bridge
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0004  ; Supers
    dw $0AF6, $05C0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B6, $0008  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_hellway:
    dw #preset_gtmax_brinstar_red_tower_up ; Brinstar: Red Tower Up
    dw $078D, $8F0A  ; DDB
    dw $079B, $A253  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $000C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0009  ; Layer 2 Y position
    dw $0AF6, $008E  ; Samus X
    dw #$FFFF

preset_gtmax_brinstar_caterpillars_down:
    dw #preset_gtmax_brinstar_hellway ; Brinstar: Hellway
    dw $078D, $901E  ; DDB
    dw $079B, $A2F7  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0063  ; Health
    dw $0AF6, $0270  ; Samus X
    dw #$FFFF

preset_gtmax_brinstar_alpha_power_bombs:
    dw #preset_gtmax_brinstar_caterpillars_down ; Brinstar: Caterpillars Down
    dw $078D, $908A  ; DDB
    dw $079B, $A322  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $070C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $070C  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0049  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D8B6, $2008  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_caterpillars_up:
    dw #preset_gtmax_brinstar_alpha_power_bombs ; Brinstar: Alpha Power Bombs
    dw $078D, $9096  ; DDB
    dw $079B, $A3AE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $004F  ; Health
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02BE  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $0104  ; Items
    dw #$FFFF

preset_gtmax_brinstar_reverse_hellway:
    dw #preset_gtmax_brinstar_caterpillars_up ; Brinstar: Caterpillars Up
    dw $078D, $90EA  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0500  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0500  ; Layer 2 Y position
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $D8B6, $3008  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_red_tower_down:
    dw #preset_gtmax_brinstar_reverse_hellway ; Brinstar: Reverse Hellway
    dw $078D, $90AE  ; DDB
    dw $079B, $A2F7  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0004  ; Supers
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_skree_boost:
    dw #preset_gtmax_brinstar_red_tower_down ; Brinstar: Red Tower Down
    dw $078D, $907E  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $091A  ; Screen Y position in pixels
    dw $0919, $06D3  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0055  ; Samus X
    dw $0AFA, $098B  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_below_spazer:
    dw #preset_gtmax_brinstar_skree_boost ; Brinstar: Skree Boost
    dw $078D, $9042  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $004B  ; Health
    dw $0AF6, $01DD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_breaking_tube:
    dw #preset_gtmax_brinstar_below_spazer ; Brinstar: Below Spazer
    dw $078D, $9102  ; DDB
    dw $079B, $A408  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09CA, $0005  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $01B6  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_gtmax_kraid_entering_kraids_lair:
    dw #preset_gtmax_brinstar_breaking_tube ; Brinstar: Breaking Tube
    dw $078D, $A348  ; DDB
    dw $079B, $CF80  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C01  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09CE, $0003  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $002E  ; Samus X
    dw $D820, $0801  ; Events
    dw #$FFFF

preset_gtmax_kraid_kraid_kihunters:
    dw #preset_gtmax_kraid_entering_kraids_lair ; Kraid: Entering Kraid's Lair
    dw $078D, $923A  ; DDB
    dw $079B, $A471  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09CA, $0002  ; Supers
    dw $0AF6, $0167  ; Samus X
    dw #$FFFF

preset_gtmax_kraid_mini_kraid:
    dw #preset_gtmax_kraid_kraid_kihunters ; Kraid: Kraid Kihunters
    dw $078D, $9156  ; DDB
    dw $079B, $A4DA  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $8400  ; Screen subpixel Y position
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $016B  ; Samus X
    dw #$FFFF

preset_gtmax_kraid_kraid_2:
    dw #preset_gtmax_kraid_mini_kraid ; Kraid: Mini Kraid
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0100  ; Layer 2 X position
    dw $09C2, $0021  ; Health
    dw $09CA, $0004  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $01BE  ; Samus X
    dw $D8B8, $0024  ; Doors
    dw #$FFFF

preset_gtmax_kraid_leaving_varia:
    dw #preset_gtmax_kraid_kraid_2 ; Kraid: Kraid
    dw $078D, $91DA  ; DDB
    dw $079B, $A6E2  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1005  ; Equipped Items
    dw $09A4, $1005  ; Collected Items
    dw $09C2, $0044  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0078  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $D828, $0104  ; Bosses
    dw $D876, $0001  ; Items
    dw $D8B8, $0064  ; Doors
    dw #$FFFF

preset_gtmax_kraid_mini_kraid_revisit:
    dw #preset_gtmax_kraid_leaving_varia ; Kraid: Leaving Varia
    dw $078D, $91CE  ; DDB
    dw $079B, $A56B  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $003C  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0052  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $00E4  ; Doors
    dw #$FFFF

preset_gtmax_kraid_kraid_kihunters_revisit:
    dw #preset_gtmax_kraid_mini_kraid_revisit ; Kraid: Mini Kraid Revisit
    dw $078D, $91AA  ; DDB
    dw $079B, $A521  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0020  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0018  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0002  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $0AF6, $00C0  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $00EC  ; Doors
    dw #$FFFF

preset_gtmax_kraid_leaving_kraids_lair:
    dw #preset_gtmax_kraid_kraid_kihunters_revisit ; Kraid: Kraid Kihunters Revisit
    dw $078D, $923A  ; DDB
    dw $079B, $A471  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $09C6, $0004  ; Missiles
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_upper_norfair_business_center:
    dw #preset_gtmax_kraid_leaving_kraids_lair ; Kraid: Leaving Kraid's Lair
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $E000  ; Screen subpixel X position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $09CA, $0004  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF

preset_gtmax_upper_norfair_hijump_etank_room:
    dw #preset_gtmax_upper_norfair_business_center ; Upper Norfair: Business Center
    dw $090F, $0000  ; Screen subpixel X position
    dw $0915, $051B  ; Screen Y position in pixels
    dw $0919, $03D4  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0042  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $D8B8, $20EC  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_leaving_hijump:
    dw #preset_gtmax_upper_norfair_hijump_etank_room ; Upper Norfair: Hi-Jump E-Tank Room
    dw $078D, $9426  ; DDB
    dw $079B, $A9E5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1105  ; Equipped Items
    dw $09A4, $1105  ; Collected Items
    dw $09C2, $0050  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0045  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D876, $0021  ; Items
    dw #$FFFF

preset_gtmax_upper_norfair_business_center_revisit:
    dw #preset_gtmax_upper_norfair_leaving_hijump ; Upper Norfair: Leaving Hi-Jump
    dw $078D, $93F6  ; DDB
    dw $079B, $AA41  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $BBFF  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $0046  ; Health
    dw $09CE, $0002  ; Pbs
    dw $0AF6, $01C1  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8BA, $0001  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_precathedral:
    dw #preset_gtmax_upper_norfair_business_center_revisit ; Upper Norfair: Business Center Revisit
    dw $078D, $941A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7FFF  ; Screen subpixel Y position
    dw $0915, $0304  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0243  ; Layer 2 Y position
    dw $0AF6, $00AF  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_gtmax_upper_norfair_cathedral:
    dw #preset_gtmax_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dw $078D, $92CA  ; DDB
    dw $079B, $A7B3  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0003  ; Missiles
    dw $09CA, $0002  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0AF6, $02A6  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $24EC  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_rising_tide:
    dw #preset_gtmax_upper_norfair_cathedral ; Upper Norfair: Cathedral
    dw $078D, $92B2  ; DDB
    dw $079B, $A788  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09CA, $0001  ; Supers
    dw $0AF6, $02B7  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $26EC  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_bubble_mountain:
    dw #preset_gtmax_upper_norfair_rising_tide ; Upper Norfair: Rising Tide
    dw $078D, $929A  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $BA00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $003A  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $04BA  ; Samus X
    dw $0AFA, $0090  ; Samus Y
    dw #$FFFF

preset_gtmax_upper_norfair_magdollite_tunnel:
    dw #preset_gtmax_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dw $078D, $979E  ; DDB
    dw $079B, $AEDF  ; MDB
    dw $090F, $7280  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01F2  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0175  ; Layer 2 Y position
    dw $09C2, $0063  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00AB  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtmax_upper_norfair_kronic_room:
    dw #preset_gtmax_upper_norfair_magdollite_tunnel ; Upper Norfair: Magdollite Tunnel
    dw $078D, $96BA  ; DDB
    dw $079B, $AEB4  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0002  ; Missiles
    dw $0AF6, $02B8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_upper_norfair_lava_dive:
    dw #preset_gtmax_upper_norfair_kronic_room ; Upper Norfair: Kronic Room
    dw $078D, $96A2  ; DDB
    dw $079B, $AE74  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0169  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $0101  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_ln_main_hall:
    dw #preset_gtmax_upper_norfair_lava_dive ; Upper Norfair: Lava Dive
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0301  ; Layer 2 Y position
    dw $09C2, $0009  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0480  ; Samus X
    dw $0AFA, $0288  ; Samus Y
    dw #$FFFF

preset_gtmax_upper_norfair_prepillars:
    dw #preset_gtmax_upper_norfair_ln_main_hall ; Upper Norfair: LN Main Hall
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0917, $0540  ; Layer 2 X position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0796  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtmax_upper_norfair_green_gate_glitch:
    dw #preset_gtmax_upper_norfair_prepillars ; Upper Norfair: Pre-Pillars
    dw $078D, $985E  ; DDB
    dw $079B, $B3A5  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $0013  ; Health
    dw $09CE, $0001  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $007E  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw #$FFFF

preset_gtmax_upper_norfair_gt_code:
    dw #preset_gtmax_upper_norfair_green_gate_glitch ; Upper Norfair: Green Gate Glitch
    dw $078D, $988E  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09C2, $000E  ; Health
    dw $09CA, $0002  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $0024  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtmax_lower_norfair_leaving_golden_torizo:
    dw #preset_gtmax_upper_norfair_gt_code ; Upper Norfair: GT Code
    dw $078D, $9A86  ; DDB
    dw $079B, $B283  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $D000  ; Screen subpixel Y position
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
    dw $09CA, $0019  ; Supers
    dw $09CC, $0019  ; Max supers
    dw $09CE, $0013  ; Pbs
    dw $09D0, $0014  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $012C  ; Max reserves
    dw $09D6, $012C  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D82A, $0004  ; Bosses
    dw $D878, $0080  ; Items
    dw #$FFFF

preset_gtmax_lower_norfair_green_gate_revisit:
    dw #preset_gtmax_lower_norfair_leaving_golden_torizo ; Lower Norfair: Leaving Golden Torizo
    dw $078D, $9882  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $F33F  ; Equipped Items
    dw $09A4, $F33F  ; Collected Items
    dw $0AF6, $0090  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $8080  ; Items
    dw $D8BA, $0301  ; Doors
    dw #$FFFF

preset_gtmax_lower_norfair_ln_main_hall_revisit:
    dw #preset_gtmax_lower_norfair_green_gate_revisit ; Lower Norfair: Green Gate Revisit
    dw $078D, $989A  ; DDB
    dw $079B, $B3A5  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09CA, $0018  ; Supers
    dw $09CE, $0012  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0033  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_gtmax_lower_norfair_green_gate_final:
    dw #preset_gtmax_lower_norfair_ln_main_hall_revisit ; Lower Norfair: LN Main Hall Revisit
    dw $078D, $9882  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $0FFF  ; Screen subpixel Y position
    dw $0915, $0009  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0006  ; Layer 2 Y position
    dw $09C2, $02B5  ; Health
    dw $09C6, $0069  ; Missiles
    dw $09C8, $0069  ; Max missiles
    dw $09CE, $0010  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0091  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $1801  ; Events
    dw $D878, $80C0  ; Items
    dw #$FFFF

preset_gtmax_lower_norfair_worst_room_in_the_game:
    dw #preset_gtmax_lower_norfair_green_gate_final ; Lower Norfair: Green Gate Final
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $026A  ; Health
    dw $09CA, $0017  ; Supers
    dw $0AF6, $03DB  ; Samus X
    dw #$FFFF

preset_gtmax_lower_norfair_mickey_mouse_missiles:
    dw #preset_gtmax_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room in the Game
    dw $078D, $994E  ; DDB
    dw $079B, $B4AD  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $000B  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0008  ; Layer 2 Y position
    dw $09C2, $027E  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0050  ; Samus X
    dw #$FFFF

preset_gtmax_lower_norfair_amphitheatre:
    dw #preset_gtmax_lower_norfair_mickey_mouse_missiles ; Lower Norfair: Mickey Mouse Missiles
    dw $078D, $9936  ; DDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09C6, $006E  ; Missiles
    dw $09C8, $006E  ; Max missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A7  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D878, $82C0  ; Items
    dw #$FFFF

preset_gtmax_lower_norfair_kihunter_stairs_down:
    dw #preset_gtmax_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dw $078D, $997E  ; DDB
    dw $079B, $B4E5  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0282  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $003D  ; Screen Y position in pixels
    dw $0917, $01E1  ; Layer 2 X position
    dw $0919, $002D  ; Layer 2 Y position
    dw $0AF6, $02E2  ; Samus X
    dw $0AFA, $00B3  ; Samus Y
    dw #$FFFF

preset_gtmax_lower_norfair_wasteland:
    dw #preset_gtmax_lower_norfair_kihunter_stairs_down ; Lower Norfair: Kihunter Stairs Down
    dw $078D, $99A2  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0419  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0312  ; Layer 2 Y position
    dw $09CE, $000E  ; Pbs
    dw $0A1C, $0079  ; Samus position/state
    dw $0A1E, $1108  ; More position/state
    dw $0AF6, $0246  ; Samus X
    dw $0AFA, $0489  ; Samus Y
    dw $D8BA, $4301  ; Doors
    dw #$FFFF

preset_gtmax_lower_norfair_metal_ninja_pirates:
    dw #preset_gtmax_lower_norfair_wasteland ; Lower Norfair: Wasteland
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $09C2, $0245  ; Health
    dw $09CA, $0016  ; Supers
    dw $09CE, $0013  ; Pbs
    dw $09D0, $0019  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $016B  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D878, $92C0  ; Items
    dw $D8BA, $C301  ; Doors
    dw #$FFFF

preset_gtmax_lower_norfair_plowerhouse:
    dw #preset_gtmax_lower_norfair_metal_ninja_pirates ; Lower Norfair: Metal Ninja Pirates
    dw $078D, $9A1A  ; DDB
    dw $079B, $B62B  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $017F  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $011F  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C0, $0001  ; Manual/Auto reserve tank
    dw $09C2, $02BC  ; Health
    dw $09CA, $0019  ; Supers
    dw $0AF6, $01E8  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D8BC, $0001  ; Doors
    dw #$FFFF

preset_gtmax_lower_norfair_ridley:
    dw #preset_gtmax_lower_norfair_plowerhouse ; Lower Norfair: Plowerhouse
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $0018  ; Supers
    dw $0AF6, $003C  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D8BA, $D301  ; Doors
    dw #$FFFF

preset_gtmax_lower_norfair_leaving_ridley_etank:
    dw #preset_gtmax_lower_norfair_ridley ; Lower Norfair: Ridley
    dw $078D, $98CA  ; DDB
    dw $079B, $B32E  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $09CA, $0011  ; Supers
    dw $09CE, $0019  ; Pbs
    dw $0AF6, $00C0  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $D82A, $0005  ; Bosses
    dw #$FFFF

preset_gtmax_lower_norfair_reverse_plowerhouse:
    dw #preset_gtmax_lower_norfair_leaving_ridley_etank ; Lower Norfair: Leaving Ridley E-Tank
    dw $078D, $98BE  ; DDB
    dw $079B, $B37A  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $97FF  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $031D  ; Health
    dw $09C4, $0320  ; Max health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02CD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $D2C0  ; Items
    dw $D8BA, $DF01  ; Doors
    dw #$FFFF

preset_gtmax_lower_norfair_wasteland_revisit:
    dw #preset_gtmax_lower_norfair_reverse_plowerhouse ; Lower Norfair: Reverse Plowerhouse
    dw $078D, $9966  ; DDB
    dw $079B, $B62B  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $8800  ; Screen subpixel Y position
    dw $09C2, $02FF  ; Health
    dw $0AF6, $02DC  ; Samus X
    dw #$FFFF

preset_gtmax_lower_norfair_kihunter_stairs_up:
    dw #preset_gtmax_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dw $078D, $9A3E  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $09C2, $02A5  ; Health
    dw $09CE, $0018  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0589  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_gtmax_lower_norfair_fireflea_room:
    dw #preset_gtmax_lower_norfair_kihunter_stairs_up ; Lower Norfair: Kihunter Stairs Up
    dw $078D, $9A26  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $3480  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $000F  ; Layer 2 Y position
    dw $09CE, $0017  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $009C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_lower_norfair_springball_maze:
    dw #preset_gtmax_lower_norfair_fireflea_room ; Lower Norfair: Fireflea Room
    dw $078D, $9A02  ; DDB
    dw $079B, $B6EE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $001C  ; Layer 2 Y position
    dw $09C2, $0374  ; Health
    dw $09C4, $0384  ; Max health
    dw $09CA, $0010  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $016C  ; Samus X
    dw $D87A, $0001  ; Items
    dw #$FFFF

preset_gtmax_lower_norfair_three_muskateers:
    dw #preset_gtmax_lower_norfair_springball_maze ; Lower Norfair: Springball Maze
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0006  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0004  ; Layer 2 Y position
    dw $09C6, $0073  ; Missiles
    dw $09C8, $0073  ; Max missiles
    dw $09CE, $001C  ; Pbs
    dw $09D0, $001E  ; Max pbs
    dw $0AF6, $006F  ; Samus X
    dw $D878, $DEC0  ; Items
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_single_chamber:
    dw #preset_gtmax_lower_norfair_three_muskateers ; Lower Norfair: Three Muskateers
    dw $078D, $99AE  ; DDB
    dw $079B, $B656  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0370  ; Health
    dw $09C6, $0078  ; Missiles
    dw $09C8, $0078  ; Max missiles
    dw $0AF6, $0170  ; Samus X
    dw $D878, $FEC0  ; Items
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_double_chamber:
    dw #preset_gtmax_upper_norfair_and_kraid_single_chamber ; Upper Norfair and Kraid: Single Chamber
    dw $078D, $9A4A  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09CA, $000F  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8BA, $DF41  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_bat_cave:
    dw #preset_gtmax_upper_norfair_and_kraid_double_chamber ; Upper Norfair and Kraid: Double Chamber
    dw $078D, $95CA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0375  ; Health
    dw $09C6, $007B  ; Missiles
    dw $09C8, $007D  ; Max missiles
    dw $09CA, $000E  ; Supers
    dw $09CE, $001D  ; Pbs
    dw $0AF6, $01B9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $FEC8  ; Items
    dw $D8BA, $DF51  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_bat_cave_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_bat_cave ; Upper Norfair and Kraid: Bat Cave
    dw $078D, $97B6  ; DDB
    dw $079B, $ACF0  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $029B  ; Health
    dw $09C6, $0081  ; Missiles
    dw $09C8, $0082  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $D878, $FECA  ; Items
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_bubble_mountain_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_bat_cave_revisit ; Upper Norfair and Kraid: Bat Cave Revisit
    dw $078D, $95A6  ; DDB
    dw $079B, $B07A  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $0299  ; Health
    dw $0A1C, $0014  ; Samus position/state
    dw $0A1E, $0204  ; More position/state
    dw $0AF6, $0035  ; Samus X
    dw $0AFA, $0187  ; Samus Y
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_leaving_norfair_reserve:
    dw #preset_gtmax_upper_norfair_and_kraid_bubble_mountain_revisit ; Upper Norfair and Kraid: Bubble Mountain Revisit
    dw $078D, $9546  ; DDB
    dw $079B, $AC5A  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $008B  ; Missiles
    dw $09C8, $008C  ; Max missiles
    dw $09CA, $000D  ; Supers
    dw $09D4, $0190  ; Max reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01B1  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $E021  ; Items
    dw $D8BA, $DF59  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_bubble_mountain_final:
    dw #preset_gtmax_upper_norfair_and_kraid_leaving_norfair_reserve ; Upper Norfair and Kraid: Leaving Norfair Reserve
    dw $078D, $952E  ; DDB
    dw $079B, $AC83  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $6800  ; Screen subpixel Y position
    dw $09C2, $02AD  ; Health
    dw $0AF6, $01C3  ; Samus X
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_cathedral_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_bubble_mountain_final ; Upper Norfair and Kraid: Bubble Mountain Final
    dw $078D, $955E  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C6, $0090  ; Missiles
    dw $09C8, $0091  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0049  ; Samus X
    dw $D878, $FECB  ; Items
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_ice_gate_room:
    dw #preset_gtmax_upper_norfair_and_kraid_cathedral_revisit ; Upper Norfair and Kraid: Cathedral Revisit
    dw $078D, $92A6  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $B7FF  ; Screen subpixel Y position
    dw $0915, $0325  ; Screen Y position in pixels
    dw $0919, $025B  ; Layer 2 Y position
    dw $09C2, $02C1  ; Health
    dw $09C6, $0095  ; Missiles
    dw $09C8, $0096  ; Max missiles
    dw $09CA, $000C  ; Supers
    dw $0AF6, $0052  ; Samus X
    dw $0AFA, $039B  ; Samus Y
    dw $D876, $E023  ; Items
    dw $D8B8, $2EEC  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_crocomire:
    dw #preset_gtmax_upper_norfair_and_kraid_ice_gate_room ; Upper Norfair and Kraid: Ice Gate Room
    dw $078D, $9396  ; DDB
    dw $079B, $A923  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021B  ; Screen Y position in pixels
    dw $0917, $0900  ; Layer 2 X position
    dw $0919, $0194  ; Layer 2 Y position
    dw $09C2, $02BD  ; Health
    dw $09C6, $009A  ; Missiles
    dw $09C8, $009B  ; Max missiles
    dw $09CA, $000B  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0C21  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D876, $E02B  ; Items
    dw $D8B8, $6EEC  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_leaving_crocomire:
    dw #preset_gtmax_upper_norfair_and_kraid_crocomire ; Upper Norfair and Kraid: Crocomire
    dw $078D, $93D2  ; DDB
    dw $079B, $A98D  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $09C2, $03CF  ; Health
    dw $09C4, $03E8  ; Max health
    dw $09C6, $009B  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $07C9  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D82A, $0007  ; Bosses
    dw $D876, $E03B  ; Items
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_grapple_shaft_down:
    dw #preset_gtmax_upper_norfair_and_kraid_leaving_crocomire ; Upper Norfair and Kraid: Leaving Crocomire
    dw $078D, $946E  ; DDB
    dw $079B, $AA82  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0026  ; Screen X position in pixels
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0917, $0026  ; Layer 2 X position
    dw $0919, $011D  ; Layer 2 Y position
    dw $09CA, $000A  ; Supers
    dw $09CE, $0022  ; Pbs
    dw $09D0, $0023  ; Max pbs
    dw $0AF6, $00A6  ; Samus X
    dw $0AFA, $01AB  ; Samus Y
    dw $D876, $E23B  ; Items
    dw $D8BA, $DF5B  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_sine_missiles:
    dw #preset_gtmax_upper_norfair_and_kraid_grapple_shaft_down ; Upper Norfair and Kraid: Grapple Shaft Down
    dw $078D, $94CE  ; DDB
    dw $079B, $AB07  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $02F6  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0238  ; Layer 2 Y position
    dw $09C2, $03E8  ; Health
    dw $09C6, $00A0  ; Missiles
    dw $09C8, $00A0  ; Max missiles
    dw $09CA, $0009  ; Supers
    dw $09D6, $012E  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00AF  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D876, $EA3B  ; Items
    dw $D8BA, $DF5F  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_crocomire_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_sine_missiles ; Upper Norfair and Kraid: Sine Missiles
    dw $078D, $947A  ; DDB
    dw $079B, $AA82  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $035F  ; Health
    dw $09C6, $00A5  ; Missiles
    dw $09C8, $00A5  ; Max missiles
    dw $0AF6, $01C4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $EE3B  ; Items
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_croc_escape_super_gate:
    dw #preset_gtmax_upper_norfair_and_kraid_crocomire_revisit ; Upper Norfair and Kraid: Crocomire Revisit
    dw $078D, $93EA  ; DDB
    dw $079B, $A923  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $0900  ; Layer 2 X position
    dw $0919, $000F  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0C91  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $EEEC  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_hijump_etank_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_croc_escape_super_gate ; Upper Norfair and Kraid: Croc Escape Super Gate
    dw $078D, $9402  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $BF00  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $0503  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $03C2  ; Layer 2 Y position
    dw $09C6, $00AA  ; Missiles
    dw $09C8, $00AA  ; Max missiles
    dw $09CA, $0008  ; Supers
    dw $0AF6, $007F  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $D876, $EE7B  ; Items
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_business_center_final:
    dw #preset_gtmax_upper_norfair_and_kraid_hijump_etank_revisit ; Upper Norfair and Kraid: Hi-Jump E-Tank Revisit
    dw $078D, $92D6  ; DDB
    dw $079B, $AA41  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $044C  ; Health
    dw $09C4, $044C  ; Max health
    dw $09C6, $00AF  ; Missiles
    dw $09C8, $00AF  ; Max missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0191  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $EFFB  ; Items
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_kraid_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_business_center_final ; Upper Norfair and Kraid: Business Center Final
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $09D2, $0002  ; Currently selected item
    dw $0917, $0000  ; Layer 2 X position
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0086  ; Samus Y
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_kraid_etank:
    dw #preset_gtmax_upper_norfair_and_kraid_kraid_revisit ; Upper Norfair and Kraid: Kraid Revisit
    dw $078D, $923A  ; DDB
    dw $079B, $A471  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09CA, $0007  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0059  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $EEED  ; Doors
    dw #$FFFF

preset_gtmax_upper_norfair_and_kraid_kraid_kihunters_final:
    dw #preset_gtmax_upper_norfair_and_kraid_kraid_etank ; Upper Norfair and Kraid: Kraid E-Tank
    dw $078D, $9162  ; DDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $3FFF  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $04B0  ; Health
    dw $09C4, $04B0  ; Max health
    dw $09CE, $0023  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0167  ; Samus X
    dw $D874, $0904  ; Items
    dw $D8B8, $EEEF  ; Doors
    dw #$FFFF

preset_gtmax_maridia_predraygon_maridia_tube_revisit:
    dw #preset_gtmax_upper_norfair_and_kraid_kraid_kihunters_final ; Upper Norfair and Kraid: Kraid Kihunters Final
    dw $078D, $923A  ; DDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $00B4  ; Missiles
    dw $09C8, $00B4  ; Max missiles
    dw $09CA, $0008  ; Supers
    dw $09CE, $0022  ; Pbs
    dw $09D6, $0142  ; Reserves
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $1904  ; Items
    dw #$FFFF

preset_gtmax_maridia_predraygon_fish_tank:
    dw #preset_gtmax_maridia_predraygon_maridia_tube_revisit ; Maridia Pre-Draygon: Maridia Tube Revisit
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $EFFF  ; Screen subpixel X position
    dw $0911, $00F9  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $05ED  ; Screen Y position in pixels
    dw $0917, $00BA  ; Layer 2 X position
    dw $0919, $0471  ; Layer 2 Y position
    dw $09CA, $0007  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0165  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw #$FFFF

preset_gtmax_maridia_predraygon_tatori_room:
    dw #preset_gtmax_maridia_predraygon_fish_tank ; Maridia Pre-Draygon: Fish Tank
    dw $078D, $A3B4  ; DDB
    dw $079B, $D017  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $020D  ; Screen Y position in pixels
    dw $09D2, $0002  ; Currently selected item
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0189  ; Layer 2 Y position
    dw $0AF6, $01E3  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtmax_maridia_predraygon_mt_everest_and_crab_supers:
    dw #preset_gtmax_maridia_predraygon_tatori_room ; Maridia Pre-Draygon: Tatori Room
    dw $078D, $A408  ; DDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0025  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $001B  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0514  ; Health
    dw $09C4, $0514  ; Max health
    dw $09C6, $00B9  ; Missiles
    dw $09C8, $00B9  ; Max missiles
    dw $09CA, $0006  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00C5  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D880, $0C00  ; Items
    dw $D8C0, $4000  ; Doors
    dw #$FFFF

preset_gtmax_maridia_predraygon_crab_shaft:
    dw #preset_gtmax_maridia_predraygon_mt_everest_and_crab_supers ; Maridia Pre-Draygon: Mt Everest and Crab Supers
    dw $078D, $A3CC  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $09CA, $000B  ; Supers
    dw $09CC, $001E  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $05AD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $0E00  ; Items
    dw #$FFFF

preset_gtmax_maridia_predraygon_path_to_watering_hole:
    dw #preset_gtmax_maridia_predraygon_crab_shaft ; Maridia Pre-Draygon: Crab Shaft
    dw $078D, $A4BC  ; DDB
    dw $079B, $D1DD  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0915, $00FF  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00FF  ; Layer 2 Y position
    dw $09C6, $00BE  ; Missiles
    dw $09C8, $00BE  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0069  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D880, $4E00  ; Items
    dw #$FFFF

preset_gtmax_maridia_predraygon_beach_exit:
    dw #preset_gtmax_maridia_predraygon_path_to_watering_hole ; Maridia Pre-Draygon: Path to Watering Hole
    dw $078D, $A498  ; DDB
    dw $079B, $D13B  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0011  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $0003  ; Screen Y position in pixels
    dw $0917, $000C  ; Layer 2 X position
    dw $0919, $0003  ; Layer 2 Y position
    dw $09C6, $00C3  ; Missiles
    dw $09C8, $00C3  ; Max missiles
    dw $09CA, $0010  ; Supers
    dw $09CC, $0023  ; Max supers
    dw $09D6, $0147  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00AC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $7E00  ; Items
    dw #$FFFF

preset_gtmax_maridia_predraygon_crab_shaft_revisit:
    dw #preset_gtmax_maridia_predraygon_beach_exit ; Maridia Pre-Draygon: Beach Exit
    dw $078D, $A4A4  ; DDB
    dw $079B, $D1DD  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0028  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $001E  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00A8  ; Samus X
    dw $0AFA, $02B3  ; Samus Y
    dw #$FFFF

preset_gtmax_maridia_predraygon_botwoon_hallway:
    dw #preset_gtmax_maridia_predraygon_crab_shaft_revisit ; Maridia Pre-Draygon: Crab Shaft Revisit
    dw $078D, $A4C8  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $1001  ; Screen subpixel X position
    dw $0911, $00B7  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0004  ; Screen Y position in pixels
    dw $0917, $0089  ; Layer 2 X position
    dw $0919, $0004  ; Layer 2 Y position
    dw $09CA, $000F  ; Supers
    dw $09CE, $0021  ; Pbs
    dw $0AF6, $0121  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D8C0, $C000  ; Doors
    dw #$FFFF

preset_gtmax_maridia_predraygon_botwoon:
    dw #preset_gtmax_maridia_predraygon_botwoon_hallway ; Maridia Pre-Draygon: Botwoon Hallway
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $090F, $BFFF  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03A4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_maridia_predraygon_halfie_setup:
    dw #preset_gtmax_maridia_predraygon_botwoon ; Maridia Pre-Draygon: Botwoon
    dw $078D, $A918  ; DDB
    dw $079B, $D7E4  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $001F  ; Layer 2 Y position
    dw $09CA, $0011  ; Supers
    dw $09CE, $0023  ; Pbs
    dw $09D6, $0190  ; Reserves
    dw $0AF6, $0079  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D82C, $0002  ; Bosses
    dw #$FFFF

preset_gtmax_maridia_predraygon_precious_room:
    dw #preset_gtmax_maridia_predraygon_halfie_setup ; Maridia Pre-Draygon: Halfie Setup
    dw $078D, $A8E8  ; DDB
    dw $079B, $D72A  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $051C  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $051C  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $04AD  ; Health
    dw $09D2, $0002  ; Currently selected item
    dw $0A1C, $00C9  ; Samus position/state
    dw $0A1E, $1B08  ; More position/state
    dw $0A68, $000E  ; Flash suit
    dw $0AF6, $057C  ; Samus X
    dw $0AFA, $0066  ; Samus Y
    dw #$FFFF

preset_gtmax_maridia_predraygon_draygon:
    dw #preset_gtmax_maridia_predraygon_precious_room ; Maridia Pre-Draygon: Precious Room
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $04A9  ; Health
    dw $09C6, $00C8  ; Missiles
    dw $09C8, $00C8  ; Max missiles
    dw $09CA, $000F  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $0060  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D882, $0080  ; Items
    dw $D8C2, $0C00  ; Doors
    dw #$FFFF

preset_gtmax_maridia_postdraygon_reverse_halfie:
    dw #preset_gtmax_maridia_predraygon_draygon ; Maridia Pre-Draygon: Draygon
    dw $078D, $A96C  ; DDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0001  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $049C  ; Health
    dw $09C6, $00BF  ; Missiles
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $0044  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82C, $0003  ; Bosses
    dw $D8C2, $4C00  ; Doors
    dw #$FFFF

preset_gtmax_maridia_postdraygon_womple_jump:
    dw #preset_gtmax_maridia_postdraygon_reverse_halfie ; Maridia Post-Draygon: Reverse Halfie
    dw $0A68, $0000  ; Flash suit
    dw #$FFFF

preset_gtmax_maridia_postdraygon_reverse_botwoon_etank:
    dw #preset_gtmax_maridia_postdraygon_womple_jump ; Maridia Post-Draygon: Womple Jump
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0200  ; Layer 2 Y position
    dw $09C2, $042A  ; Health
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $00AC  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_gtmax_maridia_postdraygon_aqueduct_ammo:
    dw #preset_gtmax_maridia_postdraygon_reverse_botwoon_etank ; Maridia Post-Draygon: Reverse Botwoon E-Tank
    dw $078D, $A8AC  ; DDB
    dw $079B, $D6FD  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0117  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0117  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0573  ; Health
    dw $09C4, $0578  ; Max health
    dw $0A1C, $00A5  ; Samus position/state
    dw $0AF6, $0189  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D882, $0180  ; Items
    dw #$FFFF

preset_gtmax_maridia_postdraygon_right_sandpit:
    dw #preset_gtmax_maridia_postdraygon_aqueduct_ammo ; Maridia Post-Draygon: Aqueduct Ammo
    dw $078D, $A7D4  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $090F, $3FFF  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $09C6, $00C4  ; Missiles
    dw $09C8, $00CD  ; Max missiles
    dw $09CA, $0014  ; Supers
    dw $09CC, $0028  ; Max supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0AF6, $05A5  ; Samus X
    dw $0AFA, $02CB  ; Samus Y
    dw $D882, $01B0  ; Items
    dw #$FFFF

preset_gtmax_maridia_postdraygon_oasis_and_sewer:
    dw #preset_gtmax_maridia_postdraygon_right_sandpit ; Maridia Post-Draygon: Right Sandpit
    dw $078D, $A6CC  ; DDB
    dw $079B, $D4C2  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $09C6, $00C9  ; Missiles
    dw $09C8, $00D2  ; Max missiles
    dw $09CE, $0028  ; Pbs
    dw $09D0, $0028  ; Max pbs
    dw $0AF6, $0053  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D882, $01BC  ; Items
    dw #$FFFF

preset_gtmax_maridia_postdraygon_maridia_ggg:
    dw #preset_gtmax_maridia_postdraygon_oasis_and_sewer ; Maridia Post-Draygon: Oasis and Sewer
    dw $078D, $A660  ; DDB
    dw $079B, $D461  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $004E  ; Samus X
    dw #$FFFF

preset_gtmax_maridia_postdraygon_left_sandpit:
    dw #preset_gtmax_maridia_postdraygon_maridia_ggg ; Maridia Post-Draygon: Maridia GGG
    dw $078D, $A4C8  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $09C2, $0578  ; Health
    dw $09CA, $0013  ; Supers
    dw $09CE, $0027  ; Pbs
    dw $0AF6, $05A5  ; Samus X
    dw $0AFA, $02CB  ; Samus Y
    dw #$FFFF

preset_gtmax_maridia_postdraygon_maridia_ggg_revisit:
    dw #preset_gtmax_maridia_postdraygon_left_sandpit ; Maridia Post-Draygon: Left Sandpit
    dw $078D, $A6B4  ; DDB
    dw $079B, $D461  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0101  ; Layer 2 Y position
    dw $09C2, $055D  ; Health
    dw $09C6, $00CE  ; Missiles
    dw $09C8, $00D7  ; Max missiles
    dw $09D4, $01F4  ; Max reserves
    dw $0AF6, $0043  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D882, $01BF  ; Items
    dw #$FFFF

preset_gtmax_maridia_postdraygon_mt_everest_exit:
    dw #preset_gtmax_maridia_postdraygon_maridia_ggg_revisit ; Maridia Post-Draygon: Maridia GGG Revisit
    dw $078D, $A414  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $009F  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0038  ; Screen Y position in pixels
    dw $0917, $0077  ; Layer 2 X position
    dw $0919, $002A  ; Layer 2 Y position
    dw $09C2, $0527  ; Health
    dw $09C6, $00D3  ; Missiles
    dw $09C8, $00DC  ; Max missiles
    dw $09CA, $0012  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0104  ; Samus X
    dw $0AFA, $00A7  ; Samus Y
    dw $D880, $7F00  ; Items
    dw #$FFFF

preset_gtmax_maridia_postdraygon_red_brinstar_green_gate:
    dw #preset_gtmax_maridia_postdraygon_mt_everest_exit ; Maridia Post-Draygon: Mt Everest Exit
    dw $078D, $A42C  ; DDB
    dw $079B, $D104  ; MDB
    dw $090F, $0001  ; Screen subpixel X position
    dw $0911, $0005  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0005  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $007D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_maridia_postdraygon_leaving_alpha_power_bombs:
    dw #preset_gtmax_maridia_postdraygon_red_brinstar_green_gate ; Maridia Post-Draygon: Red Brinstar Green Gate
    dw $078D, $9096  ; DDB
    dw $079B, $A3AE  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C6, $00D8  ; Missiles
    dw $09C8, $00E1  ; Max missiles
    dw $09CA, $0011  ; Supers
    dw $09CE, $0026  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0036  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D874, $1B04  ; Items
    dw #$FFFF

preset_gtmax_maridia_postdraygon_beta_power_bombs:
    dw #preset_gtmax_maridia_postdraygon_leaving_alpha_power_bombs ; Maridia Post-Draygon: Leaving Alpha Power Bombs
    dw $078D, $90EA  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $02FB  ; Screen Y position in pixels
    dw $0919, $02FB  ; Layer 2 Y position
    dw $09CA, $0010  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $005D  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D8B6, $3808  ; Doors
    dw #$FFFF

preset_gtmax_wrecked_ship_crateria_kihunters:
    dw #preset_gtmax_maridia_postdraygon_beta_power_bombs ; Maridia Post-Draygon: Beta Power Bombs
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0523  ; Health
    dw $09CA, $0011  ; Supers
    dw $09CE, $0029  ; Pbs
    dw $09D0, $002D  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $0091  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw $D874, $1B84  ; Items
    dw $D8B2, $2C01  ; Doors
    dw $D8B6, $7808  ; Doors
    dw #$FFFF

preset_gtmax_wrecked_ship_moat:
    dw #preset_gtmax_wrecked_ship_crateria_kihunters ; Wrecked Ship: Crateria Kihunters
    dw $078D, $8AF6  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $09C6, $00DA  ; Missiles
    dw $09CE, $0028  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02AD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B0, $2000  ; Doors
    dw #$FFFF

preset_gtmax_wrecked_ship_ocean:
    dw #preset_gtmax_wrecked_ship_moat ; Wrecked Ship: Moat
    dw $078D, $8A36  ; DDB
    dw $079B, $95FF  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2400  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C6, $00DF  ; Missiles
    dw $09C8, $00E6  ; Max missiles
    dw $0AF6, $01A9  ; Samus X
    dw $D870, $0090  ; Items
    dw #$FFFF

preset_gtmax_wrecked_ship_enter_wrecked_ship:
    dw #preset_gtmax_wrecked_ship_ocean ; Wrecked Ship: Ocean
    dw $078D, $8AEA  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $040B  ; Screen Y position in pixels
    dw $0917, $0380  ; Layer 2 X position
    dw $09CA, $0010  ; Supers
    dw $0AF6, $0791  ; Samus X
    dw $0AFA, $049B  ; Samus Y
    dw $D8B0, $3000  ; Doors
    dw #$FFFF

preset_gtmax_wrecked_ship_basement:
    dw #preset_gtmax_wrecked_ship_enter_wrecked_ship ; Wrecked Ship: Enter Wrecked Ship
    dw $078D, $A294  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $071F  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0557  ; Layer 2 Y position
    dw $09C6, $00E4  ; Missiles
    dw $09C8, $00EB  ; Max missiles
    dw $09CA, $000F  ; Supers
    dw $09CE, $0027  ; Pbs
    dw $0AF6, $0455  ; Samus X
    dw $0AFA, $07BB  ; Samus Y
    dw $D880, $7F01  ; Items
    dw $D8C0, $C010  ; Doors
    dw #$FFFF

preset_gtmax_wrecked_ship_phantoon:
    dw #preset_gtmax_wrecked_ship_basement ; Wrecked Ship: Basement
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $090F, $2FFF  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $000E  ; Supers
    dw $0AF6, $04CD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $C030  ; Doors
    dw #$FFFF

preset_gtmax_wrecked_ship_shaft_to_supers:
    dw #preset_gtmax_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dw $078D, $A2C4  ; DDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0218  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0917, $0192  ; Layer 2 X position
    dw $09C2, $0519  ; Health
    dw $09C6, $00E3  ; Missiles
    dw $09CA, $0014  ; Supers
    dw $09CE, $0028  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $02B8  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D82A, $0107  ; Bosses
    dw $D8C0, $C070  ; Doors
    dw #$FFFF

preset_gtmax_wrecked_ship_east_supers:
    dw #preset_gtmax_wrecked_ship_shaft_to_supers ; Wrecked Ship: Shaft to Supers
    dw $078D, $A294  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $EFFF  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $5FFF  ; Screen subpixel Y position
    dw $0915, $0600  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0480  ; Layer 2 Y position
    dw $09CE, $0027  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $05B7  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D8C0, $C074  ; Doors
    dw #$FFFF

preset_gtmax_wrecked_ship_west_supers:
    dw #preset_gtmax_wrecked_ship_east_supers ; Wrecked Ship: East Supers
    dw $078D, $A234  ; DDB
    dw $079B, $CDF1  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0019  ; Supers
    dw $09CC, $002D  ; Max supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0065  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $7F41  ; Items
    dw #$FFFF

preset_gtmax_wrecked_ship_sponge_bath:
    dw #preset_gtmax_wrecked_ship_west_supers ; Wrecked Ship: West Supers
    dw $078D, $A2E8  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $A401  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $9800  ; Screen subpixel Y position
    dw $0915, $0462  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0349  ; Layer 2 Y position
    dw $09C2, $0512  ; Health
    dw $09C6, $00E2  ; Missiles
    dw $09CA, $001E  ; Supers
    dw $09CC, $0032  ; Max supers
    dw $09CE, $0026  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $042F  ; Samus X
    dw $0AFA, $04EB  ; Samus Y
    dw $D880, $7F61  ; Items
    dw #$FFFF

preset_gtmax_wrecked_ship_leaving_ws_etank:
    dw #preset_gtmax_wrecked_ship_sponge_bath ; Wrecked Ship: Sponge Bath
    dw $078D, $A27C  ; DDB
    dw $079B, $CC27  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $05DC  ; Health
    dw $09C4, $05DC  ; Max health
    dw $09CA, $001D  ; Supers
    dw $0AF6, $004F  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $7F71  ; Items
    dw $D8C0, $C87C  ; Doors
    dw #$FFFF

preset_gtmax_wrecked_ship_reverse_spiky_room:
    dw #preset_gtmax_wrecked_ship_leaving_ws_etank ; Wrecked Ship: Leaving WS E-Tank
    dw $078D, $A288  ; DDB
    dw $079B, $CBD5  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $4FFF  ; Screen subpixel X position
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0216  ; Screen Y position in pixels
    dw $0919, $0190  ; Layer 2 Y position
    dw $09C2, $05D5  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw #$FFFF

preset_gtmax_wrecked_ship_shaft_to_attic:
    dw #preset_gtmax_wrecked_ship_reverse_spiky_room ; Wrecked Ship: Reverse Spiky Room
    dw $078D, $A24C  ; DDB
    dw $079B, $CD5C  ; MDB
    dw $090F, $1FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0BFF  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $05B7  ; Health
    dw $09CE, $0027  ; Pbs
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_wrecked_ship_attic:
    dw #preset_gtmax_wrecked_ship_shaft_to_attic ; Wrecked Ship: Shaft to Attic
    dw $078D, $A2D0  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $BC00  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0004  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0003  ; Layer 2 Y position
    dw $0AF6, $04C4  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_gtmax_wrecked_ship_antispeedrun_robots:
    dw #preset_gtmax_wrecked_ship_attic ; Wrecked Ship: Attic
    dw $078D, $A228  ; DDB
    dw $079B, $CA52  ; MDB
    dw $090F, $F800  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $0FFD  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $001E  ; Layer 2 Y position
    dw $09C2, $05B5  ; Health
    dw $09C6, $00E1  ; Missiles
    dw $09CA, $001C  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $068F  ; Samus X
    dw $0AFA, $00AC  ; Samus Y
    dw $D8C0, $CA7C  ; Doors
    dw #$FFFF

preset_gtmax_wrecked_ship_attic_revisit:
    dw #preset_gtmax_wrecked_ship_antispeedrun_robots ; Wrecked Ship: Anti-Speedrun Robots
    dw $078D, $A1D4  ; DDB
    dw $079B, $CAAE  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0029  ; Screen X position in pixels
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $001E  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $05A0  ; Health
    dw $09C6, $00D9  ; Missiles
    dw $09C8, $00F0  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00AB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $7F79  ; Items
    dw #$FFFF

preset_gtmax_wrecked_ship_pancake_room:
    dw #preset_gtmax_wrecked_ship_attic_revisit ; Wrecked Ship: Attic Revisit
    dw $078D, $A1E0  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $01FC  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $09C6, $00E3  ; Missiles
    dw $09C8, $00FA  ; Max missiles
    dw $09CA, $001B  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02BD  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D870, $009C  ; Items
    dw $D8C0, $CB7C  ; Doors
    dw #$FFFF

preset_gtmax_wrecked_ship_bowling_spark:
    dw #preset_gtmax_wrecked_ship_pancake_room ; Wrecked Ship: Pancake Room
    dw $078D, $89E2  ; DDB
    dw $079B, $9461  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C6, $00E5  ; Missiles
    dw $0AF6, $0164  ; Samus X
    dw $0AFA, $00A7  ; Samus Y
    dw #$FFFF

preset_gtmax_wrecked_ship_ocean_revisit:
    dw #preset_gtmax_wrecked_ship_bowling_spark ; Wrecked Ship: Bowling Spark
    dw $078D, $A1A4  ; DDB
    dw $079B, $CE40  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09C2, $0522  ; Health
    dw $09C6, $00E4  ; Missiles
    dw $09C8, $00FF  ; Max missiles
    dw $09CE, $0026  ; Pbs
    dw $09D4, $0258  ; Max reserves
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0078  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $D880, $7FFF  ; Items
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_crateria_power_bombs:
    dw #preset_gtmax_wrecked_ship_ocean_revisit ; Wrecked Ship: Ocean Revisit
    dw $078D, $8AC6  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $9C00  ; Screen subpixel X position
    dw $0911, $079A  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $00E2  ; Screen Y position in pixels
    dw $0917, $03CD  ; Layer 2 X position
    dw $09C2, $04E1  ; Health
    dw $09C6, $00E9  ; Missiles
    dw $09C8, $0109  ; Max missiles
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0079  ; Samus position/state
    dw $0A1E, $1108  ; More position/state
    dw $0AF6, $0803  ; Samus X
    dw $0AFA, $0159  ; Samus Y
    dw $D870, $009E  ; Items
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_landing_site_revisit:
    dw #preset_gtmax_brinstar_cleanup_1_crateria_power_bombs ; Brinstar Cleanup 1: Crateria Power Bombs
    dw $078D, $893A  ; DDB
    dw $079B, $93AA  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $04A3  ; Health
    dw $09CE, $002C  ; Pbs
    dw $09D0, $0032  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0054  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D870, $009D  ; Items
    dw $D8B0, $3002  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_gauntlet_etank:
    dw #preset_gtmax_brinstar_cleanup_1_landing_site_revisit ; Brinstar Cleanup 1: Landing Site Revisit
    dw $078D, $892E  ; DDB
    dw $079B, $92B3  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $5000  ; Screen subpixel Y position
    dw $09C2, $041C  ; Health
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0081  ; Samus X
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_crumble_blocks:
    dw #preset_gtmax_brinstar_cleanup_1_gauntlet_etank ; Brinstar Cleanup 1: Gauntlet E-Tank
    dw $078D, $8952  ; DDB
    dw $079B, $965B  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $09C2, $0632  ; Health
    dw $09C4, $0640  ; Max health
    dw $0AF6, $0044  ; Samus X
    dw $D870, $00BD  ; Items
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_kago_mushroom_room:
    dw #preset_gtmax_brinstar_cleanup_1_crumble_blocks ; Brinstar Cleanup 1: Crumble Blocks
    dw $078D, $8B1A  ; DDB
    dw $079B, $99BD  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $0600  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0480  ; Layer 2 Y position
    dw $09C2, $0640  ; Health
    dw $09C6, $00F0  ; Missiles
    dw $09C8, $0113  ; Max missiles
    dw $09D6, $0196  ; Reserves
    dw $0AF6, $00B5  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D870, $06BD  ; Items
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_green_brinstar_revisit:
    dw #preset_gtmax_brinstar_cleanup_1_kago_mushroom_room ; Brinstar Cleanup 1: Kago Mushroom Room
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $007D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_brinstar_reserve_tank:
    dw #preset_gtmax_brinstar_cleanup_1_green_brinstar_revisit ; Brinstar Cleanup 1: Green Brinstar Revisit
    dw $078D, $8CD6  ; DDB
    dw $079B, $9BC8  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4FFF  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09CA, $001A  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B4, $0246  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_reverse_mockball:
    dw #preset_gtmax_brinstar_cleanup_1_brinstar_reserve_tank ; Brinstar Cleanup 1: Brinstar Reserve Tank
    dw $078D, $8D5A  ; DDB
    dw $079B, $9C07  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $00FA  ; Missiles
    dw $09C8, $0118  ; Max missiles
    dw $09CE, $002B  ; Pbs
    dw $09D4, $02BC  ; Max reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0044  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D872, $040F  ; Items
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_green_shaft_descent:
    dw #preset_gtmax_brinstar_cleanup_1_reverse_mockball ; Brinstar Cleanup 1: Reverse Mockball
    dw $078D, $8D66  ; DDB
    dw $079B, $9BC8  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $002F  ; Screen X position in pixels
    dw $0913, $FC02  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0023  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C6, $00FF  ; Missiles
    dw $09C8, $011D  ; Max missiles
    dw $0AF6, $00CF  ; Samus X
    dw $0AFA, $015B  ; Samus Y
    dw $D870, $86BD  ; Items
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_green_brinstar_beetoms:
    dw #preset_gtmax_brinstar_cleanup_1_green_shaft_descent ; Brinstar Cleanup 1: Green Shaft Descent
    dw $078D, $8D4E  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0A1F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0797  ; Layer 2 Y position
    dw $09CE, $002A  ; Pbs
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $0A8B  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_etecoon_etank_room:
    dw #preset_gtmax_brinstar_cleanup_1_green_brinstar_beetoms ; Brinstar Cleanup 1: Green Brinstar Beetoms
    dw $078D, $8F3A  ; DDB
    dw $079B, $A051  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $EBFF  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $001E  ; Supers
    dw $09CC, $0037  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0087  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D872, $840F  ; Items
    dw $D8B6, $7818  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_etecoon_room:
    dw #preset_gtmax_brinstar_cleanup_1_etecoon_etank_room ; Brinstar Cleanup 1: Etecoon E-Tank Room
    dw $078D, $8F5E  ; DDB
    dw $079B, $A011  ; MDB
    dw $090F, $BFFF  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $0687  ; Health
    dw $09C4, $06A4  ; Max health
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $04DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D872, $C40F  ; Items
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_green_shaft_final:
    dw #preset_gtmax_brinstar_cleanup_1_etecoon_room ; Brinstar Cleanup 1: Etecoon Room
    dw $078D, $8F46  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $01B9  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $074D  ; Screen Y position in pixels
    dw $0917, $01B9  ; Layer 2 X position
    dw $0919, $0579  ; Layer 2 Y position
    dw $09CE, $002F  ; Pbs
    dw $09D0, $0037  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0259  ; Samus X
    dw $0AFA, $07BB  ; Samus Y
    dw $D870, $A6BD  ; Items
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_dachora_room_revisit:
    dw #preset_gtmax_brinstar_cleanup_1_green_shaft_final ; Brinstar Cleanup 1: Green Shaft Final
    dw $078D, $8D06  ; DDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $0604  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0483  ; Layer 2 Y position
    dw $09CE, $002E  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B2  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_big_pink_revisit:
    dw #preset_gtmax_brinstar_cleanup_1_dachora_room_revisit ; Brinstar Cleanup 1: Dachora Room Revisit
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $090F, $9C00  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0685  ; Health
    dw $09C6, $00FE  ; Missiles
    dw $0AF6, $06B0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_mission_impossible:
    dw #preset_gtmax_brinstar_cleanup_1_big_pink_revisit ; Brinstar Cleanup 1: Big Pink Revisit
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $031C  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0255  ; Layer 2 Y position
    dw $09C2, $0680  ; Health
    dw $09C6, $0103  ; Missiles
    dw $09C8, $0122  ; Max missiles
    dw $09CE, $002D  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0224  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D872, $C42F  ; Items
    dw $D8B4, $0346  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_leaving_pink_etank:
    dw #preset_gtmax_brinstar_cleanup_1_mission_impossible ; Brinstar Cleanup 1: Mission Impossible
    dw $078D, $8FBE  ; DDB
    dw $079B, $A15B  ; MDB
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0708  ; Health
    dw $09C4, $0708  ; Max health
    dw $09CA, $001D  ; Supers
    dw $09CE, $0032  ; Pbs
    dw $09D0, $003C  ; Max pbs
    dw $0AF6, $00AB  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D872, $C52F  ; Items
    dw $D874, $1B8C  ; Items
    dw $D8B4, $8346  ; Doors
    dw $D8B6, $78D8  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_leaving_spore_spawn_supers:
    dw #preset_gtmax_brinstar_cleanup_1_leaving_pink_etank ; Brinstar Cleanup 1: Leaving Pink E-Tank
    dw $078D, $8F76  ; DDB
    dw $079B, $9B5B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0915, $0800  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0600  ; Layer 2 Y position
    dw $09C2, $06F1  ; Health
    dw $09C6, $0105  ; Missiles
    dw $09CA, $0020  ; Supers
    dw $09CC, $003C  ; Max supers
    dw $09CE, $0031  ; Pbs
    dw $0AF6, $019B  ; Samus X
    dw $0AFA, $088B  ; Samus Y
    dw $D870, $E6BD  ; Items
    dw $D8B6, $78F8  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_cleanup_1_waterway_etank:
    dw #preset_gtmax_brinstar_cleanup_1_leaving_spore_spawn_supers ; Brinstar Cleanup 1: Leaving Spore Spawn Supers
    dw $078D, $8F82  ; DDB
    dw $079B, $9D19  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $1FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $091F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $06D7  ; Layer 2 Y position
    dw $09C6, $010C  ; Missiles
    dw $09C8, $0127  ; Max missiles
    dw $09CA, $001E  ; Supers
    dw $09CE, $002E  ; Pbs
    dw $0AF6, $0065  ; Samus X
    dw $0AFA, $098B  ; Samus Y
    dw $D872, $C56F  ; Items
    dw $D8B4, $8B46  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_cleanup_2_green_hills_revisit:
    dw #preset_gtmax_brinstar_cleanup_1_waterway_etank ; Brinstar Cleanup 1: Waterway E-Tank
    dw $078D, $8F8E  ; DDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $02E0  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $061D  ; Screen Y position in pixels
    dw $0917, $0228  ; Layer 2 X position
    dw $0919, $0495  ; Layer 2 Y position
    dw $09C2, $076C  ; Health
    dw $09C4, $076C  ; Max health
    dw $09CE, $002F  ; Pbs
    dw $09D6, $01AF  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0340  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D874, $1B8E  ; Items
    dw #$FFFF

preset_gtmax_brinstar_cleanup_2_blue_brinstar_hoppers:
    dw #preset_gtmax_brinstar_cleanup_2_green_hills_revisit ; Brinstar Cleanup 2: Green Hills Revisit
    dw $078D, $8DEA  ; DDB
    dw $079B, $9E52  ; MDB
    dw $0911, $00E5  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $00AB  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09C6, $0111  ; Missiles
    dw $09C8, $012C  ; Max missiles
    dw $09CE, $002E  ; Pbs
    dw $09D6, $01B4  ; Reserves
    dw $0AF6, $0145  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D872, $C76F  ; Items
    dw $D8B6, $78F9  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_cleanup_2_billy_mays:
    dw #preset_gtmax_brinstar_cleanup_2_blue_brinstar_hoppers ; Brinstar Cleanup 2: Blue Brinstar Hoppers
    dw $078D, $8ECE  ; DDB
    dw $079B, $9F64  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $09C2, $07D0  ; Health
    dw $09C4, $07D0  ; Max health
    dw $09CA, $001D  ; Supers
    dw $09CE, $0030  ; Pbs
    dw $09D0, $0041  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0258  ; Samus X
    dw $D872, $EF6F  ; Items
    dw $D8B6, $78FD  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_cleanup_2_leaving_blue_brinstar:
    dw #preset_gtmax_brinstar_cleanup_2_billy_mays ; Brinstar Cleanup 2: Billy Mays
    dw $078D, $8FE2  ; DDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $019E  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0136  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $07B9  ; Health
    dw $09C6, $0120  ; Missiles
    dw $09C8, $013B  ; Max missiles
    dw $0AF6, $0229  ; Samus X
    dw $0AFA, $02BB  ; Samus Y
    dw $D872, $FF6F  ; Items
    dw $D874, $1BBE  ; Items
    dw #$FFFF

preset_gtmax_brinstar_cleanup_2_pit_room_final_spark:
    dw #preset_gtmax_brinstar_cleanup_2_leaving_blue_brinstar ; Brinstar Cleanup 2: Leaving Blue Brinstar
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $07B8  ; Health
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0A68, $0068  ; Flash suit
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_cleanup_2_climb_supers:
    dw #preset_gtmax_brinstar_cleanup_2_pit_room_final_spark ; Brinstar Cleanup 2: Pit Room Final (Spark)
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0400  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0700  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0540  ; Layer 2 Y position
    dw $09C2, $078E  ; Health
    dw $09C6, $0125  ; Missiles
    dw $09C8, $0140  ; Max missiles
    dw $09CE, $002F  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $02BD  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D870, $E6FD  ; Items
    dw $D8B2, $2C09  ; Doors
    dw #$FFFF

preset_gtmax_brinstar_cleanup_2_to_final_missiles:
    dw #preset_gtmax_brinstar_cleanup_2_climb_supers ; Brinstar Cleanup 2: Climb Supers
    dw $078D, $8C6A  ; DDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $7803  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $06F0  ; Health
    dw $09CA, $0022  ; Supers
    dw $09CC, $0041  ; Max supers
    dw $09CE, $002E  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01D6  ; Samus X
    dw $0AFA, $004B  ; Samus Y
    dw $D870, $EEFD  ; Items
    dw #$FFFF

preset_gtmax_brinstar_cleanup_2_parlor_missiles:
    dw #preset_gtmax_brinstar_cleanup_2_to_final_missiles ; Brinstar Cleanup 2: To Final Missiles
    dw $078D, $89A6  ; DDB
    dw $079B, $9A44  ; MDB
    dw $090F, $E001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3C00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CE, $002D  ; Pbs
    dw $0AF6, $004B  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_brinstar_cleanup_2_parlor_again:
    dw #preset_gtmax_brinstar_cleanup_2_parlor_missiles ; Brinstar Cleanup 2: Parlor Missiles
    dw $078D, $8C9A  ; DDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6401  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C6, $012A  ; Missiles
    dw $09C8, $0145  ; Max missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01B9  ; Samus X
    dw $D870, $FEFD  ; Items
    dw #$FFFF

preset_gtmax_brinstar_cleanup_2_terminator_etank:
    dw #preset_gtmax_brinstar_cleanup_2_parlor_again ; Brinstar Cleanup 2: Parlor Again
    dw $078D, $8C8E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $016C  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF

preset_gtmax_tourian_tourian_elevator_room:
    dw #preset_gtmax_brinstar_cleanup_2_terminator_etank ; Brinstar Cleanup 2: Terminator E-tank
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $01AA  ; Layer 2 Y position
    dw $09C2, $0834  ; Health
    dw $09C4, $0834  ; Max health
    dw $09CA, $0021  ; Supers
    dw $09D6, $01D2  ; Reserves
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw $D820, $1FC1  ; Events
    dw $D870, $FFFD  ; Items
    dw $D8B2, $6C09  ; Doors
    dw $D90C, $0100  ; Map Stations
    dw #$FFFF

preset_gtmax_tourian_metroids_1:
    dw #preset_gtmax_tourian_tourian_elevator_room ; Tourian: Tourian Elevator Room
    dw $090F, $4FFF  ; Screen subpixel X position
    dw $0913, $43FF  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_gtmax_tourian_metroids_2:
    dw #preset_gtmax_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0058  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0042  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0821  ; Health
    dw $09C6, $0132  ; Missiles
    dw $09CA, $001E  ; Supers
    dw $09D6, $0204  ; Reserves
    dw $0AF6, $00F8  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D822, $0001  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF

preset_gtmax_tourian_metroids_3:
    dw #preset_gtmax_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0107  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C5  ; Layer 2 Y position
    dw $09C2, $0834  ; Health
    dw $09CA, $001D  ; Supers
    dw $09D6, $0223  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C4  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0003  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF

preset_gtmax_tourian_metroids_4:
    dw #preset_gtmax_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $9800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0140  ; Missiles
    dw $09CA, $001C  ; Supers
    dw $09CE, $0030  ; Pbs
    dw $09D6, $024A  ; Reserves
    dw $0AF6, $05A3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0007  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF

preset_gtmax_tourian_giant_hoppers:
    dw #preset_gtmax_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $A9E4  ; DDB
    dw $079B, $DBCD  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $09CA, $001B  ; Supers
    dw $09CE, $0032  ; Pbs
    dw $09D6, $02A4  ; Reserves
    dw $0AF6, $0061  ; Samus X
    dw $0AFA, $01CB  ; Samus Y
    dw $D822, $000F  ; Events
    dw $D8C4, $000F  ; Doors
    dw #$FFFF

preset_gtmax_tourian_baby_skip:
    dw #preset_gtmax_tourian_giant_hoppers ; Tourian: Giant Hoppers
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF

preset_gtmax_tourian_gadora_room:
    dw #preset_gtmax_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AA44  ; DDB
    dw $079B, $DCFF  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0117  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D1  ; Layer 2 Y position
    dw $09CA, $001A  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DC  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C4, $00AF  ; Doors
    dw #$FFFF

preset_gtmax_tourian_zeb_skip:
    dw #preset_gtmax_tourian_gadora_room ; Tourian: Gadora Room
    dw $078D, $AAA4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021A  ; Screen Y position in pixels
    dw $0919, $0193  ; Layer 2 Y position
    dw $09CA, $0018  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0041  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF

preset_gtmax_tourian_mother_brain_2:
    dw #preset_gtmax_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAC8  ; DDB
    dw $079B, $DD58  ; MDB
    dw $07F3, $0021  ; Music Bank
    dw $07F5, $0000  ; Music Track
    dw $090F, $79FF  ; Screen subpixel X position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $05C0  ; Health
    dw $09C6, $0137  ; Missiles
    dw $09CA, $000C  ; Supers
    dw $0AF6, $00CF  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D820, $1FCD  ; Events
    dw #$FFFF

preset_gtmax_tourian_zebes_escape:
    dw #preset_gtmax_tourian_mother_brain_2 ; Tourian: Mother Brain 2
    dw $09A6, $1009  ; Beams
    dw $09C2, $05DB  ; Health
    dw $09C6, $00EA  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $09CE, $0000  ; Pbs
    dw $09D6, $02BC  ; Reserves
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0A76, $8000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $009E  ; Samus Y
    dw $D820, $5FCD  ; Events
    dw $D82C, $0203  ; Bosses
    dw #$FFFF

preset_gtmax_tourian_escape_room_3:
    dw #preset_gtmax_tourian_zebes_escape ; Tourian: Zebes Escape
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00E0  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_gtmax_tourian_escape_room_4:
    dw #preset_gtmax_tourian_escape_room_3 ; Tourian: Escape Room 3
    dw $078D, $AB04  ; DDB
    dw $079B, $DEA7  ; MDB
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001A  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0013  ; Layer 2 Y position
    dw $0AF6, $05DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_gtmax_tourian_escape_climb:
    dw #preset_gtmax_tourian_escape_room_4 ; Tourian: Escape Room 4
    dw $078D, $AB1C  ; DDB
    dw $079B, $DEDE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00F2  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $00F3  ; Screen Y position in pixels
    dw $0917, $00B5  ; Layer 2 X position
    dw $0919, $00B6  ; Layer 2 Y position
    dw $0AF6, $0152  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_gtmax_tourian_escape_parlor:
    dw #preset_gtmax_tourian_escape_climb ; Tourian: Escape Climb
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $7FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6801  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $07A1  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01DA  ; Samus X
    dw $0AFA, $004B  ; Samus Y
    dw #$FFFF
