# Super Metroid Practice Hack

This page hosts the source material for the Super Metroid Practice Hack. It is intended for users that wish to contribute to the project, customize their own Practice Hacks, adapt it for SM romhacks, or just to see how it works. Visit https://smpractice.speedga.me for details on patching your SM rom with the latest version of InfoHUD.

## Getting Started:

1. Download asar from https://github.com/RPGHacker/asar and place it in the \tools\ folder.
2. Download and install Python 3 from https://python.org. Windows users will need to set the PATH environmental variable to point to their Python installation folder.
3. Run build.bat to create IPS patch files.
4. Locate the patch files in \build\.

## Which rom should I use?

The build script will create three IPS patch files for the practice hack. The patch that features "sd2snes" in the filename will have the built-in savestate feature enabled. This is only intended for use with the SD2SNES cartridge and will likely cause crashes if used with Everdrives and most emulators (including Virtual Console). The Super NT is compatible, although it may require a firmware update. The patch that features "tinystates" in the filename has a modified version of the savestate feature with wider compatibility with emulators and Everdrives. Virtual Console players (including SNES Classic) will need to use the third option without built-in savestates.

You will need an IPS patcher utility, such as [Lunar IPS](http://fusoya.eludevisibility.org/lips/) or [Floating IPS](https://www.romhacking.net/utilities/1040/), to apply the patch to your vanilla SM rom. Regardless of which tool you use, the process is the same: you select the .IPS file and a copy of your SM ROM file, and it will replace the ROM with a patched practice hack ROM. Then simply load up the patched ROM in your emulator or flash cart of choice. If all goes well, you're done and can delete the .IPS file if you like.
