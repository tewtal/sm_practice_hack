main:
	cp resources/sm_orig.smc build/sm.smc && cd src && xkas main.asm ../build/sm.smc && cd - && mv build/sm.smc "build/SM Saving+InfoHud+Menu+NoFanfare+InputDisplay 1.42.smc"

all: main
