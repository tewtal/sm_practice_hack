local CAT = "gtmax" -- prkd, hundo, rbo, kpdr25, gtclassic, kpdr21, 14ice, 14speed, allbosskpdr, allbosspkdr, allbossprkd, 100early, pkrd, nintendopower, gtmax

local last_state = {} -- holds all state that has been changed up untill last save

local preset_output = ""
local last_step = nil

local MEMTRACK = { -- {{{
    { 0x07C3, 0x6, 'GFX Pointers' },
    { 0x07F3, 0x2, 'Music Bank' },
    { 0x07F5, 0x2, 'Music Track' },
    { 0x078B, 0x2, 'Elevator Index' },
    { 0x078D, 0x2, 'DDB' },
    { 0x078F, 0x2, 'DoorOut Index' },
    { 0x079B, 0x2, 'MDB' },
    { 0x079F, 0x2, 'Region' },

    --[[
    { 0x08F7, 0x2, 'How many blocks X the screen is scrolled?' },
    { 0x08F9, 0x2, 'How many blocks Y the screen is scrolled? (up = positive)' },
    { 0x08FB, 0x2, 'How many blocks X Layer 2 is scrolled?' },
    { 0x08FD, 0x2, 'How many blocks Y Layer 2 is scrolled? (up = positive)' },
    { 0x08FF, 0x2, 'How many blocks X the screen was scrolled previously (Checked to know when to update blocks)' },
    { 0x0901, 0x2, 'How many blocks Y the screen was scrolled previously (Checked to know when to update blocks) (up = positive)' },
    { 0x0903, 0x2, 'How many blocks X Layer 2 was scrolled previously (Checked to know when to update blocks)' },
    { 0x0905, 0x2, 'How many blocks Y Layer 2 was scrolled previously (Checked to know when to update blocks) (up = positive)' },
    { 0x0907, 0x2, 'How many blocks X BG1 is scrolled?' },
    { 0x0909, 0x2, 'How many blocks Y BG1 is scrolled? (up = positive)' },
    { 0x090B, 0x2, 'How many blocks X BG2 is scrolled?' },
    { 0x090D, 0x2, 'How many blocks Y BG2 is scrolled? (up = positive)' },
    ]]
    { 0x090F, 0x2, 'Screen subpixel X position.' },
    { 0x0911, 0x2, 'Screen X position in pixels' },
    { 0x0913, 0x2, 'Screen subpixel Y position' },
    { 0x0915, 0x2, 'Screen Y position in pixels' },
    --[[
    { 0x0917, 0x2, 'Layer 2 X scroll in room in pixels?' },
    { 0x0919, 0x2, 'Layer 2 Y scroll in room in pixels? (up = positive)' },
    { 0x091B, 0x2, 'BG2 scroll percent to screen scroll (0 = 100, 1 = ?) (1 byte for X, 1 byte for Y)' },
    { 0x091D, 0x2, 'BG1 X scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)' },
    { 0x091F, 0x2, 'BG1 Y scroll offset due to room transitions (Translates between screen scroll and BG1 scroll)' },
    { 0x0921, 0x2, 'BG2 X scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)' },
    { 0x0923, 0x2, 'BG2 Y scroll offset due to room transitions (Translates between Layer 2 scroll and BG2 scroll)' },
    { 0x0925, 0x2, 'How many times the screen has scrolled? Stops at 40.' },
    { 0x0927, 0x2, 'X offset of room entrance for room transition (multiple of 100, screens)' },
    { 0x0929, 0x2, 'Y offset of room entrance for room transition (multiple of 100, screens. Adjusted by 20 when moving up)' },
    { 0x092B, 0x2, 'Movement speed for room transitions (subpixels per frame of room transition movement)' },
    { 0x092D, 0x2, 'Movement speed for room transitions (pixels per frame of room transition movement)' },
    --]]
    { 0x093F, 0x2, 'Ceres escape flag' },

    { 0x09A2, 0x2, 'Equipped Items' },
    { 0x09A4, 0x2, 'Collected Items' },
    { 0x09A6, 0x2, 'Beams' },
    { 0x09A8, 0x2, 'Beams' },
    { 0x09C0, 0x2, 'Manual/Auto reserve tank' },
    { 0x09C2, 0x2, 'Health' },
    { 0x09C4, 0x2, 'Max helath' },
    { 0x09C6, 0x2, 'Missiles' },
    { 0x09C8, 0x2, 'Max missiles' },
    { 0x09CA, 0x2, 'Supers' },
    { 0x09CC, 0x2, 'Max supers' },
    { 0x09CE, 0x2, 'Pbs' },
    { 0x09D0, 0x2, 'Max pbs' },
    -- { 0x09D2, 0x2, 'Current selected weapon' },
    { 0x09D4, 0x2, 'Max reserves' },
    { 0x09D6, 0x2, 'Reserves' },
    -- { 0x0A04, 0x2, 'Auto-cancel item' },
    { 0x0A1C, 0x2, 'Samus position/state' },
    { 0x0A1E, 0x2, 'More position/state' },
    { 0x0A68, 0x2, 'Flash suit' },
    { 0x0A76, 0x2, 'Hyper beam' },
    { 0x0AF6, 0x2, 'Samus X' },
    { 0x0AFA, 0x2, 'Samus Y' },
    { 0x0B3F, 0x2, 'Blue suit' },
    { 0xD7C0, 0x60, 'SRAM copy' }, -- Prob not doing much?
    { 0xD820, 0x100, 'Events, Items, Doors' },
    -- { 0xD840, 0x40, 'Items' },
    -- { 0xD8B0, 0x40, 'Doors' },
    -- { 0xD914, 0x2, 'Game mode?' },

} -- }}}

local SEGMENTS = {
    ["prkd"] = { -- {{{
        { ["name"] = "Bombs", ["steps"] = {} },
        { ["name"] = "Power Bombs", ["steps"] = {} },
        { ["name"] = "Gravity Suit", ["steps"] = {} },
        { ["name"] = "Cathedral", ["steps"] = {} },
        { ["name"] = "Ridley", ["steps"] = {} },
        { ["name"] = "Kraid", ["steps"] = {} },
        { ["name"] = "Draygon", ["steps"] = {} },
        { ["name"] = "Golden 4", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    }, -- }}}
    ["hundo"] = {
        { ["name"] = "Bombs", ["steps"] = {} },
        { ["name"] = "Kraid", ["steps"] = {} },
        { ["name"] = "Speed Booster", ["steps"] = {} },
        { ["name"] = "Ice Beam", ["steps"] = {} },
        { ["name"] = "Phantoon", ["steps"] = {} },
        { ["name"] = "Gravity", ["steps"] = {} },
        { ["name"] = "Brinstar Cleanup", ["steps"] = {} },
        { ["name"] = "Mama Turtle E-Tank", ["steps"] = {} },
        { ["name"] = "Maridia Cleanup", ["steps"] = {} },
        { ["name"] = "Draygon", ["steps"] = {} },
        { ["name"] = "Maridia Cleanup 2", ["steps"] = {} },
        { ["name"] = "Golden Torizo", ["steps"] = {} },
        { ["name"] = "Ridley", ["steps"] = {} },
        { ["name"] = "Crocomire", ["steps"] = {} },
        { ["name"] = "Brinstar Cleanup", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["rbo"] = {
        { ["name"] = "Bombs", ["steps"] = {} },
        { ["name"] = "Brinstar", ["steps"] = {} },
        { ["name"] = "Norfair (First Visit)", ["steps"] = {} },
        { ["name"] = "Brinstar Cleanup", ["steps"] = {} },
        { ["name"] = "Norfair (Second Visit)", ["steps"] = {} },
        { ["name"] = "Lower Norfair", ["steps"] = {} },
        { ["name"] = "Norfair Escape", ["steps"] = {} },
        { ["name"] = "Maridia", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Kraid-G4", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["kpdr25"] = {
        { ["name"] = "Bombs", ["steps"] = {} },
        { ["name"] = "Kraid", ["steps"] = {} },
        { ["name"] = "Upper Norfair", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Maridia", ["steps"] = {} },
        { ["name"] = "Lower Norfair", ["steps"] = {} },
        { ["name"] = "Golden 4", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["gtclassic"] = {
        { ["name"] = "Crateria", ["steps"] = {} },
        { ["name"] = "Brinstar", ["steps"] = {} },
        { ["name"] = "Bootless Upper Norfair", ["steps"] = {} },
        { ["name"] = "Lower Norfair", ["steps"] = {} },
        { ["name"] = "Maridia", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["kpdr21"] = {
        { ["name"] = "Crateria", ["steps"] = {} },
        { ["name"] = "Brinstar", ["steps"] = {} },
        { ["name"] = "Upper Norfair", ["steps"] = {} },
        { ["name"] = "Red Brinstar", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Red Brinstar Final", ["steps"] = {} },
        { ["name"] = "Maridia", ["steps"] = {} },
        { ["name"] = "Upper Norfair Revisit", ["steps"] = {} },
        { ["name"] = "Lower Norfair", ["steps"] = {} },
        { ["name"] = "Backtracking", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["14ice"] = {
        { ["name"] = "Crateria", ["steps"] = {} },
        { ["name"] = "Brinstar", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Brinstar Revisit", ["steps"] = {} },
        { ["name"] = "Upper Norfair", ["steps"] = {} },
        { ["name"] = "Lower Norfair", ["steps"] = {} },
        { ["name"] = "Maridia", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["14speed"] = {
        { ["name"] = "Crateria", ["steps"] = {} },
        { ["name"] = "Brinstar", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Brinstar Revisit", ["steps"] = {} },
        { ["name"] = "Upper Norfair", ["steps"] = {} },
        { ["name"] = "Lower Norfair", ["steps"] = {} },
        { ["name"] = "Maridia", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["allbosskpdr"] = {
        { ["name"] = "Crateria", ["steps"] = {} },
        { ["name"] = "Brinstar", ["steps"] = {} },
        { ["name"] = "Upper Norfair", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Maridia", ["steps"] = {} },
        { ["name"] = "Upper Norfair Revisit", ["steps"] = {} },
        { ["name"] = "Lower Norfair", ["steps"] = {} },
        { ["name"] = "Spore Spawn", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["allbosspkdr"] = {
        { ["name"] = "Crateria", ["steps"] = {} },
        { ["name"] = "Brinstar", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Upper Norfair", ["steps"] = {} },
        { ["name"] = "Kraids Lair", ["steps"] = {} },
        { ["name"] = "Maridia", ["steps"] = {} },
        { ["name"] = "Upper Norfair Revisit", ["steps"] = {} },
        { ["name"] = "Lower Norfair", ["steps"] = {} },
        { ["name"] = "Spore Spawn", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["allbossprkd"] = {
        { ["name"] = "Crateria", ["steps"] = {} },
        { ["name"] = "Brinstar", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Upper Norfair", ["steps"] = {} },
        { ["name"] = "Lower Norfair", ["steps"] = {} },
        { ["name"] = "Upper Norfair Revisit", ["steps"] = {} },
        { ["name"] = "Kraids Lair", ["steps"] = {} },
        { ["name"] = "Maridia", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["100early"] = {
        { ["name"] = "Crateria", ["steps"] = {} },
        { ["name"] = "Brinstar", ["steps"] = {} },
        { ["name"] = "Upper Norfair", ["steps"] = {} },
        { ["name"] = "Red Tower and Crateria", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Brinstar Cleanup", ["steps"] = {} },
        { ["name"] = "Maridia Pre-Draygon", ["steps"] = {} },
        { ["name"] = "Maridia Post-Draygon", ["steps"] = {} },
        { ["name"] = "Kraid-Ice-Kronic", ["steps"] = {} },
        { ["name"] = "Lower Norfair", ["steps"] = {} },
        { ["name"] = "Final Cleanup", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["pkrd"] = {
        { ["name"] = "Crateria", ["steps"] = {} },
        { ["name"] = "Brinstar", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Red Brinstar Revisit", ["steps"] = {} },
        { ["name"] = "Kraid", ["steps"] = {} },
        { ["name"] = "Upper Norfair", ["steps"] = {} },
        { ["name"] = "Lower Norfair", ["steps"] = {} },
        { ["name"] = "Maridia", ["steps"] = {} },
        { ["name"] = "Backtracking", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["nintendopower"] = {
        { ["name"] = "Crateria", ["steps"] = {} },
        { ["name"] = "Brinstar", ["steps"] = {} },
        { ["name"] = "Norfair", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Maridia", ["steps"] = {} },
        { ["name"] = "Norfair 2", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
    ["gtmax"] = {
        { ["name"] = "Crateria", ["steps"] = {} },
        { ["name"] = "Brinstar", ["steps"] = {} },
        { ["name"] = "Kraid", ["steps"] = {} },
        { ["name"] = "Upper Norfair", ["steps"] = {} },
        { ["name"] = "Lower Norfair", ["steps"] = {} },
        { ["name"] = "Upper Norfair and Kraid", ["steps"] = {} },
        { ["name"] = "Maridia Pre-Draygon", ["steps"] = {} },
        { ["name"] = "Maridia Post-Draygon", ["steps"] = {} },
        { ["name"] = "Wrecked Ship", ["steps"] = {} },
        { ["name"] = "Brinstar Cleanup 1", ["steps"] = {} },
        { ["name"] = "Brinstar Cleanup 2", ["steps"] = {} },
        { ["name"] = "Tourian", ["steps"] = {} },
    },
}

local STEPS = {
    ["hundo"] = {
		-- Bombs
		[1501] = { ["segment_no"] = 1, ["name"] = "Ceres elevator" },
		[5280] = { ["segment_no"] = 1, ["name"] = "Ceres Last 3 rooms" },
		[9201] = { ["segment_no"] = 1, ["name"] = "Ship" },
		[9497] = { ["segment_no"] = 1, ["name"] = "Parlor down" },
		[12466] = { ["segment_no"] = 1, ["name"] = "Morph" },
		[16062] = { ["segment_no"] = 1, ["name"] = "Pit Room" },
		[16694] = { ["segment_no"] = 1, ["name"] = "Climb" },
		[18258] = { ["segment_no"] = 1, ["name"] = "Parlor up" },
		[19958] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },

		-- Kraid
		[22527] = { ["segment_no"] = 2, ["name"] = "Alcatraz" },
		[23146] = { ["segment_no"] = 2, ["name"] = "Terminator" },
		[24193] = { ["segment_no"] = 2, ["name"] = "Pirates Shaft" },
		[25775] = { ["segment_no"] = 2, ["name"] = "Elevator" },
		[26857] = { ["segment_no"] = 2, ["name"] = "Early Supers" },
		[30136] = { ["segment_no"] = 2, ["name"] = "Reverse Mockball" },
		[31884] = { ["segment_no"] = 2, ["name"] = "Dachora Room" },
		[32914] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
		[34754] = { ["segment_no"] = 2, ["name"] = "Green Hill Zone" },
		[36413] = { ["segment_no"] = 2, ["name"] = "Red Tower" },
		[40264] = { ["segment_no"] = 2, ["name"] = "Kraid Entry" },
		[42679] = { ["segment_no"] = 2, ["name"] = "Kraid" },
		[45270] = { ["segment_no"] = 2, ["name"] = "Leaving Varia" },
		[46500] = { ["segment_no"] = 2, ["name"] = "Leaving Kraid Hallway" },
		[48342] = { ["segment_no"] = 2, ["name"] = "Kraid Escape" },

		-- Speed Booster
		[49985] = { ["segment_no"] = 3, ["name"] = "Business Center" },
		[50291] = { ["segment_no"] = 3, ["name"] = "Hi Jump" },
		[53201] = { ["segment_no"] = 3, ["name"] = "Business Center Climb" },
		[53670] = { ["segment_no"] = 3, ["name"] = "Cathedral Entrance" },
		[54323] = { ["segment_no"] = 3, ["name"] = "Cathedral" },
		[55600] = { ["segment_no"] = 3, ["name"] = "Rising Tide" },
		[56280] = { ["segment_no"] = 3, ["name"] = "Bubble Mountain" },
		[57070] = { ["segment_no"] = 3, ["name"] = "Bat Cave" },
		[59761] = { ["segment_no"] = 3, ["name"] = "Leaving Speed Booster" },

		-- Ice Beam
		[61212] = { ["segment_no"] = 4, ["name"] = "Single Chamber" },
		[61604] = { ["segment_no"] = 4, ["name"] = "Double Chamber" },
		[63455] = { ["segment_no"] = 4, ["name"] = "Double Chamber Revisited" },
		[64415] = { ["segment_no"] = 4, ["name"] = "Bubble Mountain Revisited" },
		[66356] = { ["segment_no"] = 4, ["name"] = "Business Center Climb Ice" },
		[66809] = { ["segment_no"] = 4, ["name"] = "Ice Beam Gate Room" },
		[67458] = { ["segment_no"] = 4, ["name"] = "Ice Beam Snake Room" },
		[68610] = { ["segment_no"] = 4, ["name"] = "Ice Beam Snake Room Revisit" },
		[69037] = { ["segment_no"] = 4, ["name"] = "Ice Beam Gate Room Escape" },
		[69700] = { ["segment_no"] = 4, ["name"] = "Business Center Elevator" },

		-- Phantoon
		[70882] = { ["segment_no"] = 5, ["name"] = "Alpha Spark" },
		[71983] = { ["segment_no"] = 5, ["name"] = "Red Tower Revisit" },
		[73200] = { ["segment_no"] = 5, ["name"] = "Hellway" },
		[75757] = { ["segment_no"] = 5, ["name"] = "Leaving Alpha PBs" },
		[79320] = { ["segment_no"] = 5, ["name"] = "Kihunter Room" },
		[80235] = { ["segment_no"] = 5, ["name"] = "Ocean Fly" },
		[84136] = { ["segment_no"] = 5, ["name"] = "Phantoon" },

		-- Gravity
		[89050] = { ["segment_no"] = 6, ["name"] = "WS Shaft Up 1" },
		[89674] = { ["segment_no"] = 6, ["name"] = "WS Right Supers" },
		[92911] = { ["segment_no"] = 6, ["name"] = "Spiky Room of Death" },
		[94040] = { ["segment_no"] = 6, ["name"] = "WS E-Tank" },
		[95743] = { ["segment_no"] = 6, ["name"] = "Spiky Room of Death Revisit" },
		[97343] = { ["segment_no"] = 6, ["name"] = "WS Shaft Up 2" },
		[98124] = { ["segment_no"] = 6, ["name"] = "Attic" },
		[99395] = { ["segment_no"] = 6, ["name"] = "WS Robot Missiles" },
		[100842] = { ["segment_no"] = 6, ["name"] = "Attic Revisit" },
		[101459] = { ["segment_no"] = 6, ["name"] = "Sky Missiles" },
		[104347] = { ["segment_no"] = 6, ["name"] = "Bowling" },
		[110601] = { ["segment_no"] = 6, ["name"] = "Leaving Gravity" },

		-- Brinstar Cleanup
		[112878] = { ["segment_no"] = 7, ["name"] = "Crateria PBs" },
		[114860] = { ["segment_no"] = 7, ["name"] = "Ship Room" },
		[116854] = { ["segment_no"] = 7, ["name"] = "Gauntlet E-Tank" },
		[117904] = { ["segment_no"] = 7, ["name"] = "Green Pirates Shaft" },
		[120538] = { ["segment_no"] = 7, ["name"] = "Green Shaft Revisit" },
		[121960] = { ["segment_no"] = 7, ["name"] = "Green Brinstar Beetoms" },
		[123269] = { ["segment_no"] = 7, ["name"] = "Etecoon Energy Tank Room" },
		[124497] = { ["segment_no"] = 7, ["name"] = "Etecoon Room" },
		[126363] = { ["segment_no"] = 7, ["name"] = "Dachora Room Revisit" },
		[126856] = { ["segment_no"] = 7, ["name"] = "Big Pink Revisit" },
		[127971] = { ["segment_no"] = 7, ["name"] = "Mission Impossible PBs" },
		[129390] = { ["segment_no"] = 7, ["name"] = "Pink Brinstar E-Tank" },
		[131417] = { ["segment_no"] = 7, ["name"] = "Spore Spawn Supers" },
		[134690] = { ["segment_no"] = 7, ["name"] = "Waterway E-Tank" },

		-- Mama Turtle E-Tank
		[136026] = { ["segment_no"] = 8, ["name"] = "Big Pink Charge Escape" },
		[136728] = { ["segment_no"] = 8, ["name"] = "Green Hills Revisit" },
		[138465] = { ["segment_no"] = 8, ["name"] = "Blockbuster" },
		[141348] = { ["segment_no"] = 8, ["name"] = "Main Street" },
		[142247] = { ["segment_no"] = 8, ["name"] = "Fish Tank" },
		[142968] = { ["segment_no"] = 8, ["name"] = "Mama Turtle E-Tank" },

		-- Maridia Cleanup
		[144612] = { ["segment_no"] = 9, ["name"] = "Fish Tank Revisit" },
		[145345] = { ["segment_no"] = 9, ["name"] = "Crab Supers" },
		[146431] = { ["segment_no"] = 9, ["name"] = "Mt Everest" },
		[147385] = { ["segment_no"] = 9, ["name"] = "Beach Missiles" },
		[148264] = { ["segment_no"] = 9, ["name"] = "Maridia Bug Room" },
		[148950] = { ["segment_no"] = 9, ["name"] = "Watering Hole" },
		[150524] = { ["segment_no"] = 9, ["name"] = "Maridia Bug Room Revisit" },
		[151033] = { ["segment_no"] = 9, ["name"] = "Beach Revisit" },

		-- Draygon
		[151922] = { ["segment_no"] = 10, ["name"] = "Aqueduct" },
		[153180] = { ["segment_no"] = 10, ["name"] = "Botwoon" },
		[154555] = { ["segment_no"] = 10, ["name"] = "Full Halfie" },
		[155722] = { ["segment_no"] = 10, ["name"] = "Draygon Missiles" },
		[156864] = { ["segment_no"] = 10, ["name"] = "Draygon" },
		[160569] = { ["segment_no"] = 10, ["name"] = "Draygon Escape" },

		-- Maridia Cleanup 2
		[163453] = { ["segment_no"] = 11, ["name"] = "Aqueduct Revisit 1" },
		[164615] = { ["segment_no"] = 11, ["name"] = "Right Sandpit" },
		[167673] = { ["segment_no"] = 11, ["name"] = "Puyo Ice Clip (Springball)" },
		[168307] = { ["segment_no"] = 11, ["name"] = "Shaktool" },
		[172283] = { ["segment_no"] = 11, ["name"] = "Shaktool Revisit" },
		[173306] = { ["segment_no"] = 11, ["name"] = "East Sand Hall" },
		[175380] = { ["segment_no"] = 11, ["name"] = "Kassiuz Room" },
		[176088] = { ["segment_no"] = 11, ["name"] = "Plasma" },
		[177385] = { ["segment_no"] = 11, ["name"] = "Kassiuz Room Revisit" },
		[178061] = { ["segment_no"] = 11, ["name"] = "Plasma Spark Room Down" },
		[178658] = { ["segment_no"] = 11, ["name"] = "Cac Alley" },
		[180242] = { ["segment_no"] = 11, ["name"] = "Aqueduct Revisit 2" },
		[182949] = { ["segment_no"] = 11, ["name"] = "Left Sandpit" },
		[186584] = { ["segment_no"] = 11, ["name"] = "Thread the Needle Room" },

		-- Golden Torizo
		[187255] = { ["segment_no"] = 12, ["name"] = "Kraid Entrance Revisit" },
		[188216] = { ["segment_no"] = 12, ["name"] = "Kraid Missiles" },
		[189312] = { ["segment_no"] = 12, ["name"] = "Kraid Missiles Escape" },
		[191250] = { ["segment_no"] = 12, ["name"] = "Ice Missiles" },
		[192810] = { ["segment_no"] = 12, ["name"] = "Croc Speedway" },
		[194316] = { ["segment_no"] = 12, ["name"] = "Kronic Boost" },
		[196389] = { ["segment_no"] = 12, ["name"] = "Blue Fireball" },
		[198856] = { ["segment_no"] = 12, ["name"] = "Golden Torizo" },

		-- Ridley
		[202166] = { ["segment_no"] = 13, ["name"] = "Fast Ripper Room" },
		[203324] = { ["segment_no"] = 13, ["name"] = "WRITG" },
		[203940] = { ["segment_no"] = 13, ["name"] = "Mickey Mouse Missiles" },
		[205458] = { ["segment_no"] = 13, ["name"] = "Amphitheatre" },
		[206284] = { ["segment_no"] = 13, ["name"] = "Kihunter Shaft Down" },
		[207455] = { ["segment_no"] = 13, ["name"] = "Wasteland Down" },
		[209248] = { ["segment_no"] = 13, ["name"] = "Ninja Pirates" },
		[210110] = { ["segment_no"] = 13, ["name"] = "Plowerhouse Room" },
		[210890] = { ["segment_no"] = 13, ["name"] = "Ridley" },
		[214330] = { ["segment_no"] = 13, ["name"] = "Ridley Escape" },
		[216087] = { ["segment_no"] = 13, ["name"] = "Wasteland Up" },
		[217163] = { ["segment_no"] = 13, ["name"] = "Kihunter Shaft Up" },
		[218280] = { ["segment_no"] = 13, ["name"] = "Firefleas Room" },
		[220036] = { ["segment_no"] = 13, ["name"] = "Hotarubi Special" },
		[223280] = { ["segment_no"] = 13, ["name"] = "3 Muskateers" },

		-- Crocomire
		[225698] = { ["segment_no"] = 14, ["name"] = "Bubble Mountain Revisit" },
		[226184] = { ["segment_no"] = 14, ["name"] = "Norfair Reserve" },
		[228929] = { ["segment_no"] = 14, ["name"] = "Bubble Mountain Cleanup" },
		[230968] = { ["segment_no"] = 14, ["name"] = "Red Pirate Shaft" },
		[231993] = { ["segment_no"] = 14, ["name"] = "Crocomire" },
		[237684] = { ["segment_no"] = 14, ["name"] = "Grapple Shaft Down" },
		[240288] = { ["segment_no"] = 14, ["name"] = "Grapple Shaft Up" },
		[242667] = { ["segment_no"] = 14, ["name"] = "Crocomire Room Revisit" },
		[243597] = { ["segment_no"] = 14, ["name"] = "Croc Escape" },
		[244449] = { ["segment_no"] = 14, ["name"] = "Business Center Climb Final" },

		-- Brinstar Cleanup
		[246530] = { ["segment_no"] = 15, ["name"] = "Below Spazer" },
		[247086] = { ["segment_no"] = 15, ["name"] = "Red Tower X-Ray" },
		[247721] = { ["segment_no"] = 15, ["name"] = "Red Brinstar Firefleas" },
		[249555] = { ["segment_no"] = 15, ["name"] = "Red Brinstar Firefleas 2" },
		[251220] = { ["segment_no"] = 15, ["name"] = "Reverse Slinky" },
		[252203] = { ["segment_no"] = 15, ["name"] = "Retro Brinstar Hoppers" },
		[253469] = { ["segment_no"] = 15, ["name"] = "Retro Brinstar E-Tank" },
		[254915] = { ["segment_no"] = 15, ["name"] = "Billy Mays" },
		[256482] = { ["segment_no"] = 15, ["name"] = "Billy Mays Escape" },
		[257731] = { ["segment_no"] = 15, ["name"] = "Retro Brinstar Escape" },
		[259284] = { ["segment_no"] = 15, ["name"] = "Pit Room" },
		[260575] = { ["segment_no"] = 15, ["name"] = "Climb Supers" },
		[263127] = { ["segment_no"] = 15, ["name"] = "The Last Missiles" },
		[264203] = { ["segment_no"] = 15, ["name"] = "The Last Missiles Escape" },

		-- Tourian
		[270498] = { ["segment_no"] = 16, ["name"] = "Metroids 1" },
		[271033] = { ["segment_no"] = 16, ["name"] = "Metroids 2" },
		[271783] = { ["segment_no"] = 16, ["name"] = "Metroids 3" },
		[272287] = { ["segment_no"] = 16, ["name"] = "Metroids 4" },
		[273359] = { ["segment_no"] = 16, ["name"] = "Baby Skip" },
		[275659] = { ["segment_no"] = 16, ["name"] = "Zeb Skip" },
		[287672] = { ["segment_no"] = 16, ["name"] = "Escape Room 3" },
		[289942] = { ["segment_no"] = 16, ["name"] = "Escape Parlor" },
    },
    ["prkd"] = { -- {{{
        -- Bombs
        [1501] = { ["segment_no"] = 1, ["name"] = "Elevator" },
        [5280] = { ["segment_no"] = 1, ["name"] = "Ceres Last 3 rooms" },
        [9200] = { ["segment_no"] = 1, ["name"] = "Ship" },
        [9497] = { ["segment_no"] = 1, ["name"] = "Parlor down" },
        [12466] = { ["segment_no"] = 1, ["name"] = "Morph" },
        [16062] = { ["segment_no"] = 1, ["name"] = "Pit Room" },
        [16694] = { ["segment_no"] = 1, ["name"] = "Climb" },
        [18258] = { ["segment_no"] = 1, ["name"] = "Parlor up" },
        [19958] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
        -- PBs
        [22527] = { ["segment_no"] = 2, ["name"] = "Alcatraz" },
        [23146] = { ["segment_no"] = 2, ["name"] = "Terminator" },
        [24193] = { ["segment_no"] = 2, ["name"] = "Pirates Shaft" },
        [25775] = { ["segment_no"] = 2, ["name"] = "Elevator" },
        [26857] = { ["segment_no"] = 2, ["name"] = "Early Supers" },
        [28585] = { ["segment_no"] = 2, ["name"] = "Dachora Room" },
        [29701] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
        [32107] = { ["segment_no"] = 2, ["name"] = "Green Hill Zone" },
        [33851] = { ["segment_no"] = 2, ["name"] = "Red Tower" },
        [34784] = { ["segment_no"] = 2, ["name"] = "Hellway" },
        [35265] = { ["segment_no"] = 2, ["name"] = "Caterpillar Room down" },
        -- Grav
        [36883] = { ["segment_no"] = 3, ["name"] = "Caterpillar Room up" },
        [39111] = { ["segment_no"] = 3, ["name"] = "Kihunter Room" },
        [40245] = { ["segment_no"] = 3, ["name"] = "Moat" },
        [42330] = { ["segment_no"] = 3, ["name"] = "Wrecked Ship Enter" },
        [43520] = { ["segment_no"] = 3, ["name"] = "Phantoon" },
        [48225] = { ["segment_no"] = 3, ["name"] = "Wrecked Ship Climb" },
        [50996] = { ["segment_no"] = 3, ["name"] = "Attic" },
        [53119] = { ["segment_no"] = 3, ["name"] = "Bowling Alley farm" },
        [57285] = { ["segment_no"] = 3, ["name"] = "Grav" },
        -- Cathedral
        [58777] = { ["segment_no"] = 4, ["name"] = "Kihunter Room" },
        [59709] = { ["segment_no"] = 4, ["name"] = "Caterpillar Room" },
        [61221] = { ["segment_no"] = 4, ["name"] = "Red Tower" },
        [62460] = { ["segment_no"] = 4, ["name"] = "Bat Room" },
        [64934] = { ["segment_no"] = 4, ["name"] = "Glass Tunnel" },
        [66100] = { ["segment_no"] = 4, ["name"] = "Business Center" },
        [67214] = { ["segment_no"] = 4, ["name"] = "Hi Jump" },
        [69710] = { ["segment_no"] = 4, ["name"] = "Business Center climb" },
        [71169] = { ["segment_no"] = 4, ["name"] = "Ice Beam Snake Room" },
        [73100] = { ["segment_no"] = 4, ["name"] = "Ice Escape" },
        [74208] = { ["segment_no"] = 4, ["name"] = "Cathedral Entrance" },
        -- Ridley
        [74908] = { ["segment_no"] = 5, ["name"] = "Cathedral" },
        [76178] = { ["segment_no"] = 5, ["name"] = "Bubble Mountain" },
        [77945] = { ["segment_no"] = 5, ["name"] = "Bat Cave" },
        [80260] = { ["segment_no"] = 5, ["name"] = "Bat Cave revisited" },
        [82762] = { ["segment_no"] = 5, ["name"] = "Single Chamber" },
        [83343] = { ["segment_no"] = 5, ["name"] = "Double Chamber" },
        [85242] = { ["segment_no"] = 5, ["name"] = "Double Chamber revisited" },
        [86792] = { ["segment_no"] = 5, ["name"] = "Volcano Room" },
        [88082] = { ["segment_no"] = 5, ["name"] = "Lavaspark" },
        [89060] = { ["segment_no"] = 5, ["name"] = "LN Elevator" },
        [90538] = { ["segment_no"] = 5, ["name"] = "Fast Pillars" },
        [91679] = { ["segment_no"] = 5, ["name"] = "WRITG" },
        [92739] = { ["segment_no"] = 5, ["name"] = "Amphitheatre" },
        [94150] = { ["segment_no"] = 5, ["name"] = "Kihunter shaft" },
        [94961] = { ["segment_no"] = 5, ["name"] = "Wasteland" },
        [96756] = { ["segment_no"] = 5, ["name"] = "Metal Pirates" },
        [98280] = { ["segment_no"] = 5, ["name"] = "Ridley Farming Room" },
        [100442] = { ["segment_no"] = 5, ["name"] = "Ridley" },
        -- Kraid
        [105917] = { ["segment_no"] = 6, ["name"] = "Ridley Farming Room" },
        [107542] = { ["segment_no"] = 6, ["name"] = "Wasteland" },
        [108699] = { ["segment_no"] = 6, ["name"] = "Kihunter shaft" },
        [110020] = { ["segment_no"] = 6, ["name"] = "Fireflea Room" },
        [111280] = { ["segment_no"] = 6, ["name"] = "Three Muskateers Room" },
        [112226] = { ["segment_no"] = 6, ["name"] = "Single Chamber" },
        [113678] = { ["segment_no"] = 6, ["name"] = "Bubble Mountain" },
        [114745] = { ["segment_no"] = 6, ["name"] = "Frog Speedway" },
        [116822] = { ["segment_no"] = 6, ["name"] = "Warehouse Entrance" },
        [117063] = { ["segment_no"] = 6, ["name"] = "Zeela Room" },
        [118110] = { ["segment_no"] = 6, ["name"] = "Baby Kraid" },
        [118925] = { ["segment_no"] = 6, ["name"] = "Kraid" },
        -- Draygon
        [122558] = { ["segment_no"] = 7, ["name"] = "Baby Kraid" },
        [123896] = { ["segment_no"] = 7, ["name"] = "Warehouse Entrance" },
        [124625] = { ["segment_no"] = 7, ["name"] = "Glass Tunnel" },
        [125698] = { ["segment_no"] = 7, ["name"] = "Fish Tank" },
        [126840] = { ["segment_no"] = 7, ["name"] = "Crab Shaft" },
        [128032] = { ["segment_no"] = 7, ["name"] = "Botwoon Hallway" },
        [128624] = { ["segment_no"] = 7, ["name"] = "Botwoon" },
        [130882] = { ["segment_no"] = 7, ["name"] = "Halfie Climb" },
        [133633] = { ["segment_no"] = 7, ["name"] = "Draygon" },
        -- Golden Four
        [137206] = { ["segment_no"] = 8, ["name"] = "Precious Room" },
        [138261] = { ["segment_no"] = 8, ["name"] = "Halfie Climb" },
        [139318] = { ["segment_no"] = 8, ["name"] = "Botwoon Hallway" },
        [140401] = { ["segment_no"] = 8, ["name"] = "Crab Shaft" },
        [140934] = { ["segment_no"] = 8, ["name"] = "Mt Everest" },
        [142279] = { ["segment_no"] = 8, ["name"] = "Caterpillar Room" },
        [144090] = { ["segment_no"] = 8, ["name"] = "Kihunter Room" },
        [145017] = { ["segment_no"] = 8, ["name"] = "Parlor" },
        [145530] = { ["segment_no"] = 8, ["name"] = "Terminator" },
        [146715] = { ["segment_no"] = 8, ["name"] = "Golden Four" },
        -- Tourian
        [150256] = { ["segment_no"] = 9, ["name"] = "Enter Tourian" },
        [151618] = { ["segment_no"] = 9, ["name"] = "M1" },
        [152430] = { ["segment_no"] = 9, ["name"] = "M2" },
        [152908] = { ["segment_no"] = 9, ["name"] = "M3" },
        [153822] = { ["segment_no"] = 9, ["name"] = "M4" },
        [155354] = { ["segment_no"] = 9, ["name"] = "Baby Skip" },
        [158334] = { ["segment_no"] = 9, ["name"] = "Tourian Eye Door" },
        [174836] = { ["segment_no"] = 9, ["name"] = "Escape Room 3" },
        [177286] = { ["segment_no"] = 9, ["name"] = "Escape Parlor" },
    }, -- }}}
    ["rbo"] = {
		-- Bombs
		[1501] = { ["segment_no"] = 1, ["name"] = "Ceres Elevator" },
		[5280] = { ["segment_no"] = 1, ["name"] = "Ceres Last 3 rooms" },
		[9200] = { ["segment_no"] = 1, ["name"] = "Ship" },
		[9497] = { ["segment_no"] = 1, ["name"] = "Parlor Down" },
		[12466] = { ["segment_no"] = 1, ["name"] = "Morph" },
		[16062] = { ["segment_no"] = 1, ["name"] = "Pit Room" },
		[18336] = { ["segment_no"] = 1, ["name"] = "Retro E-Tank" },
		[21631] = { ["segment_no"] = 1, ["name"] = "Climb" },
		[23162] = { ["segment_no"] = 1, ["name"] = "Parlor Up" },
		[24582] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
		[27038] = { ["segment_no"] = 1, ["name"] = "Alcatraz" },
		[27573] = { ["segment_no"] = 1, ["name"] = "Terminator" },
        -- Brinstar
		[29861] = { ["segment_no"] = 2, ["name"] = "Green Brinstar Elevator" },
		[30866] = { ["segment_no"] = 2, ["name"] = "Early Supers Reserve" },
		[31992] = { ["segment_no"] = 2, ["name"] = "Early Supers Collection" },
		[33375] = { ["segment_no"] = 2, ["name"] = "Dachora Room" },
		[34289] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
		[35924] = { ["segment_no"] = 2, ["name"] = "Green Hill Zone" },
		[37508] = { ["segment_no"] = 2, ["name"] = "Red Tower (Up)" },
		[38254] = { ["segment_no"] = 2, ["name"] = "Hellway" },
		[39099] = { ["segment_no"] = 2, ["name"] = "Alpha PBs" },
		[40442] = { ["segment_no"] = 2, ["name"] = "Reverse Hellway" },
		[40871] = { ["segment_no"] = 2, ["name"] = "Red Tower Moonfalls" },
		[42193] = { ["segment_no"] = 2, ["name"] = "Spazer" },
        -- Norfair (First Visit)
		[44652] = { ["segment_no"] = 3, ["name"] = "Norfair Elevator" },
		[45658] = { ["segment_no"] = 3, ["name"] = "High Jump" },
		[47922] = { ["segment_no"] = 3, ["name"] = "Business Center (Up)" },
		[48324] = { ["segment_no"] = 3, ["name"] = "First Hell Run" },
		[50035] = { ["segment_no"] = 3, ["name"] = "Bubble Mountain" },
		[50766] = { ["segment_no"] = 3, ["name"] = "Bat Cave (Speed Farm)" },
		[54448] = { ["segment_no"] = 3, ["name"] = "Leaving Speed (Speed Farm 2)" },
		[58768] = { ["segment_no"] = 3, ["name"] = "Wave Escape" },
        -- Brinstar Cleanup
		[62727] = { ["segment_no"] = 4, ["name"] = "Alpha Spark" },
		[63984] = { ["segment_no"] = 4, ["name"] = "Red Tower (Up)" },
		[64714] = { ["segment_no"] = 4, ["name"] = "Green Brinstar (Backdoor)" },
		[66177] = { ["segment_no"] = 4, ["name"] = "Big Pink (Cleanup 1)" },
		[66823] = { ["segment_no"] = 4, ["name"] = "Spore Spawn Supers" },
		[68130] = { ["segment_no"] = 4, ["name"] = "Spore Spawn Supers (Escape)" },
		[68962] = { ["segment_no"] = 4, ["name"] = "Wave Gate E-Tank" },
		[71135] = { ["segment_no"] = 4, ["name"] = "Dachora Room 2" },
		[71861] = { ["segment_no"] = 4, ["name"] = "Green Shaft (Down)" },
		[72552] = { ["segment_no"] = 4, ["name"] = "Etecoon Supers" },
		[74122] = { ["segment_no"] = 4, ["name"] = "Etecoon Power Bombs (Optional)" },
		[75814] = { ["segment_no"] = 4, ["name"] = "Green Shaft (Up)" },
		[78331] = { ["segment_no"] = 4, ["name"] = "Reverse Terminator" },
		[79311] = { ["segment_no"] = 4, ["name"] = "Climb Supers Moonfall" },
		[82436] = { ["segment_no"] = 4, ["name"] = "Pit Room Shortcharge" },
		[83373] = { ["segment_no"] = 4, ["name"] = "Retro Brinstar Powerbombs" },
		[86546] = { ["segment_no"] = 4, ["name"] = "Ball Buster" },
        -- Norfair (Second Visit)
		[90199] = { ["segment_no"] = 5, ["name"] = "Ice Entry" },
		[92228] = { ["segment_no"] = 5, ["name"] = "Ice Escape" },
		[92895] = { ["segment_no"] = 5, ["name"] = "Ice Escape 2" },
		[94465] = { ["segment_no"] = 5, ["name"] = "Croc Shaft Moonfall" },
		[94798] = { ["segment_no"] = 5, ["name"] = "Croc Speedway" },
		[95550] = { ["segment_no"] = 5, ["name"] = "Croc" },
		[101723] = { ["segment_no"] = 5, ["name"] = "Grapple Shaft (Down)" },
		[103260] = { ["segment_no"] = 5, ["name"] = "Grapple Escape" },
		[103867] = { ["segment_no"] = 5, ["name"] = "Grapple Shaft (Up)" },
		[105570] = { ["segment_no"] = 5, ["name"] = "Croc (Re-visit)" },
		[107115] = { ["segment_no"] = 5, ["name"] = "Lava Dive (Grapple Room)" },
		[107684] = { ["segment_no"] = 5, ["name"] = "Lava Dive (Entry Room)" },
        -- Lower Norfair
		[110842] = { ["segment_no"] = 6, ["name"] = "Entry Room" },
		[111180] = { ["segment_no"] = 6, ["name"] = "Green Gate Glitch" },
		[114721] = { ["segment_no"] = 6, ["name"] = "Golden Torizo" },
		[118842] = { ["segment_no"] = 6, ["name"] = "Energy Refill (Escape)" },
		[119972] = { ["segment_no"] = 6, ["name"] = "Fast Pillars" },
		[120780] = { ["segment_no"] = 6, ["name"] = "WRITG" },
		[121618] = { ["segment_no"] = 6, ["name"] = "Amphitheater" },
		[122517] = { ["segment_no"] = 6, ["name"] = "Firefleas Entry" },
		[124760] = { ["segment_no"] = 6, ["name"] = "Kihunter Stairs (Down)" },
		[127236] = { ["segment_no"] = 6, ["name"] = "Ninja Pirates" },
		[128723] = { ["segment_no"] = 6, ["name"] = "Pre-Ridley" },
		[132515] = { ["segment_no"] = 6, ["name"] = "Ridley" },
        -- Norfair Escape
		[136084] = { ["segment_no"] = 7, ["name"] = "Ridley E-Tank" },
		[136334] = { ["segment_no"] = 7, ["name"] = "Post-Ridley" },
		[141996] = { ["segment_no"] = 7, ["name"] = "Firefleas" },
		[143274] = { ["segment_no"] = 7, ["name"] = "Firefleas Exit (Spikesuit)" },
		[144014] = { ["segment_no"] = 7, ["name"] = "3 Musketeers" },
		[144911] = { ["segment_no"] = 7, ["name"] = "3 Musketeers Exit" },
		[146698] = { ["segment_no"] = 7, ["name"] = "Croc Gate Farm" },
		[149891] = { ["segment_no"] = 7, ["name"] = "Business Center (Up)" },
        -- Maridia
		[151351] = { ["segment_no"] = 8, ["name"] = "Maridia Entry (Spikesuit)" },
		[154146] = { ["segment_no"] = 8, ["name"] = "Mt. Everest" },
		[155744] = { ["segment_no"] = 8, ["name"] = "Aqueduct" },
		[157088] = { ["segment_no"] = 8, ["name"] = "Pre-Botwoon (Ice Clip)" },
		[158365] = { ["segment_no"] = 8, ["name"] = "Botwoon" },
		[161868] = { ["segment_no"] = 8, ["name"] = "Post-Botwoon (Shinespark)" },
		[163506] = { ["segment_no"] = 8, ["name"] = "Colosseum" },
		[165132] = { ["segment_no"] = 8, ["name"] = "Draygon" },
		[171200] = { ["segment_no"] = 8, ["name"] = "Draygon Escape" },
		[172987] = { ["segment_no"] = 8, ["name"] = "Reverse Colosseum" },
		[174443] = { ["segment_no"] = 8, ["name"] = "Cac Alley" },
		[176524] = { ["segment_no"] = 8, ["name"] = "Plasma Spark Room" },
		[177622] = { ["segment_no"] = 8, ["name"] = "Kassiuz Room" },
		[178314] = { ["segment_no"] = 8, ["name"] = "Plasma (Screw Attack Strat)" },
		[180678] = { ["segment_no"] = 8, ["name"] = "Leaving Maridia" },
        -- Wrecked Ship
		[183045] = { ["segment_no"] = 9, ["name"] = "Forgotten Highway" },
		[184702] = { ["segment_no"] = 9, ["name"] = "East Ocean" },
		[185614] = { ["segment_no"] = 9, ["name"] = "Wrecked Ship Backdoor Entry" },
		[186893] = { ["segment_no"] = 9, ["name"] = "WS Shaft (Down)" },
		[187903] = { ["segment_no"] = 9, ["name"] = "Phantoon" },
		[193219] = { ["segment_no"] = 9, ["name"] = "WS Shaft (Up)" },
		[194246] = { ["segment_no"] = 9, ["name"] = "West Ocean" },
        -- Kraid/G4
		[195427] = { ["segment_no"] = 10, ["name"] = "Kihunters Room (Down)" },
		[197378] = { ["segment_no"] = 10, ["name"] = "Red Brinstar Elevator (Down)" },
		[198173] = { ["segment_no"] = 10, ["name"] = "Red Tower Moonfall (Screw Attack)" },
		[200226] = { ["segment_no"] = 10, ["name"] = "Kraid Entry" },
		[201585] = { ["segment_no"] = 10, ["name"] = "Kraid Hallway" },
		[202531] = { ["segment_no"] = 10, ["name"] = "Kraid" },
		[204320] = { ["segment_no"] = 10, ["name"] = "Kraid Hallway (Exit)" },
		[205962] = { ["segment_no"] = 10, ["name"] = "Kraid Escape" },
		[207604] = { ["segment_no"] = 10, ["name"] = "Red Tower (Up)" },
		[210374] = { ["segment_no"] = 10, ["name"] = "Kihunters Room (Up)" },
		[211079] = { ["segment_no"] = 10, ["name"] = "Ship Room" },
		[211934] = { ["segment_no"] = 10, ["name"] = "Terminator" },
		[212977] = { ["segment_no"] = 10, ["name"] = "G4" },
        -- Tourian
		[217354] = { ["segment_no"] = 11, ["name"] = "Metroids" },
		[218246] = { ["segment_no"] = 11, ["name"] = "Metroids 2" },
		[218753] = { ["segment_no"] = 11, ["name"] = "Metroids 3" },
		[219326] = { ["segment_no"] = 11, ["name"] = "Metroids 4" },
		[220322] = { ["segment_no"] = 11, ["name"] = "Baby Skip" },
		[223533] = { ["segment_no"] = 11, ["name"] = "Zeb Skip" },
		[235467] = { ["segment_no"] = 11, ["name"] = "Escape Room 3" },
		[237726] = { ["segment_no"] = 11, ["name"] = "Escape Parlor" },
    },
    ["kpdr25"] = {
		-- Bombs
		[762] = { ["segment_no"] = 1, ["name"] = "Ceres Elevator" },
		[4538] = { ["segment_no"] = 1, ["name"] = "Ceres Last 3 Rooms" },
        [8509] = { ["segment_no"] = 1, ["name"] = "Ship" },
        [11482] = { ["segment_no"] = 1, ["name"] = "Morph" },
        [15433] = { ["segment_no"] = 1, ["name"] = "Climb" },
        [17952] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
        [21383] = { ["segment_no"] = 1, ["name"] = "Terminator" },
		-- Kraid
        [23760] = { ["segment_no"] = 2, ["name"] = "Green Brinstar Elevator" },
        [29502] = { ["segment_no"] = 2, ["name"] = "Green Hills" },
        [32657] = { ["segment_no"] = 2, ["name"] = "Spazer" },
        [34553] = { ["segment_no"] = 2, ["name"] = "Warehouse Entrance" },
        [36966] = { ["segment_no"] = 2, ["name"] = "Kraid" },
        [39995] = { ["segment_no"] = 2, ["name"] = "Baby Kraid (Exiting)" },
        [41315] = { ["segment_no"] = 2, ["name"] = "Kraid E-tank" },
		-- Upper Norfair
        [43662] = { ["segment_no"] = 3, ["name"] = "Business Center" },
        [47086] = { ["segment_no"] = 3, ["name"] = "Pre-Cathedral" },
        [48890] = { ["segment_no"] = 3, ["name"] = "Bubble Mountain" },
        [50118] = { ["segment_no"] = 3, ["name"] = "Speed Hallway" },
        [53257] = { ["segment_no"] = 3, ["name"] = "Single Chamber" },
        [55338] = { ["segment_no"] = 3, ["name"] = "Leaving Wave" },
        [58618] = { ["segment_no"] = 3, ["name"] = "Entering Ice" },
        [60840] = { ["segment_no"] = 3, ["name"] = "Ice Escape" },
		-- Wrecked Ship
        [62610] = { ["segment_no"] = 4, ["name"] = "Alpha Spark" },
        [63879] = { ["segment_no"] = 4, ["name"] = "Red Tower" },
        [65023] = { ["segment_no"] = 4, ["name"] = "Hellway" },
        [66743] = { ["segment_no"] = 4, ["name"] = "Post Power Bombs" },
        [68328] = { ["segment_no"] = 4, ["name"] = "Pre-Moat" },
        [72548] = { ["segment_no"] = 4, ["name"] = "Phantoon" },
        [77598] = { ["segment_no"] = 4, ["name"] = "WS Shaft" },
        [79715] = { ["segment_no"] = 4, ["name"] = "Attic" },
        [81505] = { ["segment_no"] = 4, ["name"] = "Pre Bowling" },
        [86195] = { ["segment_no"] = 4, ["name"] = "Impulse Mockball" },
        [88313] = { ["segment_no"] = 4, ["name"] = "Hellway Return" },
		-- Maridia
        [90414] = { ["segment_no"] = 5, ["name"] = "The Tube" },
        [94135] = { ["segment_no"] = 5, ["name"] = "Botwoon" },
        [96961] = { ["segment_no"] = 5, ["name"] = "Halfie" },
        [98970] = { ["segment_no"] = 5, ["name"] = "Draygon" },
        [103545] = { ["segment_no"] = 5, ["name"] = "Whomple Jump" },
        [106528] = { ["segment_no"] = 5, ["name"] = "Plasma Spark Room" },
        [110042] = { ["segment_no"] = 5, ["name"] = "Plasma Spark Revisit" },
		-- Lower Norfair
        [114155] = { ["segment_no"] = 6, ["name"] = "Business Center Revisit" },
        [115835] = { ["segment_no"] = 6, ["name"] = "Magdollite Tunnel" },
        [117490] = { ["segment_no"] = 6, ["name"] = "LN Elevator" },
        [118468] = { ["segment_no"] = 6, ["name"] = "Fast Pillars" },
        [121340] = { ["segment_no"] = 6, ["name"] = "Kihunter Stairs" },
        [123664] = { ["segment_no"] = 6, ["name"] = "Metal Pirates" },
        [125273] = { ["segment_no"] = 6, ["name"] = "Ridley" },
        [128853] = { ["segment_no"] = 6, ["name"] = "Ridley E-tank" },
        [130374] = { ["segment_no"] = 6, ["name"] = "Wasteland Revisit" },
        [132663] = { ["segment_no"] = 6, ["name"] = "Fireflea Room" },
        [133782] = { ["segment_no"] = 6, ["name"] = "Three Musketeers" },
		-- Golden 4
        [136713] = { ["segment_no"] = 7, ["name"] = "Frog Speedway" },
        [138590] = { ["segment_no"] = 7, ["name"] = "Maridia Tube Revisit" },
        [142181] = { ["segment_no"] = 7, ["name"] = "Pre-Moat Revisit" },
        [143712] = { ["segment_no"] = 7, ["name"] = "Terminator Revisit" },
        [148131] = { ["segment_no"] = 7, ["name"] = "G4 Elevator" },
		-- Tourian
        [149030] = { ["segment_no"] = 8, ["name"] = "Metroids 1" },
        [149589] = { ["segment_no"] = 8, ["name"] = "Metroids 2" },
        [150073] = { ["segment_no"] = 8, ["name"] = "Metroids 3" },
        [150662] = { ["segment_no"] = 8, ["name"] = "Metroids 4" },
        [151795] = { ["segment_no"] = 8, ["name"] = "Baby Skip" },
        [155156] = { ["segment_no"] = 8, ["name"] = "Zeb Skip" },
        [168154] = { ["segment_no"] = 8, ["name"] = "Escape Room 3" },
        [170623] = { ["segment_no"] = 8, ["name"] = "Escape Parlor" },
    },
    ["gtclassic"] = {
		-- Crateria
		[1011] = { ["segment_no"] = 1, ["name"] = "Ceres Elevator" },
		[4790] = { ["segment_no"] = 1, ["name"] = "Ceres Last 3 Rooms" },
        [8675] = { ["segment_no"] = 1, ["name"] = "Ship" },
        [11387] = { ["segment_no"] = 1, ["name"] = "Morph" },
        [15102] = { ["segment_no"] = 1, ["name"] = "Climb" },
        [17301] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
        [20423] = { ["segment_no"] = 1, ["name"] = "Terminator" },
		-- Brinstar
        [22816] = { ["segment_no"] = 2, ["name"] = "Green Brinstar Elevator" },
        [26409] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
        [28568] = { ["segment_no"] = 2, ["name"] = "Red Tower" },
        [29295] = { ["segment_no"] = 2, ["name"] = "Hellway" },
        [30835] = { ["segment_no"] = 2, ["name"] = "Leaving Power Bombs" },
        [33275] = { ["segment_no"] = 2, ["name"] = "Breaking Tube" },
        [35469] = { ["segment_no"] = 2, ["name"] = "Baby Kraid (Entering)" },
        [36560] = { ["segment_no"] = 2, ["name"] = "Kraid" },
        [39563] = { ["segment_no"] = 2, ["name"] = "Baby Kraid (Exiting)" },
        [40917] = { ["segment_no"] = 2, ["name"] = "Kraid E-tank" },
		-- Bootless Upper Norfair
        [43226] = { ["segment_no"] = 3, ["name"] = "Business Center" },
        [44022] = { ["segment_no"] = 3, ["name"] = "Pre-Cathedral" },
        [45226] = { ["segment_no"] = 3, ["name"] = "Bubble Mountain" },
        [46133] = { ["segment_no"] = 3, ["name"] = "Magdollite Tunnel" },
        [47224] = { ["segment_no"] = 3, ["name"] = "Lava Dive" },
        [49251] = { ["segment_no"] = 3, ["name"] = "LN Main Hall" },
        [50127] = { ["segment_no"] = 3, ["name"] = "Green Gate Glitch" },
        [51290] = { ["segment_no"] = 3, ["name"] = "GT Code" },
		-- Lower Norfair
        [53167] = { ["segment_no"] = 5, ["name"] = "Leaving Golden Torizo" },
        [54099] = { ["segment_no"] = 5, ["name"] = "Green Gate Revisit" },
        [55266] = { ["segment_no"] = 5, ["name"] = "Worst Room" },
        [56718] = { ["segment_no"] = 5, ["name"] = "Kihunter Stairs" },
        [58877] = { ["segment_no"] = 5, ["name"] = "Metal Pirates" },
        [60266] = { ["segment_no"] = 5, ["name"] = "Ridley" },
        [63861] = { ["segment_no"] = 5, ["name"] = "Reverse Plowerhouse" },
        [64700] = { ["segment_no"] = 5, ["name"] = "Wasteland Revisit" },
        [66832] = { ["segment_no"] = 5, ["name"] = "Fireflea Room" },
        [67836] = { ["segment_no"] = 5, ["name"] = "Three Musketeers" },
        [69450] = { ["segment_no"] = 5, ["name"] = "Bubble Mountain Revisit" },
		-- Maridia
        [72222] = { ["segment_no"] = 6, ["name"] = "Entering Maridia" },
        [73533] = { ["segment_no"] = 6, ["name"] = "Mt Everest" },
        [75546] = { ["segment_no"] = 6, ["name"] = "Botwoon" },
        [76913] = { ["segment_no"] = 6, ["name"] = "Halfie" },
        [78524] = { ["segment_no"] = 6, ["name"] = "Draygon" },
        [81658] = { ["segment_no"] = 6, ["name"] = "Womple Jump" },
        [82623] = { ["segment_no"] = 6, ["name"] = "Reverse Botwoon" },
        [83681] = { ["segment_no"] = 6, ["name"] = "Aqueduct Revisit" },
        [85513] = { ["segment_no"] = 6, ["name"] = "Red Tower Green Gate" },
		-- Wrecked Ship
        [86986] = { ["segment_no"] = 7, ["name"] = "Pre-Moat" },
        [87927] = { ["segment_no"] = 7, ["name"] = "Ocean" },
        [90261] = { ["segment_no"] = 7, ["name"] = "Phantoon" },
        [93383] = { ["segment_no"] = 7, ["name"] = "WS Shaft" },
        [94168] = { ["segment_no"] = 7, ["name"] = "Ocean Revisit" },
        [96637] = { ["segment_no"] = 7, ["name"] = "Terminator Revisit" },
        [101187] = { ["segment_no"] = 7, ["name"] = "G4 Elevator" },
		-- Tourian
        [102194] = { ["segment_no"] = 8, ["name"] = "Metroids 1" },
        [102902] = { ["segment_no"] = 8, ["name"] = "Metroids 2" },
        [103533] = { ["segment_no"] = 8, ["name"] = "Metroids 3" },
        [104333] = { ["segment_no"] = 8, ["name"] = "Metroids 4" },
        [105135] = { ["segment_no"] = 8, ["name"] = "Baby Skip" },
        [108515] = { ["segment_no"] = 8, ["name"] = "Zeb Skip" },
        [120378] = { ["segment_no"] = 8, ["name"] = "Escape Room 3" },
        [122654] = { ["segment_no"] = 8, ["name"] = "Escape Parlor" },
    },
    ["kpdr21"] = {
		-- Crateria
		[9020] = { ["segment_no"] = 1, ["name"] = "Ship" },
        [9325] = { ["segment_no"] = 1, ["name"] = "Parlor" },
        [10010] = { ["segment_no"] = 1, ["name"] = "Parlor Downback" },
        [10128] = { ["segment_no"] = 1, ["name"] = "Climb Down" },
        [10810] = { ["segment_no"] = 1, ["name"] = "Pit Room" },
        [12222] = { ["segment_no"] = 1, ["name"] = "Morph" },
        [13131] = { ["segment_no"] = 1, ["name"] = "Construction Zone" },
        [14150] = { ["segment_no"] = 1, ["name"] = "Construction Zone Revisit" },
        [15720] = { ["segment_no"] = 1, ["name"] = "Pit Room Revisit" },
        [16378] = { ["segment_no"] = 1, ["name"] = "Climb Up" },
        [17503] = { ["segment_no"] = 1, ["name"] = "Parlor Revisit" },
        [18567] = { ["segment_no"] = 1, ["name"] = "Flyway" },
        [18999] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
        [21674] = { ["segment_no"] = 1, ["name"] = "Alcatraz" },
        [22307] = { ["segment_no"] = 1, ["name"] = "Terminator" },
        [23394] = { ["segment_no"] = 1, ["name"] = "Green Pirate Shaft" },
		-- Brinstar
        [24710] = { ["segment_no"] = 2, ["name"] = "Green Brinstar Elevator" },
        [25780] = { ["segment_no"] = 2, ["name"] = "Early Supers" },
        [27320] = { ["segment_no"] = 2, ["name"] = "Dachora Room" },
        [28455] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
        [30606] = { ["segment_no"] = 2, ["name"] = "Green Hill Zone" },
        [31577] = { ["segment_no"] = 2, ["name"] = "Noob Bridge" },
        [32439] = { ["segment_no"] = 2, ["name"] = "Red Tower" },
        [33135] = { ["segment_no"] = 2, ["name"] = "Skree Boost" },
        [33538] = { ["segment_no"] = 2, ["name"] = "Below Spazer" },
        [34537] = { ["segment_no"] = 2, ["name"] = "Entering Kraids Lair" },
        [35553] = { ["segment_no"] = 2, ["name"] = "Kraid Kihunters" },
        [36150] = { ["segment_no"] = 2, ["name"] = "Mini Kraid" },
        [37228] = { ["segment_no"] = 2, ["name"] = "Kraid" },
        [39575] = { ["segment_no"] = 2, ["name"] = "Leaving Varia" },
        [40316] = { ["segment_no"] = 2, ["name"] = "Mini Kraid Revisit" },
        [40970] = { ["segment_no"] = 2, ["name"] = "Kraid Kihunters Revisit" },
        [41853] = { ["segment_no"] = 2, ["name"] = "Kraid E-tank" },
		-- Upper Norfair
        [43260] = { ["segment_no"] = 3, ["name"] = "Business Center" },
        [43564] = { ["segment_no"] = 3, ["name"] = "Hi Jump E-tank" },
        [45457] = { ["segment_no"] = 3, ["name"] = "Leaving Hi Jump" },
        [46407] = { ["segment_no"] = 3, ["name"] = "Business Center 2" },
        [46833] = { ["segment_no"] = 3, ["name"] = "Pre-Cathedral" },
        [47420] = { ["segment_no"] = 3, ["name"] = "Cathedral" },
        [48038] = { ["segment_no"] = 3, ["name"] = "Rising Tide" },
        [48696] = { ["segment_no"] = 3, ["name"] = "Bubble Mountain" },
        [49461] = { ["segment_no"] = 3, ["name"] = "Bat Cave" },
        [53000] = { ["segment_no"] = 3, ["name"] = "Single Chamber" },
        [53457] = { ["segment_no"] = 3, ["name"] = "Double Chamber" },
        [55337] = { ["segment_no"] = 3, ["name"] = "Double Chamber Revisit" },
        [55890] = { ["segment_no"] = 3, ["name"] = "Single Chamber Revisit" },
        [56500] = { ["segment_no"] = 3, ["name"] = "Bubble Mountain Revisit" },
        [57704] = { ["segment_no"] = 3, ["name"] = "Frog Speedway" },
        [58333] = { ["segment_no"] = 3, ["name"] = "Business Center 3" },
		-- Red Brinstar
        [59609] = { ["segment_no"] = 4, ["name"] = "Alpha Spark" },
        [60617] = { ["segment_no"] = 4, ["name"] = "Reverse Skree Boost" },
        [61103] = { ["segment_no"] = 4, ["name"] = "Red Tower Climb" },
        [62262] = { ["segment_no"] = 4, ["name"] = "Hellway" },
        [62708] = { ["segment_no"] = 4, ["name"] = "Caterpillars Down" },
        [63147] = { ["segment_no"] = 4, ["name"] = "Alpha Power Bombs" },
        [64046] = { ["segment_no"] = 4, ["name"] = "Caterpillars Up" },
		-- Wrecked Ship
        [65855] = { ["segment_no"] = 5, ["name"] = "Crateria Kihunters" },
        [66641] = { ["segment_no"] = 5, ["name"] = "Oceanfly Setup" },
        [67190] = { ["segment_no"] = 5, ["name"] = "Ocean Spark" },
        [67835] = { ["segment_no"] = 5, ["name"] = "Entering Wrecked Ship" },
        [69190] = { ["segment_no"] = 5, ["name"] = "Basement" },
        [69815] = { ["segment_no"] = 5, ["name"] = "Phantoon" },
        [74516] = { ["segment_no"] = 5, ["name"] = "Leaving Phantoon" },
        [74868] = { ["segment_no"] = 5, ["name"] = "Shaft to Supers" },
        [76199] = { ["segment_no"] = 5, ["name"] = "Wrecked Ship Shaft" },
        [77195] = { ["segment_no"] = 5, ["name"] = "Attic" },
        [78123] = { ["segment_no"] = 5, ["name"] = "Upper West Ocean" },
        [79150] = { ["segment_no"] = 5, ["name"] = "Pancakes and Wavers" },
        [79586] = { ["segment_no"] = 5, ["name"] = "Bowling Spark" },
        [83100] = { ["segment_no"] = 5, ["name"] = "Leaving Gravity" },
        [83760] = { ["segment_no"] = 5, ["name"] = "Moat Ball" },
        [84115] = { ["segment_no"] = 5, ["name"] = "Crateria Kihunters Return" },
		-- Red Brinstar Final
        [85770] = { ["segment_no"] = 6, ["name"] = "Red Tower Elevator" },
        [86034] = { ["segment_no"] = 6, ["name"] = "Hellway Revisit" },
        [86422] = { ["segment_no"] = 6, ["name"] = "Red Tower Down" },
        [87364] = { ["segment_no"] = 6, ["name"] = "Skree Boost Final" },
        [88012] = { ["segment_no"] = 6, ["name"] = "Below Spazer Final" },
		-- Maridia
        [88645] = { ["segment_no"] = 7, ["name"] = "Breaking Tube" },
        [89627] = { ["segment_no"] = 7, ["name"] = "Fish Tank" },
        [90336] = { ["segment_no"] = 7, ["name"] = "Mt Everest" },
        [90670] = { ["segment_no"] = 7, ["name"] = "Crab Shaft" },
        [91144] = { ["segment_no"] = 7, ["name"] = "Aqueduct" },
        [91943] = { ["segment_no"] = 7, ["name"] = "Botwoon Hallway" },
        [92521] = { ["segment_no"] = 7, ["name"] = "Botwoon" },
        [93758] = { ["segment_no"] = 7, ["name"] = "Botwoon E-tank" },
        [94790] = { ["segment_no"] = 7, ["name"] = "Halfie Setup" },
        [96324] = { ["segment_no"] = 7, ["name"] = "Draygon" },
        [101027] = { ["segment_no"] = 7, ["name"] = "Reverse Halfie (Spikesuit)" },
        [101030] = { ["segment_no"] = 7, ["name"] = "Womple Jump" },
        [101836] = { ["segment_no"] = 7, ["name"] = "Cac Alley East" },
        [102588] = { ["segment_no"] = 7, ["name"] = "Cac Alley West" },
        [103281] = { ["segment_no"] = 7, ["name"] = "Plasma Spark" },
        [104082] = { ["segment_no"] = 7, ["name"] = "Plasma Climb" },
        [104884] = { ["segment_no"] = 7, ["name"] = "Plasma Beam" },
        [106921] = { ["segment_no"] = 7, ["name"] = "Plasma Spark Revisit" },
        [107657] = { ["segment_no"] = 7, ["name"] = "Toilet" },
        [108555] = { ["segment_no"] = 7, ["name"] = "Sewers" },
        [109786] = { ["segment_no"] = 7, ["name"] = "Lower Maridia Gate" },
		-- Upper Norfair Revisit
        [111567] = { ["segment_no"] = 8, ["name"] = "Ice Beam Gates" },
        [112213] = { ["segment_no"] = 8, ["name"] = "Ice Maze Up" },
        [113300] = { ["segment_no"] = 8, ["name"] = "Ice Maze Down" },
        [113760] = { ["segment_no"] = 8, ["name"] = "Ice Escape" },
        [115932] = { ["segment_no"] = 8, ["name"] = "Purple Shaft (Upper)" },
        [116343] = { ["segment_no"] = 8, ["name"] = "Magdollite Tunnel (Upper)" },
        [116802] = { ["segment_no"] = 8, ["name"] = "Kronic Boost (Upper)" },
		-- Lower Norfair
        [118855] = { ["segment_no"] = 9, ["name"] = "LN Main Hall" },
        [119091] = { ["segment_no"] = 9, ["name"] = "Pre-Pillars" },
        [119714] = { ["segment_no"] = 9, ["name"] = "Fast Pillars Setup" },
        [120232] = { ["segment_no"] = 9, ["name"] = "Worst Room in the Game" },
        [121234] = { ["segment_no"] = 9, ["name"] = "Amphitheatre" },
        [122102] = { ["segment_no"] = 9, ["name"] = "Kihunter Stairs Down" },
        [123313] = { ["segment_no"] = 9, ["name"] = "Wasteland" },
        [124547] = { ["segment_no"] = 9, ["name"] = "Metal Ninja Pirates" },
        [125365] = { ["segment_no"] = 9, ["name"] = "Plowerhouse" },
        [126182] = { ["segment_no"] = 9, ["name"] = "Ridley" },
        [129451] = { ["segment_no"] = 9, ["name"] = "Leaving Ridley" },
        [130163] = { ["segment_no"] = 9, ["name"] = "Reverse Plowerhouse" },
        [131100] = { ["segment_no"] = 9, ["name"] = "Wasteland Revisit" },
        [132249] = { ["segment_no"] = 9, ["name"] = "Kihunter Stairs Up" },
        [133559] = { ["segment_no"] = 9, ["name"] = "Fire Flea Room" },
        [134226] = { ["segment_no"] = 9, ["name"] = "Springball Maze" },
        [134672] = { ["segment_no"] = 9, ["name"] = "Three Musketeers" },
        [135492] = { ["segment_no"] = 9, ["name"] = "Single Chamber Final" },
        [136470] = { ["segment_no"] = 9, ["name"] = "Bubble Mountain Final" },
        [138050] = { ["segment_no"] = 9, ["name"] = "Business Center Final" },
		-- Backtracking
        [139306] = { ["segment_no"] = 10, ["name"] = "Maridia Tube Revisit" },
        [140204] = { ["segment_no"] = 10, ["name"] = "Fish Tank Revisit" },
        [140657] = { ["segment_no"] = 10, ["name"] = "Mt Everest Revisit" },
        [141687] = { ["segment_no"] = 10, ["name"] = "Red Brinstar Green Gate" },
        [143067] = { ["segment_no"] = 10, ["name"] = "Crateria Kihunters Final" },
        [144007] = { ["segment_no"] = 10, ["name"] = "Parlor Spacejump" },
        [144610] = { ["segment_no"] = 10, ["name"] = "Terminator Revisit" },
        [145056] = { ["segment_no"] = 10, ["name"] = "Green Pirate Shaft Revisit" },
		-- Tourian
        [149867] = { ["segment_no"] = 11, ["name"] = "Metroids 1" },
        [151055] = { ["segment_no"] = 11, ["name"] = "Metroids 2" },
        [151690] = { ["segment_no"] = 11, ["name"] = "Metroids 3" },
        [152285] = { ["segment_no"] = 11, ["name"] = "Metroids 4" },
        [153004] = { ["segment_no"] = 11, ["name"] = "Giant Hoppers" },
        [153615] = { ["segment_no"] = 11, ["name"] = "Baby Skip" },
        [155783] = { ["segment_no"] = 11, ["name"] = "Gedora Room" },
        [156672] = { ["segment_no"] = 11, ["name"] = "Zeb Skip" },
        [169844] = { ["segment_no"] = 11, ["name"] = "Escape Room 3" },
        [171611] = { ["segment_no"] = 11, ["name"] = "Climb Spark" },
        [172176] = { ["segment_no"] = 11, ["name"] = "Escape Parlor" },
    },
    ["14ice"] = {
		-- Crateria
        [1020] = { ["segment_no"] = 1, ["name"] = "Ceres Elevator" },
        [4804] = { ["segment_no"] = 1, ["name"] = "Ceres Last 3 Rooms" },
        [8691] = { ["segment_no"] = 1, ["name"] = "Ship" },
        [11398] = { ["segment_no"] = 1, ["name"] = "Morph" },
        [15133] = { ["segment_no"] = 1, ["name"] = "Climb" },
        [17304] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
        [20426] = { ["segment_no"] = 1, ["name"] = "Terminator" },
		-- Brinstar
        [22824] = { ["segment_no"] = 2, ["name"] = "Green Brinstar Elevator" },
        [26416] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
        [29625] = { ["segment_no"] = 2, ["name"] = "Red Tower" },
        [30420] = { ["segment_no"] = 2, ["name"] = "Hellway" },
        [30899] = { ["segment_no"] = 2, ["name"] = "Caterpillar Room" },
        [32048] = { ["segment_no"] = 2, ["name"] = "Leaving Power Bombs" },
        [34062] = { ["segment_no"] = 2, ["name"] = "Kihunter Room" },
        [34842] = { ["segment_no"] = 2, ["name"] = "Moat" },
        [35609] = { ["segment_no"] = 2, ["name"] = "Ocean" },
		-- Wrecked Ship
        [36907] = { ["segment_no"] = 3, ["name"] = "Wrecked Ship Shaft" },
        [38523] = { ["segment_no"] = 3, ["name"] = "Phantoon" },
        [42982] = { ["segment_no"] = 3, ["name"] = "Wrecked Ship Supers" },
        [44350] = { ["segment_no"] = 3, ["name"] = "Shaft Revisit" },
        [45590] = { ["segment_no"] = 3, ["name"] = "Attic" },
        [47669] = { ["segment_no"] = 3, ["name"] = "Bowling Alley Path" },
        [48218] = { ["segment_no"] = 3, ["name"] = "Bowling Alley" },
        [51600] = { ["segment_no"] = 3, ["name"] = "Leaving Gravity" },
		-- Brinstar Revisit
        [54269] = { ["segment_no"] = 4, ["name"] = "Red Tower Elevator" },
        [56851] = { ["segment_no"] = 4, ["name"] = "Breaking Tube" },
        [57550] = { ["segment_no"] = 4, ["name"] = "Entering Kraids Lair" },
        [58897] = { ["segment_no"] = 4, ["name"] = "Baby Kraid (Entering)" },
        [59908] = { ["segment_no"] = 4, ["name"] = "Kraid" },
        [62995] = { ["segment_no"] = 4, ["name"] = "Baby Kraid (Exiting)" },
        [64557] = { ["segment_no"] = 4, ["name"] = "Kraid E-tank" },
		-- Upper Norfair
        [66800] = { ["segment_no"] = 5, ["name"] = "Ice Beam" },
        [69270] = { ["segment_no"] = 5, ["name"] = "Ice Escape" },
        [70310] = { ["segment_no"] = 5, ["name"] = "Pre-Cathedral" },
        [71563] = { ["segment_no"] = 5, ["name"] = "Bubble Mountain" },
        [73075] = { ["segment_no"] = 5, ["name"] = "Magdollite Room" },
        [73593] = { ["segment_no"] = 5, ["name"] = "Kronic Boost" },
		-- Lower Norfair
        [76217] = { ["segment_no"] = 6, ["name"] = "LN Main Hall" },
        [77055] = { ["segment_no"] = 6, ["name"] = "Pillars" },
        [78021] = { ["segment_no"] = 6, ["name"] = "Worst Room" },
        [79908] = { ["segment_no"] = 6, ["name"] = "Amphitheatre" },
        [81144] = { ["segment_no"] = 6, ["name"] = "Kihunter Stairs" },
        [82588] = { ["segment_no"] = 6, ["name"] = "Wasteland" },
        [84042] = { ["segment_no"] = 6, ["name"] = "Metal Pirates" },
        [88973] = { ["segment_no"] = 6, ["name"] = "Ridley" },
        [109660] = { ["segment_no"] = 6, ["name"] = "Leaving Ridley" },
        [111650] = { ["segment_no"] = 6, ["name"] = "Wasteland Revisit" },
        [113044] = { ["segment_no"] = 6, ["name"] = "Kihunter Stairs Revisit" },
        [114467] = { ["segment_no"] = 6, ["name"] = "Fireflea Room" },
        [115732] = { ["segment_no"] = 6, ["name"] = "Three Musketeers" },
        [118232] = { ["segment_no"] = 6, ["name"] = "Bubble Mountain Revisit" },
		-- Maridia
        [124469] = { ["segment_no"] = 7, ["name"] = "Entering Maridia" },
        [126147] = { ["segment_no"] = 7, ["name"] = "Mt Everest" },
        [129067] = { ["segment_no"] = 7, ["name"] = "Ice Clip" },
        [130185] = { ["segment_no"] = 7, ["name"] = "Botwoon" },
        [131695] = { ["segment_no"] = 7, ["name"] = "Botwoon E-tank Room" },
        [135121] = { ["segment_no"] = 7, ["name"] = "Colosseum" },
        [136900] = { ["segment_no"] = 7, ["name"] = "Draygon" },
        [149209] = { ["segment_no"] = 7, ["name"] = "Colosseum Revisit" },
        [151050] = { ["segment_no"] = 7, ["name"] = "Reverse Botwoon" },
        [152672] = { ["segment_no"] = 7, ["name"] = "Aqueduct Revisit" },
        [154044] = { ["segment_no"] = 7, ["name"] = "Everest Revisit" },
        [157180] = { ["segment_no"] = 7, ["name"] = "Red Tower Green Gate" },
		-- Tourian
        [158646] = { ["segment_no"] = 8, ["name"] = "Kihunter Room Revisit" },
        [160769] = { ["segment_no"] = 8, ["name"] = "Terminator Revisit" },
        [161498] = { ["segment_no"] = 8, ["name"] = "Pirate Shaft Revisit" },
        [166683] = { ["segment_no"] = 8, ["name"] = "Metroids 1" },
        [167583] = { ["segment_no"] = 8, ["name"] = "Metroids 2" },
        [168145] = { ["segment_no"] = 8, ["name"] = "Metroids 3" },
        [169241] = { ["segment_no"] = 8, ["name"] = "Metroids 4" },
        [170002] = { ["segment_no"] = 8, ["name"] = "Baby" },
        [177624] = { ["segment_no"] = 8, ["name"] = "Zeb Skip" },
        [205325] = { ["segment_no"] = 8, ["name"] = "Escape Room 3" },
        [209282] = { ["segment_no"] = 8, ["name"] = "Escape Parlor" },
    },
    ["14speed"] = {
		-- Crateria
        [1020] = { ["segment_no"] = 1, ["name"] = "Ceres Elevator" },
        [4804] = { ["segment_no"] = 1, ["name"] = "Ceres Last 3 Rooms" },
        [8691] = { ["segment_no"] = 1, ["name"] = "Ship" },
        [11398] = { ["segment_no"] = 1, ["name"] = "Morph" },
        [15133] = { ["segment_no"] = 1, ["name"] = "Climb" },
        [17304] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
        [20426] = { ["segment_no"] = 1, ["name"] = "Terminator" },
		-- Brinstar
        [22824] = { ["segment_no"] = 2, ["name"] = "Green Brinstar Elevator" },
        [26416] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
        [29625] = { ["segment_no"] = 2, ["name"] = "Red Tower" },
        [30420] = { ["segment_no"] = 2, ["name"] = "Hellway" },
        [30899] = { ["segment_no"] = 2, ["name"] = "Caterpillar Room" },
        [32048] = { ["segment_no"] = 2, ["name"] = "Leaving Power Bombs" },
        [34062] = { ["segment_no"] = 2, ["name"] = "Kihunter Room" },
        [34842] = { ["segment_no"] = 2, ["name"] = "Moat" },
        [35609] = { ["segment_no"] = 2, ["name"] = "Ocean" },
		-- Wrecked Ship
        [36907] = { ["segment_no"] = 3, ["name"] = "Wrecked Ship Shaft" },
        [38523] = { ["segment_no"] = 3, ["name"] = "Phantoon" },
        [42982] = { ["segment_no"] = 3, ["name"] = "Wrecked Ship Supers" },
        [44350] = { ["segment_no"] = 3, ["name"] = "Shaft Revisit" },
        [45590] = { ["segment_no"] = 3, ["name"] = "Attic" },
        [47669] = { ["segment_no"] = 3, ["name"] = "Bowling Alley Path" },
        [48218] = { ["segment_no"] = 3, ["name"] = "Bowling Alley" },
        [51600] = { ["segment_no"] = 3, ["name"] = "Leaving Gravity" },
		-- Brinstar Revisit
        [54269] = { ["segment_no"] = 4, ["name"] = "Red Tower Elevator" },
        [56851] = { ["segment_no"] = 4, ["name"] = "Breaking Tube" },
        [57550] = { ["segment_no"] = 4, ["name"] = "Entering Kraids Lair" },
        [58897] = { ["segment_no"] = 4, ["name"] = "Baby Kraid (Entering)" },
        [59908] = { ["segment_no"] = 4, ["name"] = "Kraid" },
        [62995] = { ["segment_no"] = 4, ["name"] = "Baby Kraid (Exiting)" },
        [64557] = { ["segment_no"] = 4, ["name"] = "Kraid E-tank" },
		-- Upper Norfair
        [66800] = { ["segment_no"] = 5, ["name"] = "Pre-Cathedral" },
        [69000] = { ["segment_no"] = 5, ["name"] = "Bubble Mountain" },
        [73600] = { ["segment_no"] = 5, ["name"] = "Bubble Mountain Revisit" },
        [74685] = { ["segment_no"] = 5, ["name"] = "Magdollite Room" },
        [76085] = { ["segment_no"] = 5, ["name"] = "Lava Spark" },
		-- Lower Norfair
        [77830] = { ["segment_no"] = 6, ["name"] = "LN Main Hall" },
        [78715] = { ["segment_no"] = 6, ["name"] = "Pillars" },
        [79220] = { ["segment_no"] = 6, ["name"] = "Worst Room" },
        [82310] = { ["segment_no"] = 6, ["name"] = "Amphitheatre" },
        [83825] = { ["segment_no"] = 6, ["name"] = "Kihunter Stairs" },
        [85135] = { ["segment_no"] = 6, ["name"] = "Wasteland" },
        [86360] = { ["segment_no"] = 6, ["name"] = "Metal Pirates" },
        [87878] = { ["segment_no"] = 6, ["name"] = "Ridley Farming Room" },
        [90375] = { ["segment_no"] = 6, ["name"] = "Ridley" },
        [114930] = { ["segment_no"] = 6, ["name"] = "Leaving Ridley" },
        [116915] = { ["segment_no"] = 6, ["name"] = "Wasteland Revisit" },
        [118504] = { ["segment_no"] = 6, ["name"] = "Kihunter Stairs Revisit" },
        [120050] = { ["segment_no"] = 6, ["name"] = "Fireflea Room" },
        [121444] = { ["segment_no"] = 6, ["name"] = "Three Musketeers" },
        [124442] = { ["segment_no"] = 6, ["name"] = "Bubble Mountain Revisit" },
		-- Maridia
        [128535] = { ["segment_no"] = 7, ["name"] = "Entering Maridia" },
        [130276] = { ["segment_no"] = 7, ["name"] = "Mt Everest" },
        [131315] = { ["segment_no"] = 7, ["name"] = "Aqueduct" },
        [132885] = { ["segment_no"] = 7, ["name"] = "Botwoon" },
        [134648] = { ["segment_no"] = 7, ["name"] = "Botwoon E-tank Room" },
        [136291] = { ["segment_no"] = 7, ["name"] = "Colosseum" },
        [138325] = { ["segment_no"] = 7, ["name"] = "Draygon" },
        [143586] = { ["segment_no"] = 7, ["name"] = "Colosseum Revisit" },
        [144674] = { ["segment_no"] = 7, ["name"] = "Reverse Botwoon" },
        [146235] = { ["segment_no"] = 7, ["name"] = "Aqueduct Revisit" },
        [147473] = { ["segment_no"] = 7, ["name"] = "Everest Revisit" },
        [149644] = { ["segment_no"] = 7, ["name"] = "Red Tower Green Gate" },
		-- Tourian
        [151139] = { ["segment_no"] = 8, ["name"] = "Kihunter Room Revisit" },
        [152980] = { ["segment_no"] = 8, ["name"] = "Terminator Revisit" },
        [153889] = { ["segment_no"] = 8, ["name"] = "Pirate Shaft Revisit" },
        [159000] = { ["segment_no"] = 8, ["name"] = "Metroids 1" },
        [168485] = { ["segment_no"] = 8, ["name"] = "Metroids 2" },
        [169499] = { ["segment_no"] = 8, ["name"] = "Metroids 3" },
        [179835] = { ["segment_no"] = 8, ["name"] = "Metroids 4" },
        [184275] = { ["segment_no"] = 8, ["name"] = "Doors and Refills" },
        [188758] = { ["segment_no"] = 8, ["name"] = "Zeb Skip" },
        [223868] = { ["segment_no"] = 8, ["name"] = "Escape Room 3" },
        [226907] = { ["segment_no"] = 8, ["name"] = "Escape Parlor" },
    },
    ["allbosskpdr"] = {
		-- Crateria
		[983] = { ["segment_no"] = 1, ["name"] = "Ceres Elevator" },
		[4777] = { ["segment_no"] = 1, ["name"] = "Ceres Last 3 Rooms" },
		[8664] = { ["segment_no"] = 1, ["name"] = "Ship" },
        [10274] = { ["segment_no"] = 1, ["name"] = "Pit Room" },
        [11628] = { ["segment_no"] = 1, ["name"] = "Morph" },
        [14941] = { ["segment_no"] = 1, ["name"] = "Pit Room Revisit" },
        [15511] = { ["segment_no"] = 1, ["name"] = "Climb" },
        [16504] = { ["segment_no"] = 1, ["name"] = "Parlor" },
        [17800] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
        [21029] = { ["segment_no"] = 1, ["name"] = "Terminator" },
		-- Brinstar
        [23446] = { ["segment_no"] = 2, ["name"] = "Green Brinstar Elevator" },
        [25973] = { ["segment_no"] = 2, ["name"] = "Dachora Room" },
        [27014] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
        [30486] = { ["segment_no"] = 2, ["name"] = "Red Tower" },
        [32485] = { ["segment_no"] = 2, ["name"] = "Entering Kraids Lair" },
        [33900] = { ["segment_no"] = 2, ["name"] = "Baby Kraid (Entering)" },
        [34925] = { ["segment_no"] = 2, ["name"] = "Kraid" },
        [37893] = { ["segment_no"] = 2, ["name"] = "Baby Kraid (Exiting)" },
		-- Upper Norfair
        [40530] = { ["segment_no"] = 3, ["name"] = "Business Center" },
        [40821] = { ["segment_no"] = 3, ["name"] = "Hi Jump E-tank" },
        [42464] = { ["segment_no"] = 3, ["name"] = "Leaving Hi Jump" },
        [43915] = { ["segment_no"] = 3, ["name"] = "Pre-Cathedral" },
        [45719] = { ["segment_no"] = 3, ["name"] = "Bubble Mountain" },
        [49555] = { ["segment_no"] = 3, ["name"] = "Single Chamber" },
        [51614] = { ["segment_no"] = 3, ["name"] = "Double Chamber Revisit" },
        [52597] = { ["segment_no"] = 3, ["name"] = "Bubble Mountain Revisit" },
        [54360] = { ["segment_no"] = 3, ["name"] = "Business Center Revisit" },
		-- Wrecked Ship
        [55598] = { ["segment_no"] = 4, ["name"] = "Alpha Spark" },
        [56984] = { ["segment_no"] = 4, ["name"] = "Red Tower" },
        [58105] = { ["segment_no"] = 4, ["name"] = "Hellway" },
        [59641] = { ["segment_no"] = 4, ["name"] = "Leaving Power Bombs" },
        [61605] = { ["segment_no"] = 4, ["name"] = "Crateria Elevator" },
        [63253] = { ["segment_no"] = 4, ["name"] = "Entering Wrecked Ship" },
        [64929] = { ["segment_no"] = 4, ["name"] = "Phantoon" },
        [68405] = { ["segment_no"] = 4, ["name"] = "Leaving Phantoon" },
        [70237] = { ["segment_no"] = 4, ["name"] = "Wrecked Ship Shaft" },
        [71222] = { ["segment_no"] = 4, ["name"] = "Attic" },
        [72912] = { ["segment_no"] = 4, ["name"] = "Bowling Spark" },
        [76760] = { ["segment_no"] = 4, ["name"] = "Leaving Gravity" },
		-- Maridia
        [79242] = { ["segment_no"] = 5, ["name"] = "Red Tower Elevator" },
        [81408] = { ["segment_no"] = 5, ["name"] = "Breaking Tube" },
        [83071] = { ["segment_no"] = 5, ["name"] = "Mt Everest" },
        [85267] = { ["segment_no"] = 5, ["name"] = "Botwoon" },
        [87428] = { ["segment_no"] = 5, ["name"] = "Halfie" },
        [88972] = { ["segment_no"] = 5, ["name"] = "Draygon" },
        [93550] = { ["segment_no"] = 5, ["name"] = "Womple Jump" },
        [94365] = { ["segment_no"] = 5, ["name"] = "Cac Alley" },
        [95710] = { ["segment_no"] = 5, ["name"] = "Plasma Spark" },
        [97155] = { ["segment_no"] = 5, ["name"] = "Plasma Beam" },
        [99116] = { ["segment_no"] = 5, ["name"] = "Plasma Spark Revisit" },
        [100390] = { ["segment_no"] = 5, ["name"] = "Sewers" },
		-- Upper Norfair Revisit
        [103371] = { ["segment_no"] = 6, ["name"] = "Ice Beam Hallway" },
        [103973] = { ["segment_no"] = 6, ["name"] = "Ice Maze" },
        [105610] = { ["segment_no"] = 6, ["name"] = "Ice Escape" },
        [107800] = { ["segment_no"] = 6, ["name"] = "Crocomire Speedway" },
        [108560] = { ["segment_no"] = 6, ["name"] = "Crocomire" },
        [113147] = { ["segment_no"] = 6, ["name"] = "Leaving Crocomire" },
        [114130] = { ["segment_no"] = 6, ["name"] = "Kronic Boost" },
		-- Lower Norfair
        [116215] = { ["segment_no"] = 7, ["name"] = "LN Main Hall" },
        [117110] = { ["segment_no"] = 7, ["name"] = "Green Gate Glitch" },
        [118090] = { ["segment_no"] = 7, ["name"] = "Golden Torizo" },
        [120020] = { ["segment_no"] = 7, ["name"] = "Screw Attack Escape" },
        [122161] = { ["segment_no"] = 7, ["name"] = "Worst Room in the Game" },
        [123634] = { ["segment_no"] = 7, ["name"] = "Kihunter Stairs" },
        [126135] = { ["segment_no"] = 7, ["name"] = "Metal Pirates" },
        [128149] = { ["segment_no"] = 7, ["name"] = "Ridley" },
        [131720] = { ["segment_no"] = 7, ["name"] = "Leaving Ridley" },
        [133128] = { ["segment_no"] = 7, ["name"] = "Wasteland Revisit" },
        [136088] = { ["segment_no"] = 7, ["name"] = "Fire Flea Room" },
        [137285] = { ["segment_no"] = 7, ["name"] = "Three Musketeers" },
        [139256] = { ["segment_no"] = 7, ["name"] = "Bubble Mountain ReRevisit" },
		-- Spore Spawn
        [142276] = { ["segment_no"] = 8, ["name"] = "Maridia Passthrough" },
        [143672] = { ["segment_no"] = 8, ["name"] = "Red Tower" },
        [144450] = { ["segment_no"] = 8, ["name"] = "Lower Green Brinstar" },
        [145931] = { ["segment_no"] = 8, ["name"] = "Big Pink Up" },
        [148132] = { ["segment_no"] = 8, ["name"] = "Spore Spawn" },
        [150243] = { ["segment_no"] = 8, ["name"] = "Big Pink Down" },
        [151011] = { ["segment_no"] = 8, ["name"] = "Dachora Room Revisit" },
        [153011] = { ["segment_no"] = 8, ["name"] = "Crateria" },
		-- Tourian
        [158215] = { ["segment_no"] = 9, ["name"] = "Metroids 1" },
        [158880] = { ["segment_no"] = 9, ["name"] = "Metroids 2" },
        [159489] = { ["segment_no"] = 9, ["name"] = "Metroids 3" },
        [160837] = { ["segment_no"] = 9, ["name"] = "Metroids 4" },
        [161657] = { ["segment_no"] = 9, ["name"] = "Baby Skip" },
        [164874] = { ["segment_no"] = 9, ["name"] = "Zeb Skip" },
        [178197] = { ["segment_no"] = 9, ["name"] = "Escape Room 3" },
        [180624] = { ["segment_no"] = 9, ["name"] = "Escape Parlor" },
    },
    ["allbosspkdr"] = {
		-- Crateria
		[983] = { ["segment_no"] = 1, ["name"] = "Ceres Elevator" },
		[4777] = { ["segment_no"] = 1, ["name"] = "Ceres Last 3 Rooms" },
		[8664] = { ["segment_no"] = 1, ["name"] = "Ship" },
        [10274] = { ["segment_no"] = 1, ["name"] = "Pit Room" },
        [11628] = { ["segment_no"] = 1, ["name"] = "Morph" },
        [14941] = { ["segment_no"] = 1, ["name"] = "Pit Room Revisit" },
        [15511] = { ["segment_no"] = 1, ["name"] = "Climb" },
        [16504] = { ["segment_no"] = 1, ["name"] = "Parlor" },
        [17800] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
        [21029] = { ["segment_no"] = 1, ["name"] = "Terminator" },
        [22222] = { ["segment_no"] = 1, ["name"] = "Green Pirate Shaft" },
		-- Brinstar
        [23566] = { ["segment_no"] = 2, ["name"] = "Green Brinstar Elevator" },
        [26293] = { ["segment_no"] = 2, ["name"] = "Dachora Room" },
        [27410] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
        [30943] = { ["segment_no"] = 2, ["name"] = "Red Tower" },
        [31729] = { ["segment_no"] = 2, ["name"] = "Hellway" },
        [33444] = { ["segment_no"] = 2, ["name"] = "Leaving Power Bombs" },
        [35355] = { ["segment_no"] = 2, ["name"] = "Crateria Elevator" },
        [36144] = { ["segment_no"] = 2, ["name"] = "Moat" },
        [36931] = { ["segment_no"] = 2, ["name"] = "Ocean" },
		-- Wrecked Ship
        [37814] = { ["segment_no"] = 3, ["name"] = "Entering Wrecked Ship" },
        [39821] = { ["segment_no"] = 3, ["name"] = "Phantoon" },
        [44232] = { ["segment_no"] = 3, ["name"] = "Leaving Phantoon" },
        [46106] = { ["segment_no"] = 3, ["name"] = "Wrecked Ship Shaft" },
        [47417] = { ["segment_no"] = 3, ["name"] = "Attic" },
        [50126] = { ["segment_no"] = 3, ["name"] = "Bowling Spark" },
        [53627] = { ["segment_no"] = 3, ["name"] = "Leaving Gravity" },
        [56437] = { ["segment_no"] = 3, ["name"] = "Red Tower Elevator" },
        [57154] = { ["segment_no"] = 3, ["name"] = "Red Tower Descent" },
        [59140] = { ["segment_no"] = 3, ["name"] = "Breaking Tube" },
		-- Upper Norfair
        [60863] = { ["segment_no"] = 4, ["name"] = "Business Center" },
        [61214] = { ["segment_no"] = 4, ["name"] = "Hi Jump E-tank" },
        [63638] = { ["segment_no"] = 4, ["name"] = "Leaving Hi Jump" },
        [64066] = { ["segment_no"] = 4, ["name"] = "Pre-Cathedral" },
        [65825] = { ["segment_no"] = 4, ["name"] = "Bubble Mountain" },
        [70142] = { ["segment_no"] = 4, ["name"] = "Single Chamber" },
        [72321] = { ["segment_no"] = 4, ["name"] = "Double Chamber Revisit" },
        [73286] = { ["segment_no"] = 4, ["name"] = "Bubble Mountain Revisit" },
        [74986] = { ["segment_no"] = 4, ["name"] = "Business Center Revisit" },
		-- Kraids Lair
        [76267] = { ["segment_no"] = 5, ["name"] = "Entering Kraids Lair" },
        [77477] = { ["segment_no"] = 5, ["name"] = "Baby Kraid (Entering)" },
        [78565] = { ["segment_no"] = 5, ["name"] = "Kraid" },
        [81688] = { ["segment_no"] = 5, ["name"] = "Baby Kraid (Entering)" },
        [83726] = { ["segment_no"] = 5, ["name"] = "Leaving Kraids Lair" },
		-- Maridia
        [85870] = { ["segment_no"] = 6, ["name"] = "Mt Everest" },
        [88081] = { ["segment_no"] = 6, ["name"] = "Botwoon" },
        [91558] = { ["segment_no"] = 6, ["name"] = "Halfie" },
        [93404] = { ["segment_no"] = 6, ["name"] = "Draygon" },
        [98180] = { ["segment_no"] = 6, ["name"] = "Womple Jump" },
        [99035] = { ["segment_no"] = 6, ["name"] = "Cac Alley" },
        [100584] = { ["segment_no"] = 6, ["name"] = "Plasma Spark" },
        [102127] = { ["segment_no"] = 6, ["name"] = "Plasma Beam" },
        [104286] = { ["segment_no"] = 6, ["name"] = "Plasma Spark Revisit" },
        [105528] = { ["segment_no"] = 6, ["name"] = "Sewers" },
		-- Upper Norfair Revisit
        [108363] = { ["segment_no"] = 7, ["name"] = "Ice Beam Hallway" },
        [109176] = { ["segment_no"] = 7, ["name"] = "Ice Maze" },
        [110890] = { ["segment_no"] = 7, ["name"] = "Ice Escape" },
        [112320] = { ["segment_no"] = 7, ["name"] = "Crocomire Speedway" },
        [113084] = { ["segment_no"] = 7, ["name"] = "Crocomire" },
        [118541] = { ["segment_no"] = 7, ["name"] = "Leaving Crocomire" },
        [119666] = { ["segment_no"] = 7, ["name"] = "Kronic Boost" },
		-- Lower Norfair
        [121798] = { ["segment_no"] = 8, ["name"] = "LN Main Hall" },
        [122523] = { ["segment_no"] = 8, ["name"] = "Green Gate Glitch" },
        [123555] = { ["segment_no"] = 8, ["name"] = "Golden Torizo" },
        [125378] = { ["segment_no"] = 8, ["name"] = "Screw Attack Escape" },
        [127376] = { ["segment_no"] = 8, ["name"] = "Worst Room in the Game" },
        [129120] = { ["segment_no"] = 8, ["name"] = "Kihunter Stairs" },
        [131409] = { ["segment_no"] = 8, ["name"] = "Metal Pirates" },
        [133164] = { ["segment_no"] = 8, ["name"] = "Ridley" },
        [136470] = { ["segment_no"] = 8, ["name"] = "Leaving Ridley" },
        [137820] = { ["segment_no"] = 8, ["name"] = "Wasteland Revisit" },
        [140353] = { ["segment_no"] = 8, ["name"] = "Fire Flea Room" },
        [141457] = { ["segment_no"] = 8, ["name"] = "Three Musketeers" },
        [143047] = { ["segment_no"] = 8, ["name"] = "Bubble Mountain ReRevisit" },
		-- Spore Spawn
        [146034] = { ["segment_no"] = 9, ["name"] = "Maridia Passthrough" },
        [147515] = { ["segment_no"] = 9, ["name"] = "Red Tower" },
        [148267] = { ["segment_no"] = 9, ["name"] = "Lower Green Brinstar" },
        [149786] = { ["segment_no"] = 9, ["name"] = "Big Pink Up" },
        [151718] = { ["segment_no"] = 9, ["name"] = "Spore Spawn" },
        [153924] = { ["segment_no"] = 9, ["name"] = "Big Pink Down" },
        [154627] = { ["segment_no"] = 9, ["name"] = "Dachora Room Revisit" },
        [156579] = { ["segment_no"] = 9, ["name"] = "Crateria" },
		-- Tourian
        [161800] = { ["segment_no"] = 10, ["name"] = "Metroids 1" },
        [162467] = { ["segment_no"] = 10, ["name"] = "Metroids 2" },
        [162983] = { ["segment_no"] = 10, ["name"] = "Metroids 3" },
        [163726] = { ["segment_no"] = 10, ["name"] = "Metroids 4" },
        [164863] = { ["segment_no"] = 10, ["name"] = "Baby Skip" },
        [168195] = { ["segment_no"] = 10, ["name"] = "Zeb Skip" },
        [181421] = { ["segment_no"] = 10, ["name"] = "Escape Room 3" },
        [183974] = { ["segment_no"] = 10, ["name"] = "Escape Parlor" },
    },
    ["allbossprkd"] = {
		-- Crateria
		[983] = { ["segment_no"] = 1, ["name"] = "Ceres Elevator" },
		[4777] = { ["segment_no"] = 1, ["name"] = "Ceres Last 3 Rooms" },
		[8664] = { ["segment_no"] = 1, ["name"] = "Ship" },
        [10274] = { ["segment_no"] = 1, ["name"] = "Pit Room" },
        [11628] = { ["segment_no"] = 1, ["name"] = "Morph" },
        [14941] = { ["segment_no"] = 1, ["name"] = "Pit Room Revisit" },
        [15511] = { ["segment_no"] = 1, ["name"] = "Climb" },
        [16504] = { ["segment_no"] = 1, ["name"] = "Parlor" },
        [17800] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
        [21029] = { ["segment_no"] = 1, ["name"] = "Terminator" },
        [22222] = { ["segment_no"] = 1, ["name"] = "Green Pirate Shaft" },
		-- Brinstar
        [23566] = { ["segment_no"] = 2, ["name"] = "Green Brinstar Elevator" },
        [26293] = { ["segment_no"] = 2, ["name"] = "Dachora Room" },
        [27464] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
        [28695] = { ["segment_no"] = 2, ["name"] = "Spore Spawn" },
        [31755] = { ["segment_no"] = 2, ["name"] = "Sporefall" },
        [33750] = { ["segment_no"] = 2, ["name"] = "Big Pink Revisit" },
        [37714] = { ["segment_no"] = 2, ["name"] = "Red Tower" },
        [38498] = { ["segment_no"] = 2, ["name"] = "Hellway" },
        [40209] = { ["segment_no"] = 2, ["name"] = "Leaving Power Bombs" },
		-- Wrecked Ship
        [42875] = { ["segment_no"] = 3, ["name"] = "Moat" },
        [43644] = { ["segment_no"] = 3, ["name"] = "Ocean" },
        [44700] = { ["segment_no"] = 3, ["name"] = "Entering Wrecked Ship" },
        [46835] = { ["segment_no"] = 3, ["name"] = "Phantoon" },
        [53030] = { ["segment_no"] = 3, ["name"] = "Wrecked Ship Shaft" },
        [54270] = { ["segment_no"] = 3, ["name"] = "Attic" },
        [56950] = { ["segment_no"] = 3, ["name"] = "Bowling Alley" },
        [60750] = { ["segment_no"] = 3, ["name"] = "Leaving Gravity" },
        [63504] = { ["segment_no"] = 3, ["name"] = "Red Tower Elevator" },
        [64177] = { ["segment_no"] = 3, ["name"] = "Red Tower Descent" },
        [65512] = { ["segment_no"] = 3, ["name"] = "Spazer" },
        [67618] = { ["segment_no"] = 3, ["name"] = "Breaking Tube" },
		-- Upper Norfair
        [69269] = { ["segment_no"] = 4, ["name"] = "Business Center" },
        [69565] = { ["segment_no"] = 4, ["name"] = "Hi Jump E-tank" },
        [71285] = { ["segment_no"] = 4, ["name"] = "Leaving Hi Jump" },
        [72517] = { ["segment_no"] = 4, ["name"] = "Ice Beam Hallway" },
        [73344] = { ["segment_no"] = 4, ["name"] = "Ice Maze" },
        [75145] = { ["segment_no"] = 4, ["name"] = "Ice Escape" },
        [76276] = { ["segment_no"] = 4, ["name"] = "Pre-Cathedral" },
        [78024] = { ["segment_no"] = 4, ["name"] = "Bubble Mountain" },
        [82680] = { ["segment_no"] = 4, ["name"] = "Single Chamber" },
        [84936] = { ["segment_no"] = 4, ["name"] = "Double Chamber Revisit" },
        [86400] = { ["segment_no"] = 4, ["name"] = "Volcano Room" },
        [87965] = { ["segment_no"] = 4, ["name"] = "Lava Spark" },
		-- Lower Norfair
        [89827] = { ["segment_no"] = 5, ["name"] = "LN Main Hall" },
        [90700] = { ["segment_no"] = 5, ["name"] = "Green Gate Glitch" },
        [91730] = { ["segment_no"] = 5, ["name"] = "Golden Torizo" },
        [96640] = { ["segment_no"] = 5, ["name"] = "Screw Attack Escape" },
        [99200] = { ["segment_no"] = 5, ["name"] = "Worst Room in the Game" },
        [100132] = { ["segment_no"] = 5, ["name"] = "Amphitheatre" },
        [101325] = { ["segment_no"] = 5, ["name"] = "Kihunter Stairs" },
        [102500] = { ["segment_no"] = 5, ["name"] = "Wasteland" },
        [103835] = { ["segment_no"] = 5, ["name"] = "Metal Pirates" },
        [106173] = { ["segment_no"] = 5, ["name"] = "Ridley" },
        [112661] = { ["segment_no"] = 5, ["name"] = "Leaving Ridley" },
        [114251] = { ["segment_no"] = 5, ["name"] = "Wasteland Revisit" },
        [115972] = { ["segment_no"] = 5, ["name"] = "Kihunter Stairs Revisit" },
        [117260] = { ["segment_no"] = 5, ["name"] = "Fire Flea Room" },
        [118566] = { ["segment_no"] = 5, ["name"] = "Three Musketeers" },
		-- Upper Norfair Revisit
        [120382] = { ["segment_no"] = 6, ["name"] = "Bubble Mountain Revisit" },
        [121741] = { ["segment_no"] = 6, ["name"] = "Red Pirate Shaft" },
        [122172] = { ["segment_no"] = 6, ["name"] = "Acid Snakes Tunnel" },
        [123057] = { ["segment_no"] = 6, ["name"] = "Crocomire" },
        [128117] = { ["segment_no"] = 6, ["name"] = "Leaving Crocomire" },
        [128823] = { ["segment_no"] = 6, ["name"] = "Crocomire Escape" },
        [129659] = { ["segment_no"] = 6, ["name"] = "Business Center Revisit" },
		-- Kraids Lair
        [131235] = { ["segment_no"] = 7, ["name"] = "Entering Kraids Lair" },
        [132453] = { ["segment_no"] = 7, ["name"] = "Baby Kraid (Entering)" },
        [133427] = { ["segment_no"] = 7, ["name"] = "Kraid" },
        [136745] = { ["segment_no"] = 7, ["name"] = "Baby Kraid (Entering)" },
        [138800] = { ["segment_no"] = 7, ["name"] = "Leaving Kraids Lair" },
		-- Maridia
        [140803] = { ["segment_no"] = 8, ["name"] = "Mt Everest" },
        [141926] = { ["segment_no"] = 8, ["name"] = "Aqueduct" },
        [143286] = { ["segment_no"] = 8, ["name"] = "Botwoon" },
        [145500] = { ["segment_no"] = 8, ["name"] = "Halfie" },
        [147133] = { ["segment_no"] = 8, ["name"] = "Draygon" },
        [150876] = { ["segment_no"] = 8, ["name"] = "Womple Jump" },
        [151840] = { ["segment_no"] = 8, ["name"] = "Reverse Botwoon Hallway" },
        [153288] = { ["segment_no"] = 8, ["name"] = "Aqueduct Revisit" },
        [154457] = { ["segment_no"] = 8, ["name"] = "Mt Everest Revisit" },
        [155831] = { ["segment_no"] = 8, ["name"] = "Red Brinstar Gate" },
		-- Tourian
        [157276] = { ["segment_no"] = 9, ["name"] = "Crateria Kihunters" },
        [158764] = { ["segment_no"] = 9, ["name"] = "Terminator Revisit" },
        [164897] = { ["segment_no"] = 9, ["name"] = "Metroids 1" },
        [165900] = { ["segment_no"] = 9, ["name"] = "Metroids 2" },
        [166626] = { ["segment_no"] = 9, ["name"] = "Metroids 3" },
        [167327] = { ["segment_no"] = 9, ["name"] = "Metroids 4" },
        [168524] = { ["segment_no"] = 9, ["name"] = "Baby Skip" },
        [170788] = { ["segment_no"] = 9, ["name"] = "Gedora Room" },
        [171985] = { ["segment_no"] = 9, ["name"] = "Zeb Skip" },
        [188288] = { ["segment_no"] = 9, ["name"] = "Escape Room 3" },
        [190815] = { ["segment_no"] = 9, ["name"] = "Escape Parlor" },
    },
    ["100early"] = {
		-- Crateria
		[983] = { ["segment_no"] = 1, ["name"] = "Ceres Elevator" },
		[4777] = { ["segment_no"] = 1, ["name"] = "Ceres Last 3 Rooms" },
		[8664] = { ["segment_no"] = 1, ["name"] = "Ship" },
		[10274] = { ["segment_no"] = 1, ["name"] = "Pit Room" },
		[11628] = { ["segment_no"] = 1, ["name"] = "Morph" },
		[14941] = { ["segment_no"] = 1, ["name"] = "Pit Room Revisit" },
		[15540] = { ["segment_no"] = 1, ["name"] = "Climb" },
		[16615] = { ["segment_no"] = 1, ["name"] = "Parlor Revisit" },
		[17900] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
		[20535] = { ["segment_no"] = 1, ["name"] = "Alcatraz" },
		[21100] = { ["segment_no"] = 1, ["name"] = "Terminator" },
		[22250] = { ["segment_no"] = 1, ["name"] = "Green Pirate Shaft" },

		-- Brinstar
		[23555] = { ["segment_no"] = 2, ["name"] = "Green Brinstar" },
		[24605] = { ["segment_no"] = 2, ["name"] = "Early Supers" },
		[27865] = { ["segment_no"] = 2, ["name"] = "Reverse Mockball" },
		[29245] = { ["segment_no"] = 2, ["name"] = "Dachora Room" },
		[30321] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
		[32020] = { ["segment_no"] = 2, ["name"] = "Green Hill Zone" },
		[33503] = { ["segment_no"] = 2, ["name"] = "Red Tower" },
		[34241] = { ["segment_no"] = 2, ["name"] = "Skree Boost" },
		[37045] = { ["segment_no"] = 2, ["name"] = "Kraid Entry" },
		[39360] = { ["segment_no"] = 2, ["name"] = "Kraid" },
		[41740] = { ["segment_no"] = 2, ["name"] = "Leaving Varia" },
		[42950] = { ["segment_no"] = 2, ["name"] = "Leaving Kraid Hallway" },
		[44540] = { ["segment_no"] = 2, ["name"] = "Leaving Kraid E-Tank" },

		-- Upper Norfair
		[46015] = { ["segment_no"] = 3, ["name"] = "Business Center" },
		[46308] = { ["segment_no"] = 3, ["name"] = "Hi-Jump" },
		[49003] = { ["segment_no"] = 3, ["name"] = "Business Center Climb" },
		[49509] = { ["segment_no"] = 3, ["name"] = "Pre-Cathedral" },
		[50058] = { ["segment_no"] = 3, ["name"] = "Cathedral" },
		[51395] = { ["segment_no"] = 3, ["name"] = "Rising Tide" },
		[52060] = { ["segment_no"] = 3, ["name"] = "Bubble Mountain" },
		[52773] = { ["segment_no"] = 3, ["name"] = "Bat Cave" },
		[55265] = { ["segment_no"] = 3, ["name"] = "Leaving Speed Booster" },
		[56555] = { ["segment_no"] = 3, ["name"] = "Single Chamber" },
		[56975] = { ["segment_no"] = 3, ["name"] = "Double Chamber" },
		[58675] = { ["segment_no"] = 3, ["name"] = "Double Chamber Revisited" },
		[59640] = { ["segment_no"] = 3, ["name"] = "Bubble Mountain Revisited" },
		[60945] = { ["segment_no"] = 3, ["name"] = "Red Pirate Shaft" },
		[61995] = { ["segment_no"] = 3, ["name"] = "Crocomire" },
		[67638] = { ["segment_no"] = 3, ["name"] = "Post-Crocomire" },
		[68949] = { ["segment_no"] = 3, ["name"] = "Leaving Power Bombs" },
		[69699] = { ["segment_no"] = 3, ["name"] = "Post-Crocomire Jump Room" },
		[71192] = { ["segment_no"] = 3, ["name"] = "Leaving Grapple" },
		[73184] = { ["segment_no"] = 3, ["name"] = "Post-Crocomire Missiles" },
		[75300] = { ["segment_no"] = 3, ["name"] = "Crocomire Revisit" },
		[76271] = { ["segment_no"] = 3, ["name"] = "Crocomire Escape" },
		[77533] = { ["segment_no"] = 3, ["name"] = "Business Center Return" },

		-- Red Tower and Crateria
		[78969] = { ["segment_no"] = 4, ["name"] = "Warehouse Elevator" },
		[80185] = { ["segment_no"] = 4, ["name"] = "Red Tower Climb" },
		[81289] = { ["segment_no"] = 4, ["name"] = "Hellway" },
		[82094] = { ["segment_no"] = 4, ["name"] = "Alpha Power Bombs" },
		[83810] = { ["segment_no"] = 4, ["name"] = "Elevator Room Ascent" },
		[84500] = { ["segment_no"] = 4, ["name"] = "Beta Power Bombs" },
		[86950] = { ["segment_no"] = 4, ["name"] = "Crateria Kihunters" },
		[87615] = { ["segment_no"] = 4, ["name"] = "Oceanfly" },
		[87825] = { ["segment_no"] = 4, ["name"] = "The Moat" },
		[88610] = { ["segment_no"] = 4, ["name"] = "Ocean Spark" },

		-- Wrecked Ship
		[89675] = { ["segment_no"] = 5, ["name"] = "Enter Wrecked Ship" },
		[92402] = { ["segment_no"] = 5, ["name"] = "Phantoon" },
		[96100] = { ["segment_no"] = 5, ["name"] = "Leaving Phantoon" },
		[97522] = { ["segment_no"] = 5, ["name"] = "West Supers" },
		[100410] = { ["segment_no"] = 5, ["name"] = "Leaving East Supers" },
		[101213] = { ["segment_no"] = 5, ["name"] = "Spiky Room of Death" },
		[102553] = { ["segment_no"] = 5, ["name"] = "Wrecked Ship E-Tank" },
		[104540] = { ["segment_no"] = 5, ["name"] = "Spiky Room Revisit" },
		[105569] = { ["segment_no"] = 5, ["name"] = "Shaft Ascent" },
		[106409] = { ["segment_no"] = 5, ["name"] = "Attic" },
		[107550] = { ["segment_no"] = 5, ["name"] = "Attic Missiles" },
		[109115] = { ["segment_no"] = 5, ["name"] = "Attic Revisit" },
		[109730] = { ["segment_no"] = 5, ["name"] = "Sky Missiles" },
		[112160] = { ["segment_no"] = 5, ["name"] = "Bowling Alley Path" },
		[112765] = { ["segment_no"] = 5, ["name"] = "Bowling Alley" },
		[119150] = { ["segment_no"] = 5, ["name"] = "Leaving Gravity" },

		-- Brinstar Cleanup
		[121392] = { ["segment_no"] = 6, ["name"] = "Landing Site" },
		[123818] = { ["segment_no"] = 6, ["name"] = "Gauntlet Spark" },
		[125123] = { ["segment_no"] = 6, ["name"] = "Gauntlet E-Tank" },
		[126863] = { ["segment_no"] = 6, ["name"] = "Leaving Gauntlet" },
		[129654] = { ["segment_no"] = 6, ["name"] = "Green Brinstar Elevator" },
		[131071] = { ["segment_no"] = 6, ["name"] = "Green Brinstar Beetoms" },
		[131427] = { ["segment_no"] = 6, ["name"] = "Etecoon E-Tank Room" },
		[133376] = { ["segment_no"] = 6, ["name"] = "Etecoon Room" },
		[134628] = { ["segment_no"] = 6, ["name"] = "Dachora Room Revisit" },
		[135525] = { ["segment_no"] = 6, ["name"] = "Big Pink Revisit" },
		[136680] = { ["segment_no"] = 6, ["name"] = "Big Pink Power Bombs" },
		[138264] = { ["segment_no"] = 6, ["name"] = "Big Pink Hopper Room" },
		[140508] = { ["segment_no"] = 6, ["name"] = "Spore Spawn Supers" },
		[144480] = { ["segment_no"] = 6, ["name"] = "Waterway E-Tank" },
		[146809] = { ["segment_no"] = 6, ["name"] = "Green Hills Revisit" },
		[148415] = { ["segment_no"] = 6, ["name"] = "Blockbuster" },

		-- Maridia Pre-Draygon
		[150911] = { ["segment_no"] = 7, ["name"] = "Main Street" },
		[152132] = { ["segment_no"] = 7, ["name"] = "Fish Tank" },
		[152828] = { ["segment_no"] = 7, ["name"] = "Mama Turtle E-Tank" },
		[154704] = { ["segment_no"] = 7, ["name"] = "Fish Tank Revisit" },
		[156973] = { ["segment_no"] = 7, ["name"] = "Mt Everest" },
		[157631] = { ["segment_no"] = 7, ["name"] = "Beach Missiles" },
		[158645] = { ["segment_no"] = 7, ["name"] = "West Beach" },
		[159491] = { ["segment_no"] = 7, ["name"] = "Watering Hole" },
		[161187] = { ["segment_no"] = 7, ["name"] = "West Beach Revisit" },
		[161920] = { ["segment_no"] = 7, ["name"] = "Beach Missiles Revisit" },
		[162808] = { ["segment_no"] = 7, ["name"] = "Aqueduct" },
		[164035] = { ["segment_no"] = 7, ["name"] = "Botwoon" },
		[165227] = { ["segment_no"] = 7, ["name"] = "Full Halfie" },
		[166700] = { ["segment_no"] = 7, ["name"] = "Draygon Missiles" },
		[167950] = { ["segment_no"] = 7, ["name"] = "Draygon" },

		-- Maridia Post-Draygon
		[172932] = { ["segment_no"] = 8, ["name"] = "Return Halfie" },
		[173805] = { ["segment_no"] = 8, ["name"] = "Reverse Botwoon E-Tank" },
		[175385] = { ["segment_no"] = 8, ["name"] = "East Sand Pit" },
		[178161] = { ["segment_no"] = 8, ["name"] = "Pants Room" },
		[179088] = { ["segment_no"] = 8, ["name"] = "Shaktool" },
		[183422] = { ["segment_no"] = 8, ["name"] = "Shaktool Revisit" },
		[184712] = { ["segment_no"] = 8, ["name"] = "East Sand Hall" },
		[185600] = { ["segment_no"] = 8, ["name"] = "Plasma Spark Room" },
		[186875] = { ["segment_no"] = 8, ["name"] = "Kassiuz Room" },
		[187655] = { ["segment_no"] = 8, ["name"] = "Plasma" },
		[189113] = { ["segment_no"] = 8, ["name"] = "Leaving Plasma" },
		[189775] = { ["segment_no"] = 8, ["name"] = "Leaving Kassiuz" },
		[190785] = { ["segment_no"] = 8, ["name"] = "Cac Alley" },
		[192271] = { ["segment_no"] = 8, ["name"] = "Botwoon E-Tank" },
		[194111] = { ["segment_no"] = 8, ["name"] = "Aqueduct Final" },
		[196274] = { ["segment_no"] = 8, ["name"] = "West Sand Pit" },
		[199955] = { ["segment_no"] = 8, ["name"] = "Thread the Needle" },

		-- Ice-Kraid-Kronic
		[200605] = { ["segment_no"] = 9, ["name"] = "Kraid Entrance Revisit" },
		[201646] = { ["segment_no"] = 9, ["name"] = "Kraid Missiles" },
		[202868] = { ["segment_no"] = 9, ["name"] = "Kraid Missiles Escape" },
		[204746] = { ["segment_no"] = 9, ["name"] = "Ice Beam Gate Room" },
		[205354] = { ["segment_no"] = 9, ["name"] = "Ice Beam Snake Room" },
		[206480] = { ["segment_no"] = 9, ["name"] = "Snake Room Revisit" },
		[206894] = { ["segment_no"] = 9, ["name"] = "Ice Escape" },
		[207781] = { ["segment_no"] = 9, ["name"] = "Crumble Shaft Missiles" },
		[208952] = { ["segment_no"] = 9, ["name"] = "Crocomire Speedway" },
		[210492] = { ["segment_no"] = 9, ["name"] = "Kronic Boost" },

		-- Lower Norfair
		[212585] = { ["segment_no"] = 10, ["name"] = "LN Main Hall" },
		[214936] = { ["segment_no"] = 10, ["name"] = "Golden Torizo" },
		[217583] = { ["segment_no"] = 10, ["name"] = "Leaving Golden Torizo" },
		[218467] = { ["segment_no"] = 10, ["name"] = "Fast Ripper Room" },
		[219592] = { ["segment_no"] = 10, ["name"] = "Worst Room in the Game" },
		[220177] = { ["segment_no"] = 10, ["name"] = "Mickey Mouse Missiles" },
		[221863] = { ["segment_no"] = 10, ["name"] = "Amphitheatre" },
		[222673] = { ["segment_no"] = 10, ["name"] = "Red Kihunter Shaft" },
		[225930] = { ["segment_no"] = 10, ["name"] = "Ninja Pirates" },
		[226693] = { ["segment_no"] = 10, ["name"] = "Plowerhouse Room" },
		[227471] = { ["segment_no"] = 10, ["name"] = "Ridley" },
		[230969] = { ["segment_no"] = 10, ["name"] = "Ridley Escape" },
		[232565] = { ["segment_no"] = 10, ["name"] = "Wasteland Revisit" },
		[233666] = { ["segment_no"] = 10, ["name"] = "Kihunter Shaft Revisit" },
		[234863] = { ["segment_no"] = 10, ["name"] = "Firefleas Room" },
		[236879] = { ["segment_no"] = 10, ["name"] = "Springball Maze" },
		[240335] = { ["segment_no"] = 10, ["name"] = "Three Muskateers" },
		[242849] = { ["segment_no"] = 10, ["name"] = "Bubble Mountain Return" },
		[243364] = { ["segment_no"] = 10, ["name"] = "Norfair Reserve" },
		[246326] = { ["segment_no"] = 10, ["name"] = "Bubble Mountain Final" },
		[249252] = { ["segment_no"] = 10, ["name"] = "Business Center Final" },

		-- Final Cleanup
		[251238] = { ["segment_no"] = 11, ["name"] = "Below Spazer" },
		[251943] = { ["segment_no"] = 11, ["name"] = "Red Tower X-Ray" },
		[252642] = { ["segment_no"] = 11, ["name"] = "X-Ray Passage" },
		[254669] = { ["segment_no"] = 11, ["name"] = "X-Ray Passage Return" },
		[256320] = { ["segment_no"] = 11, ["name"] = "Reverse Slinky" },
		[257326] = { ["segment_no"] = 11, ["name"] = "Retro Brinstar Hoppers" },
		[258666] = { ["segment_no"] = 11, ["name"] = "Retro Brinstar E-Tank" },
		[260295] = { ["segment_no"] = 11, ["name"] = "Boulder Room" },
		[261867] = { ["segment_no"] = 11, ["name"] = "Leaving Billy Mays" },
		[263181] = { ["segment_no"] = 11, ["name"] = "Retro Brinstar Escape" },
		[264872] = { ["segment_no"] = 11, ["name"] = "Old Tourian Missiles" },
		[266780] = { ["segment_no"] = 11, ["name"] = "Climb Supers" },
		[269066] = { ["segment_no"] = 11, ["name"] = "Parlor Missiles" },
		[270179] = { ["segment_no"] = 11, ["name"] = "Leaving Parlor Missiles" },
		[271007] = { ["segment_no"] = 11, ["name"] = "Terminator Revisit" },

		-- Tourian
		[276443] = { ["segment_no"] = 12, ["name"] = "Metroids 1" },
		[277088] = { ["segment_no"] = 12, ["name"] = "Metroids 2" },
		[277618] = { ["segment_no"] = 12, ["name"] = "Metroids 3" },
		[278303] = { ["segment_no"] = 12, ["name"] = "Metroids 4" },
		[279441] = { ["segment_no"] = 12, ["name"] = "Baby Skip" },
		[282524] = { ["segment_no"] = 12, ["name"] = "Zeb Skip" },
		[294786] = { ["segment_no"] = 12, ["name"] = "Escape Room 3" },
		[295403] = { ["segment_no"] = 12, ["name"] = "Escape Room 4" },
		[297377] = { ["segment_no"] = 12, ["name"] = "Escape Parlor" },
    },
    ["pkrd"] = {
        -- Crateria
        [9020] = { ["segment_no"] = 1, ["name"] = "Ship" },
        [9325] = { ["segment_no"] = 1, ["name"] = "Parlor" },
        [10010] = { ["segment_no"] = 1, ["name"] = "Parlor Downback" },
        [10128] = { ["segment_no"] = 1, ["name"] = "Climb Down" },
        [10810] = { ["segment_no"] = 1, ["name"] = "Pit Room" },
        [12222] = { ["segment_no"] = 1, ["name"] = "Morph" },
        [13131] = { ["segment_no"] = 1, ["name"] = "Construction Zone Down" },
        [14150] = { ["segment_no"] = 1, ["name"] = "Construction Zone Up" },
        [15720] = { ["segment_no"] = 1, ["name"] = "Pit Room Revisit" },
        [16378] = { ["segment_no"] = 1, ["name"] = "Climb Up" },
        [17503] = { ["segment_no"] = 1, ["name"] = "Parlor Revisit" },
        [18567] = { ["segment_no"] = 1, ["name"] = "Flyway" },
        [18999] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
        [21674] = { ["segment_no"] = 1, ["name"] = "Alcatraz" },
        [22307] = { ["segment_no"] = 1, ["name"] = "Terminator" },
        [23394] = { ["segment_no"] = 1, ["name"] = "Green Pirate Shaft" },
        -- Brinstar
        [24700] = { ["segment_no"] = 2, ["name"] = "Green Brinstar Elevator" },
        [25830] = { ["segment_no"] = 2, ["name"] = "Early Supers" },
        [27410] = { ["segment_no"] = 2, ["name"] = "Dachora Room" },
        [28530] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
        [30633] = { ["segment_no"] = 2, ["name"] = "Green Hill Zone" },
        [31530] = { ["segment_no"] = 2, ["name"] = "Noob Bridge" },
        [32216] = { ["segment_no"] = 2, ["name"] = "Red Tower" },
        [32974] = { ["segment_no"] = 2, ["name"] = "Hellway" },
        [33390] = { ["segment_no"] = 2, ["name"] = "Caterpillars Down" },
        [33843] = { ["segment_no"] = 2, ["name"] = "Alpha Power Bombs" },
        [34745] = { ["segment_no"] = 2, ["name"] = "Caterpillars Up" },
        [36669] = { ["segment_no"] = 2, ["name"] = "Crateria Kihunters" },
        [37481] = { ["segment_no"] = 2, ["name"] = "Continuous Wall Jump" },
        [38337] = { ["segment_no"] = 2, ["name"] = "Horizontal Bomb Jump" },
        [39098] = { ["segment_no"] = 2, ["name"] = "Ocean" },
        -- Wrecked Ship
        [40522] = { ["segment_no"] = 3, ["name"] = "Shaft Down" },
        [41550] = { ["segment_no"] = 3, ["name"] = "Basement" },
        [42152] = { ["segment_no"] = 3, ["name"] = "Phantoon" },
        [46669] = { ["segment_no"] = 3, ["name"] = "Leaving Phantoon" },
        [46994] = { ["segment_no"] = 3, ["name"] = "Shaft to Supers" },
        [48295] = { ["segment_no"] = 3, ["name"] = "Shaft Up" },
        [49505] = { ["segment_no"] = 3, ["name"] = "Attic" },
        [50445] = { ["segment_no"] = 3, ["name"] = "Upper West Ocean" },
        [51590] = { ["segment_no"] = 3, ["name"] = "Pancakes and Wavers" },
        [52000] = { ["segment_no"] = 3, ["name"] = "Bowling Alley" },
        [55640] = { ["segment_no"] = 3, ["name"] = "Leaving Gravity" },
        [56426] = { ["segment_no"] = 3, ["name"] = "Reverse Moat" },
        [56820] = { ["segment_no"] = 3, ["name"] = "Crateria Kihunters Return" },
        -- Red Brinstar Revisit
        [57628] = { ["segment_no"] = 4, ["name"] = "Red Brinstar Elevator" },
        [58793] = { ["segment_no"] = 4, ["name"] = "Hellway Revisit" },
        [59178] = { ["segment_no"] = 4, ["name"] = "Red Tower Down" },
        [60030] = { ["segment_no"] = 4, ["name"] = "Skree Boost" },
        [60530] = { ["segment_no"] = 4, ["name"] = "Below Spazer" },
        [61799] = { ["segment_no"] = 4, ["name"] = "Leaving Spazer" },
        [62443] = { ["segment_no"] = 4, ["name"] = "Breaking Tube" },
        -- Kraid
        [63333] = { ["segment_no"] = 5, ["name"] = "Entering Kraids Lair" },
        [64350] = { ["segment_no"] = 5, ["name"] = "Kraid Kihunters" },
        [64838] = { ["segment_no"] = 5, ["name"] = "Mini Kraid" },
        [65910] = { ["segment_no"] = 5, ["name"] = "Kraid" },
        [68550] = { ["segment_no"] = 5, ["name"] = "Leaving Varia" },
        [69420] = { ["segment_no"] = 5, ["name"] = "Mini Kraid Revisit" },
        [70135] = { ["segment_no"] = 5, ["name"] = "Kraid Kihunters Revisit" },
        [71050] = { ["segment_no"] = 5, ["name"] = "Kraid E-tank" },
        [71888] = { ["segment_no"] = 5, ["name"] = "Leaving Kraids Lair" },
        -- Upper Norfair Revisit
        [72650] = { ["segment_no"] = 6, ["name"] = "Business Center" },
        [73737] = { ["segment_no"] = 6, ["name"] = "Hi Jump E-tank" },
        [75500] = { ["segment_no"] = 6, ["name"] = "Leaving Hi Jump" },
        [76390] = { ["segment_no"] = 6, ["name"] = "Business Center 2" },
        [77000] = { ["segment_no"] = 6, ["name"] = "Ice Beam Gates" },
        [77877] = { ["segment_no"] = 6, ["name"] = "Ice Maze Up" },
        [79110] = { ["segment_no"] = 6, ["name"] = "Ice Maze Down" },
        [79666] = { ["segment_no"] = 6, ["name"] = "Ice Escape" },
        [80850] = { ["segment_no"] = 6, ["name"] = "Pre-Cathedral" },
        [81666] = { ["segment_no"] = 6, ["name"] = "Cathedral" },
        [82222] = { ["segment_no"] = 6, ["name"] = "Rising Tide" },
        [83150] = { ["segment_no"] = 6, ["name"] = "Bubble Mountain" },
        [84000] = { ["segment_no"] = 6, ["name"] = "Bat Cave" },
        [86150] = { ["segment_no"] = 6, ["name"] = "Leaving Speedbooster" },
        [87800] = { ["segment_no"] = 6, ["name"] = "Single Chamber" },
        [88250] = { ["segment_no"] = 6, ["name"] = "Double Chamber" },
        [90200] = { ["segment_no"] = 6, ["name"] = "Double Chamber Revisited" },
        [90666] = { ["segment_no"] = 6, ["name"] = "Single Chamber Revisited" },
        [92100] = { ["segment_no"] = 6, ["name"] = "Volcano Room" },
        [93030] = { ["segment_no"] = 6, ["name"] = "Kronic Boost" },
        [93866] = { ["segment_no"] = 6, ["name"] = "Lava Spark" },
        -- Lower Norfair
        [95666] = { ["segment_no"] = 7, ["name"] = "LN Main Hall" },
        [96069] = { ["segment_no"] = 7, ["name"] = "Pre-Pillars" },
        [97250] = { ["segment_no"] = 7, ["name"] = "Worst Room in the Game" },
        [98550] = { ["segment_no"] = 7, ["name"] = "Amphitheatre" },
        [99500] = { ["segment_no"] = 7, ["name"] = "Kihunter Stairs Down" },
        [100850] = { ["segment_no"] = 7, ["name"] = "Wasteland" },
        [102400] = { ["segment_no"] = 7, ["name"] = "Metal Ninja Pirates" },
        [103750] = { ["segment_no"] = 7, ["name"] = "Plowerhouse" },
        [104350] = { ["segment_no"] = 7, ["name"] = "Ridley Farming Room" },
        [105666] = { ["segment_no"] = 7, ["name"] = "Ridley" },
        [112000] = { ["segment_no"] = 7, ["name"] = "Leaving Ridley" },
        [113030] = { ["segment_no"] = 7, ["name"] = "Reverse Plowerhouse" },
        [114411] = { ["segment_no"] = 7, ["name"] = "Wasteland Revisit" },
        [115566] = { ["segment_no"] = 7, ["name"] = "Kihunter Stairs Up" },
        [116950] = { ["segment_no"] = 7, ["name"] = "Fire Flea Room" },
        [117666] = { ["segment_no"] = 7, ["name"] = "Springball Maze" },
        [118220] = { ["segment_no"] = 7, ["name"] = "Three Musketeers" },
        [119190] = { ["segment_no"] = 7, ["name"] = "Single Chamber Final" },
        [120575] = { ["segment_no"] = 7, ["name"] = "Bubble Mountain Final" },
        [121690] = { ["segment_no"] = 7, ["name"] = "Frog Speedway" },
        [122400] = { ["segment_no"] = 7, ["name"] = "Business Center Final" },
        -- Maridia
        [123777] = { ["segment_no"] = 8, ["name"] = "Maridia Tube Revisit" },
        [124666] = { ["segment_no"] = 8, ["name"] = "Fish Tank" },
        [125370] = { ["segment_no"] = 8, ["name"] = "Mt Everest" },
        [125769] = { ["segment_no"] = 8, ["name"] = "Crab Shaft" },
        [127000] = { ["segment_no"] = 8, ["name"] = "Botwoon Hallway" },
        [128950] = { ["segment_no"] = 8, ["name"] = "Botwoon" },
        [130750] = { ["segment_no"] = 8, ["name"] = "Botwoon E-tank" },
        [131900] = { ["segment_no"] = 8, ["name"] = "Halfie Setup" },
        [133450] = { ["segment_no"] = 8, ["name"] = "Draygon" },
        [138400] = { ["segment_no"] = 8, ["name"] = "Spikesuit Reverse Halfie" },
        [138405] = { ["segment_no"] = 8, ["name"] = "Reverse Colosseum" },
        [139000] = { ["segment_no"] = 8, ["name"] = "Reverse Halfie Climb" },
        [139550] = { ["segment_no"] = 8, ["name"] = "Reverse Botwoon E-tank" },
        [140300] = { ["segment_no"] = 8, ["name"] = "Reverse Botwoon Hallway" },
        [141900] = { ["segment_no"] = 8, ["name"] = "Reverse Crab Shaft" },
        [142420] = { ["segment_no"] = 8, ["name"] = "Mt Everest Revisit" },
        -- Backtracking
        [143769] = { ["segment_no"] = 9, ["name"] = "Red Brinstar Green Gate" },
        [145145] = { ["segment_no"] = 9, ["name"] = "Crateria Kihunters Final" },
        [146250] = { ["segment_no"] = 9, ["name"] = "Parlor Return" },
        [146810] = { ["segment_no"] = 9, ["name"] = "Terminator Revisit" },
        [147762] = { ["segment_no"] = 9, ["name"] = "Green Pirate Shaft Revisit" },
        [148450] = { ["segment_no"] = 9, ["name"] = "G4 Hallway" },
        [151900] = { ["segment_no"] = 9, ["name"] = "G4 Elevator" },
        -- Tourian
        [152969] = { ["segment_no"] = 10, ["name"] = "Tourian Elevator Room" },
        [153125] = { ["segment_no"] = 10, ["name"] = "Metroids 1" },
        [153840] = { ["segment_no"] = 10, ["name"] = "Metroids 2" },
        [154500] = { ["segment_no"] = 10, ["name"] = "Metroids 3" },
        [155800] = { ["segment_no"] = 10, ["name"] = "Metroids 4" },
        [156425] = { ["segment_no"] = 10, ["name"] = "Giant Hoppers" },
        [157069] = { ["segment_no"] = 10, ["name"] = "Baby Skip" },
        [159300] = { ["segment_no"] = 10, ["name"] = "Gedora Room" },
        [160100] = { ["segment_no"] = 10, ["name"] = "Rinka Shaft" },
        [160550] = { ["segment_no"] = 10, ["name"] = "Zeb Skip" },
        [177500] = { ["segment_no"] = 10, ["name"] = "Escape Room 3" },
        [179500] = { ["segment_no"] = 10, ["name"] = "Climb Spark" },
        [180150] = { ["segment_no"] = 10, ["name"] = "Escape Parlor" },
    },
    ["nintendopower"] = {
        -- Crateria
        [9566] = { ["segment_no"] = 1, ["name"] = "Ship" },
        [12978] = { ["segment_no"] = 1, ["name"] = "Morph" },
        [19526] = { ["segment_no"] = 1, ["name"] = "Climb" },
        [24090] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
        [29350] = { ["segment_no"] = 1, ["name"] = "Terminator" },
        -- Brinstar
        [33077] = { ["segment_no"] = 2, ["name"] = "Green Brinstar Elevator" },
        [37456] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
        [43814] = { ["segment_no"] = 2, ["name"] = "Spore Spawn" },
        [54577] = { ["segment_no"] = 2, ["name"] = "Spore Fall" },
        [63384] = { ["segment_no"] = 2, ["name"] = "Red Tower" },
        -- Upper Norfair
        [68322] = { ["segment_no"] = 3, ["name"] = "Business Center" },
        [75015] = { ["segment_no"] = 3, ["name"] = "Kraid Warehouse" },
        [80718] = { ["segment_no"] = 3, ["name"] = "Kraid Fight" },
        [94742] = { ["segment_no"] = 3, ["name"] = "Rising Tide" },
        [114618] = { ["segment_no"] = 3, ["name"] = "Reserve Tank" },
        [121870] = { ["segment_no"] = 3, ["name"] = "Ice Beam" },
        [126647] = { ["segment_no"] = 3, ["name"] = "Ice Escape" },
        [130104] = { ["segment_no"] = 3, ["name"] = "Shinespark to Power Bombs" },
        [146286] = { ["segment_no"] = 3, ["name"] = "Business Center 2" },
        [150525] = { ["segment_no"] = 3, ["name"] = "Crocomire" },
        [159243] = { ["segment_no"] = 3, ["name"] = "Grapple Beam" },
        [162044] = { ["segment_no"] = 3, ["name"] = "Exit Grapple Beam" },
        [164094] = { ["segment_no"] = 3, ["name"] = "Power Bombs Post Croc" },
        [167678] = { ["segment_no"] = 3, ["name"] = "Red Pirate Shaft" },
        [171848] = { ["segment_no"] = 3, ["name"] = "Bubble Mountain" },
        [174808] = { ["segment_no"] = 3, ["name"] = "Wave Beam" },
        [183673] = { ["segment_no"] = 3, ["name"] = "Shinespark 2" },
        [187346] = { ["segment_no"] = 3, ["name"] = "X-Ray Beam" },
        [190382] = { ["segment_no"] = 3, ["name"] = "X-Ray Beam 2" },
        [192127] = { ["segment_no"] = 3, ["name"] = "X-Ray Beam 3" },
        -- Wrecked Ship
        [198387] = { ["segment_no"] = 4, ["name"] = "Red Brinstar Elevator" },  -- 197526/198387
        [199796] = { ["segment_no"] = 4, ["name"] = "Moat Missiles" },
        [205313] = { ["segment_no"] = 4, ["name"] = "Shinespark to Phantoon" },
        [209100] = { ["segment_no"] = 4, ["name"] = "Phantoon" },
        [224575] = { ["segment_no"] = 4, ["name"] = "Movement before Attic" },
        [227071] = { ["segment_no"] = 4, ["name"] = "Attic" },
        [234176] = { ["segment_no"] = 4, ["name"] = "Bowling Alley" },
        [239102] = { ["segment_no"] = 4, ["name"] = "Gravity Suit Room" },
        [244914] = { ["segment_no"] = 4, ["name"] = "Red Tower 3" },
        -- Maridia
        [251395] = { ["segment_no"] = 5, ["name"] = "Mainstreet" },
        [256525] = { ["segment_no"] = 5, ["name"] = "Pants Room" },
        [264210] = { ["segment_no"] = 5, ["name"] = "East Pants Room" },
        [272958] = { ["segment_no"] = 5, ["name"] = "Super Door" },
        [278032] = { ["segment_no"] = 5, ["name"] = "Fish Tank" },
        [279447] = { ["segment_no"] = 5, ["name"] = "Mama Turtle" },
        [282227] = { ["segment_no"] = 5, ["name"] = "Crab Supers" },
        [289226] = { ["segment_no"] = 5, ["name"] = "Aqueduct" },
        [292625] = { ["segment_no"] = 5, ["name"] = "Botwoon" },
        [299959] = { ["segment_no"] = 5, ["name"] = "Full Halfie" },
        [309647] = { ["segment_no"] = 5, ["name"] = "Draygon" },
        [331747] = { ["segment_no"] = 5, ["name"] = "Going to Plasma Beam" },
        [335308] = { ["segment_no"] = 5, ["name"] = "Plasma Beam" },
        [339157] = { ["segment_no"] = 5, ["name"] = "Long Tube" },
        -- Norfair 2
        [344558] = { ["segment_no"] = 6, ["name"] = "Pre GT Fight" },
        [351212] = { ["segment_no"] = 6, ["name"] = "Elevator Menu" },
        [358746] = { ["segment_no"] = 6, ["name"] = "Golden Torizo" },
        [365389] = { ["segment_no"] = 6, ["name"] = "On Route to Ridley" },
        [368595] = { ["segment_no"] = 6, ["name"] = "Worst Room in the Game" },
        [376208] = { ["segment_no"] = 6, ["name"] = "Metal Ninja Pirates" },
        [382429] = { ["segment_no"] = 6, ["name"] = "Ridley" },
        [388736] = { ["segment_no"] = 6, ["name"] = "Escape from Ridley" },
        [413679] = { ["segment_no"] = 6, ["name"] = "Landing Site" },
        -- Tourian
        [421410] = { ["segment_no"] = 7, ["name"] = "Metroids 1" },
        [423467] = { ["segment_no"] = 7, ["name"] = "Metroids 2" },
        [430378] = { ["segment_no"] = 7, ["name"] = "Metroids 3" },
        [432211] = { ["segment_no"] = 7, ["name"] = "Metroids 4" },
        [434690] = { ["segment_no"] = 7, ["name"] = "Baby Skip" },
        [440129] = { ["segment_no"] = 7, ["name"] = "Zeb Skip" },
        [457680] = { ["segment_no"] = 7, ["name"] = "Escape Room 2" },
        [461449] = { ["segment_no"] = 7, ["name"] = "Escape Parlor" },
    },
    ["gtmax"] = {
		-- Crateria
		[8700] = { ["segment_no"] = 1, ["name"] = "Ship" },
		[8050] = { ["segment_no"] = 1, ["name"] = "Parlor" },
		[9700] = { ["segment_no"] = 1, ["name"] = "Parlor Downback" },
		[9900] = { ["segment_no"] = 1, ["name"] = "Climb Down" },
		[10666] = { ["segment_no"] = 1, ["name"] = "Pit Room" },
		[12030] = { ["segment_no"] = 1, ["name"] = "Morph" },
		[12910] = { ["segment_no"] = 1, ["name"] = "Construction Zone Down" },
		[13970] = { ["segment_no"] = 1, ["name"] = "Construction Zone Up" },
		[15444] = { ["segment_no"] = 1, ["name"] = "Pit Room Revisit" },
		[16000] = { ["segment_no"] = 1, ["name"] = "Climb Up" },
		[17000] = { ["segment_no"] = 1, ["name"] = "Parlor Flyway" },
		[17931] = { ["segment_no"] = 1, ["name"] = "Flyway" },
		[18420] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo" },
		[21050] = { ["segment_no"] = 1, ["name"] = "Alcatraz" },
		[22370] = { ["segment_no"] = 1, ["name"] = "Terminator" },
		[23000] = { ["segment_no"] = 1, ["name"] = "Green Pirate Shaft" },
		-- Brinstar
		[24310] = { ["segment_no"] = 2, ["name"] = "Green Brinstar Elevator" },
		[25420] = { ["segment_no"] = 2, ["name"] = "Early Supers" },
		[27000] = { ["segment_no"] = 2, ["name"] = "Dachora Room" },
		[28300] = { ["segment_no"] = 2, ["name"] = "Big Pink" },
		[29150] = { ["segment_no"] = 2, ["name"] = "Green Hill Zone" },
		[30000] = { ["segment_no"] = 2, ["name"] = "Noob Bridge" },
		[30820] = { ["segment_no"] = 2, ["name"] = "Red Tower Up" },
		[31666] = { ["segment_no"] = 2, ["name"] = "Hellway" },
		[32250] = { ["segment_no"] = 2, ["name"] = "Caterpillars Down" },
		[32720] = { ["segment_no"] = 2, ["name"] = "Alpha Power Bombs" },
		[33666] = { ["segment_no"] = 2, ["name"] = "Caterpillars Up" },
		[34230] = { ["segment_no"] = 2, ["name"] = "Reverse Hellway" },
		[34780] = { ["segment_no"] = 2, ["name"] = "Red Tower Down" },
		[35700] = { ["segment_no"] = 2, ["name"] = "Skree Boost" },
		[36150] = { ["segment_no"] = 2, ["name"] = "Below Spazer" },
		[36669] = { ["segment_no"] = 2, ["name"] = "Breaking Tube" },
		-- Kraid
		[37550] = { ["segment_no"] = 3, ["name"] = "Entering Kraid's Lair" },
		[38469] = { ["segment_no"] = 3, ["name"] = "Kraid Kihunters" },
		[38969] = { ["segment_no"] = 3, ["name"] = "Mini Kraid" },
		[40000] = { ["segment_no"] = 3, ["name"] = "Kraid" },
		[42420] = { ["segment_no"] = 3, ["name"] = "Leaving Varia" },
		[43100] = { ["segment_no"] = 3, ["name"] = "Mini Kraid Revisit" },
		[43800] = { ["segment_no"] = 3, ["name"] = "Kraid Kihunters Revisit" },
		[45484] = { ["segment_no"] = 3, ["name"] = "Leaving Kraid's Lair" },
		-- Upper Norfair
		[46669] = { ["segment_no"] = 4, ["name"] = "Business Center" },
		[47020] = { ["segment_no"] = 4, ["name"] = "Hi-Jump E-Tank Room" },
		[48444] = { ["segment_no"] = 4, ["name"] = "Leaving Hi-Jump" },
		[49030] = { ["segment_no"] = 4, ["name"] = "Business Center Revisit" },
		[49462] = { ["segment_no"] = 4, ["name"] = "Pre-Cathedral" },
		[50030] = { ["segment_no"] = 4, ["name"] = "Cathedral" },
		[50666] = { ["segment_no"] = 4, ["name"] = "Rising Tide" },
		[51477] = { ["segment_no"] = 4, ["name"] = "Bubble Mountain" },
		[53100] = { ["segment_no"] = 4, ["name"] = "Magdollite Tunnel" },
		[53690] = { ["segment_no"] = 4, ["name"] = "Kronic Room" },
		[54369] = { ["segment_no"] = 4, ["name"] = "Lava Dive" },
		[56100] = { ["segment_no"] = 4, ["name"] = "LN Main Hall" },
		[56555] = { ["segment_no"] = 4, ["name"] = "Pre-Pillars" },
		[57130] = { ["segment_no"] = 4, ["name"] = "Green Gate Glitch" },
		[58250] = { ["segment_no"] = 4, ["name"] = "GT Code" },
		-- Lower Norfair
		[60510] = { ["segment_no"] = 5, ["name"] = "Leaving Golden Torizo" },
		[61450] = { ["segment_no"] = 5, ["name"] = "Green Gate Revisit" },
		[62777] = { ["segment_no"] = 5, ["name"] = "LN Main Hall Revisit" },
		[66850] = { ["segment_no"] = 5, ["name"] = "Green Gate Final" },
		[67930] = { ["segment_no"] = 5, ["name"] = "Worst Room in the Game" },
		[68888] = { ["segment_no"] = 5, ["name"] = "Mickey Mouse Missiles" },
		[70530] = { ["segment_no"] = 5, ["name"] = "Amphitheatre" },
		[71323] = { ["segment_no"] = 5, ["name"] = "Kihunter Stairs Down" },
		[72769] = { ["segment_no"] = 5, ["name"] = "Wasteland" },
		[74900] = { ["segment_no"] = 5, ["name"] = "Metal Ninja Pirates" },
		[75700] = { ["segment_no"] = 5, ["name"] = "Plowerhouse" },
		[76500] = { ["segment_no"] = 5, ["name"] = "Ridley" },
		[79400] = { ["segment_no"] = 5, ["name"] = "Leaving Ridley E-Tank" },
		[81050] = { ["segment_no"] = 5, ["name"] = "Reverse Plowerhouse" },
		[81860] = { ["segment_no"] = 5, ["name"] = "Wasteland Revisit" },
		[83000] = { ["segment_no"] = 5, ["name"] = "Kihunter Stairs Up" },
		[84200] = { ["segment_no"] = 5, ["name"] = "Fireflea Room" },
		[86200] = { ["segment_no"] = 5, ["name"] = "Springball Maze" },
		[89500] = { ["segment_no"] = 5, ["name"] = "Three Muskateers" },
		-- Norfair Cleanup and Kraid
		[91200] = { ["segment_no"] = 6, ["name"] = "Single Chamber" },
		[92150] = { ["segment_no"] = 6, ["name"] = "Double Chamber" },
		[94000] = { ["segment_no"] = 6, ["name"] = "Bat Cave" },
		[96000] = { ["segment_no"] = 6, ["name"] = "Bat Cave Revisit" },
		[96400] = { ["segment_no"] = 6, ["name"] = "Bubble Mountain Revisit" },
		[99150] = { ["segment_no"] = 6, ["name"] = "Leaving Norfair Reserve" },
		[99650] = { ["segment_no"] = 6, ["name"] = "Bubble Mountain Final" },
		[102000] = { ["segment_no"] = 6, ["name"] = "Cathedral Revisit" },
		[104150] = { ["segment_no"] = 6, ["name"] = "Ice Gate Room" },
		[106669] = { ["segment_no"] = 6, ["name"] = "Crocomire" },
		[111200] = { ["segment_no"] = 6, ["name"] = "Leaving Crocomire" },
		[113311] = { ["segment_no"] = 6, ["name"] = "Grapple Shaft Down" },
		[116000] = { ["segment_no"] = 6, ["name"] = "Sine Missiles" },
		[118000] = { ["segment_no"] = 6, ["name"] = "Crocomire Revisit" },
		[118930] = { ["segment_no"] = 6, ["name"] = "Croc Escape Super Gate" },
		[120270] = { ["segment_no"] = 6, ["name"] = "Hi-Jump E-Tank Revisit" },
		[121650] = { ["segment_no"] = 6, ["name"] = "Business Center Final" },
		[123000] = { ["segment_no"] = 6, ["name"] = "Kraid Revisit" },
		[123621] = { ["segment_no"] = 6, ["name"] = "Kraid E-Tank" },
		[124850] = { ["segment_no"] = 6, ["name"] = "Kraid Kihunters Final" },
		-- Maridia Pre-Draygon
		[127420] = { ["segment_no"] = 7, ["name"] = "Maridia Tube Revisit" },
		[128650] = { ["segment_no"] = 7, ["name"] = "Fish Tank" },
		[129420] = { ["segment_no"] = 7, ["name"] = "Tatori Room" },
		[131750] = { ["segment_no"] = 7, ["name"] = "Mt Everest and Crab Supers" },
		[133720] = { ["segment_no"] = 7, ["name"] = "Crab Shaft" },
		[135150] = { ["segment_no"] = 7, ["name"] = "Path to Watering Hole" },
		[137600] = { ["segment_no"] = 7, ["name"] = "Beach Exit" },
		[138700] = { ["segment_no"] = 7, ["name"] = "Crab Shaft Revisit" },
		[139888] = { ["segment_no"] = 7, ["name"] = "Botwoon Hallway" },
		[140480] = { ["segment_no"] = 7, ["name"] = "Botwoon" },
		[142250] = { ["segment_no"] = 7, ["name"] = "Halfie Setup" },
		[143169] = { ["segment_no"] = 7, ["name"] = "Precious Room" },
		[144575] = { ["segment_no"] = 7, ["name"] = "Draygon" },
		-- Maridia Post-Draygon
		[147700] = { ["segment_no"] = 8, ["name"] = "Reverse Halfie" },
		[147707] = { ["segment_no"] = 8, ["name"] = "Womple Jump" },
		[148600] = { ["segment_no"] = 8, ["name"] = "Reverse Botwoon E-Tank" },
		[150310] = { ["segment_no"] = 8, ["name"] = "Aqueduct Ammo" },
		[152130] = { ["segment_no"] = 8, ["name"] = "Right Sandpit" },
		[155375] = { ["segment_no"] = 8, ["name"] = "Oasis and Sewer" },
		[156030] = { ["segment_no"] = 8, ["name"] = "Maridia GGG" },
		[159650] = { ["segment_no"] = 8, ["name"] = "Left Sandpit" },
		[163120] = { ["segment_no"] = 8, ["name"] = "Maridia GGG Revisit" },
		[165850] = { ["segment_no"] = 8, ["name"] = "Mt Everest Exit" },
		[167020] = { ["segment_no"] = 8, ["name"] = "Red Brinstar Green Gate" },
		[169030] = { ["segment_no"] = 8, ["name"] = "Leaving Alpha Power Bombs" },
		[169920] = { ["segment_no"] = 8, ["name"] = "Beta Power Bombs" },
		-- Wrecked Ship
		[172500] = { ["segment_no"] = 9, ["name"] = "Crateria Kihunters" },
		[173250] = { ["segment_no"] = 9, ["name"] = "Moat" },
		[174000] = { ["segment_no"] = 9, ["name"] = "Ocean" },
		[174600] = { ["segment_no"] = 9, ["name"] = "Enter Wrecked Ship" },
		[177666] = { ["segment_no"] = 9, ["name"] = "Basement" },
		[178400] = { ["segment_no"] = 9, ["name"] = "Phantoon" },
		[181400] = { ["segment_no"] = 9, ["name"] = "Shaft to Supers" },
		[182369] = { ["segment_no"] = 9, ["name"] = "East Supers" },
		[183766] = { ["segment_no"] = 9, ["name"] = "West Supers" },
		[185400] = { ["segment_no"] = 9, ["name"] = "Sponge Bath" },
		[188100] = { ["segment_no"] = 9, ["name"] = "Leaving WS E-Tank" },
		[189350] = { ["segment_no"] = 9, ["name"] = "Reverse Spiky Room" },
		[190430] = { ["segment_no"] = 9, ["name"] = "Shaft to Attic" },
		[191575] = { ["segment_no"] = 9, ["name"] = "Attic" },
		[192840] = { ["segment_no"] = 9, ["name"] = "Anti-Speedrun Robots" },
		[195000] = { ["segment_no"] = 9, ["name"] = "Attic Revisit" },
		[198690] = { ["segment_no"] = 9, ["name"] = "Pancake Room" },
		[199090] = { ["segment_no"] = 9, ["name"] = "Bowling Spark" },
		[205700] = { ["segment_no"] = 9, ["name"] = "Ocean Revisit" },
		-- Brinstar Cleanup 1
		[208700] = { ["segment_no"] = 10, ["name"] = "Crateria Power Bombs" },
		[210400] = { ["segment_no"] = 10, ["name"] = "Landing Site Revisit" },
		[211800] = { ["segment_no"] = 10, ["name"] = "Gauntlet E-Tank" },
		[213230] = { ["segment_no"] = 10, ["name"] = "Crumble Blocks" },
		[215500] = { ["segment_no"] = 10, ["name"] = "Kago Mushroom Room" },
		[216150] = { ["segment_no"] = 10, ["name"] = "Green Brinstar Revisit" },
		[217540] = { ["segment_no"] = 10, ["name"] = "Brinstar Reserve Tank" },
		[219630] = { ["segment_no"] = 10, ["name"] = "Reverse Mockball" },
		[220700] = { ["segment_no"] = 10, ["name"] = "Green Shaft Descent" },
		[221600] = { ["segment_no"] = 10, ["name"] = "Green Brinstar Beetoms" },
		[222800] = { ["segment_no"] = 10, ["name"] = "Etecoon E-Tank Room" },
		[224280] = { ["segment_no"] = 10, ["name"] = "Etecoon Room" },
		[225500] = { ["segment_no"] = 10, ["name"] = "Green Shaft Final" },
		[226210] = { ["segment_no"] = 10, ["name"] = "Dachora Room Revisit" },
		[226850] = { ["segment_no"] = 10, ["name"] = "Big Pink Revisit" },
		[228360] = { ["segment_no"] = 10, ["name"] = "Mission Impossible" },
		[231750] = { ["segment_no"] = 10, ["name"] = "Leaving Pink E-Tank" },
		[234700] = { ["segment_no"] = 10, ["name"] = "Leaving Spore Spawn Supers" },
		[236780] = { ["segment_no"] = 10, ["name"] = "Waterway E-Tank" },
		-- Brinstar Cleanup 2
		[239035] = { ["segment_no"] = 11, ["name"] = "Green Hills Revisit" },
		[241000] = { ["segment_no"] = 11, ["name"] = "Blue Brinstar Hoppers" },
		[244575] = { ["segment_no"] = 11, ["name"] = "Billy Mays" },
		[247600] = { ["segment_no"] = 11, ["name"] = "Leaving Blue Brinstar" },
		[249150] = { ["segment_no"] = 11, ["name"] = "Pit Room Final (Spark)" },
		[251060] = { ["segment_no"] = 11, ["name"] = "Climb Supers" },
		[252950] = { ["segment_no"] = 11, ["name"] = "To Final Missiles" },
		[254020] = { ["segment_no"] = 11, ["name"] = "Parlor Missiles" },
		[255200] = { ["segment_no"] = 11, ["name"] = "Parlor Again" },
		[255777] = { ["segment_no"] = 11, ["name"] = "Terminator E-tank" },
		-- Tourian
		[261600] = { ["segment_no"] = 12, ["name"] = "Tourian Elevator Room" },
		[261750] = { ["segment_no"] = 12, ["name"] = "Metroids 1" },
		[262400] = { ["segment_no"] = 12, ["name"] = "Metroids 2" },
		[263250] = { ["segment_no"] = 12, ["name"] = "Metroids 3" },
		[263950] = { ["segment_no"] = 12, ["name"] = "Metroids 4" },
		[264675] = { ["segment_no"] = 12, ["name"] = "Giant Hoppers" },
		[265375] = { ["segment_no"] = 12, ["name"] = "Baby Skip" },
		[267730] = { ["segment_no"] = 12, ["name"] = "Gedora Room" },
		[268697] = { ["segment_no"] = 12, ["name"] = "Zeb Skip" },
		[281525] = { ["segment_no"] = 12, ["name"] = "Escape Room 3" },
		[282100] = { ["segment_no"] = 12, ["name"] = "Escape Room 4" },
		[283366] = { ["segment_no"] = 12, ["name"] = "Climb Spark" },
		[284000] = { ["segment_no"] = 12, ["name"] = "Escape Parlor" },
    },
}


--
-- Utility
--

-- orderedPairs {{{

function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end


function __genOrderedIndex( t )
    local orderedIndex = {}
    for key in pairs(t) do
        table.insert( orderedIndex, key )
    end
    table.sort( orderedIndex )
    return orderedIndex
end

function orderedNext(t, state)
    -- Equivalent of the next function, but returns the keys in the alphabetic
    -- order. We use a temporary ordered key table that is stored in the
    -- table being iterated.

    local key = nil
    --print("orderedNext: state = "..tostring(state) )
    if state == nil then
        -- the first time, generate the index
        t.__orderedIndex = __genOrderedIndex( t )
        key = t.__orderedIndex[1]
    else
        -- fetch the next value
        for i = 1,table.getn(t.__orderedIndex) do
            if t.__orderedIndex[i] == state then
                key = t.__orderedIndex[i+1]
            end
        end
    end

    if key then
        return key, t[key]
    end

    -- no more value to return, cleanup
    t.__orderedIndex = nil
    return
end

function orderedPairs(t)
    -- Equivalent of the pairs() function on tables. Allows to iterate
    -- in order
    return orderedNext, t, nil
end
-- }}}

local SLUGS = {}
local function slugify(s)
    local slug = string.gsub(string.gsub(s, "[^ A-Za-z0-9]", ""), "[ ]+", "_"):lower()
    if not SLUGS[slug] then
        SLUGS[slug] = 1
        return slug
    end

    local ret = slug
    local i = 2
    while SLUGS[ret] do
        ret = slug .. '_' .. tostring(i)
        i = i + 1
    end
    SLUGS[ret] = 1
    return ret
end

local function ucfirst(s)
    return s:sub(1,1):upper() .. s:sub(2):lower()
end

local function draw_lines(x, y, L)
    for i, line in ipairs(L) do
        gui.text(x, y + ((i - 1) * 8), line)
    end
end

local function tohex(n, size)
    size = size or 0
    return string.format("$%0" .. tostring(size) .. "X", n)
end

local function call_for_each_bank(address, fn, ...)
    assert(address < 0x7F0000 or address > 0x7FFFFF)
    for i = 0x80, 0xDF do
        fn(bit.lshift(i, 16) + bit.band(address, 0xFFFF), unpack(arg))
    end
    fn(0x7E0000 + address, unpack(arg))
end

-- local debug_file = io.open("debug.txt", "w")

local function debug(...)
    -- print(unpack(arg))
    -- debug_file:write(table.concat(arg, " ") .. "\n")
    -- debug_file:flush()
end


--
-- State
--

local function annotate_address(addr, val)
    if addr < 0x7F0000 or addr > 0x7FFFFF then
        addr = bit.band(addr, 0xFFFF)
    end

    for _, mem in pairs(MEMTRACK) do
        if mem[1] <= addr and (addr < mem[1] + mem[2]) then
            return mem[3]
        end
    end

    return "(" .. tohex(addr, 4) .. ") ??"
end

local function get_current_state()
    local state = {}
    for _, mem in pairs(MEMTRACK) do
        local addr = mem[1]
        local size = mem[2]

        if mem[1] < 0x10000 then
            addr = 0x7E0000 + addr
        end

        if size > 1 then
            assert(bit.band(size, 1) == 0)
            for i_addr = addr, addr + size - 1, 2 do
                state[i_addr] = {2, memory.readwordunsigned(i_addr)}
            end
        else
            if size == 1 then
                state[addr] = {1, memory.readbyte(addr)}
            else
                state[addr] = {2, memory.readwordunsigned(addr)}
            end
        end
    end
    return state
end

local function save_preset(step)
    local current_state = get_current_state()

    print("saving step " .. step['full_slug'])
    preset_output = preset_output .. "\npreset_" .. CAT .. '_' .. step['full_slug'] .. ":\n"

    if last_step then
        preset_output = preset_output .. "    dw #preset_" .. CAT .. '_' .. last_step['full_slug'] .. " ; " .. last_step['full_name'] .. "\n"
    else
        preset_output = preset_output .. "    dw #$0000\n"
    end

    last_step = step

    for addr, size_and_val in orderedPairs(current_state) do
        local size = size_and_val[1]
        local val = size_and_val[2]

        if last_state[addr] ~= val then
            last_state[addr] = val

            preset_output = preset_output ..  "    dl " ..  tohex(addr, 6) .. " : "
            preset_output = preset_output ..  "db " ..  tohex(size, 2) .. " : "
            preset_output = preset_output .. (size == 1 and "db " or "dw ") ..  tohex(val, size == 1 and 2 or 4)
            preset_output = preset_output .. " ; " .. annotate_address(addr, val) .. "\n"
        end
    end

    preset_output = preset_output .. "    dw #$FFFF\n"
    preset_output = preset_output .. ".after\n"
end

local function save_preset_file()
    local file = io.open('presets_data.asm', 'w')
    file:write(preset_output)
    file:close()

    local file = io.open('presets_menu.asm', 'w')

    file:write('PresetsMenu' .. ucfirst(CAT) .. ':\n')
    for _, segment in pairs(SEGMENTS[CAT]) do
        file:write('    dw #presets_goto_' .. CAT .. '_' .. segment['slug'] .. '\n')
    end
    file:write('    dw #$0000\n')
    file:write('    %cm_header("PRESETS FOR ' .. CAT:upper() .. '")\n')
    file:write('\n')

    for _, segment in pairs(SEGMENTS[CAT]) do
        file:write('presets_goto_' .. CAT .. '_' .. segment['slug'] .. ':\n')
        file:write('    %cm_submenu("' .. segment['name'] .. '", #presets_submenu_' .. CAT .. '_' .. segment['slug'] .. ')\n')
        file:write('\n')
    end

    for _, segment in pairs(SEGMENTS[CAT]) do
        file:write('presets_submenu_' .. CAT .. '_' .. segment['slug'] .. ':\n')
        for _, step in pairs(segment['steps']) do
            file:write('    dw #presets_' .. CAT .. '_' .. step['full_slug'] .. '\n')
        end
        file:write('    dw #$0000\n')
        file:write('    %cm_header("' .. segment['name']:upper() .. '")\n')
        file:write('\n')
    end

    for _, segment in pairs(SEGMENTS[CAT]) do
        file:write('; ' .. segment['name'] .. '\n')
        for _, step in pairs(segment['steps']) do
            file:write('presets_' .. CAT .. '_' .. step['full_slug'] .. ':\n')
            file:write('    %cm_preset("' .. step['name'] .. '", #preset_' .. CAT .. '_' .. step['full_slug'] .. ')\n\n')
        end
        file:write("\n")
    end
    file:close()
end

--
-- Main
--

local function tick()
    local frame = emu.framecount()

    local step = STEPS[CAT][frame]
    if step then
        save_preset(step)
        save_preset_file()
    end
end

local function main()
    for _, segment in pairs(SEGMENTS[CAT]) do
        segment['slug'] = slugify(segment['name'])
    end

    for _, step in orderedPairs(STEPS[CAT]) do
        segment = SEGMENTS[CAT][step['segment_no']]
        step['segment'] = segment
        step['slug'] = slugify(step['name'])
        step['full_slug'] = segment['slug'] .. "_" .. step['slug']
        step['full_name'] = segment['name'] .. ": " .. step['name']
        table.insert(segment['steps'], step)
    end

    while true do
        tick()
        snes9x.frameadvance()
    end
end

main()
