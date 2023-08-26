lorom

!FEATURE_SD2SNES ?= 1
!FEATURE_TINYSTATES ?= 0
!FEATURE_DEV ?= 0
!FEATURE_PAL ?= 1
!INFOHUD_ALWAYS_SHOW_X_Y ?= 0
!ORIGINAL_MESSAGE_TEXT ?= 0
!PRESERVE_WRAM_DURING_SPACETIME ?= 1
!RAW_TILE_GRAPHICS ?= 1

!VERSION_MAJOR = 2
!VERSION_MINOR = 5
!VERSION_BUILD = 7
!VERSION_REV_1 = 0
!VERSION_REV_2 = 6

table ../resources/normal.tbl

incsrc macros.asm
incsrc defines.asm

print ""

if !FEATURE_SD2SNES
    print "SD2SNES ENABLED"
    incsrc save.asm
    !FEATURE_TINYSTATES = 0
else
if !FEATURE_TINYSTATES
    print "TINYSTATES ENABLED"
    incsrc tinystates.asm
    !FEATURE_SD2SNES = 1       ; Set this to enable savestate features
else
    print "SD2SNES AND TINYSTATES DISABLED"
endif
endif

incsrc gamemode.asm
incsrc minimap.asm
incsrc menu.asm
incsrc infohud.asm
incsrc rng.asm
incsrc custompresets.asm
incsrc presets.asm
incsrc damage.asm
incsrc physics.asm
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

if !FEATURE_DEV
    incsrc symbols.asm
endif

; Make sure the ROM expands to 4MB
org $FFFFFF : db $FF

