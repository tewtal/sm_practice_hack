
; ---------------
; Clear Enemies
; (autogenerated)
; ---------------

%startfree(E5)
ClearEnemiesTable:

if !FEATURE_PAL
org $E5F3B7
else
org $E5F3AF
endif
dw $0001  ; BOYON      (boyon, bouncing gooball)

if !FEATURE_PAL
org $E5F3C7
else
org $E5F3BF
endif
dw $0001  ; STOKE      (mini-Crocomire)

if !FEATURE_PAL
org $E5F3D7
else
org $E5F3CF
endif
dw $0001  ; kame is Japanese for turtle)

if !FEATURE_PAL
org $E5F3E7
else
org $E5F3DF
endif
dw $0001  ;            (mini-tatori)

if !FEATURE_PAL
org $E5F3F7
else
org $E5F3EF
endif
dw $0001  ; PUYO       (puyo, thin hopping blobs)

if !FEATURE_PAL
org $E5F407
else
org $E5F3FF
endif
dw $0001  ; saboten is Japanese for cactus)

if !FEATURE_PAL
org $E5F417
else
org $E5F40F
endif
dw $0001  ; toge is Japanese for thorn)

if !FEATURE_PAL
org $E5F427
else
org $E5F41F
endif
dw $0000  ;            (gunship top)

if !FEATURE_PAL
org $E5F437
else
org $E5F42F
endif
dw $0000  ;            (gunship bottom / entrance pad)

if !FEATURE_PAL
org $E5F447
else
org $E5F43F
endif
dw $0001  ; MERO       (mellow, pre-Bomb Torizo fly)

if !FEATURE_PAL
org $E5F457
else
org $E5F44F
endif
dw $0001  ; MELLA      (mella, under ice beam fly)

if !FEATURE_PAL
org $E5F467
else
org $E5F45F
endif
dw $0001  ; MEMU       (memu, pre-spring ball fly)

if !FEATURE_PAL
org $E5F477
else
org $E5F46F
endif
dw $0001  ; MULTI      (multiviola, Norfair erratic fireball)

if !FEATURE_PAL
org $E5F487
else
org $E5F47F
endif
dw $0001  ; POLYP      (lavaquake rocks)

if !FEATURE_PAL
org $E5F497
else
org $E5F48F
endif
dw $0001  ; rinko is Japanese for outline)

if !FEATURE_PAL
org $E5F4A7
else
org $E5F49F
endif
dw $0001  ; RIO        (rio, Brinstar flying enemy)

if !FEATURE_PAL
org $E5F4B7
else
org $E5F4AF
endif
dw $0001  ; SQUEEWPT   (squeept, Norfair lava-jumping enemy)

if !FEATURE_PAL
org $E5F4C7
else
org $E5F4BF
endif
dw $0001  ; GERUDA     (geruta, Norfair rio)

if !FEATURE_PAL
org $E5F4D7
else
org $E5F4CF
endif
dw $0001  ; HOLTZ      (holtz, Lower Norfair rio)

if !FEATURE_PAL
org $E5F4E7
else
org $E5F4DF
endif
dw $0001  ; OUM        (oum, Maridia large indestructible snails)

if !FEATURE_PAL
org $E5F4F7
else
org $E5F4EF
endif
dw $0001  ; hiru is Japanese for leech)

if !FEATURE_PAL
org $E5F507
else
org $E5F4FF
endif
dw $0001  ; RIPPER2    (gripper, grapplable jet powered ripper)

if !FEATURE_PAL
org $E5F517
else
org $E5F50F
endif
dw $0001  ; RIPPER2    (ripper ii, jet powered ripper)

if !FEATURE_PAL
org $E5F527
else
org $E5F51F
endif
dw $0001  ; RIPPER     (ripper)

if !FEATURE_PAL
org $E5F537
else
org $E5F52F
endif
dw $0001  ; DRAGON     (dragon, lava seahorse)

if !FEATURE_PAL
org $E5F547
else
org $E5F53F
endif
dw $0000  ; SHUTTER    (timed shutter)

if !FEATURE_PAL
org $E5F557
else
org $E5F54F
endif
dw $0000  ; SHUTTER2   (shootable shutter)

if !FEATURE_PAL
org $E5F567
else
org $E5F55F
endif
dw $0000  ; SHUTTER2   (horizontal shootable shutter)

if !FEATURE_PAL
org $E5F577
else
org $E5F56F
endif
dw $0000  ; SHUTTER2   (destroyable timed shutter)

if !FEATURE_PAL
org $E5F587
else
org $E5F57F
endif
dw $0000  ; SHUTTER2   (rising and falling platform)

if !FEATURE_PAL
org $E5F597
else
org $E5F58F
endif
dw $0001  ; WAVER      (waver, wave-like path travelling enemy)

if !FEATURE_PAL
org $E5F5A7
else
org $E5F59F
endif
dw $0001  ; METALEE    (metaree, metal skree)

if !FEATURE_PAL
org $E5F5B7
else
org $E5F5AF
endif
dw $0001  ; hotaru is Japanese for firefly)

if !FEATURE_PAL
org $E5F5C7
else
org $E5F5BF
endif
dw $0001  ; FISH       (skultera, Maridia fish)

if !FEATURE_PAL
org $E5F5D7
else
org $E5F5CF
endif
dw $0000  ;            (elevator)

if !FEATURE_PAL
org $E5F5E7
else
org $E5F5DF
endif
dw $0001  ; kani is Japanese for crab)

if !FEATURE_PAL
org $E5F5F7
else
org $E5F5EF
endif
dw $0001  ; OUMU       (zero, slug)

if !FEATURE_PAL
org $E5F607
else
org $E5F5FF
endif
dw $0000  ; KAMER      (tripper, fast-moving slowly-sinking platform)

if !FEATURE_PAL
org $E5F617
else
org $E5F60F
endif
dw $0000  ; KAMER      (platform that falls with Samus' weight)

if !FEATURE_PAL
org $E5F627
else
org $E5F61F
endif
dw $0001  ; SBUG       (roach, flies away from Samus)

if !FEATURE_PAL
org $E5F637
else
org $E5F62F
endif
dw $0001  ; SBUG       (roach, unused/broken)

if !FEATURE_PAL
org $E5F647
else
org $E5F63F
endif
dw $0001  ; METMOD     (mochtroid, pre-Botwoon fake metroids)

if !FEATURE_PAL
org $E5F657
else
org $E5F64F
endif
dw $0001  ; SSIDE      (sidehopper)

if !FEATURE_PAL
org $E5F667
else
org $E5F65F
endif
dw $0001  ; SDEATH     (desgeega)

if !FEATURE_PAL
org $E5F677
else
org $E5F66F
endif
dw $0001  ; SIDE       (super-sidehopper)

if !FEATURE_PAL
org $E5F687
else
org $E5F67F
endif
dw $0001  ; SIDE       (Tourian super-sidehopper)

if !FEATURE_PAL
org $E5F697
else
org $E5F68F
endif
dw $0001  ; DESSGEEGA  (super-desgeega)

if !FEATURE_PAL
org $E5F6A7
else
org $E5F69F
endif
dw $0001  ; ZOA        (zoa, Maridia refill candy)

if !FEATURE_PAL
org $E5F6B7
else
org $E5F6AF
endif
dw $0001  ; VIOLA      (viola, Norfair slow fireball)

if !FEATURE_PAL
org $E5F6C7
else
org $E5F6BF
endif
dw $0001  ;            (respawning enemy placeholder)

if !FEATURE_PAL
org $E5F6D7
else
org $E5F6CF
endif
dw $0001  ; BANG       (bang)

if !FEATURE_PAL
org $E5F6E7
else
org $E5F6DF
endif
dw $0001  ; SKREE      (skree)

if !FEATURE_PAL
org $E5F6F7
else
org $E5F6EF
endif
dw $0001  ; YARD       (yard, Maridia snail)

if !FEATURE_PAL
org $E5F707
else
org $E5F6FF
endif
dw $0001  ; REFLEC     (reflec)

if !FEATURE_PAL
org $E5F717
else
org $E5F70F
endif
dw $0000  ; HZOOMER    (Wrecked Ship orange zoomer)

if !FEATURE_PAL
org $E5F727
else
org $E5F71F
endif
dw $0001  ; ZEELA      (zeela, big eye bugs)

if !FEATURE_PAL
org $E5F737
else
org $E5F72F
endif
dw $0001  ; NOVA       (sova, fire zoomer)

if !FEATURE_PAL
org $E5F747
else
org $E5F73F
endif
dw $0001  ; ZOOMER     (zoomer)

if !FEATURE_PAL
org $E5F757
else
org $E5F74F
endif
dw $0001  ; MZOOMER    (stone zoomer)

if !FEATURE_PAL
org $E5F767
else
org $E5F75F
endif
dw $0001  ; METROID    (metroid)

if !FEATURE_PAL
org $E5F777
else
org $E5F76F
endif
dw $0000  ;            (Crocomire)

if !FEATURE_PAL
org $E5F787
else
org $E5F77F
endif
dw $0000  ;            (Crocomire's tongue)

if !FEATURE_PAL
org $E5F797
else
org $E5F78F
endif
dw $0000  ;            (Draygon body)

if !FEATURE_PAL
org $E5F7A7
else
org $E5F79F
endif
dw $0000  ;            (Draygon eye)

if !FEATURE_PAL
org $E5F7B7
else
org $E5F7AF
endif
dw $0000  ;            (Draygon tail)

if !FEATURE_PAL
org $E5F7C7
else
org $E5F7BF
endif
dw $0000  ;            (Draygon arms)

if !FEATURE_PAL
org $E5F7D7
else
org $E5F7CF
endif
dw $0000  ;            (Spore Spawn)

if !FEATURE_PAL
org $E5F7E7
else
org $E5F7DF
endif
dw $0000  ;            (Spore Spawn)

if !FEATURE_PAL
org $E5F7F7
else
org $E5F7EF
endif
dw $0001  ; RSTONE     (boulder)

if !FEATURE_PAL
org $E5F807
else
org $E5F7FF
endif
dw $0000  ; KZAN       (spikey platform top)

if !FEATURE_PAL
org $E5F817
else
org $E5F80F
endif
dw $0000  ;            (spikey platform bottom)

if !FEATURE_PAL
org $E5F827
else
org $E5F81F
endif
dw $0000  ; HIBASHI    (fire geyser)

if !FEATURE_PAL
org $E5F837
else
org $E5F82F
endif
dw $0001  ; PUROMI     (nuclear waffle)

if !FEATURE_PAL
org $E5F847
else
org $E5F83F
endif
dw $0001  ; SCLAYD     (mini-Kraid)

if !FEATURE_PAL
org $E5F857
else
org $E5F84F
endif
dw $0000  ;            (Ceres Ridley)

if !FEATURE_PAL
org $E5F867
else
org $E5F85F
endif
dw $0000  ;            (Ridley)

if !FEATURE_PAL
org $E5F877
else
org $E5F86F
endif
dw $0000  ;            (Ridley's explosion)

if !FEATURE_PAL
org $E5F887
else
org $E5F87F
endif
dw $0001  ;            (Ceres steam)

if !FEATURE_PAL
org $E5F897
else
org $E5F88F
endif
dw $0000  ;            (Ceres door)

if !FEATURE_PAL
org $E5F8A7
else
org $E5F89F
endif
dw $0000  ;            (zebetites)

if !FEATURE_PAL
org $E5F8B7
else
org $E5F8AF
endif
dw $0000  ;            (Kraid)

if !FEATURE_PAL
org $E5F8C7
else
org $E5F8BF
endif
dw $0000  ;            (Kraid's arm)

if !FEATURE_PAL
org $E5F8D7
else
org $E5F8CF
endif
dw $0000  ;            (Kraid top lint)

if !FEATURE_PAL
org $E5F8E7
else
org $E5F8DF
endif
dw $0000  ;            (Kraid middle lint)

if !FEATURE_PAL
org $E5F8F7
else
org $E5F8EF
endif
dw $0000  ;            (Kraid bottom lint)

if !FEATURE_PAL
org $E5F907
else
org $E5F8FF
endif
dw $0000  ;            (Kraid's foot)

if !FEATURE_PAL
org $E5F917
else
org $E5F90F
endif
dw $0000  ;            (Kraid good fingernail)

if !FEATURE_PAL
org $E5F927
else
org $E5F91F
endif
dw $0000  ;            (Kraid bad fingernail)

if !FEATURE_PAL
org $E5F937
else
org $E5F92F
endif
dw $0000  ;            (Phantoon body)

if !FEATURE_PAL
org $E5F947
else
org $E5F93F
endif
dw $0000  ;            (Phantoon eye)

if !FEATURE_PAL
org $E5F957
else
org $E5F94F
endif
dw $0000  ;            (Phantoon tentacles)

if !FEATURE_PAL
org $E5F967
else
org $E5F95F
endif
dw $0000  ;            (Phantoon mouth)

if !FEATURE_PAL
org $E5F977
else
org $E5F96F
endif
dw $0000  ;            (etecoon)

if !FEATURE_PAL
org $E5F987
else
org $E5F97F
endif
dw $0000  ;            (dachora)

if !FEATURE_PAL
org $E5F997
else
org $E5F98F
endif
dw $0001  ; ebi is Japanese for prawn)

if !FEATURE_PAL
org $E5F9A7
else
org $E5F99F
endif
dw $0001  ;            (evir projectile)

if !FEATURE_PAL
org $E5F9B7
else
org $E5F9AF
endif
dw $0000  ; EYE        (morph ball eye)

if !FEATURE_PAL
org $E5F9C7
else
org $E5F9BF
endif
dw $0001  ; fune is Japanese for boat)

if !FEATURE_PAL
org $E5F9D7
else
org $E5F9CF
endif
dw $0000  ; nami is Japanese for wave)

if !FEATURE_PAL
org $E5F9E7
else
org $E5F9DF
endif
dw $0001  ; GAI        (coven, Wrecked Ship ghost)

if !FEATURE_PAL
org $E5F9F7
else
org $E5F9EF
endif
dw $0001  ; HAND       (yapping maw)

if !FEATURE_PAL
org $E5FA07
else
org $E5F9FF
endif
dw $0001  ; kago is Japanese for cage)

if !FEATURE_PAL
org $E5FA17
else
org $E5FA0F
endif
dw $0001  ; LAVAMAN    (magdollite, Norfair lava creature)

if !FEATURE_PAL
org $E5FA27
else
org $E5FA1F
endif
dw $0001  ; nomi is Japanese for flea)

if !FEATURE_PAL
org $E5FA37
else
org $E5FA2F
endif
dw $0001  ; PUU        (powamp, Maridia floater)

if !FEATURE_PAL
org $E5FA47
else
org $E5FA3F
endif
dw $0000  ; ROBO       (Wrecked Ship robot)

if !FEATURE_PAL
org $E5FA57
else
org $E5FA4F
endif
dw $0000  ; ROBO2      (Wrecked Ship robot, deactivated)

if !FEATURE_PAL
org $E5FA67
else
org $E5FA5F
endif
dw $0001  ; PIPE       (bull, Maridia puffer)

if !FEATURE_PAL
org $E5FA77
else
org $E5FA6F
endif
dw $0001  ; NDRA       (alcoon, walking lava seahorse)

if !FEATURE_PAL
org $E5FA87
else
org $E5FA7F
endif
dw $0001  ; ATOMIC     (atomic, Wrecked Ship orbs)

if !FEATURE_PAL
org $E5FA97
else
org $E5FA8F
endif
dw $0000  ; SPA        (Wrecked Ship spark)

if !FEATURE_PAL
org $E5FAA7
else
org $E5FA9F
endif
dw $0000  ; KOMA       (blue Brinstar face block)

if !FEATURE_PAL
org $E5FAB7
else
org $E5FAAF
endif
dw $0001  ; hachi is Japanese for bee)

if !FEATURE_PAL
org $E5FAC7
else
org $E5FABF
endif
dw $0001  ;            (green ki-hunter wings)

if !FEATURE_PAL
org $E5FAD7
else
org $E5FACF
endif
dw $0001  ; HACHI2     (yellow ki-hunter)

if !FEATURE_PAL
org $E5FAE7
else
org $E5FADF
endif
dw $0001  ;            (yellow ki-hunter wings)

if !FEATURE_PAL
org $E5FAF7
else
org $E5FAEF
endif
dw $0001  ; HACHI3     (red ki-hunter)

if !FEATURE_PAL
org $E5FB07
else
org $E5FAFF
endif
dw $0001  ;            (red ki-hunter wings)

if !FEATURE_PAL
org $E5FB17
else
org $E5FB0F
endif
dw $0000  ;            (Mother Brain's brain)

if !FEATURE_PAL
org $E5FB27
else
org $E5FB1F
endif
dw $0000  ;            (Mother Brain's body)

if !FEATURE_PAL
org $E5FB37
else
org $E5FB2F
endif
dw $0000  ;            (Shitroid in cutscene)

if !FEATURE_PAL
org $E5FB47
else
org $E5FB3F
endif
dw $0000  ;            (Mother Brain's tubes falling)

if !FEATURE_PAL
org $E5FB57
else
org $E5FB4F
endif
dw $0000  ;            (dead Torizo)

if !FEATURE_PAL
org $E5FB67
else
org $E5FB5F
endif
dw $0000  ;            (dead sidehopper)

if !FEATURE_PAL
org $E5FB77
else
org $E5FB6F
endif
dw $0000  ;            (dead sidehopper, part 2). Used only to load more tiles

if !FEATURE_PAL
org $E5FB87
else
org $E5FB7F
endif
dw $0000  ;            (dead zoomer)

if !FEATURE_PAL
org $E5FB97
else
org $E5FB8F
endif
dw $0000  ;            (dead ripper)

if !FEATURE_PAL
org $E5FBA7
else
org $E5FB9F
endif
dw $0000  ;            (dead skree)

if !FEATURE_PAL
org $E5FBB7
else
org $E5FBAF
endif
dw $0000  ;            (Shitroid)

if !FEATURE_PAL
org $E5FBC7
else
org $E5FBBF
endif
dw $0000  ;            (Bomb Torizo)

if !FEATURE_PAL
org $E5FBD7
else
org $E5FBCF
endif
dw $0000  ;            (Bomb Torizo orb)

if !FEATURE_PAL
org $E5FBE7
else
org $E5FBDF
endif
dw $0000  ;            (Gold Torizo)

if !FEATURE_PAL
org $E5FBF7
else
org $E5FBEF
endif
dw $0000  ;            (Gold Torizo orb)

if !FEATURE_PAL
org $E5FC07
else
org $E5FBFF
endif
dw $0000  ;            (Tourian entrance statue)

if !FEATURE_PAL
org $E5FC17
else
org $E5FC0F
endif
dw $0000  ;            (Tourian entrance statue ghost)

if !FEATURE_PAL
org $E5FC27
else
org $E5FC1F
endif
dw $0000  ; doriyuku is Japanese for effort)

if !FEATURE_PAL
org $E5FC37
else
org $E5FC2F
endif
dw $0000  ;            (n00b tube cracks)

if !FEATURE_PAL
org $E5FC47
else
org $E5FC3F
endif
dw $0000  ;            (Chozo statue)

if !FEATURE_PAL
org $E5FC5C
else
org $E5FC54
endif
dw $0000  ;            (unused spinning turtle eye: just runs a graphics instruction loop)

if !FEATURE_PAL
org $E5FC6C
else
org $E5FC64
endif
dw $0001  ; ZEB        (zeb, Brinstar red pipe bug)

if !FEATURE_PAL
org $E5FC7C
else
org $E5FC74
endif
dw $0001  ; ZEBBO      (zebbo, Brinstar green pipe bug)

if !FEATURE_PAL
org $E5FC8C
else
org $E5FC84
endif
dw $0001  ; GAMET      (gamet, Norfair pipe bug)

if !FEATURE_PAL
org $E5FC9C
else
org $E5FC94
endif
dw $0001  ; GEEGA      (geega, Brinstar yellow pipe bug)

if !FEATURE_PAL
org $E5FCAC
else
org $E5FCA4
endif
dw $0000  ; BOTOON     (Botwoon)

if !FEATURE_PAL
org $E5FCBC
else
org $E5FCB4
endif
dw $0000  ;            (escape etecoon)

if !FEATURE_PAL
org $E5FCCC
else
org $E5FCC4
endif
dw $0000  ;            (escape dachora)

if !FEATURE_PAL
org $E5FCDC
else
org $E5FCD4
endif
dw $0001  ; BATTA1     (old Tourian grey wall space pirate)

if !FEATURE_PAL
org $E5FCEC
else
org $E5FCE4
endif
dw $0001  ; BATTA1Br   (Kraid green wall space pirate)

if !FEATURE_PAL
org $E5FCFC
else
org $E5FCF4
endif
dw $0001  ; BATTA1No   (Norfair red wall space pirate)

if !FEATURE_PAL
org $E5FD0C
else
org $E5FD04
endif
dw $0001  ; BATTA1Na   (lower Norfair gold wall space pirate)

if !FEATURE_PAL
org $E5FD1C
else
org $E5FD14
endif
dw $0001  ; BATTA1Ma   (Maridia wall space pirate)

if !FEATURE_PAL
org $E5FD2C
else
org $E5FD24
endif
dw $0001  ; BATTA1Tu   (escape silver wall space pirate)

if !FEATURE_PAL
org $E5FD3C
else
org $E5FD34
endif
dw $0001  ; BATTA2     (grey ninja space pirate)

if !FEATURE_PAL
org $E5FD4C
else
org $E5FD44
endif
dw $0001  ; BATTA2Br   (green ninja space pirate)

if !FEATURE_PAL
org $E5FD5C
else
org $E5FD54
endif
dw $0001  ; BATTA2No   (red ninja space pirate)

if !FEATURE_PAL
org $E5FD6C
else
org $E5FD64
endif
dw $0001  ; BATTA2Na   (gold ninja space pirate)

if !FEATURE_PAL
org $E5FD7C
else
org $E5FD74
endif
dw $0001  ; BATTA2Ma   (magenta ninja space pirate)

if !FEATURE_PAL
org $E5FD8C
else
org $E5FD84
endif
dw $0001  ; BATTA2Tu   (escape silver ninja space pirate)

if !FEATURE_PAL
org $E5FD9C
else
org $E5FD94
endif
dw $0001  ; BATTA3     (grey walking space pirate)

if !FEATURE_PAL
org $E5FDAC
else
org $E5FDA4
endif
dw $0001  ; BATTA3Br   (green walking space pirate)

if !FEATURE_PAL
org $E5FDBC
else
org $E5FDB4
endif
dw $0001  ; BATTA3No   (red walking space pirate)

if !FEATURE_PAL
org $E5FDCC
else
org $E5FDC4
endif
dw $0001  ; BATTA3Na   (gold walking space pirate)

if !FEATURE_PAL
org $E5FDDC
else
org $E5FDD4
endif
dw $0001  ; BATTA3Ma   (magenta walking space pirate)

if !FEATURE_PAL
org $E5FDEC
else
org $E5FDE4
endif
dw $0001  ; BATTA3Tu   (escape silver walking space pirate)

%endfree(E5)

