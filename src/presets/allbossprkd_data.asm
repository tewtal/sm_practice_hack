
preset_allbossprkd_crateria_ceres_elevator:
    dw #$0000
    dw $078B, $0000  ; Elevator Index
    dw $078D, $AB58  ; DDB
    dw $079B, $DF45  ; MDB
    dw $07F3, $002D  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
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
    dw $0AFA, $0048  ; Samus Y
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
    dw #$FFFF
.after

preset_allbossprkd_crateria_ceres_last_3_rooms:
    dw #preset_allbossprkd_crateria_ceres_elevator ; Crateria: Ceres Elevator
    dw $078D, $ABA0  ; DDB
    dw $079B, $E021  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $0900  ; Screen subpixel X position
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $093F, $0002  ; Ceres escape flag
    dw $09C2, $0018  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0047  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D82E, $0001  ; Bosses
    dw #$FFFF
.after

preset_allbossprkd_crateria_ship:
    dw #preset_allbossprkd_crateria_ceres_last_3_rooms ; Crateria: Ceres Last 3 Rooms
    dw $078D, $88FE  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $0006  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $03D0  ; Screen Y position in pixels
    dw $093F, $0000  ; Ceres escape flag
    dw $09C2, $0063  ; Health
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0481  ; Samus X
    dw $0AFA, $0440  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_crateria_pit_room:
    dw #preset_allbossprkd_crateria_ship ; Crateria: Ship
    dw $078D, $898E  ; DDB
    dw $079B, $96BA  ; MDB
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0800  ; Screen Y position in pixels
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $088B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_crateria_morph:
    dw #preset_allbossprkd_crateria_pit_room ; Crateria: Pit Room
    dw $078D, $8B9E  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F5, $0007  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0580  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_crateria_pit_room_revisit:
    dw #preset_allbossprkd_crateria_morph ; Crateria: Morph
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A2, $0004  ; Equipped Items
    dw $09A4, $0004  ; Collected Items
    dw $09C6, $0005  ; Missiles
    dw $09C8, $0005  ; Max missiles
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $D872, $0400  ; Items
    dw $D874, $0004  ; Items
    dw #$FFFF
.after

preset_allbossprkd_crateria_climb:
    dw #preset_allbossprkd_crateria_pit_room_revisit ; Crateria: Pit Room Revisit
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
    dw #$FFFF
.after

preset_allbossprkd_crateria_parlor:
    dw #preset_allbossprkd_crateria_climb ; Crateria: Climb
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0AF6, $01A0  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw $D8B2, $0400  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_crateria_bomb_torizo:
    dw #preset_allbossprkd_crateria_parlor ; Crateria: Parlor
    dw $078D, $8982  ; DDB
    dw $079B, $9879  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02BC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B2, $2400  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_crateria_terminator:
    dw #preset_allbossprkd_crateria_bomb_torizo ; Crateria: Bomb Torizo
    dw $078D, $8BB6  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $0400  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C6, $0005  ; Missiles
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0115  ; Samus X
    dw $0B3F, $0104  ; Blue suit
    dw $D828, $0004  ; Bosses
    dw $D870, $0080  ; Items
    dw $D8B2, $2C00  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_crateria_green_pirate_shaft:
    dw #preset_allbossprkd_crateria_terminator ; Crateria: Terminator
    dw $078D, $895E  ; DDB
    dw $079B, $990D  ; MDB
    dw $090F, $3D00  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01EF  ; Screen Y position in pixels
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0046  ; Samus X
    dw $0AFA, $028F  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D870, $0180  ; Items
    dw #$FFFF
.after

preset_allbossprkd_brinstar_green_brinstar_elevator:
    dw #preset_allbossprkd_crateria_green_pirate_shaft ; Crateria: Green Pirate Shaft
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C6, $0002  ; Missiles
    dw $0AF6, $007E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_brinstar_dachora_room:
    dw #preset_allbossprkd_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dw $078D, $8D4E  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $061A  ; Screen Y position in pixels
    dw $09C2, $00BD  ; Health
    dw $09C6, $0000  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0056  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D872, $0401  ; Items
    dw $D8B4, $0006  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_brinstar_big_pink:
    dw #preset_allbossprkd_brinstar_dachora_room ; Brinstar: Dachora Room
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C6, $0002  ; Missiles
    dw $0AF6, $069C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_brinstar_spore_spawn:
    dw #preset_allbossprkd_brinstar_big_pink ; Brinstar: Big Pink
    dw $078D, $8DC6  ; DDB
    dw $079B, $9D9C  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $09C2, $00C2  ; Health
    dw $09C6, $0001  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0AF6, $0377  ; Samus X
    dw $0AFA, $007B  ; Samus Y
    dw $D8B4, $2406  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_brinstar_sporefall:
    dw #preset_allbossprkd_brinstar_spore_spawn ; Brinstar: Spore Spawn
    dw $078D, $8E3E  ; DDB
    dw $079B, $9DC7  ; MDB
    dw $07F3, $002A  ; Music Bank
    dw $090F, $DFFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $0002  ; Screen Y position in pixels
    dw $09C2, $00C7  ; Health
    dw $09C6, $0005  ; Missiles
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D828, $0204  ; Bosses
    dw #$FFFF
.after

preset_allbossprkd_brinstar_big_pink_revisit:
    dw #preset_allbossprkd_brinstar_sporefall ; Brinstar: Sporefall
    dw $078D, $8D1E  ; DDB
    dw $079B, $A0A4  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0001  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09CA, $000A  ; Supers
    dw $09CC, $000A  ; Max supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0071  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D870, $4180  ; Items
    dw $D8B6, $0020  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_brinstar_red_tower:
    dw #preset_allbossprkd_brinstar_big_pink_revisit ; Brinstar: Big Pink Revisit
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $09A6, $1000  ; Beams
    dw $09A8, $1000  ; Beams
    dw $09C2, $00B3  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0009  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $05C1  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D872, $04C1  ; Items
    dw $D8B4, $2606  ; Doors
    dw $D8B6, $0028  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_brinstar_hellway:
    dw #preset_allbossprkd_brinstar_red_tower ; Brinstar: Red Tower
    dw $078D, $8F0A  ; DDB
    dw $079B, $A253  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $9FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0AF6, $009B  ; Samus X
    dw #$FFFF
.after

preset_allbossprkd_brinstar_leaving_power_bombs:
    dw #preset_allbossprkd_brinstar_hellway ; Brinstar: Hellway
    dw $078D, $9096  ; DDB
    dw $079B, $A3AE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $007F  ; Health
    dw $09CA, $0008  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $02BE  ; Samus X
    dw $D874, $0104  ; Items
    dw $D8B6, $2028  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_wrecked_ship_moat:
    dw #preset_allbossprkd_brinstar_leaving_power_bombs ; Brinstar: Leaving Power Bombs
    dw $078D, $8AF6  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $9C00  ; Screen subpixel X position
    dw $0913, $6800  ; Screen subpixel Y position
    dw $09CA, $000A  ; Supers
    dw $09CE, $0001  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $02DB  ; Samus X
    dw $D8B0, $6000  ; Doors
    dw $D8B2, $2C01  ; Doors
    dw $D8B6, $3028  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_wrecked_ship_ocean:
    dw #preset_allbossprkd_wrecked_ship_moat ; Wrecked Ship: Moat
    dw $078D, $8A36  ; DDB
    dw $079B, $95FF  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $09C6, $000F  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01A1  ; Samus X
    dw $D870, $4190  ; Items
    dw #$FFFF
.after

preset_allbossprkd_wrecked_ship_entering_wrecked_ship:
    dw #preset_allbossprkd_wrecked_ship_ocean ; Wrecked Ship: Ocean
    dw $078D, $8AEA  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $090F, $0800  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0404  ; Screen Y position in pixels
    dw $09CA, $0009  ; Supers
    dw $0AF6, $07D7  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $D8B0, $7000  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_wrecked_ship_phantoon:
    dw #preset_allbossprkd_wrecked_ship_entering_wrecked_ship ; Wrecked Ship: Entering Wrecked Ship
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $090F, $6FFF  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09CA, $0007  ; Supers
    dw $0AF6, $04CC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $0030  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_wrecked_ship_wrecked_ship_shaft:
    dw #preset_allbossprkd_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dw $078D, $A210  ; DDB
    dw $079B, $CDA8  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $09C2, $00C7  ; Health
    dw $09CA, $000F  ; Supers
    dw $09CC, $000F  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $0AF6, $00D5  ; Samus X
    dw $D82A, $0100  ; Bosses
    dw $D880, $0020  ; Items
    dw $D8C0, $0074  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_wrecked_ship_attic:
    dw #preset_allbossprkd_wrecked_ship_wrecked_ship_shaft ; Wrecked Ship: Wrecked Ship Shaft
    dw $078D, $A2E8  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0AF6, $043C  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_wrecked_ship_bowling_alley:
    dw #preset_allbossprkd_wrecked_ship_attic ; Wrecked Ship: Attic
    dw $078D, $8A1E  ; DDB
    dw $079B, $968F  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0C00  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8400  ; Screen subpixel Y position
    dw $09C2, $00BD  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $000E  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0AF6, $002E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $0174  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_wrecked_ship_leaving_gravity:
    dw #preset_allbossprkd_wrecked_ship_bowling_alley ; Wrecked Ship: Bowling Alley
    dw $078D, $A1A4  ; DDB
    dw $079B, $CE40  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $3400  ; Screen subpixel Y position
    dw $09A2, $1024  ; Equipped Items
    dw $09A4, $1024  ; Collected Items
    dw $09C2, $0045  ; Health
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0078  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $D880, $00A0  ; Items
    dw #$FFFF
.after

preset_allbossprkd_wrecked_ship_red_tower_elevator:
    dw #preset_allbossprkd_wrecked_ship_leaving_gravity ; Wrecked Ship: Leaving Gravity
    dw $078D, $8B02  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $09C2, $0043  ; Health
    dw $09CE, $0004  ; Pbs
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_wrecked_ship_red_tower_descent:
    dw #preset_allbossprkd_wrecked_ship_red_tower_elevator ; Wrecked Ship: Red Tower Elevator
    dw $078D, $90AE  ; DDB
    dw $079B, $A2F7  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $2400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $003B  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0034  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_wrecked_ship_spazer:
    dw #preset_allbossprkd_wrecked_ship_red_tower_descent ; Wrecked Ship: Red Tower Descent
    dw $078D, $9042  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_wrecked_ship_breaking_tube:
    dw #preset_allbossprkd_wrecked_ship_spazer ; Wrecked Ship: Spazer
    dw $078D, $911A  ; DDB
    dw $079B, $CF54  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $09A6, $1004  ; Beams
    dw $09A8, $1004  ; Beams
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $002D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $0504  ; Items
    dw $D8B6, $B028  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_business_center:
    dw #preset_allbossprkd_wrecked_ship_breaking_tube ; Wrecked Ship: Breaking Tube
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $09CE, $0003  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw $D820, $0801  ; Events
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_hi_jump_etank:
    dw #preset_allbossprkd_upper_norfair_business_center ; Upper Norfair: Business Center
    dw $090F, $3001  ; Screen subpixel X position
    dw $0915, $051B  ; Screen Y position in pixels
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003A  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $D8B8, $2000  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_leaving_hi_jump:
    dw #preset_allbossprkd_upper_norfair_hi_jump_etank ; Upper Norfair: Hi Jump E-tank
    dw $078D, $9426  ; DDB
    dw $079B, $A9E5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A2, $1124  ; Equipped Items
    dw $09A4, $1124  ; Collected Items
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000C  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0048  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D876, $0120  ; Items
    dw $D8BA, $0001  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_ice_beam_hallway:
    dw #preset_allbossprkd_upper_norfair_leaving_hi_jump ; Upper Norfair: Leaving Hi Jump
    dw $078D, $941A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $030C  ; Screen Y position in pixels
    dw $09CA, $000C  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0055  ; Samus X
    dw $0AFA, $039B  ; Samus Y
    dw $D8B8, $2800  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_ice_maze:
    dw #preset_allbossprkd_upper_norfair_ice_beam_hallway ; Upper Norfair: Ice Beam Hallway
    dw $078D, $931E  ; DDB
    dw $079B, $A75D  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0AF6, $0038  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_ice_escape:
    dw #preset_allbossprkd_upper_norfair_ice_maze ; Upper Norfair: Ice Maze
    dw $078D, $935A  ; DDB
    dw $079B, $A8B9  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $09A6, $1006  ; Beams
    dw $09A8, $1006  ; Beams
    dw $09C2, $0121  ; Health
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C8  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D876, $0124  ; Items
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_precathedral:
    dw #preset_allbossprkd_upper_norfair_ice_escape ; Upper Norfair: Ice Escape
    dw $078D, $932A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $3FFF  ; Screen subpixel X position
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0310  ; Screen Y position in pixels
    dw $0AF6, $00A0  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_bubble_mountain:
    dw #preset_allbossprkd_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dw $078D, $929A  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0111  ; Health
    dw $09CA, $000B  ; Supers
    dw $0AF6, $04B4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $2E00  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_single_chamber:
    dw #preset_allbossprkd_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dw $078D, $97AA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0104  ; Screen Y position in pixels
    dw $09A2, $3124  ; Equipped Items
    dw $09A4, $3124  ; Collected Items
    dw $09C2, $0129  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $000F  ; Supers
    dw $0AF6, $01B4  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0020  ; Events
    dw $D878, $0004  ; Items
    dw $D8BA, $0031  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_double_chamber_revisit:
    dw #preset_allbossprkd_upper_norfair_single_chamber ; Upper Norfair: Single Chamber
    dw $078D, $961E  ; DDB
    dw $079B, $ADDE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A6, $1007  ; Beams
    dw $09A8, $1007  ; Beams
    dw $09C6, $000D  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $000E  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0053  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $001C  ; Items
    dw $D8BA, $00F1  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_volcano_room:
    dw #preset_allbossprkd_upper_norfair_double_chamber_revisit ; Upper Norfair: Double Chamber Revisit
    dw $078D, $95EE  ; DDB
    dw $079B, $AE07  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $CD80  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $09C2, $011A  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03B4  ; Samus X
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_lava_spark:
    dw #preset_allbossprkd_upper_norfair_volcano_room ; Upper Norfair: Volcano Room
    dw $078D, $965A  ; DDB
    dw $079B, $AE74  ; MDB
    dw $090F, $9FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $09C6, $000A  ; Missiles
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01EB  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $01F1  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_ln_main_hall:
    dw #preset_allbossprkd_upper_norfair_lava_spark ; Upper Norfair: Lava Spark
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $09A6, $1001  ; Beams
    dw $09C2, $00C6  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0480  ; Samus X
    dw $0AFA, $0288  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_green_gate_glitch:
    dw #preset_allbossprkd_lower_norfair_ln_main_hall ; Lower Norfair: LN Main Hall
    dw $078D, $985E  ; DDB
    dw $079B, $B3A5  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $007C  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_golden_torizo:
    dw #preset_allbossprkd_lower_norfair_green_gate_glitch ; Lower Norfair: Green Gate Glitch
    dw $078D, $988E  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $4000  ; Screen subpixel Y position
    dw $09C2, $00C4  ; Health
    dw $09CA, $000D  ; Supers
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_screw_attack_escape:
    dw #preset_allbossprkd_lower_norfair_golden_torizo ; Lower Norfair: Golden Torizo
    dw $078D, $9A86  ; DDB
    dw $079B, $B283  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $3400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $09C2, $012B  ; Health
    dw $09C6, $0014  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AFA, $018B  ; Samus Y
    dw $D82A, $0104  ; Bosses
    dw $D878, $009C  ; Items
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_worst_room_in_the_game:
    dw #preset_allbossprkd_lower_norfair_screw_attack_escape ; Lower Norfair: Screw Attack Escape
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A2, $312C  ; Equipped Items
    dw $09A4, $312C  ; Collected Items
    dw $09C2, $00B8  ; Health
    dw $09CA, $000E  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0AF6, $03D3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $809C  ; Items
    dw $D8BA, $03F1  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_amphitheatre:
    dw #preset_allbossprkd_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room in the Game
    dw $078D, $994E  ; DDB
    dw $079B, $B4AD  ; MDB
    dw $090F, $EFFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $09CE, $0003  ; Pbs
    dw $0AF6, $00A7  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_kihunter_stairs:
    dw #preset_allbossprkd_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dw $078D, $997E  ; DDB
    dw $079B, $B4E5  ; MDB
    dw $090F, $7900  ; Screen subpixel X position
    dw $0911, $0267  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0044  ; Screen Y position in pixels
    dw $09C2, $00BD  ; Health
    dw $0AF6, $02DE  ; Samus X
    dw $0AFA, $00B4  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_wasteland:
    dw #preset_allbossprkd_lower_norfair_kihunter_stairs ; Lower Norfair: Kihunter Stairs
    dw $078D, $99A2  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0915, $0419  ; Screen Y position in pixels
    dw $09CE, $0001  ; Pbs
    dw $0A1C, $001D  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0AF6, $024E  ; Samus X
    dw $0AFA, $0489  ; Samus Y
    dw $D8BA, $43F1  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_metal_pirates:
    dw #preset_allbossprkd_lower_norfair_wasteland ; Lower Norfair: Wasteland
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $9CFE  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $021B  ; Screen Y position in pixels
    dw $09C2, $0089  ; Health
    dw $09CA, $000D  ; Supers
    dw $09CE, $0000  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0167  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $C3F1  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_ridley:
    dw #preset_allbossprkd_lower_norfair_metal_pirates ; Lower Norfair: Metal Pirates
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0105  ; Health
    dw $09CA, $0013  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0AF6, $003A  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D8BA, $D3F1  ; Doors
    dw $D8BC, $0001  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_leaving_ridley:
    dw #preset_allbossprkd_lower_norfair_ridley ; Lower Norfair: Ridley
    dw $078D, $98CA  ; DDB
    dw $079B, $B32E  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $3C00  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $09C2, $012B  ; Health
    dw $09CA, $000B  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0058  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $D82A, $0105  ; Bosses
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_wasteland_revisit:
    dw #preset_allbossprkd_lower_norfair_leaving_ridley ; Lower Norfair: Leaving Ridley
    dw $078D, $9966  ; DDB
    dw $079B, $B62B  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0108  ; Health
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $02DB  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8BA, $D7F1  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_kihunter_stairs_revisit:
    dw #preset_allbossprkd_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dw $078D, $9A3E  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $09C2, $00F7  ; Health
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0583  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_fire_flea_room:
    dw #preset_allbossprkd_lower_norfair_kihunter_stairs_revisit ; Lower Norfair: Kihunter Stairs Revisit
    dw $078D, $9A26  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $000A  ; Screen Y position in pixels
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B7  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_lower_norfair_three_musketeers:
    dw #preset_allbossprkd_lower_norfair_fire_flea_room ; Lower Norfair: Fire Flea Room
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $5001  ; Screen subpixel X position
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0003  ; Screen Y position in pixels
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0063  ; Samus X
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_revisit_bubble_mountain_revisit:
    dw #preset_allbossprkd_lower_norfair_three_musketeers ; Lower Norfair: Three Musketeers
    dw $078D, $9A4A  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $6FFF  ; Screen subpixel Y position
    dw $0915, $0022  ; Screen Y position in pixels
    dw $09C2, $00E2  ; Health
    dw $0AF6, $006E  ; Samus X
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_revisit_red_pirate_shaft:
    dw #preset_allbossprkd_upper_norfair_revisit_bubble_mountain_revisit ; Upper Norfair Revisit: Bubble Mountain Revisit
    dw $078D, $956A  ; DDB
    dw $079B, $AF72  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $00ED  ; Screen Y position in pixels
    dw $09C2, $010F  ; Health
    dw $09CA, $000E  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0AF6, $004C  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_revisit_acid_snakes_tunnel:
    dw #preset_allbossprkd_upper_norfair_revisit_red_pirate_shaft ; Upper Norfair Revisit: Red Pirate Shaft
    dw $078D, $9726  ; DDB
    dw $079B, $B139  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $09C2, $010E  ; Health
    dw $0AF6, $00AF  ; Samus X
    dw $0AFA, $02BB  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_revisit_crocomire:
    dw #preset_allbossprkd_upper_norfair_revisit_acid_snakes_tunnel ; Upper Norfair Revisit: Acid Snakes Tunnel
    dw $078D, $974A  ; DDB
    dw $079B, $A923  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $09CA, $000D  ; Supers
    dw $0AF6, $0CB7  ; Samus X
    dw $0AFA, $02AB  ; Samus Y
    dw $D8B8, $6E00  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_revisit_leaving_crocomire:
    dw #preset_allbossprkd_upper_norfair_revisit_crocomire ; Upper Norfair Revisit: Crocomire
    dw $078D, $93D2  ; DDB
    dw $079B, $A98D  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0150  ; Health
    dw $09C4, $018F  ; Max health
    dw $09CA, $0009  ; Supers
    dw $0AF6, $036A  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D82A, $0107  ; Bosses
    dw $D876, $0134  ; Items
    dw $D8B8, $EE00  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_revisit_crocomire_escape:
    dw #preset_allbossprkd_upper_norfair_revisit_leaving_crocomire ; Upper Norfair Revisit: Leaving Crocomire
    dw $078D, $93EA  ; DDB
    dw $079B, $A923  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0016  ; Screen Y position in pixels
    dw $09CA, $000B  ; Supers
    dw $0AF6, $0C85  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_upper_norfair_revisit_business_center_revisit:
    dw #preset_allbossprkd_upper_norfair_revisit_crocomire_escape ; Upper Norfair Revisit: Crocomire Escape
    dw $078D, $93AE  ; DDB
    dw $079B, $AA0E  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09CA, $000A  ; Supers
    dw $0AF6, $004C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_kraids_lair_entering_kraids_lair:
    dw #preset_allbossprkd_upper_norfair_revisit_business_center_revisit ; Upper Norfair Revisit: Business Center Revisit
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $09C2, $0178  ; Health
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0086  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_kraids_lair_baby_kraid_entering:
    dw #preset_allbossprkd_kraids_lair_entering_kraids_lair ; Kraids Lair: Entering Kraids Lair
    dw $078D, $9156  ; DDB
    dw $079B, $A4DA  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $4FFF  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $016B  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_kraids_lair_kraid:
    dw #preset_allbossprkd_kraids_lair_baby_kraid_entering ; Kraids Lair: Baby Kraid (Entering)
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $09C2, $0174  ; Health
    dw $09CA, $000D  ; Supers
    dw $0AF6, $01C7  ; Samus X
    dw $D8B8, $EE24  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_kraids_lair_baby_kraid_entering_2:
    dw #preset_allbossprkd_kraids_lair_kraid ; Kraids Lair: Kraid
    dw $078D, $91CE  ; DDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $09A2, $312D  ; Equipped Items
    dw $09A4, $312D  ; Collected Items
    dw $09C2, $018B  ; Health
    dw $09CA, $000C  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $005B  ; Samus X
    dw $D828, $0304  ; Bosses
    dw $D876, $0135  ; Items
    dw $D8B8, $EEE4  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_kraids_lair_leaving_kraids_lair:
    dw #preset_allbossprkd_kraids_lair_baby_kraid_entering_2 ; Kraids Lair: Baby Kraid (Entering)
    dw $078D, $916E  ; DDB
    dw $079B, $A471  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $001B  ; Screen Y position in pixels
    dw $09C2, $018F  ; Health
    dw $09CA, $0010  ; Supers
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $EEEC  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_maridia_mt_everest:
    dw #preset_allbossprkd_kraids_lair_leaving_kraids_lair ; Kraids Lair: Leaving Kraids Lair
    dw $078D, $A3B4  ; DDB
    dw $079B, $D017  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0068  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09CA, $000F  ; Supers
    dw $0AF6, $00CA  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_maridia_aqueduct:
    dw #preset_allbossprkd_maridia_mt_everest ; Maridia: Mt Everest
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $1FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $B3FE  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $09C2, $0154  ; Health
    dw $09CA, $000E  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $001D  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0AF6, $01B6  ; Samus X
    dw $0AFA, $0399  ; Samus Y
    dw $D8C0, $8174  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_maridia_botwoon:
    dw #preset_allbossprkd_maridia_aqueduct ; Maridia: Aqueduct
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03A6  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_maridia_halfie:
    dw #preset_allbossprkd_maridia_botwoon ; Maridia: Botwoon
    dw $078D, $A918  ; DDB
    dw $079B, $D7E4  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $003A  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $09C2, $018F  ; Health
    dw $09CA, $000A  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $00D6  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D82C, $0002  ; Bosses
    dw #$FFFF
.after

preset_allbossprkd_maridia_draygon:
    dw #preset_allbossprkd_maridia_halfie ; Maridia: Halfie
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $09C2, $0110  ; Health
    dw $09CA, $0009  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0039  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C2, $0C00  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_maridia_womple_jump:
    dw #preset_allbossprkd_maridia_draygon ; Maridia: Draygon
    dw $078D, $A96C  ; DDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $00C9  ; Health
    dw $09C6, $0011  ; Missiles
    dw $09CA, $000D  ; Supers
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $003A  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82C, $0003  ; Bosses
    dw $D8C2, $4C00  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_maridia_reverse_botwoon_hallway:
    dw #preset_allbossprkd_maridia_womple_jump ; Maridia: Womple Jump
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $09C2, $006C  ; Health
    dw $09C6, $000F  ; Missiles
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $00A7  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_maridia_aqueduct_revisit:
    dw #preset_allbossprkd_maridia_reverse_botwoon_hallway ; Maridia: Reverse Botwoon Hallway
    dw $078D, $A90C  ; DDB
    dw $079B, $D617  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0015  ; Screen X position in pixels
    dw $0913, $DFFF  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0A1C, $0004  ; Samus position/state
    dw $0AF6, $00B5  ; Samus X
    dw $0AFA, $00CB  ; Samus Y
    dw $D8C2, $6C00  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_maridia_mt_everest_revisit:
    dw #preset_allbossprkd_maridia_aqueduct_revisit ; Maridia: Aqueduct Revisit
    dw $078D, $A708  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7FFF  ; Screen subpixel Y position
    dw $0915, $0203  ; Screen Y position in pixels
    dw $0A1C, $0002  ; Samus position/state
    dw $0AF6, $006B  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_maridia_red_brinstar_gate:
    dw #preset_allbossprkd_maridia_mt_everest_revisit ; Maridia: Mt Everest Revisit
    dw $078D, $A42C  ; DDB
    dw $079B, $D104  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $000F  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0094  ; Health
    dw $09CA, $000E  ; Supers
    dw $0AF6, $007A  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_tourian_crateria_kihunters:
    dw #preset_allbossprkd_maridia_red_brinstar_gate ; Maridia: Red Brinstar Gate
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $006F  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
.after

preset_allbossprkd_tourian_terminator_revisit:
    dw #preset_allbossprkd_tourian_crateria_kihunters ; Tourian: Crateria Kihunters
    dw $078D, $8916  ; DDB
    dw $079B, $92FD  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $1C00  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $09C6, $000E  ; Missiles
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0115  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0104  ; Blue suit
    dw #$FFFF
.after

preset_allbossprkd_tourian_metroids_1:
    dw #preset_allbossprkd_tourian_terminator_revisit ; Tourian: Terminator Revisit
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $090F, $F001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $09A6, $1007  ; Beams
    dw $09C6, $0010  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003C  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0FC1  ; Events
    dw $D8B2, $6C01  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_tourian_metroids_2:
    dw #preset_allbossprkd_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $00B5  ; Health
    dw $09C6, $0014  ; Missiles
    dw $09CA, $0010  ; Supers
    dw $0AF6, $0039  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0021  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_tourian_metroids_3:
    dw #preset_allbossprkd_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $00FA  ; Screen Y position in pixels
    dw $09C2, $014F  ; Health
    dw $09CA, $0011  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C2  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0023  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_tourian_metroids_4:
    dw #preset_allbossprkd_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $018F  ; Health
    dw $09CA, $0010  ; Supers
    dw $0AF6, $05AC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0027  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_tourian_baby_skip:
    dw #preset_allbossprkd_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $BFFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $3400  ; Screen subpixel Y position
    dw $09CA, $0012  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01DA  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D822, $002F  ; Events
    dw $D8C4, $000F  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_tourian_gadora_room:
    dw #preset_allbossprkd_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AA44  ; DDB
    dw $079B, $DCFF  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $09CA, $0011  ; Supers
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $D8C4, $00AF  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_tourian_zeb_skip:
    dw #preset_allbossprkd_tourian_gadora_room ; Tourian: Gadora Room
    dw $078D, $AAA4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021A  ; Screen Y position in pixels
    dw $09CA, $000F  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF
.after

preset_allbossprkd_tourian_escape_room_3:
    dw #preset_allbossprkd_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $09A6, $1009  ; Beams
    dw $09C6, $0000  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $09CE, $0000  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A76, $8000  ; Hyper beam
    dw $0AF6, $00DF  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D820, $4FC5  ; Events
    dw $D82C, $0203  ; Bosses
    dw #$FFFF
.after

preset_allbossprkd_tourian_escape_parlor:
    dw #preset_allbossprkd_tourian_escape_room_3 ; Tourian: Escape Room 3
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $A401  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $00DF  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $019A  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
.after
