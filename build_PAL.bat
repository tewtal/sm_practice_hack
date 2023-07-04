@echo off

echo Building SM PAL Practice Hack
python names\create_names.py ..\src\roomnames.asm default_names.txt custom_names.txt
cd resources
python create_ram_symbols.py ..\src\defines.asm ..\src\symbols.asm
python create_dummies.py 00.sfc ff.sfc

echo Building saveless version
copy *.sfc ..\build
..\tools\asar --no-title-check --symbols=wla --symbols-path=..\build\symbols.sym -DFEATURE_SD2SNES=0 -DFEATURE_PAL=1 -DFEATURE_TINYSTATES=0 ..\src\main.asm ..\build\00.sfc
..\tools\asar --no-title-check --symbols=wla --symbols-path=..\build\symbols.sym -DFEATURE_SD2SNES=0 -DFEATURE_PAL=1 -DFEATURE_TINYSTATES=0 ..\src\main.asm ..\build\ff.sfc
python sort_debug_symbols.py ..\build\symbols.sym x x
python create_ips.py ..\build\00.sfc ..\build\ff.sfc ..\build\smpalhack20.ips

echo Building SD2SNES version
copy *.sfc ..\build
..\tools\asar --no-title-check --symbols=wla --symbols-path=..\build\symbols.sym -DFEATURE_SD2SNES=1 -DFEATURE_PAL=1 -DFEATURE_TINYSTATES=0 ..\src\main.asm ..\build\00.sfc
..\tools\asar --no-title-check --symbols=wla --symbols-path=..\build\symbols.sym -DFEATURE_SD2SNES=1 -DFEATURE_PAL=1 -DFEATURE_TINYSTATES=0 ..\src\main.asm ..\build\ff.sfc
python sort_debug_symbols.py ..\build\symbols.sym x x
python create_ips.py ..\build\00.sfc ..\build\ff.sfc ..\build\smpalhack20_sd2snes.ips

echo Building TinyStates version
copy *.sfc ..\build
..\tools\asar --no-title-check --symbols=wla --symbols-path=..\build\symbols.sym -DFEATURE_SD2SNES=0 -DFEATURE_PAL=1 -DFEATURE_TINYSTATES=1 ..\src\main.asm ..\build\00.sfc
..\tools\asar --no-title-check --symbols=wla --symbols-path=..\build\symbols.sym -DFEATURE_SD2SNES=0 -DFEATURE_PAL=1 -DFEATURE_TINYSTATES=1 ..\src\main.asm ..\build\ff.sfc
python sort_debug_symbols.py ..\build\symbols.sym x x
python create_ips.py ..\build\00.sfc ..\build\ff.sfc ..\build\smpalhack20_tinystates.ips

del 00.sfc ff.sfc ..\build\00.sfc ..\build\ff.sfc ..\build\symbols.sym
cd ..
