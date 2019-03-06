@echo off
copy /y resources\sm_orig.sfc sm.smc
resources\xkas main.asm sm.smc
move sm.smc "build\SM Saving+InfoHud+Menu+NoFanfare+InputDisplay 1.42.smc"

copy /y resources\sm_orig.sfc sm.smc
resources\xkas main_2p.asm sm.smc
move sm.smc "build\SM Saving+InfoHud+Menu+NoFanfare+InputDisplay 1.42 (Controller 2).smc"

copy /y resources\sm_orig.sfc sm.smc
resources\xkas main_nosave.asm sm.smc
move sm.smc "build\SM InfoHud+Menu+NoFanfare+InputDisplay 1.42.smc"

copy /y resources\sm_orig.sfc sm.smc
resources\xkas main_fanfare.asm sm.smc
move sm.smc "build\SM Saving+InfoHud+Menu+InputDisplay 1.42.smc"

copy /y resources\sm_orig.sfc sm.smc
resources\xkas main_map.asm sm.smc
move sm.smc "build\SM Saving+InfoHud+Menu+NoFanfare+InputDisplay+Minimap 1.42.smc"

copy /y resources\sm_orig.sfc sm.smc
resources\xkas main_map_2p.asm sm.smc
move sm.smc "build\SM Saving+InfoHud+Menu+NoFanfare+InputDisplay+Minimap (Controller 2) 1.42.smc"

copy /y resources\smpal_orig.sfc sm.smc
resources\xkas main_pal.asm sm.smc
move sm.smc "build\SM Saving+InfoHud+Menu+InputDisplay 1.42 (PAL).smc"

copy /y resources\smpal_orig.sfc sm.smc
resources\xkas main_pal_nosave.asm sm.smc
move sm.smc "build\SM InfoHud+Menu+InputDisplay 1.42 (PAL).smc"
