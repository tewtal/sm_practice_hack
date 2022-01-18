
preset_100early_crateria_ceres_elevator:
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

preset_100early_crateria_ceres_last_3_rooms:
    dw #preset_100early_crateria_ceres_elevator ; Crateria: Ceres Elevator
    dw $078D, $ABA0  ; DDB
    dw $079B, $E021  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $0900  ; Screen subpixel X position
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $093F, $0002  ; Ceres escape flag
    dw $09C2, $0018  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0047  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D82E, $0001  ; Bosses
    dw #$FFFF
.after

preset_100early_crateria_ship:
    dw #preset_100early_crateria_ceres_last_3_rooms ; Crateria: Ceres Last 3 Rooms
    dw $078D, $88FE  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $0006  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $03D0  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $0921, $0200  ; BG2 X offset
    dw $093F, $0000  ; Ceres escape flag
    dw $09C2, $0063  ; Health
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0481  ; Samus X
    dw $0AFA, $0440  ; Samus Y
    dw #$FFFF
.after

preset_100early_crateria_pit_room:
    dw #preset_100early_crateria_ship ; Crateria: Ship
    dw $078D, $898E  ; DDB
    dw $079B, $96BA  ; MDB
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0800  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0600  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $088B  ; Samus Y
    dw #$FFFF
.after

preset_100early_crateria_morph:
    dw #preset_100early_crateria_pit_room ; Crateria: Pit Room
    dw $078D, $8B9E  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F5, $0007  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0921, $FB00  ; BG2 X offset
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0580  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF
.after

preset_100early_crateria_pit_room_revisit:
    dw #preset_100early_crateria_morph ; Crateria: Morph
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
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

preset_100early_crateria_climb:
    dw #preset_100early_crateria_pit_room_revisit ; Crateria: Pit Room Revisit
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0087  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $0001  ; Events
    dw $D8B2, $0400  ; Doors
    dw #$FFFF
.after

preset_100early_crateria_parlor_revisit:
    dw #preset_100early_crateria_climb ; Crateria: Climb
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $F800  ; BG2 Y offset
    dw $0AF6, $019F  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
.after

preset_100early_crateria_bomb_torizo:
    dw #preset_100early_crateria_parlor_revisit ; Crateria: Parlor Revisit
    dw $078D, $8982  ; DDB
    dw $079B, $9879  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02C8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B2, $2400  ; Doors
    dw #$FFFF
.after

preset_100early_crateria_alcatraz:
    dw #preset_100early_crateria_bomb_torizo ; Crateria: Bomb Torizo
    dw $078D, $8BAA  ; DDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FD00  ; BG2 X offset
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C6, $0005  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0037  ; Samus X
    dw $D828, $0004  ; Bosses
    dw $D870, $0080  ; Items
    dw $D8B2, $2C00  ; Doors
    dw #$FFFF
.after

preset_100early_crateria_terminator:
    dw #preset_100early_crateria_alcatraz ; Crateria: Alcatraz
    dw $078D, $8BB6  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0115  ; Samus X
    dw #$FFFF
.after

preset_100early_crateria_green_pirate_shaft:
    dw #preset_100early_crateria_terminator ; Crateria: Terminator
    dw $078D, $895E  ; DDB
    dw $079B, $990D  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01FD  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $017D  ; Layer 2 Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0077  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw $D870, $0180  ; Items
    dw #$FFFF
.after

preset_100early_brinstar_green_brinstar:
    dw #preset_100early_crateria_green_pirate_shaft ; Crateria: Green Pirate Shaft
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $09C2, $008B  ; Health
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_brinstar_early_supers:
    dw #preset_100early_brinstar_green_brinstar ; Brinstar: Green Brinstar
    dw $078D, $8C0A  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $041C  ; Screen Y position in pixels
    dw $0919, $0315  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A6  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $D8B4, $0002  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_reverse_mockball:
    dw #preset_100early_brinstar_early_supers ; Brinstar: Early Supers
    dw $078D, $8D5A  ; DDB
    dw $079B, $9C07  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0001  ; Screen subpixel X position
    dw $0913, $3400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C0, $0001  ; Manual/Auto reserve tank
    dw $09C2, $0077  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09D4, $0064  ; Max reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0044  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D872, $040F  ; Items
    dw $D8B4, $0042  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_dachora_room:
    dw #preset_100early_brinstar_reverse_mockball ; Brinstar: Reverse Mockball
    dw $078D, $8D4E  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $061A  ; Screen Y position in pixels
    dw $0919, $0493  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FC00  ; BG2 Y offset
    dw $09C6, $000F  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0056  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D870, $8180  ; Items
    dw $D8B4, $0046  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_big_pink:
    dw #preset_100early_brinstar_dachora_room ; Brinstar: Dachora Room
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $008B  ; Health
    dw $0AF6, $06A3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_brinstar_green_hill_zone:
    dw #preset_100early_brinstar_big_pink ; Brinstar: Big Pink
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $73FF  ; Screen subpixel Y position
    dw $0915, $0617  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0491  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09A6, $1000  ; Beams
    dw $09A8, $1000  ; Beams
    dw $09CA, $0002  ; Supers
    dw $0AF6, $0382  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D872, $048F  ; Items
    dw $D8B4, $0246  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_red_tower:
    dw #preset_100early_brinstar_green_hill_zone ; Brinstar: Green Hill Zone
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09CA, $0003  ; Supers
    dw $0AF6, $0568  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B6, $0008  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_skree_boost:
    dw #preset_100early_brinstar_red_tower ; Brinstar: Red Tower
    dw $078D, $8F0A  ; DDB
    dw $079B, $A253  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $091A  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $06D3  ; Layer 2 Y position
    dw $0923, $FC00  ; BG2 Y offset
    dw $0AF6, $0066  ; Samus X
    dw $0AFA, $098B  ; Samus Y
    dw #$FFFF
.after

preset_100early_brinstar_kraid_entry:
    dw #preset_100early_brinstar_skree_boost ; Brinstar: Skree Boost
    dw $078D, $A348  ; DDB
    dw $079B, $CF80  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $09A6, $1004  ; Beams
    dw $09A8, $1004  ; Beams
    dw $09C2, $008C  ; Health
    dw $0AF6, $0050  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D874, $0404  ; Items
    dw $D8B6, $8008  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_kraid:
    dw #preset_100early_brinstar_kraid_entry ; Brinstar: Kraid Entry
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0917, $0100  ; Layer 2 X position
    dw $09C2, $0062  ; Health
    dw $09C6, $000D  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0AF6, $01C0  ; Samus X
    dw $D8B8, $0024  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_leaving_varia:
    dw #preset_100early_brinstar_kraid ; Brinstar: Kraid
    dw $078D, $91DA  ; DDB
    dw $079B, $A6E2  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09A2, $1005  ; Equipped Items
    dw $09A4, $1005  ; Collected Items
    dw $09C2, $00A1  ; Health
    dw $09C6, $0011  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0078  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $D828, $0104  ; Bosses
    dw $D876, $0001  ; Items
    dw $D8B8, $0064  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_leaving_kraid_hallway:
    dw #preset_100early_brinstar_leaving_varia ; Brinstar: Leaving Varia
    dw $078D, $91AA  ; DDB
    dw $079B, $A521  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $09C2, $0099  ; Health
    dw $09C6, $0010  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0087  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $00EC  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_leaving_kraid_etank:
    dw #preset_100early_brinstar_leaving_kraid_hallway ; Brinstar: Leaving Kraid Hallway
    dw $078D, $914A  ; DDB
    dw $079B, $A4B1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0921, $FF00  ; BG2 X offset
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
.after

preset_100early_upper_norfair_business_center:
    dw #preset_100early_brinstar_leaving_kraid_etank ; Brinstar: Leaving Kraid E-Tank
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C6, $0012  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF
.after

preset_100early_upper_norfair_hijump:
    dw #preset_100early_upper_norfair_business_center ; Upper Norfair: Business Center
    dw $090F, $9000  ; Screen subpixel X position
    dw $0915, $051B  ; Screen Y position in pixels
    dw $0919, $03D4  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0046  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $D8B8, $20EF  ; Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_business_center_climb:
    dw #preset_100early_upper_norfair_hijump ; Upper Norfair: Hi-Jump
    dw $078D, $93F6  ; DDB
    dw $079B, $AA41  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09A2, $1105  ; Equipped Items
    dw $09A4, $1105  ; Collected Items
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $0017  ; Missiles
    dw $09C8, $0019  ; Max missiles
    dw $09D6, $0028  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01A3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $01A1  ; Items
    dw $D8BA, $0001  ; Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_precathedral:
    dw #preset_100early_upper_norfair_business_center_climb ; Upper Norfair: Business Center Climb
    dw $078D, $941A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $BFFF  ; Screen subpixel Y position
    dw $0915, $02F6  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0238  ; Layer 2 Y position
    dw $0923, $FB00  ; BG2 Y offset
    dw $0AF6, $00AB  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF
.after

preset_100early_upper_norfair_cathedral:
    dw #preset_100early_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dw $078D, $92CA  ; DDB
    dw $079B, $A7B3  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $0001  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09CA, $0002  ; Supers
    dw $0AF6, $02A4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $24EF  ; Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_rising_tide:
    dw #preset_100early_upper_norfair_cathedral ; Upper Norfair: Cathedral
    dw $078D, $92B2  ; DDB
    dw $079B, $A788  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $0167  ; Health
    dw $09C6, $001D  ; Missiles
    dw $09C8, $001E  ; Max missiles
    dw $09CA, $0001  ; Supers
    dw $0AF6, $02BB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D876, $01A3  ; Items
    dw $D8B8, $26EF  ; Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_bubble_mountain:
    dw #preset_100early_upper_norfair_rising_tide ; Upper Norfair: Rising Tide
    dw $078D, $929A  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0142  ; Health
    dw $0AF6, $04B0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_upper_norfair_bat_cave:
    dw #preset_100early_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dw $078D, $973E  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $0003  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0002  ; Layer 2 Y position
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $015B  ; Health
    dw $0AF6, $01BE  ; Samus X
    dw $D8BA, $0011  ; Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_leaving_speed_booster:
    dw #preset_100early_upper_norfair_bat_cave ; Upper Norfair: Bat Cave
    dw $078D, $95B2  ; DDB
    dw $079B, $AD1B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09A2, $3105  ; Equipped Items
    dw $09A4, $3105  ; Collected Items
    dw $09C2, $0179  ; Health
    dw $09C8, $0023  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0045  ; Samus X
    dw $D878, $0006  ; Items
    dw $D8BA, $0031  ; Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_single_chamber:
    dw #preset_100early_upper_norfair_leaving_speed_booster ; Upper Norfair: Leaving Speed Booster
    dw $078D, $97AA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0104  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $00C3  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $09C2, $018A  ; Health
    dw $09C6, $0021  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09D6, $003A  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01AD  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0020  ; Events
    dw #$FFFF
.after

preset_100early_upper_norfair_double_chamber:
    dw #preset_100early_upper_norfair_single_chamber ; Upper Norfair: Single Chamber
    dw $078D, $9582  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0126  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00DC  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C6, $001F  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0AF6, $00B8  ; Samus X
    dw $D8BA, $0071  ; Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_double_chamber_revisited:
    dw #preset_100early_upper_norfair_double_chamber ; Upper Norfair: Double Chamber
    dw $078D, $961E  ; DDB
    dw $079B, $ADDE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A6, $1005  ; Beams
    dw $09A8, $1005  ; Beams
    dw $09C6, $0024  ; Missiles
    dw $09C8, $0028  ; Max missiles
    dw $09CA, $0002  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004F  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $001E  ; Items
    dw $D8BA, $00F1  ; Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_bubble_mountain_revisited:
    dw #preset_100early_upper_norfair_double_chamber_revisited ; Upper Norfair: Double Chamber Revisited
    dw $078D, $9606  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $001B  ; Screen Y position in pixels
    dw $0919, $0014  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $018F  ; Health
    dw $0AF6, $008F  ; Samus X
    dw #$FFFF
.after

preset_100early_upper_norfair_red_pirate_shaft:
    dw #preset_100early_upper_norfair_bubble_mountain_revisited ; Upper Norfair: Bubble Mountain Revisited
    dw $078D, $956A  ; DDB
    dw $079B, $AF72  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $00ED  ; Screen Y position in pixels
    dw $0919, $00ED  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09CA, $0003  ; Supers
    dw $09D6, $0053  ; Reserves
    dw $0AF6, $005B  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF
.after

preset_100early_upper_norfair_crocomire:
    dw #preset_100early_upper_norfair_red_pirate_shaft ; Upper Norfair: Red Pirate Shaft
    dw $078D, $974A  ; DDB
    dw $079B, $A923  ; MDB
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0900  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0921, $F300  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $018D  ; Health
    dw $09CA, $0002  ; Supers
    dw $0AF6, $0CD0  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8B8, $66EF  ; Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_postcrocomire:
    dw #preset_100early_upper_norfair_crocomire ; Upper Norfair: Crocomire
    dw $078D, $93D2  ; DDB
    dw $079B, $A98D  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $017B  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $01F3  ; Health
    dw $09C4, $01F3  ; Max health
    dw $09C6, $0028  ; Missiles
    dw $09CA, $0002  ; Supers
    dw $09D6, $0064  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0217  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D82A, $0002  ; Bosses
    dw $D876, $01B3  ; Items
    dw #$FFFF
.after

preset_100early_upper_norfair_leaving_power_bombs:
    dw #preset_100early_upper_norfair_postcrocomire ; Upper Norfair: Post-Crocomire
    dw $078D, $943E  ; DDB
    dw $079B, $AADE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $01A2  ; Health
    dw $09CA, $0001  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0AF6, $00A7  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $03B3  ; Items
    dw $D8BA, $00F3  ; Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_postcrocomire_jump_room:
    dw #preset_100early_upper_norfair_leaving_power_bombs ; Upper Norfair: Leaving Power Bombs
    dw $078D, $944A  ; DDB
    dw $079B, $AB07  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $0919, $0317  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00AB  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw #$FFFF
.after

preset_100early_upper_norfair_leaving_grapple:
    dw #preset_100early_upper_norfair_postcrocomire_jump_room ; Upper Norfair: Post-Crocomire Jump Room
    dw $078D, $94DA  ; DDB
    dw $079B, $AC2B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0180  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09A2, $7105  ; Equipped Items
    dw $09A4, $7105  ; Collected Items
    dw $09C2, $01B6  ; Health
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0055  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D876, $13B3  ; Items
    dw #$FFFF
.after

preset_100early_upper_norfair_postcrocomire_missiles:
    dw #preset_100early_upper_norfair_leaving_grapple ; Upper Norfair: Leaving Grapple
    dw $078D, $94CE  ; DDB
    dw $079B, $AB07  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $B781  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $02F4  ; Screen Y position in pixels
    dw $0919, $0237  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FB00  ; BG2 Y offset
    dw $09C8, $002D  ; Max missiles
    dw $0AF6, $00BB  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D876, $1BB3  ; Items
    dw $D8BA, $00F7  ; Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_crocomire_revisit:
    dw #preset_100early_upper_norfair_postcrocomire_missiles ; Upper Norfair: Post-Crocomire Missiles
    dw $078D, $947A  ; DDB
    dw $079B, $AA82  ; MDB
    dw $090F, $3D00  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $016A  ; Health
    dw $09C6, $0032  ; Missiles
    dw $09C8, $0032  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $0AF6, $01BF  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $1FB3  ; Items
    dw #$FFFF
.after

preset_100early_upper_norfair_crocomire_escape:
    dw #preset_100early_upper_norfair_crocomire_revisit ; Upper Norfair: Crocomire Revisit
    dw $078D, $93EA  ; DDB
    dw $079B, $A923  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $0021  ; Screen Y position in pixels
    dw $0917, $0900  ; Layer 2 X position
    dw $0919, $0018  ; Layer 2 Y position
    dw $0921, $F400  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0C89  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $E6EF  ; Doors
    dw #$FFFF
.after

preset_100early_upper_norfair_business_center_return:
    dw #preset_100early_upper_norfair_crocomire_escape ; Upper Norfair: Crocomire Escape
    dw $078D, $93AE  ; DDB
    dw $079B, $AA0E  ; MDB
    dw $090F, $D348  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1E80  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $017E  ; Health
    dw $09C6, $0037  ; Missiles
    dw $09C8, $0037  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $0AF6, $005A  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $1FF3  ; Items
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_warehouse_elevator:
    dw #preset_100early_upper_norfair_business_center_return ; Upper Norfair: Business Center Return
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0921, $0000  ; BG2 X offset
    dw $09C2, $01A6  ; Health
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0086  ; Samus Y
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_red_tower_climb:
    dw #preset_100early_red_tower_and_crateria_warehouse_elevator ; Red Tower and Crateria: Warehouse Elevator
    dw $078D, $910E  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0801  ; Screen subpixel X position
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0169  ; Health
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_hellway:
    dw #preset_100early_red_tower_and_crateria_red_tower_climb ; Red Tower and Crateria: Red Tower Climb
    dw $078D, $90F6  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0017  ; Screen Y position in pixels
    dw $0919, $0011  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $F700  ; BG2 Y offset
    dw $0A1C, $00A4  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0095  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_alpha_power_bombs:
    dw #preset_100early_red_tower_and_crateria_hellway ; Red Tower and Crateria: Hellway
    dw $078D, $908A  ; DDB
    dw $079B, $A322  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $071D  ; Screen Y position in pixels
    dw $0919, $071D  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FB00  ; BG2 Y offset
    dw $09C2, $016D  ; Health
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003D  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D8B6, $A008  ; Doors
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_elevator_room_ascent:
    dw #preset_100early_red_tower_and_crateria_alpha_power_bombs ; Red Tower and Crateria: Alpha Power Bombs
    dw $078D, $9096  ; DDB
    dw $079B, $A3AE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $3FFF  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0163  ; Health
    dw $09C6, $003C  ; Missiles
    dw $09C8, $003C  ; Max missiles
    dw $09CE, $0008  ; Pbs
    dw $09D0, $000A  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02AE  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $0F04  ; Items
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_beta_power_bombs:
    dw #preset_100early_red_tower_and_crateria_elevator_room_ascent ; Red Tower and Crateria: Elevator Room Ascent
    dw $078D, $90EA  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $02FB  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $02FB  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $F900  ; BG2 Y offset
    dw $09C2, $0177  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0061  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D8B6, $A808  ; Doors
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_crateria_kihunters:
    dw #preset_100early_red_tower_and_crateria_beta_power_bombs ; Red Tower and Crateria: Beta Power Bombs
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $016D  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CE, $000B  ; Pbs
    dw $09D0, $000F  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $006A  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw $D874, $0F84  ; Items
    dw $D8B2, $2C01  ; Doors
    dw $D8B6, $E808  ; Doors
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_oceanfly:
    dw #preset_100early_red_tower_and_crateria_crateria_kihunters ; Red Tower and Crateria: Crateria Kihunters
    dw $078D, $8AF6  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $E401  ; Screen subpixel X position
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09CE, $000A  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B0, $2000  ; Doors
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_the_moat:
    dw #preset_100early_red_tower_and_crateria_oceanfly ; Red Tower and Crateria: Oceanfly
    dw $090F, $17FF  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $09C2, $0172  ; Health
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $02B1  ; Samus X
    dw #$FFFF
.after

preset_100early_red_tower_and_crateria_ocean_spark:
    dw #preset_100early_red_tower_and_crateria_the_moat ; Red Tower and Crateria: The Moat
    dw $078D, $8A36  ; DDB
    dw $079B, $95FF  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6A80  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $0041  ; Missiles
    dw $09C8, $0041  ; Max missiles
    dw $0AF6, $01A2  ; Samus X
    dw $D870, $8190  ; Items
    dw #$FFFF
.after

preset_100early_wrecked_ship_enter_wrecked_ship:
    dw #preset_100early_red_tower_and_crateria_ocean_spark ; Red Tower and Crateria: Ocean Spark
    dw $078D, $89D6  ; DDB
    dw $079B, $CA08  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $090F, $6C80  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09A6, $1001  ; Beams
    dw $09C2, $00F7  ; Health
    dw $09CA, $0004  ; Supers
    dw $0AF6, $002B  ; Samus X
    dw $D8B0, $3000  ; Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_phantoon:
    dw #preset_100early_wrecked_ship_enter_wrecked_ship ; Wrecked Ship: Enter Wrecked Ship
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $090F, $93FF  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0921, $FE00  ; BG2 X offset
    dw $09C6, $0046  ; Missiles
    dw $09C8, $0046  ; Max missiles
    dw $09CA, $0002  ; Supers
    dw $09CE, $0009  ; Pbs
    dw $0AF6, $04CE  ; Samus X
    dw $D880, $0001  ; Items
    dw $D8C0, $0030  ; Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_leaving_phantoon:
    dw #preset_100early_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dw $078D, $A2AC  ; DDB
    dw $079B, $CD13  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3400  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $0160  ; Health
    dw $09CA, $0004  ; Supers
    dw $09CE, $0008  ; Pbs
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D82A, $0102  ; Bosses
    dw $D8C0, $0070  ; Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_east_supers:
    dw #preset_100early_wrecked_ship_leaving_phantoon ; Wrecked Ship: Leaving Phantoon
    dw $078D, $A294  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $04DD  ; Screen X position in pixels
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $0600  ; Screen Y position in pixels
    dw $0917, $03A5  ; Layer 2 X position
    dw $0919, $0480  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $F800  ; BG2 Y offset
    dw $09CE, $0007  ; Pbs
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $05B9  ; Samus X
    dw $0AFA, $0690  ; Samus Y
    dw $D8C0, $0074  ; Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_leaving_west_supers:
    dw #preset_100early_wrecked_ship_east_supers ; Wrecked Ship: East Supers
    dw $078D, $A210  ; DDB
    dw $079B, $CDA8  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $012B  ; Health
    dw $09C6, $0045  ; Missiles
    dw $09CA, $000E  ; Supers
    dw $09CC, $000F  ; Max supers
    dw $09CE, $0006  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C2  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $0061  ; Items
    dw #$FFFF
.after

preset_100early_wrecked_ship_spiky_room_of_death:
    dw #preset_100early_wrecked_ship_leaving_west_supers ; Wrecked Ship: Leaving West Supers
    dw $078D, $A2E8  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $AC01  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0472  ; Screen Y position in pixels
    dw $0AF6, $042F  ; Samus X
    dw $0AFA, $04EB  ; Samus Y
    dw #$FFFF
.after

preset_100early_wrecked_ship_wrecked_ship_etank:
    dw #preset_100early_wrecked_ship_spiky_room_of_death ; Wrecked Ship: Spiky Room of Death
    dw $078D, $A258  ; DDB
    dw $079B, $CBD5  ; MDB
    dw $090F, $F400  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0A1C, $004E  ; Samus position/state
    dw $0A1E, $0204  ; More position/state
    dw $0AF6, $0079  ; Samus X
    dw $0AFA, $016B  ; Samus Y
    dw #$FFFF
.after

preset_100early_wrecked_ship_spiky_room_revisit:
    dw #preset_100early_wrecked_ship_wrecked_ship_etank ; Wrecked Ship: Wrecked Ship E-Tank
    dw $078D, $A288  ; DDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0919, $0197  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0248  ; Health
    dw $09C4, $0257  ; Max health
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $02BB  ; Samus Y
    dw $D880, $0071  ; Items
    dw #$FFFF
.after

preset_100early_wrecked_ship_shaft_ascent:
    dw #preset_100early_wrecked_ship_spiky_room_revisit ; Wrecked Ship: Spiky Room Revisit
    dw $078D, $A24C  ; DDB
    dw $079B, $CD5C  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $09C2, $022A  ; Health
    dw $0AF6, $0054  ; Samus X
    dw $0AFA, $0090  ; Samus Y
    dw #$FFFF
.after

preset_100early_wrecked_ship_attic:
    dw #preset_100early_wrecked_ship_shaft_ascent ; Wrecked Ship: Shaft Ascent
    dw $078D, $A2D0  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $47FF  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0921, $FB00  ; BG2 X offset
    dw $0923, $FC00  ; BG2 Y offset
    dw $0AF6, $04B1  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF
.after

preset_100early_wrecked_ship_attic_missiles:
    dw #preset_100early_wrecked_ship_attic ; Wrecked Ship: Attic
    dw $078D, $A228  ; DDB
    dw $079B, $CA52  ; MDB
    dw $090F, $6800  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $ABFE  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $001E  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $022E  ; Health
    dw $09C6, $0045  ; Missiles
    dw $09CA, $000B  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $06CC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $0B7C  ; Doors
    dw #$FFFF
.after

preset_100early_wrecked_ship_attic_revisit:
    dw #preset_100early_wrecked_ship_attic_missiles ; Wrecked Ship: Attic Missiles
    dw $078D, $A1D4  ; DDB
    dw $079B, $CAAE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $000A  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0007  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $020D  ; Health
    dw $09C6, $003A  ; Missiles
    dw $09C8, $004B  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00AA  ; Samus X
    dw $D880, $0079  ; Items
    dw #$FFFF
.after

preset_100early_wrecked_ship_sky_missiles:
    dw #preset_100early_wrecked_ship_attic_revisit ; Wrecked Ship: Attic Revisit
    dw $078D, $A1EC  ; DDB
    dw $079B, $CA52  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $03FE  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $001E  ; Layer 2 Y position
    dw $0921, $F900  ; BG2 X offset
    dw $09C2, $01DB  ; Health
    dw $0AF6, $003E  ; Samus X
    dw #$FFFF
.after

preset_100early_wrecked_ship_bowling_alley_path:
    dw #preset_100early_wrecked_ship_sky_missiles ; Wrecked Ship: Sky Missiles
    dw $078D, $A1E0  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $F400  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0204  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $F800  ; BG2 X offset
    dw $09C2, $01EF  ; Health
    dw $09C6, $0044  ; Missiles
    dw $09C8, $0055  ; Max missiles
    dw $09CA, $000A  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02C0  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D870, $819C  ; Items
    dw #$FFFF
.after

preset_100early_wrecked_ship_bowling_alley:
    dw #preset_100early_wrecked_ship_bowling_alley_path ; Wrecked Ship: Bowling Alley Path
    dw $078D, $89E2  ; DDB
    dw $079B, $9461  ; MDB
    dw $090F, $1F00  ; Screen subpixel X position
    dw $0911, $00F7  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00B9  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $0212  ; Health
    dw $09CA, $000B  ; Supers
    dw $0AF6, $0170  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF
.after

preset_100early_wrecked_ship_leaving_gravity:
    dw #preset_100early_wrecked_ship_bowling_alley ; Wrecked Ship: Bowling Alley
    dw $078D, $A1A4  ; DDB
    dw $079B, $CE40  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $09A2, $7125  ; Equipped Items
    dw $09A4, $7125  ; Collected Items
    dw $09C2, $0191  ; Health
    dw $09C6, $0049  ; Missiles
    dw $09C8, $005A  ; Max missiles
    dw $09CE, $0005  ; Pbs
    dw $09D4, $00C8  ; Max reserves
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0078  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $D880, $00FF  ; Items
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_landing_site:
    dw #preset_100early_wrecked_ship_leaving_gravity ; Wrecked Ship: Leaving Gravity
    dw $078D, $8ADE  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FD00  ; BG2 X offset
    dw $09C6, $004F  ; Missiles
    dw $09C8, $005F  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $005C  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D870, $819E  ; Items
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_gauntlet_spark:
    dw #preset_100early_brinstar_cleanup_landing_site ; Brinstar Cleanup: Landing Site
    dw $078D, $893A  ; DDB
    dw $079B, $93AA  ; MDB
    dw $090F, $5001  ; Screen subpixel X position
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $00EF  ; Health
    dw $09C6, $004C  ; Missiles
    dw $09CE, $000B  ; Pbs
    dw $09D0, $0014  ; Max pbs
    dw $0AF6, $0052  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D870, $819F  ; Items
    dw $D8B0, $3002  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_gauntlet_etank:
    dw #preset_100early_brinstar_cleanup_gauntlet_spark ; Brinstar Cleanup: Gauntlet Spark
    dw $078D, $892E  ; DDB
    dw $079B, $92B3  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $001C  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0917, $0015  ; Layer 2 X position
    dw $0921, $FB00  ; BG2 X offset
    dw $09C2, $001D  ; Health
    dw $0AF6, $0080  ; Samus X
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_leaving_gauntlet:
    dw #preset_100early_brinstar_cleanup_gauntlet_etank ; Brinstar Cleanup: Gauntlet E-Tank
    dw $078D, $8952  ; DDB
    dw $079B, $965B  ; MDB
    dw $090F, $E400  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FA00  ; BG2 X offset
    dw $09C2, $028D  ; Health
    dw $09C4, $02BB  ; Max health
    dw $09CA, $000C  ; Supers
    dw $09CE, $0007  ; Pbs
    dw $0AF6, $0049  ; Samus X
    dw $D870, $81BF  ; Items
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_green_brinstar_elevator:
    dw #preset_100early_brinstar_cleanup_leaving_gauntlet ; Brinstar Cleanup: Leaving Gauntlet
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $A7FF  ; Screen subpixel Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $09C6, $0051  ; Missiles
    dw $09C8, $0069  ; Max missiles
    dw $0AF6, $0082  ; Samus X
    dw $D870, $87BF  ; Items
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_green_brinstar_beetoms:
    dw #preset_100early_brinstar_cleanup_green_brinstar_elevator ; Brinstar Cleanup: Green Brinstar Elevator
    dw $078D, $8C0A  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $0A1D  ; Screen Y position in pixels
    dw $0919, $0795  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09CE, $0006  ; Pbs
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $0A8B  ; Samus Y
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_etecoon_etank_room:
    dw #preset_100early_brinstar_cleanup_green_brinstar_beetoms ; Brinstar Cleanup: Green Brinstar Beetoms
    dw $078D, $8CBE  ; DDB
    dw $079B, $9FE5  ; MDB
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0287  ; Health
    dw $09C6, $0050  ; Missiles
    dw $09CE, $0009  ; Pbs
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_etecoon_room:
    dw #preset_100early_brinstar_cleanup_etecoon_etank_room ; Brinstar Cleanup: Etecoon E-Tank Room
    dw $078D, $8F5E  ; DDB
    dw $079B, $A011  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $030F  ; Health
    dw $09C4, $031F  ; Max health
    dw $09C6, $004F  ; Missiles
    dw $09CA, $0010  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $04D0  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D872, $C48F  ; Items
    dw $D8B6, $E818  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_dachora_room_revisit:
    dw #preset_100early_brinstar_cleanup_etecoon_room ; Brinstar Cleanup: Etecoon Room
    dw $078D, $8F46  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0700  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0540  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $F500  ; BG2 Y offset
    dw $09CE, $000E  ; Pbs
    dw $09D0, $0019  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $014C  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D870, $A7BF  ; Items
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_big_pink_revisit:
    dw #preset_100early_brinstar_cleanup_dachora_room_revisit ; Brinstar Cleanup: Dachora Room Revisit
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0407  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0305  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09CE, $000D  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $04E3  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_big_pink_power_bombs:
    dw #preset_100early_brinstar_cleanup_big_pink_revisit ; Brinstar Cleanup: Big Pink Revisit
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $020B  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0315  ; Screen Y position in pixels
    dw $0917, $0188  ; Layer 2 X position
    dw $0919, $024F  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $030A  ; Health
    dw $09C6, $0054  ; Missiles
    dw $09C8, $006E  ; Max missiles
    dw $09CE, $000C  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $026B  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D872, $C4AF  ; Items
    dw $D8B4, $0346  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_big_pink_hopper_room:
    dw #preset_100early_brinstar_cleanup_big_pink_power_bombs ; Brinstar Cleanup: Big Pink Power Bombs
    dw $078D, $8E62  ; DDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0430  ; Screen Y position in pixels
    dw $0919, $0324  ; Layer 2 Y position
    dw $0923, $FD00  ; BG2 Y offset
    dw $09C2, $02FB  ; Health
    dw $09C6, $0051  ; Missiles
    dw $09CA, $000F  ; Supers
    dw $09CE, $0011  ; Pbs
    dw $09D0, $001E  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AFA, $049B  ; Samus Y
    dw $D872, $C5AF  ; Items
    dw $D8B4, $8346  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_spore_spawn_supers:
    dw #preset_100early_brinstar_cleanup_big_pink_hopper_room ; Brinstar Cleanup: Big Pink Hopper Room
    dw $078D, $8FCA  ; DDB
    dw $079B, $A130  ; MDB
    dw $090F, $A001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $0383  ; Health
    dw $09C4, $0383  ; Max health
    dw $09C6, $004C  ; Missiles
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $01BB  ; Samus Y
    dw $D874, $0F8C  ; Items
    dw $D8B6, $E8D8  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_waterway_etank:
    dw #preset_100early_brinstar_cleanup_spore_spawn_supers ; Brinstar Cleanup: Spore Spawn Supers
    dw $078D, $8F82  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $091F  ; Screen Y position in pixels
    dw $0919, $06D7  ; Layer 2 Y position
    dw $0921, $FB00  ; BG2 X offset
    dw $0923, $FB00  ; BG2 Y offset
    dw $09C6, $0055  ; Missiles
    dw $09C8, $0073  ; Max missiles
    dw $09CA, $0010  ; Supers
    dw $09CC, $0019  ; Max supers
    dw $09CE, $000E  ; Pbs
    dw $0A1C, $0028  ; Samus position/state
    dw $0A1E, $0504  ; More position/state
    dw $0AF6, $0065  ; Samus X
    dw $0AFA, $0990  ; Samus Y
    dw $D870, $E7BF  ; Items
    dw $D872, $C5EF  ; Items
    dw $D8B4, $8B46  ; Doors
    dw $D8B6, $E8F8  ; Doors
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_green_hills_revisit:
    dw #preset_100early_brinstar_cleanup_waterway_etank ; Brinstar Cleanup: Waterway E-Tank
    dw $078D, $8F8E  ; DDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $02ED  ; Screen X position in pixels
    dw $0915, $061E  ; Screen Y position in pixels
    dw $0917, $0231  ; Layer 2 X position
    dw $0919, $0496  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $F700  ; BG2 Y offset
    dw $09C2, $03E7  ; Health
    dw $09C4, $03E7  ; Max health
    dw $09C6, $0057  ; Missiles
    dw $09D6, $0096  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $034D  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D874, $0F8E  ; Items
    dw #$FFFF
.after

preset_100early_brinstar_cleanup_blockbuster:
    dw #preset_100early_brinstar_cleanup_green_hills_revisit ; Brinstar Cleanup: Green Hills Revisit
    dw $078D, $8DEA  ; DDB
    dw $079B, $9E52  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0540  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $005C  ; Missiles
    dw $09C8, $0078  ; Max missiles
    dw $09CE, $000D  ; Pbs
    dw $0AF6, $07B4  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D872, $C7EF  ; Items
    dw $D8B6, $E8F9  ; Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_main_street:
    dw #preset_100early_brinstar_cleanup_blockbuster ; Brinstar Cleanup: Blockbuster
    dw $078D, $A360  ; DDB
    dw $079B, $CEFB  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2C01  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $03E5  ; Health
    dw $09CA, $0011  ; Supers
    dw $09CE, $000C  ; Pbs
    dw $0AF6, $0044  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D820, $0801  ; Events
    dw #$FFFF
.after

preset_100early_maridia_predraygon_fish_tank:
    dw #preset_100early_maridia_predraygon_main_street ; Maridia Pre-Draygon: Main Street
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0109  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0619  ; Screen Y position in pixels
    dw $0917, $00C6  ; Layer 2 X position
    dw $0919, $0492  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $F800  ; BG2 Y offset
    dw $09C2, $039F  ; Health
    dw $09C6, $0061  ; Missiles
    dw $09C8, $007D  ; Max missiles
    dw $09CA, $0010  ; Supers
    dw $09D6, $00A8  ; Reserves
    dw $0AF6, $0169  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D880, $01FF  ; Items
    dw #$FFFF
.after

preset_100early_maridia_predraygon_mama_turtle_etank:
    dw #preset_100early_maridia_predraygon_fish_tank ; Maridia Pre-Draygon: Fish Tank
    dw $078D, $A3B4  ; DDB
    dw $079B, $D017  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $01FD  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $017D  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $0350  ; Health
    dw $0AF6, $01E1  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_predraygon_fish_tank_revisit:
    dw #preset_100early_maridia_predraygon_mama_turtle_etank ; Maridia Pre-Draygon: Mama Turtle E-Tank
    dw $078D, $A3E4  ; DDB
    dw $079B, $D055  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $00C0  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0309  ; Screen Y position in pixels
    dw $0919, $0246  ; Layer 2 Y position
    dw $0923, $FD00  ; BG2 Y offset
    dw $09C2, $044B  ; Health
    dw $09C4, $044B  ; Max health
    dw $09C6, $0066  ; Missiles
    dw $09C8, $0082  ; Max missiles
    dw $09CA, $000F  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0135  ; Samus X
    dw $0AFA, $037B  ; Samus Y
    dw $D880, $0DFF  ; Items
    dw $D8C0, $4B7C  ; Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_mt_everest:
    dw #preset_100early_maridia_predraygon_fish_tank_revisit ; Maridia Pre-Draygon: Fish Tank Revisit
    dw $078D, $A3CC  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0118  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0917, $00D2  ; Layer 2 X position
    dw $0919, $0257  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $03E5  ; Health
    dw $09CA, $0014  ; Supers
    dw $09CC, $001E  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0178  ; Samus X
    dw $0AFA, $03BB  ; Samus Y
    dw $D880, $0FFF  ; Items
    dw #$FFFF
.after

preset_100early_maridia_predraygon_beach_missiles:
    dw #preset_100early_maridia_predraygon_mt_everest ; Maridia Pre-Draygon: Mt Everest
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $03A9  ; Health
    dw $0AF6, $0078  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_predraygon_west_beach:
    dw #preset_100early_maridia_predraygon_beach_missiles ; Maridia Pre-Draygon: Beach Missiles
    dw $078D, $A4BC  ; DDB
    dw $079B, $D1DD  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0915, $00F9  ; Screen Y position in pixels
    dw $0919, $00F9  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09C6, $006B  ; Missiles
    dw $09C8, $0087  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0069  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D880, $4FFF  ; Items
    dw #$FFFF
.after

preset_100early_maridia_predraygon_watering_hole:
    dw #preset_100early_maridia_predraygon_west_beach ; Maridia Pre-Draygon: West Beach
    dw $078D, $A4D4  ; DDB
    dw $079B, $D16D  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0915, $0017  ; Screen Y position in pixels
    dw $0919, $0017  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $0AF6, $006C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_predraygon_west_beach_revisit:
    dw #preset_100early_maridia_predraygon_watering_hole ; Maridia Pre-Draygon: Watering Hole
    dw $078D, $A498  ; DDB
    dw $079B, $D13B  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00FC  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00BD  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $03AE  ; Health
    dw $09C6, $006F  ; Missiles
    dw $09C8, $008C  ; Max missiles
    dw $09CA, $0019  ; Supers
    dw $09CC, $0023  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $019C  ; Samus X
    dw $D880, $7FFF  ; Items
    dw #$FFFF
.after

preset_100early_maridia_predraygon_beach_missiles_revisit:
    dw #preset_100early_maridia_predraygon_west_beach_revisit ; Maridia Pre-Draygon: West Beach Revisit
    dw $078D, $A48C  ; DDB
    dw $079B, $D16D  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $039F  ; Health
    dw $0AF6, $03A2  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_predraygon_aqueduct:
    dw #preset_100early_maridia_predraygon_beach_missiles_revisit ; Maridia Pre-Draygon: Beach Missiles Revisit
    dw $078D, $A4E0  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09CA, $0018  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $01B0  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D8C0, $CB7C  ; Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_botwoon:
    dw #preset_100early_maridia_predraygon_aqueduct ; Maridia Pre-Draygon: Aqueduct
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0001  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $09CE, $000B  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $03A8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_predraygon_full_halfie:
    dw #preset_100early_maridia_predraygon_botwoon ; Maridia Pre-Draygon: Botwoon
    dw $078D, $A774  ; DDB
    dw $079B, $D95E  ; MDB
    dw $07F3, $002A  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $9FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $03DB  ; Health
    dw $09C6, $0077  ; Missiles
    dw $09CA, $0013  ; Supers
    dw $09CE, $000C  ; Pbs
    dw $0AF6, $01C4  ; Samus X
    dw $D82C, $0002  ; Bosses
    dw #$FFFF
.after

preset_100early_maridia_predraygon_draygon_missiles:
    dw #preset_100early_maridia_predraygon_full_halfie ; Maridia Pre-Draygon: Full Halfie
    dw $078D, $A8E8  ; DDB
    dw $079B, $D72A  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $00FB  ; Screen Y position in pixels
    dw $0917, $0600  ; Layer 2 X position
    dw $0919, $00FB  ; Layer 2 Y position
    dw $09C2, $035C  ; Health
    dw $09CA, $0012  ; Supers
    dw $0AF6, $06BB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $0400  ; Doors
    dw #$FFFF
.after

preset_100early_maridia_predraygon_draygon:
    dw #preset_100early_maridia_predraygon_draygon_missiles ; Maridia Pre-Draygon: Draygon Missiles
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C6, $007C  ; Missiles
    dw $09C8, $0091  ; Max missiles
    dw $09CA, $0011  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D882, $0080  ; Items
    dw $D8C2, $0C00  ; Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_return_halfie:
    dw #preset_100early_maridia_predraygon_draygon ; Maridia Pre-Draygon: Draygon
    dw $078D, $A96C  ; DDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $FE00  ; BG2 Y offset
    dw $09A2, $7325  ; Equipped Items
    dw $09A4, $7325  ; Collected Items
    dw $09C2, $02CB  ; Health
    dw $09C6, $007B  ; Missiles
    dw $09CA, $0015  ; Supers
    dw $09CE, $000D  ; Pbs
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $0040  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82C, $0003  ; Bosses
    dw $D882, $0480  ; Items
    dw $D8C2, $CC00  ; Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_reverse_botwoon_etank:
    dw #preset_100early_maridia_postdraygon_return_halfie ; Maridia Post-Draygon: Return Halfie
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0200  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $025A  ; Health
    dw $09C6, $0078  ; Missiles
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $00A9  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_east_sand_pit:
    dw #preset_100early_maridia_postdraygon_reverse_botwoon_etank ; Maridia Post-Draygon: Reverse Botwoon E-Tank
    dw $078D, $A7D4  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $0258  ; Health
    dw $0AF6, $05BB  ; Samus X
    dw $0AFA, $02CB  ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_pants_room:
    dw #preset_100early_maridia_postdraygon_east_sand_pit ; Maridia Post-Draygon: East Sand Pit
    dw $078D, $A6CC  ; DDB
    dw $079B, $D4C2  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C6, $007D  ; Missiles
    dw $09C8, $0096  ; Max missiles
    dw $09CE, $0012  ; Pbs
    dw $09D0, $0023  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02B3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D882, $048C  ; Items
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_shaktool:
    dw #preset_100early_maridia_postdraygon_pants_room ; Maridia Post-Draygon: Pants Room
    dw $078D, $A690  ; DDB
    dw $079B, $D646  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09C2, $0249  ; Health
    dw $0AF6, $01BC  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_shaktool_revisit:
    dw #preset_100early_maridia_postdraygon_shaktool ; Maridia Post-Draygon: Shaktool
    dw $078D, $A8D0  ; DDB
    dw $079B, $D6D0  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $83FF  ; Screen subpixel Y position
    dw $0915, $0005  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0005  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09A2, $7327  ; Equipped Items
    dw $09A4, $7327  ; Collected Items
    dw $09C2, $022B  ; Health
    dw $09CE, $0011  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0077  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $2801  ; Events
    dw $D882, $04CC  ; Items
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_east_sand_hall:
    dw #preset_100early_maridia_postdraygon_shaktool_revisit ; Maridia Post-Draygon: Shaktool Revisit
    dw $078D, $A7B0  ; DDB
    dw $079B, $D646  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09C2, $020D  ; Health
    dw $0AF6, $003A  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_plasma_spark_room:
    dw #preset_100early_maridia_postdraygon_east_sand_hall ; Maridia Post-Draygon: East Sand Hall
    dw $078D, $A684  ; DDB
    dw $079B, $D48E  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $09CA, $0014  ; Supers
    dw $0AF6, $009A  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D8C2, $CC20  ; Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_kassiuz_room:
    dw #preset_100early_maridia_postdraygon_plasma_spark_room ; Maridia Post-Draygon: Plasma Spark Room
    dw $078D, $A60C  ; DDB
    dw $079B, $D340  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $00F6  ; Screen Y position in pixels
    dw $0917, $01C0  ; Layer 2 X position
    dw $0919, $00F6  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09C2, $01F9  ; Health
    dw $09C6, $007F  ; Missiles
    dw $09CA, $0015  ; Supers
    dw $09CE, $0012  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0299  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $CC28  ; Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_plasma:
    dw #preset_100early_maridia_postdraygon_kassiuz_room ; Maridia Post-Draygon: Kassiuz Room
    dw $078D, $A5DC  ; DDB
    dw $079B, $D27E  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C001  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_leaving_plasma:
    dw #preset_100early_maridia_postdraygon_plasma ; Maridia Post-Draygon: Plasma
    dw $078D, $A54C  ; DDB
    dw $079B, $D2AA  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0919, $001D  ; Layer 2 Y position
    dw $09A6, $1009  ; Beams
    dw $09A8, $100D  ; Beams
    dw $09C2, $01DB  ; Health
    dw $09CE, $0011  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002D  ; Samus X
    dw $D880, $FFFF  ; Items
    dw $D8C2, $CC2A  ; Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_leaving_kassiuz:
    dw #preset_100early_maridia_postdraygon_leaving_plasma ; Maridia Post-Draygon: Leaving Plasma
    dw $078D, $A540  ; DDB
    dw $079B, $D387  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0915, $0319  ; Screen Y position in pixels
    dw $0919, $0252  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_cac_alley:
    dw #preset_100early_maridia_postdraygon_leaving_kassiuz ; Maridia Post-Draygon: Leaving Kassiuz
    dw $078D, $A5A0  ; DDB
    dw $079B, $D5EC  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_botwoon_etank:
    dw #preset_100early_maridia_postdraygon_cac_alley ; Maridia Post-Draygon: Cac Alley
    dw $078D, $A960  ; DDB
    dw $079B, $D913  ; MDB
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0200  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $01E0  ; Health
    dw $09CA, $0016  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $008E  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C2, $CCAA  ; Doors
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_aqueduct_final:
    dw #preset_100early_maridia_postdraygon_botwoon_etank ; Maridia Post-Draygon: Botwoon E-Tank
    dw $078D, $A8AC  ; DDB
    dw $079B, $D6FD  ; MDB
    dw $090F, $2900  ; Screen subpixel X position
    dw $0911, $012F  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $012F  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $04A0  ; Health
    dw $09C4, $04AF  ; Max health
    dw $0AF6, $01AA  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D882, $05CC  ; Items
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_west_sand_pit:
    dw #preset_100early_maridia_postdraygon_aqueduct_final ; Maridia Post-Draygon: Aqueduct Final
    dw $078D, $A7D4  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $04A5  ; Health
    dw $09C6, $0084  ; Missiles
    dw $09C8, $009B  ; Max missiles
    dw $09CA, $001B  ; Supers
    dw $09CC, $0028  ; Max supers
    dw $0AF6, $05DB  ; Samus X
    dw $0AFA, $02CB  ; Samus Y
    dw $D882, $05FC  ; Items
    dw #$FFFF
.after

preset_100early_maridia_postdraygon_thread_the_needle:
    dw #preset_100early_maridia_postdraygon_west_sand_pit ; Maridia Post-Draygon: West Sand Pit
    dw $078D, $A528  ; DDB
    dw $079B, $D21C  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $00FF  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00FF  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $047D  ; Health
    dw $09C6, $0089  ; Missiles
    dw $09C8, $00A0  ; Max missiles
    dw $09CE, $0013  ; Pbs
    dw $09D4, $012C  ; Max reserves
    dw $0AF6, $002F  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D882, $05FF  ; Items
    dw #$FFFF
.after

preset_100early_kraidicekronic_kraid_entrance_revisit:
    dw #preset_100early_maridia_postdraygon_thread_the_needle ; Maridia Post-Draygon: Thread the Needle
    dw $078D, $A510  ; DDB
    dw $079B, $CF80  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $A001  ; Screen subpixel X position
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $09CA, $001A  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $005B  ; Samus X
    dw #$FFFF
.after

preset_100early_kraidicekronic_kraid_missiles:
    dw #preset_100early_kraidicekronic_kraid_entrance_revisit ; Kraid-Ice-Kronic: Kraid Entrance Revisit
    dw $078D, $923A  ; DDB
    dw $079B, $A471  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09CE, $0012  ; Pbs
    dw $0AF6, $016C  ; Samus X
    dw #$FFFF
.after

preset_100early_kraidicekronic_kraid_missiles_escape:
    dw #preset_100early_kraidicekronic_kraid_missiles ; Kraid-Ice-Kronic: Kraid Missiles
    dw $078D, $9156  ; DDB
    dw $079B, $A4DA  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $01BB  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $014C  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C6, $008E  ; Missiles
    dw $09C8, $00A5  ; Max missiles
    dw $09CE, $0011  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0250  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D874, $1F8E  ; Items
    dw #$FFFF
.after

preset_100early_kraidicekronic_ice_beam_gate_room:
    dw #preset_100early_kraidicekronic_kraid_missiles_escape ; Kraid-Ice-Kronic: Kraid Missiles Escape
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0321  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0258  ; Layer 2 Y position
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C6, $0092  ; Missiles
    dw $09CA, $0018  ; Supers
    dw $09CE, $0010  ; Pbs
    dw $0AF6, $002E  ; Samus X
    dw $0AFA, $0393  ; Samus Y
    dw $D8B8, $EEEF  ; Doors
    dw #$FFFF
.after

preset_100early_kraidicekronic_ice_beam_snake_room:
    dw #preset_100early_kraidicekronic_ice_beam_gate_room ; Kraid-Ice-Kronic: Ice Beam Gate Room
    dw $078D, $931E  ; DDB
    dw $079B, $A75D  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $0AF6, $0035  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_kraidicekronic_snake_room_revisit:
    dw #preset_100early_kraidicekronic_ice_beam_snake_room ; Kraid-Ice-Kronic: Ice Beam Snake Room
    dw $078D, $937E  ; DDB
    dw $079B, $A890  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09A6, $100B  ; Beams
    dw $09A8, $100F  ; Beams
    dw $09C2, $0478  ; Health
    dw $09CA, $0019  ; Supers
    dw $0AF6, $00BA  ; Samus X
    dw $D876, $1FF7  ; Items
    dw #$FFFF
.after

preset_100early_kraidicekronic_ice_escape:
    dw #preset_100early_kraidicekronic_snake_room_revisit ; Kraid-Ice-Kronic: Snake Room Revisit
    dw $078D, $935A  ; DDB
    dw $079B, $A8B9  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $2001  ; Screen subpixel X position
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C7  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_100early_kraidicekronic_crumble_shaft_missiles:
    dw #preset_100early_kraidicekronic_ice_escape ; Kraid-Ice-Kronic: Ice Escape
    dw $078D, $9276  ; DDB
    dw $079B, $A815  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0284  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $01E3  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $0923, $FE00  ; BG2 Y offset
    dw $09CE, $000F  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0324  ; Samus X
    dw $0AFA, $03B3  ; Samus Y
    dw #$FFFF
.after

preset_100early_kraidicekronic_crocomire_speedway:
    dw #preset_100early_kraidicekronic_crumble_shaft_missiles ; Kraid-Ice-Kronic: Crumble Shaft Missiles
    dw $078D, $9336  ; DDB
    dw $079B, $A8F8  ; MDB
    dw $090F, $7FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0479  ; Health
    dw $09C6, $0097  ; Missiles
    dw $09C8, $00AA  ; Max missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DD  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D876, $1FFF  ; Items
    dw #$FFFF
.after

preset_100early_kraidicekronic_kronic_boost:
    dw #preset_100early_kraidicekronic_crocomire_speedway ; Kraid-Ice-Kronic: Crocomire Speedway
    dw $078D, $9792  ; DDB
    dw $079B, $AFFB  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0AF6, $03C3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_lower_norfair_ln_main_hall:
    dw #preset_100early_kraidicekronic_kronic_boost ; Kraid-Ice-Kronic: Kronic Boost
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0301  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $0476  ; Health
    dw $09CE, $000E  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0480  ; Samus X
    dw $0AFA, $0288  ; Samus Y
    dw $D8BA, $01F7  ; Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_golden_torizo:
    dw #preset_100early_lower_norfair_ln_main_hall ; Lower Norfair: LN Main Hall
    dw $078D, $9852  ; DDB
    dw $079B, $B1E5  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0449  ; Health
    dw $09CE, $000C  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02B2  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D820, $3801  ; Events
    dw #$FFFF
.after

preset_100early_lower_norfair_leaving_golden_torizo:
    dw #preset_100early_lower_norfair_golden_torizo ; Lower Norfair: Golden Torizo
    dw $078D, $983A  ; DDB
    dw $079B, $B283  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $B001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C6, $009C  ; Missiles
    dw $09C8, $00AF  ; Max missiles
    dw $09CA, $001E  ; Supers
    dw $09CC, $002D  ; Max supers
    dw $09CE, $000B  ; Pbs
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D82A, $0106  ; Bosses
    dw $D878, $00DE  ; Items
    dw #$FFFF
.after

preset_100early_lower_norfair_fast_ripper_room:
    dw #preset_100early_lower_norfair_leaving_golden_torizo ; Lower Norfair: Leaving Golden Torizo
    dw $078D, $9882  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $000B  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0008  ; Layer 2 Y position
    dw $0923, $FE00  ; BG2 Y offset
    dw $09A2, $732F  ; Equipped Items
    dw $09A4, $732F  ; Collected Items
    dw $0AF6, $0091  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $80DE  ; Items
    dw $D8BA, $03F7  ; Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_worst_room_in_the_game:
    dw #preset_100early_lower_norfair_fast_ripper_room ; Lower Norfair: Fast Ripper Room
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $03FD  ; Health
    dw $09CA, $001D  ; Supers
    dw $0AF6, $03DB  ; Samus X
    dw #$FFFF
.after

preset_100early_lower_norfair_mickey_mouse_missiles:
    dw #preset_100early_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room in the Game
    dw $078D, $994E  ; DDB
    dw $079B, $B4AD  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0915, $0103  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C2  ; Layer 2 Y position
    dw $0923, $FB00  ; BG2 Y offset
    dw $09C2, $0411  ; Health
    dw $0AF6, $0071  ; Samus X
    dw $0AFA, $017B  ; Samus Y
    dw #$FFFF
.after

preset_100early_lower_norfair_amphitheatre:
    dw #preset_100early_lower_norfair_mickey_mouse_missiles ; Lower Norfair: Mickey Mouse Missiles
    dw $078D, $9936  ; DDB
    dw $090F, $0001  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0919, $00D5  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $00A1  ; Missiles
    dw $09C8, $00B4  ; Max missiles
    dw $0AF6, $00AB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D878, $82DE  ; Items
    dw #$FFFF
.after

preset_100early_lower_norfair_red_kihunter_shaft:
    dw #preset_100early_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dw $078D, $997E  ; DDB
    dw $079B, $B4E5  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0270  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0031  ; Screen Y position in pixels
    dw $0917, $01D4  ; Layer 2 X position
    dw $0919, $0024  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $0AF6, $02D0  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw #$FFFF
.after

preset_100early_lower_norfair_ninja_pirates:
    dw #preset_100early_lower_norfair_red_kihunter_shaft ; Lower Norfair: Red Kihunter Shaft
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $4FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $0921, $FB00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $03D8  ; Health
    dw $09C6, $00A3  ; Missiles
    dw $09CA, $001C  ; Supers
    dw $09CE, $000D  ; Pbs
    dw $09D0, $0028  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0163  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D878, $92DE  ; Items
    dw $D8BA, $C3F7  ; Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_plowerhouse_room:
    dw #preset_100early_lower_norfair_ninja_pirates ; Lower Norfair: Ninja Pirates
    dw $078D, $9A1A  ; DDB
    dw $079B, $B62B  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $017E  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $011E  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0437  ; Health
    dw $09C6, $00A5  ; Missiles
    dw $09CA, $0022  ; Supers
    dw $0AF6, $01EB  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D8BC, $0001  ; Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_ridley:
    dw #preset_100early_lower_norfair_plowerhouse_room ; Lower Norfair: Plowerhouse Room
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $0434  ; Health
    dw $09CA, $0021  ; Supers
    dw $0AF6, $0039  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D8BA, $D3F7  ; Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_ridley_escape:
    dw #preset_100early_lower_norfair_ridley ; Lower Norfair: Ridley
    dw $078D, $98CA  ; DDB
    dw $079B, $B32E  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $0915, $011F  ; Screen Y position in pixels
    dw $09CA, $0022  ; Supers
    dw $09CE, $000E  ; Pbs
    dw $0AF6, $00C9  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $D82A, $0107  ; Bosses
    dw #$FFFF
.after

preset_100early_lower_norfair_wasteland_revisit:
    dw #preset_100early_lower_norfair_ridley_escape ; Lower Norfair: Ridley Escape
    dw $078D, $9966  ; DDB
    dw $079B, $B62B  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $04F1  ; Health
    dw $09C4, $0513  ; Max health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02DB  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D878, $D2DE  ; Items
    dw $D8BA, $DFF7  ; Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_kihunter_shaft_revisit:
    dw #preset_100early_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dw $078D, $9A3E  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $2FFF  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $04C4  ; Health
    dw $09CE, $000D  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0590  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
.after

preset_100early_lower_norfair_firefleas_room:
    dw #preset_100early_lower_norfair_kihunter_shaft_revisit ; Lower Norfair: Kihunter Shaft Revisit
    dw $078D, $9A26  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $4180  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0915, $001A  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0013  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $FB00  ; BG2 Y offset
    dw $09CE, $000C  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_lower_norfair_springball_maze:
    dw #preset_100early_lower_norfair_firefleas_room ; Lower Norfair: Firefleas Room
    dw $078D, $9A02  ; DDB
    dw $079B, $B6EE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $001C  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09C2, $0576  ; Health
    dw $09C4, $0577  ; Max health
    dw $09CA, $0021  ; Supers
    dw $09CE, $000D  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $016B  ; Samus X
    dw $D87A, $0001  ; Items
    dw #$FFFF
.after

preset_100early_lower_norfair_three_muskateers:
    dw #preset_100early_lower_norfair_springball_maze ; Lower Norfair: Springball Maze
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $D801  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C6, $00AA  ; Missiles
    dw $09C8, $00B9  ; Max missiles
    dw $09CE, $0012  ; Pbs
    dw $09D0, $002D  ; Max pbs
    dw $0AF6, $0059  ; Samus X
    dw $D878, $DEDE  ; Items
    dw #$FFFF
.after

preset_100early_lower_norfair_bubble_mountain_return:
    dw #preset_100early_lower_norfair_three_muskateers ; Lower Norfair: Three Muskateers
    dw $078D, $9A4A  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $8000  ; Screen subpixel X position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0571  ; Health
    dw $09C6, $00AD  ; Missiles
    dw $09C8, $00BE  ; Max missiles
    dw $0AF6, $008F  ; Samus X
    dw $D878, $FEDE  ; Items
    dw #$FFFF
.after

preset_100early_lower_norfair_norfair_reserve:
    dw #preset_100early_lower_norfair_bubble_mountain_return ; Lower Norfair: Bubble Mountain Return
    dw $078D, $95CA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $056F  ; Health
    dw $09C6, $00AE  ; Missiles
    dw $0AF6, $003D  ; Samus X
    dw $D8BA, $DFFF  ; Doors
    dw #$FFFF
.after

preset_100early_lower_norfair_bubble_mountain_final:
    dw #preset_100early_lower_norfair_norfair_reserve ; Lower Norfair: Norfair Reserve
    dw $078D, $952E  ; DDB
    dw $079B, $AC83  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $00B8  ; Missiles
    dw $09C8, $00C8  ; Max missiles
    dw $09D4, $0190  ; Max reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01C1  ; Samus X
    dw $D876, $FFFF  ; Items
    dw #$FFFF
.after

preset_100early_lower_norfair_business_center_final:
    dw #preset_100early_lower_norfair_bubble_mountain_final ; Lower Norfair: Bubble Mountain Final
    dw $078D, $97DA  ; DDB
    dw $079B, $B167  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $09C2, $056A  ; Health
    dw $09C6, $00BD  ; Missiles
    dw $09C8, $00CD  ; Max missiles
    dw $09CA, $0022  ; Supers
    dw $09CE, $0010  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003F  ; Samus X
    dw $D878, $FEDF  ; Items
    dw #$FFFF
.after

preset_100early_final_cleanup_below_spazer:
    dw #preset_100early_lower_norfair_business_center_final ; Lower Norfair: Business Center Final
    dw $078D, $A33C  ; DDB
    dw $079B, $CF54  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $09C2, $0577  ; Health
    dw $09D6, $00B4  ; Reserves
    dw $0AF6, $00CE  ; Samus X
    dw #$FFFF
.after

preset_100early_final_cleanup_red_tower_xray:
    dw #preset_100early_final_cleanup_below_spazer ; Final Cleanup: Below Spazer
    dw $078D, $910E  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0AF6, $002E  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF
.after

preset_100early_final_cleanup_xray_passage:
    dw #preset_100early_final_cleanup_red_tower_xray ; Final Cleanup: Red Tower X-Ray
    dw $078D, $90F6  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $0FFF  ; Screen subpixel X position
    dw $0913, $3400  ; Screen subpixel Y position
    dw $0915, $061D  ; Screen Y position in pixels
    dw $0919, $0495  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $F700  ; BG2 Y offset
    dw $09CE, $000F  ; Pbs
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D8B6, $EAF9  ; Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_xray_passage_return:
    dw #preset_100early_final_cleanup_xray_passage ; Final Cleanup: X-Ray Passage
    dw $078D, $905A  ; DDB
    dw $079B, $A2CE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00F2  ; Screen X position in pixels
    dw $0913, $37FF  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00B5  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09A2, $F32F  ; Equipped Items
    dw $09A4, $F32F  ; Collected Items
    dw $09CA, $0021  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0178  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $1FCE  ; Items
    dw $D8B6, $EEF9  ; Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_reverse_slinky:
    dw #preset_100early_final_cleanup_xray_passage_return ; Final Cleanup: X-Ray Passage Return
    dw $078D, $902A  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $0911, $03D6  ; Screen X position in pixels
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0917, $02E0  ; Layer 2 X position
    dw $0921, $FA00  ; BG2 X offset
    dw $09CE, $000E  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0476  ; Samus X
    dw $0AFA, $004B  ; Samus Y
    dw #$FFFF
.after

preset_100early_final_cleanup_retro_brinstar_hoppers:
    dw #preset_100early_final_cleanup_reverse_slinky ; Final Cleanup: Reverse Slinky
    dw $078D, $8EFE  ; DDB
    dw $079B, $9E52  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $00DE  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $0015  ; Screen Y position in pixels
    dw $0917, $00A6  ; Layer 2 X position
    dw $0919, $000F  ; Layer 2 Y position
    dw $0921, $F800  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09C2, $0572  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0152  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_final_cleanup_retro_brinstar_etank:
    dw #preset_100early_final_cleanup_retro_brinstar_hoppers ; Final Cleanup: Retro Brinstar Hoppers
    dw $078D, $8E86  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $058B  ; Screen X position in pixels
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0428  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09CE, $0012  ; Pbs
    dw $09D0, $0032  ; Max pbs
    dw $0AF6, $05EB  ; Samus X
    dw $0AFA, $02BB  ; Samus Y
    dw $D872, $CFEF  ; Items
    dw #$FFFF
.after

preset_100early_final_cleanup_boulder_room:
    dw #preset_100early_final_cleanup_retro_brinstar_etank ; Final Cleanup: Retro Brinstar E-Tank
    dw $078D, $8ECE  ; DDB
    dw $079B, $9F64  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09C2, $05DB  ; Health
    dw $09C4, $05DB  ; Max health
    dw $09CA, $0020  ; Supers
    dw $09CE, $0011  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0259  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D872, $EFEF  ; Items
    dw $D8B6, $EEFD  ; Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_leaving_billy_mays:
    dw #preset_100early_final_cleanup_boulder_room ; Final Cleanup: Boulder Room
    dw $078D, $8FEE  ; DDB
    dw $079B, $A1D8  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $00C7  ; Missiles
    dw $09C8, $00D7  ; Max missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00D6  ; Samus X
    dw $D874, $1FFE  ; Items
    dw #$FFFF
.after

preset_100early_final_cleanup_retro_brinstar_escape:
    dw #preset_100early_final_cleanup_leaving_billy_mays ; Final Cleanup: Leaving Billy Mays
    dw $078D, $8FE2  ; DDB
    dw $079B, $9F64  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $05D1  ; Health
    dw $09C6, $00CC  ; Missiles
    dw $09C8, $00DC  ; Max missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $02D9  ; Samus X
    dw $0AFA, $02BB  ; Samus Y
    dw $D872, $FFEF  ; Items
    dw #$FFFF
.after

preset_100early_final_cleanup_old_tourian_missiles:
    dw #preset_100early_final_cleanup_retro_brinstar_escape ; Final Cleanup: Retro Brinstar Escape
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09CE, $0010  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0A68, $0068  ; Flash suit
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw #$FFFF
.after

preset_100early_final_cleanup_climb_supers:
    dw #preset_100early_final_cleanup_old_tourian_missiles ; Final Cleanup: Old Tourian Missiles
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $4001  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $0700  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0540  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $F800  ; BG2 Y offset
    dw $09C2, $0598  ; Health
    dw $09C6, $00D1  ; Missiles
    dw $09C8, $00E1  ; Max missiles
    dw $09CE, $000F  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $02B9  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D870, $E7FF  ; Items
    dw $D8B2, $2C09  ; Doors
    dw #$FFFF
.after

preset_100early_final_cleanup_parlor_missiles:
    dw #preset_100early_final_cleanup_climb_supers ; Final Cleanup: Climb Supers
    dw $078D, $8B3E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $5800  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0314  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $024F  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FB00  ; BG2 Y offset
    dw $09C2, $04FE  ; Health
    dw $09CA, $0025  ; Supers
    dw $09CC, $0032  ; Max supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $012C  ; Samus X
    dw $0AFA, $0398  ; Samus Y
    dw $D870, $EFFF  ; Items
    dw #$FFFF
.after

preset_100early_final_cleanup_leaving_parlor_missiles:
    dw #preset_100early_final_cleanup_parlor_missiles ; Final Cleanup: Parlor Missiles
    dw $078D, $8C82  ; DDB
    dw $079B, $9A90  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $00D6  ; Missiles
    dw $09C8, $00E6  ; Max missiles
    dw $09CE, $000E  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0056  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D870, $FFFF  ; Items
    dw #$FFFF
.after

preset_100early_final_cleanup_terminator_revisit:
    dw #preset_100early_final_cleanup_leaving_parlor_missiles ; Final Cleanup: Leaving Parlor Missiles
    dw $078D, $8C8E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0166  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF
.after

preset_100early_tourian_metroids_1:
    dw #preset_100early_final_cleanup_terminator_revisit ; Final Cleanup: Terminator Revisit
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $090F, $C001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4FFF  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $0517  ; Health
    dw $09C6, $00D8  ; Missiles
    dw $09CA, $0024  ; Supers
    dw $0AF6, $003E  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D820, $3FC1  ; Events
    dw $D8B2, $6C09  ; Doors
    dw #$FFFF
.after

preset_100early_tourian_metroids_2:
    dw #preset_100early_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0549  ; Health
    dw $09C6, $00DE  ; Missiles
    dw $09CA, $0025  ; Supers
    dw $09CE, $0010  ; Pbs
    dw $0AF6, $003A  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0021  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF
.after

preset_100early_tourian_metroids_3:
    dw #preset_100early_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $00F2  ; Screen Y position in pixels
    dw $0919, $00B5  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $09C2, $0567  ; Health
    dw $09C6, $00E2  ; Missiles
    dw $09CA, $0027  ; Supers
    dw $09CE, $0012  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00CA  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0023  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF
.after

preset_100early_tourian_metroids_4:
    dw #preset_100early_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $05CF  ; Health
    dw $09C6, $00E6  ; Missiles
    dw $09CE, $0015  ; Pbs
    dw $0AF6, $05B0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0027  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF
.after

preset_100early_tourian_baby_skip:
    dw #preset_100early_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $FE00  ; BG2 X offset
    dw $09C2, $05BD  ; Health
    dw $09CA, $0029  ; Supers
    dw $09CE, $0017  ; Pbs
    dw $09D6, $0157  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01B3  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D822, $002F  ; Events
    dw $D8C4, $000F  ; Doors
    dw #$FFFF
.after

preset_100early_tourian_zeb_skip:
    dw #preset_100early_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AAA4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0195  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09CA, $0026  ; Supers
    dw $0AF6, $0037  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF
.after

preset_100early_tourian_escape_room_3:
    dw #preset_100early_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09A6, $1009  ; Beams
    dw $09C2, $05DB  ; Health
    dw $09C6, $008C  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $09CE, $0000  ; Pbs
    dw $09D6, $0190  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A76, $8000  ; Hyper beam
    dw $0AF6, $00DF  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D820, $7FCD  ; Events
    dw $D82C, $0203  ; Bosses
    dw #$FFFF
.after

preset_100early_tourian_escape_room_4:
    dw #preset_100early_tourian_escape_room_3 ; Tourian: Escape Room 3
    dw $078D, $AB04  ; DDB
    dw $079B, $DEA7  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $0AF6, $05D6  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100early_tourian_escape_parlor:
    dw #preset_100early_tourian_escape_room_4 ; Tourian: Escape Room 4
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $A401  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $F800  ; BG2 Y offset
    dw $09C2, $0548  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $019A  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
.after
