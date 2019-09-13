local last_state = {} -- holds all state that has been changed up untill last save

local delta_output = "" 
local last_step = nil

local MEMTRACK = {
    { 0x078D, 0x2, 'DDB' },
    { 0x078F, 0x2, 'DoorOut Index' },
    { 0x079B, 0x2, 'MDB' },
    { 0x0911, 0x2, 'Camera X' },
    { 0x0915, 0x2, 'Camera Y' },
    { 0x09A2, 0x2, 'Items' },
    { 0x09A4, 0x2, 'Items' },
    { 0x09A6, 0x2, 'Beams' },
    { 0x09A8, 0x2, 'Beams' },
    { 0x09C2, 0x2, 'Health' },
    { 0x09C4, 0x2, 'Max helath' },
    { 0x09C6, 0x2, 'Missiles' },
    { 0x09C8, 0x2, 'Max missiles' },
    { 0x09CA, 0x2, 'Supers' },
    { 0x09CC, 0x2, 'Max supers' },
    { 0x09CE, 0x2, 'Pbs' },
    { 0x09D0, 0x2, 'Max pbs' },
    { 0x09D4, 0x2, 'Max reserves' },
    { 0x09D6, 0x2, 'Reserves' },
    { 0x0A68, 0x2, 'Flash suit' },
    { 0x0A76, 0x2, 'Hyper beam' },
    { 0x0AF6, 0x2, 'Samus X' },
    { 0x0AFA, 0x2, 'Samus Y' },
    { 0x0B3F, 0x2, 'Blue suit' },
    { 0xD800, 0x100, 'Events, Doors, Items, Bosses' },
}

local SEGMENTS = {
    { ["name"] = "Ceres", ["name"] = "Ceres", ["slug"] = "ceres", ["steps"] = {} },
    { ["name"] = "Bombs", ["name"] = "Bombs", ["slug"] = "bombs", ["steps"] = {} },
}

local STEPS = {
    -- Ceres
    [1] = { ["segment_no"] = 1, ["name"] = "Elevator", ["slug"] = "elevator" },
    [2708] = { ["segment_no"] = 1, ["name"] = "Ridley", ["slug"] = "ridley" },
    [5286] = { ["segment_no"] = 1, ["name"] = "Last 3 screens", ["slug"] = "last_3_screens" },

    -- Bombs
    [9956] = { ["segment_no"] = 2, ["name"] = "Ship", ["slug"] = "ship" },
    [13670] = { ["segment_no"] = 2, ["name"] = "Morph", ["slug"] = "morph" },
    [17706] = { ["segment_no"] = 2, ["name"] = "Pit backtrack", ["slug"] = "pit_backtrack" },
    [18571] = { ["segment_no"] = 2, ["name"] = "Climb", ["slug"] = "climb" },
    [21201] = { ["segment_no"] = 2, ["name"] = "Parlor", ["slug"] = "parlor" },
    [24112] = { ["segment_no"] = 2, ["name"] = "Bomb Torizo", ["slug"] = "bomb_torizo" },
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
