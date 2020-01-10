smhack:
	cp resources/sm_orig.sfc build/smhack20.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=0 -DCATEGORY=0 main.asm ../build/smhack20.sfc && cd -

smhackrbo:
	cp resources/sm_orig.sfc build/smhack20_rbo.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=0 -DCATEGORY=1 main.asm ../build/smhack20_rbo.sfc && cd -

smhackkpdr25:
	cp resources/sm_orig.sfc build/smhack20_kpdr25.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=0 -DCATEGORY=2 main.asm ../build/smhack20_kpdr25.sfc && cd -

smhackgtclassic:
	cp resources/sm_orig.sfc build/smhack20_gtclassic.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=0 -DCATEGORY=3 main.asm ../build/smhack20_gtclassic.sfc && cd -

smhackkpdr21:
	cp resources/sm_orig.sfc build/smhack20_kpdr21.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=0 -DCATEGORY=4 main.asm ../build/smhack20_kpdr21.sfc && cd -

sd2snes:
	cp resources/sm_orig.sfc build/smhack20_sd2snes.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=1 -DCATEGORY=0 main.asm ../build/smhack20_sd2snes.sfc && cd -

sd2snesrbo:
	cp resources/sm_orig.sfc build/smhack20_sd2snes_rbo.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=1 -DCATEGORY=1 main.asm ../build/smhack20_sd2snes_rbo.sfc && cd -

sd2sneskpdr25:
	cp resources/sm_orig.sfc build/smhack20_sd2snes_kpdr25.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=1 -DCATEGORY=2 main.asm ../build/smhack20_sd2snes_kpdr25.sfc && cd -

sd2snesgtclassic:
	cp resources/sm_orig.sfc build/smhack20_sd2snes_gtclassic.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=1 -DCATEGORY=3 main.asm ../build/smhack20_sd2snes_gtclassic.sfc && cd -

sd2sneskpdr21:
	cp resources/sm_orig.sfc build/smhack20_sd2snes_kpdr21.sfc && cd src && asar --no-title-check -DFEATURE_SD2SNES=1 -DCATEGORY=4 main.asm ../build/smhack20_sd2snes_kpdr21.sfc && cd -

all: sd2snes smhack sd2snesrbo smhackrbo sd2sneskpdr25 smhackkpdr25 sd2snesgtclassic smhackgtclassic smhackkpdr21 sd2sneskpdr21
