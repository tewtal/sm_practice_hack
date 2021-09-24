@echo off
echo Building SM+SA1
cd resources
python create_sa1rom.py sm_orig.sfc sm_sa1.sfc
copy /y sm_sa1.sfc sm.sfc > NUL:
echo Assembling Practice Hack
..\tools\asar --symbols=wla --symbols-path=..\build\sm.sym ..\src\main.asm sm.sfc
copy /y sm.sfc ..\build\sm.sfc > NUL:
cd ..
echo Done