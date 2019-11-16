cp resources/sm_orig.sfc build/smhack20.sfc && cd src && ..\tools\asar --no-title-check -DFEATURE_SD2SNES=0 -DCATEGORY=0 main.asm ../build/smhack20.sfc && cd ..

cp resources/sm_orig.sfc build/smhack20_rbo.sfc && cd src && ..\tools\asar --no-title-check -DFEATURE_SD2SNES=0 -DCATEGORY=1 main.asm ../build/smhack20_rbo.sfc && cd ..

cp resources/sm_orig.sfc build/smhack20_sd2snes.sfc && cd src && ..\tools\asar --no-title-check -DFEATURE_SD2SNES=1 -DCATEGORY=0 main.asm ../build/smhack20_sd2snes.sfc && cd ..

cp resources/sm_orig.sfc build/smhack20_sd2snes_rbo.sfc && cd src && ..\tools\asar --no-title-check -DFEATURE_SD2SNES=1 -DCATEGORY=1 main.asm ../build/smhack20_sd2snes_rbo.sfc && cd ..
