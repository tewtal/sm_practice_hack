#!/bin/bash

# Return an error if any command fails
success=0
trap success=1 ERR

echo "Building SM NTSC Dev Practice Hack"
python3 names/create_names.py ../src/roomnames.asm default_names.txt custom_names.txt
cd resources
python3 create_ram_symbols.py ../src/defines.asm ../src/symbols.asm
python3 create_dummies.py 00.sfc ff.sfc

echo "Building tinystates Dev version"
PRERELEASE=$(git rev-parse --short HEAD)
cp *.sfc ../build
../tools/asar --no-title-check --symbols=wla --symbols-path=../build/Debugging_Symbols.sym -DFEATURE_SD2SNES=0 -DFEATURE_DEV=1 -DFEATURE_PAL=0 -DFEATURE_TINYSTATES=1 -DPRERELEASE=$PRERELEASE "$@" ../src/main.asm ../build/00.sfc
../tools/asar --no-title-check --symbols=wla --symbols-path=../build/Debugging_Symbols.sym -DFEATURE_SD2SNES=0 -DFEATURE_DEV=1 -DFEATURE_PAL=0 -DFEATURE_TINYSTATES=1 -DPRERELEASE=$PRERELEASE "$@" ../src/main.asm ../build/ff.sfc
python3 sort_debug_symbols.py ../build/Debugging_Symbols.sym ../build/Debugging_Sorted.sym ../build/Debugging_Combined.sym
python3 create_ips.py ../build/00.sfc ../build/ff.sfc ../build/smhack20_tinystates_dev.ips

rm 00.sfc ff.sfc ../build/00.sfc ../build/ff.sfc
cd ..

exit $success
