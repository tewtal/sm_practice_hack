smhack:
	cp resources/sm_orig.sfc build/smhack20.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=0 -DCATEGORY=0 main.asm ../build/smhack20.sfc && cd -

smhackrbo:
	cp resources/sm_orig.sfc build/smhack20_rbo.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=0 -DCATEGORY=1 main.asm ../build/smhack20_rbo.sfc && cd -

sd2snes:
	cp resources/sm_orig.sfc build/smhack20_sd2snes.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=1 -DCATEGORY=0 main.asm ../build/smhack20_sd2snes.sfc && cd -

sd2snesrbo:
	cp resources/sm_orig.sfc build/smhack20_sd2snes_rbo.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=1 -DCATEGORY=1 main.asm ../build/smhack20_sd2snes_rbo.sfc && cd -

all: sd2snes smhack sd2snesrbo smhackrbo
