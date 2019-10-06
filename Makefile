# cp resources/sm_orig.sfc build/sm.sfc && cd src && xkas main.asm ../build/sm.sfc && cd - && mv build/sm.sfc build/smhack20.sfc
smhack:
	cp resources/sm_orig.sfc build/smhack20.sfc && cd src && asar -nocheck -DFEATURE_SD2SNES=0 main.asm ../build/smhack20.sfc && cd -

sd2snes:
	cp resources/sm_orig.sfc build/smhack20_sd2snes.sfc && cd src && asar -nocheck -DFEATURE_SD2SNES=1 main.asm ../build/smhack20_sd2snes.sfc && cd -

all: sd2snes smhack
