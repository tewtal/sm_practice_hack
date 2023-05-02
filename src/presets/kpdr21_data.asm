
preset_kpdr21_crateria_ceres_elevator:
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

preset_kpdr21_crateria_ceres_escape:
    dw #preset_kpdr21_crateria_ceres_elevator ; Crateria: Ceres Elevator
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

preset_kpdr21_crateria_ceres_last_3_rooms:
    dw #preset_kpdr21_crateria_ceres_escape ; Crateria: Ceres Escape
    dw $078D, $ABA0  ; DDB
    dw $079B, $E021  ; MDB
    dw $090F, $7400  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $00A2  ; Samus Y
    dw #$FFFF

preset_kpdr21_crateria_ship:
    dw #preset_kpdr21_crateria_ceres_last_3_rooms ; Crateria: Ceres Last 3 Rooms
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

preset_kpdr21_crateria_parlor:
    dw #preset_kpdr21_crateria_ship ; Crateria: Ship
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

preset_kpdr21_crateria_parlor_downback:
    dw #preset_kpdr21_crateria_parlor ; Crateria: Parlor
    dw $078D, $8916  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $032A  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $025F  ; Layer 2 Y position
    dw $0AF6, $01B5  ; Samus X
    dw $0AFA, $039B  ; Samus Y
    dw #$FFFF

preset_kpdr21_crateria_climb_down:
    dw #preset_kpdr21_crateria_parlor_downback ; Crateria: Parlor Downback
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0919, $0317  ; Layer 2 Y position
    dw $0AF6, $01A8  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw #$FFFF

preset_kpdr21_crateria_pit_room:
    dw #preset_kpdr21_crateria_climb_down ; Crateria: Climb Down
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

preset_kpdr21_crateria_morph:
    dw #preset_kpdr21_crateria_pit_room ; Crateria: Pit Room
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

preset_kpdr21_crateria_construction_zone:
    dw #preset_kpdr21_crateria_morph ; Crateria: Morph
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

preset_kpdr21_crateria_construction_zone_revisit:
    dw #preset_kpdr21_crateria_construction_zone ; Crateria: Construction Zone
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

preset_kpdr21_crateria_pit_room_revisit:
    dw #preset_kpdr21_crateria_construction_zone_revisit ; Crateria: Construction Zone Revisit
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

preset_kpdr21_crateria_climb_up:
    dw #preset_kpdr21_crateria_pit_room_revisit ; Crateria: Pit Room Revisit
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

preset_kpdr21_crateria_parlor_revisit:
    dw #preset_kpdr21_crateria_climb_up ; Crateria: Climb Up
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0AF6, $01A0  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_kpdr21_crateria_flyway:
    dw #preset_kpdr21_crateria_parlor_revisit ; Crateria: Parlor Revisit
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

preset_kpdr21_crateria_bomb_torizo:
    dw #preset_kpdr21_crateria_flyway ; Crateria: Flyway
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

preset_kpdr21_crateria_alcatraz:
    dw #preset_kpdr21_crateria_bomb_torizo ; Crateria: Bomb Torizo
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

preset_kpdr21_crateria_terminator:
    dw #preset_kpdr21_crateria_alcatraz ; Crateria: Alcatraz
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

preset_kpdr21_crateria_green_pirate_shaft:
    dw #preset_kpdr21_crateria_terminator ; Crateria: Terminator
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

preset_kpdr21_brinstar_green_brinstar_elevator:
    dw #preset_kpdr21_crateria_green_pirate_shaft ; Crateria: Green Pirate Shaft
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $008B  ; Health
    dw $0AF6, $007E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_brinstar_early_supers:
    dw #preset_kpdr21_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dw $078D, $8C0A  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $041B  ; Screen Y position in pixels
    dw $0919, $0314  ; Layer 2 Y position
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A5  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $D8B4, $0002  ; Doors
    dw #$FFFF

preset_kpdr21_brinstar_dachora_room:
    dw #preset_kpdr21_brinstar_early_supers ; Brinstar: Early Supers
    dw $078D, $8D4E  ; DDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0915, $061B  ; Screen Y position in pixels
    dw $0919, $0494  ; Layer 2 Y position
    dw $09C2, $0081  ; Health
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $0AF6, $0057  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D872, $0401  ; Items
    dw $D8B4, $0006  ; Doors
    dw #$FFFF

preset_kpdr21_brinstar_big_pink:
    dw #preset_kpdr21_brinstar_dachora_room ; Brinstar: Dachora Room
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0002  ; Missiles
    dw $0AF6, $069C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_brinstar_green_hill_zone:
    dw #preset_kpdr21_brinstar_big_pink ; Brinstar: Big Pink
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0611  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $048C  ; Layer 2 Y position
    dw $09A6, $1000  ; Beams
    dw $09A8, $1000  ; Beams
    dw $09C6, $0007  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0AF6, $0365  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D872, $04C1  ; Items
    dw $D8B4, $0206  ; Doors
    dw #$FFFF

preset_kpdr21_brinstar_noob_bridge:
    dw #preset_kpdr21_brinstar_green_hill_zone ; Brinstar: Green Hill Zone
    dw $078D, $8DEA  ; DDB
    dw $079B, $9E52  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0540  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C2, $0077  ; Health
    dw $0AF6, $07B9  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_kpdr21_brinstar_red_tower:
    dw #preset_kpdr21_brinstar_noob_bridge ; Brinstar: Noob Bridge
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $0911, $0482  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0361  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0004  ; Supers
    dw $0AF6, $0522  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B6, $0008  ; Doors
    dw #$FFFF

preset_kpdr21_brinstar_skree_boost:
    dw #preset_kpdr21_brinstar_red_tower ; Brinstar: Red Tower
    dw $078D, $8F0A  ; DDB
    dw $079B, $A253  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $3001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $091A  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $06D3  ; Layer 2 Y position
    dw $0AF6, $0056  ; Samus X
    dw $0AFA, $098B  ; Samus Y
    dw #$FFFF

preset_kpdr21_brinstar_below_spazer:
    dw #preset_kpdr21_brinstar_skree_boost ; Brinstar: Skree Boost
    dw $078D, $9042  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $090F, $2FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $006D  ; Health
    dw $0AF6, $01DC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_brinstar_entering_kraids_lair:
    dw #preset_kpdr21_brinstar_below_spazer ; Brinstar: Below Spazer
    dw $078D, $A348  ; DDB
    dw $079B, $CF80  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C6, $0006  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $09D2, $0002  ; Currently selected item
    dw $0AF6, $002E  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_kpdr21_brinstar_kraid_kihunters:
    dw #preset_kpdr21_brinstar_entering_kraids_lair ; Brinstar: Entering Kraids Lair
    dw $078D, $923A  ; DDB
    dw $079B, $A471  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09CA, $0004  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0167  ; Samus X
    dw #$FFFF

preset_kpdr21_brinstar_mini_kraid:
    dw #preset_kpdr21_brinstar_kraid_kihunters ; Brinstar: Kraid Kihunters
    dw $078D, $9156  ; DDB
    dw $079B, $A4DA  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $09C2, $0059  ; Health
    dw $09D2, $0001  ; Currently selected item
    dw $0AF6, $016B  ; Samus X
    dw #$FFFF

preset_kpdr21_brinstar_kraid:
    dw #preset_kpdr21_brinstar_mini_kraid ; Brinstar: Mini Kraid
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0917, $0100  ; Layer 2 X position
    dw $09C2, $0043  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $01C1  ; Samus X
    dw $D8B8, $0024  ; Doors
    dw #$FFFF

preset_kpdr21_brinstar_leaving_varia:
    dw #preset_kpdr21_brinstar_kraid ; Brinstar: Kraid
    dw $078D, $91DA  ; DDB
    dw $079B, $A6E2  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1005  ; Equipped Items
    dw $09A4, $1005  ; Collected Items
    dw $09C2, $0084  ; Health
    dw $09C6, $0007  ; Missiles
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0078  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $D828, $0104  ; Bosses
    dw $D876, $0001  ; Items
    dw $D8B8, $0064  ; Doors
    dw #$FFFF

preset_kpdr21_brinstar_mini_kraid_revisit:
    dw #preset_kpdr21_brinstar_leaving_varia ; Brinstar: Leaving Varia
    dw $078D, $91CE  ; DDB
    dw $079B, $A56B  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $007C  ; Health
    dw $09D2, $0002  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0058  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $00E4  ; Doors
    dw #$FFFF

preset_kpdr21_brinstar_kraid_kihunters_revisit:
    dw #preset_kpdr21_brinstar_mini_kraid_revisit ; Brinstar: Mini Kraid Revisit
    dw $078D, $91AA  ; DDB
    dw $079B, $A521  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0004  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $009A  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $00EC  ; Doors
    dw #$FFFF

preset_kpdr21_brinstar_kraid_etank:
    dw #preset_kpdr21_brinstar_kraid_kihunters_revisit ; Brinstar: Kraid Kihunters Revisit
    dw $078D, $916E  ; DDB
    dw $079B, $A471  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $0AF6, $0051  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $00ED  ; Doors
    dw #$FFFF

preset_kpdr21_upper_norfair_business_center:
    dw #preset_kpdr21_brinstar_kraid_etank ; Brinstar: Kraid E-tank
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $09C6, $0006  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF

preset_kpdr21_upper_norfair_hi_jump_etank:
    dw #preset_kpdr21_upper_norfair_business_center ; Upper Norfair: Business Center
    dw $090F, $EFFF  ; Screen subpixel X position
    dw $0915, $051B  ; Screen Y position in pixels
    dw $0919, $03D4  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0041  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $D8B8, $20ED  ; Doors
    dw #$FFFF

preset_kpdr21_upper_norfair_leaving_hi_jump:
    dw #preset_kpdr21_upper_norfair_hi_jump_etank ; Upper Norfair: Hi Jump E-tank
    dw $078D, $9426  ; DDB
    dw $079B, $A9E5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $1FFF  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1105  ; Equipped Items
    dw $09A4, $1105  ; Collected Items
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B5  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $0121  ; Items
    dw $D8BA, $0001  ; Doors
    dw #$FFFF

preset_kpdr21_upper_norfair_business_center_2:
    dw #preset_kpdr21_upper_norfair_leaving_hi_jump ; Upper Norfair: Leaving Hi Jump
    dw $078D, $93F6  ; DDB
    dw $079B, $AA41  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C6, $000B  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $0AF6, $019C  ; Samus X
    dw $D876, $01A1  ; Items
    dw #$FFFF

preset_kpdr21_upper_norfair_precathedral:
    dw #preset_kpdr21_upper_norfair_business_center_2 ; Upper Norfair: Business Center 2
    dw $078D, $941A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $53FE  ; Screen subpixel Y position
    dw $0915, $02F8  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $023A  ; Layer 2 Y position
    dw $0AF6, $00A5  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_kpdr21_upper_norfair_cathedral:
    dw #preset_kpdr21_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dw $078D, $92CA  ; DDB
    dw $079B, $A7B3  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0009  ; Missiles
    dw $09CA, $0002  ; Supers
    dw $0AF6, $02A6  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $24ED  ; Doors
    dw #$FFFF

preset_kpdr21_upper_norfair_rising_tide:
    dw #preset_kpdr21_upper_norfair_cathedral ; Upper Norfair: Cathedral
    dw $078D, $92B2  ; DDB
    dw $079B, $A788  ; MDB
    dw $090F, $7FFF  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09CA, $0001  ; Supers
    dw $0AF6, $02BB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $26ED  ; Doors
    dw #$FFFF

preset_kpdr21_upper_norfair_bubble_mountain:
    dw #preset_kpdr21_upper_norfair_rising_tide ; Upper Norfair: Rising Tide
    dw $078D, $929A  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0115  ; Health
    dw $0AF6, $04AD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_upper_norfair_bat_cave:
    dw #preset_kpdr21_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dw $078D, $973E  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $0110  ; Health
    dw $09C6, $0008  ; Missiles
    dw $0AF6, $01C2  ; Samus X
    dw $D8BA, $0011  ; Doors
    dw #$FFFF

preset_kpdr21_upper_norfair_single_chamber:
    dw #preset_kpdr21_upper_norfair_bat_cave ; Upper Norfair: Bat Cave
    dw $078D, $97AA  ; DDB
    dw $090F, $BFFF  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0104  ; Screen Y position in pixels
    dw $0919, $00C3  ; Layer 2 Y position
    dw $09A2, $3105  ; Equipped Items
    dw $09A4, $3105  ; Collected Items
    dw $09C2, $0126  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0AF6, $01AD  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0020  ; Events
    dw $D878, $0004  ; Items
    dw $D8BA, $0031  ; Doors
    dw #$FFFF

preset_kpdr21_upper_norfair_double_chamber:
    dw #preset_kpdr21_upper_norfair_single_chamber ; Upper Norfair: Single Chamber
    dw $078D, $9582  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $011C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09C6, $0008  ; Missiles
    dw $0AF6, $00BE  ; Samus X
    dw $D8BA, $0071  ; Doors
    dw #$FFFF

preset_kpdr21_upper_norfair_double_chamber_revisit:
    dw #preset_kpdr21_upper_norfair_double_chamber ; Upper Norfair: Double Chamber
    dw $078D, $961E  ; DDB
    dw $079B, $ADDE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A6, $1001  ; Beams
    dw $09A8, $1001  ; Beams
    dw $09C6, $000D  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0051  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $001C  ; Items
    dw $D8BA, $00F1  ; Doors
    dw #$FFFF

preset_kpdr21_upper_norfair_single_chamber_revisit:
    dw #preset_kpdr21_upper_norfair_double_chamber_revisit ; Upper Norfair: Double Chamber Revisit
    dw $078D, $962A  ; DDB
    dw $079B, $ADAD  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $6000  ; Screen subpixel Y position
    dw $0AF6, $0050  ; Samus X
    dw #$FFFF

preset_kpdr21_upper_norfair_bubble_mountain_revisit:
    dw #preset_kpdr21_upper_norfair_single_chamber_revisit ; Upper Norfair: Single Chamber Revisit
    dw $078D, $9606  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0002  ; Screen Y position in pixels
    dw $0919, $0001  ; Layer 2 Y position
    dw $0AF6, $008F  ; Samus X
    dw #$FFFF

preset_kpdr21_upper_norfair_frog_speedway:
    dw #preset_kpdr21_upper_norfair_bubble_mountain_revisit ; Upper Norfair: Bubble Mountain Revisit
    dw $078D, $956A  ; DDB
    dw $079B, $AF72  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $012B  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0AF6, $008E  ; Samus X
    dw #$FFFF

preset_kpdr21_upper_norfair_business_center_3:
    dw #preset_kpdr21_upper_norfair_frog_speedway ; Upper Norfair: Frog Speedway
    dw $078D, $97DA  ; DDB
    dw $079B, $B167  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0AF6, $0029  ; Samus X
    dw #$FFFF

preset_kpdr21_red_brinstar_alpha_spark:
    dw #preset_kpdr21_upper_norfair_business_center_3 ; Upper Norfair: Business Center 3
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $09C6, $0014  ; Missiles
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0086  ; Samus Y
    dw #$FFFF

preset_kpdr21_red_brinstar_reverse_skree_boost:
    dw #preset_kpdr21_red_brinstar_alpha_spark ; Red Brinstar: Alpha Spark
    dw $078D, $A36C  ; DDB
    dw $079B, $A408  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003F  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_kpdr21_red_brinstar_red_tower_climb:
    dw #preset_kpdr21_red_brinstar_reverse_skree_boost ; Red Brinstar: Reverse Skree Boost
    dw $078D, $910E  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0129  ; Health
    dw $0AF6, $0024  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_red_brinstar_hellway:
    dw #preset_kpdr21_red_brinstar_red_tower_climb ; Red Brinstar: Red Tower Climb
    dw $078D, $90F6  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $008F  ; Samus X
    dw #$FFFF

preset_kpdr21_red_brinstar_caterpillars_down:
    dw #preset_kpdr21_red_brinstar_hellway ; Red Brinstar: Hellway
    dw $078D, $901E  ; DDB
    dw $079B, $A2F7  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $01FB  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0917, $017C  ; Layer 2 X position
    dw $09C2, $0119  ; Health
    dw $0AF6, $0291  ; Samus X
    dw #$FFFF

preset_kpdr21_red_brinstar_alpha_power_bombs:
    dw #preset_kpdr21_red_brinstar_caterpillars_down ; Red Brinstar: Caterpillars Down
    dw $078D, $908A  ; DDB
    dw $079B, $A322  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $071C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $071C  ; Layer 2 Y position
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0041  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D8B6, $2008  ; Doors
    dw #$FFFF

preset_kpdr21_red_brinstar_caterpillars_up:
    dw #preset_kpdr21_red_brinstar_alpha_power_bombs ; Red Brinstar: Alpha Power Bombs
    dw $078D, $9096  ; DDB
    dw $079B, $A3AE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $010F  ; Health
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02AF  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $0104  ; Items
    dw #$FFFF

preset_kpdr21_wrecked_ship_crateria_kihunters:
    dw #preset_kpdr21_red_brinstar_caterpillars_up ; Red Brinstar: Caterpillars Up
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $0123  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0028  ; Samus position/state
    dw $0A1E, $0504  ; More position/state
    dw $0AF6, $0068  ; Samus X
    dw $0AFA, $0060  ; Samus Y
    dw $D8B2, $2C01  ; Doors
    dw $D8B6, $3008  ; Doors
    dw #$FFFF

preset_kpdr21_wrecked_ship_oceanfly_setup:
    dw #preset_kpdr21_wrecked_ship_crateria_kihunters ; Wrecked Ship: Crateria Kihunters
    dw $078D, $8AF6  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $8C00  ; Screen subpixel X position
    dw $0913, $3000  ; Screen subpixel Y position
    dw $09CE, $0002  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09CE, $0001  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $002C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B0, $6000  ; Doors
    dw #$FFFF

preset_kpdr21_wrecked_ship_ocean_spark:
    dw #preset_kpdr21_wrecked_ship_oceanfly_setup ; Wrecked Ship: Oceanfly Setup
    dw $078D, $8A36  ; DDB
    dw $079B, $95FF  ; MDB
    dw $090F, $A3FF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $00EE  ; Health
    dw $0AF6, $01C6  ; Samus X
    dw #$FFFF

preset_kpdr21_wrecked_ship_entering_wrecked_ship:
    dw #preset_kpdr21_wrecked_ship_ocean_spark ; Wrecked Ship: Ocean Spark
    dw $078D, $8AEA  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $0917, $0380  ; Layer 2 X position
    dw $09C2, $0074  ; Health
    dw $09CA, $0004  ; Supers
    dw $0AF6, $07DB  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $D8B0, $7000  ; Doors
    dw #$FFFF

preset_kpdr21_wrecked_ship_basement:
    dw #preset_kpdr21_wrecked_ship_entering_wrecked_ship ; Wrecked Ship: Entering Wrecked Ship
    dw $078D, $A1BC  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $071F  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0557  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $09D2, $0002  ; Currently selected item
    dw $0AF6, $0455  ; Samus X
    dw $0AFA, $07BB  ; Samus Y
    dw $D8C0, $0010  ; Doors
    dw #$FFFF

preset_kpdr21_wrecked_ship_phantoon:
    dw #preset_kpdr21_wrecked_ship_basement ; Wrecked Ship: Basement
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0002  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $04CC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $0030  ; Doors
    dw #$FFFF

preset_kpdr21_wrecked_ship_leaving_phantoon:
    dw #preset_kpdr21_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dw $078D, $A2C4  ; DDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $09C2, $00E2  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $04D6  ; Samus X
    dw $D82A, $0100  ; Bosses
    dw $D8C0, $0070  ; Doors
    dw #$FFFF

preset_kpdr21_wrecked_ship_shaft_to_supers:
    dw #preset_kpdr21_wrecked_ship_leaving_phantoon ; Wrecked Ship: Leaving Phantoon
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0226  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0917, $019C  ; Layer 2 X position
    dw $0AF6, $02C4  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_kpdr21_wrecked_ship_wrecked_ship_shaft:
    dw #preset_kpdr21_wrecked_ship_shaft_to_supers ; Wrecked Ship: Shaft to Supers
    dw $078D, $A210  ; DDB
    dw $079B, $CDA8  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $000A  ; Supers
    dw $09CC, $000A  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $0020  ; Items
    dw $D8C0, $0074  ; Doors
    dw #$FFFF

preset_kpdr21_wrecked_ship_attic:
    dw #preset_kpdr21_wrecked_ship_wrecked_ship_shaft ; Wrecked Ship: Wrecked Ship Shaft
    dw $078D, $A2E8  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $AC00  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $0445  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_kpdr21_wrecked_ship_upper_west_ocean:
    dw #preset_kpdr21_wrecked_ship_attic ; Wrecked Ship: Attic
    dw $078D, $A228  ; DDB
    dw $079B, $CA52  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C7FD  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $001E  ; Layer 2 Y position
    dw $09C2, $00EE  ; Health
    dw $09CA, $0009  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $0174  ; Doors
    dw #$FFFF

preset_kpdr21_wrecked_ship_pancakes_and_wavers:
    dw #preset_kpdr21_wrecked_ship_upper_west_ocean ; Wrecked Ship: Upper West Ocean
    dw $078D, $A1E0  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $01FC  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0102  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02C2  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_kpdr21_wrecked_ship_bowling_spark:
    dw #preset_kpdr21_wrecked_ship_pancakes_and_wavers ; Wrecked Ship: Pancakes and Wavers
    dw $078D, $89E2  ; DDB
    dw $079B, $9461  ; MDB
    dw $090F, $6800  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0AF6, $016E  ; Samus X
    dw $0AFA, $009D  ; Samus Y
    dw #$FFFF

preset_kpdr21_wrecked_ship_leaving_gravity:
    dw #preset_kpdr21_wrecked_ship_bowling_spark ; Wrecked Ship: Bowling Spark
    dw $078D, $A1A4  ; DDB
    dw $079B, $CE40  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09A2, $3125  ; Equipped Items
    dw $09A4, $3125  ; Collected Items
    dw $09C2, $00A9  ; Health
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0078  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $D880, $00A0  ; Items
    dw #$FFFF

preset_kpdr21_wrecked_ship_moat_ball:
    dw #preset_kpdr21_wrecked_ship_leaving_gravity ; Wrecked Ship: Leaving Gravity
    dw $078D, $A300  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00E4  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0445  ; Screen Y position in pixels
    dw $0917, $0072  ; Layer 2 X position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0184  ; Samus X
    dw $0AFA, $04D0  ; Samus Y
    dw #$FFFF

preset_kpdr21_wrecked_ship_crateria_kihunters_return:
    dw #preset_kpdr21_wrecked_ship_moat_ball ; Wrecked Ship: Moat Ball
    dw $078D, $89CA  ; DDB
    dw $079B, $95FF  ; MDB
    dw $090F, $8400  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0007  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0005  ; Layer 2 Y position
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $0097  ; Samus Y
    dw #$FFFF

preset_kpdr21_red_brinstar_final_red_tower_elevator:
    dw #preset_kpdr21_wrecked_ship_crateria_kihunters_return ; Wrecked Ship: Crateria Kihunters Return
    dw $078D, $8B02  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $F000  ; Screen subpixel X position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $0238  ; Layer 2 Y position
    dw $09C2, $00BD  ; Health
    dw $09C6, $0012  ; Missiles
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF

preset_kpdr21_red_brinstar_final_hellway_revisit:
    dw #preset_kpdr21_red_brinstar_final_red_tower_elevator ; Red Brinstar Final: Red Tower Elevator
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0500  ; Screen Y position in pixels
    dw $0919, $0500  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0040  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw #$FFFF

preset_kpdr21_red_brinstar_final_red_tower_down:
    dw #preset_kpdr21_red_brinstar_final_hellway_revisit ; Red Brinstar Final: Hellway Revisit
    dw $078D, $90AE  ; DDB
    dw $079B, $A2F7  ; MDB
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00B5  ; Health
    dw $0AF6, $003D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_red_brinstar_final_skree_boost_final:
    dw #preset_kpdr21_red_brinstar_final_red_tower_down ; Red Brinstar Final: Red Tower Down
    dw $078D, $907E  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $A001  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $091A  ; Screen Y position in pixels
    dw $0919, $06D3  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0054  ; Samus X
    dw $0AFA, $098B  ; Samus Y
    dw #$FFFF

preset_kpdr21_red_brinstar_final_below_spazer_final:
    dw #preset_kpdr21_red_brinstar_final_skree_boost_final ; Red Brinstar Final: Skree Boost Final
    dw $078D, $9042  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $090F, $5FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00B4  ; Health
    dw $0AF6, $01DC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_maridia_breaking_tube:
    dw #preset_kpdr21_red_brinstar_final_below_spazer_final ; Red Brinstar Final: Below Spazer Final
    dw $078D, $911A  ; DDB
    dw $079B, $CF54  ; MDB
    dw $09D2, $0003  ; Currently selected item
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $000A  ; Supers
    dw $0AF6, $002D  ; Samus X
    dw #$FFFF

preset_kpdr21_maridia_fish_tank:
    dw #preset_kpdr21_maridia_breaking_tube ; Maridia: Breaking Tube
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $4FFF  ; Screen subpixel X position
    dw $0911, $00FE  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $05F4  ; Screen Y position in pixels
    dw $0917, $00BE  ; Layer 2 X position
    dw $0919, $0477  ; Layer 2 Y position
    dw $09CE, $0002  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0167  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D820, $0801  ; Events
    dw #$FFFF

preset_kpdr21_maridia_mt_everest:
    dw #preset_kpdr21_maridia_fish_tank ; Maridia: Fish Tank
    dw $078D, $A3F0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0257  ; Layer 2 Y position
    dw $0AF6, $019D  ; Samus X
    dw $0AFA, $03BB  ; Samus Y
    dw #$FFFF

preset_kpdr21_maridia_crab_shaft:
    dw #preset_kpdr21_maridia_mt_everest ; Maridia: Mt Everest
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $9C01  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0079  ; Health
    dw $0AF6, $05C0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_maridia_aqueduct:
    dw #preset_kpdr21_maridia_crab_shaft ; Maridia: Crab Shaft
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $83FF  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09CA, $0009  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $01AD  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D8C0, $8174  ; Doors
    dw #$FFFF

preset_kpdr21_maridia_botwoon_hallway:
    dw #preset_kpdr21_maridia_aqueduct ; Maridia: Aqueduct
    dw $078D, $A4C8  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CE, $0001  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $009D  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_kpdr21_maridia_botwoon:
    dw #preset_kpdr21_maridia_botwoon_hallway ; Maridia: Botwoon Hallway
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $090F, $DFFF  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0917, $0240  ; Layer 2 X position
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03A4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_maridia_botwoon_etank:
    dw #preset_kpdr21_maridia_botwoon ; Maridia: Botwoon
    dw $078D, $A774  ; DDB
    dw $079B, $D95E  ; MDB
    dw $07F3, $002A  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0917, $0100  ; Layer 2 X position
    dw $09C2, $00A1  ; Health
    dw $09C6, $0014  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0AF6, $01C6  ; Samus X
    dw $D82C, $0002  ; Bosses
    dw #$FFFF

preset_kpdr21_maridia_halfie_setup:
    dw #preset_kpdr21_maridia_botwoon_etank ; Maridia: Botwoon E-tank
    dw $078D, $A918  ; DDB
    dw $079B, $D7E4  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $001F  ; Layer 2 Y position
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $0AF6, $008D  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D882, $0100  ; Items
    dw #$FFFF

preset_kpdr21_maridia_draygon:
    dw #preset_kpdr21_maridia_halfie_setup ; Maridia: Halfie Setup
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $0110  ; Health
    dw $09CA, $0001  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0041  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C2, $0C00  ; Doors
    dw #$FFFF

preset_kpdr21_maridia_reverse_halfie_spikesuit:
    dw #preset_kpdr21_maridia_draygon ; Maridia: Draygon
    dw $078D, $A96C  ; DDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $3325  ; Equipped Items
    dw $09A4, $3325  ; Collected Items
    dw $09C2, $00BA  ; Health
    dw $09C6, $000D  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $0044  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82C, $0003  ; Bosses
    dw $D882, $0500  ; Items
    dw $D8C2, $CC00  ; Doors
    dw #$FFFF

preset_kpdr21_maridia_womple_jump:
    dw #preset_kpdr21_maridia_reverse_halfie_spikesuit ; Maridia: Reverse Halfie (Spikesuit)
    dw $0A68, $0000  ; Flash suit
    dw #$FFFF

preset_kpdr21_maridia_cac_alley_east:
    dw #preset_kpdr21_maridia_womple_jump ; Maridia: Womple Jump
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0915, $011A  ; Screen Y position in pixels
    dw $09C2, $00BA  ; Health
    dw $0919, $011A  ; Layer 2 Y position
    dw $09C2, $004A  ; Health
    dw $09C6, $000C  ; Missiles
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $0030  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $DC00  ; Doors
    dw #$FFFF

preset_kpdr21_maridia_cac_alley_west:
    dw #preset_kpdr21_maridia_cac_alley_east ; Maridia: Cac Alley East
    dw $078D, $A900  ; DDB
    dw $079B, $DA2B  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0915, $0002  ; Screen Y position in pixels
    dw $0919, $0002  ; Layer 2 Y position
    dw $09C6, $000B  ; Missiles
    dw $09CA, $0007  ; Supers
    dw $0AF6, $005B  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_maridia_plasma_spark:
    dw #preset_kpdr21_maridia_cac_alley_west ; Maridia: Cac Alley West
    dw $078D, $A93C  ; DDB
    dw $079B, $D5EC  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0008  ; Supers
    dw $0AF6, $0024  ; Samus X
    dw $0AF6, $001F  ; Samus X
    dw #$FFFF

preset_kpdr21_maridia_plasma_climb:
    dw #preset_kpdr21_maridia_plasma_spark ; Maridia: Plasma Spark
    dw $078D, $A750  ; DDB
    dw $079B, $D340  ; MDB
    dw $090F, $FFFF  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $00F3  ; Screen Y position in pixels
    dw $0917, $01C0  ; Layer 2 X position
    dw $0919, $00F3  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $027F  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_kpdr21_maridia_plasma_beam:
    dw #preset_kpdr21_maridia_plasma_climb ; Maridia: Plasma Climb
    dw $078D, $A5DC  ; DDB
    dw $079B, $D27E  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $0095  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C2, $DC08  ; Doors
    dw #$FFFF

preset_kpdr21_maridia_plasma_spark_revisit:
    dw #preset_kpdr21_maridia_plasma_beam ; Maridia: Plasma Beam
    dw $078D, $A540  ; DDB
    dw $079B, $D387  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $031A  ; Screen Y position in pixels
    dw $0919, $0253  ; Layer 2 Y position
    dw $09A6, $1009  ; Beams
    dw $09A8, $1009  ; Beams
    dw $09C2, $00A4  ; Health
    dw $09C6, $0011  ; Missiles
    dw $09CE, $0002  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D880, $80A0  ; Items
    dw $D8C2, $DC0A  ; Doors
    dw #$FFFF

preset_kpdr21_maridia_toilet:
    dw #preset_kpdr21_maridia_plasma_spark_revisit ; Maridia: Plasma Spark Revisit
    dw $078D, $A5D0  ; DDB
    dw $079B, $D340  ; MDB
    dw $0911, $002E  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $0028  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $09C2, $00A9  ; Health
    dw $09CA, $0009  ; Supers
    dw $0AF6, $00A3  ; Samus X
    dw $0AFA, $02AB  ; Samus Y
    dw $D8C2, $DC1A  ; Doors
    dw #$FFFF

preset_kpdr21_maridia_sewers:
    dw #preset_kpdr21_maridia_toilet ; Maridia: Toilet
    dw $078D, $A600  ; DDB
    dw $079B, $D48E  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $011C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $0AF6, $00BB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_kpdr21_maridia_lower_maridia_gate:
    dw #preset_kpdr21_maridia_sewers ; Maridia: Sewers
    dw $078D, $A528  ; DDB
    dw $079B, $D21C  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $00AE  ; Health
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $002E  ; Samus X
    dw #$FFFF

preset_kpdr21_upper_norfair_revisit_ice_beam_gates:
    dw #preset_kpdr21_maridia_lower_maridia_gate ; Maridia: Lower Maridia Gate
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0326  ; Screen Y position in pixels
    dw $0919, $025C  ; Layer 2 Y position
    dw $09CA, $0007  ; Supers
    dw $0AF6, $0032  ; Samus X
    dw $0AFA, $0395  ; Samus Y
    dw $D8B8, $2EED  ; Doors
    dw #$FFFF

preset_kpdr21_upper_norfair_revisit_ice_maze_up:
    dw #preset_kpdr21_upper_norfair_revisit_ice_beam_gates ; Upper Norfair Revisit: Ice Beam Gates
    dw $078D, $931E  ; DDB
    dw $079B, $A75D  ; MDB
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_upper_norfair_revisit_ice_maze_down:
    dw #preset_kpdr21_upper_norfair_revisit_ice_maze_up ; Upper Norfair Revisit: Ice Maze Up
    dw $078D, $937E  ; DDB
    dw $079B, $A890  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09A6, $100B  ; Beams
    dw $09A8, $100B  ; Beams
    dw $09C2, $00BD  ; Health
    dw $0AF6, $00BA  ; Samus X
    dw $D876, $01A5  ; Items
    dw #$FFFF

preset_kpdr21_upper_norfair_revisit_ice_escape:
    dw #preset_kpdr21_upper_norfair_revisit_ice_maze_down ; Upper Norfair Revisit: Ice Maze Down
    dw $078D, $935A  ; DDB
    dw $079B, $A8B9  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C5  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_kpdr21_upper_norfair_revisit_purple_shaft_upper:
    dw #preset_kpdr21_upper_norfair_revisit_ice_escape ; Upper Norfair Revisit: Ice Escape
    dw $078D, $971A  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $0AF6, $0036  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_kpdr21_upper_norfair_revisit_magdollite_tunnel_upper:
    dw #preset_kpdr21_upper_norfair_revisit_purple_shaft_upper ; Upper Norfair Revisit: Purple Shaft (Upper)
    dw $078D, $9576  ; DDB
    dw $079B, $AEDF  ; MDB
    dw $090F, $B001  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01F4  ; Screen Y position in pixels
    dw $0919, $0177  ; Layer 2 Y position
    dw $0AF6, $0059  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_kpdr21_upper_norfair_revisit_kronic_boost_upper:
    dw #preset_kpdr21_upper_norfair_revisit_magdollite_tunnel_upper ; Upper Norfair Revisit: Magdollite Tunnel (Upper)
    dw $078D, $96BA  ; DDB
    dw $079B, $AEB4  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $02B7  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_upper_norfair_revisit_croc_speedway_lower:
    dw #preset_kpdr21_upper_norfair_revisit_ice_escape ; Upper Norfair Revisit: Ice Escape
    dw $078D, $9336  ; DDB
    dw $079B, $A8F8  ; MDB
    dw $090F, $6781  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $0AF6, $00DD  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_kpdr21_upper_norfair_revisit_spiky_acid_snakes_lower:
    dw #preset_kpdr21_upper_norfair_revisit_croc_speedway_lower ; Upper Norfair Revisit: Croc Speedway (Lower
    dw $078D, $93C6  ; DDB
    dw $079B, $AFCE  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $02A3  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $01FA  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $030E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_upper_norfair_revisit_kronic_boost_lower:
    dw #preset_kpdr21_upper_norfair_revisit_spiky_acid_snakes_lower ; Upper Norfair Revisit: Spiky Acid Snakes (Lower)
    dw $078D, $9792  ; DDB
    dw $079B, $AFFB  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0917, $0240  ; Layer 2 X position
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $03BC  ; Samus X
    dw #$FFFF

preset_kpdr21_lower_norfair_ln_main_hall:
    dw #preset_kpdr21_upper_norfair_revisit_kronic_boost_upper ; Upper Norfair Revisit: Kronic Boost (Upper)
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0301  ; Layer 2 Y position
    dw $09C2, $00BA  ; Health
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0480  ; Samus X
    dw $0AFA, $0288  ; Samus Y
    dw $D8BA, $01F1  ; Doors
    dw #$FFFF

preset_kpdr21_lower_norfair_prepillars:
    dw #preset_kpdr21_lower_norfair_ln_main_hall ; Lower Norfair: LN Main Hall
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0917, $0540  ; Layer 2 X position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $07A2  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_kpdr21_lower_norfair_fast_pillars_setup:
    dw #preset_kpdr21_lower_norfair_prepillars ; Lower Norfair: Pre-Pillars
    dw $078D, $985E  ; DDB
    dw $079B, $B3A5  ; MDB
    dw $090F, $8001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C6, $0013  ; Missiles
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $0025  ; Samus X
    dw #$FFFF

preset_kpdr21_lower_norfair_worst_room_in_the_game:
    dw #preset_kpdr21_lower_norfair_fast_pillars_setup ; Lower Norfair: Fast Pillars Setup
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $090F, $64FF  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0070  ; Health
    dw $0AF6, $03DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_lower_norfair_amphitheatre:
    dw #preset_kpdr21_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room in the Game
    dw $078D, $994E  ; DDB
    dw $079B, $B4AD  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09C2, $0084  ; Health
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $00A7  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_kpdr21_lower_norfair_kihunter_stairs_down:
    dw #preset_kpdr21_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dw $078D, $997E  ; DDB
    dw $079B, $B4E5  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0282  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0043  ; Screen Y position in pixels
    dw $0917, $01E1  ; Layer 2 X position
    dw $0919, $0032  ; Layer 2 Y position
    dw $0AF6, $02E2  ; Samus X
    dw $0AFA, $00B3  ; Samus Y
    dw #$FFFF

preset_kpdr21_lower_norfair_wasteland:
    dw #preset_kpdr21_lower_norfair_kihunter_stairs_down ; Lower Norfair: Kihunter Stairs Down
    dw $078D, $99A2  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0915, $0419  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0312  ; Layer 2 Y position
    dw $09C2, $00AC  ; Health
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $001D  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0AF6, $0248  ; Samus X
    dw $0AFA, $0489  ; Samus Y
    dw $D8BA, $41F1  ; Doors
    dw #$FFFF

preset_kpdr21_lower_norfair_metal_ninja_pirates:
    dw #preset_kpdr21_lower_norfair_wasteland ; Lower Norfair: Wasteland
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $021B  ; Screen Y position in pixels
    dw $09C2, $0087  ; Health
    dw $09CA, $0006  ; Supers
    dw $09CE, $0001  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0168  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $C1F1  ; Doors
    dw #$FFFF

preset_kpdr21_lower_norfair_plowerhouse:
    dw #preset_kpdr21_lower_norfair_metal_ninja_pirates ; Lower Norfair: Metal Ninja Pirates
    dw $078D, $9A1A  ; DDB
    dw $079B, $B62B  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0122  ; Health
    dw $09C6, $0014  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $0AF6, $006A  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D8BC, $0001  ; Doors
    dw #$FFFF

preset_kpdr21_lower_norfair_ridley:
    dw #preset_kpdr21_lower_norfair_plowerhouse ; Lower Norfair: Plowerhouse
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $5000  ; Screen subpixel Y position
    dw $09C2, $00E3  ; Health
    dw $09CA, $0008  ; Supers
    dw $0AF6, $003D  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D8BA, $D1F1  ; Doors
    dw #$FFFF

preset_kpdr21_lower_norfair_leaving_ridley:
    dw #preset_kpdr21_lower_norfair_ridley ; Lower Norfair: Ridley
    dw $078D, $98CA  ; DDB
    dw $079B, $B32E  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $3C00  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $09C2, $00D9  ; Health
    dw $09CA, $000A  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0057  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $D82A, $0101  ; Bosses
    dw #$FFFF

preset_kpdr21_lower_norfair_reverse_plowerhouse:
    dw #preset_kpdr21_lower_norfair_leaving_ridley ; Lower Norfair: Leaving Ridley
    dw $078D, $98BE  ; DDB
    dw $079B, $B37A  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00D6  ; Health
    dw $0AF6, $02B8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8BA, $D5F1  ; Doors
    dw #$FFFF

preset_kpdr21_lower_norfair_wasteland_revisit:
    dw #preset_kpdr21_lower_norfair_reverse_plowerhouse ; Lower Norfair: Reverse Plowerhouse
    dw $078D, $9966  ; DDB
    dw $079B, $B62B  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $7400  ; Screen subpixel Y position
    dw $09C2, $00B4  ; Health
    dw $0AF6, $02DC  ; Samus X
    dw #$FFFF

preset_kpdr21_lower_norfair_kihunter_stairs_up:
    dw #preset_kpdr21_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dw $078D, $9A3E  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $D5FF  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $09C2, $00B2  ; Health
    dw $09CE, $0002  ; Pbs
    dw $0AF6, $055B  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF

preset_kpdr21_lower_norfair_fire_flea_room:
    dw #preset_kpdr21_lower_norfair_kihunter_stairs_up ; Lower Norfair: Kihunter Stairs Up
    dw $078D, $9A26  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $000D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0009  ; Layer 2 Y position
    dw $0AF6, $009C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_lower_norfair_springball_maze:
    dw #preset_kpdr21_lower_norfair_fire_flea_room ; Lower Norfair: Fire Flea Room
    dw $078D, $9A02  ; DDB
    dw $079B, $B6EE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0915, $0001  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $016C  ; Samus X
    dw #$FFFF

preset_kpdr21_lower_norfair_three_musketeers:
    dw #preset_kpdr21_lower_norfair_springball_maze ; Lower Norfair: Springball Maze
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $5A81  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0915, $0003  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0002  ; Layer 2 Y position
    dw $0AF6, $0060  ; Samus X
    dw #$FFFF

preset_kpdr21_lower_norfair_single_chamber_final:
    dw #preset_kpdr21_lower_norfair_three_musketeers ; Lower Norfair: Three Musketeers
    dw $078D, $99AE  ; DDB
    dw $079B, $B656  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $0080  ; Health
    dw $0AF6, $016E  ; Samus X
    dw #$FFFF

preset_kpdr21_lower_norfair_bubble_mountain_final:
    dw #preset_kpdr21_lower_norfair_single_chamber_final ; Lower Norfair: Single Chamber Final
    dw $078D, $9A4A  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0016  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0010  ; Layer 2 Y position
    dw $09C2, $0074  ; Health
    dw $09D2, $0001  ; Currently selected item
    dw $0AF6, $0075  ; Samus X
    dw #$FFFF

preset_kpdr21_lower_norfair_business_center_final:
    dw #preset_kpdr21_lower_norfair_bubble_mountain_final ; Lower Norfair: Bubble Mountain Final
    dw $078D, $97DA  ; DDB
    dw $079B, $B167  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0088  ; Health
    dw $09C6, $0011  ; Missiles
    dw $09CE, $0001  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0032  ; Samus X
    dw #$FFFF

preset_kpdr21_backtracking_maridia_tube_revisit:
    dw #preset_kpdr21_lower_norfair_business_center_final ; Lower Norfair: Business Center Final
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0086  ; Samus Y
    dw #$FFFF

preset_kpdr21_backtracking_fish_tank_revisit:
    dw #preset_kpdr21_backtracking_maridia_tube_revisit ; Backtracking: Maridia Tube Revisit
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $0911, $00FA  ; Screen X position in pixels
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0915, $05F3  ; Screen Y position in pixels
    dw $0917, $00BB  ; Layer 2 X position
    dw $0919, $0476  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0168  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw #$FFFF

preset_kpdr21_backtracking_mt_everest_revisit_revisit:
    dw #preset_kpdr21_backtracking_fish_tank_revisit ; Backtracking: Fish Tank Revisit
    dw $078D, $A3B4  ; DDB
    dw $079B, $D017  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0068  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $004E  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00C8  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_kpdr21_backtracking_red_brinstar_green_gate:
    dw #preset_kpdr21_backtracking_mt_everest_revisit_revisit ; Backtracking: Mt Everest Revisit Revisit
    dw $078D, $A42C  ; DDB
    dw $079B, $D104  ; MDB
    dw $090F, $3801  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09D2, $0002  ; Currently selected item
    dw $0AF6, $0079  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr21_backtracking_crateria_kihunters_final:
    dw #preset_kpdr21_backtracking_red_brinstar_green_gate ; Backtracking: Red Brinstar Green Gate
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $09CA, $0009  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0063  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_kpdr21_backtracking_parlor_spacejump:
    dw #preset_kpdr21_backtracking_crateria_kihunters_final ; Backtracking: Crateria Kihunters Final
    dw $078D, $8AC6  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $05DC  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $0917, $02EE  ; Layer 2 X position
    dw $09C6, $0010  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $067C  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw #$FFFF

preset_kpdr21_backtracking_terminator_revisit:
    dw #preset_kpdr21_backtracking_parlor_spacejump ; Backtracking: Parlor Spacejump
    dw $078D, $8916  ; DDB
    dw $079B, $92FD  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0A1C, $001C  ; Samus position/state
    dw $0A1E, $0304  ; More position/state
    dw $0AF6, $0101  ; Samus X
    dw $0AFA, $0086  ; Samus Y
    dw #$FFFF

preset_kpdr21_backtracking_green_pirate_shaft_revisit:
    dw #preset_kpdr21_backtracking_terminator_revisit ; Backtracking: Terminator Revisit
    dw $078D, $895E  ; DDB
    dw $079B, $990D  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0073  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw #$FFFF

preset_kpdr21_tourian_metroids_1:
    dw #preset_kpdr21_backtracking_green_pirate_shaft_revisit ; Backtracking: Green Pirate Shaft Revisit
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $09C2, $00B0  ; Health
    dw $09C6, $0012  ; Missiles
    dw $09CA, $0008  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw $D820, $0FC1  ; Events
    dw $D8B2, $6C01  ; Doors
    dw $D90C, $0100  ; Map Stations
    dw #$FFFF

preset_kpdr21_tourian_metroids_2:
    dw #preset_kpdr21_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00EC  ; Health
    dw $09C6, $0014  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0021  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF

preset_kpdr21_tourian_metroids_3:
    dw #preset_kpdr21_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0109  ; Screen Y position in pixels
    dw $0919, $00C6  ; Layer 2 Y position
    dw $09C2, $0164  ; Health
    dw $09CA, $0009  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C2  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0023  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF

preset_kpdr21_tourian_metroids_4:
    dw #preset_kpdr21_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $018F  ; Health
    dw $0AF6, $059E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0027  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF

preset_kpdr21_tourian_giant_hoppers:
    dw #preset_kpdr21_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $A9E4  ; DDB
    dw $079B, $DBCD  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $09CA, $000A  ; Supers
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $0058  ; Samus X
    dw $0AFA, $01CB  ; Samus Y
    dw $D822, $002F  ; Events
    dw $D8C4, $000F  ; Doors
    dw #$FFFF

preset_kpdr21_tourian_baby_skip:
    dw #preset_kpdr21_tourian_giant_hoppers ; Tourian: Giant Hoppers
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0171  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01D8  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF

preset_kpdr21_tourian_gadora_room:
    dw #preset_kpdr21_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AA44  ; DDB
    dw $079B, $DCFF  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $0117  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D1  ; Layer 2 Y position
    dw $09CA, $0009  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DC  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C4, $00AF  ; Doors
    dw #$FFFF

preset_kpdr21_tourian_zeb_skip:
    dw #preset_kpdr21_tourian_gadora_room ; Tourian: Gadora Room
    dw $078D, $AAA4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021A  ; Screen Y position in pixels
    dw $0919, $0193  ; Layer 2 Y position
    dw $09CA, $0007  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0038  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF

preset_kpdr21_tourian_mother_brain_2:
    dw #preset_kpdr21_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAC8  ; DDB
    dw $079B, $DD58  ; MDB
    dw $07F3, $0021  ; Music Bank
    dw $07F5, $0000  ; Music Track
    dw $090F, $79FF  ; Screen subpixel X position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0176  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $0AF6, $00CF  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D820, $0FC5  ; Events
    dw #$FFFF

preset_kpdr21_tourian_mother_brain_3:
    dw #preset_kpdr21_tourian_mother_brain_2 ; Tourian: Mother Brain 2
    dw $09A6, $1009  ; Beams
    dw $09C2, $018F  ; Health
    dw $09C6, $0000  ; Missiles
    dw $09CE, $0000  ; Pbs
    dw $0A76, $8000  ; Hyper beam
    dw $D82C, $0203  ; Bosses
    dw #$FFFF

preset_kpdr21_tourian_zebes_escape:
    dw #preset_kpdr21_tourian_mother_brain_3 ; Tourian: Mother Brain 3
    dw $09A6, $1009  ; Beams
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $009E  ; Samus Y
    dw $D820, $4FC5  ; Events
    dw #$FFFF

preset_kpdr21_tourian_escape_room_3:
    dw #preset_kpdr21_tourian_zebes_escape ; Tourian: Zebes Escape
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DF  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_kpdr21_tourian_escape_room_4:
    dw #preset_kpdr21_tourian_escape_room_3 ; Tourian: Escape Room 3
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

preset_kpdr21_tourian_escape_climb:
    dw #preset_kpdr21_tourian_escape_room_4 ; Tourian: Escape Room 4
    dw $078D, $AB1C  ; DDB
    dw $079B, $DEDE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00F1  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $00FB  ; Screen Y position in pixels
    dw $0917, $00B4  ; Layer 2 X position
    dw $0919, $00BC  ; Layer 2 Y position
    dw $09C2, $0171  ; Health
    dw $0AF6, $0151  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_kpdr21_tourian_escape_parlor:
    dw #preset_kpdr21_tourian_escape_climb ; Tourian: Escape Climb
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $BFFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6801  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00DE  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01DA  ; Samus X
    dw $0AFA, $004B  ; Samus Y
    dw #$FFFF
