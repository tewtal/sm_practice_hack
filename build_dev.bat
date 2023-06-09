@echo off

echo Building SM NTSC Dev Practice Hack
python names\create_names.py ..\src\roomnames.asm default_names.txt custom_names.txt
cd resources
python create_dummies.py 00.sfc ff.sfc

echo Building SD2SNES Dev version
copy *.sfc ..\build
..\tools\asar --no-title-check --symbols=wla --symbols-path=..\build\Debugging_Symbols.sym -DFEATURE_SD2SNES=1 -DFEATURE_DEV=1 -DFEATURE_PAL=0 -DFEATURE_TINYSTATES=0 ..\src\main.asm ..\build\00.sfc
..\tools\asar --no-title-check --symbols=wla --symbols-path=..\build\Debugging_Symbols.sym -DFEATURE_SD2SNES=1 -DFEATURE_DEV=1 -DFEATURE_PAL=0 -DFEATURE_TINYSTATES=0 ..\src\main.asm ..\build\ff.sfc
python create_ips.py ..\build\00.sfc ..\build\ff.sfc ..\build\smhack20_sd2snes.ips

del 00.sfc ff.sfc ..\build\00.sfc ..\build\ff.sfc
cd ..
PAUSE