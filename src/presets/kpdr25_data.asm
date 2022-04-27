
preset_kpdr25_bombs_ceres_elevator:
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

preset_kpdr25_bombs_ceres_escape:
    dw #preset_kpdr25_bombs_ceres_elevator ; Bombs: Ceres Elevator
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

preset_kpdr25_bombs_ceres_last_3_rooms:
    dw #preset_kpdr25_bombs_ceres_escape ; Bombs: Ceres Escape
    dw $078D, $ABA0  ; DDB
    dw $079B, $E021  ; MDB
    dw $090F, $7400  ; Screen subpixel X position
    dw $0913, $F000  ; Screen subpixel Y position
    dw $0AF6, $004E  ; Samus X
    dw $0AFA, $00A2  ; Samus Y
    dw #$FFFF

preset_kpdr25_bombs_ship:
    dw #preset_kpdr25_bombs_ceres_last_3_rooms ; Bombs: Ceres Last 3 Rooms
    dw $078D, $88FE  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $0006  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $093F, $0000  ; Ceres escape flag
    dw $09C2, $0063  ; Health
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0481  ; Samus X
    dw $0AF8, $0000  ; Samus subpixel X
    dw $0AFA, $0471  ; Samus Y
    dw $0AFC, $8000  ; Samus subpixel Y
    dw #$FFFF

preset_kpdr25_bombs_climb_down:
    dw #preset_kpdr25_bombs_ship ; Bombs: Ship
    dw $078D, $8916  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $02ED  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0231  ; Layer 2 Y position
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $01AC  ; Samus X
    dw $0AFA, $035B  ; Samus Y
    dw $0AFC, $FFFF  ; Samus subpixel Y
    dw #$FFFF

preset_kpdr25_bombs_morph:
    dw #preset_kpdr25_bombs_climb_down ; Bombs: Climb Down
    dw $078D, $8B9E  ; DDB
    dw $079B, $9E9F  ; MDB
    dw $07F5, $0007  ; Music Track
    dw $0911, $0500  ; Screen X position in pixels
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $0A1C, $0025  ; Samus position/state
    dw $0A1E, $0E04  ; More position/state
    dw $0AF6, $0580  ; Samus X
    dw $0AFA, $02A8  ; Samus Y
    dw #$FFFF

preset_kpdr25_bombs_first_missiles:
    dw #preset_kpdr25_bombs_morph ; Bombs: Morph
    dw $078D, $8EDA  ; DDB
    dw $079B, $A107  ; MDB
    dw $090F, $7001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $E800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $0004  ; Equipped Items
    dw $09A4, $0004  ; Collected Items
    dw $0A1C, $000C  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $00CB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D872, $0400  ; Items
    dw #$FFFF

preset_kpdr25_bombs_reverse_pit:
    dw #preset_kpdr25_bombs_first_missiles ; Bombs: First Missiles
    dw $078D, $8EB6  ; DDB
    dw $079B, $97B5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C6, $0005  ; Missiles
    dw $09C8, $0005  ; Max missiles
    dw $0AF6, $007B  ; Samus X
    dw $D874, $0004  ; Items
    dw #$FFFF

preset_kpdr25_bombs_climb:
    dw #preset_kpdr25_bombs_reverse_pit ; Bombs: Reverse Pit
    dw $078D, $8B92  ; DDB
    dw $079B, $975C  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $AC00  ; Screen subpixel Y position
    dw $0A1C, $0008  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $003C  ; Samus X
    dw $D820, $0001  ; Events
    dw $D8B2, $0400  ; Doors
    dw #$FFFF

preset_kpdr25_bombs_parlor:
    dw #preset_kpdr25_bombs_climb ; Bombs: Climb
    dw $078D, $8B7A  ; DDB
    dw $079B, $96BA  ; MDB
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $2000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0A1C, $000F  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $0166  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF

preset_kpdr25_bombs_bomb_torizo:
    dw #preset_kpdr25_bombs_parlor ; Bombs: Parlor
    dw $078D, $8982  ; DDB
    dw $079B, $9879  ; MDB
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $09C6, $0000  ; Missiles
    dw $0A1C, $000B  ; Samus position/state
    dw $0AF6, $02C3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B2, $2400  ; Doors
    dw #$FFFF

preset_kpdr25_bombs_alcatraz:
    dw #preset_kpdr25_bombs_bomb_torizo ; Bombs: Bomb Torizo
    dw $078D, $8BAA  ; DDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7C00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09A2, $1004  ; Equipped Items
    dw $09A4, $1004  ; Collected Items
    dw $09C6, $0005  ; Missiles
    dw $0A1C, $0012  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $002D  ; Samus X
    dw $D828, $0004  ; Bosses
    dw $D870, $0080  ; Items
    dw $D8B2, $2C00  ; Doors
    dw #$FFFF

preset_kpdr25_bombs_terminator:
    dw #preset_kpdr25_bombs_alcatraz ; Bombs: Alcatraz
    dw $078D, $8BB6  ; DDB
    dw $079B, $92FD  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $4000  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $0A1C, $001F  ; Samus position/state
    dw $0A1E, $0404  ; More position/state
    dw $0AF6, $012F  ; Samus X
    dw $0AFA, $00A9  ; Samus Y
    dw #$FFFF

preset_kpdr25_bombs_mushrooms:
    dw #preset_kpdr25_bombs_terminator ; Bombs: Terminator
    dw $078D, $8BE6  ; DDB
    dw $079B, $99BD  ; MDB
    dw $090F, $7000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0915, $0600  ; Screen Y position in pixels
    dw $0917, $0001  ; Layer 2 X position
    dw $0919, $0480  ; Layer 2 Y position
    dw $09C2, $008B  ; Health
    dw $09C4, $00C7  ; Max health
    dw $0A1C, $0012  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0037  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D870, $0180  ; Items
    dw #$FFFF

preset_kpdr25_kraid_green_brinstar_elevator:
    dw #preset_kpdr25_bombs_mushrooms ; Bombs: Mushrooms
    dw $078D, $8C22  ; DDB
    dw $079B, $9938  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0000  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0089  ; Samus Y
    dw #$FFFF

preset_kpdr25_kraid_dachora_room:
    dw #preset_kpdr25_kraid_green_brinstar_elevator ; Kraid: Green Brinstar Elevator
    dw $078D, $8D4E  ; DDB
    dw $079B, $9AD9  ; MDB
    dw $07F3, $000F  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $061A  ; Screen Y position in pixels
    dw $0919, $0493  ; Layer 2 Y position
    dw $09C2, $009A  ; Health
    dw $09C6, $0000  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $09CC, $0005  ; Max supers
    dw $0A1C, $000B  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $00AA  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D872, $0401  ; Items
    dw $D8B4, $0006  ; Doors
    dw #$FFFF

preset_kpdr25_kraid_big_pink:
    dw #preset_kpdr25_kraid_dachora_room ; Kraid: Dachora Room
    dw $078D, $8CE2  ; DDB
    dw $079B, $9CB3  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0600  ; Screen X position in pixels
    dw $0913, $2FFF  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0480  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $009F  ; Health
    dw $0AF6, $06C0  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr25_kraid_green_hills:
    dw #preset_kpdr25_kraid_big_pink ; Kraid: Big Pink
    dw $078D, $8DAE  ; DDB
    dw $079B, $9D19  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $0800  ; Screen subpixel Y position
    dw $0915, $060F  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $048B  ; Layer 2 Y position
    dw $09A6, $1000  ; Beams
    dw $09A8, $1000  ; Beams
    dw $09C6, $0005  ; Missiles
    dw $09C8, $000A  ; Max missiles
    dw $09CA, $0003  ; Supers
    dw $0AF6, $0380  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D872, $04C1  ; Items
    dw $D8B4, $0206  ; Doors
    dw #$FFFF

preset_kpdr25_kraid_red_tower_descent:
    dw #preset_kpdr25_kraid_green_hills ; Kraid: Green Hills
    dw $078D, $8E92  ; DDB
    dw $079B, $9FBA  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $E000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C6, $0007  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0009  ; Samus position/state
    dw $0AF6, $0574  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B6, $0008  ; Doors
    dw #$FFFF

preset_kpdr25_kraid_bat_room:
    dw #preset_kpdr25_kraid_red_tower_descent ; Kraid: Red Tower Descent
    dw $078D, $8F0A  ; DDB
    dw $079B, $A253  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $091A  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $06D3  ; Layer 2 Y position
    dw $0AF6, $005E  ; Samus X
    dw $0AFA, $098B  ; Samus Y
    dw #$FFFF

preset_kpdr25_kraid_spazer:
    dw #preset_kpdr25_kraid_bat_room ; Kraid: Bat Room
    dw $078D, $9102  ; DDB
    dw $079B, $A408  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5000  ; Screen subpixel Y position
    dw $0915, $001D  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $09CA, $0003  ; Supers
    dw $0AF6, $01B3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8B6, $8008  ; Doors
    dw #$FFFF

preset_kpdr25_kraid_warehouse_entrance:
    dw #preset_kpdr25_kraid_spazer ; Kraid: Spazer
    dw $078D, $A348  ; DDB
    dw $079B, $CF80  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09A6, $1004  ; Beams
    dw $09A8, $1004  ; Beams
    dw $09CA, $0004  ; Supers
    dw $0A1C, $000B  ; Samus position/state
    dw $0AF6, $0048  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D874, $0404  ; Items
    dw #$FFFF

preset_kpdr25_kraid_baby_kraid:
    dw #preset_kpdr25_kraid_warehouse_entrance ; Kraid: Warehouse Entrance
    dw $078D, $9156  ; DDB
    dw $079B, $A4DA  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00F4  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00B7  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $008B  ; Health
    dw $09C6, $0009  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0011  ; Samus position/state
    dw $0AF6, $0154  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF

preset_kpdr25_kraid_kraid_2:
    dw #preset_kpdr25_kraid_baby_kraid ; Kraid: Baby Kraid
    dw $078D, $919E  ; DDB
    dw $079B, $A56B  ; MDB
    dw $07F3, $0027  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $3800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $0085  ; Health
    dw $09C6, $0006  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $0024  ; Doors
    dw #$FFFF

preset_kpdr25_kraid_leaving_varia:
    dw #preset_kpdr25_kraid_kraid_2 ; Kraid: Kraid
    dw $078D, $91DA  ; DDB
    dw $079B, $A6E2  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1005  ; Equipped Items
    dw $09A4, $1005  ; Collected Items
    dw $09C2, $009E  ; Health
    dw $09C6, $000A  ; Missiles
    dw $09CA, $0002  ; Supers
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0031  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D828, $0104  ; Bosses
    dw $D876, $0001  ; Items
    dw $D8B8, $0064  ; Doors
    dw #$FFFF

preset_kpdr25_kraid_baby_kraid_exiting:
    dw #preset_kpdr25_kraid_leaving_varia ; Kraid: Leaving Varia
    dw $078D, $91CE  ; DDB
    dw $079B, $A56B  ; MDB
    dw $0913, $3BFF  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C2, $0096  ; Health
    dw $0AF6, $0044  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $00E4  ; Doors
    dw #$FFFF

preset_kpdr25_kraid_kraid_etank:
    dw #preset_kpdr25_kraid_baby_kraid_exiting ; Kraid: Baby Kraid (Exiting)
    dw $078D, $916E  ; DDB
    dw $079B, $A471  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $B000  ; Screen subpixel X position
    dw $0913, $8000  ; Screen subpixel Y position
    dw $0915, $00FF  ; Screen Y position in pixels
    dw $0919, $00FF  ; Layer 2 Y position
    dw $09C6, $0008  ; Missiles
    dw $09CA, $0005  ; Supers
    dw $0AF6, $0045  ; Samus X
    dw $D8B8, $00ED  ; Doors
    dw #$FFFF

preset_kpdr25_upper_norfair_business_center:
    dw #preset_kpdr25_kraid_kraid_etank ; Kraid: Kraid E-tank
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $E000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $023B  ; Screen Y position in pixels
    dw $0919, $01AC  ; Layer 2 Y position
    dw $09C2, $012B  ; Health
    dw $09C4, $012B  ; Max health
    dw $09C6, $0009  ; Missiles
    dw $09CA, $0004  ; Supers
    dw $0AF6, $007C  ; Samus X
    dw $0AFA, $02AB  ; Samus Y
    dw $D874, $0C04  ; Items
    dw $D8B8, $00EF  ; Doors
    dw #$FFFF

preset_kpdr25_upper_norfair_leaving_hijump:
    dw #preset_kpdr25_upper_norfair_business_center ; Upper Norfair: Business Center
    dw $078D, $9426  ; DDB
    dw $079B, $A9E5  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $1105  ; Equipped Items
    dw $09A4, $1105  ; Collected Items
    dw $09C2, $018F  ; Health
    dw $09C4, $018F  ; Max health
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $0048  ; Samus X
    dw $0AFA, $00BB  ; Samus Y
    dw $D876, $0121  ; Items
    dw $D8B8, $20EF  ; Doors
    dw $D8BA, $0001  ; Doors
    dw #$FFFF

preset_kpdr25_upper_norfair_precathedral:
    dw #preset_kpdr25_upper_norfair_leaving_hijump ; Upper Norfair: Leaving Hijump
    dw $078D, $941A  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0913, $BFFF  ; Screen subpixel Y position
    dw $0915, $02F6  ; Screen Y position in pixels
    dw $0919, $0238  ; Layer 2 Y position
    dw $09C6, $000E  ; Missiles
    dw $09C8, $000F  ; Max missiles
    dw $0AF6, $00B8  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D876, $01A1  ; Items
    dw #$FFFF

preset_kpdr25_upper_norfair_rising_tide:
    dw #preset_kpdr25_upper_norfair_precathedral ; Upper Norfair: Pre-Cathedral
    dw $078D, $92B2  ; DDB
    dw $079B, $A788  ; MDB
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $0200  ; Layer 2 X position
    dw $0919, $0100  ; Layer 2 Y position
    dw $09C6, $000F  ; Missiles
    dw $09CA, $0002  ; Supers
    dw $0AF6, $02D7  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8B8, $26EF  ; Doors
    dw #$FFFF

preset_kpdr25_upper_norfair_bubble_mountain:
    dw #preset_kpdr25_upper_norfair_rising_tide ; Upper Norfair: Rising Tide
    dw $078D, $929A  ; DDB
    dw $079B, $AFA3  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0179  ; Health
    dw $0AF6, $04BC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr25_upper_norfair_bat_cave:
    dw #preset_kpdr25_upper_norfair_bubble_mountain ; Upper Norfair: Bubble Mountain
    dw $078D, $973E  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $0188  ; Health
    dw $0AF6, $01D0  ; Samus X
    dw $D8BA, $0011  ; Doors
    dw #$FFFF

preset_kpdr25_upper_norfair_speed_hallway:
    dw #preset_kpdr25_upper_norfair_bat_cave ; Upper Norfair: Bat Cave
    dw $078D, $958E  ; DDB
    dw $079B, $B07A  ; MDB
    dw $090F, $EFFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $0012  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0012  ; Layer 2 Y position
    dw $0AF6, $00C5  ; Samus X
    dw #$FFFF

preset_kpdr25_upper_norfair_bat_cave_return:
    dw #preset_kpdr25_upper_norfair_speed_hallway ; Upper Norfair: Speed Hallway
    dw $078D, $95BE  ; DDB
    dw $079B, $ACF0  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001B  ; Screen Y position in pixels
    dw $0919, $0014  ; Layer 2 Y position
    dw $09A2, $3105  ; Equipped Items
    dw $09A4, $3105  ; Collected Items
    dw $09CA, $0001  ; Supers
    dw $0A1C, $000C  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $002D  ; Samus X
    dw $0B3F, $0104  ; Blue suit
    dw $D822, $0020  ; Events
    dw $D878, $0004  ; Items
    dw $D8BA, $0031  ; Doors
    dw #$FFFF

preset_kpdr25_upper_norfair_single_chamber:
    dw #preset_kpdr25_upper_norfair_bat_cave_return ; Upper Norfair: Bat Cave (return)
    dw $078D, $97AA  ; DDB
    dw $079B, $ACB3  ; MDB
    dw $090F, $7FFF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $00FB  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $00BC  ; Layer 2 Y position
    dw $09C2, $018B  ; Health
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $01B3  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw #$FFFF

preset_kpdr25_upper_norfair_leaving_wave:
    dw #preset_kpdr25_upper_norfair_single_chamber ; Upper Norfair: Single Chamber
    dw $078D, $961E  ; DDB
    dw $079B, $ADDE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A6, $1005  ; Beams
    dw $09A8, $1005  ; Beams
    dw $09C6, $0012  ; Missiles
    dw $09C8, $0014  ; Max missiles
    dw $09CA, $0002  ; Supers
    dw $0A1C, $001A  ; Samus position/state
    dw $0A1E, $0304  ; More position/state
    dw $0AF6, $009C  ; Samus X
    dw $0AFA, $007B  ; Samus Y
    dw $D878, $001C  ; Items
    dw $D8BA, $00F1  ; Doors
    dw #$FFFF

preset_kpdr25_upper_norfair_leaving_single_chamber:
    dw #preset_kpdr25_upper_norfair_leaving_wave ; Upper Norfair: Leaving Wave
    dw $078D, $9606  ; DDB
    dw $079B, $AD5E  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $0015  ; Screen Y position in pixels
    dw $0919, $000F  ; Layer 2 Y position
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $008E  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr25_upper_norfair_frog_speedway:
    dw #preset_kpdr25_upper_norfair_leaving_single_chamber ; Upper Norfair: Leaving Single Chamber
    dw $078D, $956A  ; DDB
    dw $079B, $AF72  ; MDB
    dw $090F, $1000  ; Screen subpixel X position
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $018F  ; Health
    dw $09C6, $0014  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0042  ; Samus X
    dw $0B3F, $0001  ; Blue suit
    dw #$FFFF

preset_kpdr25_upper_norfair_entering_ice:
    dw #preset_kpdr25_upper_norfair_frog_speedway ; Upper Norfair: Frog Speedway
    dw $078D, $9816  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $090F, $6800  ; Screen subpixel X position
    dw $0913, $2400  ; Screen subpixel Y position
    dw $0915, $0309  ; Screen Y position in pixels
    dw $0919, $0246  ; Layer 2 Y position
    dw $09CA, $0002  ; Supers
    dw $0AF6, $0030  ; Samus X
    dw $0AFA, $0394  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D8B8, $2EEF  ; Doors
    dw #$FFFF

preset_kpdr25_upper_norfair_ice_escape:
    dw #preset_kpdr25_upper_norfair_entering_ice ; Upper Norfair: Entering Ice
    dw $078D, $935A  ; DDB
    dw $079B, $A8B9  ; MDB
    dw $090F, $5001  ; Screen subpixel X position
    dw $0913, $7000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0180  ; Layer 2 Y position
    dw $09A6, $1007  ; Beams
    dw $09A8, $1007  ; Beams
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $00C7  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D876, $01A5  ; Items
    dw #$FFFF

preset_kpdr25_wrecked_ship_alpha_spark:
    dw #preset_kpdr25_upper_norfair_ice_escape ; Upper Norfair: Ice Escape
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $0A1C, $0025  ; Samus position/state
    dw $0A1E, $0E04  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0087  ; Samus Y
    dw #$FFFF

preset_kpdr25_wrecked_ship_red_tower:
    dw #preset_kpdr25_wrecked_ship_alpha_spark ; Wrecked Ship: Alpha Spark
    dw $078D, $910E  ; DDB
    dw $079B, $A3DD  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $6C00  ; Screen subpixel X position
    dw $0913, $8800  ; Screen subpixel Y position
    dw $09C2, $0158  ; Health
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0070  ; Samus position/state
    dw $0A1E, $0604  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $0083  ; Samus Y
    dw #$FFFF

preset_kpdr25_wrecked_ship_hellway:
    dw #preset_kpdr25_wrecked_ship_red_tower ; Wrecked Ship: Red Tower
    dw $078D, $90F6  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $A800  ; Screen subpixel Y position
    dw $0915, $0007  ; Screen Y position in pixels
    dw $0919, $0005  ; Layer 2 Y position
    dw $09C2, $015D  ; Health
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $00C3  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr25_wrecked_ship_alpha_power_bombs:
    dw #preset_kpdr25_wrecked_ship_hellway ; Wrecked Ship: Hellway
    dw $078D, $908A  ; DDB
    dw $079B, $A322  ; MDB
    dw $090F, $FFFF  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $071C  ; Screen Y position in pixels
    dw $0919, $071C  ; Layer 2 Y position
    dw $09C2, $0155  ; Health
    dw $09CA, $0002  ; Supers
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0041  ; Samus X
    dw $0AFA, $078B  ; Samus Y
    dw $D8B6, $A008  ; Doors
    dw #$FFFF

preset_kpdr25_wrecked_ship_post_power_bombs:
    dw #preset_kpdr25_wrecked_ship_alpha_power_bombs ; Wrecked Ship: Alpha Power Bombs
    dw $078D, $9096  ; DDB
    dw $079B, $A3AE  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0180  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $014B  ; Health
    dw $09CE, $0005  ; Pbs
    dw $09D0, $0005  ; Max pbs
    dw $0A1C, $000B  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $02CA  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D874, $0D04  ; Items
    dw #$FFFF

preset_kpdr25_wrecked_ship_premoat:
    dw #preset_kpdr25_wrecked_ship_post_power_bombs ; Wrecked Ship: Post Power Bombs
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $C000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $0004  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0002  ; Samus position/state
    dw $0A1E, $0004  ; More position/state
    dw $0AF6, $007D  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D8B6, $B008  ; Doors
    dw #$FFFF

preset_kpdr25_wrecked_ship_ocean_spark:
    dw #preset_kpdr25_wrecked_ship_premoat ; Wrecked Ship: Pre-Moat
    dw $078D, $8A36  ; DDB
    dw $079B, $95FF  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $C3FF  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $0136  ; Health
    dw $09C6, $0018  ; Missiles
    dw $09C8, $0019  ; Max missiles
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $006F  ; Samus position/state
    dw $0A1E, $0608  ; More position/state
    dw $0AF6, $01DB  ; Samus X
    dw $0AFA, $0089  ; Samus Y
    dw $D870, $0190  ; Items
    dw $D8B0, $6000  ; Doors
    dw $D8B2, $2C01  ; Doors
    dw #$FFFF

preset_kpdr25_wrecked_ship_ws_entrance:
    dw #preset_kpdr25_wrecked_ship_ocean_spark ; Wrecked Ship: Ocean Spark
    dw $078D, $8AEA  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $090F, $B000  ; Screen subpixel X position
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $0917, $0380  ; Layer 2 X position
    dw $09C2, $00BC  ; Health
    dw $09CA, $0003  ; Supers
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $07DB  ; Samus X
    dw $0AFA, $048B  ; Samus Y
    dw $D8B0, $7000  ; Doors
    dw #$FFFF

preset_kpdr25_wrecked_ship_phantoon:
    dw #preset_kpdr25_wrecked_ship_ws_entrance ; Wrecked Ship: WS Entrance
    dw $078D, $A21C  ; DDB
    dw $079B, $CC6F  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0300  ; Layer 2 X position
    dw $09CA, $0001  ; Supers
    dw $0AF6, $04DB  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8C0, $0030  ; Doors
    dw #$FFFF

preset_kpdr25_wrecked_ship_ws_shaft:
    dw #preset_kpdr25_wrecked_ship_phantoon ; Wrecked Ship: Phantoon
    dw $078D, $A2C4  ; DDB
    dw $07F5, $0006  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $01F3  ; Screen X position in pixels
    dw $0913, $F800  ; Screen subpixel Y position
    dw $0917, $0176  ; Layer 2 X position
    dw $09C2, $0120  ; Health
    dw $09CA, $0003  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $001A  ; Samus position/state
    dw $0A1E, $0304  ; More position/state
    dw $0AF6, $0293  ; Samus X
    dw $0AFA, $0055  ; Samus Y
    dw $D82A, $0100  ; Bosses
    dw $D8C0, $0070  ; Doors
    dw #$FFFF

preset_kpdr25_wrecked_ship_post_ws_supers:
    dw #preset_kpdr25_wrecked_ship_ws_shaft ; Wrecked Ship: WS Shaft
    dw $078D, $A210  ; DDB
    dw $079B, $CDA8  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $0008  ; Supers
    dw $09CC, $000A  ; Max supers
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $00C9  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D880, $0020  ; Items
    dw $D8C0, $0074  ; Doors
    dw #$FFFF

preset_kpdr25_wrecked_ship_attic:
    dw #preset_kpdr25_wrecked_ship_post_ws_supers ; Wrecked Ship: Post WS Supers
    dw $078D, $A2E8  ; DDB
    dw $079B, $CAF6  ; MDB
    dw $090F, $3C00  ; Screen subpixel X position
    dw $0911, $0400  ; Screen X position in pixels
    dw $0913, $6800  ; Screen subpixel Y position
    dw $0917, $0300  ; Layer 2 X position
    dw $0A1C, $0001  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0445  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw #$FFFF

preset_kpdr25_wrecked_ship_pre_bowling:
    dw #preset_kpdr25_wrecked_ship_attic ; Wrecked Ship: Attic
    dw $078D, $A1E0  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0800  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0204  ; Screen Y position in pixels
    dw $0917, $0100  ; Layer 2 X position
    dw $09C2, $0143  ; Health
    dw $09CA, $0007  ; Supers
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $02D8  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C0, $0174  ; Doors
    dw #$FFFF

preset_kpdr25_wrecked_ship_gravity:
    dw #preset_kpdr25_wrecked_ship_pre_bowling ; Wrecked Ship: Pre Bowling
    dw $078D, $8B32  ; DDB
    dw $079B, $C98E  ; MDB
    dw $07F3, $0030  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $8000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $9000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0919, $0200  ; Layer 2 Y position
    dw $09C2, $00EE  ; Health
    dw $0A1C, $006A  ; Samus position/state
    dw $0A1E, $0204  ; More position/state
    dw $0AF6, $0125  ; Samus X
    dw $0AFA, $02AB  ; Samus Y
    dw #$FFFF

preset_kpdr25_wrecked_ship_impulse_mockball:
    dw #preset_kpdr25_wrecked_ship_gravity ; Wrecked Ship: Gravity
    dw $078D, $A300  ; DDB
    dw $079B, $93FE  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00E6  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0447  ; Screen Y position in pixels
    dw $0917, $0073  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $3125  ; Equipped Items
    dw $09A4, $3125  ; Collected Items
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0186  ; Samus X
    dw $0AFA, $04D2  ; Samus Y
    dw $D880, $00A0  ; Items
    dw #$FFFF

preset_kpdr25_wrecked_ship_red_tower_elevator:
    dw #preset_kpdr25_wrecked_ship_impulse_mockball ; Wrecked Ship: Impulse Mockball
    dw $078D, $8A42  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F5, $0003  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $3000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0007  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $007F  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF

preset_kpdr25_maridia_hellway_return:
    dw #preset_kpdr25_wrecked_ship_red_tower_elevator ; Wrecked Ship: Red Tower Elevator
    dw $078D, $8B02  ; DDB
    dw $079B, $A322  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $0915, $0500  ; Screen Y position in pixels
    dw $0919, $0500  ; Layer 2 Y position
    dw $09CA, $0008  ; Supers
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0030  ; Samus X
    dw $0AFA, $058B  ; Samus Y
    dw #$FFFF

preset_kpdr25_maridia_bat_room_2:
    dw #preset_kpdr25_maridia_hellway_return ; Maridia: Hellway Return
    dw $078D, $907E  ; DDB
    dw $079B, $A253  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $091D  ; Screen Y position in pixels
    dw $0919, $06D5  ; Layer 2 Y position
    dw $09C2, $00F3  ; Health
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $0060  ; Samus X
    dw $0AFA, $098B  ; Samus Y
    dw #$FFFF

preset_kpdr25_maridia_the_tube:
    dw #preset_kpdr25_maridia_bat_room_2 ; Maridia: Bat Room
    dw $078D, $9102  ; DDB
    dw $079B, $A408  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $7400  ; Screen subpixel Y position
    dw $0915, $0100  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $00C0  ; Layer 2 Y position
    dw $09CA, $0009  ; Supers
    dw $0AF6, $01B9  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_kpdr25_maridia_fish_tank:
    dw #preset_kpdr25_maridia_the_tube ; Maridia: The Tube
    dw $078D, $A330  ; DDB
    dw $079B, $CFC9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $FFFF  ; Screen subpixel X position
    dw $0911, $010C  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $05F3  ; Screen Y position in pixels
    dw $0917, $00C9  ; Layer 2 X position
    dw $0919, $0476  ; Layer 2 Y position
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $000B  ; Samus position/state
    dw $0AF6, $0173  ; Samus X
    dw $0AFA, $068B  ; Samus Y
    dw $D820, $0801  ; Events
    dw #$FFFF

preset_kpdr25_maridia_crab_shaft:
    dw #preset_kpdr25_maridia_fish_tank ; Maridia: Fish Tank
    dw $078D, $A3F0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $9C01  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $00B8  ; Health
    dw $0A1C, $0011  ; Samus position/state
    dw $0AF6, $05DA  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr25_maridia_botwoon_hall:
    dw #preset_kpdr25_maridia_crab_shaft ; Maridia: Crab Shaft
    dw $078D, $A4C8  ; DDB
    dw $079B, $D5A7  ; MDB
    dw $07F5, $0005  ; Music Track
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1800  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $0008  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $007A  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $D8C0, $8174  ; Doors
    dw #$FFFF

preset_kpdr25_maridia_botwoon:
    dw #preset_kpdr25_maridia_botwoon_hall ; Maridia: Botwoon Hall
    dw $078D, $A72C  ; DDB
    dw $079B, $D617  ; MDB
    dw $090F, $DFFF  ; Screen subpixel X position
    dw $0911, $0300  ; Screen X position in pixels
    dw $0913, $DFFF  ; Screen subpixel Y position
    dw $0915, $0014  ; Screen Y position in pixels
    dw $0917, $0240  ; Layer 2 X position
    dw $0919, $0014  ; Layer 2 Y position
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $03BC  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr25_maridia_halfie:
    dw #preset_kpdr25_maridia_botwoon ; Maridia: Botwoon
    dw $078D, $A918  ; DDB
    dw $079B, $D7E4  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0911, $000E  ; Screen X position in pixels
    dw $0913, $E400  ; Screen subpixel Y position
    dw $0915, $001F  ; Screen Y position in pixels
    dw $0917, $000A  ; Layer 2 X position
    dw $0919, $001F  ; Layer 2 Y position
    dw $09C2, $01F3  ; Health
    dw $09C4, $01F3  ; Max health
    dw $09C6, $0019  ; Missiles
    dw $09CA, $0002  ; Supers
    dw $0AF6, $00AD  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D82C, $0002  ; Bosses
    dw $D882, $0100  ; Items
    dw #$FFFF

preset_kpdr25_maridia_draygon:
    dw #preset_kpdr25_maridia_halfie ; Maridia: Halfie
    dw $078D, $A7F8  ; DDB
    dw $079B, $D78F  ; MDB
    dw $090F, $1001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0180  ; Layer 2 Y position
    dw $09C2, $01BA  ; Health
    dw $09CA, $0000  ; Supers
    dw $0A1C, $008A  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C2, $0C00  ; Doors
    dw #$FFFF

preset_kpdr25_maridia_post_space_jump:
    dw #preset_kpdr25_maridia_draygon ; Maridia: Draygon
    dw $078D, $A978  ; DDB
    dw $079B, $D9AA  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $3000  ; Screen subpixel X position
    dw $0913, $BC00  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09A2, $3325  ; Equipped Items
    dw $09A4, $3325  ; Collected Items
    dw $09C2, $0184  ; Health
    dw $09C6, $0006  ; Missiles
    dw $09CA, $0003  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0011  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $00C7  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D82C, $0003  ; Bosses
    dw $D882, $0500  ; Items
    dw $D8C2, $8C00  ; Doors
    dw #$FFFF

preset_kpdr25_maridia_whomple_jump:
    dw #preset_kpdr25_maridia_post_space_jump ; Maridia: Post Space Jump
    dw $078D, $A96C  ; DDB
    dw $079B, $D78F  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $4000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0006  ; Screen Y position in pixels
    dw $0919, $0004  ; Layer 2 Y position
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $003F  ; Samus X
    dw $D8C2, $CC00  ; Doors
    dw #$FFFF

preset_kpdr25_maridia_cac_alley:
    dw #preset_kpdr25_maridia_whomple_jump ; Maridia: Whomple Jump
    dw $078D, $A7E0  ; DDB
    dw $079B, $D913  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0915, $011A  ; Screen Y position in pixels
    dw $0919, $011A  ; Layer 2 Y position
    dw $09C6, $0005  ; Missiles
    dw $0AF6, $002D  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $DC00  ; Doors
    dw #$FFFF

preset_kpdr25_maridia_plasma_spark_room:
    dw #preset_kpdr25_maridia_cac_alley ; Maridia: Cac Alley
    dw $078D, $A93C  ; DDB
    dw $079B, $D5EC  ; MDB
    dw $090F, $8000  ; Screen subpixel X position
    dw $0913, $3C01  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0006  ; Supers
    dw $0A1C, $0052  ; Samus position/state
    dw $0A1E, $0204  ; More position/state
    dw $0AF6, $0032  ; Samus X
    dw $0AFA, $0067  ; Samus Y
    dw #$FFFF

preset_kpdr25_maridia_kassiuz_room:
    dw #preset_kpdr25_maridia_plasma_spark_room ; Maridia: Plasma Spark Room
    dw $078D, $A750  ; DDB
    dw $079B, $D340  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $6C00  ; Screen subpixel Y position
    dw $0915, $00F4  ; Screen Y position in pixels
    dw $0917, $01C0  ; Layer 2 X position
    dw $0919, $00F4  ; Layer 2 Y position
    dw $09C6, $0007  ; Missiles
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $0292  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $DC08  ; Doors
    dw #$FFFF

preset_kpdr25_maridia_plasma_spark_revisit:
    dw #preset_kpdr25_maridia_kassiuz_room ; Maridia: Kassiuz Room
    dw $078D, $A540  ; DDB
    dw $079B, $D387  ; MDB
    dw $090F, $3001  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $031C  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0255  ; Layer 2 Y position
    dw $09A6, $100B  ; Beams
    dw $09A8, $100F  ; Beams
    dw $09C2, $01BB  ; Health
    dw $09C6, $0009  ; Missiles
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $003E  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D880, $80A0  ; Items
    dw $D8C2, $DC0A  ; Doors
    dw #$FFFF

preset_kpdr25_maridia_sand_hall:
    dw #preset_kpdr25_maridia_plasma_spark_revisit ; Maridia: Plasma Spark Revisit
    dw $078D, $A600  ; DDB
    dw $079B, $D48E  ; MDB
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $1400  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09C2, $01C0  ; Health
    dw $09CA, $0005  ; Supers
    dw $0A1C, $000C  ; Samus position/state
    dw $0AF6, $00A7  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $D8C2, $DC1A  ; Doors
    dw #$FFFF

preset_kpdr25_lower_norfair_business_center_revisit:
    dw #preset_kpdr25_maridia_sand_hall ; Maridia: Sand Hall
    dw $078D, $9246  ; DDB
    dw $079B, $A7DE  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0239  ; Screen Y position in pixels
    dw $0919, $01AA  ; Layer 2 Y position
    dw $09C2, $01F3  ; Health
    dw $09CA, $0004  ; Supers
    dw $0A1C, $0025  ; Samus position/state
    dw $0A1E, $0E04  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $02A9  ; Samus Y
    dw #$FFFF

preset_kpdr25_lower_norfair_magdollite_tunnel:
    dw #preset_kpdr25_lower_norfair_business_center_revisit ; Lower Norfair: Business Center Revisit
    dw $078D, $9576  ; DDB
    dw $079B, $AEDF  ; MDB
    dw $0915, $01EC  ; Screen Y position in pixels
    dw $0919, $0171  ; Layer 2 Y position
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $006F  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_kpdr25_lower_norfair_ln_elevator:
    dw #preset_kpdr25_lower_norfair_magdollite_tunnel ; Lower Norfair: Magdollite Tunnel
    dw $078D, $96DE  ; DDB
    dw $079B, $AF3F  ; MDB
    dw $0913, $4800  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01F0  ; Health
    dw $09C6, $0008  ; Missiles
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0007  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $007B  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D8BA, $01F1  ; Doors
    dw #$FFFF

preset_kpdr25_lower_norfair_fast_pillars:
    dw #preset_kpdr25_lower_norfair_ln_elevator ; Lower Norfair: LN Elevator
    dw $078D, $96F6  ; DDB
    dw $079B, $B236  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $0911, $0700  ; Screen X position in pixels
    dw $0913, $9C00  ; Screen subpixel Y position
    dw $0915, $0200  ; Screen Y position in pixels
    dw $0917, $0540  ; Layer 2 X position
    dw $0919, $0301  ; Layer 2 Y position
    dw $0A1C, $000B  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $07D6  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw #$FFFF

preset_kpdr25_lower_norfair_amphitheatre:
    dw #preset_kpdr25_lower_norfair_fast_pillars ; Lower Norfair: Fast Pillars
    dw $078D, $994E  ; DDB
    dw $079B, $B4AD  ; MDB
    dw $090F, $E000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $011D  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00D5  ; Layer 2 Y position
    dw $09C2, $017B  ; Health
    dw $09C6, $000A  ; Missiles
    dw $0A1C, $0009  ; Samus position/state
    dw $0AF6, $00BE  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_kpdr25_lower_norfair_kihunter_stairs:
    dw #preset_kpdr25_lower_norfair_amphitheatre ; Lower Norfair: Amphitheatre
    dw $078D, $997E  ; DDB
    dw $079B, $B4E5  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $02A9  ; Screen X position in pixels
    dw $0915, $003F  ; Screen Y position in pixels
    dw $0917, $01FE  ; Layer 2 X position
    dw $0919, $002F  ; Layer 2 Y position
    dw $0A1C, $0011  ; Samus position/state
    dw $0AF6, $0309  ; Samus X
    dw $0AFA, $00AF  ; Samus Y
    dw #$FFFF

preset_kpdr25_lower_norfair_metal_pirates:
    dw #preset_kpdr25_lower_norfair_kihunter_stairs ; Lower Norfair: Kihunter Stairs
    dw $078D, $99EA  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $4000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $021F  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0197  ; Layer 2 Y position
    dw $09C2, $0179  ; Health
    dw $09CA, $0003  ; Supers
    dw $09CE, $0001  ; Pbs
    dw $0A1C, $001C  ; Samus position/state
    dw $0A1E, $0304  ; More position/state
    dw $0AF6, $013F  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8BA, $C1F1  ; Doors
    dw #$FFFF

preset_kpdr25_lower_norfair_ridley:
    dw #preset_kpdr25_lower_norfair_metal_pirates ; Lower Norfair: Metal Pirates
    dw $078D, $995A  ; DDB
    dw $079B, $B37A  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $5400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01A5  ; Health
    dw $09CA, $0006  ; Supers
    dw $0A1C, $00D0  ; Samus position/state
    dw $0A1E, $1504  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D8BA, $D1F1  ; Doors
    dw $D8BC, $0001  ; Doors
    dw #$FFFF

preset_kpdr25_lower_norfair_ridley_etank:
    dw #preset_kpdr25_lower_norfair_ridley ; Lower Norfair: Ridley
    dw $078D, $98B2  ; DDB
    dw $079B, $B698  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0917, $0001  ; Layer 2 X position
    dw $09C2, $0257  ; Health
    dw $09C4, $0257  ; Max health
    dw $09C6, $000E  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $00BF  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D82A, $0101  ; Bosses
    dw $D878, $401C  ; Items
    dw $D8BA, $D9F1  ; Doors
    dw #$FFFF

preset_kpdr25_lower_norfair_wasteland_revisit:
    dw #preset_kpdr25_lower_norfair_ridley_etank ; Lower Norfair: Ridley E-tank
    dw $078D, $9966  ; DDB
    dw $079B, $B62B  ; MDB
    dw $07F3, $0018  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $D000  ; Screen subpixel X position
    dw $0911, $0200  ; Screen X position in pixels
    dw $0913, $5C01  ; Screen subpixel Y position
    dw $0917, $0180  ; Layer 2 X position
    dw $09C2, $0234  ; Health
    dw $0A1C, $0017  ; Samus position/state
    dw $0A1E, $0208  ; More position/state
    dw $0AF6, $02D8  ; Samus X
    dw $0AFA, $006C  ; Samus Y
    dw $0B3F, $0002  ; Blue suit
    dw $D8BA, $DDF1  ; Doors
    dw #$FFFF

preset_kpdr25_lower_norfair_kihunter_revisit:
    dw #preset_kpdr25_lower_norfair_wasteland_revisit ; Lower Norfair: Wasteland Revisit
    dw $078D, $9A3E  ; DDB
    dw $079B, $B5D5  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0917, $03C0  ; Layer 2 X position
    dw $09C2, $022D  ; Health
    dw $09CE, $0004  ; Pbs
    dw $0A1C, $0089  ; Samus position/state
    dw $0A1E, $1508  ; More position/state
    dw $0AF6, $056B  ; Samus X
    dw $0AFA, $006B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw #$FFFF

preset_kpdr25_lower_norfair_fireflea_room:
    dw #preset_kpdr25_lower_norfair_kihunter_revisit ; Lower Norfair: Kihunter Revisit
    dw $078D, $9A26  ; DDB
    dw $079B, $B585  ; MDB
    dw $090F, $C180  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $B000  ; Screen subpixel Y position
    dw $0917, $0000  ; Layer 2 X position
    dw $09C2, $01FB  ; Health
    dw $09CE, $0003  ; Pbs
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $00AD  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr25_lower_norfair_three_musketeers:
    dw #preset_kpdr25_lower_norfair_fireflea_room ; Lower Norfair: Fireflea Room
    dw $078D, $9A92  ; DDB
    dw $079B, $B510  ; MDB
    dw $090F, $D000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $001B  ; Screen Y position in pixels
    dw $0919, $0014  ; Layer 2 Y position
    dw $09C2, $01EC  ; Health
    dw $09C6, $000D  ; Missiles
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $006A  ; Samus X
    dw #$FFFF

preset_kpdr25_golden_4_frog_speedway_2:
    dw #preset_kpdr25_lower_norfair_three_musketeers ; Lower Norfair: Three Musketeers
    dw $078D, $956A  ; DDB
    dw $079B, $AF72  ; MDB
    dw $07F3, $0015  ; Music Bank
    dw $090F, $6000  ; Screen subpixel X position
    dw $0913, $8400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01BA  ; Health
    dw $09C6, $000E  ; Missiles
    dw $09CA, $000A  ; Supers
    dw $09CE, $0002  ; Pbs
    dw $0A1C, $0010  ; Samus position/state
    dw $0AF6, $0087  ; Samus X
    dw #$FFFF

preset_kpdr25_golden_4_maridia_tube_revisit:
    dw #preset_kpdr25_golden_4_frog_speedway_2 ; Golden 4: Frog Speedway
    dw $078D, $92EE  ; DDB
    dw $079B, $A6A1  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $5000  ; Screen subpixel X position
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0A1C, $0025  ; Samus position/state
    dw $0A1E, $0E04  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $0087  ; Samus Y
    dw #$FFFF

preset_kpdr25_golden_4_red_fish_room:
    dw #preset_kpdr25_golden_4_maridia_tube_revisit ; Golden 4: Maridia Tube Revisit
    dw $078D, $A3F0  ; DDB
    dw $079B, $D0B9  ; MDB
    dw $07F3, $001B  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $A000  ; Screen subpixel X position
    dw $0911, $0207  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $0185  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0A1C, $0055  ; Samus position/state
    dw $0A1E, $0208  ; More position/state
    dw $0AF6, $026F  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw #$FFFF

preset_kpdr25_golden_4_premoat_revisit:
    dw #preset_kpdr25_golden_4_red_fish_room ; Golden 4: Red Fish Room
    dw $078D, $90BA  ; DDB
    dw $079B, $962A  ; MDB
    dw $07F3, $0012  ; Music Bank
    dw $07F5, $0003  ; Music Track
    dw $090F, $9000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09CA, $0009  ; Supers
    dw $0A1C, $0025  ; Samus position/state
    dw $0A1E, $0E04  ; More position/state
    dw $0AF6, $0080  ; Samus X
    dw $0AFA, $00A9  ; Samus Y
    dw #$FFFF

preset_kpdr25_golden_4_ship_revisit:
    dw #preset_kpdr25_golden_4_premoat_revisit ; Golden 4: Pre-Moat Revisit
    dw $078D, $8AC6  ; DDB
    dw $079B, $91F8  ; MDB
    dw $07F3, $000C  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0575  ; Screen X position in pixels
    dw $0913, $2800  ; Screen subpixel Y position
    dw $0915, $0400  ; Screen Y position in pixels
    dw $0917, $02BA  ; Layer 2 X position
    dw $09C6, $000D  ; Missiles
    dw $0A1C, $0010  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0615  ; Samus X
    dw $0AFA, $04BB  ; Samus Y
    dw $0B3F, $0104  ; Blue suit
    dw #$FFFF

preset_kpdr25_golden_4_g4_elevator:
    dw #preset_kpdr25_golden_4_ship_revisit ; Golden 4: Ship Revisit
    dw $078D, $91F2  ; DDB
    dw $079B, $A66A  ; MDB
    dw $07F3, $0009  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $1000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $1000  ; Screen subpixel Y position
    dw $0915, $011F  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $09CA, $0008  ; Supers
    dw $0A1C, $0007  ; Samus position/state
    dw $0A1E, $0008  ; More position/state
    dw $0AF6, $0077  ; Samus X
    dw $0AFA, $019B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D820, $0FC1  ; Events
    dw $D8B2, $6C01  ; Doors
    dw #$FFFF

preset_kpdr25_tourian_metroids_1:
    dw #preset_kpdr25_golden_4_g4_elevator ; Golden 4: G4 Elevator
    dw $078D, $9222  ; DDB
    dw $079B, $DAAE  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $2000  ; Screen subpixel X position
    dw $0913, $FFFF  ; Screen subpixel Y position
    dw $0915, $0300  ; Screen Y position in pixels
    dw $0919, $0240  ; Layer 2 Y position
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $0039  ; Samus X
    dw $0AFA, $038B  ; Samus Y
    dw $D90C, $0100  ; Map Stations
    dw #$FFFF

preset_kpdr25_tourian_metroids_2:
    dw #preset_kpdr25_tourian_metroids_1 ; Tourian: Metroids 1
    dw $078D, $A984  ; DDB
    dw $079B, $DAE1  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $0034  ; Screen X position in pixels
    dw $0913, $D000  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $0027  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $01C5  ; Health
    dw $09C6, $000F  ; Missiles
    dw $09CA, $0007  ; Supers
    dw $0A1C, $000C  ; Samus position/state
    dw $0AF6, $00D4  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $0B3F, $0001  ; Blue suit
    dw $D822, $0021  ; Events
    dw #$FFFF

preset_kpdr25_tourian_metroids_3:
    dw #preset_kpdr25_tourian_metroids_2 ; Tourian: Metroids 2
    dw $078D, $A9B4  ; DDB
    dw $079B, $DB31  ; MDB
    dw $090F, $2000  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $EFFF  ; Screen subpixel Y position
    dw $0915, $0106  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $00C4  ; Layer 2 Y position
    dw $09C2, $0210  ; Health
    dw $09C6, $0015  ; Missiles
    dw $09CA, $0009  ; Supers
    dw $0A1C, $0009  ; Samus position/state
    dw $0A1E, $0108  ; More position/state
    dw $0AF6, $00CD  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw $0B3F, $0000  ; Blue suit
    dw $D822, $0023  ; Events
    dw $D8C4, $0003  ; Doors
    dw #$FFFF

preset_kpdr25_tourian_metroids_4:
    dw #preset_kpdr25_tourian_metroids_3 ; Tourian: Metroids 3
    dw $078D, $A9CC  ; DDB
    dw $079B, $DB7D  ; MDB
    dw $090F, $6000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $9400  ; Screen subpixel Y position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0257  ; Health
    dw $09C6, $0019  ; Missiles
    dw $09CA, $0008  ; Supers
    dw $09CE, $0004  ; Pbs
    dw $0AF6, $05C7  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw $D822, $0027  ; Events
    dw $D8C4, $0007  ; Doors
    dw #$FFFF

preset_kpdr25_tourian_baby_skip:
    dw #preset_kpdr25_tourian_metroids_4 ; Tourian: Metroids 4
    dw $078D, $AA14  ; DDB
    dw $079B, $DC65  ; MDB
    dw $07F3, $0045  ; Music Bank
    dw $07F5, $0006  ; Music Track
    dw $090F, $F000  ; Screen subpixel X position
    dw $0911, $0100  ; Screen X position in pixels
    dw $0913, $FC00  ; Screen subpixel Y position
    dw $0917, $00C0  ; Layer 2 X position
    dw $09C2, $0239  ; Health
    dw $09CA, $000A  ; Supers
    dw $09CE, $0005  ; Pbs
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $01B6  ; Samus X
    dw $0AFA, $00AB  ; Samus Y
    dw $D822, $002F  ; Events
    dw $D8C4, $000F  ; Doors
    dw #$FFFF

preset_kpdr25_tourian_zeb_skip:
    dw #preset_kpdr25_tourian_baby_skip ; Tourian: Baby Skip
    dw $078D, $AAA4  ; DDB
    dw $079B, $DDF3  ; MDB
    dw $07F3, $001E  ; Music Bank
    dw $07F5, $0005  ; Music Track
    dw $090F, $AFFF  ; Screen subpixel X position
    dw $0911, $0000  ; Screen X position in pixels
    dw $0913, $0000  ; Screen subpixel Y position
    dw $0915, $021A  ; Screen Y position in pixels
    dw $0917, $0000  ; Layer 2 X position
    dw $0919, $0193  ; Layer 2 Y position
    dw $09CA, $0007  ; Supers
    dw $0AF6, $003E  ; Samus X
    dw $0AFA, $028B  ; Samus Y
    dw $D8C4, $03AF  ; Doors
    dw #$FFFF

preset_kpdr25_tourian_mother_brain_2:
    dw #preset_kpdr25_tourian_zeb_skip ; Tourian: Zeb Skip
    dw $078D, $AAC8  ; DDB
    dw $079B, $DD58  ; MDB
    dw $07F3, $0021  ; Music Bank
    dw $07F5, $0000  ; Music Track
    dw $090F, $79FF  ; Screen subpixel X position
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0176  ; Health
    dw $09C6, $0005  ; Missiles
    dw $09CA, $0000  ; Supers
    dw $0AF6, $00CF  ; Samus X
    dw $0AFA, $009B  ; Samus Y
    dw $D820, $0FC5  ; Events
    dw #$FFFF

preset_kpdr25_tourian_mother_brain_3:
    dw #preset_kpdr25_tourian_mother_brain_2 ; Tourian: Mother Brain 2
    dw $09A6, $1009  ; Beams
    dw $09C2, $018F  ; Health
    dw $09C6, $0000  ; Missiles
    dw $09CE, $0000  ; Pbs
    dw $0A76, $8000  ; Hyper beam
    dw $D82C, $0203  ; Bosses
    dw #$FFFF

preset_kpdr25_tourian_zebes_escape:
    dw #preset_kpdr25_tourian_mother_brain_3 ; Tourian: Mother Brain 3
    dw $09A6, $1009  ; Beams
    dw $0A1C, $009B  ; Samus position/state
    dw $0A1E, $0000  ; More position/state
    dw $0AF6, $0025  ; Samus X
    dw $0AFA, $009E  ; Samus Y
    dw $D820, $4FC5  ; Events
    dw #$FFFF

preset_kpdr25_tourian_escape_room_3:
    dw #preset_kpdr25_tourian_zebes_escape ; Tourian: Zebes Escape
    dw $078D, $AAEC  ; DDB
    dw $079B, $DE7A  ; MDB
    dw $07F3, $0024  ; Music Bank
    dw $07F5, $0007  ; Music Track
    dw $090F, $C000  ; Screen subpixel X position
    dw $0915, $007C  ; Screen Y position in pixels
    dw $0919, $005D  ; Layer 2 Y position
    dw $0A1C, $0029  ; Samus position/state
    dw $0A1E, $0608  ; More position/state
    dw $0AF6, $00DB  ; Samus X
    dw $0AFA, $00EC  ; Samus Y
    dw #$FFFF

preset_kpdr25_tourian_escape_room_4:
    dw #preset_kpdr25_tourian_escape_room_3 ; Tourian: Escape Room 3
    dw $078D, $AB04  ; DDB
    dw $079B, $DEA7  ; MDB
    dw $090F, $3000  ; Screen subpixel X position
    dw $0911, $0500  ; Screen X position in pixels
    dw $0913, $4C00  ; Screen subpixel Y position
    dw $0915, $001C  ; Screen Y position in pixels
    dw $0917, $03C0  ; Layer 2 X position
    dw $0919, $0015  ; Layer 2 Y position
    dw $0AF6, $05D6  ; Samus X
    dw $0AFA, $008B  ; Samus Y
    dw #$FFFF

preset_kpdr25_tourian_escape_climb:
    dw #preset_kpdr25_tourian_escape_room_4 ; Tourian: Escape Room 4
    dw $078D, $AB1C  ; DDB
    dw $079B, $DEDE  ; MDB
    dw $090F, $0000  ; Screen subpixel X position
    dw $0911, $00F1  ; Screen X position in pixels
    dw $0913, $A400  ; Screen subpixel Y position
    dw $0915, $00FB  ; Screen Y position in pixels
    dw $0917, $00B4  ; Layer 2 X position
    dw $0919, $00BC  ; Layer 2 Y position
    dw $09C2, $0171  ; Health
    dw $0AF6, $0151  ; Samus X
    dw $0AFA, $018B  ; Samus Y
    dw #$FFFF

preset_kpdr25_tourian_escape_parlor:
    dw #preset_kpdr25_tourian_escape_climb ; Tourian: Escape Climb
    dw $078D, $AB34  ; DDB
    dw $079B, $96BA  ; MDB
    dw $0911, $0100  ; Screen X position in pixels
    dw $0915, $0000  ; Screen Y position in pixels
    dw $0917, $00C0  ; Layer 2 X position
    dw $0919, $0000  ; Layer 2 Y position
    dw $09C2, $0189  ; Health
    dw $0A1C, $000A  ; Samus position/state
    dw $0A1E, $0104  ; More position/state
    dw $0AF6, $019E  ; Samus X
    dw $0AFA, $005B  ; Samus Y
    dw #$FFFF
