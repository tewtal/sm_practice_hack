
preset_bombs_elevator:
     dw #$0000
    dl $7E078B : db $02 : dw $0000 ; Elevator Index
    dl $7E078D : db $02 : dw $AB58 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $DF45 ; MDB
    dl $7E079F : db $02 : dw $0006 ; Region
    dl $7E07C3 : db $02 : dw $E22A ; GFX Pointers
    dl $7E07C5 : db $02 : dw $04C0 ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2C1 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $002D ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0000 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0000 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0000 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $0000 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $0000 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0000 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0000 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0200 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E093F : db $02 : dw $0000 ; Ceres escape flag
    dl $7E09A2 : db $02 : dw $0000 ; Equipped Items
    dl $7E09A4 : db $02 : dw $0000 ; Collected Items
    dl $7E09A6 : db $02 : dw $0000 ; Beams
    dl $7E09A8 : db $02 : dw $0000 ; Beams
    dl $7E09C0 : db $02 : dw $0000 ; Manual/Auto reserve tank
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E09C4 : db $02 : dw $0063 ; Max helath
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09C8 : db $02 : dw $0000 ; Max missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CC : db $02 : dw $0000 ; Max supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E09D0 : db $02 : dw $0000 ; Max pbs
    dl $7E09D4 : db $02 : dw $0000 ; Max reserves
    dl $7E09D6 : db $02 : dw $0000 ; Reserves
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0A76 : db $02 : dw $0000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0048 ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED7C0 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7C2 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7C4 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7C6 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7C8 : db $02 : dw $0800 ; SRAM copy
    dl $7ED7CA : db $02 : dw $0400 ; SRAM copy
    dl $7ED7CC : db $02 : dw $0200 ; SRAM copy
    dl $7ED7CE : db $02 : dw $0100 ; SRAM copy
    dl $7ED7D0 : db $02 : dw $0040 ; SRAM copy
    dl $7ED7D2 : db $02 : dw $0080 ; SRAM copy
    dl $7ED7D4 : db $02 : dw $8000 ; SRAM copy
    dl $7ED7D6 : db $02 : dw $4000 ; SRAM copy
    dl $7ED7D8 : db $02 : dw $2000 ; SRAM copy
    dl $7ED7DA : db $02 : dw $0020 ; SRAM copy
    dl $7ED7DC : db $02 : dw $0010 ; SRAM copy
    dl $7ED7DE : db $02 : dw $0000 ; SRAM copy
    dl $7ED7E0 : db $02 : dw $0063 ; SRAM copy
    dl $7ED7E2 : db $02 : dw $0063 ; SRAM copy
    dl $7ED7E4 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7E6 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7E8 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7EA : db $02 : dw $0000 ; SRAM copy
    dl $7ED7EC : db $02 : dw $0000 ; SRAM copy
    dl $7ED7EE : db $02 : dw $0000 ; SRAM copy
    dl $7ED7F0 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7F2 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7F4 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7F6 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7F8 : db $02 : dw $0000 ; SRAM copy
    dl $7ED7FA : db $02 : dw $0000 ; SRAM copy
    dl $7ED7FC : db $02 : dw $0000 ; SRAM copy
    dl $7ED7FE : db $02 : dw $0000 ; SRAM copy
    dl $7ED800 : db $02 : dw $0000 ; SRAM copy
    dl $7ED802 : db $02 : dw $0000 ; SRAM copy
    dl $7ED804 : db $02 : dw $0001 ; SRAM copy
    dl $7ED806 : db $02 : dw $0001 ; SRAM copy
    dl $7ED808 : db $02 : dw $0000 ; SRAM copy
    dl $7ED80A : db $02 : dw $0000 ; SRAM copy
    dl $7ED80C : db $02 : dw $0000 ; SRAM copy
    dl $7ED80E : db $02 : dw $0000 ; SRAM copy
    dl $7ED810 : db $02 : dw $0000 ; SRAM copy
    dl $7ED812 : db $02 : dw $0000 ; SRAM copy
    dl $7ED814 : db $02 : dw $0000 ; SRAM copy
    dl $7ED816 : db $02 : dw $0000 ; SRAM copy
    dl $7ED818 : db $02 : dw $0000 ; SRAM copy
    dl $7ED81A : db $02 : dw $0000 ; SRAM copy
    dl $7ED81C : db $02 : dw $0000 ; SRAM copy
    dl $7ED81E : db $02 : dw $0000 ; SRAM copy
    dl $7ED820 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED822 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED824 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED826 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED828 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED82A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED82C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED82E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED830 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED832 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED834 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED836 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED838 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED83A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED83C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED83E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED840 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED842 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED844 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED846 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED848 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED84A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED84C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED84E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED850 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED852 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED854 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED856 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED858 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED85A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED85C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED85E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED860 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED862 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED864 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED866 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED868 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED86A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED86C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED86E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED870 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED872 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED874 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED876 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED878 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED87A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED87C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED87E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED880 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED882 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED884 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED886 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED888 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED88A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED88C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED88E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED890 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED892 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED894 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED896 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED898 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED89A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED89C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED89E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8A0 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8A2 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8A4 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8A6 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8A8 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8AA : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8AC : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8AE : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8B0 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8BC : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8BE : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8C6 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8C8 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8CA : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8CC : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8CE : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8D0 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8D2 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8D4 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8D6 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8D8 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8DA : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8DC : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8DE : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8E0 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8E2 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8E4 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8E6 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8E8 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8EA : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8EC : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8EE : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8F0 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8F2 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8F4 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8F6 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8F8 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8FA : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8FC : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED8FE : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED900 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED902 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED904 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED906 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED908 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED90A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED90C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED90E : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED910 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED912 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED914 : db $02 : dw $001F ; Events, Items, Doors
    dl $7ED916 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED918 : db $02 : dw $0006 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED91C : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED91E : db $02 : dw $0000 ; Events, Items, Doors
    dw #$FFFF
.after

preset_bombs_last_3_rooms:
    dw #preset_bombs_elevator ; Bombs: Ceres elevator
    dl $7E078D : db $02 : dw $ABA0 ; DDB
    dl $7E079B : db $02 : dw $E021 ; MDB
    dl $7E07C3 : db $02 : dw $B004 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E3C0 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E0907 : db $02 : dw $0040 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0030 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FE0 ; How many blocks X BG2 is scrolled?
    dl $7E090F : db $02 : dw $6900 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E091B : db $02 : dw $00C0 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $0400 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0300 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E093F : db $02 : dw $0002 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0018 ; Health
    dl $7E0A1C : db $02 : dw $0006 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $004A ; Samus X
    dl $7E0AFA : db $02 : dw $009E ; Samus Y
    dl $7ED82E : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_bombs_ship:
    dw #preset_bombs_last_3_rooms ; Bombs: Ceres Last 3 rooms
    dl $7E078B : db $02 : dw $0012 ; Elevator Index
    dl $7E078D : db $02 : dw $88FE ; DDB
    dl $7E079B : db $02 : dw $91F8 ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0006 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F7 : db $02 : dw $0040 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $003D ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0020 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0040 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $003D ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0080 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $003D ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0040 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $003D ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $03D0 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0200 ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $0181 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091F : db $02 : dw $0000 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0200 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0400 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $8000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0001 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E093F : db $02 : dw $0000 ; Ceres escape flag
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0481 ; Samus X
    dl $7E0AFA : db $02 : dw $0440 ; Samus Y
    dl $7ED7D0 : db $02 : dw $4000 ; SRAM copy
    dl $7ED7D2 : db $02 : dw $8000 ; SRAM copy
    dl $7ED7D4 : db $02 : dw $0080 ; SRAM copy
    dl $7ED7D6 : db $02 : dw $2000 ; SRAM copy
    dl $7ED7D8 : db $02 : dw $0040 ; SRAM copy
    dl $7ED7E0 : db $02 : dw $0018 ; SRAM copy
    dl $7ED7F8 : db $02 : dw $0002 ; SRAM copy
    dl $7ED7FA : db $02 : dw $0039 ; SRAM copy
    dl $7ED802 : db $02 : dw $0001 ; SRAM copy
    dl $7ED914 : db $02 : dw $0022 ; Events, Items, Doors
    dw #$FFFF
.after

preset_bombs_parlor_down:
    dw #preset_bombs_ship ; Bombs: Ship
    dl $7E078B : db $02 : dw $0000 ; Elevator Index
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0040 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0040 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0040 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0040 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0020 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0040 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0400 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0033 ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dl $7ED7E0 : db $02 : dw $0063 ; SRAM copy
    dl $7ED7F8 : db $02 : dw $002A ; SRAM copy
    dl $7ED7FA : db $02 : dw $0007 ; SRAM copy
    dl $7ED7FC : db $02 : dw $0001 ; SRAM copy
    dl $7ED8F8 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED914 : db $02 : dw $0005 ; Events, Items, Doors
    dl $7ED918 : db $02 : dw $0000 ; Events, Items, Doors
    dl $7ED91C : db $02 : dw $1010 ; Events, Items, Doors
    dw #$FFFF
.after

preset_bombs_morph:
    dw #preset_bombs_parlor_down ; Bombs: Parlor down
    dl $7E078D : db $02 : dw $8B9E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9E9F ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E08F7 : db $02 : dw $0050 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0020 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $003C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0018 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0050 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0020 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $003C ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $FFF0 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0909 : db $02 : dw $0140 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FEC ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0026 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $FF00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1200 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0500 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $0000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E0A1C : db $02 : dw $0000 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0580 ; Samus X
    dl $7E0AFA : db $02 : dw $02A8 ; Samus Y
    dl $7ED91A : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_bombs_pit_room:
    dw #preset_bombs_morph ; Bombs: Morph
    dl $7E078D : db $02 : dw $8EB6 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $97B5 ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0909 : db $02 : dw $0110 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0000 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FF0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $0000 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $0400 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1100 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0020 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09A2 : db $02 : dw $0004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $0004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E09C8 : db $02 : dw $0005 ; Max missiles
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED872 : db $02 : dw $0400 ; Events, Items, Doors
    dl $7ED874 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0003 ; Events, Items, Doors
    dw #$FFFF
.after

preset_bombs_climb:
    dw #preset_bombs_pit_room ; Bombs: Pit Room
    dl $7E078D : db $02 : dw $8B92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $975C ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E0903 : db $02 : dw $0029 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0010 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0FD0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $0100 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0200 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $0059 ; Health
    dl $7E0A1C : db $02 : dw $0008 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0033 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $0400 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0004 ; Events, Items, Doors
    dw #$FFFF
.after

preset_bombs_parlor_up:
    dw #preset_bombs_climb ; Bombs: Climb
    dl $7E078D : db $02 : dw $8B7A ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $000C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $001D ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0060 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0000 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0090 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FEC ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0F80 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $FF00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0900 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0800 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C2 : db $02 : dw $0063 ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $019C ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_bombs_bomb_torizo:
    dw #preset_bombs_parlor_up ; Bombs: Parlor up
    dl $7E078D : db $02 : dw $8982 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $9879 ; MDB
    dl $7E08F7 : db $02 : dw $0020 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0018 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0020 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0050 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0060 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0028 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $0300 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0600 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $02D6 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B2 : db $02 : dw $2400 ; Events, Items, Doors
    dw #$FFFF
.after

preset_pbs_alcatraz:
    dw #preset_bombs_bomb_torizo ; Bombs: Bomb Torizo
    dl $7E078D : db $02 : dw $8BAA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $0029 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0030 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0FD0 ; How many blocks X BG2 is scrolled?
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0200 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09A2 : db $02 : dw $1004 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1004 ; Collected Items
    dl $7E09C6 : db $02 : dw $0004 ; Missiles
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0028 ; Samus X
    dl $7ED828 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED870 : db $02 : dw $0080 ; Events, Items, Doors
    dl $7ED8B2 : db $02 : dw $2C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0005 ; Events, Items, Doors
    dw #$FFFF
.after

preset_pbs_terminator:
    dw #preset_pbs_alcatraz ; Power Bombs: Alcatraz
    dl $7E078D : db $02 : dw $8BB6 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $000C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $0035 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0018 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0000 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0040 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FCC ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FE0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $0800 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $FF00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0400 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0300 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0200 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E0A1C : db $02 : dw $0032 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0804 ; More position/state
    dl $7E0AF6 : db $02 : dw $0115 ; Samus X
    dl $7E0AFA : db $02 : dw $0095 ; Samus Y
    dw #$FFFF
.after

preset_pbs_pirates_shaft:
    dw #preset_pbs_terminator ; Power Bombs: Terminator
    dl $7E078D : db $02 : dw $895E ; DDB
    dl $7E079B : db $02 : dw $990D ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $001E ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0017 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $001E ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $004D ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0F90 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $005E ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FA0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0017 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $4280 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01EB ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0170 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $F900 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0500 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C4 : db $02 : dw $00C7 ; Max helath
    dl $7E09C6 : db $02 : dw $0005 ; Missiles
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED870 : db $02 : dw $0180 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0006 ; Events, Items, Doors
    dw #$FFFF
.after

preset_pbs_elevator:
    dw #preset_pbs_pirates_shaft ; Power Bombs: Pirates Shaft
    dl $7E078D : db $02 : dw $8C22 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9938 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0F30 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0080 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FF0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $0000 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $F300 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0800 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E0A1C : db $02 : dw $0006 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0084 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED91A : db $02 : dw $0008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_pbs_early_supers:
    dw #preset_pbs_elevator ; Power Bombs: Elevator
    dl $7E078D : db $02 : dw $8C0A ; DDB
    dl $7E078F : db $02 : dw $0009 ; DoorOut Index
    dl $7E079B : db $02 : dw $9AD9 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $E6B0 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $64BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B2 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000F ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F9 : db $02 : dw $0041 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0031 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0041 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $0031 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0909 : db $02 : dw $00D1 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0000 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $003F ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $041B ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0314 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C000 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091F : db $02 : dw $0900 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E092B : db $02 : dw $0000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AB ; Samus X
    dl $7E0AFA : db $02 : dw $048B ; Samus Y
    dl $7ED8B4 : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0009 ; Events, Items, Doors
    dw #$FFFF
.after

preset_pbs_dachora_room:
    dw #preset_pbs_early_supers ; Power Bombs: Early Supers
    dl $7E078D : db $02 : dw $8D4E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E08F9 : db $02 : dw $0061 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0049 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0061 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $0049 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0909 : db $02 : dw $00F1 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FF0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0009 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0915 : db $02 : dw $061C ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0495 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0929 : db $02 : dw $0400 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $00BD ; Health
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CC : db $02 : dw $0005 ; Max supers
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $0072 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED872 : db $02 : dw $0401 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0006 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $000C ; Events, Items, Doors
    dw #$FFFF
.after

preset_pbs_big_pink:
    dw #preset_pbs_dachora_room ; Power Bombs: Dachora Room
    dl $7E078D : db $02 : dw $8CE2 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $9CB3 ; MDB
    dl $7E08F7 : db $02 : dw $0060 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0048 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0060 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0048 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0FA0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $00F0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0058 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0600 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0480 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $00C0 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $F400 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0F00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C2 : db $02 : dw $00B3 ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $06A6 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_pbs_green_hill_zone:
    dw #preset_pbs_big_pink ; Power Bombs: Big Pink
    dl $7E078D : db $02 : dw $8DAE ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $9D19 ; MDB
    dl $7E08F7 : db $02 : dw $0030 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0061 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0024 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0048 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0030 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0061 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0007 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0018 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0FC0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0131 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0014 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0028 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0613 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $048E ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $F900 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0D00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0200 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0200 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09A6 : db $02 : dw $1000 ; Beams
    dl $7E09A8 : db $02 : dw $1000 ; Beams
    dl $7E09C6 : db $02 : dw $0007 ; Missiles
    dl $7E09C8 : db $02 : dw $000A ; Max missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $0376 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED872 : db $02 : dw $04C1 ; Events, Items, Doors
    dl $7ED8B4 : db $02 : dw $0206 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $000F ; Events, Items, Doors
    dw #$FFFF
.after

preset_pbs_red_tower:
    dw #preset_pbs_green_hill_zone ; Power Bombs: Green Hill Zone
    dl $7E078D : db $02 : dw $8E92 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $9FBA ; MDB
    dl $7E08F7 : db $02 : dw $0050 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $003C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0050 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $00A0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0160 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $004C ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $0500 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1600 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C2 : db $02 : dw $00A9 ; Health
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E0AF6 : db $02 : dw $05CE ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B6 : db $02 : dw $0008 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0010 ; Events, Items, Doors
    dw #$FFFF
.after

preset_pbs_hellway:
    dw #preset_pbs_red_tower ; Power Bombs: Red Tower
    dl $7E078D : db $02 : dw $8F0A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0001 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0001 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0001 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $0030 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $00B0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0121 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0010 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FC1 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0019 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0012 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $0B00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1200 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0400 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E0AF6 : db $02 : dw $0096 ; Samus X
    dw #$FFFF
.after

preset_pbs_caterpillar_room_down:
    dw #preset_pbs_hellway ; Power Bombs: Hellway
    dl $7E078D : db $02 : dw $901E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A2F7 ; MDB
    dl $7E08F7 : db $02 : dw $0020 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0018 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0020 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $00E0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0120 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0028 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $0C00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C2 : db $02 : dw $0089 ; Health
    dl $7E0A1C : db $02 : dw $0007 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $02AD ; Samus X
    dw #$FFFF
.after

preset_grav_caterpillar_room_up:
    dw #preset_pbs_caterpillar_room_down ; Power Bombs: Caterpillar Room down
    dl $7E078D : db $02 : dw $9096 ; DDB
    dl $7E079B : db $02 : dw $A3AE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E0903 : db $02 : dw $0029 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0909 : db $02 : dw $0140 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FE8 ; How many blocks X BG2 is scrolled?
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E091F : db $02 : dw $1400 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0200 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C2 : db $02 : dw $0075 ; Health
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E09D0 : db $02 : dw $0005 ; Max pbs
    dl $7E0AF6 : db $02 : dw $02CF ; Samus X
    dl $7ED874 : db $02 : dw $0104 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $2008 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0012 ; Events, Items, Doors
    dw #$FFFF
.after

preset_grav_kihunter_room:
    dw #preset_grav_caterpillar_room_up ; Gravity Suit: Caterpillar Room up
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0010 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $00F0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $00C0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0000 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FF0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $0F00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0C00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0020 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $0000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $0089 ; Health
    dl $7E09C6 : db $02 : dw $0006 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $007A ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED8B2 : db $02 : dw $2C01 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $3008 ; Events, Items, Doors
    dw #$FFFF
.after

preset_grav_moat:
    dw #preset_grav_kihunter_room ; Gravity Suit: Kihunter Room
    dl $7E078D : db $02 : dw $8AF6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $948C ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F7 : db $02 : dw $0020 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0018 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0020 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $000C ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0028 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0100 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0090 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0008 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FD0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $EC00 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $0E00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0900 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0220 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0001 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09CE : db $02 : dw $0001 ; Pbs
    dl $7E0A1C : db $02 : dw $0089 ; Samus position/state
    dl $7E0A1E : db $02 : dw $1508 ; More position/state
    dl $7E0AF6 : db $02 : dw $02DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B0 : db $02 : dw $6000 ; Events, Items, Doors
    dw #$FFFF
.after

preset_grav_wrecked_ship_enter:
    dw #preset_grav_moat ; Gravity Suit: Moat
    dl $7E078D : db $02 : dw $89D6 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $CA08 ; MDB
    dl $7E079F : db $02 : dw $0003 ; Region
    dl $7E07C3 : db $02 : dw $AE9E ; GFX Pointers
    dl $7E07C5 : db $02 : dw $A6BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B1 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E08F7 : db $02 : dw $0030 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0024 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0030 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $01E0 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0034 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $1B00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C6 : db $02 : dw $000B ; Missiles
    dl $7E09C8 : db $02 : dw $000F ; Max missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $000B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $03CB ; Samus X
    dl $7ED870 : db $02 : dw $0190 ; Events, Items, Doors
    dl $7ED8B0 : db $02 : dw $7000 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0016 ; Events, Items, Doors
    dw #$FFFF
.after

preset_grav_phantoon:
    dw #preset_grav_wrecked_ship_enter ; Gravity Suit: Wrecked Ship Enter
    dl $7E078D : db $02 : dw $A21C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $CC6F ; MDB
    dl $7E08F7 : db $02 : dw $0020 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0018 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0020 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $0018 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $FFF0 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $01F0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $00E0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FF8 ; How many blocks X BG2 is scrolled?
    dl $7E090F : db $02 : dw $6000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $1D00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0E00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0200 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $8000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0001 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $00A5 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0267 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED8C0 : db $02 : dw $0010 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0017 ; Events, Items, Doors
    dw #$FFFF
.after

preset_grav_wrecked_ship_climb:
    dw #preset_grav_phantoon ; Gravity Suit: Phantoon
    dl $7E078D : db $02 : dw $A2C4 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E07C5 : db $02 : dw $E7BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E08F7 : db $02 : dw $0022 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0019 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0022 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $0041 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $01F2 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0FC9 ; How many blocks X BG2 is scrolled?
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0225 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $2400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $019B ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $01C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0400 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $00C7 ; Health
    dl $7E09C6 : db $02 : dw $000C ; Missiles
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $02C5 ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED82A : db $02 : dw $0100 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0070 ; Events, Items, Doors
    dw #$FFFF
.after

preset_grav_attic:
    dw #preset_grav_wrecked_ship_climb ; Gravity Suit: Wrecked Ship Climb
    dl $7E078D : db $02 : dw $A2E8 ; DDB
    dl $7E079B : db $02 : dw $CAF6 ; MDB
    dl $7E08F7 : db $02 : dw $0040 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0030 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0040 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $001F ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0048 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $01F0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0060 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0000 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FA0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $6801 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6C00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1B00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0600 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FA00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0600 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E09CC : db $02 : dw $000A ; Max supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $044B ; Samus X
    dl $7ED880 : db $02 : dw $0020 ; Events, Items, Doors
    dl $7ED8C0 : db $02 : dw $0074 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001A ; Events, Items, Doors
    dw #$FFFF
.after

preset_grav_bowling_alley_farm:
    dw #preset_grav_attic ; Gravity Suit: Attic
    dl $7E078D : db $02 : dw $A1E0 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $93FE ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F7 : db $02 : dw $0020 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $001F ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0010 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0020 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $001F ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0049 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0150 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $006F ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0F90 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $001F ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $5800 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01FC ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $0181 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1300 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0500 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $F800 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0700 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C6 : db $02 : dw $000B ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0AF6 : db $02 : dw $02C7 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C0 : db $02 : dw $0174 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $001D ; Events, Items, Doors
    dw #$FFFF
.after

preset_grav_grav:
    dw #preset_grav_bowling_alley_farm ; Gravity Suit: Bowling Alley farm
    dl $7E078D : db $02 : dw $A1A4 ; DDB
    dl $7E079B : db $02 : dw $CE40 ; MDB
    dl $7E079F : db $02 : dw $0003 ; Region
    dl $7E07C3 : db $02 : dw $AE9E ; GFX Pointers
    dl $7E07C5 : db $02 : dw $E7BB ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B0 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0030 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0011 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0190 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0080 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FF0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $D000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $0101 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1900 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0800 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09A2 : db $02 : dw $1024 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1024 ; Collected Items
    dl $7E09C2 : db $02 : dw $0045 ; Health
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0078 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED880 : db $02 : dw $00A0 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0020 ; Events, Items, Doors
    dw #$FFFF
.after

preset_cath_kihunter_room:
    dw #preset_grav_grav ; Gravity Suit: Grav
    dl $7E078D : db $02 : dw $89CA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $95FF ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E0903 : db $02 : dw $001D ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0110 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0090 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FE0 ; How many blocks X BG2 is scrolled?
    dl $7E090F : db $02 : dw $B401 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1100 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0900 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C2 : db $02 : dw $0043 ; Health
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0034 ; Samus X
    dl $7E0AFA : db $02 : dw $0090 ; Samus Y
    dl $7ED91A : db $02 : dw $0024 ; Events, Items, Doors
    dw #$FFFF
.after

preset_cath_caterpillar_room:
    dw #preset_cath_kihunter_room ; Cathedral: Kihunter Room
    dl $7E078D : db $02 : dw $8A42 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $FFF0 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $00F0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $00C0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0000 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $000E ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $1000 ; Screen subpixel Y position
    dl $7E091D : db $02 : dw $0F00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0C00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $8000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0001 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $0057 ; Health
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E0A1C : db $02 : dw $0007 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $007F ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dw #$FFFF
.after

preset_cath_red_tower:
    dw #preset_cath_caterpillar_room ; Cathedral: Caterpillar Room
    dl $7E078D : db $02 : dw $90AE ; DDB
    dl $7E079B : db $02 : dw $A2F7 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E0903 : db $02 : dw $0029 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $00C0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0120 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FD0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $9800 ; Screen subpixel Y position
    dl $7E091D : db $02 : dw $0C00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1200 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0200 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $004F ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0039 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_cath_bat_room:
    dw #preset_cath_red_tower ; Cathedral: Red Tower
    dl $7E078D : db $02 : dw $907E ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A253 ; MDB
    dl $7E08F9 : db $02 : dw $0091 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $006D ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0091 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0011 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $00B0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $01B1 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FF0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $006D ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $7001 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $091D ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $06D5 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $0B00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C2 : db $02 : dw $004E ; Health
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0072 ; Samus X
    dl $7E0AFA : db $02 : dw $098B ; Samus Y
    dw #$FFFF
.after

preset_cath_glass_tunnel:
    dw #preset_cath_bat_room ; Cathedral: Bat Room
    dl $7E078D : db $02 : dw $9132 ; DDB
    dl $7E079B : db $02 : dw $A408 ; MDB
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0010 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $000C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $000C ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0010 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $001D ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $00F0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $01B0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FEC ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $000C ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00C0 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $0E00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1A00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09A6 : db $02 : dw $1004 ; Beams
    dl $7E09A8 : db $02 : dw $1004 ; Beams
    dl $7E09C2 : db $02 : dw $0052 ; Health
    dl $7E0A1C : db $02 : dw $0007 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $01B7 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED874 : db $02 : dw $0504 ; Events, Items, Doors
    dl $7ED8B6 : db $02 : dw $B008 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0025 ; Events, Items, Doors
    dw #$FFFF
.after

preset_cath_business_center:
    dw #preset_cath_glass_tunnel ; Cathedral: Glass Tunnel
    dl $7E078D : db $02 : dw $A384 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0130 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0010 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6C01 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $1300 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1B00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0005 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0083 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED820 : db $02 : dw $0801 ; Events, Items, Doors
    dw #$FFFF
.after

preset_cath_hi_jump:
    dw #preset_cath_business_center ; Cathedral: Business Center
    dl $7E078D : db $02 : dw $9246 ; DDB
    dl $7E078F : db $02 : dw $0005 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E079F : db $02 : dw $0002 ; Region
    dl $7E07C3 : db $02 : dw $C3F9 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F9 : db $02 : dw $0051 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $003D ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0051 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $FFF0 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0909 : db $02 : dw $0211 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0000 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $004B ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $051B ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $03D4 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091F : db $02 : dw $1C00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E092B : db $02 : dw $0000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $0057 ; Health
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0041 ; Samus X
    dl $7E0AFA : db $02 : dw $058B ; Samus Y
    dl $7ED8B8 : db $02 : dw $2000 ; Events, Items, Doors
    dw #$FFFF
.after

preset_cath_business_center_climb:
    dw #preset_cath_hi_jump ; Cathedral: Hi Jump
    dl $7E078D : db $02 : dw $93F6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $AA41 ; MDB
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0001 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $000C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0001 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0001 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $000C ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0001 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0120 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $001C ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FF1 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $FFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $001C ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $001C ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $00C0 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1100 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2100 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0929 : db $02 : dw $0100 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E09A2 : db $02 : dw $1124 ; Equipped Items
    dl $7E09A4 : db $02 : dw $1124 ; Collected Items
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C4 : db $02 : dw $012B ; Max helath
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01BF ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED876 : db $02 : dw $0120 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0001 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002A ; Events, Items, Doors
    dw #$FFFF
.after

preset_cath_ice_beam_snake_room:
    dw #preset_cath_business_center_climb ; Cathedral: Business Center climb
    dl $7E078D : db $02 : dw $931E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A75D ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $001D ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $00D0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $01F0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FE0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $0D00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1F00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09CA : db $02 : dw $0002 ; Supers
    dl $7E0A1C : db $02 : dw $0008 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003B ; Samus X
    dl $7ED8B8 : db $02 : dw $2800 ; Events, Items, Doors
    dw #$FFFF
.after

preset_cath_ice_escape:
    dw #preset_cath_ice_beam_snake_room ; Cathedral: Ice Beam Snake Room
    dl $7E078D : db $02 : dw $935A ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $A8B9 ; MDB
    dl $7E08F9 : db $02 : dw $0020 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0018 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0020 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $000C ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $00C0 ; How many blocks X BG1 is scrolled?
    dl $7E090D : db $02 : dw $0008 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $3FFF ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $4800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $0C00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1D00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0100 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09A6 : db $02 : dw $1006 ; Beams
    dl $7E09A8 : db $02 : dw $1006 ; Beams
    dl $7E09C2 : db $02 : dw $0126 ; Health
    dl $7E09C6 : db $02 : dw $000C ; Missiles
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C8 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED876 : db $02 : dw $0124 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002B ; Events, Items, Doors
    dw #$FFFF
.after

preset_cath_cathedral_entrance:
    dw #preset_cath_ice_escape ; Cathedral: Ice Escape
    dl $7E078D : db $02 : dw $932A ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7DE ; MDB
    dl $7E07C5 : db $02 : dw $BBBD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B6 ; GFX Pointers
    dl $7E08F9 : db $02 : dw $0031 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0025 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0031 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0024 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0130 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $01F1 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0010 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FF5 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $19FF ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $031D ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0255 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $1300 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1C00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0300 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00AB ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dw #$FFFF
.after

preset_rid_cathedral:
    dw #preset_cath_cathedral_entrance ; Cathedral: Cathedral Entrance
    dl $7E078D : db $02 : dw $92CA ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A7B3 ; MDB
    dl $7E07C5 : db $02 : dw $E4BD ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B5 ; GFX Pointers
    dl $7E08F7 : db $02 : dw $0020 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0020 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0020 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0020 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0160 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $01F0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0030 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0200 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $0000 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1400 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1F00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C6 : db $02 : dw $000A ; Missiles
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0AF6 : db $02 : dw $02A5 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8B8 : db $02 : dw $2C00 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rid_bubble_mountain:
    dw #preset_rid_cathedral ; Ridley: Cathedral
    dl $7E078D : db $02 : dw $929A ; DDB
    dl $7E079B : db $02 : dw $AFA3 ; MDB
    dl $7E08F7 : db $02 : dw $0040 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0030 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0040 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $01E0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0200 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0040 ; How many blocks X BG2 is scrolled?
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0400 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $CC00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0300 ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1A00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2000 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E09C2 : db $02 : dw $0121 ; Health
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $04DA ; Samus X
    dl $7ED8B8 : db $02 : dw $2E00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002C ; Events, Items, Doors
    dw #$FFFF
.after

preset_rid_bat_cave:
    dw #preset_rid_bubble_mountain ; Ridley: Bubble Mountain
    dl $7E078D : db $02 : dw $973E ; DDB
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $000C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0018 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0200 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $01E0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $001C ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FE0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $3000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $1F00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1E00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0200 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C2 : db $02 : dw $011E ; Health
    dl $7E09C6 : db $02 : dw $000C ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01BF ; Samus X
    dl $7ED8BA : db $02 : dw $0011 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $002E ; Events, Items, Doors
    dw #$FFFF
.after

preset_rid_bat_cave_revisited:
    dw #preset_rid_bat_cave ; Ridley: Bat Cave
    dl $7E078D : db $02 : dw $95B2 ; DDB
    dl $7E079B : db $02 : dw $AD1B ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $02E0 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0010 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $2E00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09A2 : db $02 : dw $3124 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3124 ; Collected Items
    dl $7E09C2 : db $02 : dw $012B ; Health
    dl $7E09C6 : db $02 : dw $0008 ; Missiles
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $003F ; Samus X
    dl $7ED878 : db $02 : dw $0004 ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $0031 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0030 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rid_single_chamber:
    dw #preset_rid_bat_cave_revisited ; Ridley: Bat Cave revisited
    dl $7E078D : db $02 : dw $97AA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $ACB3 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $000F ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $000C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $000B ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $000F ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $001D ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0200 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $01EF ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FEC ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $000B ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00FB ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00BC ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $1F00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C2 : db $02 : dw $012A ; Health
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $01A5 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0020 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0032 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rid_double_chamber:
    dw #preset_rid_single_chamber ; Ridley: Single Chamber
    dl $7E078D : db $02 : dw $9582 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0011 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $000D ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0011 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $000D ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0210 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0201 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0010 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $000D ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $011E ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00D6 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C0C0 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $2100 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1F00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C2 : db $02 : dw $011E ; Health
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0AF6 : db $02 : dw $00B1 ; Samus X
    dl $7ED8BA : db $02 : dw $0071 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rid_double_chamber_revisited:
    dw #preset_rid_double_chamber ; Ridley: Double Chamber
    dl $7E078D : db $02 : dw $961E ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $ADDE ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0260 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0200 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $7000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $2600 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2000 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E09A6 : db $02 : dw $1007 ; Beams
    dl $7E09A8 : db $02 : dw $1007 ; Beams
    dl $7E09C6 : db $02 : dw $0014 ; Missiles
    dl $7E09C8 : db $02 : dw $0014 ; Max missiles
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0053 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED878 : db $02 : dw $001C ; Events, Items, Doors
    dl $7ED8BA : db $02 : dw $00F1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0034 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rid_kronic_boost_room:
    dw #preset_rid_double_chamber_revisited ; Ridley: Double Chamber revisited
    dl $7E078D : db $02 : dw $95EE ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $AE07 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F7 : db $02 : dw $0030 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0024 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0030 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0250 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0220 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0034 ; How many blocks X BG2 is scrolled?
    dl $7E090F : db $02 : dw $7B80 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $EC00 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $2200 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2200 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E09C2 : db $02 : dw $010F ; Health
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $03D8 ; Samus X
    dl $7ED91A : db $02 : dw $0035 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rid_lavaspark:
    dw #preset_rid_kronic_boost_room ; Ridley: Volcano Room
    dl $7E078D : db $02 : dw $965A ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $AE74 ; MDB
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0020 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0010 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0020 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0020 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0010 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0020 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0230 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0260 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FF0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0020 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0200 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $0000 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091F : db $02 : dw $2400 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C2 : db $02 : dw $0108 ; Health
    dl $7E09C6 : db $02 : dw $0011 ; Missiles
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $01EB ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8BA : db $02 : dw $01F1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rid_elevator:
    dw #preset_rid_lavaspark ; Ridley: Lavaspark
    dl $7E078D : db $02 : dw $96DE ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $AF3F ; MDB
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0011 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $01E0 ; How many blocks X BG1 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1E00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2600 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C2 : db $02 : dw $00B4 ; Health
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $0008 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0089 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_rid_fast_pillars:
    dw #preset_rid_elevator ; Ridley: LN Elevator
    dl $7E078D : db $02 : dw $96F6 ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $B236 ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E08F7 : db $02 : dw $0070 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0020 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0054 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0030 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0070 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0020 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0030 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0020 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0210 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0290 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0014 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $003E ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0700 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0540 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0301 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $01C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1A00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2700 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0400 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $0000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E09A6 : db $02 : dw $1001 ; Beams
    dl $7E0A1C : db $02 : dw $001E ; Samus position/state
    dl $7E0A1E : db $02 : dw $0408 ; More position/state
    dl $7E0AF6 : db $02 : dw $07C8 ; Samus X
    dl $7E0AFA : db $02 : dw $0299 ; Samus Y
    dw #$FFFF
.after

preset_rid_writg:
    dw #preset_rid_fast_pillars ; Ridley: Fast Pillars
    dl $7E078D : db $02 : dw $9912 ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $B457 ; MDB
    dl $7E08F7 : db $02 : dw $0030 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0024 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0030 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0260 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $02A0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0034 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $5DFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $2300 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2A00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $0074 ; Health
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $03DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_rid_amphitheatre:
    dw #preset_rid_writg ; Ridley: WRITG
    dl $7E078D : db $02 : dw $994E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B4AD ; MDB
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0011 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $000D ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0011 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $003C ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0270 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0261 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0010 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FBD ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011D ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00D5 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $2700 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2500 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0500 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0007 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $00AE ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_rid_kihunter_shaft:
    dw #preset_rid_amphitheatre ; Ridley: Amphitheatre
    dl $7E078D : db $02 : dw $997E ; DDB
    dl $7E079B : db $02 : dw $B4E5 ; MDB
    dl $7E08F7 : db $02 : dw $0026 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0004 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $001C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0003 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0026 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0004 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $000C ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $02A6 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0254 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $002C ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FF3 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $026A ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0043 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $01CF ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0032 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $2800 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0100 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $02FB ; Samus X
    dl $7E0AFA : db $02 : dw $00B3 ; Samus Y
    dw #$FFFF
.after

preset_rid_wasteland:
    dw #preset_rid_kihunter_shaft ; Ridley: Kihunter shaft
    dl $7E078D : db $02 : dw $99A2 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0030 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0024 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0030 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $02C0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0280 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0010 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0024 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $030B ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0248 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $2C00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C2 : db $02 : dw $0077 ; Health
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $008B ; Samus X
    dl $7E0AFA : db $02 : dw $037B ; Samus Y
    dw #$FFFF
.after

preset_rid_metal_pirates:
    dw #preset_rid_wasteland ; Ridley: Wasteland
    dl $7E078D : db $02 : dw $99EA ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0021 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $000C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0019 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0021 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $003C ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $FFF0 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $02A0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $02C1 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FBC ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0027 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $B000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0915 : db $02 : dw $021F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0197 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $2900 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2A00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0500 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $8000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0001 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $0070 ; Health
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E09CE : db $02 : dw $0002 ; Pbs
    dl $7E0AF6 : db $02 : dw $0142 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8BA : db $02 : dw $C1F1 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0036 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rid_farming_room:
    dw #preset_rid_metal_pirates ; Ridley: Metal Pirates
    dl $7E078D : db $02 : dw $9A32 ; DDB
    dl $7E079B : db $02 : dw $B482 ; MDB
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0029 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0240 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $02C0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FD0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $2400 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2C00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FD00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0200 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $00D5 ; Health
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E0A1C : db $02 : dw $00A5 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0041 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8BC : db $02 : dw $0001 ; Events, Items, Doors
    dw #$FFFF
.after

preset_rid_ridley:
    dw #preset_rid_farming_room ; Ridley: Ridley Farming Room
    dl $7E078D : db $02 : dw $995A ; DDB
    dl $7E079B : db $02 : dw $B37A ; MDB
    dl $7E0907 : db $02 : dw $0210 ; How many blocks X BG1 is scrolled?
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E091D : db $02 : dw $2100 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E09C2 : db $02 : dw $00F6 ; Health
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $002F ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED8BA : db $02 : dw $D1F1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kraid_farming_room:
    dw #preset_rid_ridley ; Ridley: Ridley
    dl $7E078D : db $02 : dw $98CA ; DDB
    dl $7E079B : db $02 : dw $B32E ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E08F9 : db $02 : dw $0011 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $000D ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0011 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0011 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0200 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $02D1 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FFF ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $000D ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $A400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00D7 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C101 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $2000 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E09CA : db $02 : dw $0001 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $0097 ; Samus X
    dl $7E0AFA : db $02 : dw $019B ; Samus Y
    dl $7ED82A : db $02 : dw $0101 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kraid_wasteland:
    dw #preset_kraid_farming_room ; Kraid: Ridley Farming Room
    dl $7E078D : db $02 : dw $9966 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $B62B ; MDB
    dl $7E07F3 : db $02 : dw $0018 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F7 : db $02 : dw $0020 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0018 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0020 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0290 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $02C0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0028 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E0911 : db $02 : dw $0200 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $AC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0180 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $2700 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $00F0 ; Health
    dl $7E09C6 : db $02 : dw $0010 ; Missiles
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $0017 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0208 ; More position/state
    dl $7E0AF6 : db $02 : dw $02D5 ; Samus X
    dl $7E0AFA : db $02 : dw $0079 ; Samus Y
    dl $7E0B3F : db $02 : dw $0002 ; Blue suit
    dl $7ED8BA : db $02 : dw $D5F1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kraid_kihunter_shaft:
    dw #preset_kraid_wasteland ; Kraid: Wasteland
    dl $7E078D : db $02 : dw $9A3E ; DDB
    dl $7E079B : db $02 : dw $B5D5 ; MDB
    dl $7E08F7 : db $02 : dw $0050 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $003C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0050 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $FFFB ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0018 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $02E0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $02A0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $003C ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FE0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $9780 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $C400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $2900 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2A00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0200 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C2 : db $02 : dw $00C1 ; Health
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $055B ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED91A : db $02 : dw $0037 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kraid_fireflea_room:
    dw #preset_kraid_kihunter_shaft ; Kraid: Kihunter shaft
    dl $7E078D : db $02 : dw $9A26 ; DDB
    dl $7E079B : db $02 : dw $B585 ; MDB
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $0018 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0040 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $02C0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0250 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FE0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FB0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $2B80 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0001 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $2C00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2500 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FB00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0200 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0420 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $0000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0002 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C8 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_kraid_three_muskateers_room:
    dw #preset_kraid_fireflea_room ; Kraid: Fireflea Room
    dl $7E078D : db $02 : dw $9A92 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $B510 ; MDB
    dl $7E08F9 : db $02 : dw $0001 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0001 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0001 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $001D ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $000C ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $02A0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0211 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090D : db $02 : dw $0FF1 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001C ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0015 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $2A00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2100 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0100 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C6 : db $02 : dw $000F ; Missiles
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $006E ; Samus X
    dl $7ED91A : db $02 : dw $0039 ; Events, Items, Doors
    dw #$FFFF
.after

preset_kraid_single_chamber:
    dw #preset_kraid_three_muskateers_room ; Kraid: Three Muskateers Room
    dl $7E078D : db $02 : dw $99AE ; DDB
    dl $7E079B : db $02 : dw $B656 ; MDB
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $000C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $0035 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0018 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0270 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $01F1 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FCC ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FE1 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $2600 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1F00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FC00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0300 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0200 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C2 : db $02 : dw $00BB ; Health
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0170 ; Samus X
    dl $7ED91A : db $02 : dw $003A ; Events, Items, Doors
    dw #$FFFF
.after

preset_kraid_bubble_mountain:
    dw #preset_kraid_single_chamber ; Kraid: Single Chamber
    dl $7E078D : db $02 : dw $9A4A ; DDB
    dl $7E079B : db $02 : dw $AD5E ; MDB
    dl $7E07F3 : db $02 : dw $0015 ; Music Bank
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0001 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0210 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0FA0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0001 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $C0C0 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $2100 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0500 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E0AF6 : db $02 : dw $008B ; Samus X
    dw #$FFFF
.after

preset_kraid_frog_speedway:
    dw #preset_kraid_bubble_mountain ; Kraid: Bubble Mountain
    dl $7E078D : db $02 : dw $956A ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $AF72 ; MDB
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $01D0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0210 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FE0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $A000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $00C0 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1D00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $2100 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C2 : db $02 : dw $00C0 ; Health
    dl $7E09C6 : db $02 : dw $0011 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0AF6 : db $02 : dw $0054 ; Samus X
    dl $7E0B3F : db $02 : dw $0001 ; Blue suit
    dl $7ED91A : db $02 : dw $003B ; Events, Items, Doors
    dw #$FFFF
.after

preset_kraid_warehouse_entrance:
    dw #preset_kraid_frog_speedway ; Kraid: Frog Speedway
    dl $7E078D : db $02 : dw $92EE ; DDB
    dl $7E078F : db $02 : dw $0004 ; DoorOut Index
    dl $7E079B : db $02 : dw $A6A1 ; MDB
    dl $7E079F : db $02 : dw $0001 ; Region
    dl $7E07C3 : db $02 : dw $A5AA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $5FBC ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B3 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E0905 : db $02 : dw $0010 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0130 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $01B0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0000 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FF0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1300 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1B00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0020 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $0000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $00D9 ; Health
    dl $7E0A1C : db $02 : dw $009B ; Samus position/state
    dl $7E0A1E : db $02 : dw $0000 ; More position/state
    dl $7E0AF6 : db $02 : dw $0080 ; Samus X
    dl $7E0AFA : db $02 : dw $0086 ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dw #$FFFF
.after

preset_kraid_zeela_room:
    dw #preset_kraid_warehouse_entrance ; Kraid: Warehouse Entrance
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E08F7 : db $02 : dw $001C ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0015 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $001C ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $014C ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0015 ; How many blocks X BG2 is scrolled?
    dl $7E090F : db $02 : dw $5000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $01CC ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $000D ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0159 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0009 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $022C ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dw #$FFFF
.after

preset_kraid_baby_kraid:
    dw #preset_kraid_zeela_room ; Kraid: Zeela Room
    dl $7E078D : db $02 : dw $9156 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A4DA ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0010 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $000C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0010 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0010 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $000C ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0180 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $01C0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $000C ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $A000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $5FFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $00C0 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1700 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E092B : db $02 : dw $4000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0002 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C6 : db $02 : dw $0012 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $016B ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED91A : db $02 : dw $003C ; Events, Items, Doors
    dw #$FFFF
.after

preset_kraid_kraid:
    dw #preset_kraid_baby_kraid ; Kraid: Baby Kraid
    dl $7E078D : db $02 : dw $919E ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $A56B ; MDB
    dl $7E07F3 : db $02 : dw $0027 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E08FB : db $02 : dw $0010 ; How many blocks X Layer 2 is scrolled?
    dl $7E0903 : db $02 : dw $0010 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0200 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0020 ; How many blocks X BG2 is scrolled?
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $D400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0100 ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $0000 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1F00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0929 : db $02 : dw $0100 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C6 : db $02 : dw $000D ; Missiles
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E0AF6 : db $02 : dw $01C4 ; Samus X
    dl $7ED8B8 : db $02 : dw $2E24 ; Events, Items, Doors
    dw #$FFFF
.after

preset_dray_baby_kraid:
    dw #preset_kraid_kraid ; Kraid: Kraid
    dl $7E078D : db $02 : dw $91CE ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $01E0 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0FE0 ; How many blocks X BG2 is scrolled?
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $1E00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09A2 : db $02 : dw $3125 ; Equipped Items
    dl $7E09A4 : db $02 : dw $3125 ; Collected Items
    dl $7E09C2 : db $02 : dw $0106 ; Health
    dl $7E09C6 : db $02 : dw $0013 ; Missiles
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $0008 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $005E ; Samus X
    dl $7ED828 : db $02 : dw $0104 ; Events, Items, Doors
    dl $7ED876 : db $02 : dw $0125 ; Events, Items, Doors
    dl $7ED8B8 : db $02 : dw $2EE4 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003D ; Events, Items, Doors
    dw #$FFFF
.after

preset_dray_warehouse_entrance:
    dw #preset_dray_baby_kraid ; Draygon: Baby Kraid
    dl $7E078D : db $02 : dw $916E ; DDB
    dl $7E079B : db $02 : dw $A471 ; MDB
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F9 : db $02 : dw $0004 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0004 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0004 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $0004 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0150 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $01B4 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FF0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0002 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $0BFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $004E ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $004E ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $00C0 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1500 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FFE0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E092B : db $02 : dw $C000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0001 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C6 : db $02 : dw $0010 ; Missiles
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $002E ; Samus X
    dl $7E0AFA : db $02 : dw $00DB ; Samus Y
    dl $7ED8B8 : db $02 : dw $2EEC ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $003E ; Events, Items, Doors
    dw #$FFFF
.after

preset_dray_glass_tunnel:
    dw #preset_dray_warehouse_entrance ; Draygon: Warehouse Entrance
    dl $7E078D : db $02 : dw $922E ; DDB
    dl $7E079B : db $02 : dw $CF80 ; MDB
    dl $7E079F : db $02 : dw $0004 ; Region
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E08F9 : db $02 : dw $0010 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0010 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0010 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $0010 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0110 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $01B0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E0913 : db $02 : dw $6BFF ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0100 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0100 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $0000 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1100 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1A00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $010B ; Health
    dl $7E09CA : db $02 : dw $0009 ; Supers
    dl $7E0A1C : db $02 : dw $003C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0F04 ; More position/state
    dl $7E0AF6 : db $02 : dw $00D1 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dw #$FFFF
.after

preset_dray_fish_tank:
    dw #preset_dray_glass_tunnel ; Draygon: Glass Tunnel
    dl $7E078D : db $02 : dw $A330 ; DDB
    dl $7E079B : db $02 : dw $CFC9 ; MDB
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E08F7 : db $02 : dw $000F ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $005F ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $000B ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0047 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $000F ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $005F ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $000B ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0047 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $00FF ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $017F ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FFB ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FC7 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $1FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $00FF ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $B400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $05FC ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00BF ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $047D ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C0C0 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $0F00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1200 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0720 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $0000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0002 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $016A ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7ED91A : db $02 : dw $0040 ; Events, Items, Doors
    dw #$FFFF
.after

preset_dray_crab_shaft:
    dw #preset_dray_fish_tank ; Draygon: Fish Tank
    dl $7E078D : db $02 : dw $A3F0 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D0B9 ; MDB
    dl $7E08F7 : db $02 : dw $0050 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $003C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0050 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $003C ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0160 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0120 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $002C ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FC0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9C01 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $1100 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0320 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0001 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $00D0 ; Health
    dl $7E0AF6 : db $02 : dw $05C0 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_dray_botwoon_hallway:
    dw #preset_dray_crab_shaft ; Draygon: Crab Shaft
    dl $7E078D : db $02 : dw $A4C8 ; DDB
    dl $7E079B : db $02 : dw $D5A7 ; MDB
    dl $7E07C3 : db $02 : dw $E78D ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2EBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B9 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0190 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0010 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FF0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $00C0 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1900 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0100 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E09CE : db $02 : dw $0003 ; Pbs
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $009C ; Samus X
    dl $7E0AFA : db $02 : dw $006B ; Samus Y
    dl $7ED8C0 : db $02 : dw $8174 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0042 ; Events, Items, Doors
    dw #$FFFF
.after

preset_dray_botwoon:
    dw #preset_dray_botwoon_hallway ; Draygon: Botwoon Hallway
    dl $7E078D : db $02 : dw $A72C ; DDB
    dl $7E078F : db $02 : dw $0003 ; DoorOut Index
    dl $7E079B : db $02 : dw $D617 ; MDB
    dl $7E08F7 : db $02 : dw $0030 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0001 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0024 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0001 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0030 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0001 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0024 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0001 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $01C0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0111 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0024 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FF1 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $3FFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $4400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0019 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0019 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091F : db $02 : dw $1100 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0929 : db $02 : dw $0020 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0001 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E0A1C : db $02 : dw $0009 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $03DC ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_dray_halfie_climb:
    dw #preset_dray_botwoon ; Draygon: Botwoon
    dl $7E078D : db $02 : dw $A918 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $D7E4 ; MDB
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $01F0 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0010 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0001 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $D000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0007 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $9000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $001F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0005 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $001F ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $1F00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $0180 ; Health
    dl $7E09C4 : db $02 : dw $018F ; Max helath
    dl $7E09C6 : db $02 : dw $0014 ; Missiles
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0AF6 : db $02 : dw $006B ; Samus X
    dl $7E0AFA : db $02 : dw $009B ; Samus Y
    dl $7ED82C : db $02 : dw $0002 ; Events, Items, Doors
    dl $7ED882 : db $02 : dw $0100 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0043 ; Events, Items, Doors
    dw #$FFFF
.after

preset_dray_draygon:
    dw #preset_dray_halfie_climb ; Draygon: Halfie Climb
    dl $7E078D : db $02 : dw $A7F8 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $D78F ; MDB
    dl $7E08F9 : db $02 : dw $0020 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0018 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0020 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $0018 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $02E0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0120 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090D : db $02 : dw $0018 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $1001 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $E800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0200 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0180 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C000 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $2E00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1000 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E09C2 : db $02 : dw $015B ; Health
    dl $7E09CA : db $02 : dw $0003 ; Supers
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0054 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dl $7ED8C2 : db $02 : dw $0C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0044 ; Events, Items, Doors
    dw #$FFFF
.after

preset_g4_precious_room:
    dw #preset_dray_draygon ; Draygon: Draygon
    dl $7E078D : db $02 : dw $A840 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $DA60 ; MDB
    dl $7E07C3 : db $02 : dw $9DEA ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2CBF ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2BA ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0011 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $02D0 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0FE3 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FD0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $8000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $7000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $000F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $0101 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $2C00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1200 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C2 : db $02 : dw $00D8 ; Health
    dl $7E09C6 : db $02 : dw $0003 ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0A68 : db $02 : dw $0001 ; Flash suit
    dl $7E0AF6 : db $02 : dw $019D ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED82C : db $02 : dw $0003 ; Events, Items, Doors
    dl $7ED8C2 : db $02 : dw $4C00 ; Events, Items, Doors
    dw #$FFFF
.after

preset_g4_halfie_climb:
    dw #preset_g4_precious_room ; Golden 4: Precious Room
    dl $7E078D : db $02 : dw $A834 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $D72A ; MDB
    dl $7E07C3 : db $02 : dw $E78D ; GFX Pointers
    dl $7E07C5 : db $02 : dw $2EBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B9 ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001B ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0270 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $00F0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0F90 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FF0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $0000 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $2700 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0F00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $F900 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0600 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0100 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C2 : db $02 : dw $0067 ; Health
    dl $7E0A1C : db $02 : dw $0068 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0604 ; More position/state
    dl $7E0A68 : db $02 : dw $0000 ; Flash suit
    dl $7E0AF6 : db $02 : dw $0037 ; Samus X
    dl $7E0AFA : db $02 : dw $0088 ; Samus Y
    dl $7ED91A : db $02 : dw $0045 ; Events, Items, Doors
    dw #$FFFF
.after

preset_g4_botwoon_hallway:
    dw #preset_g4_halfie_climb ; Golden 4: Halfie Climb
    dl $7E078D : db $02 : dw $A84C ; DDB
    dl $7E079B : db $02 : dw $D95E ; MDB
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E0907 : db $02 : dw $01D0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0110 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FE0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $0680 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $DC00 ; Screen subpixel Y position
    dl $7E091D : db $02 : dw $1D00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1100 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E0A1C : db $02 : dw $0006 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0025 ; Samus X
    dl $7E0AFA : db $02 : dw $00BB ; Samus Y
    dl $7ED8C2 : db $02 : dw $6C00 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $0046 ; Events, Items, Doors
    dw #$FFFF
.after

preset_g4_crab_shaft:
    dw #preset_g4_botwoon_hallway ; Golden 4: Botwoon Hallway
    dl $7E078D : db $02 : dw $A768 ; DDB
    dl $7E079B : db $02 : dw $D5A7 ; MDB
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F9 : db $02 : dw $000F ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $000F ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $000F ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $000F ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0190 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $012F ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0000 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $001D ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $4000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $000A ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $00FC ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0007 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00FC ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $00C0 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1900 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1200 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $8000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0001 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0071 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED91A : db $02 : dw $0048 ; Events, Items, Doors
    dw #$FFFF
.after

preset_g4_mt_everest:
    dw #preset_g4_crab_shaft ; Golden 4: Crab Shaft
    dl $7E078D : db $02 : dw $A708 ; DDB
    dl $7E079B : db $02 : dw $D1A3 ; MDB
    dl $7E07C3 : db $02 : dw $B130 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $3CBE ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2B8 ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E08F9 : db $02 : dw $001E ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0017 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $001E ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $0017 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0170 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $011E ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FE0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FE7 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $E000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $1800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $01EE ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0172 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C000 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $1700 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1000 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FD00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0300 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E0A1C : db $02 : dw $00A5 ; Samus position/state
    dl $7E0AF6 : db $02 : dw $0074 ; Samus X
    dl $7E0AFA : db $02 : dw $028B ; Samus Y
    dw #$FFFF
.after

preset_g4_caterpillar_room:
    dw #preset_g4_mt_everest ; Golden 4: Mt Everest
    dl $7E078D : db $02 : dw $A42C ; DDB
    dl $7E079B : db $02 : dw $D104 ; MDB
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0110 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0100 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090D : db $02 : dw $0FE0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $B800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $1100 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0923 : db $02 : dw $FE00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0200 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0120 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0001 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $009E ; Health
    dl $7E09CE : db $02 : dw $0004 ; Pbs
    dl $7E0A1C : db $02 : dw $0072 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0504 ; More position/state
    dl $7E0AF6 : db $02 : dw $0079 ; Samus X
    dl $7E0AFA : db $02 : dw $0090 ; Samus Y
    dw #$FFFF
.after

preset_g4_kihunter_room:
    dw #preset_g4_caterpillar_room ; Golden 4: Caterpillar Room
    dl $7E078D : db $02 : dw $90BA ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $962A ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E07F3 : db $02 : dw $0012 ; Music Bank
    dl $7E07F5 : db $02 : dw $0003 ; Music Track
    dl $7E0905 : db $02 : dw $0010 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $00E0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $00C0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0000 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0FF0 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $0E00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0C00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FF00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0020 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $0000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09CA : db $02 : dw $0004 ; Supers
    dl $7E0A1C : db $02 : dw $00E4 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $0066 ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dw #$FFFF
.after

preset_g4_parlor:
    dw #preset_g4_kihunter_room ; Golden 4: Kihunter Room
    dl $7E078D : db $02 : dw $8AC6 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $91F8 ; MDB
    dl $7E07C3 : db $02 : dw $C629 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $7CBA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AD ; GFX Pointers
    dl $7E07F3 : db $02 : dw $000C ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F7 : db $02 : dw $005D ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0040 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $002E ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $005D ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0040 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0051 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $008D ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0090 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0F9E ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0040 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E0911 : db $02 : dw $05D3 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0400 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $02E9 ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $0181 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $0300 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0500 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $F700 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0800 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0400 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E09C6 : db $02 : dw $0002 ; Missiles
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $0673 ; Samus X
    dl $7E0AFA : db $02 : dw $04BB ; Samus Y
    dl $7E0B3F : db $02 : dw $0104 ; Blue suit
    dw #$FFFF
.after

preset_g4_terminator:
    dw #preset_g4_parlor ; Golden 4: Parlor
    dl $7E078D : db $02 : dw $8916 ; DDB
    dl $7E079B : db $02 : dw $92FD ; MDB
    dl $7E07F3 : db $02 : dw $0009 ; Music Bank
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $000C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0041 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0FF0 ; How many blocks X BG1 is scrolled?
    dl $7E090B : db $02 : dw $0FBC ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $FC00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $FE00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0900 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FB00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0400 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $010A ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dw #$FFFF
.after

preset_g4_golden_four:
    dw #preset_g4_terminator ; Golden 4: Terminator
    dl $7E078D : db $02 : dw $8BE6 ; DDB
    dl $7E079B : db $02 : dw $99BD ; MDB
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0060 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0048 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0060 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0011 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0030 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0F70 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $00D0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FF0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0008 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $1000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0600 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0001 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0480 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C101 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $F700 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0700 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $FC00 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E0929 : db $02 : dw $0400 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E09C2 : db $02 : dw $00B7 ; Health
    dl $7E09C6 : db $02 : dw $0004 ; Missiles
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C6 ; Samus X
    dl $7E0AFA : db $02 : dw $068B ; Samus Y
    dl $7E0B3F : db $02 : dw $0000 ; Blue suit
    dl $7ED8B2 : db $02 : dw $6C01 ; Events, Items, Doors
    dl $7ED91A : db $02 : dw $004B ; Events, Items, Doors
    dw #$FFFF
.after

preset_tou_enter_tourian:
    dw #preset_g4_golden_four ; Golden 4: Golden Four
    dl $7E078D : db $02 : dw $91F2 ; DDB
    dl $7E078F : db $02 : dw $0002 ; DoorOut Index
    dl $7E079B : db $02 : dw $A66A ; MDB
    dl $7E07C3 : db $02 : dw $860B ; GFX Pointers
    dl $7E07C5 : db $02 : dw $9CC0 ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2BC ; GFX Pointers
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E08F9 : db $02 : dw $0011 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $0011 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0FD0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $00E1 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0010 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $9000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $4C00 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011F ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $0181 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $FD00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0D00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0929 : db $02 : dw $0000 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E0A1C : db $02 : dw $0011 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $007C ; Samus X
    dl $7E0AFA : db $02 : dw $019B ; Samus Y
    dl $7ED820 : db $02 : dw $0FC1 ; Events, Items, Doors
    dw #$FFFF
.after

preset_tou_m1:
    dw #preset_tou_enter_tourian ; Tourian: Enter Tourian
    dl $7E078D : db $02 : dw $9222 ; DDB
    dl $7E079B : db $02 : dw $DAAE ; MDB
    dl $7E079F : db $02 : dw $0005 ; Region
    dl $7E07C3 : db $02 : dw $D414 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $EDBF ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2BA ; GFX Pointers
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F9 : db $02 : dw $002F ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FD : db $02 : dw $0023 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E0901 : db $02 : dw $002F ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $FFF0 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0909 : db $02 : dw $011F ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0000 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0031 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $2000 ; Screen subpixel X position.
    dl $7E0913 : db $02 : dw $9400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $02FB ; Screen Y position in pixels
    dl $7E0919 : db $02 : dw $023C ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C101 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091F : db $02 : dw $0F00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E092B : db $02 : dw $0000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E09A6 : db $02 : dw $1007 ; Beams
    dl $7E09C2 : db $02 : dw $00AF ; Health
    dl $7E0A1C : db $02 : dw $0002 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0004 ; More position/state
    dl $7E0AF6 : db $02 : dw $0041 ; Samus X
    dl $7E0AFA : db $02 : dw $038B ; Samus Y
    dl $7ED90C : db $02 : dw $0100 ; Events, Items, Doors
    dw #$FFFF
.after

preset_tou_m2:
    dw #preset_tou_m1 ; Tourian: M1
    dl $7E078D : db $02 : dw $A984 ; DDB
    dl $7E078F : db $02 : dw $0000 ; DoorOut Index
    dl $7E079B : db $02 : dw $DAE1 ; MDB
    dl $7E08F7 : db $02 : dw $0004 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0003 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0004 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $004D ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0000 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0F74 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0120 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FA3 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $0000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0045 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0400 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0033 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091B : db $02 : dw $C1C1 ; BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)
    dl $7E091D : db $02 : dw $F700 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1200 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FA00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $0000 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0927 : db $02 : dw $0500 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $00A4 ; Health
    dl $7E09C6 : db $02 : dw $000E ; Missiles
    dl $7E09CA : db $02 : dw $0005 ; Supers
    dl $7E09CE : db $02 : dw $0005 ; Pbs
    dl $7E0A1C : db $02 : dw $000C ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $00E5 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED822 : db $02 : dw $0021 ; Events, Items, Doors
    dw #$FFFF
.after

preset_tou_m3:
    dw #preset_tou_m2 ; Tourian: M2
    dl $7E078D : db $02 : dw $A9B4 ; DDB
    dl $7E078F : db $02 : dw $0001 ; DoorOut Index
    dl $7E079B : db $02 : dw $DB31 ; MDB
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0011 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $000D ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0011 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0011 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0F60 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0131 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FF0 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $000D ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $CFFF ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $011C ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $00D5 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $F600 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FF00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C2 : db $02 : dw $00DF ; Health
    dl $7E09C6 : db $02 : dw $0014 ; Missiles
    dl $7E09CA : db $02 : dw $0007 ; Supers
    dl $7E0A1C : db $02 : dw $0001 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $00C0 ; Samus X
    dl $7E0AFA : db $02 : dw $018B ; Samus Y
    dl $7ED822 : db $02 : dw $0023 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0003 ; Events, Items, Doors
    dw #$FFFF
.after

preset_tou_m4:
    dw #preset_tou_m3 ; Tourian: M3
    dl $7E078D : db $02 : dw $A9CC ; DDB
    dl $7E079B : db $02 : dw $DB7D ; MDB
    dl $7E08F7 : db $02 : dw $0050 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $003C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0050 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0FC0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0130 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $004C ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0000 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $3000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0500 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $8800 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $03C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $F700 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1300 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E09C2 : db $02 : dw $018C ; Health
    dl $7E09CA : db $02 : dw $0006 ; Supers
    dl $7E0A1C : db $02 : dw $0011 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0108 ; More position/state
    dl $7E0AF6 : db $02 : dw $05B0 ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED822 : db $02 : dw $0027 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $0007 ; Events, Items, Doors
    dw #$FFFF
.after

preset_tou_baby_skip:
    dw #preset_tou_m4 ; Tourian: M4
    dl $7E078D : db $02 : dw $AA14 ; DDB
    dl $7E079B : db $02 : dw $DC65 ; MDB
    dl $7E07F3 : db $02 : dw $0045 ; Music Bank
    dl $7E07F5 : db $02 : dw $0006 ; Music Track
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $000C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $001D ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0FB0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0150 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0FEC ; How many blocks X BG2 is scrolled?
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $6400 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $FA00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1500 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $FE00 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0100 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09C2 : db $02 : dw $0171 ; Health
    dl $7E09CA : db $02 : dw $000A ; Supers
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $01D8 ; Samus X
    dl $7E0AFA : db $02 : dw $00AB ; Samus Y
    dl $7ED822 : db $02 : dw $002F ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $000F ; Events, Items, Doors
    dw #$FFFF
.after

preset_tou_tourian_eye_door:
    dw #preset_tou_baby_skip ; Tourian: Baby Skip
    dl $7E078D : db $02 : dw $AA5C ; DDB
    dl $7E079B : db $02 : dw $DDC4 ; MDB
    dl $7E07F3 : db $02 : dw $001E ; Music Bank
    dl $7E07F5 : db $02 : dw $0005 ; Music Track
    dl $7E08F7 : db $02 : dw $0030 ; How many blocks X the screen is scrolled?
    dl $7E08FB : db $02 : dw $0024 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FF : db $02 : dw $0030 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0907 : db $02 : dw $0F90 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0160 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0034 ; How many blocks X BG2 is scrolled?
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0300 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $F800 ; Screen subpixel Y position
    dl $7E0917 : db $02 : dw $0240 ; Layer 2 X scroll in room in pixels?
    dl $7E091D : db $02 : dw $F600 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1600 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0927 : db $02 : dw $0000 ; X offset of room entrance for room transition (multiple of 100, screens)
    dl $7E09CA : db $02 : dw $0008 ; Supers
    dl $7E0A1C : db $02 : dw $0007 ; Samus position/state
    dl $7E0A1E : db $02 : dw $0008 ; More position/state
    dl $7E0AF6 : db $02 : dw $03DB ; Samus X
    dl $7E0AFA : db $02 : dw $008B ; Samus Y
    dl $7ED8C4 : db $02 : dw $01AF ; Events, Items, Doors
    dw #$FFFF
.after

preset_tou_escape_room_3:
    dw #preset_tou_tourian_eye_door ; Tourian: Tourian Eye Door
    dl $7E078D : db $02 : dw $AAEC ; DDB
    dl $7E079B : db $02 : dw $DE7A ; MDB
    dl $7E07F3 : db $02 : dw $0024 ; Music Bank
    dl $7E07F5 : db $02 : dw $0007 ; Music Track
    dl $7E08F7 : db $02 : dw $0000 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0004 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $0000 ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0003 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0000 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0004 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $0000 ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $FFF0 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0F40 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $0194 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $0000 ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0011 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $F000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0000 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $0000 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0040 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $0000 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0030 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $F400 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $1900 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0000 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $00E0 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0039 ; How many times the screen has scrolled? Stops at 40.
    dl $7E092B : db $02 : dw $8000 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0001 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09A6 : db $02 : dw $1009 ; Beams
    dl $7E09C2 : db $02 : dw $018F ; Health
    dl $7E09C6 : db $02 : dw $0000 ; Missiles
    dl $7E09CA : db $02 : dw $0000 ; Supers
    dl $7E09CE : db $02 : dw $0000 ; Pbs
    dl $7E0A1C : db $02 : dw $002D ; Samus position/state
    dl $7E0A1E : db $02 : dw $0608 ; More position/state
    dl $7E0A76 : db $02 : dw $8000 ; Hyper beam
    dl $7E0AF6 : db $02 : dw $00DB ; Samus X
    dl $7E0AFA : db $02 : dw $00B0 ; Samus Y
    dl $7ED820 : db $02 : dw $4FC5 ; Events, Items, Doors
    dl $7ED82C : db $02 : dw $0203 ; Events, Items, Doors
    dl $7ED8C4 : db $02 : dw $03AF ; Events, Items, Doors
    dw #$FFFF
.after

preset_tou_escape_parlor:
    dw #preset_tou_escape_room_3 ; Tourian: Escape Room 3
    dl $7E078D : db $02 : dw $AB34 ; DDB
    dl $7E079B : db $02 : dw $96BA ; MDB
    dl $7E079F : db $02 : dw $0000 ; Region
    dl $7E07C3 : db $02 : dw $F911 ; GFX Pointers
    dl $7E07C5 : db $02 : dw $43BA ; GFX Pointers
    dl $7E07C7 : db $02 : dw $C2AF ; GFX Pointers
    dl $7E08F7 : db $02 : dw $0010 ; How many blocks X the screen is scrolled?
    dl $7E08F9 : db $02 : dw $0000 ; How many blocks Y the screen is scrolled? (up = positive)
    dl $7E08FB : db $02 : dw $000C ; How many blocks X Layer 2 is scrolled?
    dl $7E08FD : db $02 : dw $0000 ; How many blocks Y Layer 2 is scrolled? (up = positive)
    dl $7E08FF : db $02 : dw $0010 ; How many blocks X the screen was scrolled previously (Checked to know when to update blocks)
    dl $7E0901 : db $02 : dw $0000 ; How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0903 : db $02 : dw $FFEF ; How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)
    dl $7E0905 : db $02 : dw $0060 ; How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)
    dl $7E0907 : db $02 : dw $0FF0 ; How many blocks X BG1 is scrolled?
    dl $7E0909 : db $02 : dw $00F0 ; How many blocks Y BG1 is scrolled? (up = positive)
    dl $7E090B : db $02 : dw $001C ; How many blocks X BG2 is scrolled?
    dl $7E090D : db $02 : dw $0F80 ; How many blocks Y BG2 is scrolled? (up = positive)
    dl $7E090F : db $02 : dw $C000 ; Screen subpixel X position.
    dl $7E0911 : db $02 : dw $0100 ; Screen X position in pixels
    dl $7E0913 : db $02 : dw $A401 ; Screen subpixel Y position
    dl $7E0915 : db $02 : dw $0000 ; Screen Y position in pixels
    dl $7E0917 : db $02 : dw $00C0 ; Layer 2 X scroll in room in pixels?
    dl $7E0919 : db $02 : dw $0000 ; Layer 2 Y scroll in room in pixels? (up = positive)
    dl $7E091D : db $02 : dw $FE00 ; BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E091F : db $02 : dw $0F00 ; BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)
    dl $7E0921 : db $02 : dw $0100 ; BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0923 : db $02 : dw $F800 ; BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)
    dl $7E0925 : db $02 : dw $0040 ; How many times the screen has scrolled? Stops at 40.
    dl $7E0929 : db $02 : dw $0800 ; Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)
    dl $7E092B : db $02 : dw $C800 ; Movement speed for room transitions (subpixels per frame of room transition movement)
    dl $7E092D : db $02 : dw $0000 ; Movement speed for room transitions (pixels per frame of room transition movement)
    dl $7E09C2 : db $02 : dw $00DE ; Health
    dl $7E0A1C : db $02 : dw $000A ; Samus position/state
    dl $7E0A1E : db $02 : dw $0104 ; More position/state
    dl $7E0AF6 : db $02 : dw $019C ; Samus X
    dl $7E0AFA : db $02 : dw $005B ; Samus Y
    dl $7ED90C : db $02 : dw $FF00 ; Events, Items, Doors
    dw #$FFFF
.after
