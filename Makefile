main:
	cp resources/sm_orig.smc sm.smc && xkas main.asm sm.smc && mv sm.smc "build/SM Saving+InfoHud+Menu+NoFanfare+InputDisplay 1.42.smc"

main_2p:
	cp resources/sm_orig.smc sm.smc && xkas main_2p.asm sm.smc && mv sm.smc "build/SM Saving+InfoHud+Menu+NoFanfare+InputDisplay 1.42 (Controller 2).smc"

main_nosave:
	cp resources/sm_orig.smc sm.smc && xkas main_nosave.asm sm.smc && mv sm.smc "build/SM InfoHud+Menu+NoFanfare+InputDisplay 1.42.smc"

main_fanfare:
	cp resources/sm_orig.smc sm.smc && xkas main_fanfare.asm sm.smc && mv sm.smc "build/SM Saving+InfoHud+Menu+InputDisplay 1.42.smc"

main_map:
	cp resources/sm_orig.smc sm.smc && xkas main_map.asm sm.smc && mv sm.smc "build/SM Saving+InfoHud+Menu+NoFanfare+InputDisplay+Minimap 1.42.smc"

main_map_2p:
	cp resources/sm_orig.smc sm.smc && xkas main_map_2p.asm sm.smc && mv sm.smc "build/SM Saving+InfoHud+Menu+NoFanfare+InputDisplay+Minimap (Controller 2) 1.42.smc"

main_pal:
	cp resources/sm_orig.smc sm.smc && xkas main_pal.asm sm.smc && mv sm.smc "build/SM Saving+InfoHud+Menu+InputDisplay 1.42 (PAL).smc"

main_pal_nosave:
	cp resources/sm_orig.smc sm.smc && xkas main_pal_nosave.asm sm.smc && mv sm.smc "build/SM InfoHud+Menu+InputDisplay 1.42 (PAL).smc"

all: main main_2p main_nosave main_fanfare main_pal main_pal_nosave main_map main_map_2p

clean:
	rm -f build/*.smc sm.smc
