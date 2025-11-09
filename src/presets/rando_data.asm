
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

preset_rando_crateria_billy_mays_return:
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
    dw #preset_rando_crateria_billy_mays_return ; Crateria: Billy Mays Return
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

preset_rando_gauntlet_halfway_return:
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
    dw #preset_rando_gauntlet_halfway_return ; Gauntlet: Halfway Return
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

preset_rando_green_brinstar_popeil_missiles_with_screw:
    dw #preset_rando_gauntlet_quickdrops ; Gauntlet: Quickdrops
    dw $078D, $8D5A  ; DDB
    dw $079B, $9C07  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $000C  ; Equipped Items
    dw $09A4, $000C  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $001D  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $008B  ; Samus X
    dw $0AFA, $00B9  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0042  ; Doors
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

preset_rando_green_brinstar_etecoon_supers:
    dw #preset_rando_green_brinstar_popeil_missiles_with_screw ; Green Brinstar: Popeil Missiles with Screw
    dw $078D, $8CBE  ; DDB
    dw $079B, $9FE5  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $A001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $000C  ; Equipped Items
    dw $09A4, $000C  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0042  ; Doors
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

preset_rando_green_brinstar_over_dachora_pit:
    dw #preset_rando_green_brinstar_etecoon_supers ; Green Brinstar: Etecoon Supers
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $D001  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $2004  ; Equipped Items
    dw $09A4, $2004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0225  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0046  ; Doors
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

preset_rando_green_brinstar_spore_spawn_fight:
    dw #preset_rando_green_brinstar_over_dachora_pit ; Green Brinstar: Over Dachora Pit
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $6FFF  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $0004  ; Equipped Items
    dw $09A4, $0004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $0014  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $03DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0446  ; Doors
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

preset_rando_green_brinstar_spore_spawn_backdoor:
    dw #preset_rando_green_brinstar_spore_spawn_fight ; Green Brinstar: Spore Spawn Fight
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0540  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $03F0  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $0004  ; Equipped Items
    dw $09A4, $0004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0389  ; Samus X
    dw $0AFA, $05AB  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0446  ; Doors
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

preset_rando_green_brinstar_wave_gate_glitch:
    dw #preset_rando_green_brinstar_spore_spawn_backdoor ; Green Brinstar: Spore Spawn Backdoor
    dw $078D, $8E1A  ; DDB
    dw $079B, $A130  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $0004  ; Equipped Items
    dw $09A4, $0004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $004F  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $0006  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0002  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $01BB  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0546  ; Doors
    dw $D8B6, $0044  ; Doors
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

preset_rando_green_brinstar_wave_gate_with_hijump:
    dw #preset_rando_green_brinstar_wave_gate_glitch ; Green Brinstar: Wave Gate Glitch
    dw $09A2, $1104  ; Equipped Items
    dw $09A4, $1104  ; Collected Items
    dw #$FFFF

preset_rando_green_brinstar_gravless_speedway:
    dw #preset_rando_green_brinstar_wave_gate_with_hijump ; Green Brinstar: Wave Gate with Hi-Jump
    dw $078D, $8F8E  ; DDB
    dw $079B, $9D19  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0900  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $06C0  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $2004  ; Equipped Items
    dw $09A4, $2004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0053  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0003  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0001  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $098B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0C46  ; Doors
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

preset_rando_green_brinstar_blue_gate_glitch:
    dw #preset_rando_green_brinstar_gravless_speedway ; Green Brinstar: Gravless Speedway
    dw $078D, $8EFE  ; DDB
    dw $079B, $9E52  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $05B5  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0447  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0655  ; Samus X
    dw $0AFA, $03AB  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
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

preset_rando_red_brinstar_hero_shot:
    dw #preset_rando_green_brinstar_blue_gate_glitch ; Green Brinstar: Blue Gate Glitch
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $05C4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $000C  ; Doors
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

preset_rando_red_brinstar_alpha_power_bombs:
    dw #preset_rando_red_brinstar_hero_shot ; Red Brinstar: Hero Shot
    dw $078D, $908A  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $071C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $071C  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0043  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0044  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $200C  ; Doors
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

preset_rando_red_brinstar_beta_power_bombs:
    dw #preset_rando_red_brinstar_alpha_power_bombs ; Red Brinstar: Alpha Power Bombs
    dw $078D, $908A  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0303  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0303  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0055  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $280C  ; Doors
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

preset_rando_red_brinstar_early_xray_0tank:
    dw #preset_rando_red_brinstar_beta_power_bombs ; Red Brinstar: Beta Power Bombs
    dw $078D, $8F0A  ; DDB
    dw $079B, $A253  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0600  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0480  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $020C  ; Doors
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

preset_rando_red_brinstar_early_xray_2tank:
    dw #preset_rando_red_brinstar_early_xray_0tank ; Red Brinstar: Early X-Ray 0-Tank
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw #$FFFF

preset_rando_red_brinstar_xray_return_0tank:
    dw #preset_rando_red_brinstar_early_xray_2tank ; Red Brinstar: Early X-Ray 2-Tank
    dw $078D, $905A  ; DDB
    dw $079B, $A2CE  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $00D8  ; Screen X position in pixels
    dw $0913, $5401  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00A2  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0023  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0177  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
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

preset_rando_red_brinstar_xray_return_2tank:
    dw #preset_rando_red_brinstar_xray_return_0tank ; Red Brinstar: X-Ray Return 0-Tank
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw #$FFFF

preset_rando_red_brinstar_breaking_the_tube:
    dw #preset_rando_red_brinstar_xray_return_2tank ; Red Brinstar: X-Ray Return 2-Tank
    dw $078D, $A360  ; DDB
    dw $079B, $CEFB  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $001D  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $004B  ; Samus X
    dw $0AFA, $0199  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
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

preset_rando_red_brinstar_tube_jump_from_left:
    dw #preset_rando_red_brinstar_breaking_the_tube ; Red Brinstar: Breaking The Tube
    dw $078D, $A33C  ; DDB
    dw $079B, $CF54  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $3004  ; Equipped Items
    dw $09A4, $3004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0072  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
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

preset_rando_red_brinstar_left_jump_with_speed:
    dw #preset_rando_red_brinstar_tube_jump_from_left ; Red Brinstar: Tube Jump From Left
    dw $09A2, $3004  ; Equipped Items
    dw $09A4, $3004  ; Collected Items
    dw #$FFFF

preset_rando_red_brinstar_tube_jump_from_right:
    dw #preset_rando_red_brinstar_left_jump_with_speed ; Red Brinstar: Left Jump with Speed
    dw $078D, $A348  ; DDB
    dw $079B, $CF80  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $3004  ; Equipped Items
    dw $09A4, $3004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $008D  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
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

preset_rando_red_brinstar_right_jump_with_speed:
    dw #preset_rando_red_brinstar_tube_jump_from_right ; Red Brinstar: Tube Jump From Right
    dw $09A2, $3004  ; Equipped Items
    dw $09A4, $3004  ; Collected Items
    dw #$FFFF

preset_rando_crocomire_low_ammo_fight:
    dw #preset_rando_red_brinstar_right_jump_with_speed ; Red Brinstar: Right Jump with Speed
    dw $078D, $93D2  ; DDB
    dw $079B, $A98D  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $3400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $3004  ; Equipped Items
    dw $09A4, $3004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0000  ; Supers
    dw $09CC, $0000  ; Max supers
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $039B  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $4000  ; Doors
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

preset_rando_crocomire_fight_with_charge:
    dw #preset_rando_crocomire_low_ammo_fight ; Crocomire: Low Ammo Fight
    dw $09A6, $1000  ; Equipped Beams
    dw $09A8, $1000  ; Collected Beams
    dw #$FFFF

preset_rando_crocomire_crocomire_etank:
    dw #preset_rando_crocomire_fight_with_charge ; Crocomire: Fight With Charge
    dw $078D, $93D2  ; DDB
    dw $079B, $A98D  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $051E  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $057E  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0002  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $4000  ; Doors
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

preset_rando_crocomire_etank_return:
    dw #preset_rando_crocomire_crocomire_etank ; Crocomire: Crocomire E-Tank
    dw $078D, $93D2  ; DDB
    dw $079B, $A98D  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $2400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $07C9  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0002  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0010  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $4000  ; Doors
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

preset_rando_crocomire_ripper_dboost:
    dw #preset_rando_crocomire_etank_return ; Crocomire: E-Tank Return
    dw $078D, $9432  ; DDB
    dw $079B, $A98D  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0002  ; Equipped Beams
    dw $09A8, $0002  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0002  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $4000  ; Doors
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

preset_rando_crocomire_green_gate_glitch:
    dw #preset_rando_crocomire_ripper_dboost ; Crocomire: Ripper D-Boost
    dw $078D, $9486  ; DDB
    dw $079B, $AB64  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $000A  ; Supers
    dw $09CC, $000A  ; Max supers
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $09D2, $0002  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $02D9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0002  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $4000  ; Doors
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

preset_rando_crocomire_jump_room_short_charge:
    dw #preset_rando_crocomire_green_gate_glitch ; Crocomire: Green Gate Glitch
    dw $078D, $949E  ; DDB
    dw $079B, $AB8F  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4FFF  ; Screen subpixel X position
    dw $0911, $05A4  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $043B  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $3004  ; Equipped Items
    dw $09A4, $3004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0000  ; Supers
    dw $09CC, $0000  ; Max supers
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0619  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0002  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $4000  ; Doors
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

preset_rando_crocomire_jump_room_ibj:
    dw #preset_rando_crocomire_jump_room_short_charge ; Crocomire: Jump Room Short Charge
    dw $078D, $949E  ; DDB
    dw $079B, $AB8F  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $002E  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $01EB  ; Screen Y position in pixels
    dw $0917, $0022  ; Layer 2 X position
    dw $0919, $01EB  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0000  ; Supers
    dw $09CC, $0000  ; Max supers
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $00A4  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $00BA  ; Samus X
    dw $0AFA, $027B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0002  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $4000  ; Doors
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

preset_rando_crocomire_ibj_with_hijump_boots:
    dw #preset_rando_crocomire_jump_room_ibj ; Crocomire: Jump Room IBJ
    dw $09A2, $1104  ; Equipped Items
    dw $09A4, $1104  ; Collected Items
    dw #$FFFF

preset_rando_four_bosses_kraid_2_3:
    dw #preset_rando_crocomire_ibj_with_hijump_boots ; Crocomire: IBJ with Hi-Jump Boots
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0024  ; Doors
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

preset_rando_four_bosses_kraid_all_missiles:
    dw #preset_rando_four_bosses_kraid_2_3 ; Four Bosses: Kraid 2+3
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $0014  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0000  ; Supers
    dw $09CC, $0000  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0024  ; Doors
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

preset_rando_four_bosses_phantoon_0tank:
    dw #preset_rando_four_bosses_kraid_all_missiles ; Four Bosses: Kraid All Missiles
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1006  ; Equipped Items
    dw $09A4, $1006  ; Collected Items
    dw $09A6, $1000  ; Equipped Beams
    dw $09A8, $1000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000D  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09CA, $0002  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0003  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $04DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $0090  ; Items
    dw $D872, $1400  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $3001  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0000  ; Doors
    dw $D8B6, $0004  ; Doors
    dw $D8B8, $0000  ; Doors
    dw $D8BA, $0000  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0030  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_four_bosses_phantoon_5_missiles:
    dw #preset_rando_four_bosses_phantoon_0tank ; Four Bosses: Phantoon 0-Tank
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1006  ; Equipped Items
    dw $09A4, $1006  ; Collected Items
    dw $09A6, $1000  ; Equipped Beams
    dw $09A8, $1000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $0005  ; Missiles
    dw $09C8, $0005  ; Max missiles
    dw $09CA, $0008  ; Supers
    dw $09CC, $000A  ; Max supers
    dw $09CE, $0003  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $04DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0001  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $0090  ; Items
    dw $D872, $1400  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $3001  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0000  ; Doors
    dw $D8B6, $0004  ; Doors
    dw $D8B8, $0000  ; Doors
    dw $D8BA, $0000  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0030  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_upper_norfair_ice_hellrun:
    dw #preset_rando_four_bosses_phantoon_5_missiles ; Four Bosses: Phantoon 5 Missiles
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $031B  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0254  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $038E  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0800  ; Doors
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

preset_rando_upper_norfair_ice_return:
    dw #preset_rando_upper_norfair_ice_hellrun ; Upper Norfair: Ice Hellrun
    dw $078D, $937E  ; DDB
    dw $079B, $A890  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0002  ; Equipped Beams
    dw $09A8, $0002  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $006E  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0003  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0001  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $00B9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0004  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0800  ; Doors
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

preset_rando_upper_norfair_crumble_shaft:
    dw #preset_rando_upper_norfair_ice_return ; Upper Norfair: Ice Return
    dw $078D, $92BE  ; DDB
    dw $079B, $A815  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $E301  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0003  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0800  ; Doors
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

preset_rando_upper_norfair_crumble_shaft_up:
    dw #preset_rando_upper_norfair_crumble_shaft ; Upper Norfair: Crumble Shaft
    dw $078D, $9396  ; DDB
    dw $079B, $A923  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2301  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0003  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0800  ; Doors
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

preset_rando_upper_norfair_cathedral_2tank_hijump:
    dw #preset_rando_upper_norfair_crumble_shaft_up ; Upper Norfair: Crumble Shaft Up
    dw $078D, $932A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0317  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0251  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1104  ; Equipped Items
    dw $09A4, $1104  ; Collected Items
    dw $09A6, $1001  ; Equipped Beams
    dw $09A8, $1001  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $00A3  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0800  ; Doors
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

preset_rando_upper_norfair_cathedral_3tank:
    dw #preset_rando_upper_norfair_cathedral_2tank_hijump ; Upper Norfair: Cathedral 2-Tank Hi-Jump
    dw $078D, $932A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0317  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0251  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $00A3  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0800  ; Doors
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

preset_rando_upper_norfair_mountain_to_kronic:
    dw #preset_rando_upper_norfair_cathedral_3tank ; Upper Norfair: Cathedral 3-Tank
    dw $078D, $96AE  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0002  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $02F9  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $023A  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0064  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $0100  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_upper_norfair_kronic_to_mountain:
    dw #preset_rando_upper_norfair_mountain_to_kronic ; Upper Norfair: Mountain To Kronic
    dw $078D, $967E  ; DDB
    dw $079B, $AF14  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $DFFF  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $5004  ; Equipped Items
    dw $09A4, $5004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $03DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $0100  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_upper_norfair_speedless_speedway:
    dw #preset_rando_upper_norfair_kronic_to_mountain ; Upper Norfair: Kronic To Mountain
    dw $078D, $97E6  ; DDB
    dw $079B, $AF72  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0007  ; Equipped Beams
    dw $09A8, $0007  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
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

preset_rando_upper_norfair_crocomire_escape:
    dw #preset_rando_upper_norfair_speedless_speedway ; Upper Norfair: Speedless Speedway
    dw $078D, $974A  ; DDB
    dw $079B, $A923  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $C980  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001E  ; Screen Y position in pixels
    dw $0917, $0900  ; Layer 2 X position
    dw $0919, $0016  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $3004  ; Equipped Items
    dw $09A4, $3004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $0007  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0002  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0C25  ; Samus X
    dw $0AFA, $008E  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
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

preset_rando_upper_norfair_bubble_mountain_up:
    dw #preset_rando_upper_norfair_crocomire_escape ; Upper Norfair: Crocomire Escape
    dw $078D, $959A  ; DDB
    dw $079B, $B0DD  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $3004  ; Equipped Items
    dw $09A4, $3004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $00AC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
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

preset_rando_upper_norfair_bubble_mountain_dboost:
    dw #preset_rando_upper_norfair_bubble_mountain_up ; Upper Norfair: Bubble Mountain Up
    dw $078D, $958E  ; DDB
    dw $079B, $B07A  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $017C  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $0009  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $0010  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_upper_norfair_norfair_reserve_2tank:
    dw #preset_rando_upper_norfair_bubble_mountain_dboost ; Upper Norfair: Bubble Mountain D-Boost
    dw $078D, $953A  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2C02  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $0018  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_upper_norfair_norfair_reserve_room:
    dw #preset_rando_upper_norfair_norfair_reserve_2tank ; Upper Norfair: Norfair Reserve 2-Tank
    dw $078D, $9552  ; DDB
    dw $079B, $AC83  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $00E9  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000F  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0045  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $8000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $0018  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_upper_norfair_norfair_reserve_return:
    dw #preset_rando_upper_norfair_norfair_reserve_room ; Upper Norfair: Norfair Reserve Room
    dw $078D, $9546  ; DDB
    dw $079B, $AC5A  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0001  ; Manual/Auto reserve tank
    dw $09C2, $007F  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000E  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0064  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $00A6  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $01C8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $A000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $0018  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_upper_norfair_bat_cave_farm:
    dw #preset_rando_upper_norfair_norfair_reserve_return ; Upper Norfair: Norfair Reserve Return
    dw $078D, $97AA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $7FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0003  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0002  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0043  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $0008  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0001  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $0010  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_upper_norfair_speed_booster_hellrun:
    dw #preset_rando_upper_norfair_bat_cave_farm ; Upper Norfair: Bat Cave Farm
    dw $078D, $958E  ; DDB
    dw $079B, $B07A  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0033  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0033  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0001  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $005C  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $0010  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_upper_norfair_speed_booster_return:
    dw #preset_rando_upper_norfair_speed_booster_hellrun ; Upper Norfair: Speed Booster Hellrun
    dw $078D, $95B2  ; DDB
    dw $079B, $AD1B  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $D800  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $00D6  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $00A9  ; Samus X
    dw $0AFA, $007B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0004  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $0030  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_upper_norfair_wave_beam_hellrun:
    dw #preset_rando_upper_norfair_speed_booster_return ; Upper Norfair: Speed Booster Return
    dw $078D, $97AA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $FFFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $017B  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $0010  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_upper_norfair_wave_beam_return:
    dw #preset_rando_upper_norfair_wave_beam_hellrun ; Upper Norfair: Wave Beam Hellrun
    dw $078D, $961E  ; DDB
    dw $079B, $ADDE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $00D7  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $000E  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $00A9  ; Samus X
    dw $0AFA, $007B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0018  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $00D0  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

preset_rando_upper_norfair_from_ln_hellrun:
    dw #preset_rando_upper_norfair_wave_beam_return ; Upper Norfair: Wave Beam Return
    dw $078D, $95FA  ; DDB
    dw $079B, $B656  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $1001  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $093F, $0000  ; Ceres escape flag
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0A76, $0000  ; Hyper beam
    dw $0AF6, $0125  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0801  ; Events
    dw $D822, $0000  ; Events
    dw $D828, $0004  ; Bosses
    dw $D82A, $0000  ; Bosses
    dw $D82C, $0000  ; Bosses
    dw $D82E, $0000  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D874, $0000  ; Items
    dw $D876, $0000  ; Items
    dw $D878, $0000  ; Items
    dw $D87A, $0000  ; Items
    dw $D87C, $0000  ; Items
    dw $D87E, $0000  ; Items
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $2C00  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $0010  ; Doors
    dw $D8BC, $0000  ; Doors
    dw $D8BE, $0000  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw $D8C4, $0000  ; Doors
    dw $D908, $0000  ; Map Stations
    dw $D90A, $0000  ; Map Stations
    dw $D90C, $0000  ; Map Stations
    dw #$FFFF

