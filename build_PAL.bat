@echo off

echo Building SM PAL Practice Hack
cd resources
python create_dummies.py 00.sfc ff.sfc

echo Building saveless version
copy *.sfc ..\build
..\tools\asar --no-title-check -DFEATURE_SD2SNES=0 -DFEATURE_PAL=1 ..\src\main.asm ..\build\00.sfc
..\tools\asar --no-title-check -DFEATURE_SD2SNES=0 -DFEATURE_PAL=1 ..\src\main.asm ..\build\ff.sfc
python create_ips.py ..\build\00.sfc ..\build\ff.sfc ..\build\smpalhack20.ips

echo Building SD2SNES version
copy *.sfc ..\build
..\tools\asar --no-title-check -DFEATURE_SD2SNES=1 -DFEATURE_PAL=1 ..\src\main.asm ..\build\00.sfc
..\tools\asar --no-title-check -DFEATURE_SD2SNES=1 -DFEATURE_PAL=1 ..\src\main.asm ..\build\ff.sfc
python create_ips.py ..\build\00.sfc ..\build\ff.sfc ..\build\smpalhack20_sd2snes.ips

del 00.sfc ff.sfc ..\build\00.sfc ..\build\ff.sfc
cd ..
