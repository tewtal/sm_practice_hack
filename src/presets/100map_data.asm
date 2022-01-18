
preset_100map_varia_landing_site:
    dw #$0000
    dw $078B, $0000  ; Elevator Index
    dw $078D, $88FE  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $0006  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $03D0  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0200  ; BG2 X offset
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
    dw $0AF6, $0481  ; Samus X
    dw $0AFA, $0440  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0000  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0000  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0001  ; Bosses
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

preset_100map_varia_morph:
    dw #preset_100map_varia_landing_site ; Varia: Landing Site
    dw $078D, $8B9E  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F5, $0007  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0921, $FB00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $0AF6, $0580  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF
.after

preset_100map_varia_pit_room:
    dw #preset_100map_varia_morph ; Varia: Morph
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

preset_100map_varia_bombs:
    dw #preset_100map_varia_pit_room ; Varia: Pit Room
    dw $078D, $8982  ; DDB
    dw $079B, $9879  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $0001  ; Events
    dw $D8B2, $2400  ; Doors
    dw #$FFFF
.after

preset_100map_varia_alcatraz:
    dw #preset_100map_varia_bombs ; Varia: Bombs
    dw $078D, $8BAA  ; DDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FD00  ; BG2 X offset
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
.after

preset_100map_varia_early_supers:
    dw #preset_100map_varia_alcatraz ; Varia: Alcatraz
    dw $078D, $8D4E  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0409  ; Screen Y position in pixels
    dw $0919, $0306  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FC00  ; BG2 Y offset
    dw $09C2, $008B  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A0  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $D870, $0180  ; Items
    dw $D8B4, $0002  ; Doors
    dw #$FFFF
.after

preset_100map_varia_brinstar_reserve:
    dw #preset_100map_varia_early_supers ; Varia: Early Supers
    dw $078D, $8CD6  ; DDB
    dw $079B, $9BC8  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $0077  ; Health
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $0AF6, $02CE  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D872, $0401  ; Items
    dw $D8B4, $0042  ; Doors
    dw #$FFFF
.after

preset_100map_varia_reverse_mockball:
    dw #preset_100map_varia_brinstar_reserve ; Varia: Brinstar Reserve
    dw $078D, $8D5A  ; DDB
    dw $079B, $9C07  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003F  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_varia_green_hill_zone:
    dw #preset_100map_varia_reverse_mockball ; Varia: Reverse Mockball
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $061D  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0495  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09A6, $1000  ; Beams
    dw $09A8, $1000  ; Beams
    dw $09C6, $0005  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0002  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0372  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D872, $04C1  ; Items
    dw $D8B4, $0246  ; Doors
    dw #$FFFF
.after

preset_100map_varia_red_tower_down:
    dw #preset_100map_varia_green_hill_zone ; Varia: Green Hill Zone
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $0004  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0AF6, $05BD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B6, $0008  ; Doors
    dw #$FFFF
.after

preset_100map_varia_kraid_entrance:
    dw #preset_100map_varia_red_tower_down ; Varia: Red Tower Down
    dw $078D, $A348  ; DDB
    dw $079B, $CF80  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $0078  ; Health
    dw $09CA, $0002  ; Supers
    dw $0AF6, $004C  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B6, $8108  ; Doors
    dw #$FFFF
.after

preset_100map_varia_kraid_kihunter_room:
    dw #preset_100map_varia_kraid_entrance ; Varia: Kraid Entrance
    dw $078D, $923A  ; DDB
    dw $079B, $A471  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $006E  ; Health
    dw $09CA, $0001  ; Supers
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $016B  ; Samus X
    dw $0AFA, $0190  ; Samus Y
    dw #$FFFF
.after

preset_100map_varia_kihunter_room_2:
    dw #preset_100map_varia_kraid_kihunter_room ; Varia: Kraid Kihunter Room
    dw $078D, $9186  ; DDB
    dw $079B, $A70B  ; MDB
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
    dw #$FFFF
.after

preset_100map_varia_kraid:
    dw #preset_100map_varia_kihunter_room_2 ; Varia: Kihunter Room 2
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $93FF  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $005D  ; Health
    dw $09C6, $0003  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01D8  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $0024  ; Doors
    dw #$FFFF
.after

preset_100map_speed_booster_kraid_dboost_room_out:
    dw #preset_100map_varia_kraid ; Varia: Kraid
    dw $078D, $9252  ; DDB
    dw $079B, $A59F  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $00FE  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $09A2, $1005  ; Equipped Items
    dw $09A4, $1005  ; Collected Items
    dw $09C2, $00A3  ; Health
    dw $09C6, $0009  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0054  ; Samus X
    dw $D828, $0104  ; Bosses
    dw $D876, $0001  ; Items
    dw $D8B8, $00E4  ; Doors
    dw #$FFFF
.after

preset_100map_speed_booster_leaving_kraid_refill:
    dw #preset_100map_speed_booster_kraid_dboost_room_out ; Speed Booster: Kraid D-Boost Room Out
    dw $078D, $91C2  ; DDB
    dw $079B, $A641  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $009B  ; Health
    dw $09CA, $0002  ; Supers
    dw $0AF6, $0029  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $00F4  ; Doors
    dw #$FFFF
.after

preset_100map_speed_booster_kihunter_room_leaving:
    dw #preset_100map_speed_booster_leaving_kraid_refill ; Speed Booster: Leaving Kraid Refill
    dw $078D, $91AA  ; DDB
    dw $079B, $A521  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $003A  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0917, $002B  ; Layer 2 X position
    dw $0921, $FA00  ; BG2 X offset
    dw $09C6, $0006  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $0AF6, $00BA  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $00FC  ; Doors
    dw #$FFFF
.after

preset_100map_speed_booster_mouthball:
    dw #preset_100map_speed_booster_kihunter_room_leaving ; Speed Booster: Kihunter Room Leaving
    dw $078D, $9162  ; DDB
    dw $079B, $A471  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $001C  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $0AF6, $001E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $0804  ; Items
    dw $D8B8, $00FF  ; Doors
    dw #$FFFF
.after

preset_100map_speed_booster_precathedral:
    dw #preset_100map_speed_booster_mouthball ; Speed Booster: Mouthball
    dw $078D, $941A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $BFFF  ; Screen subpixel Y position
    dw $0915, $02F6  ; Screen Y position in pixels
    dw $0919, $0238  ; Layer 2 Y position
    dw $0923, $FB00  ; BG2 Y offset
    dw $09A2, $1105  ; Equipped Items
    dw $09A4, $1105  ; Collected Items
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $000F  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A6  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D876, $01A1  ; Items
    dw $D8B8, $20FF  ; Doors
    dw $D8BA, $0001  ; Doors
    dw #$FFFF
.after

preset_100map_speed_booster_cathedral:
    dw #preset_100map_speed_booster_precathedral ; Speed Booster: Pre-Cathedral
    dw $078D, $92CA  ; DDB
    dw $079B, $A7B3  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09CA, $0002  ; Supers
    dw $0AF6, $02A3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $24FF  ; Doors
    dw #$FFFF
.after

preset_100map_speed_booster_bubble_mountain:
    dw #preset_100map_speed_booster_cathedral ; Speed Booster: Cathedral
    dw $078D, $955E  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0921, $FB00  ; BG2 X offset
    dw $09C2, $0185  ; Health
    dw $09CA, $0001  ; Supers
    dw $0AF6, $04B0  ; Samus X
    dw $D8B8, $26FF  ; Doors
    dw #$FFFF
.after

preset_100map_speed_booster_bubble_mountain_climb:
    dw #preset_100map_speed_booster_bubble_mountain ; Speed Booster: Bubble Mountain
    dw $078D, $959A  ; DDB
    dw $079B, $B0DD  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $0AF6, $00C7  ; Samus X
    dw #$FFFF
.after

preset_100map_speed_booster_bat_cave:
    dw #preset_100map_speed_booster_bubble_mountain_climb ; Speed Booster: Bubble Mountain Climb
    dw $078D, $97CE  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C6, $000E  ; Missiles
    dw $0AF6, $01BC  ; Samus X
    dw $D8BA, $0011  ; Doors
    dw #$FFFF
.after

preset_100map_speed_booster_speed_hallway_in:
    dw #preset_100map_speed_booster_bat_cave ; Speed Booster: Bat Cave
    dw $078D, $958E  ; DDB
    dw $079B, $B07A  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $0023  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0023  ; Layer 2 Y position
    dw $09C2, $018F  ; Health
    dw $09CA, $0003  ; Supers
    dw $0AF6, $00B6  ; Samus X
    dw #$FFFF
.after

preset_100map_speed_booster_speed_booster_2:
    dw #preset_100map_speed_booster_speed_hallway_in ; Speed Booster: Speed Hallway In
    dw $078D, $97B6  ; DDB
    dw $079B, $ACF0  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0B00  ; Screen X position in pixels
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0840  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09CA, $0002  ; Supers
    dw $0AF6, $0BAD  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8BA, $0031  ; Doors
    dw #$FFFF
.after

preset_100map_grapple_single_chamber:
    dw #preset_100map_speed_booster_speed_booster_2 ; Speed Booster: Speed Booster
    dw $078D, $97AA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $00FD  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $00BD  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $09A2, $3105  ; Equipped Items
    dw $09A4, $3105  ; Collected Items
    dw $09C2, $018D  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $0AF6, $01B3  ; Samus X
    dw $D822, $0020  ; Events
    dw $D878, $0004  ; Items
    dw #$FFFF
.after

preset_100map_grapple_double_chamber:
    dw #preset_100map_grapple_single_chamber ; Grapple: Single Chamber
    dw $078D, $9606  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $0104  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C3  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C6, $0008  ; Missiles
    dw $0AF6, $00B1  ; Samus X
    dw $D8BA, $0071  ; Doors
    dw #$FFFF
.after

preset_100map_grapple_double_chamber_out:
    dw #preset_100map_grapple_double_chamber ; Grapple: Double Chamber
    dw $078D, $961E  ; DDB
    dw $079B, $ADDE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09A6, $1001  ; Beams
    dw $09A8, $1001  ; Beams
    dw $09C6, $000D  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0053  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $001C  ; Items
    dw $D8BA, $00F1  ; Doors
    dw #$FFFF
.after

preset_100map_grapple_river_styx:
    dw #preset_100map_grapple_double_chamber_out ; Grapple: Double Chamber Out
    dw $078D, $9612  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $A201  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $0188  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $036B  ; Samus Y
    dw #$FFFF
.after

preset_100map_grapple_volcano_room:
    dw #preset_100map_grapple_river_styx ; Grapple: River Styx
    dw $078D, $95EE  ; DDB
    dw $079B, $AE07  ; MDB
    dw $090F, $9200  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0131  ; Health
    dw $0AF6, $03AC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_grapple_reverse_magdollite_room:
    dw #preset_100map_grapple_volcano_room ; Grapple: Volcano Room
    dw $078D, $965A  ; DDB
    dw $079B, $AE74  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0022  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0022  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $09C2, $00DA  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0152  ; Samus X
    dw #$FFFF
.after

preset_100map_grapple_purple_shaft:
    dw #preset_100map_grapple_reverse_magdollite_room ; Grapple: Reverse Magdollite Room
    dw $078D, $9666  ; DDB
    dw $079B, $AEB4  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $09C2, $00F3  ; Health
    dw $09C6, $000C  ; Missiles
    dw $0AF6, $0052  ; Samus X
    dw #$FFFF
.after

preset_100map_grapple_bubble_mountain_corner:
    dw #preset_100map_grapple_purple_shaft ; Grapple: Purple Shaft
    dw $078D, $96C6  ; DDB
    dw $079B, $B051  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $3C00  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0AF6, $002A  ; Samus X
    dw #$FFFF
.after

preset_100map_grapple_crocomire:
    dw #preset_100map_grapple_bubble_mountain_corner ; Grapple: Bubble Mountain Corner
    dw $078D, $974A  ; DDB
    dw $079B, $A923  ; MDB
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $0900  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $0921, $F300  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $0105  ; Health
    dw $09C6, $0012  ; Missiles
    dw $0AF6, $0CA9  ; Samus X
    dw $0AFA, $02BB  ; Samus Y
    dw $D8B8, $66FF  ; Doors
    dw #$FFFF
.after

preset_100map_grapple_leaving_croc_spikesuit:
    dw #preset_100map_grapple_crocomire ; Grapple: Crocomire
    dw $078D, $93D2  ; DDB
    dw $079B, $A98D  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0289  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $01F3  ; Health
    dw $09C4, $01F3  ; Max health
    dw $09C6, $0014  ; Missiles
    dw $09CA, $0001  ; Supers
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $02F9  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D82A, $0002  ; Bosses
    dw $D876, $01B1  ; Items
    dw #$FFFF
.after

preset_100map_grapple_crocomire_shaft:
    dw #preset_100map_grapple_leaving_croc_spikesuit ; Grapple: Leaving Croc (Spikesuit)
    dw $078D, $943E  ; DDB
    dw $079B, $AADE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09CA, $0002  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A5  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $03B1  ; Items
    dw $D8BA, $00F3  ; Doors
    dw #$FFFF
.after

preset_100map_grapple_cosine_missile_room:
    dw #preset_100map_grapple_crocomire_shaft ; Grapple: Crocomire Shaft
    dw $078D, $944A  ; DDB
    dw $079B, $AB07  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $02FB  ; Screen Y position in pixels
    dw $0919, $023C  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09CA, $0001  ; Supers
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D8BA, $00F7  ; Doors
    dw #$FFFF
.after

preset_100map_grapple_indiana_jones_room:
    dw #preset_100map_grapple_cosine_missile_room ; Grapple: Cosine Missile Room
    dw $078D, $94AA  ; DDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $0919, $0317  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09C2, $0179  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00A7  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw #$FFFF
.after

preset_100map_grapple_grapple_beam:
    dw #preset_100map_grapple_indiana_jones_room ; Grapple: Indiana Jones Room
    dw $078D, $949E  ; DDB
    dw $079B, $AB8F  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0010  ; Screen X position in pixels
    dw $0915, $00F6  ; Screen Y position in pixels
    dw $0917, $000C  ; Layer 2 X position
    dw $0919, $00F6  ; Layer 2 Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $FEE0  ; BG2 Y offset
    dw $09C2, $0183  ; Health
    dw $09CE, $0004  ; Pbs
    dw $0AF6, $00B0  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF
.after

preset_100map_xray_grapple_playground_1:
    dw #preset_100map_grapple_grapple_beam ; Grapple: Grapple Beam
    dw $078D, $94DA  ; DDB
    dw $079B, $AC2B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09A2, $7105  ; Equipped Items
    dw $09A4, $7105  ; Collected Items
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $13B1  ; Items
    dw #$FFFF
.after

preset_100map_xray_grapple_playground_2:
    dw #preset_100map_xray_grapple_playground_1 ; X-Ray: Grapple Playground 1
    dw $078D, $9522  ; DDB
    dw $079B, $AC00  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $0AF6, $0181  ; Samus X
    dw #$FFFF
.after

preset_100map_xray_grapple_playground_final:
    dw #preset_100map_xray_grapple_playground_2 ; X-Ray: Grapple Playground 2
    dw $078D, $950A  ; DDB
    dw $079B, $ABD2  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0915, $000C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0009  ; Layer 2 Y position
    dw $0923, $FE00  ; BG2 Y offset
    dw $0AF6, $00A9  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF
.after

preset_100map_xray_crocomire_farm_room:
    dw #preset_100map_xray_grapple_playground_final ; X-Ray: Grapple Playground Final
    dw $078D, $94C2  ; DDB
    dw $079B, $AB07  ; MDB
    dw $090F, $05A0  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0165  ; Health
    dw $09CA, $0000  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $002C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_xray_crocomire_cac_shaft:
    dw #preset_100map_xray_crocomire_farm_room ; X-Ray: Crocomire Farm Room
    dw $078D, $9432  ; DDB
    dw $079B, $A98D  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $00DB  ; Screen X position in pixels
    dw $0913, $57FF  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09C2, $01B5  ; Health
    dw $09CA, $0003  ; Supers
    dw $0AF6, $013B  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF
.after

preset_100map_xray_crocomire_escape:
    dw #preset_100map_xray_crocomire_cac_shaft ; X-Ray: Crocomire Cac Shaft
    dw $078D, $93BA  ; DDB
    dw $079B, $B192  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $01B3  ; Health
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002A  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $E6FF  ; Doors
    dw #$FFFF
.after

preset_100map_xray_business_center:
    dw #preset_100map_xray_crocomire_escape ; X-Ray: Crocomire Escape
    dw $078D, $93AE  ; DDB
    dw $079B, $AA0E  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0004  ; Screen Y position in pixels
    dw $0919, $0004  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $01B8  ; Health
    dw $09C6, $0019  ; Missiles
    dw $09C8, $0019  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $0AF6, $0053  ; Samus X
    dw $D876, $13F1  ; Items
    dw #$FFFF
.after

preset_100map_xray_below_spazer:
    dw #preset_100map_xray_business_center ; X-Ray: Business Center
    dw $078D, $A33C  ; DDB
    dw $079B, $CF54  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09CA, $0005  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0AF6, $00C5  ; Samus X
    dw $D8B8, $F6FF  ; Doors
    dw #$FFFF
.after

preset_100map_xray_red_tower_climb:
    dw #preset_100map_xray_below_spazer ; X-Ray: Below Spazer
    dw $078D, $904E  ; DDB
    dw $079B, $A618  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $09C2, $01CA  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00D2  ; Samus X
    dw #$FFFF
.after

preset_100map_xray_xray_hall_in_spikesuit:
    dw #preset_100map_xray_red_tower_climb ; X-Ray: Red Tower Climb
    dw $078D, $91FE  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $4001  ; Screen subpixel X position
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $061C  ; Screen Y position in pixels
    dw $0919, $0495  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $F700  ; BG2 Y offset
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D8B6, $8308  ; Doors
    dw #$FFFF
.after

preset_100map_xray_xray_hall_out:
    dw #preset_100map_xray_xray_hall_in_spikesuit ; X-Ray: X-Ray Hall In (Spikesuit)
    dw $078D, $905A  ; DDB
    dw $079B, $A2CE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0135  ; Health
    dw $09CA, $0004  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $0179  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B6, $8708  ; Doors
    dw #$FFFF
.after

preset_100map_phantoon_red_tower_up:
    dw #preset_100map_xray_xray_hall_out ; X-Ray: X-Ray Hall Out
    dw $078D, $9072  ; DDB
    dw $079B, $A293  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0700  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $00D7  ; Health
    dw $0AF6, $07A4  ; Samus X
    dw #$FFFF
.after

preset_100map_phantoon_hellway:
    dw #preset_100map_phantoon_red_tower_up ; Phantoon: Red Tower Up
    dw $078D, $9066  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $3FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $000F  ; Layer 2 Y position
    dw $0923, $FA00  ; BG2 Y offset
    dw $09CE, $0001  ; Pbs
    dw $0AF6, $0091  ; Samus X
    dw #$FFFF
.after

preset_100map_phantoon_alpha_pbs:
    dw #preset_100map_phantoon_hellway ; Phantoon: Hellway
    dw $078D, $908A  ; DDB
    dw $079B, $A322  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $071C  ; Screen Y position in pixels
    dw $0919, $071C  ; Layer 2 Y position
    dw $0923, $FB00  ; BG2 Y offset
    dw $09C2, $00C7  ; Health
    dw $09CA, $0003  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0045  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D8B6, $A708  ; Doors
    dw #$FFFF
.after

preset_100map_phantoon_caterpillar_room_up:
    dw #preset_100map_phantoon_alpha_pbs ; Phantoon: Alpha PBs
    dw $078D, $9096  ; DDB
    dw $079B, $A3AE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $00BD  ; Health
    dw $09CE, $0005  ; Pbs
    dw $09D0, $000A  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02B0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $0904  ; Items
    dw #$FFFF
.after

preset_100map_phantoon_beta_pbs:
    dw #preset_100map_phantoon_caterpillar_room_up ; Phantoon: Caterpillar Room Up
    dw $078D, $926A  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $02F1  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $02F1  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FC00  ; BG2 Y offset
    dw $09C2, $00E3  ; Health
    dw $09CA, $0004  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0060  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D8B6, $AF08  ; Doors
    dw #$FFFF
.after

preset_100map_phantoon_crateria_kihunters_room:
    dw #preset_100map_phantoon_beta_pbs ; Phantoon: Beta PBs
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $00DB  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CE, $0009  ; Pbs
    dw $09D0, $000F  ; Max pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $00A8  ; Samus Y
    dw $D874, $0984  ; Items
    dw $D8B6, $EF08  ; Doors
    dw #$FFFF
.after

preset_100map_phantoon_ws_shaft_down_no_save:
    dw #preset_100map_phantoon_crateria_kihunters_room ; Phantoon: Crateria Kihunters Room
    dw $078D, $89D6  ; DDB
    dw $079B, $CA08  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $02FD  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0917, $023D  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0062  ; Health
    dw $09C6, $0018  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09CE, $0007  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $035D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B0, $3000  ; Doors
    dw $D8B2, $2C01  ; Doors
    dw #$FFFF
.after

preset_100map_phantoon_basement:
    dw #preset_100map_phantoon_ws_shaft_down_no_save ; Phantoon: WS Shaft Down (No Save)
    dw $078D, $A318  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $071F  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0557  ; Layer 2 Y position
    dw $0921, $FB00  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09CA, $0003  ; Supers
    dw $09CE, $0006  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $04A7  ; Samus X
    dw $0AFA, $07BB  ; Samus Y
    dw $D8C0, $0010  ; Doors
    dw #$FFFF
.after

preset_100map_phantoon_basement_speedball:
    dw #preset_100map_phantoon_basement ; Phantoon: Basement
    dw $078D, $A2A0  ; DDB
    dw $079B, $CCCB  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_phantoon_phantoon_2:
    dw #preset_100map_phantoon_basement_speedball ; Phantoon: Basement Speedball
    dw $078D, $A2B8  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09CA, $0002  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $04D4  ; Samus X
    dw $D8C0, $0030  ; Doors
    dw #$FFFF
.after

preset_100map_gravity_right_supers:
    dw #preset_100map_phantoon_phantoon_2 ; Phantoon: Phantoon
    dw $078D, $A2C4  ; DDB
    dw $07F5, $0006  ; Music Track
    dw $0911, $0217  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0917, $0191  ; Layer 2 X position
    dw $0921, $FB00  ; BG2 X offset
    dw $09C2, $00BC  ; Health
    dw $09C6, $0019  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09CE, $000A  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $02B7  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D82A, $0102  ; Bosses
    dw $D8C0, $0070  ; Doors
    dw #$FFFF
.after

preset_100map_gravity_main_shaft_climb:
    dw #preset_100map_gravity_right_supers ; Gravity: Right Supers
    dw $078D, $A210  ; DDB
    dw $079B, $CDA8  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $09C2, $00A5  ; Health
    dw $09C6, $0018  ; Missiles
    dw $09CA, $000E  ; Supers
    dw $09CC, $000F  ; Max supers
    dw $09CE, $0008  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DA  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $0060  ; Items
    dw $D8C0, $0074  ; Doors
    dw #$FFFF
.after

preset_100map_gravity_attic:
    dw #preset_100map_gravity_main_shaft_climb ; Gravity: Main Shaft Climb
    dw $078D, $A2E8  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $DC00  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $FA00  ; BG2 Y offset
    dw $09C2, $00B9  ; Health
    dw $09C6, $0017  ; Missiles
    dw $0AF6, $0443  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF
.after

preset_100map_gravity_robots_of_pain:
    dw #preset_100map_gravity_attic ; Gravity: Attic
    dw $078D, $A228  ; DDB
    dw $079B, $CA52  ; MDB
    dw $090F, $9800  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $8FFF  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $001E  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $00CB  ; Health
    dw $09C6, $0014  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $0AF6, $06D0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $0374  ; Doors
    dw #$FFFF
.after

preset_100map_gravity_west_ocean:
    dw #preset_100map_gravity_robots_of_pain ; Gravity: Robots of Pain
    dw $078D, $A1EC  ; DDB
    dw $090F, $1401  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $77FF  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $F900  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $00B2  ; Health
    dw $09C6, $0011  ; Missiles
    dw $09CA, $0008  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003C  ; Samus X
    dw #$FFFF
.after

preset_100map_gravity_puddles:
    dw #preset_100map_gravity_west_ocean ; Gravity: West Ocean
    dw $078D, $A18C  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $01FD  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $F800  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02BE  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_100map_gravity_bowling_area:
    dw #preset_100map_gravity_puddles ; Gravity: Puddles
    dw $078D, $89E2  ; DDB
    dw $079B, $9461  ; MDB
    dw $090F, $D400  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $00AD  ; Health
    dw $0AF6, $017B  ; Samus X
    dw $0AFA, $0090  ; Samus Y
    dw #$FFFF
.after

preset_100map_forgotten_highway_leaving_gravity:
    dw #preset_100map_gravity_bowling_area ; Gravity: Bowling Area
    dw $078D, $A1A4  ; DDB
    dw $079B, $CE40  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $09A2, $7125  ; Equipped Items
    dw $09A4, $7125  ; Collected Items
    dw $09C2, $0055  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09C8, $001E  ; Max missiles
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0078  ; Samus X
    dw $0AFA, $0088  ; Samus Y
    dw $D880, $00E4  ; Items
    dw #$FFFF
.after

preset_100map_forgotten_highway_moat_revisit:
    dw #preset_100map_forgotten_highway_leaving_gravity ; Forgotten Highway: Leaving Gravity
    dw $078D, $A300  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0401  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0028  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw #$FFFF
.after

preset_100map_forgotten_highway_west_ocean_final:
    dw #preset_100map_forgotten_highway_moat_revisit ; Forgotten Highway: Moat Revisit
    dw $078D, $89CA  ; DDB
    dw $079B, $95FF  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01A7  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_forgotten_highway_sponge_bath:
    dw #preset_100map_forgotten_highway_west_ocean_final ; Forgotten Highway: West Ocean Final
    dw $078D, $A1BC  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0445  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0333  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $0AF6, $0487  ; Samus X
    dw $0AFA, $04B4  ; Samus Y
    dw $D8C0, $037C  ; Doors
    dw #$FFFF
.after

preset_100map_forgotten_highway_electric_death_room:
    dw #preset_100map_forgotten_highway_sponge_bath ; Forgotten Highway: Sponge Bath
    dw $078D, $A2DC  ; DDB
    dw $079B, $CB8B  ; MDB
    dw $090F, $9FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0014  ; Health
    dw $09C6, $000E  ; Missiles
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw #$FFFF
.after

preset_100map_forgotten_highway_wrecked_ship_etank:
    dw #preset_100map_forgotten_highway_electric_death_room ; Forgotten Highway: Electric Death Room
    dw $078D, $A258  ; DDB
    dw $079B, $CBD5  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $000D  ; Health
    dw $09CA, $0007  ; Supers
    dw $09D2, $0004  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $0B7C  ; Doors
    dw #$FFFF
.after

preset_100map_forgotten_highway_east_ocean:
    dw #preset_100map_forgotten_highway_wrecked_ship_etank ; Forgotten Highway: Wrecked Ship E-Tank
    dw $078D, $A288  ; DDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0915, $011B  ; Screen Y position in pixels
    dw $0919, $00D4  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0253  ; Health
    dw $09C4, $0257  ; Max health
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B1  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D880, $00F4  ; Items
    dw #$FFFF
.after

preset_100map_forgotten_highway_kago_room:
    dw #preset_100map_forgotten_highway_east_ocean ; Forgotten Highway: East Ocean
    dw $078D, $A264  ; DDB
    dw $079B, $94FD  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $041A  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $FC00  ; BG2 Y offset
    dw $09C2, $022B  ; Health
    dw $09C6, $000D  ; Missiles
    dw $09CA, $0008  ; Supers
    dw $0AF6, $06A6  ; Samus X
    dw $0AFA, $049B  ; Samus Y
    dw #$FFFF
.after

preset_100map_forgotten_highway_crab_maze:
    dw #preset_100map_forgotten_highway_kago_room ; Forgotten Highway: Kago Room
    dw $078D, $8A72  ; DDB
    dw $079B, $9552  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0257  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00A9  ; Samus X
    dw $0AFA, $03BB  ; Samus Y
    dw #$FFFF
.after

preset_100map_forgotten_highway_maridia_elevator:
    dw #preset_100map_forgotten_highway_crab_maze ; Forgotten Highway: Crab Maze
    dw $078D, $8ABA  ; DDB
    dw $079B, $94CC  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0082  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B0, $B000  ; Doors
    dw #$FFFF
.after

preset_100map_forgotten_highway_pancakes_from_hell:
    dw #preset_100map_forgotten_highway_maridia_elevator ; Forgotten Highway: Maridia Elevator
    dw $078D, $A5F4  ; DDB
    dw $079B, $D30B  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $E001  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0500  ; Screen Y position in pixels
    dw $0919, $03C0  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FC00  ; BG2 Y offset
    dw $09C2, $022A  ; Health
    dw $09CA, $0007  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $D8C2, $0004  ; Doors
    dw #$FFFF
.after

preset_100map_forgotten_highway_plasma_spark_room_1:
    dw #preset_100map_forgotten_highway_pancakes_from_hell ; Forgotten Highway: Pancakes from Hell
    dw $078D, $A8A0  ; DDB
    dw $079B, $D5EC  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $021B  ; Health
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF
.after

preset_100map_forgotten_highway_west_sand_hall:
    dw #preset_100map_forgotten_highway_plasma_spark_room_1 ; Forgotten Highway: Plasma Spark Room 1
    dw $078D, $A600  ; DDB
    dw $079B, $D48E  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $011A  ; Screen Y position in pixels
    dw $0919, $00D3  ; Layer 2 Y position
    dw $09C6, $000F  ; Missiles
    dw $09CA, $0006  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0049  ; Samus position/state
    dw $0A1E, $1008  ; More position/state
    dw $0AF6, $00D4  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $0014  ; Doors
    dw #$FFFF
.after

preset_100map_forgotten_highway_crab_ggg:
    dw #preset_100map_forgotten_highway_west_sand_hall ; Forgotten Highway: West Sand Hall
    dw $078D, $A528  ; DDB
    dw $079B, $D21C  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $01D2  ; Health
    dw $09D2, $0004  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0038  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_main_street:
    dw #preset_100map_forgotten_highway_crab_ggg ; Forgotten Highway: Crab GGG
    dw $078D, $A4F8  ; DDB
    dw $079B, $D08A  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0055  ; Screen X position in pixels
    dw $0913, $37FF  ; Screen subpixel Y position
    dw $0917, $003F  ; Layer 2 X position
    dw $0921, $FC00  ; BG2 X offset
    dw $09C2, $0196  ; Health
    dw $09CA, $0005  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $00E1  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_mt_everest_1:
    dw #preset_100map_space_jump_main_street ; Space Jump: Main Street
    dw $078D, $A414  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $0911, $00B8  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $008A  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $F900  ; BG2 Y offset
    dw $09C2, $0178  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0118  ; Samus X
    dw $0AFA, $0093  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_fish_tank_right:
    dw #preset_100map_space_jump_mt_everest_1 ; Space Jump: Mt Everest 1
    dw $078D, $A3C0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0293  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $01EE  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $04A8  ; Samus X
    dw $0AFA, $0323  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_mamma_turtle:
    dw #preset_100map_space_jump_fish_tank_right ; Space Jump: Fish Tank Right
    dw $078D, $A450  ; DDB
    dw $079B, $D017  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0147  ; Screen X position in pixels
    dw $0913, $5800  ; Screen subpixel Y position
    dw $0915, $0218  ; Screen Y position in pixels
    dw $0917, $00F5  ; Layer 2 X position
    dw $0919, $0192  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01DF  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_fish_tank_left:
    dw #preset_100map_space_jump_mamma_turtle ; Space Jump: Mamma Turtle
    dw $078D, $A3E4  ; DDB
    dw $079B, $D055  ; MDB
    dw $090F, $17F4  ; Screen subpixel X position
    dw $0911, $00F4  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $030A  ; Screen Y position in pixels
    dw $0917, $00F4  ; Layer 2 X position
    dw $0919, $0247  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09C2, $0140  ; Health
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $012E  ; Samus X
    dw $0AFA, $037B  ; Samus Y
    dw $D8C0, $4B7C  ; Doors
    dw #$FFFF
.after

preset_100map_space_jump_everest_post_fish_tank:
    dw #preset_100map_space_jump_fish_tank_left ; Space Jump: Fish Tank Left
    dw $078D, $A408  ; DDB
    dw $079B, $D017  ; MDB
    dw $090F, $1F00  ; Screen subpixel X position
    dw $0911, $0044  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0033  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $0AF6, $00DE  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_everest_post_crab_supers:
    dw #preset_100map_space_jump_everest_post_fish_tank ; Space Jump: Everest Post Fish Tank
    dw $078D, $A45C  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0136  ; Screen X position in pixels
    dw $0913, $93FF  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $00E8  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $01D6  ; Samus X
    dw $0AFA, $028F  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_beach:
    dw #preset_100map_space_jump_everest_post_crab_supers ; Space Jump: Everest Post Crab Supers
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C801  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $010D  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0083  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_swiss_cheese_room:
    dw #preset_100map_space_jump_beach ; Space Jump: Beach
    dw $078D, $A4BC  ; DDB
    dw $079B, $D1DD  ; MDB
    dw $090F, $EC80  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0102  ; Screen Y position in pixels
    dw $0919, $0102  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09C2, $00F9  ; Health
    dw $0AF6, $0071  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_swiss_cheese_revisit:
    dw #preset_100map_space_jump_swiss_cheese_room ; Space Jump: Swiss Cheese Room
    dw $078D, $A498  ; DDB
    dw $079B, $D13B  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0050  ; Screen X position in pixels
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0022  ; Screen Y position in pixels
    dw $0917, $003C  ; Layer 2 X position
    dw $0919, $0022  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $00FE  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $10F4  ; Items
    dw #$FFFF
.after

preset_100map_space_jump_beach_revisit:
    dw #preset_100map_space_jump_swiss_cheese_revisit ; Space Jump: Swiss Cheese Revisit
    dw $078D, $A48C  ; DDB
    dw $079B, $D16D  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $00EF  ; Health
    dw $0AF6, $03A2  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_crab_shaft_down:
    dw #preset_100map_space_jump_beach_revisit ; Space Jump: Beach Revisit
    dw $078D, $A4A4  ; DDB
    dw $079B, $D1DD  ; MDB
    dw $090F, $2C00  ; Screen subpixel X position
    dw $0911, $000E  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $000A  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $09CA, $000B  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0AF6, $00AB  ; Samus X
    dw $0AFA, $02B0  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_aqueduct_post_save:
    dw #preset_100map_space_jump_crab_shaft_down ; Space Jump: Crab Shaft Down
    dw $078D, $A744  ; DDB
    dw $079B, $D765  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $0009  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0AF6, $00CF  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $CB7C  ; Doors
    dw $D8C2, $0054  ; Doors
    dw #$FFFF
.after

preset_100map_space_jump_prebotwoon:
    dw #preset_100map_space_jump_aqueduct_post_save ; Space Jump: Aqueduct (Post Save)
    dw $078D, $A828  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $6400  ; Screen subpixel Y position
    dw $09D2, $0003  ; Currently selected item
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $008D  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_botwoon:
    dw #preset_100map_space_jump_prebotwoon ; Space Jump: Pre-Botwoon
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $DFFF  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0014  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03B9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_over_under_spark:
    dw #preset_100map_space_jump_botwoon ; Space Jump: Botwoon
    dw $078D, $A918  ; DDB
    dw $079B, $D7E4  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0038  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $002A  ; Layer 2 X position
    dw $0919, $001F  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $02BB  ; Health
    dw $09C4, $02BB  ; Max health
    dw $09C6, $0012  ; Missiles
    dw $09CA, $0007  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $00CA  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D82C, $0002  ; Bosses
    dw $D882, $0100  ; Items
    dw #$FFFF
.after

preset_100map_space_jump_under_over_spark:
    dw #preset_100map_space_jump_over_under_spark ; Space Jump: Over Under Spark
    dw $078D, $A8F4  ; DDB
    dw $079B, $D845  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0286  ; Health
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002C  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_space_jump_colosseum:
    dw #preset_100map_space_jump_under_over_spark ; Space Jump: Under Over Spark
    dw $078D, $A894  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $F001  ; Screen subpixel X position
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $001B  ; Screen Y position in pixels
    dw $0919, $001B  ; Layer 2 Y position
    dw $0921, $FB00  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $0260  ; Health
    dw $09CA, $0008  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C2  ; Samus X
    dw #$FFFF
.after

preset_100map_space_jump_precious_room:
    dw #preset_100map_space_jump_colosseum ; Space Jump: Colosseum
    dw $078D, $A888  ; DDB
    dw $079B, $D72A  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $00FD  ; Screen Y position in pixels
    dw $0917, $0600  ; Layer 2 X position
    dw $0919, $00FD  ; Layer 2 Y position
    dw $0921, $F900  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09CA, $0006  ; Supers
    dw $0AF6, $06BB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $0554  ; Doors
    dw #$FFFF
.after

preset_100map_space_jump_draygon:
    dw #preset_100map_space_jump_precious_room ; Space Jump: Precious Room
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $01FC  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $017D  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C2, $0D54  ; Doors
    dw #$FFFF
.after

preset_100map_maridia_cleanup_reverse_halfie:
    dw #preset_100map_space_jump_draygon ; Space Jump: Draygon
    dw $078D, $A96C  ; DDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $FE00  ; BG2 Y offset
    dw $09A2, $7325  ; Equipped Items
    dw $09A4, $7325  ; Collected Items
    dw $09C2, $0224  ; Health
    dw $09C6, $000C  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $0040  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82C, $0003  ; Bosses
    dw $D882, $0500  ; Items
    dw $D8C2, $CD54  ; Doors
    dw #$FFFF
.after

preset_100map_maridia_cleanup_botwoon_hallway_revisit_1:
    dw #preset_100map_maridia_cleanup_reverse_halfie ; Maridia Cleanup: Reverse Halfie
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0200  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $01B4  ; Health
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $00B4  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_right_sand_pit:
    dw #preset_100map_maridia_cleanup_botwoon_hallway_revisit_1 ; Maridia Cleanup: Botwoon Hallway Revisit 1
    dw $078D, $A7D4  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $0911, $0355  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $027F  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $019B  ; Health
    dw $0AF6, $03F5  ; Samus X
    dw $0AFA, $02CB  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_east_sand_hall:
    dw #preset_100map_maridia_cleanup_right_sand_pit ; Maridia Cleanup: Right Sand Pit
    dw $078D, $A6FC  ; DDB
    dw $079B, $D51E  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $011F  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $0199  ; Health
    dw $0AF6, $01C8  ; Samus X
    dw $0AFA, $01AB  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_pants_room:
    dw #preset_100map_maridia_cleanup_east_sand_hall ; Maridia Cleanup: East Sand Hall
    dw $078D, $A6CC  ; DDB
    dw $079B, $D4C2  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $09C2, $0180  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02AE  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_spring_ball_room:
    dw #preset_100map_maridia_cleanup_pants_room ; Maridia Cleanup: Pants Room
    dw $078D, $A798  ; DDB
    dw $079B, $D8C5  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0171  ; Health
    dw $09CE, $0003  ; Pbs
    dw $0AF6, $03DD  ; Samus X
    dw $D820, $2001  ; Events
    dw #$FFFF
.after

preset_100map_maridia_cleanup_pants_room_corner:
    dw #preset_100map_maridia_cleanup_spring_ball_room ; Maridia Cleanup: Spring Ball Room
    dw $078D, $A7C8  ; DDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FC00  ; BG2 X offset
    dw $09A2, $7327  ; Equipped Items
    dw $09A4, $7327  ; Collected Items
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D882, $0540  ; Items
    dw #$FFFF
.after

preset_100map_maridia_cleanup_plasma_spark_room_2:
    dw #preset_100map_maridia_cleanup_pants_room_corner ; Maridia Cleanup: Pants Room Corner
    dw $078D, $A780  ; DDB
    dw $079B, $D4C2  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $3400  ; Screen subpixel Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $09C2, $0162  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0052  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_kassiuz_room:
    dw #preset_100map_maridia_cleanup_plasma_spark_room_2 ; Maridia Cleanup: Plasma Spark Room 2
    dw $078D, $A60C  ; DDB
    dw $079B, $D340  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $011C  ; Screen Y position in pixels
    dw $0917, $01C0  ; Layer 2 X position
    dw $0919, $011C  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0289  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $CD7C  ; Doors
    dw #$FFFF
.after

preset_100map_maridia_cleanup_plasma_room:
    dw #preset_100map_maridia_cleanup_kassiuz_room ; Maridia Cleanup: Kassiuz Room
    dw $078D, $A5DC  ; DDB
    dw $079B, $D27E  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $0AF6, $008D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_kassiuz_room_down:
    dw #preset_100map_maridia_cleanup_plasma_room ; Maridia Cleanup: Plasma Room
    dw $078D, $A558  ; DDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $09A6, $1009  ; Beams
    dw $09A8, $1009  ; Beams
    dw $09C2, $01B7  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0048  ; Samus X
    dw $D880, $90F4  ; Items
    dw $D8C2, $CD7E  ; Doors
    dw #$FFFF
.after

preset_100map_maridia_cleanup_plasma_spark_room_final:
    dw #preset_100map_maridia_cleanup_kassiuz_room_down ; Maridia Cleanup: Kassiuz Room Down
    dw $078D, $A540  ; DDB
    dw $079B, $D387  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0919, $0257  ; Layer 2 Y position
    dw $0AF6, $002A  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_west_cac_alley:
    dw #preset_100map_maridia_cleanup_plasma_spark_room_final ; Maridia Cleanup: Plasma Spark Room Final
    dw $078D, $A5D0  ; DDB
    dw $079B, $D340  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0159  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0500  ; Screen Y position in pixels
    dw $0917, $012D  ; Layer 2 X position
    dw $0919, $0500  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $01BC  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01C3  ; Samus X
    dw $0AFA, $05BB  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_east_cac_alley:
    dw #preset_100map_maridia_cleanup_west_cac_alley ; Maridia Cleanup: West Cac Alley
    dw $078D, $A75C  ; DDB
    dw $079B, $D9FE  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0011  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $000C  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09CA, $000C  ; Supers
    dw $0AF6, $00C8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C2, $CDFE  ; Doors
    dw #$FFFF
.after

preset_100map_maridia_cleanup_botwoon_hallway_revisit_2:
    dw #preset_100map_maridia_cleanup_east_cac_alley ; Maridia Cleanup: East Cac Alley
    dw $078D, $A960  ; DDB
    dw $079B, $D913  ; MDB
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0200  ; Layer 2 Y position
    dw $09C2, $019E  ; Health
    dw $09CA, $000F  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $009C  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_aqueduct_final:
    dw #preset_100map_maridia_cleanup_botwoon_hallway_revisit_2 ; Maridia Cleanup: Botwoon Hallway Revisit 2
    dw $078D, $A8AC  ; DDB
    dw $079B, $D6FD  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $011E  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $011E  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $0199  ; Health
    dw $0AF6, $01A5  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_left_sand_pit:
    dw #preset_100map_maridia_cleanup_aqueduct_final ; Maridia Cleanup: Aqueduct Final
    dw $078D, $A7D4  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0148  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $00F6  ; Layer 2 X position
    dw $0919, $021F  ; Layer 2 Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $0AF6, $01E8  ; Samus X
    dw $0AFA, $02CB  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_west_sand_hall_revisit:
    dw #preset_100map_maridia_cleanup_left_sand_pit ; Maridia Cleanup: Left Sand Pit
    dw $078D, $A6E4  ; DDB
    dw $079B, $D4EF  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $011F  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $0197  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0031  ; Samus X
    dw $0AFA, $01AB  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_crab_hole:
    dw #preset_100map_maridia_cleanup_west_sand_hall_revisit ; Maridia Cleanup: West Sand Hall Revisit
    dw $078D, $A6B4  ; DDB
    dw $079B, $D461  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0101  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $09C2, $017E  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0033  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_maridia_cleanup_kpdr_exit:
    dw #preset_100map_maridia_cleanup_crab_hole ; Maridia Cleanup: Crab Hole
    dw $078D, $A5E8  ; DDB
    dw $079B, $D21C  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $0192  ; Health
    dw $09CA, $000E  ; Supers
    dw $09CE, $0006  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $002D  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $CDFF  ; Doors
    dw #$FFFF
.after

preset_100map_screw_attack_business_center_2:
    dw #preset_100map_maridia_cleanup_kpdr_exit ; Maridia Cleanup: KPDR Exit
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09CA, $000D  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF
.after

preset_100map_screw_attack_ice_beam_snake_room:
    dw #preset_100map_screw_attack_business_center_2 ; Screw Attack: Business Center
    dw $078D, $931E  ; DDB
    dw $079B, $A75D  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09CA, $000C  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0036  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $FEFF  ; Doors
    dw #$FFFF
.after

preset_100map_screw_attack_ice_beam_foosball:
    dw #preset_100map_screw_attack_ice_beam_snake_room ; Screw Attack: Ice Beam Snake Room
    dw $078D, $937E  ; DDB
    dw $079B, $A890  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09A6, $100B  ; Beams
    dw $09A8, $100B  ; Beams
    dw $09C2, $018D  ; Health
    dw $09D2, $0004  ; Currently selected item
    dw $0AF6, $00B9  ; Samus X
    dw $D876, $13F5  ; Items
    dw #$FFFF
.after

preset_100map_screw_attack_ice_beam_boyon_room:
    dw #preset_100map_screw_attack_ice_beam_foosball ; Screw Attack: Ice Beam Foosball
    dw $078D, $935A  ; DDB
    dw $079B, $A8B9  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $6001  ; Screen subpixel X position
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0019  ; Screen Y position in pixels
    dw $09D2, $0000  ; Currently selected item
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0012  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DD  ; Samus X
    dw #$FFFF
.after

preset_100map_screw_attack_crumble_tower:
    dw #preset_100map_screw_attack_ice_beam_boyon_room ; Screw Attack: Ice Beam Boyon Room
    dw $078D, $934E  ; DDB
    dw $079B, $A815  ; MDB
    dw $090F, $6400  ; Screen subpixel X position
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF
.after

preset_100map_screw_attack_crocomire_speedway:
    dw #preset_100map_screw_attack_crumble_tower ; Screw Attack: Crumble Tower
    dw $078D, $9336  ; DDB
    dw $079B, $A8F8  ; MDB
    dw $090F, $C400  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DC  ; Samus X
    dw #$FFFF
.after

preset_100map_screw_attack_kronic_boost_room:
    dw #preset_100map_screw_attack_crocomire_speedway ; Screw Attack: Crocomire Speedway
    dw $078D, $9792  ; DDB
    dw $079B, $AFFB  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09D2, $0003  ; Currently selected item
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0AF6, $03AD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_screw_attack_lava_dive_room:
    dw #preset_100map_screw_attack_kronic_boost_room ; Screw Attack: Kronic Boost Room
    dw $078D, $977A  ; DDB
    dw $079B, $AE74  ; MDB
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $09CE, $0006  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0158  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $01F7  ; Doors
    dw #$FFFF
.after

preset_100map_screw_attack_lower_norfair_main_hall:
    dw #preset_100map_screw_attack_lava_dive_room ; Screw Attack: Lava Dive Room
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0301  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $015B  ; Health
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0480  ; Samus X
    dw $0AFA, $0288  ; Samus Y
    dw #$FFFF
.after

preset_100map_screw_attack_blue_fireball:
    dw #preset_100map_screw_attack_lower_norfair_main_hall ; Screw Attack: Lower Norfair Main Hall
    dw $078D, $992A  ; DDB
    dw $079B, $B3A5  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $014D  ; Health
    dw $09C6, $0012  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0066  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8BA, $21F7  ; Doors
    dw #$FFFF
.after

preset_100map_screw_attack_acid_chozo:
    dw #preset_100map_screw_attack_blue_fireball ; Screw Attack: Blue Fireball
    dw $078D, $98E2  ; DDB
    dw $079B, $B236  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $DBFF  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $F800  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF
.after

preset_100map_screw_attack_golden_torizo:
    dw #preset_100map_screw_attack_acid_chozo ; Screw Attack: Acid Chozo
    dw $078D, $9852  ; DDB
    dw $079B, $B1E5  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $012F  ; Health
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02AE  ; Samus X
    dw $D820, $3001  ; Events
    dw #$FFFF
.after

preset_100map_screw_attack_screw_attack_2:
    dw #preset_100map_screw_attack_golden_torizo ; Screw Attack: Golden Torizo
    dw $078D, $983A  ; DDB
    dw $079B, $B283  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $0198  ; Health
    dw $09C6, $001E  ; Missiles
    dw $09CA, $0011  ; Supers
    dw $09CE, $000A  ; Pbs
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D82A, $0106  ; Bosses
    dw #$FFFF
.after

preset_100map_lower_norfair_fast_ripper_room:
    dw #preset_100map_screw_attack_screw_attack_2 ; Screw Attack: Screw Attack
    dw $078D, $98A6  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09A2, $732F  ; Equipped Items
    dw $09A4, $732F  ; Collected Items
    dw $0AF6, $00B2  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $801C  ; Items
    dw $D8BA, $23F7  ; Doors
    dw #$FFFF
.after

preset_100map_lower_norfair_worst_room_in_the_game:
    dw #preset_100map_lower_norfair_fast_ripper_room ; Lower Norfair: Fast Ripper Room
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $7900  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0146  ; Health
    dw $09CA, $0010  ; Supers
    dw $0AF6, $03DB  ; Samus X
    dw #$FFFF
.after

preset_100map_lower_norfair_mickey_mouse:
    dw #preset_100map_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room in the Game
    dw $078D, $994E  ; DDB
    dw $079B, $B4AD  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0923, $FB00  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004A  ; Samus X
    dw #$FFFF
.after

preset_100map_lower_norfair_amphitheatre:
    dw #preset_100map_lower_norfair_mickey_mouse ; Lower Norfair: Mickey Mouse
    dw $078D, $9936  ; DDB
    dw $090F, $CFFF  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0919, $00D5  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A9  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF
.after

preset_100map_lower_norfair_kihunter_stairs_down:
    dw #preset_100map_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dw $078D, $997E  ; DDB
    dw $079B, $B4E5  ; MDB
    dw $090F, $8780  ; Screen subpixel X position
    dw $0911, $0280  ; Screen X position in pixels
    dw $0915, $0043  ; Screen Y position in pixels
    dw $09D2, $0003  ; Currently selected item
    dw $0917, $01E0  ; Layer 2 X position
    dw $0919, $0032  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $0AF6, $02ED  ; Samus X
    dw $0AFA, $00B3  ; Samus Y
    dw #$FFFF
.after

preset_100map_lower_norfair_wasteland:
    dw #preset_100map_lower_norfair_kihunter_stairs_down ; Lower Norfair: Kihunter Stairs Down
    dw $078D, $99A2  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0317  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $015A  ; Health
    dw $09CE, $0008  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $025E  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw $D8BA, $63F7  ; Doors
    dw #$FFFF
.after

preset_100map_lower_norfair_metal_pirates:
    dw #preset_100map_lower_norfair_wasteland ; Lower Norfair: Wasteland
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $6FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $0921, $FB00  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09C2, $0149  ; Health
    dw $09CA, $000F  ; Supers
    dw $09CE, $0007  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0165  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $E3F7  ; Doors
    dw #$FFFF
.after

preset_100map_lower_norfair_ridley:
    dw #preset_100map_lower_norfair_metal_pirates ; Lower Norfair: Metal Pirates
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $01E4  ; Health
    dw $09CA, $0011  ; Supers
    dw $0AF6, $003E  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D8BA, $F3F7  ; Doors
    dw $D8BC, $0001  ; Doors
    dw #$FFFF
.after

preset_100map_lower_norfair_leaving_ridley:
    dw #preset_100map_lower_norfair_ridley ; Lower Norfair: Ridley
    dw $078D, $9A62  ; DDB
    dw $079B, $B32E  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $AFFF  ; Screen subpixel X position
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $011C  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $031F  ; Health
    dw $09C4, $031F  ; Max health
    dw $09CA, $0014  ; Supers
    dw $09CE, $0009  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0048  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $D82A, $0107  ; Bosses
    dw $D878, $C01C  ; Items
    dw $D8BA, $FBF7  ; Doors
    dw #$FFFF
.after

preset_100map_lower_norfair_wasteland_revisit:
    dw #preset_100map_lower_norfair_leaving_ridley ; Lower Norfair: Leaving Ridley
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
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $02FB  ; Health
    dw $09C6, $001D  ; Missiles
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $02DB  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8BA, $FFF7  ; Doors
    dw #$FFFF
.after

preset_100map_lower_norfair_kihunter_stairs_up:
    dw #preset_100map_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dw $078D, $9A3E  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $02F4  ; Health
    dw $09CE, $0008  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0561  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF
.after

preset_100map_lower_norfair_kihunter_stairs_up_2:
    dw #preset_100map_lower_norfair_kihunter_stairs_up ; Lower Norfair: Kihunter Stairs Up
    dw $078D, $9A0E  ; DDB
    dw $079B, $B741  ; MDB
    dw $090F, $B600  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09CE, $0007  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0030  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_lower_norfair_fireflea_room:
    dw #preset_100map_lower_norfair_kihunter_stairs_up_2 ; Lower Norfair: Kihunter Stairs Up 2
    dw $078D, $9AB6  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $367F  ; Screen subpixel X position
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0001  ; Screen Y position in pixels
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00AC  ; Samus X
    dw #$FFFF
.after

preset_100map_lower_norfair_hotarubi_missile_room:
    dw #preset_100map_lower_norfair_fireflea_room ; Lower Norfair: Fireflea Room
    dw $078D, $9A02  ; DDB
    dw $079B, $B6EE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $001D  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $09C2, $02E5  ; Health
    dw $09C6, $001E  ; Missiles
    dw $09CA, $0013  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0169  ; Samus X
    dw #$FFFF
.after

preset_100map_lower_norfair_three_musketeers_room:
    dw #preset_100map_lower_norfair_hotarubi_missile_room ; Lower Norfair: Hotarubi Missile Room
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0007  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0005  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C6, $001D  ; Missiles
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0067  ; Samus X
    dw #$FFFF
.after

preset_100map_cleanup_1_single_chamber_revisit:
    dw #preset_100map_lower_norfair_three_musketeers_room ; Lower Norfair: Three Musketeers Room
    dw $078D, $99AE  ; DDB
    dw $079B, $B656  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $000F  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $02E0  ; Health
    dw $0AF6, $0168  ; Samus X
    dw #$FFFF
.after

preset_100map_cleanup_1_bubble_mountain_dboost:
    dw #preset_100map_cleanup_1_single_chamber_revisit ; Cleanup 1: Single Chamber Revisit
    dw $078D, $9A4A  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0010  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $000C  ; Layer 2 Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C6, $001E  ; Missiles
    dw $0AF6, $0086  ; Samus X
    dw #$FFFF
.after

preset_100map_cleanup_1_norfair_reserve_front:
    dw #preset_100map_cleanup_1_bubble_mountain_dboost ; Cleanup 1: Bubble Mountain D-Boost
    dw $078D, $95CA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $02DE  ; Health
    dw $0AF6, $0045  ; Samus X
    dw $D8BA, $FFFF  ; Doors
    dw #$FFFF
.after

preset_100map_cleanup_1_norfair_reserve_back:
    dw #preset_100map_cleanup_1_norfair_reserve_front ; Cleanup 1: Norfair Reserve Front
    dw $078D, $9552  ; DDB
    dw $079B, $AC83  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0923, $0000  ; BG2 Y offset
    dw #$FFFF
.after

preset_100map_cleanup_1_bubble_mountain_final:
    dw #preset_100map_cleanup_1_norfair_reserve_back ; Cleanup 1: Norfair Reserve Back
    dw $078D, $952E  ; DDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $02C9  ; Health
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01C5  ; Samus X
    dw #$FFFF
.after

preset_100map_cleanup_1_business_center_final:
    dw #preset_100map_cleanup_1_bubble_mountain_final ; Cleanup 1: Bubble Mountain Final
    dw $078D, $97DA  ; DDB
    dw $079B, $B167  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $09C2, $02C7  ; Health
    dw $09CE, $0006  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003D  ; Samus X
    dw #$FFFF
.after

preset_100map_cleanup_1_tube:
    dw #preset_100map_cleanup_1_business_center_final ; Cleanup 1: Business Center Final
    dw $078D, $922E  ; DDB
    dw $079B, $CF80  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $0923, $FF00  ; BG2 Y offset
    dw $0AF6, $00D1  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF
.after

preset_100map_cleanup_1_tube_climb:
    dw #preset_100map_cleanup_1_tube ; Cleanup 1: Tube
    dw $078D, $A354  ; DDB
    dw $079B, $CED2  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09CA, $0012  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $0029  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $3801  ; Events
    dw $D8C0, $DB7C  ; Doors
    dw #$FFFF
.after

preset_100map_cleanup_1_fish_tank_final:
    dw #preset_100map_cleanup_1_tube_climb ; Cleanup 1: Tube Climb
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0127  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0602  ; Screen Y position in pixels
    dw $0917, $00DD  ; Layer 2 X position
    dw $0919, $0481  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $F800  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0187  ; Samus X
    dw $0AFA, $068F  ; Samus Y
    dw #$FFFF
.after

preset_100map_cleanup_1_mt_everest_final:
    dw #preset_100map_cleanup_1_fish_tank_final ; Cleanup 1: Fish Tank Final
    dw $078D, $A3B4  ; DDB
    dw $079B, $D017  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0064  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $004B  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00C6  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF
.after

preset_100map_cleanup_1_sephy_fish_room:
    dw #preset_100map_cleanup_1_mt_everest_final ; Cleanup 1: Mt Everest Final
    dw $078D, $A3F0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0219  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0192  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FC00  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0279  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF
.after

preset_100map_cleanup_1_red_tower_elevator:
    dw #preset_100map_cleanup_1_sephy_fish_room ; Cleanup 1: Sephy Fish Room
    dw $078D, $A42C  ; DDB
    dw $079B, $D104  ; MDB
    dw $090F, $6801  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0071  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_cleanup_1_crateria_kihunters_2:
    dw #preset_100map_cleanup_1_red_tower_elevator ; Cleanup 1: Red Tower Elevator
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09CA, $0011  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $00A8  ; Samus Y
    dw #$FFFF
.after

preset_100map_cleanup_1_landing_site_revisit:
    dw #preset_100map_cleanup_1_crateria_kihunters_2 ; Cleanup 1: Crateria Kihunters 2
    dw $078D, $8AF6  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00FE  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0917, $00BE  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $015E  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw #$FFFF
.after

preset_100map_cleanup_1_crateria_pbs:
    dw #preset_100map_cleanup_1_landing_site_revisit ; Cleanup 1: Landing Site Revisit
    dw $078D, $8AC6  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $07EC  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $00FB  ; Screen Y position in pixels
    dw $0917, $03F6  ; Layer 2 X position
    dw $0921, $F700  ; BG2 X offset
    dw $0923, $FC00  ; BG2 Y offset
    dw $09C2, $0277  ; Health
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $087B  ; Samus X
    dw $0AFA, $016B  ; Samus Y
    dw $D8B0, $B002  ; Doors
    dw #$FFFF
.after

preset_100map_cleanup_1_gauntlet_etank:
    dw #preset_100map_cleanup_1_crateria_pbs ; Cleanup 1: Crateria PBs
    dw $078D, $892E  ; DDB
    dw $079B, $92B3  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FB00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $0267  ; Health
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0084  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_cleanup_1_quickdrops:
    dw #preset_100map_cleanup_1_gauntlet_etank ; Cleanup 1: Gauntlet E-Tank
    dw $078D, $8952  ; DDB
    dw $079B, $965B  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $09C2, $0323  ; Health
    dw $09C4, $0383  ; Max health
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0025  ; Samus X
    dw $D870, $01A0  ; Items
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_green_brinstar_elevator:
    dw #preset_100map_cleanup_1_quickdrops ; Cleanup 1: Quickdrops
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_brinstar_map_entrance:
    dw #preset_100map_greenpink_brin_cleanup_green_brinstar_elevator ; Green-Pink Brin Cleanup: Green Brinstar Elevator
    dw $078D, $8C0A  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2FFF  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $041D  ; Screen Y position in pixels
    dw $0919, $0315  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09CA, $0012  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0044  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_green_brin_fireflea_room:
    dw #preset_100map_greenpink_brin_cleanup_brinstar_map_entrance ; Green-Pink Brin Cleanup: Brinstar Map Entrance
    dw $078D, $9006  ; DDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0616  ; Screen Y position in pixels
    dw $0919, $0490  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FB00  ; BG2 Y offset
    dw $09C2, $0321  ; Health
    dw $09CA, $0010  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0AF6, $0045  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D8B2, $AC01  ; Doors
    dw $D8B4, $026F  ; Doors
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_etecoons_etank_skip:
    dw #preset_100map_greenpink_brin_cleanup_green_brin_fireflea_room ; Green-Pink Brin Cleanup: Green Brin Fireflea Room
    dw $078D, $8CBE  ; DDB
    dw $079B, $9FE5  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $031A  ; Health
    dw $09CE, $0006  ; Pbs
    dw $0AF6, $0036  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_etecoons_dboosts:
    dw #preset_100map_greenpink_brin_cleanup_etecoons_etank_skip ; Green-Pink Brin Cleanup: Etecoons E-Tank Skip
    dw $078D, $8F52  ; DDB
    dw $079B, $A22A  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $000F  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C0  ; Samus X
    dw $D8B6, $EF18  ; Doors
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_etecoons_climb:
    dw #preset_100map_greenpink_brin_cleanup_etecoons_dboosts ; Green-Pink Brin Cleanup: Etecoons D-Boosts
    dw $078D, $9012  ; DDB
    dw $079B, $A011  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $030A  ; Health
    dw $0AF6, $04C6  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_dachora_moonfall:
    dw #preset_100map_greenpink_brin_cleanup_etecoons_climb ; Green-Pink Brin Cleanup: Etecoons Climb
    dw $078D, $8F46  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0700  ; Screen Y position in pixels
    dw $09D2, $0003  ; Currently selected item
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0540  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $F500  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0137  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_big_pink_climb:
    dw #preset_100map_greenpink_brin_cleanup_dachora_moonfall ; Green-Pink Brin Cleanup: Dachora Moonfall
    dw $078D, $8F6A  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $090F, $6400  ; Screen subpixel X position
    dw $0911, $0460  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0348  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FA00  ; BG2 Y offset
    dw $09C2, $0299  ; Health
    dw $09C6, $0019  ; Missiles
    dw $09CE, $0005  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0505  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_spo_spo_kihunters_room:
    dw #preset_100map_greenpink_brin_cleanup_big_pink_climb ; Green-Pink Brin Cleanup: Big Pink Climb
    dw $078D, $8FD6  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0298  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0023  ; Screen Y position in pixels
    dw $0917, $01F2  ; Layer 2 X position
    dw $0919, $001A  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $0AF6, $02F8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_spore_spawn:
    dw #preset_100map_greenpink_brin_cleanup_spo_spo_kihunters_room ; Green-Pink Brin Cleanup: Spo Spo Kihunters Room
    dw $078D, $8DC6  ; DDB
    dw $079B, $9D9C  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09CA, $000E  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $0370  ; Samus X
    dw $0AFA, $007B  ; Samus Y
    dw $D8B4, $266F  ; Doors
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_spo_spo_moonfall:
    dw #preset_100map_greenpink_brin_cleanup_spore_spawn ; Green-Pink Brin Cleanup: Spore Spawn
    dw $078D, $8E3E  ; DDB
    dw $079B, $9DC7  ; MDB
    dw $07F3, $002A  ; Music Bank
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $000D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $000D  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $09C2, $02CE  ; Health
    dw $09C6, $001E  ; Missiles
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0072  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D828, $0304  ; Bosses
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_spo_spo_farm_room:
    dw #preset_100map_greenpink_brin_cleanup_spo_spo_moonfall ; Green-Pink Brin Cleanup: Spo Spo Moonfall
    dw $078D, $8E4A  ; DDB
    dw $079B, $9B5B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0044  ; Screen X position in pixels
    dw $0913, $9800  ; Screen subpixel Y position
    dw $0915, $0800  ; Screen Y position in pixels
    dw $0917, $0033  ; Layer 2 X position
    dw $0919, $0600  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00E4  ; Samus X
    dw $0AFA, $088B  ; Samus Y
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_wave_gate_room:
    dw #preset_100map_greenpink_brin_cleanup_spo_spo_farm_room ; Green-Pink Brin Cleanup: Spo Spo Farm Room
    dw $078D, $8F82  ; DDB
    dw $079B, $9D19  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $0403  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0302  ; Layer 2 Y position
    dw $0921, $FB00  ; BG2 X offset
    dw $0923, $FB00  ; BG2 Y offset
    dw $09CA, $000C  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03DD  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $D8B4, $276F  ; Doors
    dw $D8B6, $EF38  ; Doors
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_mission_impossible_room:
    dw #preset_100map_greenpink_brin_cleanup_wave_gate_room ; Green-Pink Brin Cleanup: Wave Gate Room
    dw $078D, $8FB2  ; DDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0203  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $031D  ; Screen Y position in pixels
    dw $0917, $0182  ; Layer 2 X position
    dw $0919, $0255  ; Layer 2 Y position
    dw $0921, $FC00  ; BG2 X offset
    dw $0923, $FC00  ; BG2 Y offset
    dw $09C2, $02BA  ; Health
    dw $09C6, $001C  ; Missiles
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $026B  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D8B6, $EFF8  ; Doors
    dw #$FFFF
.after

preset_100map_greenpink_brin_cleanup_green_hill_zone_final:
    dw #preset_100map_greenpink_brin_cleanup_mission_impossible_room ; Green-Pink Brin Cleanup: Mission Impossible Room
    dw $078D, $8F8E  ; DDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $02FE  ; Screen X position in pixels
    dw $0915, $061D  ; Screen Y position in pixels
    dw $0917, $023E  ; Layer 2 X position
    dw $0919, $0495  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $F700  ; BG2 Y offset
    dw $09C2, $028F  ; Health
    dw $09C6, $0017  ; Missiles
    dw $09CA, $000B  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $035E  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D8B4, $2F6F  ; Doors
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_blue_brinstar_hoppers:
    dw #preset_100map_greenpink_brin_cleanup_green_hill_zone_final ; Green-Pink Brin Cleanup: Green Hill Zone Final
    dw $078D, $8DEA  ; DDB
    dw $079B, $9E52  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $00FA  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $09D2, $0003  ; Currently selected item
    dw $0917, $00BB  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $0AF6, $015A  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_blue_brinstar_etank_room:
    dw #preset_100map_blue_brinstar_cleanup_blue_brinstar_hoppers ; Blue Brinstar Cleanup: Blue Brinstar Hoppers
    dw $078D, $8EAA  ; DDB
    dw $079B, $9F11  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F7FE  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $028D  ; Health
    dw $09C6, $0012  ; Missiles
    dw $09CE, $0003  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $00D8  ; Samus X
    dw $D8B6, $EFFD  ; Doors
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_john_cena_bridge:
    dw #preset_100map_blue_brinstar_cleanup_blue_brinstar_etank_room ; Blue Brinstar Cleanup: Blue Brinstar E-Tank Room
    dw $078D, $8ECE  ; DDB
    dw $079B, $9F64  ; MDB
    dw $090F, $4FFC  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0923, $FE00  ; BG2 Y offset
    dw $09C2, $028C  ; Health
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $025B  ; Samus X
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_blue_brinstar_screwfall:
    dw #preset_100map_blue_brinstar_cleanup_john_cena_bridge ; Blue Brinstar Cleanup: John Cena Bridge
    dw $078D, $8FFA  ; DDB
    dw $079B, $A1AD  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $0000  ; BG2 Y offset
    dw $09CA, $000A  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01DC  ; Samus X
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_pit_room_final:
    dw #preset_100map_blue_brinstar_cleanup_blue_brinstar_screwfall ; Blue Brinstar Cleanup: Blue Brinstar Screwfall
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09C2, $0288  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $002D  ; Flash suit
    dw $0AF6, $007E  ; Samus X
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_climb_supers:
    dw #preset_100map_blue_brinstar_cleanup_pit_room_final ; Blue Brinstar Cleanup: Pit Room Final
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $0700  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0540  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $F800  ; BG2 Y offset
    dw $09C2, $0249  ; Health
    dw $09C6, $0014  ; Missiles
    dw $09CE, $0001  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $02B6  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D8B2, $AC09  ; Doors
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_parlor_again:
    dw #preset_100map_blue_brinstar_cleanup_climb_supers ; Blue Brinstar Cleanup: Climb Supers
    dw $078D, $8C6A  ; DDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $B402  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FD00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $01B9  ; Health
    dw $09CA, $000F  ; Supers
    dw $09CC, $0019  ; Max supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $019D  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw $D870, $09A0  ; Items
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_crateria_map_entry:
    dw #preset_100map_blue_brinstar_cleanup_parlor_again ; Blue Brinstar Cleanup: Parlor Again
    dw $078D, $8B3E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $47FF  ; Screen subpixel Y position
    dw $0915, $030C  ; Screen Y position in pixels
    dw $0919, $0249  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FB00  ; BG2 Y offset
    dw $09CA, $000E  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01B2  ; Samus X
    dw $0AFA, $039B  ; Samus Y
    dw $D8B0, $B022  ; Doors
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_crateria_map_exit:
    dw #preset_100map_blue_brinstar_cleanup_crateria_map_entry ; Blue Brinstar Cleanup: Crateria Map Entry
    dw $078D, $8BDA  ; DDB
    dw $079B, $9994  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09D2, $0003  ; Currently selected item
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002B  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_230_missiles:
    dw #preset_100map_blue_brinstar_cleanup_crateria_map_exit ; Blue Brinstar Cleanup: Crateria Map Exit
    dw $078D, $8BCE  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0915, $031F  ; Screen Y position in pixels
    dw $09D2, $0000  ; Currently selected item
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0257  ; Layer 2 Y position
    dw $0921, $FE00  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $0AF6, $015D  ; Samus X
    dw $0AFA, $039B  ; Samus Y
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_230_mockball:
    dw #preset_100map_blue_brinstar_cleanup_230_missiles ; Blue Brinstar Cleanup: 230 Missiles
    dw $078D, $8C82  ; DDB
    dw $079B, $9A90  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09CE, $0000  ; Pbs
    dw $09D2, $0004  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $006F  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_parlor_not_final_climb:
    dw #preset_100map_blue_brinstar_cleanup_230_mockball ; Blue Brinstar Cleanup: 230 Mockball
    dw $078D, $899A  ; DDB
    dw $079B, $93D5  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $3000  ; Screen subpixel Y position
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $00C0  ; Samus X
    dw #$FFFF
.after

preset_100map_blue_brinstar_cleanup_terminator_final:
    dw #preset_100map_blue_brinstar_cleanup_parlor_not_final_climb ; Blue Brinstar Cleanup: Parlor (not) Final Climb
    dw $078D, $89BE  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $FE00  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $010F  ; Samus X
    dw $0B3F, $0104  ; Blue suit
    dw #$FFFF
.after

preset_100map_tourian_tourian_elevator:
    dw #preset_100map_blue_brinstar_cleanup_terminator_final ; Blue Brinstar Cleanup: Terminator Final
    dw $078D, $91F2  ; DDB
    dw $079B, $A66A  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $007D  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $3FC1  ; Events
    dw $D8B2, $EC09  ; Doors
    dw #$FFFF
.after

preset_100map_tourian_metroids_1:
    dw #preset_100map_tourian_tourian_elevator ; Tourian: Tourian Elevator
    dw $078D, $AB40  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FD00  ; BG2 Y offset
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0037  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF
.after

preset_100map_tourian_metroids_2:
    dw #preset_100map_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $FA00  ; BG2 X offset
    dw $0923, $0000  ; BG2 Y offset
    dw $09C2, $01DE  ; Health
    dw $09C6, $001E  ; Missiles
    dw $09CA, $000B  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0AF6, $0033  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0021  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF
.after

preset_100map_tourian_metroids_3:
    dw #preset_100map_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0119  ; Screen Y position in pixels
    dw $0919, $00D2  ; Layer 2 Y position
    dw $0921, $FF00  ; BG2 X offset
    dw $09C2, $022A  ; Health
    dw $09CA, $000C  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0023  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF
.after

preset_100map_tourian_metroids_4:
    dw #preset_100map_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $09C2, $02CF  ; Health
    dw $09CE, $0006  ; Pbs
    dw $0AF6, $05AF  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0027  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF
.after

preset_100map_tourian_baby_skip:
    dw #preset_100map_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0921, $FE00  ; BG2 X offset
    dw $09C2, $0329  ; Health
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01B5  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D822, $002F  ; Events
    dw $D8C4, $000F  ; Doors
    dw #$FFFF
.after

preset_100map_tourian_dusty_shaft_revisit:
    dw #preset_100map_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AA68  ; DDB
    dw $079B, $DD2E  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00D9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C4, $002F  ; Doors
    dw #$FFFF
.after

preset_100map_tourian_zeb_skip:
    dw #preset_100map_tourian_dusty_shaft_revisit ; Tourian: Dusty Shaft Revisit
    dw $078D, $AAD4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021A  ; Screen Y position in pixels
    dw $0919, $0193  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $09CA, $000A  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0045  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF
.after

preset_100map_tourian_escape_room_3:
    dw #preset_100map_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0921, $0000  ; BG2 X offset
    dw $0923, $00E0  ; BG2 Y offset
    dw $09A6, $1009  ; Beams
    dw $09C2, $0383  ; Health
    dw $09C6, $0000  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $09CE, $0000  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A76, $8000  ; Hyper beam
    dw $0AF6, $00DE  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D820, $7FC5  ; Events
    dw $D82C, $0203  ; Bosses
    dw #$FFFF
.after

preset_100map_tourian_escape_room_4:
    dw #preset_100map_tourian_escape_room_3 ; Tourian: Escape Room 3
    dw $078D, $AB04  ; DDB
    dw $079B, $DEA7  ; MDB
    dw $0911, $01D7  ; Screen X position in pixels
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $0161  ; Layer 2 X position
    dw $0919, $000F  ; Layer 2 Y position
    dw $0921, $0100  ; BG2 X offset
    dw $0923, $FF00  ; BG2 Y offset
    dw $0AF6, $0237  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_100map_tourian_escape_parlor:
    dw #preset_100map_tourian_escape_room_4 ; Tourian: Escape Room 4
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $A401  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0923, $F800  ; BG2 Y offset
    dw $09C2, $02BC  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $019D  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
.after

preset_100map_tourian_landing_site_final:
    dw #preset_100map_tourian_escape_parlor ; Tourian: Escape Parlor
    dw $078D, $8B3E  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0921, $FF00  ; BG2 X offset
    dw $0923, $FB00  ; BG2 Y offset
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $047A  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF
.after
