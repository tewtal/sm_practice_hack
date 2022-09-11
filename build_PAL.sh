#!/bin/bash

echo "Building SM PAL Practice Hack"
cd resources
python3 create_dummies.py 00.sfc ff.sfc

# Return an error if any command fails.
success=0
trap success=1 ERR

echo "Building saveless version"
cp *.sfc ../build
../tools/asar --no-title-check -DFEATURE_SD2SNES=0 -DFEATURE_PAL=1 -DFEATURE_TINYSTATES=0 "$@" ../src/main.asm ../build/00.sfc
../tools/asar --no-title-check -DFEATURE_SD2SNES=0 -DFEATURE_PAL=1 -DFEATURE_TINYSTATES=0 "$@" ../src/main.asm ../build/ff.sfc
python3 create_ips.py ../build/00.sfc ../build/ff.sfc ../build/smpalhack20.ips

echo "Building SD2SNES version"
cp *.sfc ../build
../tools/asar --no-title-check -DFEATURE_SD2SNES=1 -DFEATURE_PAL=1 -DFEATURE_TINYSTATES=0 "$@" ../src/main.asm ../build/00.sfc
../tools/asar --no-title-check -DFEATURE_SD2SNES=1 -DFEATURE_PAL=1 -DFEATURE_TINYSTATES=0 "$@" ../src/main.asm ../build/ff.sfc
python3 create_ips.py ../build/00.sfc ../build/ff.sfc ../build/smpalhack20_sd2snes.ips

echo "Building TinyStates version"
cp *.sfc ../build
../tools/asar --no-title-check -DFEATURE_SD2SNES=0 -DFEATURE_PAL=1 -DFEATURE_TINYSTATES=1 "$@" ../src/main.asm ../build/00.sfc
../tools/asar --no-title-check -DFEATURE_SD2SNES=0 -DFEATURE_PAL=1 -DFEATURE_TINYSTATES=1 "$@" ../src/main.asm ../build/ff.sfc
python3 create_ips.py ../build/00.sfc ../build/ff.sfc ../build/smpalhack20_tinystates.ips

rm 00.sfc ff.sfc ../build/00.sfc ../build/ff.sfc
cd ..

exit $success
