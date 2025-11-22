
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
    dw $0913, $9000  ; Screen subpixel Y position
    dw $09A2, $000C  ; Equipped Items
    dw $09A4, $000C  ; Collected Items
    dw $09C2, $0063  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $0A1C, $001D  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0AF6, $008B  ; Samus X
    dw $0AFA, $00B9  ; Samus Y
    dw $D872, $140B  ; Items
    dw $D8B4, $0042  ; Doors
    dw #$FFFF

preset_rando_green_brinstar_etecoon_supers:
    dw #preset_rando_green_brinstar_popeil_missiles_with_screw ; Green Brinstar: Popeil Missiles with Screw
    dw $078D, $8CBE  ; DDB
    dw $079B, $9FE5  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $A001  ; Screen subpixel X position
    dw $0917, $0001  ; Layer 2 X position
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_green_brinstar_over_dachora_pit:
    dw #preset_rando_green_brinstar_etecoon_supers ; Green Brinstar: Etecoon Supers
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $D001  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09A2, $2004  ; Equipped Items
    dw $09A4, $2004  ; Collected Items
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0225  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8B4, $0046  ; Doors
    dw #$FFFF

preset_rando_green_brinstar_spore_spawn_fight:
    dw #preset_rando_green_brinstar_over_dachora_pit ; Green Brinstar: Over Dachora Pit
    dw $090F, $6FFF  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09A2, $0004  ; Equipped Items
    dw $09A4, $0004  ; Collected Items
    dw $09C6, $0014  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B4, $0446  ; Doors
    dw #$FFFF

preset_rando_green_brinstar_spore_spawn_backdoor:
    dw #preset_rando_green_brinstar_spore_spawn_fight ; Green Brinstar: Spore Spawn Fight
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0540  ; Screen Y position in pixels
    dw $0919, $03F0  ; Layer 2 Y position
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $0389  ; Samus X
    dw $0AFA, $05AB  ; Samus Y
    dw #$FFFF

preset_rando_green_brinstar_wave_gate_glitch:
    dw #preset_rando_green_brinstar_spore_spawn_backdoor ; Green Brinstar: Spore Spawn Backdoor
    dw $078D, $8E1A  ; DDB
    dw $079B, $A130  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $004F  ; Health
    dw $09C6, $0006  ; Missiles
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0002  ; Currently selected item
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $01BB  ; Samus Y
    dw $D8B4, $0546  ; Doors
    dw $D8B6, $0044  ; Doors
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
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0900  ; Screen Y position in pixels
    dw $0919, $06C0  ; Layer 2 Y position
    dw $09A2, $2004  ; Equipped Items
    dw $09A4, $2004  ; Collected Items
    dw $09C2, $0053  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $09D2, $0001  ; Currently selected item
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AFA, $098B  ; Samus Y
    dw $D8B4, $0C46  ; Doors
    dw $D8B6, $0004  ; Doors
    dw #$FFFF

preset_rando_green_brinstar_blue_gate_glitch:
    dw #preset_rando_green_brinstar_gravless_speedway ; Green Brinstar: Gravless Speedway
    dw $078D, $8EFE  ; DDB
    dw $079B, $9E52  ; MDB
    dw $0911, $05B5  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0447  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C2, $0063  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0655  ; Samus X
    dw $0AFA, $03AB  ; Samus Y
    dw $D8B4, $0646  ; Doors
    dw #$FFFF

preset_rando_red_brinstar_hero_shot:
    dw #preset_rando_green_brinstar_blue_gate_glitch ; Green Brinstar: Blue Gate Glitch
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $05C4  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B6, $000C  ; Doors
    dw #$FFFF

preset_rando_red_brinstar_alpha_power_bombs:
    dw #preset_rando_red_brinstar_hero_shot ; Red Brinstar: Hero Shot
    dw $078D, $908A  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $071C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $071C  ; Layer 2 Y position
    dw $09C2, $0043  ; Health
    dw $09CA, $0004  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0044  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D8B6, $200C  ; Doors
    dw #$FFFF

preset_rando_red_brinstar_beta_power_bombs:
    dw #preset_rando_red_brinstar_alpha_power_bombs ; Red Brinstar: Alpha Power Bombs
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0303  ; Screen Y position in pixels
    dw $0919, $0303  ; Layer 2 Y position
    dw $09C2, $0063  ; Health
    dw $0AF6, $0055  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D8B6, $280C  ; Doors
    dw #$FFFF

preset_rando_red_brinstar_early_xray_0tank:
    dw #preset_rando_red_brinstar_beta_power_bombs ; Red Brinstar: Beta Power Bombs
    dw $078D, $8F0A  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0600  ; Screen Y position in pixels
    dw $0919, $0480  ; Layer 2 Y position
    dw $09CA, $0005  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $003B  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D8B6, $020C  ; Doors
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
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $00D8  ; Screen X position in pixels
    dw $0913, $5401  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00A2  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0023  ; Health
    dw $09C4, $0063  ; Max health
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0177  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B6, $060C  ; Doors
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
    dw $07F5, $0005  ; Music Track
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09CA, $0005  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $001D  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0AF6, $004B  ; Samus X
    dw $0AFA, $0199  ; Samus Y
    dw #$FFFF

preset_rando_red_brinstar_tube_jump_from_left:
    dw #preset_rando_red_brinstar_breaking_the_tube ; Red Brinstar: Breaking The Tube
    dw $078D, $A33C  ; DDB
    dw $079B, $CF54  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0072  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $0801  ; Events
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
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $008D  ; Samus X
    dw $0AFA, $018B  ; Samus Y
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
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $3400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0001  ; Layer 2 Y position
    dw $09CA, $0000  ; Supers
    dw $09CC, $0000  ; Max supers
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $039B  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D8B8, $4000  ; Doors
    dw #$FFFF

preset_rando_crocomire_fight_with_charge:
    dw #preset_rando_crocomire_low_ammo_fight ; Crocomire: Low Ammo Fight
    dw $09A6, $1000  ; Equipped Beams
    dw $09A8, $1000  ; Collected Beams
    dw #$FFFF

preset_rando_crocomire_crocomire_etank:
    dw #preset_rando_crocomire_fight_with_charge ; Crocomire: Fight With Charge
    dw $07F3, $0015  ; Music Bank
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $051E  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $057E  ; Samus X
    dw $D82A, $0002  ; Bosses
    dw #$FFFF

preset_rando_crocomire_etank_return:
    dw #preset_rando_crocomire_crocomire_etank ; Crocomire: Crocomire E-Tank
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $2400  ; Screen subpixel Y position
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $07C9  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D876, $0010  ; Items
    dw #$FFFF

preset_rando_crocomire_ripper_dboost:
    dw #preset_rando_crocomire_etank_return ; Crocomire: E-Tank Return
    dw $078D, $9432  ; DDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A6, $0002  ; Equipped Beams
    dw $09A8, $0002  ; Collected Beams
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $0000  ; Items
    dw #$FFFF

preset_rando_crocomire_green_gate_glitch:
    dw #preset_rando_crocomire_ripper_dboost ; Crocomire: Ripper D-Boost
    dw $078D, $9486  ; DDB
    dw $079B, $AB64  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09CA, $000A  ; Supers
    dw $09CC, $000A  ; Max supers
    dw $09CE, $0000  ; Pbs
    dw $09D0, $0000  ; Max pbs
    dw $09D2, $0002  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $02D9  ; Samus X
    dw #$FFFF

preset_rando_crocomire_jump_room_short_charge:
    dw #preset_rando_crocomire_green_gate_glitch ; Crocomire: Green Gate Glitch
    dw $078D, $949E  ; DDB
    dw $079B, $AB8F  ; MDB
    dw $090F, $4FFF  ; Screen subpixel X position
    dw $0911, $05A4  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $043B  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $09A2, $3004  ; Equipped Items
    dw $09A4, $3004  ; Collected Items
    dw $09CA, $0000  ; Supers
    dw $09CC, $0000  ; Max supers
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0619  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_rando_crocomire_jump_room_ibj:
    dw #preset_rando_crocomire_jump_room_short_charge ; Crocomire: Jump Room Short Charge
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $002E  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0915, $01EB  ; Screen Y position in pixels
    dw $0917, $0022  ; Layer 2 X position
    dw $0919, $01EB  ; Layer 2 Y position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $0A1C, $00A4  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00BA  ; Samus X
    dw $0AFA, $027B  ; Samus Y
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
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D82A, $0000  ; Bosses
    dw $D8B8, $0024  ; Doors
    dw #$FFFF

preset_rando_four_bosses_kraid_all_missiles:
    dw #preset_rando_four_bosses_kraid_2_3 ; Four Bosses: Kraid 2+3
    dw $09C6, $0014  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0000  ; Supers
    dw $09CC, $0000  ; Max supers
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
    dw $09A2, $1006  ; Equipped Items
    dw $09A4, $1006  ; Collected Items
    dw $09A6, $1000  ; Equipped Beams
    dw $09A8, $1000  ; Collected Beams
    dw $09C6, $000D  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09CA, $0002  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0003  ; Pbs
    dw $0AF6, $04DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $0001  ; Events
    dw $D870, $0090  ; Items
    dw $D872, $1400  ; Items
    dw $D8B0, $3001  ; Doors
    dw $D8B4, $0000  ; Doors
    dw $D8B6, $0004  ; Doors
    dw $D8B8, $0000  ; Doors
    dw $D8C0, $0030  ; Doors
    dw #$FFFF

preset_rando_four_bosses_phantoon_5_missiles:
    dw #preset_rando_four_bosses_phantoon_0tank ; Four Bosses: Phantoon 0-Tank
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $0005  ; Missiles
    dw $09C8, $0005  ; Max missiles
    dw $09CA, $0008  ; Supers
    dw $09CC, $000A  ; Max supers
    dw #$FFFF

preset_rando_four_bosses_suitless_draygon:
    dw #preset_rando_four_bosses_phantoon_5_missiles ; Four Bosses: Phantoon 5 Missiles
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $090F, $5400  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01FD  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $017D  ; Layer 2 Y position
    dw $09A2, $5104  ; Equipped Items
    dw $09A4, $5106  ; Collected Items
    dw $09A6, $0002  ; Equipped Beams
    dw $09A8, $0002  ; Collected Beams
    dw $09C2, $0108  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $0014  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0012  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $09CE, $000F  ; Pbs
    dw $09D0, $0014  ; Max pbs
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D820, $0801  ; Events
    dw $D82C, $0002  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D872, $140B  ; Items
    dw $D882, $0100  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B4, $0646  ; Doors
    dw $D8B6, $060C  ; Doors
    dw $D8C0, $A000  ; Doors
    dw $D8C2, $0D00  ; Doors
    dw #$FFFF

preset_rando_four_bosses_grapple_escape_hijump:
    dw #preset_rando_four_bosses_suitless_draygon ; Four Bosses: Suitless Draygon
    dw $078D, $A840  ; DDB
    dw $079B, $DA60  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $9C00  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $03E7  ; Health
    dw $09C4, $03E7  ; Max health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $000B  ; Supers
    dw $09D2, $0004  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0198  ; Samus X
    dw $0AFA, $01BB  ; Samus Y
    dw $0B3F, $0004  ; Blue suit
    dw $D82C, $0003  ; Bosses
    dw #$FFFF

preset_rando_four_bosses_grapple_escape_hijumpless:
    dw #preset_rando_four_bosses_grapple_escape_hijump ; Four Bosses: Grapple Escape Hi-Jump
    dw $09A2, $5004  ; Equipped Items
    dw $09A4, $5006  ; Collected Items
    dw #$FFFF

preset_rando_four_bosses_double_springball_jump:
    dw #preset_rando_four_bosses_grapple_escape_hijumpless ; Four Bosses: Grapple Escape Hi-Jumpless
    dw $090F, $5800  ; Screen subpixel X position
    dw $0911, $00D8  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $09A2, $1104  ; Equipped Items
    dw $09A4, $1106  ; Collected Items
    dw $09C2, $03D8  ; Health
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0165  ; Samus X
    dw $0B3F, $0000  ; Blue suit
    dw #$FFFF

preset_rando_four_bosses_xray_climb:
    dw #preset_rando_four_bosses_double_springball_jump ; Four Bosses: Double Springball Jump
    dw $07F3, $001B  ; Music Bank
    dw $090F, $0400  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $09A2, $D100  ; Equipped Items
    dw $09A4, $D106  ; Collected Items
    dw $09C2, $00BD  ; Health
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01E8  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C2, $4D00  ; Doors
    dw #$FFFF

preset_rando_four_bosses_ridley_30_25_5_ammo:
    dw #preset_rando_four_bosses_xray_climb ; Four Bosses: X-Ray Climb
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09A2, $1005  ; Equipped Items
    dw $09A4, $1005  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C2, $0257  ; Health
    dw $09C4, $0257  ; Max health
    dw $09C6, $001E  ; Missiles
    dw $09C8, $001E  ; Max missiles
    dw $09CA, $0019  ; Supers
    dw $09CC, $0019  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D82C, $0000  ; Bosses
    dw $D882, $0000  ; Items
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $D100  ; Doors
    dw $D8BC, $0001  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D8C2, $0000  ; Doors
    dw #$FFFF

preset_rando_four_bosses_ridley_10_20_15_ammo:
    dw #preset_rando_four_bosses_ridley_30_25_5_ammo ; Four Bosses: Ridley 30+25+5 Ammo
    dw $09A2, $1025  ; Equipped Items
    dw $09A4, $1025  ; Collected Items
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0014  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $09CE, $000F  ; Pbs
    dw $09D0, $000F  ; Max pbs
    dw #$FFFF

preset_rando_four_bosses_ridley_low_hp:
    dw #preset_rando_four_bosses_ridley_10_20_15_ammo ; Four Bosses: Ridley 10+20+15 Ammo
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09C6, $001E  ; Missiles
    dw $09C8, $001E  ; Max missiles
    dw $09CA, $001E  ; Supers
    dw $09CC, $001E  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw #$FFFF

preset_rando_four_bosses_ridley_low_ice:
    dw #preset_rando_four_bosses_ridley_low_hp ; Four Bosses: Ridley Low HP
    dw $09A6, $1002  ; Equipped Beams
    dw $09A8, $1002  ; Collected Beams
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $000A  ; Supers
    dw $09CC, $000A  ; Max supers
    dw #$FFFF

preset_rando_four_bosses_ridley_suitless:
    dw #preset_rando_four_bosses_ridley_low_ice ; Four Bosses: Ridley Low Ice
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C0, $0001  ; Manual/Auto reserve tank
    dw $09C2, $0383  ; Health
    dw $09C4, $0383  ; Max health
    dw $09C6, $0019  ; Missiles
    dw $09C8, $0019  ; Max missiles
    dw $09CA, $0028  ; Supers
    dw $09CC, $0028  ; Max supers
    dw $09CE, $0019  ; Pbs
    dw $09D0, $0019  ; Max pbs
    dw $09D4, $0064  ; Max reserves
    dw $09D6, $0064  ; Reserves
    dw #$FFFF

preset_rando_upper_norfair_ice_hellrun:
    dw #preset_rando_four_bosses_ridley_suitless ; Four Bosses: Ridley Suitless
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $031B  ; Screen Y position in pixels
    dw $0919, $0254  ; Layer 2 Y position
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AFA, $038E  ; Samus Y
    dw $D8B8, $0800  ; Doors
    dw $D8BA, $0000  ; Doors
    dw $D8BC, $0000  ; Doors
    dw #$FFFF

preset_rando_upper_norfair_ice_return:
    dw #preset_rando_upper_norfair_ice_hellrun ; Upper Norfair: Ice Hellrun
    dw $078D, $937E  ; DDB
    dw $079B, $A890  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A6, $0002  ; Equipped Beams
    dw $09A8, $0002  ; Collected Beams
    dw $09C2, $006E  ; Health
    dw $09CA, $0005  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $09D2, $0001  ; Currently selected item
    dw $0AF6, $00B9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D876, $0004  ; Items
    dw #$FFFF

preset_rando_upper_norfair_crumble_shaft:
    dw #preset_rando_upper_norfair_ice_return ; Upper Norfair: Ice Return
    dw $078D, $92BE  ; DDB
    dw $079B, $A815  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $E301  ; Screen subpixel X position
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C2, $00C7  ; Health
    dw $09CA, $0004  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D876, $0000  ; Items
    dw #$FFFF

preset_rando_upper_norfair_crumble_shaft_up:
    dw #preset_rando_upper_norfair_crumble_shaft ; Upper Norfair: Crumble Shaft
    dw $078D, $9396  ; DDB
    dw $079B, $A923  ; MDB
    dw $090F, $2301  ; Screen subpixel X position
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_upper_norfair_cathedral_2tank_hijump:
    dw #preset_rando_upper_norfair_crumble_shaft_up ; Upper Norfair: Crumble Shaft Up
    dw $078D, $932A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0317  ; Screen Y position in pixels
    dw $0919, $0251  ; Layer 2 Y position
    dw $09A2, $1104  ; Equipped Items
    dw $09A4, $1104  ; Collected Items
    dw $09A6, $1001  ; Equipped Beams
    dw $09A8, $1001  ; Collected Beams
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A3  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_rando_upper_norfair_cathedral_3tank:
    dw #preset_rando_upper_norfair_cathedral_2tank_hijump ; Upper Norfair: Cathedral 2-Tank Hi-Jump
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw #$FFFF

preset_rando_upper_norfair_mountain_to_kronic:
    dw #preset_rando_upper_norfair_cathedral_3tank ; Upper Norfair: Cathedral 3-Tank
    dw $078D, $96AE  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0002  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $02F9  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $023A  ; Layer 2 Y position
    dw $09C2, $00C7  ; Health
    dw $09C4, $00C7  ; Max health
    dw $09CA, $0005  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0064  ; Samus X
    dw $D8B8, $0E00  ; Doors
    dw $D8BA, $0100  ; Doors
    dw #$FFFF

preset_rando_upper_norfair_kronic_to_mountain:
    dw #preset_rando_upper_norfair_mountain_to_kronic ; Upper Norfair: Mountain To Kronic
    dw $078D, $967E  ; DDB
    dw $079B, $AF14  ; MDB
    dw $090F, $DFFF  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $5004  ; Equipped Items
    dw $09A4, $5004  ; Collected Items
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $03DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_upper_norfair_speedless_speedway:
    dw #preset_rando_upper_norfair_kronic_to_mountain ; Upper Norfair: Kronic To Mountain
    dw $078D, $97E6  ; DDB
    dw $079B, $AF72  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0007  ; Equipped Beams
    dw $09A8, $0007  ; Collected Beams
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $D8BA, $0000  ; Doors
    dw #$FFFF

preset_rando_upper_norfair_crocomire_escape:
    dw #preset_rando_upper_norfair_speedless_speedway ; Upper Norfair: Speedless Speedway
    dw $078D, $974A  ; DDB
    dw $079B, $A923  ; MDB
    dw $090F, $C980  ; Screen subpixel X position
    dw $0911, $0C00  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001E  ; Screen Y position in pixels
    dw $0917, $0900  ; Layer 2 X position
    dw $0919, $0016  ; Layer 2 Y position
    dw $09A2, $3004  ; Equipped Items
    dw $09A4, $3004  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C6, $0007  ; Missiles
    dw $09D2, $0002  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0C25  ; Samus X
    dw $0AFA, $008E  ; Samus Y
    dw #$FFFF

preset_rando_upper_norfair_bubble_mountain_up:
    dw #preset_rando_upper_norfair_crocomire_escape ; Upper Norfair: Crocomire Escape
    dw $078D, $959A  ; DDB
    dw $079B, $B0DD  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $000A  ; Missiles
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00AC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_upper_norfair_bubble_mountain_dboost:
    dw #preset_rando_upper_norfair_bubble_mountain_up ; Upper Norfair: Bubble Mountain Up
    dw $078D, $958E  ; DDB
    dw $079B, $B07A  ; MDB
    dw $090F, $F000  ; Screen subpixel X position
    dw $0913, $B400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C2, $017C  ; Health
    dw $09C6, $0009  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8BA, $0010  ; Doors
    dw #$FFFF

preset_rando_upper_norfair_norfair_reserve_2tank:
    dw #preset_rando_upper_norfair_bubble_mountain_dboost ; Upper Norfair: Bubble Mountain D-Boost
    dw $078D, $953A  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $2001  ; Screen subpixel X position
    dw $0913, $2C02  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8BA, $0018  ; Doors
    dw #$FFFF

preset_rando_upper_norfair_norfair_reserve_room:
    dw #preset_rando_upper_norfair_norfair_reserve_2tank ; Upper Norfair: Norfair Reserve 2-Tank
    dw $078D, $9552  ; DDB
    dw $079B, $AC83  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0913, $9800  ; Screen subpixel Y position
    dw $09C2, $00E9  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $0AF6, $0045  ; Samus X
    dw $D876, $8000  ; Items
    dw #$FFFF

preset_rando_upper_norfair_norfair_reserve_return:
    dw #preset_rando_upper_norfair_norfair_reserve_room ; Upper Norfair: Norfair Reserve Room
    dw $078D, $9546  ; DDB
    dw $079B, $AC5A  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C0, $0001  ; Manual/Auto reserve tank
    dw $09C2, $007F  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09D4, $0064  ; Max reserves
    dw $0A1C, $00A6  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01C8  ; Samus X
    dw $D876, $A000  ; Items
    dw #$FFFF

preset_rando_upper_norfair_bat_cave_farm:
    dw #preset_rando_upper_norfair_norfair_reserve_return ; Upper Norfair: Norfair Reserve Return
    dw $078D, $97AA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $7FFF  ; Screen subpixel X position
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0003  ; Screen Y position in pixels
    dw $0919, $0002  ; Layer 2 Y position
    dw $09C0, $0000  ; Manual/Auto reserve tank
    dw $09C2, $0043  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $0008  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0001  ; Currently selected item
    dw $09D4, $0000  ; Max reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0AF6, $01DB  ; Samus X
    dw $D876, $0000  ; Items
    dw $D8BA, $0010  ; Doors
    dw #$FFFF

preset_rando_upper_norfair_speed_booster_hellrun:
    dw #preset_rando_upper_norfair_bat_cave_farm ; Upper Norfair: Bat Cave Farm
    dw $078D, $958E  ; DDB
    dw $079B, $B07A  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0033  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0033  ; Layer 2 Y position
    dw $09C2, $018F  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CE, $0005  ; Pbs
    dw $0AF6, $005C  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw #$FFFF

preset_rando_upper_norfair_speed_booster_return:
    dw #preset_rando_upper_norfair_speed_booster_hellrun ; Upper Norfair: Speed Booster Hellrun
    dw $078D, $95B2  ; DDB
    dw $079B, $AD1B  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $D800  ; Screen subpixel X position
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00D6  ; Health
    dw $09CA, $0004  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00A9  ; Samus X
    dw $0AFA, $007B  ; Samus Y
    dw $D878, $0004  ; Items
    dw $D8BA, $0030  ; Doors
    dw #$FFFF

preset_rando_upper_norfair_wave_beam_hellrun:
    dw #preset_rando_upper_norfair_speed_booster_return ; Upper Norfair: Speed Booster Return
    dw $078D, $97AA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $FFFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09C2, $017B  ; Health
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D878, $0000  ; Items
    dw $D8BA, $0010  ; Doors
    dw #$FFFF

preset_rando_upper_norfair_wave_beam_return:
    dw #preset_rando_upper_norfair_wave_beam_hellrun ; Upper Norfair: Wave Beam Hellrun
    dw $078D, $961E  ; DDB
    dw $079B, $ADDE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00D7  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00A9  ; Samus X
    dw $0AFA, $007B  ; Samus Y
    dw $D878, $0018  ; Items
    dw $D8BA, $00D0  ; Doors
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
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0125  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $0000  ; Items
    dw $D8BA, $0010  ; Doors
    dw #$FFFF

preset_rando_lower_norfair_lava_spark:
    dw #preset_rando_upper_norfair_from_ln_hellrun ; Upper Norfair: From LN Hellrun
    dw $078D, $96D2  ; DDB
    dw $079B, $AE74  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $4FFF  ; Screen subpixel X position
    dw $0913, $6000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0200  ; Layer 2 Y position
    dw $09A2, $3125  ; Equipped Items
    dw $09A4, $3127  ; Collected Items
    dw $09A6, $100B  ; Equipped Beams
    dw $09A8, $100B  ; Collected Beams
    dw $09C6, $001E  ; Missiles
    dw $09C8, $001E  ; Max missiles
    dw $09CA, $0023  ; Supers
    dw $09CC, $0023  ; Max supers
    dw $09CE, $000A  ; Pbs
    dw $09D0, $000A  ; Max pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01E9  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $0100  ; Doors
    dw #$FFFF

preset_rando_lower_norfair_lava_dive_with_hijump:
    dw #preset_rando_lower_norfair_lava_spark ; Lower Norfair: Lava Spark
    dw $090F, $C000  ; Screen subpixel X position
    dw $09A2, $1105  ; Equipped Items
    dw $09A4, $1107  ; Collected Items
    dw $0AF6, $0169  ; Samus X
    dw #$FFFF

preset_rando_lower_norfair_lava_dive_with_gravity:
    dw #preset_rando_lower_norfair_lava_dive_with_hijump ; Lower Norfair: Lava Dive with Hi-Jump
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $09A2, $1025  ; Equipped Items
    dw $09A4, $1027  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C2, $031F  ; Health
    dw $09C4, $031F  ; Max health
    dw #$FFFF

preset_rando_lower_norfair_lava_dive:
    dw #preset_rando_lower_norfair_lava_dive_with_gravity ; Lower Norfair: Lava Dive with Gravity
    dw $09A2, $1005  ; Equipped Items
    dw $09A4, $1007  ; Collected Items
    dw #$FFFF

preset_rando_lower_norfair_fast_pillars:
    dw #preset_rando_lower_norfair_lava_dive ; Lower Norfair: Lava Dive
    dw $078D, $989A  ; DDB
    dw $079B, $B3A5  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $090F, $3580  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09A2, $3205  ; Equipped Items
    dw $09A4, $3207  ; Collected Items
    dw $09C2, $01F3  ; Health
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw #$FFFF

preset_rando_lower_norfair_green_gate_glitch:
    dw #preset_rando_lower_norfair_fast_pillars ; Lower Norfair: Fast Pillars
    dw $090F, $0000  ; Screen subpixel X position
    dw $09A2, $1005  ; Equipped Items
    dw $09A4, $1007  ; Collected Items
    dw $09D2, $0002  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0085  ; Samus X
    dw $0AFA, $029B  ; Samus Y
    dw #$FFFF

preset_rando_lower_norfair_screw_attack_escape:
    dw #preset_rando_lower_norfair_green_gate_glitch ; Lower Norfair: Green Gate Glitch
    dw $078D, $9A7A  ; DDB
    dw $079B, $B305  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01EE  ; Health
    dw $09CA, $0022  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D878, $8000  ; Items
    dw #$FFFF

preset_rando_lower_norfair_worst_room_in_the_game:
    dw #preset_rando_lower_norfair_screw_attack_escape ; Lower Norfair: Screw Attack Escape
    dw $078D, $998A  ; DDB
    dw $079B, $B457  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0917, $0240  ; Layer 2 X position
    dw $09C2, $01CF  ; Health
    dw $09CA, $0023  ; Supers
    dw $09CE, $0008  ; Pbs
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $03DB  ; Samus X
    dw $D878, $0000  ; Items
    dw #$FFFF

preset_rando_lower_norfair_metal_pirates:
    dw #preset_rando_lower_norfair_worst_room_in_the_game ; Lower Norfair: Worst Room In The Game
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $09C2, $0144  ; Health
    dw $09CA, $0018  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0002  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0161  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $C100  ; Doors
    dw #$FFFF

preset_rando_lower_norfair_reverse_amphitheatre:
    dw #preset_rando_lower_norfair_metal_pirates ; Lower Norfair: Metal Pirates
    dw $078D, $99A2  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $B500  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01F3  ; Health
    dw $09CA, $0019  ; Supers
    dw $09CE, $0007  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8BA, $0100  ; Doors
    dw #$FFFF

preset_rando_lower_norfair_three_musketeers:
    dw #preset_rando_lower_norfair_reverse_amphitheatre ; Lower Norfair: Reverse Amphitheatre
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0919, $0015  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0070  ; Samus X
    dw #$FFFF

preset_rando_lower_norfair_back_to_back_hellrun:
    dw #preset_rando_lower_norfair_three_musketeers ; Lower Norfair: Three Musketeers
    dw $078D, $9A4A  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $EC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $100C  ; Equipped Items
    dw $09A4, $100C  ; Collected Items
    dw $09C2, $031F  ; Health
    dw $09CA, $0028  ; Supers
    dw $09CC, $0028  ; Max supers
    dw $09CE, $0014  ; Pbs
    dw $09D0, $0014  ; Max pbs
    dw $09D4, $0064  ; Max reserves
    dw $09D6, $0064  ; Reserves
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $05DB  ; Samus X
    dw #$FFFF

preset_rando_west_maridia_crab_hole_gravity_jump:
    dw #preset_rando_lower_norfair_back_to_back_hellrun ; Lower Norfair: Back To Back Hellrun
    dw $078D, $A510  ; DDB
    dw $079B, $CF80  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $09A2, $3005  ; Equipped Items
    dw $09A4, $3005  ; Collected Items
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $09D4, $0000  ; Max reserves
    dw $09D6, $0000  ; Reserves
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0390  ; Samus X
    dw $D8B8, $0000  ; Doors
    dw $D8BA, $0000  ; Doors
    dw $D8C0, $2000  ; Doors
    dw #$FFFF

preset_rando_west_maridia_crab_hole_double_sbj:
    dw #preset_rando_west_maridia_crab_hole_gravity_jump ; West Maridia: Crab Hole Gravity Jump
    dw $078D, $A390  ; DDB
    dw $079B, $D21C  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09A2, $3105  ; Equipped Items
    dw $09A4, $3107  ; Collected Items
    dw $0AF6, $0079  ; Samus X
    dw $0AFA, $01AB  ; Samus Y
    dw #$FFFF

preset_rando_west_maridia_gate_glitch_suitless:
    dw #preset_rando_west_maridia_crab_hole_double_sbj ; West Maridia: Crab Hole Double SBJ
    dw $078D, $A3A8  ; DDB
    dw $079B, $D08A  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $A400  ; Screen subpixel X position
    dw $0911, $0077  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0059  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $5106  ; Equipped Items
    dw $09A4, $5106  ; Collected Items
    dw $09A6, $0002  ; Equipped Beams
    dw $09A8, $0002  ; Collected Beams
    dw $09CA, $000A  ; Supers
    dw $09CC, $000A  ; Max supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00F5  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF

preset_rando_west_maridia_mainstreet_suitless:
    dw #preset_rando_west_maridia_gate_glitch_suitless ; West Maridia: Gate Glitch Suitless
    dw $090F, $AE00  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_west_maridia_mainstreet_short_charge:
    dw #preset_rando_west_maridia_mainstreet_suitless ; West Maridia: Mainstreet Suitless
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $071F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0557  ; Layer 2 Y position
    dw $09A2, $3024  ; Equipped Items
    dw $09A4, $3024  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $019B  ; Samus X
    dw $0AFA, $07BB  ; Samus Y
    dw $D8C0, $0000  ; Doors
    dw #$FFFF

preset_rando_west_maridia_mt_everest_suitless:
    dw #preset_rando_west_maridia_mainstreet_short_charge ; West Maridia: Mainstreet Short Charge
    dw $078D, $A414  ; DDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0919, $0015  ; Layer 2 Y position
    dw $09A2, $5104  ; Equipped Items
    dw $09A4, $5104  ; Collected Items
    dw $09A6, $0002  ; Equipped Beams
    dw $09A8, $0002  ; Collected Beams
    dw $09CE, $0005  ; Pbs
    dw $09D2, $0004  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $2000  ; Doors
    dw #$FFFF

preset_rando_west_maridia_mt_everest_gravity_jump:
    dw #preset_rando_west_maridia_mt_everest_suitless ; West Maridia: Mt. Everest Suitless
    dw $078D, $A3C0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $01A3  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $019B  ; Screen Y position in pixels
    dw $0917, $013A  ; Layer 2 X position
    dw $0919, $0134  ; Layer 2 Y position
    dw $09A2, $1024  ; Equipped Items
    dw $09A4, $1024  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0027  ; Samus position/state
    dw $0A1E, $0508  ; More position/state
    dw $0AF6, $0208  ; Samus X
    dw $0AFA, $0230  ; Samus Y
    dw #$FFFF

preset_rando_west_maridia_mt_everest_1st_wall_jump:
    dw #preset_rando_west_maridia_mt_everest_gravity_jump ; West Maridia: Mt. Everest Gravity Jump
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $036D  ; Screen X position in pixels
    dw $0915, $024B  ; Screen Y position in pixels
    dw $0917, $0291  ; Layer 2 X position
    dw $0919, $01B8  ; Layer 2 Y position
    dw $09A6, $0002  ; Equipped Beams
    dw $09A8, $0002  ; Collected Beams
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $040C  ; Samus X
    dw $0AFA, $02DB  ; Samus Y
    dw #$FFFF

preset_rando_west_maridia_mt_everest_2nd_wall_jump:
    dw #preset_rando_west_maridia_mt_everest_1st_wall_jump ; West Maridia: Mt. Everest 1st Wall Jump
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $04A0  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0378  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $053F  ; Samus X
    dw $0AFA, $01BB  ; Samus Y
    dw #$FFFF

preset_rando_west_maridia_crab_shaft_suitless:
    dw #preset_rando_west_maridia_mt_everest_2nd_wall_jump ; West Maridia: Mt. Everest 2nd Wall Jump
    dw $090F, $57A2  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $61C0  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $7104  ; Equipped Items
    dw $09A4, $7104  ; Collected Items
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $05DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_west_maridia_crab_shaft_entry:
    dw #preset_rando_west_maridia_crab_shaft_suitless ; West Maridia: Crab Shaft Suitless
    dw $078D, $A4C8  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0104  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0104  ; Layer 2 Y position
    dw $09A2, $7004  ; Equipped Items
    dw $09A4, $7006  ; Collected Items
    dw $09CA, $0004  ; Supers
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C0, $A000  ; Doors
    dw #$FFFF

preset_rando_west_maridia_mama_turtle_unmorph_entry:
    dw #preset_rando_west_maridia_crab_shaft_entry ; West Maridia: Crab Shaft Entry
    dw $078D, $A3C0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0106  ; Screen X position in pixels
    dw $0915, $031F  ; Screen Y position in pixels
    dw $0917, $00C4  ; Layer 2 X position
    dw $0919, $0257  ; Layer 2 Y position
    dw $09A2, $7104  ; Equipped Items
    dw $09A4, $7104  ; Collected Items
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0041  ; Samus position/state
    dw $0A1E, $0404  ; More position/state
    dw $0AF6, $01A6  ; Samus X
    dw $0AFA, $03C3  ; Samus Y
    dw $D8C0, $2000  ; Doors
    dw #$FFFF

preset_rando_west_maridia_mama_turtle_double_sbj:
    dw #preset_rando_west_maridia_mama_turtle_unmorph_entry ; West Maridia: Mama Turtle Unmorph Entry
    dw $078D, $A444  ; DDB
    dw $079B, $D017  ; MDB
    dw $0911, $005B  ; Screen X position in pixels
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $00E6  ; Screen Y position in pixels
    dw $0917, $0044  ; Layer 2 X position
    dw $0919, $00AC  ; Layer 2 Y position
    dw $09A4, $7106  ; Collected Items
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00BB  ; Samus X
    dw $0AFA, $0150  ; Samus Y
    dw #$FFFF

preset_rando_west_maridia_mama_turtle_spark:
    dw #preset_rando_west_maridia_mama_turtle_double_sbj ; West Maridia: Mama Turtle Double SBJ
    dw $090F, $D400  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $020F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $018B  ; Layer 2 Y position
    dw $09A2, $3024  ; Equipped Items
    dw $09A4, $3024  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09CA, $0003  ; Supers
    dw $0AF6, $01DF  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C0, $0000  ; Doors
    dw #$FFFF

preset_rando_west_maridia_mama_turtle_ibj:
    dw #preset_rando_west_maridia_mama_turtle_spark ; West Maridia: Mama Turtle Spark
    dw $078D, $A408  ; DDB
    dw $090F, $AD80  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09A2, $1024  ; Equipped Items
    dw $09A4, $1026  ; Collected Items
    dw $09CA, $0005  ; Supers
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $03DB  ; Samus X
    dw $D8C0, $4000  ; Doors
    dw #$FFFF

preset_rando_east_maridia_early_suitless_escape:
    dw #preset_rando_west_maridia_mama_turtle_ibj ; West Maridia: Mama Turtle IBJ
    dw $078D, $A4C8  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $F800  ; Screen subpixel X position
    dw $0911, $000F  ; Screen X position in pixels
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $013D  ; Screen Y position in pixels
    dw $0917, $000B  ; Layer 2 X position
    dw $0919, $013D  ; Layer 2 Y position
    dw $09A2, $5004  ; Equipped Items
    dw $09A4, $5004  ; Collected Items
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0075  ; Samus X
    dw $0AFA, $01CB  ; Samus Y
    dw $D8C0, $A000  ; Doors
    dw #$FFFF

preset_rando_east_maridia_suitless_aqueduct:
    dw #preset_rando_east_maridia_early_suitless_escape ; East Maridia: Early Suitless Escape
    dw $078D, $A708  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $9400  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09A2, $5104  ; Equipped Items
    dw $09A4, $5104  ; Collected Items
    dw $09A6, $0002  ; Equipped Beams
    dw $09A8, $0002  ; Collected Beams
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_rando_east_maridia_snail_clip:
    dw #preset_rando_east_maridia_suitless_aqueduct ; East Maridia: Suitless Aqueduct
    dw $078D, $A738  ; DDB
    dw $079B, $D6FD  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $B001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $5024  ; Equipped Items
    dw $09A4, $5024  ; Collected Items
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_east_maridia_mochtroid_ice_clip:
    dw #preset_rando_east_maridia_snail_clip ; East Maridia: Snail Clip
    dw $078D, $A4C8  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0009  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0917, $0006  ; Layer 2 X position
    dw $09A2, $5124  ; Equipped Items
    dw $09A4, $5124  ; Collected Items
    dw $09C6, $0014  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0014  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $09CE, $0014  ; Pbs
    dw $09D0, $0014  ; Max pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0092  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_rando_east_maridia_bombs_cf_clip:
    dw #preset_rando_east_maridia_mochtroid_ice_clip ; East Maridia: Mochtroid Ice Clip
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $029B  ; Screen X position in pixels
    dw $0913, $EBFF  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $01F4  ; Layer 2 X position
    dw $0919, $001F  ; Layer 2 Y position
    dw $09A2, $5024  ; Equipped Items
    dw $09C2, $0028  ; Health
    dw $0A1C, $001D  ; Samus position/state
    dw $0A1E, $0408  ; More position/state
    dw $0AF6, $02FB  ; Samus X
    dw $0AFA, $00D9  ; Samus Y
    dw #$FFFF

preset_rando_east_maridia_suitless_cf_clip:
    dw #preset_rando_east_maridia_bombs_cf_clip ; East Maridia: Bombs CF Clip
    dw $0913, $3000  ; Screen subpixel Y position
    dw $09A2, $5004  ; Equipped Items
    dw $09A4, $5104  ; Collected Items
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AFA, $00CB  ; Samus Y
    dw #$FFFF

preset_rando_east_maridia_suitless_jump_morphs:
    dw #preset_rando_east_maridia_suitless_cf_clip ; East Maridia: Suitless CF Clip
    dw $078D, $A918  ; DDB
    dw $079B, $D7E4  ; MDB
    dw $090F, $DC00  ; Screen subpixel X position
    dw $0911, $02CB  ; Screen X position in pixels
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0218  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $5104  ; Equipped Items
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $0011  ; Missiles
    dw $09CA, $0001  ; Supers
    dw $09CE, $0007  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $032B  ; Samus X
    dw $0AFA, $004B  ; Samus Y
    dw $D82C, $0002  ; Bosses
    dw $D882, $0100  ; Items
    dw #$FFFF

preset_rando_east_maridia_suitless_halfie_climb:
    dw #preset_rando_east_maridia_suitless_jump_morphs ; East Maridia: Suitless Jump Morphs
    dw $090F, $E800  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $001C  ; Layer 2 Y position
    dw $09C6, $0014  ; Missiles
    dw $09CA, $0014  ; Supers
    dw $09CE, $0008  ; Pbs
    dw $0AF6, $06DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_east_maridia_suitless_colosseum:
    dw #preset_rando_east_maridia_suitless_halfie_climb ; East Maridia: Suitless Halfie Climb
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $FFFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw #$FFFF

preset_rando_east_maridia_suitless_return:
    dw #preset_rando_east_maridia_suitless_colosseum ; East Maridia: Suitless Colosseum
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $090F, $E800  ; Screen subpixel X position
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $09C2, $011C  ; Health
    dw $09CA, $0013  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0041  ; Samus X
    dw $D8C2, $0400  ; Doors
    dw #$FFFF

preset_rando_east_maridia_suitless_cac_alley:
    dw #preset_rando_east_maridia_suitless_return ; East Maridia: Suitless Return
    dw $078D, $A900  ; DDB
    dw $079B, $DA2B  ; MDB
    dw $090F, $1C00  ; Screen subpixel X position
    dw $0911, $0283  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0283  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09A2, $5304  ; Equipped Items
    dw $09A4, $5304  ; Collected Items
    dw $09C2, $018F  ; Health
    dw $09CA, $0014  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0316  ; Samus X
    dw $0AFA, $01AB  ; Samus Y
    dw $D82C, $0003  ; Bosses
    dw $D8C2, $1000  ; Doors
    dw #$FFFF

preset_rando_east_maridia_plasma_speed_booster:
    dw #preset_rando_east_maridia_suitless_cac_alley ; East Maridia: Suitless Cac Alley
    dw $078D, $A5DC  ; DDB
    dw $079B, $D27E  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $77FF  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $7024  ; Equipped Items
    dw $09A4, $7024  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C2, $0167  ; Health
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $8000  ; Items
    dw $D8C2, $1008  ; Doors
    dw #$FFFF

preset_rando_east_maridia_plasma_pseudoscrew:
    dw #preset_rando_east_maridia_plasma_speed_booster ; East Maridia: Plasma Speed Booster
    dw $09A2, $5224  ; Equipped Items
    dw $09A4, $5224  ; Collected Items
    dw $09A6, $1000  ; Equipped Beams
    dw $09A8, $1000  ; Collected Beams
    dw #$FFFF

preset_rando_east_maridia_shaktool_hijump_entry:
    dw #preset_rando_east_maridia_plasma_pseudoscrew ; East Maridia: Plasma Pseudo-Screw
    dw $078D, $A780  ; DDB
    dw $079B, $D4C2  ; MDB
    dw $090F, $FFFF  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $09A2, $5124  ; Equipped Items
    dw $09A4, $5124  ; Collected Items
    dw $09A6, $0002  ; Equipped Beams
    dw $09A8, $0002  ; Collected Beams
    dw $09C2, $00F9  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $000A  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0004  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0AF6, $02DB  ; Samus X
    dw $D82C, $0000  ; Bosses
    dw $D880, $0000  ; Items
    dw $D882, $0000  ; Items
    dw $D8C2, $0000  ; Doors
    dw #$FFFF

preset_rando_east_maridia_shaktool_suitless_entry:
    dw #preset_rando_east_maridia_shaktool_hijump_entry ; East Maridia: Shaktool Hi-Jump Entry
    dw $09A2, $5324  ; Equipped Items
    dw $09A4, $5324  ; Collected Items
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw #$FFFF

preset_rando_east_maridia_shaktool_puyo_ice_clip:
    dw #preset_rando_east_maridia_shaktool_suitless_entry ; East Maridia: Shaktool Suitless Entry
    dw $078D, $A690  ; DDB
    dw $079B, $D646  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09A2, $3324  ; Equipped Items
    dw $09A4, $3324  ; Collected Items
    dw $09A6, $1007  ; Equipped Beams
    dw $09A8, $1007  ; Collected Beams
    dw $09C6, $0014  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0014  ; Supers
    dw $09CC, $0014  ; Max supers
    dw $09CE, $0014  ; Pbs
    dw $09D0, $0014  ; Max pbs
    dw $0AF6, $00BE  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_rando_east_maridia_shaktool_cf_clip:
    dw #preset_rando_east_maridia_shaktool_puyo_ice_clip ; East Maridia: Shaktool Puyo Ice Clip
    dw $078D, $A78C  ; DDB
    dw $079B, $D69A  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0162  ; Screen Y position in pixels
    dw $0919, $0109  ; Layer 2 Y position
    dw $09C2, $002C  ; Health
    dw $0A1C, $0041  ; Samus position/state
    dw $0A1E, $0404  ; More position/state
    dw $0AF6, $0055  ; Samus X
    dw $0AFA, $01D9  ; Samus Y
    dw #$FFFF

preset_rando_wrecked_ship_east_ocean_with_springball:
    dw #preset_rando_east_maridia_shaktool_cf_clip ; East Maridia: Shaktool CF Clip
    dw $078D, $8A72  ; DDB
    dw $079B, $9552  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $090F, $A000  ; Screen subpixel X position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09A6, $0002  ; Equipped Beams
    dw $09A8, $0002  ; Collected Beams
    dw $09C2, $0063  ; Health
    dw $09C4, $0063  ; Max health
    dw $09C6, $000F  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $09CA, $0005  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $0001  ; Events
    dw $D82A, $0100  ; Bosses
    dw $D870, $0090  ; Items
    dw $D872, $1400  ; Items
    dw $D8B0, $3001  ; Doors
    dw $D8B4, $0000  ; Doors
    dw $D8B6, $0004  ; Doors
    dw $D8C0, $0878  ; Doors
    dw #$FFFF

preset_rando_wrecked_ship_east_ocean_with_ice:
    dw #preset_rando_wrecked_ship_east_ocean_with_springball ; Wrecked Ship: East Ocean with Springball
    dw $09A2, $1006  ; Equipped Items
    dw $09A4, $1006  ; Collected Items
    dw $09A6, $1000  ; Equipped Beams
    dw $09A8, $1000  ; Collected Beams
    dw #$FFFF

preset_rando_wrecked_ship_east_ocean_return:
    dw #preset_rando_wrecked_ship_east_ocean_with_ice ; Wrecked Ship: East Ocean with Ice
    dw $078D, $A258  ; DDB
    dw $079B, $CBD5  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $EFFF  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $0124  ; Screen Y position in pixels
    dw $0919, $00DB  ; Layer 2 Y position
    dw $09A2, $1306  ; Equipped Items
    dw $09A4, $1306  ; Collected Items
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_rando_wrecked_ship_wrecked_ship_etank:
    dw #preset_rando_wrecked_ship_east_ocean_return ; Wrecked Ship: East Ocean Return
    dw $090F, $5002  ; Screen subpixel X position
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0919, $0015  ; Layer 2 Y position
    dw $09A2, $1106  ; Equipped Items
    dw $09A4, $1106  ; Collected Items
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $002D  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_wrecked_ship_spiky_room_to_main_shaft:
    dw #preset_rando_wrecked_ship_wrecked_ship_etank ; Wrecked Ship: Wrecked Ship E-Tank
    dw $090F, $6C00  ; Screen subpixel X position
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $01F4  ; Screen Y position in pixels
    dw $0919, $0177  ; Layer 2 Y position
    dw $09A2, $1006  ; Equipped Items
    dw $09A4, $1006  ; Collected Items
    dw $09C6, $000D  ; Missiles
    dw $0AF6, $0024  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C0, $0078  ; Doors
    dw #$FFFF

preset_rando_wrecked_ship_spiky_room_to_east_ocean:
    dw #preset_rando_wrecked_ship_spiky_room_to_main_shaft ; Wrecked Ship: Spiky Room To Main Shaft
    dw $078D, $A204  ; DDB
    dw $079B, $CD5C  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0171  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_rando_wrecked_ship_sponge_bath:
    dw #preset_rando_wrecked_ship_spiky_room_to_east_ocean ; Wrecked Ship: Spiky Room To East Ocean
    dw $090F, $1800  ; Screen subpixel X position
    dw $0911, $00FA  ; Screen X position in pixels
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0917, $00BB  ; Layer 2 X position
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $015B  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw #$FFFF

preset_rando_wrecked_ship_attic:
    dw #preset_rando_wrecked_ship_sponge_bath ; Wrecked Ship: Sponge Bath
    dw $078D, $A2D0  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $09CA, $0004  ; Supers
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0466  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_rando_wrecked_ship_sky_missiles:
    dw #preset_rando_wrecked_ship_attic ; Wrecked Ship: Attic
    dw $078D, $A228  ; DDB
    dw $079B, $CA52  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $F3FF  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $001E  ; Layer 2 Y position
    dw $09C6, $000A  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $0178  ; Doors
    dw #$FFFF

preset_rando_tourian_metroids_1:
    dw #preset_rando_wrecked_ship_sky_missiles ; Wrecked Ship: Sky Missiles
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0001  ; Screen subpixel X position
    dw $0913, $C800  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $09A2, $2025  ; Equipped Items
    dw $09A4, $2025  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09C6, $001E  ; Missiles
    dw $09C8, $001E  ; Max missiles
    dw $09CA, $0041  ; Supers
    dw $09CC, $0041  ; Max supers
    dw $09CE, $000F  ; Pbs
    dw $09D0, $000F  ; Max pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0AFA, $038B  ; Samus Y
    dw $D820, $0401  ; Events
    dw $D828, $0100  ; Bosses
    dw $D82C, $0003  ; Bosses
    dw $D870, $00A0  ; Items
    dw $D8B0, $0000  ; Doors
    dw $D8B2, $6C00  ; Doors
    dw $D8C0, $0000  ; Doors
    dw $D90C, $0100  ; Map Stations
    dw #$FFFF

preset_rando_tourian_metroids_2:
    dw #preset_rando_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $0C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0180  ; Health
    dw $09C6, $002D  ; Missiles
    dw $09C8, $002D  ; Max missiles
    dw $09CA, $003C  ; Supers
    dw $09CC, $003C  ; Max supers
    dw $09CE, $000C  ; Pbs
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0001  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF

preset_rando_tourian_metroids_3:
    dw #preset_rando_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $0913, $6400  ; Screen subpixel Y position
    dw $0915, $00FF  ; Screen Y position in pixels
    dw $0919, $00BF  ; Layer 2 Y position
    dw $09C2, $018F  ; Health
    dw $09C6, $003C  ; Missiles
    dw $09C8, $003C  ; Max missiles
    dw $09CA, $0037  ; Supers
    dw $09CC, $0037  ; Max supers
    dw $09CE, $0009  ; Pbs
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D822, $0003  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF

preset_rando_tourian_metroids_4:
    dw #preset_rando_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0169  ; Health
    dw $09C6, $004B  ; Missiles
    dw $09C8, $004B  ; Max missiles
    dw $09CA, $0032  ; Supers
    dw $09CC, $0032  ; Max supers
    dw $09CE, $0006  ; Pbs
    dw $0AF6, $05DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0007  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF

preset_rando_tourian_blue_hoppers:
    dw #preset_rando_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $A9E4  ; DDB
    dw $079B, $DBCD  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $09C2, $017D  ; Health
    dw $09C6, $005A  ; Missiles
    dw $09C8, $005A  ; Max missiles
    dw $09CA, $002D  ; Supers
    dw $09CC, $002D  ; Max supers
    dw $09CE, $0003  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00B5  ; Samus X
    dw $0AFA, $01CB  ; Samus Y
    dw $D822, $000F  ; Events
    dw $D8C4, $000F  ; Doors
    dw #$FFFF

preset_rando_tourian_baby_skip:
    dw #preset_rando_tourian_blue_hoppers ; Tourian: Blue Hoppers
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $CFFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $332F  ; Equipped Items
    dw $09A4, $332F  ; Collected Items
    dw $09A6, $000B  ; Equipped Beams
    dw $09A8, $000F  ; Collected Beams
    dw $09C2, $015F  ; Health
    dw $09C6, $0069  ; Missiles
    dw $09C8, $0069  ; Max missiles
    dw $09CA, $0028  ; Supers
    dw $09CC, $0028  ; Max supers
    dw $0AF6, $01D9  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8C4, $002F  ; Doors
    dw #$FFFF

preset_rando_tourian_after_baby_skip:
    dw #preset_rando_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AA44  ; DDB
    dw $079B, $DCFF  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $7FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $8C00  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $09C6, $0078  ; Missiles
    dw $09C8, $0078  ; Max missiles
    dw $09CA, $0023  ; Supers
    dw $09CC, $0023  ; Max supers
    dw $09D2, $0002  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00B7  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw #$FFFF

preset_rando_tourian_ice_zeb_skip:
    dw #preset_rando_tourian_after_baby_skip ; Tourian: After Baby Skip
    dw $078D, $AAA4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $9800  ; Screen subpixel Y position
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0919, $0197  ; Layer 2 Y position
    dw $09A2, $0025  ; Equipped Items
    dw $09A4, $0025  ; Collected Items
    dw $09A6, $000A  ; Equipped Beams
    dw $09A8, $000E  ; Collected Beams
    dw $09C6, $0087  ; Missiles
    dw $09C8, $0087  ; Max missiles
    dw $09CA, $001B  ; Supers
    dw $09CC, $001E  ; Max supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF

preset_rando_tourian_speed_zeb_skip:
    dw #preset_rando_tourian_ice_zeb_skip ; Tourian: Ice Zeb Skip
    dw $090F, $2FFF  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021D  ; Screen Y position in pixels
    dw $0919, $0195  ; Layer 2 Y position
    dw $09A2, $2025  ; Equipped Items
    dw $09A4, $2025  ; Collected Items
    dw $09A6, $0000  ; Equipped Beams
    dw $09A8, $0000  ; Collected Beams
    dw $09C6, $0096  ; Missiles
    dw $09C8, $0096  ; Max missiles
    dw $09CA, $0016  ; Supers
    dw $09CC, $0019  ; Max supers
    dw $0AF6, $00D9  ; Samus X
    dw #$FFFF

preset_rando_tourian_mother_brain_all_missiles:
    dw #preset_rando_tourian_speed_zeb_skip ; Tourian: Speed Zeb Skip
    dw $078D, $AAC8  ; DDB
    dw $079B, $DD58  ; MDB
    dw $07F3, $0021  ; Music Bank
    dw $07F5, $0000  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $0025  ; Equipped Items
    dw $09A4, $0025  ; Collected Items
    dw $09C2, $0151  ; Health
    dw $09C6, $00B4  ; Missiles
    dw $09C8, $00C3  ; Max missiles
    dw $09CA, $0000  ; Supers
    dw $09CC, $000A  ; Max supers
    dw $09D2, $0001  ; Currently selected item
    dw $0AF6, $00CA  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D820, $0405  ; Events
    dw $D82C, $0203  ; Bosses
    dw #$FFFF

preset_rando_tourian_mother_brain_all_supers:
    dw #preset_rando_tourian_mother_brain_all_missiles ; Tourian: Mother Brain All Missiles
    dw $09C6, $0000  ; Missiles
    dw $09C8, $0000  ; Max missiles
    dw $09CA, $003C  ; Supers
    dw $09CC, $003C  ; Max supers
    dw #$FFFF

preset_rando_tourian_zebes_escape:
    dw #preset_rando_tourian_mother_brain_all_supers ; Tourian: Mother Brain All Supers
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $CC00  ; Screen subpixel Y position
    dw $09A6, $1009  ; Equipped Beams
    dw $09C2, $018F  ; Health
    dw $09C8, $00B4  ; Max missiles
    dw $09CA, $0000  ; Supers
    dw $09CC, $000F  ; Max supers
    dw $09CE, $0000  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0A76, $8000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $00C3  ; Samus Y
    dw $D820, $4405  ; Events
    dw #$FFFF

preset_rando_tourian_escape_room_3:
    dw #preset_rando_tourian_zebes_escape ; Tourian: Zebes Escape
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $090F, $9FFF  ; Screen subpixel X position
    dw $0913, $F400  ; Screen subpixel Y position
    dw $0915, $00F4  ; Screen Y position in pixels
    dw $0919, $00B7  ; Layer 2 Y position
    dw $09C2, $014C  ; Health
    dw $09C8, $00A5  ; Max missiles
    dw $09CC, $0014  ; Max supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DC  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_rando_tourian_escape_room_4:
    dw #preset_rando_tourian_escape_room_3 ; Tourian: Escape Room 3
    dw $078D, $AB04  ; DDB
    dw $079B, $DEA7  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0915, $001B  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0014  ; Layer 2 Y position
    dw $09C8, $0096  ; Max missiles
    dw $09CC, $0019  ; Max supers
    dw $0AF6, $05DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_rando_tourian_escape_climb:
    dw #preset_rando_tourian_escape_room_4 ; Tourian: Escape Room 4
    dw $078D, $AB1C  ; DDB
    dw $079B, $DEDE  ; MDB
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0111  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $00CC  ; Layer 2 Y position
    dw $09C2, $0149  ; Health
    dw $09C8, $00D2  ; Max missiles
    dw $09CC, $0005  ; Max supers
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $02DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_rando_tourian_escape_climb_with_hijump:
    dw #preset_rando_tourian_escape_climb ; Tourian: Escape Climb
    dw $09A2, $0125  ; Equipped Items
    dw $09A4, $0125  ; Collected Items
    dw #$FFFF

