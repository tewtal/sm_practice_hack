asar 1.81
lorom

!FEATURE_SD2SNES ?= 0
!FEATURE_TINYSTATES ?= 0
!FEATURE_MAPSTATES ?= 0
!FEATURE_DEV ?= 0
!FEATURE_PAL ?= 0
!FEATURE_PRESETS ?= 1
!FEATURE_TALLMENU ?= 0
!FEATURE_VANILLAHUD ?= 0
!INFOHUD_ALWAYS_SHOW_X_Y ?= 0
!ORIGINAL_MESSAGE_TEXT ?= 0
!PRESERVE_WRAM ?= 1
!RAW_TILE_GRAPHICS ?= 1
!ZSNES_SPLASHSCREEN_GRAPHICS ?= 1

!VERSION_MAJOR = 2
!VERSION_MINOR = 7
!VERSION_BUILD = 11
!VERSION_REV   = 30

table ../resources/normal.tbl
print ""

if !FEATURE_PAL
    print "PAL REGION"
else
    print "NTSC REGION"
endif

if !FEATURE_TALLMENU
    print "TALL MENU"
endif

if !FEATURE_VANILLAHUD
    print "VANILLA HUD"
if !INFOHUD_ALWAYS_SHOW_X_Y
    print "ALWAYS SHOW X/Y IGNORED"
endif
elseif !INFOHUD_ALWAYS_SHOW_X_Y
    print "ALWAYS SHOW X/Y"
endif

if !ORIGINAL_MESSAGE_TEXT
    print "PRESERVE FANFARE MESSAGES"
endif

if !PRESERVE_WRAM
else
    print "WRAM NOT PRESERVED DURING SPACETIME OR XRAY"
endif

if !FEATURE_PRESETS
else
    print "PRESETS DISABLED"
    !RAW_TILE_GRAPHICS = 0
endif

if !RAW_TILE_GRAPHICS
elseif !FEATURE_PRESETS
    print "FAST PRESETS DISABLED"
endif

if !ZSNES_SPLASHSCREEN_GRAPHICS
else
    print "ZSNES SPLASHSCREEN GRAPHICS DISABLED"
endif

if !FEATURE_MAPSTATES
    print "MAPSTATES ENABLED"
endif

if !FEATURE_SD2SNES
    print "SD2SNES ENABLED"
if !FEATURE_TINYSTATES
    print "!! TINYSTATES SETTING IGNORED !!"
    !FEATURE_TINYSTATES = 0
endif
    incsrc macros.asm
    incsrc defines.asm
    incsrc freespace.asm
    incsrc save.asm
elseif !FEATURE_TINYSTATES
    print "TINYSTATES ENABLED"
    !FEATURE_SD2SNES = 1       ; Set this to enable savestate features
    incsrc macros.asm
    incsrc defines.asm
    incsrc freespace.asm
    incsrc tinystates.asm
else
    print "SD2SNES AND TINYSTATES DISABLED"
    incsrc macros.asm
    incsrc defines.asm
    incsrc freespace.asm
endif

incsrc minimap.asm
incsrc menu.asm
incsrc gamemode.asm
incsrc roomnames.asm
incsrc demos.asm
incsrc infohud.asm
incsrc enemy_rng.asm
incsrc damage.asm
incsrc physics.asm
incsrc misc.asm
incsrc layout.asm
incsrc cutscenes.asm
incsrc init.asm
incsrc fanfare.asm
incsrc spriteprio.asm
incsrc spritefeat.asm

if !PRESERVE_WRAM
    incsrc preserve_wram.asm
endif

if !FEATURE_PRESETS
    incsrc clearenemies.asm
    incsrc custompresets.asm
    incsrc presets.asm
endif

if !RAW_TILE_GRAPHICS
    incsrc tilegraphics.asm
endif

if !FEATURE_DEV
    incsrc symbols.asm
endif

; Make sure the ROM expands to 4MB
org $FFFFFF : db $FF

%printfreespace()
print "Assembly complete. Total bytes written: ", bytes

