lorom

!FEATURE_SD2SNES ?= 1
!FEATURE_DEV ?= 0
!FEATURE_PAL ?= 1
!ORIGINAL_MESSAGE_TEXT ?= 0
!PRESERVE_WRAM_DURING_SPACETIME ?= 1
!RAW_TILE_GRAPHICS ?= 1

!VERSION_MAJOR = 2
!VERSION_MINOR = 4
!VERSION_BUILD = 2
!VERSION_REV_1 = 0
!VERSION_REV_2 = 0

table ../resources/normal.tbl

incsrc macros.asm
incsrc defines.asm

print ""

if !FEATURE_SD2SNES
    print "SD2SNES ENABLED"
    incsrc save.asm
else
    print "SD2SNES DISABLED"
endif

if !FEATURE_TINYSTATES
    print "TINYSTATES ENABLED"
    incsrc tinystates.asm
    !FEATURE_SD2SNES = 1       ; Set this to enable savestate features
else
    print "TINYSTATES DISABLED"
endif

incsrc gamemode.asm
incsrc minimap.asm
incsrc menu.asm
incsrc infohud.asm
incsrc rng.asm
incsrc custompresets.asm
incsrc presets.asm
incsrc misc.asm
incsrc layout.asm
incsrc cutscenes.asm
incsrc init.asm
incsrc fanfare.asm
incsrc spriteprio.asm
incsrc spritefeat.asm
if !RAW_TILE_GRAPHICS
    incsrc tilegraphics.asm
endif

; Make sure the ROM expands to 4MB
org $FFFFFF : db $FF

