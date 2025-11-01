
preset_rando_crateria_ceiling_morph:
    dw #$0000
    dw $078D, $8EAA  ; DDB
    dw $079B, $9F11  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $0000  ; Equipped Items
    dw $09A4, $0004  ; Collected Items
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
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $00D1  ; Samus X
    dw $0AF8, $3000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0000  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $0000  ; Items
    dw $D872, $0400  ; Items
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
    dw $D8B6, $0004  ; Doors
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

preset_rando_crateria_taco_tank:
    dw #preset_rando_crateria_ceiling_morph ; Crateria: Ceiling Morph
    dw $07F3, $0006  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $09A2, $0004  ; Equipped Items
    dw $09C8, $0005  ; Max missiles
    dw $D820, $0000  ; Events
    dw #$FFFF

preset_rando_crateria_meme_route:
    dw #preset_rando_crateria_taco_tank ; Crateria: Taco Tank
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $09C8, $0000  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0038  ; Samus X
    dw $D820, $0001  ; Events
    dw $D8B6, $0007  ; Doors
    dw #$FFFF

preset_rando_crateria_billy_mays:
    dw #preset_rando_crateria_meme_route ; Crateria: Meme Route
    dw $078D, $8ECE  ; DDB
    dw $079B, $9F64  ; MDB
    dw $090F, $DFFF  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09C2, $005E  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09C8, $0005  ; Max missiles
    dw $09CA, $0000  ; Supers
    dw $09CC, $0000  ; Max supers
    dw $09CE, $0003  ; Pbs
    dw $0AF6, $025B  ; Samus X
    dw $D872, $1400  ; Items
    dw $D8B6, $0004  ; Doors
    dw #$FFFF

preset_rando_crateria_billy_mays_escape:
    dw #preset_rando_crateria_billy_mays ; Crateria: Billy Mays
    dw $078D, $8FEE  ; DDB
    dw $079B, $A1D8  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $000F  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $D874, $0030  ; Items
    dw #$FFFF

preset_rando_crateria_climb_short_charge:
    dw #preset_rando_crateria_billy_mays_escape ; Crateria: Billy Mays Escape
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $000D  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0917, $0009  ; Layer 2 X position
    dw $09A2, $2004  ; Equipped Items
    dw $09A4, $2004  ; Collected Items
    dw $09C2, $0063  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0093  ; Samus X
    dw $D874, $0000  ; Items
    dw $D8B2, $0400  ; Doors
    dw #$FFFF

preset_rando_crateria_old_mb_short_charge:
    dw #preset_rando_crateria_climb_short_charge ; Crateria: Climb Short Charge
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $0800  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0600  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0027  ; Samus X
    dw $0AFA, $088B  ; Samus Y
    dw #$FFFF

preset_rando_crateria_old_mb_screw_attack:
    dw #preset_rando_crateria_old_mb_short_charge ; Crateria: Old MB Short Charge
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $000D  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0009  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $000C  ; Equipped Items
    dw $09A4, $000C  ; Collected Items
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0093  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_crateria_climb_hijump_boots:
    dw #preset_rando_crateria_old_mb_screw_attack ; Crateria: Old MB Screw Attack
    dw $09A2, $0104  ; Equipped Items
    dw $09A4, $0104  ; Collected Items
    dw #$FFFF

preset_rando_crateria_climb_supers:
    dw #preset_rando_crateria_climb_hijump_boots ; Crateria: Climb Hi-Jump Boots
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $A001  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $6000  ; Screen subpixel Y position
    dw $0915, $0700  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0540  ; Layer 2 Y position
    dw $09A2, $2004  ; Equipped Items
    dw $09A4, $2004  ; Collected Items
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09C6, $0005  ; Missiles
    dw $09C8, $0005  ; Max missiles
    dw $09CE, $0003  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $02B8  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D8B2, $0408  ; Doors
    dw #$FFFF

preset_rando_crateria_bomb_torizo_speed_escape:
    dw #preset_rando_crateria_climb_supers ; Crateria: Climb Supers
    dw $078D, $8982  ; DDB
    dw $079B, $9879  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $000B  ; Screen X position in pixels
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0008  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C8, $000A  ; Max missiles
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $0AF6, $006B  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D8B2, $2400  ; Doors
    dw #$FFFF

preset_rando_crateria_alcatraz_hijump_boots:
    dw #preset_rando_crateria_bomb_torizo_speed_escape ; Crateria: Bomb Torizo Speed Escape
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09A2, $0104  ; Equipped Items
    dw $09A4, $0104  ; Collected Items
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_crateria_ibj_to_power_bombs:
    dw #preset_rando_crateria_alcatraz_hijump_boots ; Crateria: Alcatraz Hi-Jump Boots
    dw $078D, $896A  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $0006  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0691  ; Screen X position in pixels
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $0208  ; Screen Y position in pixels
    dw $0917, $0348  ; Layer 2 X position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C6, $000A  ; Missiles
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $06F8  ; Samus X
    dw $0AFA, $027B  ; Samus Y
    dw $D828, $0004  ; Bosses
    dw $D870, $0080  ; Items
    dw $D8B2, $2C00  ; Doors
    dw #$FFFF

preset_rando_crateria_ibj_with_hijump_boots:
    dw #preset_rando_crateria_ibj_to_power_bombs ; Crateria: IBJ to Power Bombs
    dw $09A2, $1104  ; Equipped Items
    dw $09A4, $1104  ; Collected Items
    dw #$FFFF

preset_rando_crateria_moat_cwj:
    dw #preset_rando_crateria_ibj_with_hijump_boots ; Crateria: IBJ with Hi-Jump Boots
    dw $078D, $8AD2  ; DDB
    dw $079B, $948C  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $09A2, $1006  ; Equipped Items
    dw $09A4, $1006  ; Collected Items
    dw $09C6, $0008  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $0AF6, $02DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B0, $2001  ; Doors
    dw #$FFFF

preset_rando_crateria_moat_hbj:
    dw #preset_rando_crateria_moat_cwj ; Crateria: Moat CWJ
    dw $078D, $8A36  ; DDB
    dw $079B, $95FF  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0085  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0063  ; Layer 2 X position
    dw $09C6, $000D  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $0A1C, $0079  ; Samus position/state
    dw $0A1E, $1108  ; More position/state
    dw $0AF6, $00EB  ; Samus X
    dw $0AFA, $0099  ; Samus Y
    dw $D870, $0090  ; Items
    dw #$FFFF

preset_rando_gauntlet_entry:
    dw #preset_rando_crateria_moat_hbj ; Crateria: Moat HBJ
    dw $078D, $896A  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $5800  ; Screen subpixel X position
    dw $0911, $01DD  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $0917, $00EE  ; Layer 2 X position
    dw $0919, $0208  ; Layer 2 Y position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0000  ; Supers
    dw $09CC, $0000  ; Max supers
    dw $09CE, $000A  ; Pbs
    dw $09D0, $000A  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $026A  ; Samus X
    dw $0AFA, $04AB  ; Samus Y
    dw $D870, $0080  ; Items
    dw $D8B0, $0000  ; Doors
    dw #$FFFF

preset_rando_gauntlet_entry_with_hijump:
    dw #preset_rando_gauntlet_entry ; Gauntlet: Entry
    dw $09A2, $1104  ; Equipped Items
    dw $09A4, $1104  ; Collected Items
    dw #$FFFF

preset_rando_gauntlet_entry_with_speed_booster:
    dw #preset_rando_gauntlet_entry_with_hijump ; Gauntlet: Entry with Hi-Jump
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0480  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $03D3  ; Layer 2 Y position
    dw $09A2, $3004  ; Equipped Items
    dw $09A4, $3004  ; Collected Items
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $04E5  ; Samus X
    dw $0AFA, $04B6  ; Samus Y
    dw #$FFFF

preset_rando_gauntlet_first_half:
    dw #preset_rando_gauntlet_entry_with_speed_booster ; Gauntlet: Entry with Speed Booster
    dw $078D, $8946  ; DDB
    dw $090F, $1001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09CE, $0009  ; Pbs
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_rando_gauntlet_first_half_with_hijump:
    dw #preset_rando_gauntlet_first_half ; Gauntlet: First Half
    dw $09A2, $1104  ; Equipped Items
    dw $09A4, $1104  ; Collected Items
    dw #$FFFF

preset_rando_gauntlet_second_half:
    dw #preset_rando_gauntlet_first_half_with_hijump ; Gauntlet: First Half with Hi-Jump
    dw $078D, $892E  ; DDB
    dw $079B, $92B3  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $03FF  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C2, $005A  ; Health
    dw $09CE, $0006  ; Pbs
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_gauntlet_second_half_with_hijump:
    dw #preset_rando_gauntlet_second_half ; Gauntlet: Second Half
    dw $09A2, $1104  ; Equipped Items
    dw $09A4, $1104  ; Collected Items
    dw #$FFFF

preset_rando_gauntlet_halfway_escape:
    dw #preset_rando_gauntlet_second_half_with_hijump ; Gauntlet: Second Half with Hi-Jump
    dw $078D, $8952  ; DDB
    dw $079B, $965B  ; MDB
    dw $090F, $BFFF  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $6FFF  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C2, $0063  ; Health
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $05DB  ; Samus X
    dw $D870, $00A0  ; Items
    dw #$FFFF

preset_rando_gauntlet_halfway_with_hijump:
    dw #preset_rando_gauntlet_halfway_escape ; Gauntlet: Halfway Escape
    dw $09A2, $1104  ; Equipped Items
    dw $09A4, $1104  ; Collected Items
    dw #$FFFF

preset_rando_gauntlet_quickdrops:
    dw #preset_rando_gauntlet_halfway_with_hijump ; Gauntlet: Halfway with Hi-Jump
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C2, $0046  ; Health
    dw $09CE, $0002  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw #$FFFF

