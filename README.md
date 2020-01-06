# Super Metroid Practice Hack

This page hosts the source material for the Super Metroid Practice Hack. It is intended for users that wish to contribute to the project, customize their own Practice Hacks, adapt it for SM romhacks, or just to see how it works. Visit https://smpractice.speedga.me for details on patching your SM rom with the latest version of InfoHUD.

## Getting Started:

1. Copy your SM rom (NtSC only) into the \resources\ folder.
2. Rename the rom to `sm_orig.sfc`.
3. Download asar from https://github.com/RPGHacker/asar and place it in the \tools\ folder.
3. Run build.bat to apply the changes.
4. Locate the modified roms in \build\.

## Which rom should I use?

The build script will create several versions of the practice hack for various speedrun categories. Roms that feature "sd2snes" in the filename have the built-in savestate feature enabled. This is only intended for use with the SD2SNES cartridge and will likely cause crashes if used with Everdrives and most emulators (including Virtual Console). The Super NT is compatible, although it may require a firmware update.

## Known Issues:

* PAL region roms are no longer supported. Use the source from July 1st, 2018 instead and comment out `rng.asm`.
