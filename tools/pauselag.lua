local F = 0


memory.registerexecute(0x82E78C, function ()
    F = emu.framecount()
end)
memory.registerexecute(0x82E7D2, function ()
    print(emu.framecount() - F)
end)

while true do
    snes9x.frameadvance()
end
