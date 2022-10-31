@echo off

echo Building SM NTSC Dev Practice Hack
cd resources
python create_dummies.py 00.sfc ff.sfc

echo Building SD2SNES Dev version
copy *.sfc ..\build
..\tools\asar --no-title-check --symbols=wla --symbols-path=..\build\Debug_Symbols_By_Name.sym -DFEATURE_SD2SNES=1 -DFEATURE_DEV=1 -DFEATURE_PAL=0 -DFEATURE_TINYSTATES=0 ..\src\main.asm ..\build\00.sfc
..\tools\asar --no-title-check --symbols=wla --symbols-path=..\build\Debug_Symbols_By_Name.sym -DFEATURE_SD2SNES=1 -DFEATURE_DEV=1 -DFEATURE_PAL=0 -DFEATURE_TINYSTATES=0 ..\src\main.asm ..\build\ff.sfc
python create_ips.py ..\build\00.sfc ..\build\ff.sfc ..\build\smhack20_sd2snes.ips

python sort_debug_symbols.py ..\build\Debug_Symbols_By_Name.sym ..\build\Debug_Symbols_By_Address.sym

del 00.sfc ff.sfc ..\build\00.sfc ..\build\ff.sfc
cd ..
