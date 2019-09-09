lorom

; --- Macros and stuff ---
incsrc macros.asm ; Useful macros

; --- Savestate code ---
incsrc save_cfg_2p.asm ; Savestate code configuration
incsrc save.asm ; Savestate code

; --- Game specific code below here ---
incsrc infohud_cfg.asm ; InfoHud configuration
incsrc infohud.asm ; Super Metroid InfoHUD / Practice features
incsrc menu_cfg.asm ; Super Metroid Menu Configuration
incsrc menu.asm ; Super Metroid Menu
incsrc rng.asm ; Phantoon RNG manip
incsrc misc.asm

incsrc nofanfare.asm ; Disable item fanfares
