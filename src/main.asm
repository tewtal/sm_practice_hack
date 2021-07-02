lorom

!FEATURE_SD2SNES ?= 1

table ../resources/normal.tbl

incsrc macros.asm
incsrc defines.asm

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

; Make sure the ROM expands to 4MB
org $ffffff : db $ff
