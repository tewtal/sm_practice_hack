
preset_14speed_crateria_ceres_elevator:
    dw #$0000
    dw $078B, $0000  ; Elevator Index
    dw $078D, $AB58  ; DDB
    dw $079B, $DF45  ; MDB
    dw $07F3, $002D  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
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
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0082  ; Samus X
    dw $0AFA, $004B  ; Samus Y
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

preset_14speed_crateria_ceres_last_3_rooms:
    dw #preset_14speed_crateria_ceres_elevator ; Crateria: Ceres Elevator
    dw $078D, $ABA0  ; DDB
    dw $079B, $E021  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $7400  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $093F, $0002  ; Ceres escape flag
    dw $09C2, $0018  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $00A2  ; Samus Y
    dw $D82E, $0001  ; Bosses
    dw #$FFFF
.after

preset_14speed_crateria_ship:
    dw #preset_14speed_crateria_ceres_last_3_rooms ; Crateria: Ceres Last 3 Rooms
    dw $078D, $88FE  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $0006  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $03FB  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $03D3  ; Screen Y position in pixels
    dw $0917, $01FD  ; Layer 2 X position
    dw $0921, $0200  ; BG2 X offset
    dw $093F, $0000  ; Ceres escape flag
    dw $09C2, $0063  ; Health
    dw $0AF6, $047E  ; Samus X
    dw $0AFA, $0443  ; Samus Y
    dw #$FFFF
.after

preset_14speed_crateria_morph:
    dw #preset_14speed_crateria_ship ; Crateria: Ship
    dw $078D, $8B9E  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F5, $0007  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $04FB  ; Screen X position in pixels
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $03BC  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0921, $FB00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $0AF6, $057D  ; Samus X
    dw $0AFA, $02AB  ; Samus Y
    dw #$FFFF
.after

preset_14speed_crateria_climb:
    dw #preset_14speed_crateria_morph ; Crateria: Morph
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09A2, $0004  ; Equipped Items
    dw $09A4, $0004  ; Collected Items
    dw $09C2, $0054  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09C8, $0005  ; Max missiles
    dw $0AF6, $008B  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $0001  ; Events
    dw $D872, $0400  ; Items
    dw $D874, $0004  ; Items
    dw $D8B2, $0400  ; Doors
    dw #$FFFF
.after

preset_14speed_crateria_bomb_torizo:
    dw #preset_14speed_crateria_climb ; Crateria: Climb
    dw $078D, $8982  ; DDB
    dw $079B, $9879  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $0063  ; Health
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02C0  ; Samus X
    dw $D8B2, $2400  ; Doors
    dw #$FFFF
.after

preset_14speed_crateria_terminator:
    dw #preset_14speed_crateria_bomb_torizo ; Crateria: Bomb Torizo
    dw $078D, $8BB6  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $0400  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $87FF  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C6, $0005  ; Missiles
    dw $0A1C, $0041  ; Samus position/state
    dw $0A1E, $0404  ; More position/state
    dw $0AF6, $0115  ; Samus X
    dw $0AFA, $0099  ; Samus Y
    dw $D828, $0004  ; Bosses
    dw $D870, $0080  ; Items
    dw $D8B2, $2C00  ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_green_brinstar_elevator:
    dw #preset_14speed_crateria_terminator ; Crateria: Terminator
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09C6, $0002  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0082  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D870, $0180  ; Items
    dw #$FFFF
.after

preset_14speed_brinstar_big_pink:
    dw #preset_14speed_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0917, $0480  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09C6, $0000  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $06AD  ; Samus X
    dw $D872, $0401  ; Items
    dw $D8B4, $0006  ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_red_tower:
    dw #preset_14speed_brinstar_big_pink ; Brinstar: Big Pink
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $09A6, $1000  ; Beams
    dw $09A8, $1000  ; Beams
    dw $0AF6, $05C1  ; Samus X
    dw $D872, $0481  ; Items
    dw $D8B4, $0206  ; Doors
    dw $D8B6, $0008  ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_hellway:
    dw #preset_14speed_brinstar_red_tower ; Brinstar: Red Tower
    dw $078D, $8F0A  ; DDB
    dw $079B, $A253  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $5FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $000B  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0008  ; Layer 2 Y position
    dw $0923, $FC00  ; BG2 Y offset
    dw $0AF6, $0098  ; Samus X
    dw #$FFFF
.after

preset_14speed_brinstar_caterpillar_room:
    dw #preset_14speed_brinstar_hellway ; Brinstar: Hellway
    dw $078D, $901E  ; DDB
    dw $079B, $A2F7  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $00B7  ; Health
    dw $09C6, $0002  ; Missiles
    dw $0AF6, $0298  ; Samus X
    dw #$FFFF
.after

preset_14speed_brinstar_leaving_power_bombs:
    dw #preset_14speed_brinstar_caterpillar_room ; Brinstar: Caterpillar Room
    dw $078D, $9096  ; DDB
    dw $079B, $A3AE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0001  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $FD00  ; BG2 X offset
    dw $09C2, $00AD  ; Health
    dw $09CA, $0003  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $0157  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D874, $0104  ; Items
    dw $D8B6, $2008  ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_kihunter_room:
    dw #preset_14speed_brinstar_leaving_power_bombs ; Brinstar: Leaving Power Bombs
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $009E  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $008A  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw $D8B2, $2C01  ; Doors
    dw $D8B6, $3008  ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_moat:
    dw #preset_14speed_brinstar_kihunter_room ; Brinstar: Kihunter Room
    dw $078D, $8AF6  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $5C00  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09CE, $0001  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B0, $6000  ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_ocean:
    dw #preset_14speed_brinstar_moat ; Brinstar: Moat
    dw $078D, $8A36  ; DDB
    dw $079B, $95FF  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $0007  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $01A1  ; Samus X
    dw $D870, $0190  ; Items
    dw #$FFFF
.after

preset_14speed_wrecked_ship_wrecked_ship_shaft:
    dw #preset_14speed_brinstar_ocean ; Brinstar: Ocean
    dw $078D, $89D6  ; DDB
    dw $079B, $CA08  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $02D8  ; Screen X position in pixels
    dw $0917, $0222  ; Layer 2 X position
    dw $09CA, $0004  ; Supers
    dw $0AF6, $0338  ; Samus X
    dw $D8B0, $7000  ; Doors
    dw #$FFFF
.after

preset_14speed_wrecked_ship_phantoon:
    dw #preset_14speed_wrecked_ship_wrecked_ship_shaft ; Wrecked Ship: Wrecked Ship Shaft
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0921, $FE00  ; BG2 X offset
    dw $09CA, $0002  ; Supers
    dw $0AF6, $04CF  ; Samus X
    dw $D8C0, $0030  ; Doors
    dw #$FFFF
.after

preset_14speed_wrecked_ship_wrecked_ship_supers:
    dw #preset_14speed_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dw $078D, $A2C4  ; DDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0229  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0917, $019E  ; Layer 2 X position
    dw $0921, $FB00  ; BG2 X offset
    dw $09C2, $00C7  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $02C9  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D82A, $0100  ; Bosses
    dw $D8C0, $0070  ; Doors
    dw #$FFFF
.after

preset_14speed_wrecked_ship_shaft_revisit:
    dw #preset_14speed_wrecked_ship_wrecked_ship_supers ; Wrecked Ship: Wrecked Ship Supers
    dw $078D, $A210  ; DDB
    dw $079B, $CDA8  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $09CA, $000A  ; Supers
    dw $09CC, $000A  ; Max supers
    dw $09CE, $0001  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $0020  ; Items
    dw $D8C0, $0074  ; Doors
    dw #$FFFF
.after

preset_14speed_wrecked_ship_attic:
    dw #preset_14speed_wrecked_ship_shaft_revisit ; Wrecked Ship: Shaft Revisit
    dw $078D, $A2E8  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $FA00  ; BG2 Y offset
    dw $0AF6, $044D  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_wrecked_ship_bowling_alley_path:
    dw #preset_14speed_wrecked_ship_attic ; Wrecked Ship: Attic
    dw $078D, $A1E0  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0202  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0921, $F800  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $0002  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $09CE, $0000  ; Pbs
    dw $0AF6, $02C6  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C0, $0174  ; Doors
    dw #$FFFF
.after

preset_14speed_wrecked_ship_bowling_alley:
    dw #preset_14speed_wrecked_ship_bowling_alley_path ; Wrecked Ship: Bowling Alley Path
    dw $078D, $8A1E  ; DDB
    dw $079B, $968F  ; MDB
    dw $090F, $3800  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $00BD  ; Health
    dw $0AF6, $002E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_wrecked_ship_leaving_gravity:
    dw #preset_14speed_wrecked_ship_bowling_alley ; Wrecked Ship: Bowling Alley
    dw $078D, $A1A4  ; DDB
    dw $079B, $CE40  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
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

preset_14speed_brinstar_revisit_red_tower_elevator:
    dw #preset_14speed_wrecked_ship_leaving_gravity ; Wrecked Ship: Leaving Gravity
    dw $078D, $8B02  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0238  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $0043  ; Health
    dw $09C6, $0000  ; Missiles
    dw $09CE, $0002  ; Pbs
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_breaking_tube:
    dw #preset_14speed_brinstar_revisit_red_tower_elevator ; Brinstar Revisit: Red Tower Elevator
    dw $078D, $911A  ; DDB
    dw $079B, $CF54  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0052  ; Health
    dw $09C6, $0008  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $002C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_entering_kraids_lair:
    dw #preset_14speed_brinstar_revisit_breaking_tube ; Brinstar Revisit: Breaking Tube
    dw $078D, $A348  ; DDB
    dw $079B, $CF80  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $1801  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $09CE, $0001  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $002E  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D820, $0801  ; Events
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_baby_kraid_entering:
    dw #preset_14speed_brinstar_revisit_entering_kraids_lair ; Brinstar Revisit: Entering Kraids Lair
    dw $078D, $9156  ; DDB
    dw $079B, $A4DA  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $0000  ; BG2 X offset
    dw $09CA, $0007  ; Supers
    dw $0AF6, $0171  ; Samus X
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_kraid:
    dw #preset_14speed_brinstar_revisit_baby_kraid_entering ; Brinstar Revisit: Baby Kraid (Entering)
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0917, $0100  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $004D  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $0AF6, $01C8  ; Samus X
    dw $D8B8, $0024  ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_baby_kraid_exiting:
    dw #preset_14speed_brinstar_revisit_kraid ; Brinstar Revisit: Kraid
    dw $078D, $91CE  ; DDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FE00  ; BG2 X offset
    dw $09A2, $1025  ; Equipped Items
    dw $09A4, $1025  ; Collected Items
    dw $09C2, $008A  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $0007  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $005F  ; Samus X
    dw $D828, $0104  ; Bosses
    dw $D876, $0001  ; Items
    dw $D8B8, $00E4  ; Doors
    dw #$FFFF
.after

preset_14speed_brinstar_revisit_kraid_etank:
    dw #preset_14speed_brinstar_revisit_baby_kraid_exiting ; Brinstar Revisit: Baby Kraid (Exiting)
    dw $078D, $916E  ; DDB
    dw $079B, $A471  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FFE0  ; BG2 Y offset
    dw $09C2, $0085  ; Health
    dw $09CA, $000A  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0AF6, $0056  ; Samus X
    dw $D8B8, $00ED  ; Doors
    dw #$FFFF
.after

preset_14speed_upper_norfair_precathedral:
    dw #preset_14speed_brinstar_revisit_kraid_etank ; Brinstar Revisit: Kraid E-tank
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09CA, $0009  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw $D874, $0904  ; Items
    dw $D8B8, $00EF  ; Doors
    dw #$FFFF
.after

preset_14speed_upper_norfair_bubble_mountain:
    dw #preset_14speed_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dw $078D, $929A  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0120  ; Health
    dw $09C6, $0009  ; Missiles
    dw $09CA, $0007  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $04B5  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $06EF  ; Doors
    dw #$FFFF
.after

preset_14speed_upper_norfair_bubble_mountain_revisit:
    dw #preset_14speed_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dw $078D, $95A6  ; DDB
    dw $079B, $B07A  ; MDB
    dw $090F, $8001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $09A2, $3025  ; Equipped Items
    dw $09A4, $3025  ; Collected Items
    dw $09C2, $0129  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0041  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0020  ; Events
    dw $D878, $0004  ; Items
    dw $D8BA, $0030  ; Doors
    dw #$FFFF
.after

preset_14speed_upper_norfair_magdollite_room:
    dw #preset_14speed_upper_norfair_bubble_mountain_revisit ; Upper Norfair: Bubble Mountain Revisit
    dw $078D, $9576  ; DDB
    dw $079B, $AEDF  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01F5  ; Screen Y position in pixels
    dw $0919, $0177  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0059  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_upper_norfair_lava_spark:
    dw #preset_14speed_upper_norfair_magdollite_room ; Upper Norfair: Magdollite Room
    dw $078D, $96A2  ; DDB
    dw $079B, $AE74  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $012B  ; Health
    dw $09C6, $0008  ; Missiles
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01EB  ; Samus X
    dw $D8BA, $0130  ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_ln_main_hall:
    dw #preset_14speed_upper_norfair_lava_spark ; Upper Norfair: Lava Spark
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0301  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $00D7  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0480  ; Samus X
    dw $0AFA, $0288  ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_pillars:
    dw #preset_14speed_lower_norfair_ln_main_hall ; Lower Norfair: LN Main Hall
    dw $078D, $985E  ; DDB
    dw $079B, $B3A5  ; MDB
    dw $090F, $5700  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $00DC  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_worst_room:
    dw #preset_14speed_lower_norfair_pillars ; Lower Norfair: Pillars
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $090F, $037F  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0092  ; Health
    dw $0AF6, $03DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_amphitheatre:
    dw #preset_14speed_lower_norfair_worst_room ; Lower Norfair: Worst Room
    dw $078D, $994E  ; DDB
    dw $079B, $B4AD  ; MDB
    dw $090F, $1FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $0923, $FB00  ; BG2 Y offset
    dw $09C6, $0005  ; Missiles
    dw $09CA, $0006  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $00B3  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_kihunter_stairs:
    dw #preset_14speed_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dw $078D, $997E  ; DDB
    dw $079B, $B4E5  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0244  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0043  ; Screen Y position in pixels
    dw $0917, $01B3  ; Layer 2 X position
    dw $0919, $0032  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $0AF6, $02E4  ; Samus X
    dw $0AFA, $00B3  ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_wasteland:
    dw #preset_14speed_lower_norfair_kihunter_stairs ; Lower Norfair: Kihunter Stairs
    dw $078D, $99A2  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0419  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0312  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $00B7  ; Health
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $001D  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0AF6, $0247  ; Samus X
    dw $0AFA, $0489  ; Samus Y
    dw $D8BA, $4130  ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_metal_pirates:
    dw #preset_14speed_lower_norfair_wasteland ; Lower Norfair: Wasteland
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $DFFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $0921, $FB00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $00A1  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CE, $0001  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0162  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $C130  ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_ridley_farming_room:
    dw #preset_14speed_lower_norfair_metal_pirates ; Lower Norfair: Metal Pirates
    dw $078D, $9A32  ; DDB
    dw $079B, $B482  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $00F4  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $0AF6, $004D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8BC, $0001  ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_ridley:
    dw #preset_14speed_lower_norfair_ridley_farming_room ; Lower Norfair: Ridley Farming Room
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $7400  ; Screen subpixel Y position
    dw $09C2, $012B  ; Health
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $003F  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D8BA, $D130  ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_leaving_ridley:
    dw #preset_14speed_lower_norfair_ridley ; Lower Norfair: Ridley
    dw $078D, $9A62  ; DDB
    dw $079B, $B32E  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $011C  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $0006  ; Missiles
    dw $09CA, $0006  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0042  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $D82A, $0101  ; Bosses
    dw $D878, $4004  ; Items
    dw $D8BA, $D930  ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_wasteland_revisit:
    dw #preset_14speed_lower_norfair_leaving_ridley ; Lower Norfair: Leaving Ridley
    dw $078D, $9966  ; DDB
    dw $079B, $B62B  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $015E  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $02DB  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8BA, $DD30  ; Doors
    dw #$FFFF
.after

preset_14speed_lower_norfair_kihunter_stairs_revisit:
    dw #preset_14speed_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dw $078D, $9A3E  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $012F  ; Health
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0581  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_fireflea_room:
    dw #preset_14speed_lower_norfair_kihunter_stairs_revisit ; Lower Norfair: Kihunter Stairs Revisit
    dw $078D, $9A26  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $FC7F  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $001A  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0013  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $FB00  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_lower_norfair_three_musketeers:
    dw #preset_14speed_lower_norfair_fireflea_room ; Lower Norfair: Fireflea Room
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $DFFF  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0919, $0015  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $005F  ; Samus X
    dw #$FFFF
.after

preset_14speed_lower_norfair_bubble_mountain_revisit_2:
    dw #preset_14speed_lower_norfair_three_musketeers ; Lower Norfair: Three Musketeers
    dw $078D, $9A4A  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $8000  ; Screen subpixel X position
    dw $0915, $001B  ; Screen Y position in pixels
    dw $0919, $0014  ; Layer 2 Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0084  ; Health
    dw $09CE, $0003  ; Pbs
    dw $0AF6, $008A  ; Samus X
    dw #$FFFF
.after

preset_14speed_maridia_entering_maridia:
    dw #preset_14speed_lower_norfair_bubble_mountain_revisit_2 ; Lower Norfair: Bubble Mountain Revisit
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $00FB  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0086  ; Samus Y
    dw #$FFFF
.after

preset_14speed_maridia_mt_everest:
    dw #preset_14speed_maridia_entering_maridia ; Maridia: Entering Maridia
    dw $078D, $A3B4  ; DDB
    dw $079B, $D017  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $006D  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0917, $0051  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00D0  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_maridia_aqueduct:
    dw #preset_14speed_maridia_mt_everest ; Maridia: Mt Everest
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $47FF  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09C2, $00C3  ; Health
    dw $09CA, $0009  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $001D  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0AF6, $01BD  ; Samus X
    dw $0AFA, $0399  ; Samus Y
    dw $D8C0, $8174  ; Doors
    dw #$FFFF
.after

preset_14speed_maridia_botwoon:
    dw #preset_14speed_maridia_aqueduct ; Maridia: Aqueduct
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $73FF  ; Screen subpixel Y position
    dw $0915, $0013  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0013  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03AD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_maridia_botwoon_etank_room:
    dw #preset_14speed_maridia_botwoon ; Maridia: Botwoon
    dw $078D, $A774  ; DDB
    dw $079B, $D95E  ; MDB
    dw $07F3, $002A  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0125  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0AF6, $01C3  ; Samus X
    dw $D82C, $0002  ; Bosses
    dw #$FFFF
.after

preset_14speed_maridia_colosseum:
    dw #preset_14speed_maridia_botwoon_etank_room ; Maridia: Botwoon E-tank Room
    dw $078D, $A870  ; DDB
    dw $079B, $D913  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $B400  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0915, $0003  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0003  ; Layer 2 Y position
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $018F  ; Health
    dw $09C6, $0009  ; Missiles
    dw $09CA, $0007  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $00C1  ; Samus X
    dw #$FFFF
.after

preset_14speed_maridia_draygon:
    dw #preset_14speed_maridia_colosseum ; Maridia: Colosseum
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0180  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0180  ; Health
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $005B  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C2, $0C00  ; Doors
    dw #$FFFF
.after

preset_14speed_maridia_colosseum_revisit:
    dw #preset_14speed_maridia_draygon ; Maridia: Draygon
    dw $078D, $A96C  ; DDB
    dw $090F, $8001  ; Screen subpixel X position
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $0172  ; Health
    dw $09C6, $0006  ; Missiles
    dw $09CA, $0008  ; Supers
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $0043  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82C, $0003  ; Bosses
    dw $D8C2, $4C00  ; Doors
    dw #$FFFF
.after

preset_14speed_maridia_reverse_botwoon:
    dw #preset_14speed_maridia_colosseum_revisit ; Maridia: Colosseum Revisit
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $7001  ; Screen subpixel X position
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0200  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $00F7  ; Health
    dw $09C6, $0008  ; Missiles
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $00B2  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_maridia_aqueduct_revisit:
    dw #preset_14speed_maridia_reverse_botwoon ; Maridia: Reverse Botwoon
    dw $078D, $A90C  ; DDB
    dw $079B, $D617  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0919, $001F  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $09C2, $00FC  ; Health
    dw $0AF6, $009D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C2, $6C00  ; Doors
    dw #$FFFF
.after

preset_14speed_maridia_everest_revisit:
    dw #preset_14speed_maridia_aqueduct_revisit ; Maridia: Aqueduct Revisit
    dw $078D, $A708  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $8001  ; Screen subpixel X position
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0207  ; Screen Y position in pixels
    dw $0919, $0185  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $0AF6, $006F  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_maridia_red_tower_green_gate:
    dw #preset_14speed_maridia_everest_revisit ; Maridia: Everest Revisit
    dw $078D, $A42C  ; DDB
    dw $079B, $D104  ; MDB
    dw $090F, $5001  ; Screen subpixel X position
    dw $0911, $0013  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0013  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $00C8  ; Health
    dw $0AF6, $0074  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_tourian_kihunter_room_revisit:
    dw #preset_14speed_maridia_red_tower_green_gate ; Maridia: Red Tower Green Gate
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09CA, $0007  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $006E  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_tourian_terminator_revisit:
    dw #preset_14speed_tourian_kihunter_room_revisit ; Tourian: Kihunter Room Revisit
    dw $078D, $8916  ; DDB
    dw $079B, $92FD  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $FC00  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $FB00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $00C7  ; Health
    dw $09C6, $0007  ; Missiles
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0115  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_tourian_pirate_shaft_revisit:
    dw #preset_14speed_tourian_terminator_revisit ; Tourian: Terminator Revisit
    dw $078D, $895E  ; DDB
    dw $079B, $990D  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01FB  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $017C  ; Layer 2 Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $09C2, $00C5  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $006C  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw #$FFFF
.after

preset_14speed_tourian_metroids_1:
    dw #preset_14speed_tourian_pirate_shaft_revisit ; Tourian: Pirate Shaft Revisit
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $090F, $A001  ; Screen subpixel X position
    dw $0913, $03FF  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C6, $0006  ; Missiles
    dw $09CA, $0006  ; Supers
    dw $0AF6, $0036  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D820, $0FC1  ; Events
    dw $D8B2, $6C01  ; Doors
    dw #$FFFF
.after

preset_14speed_tourian_metroids_2:
    dw #preset_14speed_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $018E  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $0AF6, $0039  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0021  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF
.after

preset_14speed_tourian_metroids_3:
    dw #preset_14speed_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $00F6  ; Screen Y position in pixels
    dw $0919, $00B8  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $09C2, $015E  ; Health
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C1  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0023  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF
.after

preset_14speed_tourian_metroids_4:
    dw #preset_14speed_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $011B  ; Health
    dw $0AF6, $05AA  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0027  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF
.after

preset_14speed_tourian_doors_and_refills:
    dw #preset_14speed_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $AA2C  ; DDB
    dw $079B, $DCB1  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FC00  ; BG2 X offset
    dw $09C2, $0001  ; Health
    dw $09CE, $0001  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0018  ; Samus X
    dw $D822, $002F  ; Events
    dw $D8C4, $002F  ; Doors
    dw #$FFFF
.after

preset_14speed_tourian_zeb_skip:
    dw #preset_14speed_tourian_doors_and_refills ; Tourian: Doors and Refills
    dw $078D, $AAA4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $3FFF  ; Screen subpixel X position
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $021C  ; Screen Y position in pixels
    dw $0919, $0195  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $018F  ; Health
    dw $09CA, $0009  ; Supers
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF
.after

preset_14speed_tourian_escape_room_3:
    dw #preset_14speed_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
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

preset_14speed_tourian_escape_parlor:
    dw #preset_14speed_tourian_escape_room_3 ; Tourian: Escape Room 3
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6801  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $F800  ; BG2 Y offset
    dw $09C2, $00E0  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01D2  ; Samus X
    dw $0AFA, $004B  ; Samus Y
    dw #$FFFF
.after
