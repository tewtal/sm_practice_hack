asar 1.81
lorom

!FEATURE_SD2SNES ?= 0
!FEATURE_TINYSTATES ?= 0
!FEATURE_MAPSTATES ?= 0
!FEATURE_DEV ?= 0
!FEATURE_PAL ?= 0
!FEATURE_PRESETS ?= 1
!FEATURE_TALLMENU ?= 0
!FEATURE_TAS_RECORD ?= 0
!FEATURE_TAS_PLAYBACK ?= 0
!FEATURE_VANILLAHUD ?= 0
!INFOHUD_ALWAYS_SHOW_X_Y ?= 0
!ORIGINAL_MESSAGE_TEXT ?= 0
!PRESERVE_WRAM ?= 1
!RAW_TILE_GRAPHICS ?= 1
!SPRITE_FEATURES ?= 1
!ZSNES_SPLASHSCREEN_GRAPHICS ?= 1

!VERSION_MAJOR = 2
!VERSION_MINOR = 8
!VERSION_BUILD = 0
!VERSION_REV   = 2

table ../resources/normal.tbl
print ""

if !FEATURE_PAL
    print "PAL REGION"
else
    print "NTSC REGION"
endif

if !FEATURE_TAS_RECORD
    print "TAS RECORD"
    !FEATURE_TINYSTATES = 1
if !FEATURE_TAS_PLAYBACK
    print "!! TAS PLAYBACK IGNORED !!"
    !FEATURE_TAS_PLAYBACK = 0
endif
elseif !FEATURE_TAS_PLAYBACK
    print "TAS PLAYBACK"
    !FEATURE_TAS_VERIFY = 1
    !FEATURE_TINYSTATES = 1
    !FEATURE_PRESETS = 0
    !PRESERVE_WRAM = 0
    !SPRITE_FEATURES = 0
    !ZSNES_SPLASHSCREEN_GRAPHICS = 0
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

if !SPRITE_FEATURES
else
    print "SPRITE FEATURES DISABLED"
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

if !SPRITE_FEATURES
    incsrc spritefeat.asm
    incsrc spriteprio.asm
endif

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

if !FEATURE_DEV || !FEATURE_TAS_RECORD || !FEATURE_TAS_PLAYBACK
    incsrc symbols.asm
endif

if !FEATURE_TAS_PLAYBACK
    incsrc ../tas_playback/tasplayback.asm
else
    ; Make sure the ROM expands to 4MB
    org $FFFFFF : db $FF
endif

%printfreespace()
print "Assembly complete. Total bytes written: ", bytes

