
preset_nintendopower_crateria_ceres_elevator:
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

preset_nintendopower_crateria_ceres_escape:
    dw #preset_nintendopower_crateria_ceres_elevator ; Crateria: Ceres Elevator
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

preset_nintendopower_crateria_ceres_last_3_rooms:
    dw #preset_nintendopower_crateria_ceres_escape ; Crateria: Ceres Escape
    dw $078D, $ABA0  ; DDB
    dw $079B, $E021  ; MDB
    dw $090F, $7400  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $00A2  ; Samus Y
    dw #$FFFF

preset_nintendopower_crateria_ship:
    dw #preset_nintendopower_crateria_ceres_last_3_rooms ; Crateria: Ceres Last 3 Rooms
    dw $078D, $88FE  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $0006  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $093F, $0000  ; Ceres escape flag
    dw $09C2, $0063  ; Health
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0481  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $0471  ; Samus Y
    dw $0AFC, $8000  ; Samus subpixel Y
    dw $0917, $0200  ; Layer 2 X position
    dw #$FFFF

preset_nintendopower_crateria_parlor:
    dw #preset_nintendopower_crateria_ship ; Crateria: Ship
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

preset_nintendopower_crateria_climb_down:
    dw #preset_nintendopower_crateria_parlor ; Crateria: Parlor
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

preset_nintendopower_crateria_pit_room:
    dw #preset_nintendopower_crateria_climb_down ; Crateria: Climb Down
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

preset_nintendopower_crateria_morph:
    dw #preset_nintendopower_crateria_pit_room ; Crateria: Pit Room
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

preset_nintendopower_crateria_construction_zone_down:
    dw #preset_nintendopower_crateria_morph ; Crateria: Morph
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

preset_nintendopower_crateria_construction_zone_up:
    dw #preset_nintendopower_crateria_construction_zone_down ; Crateria: Construction Zone Down
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

preset_nintendopower_crateria_pit_room_revisit:
    dw #preset_nintendopower_crateria_construction_zone_up ; Crateria: Construction Zone Up
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C8, $000A  ; Max missiles
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $D872, $1400  ; Items
    dw $D8B6, $0004  ; Doors
    dw #$FFFF

preset_nintendopower_crateria_climb_up:
    dw #preset_nintendopower_crateria_pit_room_revisit ; Crateria: Pit Room Revisit
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $09C6, $000A  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0087  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $0001  ; Events
    dw $D8B2, $0400  ; Doors
    dw #$FFFF

preset_nintendopower_crateria_parlor_revisit:
    dw #preset_nintendopower_crateria_climb_up ; Crateria: Climb Up
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0AF6, $01A0  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_nintendopower_crateria_flyway:
    dw #preset_nintendopower_crateria_parlor_revisit ; Crateria: Parlor Revisit
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

preset_nintendopower_crateria_bomb_torizo:
    dw #preset_nintendopower_crateria_flyway ; Crateria: Flyway
    dw $078D, $8982  ; DDB
    dw $079B, $9879  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0005  ; Missiles
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $02BE  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B2, $2400  ; Doors
    dw #$FFFF

preset_nintendopower_crateria_alcatraz:
    dw #preset_nintendopower_crateria_bomb_torizo ; Crateria: Bomb Torizo
    dw $078D, $8BAA  ; DDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C6, $000A  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0037  ; Samus X
    dw $D828, $0004  ; Bosses
    dw $D870, $0080  ; Items
    dw $D8B2, $2C00  ; Doors
    dw #$FFFF

preset_nintendopower_crateria_terminator:
    dw #preset_nintendopower_crateria_alcatraz ; Crateria: Alcatraz
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

preset_nintendopower_crateria_green_pirate_shaft:
    dw #preset_nintendopower_crateria_terminator ; Crateria: Terminator
    dw $078D, $895E  ; DDB
    dw $079B, $990D  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01FD  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $017D  ; Layer 2 Y position
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0077  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw $D870, $0180  ; Items
    dw #$FFFF

preset_nintendopower_brinstar_green_brinstar_elevator:
    dw #preset_nintendopower_crateria_green_pirate_shaft ; Crateria: Green Pirate Shaft
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $9800  ; Screen subpixel Y position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $0080  ; Samus X
    dw $D870, $0180  ; Items
    dw #$FFFF

preset_nintendopower_brinstar_big_pink:
    dw #preset_nintendopower_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dw $078D, $8DD2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $CC00  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $09C2, $00A9  ; Health
    dw $09C6, $0009  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $06C0  ; Samus X
    dw $D8B4, $0004  ; Doors
    dw #$FFFF

preset_nintendopower_brinstar_spore_spawn:
    dw #preset_nintendopower_brinstar_big_pink ; Brinstar: Big Pink
    dw $078D, $8DC6  ; DDB
    dw $079B, $9D9C  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $02F0  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $09A6, $1000  ; Beams
    dw $09A8, $1000  ; Beams
    dw $09C6, $0007  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $0AF6, $037E  ; Samus X
    dw $0AFA, $007B  ; Samus Y
    dw $D872, $14C0  ; Items
    dw $D8B4, $2404  ; Doors
    dw #$FFFF

preset_nintendopower_brinstar_spore_fall:
    dw #preset_nintendopower_brinstar_spore_spawn ; Brinstar: Spore Spawn
    dw $078D, $8E3E  ; DDB
    dw $079B, $9DC7  ; MDB
    dw $07F3, $002A  ; Music Bank
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $09C2, $00C7  ; Health
    dw $09C6, $000F  ; Missiles
    dw $0AF6, $00CE  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D828, $0204  ; Bosses
    dw #$FFFF

preset_nintendopower_brinstar_red_tower:
    dw #preset_nintendopower_brinstar_spore_fall ; Brinstar: Spore Fall
    dw $078D, $902A  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $2400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $00A9  ; Health
    dw $09C6, $0014  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $0AF6, $05C5  ; Samus X
    dw $D870, $4180  ; Items
    dw $D872, $16C0  ; Items
    dw $D8B4, $2604  ; Doors
    dw $D8B6, $002C  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_business_center:
    dw #preset_nintendopower_brinstar_red_tower ; Brinstar: Red Tower
    dw $078D, $A384  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $09A6, $1004  ; Beams
    dw $09A8, $1004  ; Beams
    dw $0A1C, $0005  ; Samus position/state
    dw $0AF6, $0081  ; Samus X
    dw $D874, $0404  ; Items
    dw $D8B6, $802C  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_kraid_warehouse:
    dw #preset_nintendopower_norfair_business_center ; Norfair: Business Center
    dw $078D, $92EE  ; DDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0176  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $09A2, $1104  ; Equipped Items
    dw $09A4, $1104  ; Collected Items
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $0019  ; Missiles
    dw $09C8, $0019  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0AF6, $01D6  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D876, $01A0  ; Items
    dw $D8B8, $2000  ; Doors
    dw $D8BA, $0001  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_kraid_fight:
    dw #preset_nintendopower_norfair_kraid_warehouse ; Norfair: Kraid Warehouse
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $09C2, $010D  ; Health
    dw $09CA, $0004  ; Supers
    dw $0AF6, $01CC  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $2024  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_rising_tide:
    dw #preset_nintendopower_norfair_kraid_fight ; Norfair: Kraid Fight
    dw $078D, $92B2  ; DDB
    dw $079B, $A788  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $5F80  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $09A2, $1105  ; Equipped Items
    dw $09A4, $1105  ; Collected Items
    dw $09C2, $0177  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $001E  ; Missiles
    dw $09C8, $001E  ; Max missiles
    dw $09CA, $0002  ; Supers
    dw $0AF6, $02C4  ; Samus X
    dw $D828, $0304  ; Bosses
    dw $D874, $0C04  ; Items
    dw $D876, $01A3  ; Items
    dw $D8B8, $26EF  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_reserve_tank:
    dw #preset_nintendopower_norfair_rising_tide ; Norfair: Rising Tide
    dw $078D, $95A6  ; DDB
    dw $079B, $B07A  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $09A2, $3105  ; Equipped Items
    dw $09A4, $3105  ; Collected Items
    dw $09C2, $0184  ; Health
    dw $09C6, $0028  ; Missiles
    dw $09C8, $0028  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0038  ; Samus X
    dw $D822, $0020  ; Events
    dw $D878, $0007  ; Items
    dw $D8BA, $0031  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_ice_beam:
    dw #preset_nintendopower_norfair_reserve_tank ; Norfair: Reserve Tank
    dw $078D, $97DA  ; DDB
    dw $079B, $B167  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C0, $0001  ; Manual/Auto reserve tank
    dw $09C2, $0104  ; Health
    dw $09C6, $0032  ; Missiles
    dw $09C8, $0032  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $09D4, $0064  ; Max reserves
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $E1A3  ; Items
    dw $D8BA, $0039  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_ice_escape:
    dw #preset_nintendopower_norfair_ice_beam ; Norfair: Ice Beam
    dw $078D, $935A  ; DDB
    dw $079B, $A8B9  ; MDB
    dw $090F, $E001  ; Screen subpixel X position
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $09A6, $1006  ; Beams
    dw $09A8, $1006  ; Beams
    dw $09C2, $00FE  ; Health
    dw $09CA, $0002  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00BD  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D876, $E1A7  ; Items
    dw $D8B8, $2EEF  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_shinespark_to_power_bombs:
    dw #preset_nintendopower_norfair_ice_escape ; Norfair: Ice Escape
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $011B  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $007E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_nintendopower_norfair_business_center_2:
    dw #preset_nintendopower_norfair_shinespark_to_power_bombs ; Norfair: Shinespark to Power Bombs
    dw $078D, $A384  ; DDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $7400  ; Screen subpixel Y position
    dw $09C2, $00E4  ; Health
    dw $09C6, $0037  ; Missiles
    dw $09C8, $0037  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0AF6, $0082  ; Samus X
    dw $D874, $0F04  ; Items
    dw $D8B6, $B02C  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_crocomire:
    dw #preset_nintendopower_norfair_business_center_2 ; Norfair: Business Center 2
    dw $078D, $9396  ; DDB
    dw $079B, $A923  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $5C80  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $09C2, $00C4  ; Health
    dw $09CA, $0002  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $0CB5  ; Samus X
    dw $0AFA, $02AB  ; Samus Y
    dw $D8B8, $6EEF  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_grapple_beam:
    dw #preset_nintendopower_norfair_crocomire ; Norfair: Crocomire
    dw $078D, $944A  ; DDB
    dw $079B, $AB07  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $09C2, $012A  ; Health
    dw $09C4, $01F3  ; Max health
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $004A  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw $D82A, $0002  ; Bosses
    dw $D876, $E1B7  ; Items
    dw #$FFFF

preset_nintendopower_norfair_exit_grapple_beam:
    dw #preset_nintendopower_norfair_grapple_beam ; Norfair: Grapple Beam
    dw $078D, $94DA  ; DDB
    dw $079B, $AC2B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $09A2, $7105  ; Equipped Items
    dw $09A4, $7105  ; Collected Items
    dw $09C2, $0139  ; Health
    dw $09C6, $003C  ; Missiles
    dw $09C8, $003C  ; Max missiles
    dw $09CE, $0004  ; Pbs
    dw $0AF6, $0055  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D876, $F9B7  ; Items
    dw #$FFFF

preset_nintendopower_norfair_power_bombs_post_croc:
    dw #preset_nintendopower_norfair_exit_grapple_beam ; Norfair: Exit Grapple Beam
    dw $078D, $944A  ; DDB
    dw $079B, $AB07  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $0075  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_nintendopower_norfair_red_pirate_shaft:
    dw #preset_nintendopower_norfair_power_bombs_post_croc ; Norfair: Power Bombs Post Croc
    dw $078D, $93C6  ; DDB
    dw $079B, $AFCE  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $02FE  ; Screen X position in pixels
    dw $0913, $9800  ; Screen subpixel Y position
    dw $09C2, $0168  ; Health
    dw $09CA, $0003  ; Supers
    dw $09CE, $000A  ; Pbs
    dw $09D0, $000A  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $038D  ; Samus X
    dw $D876, $FBB7  ; Items
    dw $D8B8, $EEEF  ; Doors
    dw $D8BA, $003B  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_bubble_mountain:
    dw #preset_nintendopower_norfair_red_pirate_shaft ; Norfair: Red Pirate Shaft
    dw $078D, $97F2  ; DDB
    dw $079B, $AF72  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $09C2, $01F3  ; Health
    dw $09CA, $0005  ; Supers
    dw $09D6, $0064  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01C2  ; Samus X
    dw #$FFFF

preset_nintendopower_norfair_wave_beam:
    dw #preset_nintendopower_norfair_bubble_mountain ; Norfair: Bubble Mountain
    dw $078D, $9582  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $090F, $9FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3C00  ; Screen subpixel Y position
    dw $0915, $0103  ; Screen Y position in pixels
    dw $09C2, $01DA  ; Health
    dw $09CA, $0004  ; Supers
    dw $09CE, $0009  ; Pbs
    dw $0AF6, $00B6  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8BA, $007B  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_shinespark_2:
    dw #preset_nintendopower_norfair_wave_beam ; Norfair: Wave Beam
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A6, $1007  ; Beams
    dw $09A8, $1007  ; Beams
    dw $09C2, $01DF  ; Health
    dw $09C6, $0041  ; Missiles
    dw $09C8, $0041  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $09CE, $000A  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0077  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $001F  ; Items
    dw $D8BA, $00FB  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_xray_beam:
    dw #preset_nintendopower_norfair_shinespark_2 ; Norfair: Shinespark 2
    dw $078D, $90F6  ; DDB
    dw $079B, $A253  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $061D  ; Screen Y position in pixels
    dw $09C2, $019B  ; Health
    dw $09CA, $0002  ; Supers
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D8B6, $B22C  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_xray_beam_2:
    dw #preset_nintendopower_norfair_xray_beam ; Norfair: X-Ray Beam
    dw $078D, $9036  ; DDB
    dw $079B, $A293  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $01E6  ; Health
    dw $0AF6, $004A  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B6, $B62C  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_xray_beam_3:
    dw #preset_nintendopower_norfair_xray_beam_2 ; Norfair: X-Ray Beam 2
    dw $078D, $905A  ; DDB
    dw $079B, $A2CE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $00E2  ; Screen X position in pixels
    dw $0913, $4401  ; Screen subpixel Y position
    dw $09A2, $F105  ; Equipped Items
    dw $09A4, $F105  ; Collected Items
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0175  ; Samus X
    dw $D874, $0F44  ; Items
    dw #$FFFF

preset_nintendopower_wrecked_ship_red_brinstar_elevator:
    dw #preset_nintendopower_norfair_xray_beam_3 ; Norfair: X-Ray Beam 3
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $09C2, $01D6  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CE, $0008  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $007E  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF

preset_nintendopower_wrecked_ship_moat_missiles:
    dw #preset_nintendopower_wrecked_ship_red_brinstar_elevator ; Wrecked Ship: Red Brinstar Elevator
    dw $078D, $8AF6  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $09C2, $01EF  ; Health
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02B7  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B0, $6000  ; Doors
    dw $D8B2, $2C01  ; Doors
    dw #$FFFF

preset_nintendopower_wrecked_ship_shinespark_to_phantoon:
    dw #preset_nintendopower_wrecked_ship_moat_missiles ; Wrecked Ship: Moat Missiles
    dw $078D, $8A36  ; DDB
    dw $079B, $95FF  ; MDB
    dw $090F, $1FC0  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8A99  ; Screen subpixel Y position
    dw $09C6, $0046  ; Missiles
    dw $09C8, $0046  ; Max missiles
    dw $0AF6, $01AC  ; Samus X
    dw $D870, $4190  ; Items
    dw #$FFFF

preset_nintendopower_wrecked_ship_phantoon:
    dw #preset_nintendopower_wrecked_ship_shinespark_to_phantoon ; Wrecked Ship: Shinespark to Phantoon
    dw $078D, $A1BC  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $090F, $7400  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $071F  ; Screen Y position in pixels
    dw $09C2, $01BB  ; Health
    dw $09CA, $0003  ; Supers
    dw $0AF6, $044C  ; Samus X
    dw $0AFA, $07BB  ; Samus Y
    dw $D8B0, $7000  ; Doors
    dw $D8C0, $0010  ; Doors
    dw #$FFFF

preset_nintendopower_wrecked_ship_movement_before_attic:
    dw #preset_nintendopower_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dw $078D, $A210  ; DDB
    dw $079B, $CDA8  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0076  ; Health
    dw $09CA, $000A  ; Supers
    dw $09CC, $000A  ; Max supers
    dw $09CE, $0009  ; Pbs
    dw $0AF6, $00CD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82A, $0102  ; Bosses
    dw $D880, $0020  ; Items
    dw $D8C0, $0074  ; Doors
    dw #$FFFF

preset_nintendopower_wrecked_ship_attic:
    dw #preset_nintendopower_wrecked_ship_movement_before_attic ; Wrecked Ship: Movement before Attic
    dw $078D, $A2E8  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $09C2, $00C6  ; Health
    dw $0AF6, $0482  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_nintendopower_wrecked_ship_bowling_alley:
    dw #preset_nintendopower_wrecked_ship_attic ; Wrecked Ship: Attic
    dw $078D, $A1E0  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $9800  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0915, $0203  ; Screen Y position in pixels
    dw $09C2, $01F3  ; Health
    dw $09CE, $0008  ; Pbs
    dw $0AF6, $02DC  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C0, $0174  ; Doors
    dw #$FFFF

preset_nintendopower_wrecked_ship_gravity_suit_room:
    dw #preset_nintendopower_wrecked_ship_bowling_alley ; Wrecked Ship: Bowling Alley
    dw $078D, $A1A4  ; DDB
    dw $079B, $CE40  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A2, $F125  ; Equipped Items
    dw $09A4, $F125  ; Collected Items
    dw $09C2, $0149  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0075  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $00A0  ; Items
    dw #$FFFF

preset_nintendopower_wrecked_ship_red_tower_3:
    dw #preset_nintendopower_wrecked_ship_gravity_suit_room ; Wrecked Ship: Gravity Suit Room
    dw $078D, $90AE  ; DDB
    dw $079B, $A2F7  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $3800  ; Screen subpixel Y position
    dw $09C2, $01DD  ; Health
    dw $09CE, $0009  ; Pbs
    dw $0AF6, $0034  ; Samus X
    dw #$FFFF

preset_nintendopower_maridia_mainstreet:
    dw #preset_nintendopower_wrecked_ship_red_tower_3 ; Wrecked Ship: Red Tower 3
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0915, $071C  ; Screen Y position in pixels
    dw $09A6, $1001  ; Beams
    dw $09C2, $01F3  ; Health
    dw $09CA, $0009  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01AA  ; Samus X
    dw $0AFA, $0791  ; Samus Y
    dw $D820, $0801  ; Events
    dw $D8B6, $B72C  ; Doors
    dw $D8C0, $2174  ; Doors
    dw #$FFFF

preset_nintendopower_maridia_pants_room:
    dw #preset_nintendopower_maridia_mainstreet ; Maridia: Mainstreet
    dw $078D, $A66C  ; DDB
    dw $079B, $D4C2  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $017A  ; Health
    dw $09CA, $0008  ; Supers
    dw $09CE, $000A  ; Pbs
    dw $0AF6, $02C7  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_nintendopower_maridia_east_pants_room:
    dw #preset_nintendopower_maridia_pants_room ; Maridia: Pants Room
    dw $078D, $A7C8  ; DDB
    dw $079B, $D8C5  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $09A2, $F127  ; Equipped Items
    dw $09A4, $F127  ; Collected Items
    dw $09C2, $014D  ; Health
    dw $09CE, $0009  ; Pbs
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D820, $2801  ; Events
    dw $D882, $0040  ; Items
    dw #$FFFF

preset_nintendopower_maridia_super_door:
    dw #preset_nintendopower_maridia_east_pants_room ; Maridia: East Pants Room
    dw $078D, $A420  ; DDB
    dw $079B, $D21C  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $002D  ; Screen Y position in pixels
    dw $09C2, $0120  ; Health
    dw $09C6, $0045  ; Missiles
    dw $09CE, $000A  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $007C  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF

preset_nintendopower_maridia_fish_tank:
    dw #preset_nintendopower_maridia_super_door ; Maridia: Super Door
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $A200  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0915, $061B  ; Screen Y position in pixels
    dw $09C2, $01F3  ; Health
    dw $09C6, $0046  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02AB  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw #$FFFF

preset_nintendopower_maridia_mama_turtle:
    dw #preset_nintendopower_maridia_fish_tank ; Maridia: Fish Tank
    dw $078D, $A3B4  ; DDB
    dw $079B, $D017  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $01F1  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0204  ; Screen Y position in pixels
    dw $09C2, $01B7  ; Health
    dw $09CA, $0008  ; Supers
    dw $0AF6, $026F  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C0, $6174  ; Doors
    dw #$FFFF

preset_nintendopower_maridia_crab_supers:
    dw #preset_nintendopower_maridia_mama_turtle ; Maridia: Mama Turtle
    dw $078D, $A3E4  ; DDB
    dw $079B, $D055  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $09C2, $0257  ; Health
    dw $09C4, $0257  ; Max health
    dw $09C6, $004B  ; Missiles
    dw $09C8, $004B  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0064  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D880, $0CA0  ; Items
    dw #$FFFF

preset_nintendopower_maridia_aqueduct:
    dw #preset_nintendopower_maridia_crab_supers ; Maridia: Crab Supers
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $09C2, $0224  ; Health
    dw $09CA, $000C  ; Supers
    dw $09CC, $000F  ; Max supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01AF  ; Samus X
    dw $D880, $0EA0  ; Items
    dw $D8C0, $E174  ; Doors
    dw #$FFFF

preset_nintendopower_maridia_botwoon:
    dw #preset_nintendopower_maridia_aqueduct ; Maridia: Aqueduct
    dw $078D, $A768  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0010  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $01FC  ; Health
    dw $09C6, $0050  ; Missiles
    dw $09C8, $0050  ; Max missiles
    dw $09CA, $0011  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $09CE, $0009  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0081  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D882, $0070  ; Items
    dw #$FFFF

preset_nintendopower_maridia_full_halfie:
    dw #preset_nintendopower_maridia_botwoon ; Maridia: Botwoon
    dw $078D, $A774  ; DDB
    dw $079B, $D95E  ; MDB
    dw $07F3, $002A  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $09C2, $0208  ; Health
    dw $09C6, $004F  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $09CE, $0008  ; Pbs
    dw $0AF6, $0197  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D82C, $0002  ; Bosses
    dw #$FFFF

preset_nintendopower_maridia_draygon:
    dw #preset_nintendopower_maridia_full_halfie ; Maridia: Full Halfie
    dw $078D, $A7EC  ; DDB
    dw $079B, $D81A  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $5001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $09C2, $02BB  ; Health
    dw $09C4, $02BB  ; Max health
    dw $09C6, $0050  ; Missiles
    dw $09CA, $000E  ; Supers
    dw $09CE, $0009  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0044  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D882, $0170  ; Items
    dw $D8C2, $0500  ; Doors
    dw #$FFFF

preset_nintendopower_maridia_going_to_plasma_beam:
    dw #preset_nintendopower_maridia_draygon ; Maridia: Draygon
    dw $078D, $A5A0  ; DDB
    dw $079B, $D5EC  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $6400  ; Screen subpixel Y position
    dw $09A2, $F327  ; Equipped Items
    dw $09A4, $F327  ; Collected Items
    dw $09C6, $0055  ; Missiles
    dw $09C8, $0055  ; Max missiles
    dw $09CA, $0014  ; Supers
    dw $09CE, $000A  ; Pbs
    dw $0AF6, $004D  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D82C, $0003  ; Bosses
    dw $D882, $05F0  ; Items
    dw $D8C2, $DD80  ; Doors
    dw #$FFFF

preset_nintendopower_maridia_plasma_beam:
    dw #preset_nintendopower_maridia_going_to_plasma_beam ; Maridia: Going to Plasma Beam
    dw $078D, $A5DC  ; DDB
    dw $079B, $D27E  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $09C6, $0052  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00D9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C2, $DD88  ; Doors
    dw #$FFFF

preset_nintendopower_maridia_long_tube:
    dw #preset_nintendopower_maridia_plasma_beam ; Maridia: Plasma Beam
    dw $078D, $A5D0  ; DDB
    dw $079B, $D340  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $001A  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $09A6, $1009  ; Beams
    dw $09A8, $100F  ; Beams
    dw $09C2, $0298  ; Health
    dw $09C6, $0055  ; Missiles
    dw $09CA, $0013  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00BA  ; Samus X
    dw $0AFA, $02AB  ; Samus Y
    dw $D880, $8EA0  ; Items
    dw $D8C2, $DD9A  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_2_pre_gt_fight:
    dw #preset_nintendopower_maridia_long_tube ; Maridia: Long Tube
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $023B  ; Screen Y position in pixels
    dw $09C2, $02BB  ; Health
    dw $09CA, $0012  ; Supers
    dw $0AF6, $007A  ; Samus X
    dw #$FFFF

preset_nintendopower_norfair_2_elevator_menu:
    dw #preset_nintendopower_norfair_2_pre_gt_fight ; Norfair 2: Pre GT Fight
    dw $078D, $96EA  ; DDB
    dw $079B, $AF14  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $00BC  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0036  ; Screen Y position in pixels
    dw $09C2, $027F  ; Health
    dw $0AF6, $0129  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8BA, $01FB  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_2_golden_torizo:
    dw #preset_nintendopower_norfair_2_elevator_menu ; Norfair 2: Elevator Menu
    dw $078D, $9852  ; DDB
    dw $079B, $B1E5  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $09A6, $100B  ; Beams
    dw $09C2, $01D7  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02BB  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D820, $3801  ; Events
    dw #$FFFF

preset_nintendopower_norfair_2_on_route_to_ridley:
    dw #preset_nintendopower_norfair_2_golden_torizo ; Norfair 2: Golden Torizo
    dw $078D, $9A7A  ; DDB
    dw $079B, $B305  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A2, $F32F  ; Equipped Items
    dw $09A4, $F32F  ; Collected Items
    dw $09C2, $02BB  ; Health
    dw $09C6, $005A  ; Missiles
    dw $09C8, $005A  ; Max missiles
    dw $09CA, $0018  ; Supers
    dw $09CC, $0019  ; Max supers
    dw $09CE, $0009  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82A, $0106  ; Bosses
    dw $D878, $80DF  ; Items
    dw $D8BA, $03FB  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_2_worst_room_in_the_game:
    dw #preset_nintendopower_norfair_2_on_route_to_ridley ; Norfair 2: On Route to Ridley
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $9400  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $09C2, $0274  ; Health
    dw $09CA, $0017  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03DB  ; Samus X
    dw #$FFFF

preset_nintendopower_norfair_2_metal_ninja_pirates:
    dw #preset_nintendopower_norfair_2_worst_room_in_the_game ; Norfair 2: Worst Room in the Game
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021B  ; Screen Y position in pixels
    dw $09C2, $01BA  ; Health
    dw $09CA, $0016  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0153  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $C3FB  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_2_ridley:
    dw #preset_nintendopower_norfair_2_metal_ninja_pirates ; Norfair 2: Metal Ninja Pirates
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $02BB  ; Health
    dw $09CA, $0019  ; Supers
    dw $09CE, $0006  ; Pbs
    dw $0AF6, $004D  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8BA, $D3FB  ; Doors
    dw $D8BC, $0001  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_2_escape_from_ridley:
    dw #preset_nintendopower_norfair_2_ridley ; Norfair 2: Ridley
    dw $078D, $98B2  ; DDB
    dw $079B, $B698  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $2400  ; Screen subpixel Y position
    dw $09C2, $031F  ; Health
    dw $09C4, $031F  ; Max health
    dw $09CE, $0007  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B7  ; Samus X
    dw $D82A, $0107  ; Bosses
    dw $D878, $C0DF  ; Items
    dw $D8BA, $DBFB  ; Doors
    dw #$FFFF

preset_nintendopower_norfair_2_landing_site:
    dw #preset_nintendopower_norfair_2_escape_from_ridley ; Norfair 2: Escape from Ridley
    dw $078D, $8AC6  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $E800  ; Screen subpixel X position
    dw $0911, $0401  ; Screen X position in pixels
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $09CE, $000A  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $047E  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw $D8BA, $DFFB  ; Doors
    dw #$FFFF

preset_nintendopower_tourian_metroids_1:
    dw #preset_nintendopower_norfair_2_landing_site ; Norfair 2: Landing Site
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $09A2, $F327  ; Equipped Items
    dw $09CA, $0018  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw $D820, $3FC1  ; Events
    dw $D8B2, $6C01  ; Doors
    dw $D90C, $0100  ; Map Stations
    dw #$FFFF

preset_nintendopower_tourian_metroids_2:
    dw #preset_nintendopower_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0A1C, $001C  ; Samus position/state
    dw $0A1E, $0304  ; More position/state
    dw $0AF6, $0095  ; Samus X
    dw $0AFA, $0096  ; Samus Y
    dw $0B3F, $0001  ; Blue suit
    dw $D822, $0021  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF

preset_nintendopower_tourian_metroids_3:
    dw #preset_nintendopower_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $00EF  ; Screen Y position in pixels
    dw $09C2, $02DD  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00D4  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D822, $0023  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF

preset_nintendopower_tourian_metroids_4:
    dw #preset_nintendopower_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $031F  ; Health
    dw $09CA, $0019  ; Supers
    dw $0AF6, $05DA  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0027  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF

preset_nintendopower_tourian_baby_skip:
    dw #preset_nintendopower_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $0FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $09C2, $02D1  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01CC  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D822, $002F  ; Events
    dw $D8C4, $002F  ; Doors
    dw #$FFFF

preset_nintendopower_tourian_zeb_skip:
    dw #preset_nintendopower_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AA5C  ; DDB
    dw $079B, $DDC4  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $09C2, $031F  ; Health
    dw $09CA, $0017  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03B9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C4, $01AF  ; Doors
    dw #$FFFF

preset_nintendopower_tourian_mother_brain_2:
    dw #preset_nintendopower_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAC8  ; DDB
    dw $079B, $DD58  ; MDB
    dw $07F3, $0021  ; Music Bank
    dw $07F5, $0000  ; Music Track
    dw $090F, $79FF  ; Screen subpixel X position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $02C2  ; Health
    dw $09C6, $0051  ; Missiles
    dw $09CA, $000D  ; Supers
    dw $0AF6, $00CF  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D820, $3FC5  ; Events
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF

preset_nintendopower_tourian_zebes_escape:
    dw #preset_nintendopower_tourian_mother_brain_2 ; Tourian: Mother Brain 2
    dw $09A6, $1009  ; Beams
    dw $09C2, $031F  ; Health
    dw $09C6, $0000  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $09CE, $0000  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0A76, $8000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $009E  ; Samus Y
    dw $D820, $7FC5  ; Events
    dw $D82C, $0203  ; Bosses
    dw #$FFFF

preset_nintendopower_tourian_escape_room_3:
    dw #preset_nintendopower_tourian_zebes_escape ; Tourian: Zebes Escape
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

preset_nintendopower_tourian_escape_room_4:
    dw #preset_nintendopower_tourian_escape_room_3 ; Tourian: Escape Room 3
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

preset_nintendopower_tourian_escape_climb:
    dw #preset_nintendopower_tourian_escape_room_4 ; Tourian: Escape Room 4
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

preset_nintendopower_tourian_escape_parlor:
    dw #preset_nintendopower_tourian_escape_climb ; Tourian: Escape Climb
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $EFFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $09C2, $01EB  ; Health
    dw $0A1C, $0006  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01C4  ; Samus X
    dw #$FFFF
