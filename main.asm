lorom

table normal.tbl

; --- Macros and stuff ---
incsrc macros.asm ; Useful macros
incsrc defines.asm

; --- Savestate code ---
incsrc save_cfg.asm ; Savestate code configuration
incsrc save.asm ; Savestate code

; --- Game specific code below here ---
incsrc infohud_cfg.asm ; InfoHud configuration
incsrc infohud.asm ; Super Metroid InfoHUD / Practice features
incsrc newmenu.asm ; Super Metroid Menu
incsrc rng.asm
incsrc presets.asm
incsrc misc.asm
incsrc init.asm

incsrc nofanfare.asm ; Disable item fanfares
