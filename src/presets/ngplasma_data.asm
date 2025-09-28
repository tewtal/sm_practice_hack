
preset_ngplasma_ceres_station_ceres_elevator:
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
    dw $09A2, $F32F  ; Equipped Items
    dw $09A4, $F32F  ; Collected Items
    dw $09A6, $100B  ; Equipped Beams
    dw $09A8, $100F  ; Collected Beams
    dw $09C0, $0001  ; Manual/Auto reserve tank
    dw $09C2, $002C  ; Health
    dw $09C4, $05DB  ; Max health
    dw $09C6, $00E6  ; Missiles
    dw $09C8, $00E6  ; Max missiles
    dw $09CA, $0032  ; Supers
    dw $09CC, $0032  ; Max supers
    dw $09CE, $0032  ; Pbs
    dw $09D0, $0032  ; Max pbs
    dw $09D2, $0000  ; Currently selected item
    dw $09D4, $0190  ; Max reserves
    dw $09D6, $0190  ; Reserves
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

preset_ngplasma_ceres_station_magnet_stairs:
    dw #preset_ngplasma_ceres_station_ceres_elevator ; Ceres Station: Ceres Elevator
    dw $078D, $AB4C  ; DDB
    dw $079B, $DF8D  ; MDB
    dw $090F, $8700  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01B9  ; Samus X
    dw $0AF8, $9AFF  ; Samus subpixel X
    dw $0AFA, $009A  ; Samus Y
    dw $0AFC, $7800  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_ceres_station_ceres_ridley:
    dw #preset_ngplasma_ceres_station_magnet_stairs ; Ceres Station: Magnet Stairs
    dw $078D, $AB94  ; DDB
    dw $079B, $E06B  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $09CE, $0031  ; Pbs
    dw $0AF6, $01BE  ; Samus X
    dw $0AF8, $C1FF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_ceres_station_ceres_escape:
    dw #preset_ngplasma_ceres_station_ceres_ridley ; Ceres Station: Ceres Ridley
    dw $078D, $ABAC  ; DDB
    dw $079B, $E0B5  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $E001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $093F, $0002  ; Ceres escape flag
    dw $09C2, $0001  ; Health
    dw $09CE, $0030  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0034  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $D82E, $0001  ; Bosses
    dw #$FFFF

preset_ngplasma_ceres_station_magnet_stairs_escape:
    dw #preset_ngplasma_ceres_station_ceres_escape ; Ceres Station: Ceres Escape
    dw $078D, $ABA0  ; DDB
    dw $079B, $E021  ; MDB
    dw $090F, $6900  ; Screen subpixel X position
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $004A  ; Samus X
    dw $0AF8, $D100  ; Samus subpixel X
    dw $0AFA, $009E  ; Samus Y
    dw #$FFFF

preset_ngplasma_wrecked_ship_ship:
    dw #preset_ngplasma_ceres_station_magnet_stairs_escape ; Ceres Station: Magnet Stairs Escape
    dw $078D, $88FE  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $03D0  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $093F, $0000  ; Ceres escape flag
    dw $09C2, $05DB  ; Health
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0481  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $0440  ; Samus Y
    dw $0AFC, $8000  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_wrecked_ship_moat:
    dw #preset_ngplasma_wrecked_ship_ship ; Wrecked Ship: Ship
    dw $078D, $8AD2  ; DDB
    dw $079B, $948C  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $011A  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00D3  ; Layer 2 X position
    dw $09C6, $00E4  ; Missiles
    dw $09CA, $0031  ; Supers
    dw $09CE, $002F  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $01A7  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $00BB  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $D8B0, $2001  ; Doors
    dw #$FFFF

preset_ngplasma_wrecked_ship_ocean:
    dw #preset_ngplasma_wrecked_ship_moat ; Wrecked Ship: Moat
    dw $078D, $8A36  ; DDB
    dw $079B, $95FF  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C6, $00E6  ; Missiles
    dw $0AF6, $01B4  ; Samus X
    dw $0AF8, $43FF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_ngplasma_wrecked_ship_entering_wrecked_ship:
    dw #preset_ngplasma_wrecked_ship_ocean ; Wrecked Ship: Ocean
    dw $078D, $8AEA  ; DDB
    dw $079B, $93FE  ; MDB
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $041B  ; Screen Y position in pixels
    dw $0917, $0380  ; Layer 2 X position
    dw $09CA, $0030  ; Supers
    dw $0AF6, $076F  ; Samus X
    dw $0AF8, $93FF  ; Samus subpixel X
    dw $0AFA, $04AB  ; Samus Y
    dw $D8B0, $3001  ; Doors
    dw #$FFFF

preset_ngplasma_wrecked_ship_basement:
    dw #preset_ngplasma_wrecked_ship_entering_wrecked_ship ; Wrecked Ship: Entering Wrecked Ship
    dw $078D, $A1BC  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0693  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $04EE  ; Layer 2 Y position
    dw $09D2, $0002  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $04C8  ; Samus X
    dw $0AF8, $9BFF  ; Samus subpixel X
    dw $0AFA, $0743  ; Samus Y
    dw $0AFC, $B7FF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_wrecked_ship_phantoon:
    dw #preset_ngplasma_wrecked_ship_basement ; Wrecked Ship: Basement
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $0400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $002E  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $04CD  ; Samus X
    dw $0AF8, $DFFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $D8C0, $0030  ; Doors
    dw #$FFFF

preset_ngplasma_wrecked_ship_leaving_phantoon:
    dw #preset_ngplasma_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dw $078D, $A2AC  ; DDB
    dw $079B, $CD13  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09CA, $0030  ; Supers
    dw $09CE, $0030  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00B5  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $0AFA, $00BB  ; Samus Y
    dw $D82A, $0100  ; Bosses
    dw #$FFFF

preset_ngplasma_wrecked_ship_wrecked_ship_shaft:
    dw #preset_ngplasma_wrecked_ship_leaving_phantoon ; Wrecked Ship: Leaving Phantoon
    dw $078D, $A2C4  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0227  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $019D  ; Layer 2 X position
    dw $0AF6, $02C7  ; Samus X
    dw $0AF8, $5000  ; Samus subpixel X
    dw $0AFA, $006B  ; Samus Y
    dw $D8C0, $0070  ; Doors
    dw #$FFFF

preset_ngplasma_wrecked_ship_leaving_wrecked_ship:
    dw #preset_ngplasma_wrecked_ship_wrecked_ship_shaft ; Wrecked Ship: Wrecked Ship Shaft
    dw $078D, $A294  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $9800  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $0313  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $024E  ; Layer 2 Y position
    dw $0AF6, $046B  ; Samus X
    dw $0AF8, $B7FF  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw $D8C0, $0074  ; Doors
    dw #$FFFF

preset_ngplasma_wrecked_ship_kihunters_revisit:
    dw #preset_ngplasma_wrecked_ship_leaving_wrecked_ship ; Wrecked Ship: Leaving Wrecked Ship
    dw $078D, $89CA  ; DDB
    dw $079B, $95FF  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $002C  ; Samus X
    dw $0AF8, $37FF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $CFFF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_red_brinstar_red_brinstar_elevator:
    dw #preset_ngplasma_wrecked_ship_kihunters_revisit ; Wrecked Ship: Kihunters Revisit
    dw $078D, $8B02  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $5000  ; Screen subpixel X position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $0238  ; Layer 2 Y position
    dw $09CE, $002E  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AF8, $E000  ; Samus subpixel X
    dw $0AFA, $02A8  ; Samus Y
    dw $0AFC, $0000  ; Samus subpixel Y
    dw $D8B0, $7001  ; Doors
    dw $D8B2, $0001  ; Doors
    dw #$FFFF

preset_ngplasma_red_brinstar_hellway:
    dw #preset_ngplasma_red_brinstar_red_brinstar_elevator ; Red Brinstar: Red Brinstar Elevator
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0915, $0500  ; Screen Y position in pixels
    dw $0919, $0500  ; Layer 2 Y position
    dw $09CE, $002D  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0099  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw $0AFA, $058B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $D8B6, $1000  ; Doors
    dw #$FFFF

preset_ngplasma_red_brinstar_red_tower:
    dw #preset_ngplasma_red_brinstar_hellway ; Red Brinstar: Hellway
    dw $078D, $90AE  ; DDB
    dw $079B, $A2F7  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $0042  ; Samus X
    dw $0AF8, $DFFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_ngplasma_red_brinstar_bottom_of_red_tower:
    dw #preset_ngplasma_red_brinstar_red_tower ; Red Brinstar: Red Tower
    dw $078D, $907E  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $091F  ; Screen Y position in pixels
    dw $0919, $06D7  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0027  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $0AFA, $098B  ; Samus Y
    dw #$FFFF

preset_ngplasma_red_brinstar_breaking_the_tube:
    dw #preset_ngplasma_red_brinstar_bottom_of_red_tower ; Red Brinstar: Bottom of Red Tower
    dw $078D, $9102  ; DDB
    dw $079B, $A408  ; MDB
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0AF6, $01B7  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_ngplasma_red_brinstar_upper_norfair_elevator:
    dw #preset_ngplasma_red_brinstar_breaking_the_tube ; Red Brinstar: Breaking The Tube
    dw $078D, $A384  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CE, $002C  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $007E  ; Samus X
    dw $0AF8, $E000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D820, $0800  ; Events
    dw #$FFFF

preset_ngplasma_norfair_preridley_business_center:
    dw #preset_ngplasma_red_brinstar_upper_norfair_elevator ; Red Brinstar: Upper Norfair Elevator
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw $0AFC, $0000  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_norfair_preridley_frog_speedway:
    dw #preset_ngplasma_norfair_preridley_business_center ; Norfair Pre-Ridley: Business Center
    dw $078D, $92FA  ; DDB
    dw $079B, $B167  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00C1  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_norfair_preridley_purple_shaft:
    dw #preset_ngplasma_norfair_preridley_frog_speedway ; Norfair Pre-Ridley: Frog Speedway
    dw $078D, $971A  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $0AF6, $0046  ; Samus X
    dw $0AF8, $AFFF  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_ngplasma_norfair_preridley_magdollite_room:
    dw #preset_ngplasma_norfair_preridley_purple_shaft ; Norfair Pre-Ridley: Purple Shaft
    dw $078D, $9576  ; DDB
    dw $079B, $AEDF  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01F3  ; Screen Y position in pixels
    dw $0919, $0176  ; Layer 2 Y position
    dw $0AF6, $005A  ; Samus X
    dw $0AF8, $3FFF  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_ngplasma_norfair_preridley_kronic_boost:
    dw #preset_ngplasma_norfair_preridley_magdollite_room ; Norfair Pre-Ridley: Magdollite Room
    dw $078D, $96BA  ; DDB
    dw $079B, $AEB4  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $02B7  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_ngplasma_norfair_preridley_lower_norfair_elevator:
    dw #preset_ngplasma_norfair_preridley_kronic_boost ; Norfair Pre-Ridley: Kronic Boost
    dw $078D, $96DE  ; DDB
    dw $079B, $AF3F  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $BBFF  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $05D8  ; Health
    dw $09CE, $002B  ; Pbs
    dw $09D2, $0003  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0081  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $D8BA, $0100  ; Doors
    dw #$FFFF

preset_ngplasma_norfair_preridley_ln_main_hall:
    dw #preset_ngplasma_norfair_preridley_lower_norfair_elevator ; Norfair Pre-Ridley: Lower Norfair Elevator
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0403  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0302  ; Layer 2 X position
    dw $0919, $0301  ; Layer 2 Y position
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0480  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $0288  ; Samus Y
    dw #$FFFF

preset_ngplasma_norfair_preridley_prepillars:
    dw #preset_ngplasma_norfair_preridley_ln_main_hall ; Norfair Pre-Ridley: LN Main Hall
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0917, $0540  ; Layer 2 X position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $07B8  ; Samus X
    dw $0AF8, $B000  ; Samus subpixel X
    dw #$FFFF

preset_ngplasma_norfair_preridley_fast_pillars:
    dw #preset_ngplasma_norfair_preridley_prepillars ; Norfair Pre-Ridley: Pre-Pillars
    dw $078D, $985E  ; DDB
    dw $079B, $B3A5  ; MDB
    dw $090F, $5880  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $05DB  ; Health
    dw $09CE, $002C  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $001C  ; Samus X
    dw $0AF8, $467F  ; Samus subpixel X
    dw #$FFFF

preset_ngplasma_norfair_preridley_worst_room_in_the_game:
    dw #preset_ngplasma_norfair_preridley_fast_pillars ; Norfair Pre-Ridley: Fast Pillars
    dw $078D, $9912  ; DDB
    dw $079B, $B457  ; MDB
    dw $090F, $AF00  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0591  ; Health
    dw $0A1C, $00C9  ; Samus position/state
    dw $0A1E, $1B08  ; More position/state
    dw $0A68, $000E  ; Flash suit
    dw $0AF6, $03DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $0068  ; Samus Y
    dw $0AFC, $3FFF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_norfair_preridley_amphitheatre:
    dw #preset_ngplasma_norfair_preridley_worst_room_in_the_game ; Norfair Pre-Ridley: Worst Room In The Game
    dw $078D, $994E  ; DDB
    dw $079B, $B4AD  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $D400  ; Screen subpixel Y position
    dw $0915, $011B  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D4  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $00AE  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_norfair_preridley_kihunter_stairs_down:
    dw #preset_ngplasma_norfair_preridley_amphitheatre ; Norfair Pre-Ridley: Amphitheatre
    dw $078D, $997E  ; DDB
    dw $079B, $B4E5  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $027F  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0035  ; Screen Y position in pixels
    dw $0917, $01DF  ; Layer 2 X position
    dw $0919, $0027  ; Layer 2 Y position
    dw $0AF6, $02DF  ; Samus X
    dw $0AF8, $3FFF  ; Samus subpixel X
    dw $0AFA, $00B4  ; Samus Y
    dw $0AFC, $AFFF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_norfair_preridley_wasteland:
    dw #preset_ngplasma_norfair_preridley_kihunter_stairs_down ; Norfair Pre-Ridley: Kihunter Stairs Down
    dw $078D, $99A2  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0419  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0312  ; Layer 2 Y position
    dw $09C2, $05A5  ; Health
    dw $09CA, $0031  ; Supers
    dw $09CE, $002A  ; Pbs
    dw $0A1C, $0079  ; Samus position/state
    dw $0A1E, $1108  ; More position/state
    dw $0AF6, $0244  ; Samus X
    dw $0AFA, $0489  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw $D8BA, $4100  ; Doors
    dw #$FFFF

preset_ngplasma_norfair_preridley_metal_ninja_pirates:
    dw #preset_ngplasma_norfair_preridley_wasteland ; Norfair Pre-Ridley: Wasteland
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $09C2, $056C  ; Health
    dw $09CA, $0030  ; Supers
    dw $09CE, $0029  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0167  ; Samus X
    dw $0AF8, $6000  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $C100  ; Doors
    dw #$FFFF

preset_ngplasma_norfair_preridley_plowerhouse:
    dw #preset_ngplasma_norfair_preridley_metal_ninja_pirates ; Norfair Pre-Ridley: Metal Ninja Pirates
    dw $078D, $9A1A  ; DDB
    dw $079B, $B62B  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $015A  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0103  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $05DB  ; Health
    dw $09CA, $0032  ; Supers
    dw $0AF6, $01C5  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $0AFA, $00BB  ; Samus Y
    dw $D820, $0801  ; Events
    dw #$FFFF

preset_ngplasma_norfair_preridley_ridley:
    dw #preset_ngplasma_norfair_preridley_plowerhouse ; Norfair Pre-Ridley: Plowerhouse
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1C00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $05CE  ; Health
    dw $09CA, $0031  ; Supers
    dw $0AF6, $0036  ; Samus X
    dw $0AF8, $D000  ; Samus subpixel X
    dw $0AFA, $009B  ; Samus Y
    dw $D8BA, $D100  ; Doors
    dw $D8BC, $0001  ; Doors
    dw #$FFFF

preset_ngplasma_norfair_postridley_leaving_ridley:
    dw #preset_ngplasma_norfair_preridley_ridley ; Norfair Pre-Ridley: Ridley
    dw $078D, $98CA  ; DDB
    dw $079B, $B32E  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $011B  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $00D4  ; Layer 2 Y position
    dw $09C2, $0597  ; Health
    dw $09CA, $0016  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0051  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $019B  ; Samus Y
    dw $D82A, $0101  ; Bosses
    dw #$FFFF

preset_ngplasma_norfair_postridley_reverse_plowerhouse:
    dw #preset_ngplasma_norfair_postridley_leaving_ridley ; Norfair Post-Ridley: Leaving Ridley
    dw $078D, $98BE  ; DDB
    dw $079B, $B37A  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $01D2  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $015D  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $00E5  ; Missiles
    dw $0AF6, $0242  ; Samus X
    dw $0AF8, $8FFF  ; Samus subpixel X
    dw $0AFA, $007B  ; Samus Y
    dw $D8BA, $D500  ; Doors
    dw #$FFFF

preset_ngplasma_norfair_postridley_wasteland_revisit:
    dw #preset_ngplasma_norfair_postridley_reverse_plowerhouse ; Norfair Post-Ridley: Reverse Plowerhouse
    dw $078D, $9966  ; DDB
    dw $079B, $B62B  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $09C2, $0575  ; Health
    dw $09D2, $0003  ; Currently selected item
    dw $0AF6, $02E7  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_ngplasma_norfair_postridley_kihunter_stairs_up:
    dw #preset_ngplasma_norfair_postridley_wasteland_revisit ; Norfair Post-Ridley: Wasteland Revisit
    dw $078D, $9A3E  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $9FFF  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $C001  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $09C2, $051B  ; Health
    dw $09CE, $0028  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0582  ; Samus X
    dw $0AF8, $CFFF  ; Samus subpixel X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_ngplasma_norfair_postridley_fireflea_room:
    dw #preset_ngplasma_norfair_postridley_kihunter_stairs_up ; Norfair Post-Ridley: Kihunter Stairs Up
    dw $078D, $9A26  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $7E00  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CE, $0027  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00A5  ; Samus X
    dw $0AF8, $4FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_ngplasma_norfair_postridley_springball_maze:
    dw #preset_ngplasma_norfair_postridley_fireflea_room ; Norfair Post-Ridley: Fireflea Room
    dw $078D, $9A02  ; DDB
    dw $079B, $B6EE  ; MDB
    dw $090F, $8001  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $C400  ; Screen subpixel Y position
    dw $0915, $0008  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0008  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $016C  ; Samus X
    dw $0AF8, $C000  ; Samus subpixel X
    dw #$FFFF

preset_ngplasma_norfair_postridley_three_musketeers:
    dw #preset_ngplasma_norfair_postridley_springball_maze ; Norfair Post-Ridley: Springball Maze
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $A800  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B800  ; Screen subpixel Y position
    dw $0915, $000D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0009  ; Layer 2 Y position
    dw $0AF6, $006B  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw #$FFFF

preset_ngplasma_norfair_postridley_single_chamber:
    dw #preset_ngplasma_norfair_postridley_three_musketeers ; Norfair Post-Ridley: Three Musketeers
    dw $078D, $99AE  ; DDB
    dw $079B, $B656  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0915, $0002  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $09C2, $0516  ; Health
    dw $0AF6, $016C  ; Samus X
    dw $0AF8, $B000  ; Samus subpixel X
    dw #$FFFF

preset_ngplasma_norfair_postridley_bubble_mountain:
    dw #preset_ngplasma_norfair_postridley_single_chamber ; Norfair Post-Ridley: Single Chamber
    dw $078D, $9A4A  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $2C00  ; Screen subpixel Y position
    dw $0915, $000B  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0008  ; Layer 2 Y position
    dw $09C2, $051B  ; Health
    dw $09C6, $00E2  ; Missiles
    dw $09D2, $0001  ; Currently selected item
    dw $0AF6, $0091  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw #$FFFF

preset_ngplasma_norfair_postridley_frog_speedway_revisit:
    dw #preset_ngplasma_norfair_postridley_bubble_mountain ; Norfair Post-Ridley: Bubble Mountain
    dw $078D, $95CA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0303  ; Screen Y position in pixels
    dw $0919, $0242  ; Layer 2 Y position
    dw $09C6, $00DF  ; Missiles
    dw $09CA, $0017  ; Supers
    dw $09CE, $0026  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $0056  ; Samus X
    dw $0AF8, $F000  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw #$FFFF

preset_ngplasma_norfair_postridley_business_center_revisit:
    dw #preset_ngplasma_norfair_postridley_frog_speedway_revisit ; Norfair Post-Ridley: Frog Speedway Revisit
    dw $078D, $97DA  ; DDB
    dw $079B, $B167  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $D800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $002B  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_ngplasma_kraids_lair_entering_kraids_lair:
    dw #preset_ngplasma_norfair_postridley_business_center_revisit ; Norfair Post-Ridley: Business Center Revisit
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $09D2, $0002  ; Currently selected item
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AF8, $4FFF  ; Samus subpixel X
    dw $0AFA, $0086  ; Samus Y
    dw $0AFC, $0000  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_kraids_lair_warehouse_kihunters:
    dw #preset_ngplasma_kraids_lair_entering_kraids_lair ; Kraid's Lair: Entering Kraid's Lair
    dw $078D, $923A  ; DDB
    dw $079B, $A471  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5BFF  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09CA, $0016  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0167  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_kraids_lair_minikraid:
    dw #preset_ngplasma_kraids_lair_warehouse_kihunters ; Kraid's Lair: Warehouse Kihunters
    dw $078D, $9156  ; DDB
    dw $079B, $A4DA  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $DBFF  ; Screen subpixel Y position
    dw $0915, $00FA  ; Screen Y position in pixels
    dw $0919, $00FA  ; Layer 2 Y position
    dw $09C6, $00DE  ; Missiles
    dw $0AF6, $016C  ; Samus X
    dw $0AF8, $8FFF  ; Samus subpixel X
    dw #$FFFF

preset_ngplasma_kraids_lair_kraid:
    dw #preset_ngplasma_kraids_lair_minikraid ; Kraid's Lair: Mini-Kraid
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C6, $00DB  ; Missiles
    dw $09CA, $0019  ; Supers
    dw $0AF6, $01C5  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $D8B8, $0024  ; Doors
    dw #$FFFF

preset_ngplasma_kraids_lair_leaving_kraid:
    dw #preset_ngplasma_kraids_lair_kraid ; Kraid's Lair: Kraid
    dw $078D, $91B6  ; DDB
    dw $079B, $A59F  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0517  ; Health
    dw $09C6, $00D9  ; Missiles
    dw $09CA, $0016  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0050  ; Samus X
    dw $0AF8, $8FFF  ; Samus subpixel X
    dw $D828, $0100  ; Bosses
    dw #$FFFF

preset_ngplasma_kraids_lair_minikraid_revisit:
    dw #preset_ngplasma_kraids_lair_leaving_kraid ; Kraid's Lair: Leaving Kraid
    dw $078D, $91CE  ; DDB
    dw $079B, $A56B  ; MDB
    dw $090F, $A001  ; Screen subpixel X position
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $0513  ; Health
    dw $0AF6, $005A  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $D8B8, $00A4  ; Doors
    dw #$FFFF

preset_ngplasma_kraids_lair_kihunters_revisit:
    dw #preset_ngplasma_kraids_lair_minikraid_revisit ; Kraid's Lair: Mini-Kraid Revisit
    dw $078D, $91AA  ; DDB
    dw $079B, $A521  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0018  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0012  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $00D6  ; Missiles
    dw $09CA, $001A  ; Supers
    dw $0AF6, $00B8  ; Samus X
    dw $0AF8, $B000  ; Samus subpixel X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B8, $00AC  ; Doors
    dw #$FFFF

preset_ngplasma_kraids_lair_warehouse_zeelas:
    dw #preset_ngplasma_kraids_lair_kihunters_revisit ; Kraid's Lair: Kihunters Revisit
    dw $078D, $9192  ; DDB
    dw $079B, $A4DA  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0FFF  ; Screen subpixel X position
    dw $0911, $00EA  ; Screen X position in pixels
    dw $0913, $8800  ; Screen subpixel Y position
    dw $0917, $00AF  ; Layer 2 X position
    dw $0AF6, $016F  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw #$FFFF

preset_ngplasma_kraids_lair_leaving_kraids_lair:
    dw #preset_ngplasma_kraids_lair_warehouse_zeelas ; Kraid's Lair: Warehouse Zeelas
    dw $078D, $916E  ; DDB
    dw $079B, $A471  ; MDB
    dw $090F, $1FFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0014  ; Layer 2 Y position
    dw $09C2, $0511  ; Health
    dw $0AF6, $0020  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_ngplasma_maridia_entering_maridia:
    dw #preset_ngplasma_kraids_lair_leaving_kraids_lair ; Kraid's Lair: Leaving Kraid's Lair
    dw $078D, $913E  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0006  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0004  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0019  ; Supers
    dw $0AF6, $0073  ; Samus X
    dw $0AF8, $7000  ; Samus subpixel X
    dw #$FFFF

preset_ngplasma_maridia_main_street:
    dw #preset_ngplasma_maridia_entering_maridia ; Maridia: Entering Maridia
    dw $078D, $A378  ; DDB
    dw $079B, $CEFB  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0001  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0AF6, $0088  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $0AFA, $007B  ; Samus Y
    dw #$FFFF

preset_ngplasma_maridia_fish_tank:
    dw #preset_ngplasma_maridia_main_street ; Maridia: Main Street
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $EFFF  ; Screen subpixel X position
    dw $0911, $00FA  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $05F4  ; Screen Y position in pixels
    dw $0917, $00BB  ; Layer 2 X position
    dw $0919, $0477  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0168  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $0AFA, $068B  ; Samus Y
    dw #$FFFF

preset_ngplasma_maridia_mt_everest:
    dw #preset_ngplasma_maridia_fish_tank ; Maridia: Fish Tank
    dw $078D, $A3B4  ; DDB
    dw $079B, $D017  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0066  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $004C  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $00C9  ; Samus X
    dw $0AF8, $3FFF  ; Samus subpixel X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_ngplasma_maridia_crab_shaft:
    dw #preset_ngplasma_maridia_mt_everest ; Maridia: Mt. Everest
    dw $078D, $A3F0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $2C00  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $7800  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $09C2, $04D5  ; Health
    dw $0A1C, $00CD  ; Samus position/state
    dw $0A1E, $1B08  ; More position/state
    dw $0A68, $000E  ; Flash suit
    dw $0AF6, $05BB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $0052  ; Samus Y
    dw $0AFC, $97FF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_maridia_aqueduct:
    dw #preset_ngplasma_maridia_crab_shaft ; Maridia: Crab Shaft
    dw $078D, $A468  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $090F, $D001  ; Screen subpixel X position
    dw $0911, $0021  ; Screen X position in pixels
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0917, $0021  ; Layer 2 X position
    dw $0919, $0240  ; Layer 2 Y position
    dw $09D2, $0002  ; Currently selected item
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0A68, $0000  ; Flash suit
    dw $0AF6, $0087  ; Samus X
    dw $0AFA, $03AB  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_maridia_botwoon_hallway:
    dw #preset_ngplasma_maridia_aqueduct ; Maridia: Aqueduct
    dw $078D, $A4C8  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $6001  ; Screen subpixel X position
    dw $0911, $00AC  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0001  ; Screen Y position in pixels
    dw $0917, $0081  ; Layer 2 X position
    dw $0919, $0001  ; Layer 2 Y position
    dw $09CA, $0018  ; Supers
    dw $09CE, $0025  ; Pbs
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0120  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $0AFA, $009B  ; Samus Y
    dw $D8C0, $8074  ; Doors
    dw #$FFFF

preset_ngplasma_maridia_botwoon:
    dw #preset_ngplasma_maridia_botwoon_hallway ; Maridia: Botwoon Hallway
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $090F, $0FFF  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0917, $0240  ; Layer 2 X position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $03A8  ; Samus X
    dw $0AF8, $6FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_ngplasma_maridia_halfie:
    dw #preset_ngplasma_maridia_botwoon ; Maridia: Botwoon
    dw $078D, $A774  ; DDB
    dw $079B, $D95E  ; MDB
    dw $07F3, $002A  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $054D  ; Health
    dw $09C6, $00E0  ; Missiles
    dw $09CA, $001A  ; Supers
    dw $09CE, $0026  ; Pbs
    dw $0AF6, $01BC  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw $D82C, $0002  ; Bosses
    dw #$FFFF

preset_ngplasma_maridia_draygon:
    dw #preset_ngplasma_maridia_halfie ; Maridia: Halfie
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $04E2  ; Health
    dw $09C6, $00DC  ; Missiles
    dw $09CA, $0018  ; Supers
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $004C  ; Samus X
    dw $0AF8, $1FFF  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C2, $0C00  ; Doors
    dw #$FFFF

preset_ngplasma_maridia_spike_suit_colosseum:
    dw #preset_ngplasma_maridia_draygon ; Maridia: Draygon
    dw $078D, $A96C  ; DDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0002  ; Screen Y position in pixels
    dw $0919, $0001  ; Layer 2 Y position
    dw $09C2, $04D9  ; Health
    dw $09C6, $00D3  ; Missiles
    dw $0A68, $0001  ; Flash suit
    dw $0AF6, $003C  ; Samus X
    dw $0AF8, $B000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D82C, $0003  ; Bosses
    dw $D8C2, $4C00  ; Doors
    dw #$FFFF

preset_ngplasma_maridia_whomple_jump:
    dw #preset_ngplasma_maridia_spike_suit_colosseum ; Maridia: Spike Suit Colosseum
    dw $0A68, $0000  ; Flash suit
    dw #$FFFF

preset_ngplasma_maridia_reverse_botwoon_hallway:
    dw #preset_ngplasma_maridia_whomple_jump ; Maridia: Whomple Jump
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0200  ; Layer 2 Y position
    dw $09C2, $0469  ; Health
    dw $09C6, $00D0  ; Missiles
    dw $0AF6, $00A1  ; Samus X
    dw $0AF8, $E000  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_ngplasma_maridia_aqueduct_revisit:
    dw #preset_ngplasma_maridia_reverse_botwoon_hallway ; Maridia: Reverse Botwoon Hallway
    dw $078D, $A90C  ; DDB
    dw $079B, $D617  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $DC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0AF6, $009E  ; Samus X
    dw $0AF8, $8000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C2, $6C00  ; Doors
    dw #$FFFF

preset_ngplasma_maridia_crab_shaft_revisit:
    dw #preset_ngplasma_maridia_aqueduct_revisit ; Maridia: Aqueduct Revisit
    dw $078D, $A768  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0103  ; Screen Y position in pixels
    dw $0919, $0103  ; Layer 2 Y position
    dw $0AF6, $006C  ; Samus X
    dw $0AF8, $3FFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_ngplasma_maridia_mt_everest_revisit:
    dw #preset_ngplasma_maridia_crab_shaft_revisit ; Maridia: Crab Shaft Revisit
    dw $078D, $A708  ; DDB
    dw $079B, $D1A3  ; MDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0915, $01FB  ; Screen Y position in pixels
    dw $0919, $017C  ; Layer 2 Y position
    dw $0AF6, $0071  ; Samus X
    dw $0AF8, $C000  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_ngplasma_maridia_leaving_maridia:
    dw #preset_ngplasma_maridia_mt_everest_revisit ; Maridia: Mt. Everest Revisit
    dw $078D, $A4B0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $01F0  ; Screen X position in pixels
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $0174  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0AF6, $0290  ; Samus X
    dw $0AF8, $A000  ; Samus subpixel X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF

preset_ngplasma_crateria_red_brinstar_gate:
    dw #preset_ngplasma_maridia_leaving_maridia ; Maridia: Leaving Maridia
    dw $078D, $A42C  ; DDB
    dw $079B, $D104  ; MDB
    dw $090F, $B801  ; Screen subpixel X position
    dw $0911, $0001  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09D2, $0002  ; Currently selected item
    dw $0AF6, $007C  ; Samus X
    dw $0AF8, $3000  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_ngplasma_crateria_crateria_kihunters_final:
    dw #preset_ngplasma_crateria_red_brinstar_gate ; Crateria: Red Brinstar Gate
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $0017  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $00A8  ; Samus Y
    dw $0AFC, $0000  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_crateria_landing_site:
    dw #preset_ngplasma_crateria_crateria_kihunters_final ; Crateria: Crateria Kihunters Final
    dw $078D, $8AC6  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $05C8  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $0917, $02E4  ; Layer 2 X position
    dw $09C6, $00CF  ; Missiles
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0668  ; Samus X
    dw $0AF8, $8C00  ; Samus subpixel X
    dw $0AFA, $04BB  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_crateria_terminator_etank:
    dw #preset_ngplasma_crateria_landing_site ; Crateria: Landing Site
    dw $078D, $8BF2  ; DDB
    dw $079B, $92FD  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $090F, $3400  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0AF6, $0042  ; Samus X
    dw $0AF8, $7000  ; Samus subpixel X
    dw $0AFA, $008E  ; Samus Y
    dw #$FFFF

preset_ngplasma_crateria_green_pirate_shaft:
    dw #preset_ngplasma_crateria_terminator_etank ; Crateria: Terminator E-Tank
    dw $078D, $895E  ; DDB
    dw $079B, $990D  ; MDB
    dw $090F, $1E80  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $01ED  ; Screen Y position in pixels
    dw $0919, $0171  ; Layer 2 Y position
    dw $0AF6, $0043  ; Samus X
    dw $0AF8, $5B80  ; Samus subpixel X
    dw $0AFA, $028D  ; Samus Y
    dw $0AFC, $9BFF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_tourian_tourian_elevator_room:
    dw #preset_ngplasma_crateria_green_pirate_shaft ; Crateria: Green Pirate Shaft
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $090F, $3FFF  ; Screen subpixel X position
    dw $0915, $0238  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $09C2, $046E  ; Health
    dw $09CA, $0016  ; Supers
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AF8, $BFFF  ; Samus subpixel X
    dw $0AFA, $02A8  ; Samus Y
    dw $0AFC, $0000  ; Samus subpixel Y
    dw $D820, $0FC1  ; Events
    dw $D8B2, $4001  ; Doors
    dw $D90C, $0100  ; Map Stations
    dw #$FFFF

preset_ngplasma_tourian_metroids_1:
    dw #preset_ngplasma_tourian_tourian_elevator_room ; Tourian: Tourian Elevator Room
    dw $090F, $FFFF  ; Screen subpixel X position
    dw $0913, $F7FF  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003B  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $0AFA, $038B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_ngplasma_tourian_metroids_2:
    dw #preset_ngplasma_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00C6  ; Screen X position in pixels
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0094  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0487  ; Health
    dw $09C6, $00D3  ; Missiles
    dw $09CA, $0013  ; Supers
    dw $09CE, $0029  ; Pbs
    dw $0AF6, $0166  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $00AB  ; Samus Y
    dw $D822, $0001  ; Events
    dw #$FFFF

preset_ngplasma_tourian_metroids_3:
    dw #preset_ngplasma_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $09C2, $049B  ; Health
    dw $09C6, $00D5  ; Missiles
    dw $09CA, $0014  ; Supers
    dw $09CE, $002A  ; Pbs
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $001C  ; Samus X
    dw $0AF8, $1FFF  ; Samus subpixel X
    dw $0AFA, $01BB  ; Samus Y
    dw $D822, $0003  ; Events
    dw $D8C4, $0001  ; Doors
    dw #$FFFF

preset_ngplasma_tourian_metroids_4:
    dw #preset_ngplasma_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $04DC  ; Health
    dw $09C6, $00D8  ; Missiles
    dw $09CA, $0017  ; Supers
    dw $09CE, $002D  ; Pbs
    dw $0AF6, $05A7  ; Samus X
    dw $0AF8, $7FFF  ; Samus subpixel X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0007  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF

preset_ngplasma_tourian_giant_hoppers:
    dw #preset_ngplasma_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $A9E4  ; DDB
    dw $079B, $DBCD  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D7  ; Layer 2 Y position
    dw $09C2, $0540  ; Health
    dw $09C6, $00E6  ; Missiles
    dw $09CA, $0019  ; Supers
    dw $09CE, $002F  ; Pbs
    dw $0AF6, $006C  ; Samus X
    dw $0AF8, $5000  ; Samus subpixel X
    dw $0AFA, $01CB  ; Samus Y
    dw $D822, $000F  ; Events
    dw #$FFFF

preset_ngplasma_tourian_baby_skip:
    dw #preset_ngplasma_tourian_giant_hoppers ; Tourian: Giant Hoppers
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $A000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $01D8  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8C4, $000F  ; Doors
    dw #$FFFF

preset_ngplasma_tourian_gadora_room:
    dw #preset_ngplasma_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AA44  ; DDB
    dw $079B, $DCFF  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09CA, $0018  ; Supers
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00DE  ; Samus X
    dw $0AF8, $1FFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C4, $00AF  ; Doors
    dw #$FFFF

preset_ngplasma_tourian_zeb_skip:
    dw #preset_ngplasma_tourian_gadora_room ; Tourian: Gadora Room
    dw $078D, $AAA4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021A  ; Screen Y position in pixels
    dw $0919, $0193  ; Layer 2 Y position
    dw $09CA, $0016  ; Supers
    dw $09D2, $0002  ; Currently selected item
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $0041  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF

preset_ngplasma_tourian_mother_brain_2:
    dw #preset_ngplasma_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAC8  ; DDB
    dw $079B, $DD58  ; MDB
    dw $07F3, $0021  ; Music Bank
    dw $07F5, $0000  ; Music Track
    dw $090F, $5FFF  ; Screen subpixel X position
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $052C  ; Health
    dw $09C6, $00DC  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $09D2, $0000  ; Currently selected item
    dw $0AF6, $00D3  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D820, $0FCD  ; Events
    dw #$FFFF

preset_ngplasma_tourian_zebes_escape:
    dw #preset_ngplasma_tourian_mother_brain_2 ; Tourian: Mother Brain 2
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $D001  ; Screen subpixel X position
    dw $0913, $3000  ; Screen subpixel Y position
    dw $09A6, $1009  ; Equipped Beams
    dw $09C2, $05DB  ; Health
    dw $09C6, $0091  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $09CE, $0000  ; Pbs
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0A76, $8000  ; Hyper beam
    dw $0AF6, $0025  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $0097  ; Samus Y
    dw $D820, $4FCD  ; Events
    dw $D82C, $0203  ; Bosses
    dw #$FFFF

preset_ngplasma_tourian_escape_room_3:
    dw #preset_ngplasma_tourian_zebes_escape ; Tourian: Zebes Escape
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $00C0  ; Layer 2 Y position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $00E2  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_ngplasma_tourian_escape_room_4:
    dw #preset_ngplasma_tourian_escape_room_3 ; Tourian: Escape Room 3
    dw $078D, $AB04  ; DDB
    dw $079B, $DEA7  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0026  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $001C  ; Layer 2 Y position
    dw $0AF6, $05DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_ngplasma_tourian_escape_climb:
    dw #preset_ngplasma_tourian_escape_room_4 ; Tourian: Escape Room 4
    dw $078D, $AB1C  ; DDB
    dw $079B, $DEDE  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $00BF  ; Screen X position in pixels
    dw $0915, $00EE  ; Screen Y position in pixels
    dw $0917, $008F  ; Layer 2 X position
    dw $0919, $00B2  ; Layer 2 Y position
    dw $0AF6, $0151  ; Samus X
    dw $0AF8, $4000  ; Samus subpixel X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_ngplasma_tourian_escape_parlor:
    dw #preset_ngplasma_tourian_escape_climb ; Tourian: Escape Climb
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $090F, $DFFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $D001  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0548  ; Health
    dw $0A1C, $00CD  ; Samus position/state
    dw $0A1E, $1B08  ; More position/state
    dw $0A68, $000E  ; Flash suit
    dw $0AF6, $01DB  ; Samus X
    dw $0AF8, $FFFF  ; Samus subpixel X
    dw $0AFA, $0043  ; Samus Y
    dw $0AFC, $0000  ; Samus subpixel Y
    dw $D90C, $FF00  ; Map Stations
    dw #$FFFF
