sa1rom
!FEATURE_SD2SNES ?= 1
!FEATURE_PAL ?= 0

table ../resources/normal.tbl

incsrc macros.asm
incsrc defines.asm

; SA-1 Base support routines
incsrc sa1rom.asm

; Change SA-1 mapping to the one defined in sa1rom.asm
sa1rom 2,3,0,1
incsrc sa1.asm


incsrc gamemode.asm

if !FEATURE_SD2SNES
    print "SD2SNES ENABLED"
    incsrc save.asm
endif
incsrc minimap.asm
incsrc infohud.asm
incsrc menu.asm
incsrc rng.asm
incsrc presets.asm
incsrc misc.asm
incsrc init.asm
incsrc fanfare.asm
incsrc spriteprio.asm
incsrc spritefeat.asm

