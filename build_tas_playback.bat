@echo off
cls

echo Building SM NTSC Practice Hack for TAS Playback
if not exist build mkdir build
python layout\create_layout.py portals.txt layoutmenutemplate.asm ..\src\layoutmenu.asm ..\src\layoutportaltables.asm
python names\create_names.py ..\src\roomnames.asm default_names.txt -labels-only
python tas_playback\create_tasplayback_files.py
cd resources
python create_ram_symbols.py ..\src\defines.asm ..\src\symbols.asm
python create_dummies.py 00.sfc ff.sfc

if exist ..\build\print_pc.log del ..\build\print_pc.log
if exist ..\build\smhack20_tas_playback.ips del ..\build\smhack20_tas_playback.ips
copy 00.sfc ..\build
copy ff.sfc ..\build
..\tools\asar --no-title-check -wnoW1009 --symbols=wla --symbols-path=..\build\Debugging_Symbols.sym -DFEATURE_TAS_PLAYBACK=1 ..\src\main.asm ..\build\00.sfc > ..\build\print_pc.log 2>&1
if ERRORLEVEL 1 goto fail_build_tas_playback
..\tools\asar --no-title-check -wnoW1009 -DFEATURE_TAS_PLAYBACK=1 ..\src\main.asm ..\build\ff.sfc
python dos_to_unix.py ..\build\Debugging_Symbols.sym
python sort_debug_symbols.py ..\build\Debugging_Symbols.sym ..\build\Debugging_Sorted.sym ..\build\Debugging_Combined.sym
python create_ips.py ..\build\00.sfc ..\build\ff.sfc ..\build\smhack20_tas_playback.ips
goto end_build_tas_playback

:fail_build_tas_playback
type ..\build\print_pc.log
:end_build_tas_playback

del 00.sfc ff.sfc ..\build\00.sfc ..\build\ff.sfc
cd ..

if exist build\smhack20_tas_playback.sfc del build\smhack20_tas_playback.sfc
if not exist build\smhack20_tas_playback.ips goto end_patch_tas_playback
copy "build\Super Metroid NTSC.sfc" build\smhack20_tas_playback.sfc
"tools\Lunar IPS.exe" -ApplyIPS build\smhack20_tas_playback.ips build\smhack20_tas_playback.sfc
:end_patch_tas_playback

