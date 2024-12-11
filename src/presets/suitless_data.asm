
preset_suitless_bombs_ceres_elevator:
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

preset_suitless_bombs_ceres_escape:
    dw #preset_suitless_bombs_ceres_elevator ; Bombs: Ceres Elevator
    dw $078D, $ABAC  ; DDB
    dw $079B, $E0B5  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $2001  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $093F, $0002  ; Ceres escape flag
    dw $09C2, $0018  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0033  ; Samus X
    dw $0AF8, $C000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $D82E, $0001  ; Bosses
    dw #$FFFF

preset_suitless_bombs_magnet_stairs:
    dw #preset_suitless_bombs_ceres_escape ; Bombs: Ceres Escape
    dw $078D, $ABA0  ; DDB
    dw $079B, $E021  ; MDB
    dw $090F, $DC00  ; Screen subpixel X position
    dw $0AF6, $003E  ; Samus X
    dw $0AF8, $F800  ; Samus subpixel X
    dw $0AFA, $0092  ; Samus Y
    dw #$FFFF

preset_suitless_bombs_escape_elevator:
    dw #preset_suitless_bombs_magnet_stairs ; Bombs: Magnet Stairs
    dw $078D, $AB70  ; DDB
    dw $079B, $DF8D  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $AC01  ; Screen subpixel Y position
    dw $0AF6, $002D  ; Samus X
    dw $0AF8, $4C00  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $0000  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_bombs_ship:
    dw #preset_suitless_bombs_escape_elevator ; Bombs: Escape Elevator
    dw $078D, $88FE  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $0006  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $03D0  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $093F, $0000  ; Ceres escape flag
    dw $09C2, $0063  ; Health
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0481  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $0440  ; Samus Y
    dw $0AFC, $8000  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_bombs_parlor_down:
    dw #preset_suitless_bombs_ship ; Bombs: Ship
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0A1C, $0010  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $003B  ; Samus X
    dw $0AF8, $D800  ; Samus subpixel X
    dw $0AFA, $048B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_bombs_climb_down:
    dw #preset_suitless_bombs_parlor_down ; Bombs: Parlor Down
    dw $078D, $8916  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0317  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01A7  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $04BB  ; Samus Y
    dw #$FFFF

preset_suitless_bombs_pit_room_down:
    dw #preset_suitless_bombs_climb_down ; Bombs: Climb Down
    dw $078D, $898E  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0800  ; Screen Y position in pixels
    dw $0919, $0600  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $088B  ; Samus Y
    dw #$FFFF

preset_suitless_bombs_morph:
    dw #preset_suitless_bombs_pit_room_down ; Bombs: Pit Room Down
    dw $078D, $8B86  ; DDB
    dw $079B, $97B5  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0007  ; Samus position/state
    dw $0AF6, $0083  ; Samus X
    dw $0AF8, $3FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_bombs_construction_zone_down:
    dw #preset_suitless_bombs_morph ; Bombs: Morph
    dw $078D, $8B9E  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F5, $0007  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0540  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09A2, $0004  ; Equipped Items
    dw $09A4, $0004  ; Collected Items
    dw $0A1C, $0001  ; Samus position/state
    dw $0AF6, $07C7  ; Samus X
    dw $0AF8, $5000  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $D872, $0400  ; Items
    dw #$FFFF

preset_suitless_bombs_construction_zone_up:
    dw #preset_suitless_bombs_construction_zone_down ; Bombs: Construction Zone Down
    dw $078D, $8EDA  ; DDB
    dw $079B, $A107  ; MDB
    dw $090F, $5001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0005  ; Missiles
    dw $09C8, $0005  ; Max missiles
    dw $0AF6, $0057  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $0004  ; Items
    dw #$FFFF

preset_suitless_bombs_pit_room_up:
    dw #preset_suitless_bombs_construction_zone_up ; Bombs: Construction Zone Up
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $007A  ; Samus X
    dw $0AF8, $AFFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_bombs_climb_up:
    dw #preset_suitless_bombs_pit_room_up ; Bombs: Pit Room Up
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $09C2, $0059  ; Health
    dw $0A1C, $000C  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0023  ; Samus X
    dw $0AF8, $CFFF  ; Samus subpixel X
    dw $D820, $0001  ; Events
    dw $D8B2, $0400  ; Doors
    dw #$FFFF

preset_suitless_bombs_parlor_up:
    dw #preset_suitless_bombs_climb_up ; Bombs: Climb Up
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $0063  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01A0  ; Samus X
    dw $0AF8, $C000  ; Samus subpixel X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_suitless_bombs_flyway:
    dw #preset_suitless_bombs_parlor_up ; Bombs: Parlor Up
    dw $078D, $8B3E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $01E9  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $016E  ; Layer 2 Y position
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $036B  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $0270  ; Samus Y
    dw $0AFC, $6BFF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_bombs_bomb_torizo:
    dw #preset_suitless_bombs_flyway ; Bombs: Flyway
    dw $078D, $8982  ; DDB
    dw $079B, $9879  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02C3  ; Samus X
    dw $0AF8, $F7FF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $D8B2, $2400  ; Doors
    dw #$FFFF

preset_suitless_power_bombs_alcatraz:
    dw #preset_suitless_bombs_bomb_torizo ; Bombs: Bomb Torizo
    dw $078D, $8BAA  ; DDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C6, $0005  ; Missiles
    dw $0A1C, $0010  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0031  ; Samus X
    dw $0AF8, $9FFF  ; Samus subpixel X
    dw $D828, $0004  ; Bosses
    dw $D870, $0080  ; Items
    dw $D8B2, $2C00  ; Doors
    dw #$FFFF

preset_suitless_power_bombs_terminator:
    dw #preset_suitless_power_bombs_alcatraz ; Power Bombs: Alcatraz
    dw $078D, $8BB6  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0087  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0917, $0065  ; Layer 2 X position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00E9  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_power_bombs_green_pirate_shaft:
    dw #preset_suitless_power_bombs_terminator ; Power Bombs: Terminator
    dw $078D, $895E  ; DDB
    dw $079B, $990D  ; MDB
    dw $090F, $7200  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01F4  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0177  ; Layer 2 Y position
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0050  ; Samus X
    dw $0AF8, $E5FF  ; Samus subpixel X
    dw $0AFA, $0294  ; Samus Y
    dw $D870, $0180  ; Items
    dw #$FFFF

preset_suitless_power_bombs_mushroom_kingdom:
    dw #preset_suitless_power_bombs_green_pirate_shaft ; Power Bombs: Green Pirate Shaft
    dw $078D, $8BE6  ; DDB
    dw $079B, $99BD  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0600  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0480  ; Layer 2 Y position
    dw $09C2, $008B  ; Health
    dw $0AF6, $0046  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $068B  ; Samus Y
    dw #$FFFF

preset_suitless_power_bombs_green_brinstar_elevator:
    dw #preset_suitless_power_bombs_mushroom_kingdom ; Power Bombs: Mushroom Kingdom
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0008  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0084  ; Samus X
    dw $0AF8, $5B00  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_power_bombs_early_supers:
    dw #preset_suitless_power_bombs_green_brinstar_elevator ; Power Bombs: Green Brinstar Elevator
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
    dw $0AF6, $00A9  ; Samus X
    dw $0AF8, $3FFF  ; Samus subpixel X
    dw $0AFA, $048B  ; Samus Y
    dw $D8B4, $0002  ; Doors
    dw #$FFFF

preset_suitless_power_bombs_brinstar_reserve:
    dw #preset_suitless_power_bombs_early_supers ; Power Bombs: Early Supers
    dw $078D, $8CD6  ; DDB
    dw $079B, $9BC8  ; MDB
    dw $090F, $3FFF  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $0077  ; Health
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $0AF6, $02CF  ; Samus X
    dw $0AF8, $DFFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $D872, $0401  ; Items
    dw $D8B4, $0042  ; Doors
    dw #$FFFF

preset_suitless_power_bombs_reverse_mockball:
    dw #preset_suitless_power_bombs_brinstar_reserve ; Power Bombs: Brinstar Reserve
    dw $078D, $8D5A  ; DDB
    dw $079B, $9C07  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $A001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C0, $0001  ; Manual/Auto reserve tank
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09D4, $0064  ; Max reserves
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $003F  ; Samus X
    dw $0AF8, $2000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D872, $040F  ; Items
    dw #$FFFF

preset_suitless_power_bombs_moondance:
    dw #preset_suitless_power_bombs_reverse_mockball ; Power Bombs: Reverse Mockball
    dw $078D, $8D4E  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $061A  ; Screen Y position in pixels
    dw $0919, $0493  ; Layer 2 Y position
    dw $09C2, $008B  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $005E  ; Samus X
    dw $0AF8, $2FFF  ; Samus subpixel X
    dw $0AFA, $068B  ; Samus Y
    dw $D870, $8180  ; Items
    dw $D8B4, $0046  ; Doors
    dw #$FFFF

preset_suitless_power_bombs_etecoon_beetoms:
    dw #preset_suitless_power_bombs_moondance ; Power Bombs: Moondance
    dw $078D, $8DA2  ; DDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0915, $0A1B  ; Screen Y position in pixels
    dw $0919, $0794  ; Layer 2 Y position
    dw $09C6, $000A  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $0A8B  ; Samus Y
    dw #$FFFF

preset_suitless_power_bombs_etecoon_etank:
    dw #preset_suitless_power_bombs_etecoon_beetoms ; Power Bombs: Etecoon Beetoms
    dw $078D, $8CBE  ; DDB
    dw $079B, $9FE5  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $006D  ; Health
    dw $09C6, $0009  ; Missiles
    dw $0AF6, $0040  ; Samus X
    dw $0AF8, $F000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_power_bombs_etecoon_dboosts:
    dw #preset_suitless_power_bombs_etecoon_etank ; Power Bombs: Etecoon E-Tank
    dw $078D, $8F3A  ; DDB
    dw $079B, $A051  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09CA, $0007  ; Supers
    dw $09CC, $000A  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C5  ; Samus X
    dw $0AF8, $5000  ; Samus subpixel X
    dw $D872, $C40F  ; Items
    dw $D8B6, $0010  ; Doors
    dw #$FFFF

preset_suitless_power_bombs_etecoon_climb:
    dw #preset_suitless_power_bombs_etecoon_dboosts ; Power Bombs: Etecoon D-Boosts
    dw $078D, $8F5E  ; DDB
    dw $079B, $A011  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $00FB  ; Health
    dw $0AF6, $04D2  ; Samus X
    dw $0AF8, $0FFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_suitless_xray_dachora_room_revisit:
    dw #preset_suitless_power_bombs_etecoon_climb ; Power Bombs: Etecoon Climb
    dw $078D, $8F46  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $0700  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0540  ; Layer 2 Y position
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0151  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D870, $A180  ; Items
    dw #$FFFF

preset_suitless_xray_big_pink:
    dw #preset_suitless_xray_dachora_room_revisit ; X-Ray: Dachora Room Revisit
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $06B9  ; Samus X
    dw $0AF8, $1BFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_xray_mission_impossible:
    dw #preset_suitless_xray_big_pink ; X-Ray: Big Pink
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0207  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $031A  ; Screen Y position in pixels
    dw $0917, $0185  ; Layer 2 X position
    dw $0919, $0253  ; Layer 2 Y position
    dw $09C2, $00E7  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09C8, $0019  ; Max missiles
    dw $09CE, $0002  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0269  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw $D872, $C42F  ; Items
    dw $D8B4, $0146  ; Doors
    dw #$FFFF

preset_suitless_xray_spore_spawn_skip:
    dw #preset_suitless_xray_mission_impossible ; X-Ray: Mission Impossible
    dw $078D, $8E02  ; DDB
    dw $079B, $9E11  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09CA, $0004  ; Supers
    dw $09CE, $0007  ; Pbs
    dw $09D0, $000A  ; Max pbs
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $01BB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $0190  ; Samus Y
    dw $D872, $C52F  ; Items
    dw #$FFFF

preset_suitless_xray_spore_spawn_farm_in:
    dw #preset_suitless_xray_spore_spawn_skip ; X-Ray: Spore Spawn Skip
    dw $078D, $8E6E  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $03C5  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0500  ; Screen Y position in pixels
    dw $0917, $02D3  ; Layer 2 X position
    dw $0919, $03C0  ; Layer 2 Y position
    dw $09C6, $000D  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $09CE, $0006  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $048D  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw $0AFA, $058B  ; Samus Y
    dw #$FFFF

preset_suitless_xray_wave_gate:
    dw #preset_suitless_xray_spore_spawn_farm_in ; X-Ray: Spore Spawn Farm In
    dw $078D, $8F82  ; DDB
    dw $090F, $7001  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $044C  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0339  ; Layer 2 Y position
    dw $09C2, $010F  ; Health
    dw $09C6, $0011  ; Missiles
    dw $09CA, $0007  ; Supers
    dw $09CC, $000F  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $03DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $04DB  ; Samus Y
    dw $D870, $E180  ; Items
    dw $D8B6, $0030  ; Doors
    dw #$FFFF

preset_suitless_xray_wave_gate_out:
    dw #preset_suitless_xray_wave_gate ; X-Ray: Wave Gate
    dw $078D, $8FBE  ; DDB
    dw $079B, $A15B  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $000D  ; Missiles
    dw $09CA, $0006  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003A  ; Samus X
    dw $0AF8, $CFFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $000C  ; Items
    dw $D8B6, $00F0  ; Doors
    dw #$FFFF

preset_suitless_xray_big_pink_revisit:
    dw #preset_suitless_xray_wave_gate_out ; X-Ray: Wave Gate Out
    dw $078D, $8FCA  ; DDB
    dw $079B, $A130  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $3C00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0AF6, $0022  ; Samus X
    dw $0AF8, $C000  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_suitless_xray_green_hill_zone:
    dw #preset_suitless_xray_big_pink_revisit ; X-Ray: Big Pink Revisit
    dw $078D, $8FB2  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $77FF  ; Screen subpixel Y position
    dw $0915, $0618  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0492  ; Layer 2 Y position
    dw $09A6, $1000  ; Equipped Beams
    dw $09A8, $1000  ; Collected Beams
    dw $09C6, $0011  ; Missiles
    dw $09C8, $001E  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0373  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw $0AFA, $068B  ; Samus Y
    dw $D872, $C5EF  ; Items
    dw $D8B4, $0346  ; Doors
    dw #$FFFF

preset_suitless_xray_blue_brin_hopper:
    dw #preset_suitless_xray_green_hill_zone ; X-Ray: Green Hill Zone
    dw $078D, $8DEA  ; DDB
    dw $079B, $9E52  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $00D4  ; Screen X position in pixels
    dw $0913, $8401  ; Screen subpixel Y position
    dw $0915, $0017  ; Screen Y position in pixels
    dw $0917, $009F  ; Layer 2 X position
    dw $0919, $0011  ; Layer 2 Y position
    dw $09CE, $0004  ; Pbs
    dw $0AF6, $0146  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B6, $00F1  ; Doors
    dw #$FFFF

preset_suitless_xray_green_hill_zone_2:
    dw #preset_suitless_xray_blue_brin_hopper ; X-Ray: Blue Brin Hopper
    dw $078D, $8E86  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09CA, $0002  ; Supers
    dw $09CE, $0009  ; Pbs
    dw $09D0, $000F  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0048  ; Samus X
    dw $0AF8, $1FFF  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $D872, $CDEF  ; Items
    dw $D8B6, $00F3  ; Doors
    dw #$FFFF

preset_suitless_xray_noob_bridge:
    dw #preset_suitless_xray_green_hill_zone_2 ; X-Ray: Green Hill Zone 2
    dw $078D, $8E9E  ; DDB
    dw $079B, $9E52  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $06ED  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0531  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C6, $0013  ; Missiles
    dw $09C8, $0023  ; Max missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $074D  ; Samus X
    dw $0AF8, $CFFF  ; Samus subpixel X
    dw $0AFA, $03AB  ; Samus Y
    dw $D872, $CFEF  ; Items
    dw #$FFFF

preset_suitless_xray_red_tower:
    dw #preset_suitless_xray_noob_bridge ; X-Ray: Noob Bridge
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0005  ; Samus position/state
    dw $0AF6, $0561  ; Samus X
    dw $0AF8, $8FFF  ; Samus subpixel X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B6, $00FB  ; Doors
    dw #$FFFF

preset_suitless_xray_xray_dboost:
    dw #preset_suitless_xray_red_tower ; X-Ray: Red Tower
    dw $078D, $8F0A  ; DDB
    dw $079B, $A253  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $3001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0600  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0480  ; Layer 2 Y position
    dw $09CE, $0008  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003B  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $068B  ; Samus Y
    dw $D8B6, $02FB  ; Doors
    dw #$FFFF

preset_suitless_xray_xray_2:
    dw #preset_suitless_xray_xray_dboost ; X-Ray: X-Ray D-Boost
    dw $078D, $9036  ; DDB
    dw $079B, $A293  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $3400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $014F  ; Health
    dw $09C6, $000E  ; Missiles
    dw $0AF6, $0063  ; Samus X
    dw $0AF8, $E000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B6, $06FB  ; Doors
    dw #$FFFF

preset_suitless_xray_xray_escape:
    dw #preset_suitless_xray_xray_2 ; X-Ray: X-Ray
    dw $078D, $905A  ; DDB
    dw $079B, $A2CE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09A2, $9004  ; Equipped Items
    dw $09A4, $9004  ; Collected Items
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $017E  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $D874, $004C  ; Items
    dw #$FFFF

preset_suitless_warehouse_red_tower_down:
    dw #preset_suitless_xray_xray_escape ; X-Ray: X-Ray Escape
    dw $078D, $9072  ; DDB
    dw $079B, $A293  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0917, $0700  ; Layer 2 X position
    dw $09C2, $0091  ; Health
    dw $09CE, $000C  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $07A4  ; Samus X
    dw $0AF8, $EFFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_warehouse_skree_boost:
    dw #preset_suitless_warehouse_red_tower_down ; Warehouse: Red Tower Down
    dw $078D, $9066  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $A001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $091A  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $06D3  ; Layer 2 Y position
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $005E  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $098B  ; Samus Y
    dw #$FFFF

preset_suitless_warehouse_below_spazer:
    dw #preset_suitless_warehouse_skree_boost ; Warehouse: Skree Boost
    dw $078D, $9042  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0092  ; Health
    dw $0AF6, $01E6  ; Samus X
    dw $0AF8, $C000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_warehouse_below_spazer_2:
    dw #preset_suitless_warehouse_below_spazer ; Warehouse: Below Spazer
    dw $078D, $9126  ; DDB
    dw $079B, $A447  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09A6, $1004  ; Equipped Beams
    dw $09A8, $1004  ; Collected Beams
    dw $09CA, $0002  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004C  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $D874, $044C  ; Items
    dw $D8B6, $86FB  ; Doors
    dw #$FFFF

preset_suitless_warehouse_warehouse_entrance:
    dw #preset_suitless_warehouse_below_spazer_2 ; Warehouse: Below Spazer 2
    dw $078D, $A348  ; DDB
    dw $079B, $CF80  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $9800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0036  ; Samus X
    dw $0AF8, $E800  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_suitless_warehouse_warehouse_zeelas:
    dw #preset_suitless_warehouse_warehouse_entrance ; Warehouse: Warehouse Entrance
    dw $078D, $A384  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $01D2  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $002F  ; Screen Y position in pixels
    dw $0917, $015D  ; Layer 2 X position
    dw $0919, $0023  ; Layer 2 Y position
    dw $09CA, $0002  ; Supers
    dw $0AF6, $0232  ; Samus X
    dw $0AF8, $4FFF  ; Samus subpixel X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF

preset_suitless_warehouse_warehouse_kihunters:
    dw #preset_suitless_warehouse_warehouse_zeelas ; Warehouse: Warehouse Zeelas
    dw $078D, $923A  ; DDB
    dw $079B, $A471  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $016E  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $0AFA, $0190  ; Samus Y
    dw #$FFFF

preset_suitless_warehouse_minikraid:
    dw #preset_suitless_warehouse_warehouse_kihunters ; Warehouse: Warehouse Kihunters
    dw $078D, $9156  ; DDB
    dw $079B, $A4DA  ; MDB
    dw $09C6, $000F  ; Missiles
    dw $09C8, $0028  ; Max missiles
    dw $09CE, $000B  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $016B  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $D874, $144C  ; Items
    dw #$FFFF

preset_suitless_warehouse_kraid:
    dw #preset_suitless_warehouse_minikraid ; Warehouse: Mini-Kraid
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0917, $0100  ; Layer 2 X position
    dw $09C2, $007C  ; Health
    dw $09C6, $000B  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $0AF6, $01DA  ; Samus X
    dw $0AF8, $8FFF  ; Samus subpixel X
    dw $D8B8, $0024  ; Doors
    dw #$FFFF

preset_suitless_warehouse_kraid_exit:
    dw #preset_suitless_warehouse_kraid ; Warehouse: Kraid
    dw $078D, $91B6  ; DDB
    dw $079B, $A59F  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9800  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00B3  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CE, $000C  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004F  ; Samus X
    dw $0AF8, $B000  ; Samus subpixel X
    dw $D828, $0104  ; Bosses
    dw $D8B8, $00A4  ; Doors
    dw #$FFFF

preset_suitless_warehouse_minikraid_revisit:
    dw #preset_suitless_warehouse_kraid_exit ; Warehouse: Kraid Exit
    dw $078D, $91CE  ; DDB
    dw $079B, $A56B  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $00A3  ; Health
    dw $0AF6, $005B  ; Samus X
    dw $0AF8, $3FFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_warehouse_kihunters_revisit:
    dw #preset_suitless_warehouse_minikraid_revisit ; Warehouse: Mini-Kraid Revisit
    dw $078D, $91AA  ; DDB
    dw $079B, $A521  ; MDB
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $000A  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $0AF6, $0097  ; Samus X
    dw $0AF8, $2FFF  ; Samus subpixel X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $00AC  ; Doors
    dw #$FFFF

preset_suitless_warehouse_kraid_etank:
    dw #preset_suitless_warehouse_kihunters_revisit ; Warehouse: Kihunters Revisit
    dw $078D, $916E  ; DDB
    dw $079B, $A471  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $00FF  ; Screen Y position in pixels
    dw $0919, $00FF  ; Layer 2 Y position
    dw $0AF6, $005B  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $00AD  ; Doors
    dw #$FFFF

preset_suitless_warehouse_kraid_zeelas_revisit:
    dw #preset_suitless_warehouse_kraid_etank ; Warehouse: Kraid E-Tank
    dw $078D, $914A  ; DDB
    dw $079B, $A4B1  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01F3  ; Health
    dw $09C4, $01F3  ; Max health
    dw $09C6, $0009  ; Missiles
    dw $09CE, $000F  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0087  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $0AFA, $009B  ; Samus Y
    dw $D874, $1C4C  ; Items
    dw $D8B8, $00AF  ; Doors
    dw #$FFFF

preset_suitless_warehouse_mouthball:
    dw #preset_suitless_warehouse_kraid_zeelas_revisit ; Warehouse: Kraid Zeelas Revisit
    dw $078D, $9162  ; DDB
    dw $079B, $A471  ; MDB
    dw $090F, $0001  ; Screen subpixel X position
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0915, $0005  ; Screen Y position in pixels
    dw $0919, $0005  ; Layer 2 Y position
    dw $09CA, $000A  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $001E  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_upper_norfair_1_ice_mockball:
    dw #preset_suitless_warehouse_mouthball ; Warehouse: Mouthball
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0919, $0257  ; Layer 2 Y position
    dw $09CA, $0008  ; Supers
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $038E  ; Samus Y
    dw $0AFC, $AFFF  ; Samus subpixel Y
    dw $D8B8, $08AF  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_1_ice_trippers_in:
    dw #preset_suitless_upper_norfair_1_ice_mockball ; Upper Norfair 1: Ice Mockball
    dw $078D, $92BE  ; DDB
    dw $079B, $A815  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0AF6, $0388  ; Samus X
    dw $0AF8, $7000  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_upper_norfair_1_ice_snakes_in:
    dw #preset_suitless_upper_norfair_1_ice_trippers_in ; Upper Norfair 1: Ice Trippers In
    dw $078D, $931E  ; DDB
    dw $079B, $A75D  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01C9  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $003A  ; Samus X
    dw $0AF8, $2000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_upper_norfair_1_ice_snakes_out:
    dw #preset_suitless_upper_norfair_1_ice_snakes_in ; Upper Norfair 1: Ice Snakes In
    dw $078D, $937E  ; DDB
    dw $079B, $A890  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09A6, $1006  ; Equipped Beams
    dw $09A8, $1006  ; Collected Beams
    dw $09C2, $016A  ; Health
    dw $09CA, $0009  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $00BA  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $D876, $0004  ; Items
    dw #$FFFF

preset_suitless_upper_norfair_1_ice_escape:
    dw #preset_suitless_upper_norfair_1_ice_snakes_out ; Upper Norfair 1: Ice Snakes Out
    dw $078D, $935A  ; DDB
    dw $079B, $A8B9  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $D001  ; Screen subpixel X position
    dw $0913, $2400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $0126  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C5  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_suitless_upper_norfair_1_business_center_down:
    dw #preset_suitless_upper_norfair_1_ice_escape ; Upper Norfair 1: Ice Escape
    dw $078D, $9276  ; DDB
    dw $079B, $A815  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $33FF  ; Screen subpixel Y position
    dw $0917, $0480  ; Layer 2 X position
    dw $09C2, $00F6  ; Health
    dw $0AF6, $0672  ; Samus X
    dw $0AF8, $B000  ; Samus subpixel X
    dw #$FFFF

preset_suitless_upper_norfair_1_hijump_etank:
    dw #preset_suitless_upper_norfair_1_business_center_down ; Upper Norfair 1: Business Center Down
    dw $078D, $932A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $051A  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $03D3  ; Layer 2 Y position
    dw $09C6, $0008  ; Missiles
    dw $09CA, $0008  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0030  ; Samus X
    dw $0AF8, $1FFF  ; Samus subpixel X
    dw $0AFA, $058B  ; Samus Y
    dw $D8B8, $28AF  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_1_hijump_boots:
    dw #preset_suitless_upper_norfair_1_hijump_etank ; Upper Norfair 1: Hi-Jump E-Tank
    dw $078D, $92D6  ; DDB
    dw $079B, $AA41  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0919, $011F  ; Layer 2 Y position
    dw $09C2, $0257  ; Health
    dw $09C4, $0257  ; Max health
    dw $09CA, $0009  ; Supers
    dw $0AF6, $003C  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $0AFA, $01BB  ; Samus Y
    dw $D876, $0104  ; Items
    dw $D8BA, $0001  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_1_hijump_etank_revisit:
    dw #preset_suitless_upper_norfair_1_hijump_boots ; Upper Norfair 1: Hi-Jump Boots
    dw $078D, $9426  ; DDB
    dw $079B, $A9E5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $9104  ; Equipped Items
    dw $09A4, $9104  ; Collected Items
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B4  ; Samus X
    dw $0AF8, $D000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $0124  ; Items
    dw #$FFFF

preset_suitless_upper_norfair_1_business_center_up:
    dw #preset_suitless_upper_norfair_1_hijump_etank_revisit ; Upper Norfair 1: Hi-Jump E-Tank Revisit
    dw $078D, $93F6  ; DDB
    dw $079B, $AA41  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C6, $000D  ; Missiles
    dw $09C8, $002D  ; Max missiles
    dw $0AF6, $0197  ; Samus X
    dw $0AF8, $0FFF  ; Samus subpixel X
    dw $D876, $01A4  ; Items
    dw #$FFFF

preset_suitless_upper_norfair_1_precathedral:
    dw #preset_suitless_upper_norfair_1_business_center_up ; Upper Norfair 1: Business Center Up
    dw $078D, $941A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $0FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $02EF  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0233  ; Layer 2 Y position
    dw $0AF6, $00A4  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_suitless_upper_norfair_1_cathedral:
    dw #preset_suitless_upper_norfair_1_precathedral ; Upper Norfair 1: Pre-Cathedral
    dw $078D, $92CA  ; DDB
    dw $079B, $A7B3  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0002  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $0919, $0002  ; Layer 2 Y position
    dw $09C2, $0210  ; Health
    dw $09C6, $000B  ; Missiles
    dw $09CA, $0008  ; Supers
    dw $0AF6, $029F  ; Samus X
    dw $0AF8, $3FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $2CAF  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_1_rising_tide:
    dw #preset_suitless_upper_norfair_1_cathedral ; Upper Norfair 1: Cathedral
    dw $078D, $92B2  ; DDB
    dw $079B, $A788  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $014B  ; Health
    dw $09C6, $0010  ; Missiles
    dw $09C8, $0032  ; Max missiles
    dw $0AF6, $02B5  ; Samus X
    dw $0AF8, $DFFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $D876, $01A6  ; Items
    dw $D8B8, $2EAF  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_1_bubble_mountain:
    dw #preset_suitless_upper_norfair_1_rising_tide ; Upper Norfair 1: Rising Tide
    dw $078D, $929A  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00C3  ; Health
    dw $0AF6, $04B1  ; Samus X
    dw $0AF8, $9FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_upper_norfair_1_bat_cave:
    dw #preset_suitless_upper_norfair_1_bubble_mountain ; Upper Norfair 1: Bubble Mountain
    dw $078D, $973E  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $0003  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0002  ; Layer 2 Y position
    dw $09C2, $00C1  ; Health
    dw $09C6, $000F  ; Missiles
    dw $0AF6, $01C7  ; Samus X
    dw $0AF8, $6FFF  ; Samus subpixel X
    dw $D8BA, $0011  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_1_speed_hallway:
    dw #preset_suitless_upper_norfair_1_bat_cave ; Upper Norfair 1: Bat Cave
    dw $078D, $958E  ; DDB
    dw $079B, $B07A  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $001D  ; Layer 2 Y position
    dw $09C2, $024A  ; Health
    dw $09C6, $0032  ; Missiles
    dw $09CA, $000F  ; Supers
    dw $09D6, $0064  ; Reserves
    dw $0AF6, $008F  ; Samus X
    dw $0AF8, $9FFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_upper_norfair_1_speed_hallway_out:
    dw #preset_suitless_upper_norfair_1_speed_hallway ; Upper Norfair 1: Speed Hallway
    dw $078D, $95B2  ; DDB
    dw $079B, $AD1B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $B104  ; Equipped Items
    dw $09A4, $B104  ; Collected Items
    dw $09C2, $0172  ; Health
    dw $09C6, $0037  ; Missiles
    dw $09C8, $0037  ; Max missiles
    dw $09CA, $000E  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003F  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw $D878, $0006  ; Items
    dw $D8BA, $0031  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_1_bat_cave_out:
    dw #preset_suitless_upper_norfair_1_speed_hallway_out ; Upper Norfair 1: Speed Hallway Out
    dw $078D, $95BE  ; DDB
    dw $079B, $ACF0  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001B  ; Screen Y position in pixels
    dw $0919, $0014  ; Layer 2 Y position
    dw $09C2, $0115  ; Health
    dw $0AF8, $9DFF  ; Samus subpixel X
    dw $D822, $0020  ; Events
    dw #$FFFF

preset_suitless_upper_norfair_1_single_chamber:
    dw #preset_suitless_upper_norfair_1_bat_cave_out ; Upper Norfair 1: Bat Cave Out
    dw $078D, $97AA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $3FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $00FD  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $00BD  ; Layer 2 Y position
    dw $09C2, $0222  ; Health
    dw $09CA, $000F  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01AF  ; Samus X
    dw $0AF8, $1FFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_suitless_upper_norfair_1_double_chamber:
    dw #preset_suitless_upper_norfair_1_single_chamber ; Upper Norfair 1: Single Chamber
    dw $078D, $9582  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $011C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09C2, $01F0  ; Health
    dw $09C6, $0035  ; Missiles
    dw $09CA, $000E  ; Supers
    dw $0AF6, $00BD  ; Samus X
    dw $0AF8, $2FFF  ; Samus subpixel X
    dw $D8BA, $0071  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_2_double_chamber_out:
    dw #preset_suitless_upper_norfair_1_double_chamber ; Upper Norfair 1: Double Chamber
    dw $078D, $961E  ; DDB
    dw $079B, $ADDE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A6, $1007  ; Equipped Beams
    dw $09A8, $1007  ; Collected Beams
    dw $09C2, $018C  ; Health
    dw $09C6, $003A  ; Missiles
    dw $09C8, $003C  ; Max missiles
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004D  ; Samus X
    dw $0AF8, $4FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $001E  ; Items
    dw $D8BA, $00F1  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_2_single_chamber_out:
    dw #preset_suitless_upper_norfair_2_double_chamber_out ; Upper Norfair 2: Double Chamber Out
    dw $078D, $962A  ; DDB
    dw $079B, $ADAD  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $1D80  ; Screen subpixel X position
    dw $0913, $3800  ; Screen subpixel Y position
    dw $09C2, $0129  ; Health
    dw $0AF6, $004C  ; Samus X
    dw $0AF8, $E000  ; Samus subpixel X
    dw #$FFFF

preset_suitless_upper_norfair_2_bubble_mountain_down:
    dw #preset_suitless_upper_norfair_2_single_chamber_out ; Upper Norfair 2: Single Chamber Out
    dw $078D, $9606  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $09C2, $00F3  ; Health
    dw $09C6, $0038  ; Missiles
    dw $0AF6, $008A  ; Samus X
    dw $0AF8, $2000  ; Samus subpixel X
    dw #$FFFF

preset_suitless_upper_norfair_2_croc_gate:
    dw #preset_suitless_upper_norfair_2_bubble_mountain_down ; Upper Norfair 2: Bubble Mountain Down
    dw $078D, $95CA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $02FA  ; Screen Y position in pixels
    dw $0919, $023B  ; Layer 2 Y position
    dw $09C2, $00E9  ; Health
    dw $09CA, $000E  ; Supers
    dw $09CE, $000E  ; Pbs
    dw $0AF6, $005C  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_suitless_upper_norfair_2_red_pirate_shaft:
    dw #preset_suitless_upper_norfair_2_croc_gate ; Upper Norfair 2: Croc Gate
    dw $078D, $956A  ; DDB
    dw $079B, $AF72  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0004  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $00EC  ; Screen Y position in pixels
    dw $0917, $0003  ; Layer 2 X position
    dw $0919, $00EC  ; Layer 2 Y position
    dw $09C2, $00C0  ; Health
    dw $0AF6, $00A4  ; Samus X
    dw $0AF8, $6000  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_suitless_upper_norfair_2_acid_snakes_tunnel:
    dw #preset_suitless_upper_norfair_2_red_pirate_shaft ; Upper Norfair 2: Red Pirate Shaft
    dw $078D, $9726  ; DDB
    dw $079B, $B139  ; MDB
    dw $090F, $1FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $09C2, $00AF  ; Health
    dw $0AF6, $00B3  ; Samus X
    dw $0AF8, $3FFF  ; Samus subpixel X
    dw $0AFA, $02BA  ; Samus Y
    dw #$FFFF

preset_suitless_upper_norfair_2_crocomire:
    dw #preset_suitless_upper_norfair_2_acid_snakes_tunnel ; Upper Norfair 2: Acid Snakes Tunnel
    dw $078D, $974A  ; DDB
    dw $079B, $A923  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0900  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $0065  ; Health
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0008  ; Samus position/state
    dw $0AF6, $0CD0  ; Samus X
    dw $0AF8, $1FFF  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $D8B8, $6EAF  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_2_croc_pbs:
    dw #preset_suitless_upper_norfair_2_crocomire ; Upper Norfair 2: Crocomire
    dw $078D, $93DE  ; DDB
    dw $079B, $AA82  ; MDB
    dw $090F, $A800  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $019B  ; Health
    dw $09C4, $02BB  ; Max health
    dw $09C6, $003C  ; Missiles
    dw $09CA, $000C  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D82A, $0002  ; Bosses
    dw $D876, $01B6  ; Items
    dw $D8BA, $00F3  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_2_croc_shaft_down:
    dw #preset_suitless_upper_norfair_2_croc_pbs ; Upper Norfair 2: Croc PBs
    dw $078D, $946E  ; DDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $011C  ; Screen Y position in pixels
    dw $0919, $011C  ; Layer 2 Y position
    dw $09C2, $0178  ; Health
    dw $09CE, $0013  ; Pbs
    dw $09D0, $0014  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $004D  ; Samus X
    dw $0AF8, $D000  ; Samus subpixel X
    dw $0AFA, $01AB  ; Samus Y
    dw $D876, $03B6  ; Items
    dw #$FFFF

preset_suitless_upper_norfair_2_indiana_jones:
    dw #preset_suitless_upper_norfair_2_croc_shaft_down ; Upper Norfair 2: Croc Shaft Down
    dw $078D, $944A  ; DDB
    dw $079B, $AB07  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $0919, $0317  ; Layer 2 Y position
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00AF  ; Samus X
    dw $0AF8, $9000  ; Samus subpixel X
    dw $0AFA, $04BB  ; Samus Y
    dw #$FFFF

preset_suitless_upper_norfair_2_grapple_escape:
    dw #preset_suitless_upper_norfair_2_indiana_jones ; Upper Norfair 2: Indiana Jones
    dw $078D, $94DA  ; DDB
    dw $079B, $AC2B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $F381  ; Screen subpixel X position
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0180  ; Layer 2 Y position
    dw $09A2, $F104  ; Equipped Items
    dw $09A4, $F104  ; Collected Items
    dw $09C2, $0191  ; Health
    dw $09C6, $003F  ; Missiles
    dw $09C8, $0041  ; Max missiles
    dw $09CE, $0012  ; Pbs
    dw $09D2, $0004  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0057  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $D876, $1BB6  ; Items
    dw #$FFFF

preset_suitless_upper_norfair_2_croc_shaft_up:
    dw #preset_suitless_upper_norfair_2_grapple_escape ; Upper Norfair 2: Grapple Escape
    dw $078D, $9516  ; DDB
    dw $079B, $AB8F  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $05DE  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0917, $0466  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $063E  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $026B  ; Samus Y
    dw #$FFFF

preset_suitless_upper_norfair_2_cosine_missile:
    dw #preset_suitless_upper_norfair_2_croc_shaft_up ; Upper Norfair 2: Croc Shaft Up
    dw $078D, $94CE  ; DDB
    dw $079B, $AB07  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $02EE  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0232  ; Layer 2 Y position
    dw $09CA, $000B  ; Supers
    dw $0AF6, $00B3  ; Samus X
    dw $0AF8, $EFFF  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw $D8BA, $00F7  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_2_croc_farm:
    dw #preset_suitless_upper_norfair_2_cosine_missile ; Upper Norfair 2: Cosine Missile
    dw $078D, $94AA  ; DDB
    dw $090F, $5900  ; Screen subpixel X position
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $007F  ; Health
    dw $09C6, $0044  ; Missiles
    dw $09C8, $0046  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00AD  ; Samus X
    dw $0AF8, $05FF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $1FB6  ; Items
    dw #$FFFF

preset_suitless_upper_norfair_2_croc_revisit:
    dw #preset_suitless_upper_norfair_2_croc_farm ; Upper Norfair 2: Croc Farm
    dw $078D, $947A  ; DDB
    dw $079B, $AA82  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0100  ; Layer 2 X position
    dw $09C2, $014C  ; Health
    dw $09C6, $0046  ; Missiles
    dw $09CA, $000F  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01C1  ; Samus X
    dw $0AF8, $E7FF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_upper_norfair_2_croc_speedway_up:
    dw #preset_suitless_upper_norfair_2_croc_revisit ; Upper Norfair 2: Croc Revisit
    dw $078D, $9432  ; DDB
    dw $079B, $A98D  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $00C7  ; Screen X position in pixels
    dw $0913, $9401  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $0AF6, $0127  ; Samus X
    dw $0AF8, $97FF  ; Samus subpixel X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF

preset_suitless_upper_norfair_2_croc_escape:
    dw #preset_suitless_upper_norfair_2_croc_speedway_up ; Upper Norfair 2: Croc Speedway Up
    dw $078D, $93EA  ; DDB
    dw $079B, $A923  ; MDB
    dw $090F, $7780  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $0016  ; Screen Y position in pixels
    dw $0917, $0900  ; Layer 2 X position
    dw $0919, $0010  ; Layer 2 Y position
    dw $09C2, $011D  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0C8A  ; Samus X
    dw $0AF8, $A000  ; Samus subpixel X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $EEAF  ; Doors
    dw #$FFFF

preset_suitless_upper_norfair_2_rmode_blue_suit:
    dw #preset_suitless_upper_norfair_2_croc_escape ; Upper Norfair 2: Croc Escape
    dw $078D, $93AE  ; DDB
    dw $079B, $AA0E  ; MDB
    dw $090F, $82D0  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0027  ; Health
    dw $09C6, $004B  ; Missiles
    dw $09C8, $004B  ; Max missiles
    dw $09CA, $000E  ; Supers
    dw $0AF6, $0031  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $1FF6  ; Items
    dw #$FFFF

preset_suitless_maridia_predraygon_maridia_tube:
    dw #preset_suitless_upper_norfair_2_rmode_blue_suit ; Upper Norfair 2: R-Mode Blue Suit
    dw $078D, $922E  ; DDB
    dw $079B, $CF80  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $0018  ; Health
    dw $09C6, $0041  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $09CE, $0009  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $09D6, $0000  ; Reserves
    dw $0AF6, $008D  ; Samus X
    dw $0AF8, $7000  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $0B3F, $0004  ; Blue suit
    dw #$FFFF

preset_suitless_maridia_predraygon_mt_everest:
    dw #preset_suitless_maridia_predraygon_maridia_tube ; Maridia Pre-Draygon: Maridia Tube
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $00CE  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $009A  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $002C  ; Health
    dw $09C6, $0046  ; Missiles
    dw $09C8, $0050  ; Max missiles
    dw $09CE, $0008  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $012E  ; Samus X
    dw $0AF8, $4FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $EFFF  ; Samus subpixel Y
    dw $D820, $0801  ; Events
    dw $D880, $0100  ; Items
    dw #$FFFF

preset_suitless_maridia_predraygon_crab_supers:
    dw #preset_suitless_maridia_predraygon_mt_everest ; Maridia Pre-Draygon: Mt. Everest
    dw $078D, $A3C0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $F400  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0209  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0186  ; Layer 2 Y position
    dw $09C2, $0040  ; Health
    dw $0A1C, $0041  ; Samus position/state
    dw $0A1E, $0404  ; More position/state
    dw $0AF6, $0160  ; Samus X
    dw $0AF8, $AC00  ; Samus subpixel X
    dw $0AFA, $0299  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_maridia_predraygon_mt_everest_2:
    dw #preset_suitless_maridia_predraygon_crab_supers ; Maridia Pre-Draygon: Crab Supers
    dw $078D, $A45C  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09CA, $0008  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $09CE, $0009  ; Pbs
    dw $0A1C, $001D  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0AF6, $02C6  ; Samus X
    dw $0AF8, $4BFF  ; Samus subpixel X
    dw $D880, $0300  ; Items
    dw #$FFFF

preset_suitless_maridia_predraygon_fish_tank:
    dw #preset_suitless_maridia_predraygon_mt_everest_2 ; Maridia Pre-Draygon: Mt. Everest 2
    dw $078D, $A3CC  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0145  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0917, $00F3  ; Layer 2 X position
    dw $0919, $0257  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01AA  ; Samus X
    dw $0AF8, $9FFF  ; Samus subpixel X
    dw $0AFA, $03B1  ; Samus Y
    dw $0AFC, $5BFF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_maridia_predraygon_mama_turtle:
    dw #preset_suitless_maridia_predraygon_fish_tank ; Maridia Pre-Draygon: Fish Tank
    dw $078D, $A444  ; DDB
    dw $079B, $D017  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $0201  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $0054  ; Health
    dw $09C6, $0040  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03D1  ; Samus X
    dw $0AF8, $4EFF  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $D8C0, $4000  ; Doors
    dw #$FFFF

preset_suitless_maridia_predraygon_fish_tank_revisit:
    dw #preset_suitless_maridia_predraygon_mama_turtle ; Maridia Pre-Draygon: Mama Turtle
    dw $078D, $A3E4  ; DDB
    dw $079B, $D055  ; MDB
    dw $090F, $8420  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $031B  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0254  ; Layer 2 Y position
    dw $09C2, $031F  ; Health
    dw $09C4, $031F  ; Max health
    dw $09C6, $0045  ; Missiles
    dw $09C8, $0055  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0029  ; Samus X
    dw $0AF8, $9C1F  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw $D880, $0F00  ; Items
    dw #$FFFF

preset_suitless_maridia_predraygon_mt_everest_3:
    dw #preset_suitless_maridia_predraygon_fish_tank_revisit ; Maridia Pre-Draygon: Fish Tank Revisit
    dw $078D, $A408  ; DDB
    dw $079B, $D017  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09D2, $0002  ; Currently selected item
    dw $09D6, $0014  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $037D  ; Samus X
    dw $0AF8, $C800  ; Samus subpixel X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_predraygon_crab_shaft:
    dw #preset_suitless_maridia_predraygon_mt_everest_3 ; Maridia Pre-Draygon: Mt. Everest 3
    dw $078D, $A3FC  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $B380  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $7CD0  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $09CA, $0007  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $05C8  ; Samus X
    dw $0AF8, $3FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_predraygon_aqueduct:
    dw #preset_suitless_maridia_predraygon_crab_shaft ; Maridia Pre-Draygon: Crab Shaft
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09CA, $0006  ; Supers
    dw $09CE, $000B  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $01D1  ; Samus X
    dw $0AF8, $9000  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw $D8C0, $C000  ; Doors
    dw #$FFFF

preset_suitless_maridia_predraygon_prebotwoon_hallway:
    dw #preset_suitless_maridia_predraygon_aqueduct ; Maridia Pre-Draygon: Aqueduct
    dw $078D, $A4C8  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0002  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $004A  ; Missiles
    dw $09C8, $005A  ; Max missiles
    dw $09CA, $000B  ; Supers
    dw $09CC, $0019  ; Max supers
    dw $09CE, $000A  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $008B  ; Samus X
    dw $0AF8, $EA02  ; Samus subpixel X
    dw $0AFA, $006B  ; Samus Y
    dw $D882, $0030  ; Items
    dw #$FFFF

preset_suitless_maridia_predraygon_botwoon:
    dw #preset_suitless_maridia_predraygon_prebotwoon_hallway ; Maridia Pre-Draygon: Pre-Botwoon Hallway
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $090F, $B800  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $2FFF  ; Screen subpixel Y position
    dw $0915, $0012  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0012  ; Layer 2 Y position
    dw $0A1C, $0007  ; Samus position/state
    dw $0AF6, $03C3  ; Samus X
    dw $0AF8, $47FF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_predraygon_postbotwoon_hallway:
    dw #preset_suitless_maridia_predraygon_botwoon ; Maridia Pre-Draygon: Botwoon
    dw $078D, $A774  ; DDB
    dw $079B, $D95E  ; MDB
    dw $07F3, $002A  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0050  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09CE, $000C  ; Pbs
    dw $09D6, $0064  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0AF6, $01CB  ; Samus X
    dw $0AF8, $4800  ; Samus subpixel X
    dw $D82C, $0002  ; Bosses
    dw #$FFFF

preset_suitless_maridia_predraygon_halfie_climb_room:
    dw #preset_suitless_maridia_predraygon_postbotwoon_hallway ; Maridia Pre-Draygon: Post-Botwoon Hallway
    dw $078D, $A918  ; DDB
    dw $079B, $D7E4  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001B  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $001B  ; Layer 2 Y position
    dw $09C6, $005A  ; Missiles
    dw $09CA, $0010  ; Supers
    dw $09CE, $000D  ; Pbs
    dw $0AF6, $06AF  ; Samus X
    dw $0AF8, $8580  ; Samus subpixel X
    dw #$FFFF

preset_suitless_maridia_predraygon_full_halfie:
    dw #preset_suitless_maridia_predraygon_halfie_climb_room ; Maridia Pre-Draygon: Halfie Climb Room
    dw $078D, $A870  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $001D  ; Layer 2 Y position
    dw $0AF6, $00C1  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_maridia_predraygon_precious_room:
    dw #preset_suitless_maridia_predraygon_full_halfie ; Maridia Pre-Draygon: Full Halfie
    dw $078D, $A8E8  ; DDB
    dw $079B, $D72A  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $00FB  ; Screen Y position in pixels
    dw $0917, $0600  ; Layer 2 X position
    dw $0919, $00FB  ; Layer 2 Y position
    dw $09C2, $01F1  ; Health
    dw $09CA, $000F  ; Supers
    dw $09D2, $0004  ; Currently selected item
    dw $0AF6, $06BB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D8C2, $0400  ; Doors
    dw #$FFFF

preset_suitless_maridia_predraygon_draygon:
    dw #preset_suitless_maridia_predraygon_precious_room ; Maridia Pre-Draygon: Precious Room
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $090F, $F400  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $01FB  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $017C  ; Layer 2 Y position
    dw $09C6, $005F  ; Missiles
    dw $09C8, $005F  ; Max missiles
    dw $09CA, $000E  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002E  ; Samus X
    dw $0AF8, $7800  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $D882, $00B0  ; Items
    dw $D8C2, $0C00  ; Doors
    dw #$FFFF

preset_suitless_maridia_cleanup_1_draygon_escape:
    dw #preset_suitless_maridia_predraygon_draygon ; Maridia Pre-Draygon: Draygon
    dw $078D, $A978  ; DDB
    dw $079B, $D9AA  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $3800  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $F304  ; Equipped Items
    dw $09A4, $F304  ; Collected Items
    dw $09C2, $0222  ; Health
    dw $09C6, $004D  ; Missiles
    dw $09CA, $000B  ; Supers
    dw $09CE, $000B  ; Pbs
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C1  ; Samus X
    dw $0AF8, $3C00  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0004  ; Blue suit
    dw $D82C, $0003  ; Bosses
    dw $D882, $04B0  ; Items
    dw $D8C2, $8C00  ; Doors
    dw #$FFFF

preset_suitless_maridia_cleanup_1_reverse_colosseum:
    dw #preset_suitless_maridia_cleanup_1_draygon_escape ; Maridia Cleanup 1: Draygon Escape
    dw $078D, $A96C  ; DDB
    dw $079B, $D78F  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $B660  ; Screen subpixel X position
    dw $0913, $4C01  ; Screen subpixel Y position
    dw $09C2, $01C6  ; Health
    dw $09C6, $004A  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0040  ; Samus X
    dw $0AF8, $C000  ; Samus subpixel X
    dw $0B3F, $0000  ; Blue suit
    dw $D8C2, $CC00  ; Doors
    dw #$FFFF

preset_suitless_maridia_cleanup_1_halfie_climb_down:
    dw #preset_suitless_maridia_cleanup_1_reverse_colosseum ; Maridia Cleanup 1: Reverse Colosseum
    dw $078D, $A834  ; DDB
    dw $079B, $D72A  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0AF6, $0039  ; Samus X
    dw $0AF8, $F000  ; Samus subpixel X
    dw #$FFFF

preset_suitless_maridia_cleanup_1_reverse_botwoon_etank:
    dw #preset_suitless_maridia_cleanup_1_halfie_climb_down ; Maridia Cleanup 1: Halfie Climb Down
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0200  ; Layer 2 Y position
    dw $0AF6, $0035  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_1_aqueduct_revisit:
    dw #preset_suitless_maridia_cleanup_1_reverse_botwoon_etank ; Maridia Cleanup 1: Reverse Botwoon E-Tank
    dw $078D, $A8AC  ; DDB
    dw $079B, $D6FD  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $7801  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0383  ; Health
    dw $09C4, $0383  ; Max health
    dw $09C6, $0049  ; Missiles
    dw $09CA, $000C  ; Supers
    dw $09CE, $000D  ; Pbs
    dw $09D6, $0014  ; Reserves
    dw $0AF6, $0034  ; Samus X
    dw $0AF8, $0C00  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D882, $05B0  ; Items
    dw #$FFFF

preset_suitless_maridia_cleanup_1_left_sand_pit:
    dw #preset_suitless_maridia_cleanup_1_aqueduct_revisit ; Maridia Cleanup 1: Aqueduct Revisit
    dw $078D, $A7D4  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0145  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $00F3  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $0AF6, $01E5  ; Samus X
    dw $0AF8, $03A0  ; Samus subpixel X
    dw $0AFA, $02CB  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_1_west_sand_hall:
    dw #preset_suitless_maridia_cleanup_1_left_sand_pit ; Maridia Cleanup 1: Left Sand Pit
    dw $078D, $A6E4  ; DDB
    dw $079B, $D4EF  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $011F  ; Layer 2 Y position
    dw $09C2, $0379  ; Health
    dw $09C6, $004D  ; Missiles
    dw $09C8, $0064  ; Max missiles
    dw $09CE, $0010  ; Pbs
    dw $09D4, $00C8  ; Max reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $002F  ; Samus X
    dw $0AF8, $D000  ; Samus subpixel X
    dw $0AFA, $01AB  ; Samus Y
    dw $D882, $05B3  ; Items
    dw #$FFFF

preset_suitless_maridia_cleanup_1_east_sand_hall:
    dw #preset_suitless_maridia_cleanup_1_west_sand_hall ; Maridia Cleanup 1: West Sand Hall
    dw $078D, $A648  ; DDB
    dw $079B, $D48E  ; MDB
    dw $090F, $1C00  ; Screen subpixel X position
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $0315  ; Health
    dw $0AF6, $003D  ; Samus X
    dw $0AF8, $A3FF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_1_pants_room:
    dw #preset_suitless_maridia_cleanup_1_east_sand_hall ; Maridia Cleanup 1: East Sand Hall
    dw $078D, $A66C  ; DDB
    dw $079B, $D4C2  ; MDB
    dw $090F, $5400  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $000B  ; Supers
    dw $09D2, $0004  ; Currently selected item
    dw $0AF6, $02D4  ; Samus X
    dw $0AF8, $F3FF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_1_shaktool:
    dw #preset_suitless_maridia_cleanup_1_pants_room ; Maridia Cleanup 1: Pants Room
    dw $078D, $A690  ; DDB
    dw $079B, $D646  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $01BF  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_1_rjump:
    dw #preset_suitless_maridia_cleanup_1_shaktool ; Maridia Cleanup 1: Shaktool
    dw $078D, $A798  ; DDB
    dw $079B, $D8C5  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CE, $000F  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $03DB  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D820, $2801  ; Events
    dw #$FFFF

preset_suitless_maridia_cleanup_1_pants_room_corner:
    dw #preset_suitless_maridia_cleanup_1_rjump ; Maridia Cleanup 1: R-Jump
    dw $078D, $A7C8  ; DDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $02A7  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0917, $01FD  ; Layer 2 X position
    dw $09A2, $F306  ; Equipped Items
    dw $09A4, $F306  ; Collected Items
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0347  ; Samus X
    dw $0AF8, $3000  ; Samus subpixel X
    dw $0AFA, $009B  ; Samus Y
    dw $D882, $05F3  ; Items
    dw #$FFFF

preset_suitless_maridia_cleanup_1_east_sand_hall_revisit:
    dw #preset_suitless_maridia_cleanup_1_pants_room_corner ; Maridia Cleanup 1: Pants Room Corner
    dw $078D, $A7B0  ; DDB
    dw $079B, $D646  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C2, $031A  ; Health
    dw $09C6, $0047  ; Missiles
    dw $09CE, $0010  ; Pbs
    dw $0AF6, $003F  ; Samus X
    dw $0AF8, $6400  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_1_west_sand_hall_revisit:
    dw #preset_suitless_maridia_cleanup_1_east_sand_hall_revisit ; Maridia Cleanup 1: East Sand Hall Revisit
    dw $078D, $A684  ; DDB
    dw $079B, $D48E  ; MDB
    dw $090F, $6800  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $031F  ; Health
    dw $09CA, $000A  ; Supers
    dw $0AF6, $0086  ; Samus X
    dw $0AF8, $C400  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_1_crab_hole:
    dw #preset_suitless_maridia_cleanup_1_west_sand_hall_revisit ; Maridia Cleanup 1: West Sand Hall Revisit
    dw $078D, $A63C  ; DDB
    dw $079B, $D252  ; MDB
    dw $090F, $0C00  ; Screen subpixel X position
    dw $0913, $9800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $009C  ; Samus X
    dw $0AF8, $7000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_1_crab_ggg:
    dw #preset_suitless_maridia_cleanup_1_crab_hole ; Maridia Cleanup 1: Crab Hole
    dw $078D, $A528  ; DDB
    dw $079B, $D21C  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0AF6, $0036  ; Samus X
    dw $0AF8, $8400  ; Samus subpixel X
    dw #$FFFF

preset_suitless_maridia_cleanup_2_main_street_revisit:
    dw #preset_suitless_maridia_cleanup_1_crab_ggg ; Maridia Cleanup 1: Crab GGG
    dw $078D, $A4F8  ; DDB
    dw $079B, $D08A  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $3400  ; Screen subpixel X position
    dw $0913, $E7FF  ; Screen subpixel Y position
    dw $09C2, $0333  ; Health
    dw $09CA, $0009  ; Supers
    dw $09CE, $0011  ; Pbs
    dw $0AF6, $005C  ; Samus X
    dw $0AF8, $4C00  ; Samus subpixel X
    dw $0AFA, $00A8  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_2_fish_tank_sbj:
    dw #preset_suitless_maridia_cleanup_2_main_street_revisit ; Maridia Cleanup 2: Main Street Revisit
    dw $078D, $A414  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $01F5  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $061F  ; Screen Y position in pixels
    dw $0917, $0177  ; Layer 2 X position
    dw $0919, $0497  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0255  ; Samus X
    dw $0AF8, $B720  ; Samus subpixel X
    dw $0AFA, $0693  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_2_mt_everest_final:
    dw #preset_suitless_maridia_cleanup_2_fish_tank_sbj ; Maridia Cleanup 2: Fish Tank SBJ
    dw $078D, $A3B4  ; DDB
    dw $079B, $D017  ; MDB
    dw $090F, $C800  ; Screen subpixel X position
    dw $0911, $0068  ; Screen X position in pixels
    dw $0913, $B001  ; Screen subpixel Y position
    dw $0915, $0001  ; Screen Y position in pixels
    dw $0917, $004E  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00CD  ; Samus X
    dw $0AF8, $47FF  ; Samus subpixel X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_2_crab_shaft_up:
    dw #preset_suitless_maridia_cleanup_2_mt_everest_final ; Maridia Cleanup 2: Mt Everest Final
    dw $078D, $A3F0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $99DE  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $AD78  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $05D4  ; Samus X
    dw $0AF8, $3FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_2_beach:
    dw #preset_suitless_maridia_cleanup_2_crab_shaft_up ; Maridia Cleanup 2: Crab Shaft Up
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $C400  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0A1C, $0007  ; Samus position/state
    dw $0AF6, $0077  ; Samus X
    dw $0AF8, $3800  ; Samus subpixel X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_2_swiss_cheese_room:
    dw #preset_suitless_maridia_cleanup_2_beach ; Maridia Cleanup 2: Beach
    dw $078D, $A4BC  ; DDB
    dw $079B, $D1DD  ; MDB
    dw $090F, $CD00  ; Screen subpixel X position
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $00F9  ; Screen Y position in pixels
    dw $0919, $00F9  ; Layer 2 Y position
    dw $09C6, $004C  ; Missiles
    dw $09C8, $0069  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $006E  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $D880, $4F00  ; Items
    dw #$FFFF

preset_suitless_maridia_cleanup_2_watering_hole:
    dw #preset_suitless_maridia_cleanup_2_swiss_cheese_room ; Maridia Cleanup 2: Swiss Cheese Room
    dw $078D, $A4D4  ; DDB
    dw $079B, $D16D  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $000F  ; Screen Y position in pixels
    dw $0919, $000F  ; Layer 2 Y position
    dw $09C6, $004B  ; Missiles
    dw $0AF6, $006D  ; Samus X
    dw $0AF8, $C000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_2_swiss_cheese_revisit:
    dw #preset_suitless_maridia_cleanup_2_watering_hole ; Maridia Cleanup 2: Watering Hole
    dw $078D, $A498  ; DDB
    dw $079B, $D13B  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0338  ; Health
    dw $09C6, $004F  ; Missiles
    dw $09C8, $006E  ; Max missiles
    dw $09CA, $000E  ; Supers
    dw $09CC, $001E  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01AF  ; Samus X
    dw $0AF8, $9FFF  ; Samus subpixel X
    dw $D880, $7F00  ; Items
    dw #$FFFF

preset_suitless_maridia_cleanup_2_beach_revisit:
    dw #preset_suitless_maridia_cleanup_2_swiss_cheese_revisit ; Maridia Cleanup 2: Swiss Cheese Revisit
    dw $078D, $A48C  ; DDB
    dw $079B, $D16D  ; MDB
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $0AF6, $03A0  ; Samus X
    dw $0AF8, $8BFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_2_crab_shaft_down:
    dw #preset_suitless_maridia_cleanup_2_beach_revisit ; Maridia Cleanup 2: Beach Revisit
    dw $078D, $A4A4  ; DDB
    dw $079B, $D1DD  ; MDB
    dw $090F, $2800  ; Screen subpixel X position
    dw $0911, $0031  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $0024  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00BF  ; Samus X
    dw $0AF8, $009F  ; Samus subpixel X
    dw $0AFA, $02A4  ; Samus Y
    dw $0AFC, $73FF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_maridia_cleanup_2_aqueduct_final:
    dw #preset_suitless_maridia_cleanup_2_crab_shaft_down ; Maridia Cleanup 2: Crab Shaft Down
    dw $078D, $A4E0  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C2, $034C  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01CD  ; Samus X
    dw $0AF8, $DFFF  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_maridia_cleanup_2_right_sand_pit:
    dw #preset_suitless_maridia_cleanup_2_aqueduct_final ; Maridia Cleanup 2: Aqueduct Final
    dw $078D, $A4C8  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $034B  ; Screen X position in pixels
    dw $0913, $7FFF  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $0278  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $09CE, $0010  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $03EB  ; Samus X
    dw $0AF8, $7400  ; Samus subpixel X
    dw $0AFA, $02CB  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_2_east_sand_hall_final:
    dw #preset_suitless_maridia_cleanup_2_right_sand_pit ; Maridia Cleanup 2: Right Sand Pit
    dw $078D, $A6FC  ; DDB
    dw $079B, $D51E  ; MDB
    dw $0911, $00A5  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $00BD  ; Screen Y position in pixels
    dw $0917, $00A5  ; Layer 2 X position
    dw $0919, $00BD  ; Layer 2 Y position
    dw $09C2, $0342  ; Health
    dw $09C6, $0051  ; Missiles
    dw $09C8, $0073  ; Max missiles
    dw $09CE, $0017  ; Pbs
    dw $09D0, $0019  ; Max pbs
    dw $0AF6, $0145  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $012B  ; Samus Y
    dw $D882, $05FF  ; Items
    dw #$FFFF

preset_suitless_maridia_cleanup_2_oasis:
    dw #preset_suitless_maridia_cleanup_2_east_sand_hall_final ; Maridia Cleanup 2: East Sand Hall Final
    dw $078D, $A6CC  ; DDB
    dw $079B, $D4C2  ; MDB
    dw $090F, $0C00  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $0AF6, $0029  ; Samus X
    dw $0AF8, $E000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_2_plasma_spark_room:
    dw #preset_suitless_maridia_cleanup_2_oasis ; Maridia Cleanup 2: Oasis
    dw $078D, $A684  ; DDB
    dw $079B, $D48E  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $006E  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $0AFA, $006B  ; Samus Y
    dw $D8C2, $CC20  ; Doors
    dw #$FFFF

preset_suitless_maridia_cleanup_2_kassiuz_room_up:
    dw #preset_suitless_maridia_cleanup_2_plasma_spark_room ; Maridia Cleanup 2: Plasma Spark Room
    dw $078D, $A60C  ; DDB
    dw $079B, $D340  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0120  ; Screen Y position in pixels
    dw $0917, $01C0  ; Layer 2 X position
    dw $0919, $0120  ; Layer 2 Y position
    dw $09C6, $004F  ; Missiles
    dw $09CA, $000E  ; Supers
    dw $0AF6, $028D  ; Samus X
    dw $0AF8, $4FFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $CC28  ; Doors
    dw #$FFFF

preset_suitless_maridia_cleanup_2_plasma:
    dw #preset_suitless_maridia_cleanup_2_kassiuz_room_up ; Maridia Cleanup 2: Kassiuz Room Up
    dw $078D, $A5DC  ; DDB
    dw $079B, $D27E  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $004D  ; Missiles
    dw $0AF6, $008E  ; Samus X
    dw $0AF8, $2FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_maridia_cleanup_2_kassiuz_room_down:
    dw #preset_suitless_maridia_cleanup_2_plasma ; Maridia Cleanup 2: Plasma
    dw $078D, $A558  ; DDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $09A6, $100B  ; Equipped Beams
    dw $09A8, $100F  ; Collected Beams
    dw $09C2, $0383  ; Health
    dw $09C6, $004F  ; Missiles
    dw $09CE, $0019  ; Pbs
    dw $09D6, $0019  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002A  ; Samus X
    dw $0AF8, $8FFF  ; Samus subpixel X
    dw $D880, $FF00  ; Items
    dw $D8C2, $CC2A  ; Doors
    dw #$FFFF

preset_suitless_maridia_cleanup_2_plasma_spark_revisit:
    dw #preset_suitless_maridia_cleanup_2_kassiuz_room_down ; Maridia Cleanup 2: Kassiuz Room Down
    dw $078D, $A540  ; DDB
    dw $079B, $D387  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $02FE  ; Screen Y position in pixels
    dw $0919, $023E  ; Layer 2 Y position
    dw $0AF6, $003B  ; Samus X
    dw $0AF8, $7000  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_suitless_forgotten_highway_thread_the_needle_room:
    dw #preset_suitless_maridia_cleanup_2_plasma_spark_revisit ; Maridia Cleanup 2: Plasma Spark Revisit
    dw $078D, $A5D0  ; DDB
    dw $079B, $D340  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0271  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0324  ; Screen Y position in pixels
    dw $0917, $0222  ; Layer 2 X position
    dw $0919, $0324  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02D1  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $0393  ; Samus Y
    dw #$FFFF

preset_suitless_forgotten_highway_forgotten_elevator:
    dw #preset_suitless_forgotten_highway_thread_the_needle_room ; Forgotten Highway: Thread the Needle Room
    dw $078D, $A618  ; DDB
    dw $079B, $D2D9  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $02FC  ; Health
    dw $09C6, $004D  ; Missiles
    dw $09D6, $001E  ; Reserves
    dw $0AF6, $06A4  ; Samus X
    dw $0AF8, $5FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_forgotten_highway_crab_maze:
    dw #preset_suitless_forgotten_highway_forgotten_elevator ; Forgotten Highway: Forgotten Elevator
    dw $078D, $8A4E  ; DDB
    dw $079B, $95A8  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0AF6, $00D7  ; Samus X
    dw $0AF8, $9000  ; Samus subpixel X
    dw #$FFFF

preset_suitless_forgotten_highway_kago_room:
    dw #preset_suitless_forgotten_highway_crab_maze ; Forgotten Highway: Crab Maze
    dw $078D, $8AA2  ; DDB
    dw $079B, $957D  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0310  ; Health
    dw $0AF6, $0369  ; Samus X
    dw $0AF8, $8FFF  ; Samus subpixel X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_suitless_forgotten_highway_east_ocean:
    dw #preset_suitless_forgotten_highway_kago_room ; Forgotten Highway: Kago Room
    dw $078D, $8A96  ; DDB
    dw $079B, $9552  ; MDB
    dw $090F, $FC00  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0008  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0006  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00BB  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw $0AFA, $007B  ; Samus Y
    dw #$FFFF

preset_suitless_forgotten_highway_electric_not_death:
    dw #preset_suitless_forgotten_highway_east_ocean ; Forgotten Highway: East Ocean
    dw $078D, $8A7E  ; DDB
    dw $079B, $94FD  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0434  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0315  ; Health
    dw $09C6, $004F  ; Missiles
    dw $0AF6, $008D  ; Samus X
    dw $0AF8, $9800  ; Samus subpixel X
    dw $0AFA, $049B  ; Samus Y
    dw #$FFFF

preset_suitless_forgotten_highway_sponge_bath:
    dw #preset_suitless_forgotten_highway_electric_not_death ; Forgotten Highway: Electric Not Death
    dw $078D, $A270  ; DDB
    dw $079B, $CB8B  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $090F, $6001  ; Screen subpixel X position
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $02DD  ; Health
    dw $0AF6, $0025  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $00BB  ; Samus Y
    dw #$FFFF

preset_suitless_forgotten_highway_shaft_down:
    dw #preset_suitless_forgotten_highway_sponge_bath ; Forgotten Highway: Sponge Bath
    dw $078D, $A24C  ; DDB
    dw $079B, $CD5C  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0AF6, $0060  ; Samus X
    dw $0AF8, $9400  ; Samus subpixel X
    dw $0AFA, $009C  ; Samus Y
    dw $0AFC, $4BFF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_forgotten_highway_basement:
    dw #preset_suitless_forgotten_highway_shaft_down ; Forgotten Highway: Shaft Down
    dw $078D, $A2D0  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $0400  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $071F  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0557  ; Layer 2 Y position
    dw $09C6, $0054  ; Missiles
    dw $09C8, $0078  ; Max missiles
    dw $09CA, $000D  ; Supers
    dw $09CE, $0018  ; Pbs
    dw $0AF6, $04B5  ; Samus X
    dw $0AF8, $47FF  ; Samus subpixel X
    dw $0AFA, $07BB  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $D880, $FF01  ; Items
    dw $D8C0, $C010  ; Doors
    dw #$FFFF

preset_suitless_forgotten_highway_phantoon:
    dw #preset_suitless_forgotten_highway_basement ; Forgotten Highway: Basement
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $090F, $BC00  ; Screen subpixel X position
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $000C  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $04D5  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $C030  ; Doors
    dw #$FFFF

preset_suitless_wrecked_ship_shaft_to_supers:
    dw #preset_suitless_forgotten_highway_phantoon ; Forgotten Highway: Phantoon
    dw $078D, $A2C4  ; DDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0224  ; Screen X position in pixels
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0917, $019B  ; Layer 2 X position
    dw $09C2, $026A  ; Health
    dw $09C6, $0064  ; Missiles
    dw $09CA, $000F  ; Supers
    dw $09CE, $0019  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $02C4  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $0AFA, $006B  ; Samus Y
    dw $D82A, $0102  ; Bosses
    dw $D8C0, $C070  ; Doors
    dw #$FFFF

preset_suitless_wrecked_ship_right_supers:
    dw #preset_suitless_wrecked_ship_shaft_to_supers ; Wrecked Ship: Shaft to Supers
    dw $078D, $A294  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0600  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0480  ; Layer 2 Y position
    dw $09CE, $0018  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $05D6  ; Samus X
    dw $0AF8, $E000  ; Samus subpixel X
    dw $0AFA, $068B  ; Samus Y
    dw $D8C0, $C074  ; Doors
    dw #$FFFF

preset_suitless_wrecked_ship_left_supers:
    dw #preset_suitless_wrecked_ship_right_supers ; Wrecked Ship: Right Supers
    dw $078D, $A2F4  ; DDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $09CA, $0014  ; Supers
    dw $09CC, $0023  ; Max supers
    dw $09CE, $0017  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $04E6  ; Samus X
    dw $0AF8, $C000  ; Samus subpixel X
    dw $D880, $FF41  ; Items
    dw #$FFFF

preset_suitless_wrecked_ship_shaft_to_sponge_bath:
    dw #preset_suitless_wrecked_ship_left_supers ; Wrecked Ship: Left Supers
    dw $078D, $A210  ; DDB
    dw $079B, $CDA8  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $024C  ; Health
    dw $09C6, $0063  ; Missiles
    dw $09CA, $0019  ; Supers
    dw $09CC, $0028  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00D8  ; Samus X
    dw $0AF8, $D000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $FF61  ; Items
    dw #$FFFF

preset_suitless_wrecked_ship_sponge_bath_2:
    dw #preset_suitless_wrecked_ship_shaft_to_sponge_bath ; Wrecked Ship: Shaft to Sponge Bath
    dw $078D, $A2E8  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $6800  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $047B  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $035C  ; Layer 2 Y position
    dw $0AF6, $0437  ; Samus X
    dw $0AF8, $2400  ; Samus subpixel X
    dw $0AFA, $04EB  ; Samus Y
    dw $D8C0, $C07C  ; Doors
    dw #$FFFF

preset_suitless_wrecked_ship_electric_death_room:
    dw #preset_suitless_wrecked_ship_sponge_bath_2 ; Wrecked Ship: Sponge Bath
    dw $078D, $A2DC  ; DDB
    dw $079B, $CB8B  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01E8  ; Health
    dw $0AF6, $01DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $00BB  ; Samus Y
    dw #$FFFF

preset_suitless_wrecked_ship_wrecked_ship_etank:
    dw #preset_suitless_wrecked_ship_electric_death_room ; Wrecked Ship: Electric Death Room
    dw $078D, $A258  ; DDB
    dw $079B, $CBD5  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09C2, $01CA  ; Health
    dw $09CA, $0018  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004D  ; Samus X
    dw $0AF8, $2FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $C87C  ; Doors
    dw #$FFFF

preset_suitless_wrecked_ship_electric_death_down:
    dw #preset_suitless_wrecked_ship_wrecked_ship_etank ; Wrecked Ship: Wrecked Ship E-Tank
    dw $078D, $A27C  ; DDB
    dw $079B, $CC27  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0915, $0008  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0008  ; Layer 2 Y position
    dw $09C2, $03E7  ; Health
    dw $09C4, $03E7  ; Max health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0294  ; Samus X
    dw $0AF8, $D800  ; Samus subpixel X
    dw $0AFA, $0097  ; Samus Y
    dw $0AFC, $DC00  ; Samus subpixel Y
    dw $D880, $FF71  ; Items
    dw #$FFFF

preset_suitless_wrecked_ship_spiky_room_revisit:
    dw #preset_suitless_wrecked_ship_electric_death_down ; Wrecked Ship: Electric Death Down
    dw $078D, $A288  ; DDB
    dw $079B, $CBD5  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $09C2, $03C9  ; Health
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $02BB  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_wrecked_ship_shaft_to_attic:
    dw #preset_suitless_wrecked_ship_spiky_room_revisit ; Wrecked Ship: Spiky Room Revisit
    dw $078D, $A24C  ; DDB
    dw $079B, $CD5C  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $038D  ; Health
    dw $09CE, $0018  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004B  ; Samus X
    dw $0AF8, $4400  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $9400  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_wrecked_ship_attic:
    dw #preset_suitless_wrecked_ship_shaft_to_attic ; Wrecked Ship: Shaft to Attic
    dw $078D, $A2D0  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $5FFF  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0AF6, $04B9  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $0AFA, $006B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_wrecked_ship_antispeedrun_robots:
    dw #preset_suitless_wrecked_ship_attic ; Wrecked Ship: Attic
    dw $078D, $A228  ; DDB
    dw $079B, $CA52  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $05E5  ; Screen X position in pixels
    dw $0913, $A3FE  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $046B  ; Layer 2 X position
    dw $0919, $001E  ; Layer 2 Y position
    dw $09C2, $03C9  ; Health
    dw $09C6, $005D  ; Missiles
    dw $09CA, $0014  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0645  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $0AFA, $00CB  ; Samus Y
    dw $D8C0, $CB7C  ; Doors
    dw #$FFFF

preset_suitless_wrecked_ship_attic_revisit:
    dw #preset_suitless_wrecked_ship_antispeedrun_robots ; Wrecked Ship: Anti-Speedrun Robots
    dw $078D, $A1D4  ; DDB
    dw $079B, $CAAE  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0383  ; Health
    dw $09C6, $0042  ; Missiles
    dw $09C8, $007D  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0041  ; Samus X
    dw $0AF8, $DFFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $FF79  ; Items
    dw #$FFFF

preset_suitless_wrecked_ship_west_ocean:
    dw #preset_suitless_wrecked_ship_attic_revisit ; Wrecked Ship: Attic Revisit
    dw $078D, $A1EC  ; DDB
    dw $079B, $CA52  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0919, $001E  ; Layer 2 Y position
    dw $09C6, $0041  ; Missiles
    dw $09CA, $0013  ; Supers
    dw $0AF8, $C000  ; Samus subpixel X
    dw #$FFFF

preset_suitless_wrecked_ship_puddles:
    dw #preset_suitless_wrecked_ship_west_ocean ; Wrecked Ship: West Ocean
    dw $078D, $A1E0  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C400  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $01FB  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $037D  ; Health
    dw $09C6, $004A  ; Missiles
    dw $09C8, $0087  ; Max missiles
    dw $09CA, $0012  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02C4  ; Samus X
    dw $0AF8, $3BFF  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $D870, $E18C  ; Items
    dw #$FFFF

preset_suitless_wrecked_ship_bowling:
    dw #preset_suitless_wrecked_ship_puddles ; Wrecked Ship: Puddles
    dw $078D, $89E2  ; DDB
    dw $079B, $9461  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C6, $0048  ; Missiles
    dw $0AF6, $018E  ; Samus X
    dw $0AF8, $67FF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $77FF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_wrecked_ship_postbowling:
    dw #preset_suitless_wrecked_ship_bowling ; Wrecked Ship: Bowling
    dw $078D, $8B32  ; DDB
    dw $079B, $C98E  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $0AF6, $0134  ; Samus X
    dw $0AF8, $F7FF  ; Samus subpixel X
    dw $0AFA, $02AB  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_wrecked_ship_west_ocean_revisit:
    dw #preset_suitless_wrecked_ship_postbowling ; Wrecked Ship: Post-Bowling
    dw $078D, $A1A4  ; DDB
    dw $079B, $CE40  ; MDB
    dw $090F, $FFFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8001  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0355  ; Health
    dw $09C6, $0029  ; Missiles
    dw $09C8, $008C  ; Max missiles
    dw $09CE, $0016  ; Pbs
    dw $09D4, $012C  ; Max reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0069  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $FF7F  ; Items
    dw #$FFFF

preset_suitless_wrecked_ship_moat:
    dw #preset_suitless_wrecked_ship_west_ocean_revisit ; Wrecked Ship: West Ocean Revisit
    dw $078D, $A300  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00E7  ; Screen X position in pixels
    dw $0913, $6000  ; Screen subpixel Y position
    dw $0915, $0439  ; Screen Y position in pixels
    dw $0917, $0073  ; Layer 2 X position
    dw $09C6, $002E  ; Missiles
    dw $09C8, $0091  ; Max missiles
    dw $0AF6, $0187  ; Samus X
    dw $0AF8, $8800  ; Samus subpixel X
    dw $0AFA, $04D3  ; Samus Y
    dw $0AFC, $F3FF  ; Samus subpixel Y
    dw $D870, $E18E  ; Items
    dw #$FFFF

preset_suitless_wrecked_ship_crateria_kihunters:
    dw #preset_suitless_wrecked_ship_moat ; Wrecked Ship: Moat
    dw $078D, $89CA  ; DDB
    dw $079B, $95FF  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $09C6, $0033  ; Missiles
    dw $09C8, $0096  ; Max missiles
    dw $0AF6, $002F  ; Samus X
    dw $0AF8, $1400  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $D870, $E19E  ; Items
    dw #$FFFF

preset_suitless_wrecked_ship_red_tower_elevator:
    dw #preset_suitless_wrecked_ship_crateria_kihunters ; Wrecked Ship: Crateria Kihunters
    dw $078D, $8A42  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $09C2, $0369  ; Health
    dw $09C6, $0032  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $007E  ; Samus X
    dw $0AF8, $4FFF  ; Samus subpixel X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B0, $4000  ; Doors
    dw #$FFFF

preset_suitless_red_tower_cleanup_beta_power_bombs:
    dw #preset_suitless_wrecked_ship_red_tower_elevator ; Wrecked Ship: Red Tower Elevator
    dw $078D, $8B02  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0919, $031F  ; Layer 2 Y position
    dw $09CA, $0011  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0057  ; Samus X
    dw $0AF8, $9FFF  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw $D8B6, $8EFB  ; Doors
    dw #$FFFF

preset_suitless_red_tower_cleanup_alpha_power_bombs:
    dw #preset_suitless_red_tower_cleanup_beta_power_bombs ; Red Tower Cleanup: Beta Power Bombs
    dw $078D, $90DE  ; DDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0915, $071B  ; Screen Y position in pixels
    dw $0919, $071B  ; Layer 2 Y position
    dw $09C2, $0359  ; Health
    dw $09C6, $0030  ; Missiles
    dw $09CA, $0013  ; Supers
    dw $09CE, $001A  ; Pbs
    dw $09D0, $001E  ; Max pbs
    dw $0AF6, $0041  ; Samus X
    dw $0AF8, $5FFF  ; Samus subpixel X
    dw $0AFA, $078B  ; Samus Y
    dw $D874, $1CCC  ; Items
    dw $D8B6, $EEFB  ; Doors
    dw #$FFFF

preset_suitless_red_tower_cleanup_caterpillars_up:
    dw #preset_suitless_red_tower_cleanup_alpha_power_bombs ; Red Tower Cleanup: Alpha Power Bombs
    dw $078D, $9096  ; DDB
    dw $079B, $A3AE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0345  ; Health
    dw $09C6, $0035  ; Missiles
    dw $09C8, $009B  ; Max missiles
    dw $09CE, $001E  ; Pbs
    dw $09D0, $0023  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02D1  ; Samus X
    dw $0AF8, $2000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $1FCC  ; Items
    dw #$FFFF

preset_suitless_red_tower_cleanup_hellway:
    dw #preset_suitless_red_tower_cleanup_caterpillars_up ; Red Tower Cleanup: Caterpillars Up
    dw $078D, $90EA  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2FFF  ; Screen subpixel Y position
    dw $0915, $0501  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0501  ; Layer 2 Y position
    dw $09CE, $001D  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004A  ; Samus X
    dw $0AF8, $A000  ; Samus subpixel X
    dw $0AFA, $058B  ; Samus Y
    dw $D8B6, $FEFB  ; Doors
    dw #$FFFF

preset_suitless_red_tower_cleanup_red_tower_revisit:
    dw #preset_suitless_red_tower_cleanup_hellway ; Red Tower Cleanup: Hellway
    dw $078D, $90AE  ; DDB
    dw $079B, $A2F7  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $003A  ; Samus X
    dw $0AF8, $6000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_red_tower_cleanup_skree_boost_revisit:
    dw #preset_suitless_red_tower_cleanup_red_tower_revisit ; Red Tower Cleanup: Red Tower Revisit
    dw $078D, $907E  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0919  ; Screen Y position in pixels
    dw $0919, $06D2  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0054  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $0AFA, $098B  ; Samus Y
    dw #$FFFF

preset_suitless_red_tower_cleanup_below_spazer_revisit:
    dw #preset_suitless_red_tower_cleanup_skree_boost_revisit ; Red Tower Cleanup: Skree Boost Revisit
    dw $078D, $9042  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $01B8  ; Samus X
    dw $0AF8, $A000  ; Samus subpixel X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF

preset_suitless_red_tower_cleanup_upper_norfair_elevator:
    dw #preset_suitless_red_tower_cleanup_below_spazer_revisit ; Red Tower Cleanup: Below Spazer Revisit
    dw $078D, $A384  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $0014  ; Supers
    dw $0AF6, $007C  ; Samus X
    dw $0AF8, $E000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_red_tower_cleanup_ice_gates_revisit:
    dw #preset_suitless_red_tower_cleanup_upper_norfair_elevator ; Red Tower Cleanup: Upper Norfair Elevator
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0919, $0257  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $038E  ; Samus Y
    dw $0AFC, $D7FF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_red_tower_cleanup_crumble_tower:
    dw #preset_suitless_red_tower_cleanup_ice_gates_revisit ; Red Tower Cleanup: Ice Gates Revisit
    dw $078D, $92BE  ; DDB
    dw $079B, $A815  ; MDB
    dw $090F, $4FFF  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $02D2  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $021D  ; Layer 2 Y position
    dw $09CE, $001C  ; Pbs
    dw $0AF6, $0389  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw $0AFA, $036B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_red_tower_cleanup_croc_speedway:
    dw #preset_suitless_red_tower_cleanup_crumble_tower ; Red Tower Cleanup: Crumble Tower
    dw $078D, $9336  ; DDB
    dw $079B, $A8F8  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C2, $02E0  ; Health
    dw $09C6, $003A  ; Missiles
    dw $09C8, $00A0  ; Max missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $03BB  ; Samus Y
    dw $D876, $1FFE  ; Items
    dw #$FFFF

preset_suitless_red_tower_cleanup_nutella_refill:
    dw #preset_suitless_red_tower_cleanup_croc_speedway ; Red Tower Cleanup: Croc Speedway
    dw $078D, $93C6  ; DDB
    dw $079B, $AFCE  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $02BC  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $020D  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0257  ; Health
    dw $0AF6, $031C  ; Samus X
    dw $0AF8, $857F  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_red_tower_cleanup_kronic_boost_room:
    dw #preset_suitless_red_tower_cleanup_nutella_refill ; Red Tower Cleanup: Nutella Refill
    dw $078D, $9792  ; DDB
    dw $079B, $AFFB  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0917, $0240  ; Layer 2 X position
    dw $09C2, $0395  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $03C1  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_red_tower_cleanup_lava_dive:
    dw #preset_suitless_red_tower_cleanup_kronic_boost_room ; Red Tower Cleanup: Kronic Boost Room
    dw $078D, $977A  ; DDB
    dw $079B, $AE74  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $09C2, $0339  ; Health
    dw $09CE, $001D  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0154  ; Samus X
    dw $0AF8, $A8FF  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $01F7  ; Doors
    dw #$FFFF

preset_suitless_ridley_lower_norfair_elevator:
    dw #preset_suitless_red_tower_cleanup_lava_dive ; Red Tower Cleanup: Lava Dive
    dw $078D, $96DE  ; DDB
    dw $079B, $AF3F  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00F4  ; Health
    dw $0AF6, $007B  ; Samus X
    dw $0AF8, $2000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_ridley_acid_chozo:
    dw #preset_suitless_ridley_lower_norfair_elevator ; Ridley: Lower Norfair Elevator
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0301  ; Layer 2 Y position
    dw $09C2, $03DD  ; Health
    dw $09C6, $0030  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $09CE, $0012  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $09D6, $012C  ; Reserves
    dw $0AF6, $0039  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_suitless_ridley_golden_torizo:
    dw #preset_suitless_ridley_acid_chozo ; Ridley: Acid Chozo
    dw $078D, $9852  ; DDB
    dw $079B, $B1E5  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $023E  ; Health
    dw $09CE, $0010  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02C2  ; Samus X
    dw $0AF8, $EFFF  ; Samus subpixel X
    dw $D820, $3801  ; Events
    dw #$FFFF

preset_suitless_ridley_screw_attack:
    dw #preset_suitless_ridley_golden_torizo ; Ridley: Golden Torizo
    dw $078D, $983A  ; DDB
    dw $079B, $B283  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $4FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $00FC  ; Health
    dw $09C6, $0037  ; Missiles
    dw $09C8, $00A5  ; Max missiles
    dw $09CA, $0012  ; Supers
    dw $09CC, $002D  ; Max supers
    dw $09CE, $0011  ; Pbs
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $D82A, $0106  ; Bosses
    dw $D878, $00DE  ; Items
    dw #$FFFF

preset_suitless_ridley_gt_refill_exit:
    dw #preset_suitless_ridley_screw_attack ; Ridley: Screw Attack
    dw $078D, $9A7A  ; DDB
    dw $079B, $B305  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $F30E  ; Equipped Items
    dw $09A4, $F30E  ; Collected Items
    dw $09C2, $03E7  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0030  ; Samus X
    dw $0AF8, $AFFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $80DE  ; Items
    dw $D8BA, $03F7  ; Doors
    dw #$FFFF

preset_suitless_ridley_fast_ripper_room:
    dw #preset_suitless_ridley_gt_refill_exit ; Ridley: GT Refill Exit
    dw $078D, $98A6  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09C2, $03CB  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B1  ; Samus X
    dw $0AF8, $1FFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_ridley_worst_room_in_the_game:
    dw #preset_suitless_ridley_fast_ripper_room ; Ridley: Fast Ripper Room
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $7580  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $02FE  ; Health
    dw $09CA, $0011  ; Supers
    dw $0AF6, $03DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_ridley_mickey_mouse_room:
    dw #preset_suitless_ridley_worst_room_in_the_game ; Ridley: Worst Room in the Game
    dw $078D, $994E  ; DDB
    dw $079B, $B4AD  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $002A  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $001F  ; Layer 2 Y position
    dw $09C2, $028A  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004C  ; Samus X
    dw #$FFFF

preset_suitless_ridley_amphitheatre:
    dw #preset_suitless_ridley_mickey_mouse_room ; Ridley: Mickey Mouse Room
    dw $078D, $9936  ; DDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09C2, $01F3  ; Health
    dw $09C6, $003C  ; Missiles
    dw $09C8, $00AA  ; Max missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B1  ; Samus X
    dw $0AF8, $5FFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $D878, $82DE  ; Items
    dw #$FFFF

preset_suitless_ridley_firefleas:
    dw #preset_suitless_ridley_amphitheatre ; Ridley: Amphitheatre
    dw $078D, $99A2  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $2500  ; Screen subpixel X position
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $013D  ; Health
    dw $0AF6, $00DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_ridley_kihunter_stairs_down:
    dw #preset_suitless_ridley_firefleas ; Ridley: Firefleas
    dw $078D, $9A02  ; DDB
    dw $079B, $B6EE  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0322  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0322  ; Layer 2 Y position
    dw $09C2, $044B  ; Health
    dw $09C4, $044B  ; Max health
    dw $09CA, $0010  ; Supers
    dw $09CE, $0014  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0141  ; Samus X
    dw $0AF8, $2880  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw $D87A, $0001  ; Items
    dw #$FFFF

preset_suitless_ridley_wasteland:
    dw #preset_suitless_ridley_kihunter_stairs_down ; Ridley: Kihunter Stairs Down
    dw $078D, $9AAA  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0915, $0419  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0312  ; Layer 2 Y position
    dw $09C2, $036B  ; Health
    dw $09CE, $0012  ; Pbs
    dw $0A1C, $0079  ; Samus position/state
    dw $0A1E, $1108  ; More position/state
    dw $0AF6, $024E  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $0489  ; Samus Y
    dw $D8BA, $43F7  ; Doors
    dw #$FFFF

preset_suitless_ridley_metal_pirates:
    dw #preset_suitless_ridley_wasteland ; Ridley: Wasteland
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $021C  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0195  ; Layer 2 Y position
    dw $09C2, $0208  ; Health
    dw $09CA, $000F  ; Supers
    dw $09CE, $0016  ; Pbs
    dw $09D0, $0028  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0166  ; Samus X
    dw $0AF8, $AFFF  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $D878, $92DE  ; Items
    dw $D8BA, $C3F7  ; Doors
    dw #$FFFF

preset_suitless_ridley_plowerhouse:
    dw #preset_suitless_ridley_metal_pirates ; Ridley: Metal Pirates
    dw $078D, $9A1A  ; DDB
    dw $079B, $B62B  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0178  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $011A  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01C5  ; Health
    dw $09CA, $0016  ; Supers
    dw $0AF6, $01D8  ; Samus X
    dw $0AF8, $EFFF  ; Samus subpixel X
    dw $0AFA, $00BB  ; Samus Y
    dw #$FFFF

preset_suitless_ridley_preridley_room:
    dw #preset_suitless_ridley_plowerhouse ; Ridley: Plowerhouse
    dw $078D, $9A32  ; DDB
    dw $079B, $B482  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $0187  ; Health
    dw $0AF6, $003C  ; Samus X
    dw $0AF8, $9FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D8BC, $0001  ; Doors
    dw #$FFFF

preset_suitless_ridley_ridley_2:
    dw #preset_suitless_ridley_preridley_room ; Ridley: Pre-Ridley Room
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $9E00  ; Screen subpixel Y position
    dw $09C2, $008A  ; Health
    dw $09CA, $0018  ; Supers
    dw $09CE, $0019  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0008  ; Samus position/state
    dw $0AF6, $002B  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $0AFA, $009B  ; Samus Y
    dw $D8BA, $D3F7  ; Doors
    dw #$FFFF

preset_suitless_norfair_cleanup_ridley_escape:
    dw #preset_suitless_ridley_ridley_2 ; Ridley: Ridley
    dw $078D, $9A62  ; DDB
    dw $079B, $B32E  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $011C  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09C2, $048F  ; Health
    dw $09C4, $04AF  ; Max health
    dw $09C6, $003B  ; Missiles
    dw $09CA, $000F  ; Supers
    dw $09CE, $0012  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D6, $012C  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0042  ; Samus X
    dw $0AF8, $DFFF  ; Samus subpixel X
    dw $0AFA, $019B  ; Samus Y
    dw $D82A, $0107  ; Bosses
    dw $D878, $D2DE  ; Items
    dw $D8BA, $DBF7  ; Doors
    dw #$FFFF

preset_suitless_norfair_cleanup_reverse_plowerhouse:
    dw #preset_suitless_norfair_cleanup_ridley_escape ; Norfair Cleanup: Ridley Escape
    dw $078D, $98BE  ; DDB
    dw $079B, $B37A  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $040C  ; Health
    dw $09C6, $003A  ; Missiles
    dw $0AF6, $02BB  ; Samus X
    dw $0AF8, $2FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D8BA, $DFF7  ; Doors
    dw #$FFFF

preset_suitless_norfair_cleanup_reverse_metal_pirates:
    dw #preset_suitless_norfair_cleanup_reverse_plowerhouse ; Norfair Cleanup: Reverse Plowerhouse
    dw $078D, $98D6  ; DDB
    dw $079B, $B482  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $B400  ; Screen subpixel Y position
    dw $09C2, $03C5  ; Health
    dw $0AF6, $02C0  ; Samus X
    dw $0AF8, $6FFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_norfair_cleanup_wasteland_revisit:
    dw #preset_suitless_norfair_cleanup_reverse_metal_pirates ; Norfair Cleanup: Reverse Metal Pirates
    dw $078D, $9966  ; DDB
    dw $079B, $B62B  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $4400  ; Screen subpixel Y position
    dw $09C2, $0387  ; Health
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $02DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF

preset_suitless_norfair_cleanup_kihunter_stairs_up:
    dw #preset_suitless_norfair_cleanup_wasteland_revisit ; Norfair Cleanup: Wasteland Revisit
    dw $078D, $9A3E  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $09C2, $0288  ; Health
    dw $09C6, $003C  ; Missiles
    dw $09CE, $0011  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0565  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_suitless_norfair_cleanup_firefleas_up:
    dw #preset_suitless_norfair_cleanup_kihunter_stairs_up ; Norfair Cleanup: Kihunter Stairs Up
    dw $078D, $9A26  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $0002  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $09C2, $01AF  ; Health
    dw $09CE, $0010  ; Pbs
    dw $0AF6, $00A2  ; Samus X
    dw $0AF8, $A000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_norfair_cleanup_hotarubi_missile_room:
    dw #preset_suitless_norfair_cleanup_firefleas_up ; Norfair Cleanup: Firefleas Up
    dw $078D, $9A02  ; DDB
    dw $079B, $B6EE  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0011  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0011  ; Layer 2 Y position
    dw $09C2, $01A6  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0167  ; Samus X
    dw $0AF8, $E000  ; Samus subpixel X
    dw #$FFFF

preset_suitless_norfair_cleanup_hotarubi_revisit:
    dw #preset_suitless_norfair_cleanup_hotarubi_missile_room ; Norfair Cleanup: Hotarubi Missile Room
    dw $078D, $99D2  ; DDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0097  ; Health
    dw $09C6, $003E  ; Missiles
    dw $09C8, $00AF  ; Max missiles
    dw $09CE, $0015  ; Pbs
    dw $09D0, $002D  ; Max pbs
    dw $0AF6, $0165  ; Samus X
    dw $0AF8, $3000  ; Samus subpixel X
    dw $D878, $DEDE  ; Items
    dw #$FFFF

preset_suitless_norfair_cleanup_three_musketeers:
    dw #preset_suitless_norfair_cleanup_hotarubi_revisit ; Norfair Cleanup: Hotarubi Revisit
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $0008  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0006  ; Layer 2 Y position
    dw $09C2, $0072  ; Health
    dw $0AF6, $0065  ; Samus X
    dw $0AF8, $2000  ; Samus subpixel X
    dw #$FFFF

preset_suitless_norfair_cleanup_single_chamber_2:
    dw #preset_suitless_norfair_cleanup_three_musketeers ; Norfair Cleanup: Three Musketeers
    dw $078D, $99AE  ; DDB
    dw $079B, $B656  ; MDB
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09C2, $04A7  ; Health
    dw $09C6, $0038  ; Missiles
    dw $09C8, $00B4  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CE, $000A  ; Pbs
    dw $09D6, $0110  ; Reserves
    dw $0AF6, $0168  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $D878, $FEDE  ; Items
    dw #$FFFF

preset_suitless_norfair_cleanup_bubble_mountain_return:
    dw #preset_suitless_norfair_cleanup_single_chamber_2 ; Norfair Cleanup: Single Chamber
    dw $078D, $9A4A  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $0002  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $09C2, $0414  ; Health
    dw $09C6, $0036  ; Missiles
    dw $09D2, $0001  ; Currently selected item
    dw $0AF6, $008E  ; Samus X
    dw $0AF8, $C000  ; Samus subpixel X
    dw #$FFFF

preset_suitless_norfair_cleanup_norfair_reserve_back:
    dw #preset_suitless_norfair_cleanup_bubble_mountain_return ; Norfair Cleanup: Bubble Mountain Return
    dw $078D, $9552  ; DDB
    dw $079B, $AC83  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $03C7  ; Health
    dw $09C6, $003A  ; Missiles
    dw $09C8, $00B9  ; Max missiles
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0049  ; Samus X
    dw $D876, $9FFE  ; Items
    dw $D8BA, $DFFF  ; Doors
    dw #$FFFF

preset_suitless_norfair_cleanup_bubble_mountain_final:
    dw #preset_suitless_norfair_cleanup_norfair_reserve_back ; Norfair Cleanup: Norfair Reserve Back
    dw $078D, $952E  ; DDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $030D  ; Health
    dw $09C6, $003E  ; Missiles
    dw $09C8, $00BE  ; Max missiles
    dw $09D2, $0003  ; Currently selected item
    dw $09D4, $0190  ; Max reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01C0  ; Samus X
    dw $0AF8, $EFFF  ; Samus subpixel X
    dw $D876, $FFFE  ; Items
    dw #$FFFF

preset_suitless_norfair_cleanup_frog_speedway:
    dw #preset_suitless_norfair_cleanup_bubble_mountain_final ; Norfair Cleanup: Bubble Mountain Final
    dw $078D, $956A  ; DDB
    dw $079B, $AF72  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0020  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0917, $0018  ; Layer 2 X position
    dw $09C2, $02A8  ; Health
    dw $09C6, $0043  ; Missiles
    dw $09C8, $00C3  ; Max missiles
    dw $09CE, $0009  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00C0  ; Samus X
    dw $0AF8, $1000  ; Samus subpixel X
    dw $D878, $FEDF  ; Items
    dw #$FFFF

preset_suitless_norfair_cleanup_business_center_final:
    dw #preset_suitless_norfair_cleanup_frog_speedway ; Norfair Cleanup: Frog Speedway
    dw $078D, $97DA  ; DDB
    dw $079B, $B167  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $029A  ; Health
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw #$FFFF

preset_suitless_final_cleanup_norfair_elevator:
    dw #preset_suitless_norfair_cleanup_business_center_final ; Norfair Cleanup: Business Center Final
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $007E  ; Samus X
    dw $0AF8, $5FFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_final_cleanup_below_spazer_final:
    dw #preset_suitless_final_cleanup_norfair_elevator ; Final Cleanup: Norfair Elevator
    dw $078D, $A33C  ; DDB
    dw $079B, $CF54  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0AF6, $00AE  ; Samus X
    dw $0AF8, $DFFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_final_cleanup_red_tower_final:
    dw #preset_suitless_final_cleanup_below_spazer_final ; Final Cleanup: Below Spazer Final
    dw $078D, $910E  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0AF6, $0047  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF

preset_suitless_final_cleanup_reverse_slinky:
    dw #preset_suitless_final_cleanup_red_tower_final ; Final Cleanup: Red Tower Final
    dw $078D, $902A  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $03CE  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0917, $02DA  ; Layer 2 X position
    dw $09CA, $0006  ; Supers
    dw $0AF6, $046E  ; Samus X
    dw $0AF8, $B000  ; Samus subpixel X
    dw $0AFA, $004B  ; Samus Y
    dw #$FFFF

preset_suitless_final_cleanup_big_pink_return:
    dw #preset_suitless_final_cleanup_reverse_slinky ; Final Cleanup: Reverse Slinky
    dw $078D, $8EFE  ; DDB
    dw $079B, $9E52  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $000D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0009  ; Layer 2 Y position
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $0036  ; Samus X
    dw $0AF8, $C000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_final_cleanup_waterway:
    dw #preset_suitless_final_cleanup_big_pink_return ; Final Cleanup: Big Pink Return
    dw $078D, $8E7A  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $0915  ; Screen Y position in pixels
    dw $0919, $06CF  ; Layer 2 Y position
    dw $09CA, $0005  ; Supers
    dw $09CE, $0007  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0055  ; Samus X
    dw $0AF8, $DFFF  ; Samus subpixel X
    dw $0AFA, $098B  ; Samus Y
    dw $D8B4, $0B46  ; Doors
    dw #$FFFF

preset_suitless_final_cleanup_big_pink_final:
    dw #preset_suitless_final_cleanup_waterway ; Final Cleanup: Waterway
    dw $078D, $8E0E  ; DDB
    dw $079B, $A0D2  ; MDB
    dw $090F, $73FF  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0513  ; Health
    dw $09C4, $0513  ; Max health
    dw $09C6, $0044  ; Missiles
    dw $09CE, $0008  ; Pbs
    dw $09D6, $0115  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $06D2  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $1FCE  ; Items
    dw #$FFFF

preset_suitless_final_cleanup_blue_brin_hoppers_revisit:
    dw #preset_suitless_final_cleanup_big_pink_final ; Final Cleanup: Big Pink Final
    dw $078D, $8DEA  ; DDB
    dw $079B, $9E52  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $00FA  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $00BB  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09CE, $0007  ; Pbs
    dw $0AF6, $015A  ; Samus X
    dw $0AF8, $2FFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_final_cleanup_construction_zone_revisit:
    dw #preset_suitless_final_cleanup_blue_brin_hoppers_revisit ; Final Cleanup: Blue Brin Hoppers Revisit
    dw $078D, $8E86  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $05D0  ; Screen X position in pixels
    dw $0913, $1BFF  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $045C  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09CE, $0006  ; Pbs
    dw $0AF6, $0630  ; Samus X
    dw $0AF8, $EFFF  ; Samus subpixel X
    dw $0AFA, $02BB  ; Samus Y
    dw #$FFFF

preset_suitless_final_cleanup_beta_missile_room:
    dw #preset_suitless_final_cleanup_construction_zone_revisit ; Final Cleanup: Construction Zone Revisit
    dw $078D, $8EAA  ; DDB
    dw $079B, $9F11  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0004  ; Supers
    dw $0AF6, $00DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B6, $FEFF  ; Doors
    dw #$FFFF

preset_suitless_final_cleanup_john_cena_bridge:
    dw #preset_suitless_final_cleanup_beta_missile_room ; Final Cleanup: Beta Missile Room
    dw $078D, $8ECE  ; DDB
    dw $079B, $9F64  ; MDB
    dw $090F, $EFFD  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09C2, $0577  ; Health
    dw $09C4, $0577  ; Max health
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $025B  ; Samus X
    dw $D872, $EFEF  ; Items
    dw #$FFFF

preset_suitless_final_cleanup_beta_missile_revisit:
    dw #preset_suitless_final_cleanup_john_cena_bridge ; Final Cleanup: John Cena Bridge
    dw $078D, $8FFA  ; DDB
    dw $079B, $A1AD  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $004E  ; Missiles
    dw $09C8, $00CD  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01DD  ; Samus X
    dw $D874, $1FFE  ; Items
    dw #$FFFF

preset_suitless_final_cleanup_pit_room_final:
    dw #preset_suitless_final_cleanup_beta_missile_revisit ; Final Cleanup: Beta Missile Revisit
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $0572  ; Health
    dw $09C6, $0053  ; Missiles
    dw $09C8, $00D2  ; Max missiles
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0A68, $006A  ; Flash suit
    dw $0AF6, $0080  ; Samus X
    dw $0AF8, $1FFF  ; Samus subpixel X
    dw $0AFA, $0088  ; Samus Y
    dw $0AFC, $0000  ; Samus subpixel Y
    dw $D872, $FFEF  ; Items
    dw #$FFFF

preset_suitless_final_cleanup_climb_supers:
    dw #preset_suitless_final_cleanup_pit_room_final ; Final Cleanup: Pit Room Final
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $6FFF  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $0700  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0540  ; Layer 2 Y position
    dw $09C2, $0534  ; Health
    dw $09C6, $005A  ; Missiles
    dw $09C8, $00D7  ; Max missiles
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $02DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $078B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $D870, $E1DE  ; Items
    dw $D8B2, $2C08  ; Doors
    dw #$FFFF

preset_suitless_final_cleanup_parlor_return:
    dw #preset_suitless_final_cleanup_climb_supers ; Final Cleanup: Climb Supers
    dw $078D, $8C6A  ; DDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5403  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0477  ; Health
    dw $09CA, $0008  ; Supers
    dw $09CC, $0032  ; Max supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $019B  ; Samus X
    dw $0AF8, $A000  ; Samus subpixel X
    dw $0AFA, $005B  ; Samus Y
    dw $D870, $E9DE  ; Items
    dw #$FFFF

preset_suitless_final_cleanup_230_bombway:
    dw #preset_suitless_final_cleanup_parlor_return ; Final Cleanup: Parlor Return
    dw $078D, $8B3E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $02FF  ; Screen Y position in pixels
    dw $0919, $023F  ; Layer 2 Y position
    dw $0AF6, $015B  ; Samus X
    dw $0AF8, $E000  ; Samus subpixel X
    dw $0AFA, $039B  ; Samus Y
    dw #$FFFF

preset_suitless_final_cleanup_230_mockball:
    dw #preset_suitless_final_cleanup_230_bombway ; Final Cleanup: 230 Bombway
    dw $078D, $8C82  ; DDB
    dw $079B, $9A90  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $005F  ; Missiles
    dw $09C8, $00DC  ; Max missiles
    dw $09CE, $0002  ; Pbs
    dw $09D2, $0004  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0057  ; Samus X
    dw $0AF8, $B000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D870, $F9DE  ; Items
    dw #$FFFF

preset_suitless_final_cleanup_parlor_revisit:
    dw #preset_suitless_final_cleanup_230_mockball ; Final Cleanup: 230 Mockball
    dw $078D, $8C9A  ; DDB
    dw $079B, $9A44  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $7C01  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $01C0  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw #$FFFF

preset_suitless_final_cleanup_landing_site_revisit:
    dw #preset_suitless_final_cleanup_parlor_revisit ; Final Cleanup: Parlor Revisit
    dw $078D, $8C8E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0AF6, $048A  ; Samus X
    dw $0AF8, $E000  ; Samus subpixel X
    dw $0AFA, $009B  ; Samus Y
    dw $0AFC, $43FF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_final_cleanup_crateria_pbs:
    dw #preset_suitless_final_cleanup_landing_site_revisit ; Final Cleanup: Landing Site Revisit
    dw $078D, $896A  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $090F, $8C00  ; Screen subpixel X position
    dw $0911, $078D  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $00DB  ; Screen Y position in pixels
    dw $0917, $03C6  ; Layer 2 X position
    dw $09C2, $0428  ; Health
    dw $09C6, $0061  ; Missiles
    dw $09CE, $0001  ; Pbs
    dw $0AF6, $0804  ; Samus X
    dw $0AF8, $BBFF  ; Samus subpixel X
    dw $0AFA, $014B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $D8B0, $4002  ; Doors
    dw #$FFFF

preset_suitless_final_cleanup_gauntlet_entry:
    dw #preset_suitless_final_cleanup_crateria_pbs ; Final Cleanup: Crateria PBs
    dw $078D, $893A  ; DDB
    dw $079B, $93AA  ; MDB
    dw $090F, $6001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $03EC  ; Health
    dw $09CE, $0009  ; Pbs
    dw $09D0, $0032  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004F  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D870, $F9DF  ; Items
    dw #$FFFF

preset_suitless_final_cleanup_gauntlet_etank:
    dw #preset_suitless_final_cleanup_gauntlet_entry ; Final Cleanup: Gauntlet Entry
    dw $078D, $892E  ; DDB
    dw $079B, $92B3  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $4001  ; Screen subpixel X position
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $09C2, $0318  ; Health
    dw $0AF6, $0025  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw #$FFFF

preset_suitless_final_cleanup_quickdrops:
    dw #preset_suitless_final_cleanup_gauntlet_etank ; Final Cleanup: Gauntlet E-Tank
    dw $078D, $8952  ; DDB
    dw $079B, $965B  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $09C2, $05DA  ; Health
    dw $09C4, $05DB  ; Max health
    dw $09CE, $0008  ; Pbs
    dw $0AF6, $004F  ; Samus X
    dw $0AF8, $5000  ; Samus subpixel X
    dw $0AFC, $D3FF  ; Samus subpixel Y
    dw $D870, $F9FF  ; Items
    dw #$FFFF

preset_suitless_tourian_tourian_elevator:
    dw #preset_suitless_final_cleanup_quickdrops ; Final Cleanup: Quickdrops
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $090F, $D800  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $09C2, $05DB  ; Health
    dw $09C6, $006C  ; Missiles
    dw $09C8, $00E6  ; Max missiles
    dw $09D6, $0128  ; Reserves
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AF8, $BBFF  ; Samus subpixel X
    dw $0AFA, $02A8  ; Samus Y
    dw $0AFC, $0000  ; Samus subpixel Y
    dw $D820, $3FC1  ; Events
    dw $D870, $FFFF  ; Items
    dw $D8B2, $6C08  ; Doors
    dw $D90C, $0100  ; Map Stations
    dw #$FFFF

preset_suitless_tourian_metroids_1:
    dw #preset_suitless_tourian_tourian_elevator ; Tourian: Tourian Elevator
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $27FF  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003B  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_suitless_tourian_metroids_2:
    dw #preset_suitless_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $05C0  ; Health
    dw $09C6, $006E  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $09CE, $0009  ; Pbs
    dw $09D6, $0190  ; Reserves
    dw $0AF6, $003E  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0021  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF

preset_suitless_tourian_metroids_3:
    dw #preset_suitless_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0919, $00D7  ; Layer 2 Y position
    dw $09C2, $058E  ; Health
    dw $09C6, $0076  ; Missiles
    dw $09CA, $0007  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0023  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF

preset_suitless_tourian_metroids_4:
    dw #preset_suitless_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $05DB  ; Health
    dw $09C6, $0080  ; Missiles
    dw $09CA, $0008  ; Supers
    dw $09CE, $000A  ; Pbs
    dw $0AF6, $05A5  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0027  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF

preset_suitless_tourian_baby_skip:
    dw #preset_suitless_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00FA  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0917, $00BB  ; Layer 2 X position
    dw $09C6, $008C  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $09CE, $000D  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $019A  ; Samus X
    dw $0AF8, $C000  ; Samus subpixel X
    dw $0AFA, $00AB  ; Samus Y
    dw $D822, $002F  ; Events
    dw $D8C4, $000F  ; Doors
    dw #$FFFF

preset_suitless_tourian_gadora_room:
    dw #preset_suitless_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AA44  ; DDB
    dw $079B, $DCFF  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $BFFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $09CA, $0008  ; Supers
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $019B  ; Samus Y
    dw $D8C4, $00AF  ; Doors
    dw #$FFFF

preset_suitless_tourian_zeb_skip:
    dw #preset_suitless_tourian_gadora_room ; Tourian: Gadora Room
    dw $078D, $AAA4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $090F, $2001  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0219  ; Screen Y position in pixels
    dw $0919, $0192  ; Layer 2 Y position
    dw $09CA, $0006  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0036  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF

preset_suitless_tourian_mother_brain_2:
    dw #preset_suitless_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAC8  ; DDB
    dw $079B, $DD58  ; MDB
    dw $07F3, $0021  ; Music Bank
    dw $07F5, $0000  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $05B3  ; Health
    dw $09C6, $0079  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $0AF6, $00CF  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D820, $3FC5  ; Events
    dw #$FFFF

preset_suitless_tourian_mother_brain_3:
    dw #preset_suitless_tourian_mother_brain_2 ; Tourian: Mother Brain 2
    dw $09A6, $1009  ; Equipped Beams
    dw $09C2, $0128  ; Health
    dw $09C6, $002E  ; Missiles
    dw $09CE, $0000  ; Pbs
    dw $0A76, $8000  ; Hyper beam
    dw $D82C, $0203  ; Bosses
    dw #$FFFF

preset_suitless_tourian_zebes_escape:
    dw #preset_suitless_tourian_mother_brain_3 ; Tourian: Mother Brain 3
    dw $09C2, $05DB  ; Health
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $009E  ; Samus Y
    dw $D820, $7FC5  ; Events
    dw #$FFFF

preset_suitless_tourian_blue_bomber:
    dw #preset_suitless_tourian_zebes_escape ; Tourian: Zebes Escape
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $01BB  ; Samus Y
    dw #$FFFF

preset_suitless_tourian_leodox_room:
    dw #preset_suitless_tourian_blue_bomber ; Tourian: Blue Bomber
    dw $078D, $AB04  ; DDB
    dw $079B, $DEA7  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09C2, $05B2  ; Health
    dw $0AF6, $05DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_suitless_tourian_escape_climb:
    dw #preset_suitless_tourian_leodox_room ; Tourian: Leodox Room
    dw $078D, $AB1C  ; DDB
    dw $079B, $DEDE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $010B  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $00F2  ; Screen Y position in pixels
    dw $0917, $00C8  ; Layer 2 X position
    dw $0919, $00B5  ; Layer 2 Y position
    dw $0AF6, $0158  ; Samus X
    dw $0AF8, $B000  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_suitless_tourian_escape_parlor:
    dw #preset_suitless_tourian_escape_climb ; Tourian: Escape Climb
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $A401  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $051F  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $019D  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $0AFA, $005B  ; Samus Y
    dw $D90C, $FF00  ; Map Stations
    dw #$FFFF

preset_suitless_tourian_landing_site:
    dw #preset_suitless_tourian_escape_parlor ; Tourian: Escape Parlor
    dw $078D, $8BB6  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0490  ; Samus X
    dw $0AF8, $37FF  ; Samus subpixel X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF
