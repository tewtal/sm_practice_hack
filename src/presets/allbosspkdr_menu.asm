PresetsMenuAllbosspkdr:
    dw #presets_goto_allbosspkdr_crateria
    dw #presets_goto_allbosspkdr_brinstar
    dw #presets_goto_allbosspkdr_wrecked_ship
    dw #presets_goto_allbosspkdr_upper_norfair
    dw #presets_goto_allbosspkdr_kraids_lair
    dw #presets_goto_allbosspkdr_maridia
    dw #presets_goto_allbosspkdr_upper_norfair_revisit
    dw #presets_goto_allbosspkdr_lower_norfair
    dw #presets_goto_allbosspkdr_spore_spawn
    dw #presets_goto_allbosspkdr_tourian
    dw #$0000
    %cm_header("PRESETS FOR ALL BOSS PKDR")

presets_goto_allbosspkdr_crateria:
    %cm_submenu("Crateria", #presets_submenu_allbosspkdr_crateria)

presets_goto_allbosspkdr_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_allbosspkdr_brinstar)

presets_goto_allbosspkdr_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_allbosspkdr_wrecked_ship)

presets_goto_allbosspkdr_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_allbosspkdr_upper_norfair)

presets_goto_allbosspkdr_kraids_lair:
    %cm_submenu("Kraids Lair", #presets_submenu_allbosspkdr_kraids_lair)

presets_goto_allbosspkdr_maridia:
    %cm_submenu("Maridia", #presets_submenu_allbosspkdr_maridia)

presets_goto_allbosspkdr_upper_norfair_revisit:
    %cm_submenu("Upper Norfair Revisit", #presets_submenu_allbosspkdr_upper_norfair_revisit)

presets_goto_allbosspkdr_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_allbosspkdr_lower_norfair)

presets_goto_allbosspkdr_spore_spawn:
    %cm_submenu("Spore Spawn", #presets_submenu_allbosspkdr_spore_spawn)

presets_goto_allbosspkdr_tourian:
    %cm_submenu("Tourian", #presets_submenu_allbosspkdr_tourian)

presets_submenu_allbosspkdr_crateria:
    dw #presets_allbosspkdr_crateria_ceres_elevator
    dw #presets_allbosspkdr_crateria_ceres_last_3_rooms
    dw #presets_allbosspkdr_crateria_ship
    dw #presets_allbosspkdr_crateria_pit_room
    dw #presets_allbosspkdr_crateria_morph
    dw #presets_allbosspkdr_crateria_pit_room_revisit
    dw #presets_allbosspkdr_crateria_climb
    dw #presets_allbosspkdr_crateria_parlor
    dw #presets_allbosspkdr_crateria_bomb_torizo
    dw #presets_allbosspkdr_crateria_terminator
    dw #presets_allbosspkdr_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_allbosspkdr_brinstar:
    dw #presets_allbosspkdr_brinstar_green_brinstar_elevator
    dw #presets_allbosspkdr_brinstar_dachora_room
    dw #presets_allbosspkdr_brinstar_big_pink
    dw #presets_allbosspkdr_brinstar_red_tower
    dw #presets_allbosspkdr_brinstar_hellway
    dw #presets_allbosspkdr_brinstar_leaving_power_bombs
    dw #presets_allbosspkdr_brinstar_crateria_elevator
    dw #presets_allbosspkdr_brinstar_moat
    dw #presets_allbosspkdr_brinstar_ocean
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_allbosspkdr_wrecked_ship:
    dw #presets_allbosspkdr_wrecked_ship_entering_wrecked_ship
    dw #presets_allbosspkdr_wrecked_ship_phantoon
    dw #presets_allbosspkdr_wrecked_ship_leaving_phantoon
    dw #presets_allbosspkdr_wrecked_ship_wrecked_ship_shaft
    dw #presets_allbosspkdr_wrecked_ship_attic
    dw #presets_allbosspkdr_wrecked_ship_bowling_spark
    dw #presets_allbosspkdr_wrecked_ship_leaving_gravity
    dw #presets_allbosspkdr_wrecked_ship_red_tower_elevator
    dw #presets_allbosspkdr_wrecked_ship_red_tower_descent
    dw #presets_allbosspkdr_wrecked_ship_breaking_tube
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_allbosspkdr_upper_norfair:
    dw #presets_allbosspkdr_upper_norfair_business_center
    dw #presets_allbosspkdr_upper_norfair_hi_jump_etank
    dw #presets_allbosspkdr_upper_norfair_leaving_hi_jump
    dw #presets_allbosspkdr_upper_norfair_precathedral
    dw #presets_allbosspkdr_upper_norfair_bubble_mountain
    dw #presets_allbosspkdr_upper_norfair_single_chamber
    dw #presets_allbosspkdr_upper_norfair_double_chamber_revisit
    dw #presets_allbosspkdr_upper_norfair_bubble_mountain_revisit
    dw #presets_allbosspkdr_upper_norfair_business_center_revisit
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_allbosspkdr_kraids_lair:
    dw #presets_allbosspkdr_kraids_lair_entering_kraids_lair
    dw #presets_allbosspkdr_kraids_lair_baby_kraid_entering
    dw #presets_allbosspkdr_kraids_lair_kraid
    dw #presets_allbosspkdr_kraids_lair_baby_kraid_entering_2
    dw #presets_allbosspkdr_kraids_lair_leaving_kraids_lair
    dw #$0000
    %cm_header("KRAIDS LAIR")

presets_submenu_allbosspkdr_maridia:
    dw #presets_allbosspkdr_maridia_mt_everest
    dw #presets_allbosspkdr_maridia_botwoon
    dw #presets_allbosspkdr_maridia_halfie
    dw #presets_allbosspkdr_maridia_draygon
    dw #presets_allbosspkdr_maridia_womple_jump
    dw #presets_allbosspkdr_maridia_cac_alley
    dw #presets_allbosspkdr_maridia_plasma_spark
    dw #presets_allbosspkdr_maridia_plasma_beam
    dw #presets_allbosspkdr_maridia_plasma_spark_revisit
    dw #presets_allbosspkdr_maridia_sewers
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_allbosspkdr_upper_norfair_revisit:
    dw #presets_allbosspkdr_upper_norfair_revisit_ice_beam_hallway
    dw #presets_allbosspkdr_upper_norfair_revisit_ice_maze
    dw #presets_allbosspkdr_upper_norfair_revisit_ice_escape
    dw #presets_allbosspkdr_upper_norfair_revisit_crocomire_speedway
    dw #presets_allbosspkdr_upper_norfair_revisit_crocomire
    dw #presets_allbosspkdr_upper_norfair_revisit_leaving_crocomire
    dw #presets_allbosspkdr_upper_norfair_revisit_kronic_boost
    dw #$0000
    %cm_header("UPPER NORFAIR REVISIT")

presets_submenu_allbosspkdr_lower_norfair:
    dw #presets_allbosspkdr_lower_norfair_ln_main_hall
    dw #presets_allbosspkdr_lower_norfair_green_gate_glitch
    dw #presets_allbosspkdr_lower_norfair_golden_torizo
    dw #presets_allbosspkdr_lower_norfair_screw_attack_escape
    dw #presets_allbosspkdr_lower_norfair_worst_room_in_the_game
    dw #presets_allbosspkdr_lower_norfair_kihunter_stairs
    dw #presets_allbosspkdr_lower_norfair_metal_pirates
    dw #presets_allbosspkdr_lower_norfair_ridley
    dw #presets_allbosspkdr_lower_norfair_leaving_ridley
    dw #presets_allbosspkdr_lower_norfair_wasteland_revisit
    dw #presets_allbosspkdr_lower_norfair_fire_flea_room
    dw #presets_allbosspkdr_lower_norfair_three_musketeers
    dw #presets_allbosspkdr_lower_norfair_bubble_mountain_rerevisit
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_allbosspkdr_spore_spawn:
    dw #presets_allbosspkdr_spore_spawn_maridia_passthrough
    dw #presets_allbosspkdr_spore_spawn_red_tower_2
    dw #presets_allbosspkdr_spore_spawn_lower_green_brinstar
    dw #presets_allbosspkdr_spore_spawn_big_pink_up
    dw #presets_allbosspkdr_spore_spawn_spore_spawn_2
    dw #presets_allbosspkdr_spore_spawn_big_pink_down
    dw #presets_allbosspkdr_spore_spawn_dachora_room_revisit
    dw #presets_allbosspkdr_spore_spawn_crateria_2
    dw #$0000
    %cm_header("SPORE SPAWN")

presets_submenu_allbosspkdr_tourian:
    dw #presets_allbosspkdr_tourian_metroids_1
    dw #presets_allbosspkdr_tourian_metroids_2
    dw #presets_allbosspkdr_tourian_metroids_3
    dw #presets_allbosspkdr_tourian_metroids_4
    dw #presets_allbosspkdr_tourian_baby_skip
    dw #presets_allbosspkdr_tourian_zeb_skip
    dw #presets_allbosspkdr_tourian_escape_room_3
    dw #presets_allbosspkdr_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Crateria
presets_allbosspkdr_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_allbosspkdr_crateria_ceres_elevator)

presets_allbosspkdr_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_allbosspkdr_crateria_ceres_last_3_rooms)

presets_allbosspkdr_crateria_ship:
    %cm_preset("Ship", #preset_allbosspkdr_crateria_ship)

presets_allbosspkdr_crateria_pit_room:
    %cm_preset("Pit Room", #preset_allbosspkdr_crateria_pit_room)

presets_allbosspkdr_crateria_morph:
    %cm_preset("Morph", #preset_allbosspkdr_crateria_morph)

presets_allbosspkdr_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_allbosspkdr_crateria_pit_room_revisit)

presets_allbosspkdr_crateria_climb:
    %cm_preset("Climb", #preset_allbosspkdr_crateria_climb)

presets_allbosspkdr_crateria_parlor:
    %cm_preset("Parlor", #preset_allbosspkdr_crateria_parlor)

presets_allbosspkdr_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_allbosspkdr_crateria_bomb_torizo)

presets_allbosspkdr_crateria_terminator:
    %cm_preset("Terminator", #preset_allbosspkdr_crateria_terminator)

presets_allbosspkdr_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_allbosspkdr_crateria_green_pirate_shaft)


; Brinstar
presets_allbosspkdr_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_allbosspkdr_brinstar_green_brinstar_elevator)

presets_allbosspkdr_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_allbosspkdr_brinstar_dachora_room)

presets_allbosspkdr_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_allbosspkdr_brinstar_big_pink)

presets_allbosspkdr_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_allbosspkdr_brinstar_red_tower)

presets_allbosspkdr_brinstar_hellway:
    %cm_preset("Hellway", #preset_allbosspkdr_brinstar_hellway)

presets_allbosspkdr_brinstar_leaving_power_bombs:
    %cm_preset("Leaving Power Bombs", #preset_allbosspkdr_brinstar_leaving_power_bombs)

presets_allbosspkdr_brinstar_crateria_elevator:
    %cm_preset("Crateria Elevator", #preset_allbosspkdr_brinstar_crateria_elevator)

presets_allbosspkdr_brinstar_moat:
    %cm_preset("Moat", #preset_allbosspkdr_brinstar_moat)

presets_allbosspkdr_brinstar_ocean:
    %cm_preset("Ocean", #preset_allbosspkdr_brinstar_ocean)


; Wrecked Ship
presets_allbosspkdr_wrecked_ship_entering_wrecked_ship:
    %cm_preset("Entering Wrecked Ship", #preset_allbosspkdr_wrecked_ship_entering_wrecked_ship)

presets_allbosspkdr_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_allbosspkdr_wrecked_ship_phantoon)

presets_allbosspkdr_wrecked_ship_leaving_phantoon:
    %cm_preset("Leaving Phantoon", #preset_allbosspkdr_wrecked_ship_leaving_phantoon)

presets_allbosspkdr_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_allbosspkdr_wrecked_ship_wrecked_ship_shaft)

presets_allbosspkdr_wrecked_ship_attic:
    %cm_preset("Attic", #preset_allbosspkdr_wrecked_ship_attic)

presets_allbosspkdr_wrecked_ship_bowling_spark:
    %cm_preset("Bowling Spark", #preset_allbosspkdr_wrecked_ship_bowling_spark)

presets_allbosspkdr_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_allbosspkdr_wrecked_ship_leaving_gravity)

presets_allbosspkdr_wrecked_ship_red_tower_elevator:
    %cm_preset("Red Tower Elevator", #preset_allbosspkdr_wrecked_ship_red_tower_elevator)

presets_allbosspkdr_wrecked_ship_red_tower_descent:
    %cm_preset("Red Tower Descent", #preset_allbosspkdr_wrecked_ship_red_tower_descent)

presets_allbosspkdr_wrecked_ship_breaking_tube:
    %cm_preset("Breaking Tube", #preset_allbosspkdr_wrecked_ship_breaking_tube)


; Upper Norfair
presets_allbosspkdr_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_allbosspkdr_upper_norfair_business_center)

presets_allbosspkdr_upper_norfair_hi_jump_etank:
    %cm_preset("Hi Jump E-tank", #preset_allbosspkdr_upper_norfair_hi_jump_etank)

presets_allbosspkdr_upper_norfair_leaving_hi_jump:
    %cm_preset("Leaving Hi Jump", #preset_allbosspkdr_upper_norfair_leaving_hi_jump)

presets_allbosspkdr_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_allbosspkdr_upper_norfair_precathedral)

presets_allbosspkdr_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_allbosspkdr_upper_norfair_bubble_mountain)

presets_allbosspkdr_upper_norfair_single_chamber:
    %cm_preset("Single Chamber", #preset_allbosspkdr_upper_norfair_single_chamber)

presets_allbosspkdr_upper_norfair_double_chamber_revisit:
    %cm_preset("Double Chamber Revisit", #preset_allbosspkdr_upper_norfair_double_chamber_revisit)

presets_allbosspkdr_upper_norfair_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_allbosspkdr_upper_norfair_bubble_mountain_revisit)

presets_allbosspkdr_upper_norfair_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_allbosspkdr_upper_norfair_business_center_revisit)


; Kraids Lair
presets_allbosspkdr_kraids_lair_entering_kraids_lair:
    %cm_preset("Entering Kraids Lair", #preset_allbosspkdr_kraids_lair_entering_kraids_lair)

presets_allbosspkdr_kraids_lair_baby_kraid_entering:
    %cm_preset("Baby Kraid (Entering)", #preset_allbosspkdr_kraids_lair_baby_kraid_entering)

presets_allbosspkdr_kraids_lair_kraid:
    %cm_preset("Kraid", #preset_allbosspkdr_kraids_lair_kraid)

presets_allbosspkdr_kraids_lair_baby_kraid_entering_2:
    %cm_preset("Baby Kraid (Entering)", #preset_allbosspkdr_kraids_lair_baby_kraid_entering_2)

presets_allbosspkdr_kraids_lair_leaving_kraids_lair:
    %cm_preset("Leaving Kraids Lair", #preset_allbosspkdr_kraids_lair_leaving_kraids_lair)


; Maridia
presets_allbosspkdr_maridia_mt_everest:
    %cm_preset("Mt Everest", #preset_allbosspkdr_maridia_mt_everest)

presets_allbosspkdr_maridia_botwoon:
    %cm_preset("Botwoon", #preset_allbosspkdr_maridia_botwoon)

presets_allbosspkdr_maridia_halfie:
    %cm_preset("Halfie", #preset_allbosspkdr_maridia_halfie)

presets_allbosspkdr_maridia_draygon:
    %cm_preset("Draygon", #preset_allbosspkdr_maridia_draygon)

presets_allbosspkdr_maridia_womple_jump:
    %cm_preset("Womple Jump", #preset_allbosspkdr_maridia_womple_jump)

presets_allbosspkdr_maridia_cac_alley:
    %cm_preset("Cac Alley", #preset_allbosspkdr_maridia_cac_alley)

presets_allbosspkdr_maridia_plasma_spark:
    %cm_preset("Plasma Spark", #preset_allbosspkdr_maridia_plasma_spark)

presets_allbosspkdr_maridia_plasma_beam:
    %cm_preset("Plasma Beam", #preset_allbosspkdr_maridia_plasma_beam)

presets_allbosspkdr_maridia_plasma_spark_revisit:
    %cm_preset("Plasma Spark Revisit", #preset_allbosspkdr_maridia_plasma_spark_revisit)

presets_allbosspkdr_maridia_sewers:
    %cm_preset("Sewers", #preset_allbosspkdr_maridia_sewers)


; Upper Norfair Revisit
presets_allbosspkdr_upper_norfair_revisit_ice_beam_hallway:
    %cm_preset("Ice Beam Hallway", #preset_allbosspkdr_upper_norfair_revisit_ice_beam_hallway)

presets_allbosspkdr_upper_norfair_revisit_ice_maze:
    %cm_preset("Ice Maze", #preset_allbosspkdr_upper_norfair_revisit_ice_maze)

presets_allbosspkdr_upper_norfair_revisit_ice_escape:
    %cm_preset("Ice Escape", #preset_allbosspkdr_upper_norfair_revisit_ice_escape)

presets_allbosspkdr_upper_norfair_revisit_crocomire_speedway:
    %cm_preset("Crocomire Speedway", #preset_allbosspkdr_upper_norfair_revisit_crocomire_speedway)

presets_allbosspkdr_upper_norfair_revisit_crocomire:
    %cm_preset("Crocomire", #preset_allbosspkdr_upper_norfair_revisit_crocomire)

presets_allbosspkdr_upper_norfair_revisit_leaving_crocomire:
    %cm_preset("Leaving Crocomire", #preset_allbosspkdr_upper_norfair_revisit_leaving_crocomire)

presets_allbosspkdr_upper_norfair_revisit_kronic_boost:
    %cm_preset("Kronic Boost", #preset_allbosspkdr_upper_norfair_revisit_kronic_boost)


; Lower Norfair
presets_allbosspkdr_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_allbosspkdr_lower_norfair_ln_main_hall)

presets_allbosspkdr_lower_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_allbosspkdr_lower_norfair_green_gate_glitch)

presets_allbosspkdr_lower_norfair_golden_torizo:
    %cm_preset("Golden Torizo", #preset_allbosspkdr_lower_norfair_golden_torizo)

presets_allbosspkdr_lower_norfair_screw_attack_escape:
    %cm_preset("Screw Attack Escape", #preset_allbosspkdr_lower_norfair_screw_attack_escape)

presets_allbosspkdr_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room in the Game", #preset_allbosspkdr_lower_norfair_worst_room_in_the_game)

presets_allbosspkdr_lower_norfair_kihunter_stairs:
    %cm_preset("Kihunter Stairs", #preset_allbosspkdr_lower_norfair_kihunter_stairs)

presets_allbosspkdr_lower_norfair_metal_pirates:
    %cm_preset("Metal Pirates", #preset_allbosspkdr_lower_norfair_metal_pirates)

presets_allbosspkdr_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_allbosspkdr_lower_norfair_ridley)

presets_allbosspkdr_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_allbosspkdr_lower_norfair_leaving_ridley)

presets_allbosspkdr_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_allbosspkdr_lower_norfair_wasteland_revisit)

presets_allbosspkdr_lower_norfair_fire_flea_room:
    %cm_preset("Fire Flea Room", #preset_allbosspkdr_lower_norfair_fire_flea_room)

presets_allbosspkdr_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_allbosspkdr_lower_norfair_three_musketeers)

presets_allbosspkdr_lower_norfair_bubble_mountain_rerevisit:
    %cm_preset("Bubble Mountain ReRevisit", #preset_allbosspkdr_lower_norfair_bubble_mountain_rerevisit)


; Spore Spawn
presets_allbosspkdr_spore_spawn_maridia_passthrough:
    %cm_preset("Maridia Passthrough", #preset_allbosspkdr_spore_spawn_maridia_passthrough)

presets_allbosspkdr_spore_spawn_red_tower_2:
    %cm_preset("Red Tower", #preset_allbosspkdr_spore_spawn_red_tower_2)

presets_allbosspkdr_spore_spawn_lower_green_brinstar:
    %cm_preset("Lower Green Brinstar", #preset_allbosspkdr_spore_spawn_lower_green_brinstar)

presets_allbosspkdr_spore_spawn_big_pink_up:
    %cm_preset("Big Pink Up", #preset_allbosspkdr_spore_spawn_big_pink_up)

presets_allbosspkdr_spore_spawn_spore_spawn_2:
    %cm_preset("Spore Spawn", #preset_allbosspkdr_spore_spawn_spore_spawn_2)

presets_allbosspkdr_spore_spawn_big_pink_down:
    %cm_preset("Big Pink Down", #preset_allbosspkdr_spore_spawn_big_pink_down)

presets_allbosspkdr_spore_spawn_dachora_room_revisit:
    %cm_preset("Dachora Room Revisit", #preset_allbosspkdr_spore_spawn_dachora_room_revisit)

presets_allbosspkdr_spore_spawn_crateria_2:
    %cm_preset("Crateria", #preset_allbosspkdr_spore_spawn_crateria_2)


; Tourian
presets_allbosspkdr_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_allbosspkdr_tourian_metroids_1)

presets_allbosspkdr_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_allbosspkdr_tourian_metroids_2)

presets_allbosspkdr_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_allbosspkdr_tourian_metroids_3)

presets_allbosspkdr_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_allbosspkdr_tourian_metroids_4)

presets_allbosspkdr_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_allbosspkdr_tourian_baby_skip)

presets_allbosspkdr_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_allbosspkdr_tourian_zeb_skip)

presets_allbosspkdr_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_allbosspkdr_tourian_escape_room_3)

presets_allbosspkdr_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_allbosspkdr_tourian_escape_parlor)


