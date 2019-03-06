# sm_practice_hack
Super Metroid Practice Hack

## Getting Started:

1. Copy your SM rom(s) into the \resources\ folder.
2. Rename the roms. NTSC should be named `sm_orig.sfc` while PAL should be named `smpal_orig.sfc`.
3. Run build.bat to apply the changes.
4. Locate the modified roms in \build\.


## Which rom should I use?

The build script will create several versions of the practice hack for various platforms and use cases. Some options will be present in all versions, such as InfoHUD, Menu, and InputDisplay. Use the following guide to choose a rom with the options that are right for you.

**Saving** - This option adds the savestate feature to the practice hack. It is designed specifically for SD2SNES, and will likely cause a crash if used in an emulator. It can also be used with the Super NT, although it may require a firmware update.

**Saving (Controller 2)** - This option moves the save and load button combos of the savestate feature to the player 2 controller.

**NoFanfare** - This option removes the item fanfare music and reduces the text box timer to approximately 71 frames.

**Minimap** - This option leaves the minimap intact at the expense of most of the timers at the top-right of the HUD. Intended for practicing the 100% Map Completion category.

**PAL** - As opposed to NTSC, which is the default. The PAL version runs at 50Hz and was originally released in regions such as Europe and Australia. PAL is slower for almost every category, so most runners will want to avoid these roms.


## Known Issues:

* The counter for game time in the current room will erroneously pause in some situations where Samus is unable to move. Examples include time spent in the InfoHUD menu and being grabbed by the bowling chozo or Ridley during the death animation. This does not affect overall game time displayed under Grapple and Xray.
* [PAL ONLY] The shinespark timer will not expire after pressing down while at "blue speed". It will only be reset by activating the spark.
