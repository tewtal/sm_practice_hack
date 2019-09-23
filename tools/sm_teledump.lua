local last_state = {} -- holds all state that has been changed up untill last save

local delta_output = "" 
local last_step = nil

local MEMTRACK = {
    { 0x07C3, 0x6, 'GFX Pointers' },
    { 0x07F3, 0x2, 'Music Bank' },
    { 0x07F5, 0x2, 'Music Track' },
    { 0x078B, 0x2, 'Elevator Index' },
    { 0x078D, 0x2, 'DDB' },
    { 0x078F, 0x2, 'DoorOut Index' },
    { 0x079B, 0x2, 'MDB' },
    { 0x079F, 0x2, 'Region' },

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
    { 0x090F, 0x2, 'Screen subpixel X position.' },
    { 0x0911, 0x2, 'Screen X position in pixels' },
    { 0x0913, 0x2, 'Screen subpixel Y position' },
    { 0x0915, 0x2, 'Screen Y position in pixels' },
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

}

local SEGMENTS = {
    { ["name"] = "Bombs", ["slug"] = "bombs", ["steps"] = {} },
    { ["name"] = "Power Bombs", ["slug"] = "pbs", ["steps"] = {} },
    { ["name"] = "Gravity Suit", ["slug"] = "grav", ["steps"] = {} },
    { ["name"] = "Cathedral", ["slug"] = "cath", ["steps"] = {} },
    { ["name"] = "Ridley", ["slug"] = "rid", ["steps"] = {} },
    { ["name"] = "Kraid", ["slug"] = "kraid", ["steps"] = {} },
    { ["name"] = "Draygon", ["slug"] = "dray", ["steps"] = {} },
    { ["name"] = "Golden 4", ["slug"] = "g4", ["steps"] = {} },
    { ["name"] = "Tourian", ["slug"] = "tou", ["steps"] = {} },
}

local STEPS = {
    -- Bombs
    [1501] = { ["segment_no"] = 1, ["name"] = "Ceres elevator", ["slug"] = "elevator" },
    [5280] = { ["segment_no"] = 1, ["name"] = "Ceres Last 3 rooms", ["slug"] = "last_3_rooms" },
    [9200] = { ["segment_no"] = 1, ["name"] = "Ship", ["slug"] = "ship" },
    [9497] = { ["segment_no"] = 1, ["name"] = "Parlor down", ["slug"] = "parlor_down" },
    [12466] = { ["segment_no"] = 1, ["name"] = "Morph", ["slug"] = "morph" },
    [16062] = { ["segment_no"] = 1, ["name"] = "Pit Room", ["slug"] = "pit_room" },
    [16694] = { ["segment_no"] = 1, ["name"] = "Climb", ["slug"] = "climb" },
    [18258] = { ["segment_no"] = 1, ["name"] = "Parlor up", ["slug"] = "parlor_up" },
    [19958] = { ["segment_no"] = 1, ["name"] = "Bomb Torizo", ["slug"] = "bomb_torizo" },
    -- PBs
    [22527] = { ["segment_no"] = 2, ["name"] = "Alcatraz", ["slug"] = "alcatraz" },
    [23146] = { ["segment_no"] = 2, ["name"] = "Terminator", ["slug"] = "terminator" },
    [24193] = { ["segment_no"] = 2, ["name"] = "Pirates Shaft", ["slug"] = "pirates_shaft" },
    [25775] = { ["segment_no"] = 2, ["name"] = "Elevator", ["slug"] = "elevator" },
    [26857] = { ["segment_no"] = 2, ["name"] = "Early Supers", ["slug"] = "early_supers" },
    [28585] = { ["segment_no"] = 2, ["name"] = "Dachora Room", ["slug"] = "dachora_room" },
    [29701] = { ["segment_no"] = 2, ["name"] = "Big Pink", ["slug"] = "big_pink" },
    [32107] = { ["segment_no"] = 2, ["name"] = "Green Hill Zone", ["slug"] = "green_hill_zone" },
    [33851] = { ["segment_no"] = 2, ["name"] = "Red Tower", ["slug"] = "red_tower" },
    [34784] = { ["segment_no"] = 2, ["name"] = "Hellway", ["slug"] = "hellway" },
    [35265] = { ["segment_no"] = 2, ["name"] = "Caterpillar Room down", ["slug"] = "caterpillar_room_down" },
    -- Grav
    [36883] = { ["segment_no"] = 3, ["name"] = "Caterpillar Room up", ["slug"] = "caterpillar_room_up" },
    [39111] = { ["segment_no"] = 3, ["name"] = "Kihunter Room", ["slug"] = "kihunter_room" },
    [40245] = { ["segment_no"] = 3, ["name"] = "Moat", ["slug"] = "moat" },
    [42330] = { ["segment_no"] = 3, ["name"] = "Wrecked Ship Enter", ["slug"] = "wrecked_ship_enter" },
    [43520] = { ["segment_no"] = 3, ["name"] = "Phantoon", ["slug"] = "phantoon" },
    [48225] = { ["segment_no"] = 3, ["name"] = "Wrecked Ship Climb", ["slug"] = "wrecked_ship_climb" },
    [50996] = { ["segment_no"] = 3, ["name"] = "Attic", ["slug"] = "attic" },
    [53119] = { ["segment_no"] = 3, ["name"] = "Bowling Alley farm", ["slug"] = "bowling_alley_farm" },
    [57285] = { ["segment_no"] = 3, ["name"] = "Grav", ["slug"] = "grav" },
    -- Cathedral
    [58777] = { ["segment_no"] = 4, ["name"] = "Kihunter Room", ["slug"] = "kihunter_room" },
    [59709] = { ["segment_no"] = 4, ["name"] = "Caterpillar Room", ["slug"] = "caterpillar_room" },
    [61221] = { ["segment_no"] = 4, ["name"] = "Red Tower", ["slug"] = "red_tower" },
    [62460] = { ["segment_no"] = 4, ["name"] = "Bat Room", ["slug"] = "bat_room" },
    [64934] = { ["segment_no"] = 4, ["name"] = "Glass Tunnel", ["slug"] = "glass_tunnel" },
    [66100] = { ["segment_no"] = 4, ["name"] = "Business Center", ["slug"] = "business_center" },
    [67214] = { ["segment_no"] = 4, ["name"] = "Hi Jump", ["slug"] = "hi_jump" },
    [69710] = { ["segment_no"] = 4, ["name"] = "Business Center climb", ["slug"] = "business_center_climb" },
    [71169] = { ["segment_no"] = 4, ["name"] = "Ice Beam Snake Room", ["slug"] = "ice_beam_snake_room" },
    [73100] = { ["segment_no"] = 4, ["name"] = "Ice Escape", ["slug"] = "ice_escape" },
    [74208] = { ["segment_no"] = 4, ["name"] = "Cathedral Entrance", ["slug"] = "cathedral_entrance" },
    -- Ridley
    [74908] = { ["segment_no"] = 5, ["name"] = "Cathedral", ["slug"] = "cathedral" },
    [76178] = { ["segment_no"] = 5, ["name"] = "Bubble Mountain", ["slug"] = "bubble_mountain" },
    [77945] = { ["segment_no"] = 5, ["name"] = "Bat Cave", ["slug"] = "bat_cave" },
    [80260] = { ["segment_no"] = 5, ["name"] = "Bat Cave revisited", ["slug"] = "bat_cave_revisited" },
    [82762] = { ["segment_no"] = 5, ["name"] = "Single Chamber", ["slug"] = "single_chamber" },
    [83343] = { ["segment_no"] = 5, ["name"] = "Double Chamber", ["slug"] = "double_chamber" },
    [85242] = { ["segment_no"] = 5, ["name"] = "Double Chamber revisited", ["slug"] = "double_chamber_revisited" },
    [86792] = { ["segment_no"] = 5, ["name"] = "Volcano Room", ["slug"] = "kronic_boost_room" },
    [88082] = { ["segment_no"] = 5, ["name"] = "Lavaspark", ["slug"] = "lavaspark" },
    [89060] = { ["segment_no"] = 5, ["name"] = "LN Elevator", ["slug"] = "elevator" },
    [90538] = { ["segment_no"] = 5, ["name"] = "Fast Pillars", ["slug"] = "fast_pillars" },
    [91679] = { ["segment_no"] = 5, ["name"] = "WRITG", ["slug"] = "writg" },
    [92739] = { ["segment_no"] = 5, ["name"] = "Amphitheatre", ["slug"] = "amphitheatre" },
    [94150] = { ["segment_no"] = 5, ["name"] = "Kihunter shaft", ["slug"] = "kihunter_shaft" },
    [94961] = { ["segment_no"] = 5, ["name"] = "Wasteland", ["slug"] = "wasteland" },
    [96756] = { ["segment_no"] = 5, ["name"] = "Metal Pirates", ["slug"] = "metal_pirates" },
    [98280] = { ["segment_no"] = 5, ["name"] = "Ridley Farming Room", ["slug"] = "farming_room" },
    [100442] = { ["segment_no"] = 5, ["name"] = "Ridley", ["slug"] = "ridley" },
    -- Kraid
    [105917] = { ["segment_no"] = 6, ["name"] = "Ridley Farming Room", ["slug"] = "farming_room" },
    [107542] = { ["segment_no"] = 6, ["name"] = "Wasteland", ["slug"] = "wasteland" },
    [108699] = { ["segment_no"] = 6, ["name"] = "Kihunter shaft", ["slug"] = "kihunter_shaft" },
    [110020] = { ["segment_no"] = 6, ["name"] = "Fireflea Room", ["slug"] = "fireflea_room" },
    [111280] = { ["segment_no"] = 6, ["name"] = "Three Muskateers Room", ["slug"] = "three_muskateers_room" },
    [112226] = { ["segment_no"] = 6, ["name"] = "Single Chamber", ["slug"] = "single_chamber" },
    [113678] = { ["segment_no"] = 6, ["name"] = "Bubble Mountain", ["slug"] = "bubble_mountain" },
    [114745] = { ["segment_no"] = 6, ["name"] = "Frog Speedway", ["slug"] = "frog_speedway" },
    [116822] = { ["segment_no"] = 6, ["name"] = "Warehouse Entrance", ["slug"] = "warehouse_entrance" },
    [117063] = { ["segment_no"] = 6, ["name"] = "Zeela Room", ["slug"] = "zeela_room" },
    [118110] = { ["segment_no"] = 6, ["name"] = "Baby Kraid", ["slug"] = "baby_kraid" },
    [118925] = { ["segment_no"] = 6, ["name"] = "Kraid", ["slug"] = "kraid" },
    -- Draygon
    [122558] = { ["segment_no"] = 7, ["name"] = "Baby Kraid", ["slug"] = "baby_kraid" },
    [123896] = { ["segment_no"] = 7, ["name"] = "Warehouse Entrance", ["slug"] = "warehouse_entrance" },
    [124625] = { ["segment_no"] = 7, ["name"] = "Glass Tunnel", ["slug"] = "glass_tunnel" },
    [125698] = { ["segment_no"] = 7, ["name"] = "Fish Tank", ["slug"] = "fish_tank" },
    [126840] = { ["segment_no"] = 7, ["name"] = "Crab Shaft", ["slug"] = "crab_shaft" },
    [128032] = { ["segment_no"] = 7, ["name"] = "Botwoon Hallway", ["slug"] = "botwoon_hallway" },
    [128624] = { ["segment_no"] = 7, ["name"] = "Botwoon", ["slug"] = "botwoon" },
    [130882] = { ["segment_no"] = 7, ["name"] = "Halfie Climb", ["slug"] = "halfie_climb" },
    [133633] = { ["segment_no"] = 7, ["name"] = "Draygon", ["slug"] = "draygon" },
    -- Golden Four
    [137206] = { ["segment_no"] = 8, ["name"] = "Precious Room", ["slug"] = "precious_room" },
    [138261] = { ["segment_no"] = 8, ["name"] = "Halfie Climb", ["slug"] = "halfie_climb" },
    [139318] = { ["segment_no"] = 8, ["name"] = "Botwoon Hallway", ["slug"] = "botwoon_hallway" },
    [140401] = { ["segment_no"] = 8, ["name"] = "Crab Shaft", ["slug"] = "crab_shaft" },
    [140934] = { ["segment_no"] = 8, ["name"] = "Mt Everest", ["slug"] = "mt_everest" },
    [142279] = { ["segment_no"] = 8, ["name"] = "Caterpillar Room", ["slug"] = "caterpillar_room" },
    [144090] = { ["segment_no"] = 8, ["name"] = "Kihunter Room", ["slug"] = "kihunter_room" },
    [145017] = { ["segment_no"] = 8, ["name"] = "Parlor", ["slug"] = "parlor" },
    [145530] = { ["segment_no"] = 8, ["name"] = "Terminator", ["slug"] = "terminator" },
    [146715] = { ["segment_no"] = 8, ["name"] = "Golden Four", ["slug"] = "golden_four" },
    -- Tourian
    [150256] = { ["segment_no"] = 9, ["name"] = "Enter Tourian", ["slug"] = "enter_tourian" },
    [151618] = { ["segment_no"] = 9, ["name"] = "M1", ["slug"] = "m1" },
    [152430] = { ["segment_no"] = 9, ["name"] = "M2", ["slug"] = "m2" },
    [152908] = { ["segment_no"] = 9, ["name"] = "M3", ["slug"] = "m3" },
    [153822] = { ["segment_no"] = 9, ["name"] = "M4", ["slug"] = "m4" },
    [155354] = { ["segment_no"] = 9, ["name"] = "Baby Skip", ["slug"] = "baby_skip" },
    [158334] = { ["segment_no"] = 9, ["name"] = "Tourian Eye Door", ["slug"] = "tourian_eye_door" },
    [174836] = { ["segment_no"] = 9, ["name"] = "Escape Room 3", ["slug"] = "escape_room_3" },
    [177286] = { ["segment_no"] = 9, ["name"] = "Escape Parlor", ["slug"] = "escape_parlor" },
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

local function save_delta(step)
	local current_state = get_current_state()

	print("saving step " .. step['full_slug'])
    delta_output = delta_output .. "\ndelta_" .. step['full_slug'] .. ":\n"

    if last_step then
        delta_output = delta_output .. "    dw #delta_" .. last_step['full_slug'] .. " ; " .. last_step['full_name'] .. "\n"
	else
		delta_output = delta_output .. "     dw #$0000\n"
    end

    last_step = step

    for addr, size_and_val in orderedPairs(current_state) do
        local size = size_and_val[1]
        local val = size_and_val[2]

        if last_state[addr] ~= val then
            last_state[addr] = val

            delta_output = delta_output ..  "    dl " ..  tohex(addr, 6) .. " : "
            delta_output = delta_output ..  "db " ..  tohex(size, 2) .. " : "
            delta_output = delta_output .. (size == 1 and "db " or "dw ") ..  tohex(val, size == 1 and 2 or 4)
            delta_output = delta_output .. " ; " .. annotate_address(addr, val) .. "\n"
        end
    end

    delta_output = delta_output .. "    dw #$FFFF\n"
    delta_output = delta_output .. ".after\n"
end

local function save_delta_file()
    local file = io.open('delta_data.asm', 'w')
    file:write(delta_output)
    file:close()

    local file = io.open('delta_menu.asm', 'w')
    file:write('PresetsMenu:\n')
    for _, segment in pairs(SEGMENTS) do
        file:write('    dw #presets_goto_' .. segment['slug'] .. '\n')
    end
    file:write('    dw #$0000\n')
    file:write('    %cm_header("PRESETS")\n')
    file:write('\n')

    for _, segment in pairs(SEGMENTS) do
        file:write('presets_goto_' .. segment['slug'] .. ':\n')
        file:write('    %cm_submenu("' .. segment['name'] .. '", #presets_submenu_' .. segment['slug'] .. ')\n')
        file:write('\n')
    end

    for _, segment in pairs(SEGMENTS) do
        file:write('presets_submenu_' .. segment['slug'] .. ':\n')
        for _, step in pairs(segment['steps']) do
            file:write('    dw #presets_' .. step['full_slug'] .. '\n')
        end
        file:write('    dw #$0000\n')
        file:write('    %cm_header("' .. segment['name']:upper() .. '")\n')
		file:write('\n')
    end

    for _, segment in pairs(SEGMENTS) do
        file:write('; ' .. segment['name'] .. '\n')
        for _, step in pairs(segment['steps']) do
            file:write('presets_' .. step['full_slug'] .. ':\n')
            file:write('    %cm_delta("' .. step['name'] .. '", #delta_' .. step['full_slug'] .. ')\n\n')
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

    local step = STEPS[frame]
    if step then
        save_delta(step)
        save_delta_file()
    end
end

local function main()
    for _, step in orderedPairs(STEPS) do
        segment = SEGMENTS[step['segment_no']]
        step['segment'] = segment
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
