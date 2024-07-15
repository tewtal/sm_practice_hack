asar 1.81
lorom

!FEATURE_SD2SNES ?= 1
!FEATURE_TINYSTATES ?= 0
!FEATURE_DEV ?= 0
!FEATURE_PAL ?= 0
!INFOHUD_ALWAYS_SHOW_X_Y ?= 0
!ORIGINAL_MESSAGE_TEXT ?= 0
!PRESERVE_WRAM_DURING_SPACETIME ?= 1
!RAW_TILE_GRAPHICS ?= 1

!VERSION_MAJOR = 2
!VERSION_MINOR = 6
!VERSION_BUILD = 2
!VERSION_REV   = 1

table ../resources/normal.tbl
print ""

if !FEATURE_SD2SNES
    print "SD2SNES ENABLED"
    !FEATURE_TINYSTATES = 0
    incsrc macros.asm
    incsrc defines.asm
    incsrc save.asm
else
if !FEATURE_TINYSTATES
    print "TINYSTATES ENABLED"
    !FEATURE_SD2SNES = 1       ; Set this to enable savestate features
    incsrc macros.asm
    incsrc defines.asm
    incsrc tinystates.asm
else
    print "SD2SNES AND TINYSTATES DISABLED"
    incsrc macros.asm
    incsrc defines.asm
endif
endif

incsrc gamemode.asm
incsrc minimap.asm
incsrc menu.asm
incsrc roomnames.asm
incsrc clearenemies.asm
incsrc demos.asm
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

