
preset_rbo_bombs_parlor_down:
    dw #$0000
    dw $078B, $0000  ; Elevator Index
    dw $078D, $88FE  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $0006  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
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
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $000C  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0033  ; Samus X
    dw $0AFA, $048B  ; Samus Y
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

preset_rbo_bombs_pit_room:
    dw #preset_rbo_bombs_parlor_down ; Bombs: Parlor Down
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0000  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A2, $0004  ; Equipped Items
    dw $09A4, $0004  ; Collected Items
    dw $09C6, $0005  ; Missiles
    dw $09C8, $0005  ; Max missiles
    dw $0AF6, $02D8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D872, $0400  ; Items
    dw $D874, $0004  ; Items
    dw #$FFFF
.after

preset_rbo_bombs_retro_etank:
    dw #preset_rbo_bombs_pit_room ; Bombs: Pit Room
    dw $078D, $8EAA  ; DDB
    dw $079B, $9F11  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $BBFF  ; Screen subpixel Y position
    dw $09C2, $0059  ; Health
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $0053  ; Samus position/state
    dw $0A1E, $0A08  ; More position/state
    dw $0AF6, $00D1  ; Samus X
    dw $D820, $0001  ; Events
    dw $D8B2, $0600  ; Doors
    dw $D8B6, $0004  ; Doors
    dw #$FFFF
.after

preset_rbo_bombs_climb:
    dw #preset_rbo_bombs_retro_etank ; Bombs: Retro E-Tank
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $09C2, $00B8  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09C6, $0007  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0076  ; Samus X
    dw $D872, $3400  ; Items
    dw #$FFFF
.after

preset_rbo_bombs_parlor_up:
    dw #preset_rbo_bombs_climb ; Bombs: Climb
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $09C2, $00C7  ; Health
    dw $09C6, $000A  ; Missiles
    dw $0A1C, $001A  ; Samus position/state
    dw $0A1E, $0304  ; More position/state
    dw $0AF6, $0198  ; Samus X
    dw $0AFA, $0040  ; Samus Y
    dw #$FFFF
.after

preset_rbo_bombs_alcatraz:
    dw #preset_rbo_bombs_parlor_up ; Bombs: Parlor Up
    dw $078D, $8BAA  ; DDB
    dw $079B, $9879  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $0A1C, $0012  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0027  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D828, $0004  ; Bosses
    dw $D870, $0080  ; Items
    dw $D8B2, $2E00  ; Doors
    dw #$FFFF
.after

preset_rbo_bombs_terminator:
    dw #preset_rbo_bombs_alcatraz ; Bombs: Alcatraz
    dw $078D, $8BB6  ; DDB
    dw $079B, $92FD  ; MDB
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0A1C, $0032  ; Samus position/state
    dw $0A1E, $0804  ; More position/state
    dw $0AF6, $0118  ; Samus X
    dw $0AFA, $0082  ; Samus Y
    dw #$FFFF
.after

preset_rbo_brinstar_green_brinstar_elevator:
    dw #preset_rbo_bombs_terminator ; Bombs: Terminator
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $6880  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $09C2, $00EF  ; Health
    dw $09C4, $012B  ; Max health
    dw $0A1C, $0010  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $00D8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D870, $0180  ; Items
    dw #$FFFF
.after

preset_rbo_brinstar_early_supers_reserve:
    dw #preset_rbo_brinstar_green_brinstar_elevator ; Brinstar: Green Brinstar Elevator
    dw $078D, $8C0A  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $041C  ; Screen Y position in pixels
    dw $09C2, $00E5  ; Health
    dw $09C6, $0005  ; Missiles
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $00B2  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $D8B4, $0002  ; Doors
    dw #$FFFF
.after

preset_rbo_brinstar_early_supers_collection:
    dw #preset_rbo_brinstar_early_supers_reserve ; Brinstar: Early Supers Reserve
    dw $078D, $8D5A  ; DDB
    dw $079B, $9C07  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C0, $0001  ; Manual/Auto reserve tank
    dw $09C6, $0000  ; Missiles
    dw $09D4, $0064  ; Max reserves
    dw $0A1C, $0012  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $003E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D872, $3402  ; Items
    dw $D8B4, $0042  ; Doors
    dw #$FFFF
.after

preset_rbo_brinstar_big_pink:
    dw #preset_rbo_brinstar_early_supers_collection ; Brinstar: Early Supers Collection
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $054F  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $09C2, $00D1  ; Health
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $05DB  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D872, $3403  ; Items
    dw $D8B4, $0046  ; Doors
    dw #$FFFF
.after

preset_rbo_brinstar_red_tower_up:
    dw #preset_rbo_brinstar_big_pink ; Brinstar: Big Pink
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $09A6, $1000  ; Beams
    dw $09A8, $1000  ; Beams
    dw $09C2, $00B3  ; Health
    dw $0AF6, $0571  ; Samus X
    dw $D872, $3483  ; Items
    dw $D8B4, $0246  ; Doors
    dw $D8B6, $000C  ; Doors
    dw #$FFFF
.after

preset_rbo_brinstar_reverse_hellway:
    dw #preset_rbo_brinstar_red_tower_up ; Brinstar: Red Tower (Up)
    dw $078D, $90EA  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $04F3  ; Screen Y position in pixels
    dw $09C2, $007F  ; Health
    dw $09CA, $0003  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0030  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $D874, $0104  ; Items
    dw $D8B6, $300C  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_first_visit_norfair_elevator:
    dw #preset_rbo_brinstar_reverse_hellway ; Brinstar: Reverse Hellway
    dw $078D, $A384  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A6, $1004  ; Beams
    dw $09A8, $1004  ; Beams
    dw $09C2, $004B  ; Health
    dw $09C6, $0002  ; Missiles
    dw $0A1C, $000F  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $0049  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $0504  ; Items
    dw $D8B6, $B00C  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_first_visit_high_jump:
    dw #preset_rbo_norfair_first_visit_norfair_elevator ; Norfair (First Visit): Norfair Elevator
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $051C  ; Screen Y position in pixels
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $002B  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw $D8B8, $2000  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_first_visit_first_hell_run:
    dw #preset_rbo_norfair_first_visit_high_jump ; Norfair (First Visit): High Jump
    dw $078D, $941A  ; DDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $BFFF  ; Screen subpixel Y position
    dw $0915, $02F6  ; Screen Y position in pixels
    dw $09A2, $1104  ; Equipped Items
    dw $09A4, $1104  ; Collected Items
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09CE, $0003  ; Pbs
    dw $09D6, $0028  ; Reserves
    dw $0A1C, $00A4  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A0  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D876, $0120  ; Items
    dw $D8BA, $0001  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_first_visit_bubble_mountain:
    dw #preset_rbo_norfair_first_visit_first_hell_run ; Norfair (First Visit): First Hell Run
    dw $078D, $929A  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0079  ; Health
    dw $09C6, $0000  ; Missiles
    dw $09CA, $0001  ; Supers
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $04B4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B8, $2600  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_first_visit_bat_cave_speed_farm:
    dw #preset_rbo_norfair_first_visit_bubble_mountain ; Norfair (First Visit): Bubble Mountain
    dw $078D, $973E  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $09C2, $0075  ; Health
    dw $09C6, $0001  ; Missiles
    dw $09CA, $0002  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01BD  ; Samus X
    dw $D8BA, $0011  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_first_visit_wave_escape:
    dw #preset_rbo_norfair_first_visit_bat_cave_speed_farm ; Norfair (First Visit): Bat Cave (Speed Farm)
    dw $078D, $961E  ; DDB
    dw $079B, $ADDE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C400  ; Screen subpixel Y position
    dw $09A2, $3104  ; Equipped Items
    dw $09A4, $3104  ; Collected Items
    dw $09A6, $1005  ; Beams
    dw $09A8, $1005  ; Beams
    dw $09C2, $00CC  ; Health
    dw $09C6, $000D  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $09D6, $0064  ; Reserves
    dw $0A1C, $0018  ; Samus position/state
    dw $0A1E, $0204  ; More position/state
    dw $0AF6, $0051  ; Samus X
    dw $0AFA, $0092  ; Samus Y
    dw $D822, $0020  ; Events
    dw $D878, $001C  ; Items
    dw $D8BA, $00F1  ; Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_alpha_spark:
    dw #preset_rbo_norfair_first_visit_wave_escape ; Norfair (First Visit): Wave Escape
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $09C2, $0034  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0087  ; Samus Y
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_spore_spawn_supers:
    dw #preset_rbo_brinstar_cleanup_alpha_spark ; Brinstar Cleanup: Alpha Spark
    dw $078D, $8E7A  ; DDB
    dw $079B, $9D19  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $3C00  ; Screen subpixel Y position
    dw $0915, $0517  ; Screen Y position in pixels
    dw $09C2, $0040  ; Health
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0007  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0389  ; Samus X
    dw $0AFA, $05AB  ; Samus Y
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_dachora_room:
    dw #preset_rbo_brinstar_cleanup_spore_spawn_supers ; Brinstar Cleanup: Spore Spawn Supers
    dw $078D, $8FB2  ; DDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $02FA  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $01F2  ; Screen Y position in pixels
    dw $09C2, $01A3  ; Health
    dw $09C4, $01F3  ; Max health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $0006  ; Supers
    dw $09CC, $000A  ; Max supers
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $00E7  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $039A  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D870, $4180  ; Items
    dw $D874, $050C  ; Items
    dw $D8B4, $0346  ; Doors
    dw $D8B6, $B0EC  ; Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_green_shaft_down:
    dw #preset_rbo_brinstar_cleanup_dachora_room ; Brinstar Cleanup: Dachora Room
    dw $078D, $8DA2  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $EC01  ; Screen subpixel Y position
    dw $0915, $05FB  ; Screen Y position in pixels
    dw $0A1C, $0032  ; Samus position/state
    dw $0A1E, $0804  ; More position/state
    dw $0AF6, $0091  ; Samus X
    dw $0AFA, $0685  ; Samus Y
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_etecoon_supers:
    dw #preset_rbo_brinstar_cleanup_green_shaft_down ; Brinstar Cleanup: Green Shaft (Down)
    dw $078D, $8CBE  ; DDB
    dw $079B, $9FE5  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0185  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0038  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_green_shaft_up:
    dw #preset_rbo_brinstar_cleanup_etecoon_supers ; Brinstar Cleanup: Etecoon Supers
    dw $078D, $8F46  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0700  ; Screen Y position in pixels
    dw $09C2, $0203  ; Health
    dw $09C4, $0257  ; Max health
    dw $09CA, $000A  ; Supers
    dw $09CC, $000F  ; Max supers
    dw $09CE, $0009  ; Pbs
    dw $09D0, $000A  ; Max pbs
    dw $0AF6, $0137  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D870, $6180  ; Items
    dw $D872, $F483  ; Items
    dw $D8B6, $B0FC  ; Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_reverse_terminator:
    dw #preset_rbo_brinstar_cleanup_green_shaft_up ; Brinstar Cleanup: Green Shaft (Up)
    dw $078D, $8C16  ; DDB
    dw $079B, $99BD  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3400  ; Screen subpixel Y position
    dw $0915, $040E  ; Screen Y position in pixels
    dw $09C2, $01FE  ; Health
    dw $09C6, $0009  ; Missiles
    dw $09CE, $0008  ; Pbs
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $005F  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_climb_supers_moonfall:
    dw #preset_rbo_brinstar_cleanup_reverse_terminator ; Brinstar Cleanup: Reverse Terminator
    dw $078D, $8BF2  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $041F  ; Screen Y position in pixels
    dw $0A1C, $002A  ; Samus position/state
    dw $0A1E, $0604  ; More position/state
    dw $0AF6, $018D  ; Samus X
    dw $0AFA, $04C2  ; Samus Y
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_retro_brinstar_powerbombs:
    dw #preset_rbo_brinstar_cleanup_climb_supers_moonfall ; Brinstar Cleanup: Climb Supers Moonfall
    dw $078D, $8B86  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0108  ; Health
    dw $09C6, $000B  ; Missiles
    dw $09CA, $000F  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $09CE, $0006  ; Pbs
    dw $0A1C, $000F  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $0052  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D870, $6980  ; Items
    dw $D8B2, $2E08  ; Doors
    dw #$FFFF
.after

preset_rbo_brinstar_cleanup_ball_buster:
    dw #preset_rbo_brinstar_cleanup_retro_brinstar_powerbombs ; Brinstar Cleanup: Retro Brinstar Powerbombs
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $0911, $003B  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $09C6, $000F  ; Missiles
    dw $09CE, $000A  ; Pbs
    dw $09D0, $000F  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $009B  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D872, $FC83  ; Items
    dw $D8B6, $B0FE  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_ice_entry:
    dw #preset_rbo_brinstar_cleanup_ball_buster ; Brinstar Cleanup: Ball Buster
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0322  ; Screen Y position in pixels
    dw $09C2, $0104  ; Health
    dw $09CA, $0011  ; Supers
    dw $0A1C, $00A5  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002F  ; Samus X
    dw $0AFA, $0393  ; Samus Y
    dw $D8B8, $2E00  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_ice_escape:
    dw #preset_rbo_norfair_second_visit_ice_entry ; Norfair (Second Visit): Ice Entry
    dw $078D, $937E  ; DDB
    dw $079B, $A890  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A6, $1007  ; Beams
    dw $09A8, $1007  ; Beams
    dw $09C2, $00AF  ; Health
    dw $09CE, $0009  ; Pbs
    dw $0A1C, $0008  ; Samus position/state
    dw $0AF6, $00B6  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $0124  ; Items
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_croc_shaft_moonfall:
    dw #preset_rbo_norfair_second_visit_ice_escape ; Norfair (Second Visit): Ice Escape
    dw $078D, $9276  ; DDB
    dw $079B, $A815  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0010  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $09C2, $0087  ; Health
    dw $09CE, $000A  ; Pbs
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $00B0  ; Samus X
    dw $0AFA, $03AB  ; Samus Y
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_croc:
    dw #preset_rbo_norfair_second_visit_croc_shaft_moonfall ; Norfair (Second Visit): Croc Shaft Moonfall
    dw $078D, $9396  ; DDB
    dw $079B, $A923  ; MDB
    dw $090F, $D880  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $09C2, $003E  ; Health
    dw $09CA, $0010  ; Supers
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0029  ; Samus position/state
    dw $0A1E, $0608  ; More position/state
    dw $0AF6, $0C86  ; Samus X
    dw $0AFA, $02C9  ; Samus Y
    dw $D8B8, $6E00  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_grapple_escape:
    dw #preset_rbo_norfair_second_visit_croc ; Norfair (Second Visit): Croc
    dw $078D, $94DA  ; DDB
    dw $079B, $AC2B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $09A2, $7104  ; Equipped Items
    dw $09A4, $7104  ; Collected Items
    dw $09C2, $0255  ; Health
    dw $09C4, $02BB  ; Max health
    dw $09CA, $000D  ; Supers
    dw $09CE, $000E  ; Pbs
    dw $09D0, $0014  ; Max pbs
    dw $09D6, $0012  ; Reserves
    dw $0A1C, $009D  ; Samus position/state
    dw $0A1E, $0E08  ; More position/state
    dw $0AF6, $0055  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D82A, $0002  ; Bosses
    dw $D876, $1334  ; Items
    dw $D8BA, $00F3  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_lava_dive_grapple_room:
    dw #preset_rbo_norfair_second_visit_grapple_escape ; Norfair (Second Visit): Grapple Escape
    dw $078D, $9756  ; DDB
    dw $079B, $B026  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $02BB  ; Health
    dw $09CA, $0014  ; Supers
    dw $09CE, $0010  ; Pbs
    dw $09D6, $0064  ; Reserves
    dw $0A1C, $0051  ; Samus position/state
    dw $0A1E, $0208  ; More position/state
    dw $0AF6, $00BF  ; Samus X
    dw $0AFA, $007E  ; Samus Y
    dw $D8B8, $EE00  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_second_visit_lava_dive_entry_room:
    dw #preset_rbo_norfair_second_visit_lava_dive_grapple_room ; Norfair (Second Visit): Lava Dive (Grapple Room)
    dw $078D, $9792  ; DDB
    dw $079B, $AFFB  ; MDB
    dw $090F, $CC4C  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $5ABE  ; Screen subpixel Y position
    dw $09C2, $0270  ; Health
    dw $0A1C, $00E2  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03C4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_rbo_lower_norfair_green_gate_glitch:
    dw #preset_rbo_norfair_second_visit_lava_dive_entry_room ; Norfair (Second Visit): Lava Dive (Entry Room)
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $09C2, $01C4  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $001E  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0AF6, $07C8  ; Samus X
    dw $0AFA, $0299  ; Samus Y
    dw $D8BA, $01F3  ; Doors
    dw #$FFFF
.after

preset_rbo_lower_norfair_golden_torizo:
    dw #preset_rbo_lower_norfair_green_gate_glitch ; Lower Norfair: Green Gate Glitch
    dw $078D, $98A6  ; DDB
    dw $079B, $B6C1  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $3FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $09A2, $710C  ; Equipped Items
    dw $09A4, $710C  ; Collected Items
    dw $09C2, $0297  ; Health
    dw $09CA, $0014  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $00A8  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw $D878, $801C  ; Items
    dw #$FFFF
.after

preset_rbo_lower_norfair_energy_refill_escape:
    dw #preset_rbo_lower_norfair_golden_torizo ; Lower Norfair: Golden Torizo
    dw $078D, $9A7A  ; DDB
    dw $079B, $B305  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $090F, $1001  ; Screen subpixel X position
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A6, $1001  ; Beams
    dw $09C2, $02BB  ; Health
    dw $09C6, $000D  ; Missiles
    dw $09CA, $000D  ; Supers
    dw $09CC, $0019  ; Max supers
    dw $09CE, $0006  ; Pbs
    dw $0A1C, $0008  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0030  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82A, $0006  ; Bosses
    dw $D878, $809C  ; Items
    dw $D8BA, $03F3  ; Doors
    dw #$FFFF
.after

preset_rbo_lower_norfair_writg:
    dw #preset_rbo_lower_norfair_energy_refill_escape ; Lower Norfair: Energy Refill (Escape)
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $E600  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $8400  ; Screen subpixel Y position
    dw $09C2, $0173  ; Health
    dw $09CA, $0012  ; Supers
    dw $09CE, $0008  ; Pbs
    dw $0A1C, $0067  ; Samus position/state
    dw $0A1E, $0608  ; More position/state
    dw $0AF6, $03D3  ; Samus X
    dw $0AFA, $0074  ; Samus Y
    dw #$FFFF
.after

preset_rbo_lower_norfair_kihunter_stairs_down:
    dw #preset_rbo_lower_norfair_writg ; Lower Norfair: WRITG
    dw $078D, $9A02  ; DDB
    dw $079B, $B6EE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0322  ; Screen Y position in pixels
    dw $09C2, $0317  ; Health
    dw $09C4, $031F  ; Max health
    dw $09C6, $000F  ; Missiles
    dw $09CE, $000B  ; Pbs
    dw $0A1C, $0012  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $013D  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D87A, $0001  ; Items
    dw #$FFFF
.after

preset_rbo_lower_norfair_ninja_pirates:
    dw #preset_rbo_lower_norfair_kihunter_stairs_down ; Lower Norfair: Kihunter Stairs (Down)
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $09C2, $010F  ; Health
    dw $09CA, $0011  ; Supers
    dw $09CE, $0008  ; Pbs
    dw $0A1C, $000A  ; Samus position/state
    dw $0AF6, $013F  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $C3F3  ; Doors
    dw #$FFFF
.after

preset_rbo_lower_norfair_ridley:
    dw #preset_rbo_lower_norfair_ninja_pirates ; Lower Norfair: Ninja Pirates
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $026C  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CA, $0019  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0AF6, $0033  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D8BA, $D3F3  ; Doors
    dw $D8BC, $0001  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_escape_postridley:
    dw #preset_rbo_lower_norfair_ridley ; Lower Norfair: Ridley
    dw $078D, $9A62  ; DDB
    dw $079B, $B32E  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $EFFF  ; Screen subpixel X position
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $09A6, $1007  ; Beams
    dw $09C2, $036D  ; Health
    dw $09C4, $0383  ; Max health
    dw $09C6, $000E  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09CE, $0001  ; Pbs
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0011  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $0050  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $D82A, $0007  ; Bosses
    dw $D878, $C09C  ; Items
    dw $D8BA, $DBF3  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_escape_firefleas_exit_spikesuit:
    dw #preset_rbo_norfair_escape_postridley ; Norfair Escape: Post-Ridley
    dw $078D, $9A02  ; DDB
    dw $079B, $B6EE  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $09C2, $0383  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0019  ; Max pbs
    dw $09D6, $0064  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $015F  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $D09C  ; Items
    dw $D8BA, $DFF3  ; Doors
    dw #$FFFF
.after

preset_rbo_norfair_escape_3_muskateers:
    dw #preset_rbo_norfair_escape_firefleas_exit_spikesuit ; Norfair Escape: Firefleas Exit (Spikesuit)
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0017  ; Screen Y position in pixels
    dw $09C2, $02CF  ; Health
    dw $09CE, $0001  ; Pbs
    dw $0A1C, $00A5  ; Samus position/state
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $0070  ; Samus X
    dw #$FFFF
.after

preset_rbo_norfair_escape_croc_gate_farm:
    dw #preset_rbo_norfair_escape_3_muskateers ; Norfair Escape: 3 Muskateers
    dw $078D, $95CA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $02FB  ; Screen Y position in pixels
    dw $09C2, $012C  ; Health
    dw $09C6, $0004  ; Missiles
    dw $09CA, $0001  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0058  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF
.after

preset_rbo_maridia_maridia_entry_spikesuit:
    dw #preset_rbo_norfair_escape_croc_gate_farm ; Norfair Escape: Croc Gate Farm
    dw $078D, $922E  ; DDB
    dw $079B, $CF80  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $09C2, $012B  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $0019  ; Supers
    dw $09CE, $000E  ; Pbs
    dw $0A1C, $000C  ; Samus position/state
    dw $0AF6, $009C  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $0B3F, $0001  ; Blue suit
    dw #$FFFF
.after

preset_rbo_maridia_aqueduct:
    dw #preset_rbo_maridia_maridia_entry_spikesuit ; Maridia: Maridia Entry (Spikesuit)
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $09C2, $013F  ; Health
    dw $09CA, $0018  ; Supers
    dw $0A1C, $00E4  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01BA  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D8C0, $8000  ; Doors
    dw #$FFFF
.after

preset_rbo_maridia_botwoon:
    dw #preset_rbo_maridia_aqueduct ; Maridia: Aqueduct
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $09C2, $009F  ; Health
    dw $09CE, $000D  ; Pbs
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $03A2  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF
.after

preset_rbo_maridia_colosseum:
    dw #preset_rbo_maridia_botwoon ; Maridia: Botwoon
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0046  ; Health
    dw $09CA, $0013  ; Supers
    dw $09CE, $000F  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $00C6  ; Samus X
    dw $D82C, $0002  ; Bosses
    dw #$FFFF
.after

preset_rbo_maridia_draygon:
    dw #preset_rbo_maridia_colosseum ; Maridia: Colosseum
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $090F, $7400  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01FD  ; Screen Y position in pixels
    dw $09C2, $000A  ; Health
    dw $09CA, $0011  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003C  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C2, $0C00  ; Doors
    dw #$FFFF
.after

preset_rbo_maridia_draygon_escape:
    dw #preset_rbo_maridia_draygon ; Maridia: Draygon
    dw $078D, $A978  ; DDB
    dw $079B, $D9AA  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $4C00  ; Screen subpixel X position
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A2, $730C  ; Equipped Items
    dw $09A4, $730C  ; Collected Items
    dw $09C2, $023A  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09CA, $0008  ; Supers
    dw $09CE, $0011  ; Pbs
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0019  ; Samus position/state
    dw $0A1E, $0308  ; More position/state
    dw $0AF6, $00CA  ; Samus X
    dw $0AFA, $0087  ; Samus Y
    dw $0B3F, $0004  ; Blue suit
    dw $D82C, $0003  ; Bosses
    dw $D882, $0400  ; Items
    dw $D8C2, $8C00  ; Doors
    dw #$FFFF
.after

preset_rbo_maridia_plasma_screw_attack_strat:
    dw #preset_rbo_maridia_draygon_escape ; Maridia: Draygon Escape
    dw $078D, $A5DC  ; DDB
    dw $079B, $D27E  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $E800  ; Screen subpixel Y position
    dw $09C2, $015B  ; Health
    dw $09C6, $000B  ; Missiles
    dw $09CA, $000D  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $005F  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D8C2, $DC08  ; Doors
    dw #$FFFF
.after

preset_rbo_wrecked_ship_forgotten_highway:
    dw #preset_rbo_maridia_plasma_screw_attack_strat ; Maridia: Plasma (Screw Attack Strat)
    dw $078D, $A594  ; DDB
    dw $079B, $94CC  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $09A6, $100B  ; Beams
    dw $09A8, $100F  ; Beams
    dw $09C2, $01A6  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $000F  ; Supers
    dw $09CE, $0013  ; Pbs
    dw $0A1C, $0010  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $007C  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D880, $8000  ; Items
    dw $D8C2, $DC0A  ; Doors
    dw #$FFFF
.after

preset_rbo_wrecked_ship_east_ocean:
    dw #preset_rbo_wrecked_ship_forgotten_highway ; Wrecked Ship: Forgotten Highway
    dw $078D, $8A96  ; DDB
    dw $079B, $9552  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $000C  ; Screen Y position in pixels
    dw $09C2, $01BA  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00C4  ; Samus X
    dw $0AFA, $007B  ; Samus Y
    dw #$FFFF
.after

preset_rbo_wrecked_ship_wrecked_ship_backdoor_entry:
    dw #preset_rbo_wrecked_ship_east_ocean ; Wrecked Ship: East Ocean
    dw $078D, $8A7E  ; DDB
    dw $079B, $94FD  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $042D  ; Screen Y position in pixels
    dw $09C2, $016A  ; Health
    dw $0AF6, $0093  ; Samus X
    dw $0AFA, $049B  ; Samus Y
    dw #$FFFF
.after

preset_rbo_wrecked_ship_phantoon:
    dw #preset_rbo_wrecked_ship_wrecked_ship_backdoor_entry ; Wrecked Ship: Wrecked Ship Backdoor Entry
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $0911, $01F4  ; Screen X position in pixels
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09CA, $000E  ; Supers
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0266  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw $D8C0, $8010  ; Doors
    dw #$FFFF
.after

preset_rbo_wrecked_ship_ws_shaft_up:
    dw #preset_rbo_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dw $078D, $A2C4  ; DDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $021D  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $09C2, $01E7  ; Health
    dw $09CA, $0014  ; Supers
    dw $09CE, $0017  ; Pbs
    dw $0AF6, $02BD  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D82A, $0107  ; Bosses
    dw $D8C0, $8070  ; Doors
    dw #$FFFF
.after

preset_rbo_kraidg4_kihunters_room_down:
    dw #preset_rbo_wrecked_ship_ws_shaft_up ; Wrecked Ship: WS Shaft (Up)
    dw $078D, $89CA  ; DDB
    dw $079B, $95FF  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2C00  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $09CE, $0016  ; Pbs
    dw $0AF6, $0022  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $8074  ; Doors
    dw #$FFFF
.after

preset_rbo_kraidg4_kraid_entry:
    dw #preset_rbo_kraidg4_kihunters_room_down ; Kraid/G4: Kihunters Room (Down)
    dw $078D, $A348  ; DDB
    dw $079B, $CF80  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $09CA, $0015  ; Supers
    dw $09CE, $0015  ; Pbs
    dw $0A1C, $00E6  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0049  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $0B3F, $0001  ; Blue suit
    dw $D8B0, $4000  ; Doors
    dw $D8B2, $2E09  ; Doors
    dw #$FFFF
.after

preset_rbo_kraidg4_kraid_hallway:
    dw #preset_rbo_kraidg4_kraid_entry ; Kraid/G4: Kraid Entry
    dw $078D, $9156  ; DDB
    dw $079B, $A4DA  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $00FB  ; Screen Y position in pixels
    dw $09CA, $0012  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0AF6, $0167  ; Samus X
    dw $0B3F, $0000  ; Blue suit
    dw #$FFFF
.after

preset_rbo_kraidg4_kraid_hallway_exit:
    dw #preset_rbo_kraidg4_kraid_hallway ; Kraid/G4: Kraid Hallway
    dw $078D, $91CE  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $09C2, $0204  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CE, $0019  ; Pbs
    dw $0A1C, $0018  ; Samus position/state
    dw $0A1E, $0204  ; More position/state
    dw $0AF6, $0038  ; Samus X
    dw $0AFA, $0183  ; Samus Y
    dw $0B3F, $0002  ; Blue suit
    dw $D828, $0104  ; Bosses
    dw $D8B8, $EEA4  ; Doors
    dw #$FFFF
.after

preset_rbo_kraidg4_kraid_escape:
    dw #preset_rbo_kraidg4_kraid_hallway_exit ; Kraid/G4: Kraid Hallway (Exit)
    dw $078D, $913E  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $87FF  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C6, $0007  ; Missiles
    dw $09CA, $0016  ; Supers
    dw $09CE, $0018  ; Pbs
    dw $0A1C, $0081  ; Samus position/state
    dw $0A1E, $0308  ; More position/state
    dw $0AF6, $02D8  ; Samus X
    dw $0AFA, $0086  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D8B8, $EEAC  ; Doors
    dw #$FFFF
.after

preset_rbo_kraidg4_kihunters_room_up:
    dw #preset_rbo_kraidg4_kraid_escape ; Kraid/G4: Kraid Escape
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $09C2, $01E4  ; Health
    dw $09CA, $0015  ; Supers
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $006C  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF
.after

preset_rbo_tourian_metroids:
    dw #preset_rbo_kraidg4_kihunters_room_up ; Kraid/G4: Kihunters Room (Up)
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $09C2, $01FD  ; Health
    dw $09CA, $0014  ; Supers
    dw $0A1C, $0012  ; Samus position/state
    dw $0AF6, $0039  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D820, $0FC1  ; Events
    dw $D8B2, $6E09  ; Doors
    dw #$FFFF
.after

preset_rbo_tourian_baby_skip:
    dw #preset_rbo_tourian_metroids ; Tourian: Metroids
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $0311  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $0013  ; Supers
    dw $09CE, $0019  ; Pbs
    dw $0A1C, $000A  ; Samus position/state
    dw $0AF6, $01C4  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D822, $002F  ; Events
    dw $D8C4, $000F  ; Doors
    dw #$FFFF
.after

preset_rbo_tourian_zeb_skip:
    dw #preset_rbo_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AAA4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $1FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0219  ; Screen Y position in pixels
    dw $09CA, $0010  ; Supers
    dw $0AF6, $004C  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF
.after

preset_rbo_tourian_escape_room_3:
    dw #preset_rbo_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $00C6  ; Screen Y position in pixels
    dw $09A6, $1009  ; Beams
    dw $09C2, $0293  ; Health
    dw $09C6, $0000  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $09CE, $0000  ; Pbs
    dw $09D6, $0064  ; Reserves
    dw $0A1C, $0029  ; Samus position/state
    dw $0A1E, $0608  ; More position/state
    dw $0A76, $8000  ; Hyper beam
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $0136  ; Samus Y
    dw $D820, $4FC5  ; Events
    dw $D82C, $0203  ; Bosses
    dw #$FFFF
.after

preset_rbo_tourian_escape_parlor:
    dw #preset_rbo_tourian_escape_room_3 ; Tourian: Escape Room 3
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $A401  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09C2, $01D6  ; Health
    dw $0A1C, $0082  ; Samus position/state
    dw $0A1E, $0304  ; More position/state
    dw $0AF6, $019B  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
.after
