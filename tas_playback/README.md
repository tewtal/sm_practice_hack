# Recording a Theory TAS with the Super Metroid Practice Hack

I had planned to make a video on the topic. Unfortunately the video just isn't that great. I don't normally record (most of) my monitor and it didn't go well; the video is fairly blurry. There's also some audio clipping. Thus I am going to document the process here, and instead of saying "Here's the video and supplemental documentation", I'm saying "Here's the documentation, you probably don't want the video". All that said, I'll still leave a [link to the video](https://youtu.be/LjH8q-AIuQ8) here. It's unlisted but I don't mind if it gets shared.

I did make a [video on door transitions](https://youtu.be/0g1R3CXzyac) that I would recommend. Since saving and loading/reloading usually happens in a door transition, it's more likely we need to make adjustments there. It helps to know the "shape" of a door transition (i.e. the places where it lags and doesn't lag and the places where it rolls or stops rolling RNG).

## Requirements

- Ability to play the full-featured practice hack. These days most emulator platforms support this, along with SD2SNES / FXPAK of course. If you are using an Everdrive or on SNES Classic or Virtual Console, then you likely aren't using the full-featured practice hack there isn't enough SRAM available for the recording. It might not work with older versions of snes9x but you could update to a more recent version that is supported.

- A TAS emulator, or emulator that supports predetermined controller inputs for a Tool Assisted Speedrun. I am using BizHawk with BSNES v115+ for this purpose, but you could use a different emulator. If you have never used a TAS emulator before (or you have but not to make a TAS), then there will be a larger learning curve to this process, but you also get the benefit of learning how to make a Super Metroid TAS.

- Ability to build the practice hack. Don't worry, it's not that hard to do. See the main page readme for instructions.

- You should be based on practice hack version 2.8.1.1 or later. If you have this README file then you should be good.

- If playing on console, ability to transfer save files back and forth with your computer. If you have SD2SNES / FXPAK, you could transfer via the microSD card, but I highly recommend using a USB connection instead for this purpose, since you will want to transfer save files often. This is also useful if you play randomizers since it is easy to transfer a rom from your computer to the console. I am using SNI with Super Nintendo File Manager to do this.

## Pros

Compared to the traditional method of recording gameplay footage and splicing the best rooms together, the advantages of recording a theory TAS this way are:

- Compensate for low-fidelity video recording. In my case, I trust my capture to record at 60 fps but not 60.09 fps, so stitching it together and keeping frame-accuracy would be difficult.

- No video editing or splicing with traditional video editing tools is required.

- Any extra or unrealistic lag caused by saving or loading during a door transition with a music change will automatically be removed in the TAS playback. Granted this can still cause problems in the record/playback process, so it is still recommended to avoid these odd transitions where practical regardless of how you are making the theory TAS. Easier said than done.

- If you change resources in an earlier room, those changes naturally flow through to later rooms. For example if you were making an RBO TAS and you managed to save five extra frames in an earlier room, and that translated to a little extra health, that health difference would automatically propogate to later rooms. It's worth noting this is usually an advantage, but if the resource change affects drop tables then this could have a negative impact on RNG. In this case if the extra health resulted in being full on health in a later room, where previously you hadn't been full, that's likely to affect the drops you get in that later room.

- If you want to offload the splicing to someone else, you only need to share your save files and any progress you have on the TAS. All of this data is small; perhaps a handful of MB combined. By comparison offloading a video recording session could be more difficult to transfer due to being many GB of data.

- Having a TAS of your speedrun could help you lab out strats. Let's say you have a tight jump in a room. You could try jumping earlier or later to see how many frames of leeway you had. You should factor in how you got to this jump; for example if you landed on the platform earlier then you might need to consider what happens if you landed closer or further from the platform edge. In the best case scenario you might find an improvement. For example if you downgrabbbed the platform (meaning you always start at the platform edge), you might find running with no armpumps gives a three-frame window to jump at the end, but throwing in exactly one armpump or exactly two armpumps gives you a four-frame window, which you could implement into your RTA runs and enjoy more consistency on that jump.

## Cons

There are quite a few caveats and downsides to this approach:

- It's unintuitive. If it were just the issue of reading instructions to build the TAS playback, that's manageable and in my opinion would be faster than the video editing method. The trouble is what happens when there is a problem or when the TAS playback gets out of sync. Sometimes it's an easy fix, but it can be frustrating when it's not an easy fix. By contrast, the video editing problem is intuitive. The video editor might not be intuitive, but the problem itself and what needs to be done is usually clear: Stitch my best room A and room B together. There could be some difficulty in determining which frames to keep or remove to have an accurate transition, but once you work through that, you can apply what you have learned to all the other rooms in the game. It's the same problem on repeat. Building the TAS playback is not straight-forward like that.

- When recording gameplay, you cannot use RNG control (except Phantoon first round fast/mid/slow). This is because RNG control ignores the real RNG value, but when you play it back in the TAS, it's not going to know where you used RNG control, so the playback will use the real RNG value. Fortunately the Phantoon first round fast/mid/slow is based on the frame counter whereas everything else in the fight uses the traditional RNG value, so it is possible to make Phantoon first round a fast without disrupting the rest of the fight.

- There is a limit to how many RNG values we can store, which means there's an overall limit to the length of the run. I'll cover this in more detail later, but an 80 minute run is expected to fit, and if there are a lot of item fanfares then you can push this over 90 minutes.

- There is a limit to how much you can record at a time. The SRAM can hold a bit over nine minutes of gameplay, which is divided into two sides. Ideally we pull a side at a time, so every 4.5 minutes. This shouldn't be a problem; in fact I recommend pulling saves more often whether you are doing this method or the traditional method of recording a theory TAS. If you accidentally save at a bad time or with a bad entry into the next room, you could rollback to a prior backup save, but only if you regularly collected backups.

- It works best if you are recording start to finish. You can go back to earlier rooms and insert an updated room if you want, but doing so is relatively more work whereas if you pull an entire side at a time and are bringing in 4.5 minutes of gameplay at once, that will be more efficient. In fact if you are constantly bouncing around room and don't plan to do a theory TAS in any consistent order, then this method of making a theory TAS probably won't work for you.

- The TAS playback does not support category presets (we need the space for RNG values). It does support teleport, so for example if you want to make a theory TAS of Lower Norfair, you could have it teleport to the LN Elevator, then use the equipment menu to give yourself the appropriate resources, and then the theory TAS can proceed from there. Just don't expect to be able to jump to a specific preset and start the TAS that way.

- The start of the TAS is a little more effort (even if just starting the game at Ceres normally). It's not that much extra, but just unfortunate that bringing in a side at a time is most efficient, but at the beginning you have your title screen inputs and your Ceres playthrough, with neither of those being a full side of 4.5 minutes, so it makes getting started a little trickier.

- TAS playback might only happen at 60 fps instead of 60.09, depending on your emulator. When I use BizHawk it claims to be playing back at 60 fps and that's good enough for me, but a true video recording of gameplay could get you a better framerate.

- There will be lag differences. Even if using the same emulator for recording and playback, there could be occasional lag differences since the ROMs are different and the act of recording is a bit different from a playback. If you are recording on console, expect more differences to appear wherever there is lag. Most lag differences aren't that hard to fix, but I've noticed door transitions with music changes can be difficult because depending on where your save was in the door transition, the lag you get in recording could be unrealistic (usually larger than it should be) and this results in a large difference in the recorded lag versus the playback lag. Larger differences are more difficult to correct.

- There could be room time differences, also because of lag. Most often room times will match, either because there was no lag or you still get the same room time after making a correction. In fact I recommend writing down your room times and using that as an indicator of whether or not the TAS playback is in sync with what you recorded. However, sometimes everything is lining up and the room looks correct, but the room time is different than what you recorded. The result is still an accurate representation of your movement; the theory TAS is still valid. Nevertheless if the specific individual room times are very important to you, and there's any lag in the rooms you are recording, then this method of making a theory TAS may not work for you.

## Preparation

See requirements section. If using BizHawk, I am using version 2.9.1 with BSNESv115+, and in the TAStudio I have the Follow Cursor box checked and other boxes not checked, and then under Config menu I have Autosave turned off. The TAStudio settings are less important in this situation though. Normally if rebuilding the prac hack you should have autosave off or you will have a rough time. However in this case the only thing we are changing are read-only values, so it's less of an issue having autosave on (but I would still turn it off).

Note: Once you start, you should stick with the same prac hack version throughout. Savestates made with older prac hack versions may not work with newer prac hack versions; in fact they are not expected to work. Save settings made with older prac hack versions should carry forward, but not savestates.

## Recording

Recording requires you to build the practice hack with the FEATURE_TAS_RECORD turned on. This is done automatically by the build_tas_record.bat script, so on Windows you can open a command-line (or PowerShell) at the sm_practice_hack directory and run that script. It may complain that it cannot find the "Super Metroid NTSC.sfc" file in the build directory; if so make a copy of your legally-obtained Super Metroid NTSC ROM at the build folder location. Once built, you should find the smhack20_tas_record.sfc file in your build directory. Copy this to your console or emulator for playing/recording.

### How do I enable/disable recording?

By default, it is recording, even when it can't show that it is recording. When you boot up and you get the "1994" intro screens, it is recording. When on the in-game menu to set up your control scheme and start game, it is recording that too. You don't have to use this recording later, but it is doing it. Of course it also records during gameplay, including when pausing in-game.

It is not recording when on the prac hack menu (technically it is recording but it is constantly resetting its recording position so it keeps overwriting itself), so this is the one way you can disable recording (aside from turning off the console/emulator or stop playing Super Metroid).

### Is there a recording limit?

Yes, the recording is split into side A and side B, with each side having room for 16384 frames (~4.5 minutes). Of course reloading would also reload our recording position, so if you mess up a room and reload, the messed up room would be overwritten by your later, better room execution.

During gameplay on the InfoHUD you can see which side is currently recording. When the end of a side is reached, it automatically flips to the next side. The side also flips when we "start gameplay". This is typically when Ceres starts or when Zebes starts, although using the prac hack menu to teleport would do it as well. In a typical full gameplay run, this would mean recording starts with side A where you are entering your control scheme and starting the game, then side B would have Ceres, then we'd flip back to side A for the start of Zebes gameplay, and from there it would flip every ~4.5 minutes or so.

That's the simple explanation but it may help to know the details:

- Demos also count as starting gameplay, so you should never let a demo play. The demo timer defaults to 9999 frames (~2.5 minutes) to help prevent this from happening. [Side Note: My earlier builds did not do this, and you can see demos playing in my unlisted video while I was talking, and it is the reason I had problems later in that video]

- The side indicator doesn't update in real time; if a side flips mid-room then you would find out when you reach the end of the room or after a fanfare.

- On each door transition, the room ID is also saved. This isn't a frame in itself, but it does take up one of the 16384 places for frame data (so effectively we record a bit less than 16384 frames at a time)

- On each fanfare, and assuming fanfare music is turned off when recording, a fanfare entry is also saved. Again this isn't a frame in itself, but since turning off fanfare music reduces the fanfare by 328 frames, this one entry is taking the place of those 328 frames.

- If you enter the prac hack menu, there will be some remnant of the prac hack menu inputs being made, but nothing you do on the prac hack menu itself will be recorded since we are constantly overwriting our inputs when the prac hack menu is open. This is done so you have a safe place to pause recording if you want to take a break.

### When happens if I try to use two save states or swap save states?

If you're doing that through the prac hack then it is not an option. Even though full savestates build is required for TAS recording, and that build typically supports saving two separate smaller savestates, the TAS record doesn't support that. In fact TAS record is using one smaller savestate, and it's using the other space to put all the recording data.

For those interested in the math, full savestates SRAM is 256K, so we have 128K for one smaller savestate and 128K for TAS recording. We split that into two 64K sides, and we claim to support 16K (16384) frames, so we can save 4 bytes per frame. Each byte is 8 bits, so 32 bits per frame. We want to save the RNG value (16 bits), the controller input (12 bits), and the frame counter (16 bits, although we really only need 7 bits of precision). While 16+12+7=35 > 32, there's some tricks we can do with the controller input. For example if we see the controller input didn't change since last time, we only need 8 bits to communicate that. We can set all four dpad bits (L+R+U+D), and use this as an indicator that this is not a real controller input. This is also how a lag frame is recorded and how the room ID and fanfare are recorded, and in those cases the RNG value is not needed so we can use those to store room ID or fanfare type. Thus when saving data, we either save 16 bits RNG + 12 bits controller input + 4 bits frame counter, or 16 bits RNG (or Room ID or fanfare ID) + 4 bits (L+R+U+D) + 4 bits event + 8 bits frame counter. The event could be lag frame or room change or fanfare or simply that the controller input did not change. Since the frame counter is always incrementing, we can use the 8-bit frame counter value we get on some frames to infer the correct value on the frames we only stored 4-bit frame counter.

### Any other recording quicks?

For those used to playing with full savestates, you might notice some differences when saving and reloading. The most notable is saving in the room of a major item you are collecting; the most likely use case you will encounter is saving while coming down the morph room elevator. In that case, the first time you collect morph it will be there, but every time after the item will not appear. It is just a visual glitch though; you can still grab the item and walljump checking it still works and everything. It is just a little weird doing the walljump check apparently against air, but it does still work. Perhaps in the future this glitch will be addressed.

### Don't forget to write down your room times

While not required, I highly recommend writing down the room times for each room. This is one of the indicators we can use to see if the TAS playback lines up with what you recorded. There are other indicators, and occasionally the lag will end up different in the playback in emulation compared to the recording on console (one of the cons of this recording/playback method of creating a theory TAS). That said, a mismatched room time could be a leading indicator that the playback is slightly off; it may make the next room a bit off as well. Sometimes adding or remove a frame during door transitions can correct the room time, and if that happens it is probably the right thing to do. If you don't have the expected room times written down, then you won't know about the mismatch.

## Transferring save data

When you have finished recording a side, you're ready to pull save data off of your SNES. If the side flips mid-room then you should finish the room properly so that the room won't change. This way when we're ready to pull the next side in the future, the room data should fit together since it's two parts of the same room execution.

If pulling from console, I use SNI and Super Nintendo File Manager. Typically that opens to the root folder where the ROMs are, but for save data we need to go into the sd2snes folder and then into the saves folder. Look for the smhack20_tas_record.srm file and copy this to the tas_playback folder on your computer. This is where you built the prac hack, so find your sm_practice_hack folder where you ran the build_tas_record.bat file, and you will see a tas_playback folder. That's where you should copy the smhack20_tas_record.srm file.

### Regular backups recommended

I back up my .srm files much more often than just when the side flips. Any time I think I've done a difficult room well (which is most rooms, welcome to Super Metroid!), I make a backup. I then will rename the .srm file, typically just appending the room time to the filename. I like making backups in case I create a bad save. Perhaps my entry into the next room is scuffed (wrong pose or wrong ammo selected). Perhaps I saved when I meant to reload. While mistakes like this could cost me an extra room or two to redo, it's worth it if it means my recorded data will remain one continuous 4.5 minute playthrough.

Another nice thing about backups is in case the console save data gets wiped during a reset. This was an occasional problem for me with the regular prac hack so I expect it could happen for TAS recording as well. I have a new process for turning off the console; I now hold the reset button until the FxPak Pro resets to the SD2SNES menu, and only then release reset and turn off console. I haven't lost data yet with this approach, but I haven't been doing it long enough to know if it is foolproof.

### What if I have no suitable backup?

You can always start a new save. You could even use a preset to jump to or near the next room. The issue is going to be using the newly recorded data. When you record an entire side at a time, you can import it all at once and simply append it all to the end of your previous playback data. However if you can't continue your previous save, you might have to pull whatever data is good from that save, delete the part that isn't good, then pull in data from your new save. The new save will inevitably have a part at the beginning you don't want where you load up a preset or did a teleport or whatever, so that needs to get deleted out as well. Most of the data will have room markers that will help with finding the data you want versus the data you need to remove, but it's still a little tedious, and also the TAS playback controller inputs can't have room markers in them so you have to be more careful when copying and pasting those inputs into BizHawk or your TAS emulator of choice.

## Starting the TAS playback

Unfortunately starting the TAS playback is a little more complicated than continuing the TAS playback once you've started it. The following steps are going to focus on continuing the TAS playback, but here are the additional things to take into account when starting the TAS playback:

- If you want to capture your inputs to enter the control scheme and Start Game, those will be recorded on side A, and we will only need the ctrl.txt file (the inputs copied to BizHawk). However the prac hack is unable to begin recording immediately. I recommend adding 258 frames in front of the inputs you copy into BizHawk, but you may need more or fewer. Also we must consider side A is ~4.5 minutes long; much longer than your Start Game sequence. You should delete all inputs after the Start Game button press.

- If you want to capture Ceres, that will be recorded on side B. Recording does not start immediately after the Start Game button press. I recommend adding 94 frames in front of the inputs you copy in to BizHawk, but you may need more or fewer. Also since your Ceres recording should be less than 4.5 minutes, you will need to delete the excess inputs and data. I would delete all inputs and data after the last frame of "gameplay" (last frame that the InfoHUD could be updated before the leaving Ceres cutscene begins). You can change inputs during the fadeout in BizHawk to help find this point.

- Once you get the Zebes, and assuming you did Ceres first, then Zebes will start on side A (if you skip Ceres then Zebes may start on side B). From here you can pull in data 4.5 minutes at a time. However we still need to account for recording not starting immediately. If you skipped Ceres then we might only need a small number of frames added to BizHawk (I would try 94 frames but it could be more or fewer). However if you're coming from Ceres, the cutscenes are quite long. I recommend adding 2069 frames in BizHawk, but you may need more or fewer.

## Extracting data and inputs for TAS playback

There are two python scripts for parsing the recorded data, one for side A and one for side B. In either case, open a command-line (or PowerShell) at the tas_playback directory where your .srm file is located. Run this command for the appropriate side (replace X with A or B):

python3 extract_sideX_tas_record_from_sram.py smhack20_tas_record.srm

There is an optional number parameter. If using BizHawk and you know where the TAS inputs should start, you can place a number here. For example if the first line should be frame 12345:

python3 extract_sideX_tas_record_from_sram.py smhack20_tas_record.srm 12345

Either way, this will create a set of files:

- sideX_smhack20_tas_record.srm_all.txt: This is an all-encompassing file primarily used for debugging. It will have all applicable data for each frame (except the extra 328 frames for fanfares) in addition to room and fanfare markers.

- sideX_smhack20_tas_record.srm_ctrl.txt: These are the controller inputs we will bring into BizHawk. It will have inputs for all frames (including the extra 328 frames for fanfares). It will not have room or fanfare markers, or any comments; this is raw input data intended to be copy and pasted directly into BizHawk.

- sideX_smhack20_tas_record.srm_rng.txt: These are the RNG values for each non-lag frame (whether counted towards IGT or not).

- sideX_smhack20_tas_record.srm_time.txt: These are the frame counter values for each non-lag frame (whether counted towards IGT or not).

- sideX_smhack20_tas_record.srm_verify.txt: These are the controller inputs for each non-lag frame (whether counted towards IGT or not).

### Why are the inputs listed twice?

Along with the RNG and frame counter values, the expected controller inputs are also built into the TAS playback ROM. This allows the ROM to cross-check the expected inputs against the BizHawk TAStudio inputs. Whenever the inputs do not match during gameplay (when the InfoHUD can be updated), one or two yellow morph indicators will appear. You see two indicators on frames where there is a mismatch, and one indicator on frames where the inputs match but a previous frame mismatched. These indicators are reset on each door transition.

While this feels (and is) redundant, it's the best way to account for lag differences. Keep in mind if the inputs don't line up, that means the RNG and frame counter values also aren't lining up, so correcting the input discrepancy should also restore any favorable RNG that your room execution relied on. Also whenever there is a mismatch, sometimes the room execution itself fails (for example Samus doesn't jump or take some action at the correct time). The easiest way to test adjustments is edit inputs in BizHawk, usually by adding or removing frames. If we hard-coded the inputs into the ROM and ignored BizHawk inputs, it would take this adjustment method away. So we still want inputs to come from BizHawk, but we also want to verify correctness so we can line up the RNG and frame counter values.

### Where do the RNG/time/verify values go?

Within the tas_playback folder (likely at the bottom) you should find tasplayback_rng.asm, tasplayback_time.asm, and tasplayback_verify.asm. These assembly files can be opened in a text editor. Initially the files are mostly empty with just Ceres and Zebes labels. Simply copy and paste in the data accordingly. Note that these three files should always be the same length, so for example if tasplayback_rng.asm ends up with 8765 lines, then the other two files should also be 8765 lines in length.

### What about the other two files all and ctrl?

The all file is just for debugging, so no copy and paste from that file. For the ctrl file, we want to copy the whole file. Then in BizHawk, go to the end of your current TAS inputs (specifically the first line past the end of your previous inputs). Right-click and select Paste Insert. Then save and close BizHawk; do not play. We still need to rebuild the TAS playback ROM before we can resume the playback.

### Anything else I should know about the extraction?

There is one modification the extraction makes. If it detects the default save or load controller shortcut combination (select+Y+L or select+Y+R), it will remove the Y. The reason this is done is to prevent a save or load from happening during TAS playback. While the inputs made during a save or load are removed from the recording, that doesn't help if you had the inputs held longer than the save or load operation took. Since that's typically only a tenth of a second, it's easy to do.

To better explain that, let's say while recording and during a door transition you saved state and held the inputs for a dozen frames (0.2 seconds). The TAS record ROM will recognize the save controller shortcut and save, and it would not record inputs during this time (including the initial input to save). Afterwards recording resumes but you still have the inputs held. The TAS record ROM won't save again because you didn't change your inputs. However since those are being recorded, now the TAS playback would see those inputs and it would attempt to save (or at the very least process the controller shortcut). We don't want the TAS playback to have any blank or stalled frames because it was processing controller shortcuts and decided to skip gameplay. Thus we remove the Y from the controller input.

## Building the TAS playback ROM

This is similar to building the TAS record ROM, except FEATURE_TAS_PLAYBACK is turned on. This is done automatically by the build_tas_playback.bat script, so on Windows you can open a command-line (or PowerShell) at the sm_practice_hack directory and run that script. Once built, you should find the smhack20_tas_playback.sfc file in your build directory. Copy this to your BizHawk roms folder (or wherever you need to copy it so that your TAS emulator can find it). We are now ready to open BizHawk and TAStudio and play it back.

### Is it possible to have too much data?

Yes, although if your run is under an hour long then you don't need to worry about it. If your run is so long that we cannot fit all the RNG and frame counter data, then the build will fail, but your run would need to be at least 80 minutes long for this to happen.

Now if your run is long (about an hour or longer) but the build is successful, it is possible that some of the earlier controller input verification values are overwritten by RNG and frame counter data. If you are importing your TAS roughly from beginning to end, you may not notice because the in the beginning your ROM is still small enough and all values are present. Then later on you lose the earlier controller values, but the later ones are still present so you can still import values and do playback for the later stages with no loss of functionality. It's only if you redo a full playthrough start to finish that you would notice the yellow morph indicator appearing because the earlier controller values don't match (because they aren't actually controller values anymore). This can be disabled by finding the main.asm file in the src directory and changing !FEATURE_TAS_VERIFY from 1 to 0.

For those interested in the math on where these thresholds are, we have 30 banks of ROM available with each bank holding 32K bytes, so we have 960K bytes. For each non-lag frame, we need two bytes for an RNG value, one byte for frame counter value, and two bytes for controller input verification, so we can hold data for 960K / 5 = 192K non-lag frames, or roughly 54.6 minutes. Now when we're talking non-lag frames, this does include frames where IGT (In-Game Time) is not counted. If your run is 54 minutes IGT it will take significantly more frames of data. However if your run is 54 minutes RTA, it's not going to require 54 minutes worth of data. Each door transition is guaranteed to have some lag, in addition to normal lag encountered during gameplay, and each fanfare is almost entirely lag. I expect any sub-hour run to fit within the 54.6 minutes of data.

Continuing the math for the longer runs, once we go past the 54.6 minute limit, we start overwriting controller input data. In theory if we're willing to overwrite all of that data, then we only need three bytes per non-lag frame, so our total allowed length is 960K / 3 = 320K non-lag frames, or roughly 91 minutes. In practice we would not want to overwrite our most recent controller data, and in fact it might not even build properly. With controller inputs normally getting 12 out of the 30 banks, and if we assume 9 of those banks can be overwritten, in addition to the 18 banks we already gave to RNG and frame counter data, that gives us 27 banks * 32K / 3 = 288K non-lag frames, or almost 82 minutes of non-lag frames available.

## Detecting issues during TAS playback

As mentioned in the cons, we should expect some lag differences and thus the TAS playback may get out of sync (inputs being made at the wrong time relative to where Samus is). We will need to make adjustments to compensate, but first we should know what to look for. Here are the discrepancies to look for during TAS playback:

- Room execution not correct (i.e. the obvious issues; Samus not doing what she should).

- Room times not matching.

- The yellow morph indicators. See the earlier section "Why are the inputs listed twice?" for more information.

## Resolving the differences

TBD

