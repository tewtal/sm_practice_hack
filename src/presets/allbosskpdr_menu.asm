PresetsMenuAllbosskpdr:
    dw #presets_goto_allbosskpdr_crateria
    dw #presets_goto_allbosskpdr_brinstar
    dw #presets_goto_allbosskpdr_upper_norfair
    dw #presets_goto_allbosskpdr_wrecked_ship
    dw #presets_goto_allbosskpdr_maridia
    dw #presets_goto_allbosskpdr_upper_norfair_revisit
    dw #presets_goto_allbosskpdr_lower_norfair
    dw #presets_goto_allbosskpdr_spore_spawn
    dw #presets_goto_allbosskpdr_tourian
    dw #$0000
    %cm_header("PRESETS FOR ALL BOSS KPDR")

presets_goto_allbosskpdr_crateria:
    %cm_submenu("Crateria", #presets_submenu_allbosskpdr_crateria)

presets_goto_allbosskpdr_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_allbosskpdr_brinstar)

presets_goto_allbosskpdr_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_allbosskpdr_upper_norfair)

presets_goto_allbosskpdr_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_allbosskpdr_wrecked_ship)

presets_goto_allbosskpdr_maridia:
    %cm_submenu("Maridia", #presets_submenu_allbosskpdr_maridia)

presets_goto_allbosskpdr_upper_norfair_revisit:
    %cm_submenu("Upper Norfair Revisit", #presets_submenu_allbosskpdr_upper_norfair_revisit)

presets_goto_allbosskpdr_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_allbosskpdr_lower_norfair)

presets_goto_allbosskpdr_spore_spawn:
    %cm_submenu("Spore Spawn", #presets_submenu_allbosskpdr_spore_spawn)

presets_goto_allbosskpdr_tourian:
    %cm_submenu("Tourian", #presets_submenu_allbosskpdr_tourian)

presets_submenu_allbosskpdr_crateria:
    dw #presets_allbosskpdr_crateria_ceres_elevator
    dw #presets_allbosskpdr_crateria_ceres_escape
    dw #presets_allbosskpdr_crateria_ceres_last_3_rooms
    dw #presets_allbosskpdr_crateria_ship
    dw #presets_allbosskpdr_crateria_pit_room
    dw #presets_allbosskpdr_crateria_morph
    dw #presets_allbosskpdr_crateria_pit_room_revisit
    dw #presets_allbosskpdr_crateria_climb
    dw #presets_allbosskpdr_crateria_parlor
    dw #presets_allbosskpdr_crateria_bomb_torizo
    dw #presets_allbosskpdr_crateria_terminator
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_allbosskpdr_brinstar:
    dw #presets_allbosskpdr_brinstar_green_brinstar_elevator
    dw #presets_allbosskpdr_brinstar_dachora_room
    dw #presets_allbosskpdr_brinstar_big_pink
    dw #presets_allbosskpdr_brinstar_red_tower
    dw #presets_allbosskpdr_brinstar_entering_kraids_lair
    dw #presets_allbosskpdr_brinstar_minikraid
    dw #presets_allbosskpdr_brinstar_kraid
    dw #presets_allbosskpdr_brinstar_minikraid_revisit
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_allbosskpdr_upper_norfair:
    dw #presets_allbosskpdr_upper_norfair_business_center
    dw #presets_allbosskpdr_upper_norfair_hijump_etank
    dw #presets_allbosskpdr_upper_norfair_leaving_hijump
    dw #presets_allbosskpdr_upper_norfair_precathedral
    dw #presets_allbosskpdr_upper_norfair_bubble_mountain
    dw #presets_allbosskpdr_upper_norfair_single_chamber
    dw #presets_allbosskpdr_upper_norfair_double_chamber_revisit
    dw #presets_allbosskpdr_upper_norfair_bubble_mountain_revisit
    dw #presets_allbosskpdr_upper_norfair_business_center_revisit
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_allbosskpdr_wrecked_ship:
    dw #presets_allbosskpdr_wrecked_ship_alpha_spark
    dw #presets_allbosskpdr_wrecked_ship_red_tower
    dw #presets_allbosskpdr_wrecked_ship_hellway
    dw #presets_allbosskpdr_wrecked_ship_leaving_power_bombs
    dw #presets_allbosskpdr_wrecked_ship_crateria_elevator
    dw #presets_allbosskpdr_wrecked_ship_entering_wrecked_ship
    dw #presets_allbosskpdr_wrecked_ship_phantoon
    dw #presets_allbosskpdr_wrecked_ship_leaving_phantoon
    dw #presets_allbosskpdr_wrecked_ship_wrecked_ship_shaft
    dw #presets_allbosskpdr_wrecked_ship_attic
    dw #presets_allbosskpdr_wrecked_ship_bowling_spark
    dw #presets_allbosskpdr_wrecked_ship_leaving_gravity
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_allbosskpdr_maridia:
    dw #presets_allbosskpdr_maridia_red_tower_elevator
    dw #presets_allbosskpdr_maridia_breaking_the_tube
    dw #presets_allbosskpdr_maridia_mt_everest
    dw #presets_allbosskpdr_maridia_botwoon
    dw #presets_allbosskpdr_maridia_halfie
    dw #presets_allbosskpdr_maridia_draygon
    dw #presets_allbosskpdr_maridia_whomple_jump
    dw #presets_allbosskpdr_maridia_cac_alley
    dw #presets_allbosskpdr_maridia_plasma_spark
    dw #presets_allbosskpdr_maridia_plasma_beam
    dw #presets_allbosskpdr_maridia_plasma_spark_revisit
    dw #presets_allbosskpdr_maridia_sewers
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_allbosskpdr_upper_norfair_revisit:
    dw #presets_allbosskpdr_upper_norfair_revisit_ice_beam_hallway
    dw #presets_allbosskpdr_upper_norfair_revisit_ice_maze
    dw #presets_allbosskpdr_upper_norfair_revisit_ice_escape
    dw #presets_allbosskpdr_upper_norfair_revisit_crocomire_speedway
    dw #presets_allbosskpdr_upper_norfair_revisit_crocomire
    dw #presets_allbosskpdr_upper_norfair_revisit_leaving_crocomire
    dw #presets_allbosskpdr_upper_norfair_revisit_kronic_boost
    dw #$0000
    %cm_header("UPPER NORFAIR REVISIT")

presets_submenu_allbosskpdr_lower_norfair:
    dw #presets_allbosskpdr_lower_norfair_ln_main_hall
    dw #presets_allbosskpdr_lower_norfair_green_gate_glitch
    dw #presets_allbosskpdr_lower_norfair_golden_torizo
    dw #presets_allbosskpdr_lower_norfair_screw_attack_escape
    dw #presets_allbosskpdr_lower_norfair_worst_room_in_the_game
    dw #presets_allbosskpdr_lower_norfair_kihunter_stairs
    dw #presets_allbosskpdr_lower_norfair_metal_pirates
    dw #presets_allbosskpdr_lower_norfair_ridley
    dw #presets_allbosskpdr_lower_norfair_leaving_ridley
    dw #presets_allbosskpdr_lower_norfair_wasteland_revisit
    dw #presets_allbosskpdr_lower_norfair_fireflea_room
    dw #presets_allbosskpdr_lower_norfair_three_musketeers
    dw #presets_allbosskpdr_lower_norfair_bubble_mountain_final
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_allbosskpdr_spore_spawn:
    dw #presets_allbosskpdr_spore_spawn_maridia_passthrough
    dw #presets_allbosskpdr_spore_spawn_red_tower
    dw #presets_allbosskpdr_spore_spawn_lower_green_brinstar
    dw #presets_allbosskpdr_spore_spawn_big_pink_up
    dw #presets_allbosskpdr_spore_spawn_spore_spawn
    dw #presets_allbosskpdr_spore_spawn_big_pink_down
    dw #presets_allbosskpdr_spore_spawn_dachora_room_revisit
    dw #presets_allbosskpdr_spore_spawn_crateria
    dw #$0000
    %cm_header("SPORE SPAWN")

presets_submenu_allbosskpdr_tourian:
    dw #presets_allbosskpdr_tourian_metroids_1
    dw #presets_allbosskpdr_tourian_metroids_2
    dw #presets_allbosskpdr_tourian_metroids_3
    dw #presets_allbosskpdr_tourian_metroids_4
    dw #presets_allbosskpdr_tourian_baby_skip
    dw #presets_allbosskpdr_tourian_zeb_skip
    dw #presets_allbosskpdr_tourian_escape_room_3
    dw #presets_allbosskpdr_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")


; Crateria
presets_allbosskpdr_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_names_ceres_elevator, #preset_allbosskpdr_crateria_ceres_elevator)

presets_allbosskpdr_crateria_ceres_escape:
    %cm_preset("Ceres Escape", #preset_names_ceres_escape, #preset_allbosskpdr_crateria_ceres_escape)

presets_allbosskpdr_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_names_ceres_last_3_rooms, #preset_allbosskpdr_crateria_ceres_last_3_rooms)

presets_allbosskpdr_crateria_ship:
    %cm_preset("Ship", #preset_names_ship, #preset_allbosskpdr_crateria_ship)

presets_allbosskpdr_crateria_pit_room:
    %cm_preset("Pit Room", #preset_names_pit_room, #preset_allbosskpdr_crateria_pit_room)

presets_allbosskpdr_crateria_morph:
    %cm_preset("Morph", #preset_names_morph, #preset_allbosskpdr_crateria_morph)

presets_allbosskpdr_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_names_pit_room_revisit, #preset_allbosskpdr_crateria_pit_room_revisit)

presets_allbosskpdr_crateria_climb:
    %cm_preset("Climb", #preset_names_climb, #preset_allbosskpdr_crateria_climb)

presets_allbosskpdr_crateria_parlor:
    %cm_preset("Parlor", #preset_names_parlor, #preset_allbosskpdr_crateria_parlor)

presets_allbosskpdr_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_names_bomb_torizo, #preset_allbosskpdr_crateria_bomb_torizo)

presets_allbosskpdr_crateria_terminator:
    %cm_preset("Terminator", #preset_names_terminator, #preset_allbosskpdr_crateria_terminator)


; Brinstar
presets_allbosskpdr_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_names_green_brinstar_elevator, #preset_allbosskpdr_brinstar_green_brinstar_elevator)

presets_allbosskpdr_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_names_dachora_room, #preset_allbosskpdr_brinstar_dachora_room)

presets_allbosskpdr_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_names_big_pink, #preset_allbosskpdr_brinstar_big_pink)

presets_allbosskpdr_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_names_red_tower, #preset_allbosskpdr_brinstar_red_tower)

presets_allbosskpdr_brinstar_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_names_entering_kraids_lair, #preset_allbosskpdr_brinstar_entering_kraids_lair)

presets_allbosskpdr_brinstar_minikraid:
    %cm_preset("Mini-Kraid", #preset_names_minikraid, #preset_allbosskpdr_brinstar_minikraid)

presets_allbosskpdr_brinstar_kraid:
    %cm_preset("Kraid", #preset_names_kraid, #preset_allbosskpdr_brinstar_kraid)

presets_allbosskpdr_brinstar_minikraid_revisit:
    %cm_preset("Mini-Kraid Revisit", #preset_names_minikraid_revisit, #preset_allbosskpdr_brinstar_minikraid_revisit)


; Upper Norfair
presets_allbosskpdr_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_names_business_center, #preset_allbosskpdr_upper_norfair_business_center)

presets_allbosskpdr_upper_norfair_hijump_etank:
    %cm_preset("Hi-Jump E-Tank", #preset_names_hijump_etank, #preset_allbosskpdr_upper_norfair_hijump_etank)

presets_allbosskpdr_upper_norfair_leaving_hijump:
    %cm_preset("Leaving Hi-Jump", #preset_names_leaving_hijump, #preset_allbosskpdr_upper_norfair_leaving_hijump)

presets_allbosskpdr_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_names_precathedral, #preset_allbosskpdr_upper_norfair_precathedral)

presets_allbosskpdr_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_names_bubble_mountain, #preset_allbosskpdr_upper_norfair_bubble_mountain)

presets_allbosskpdr_upper_norfair_single_chamber:
    %cm_preset("Single Chamber", #preset_names_single_chamber, #preset_allbosskpdr_upper_norfair_single_chamber)

presets_allbosskpdr_upper_norfair_double_chamber_revisit:
    %cm_preset("Double Chamber Revisit", #preset_names_double_chamber_revisit, #preset_allbosskpdr_upper_norfair_double_chamber_revisit)

presets_allbosskpdr_upper_norfair_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_names_bubble_mountain_revisit, #preset_allbosskpdr_upper_norfair_bubble_mountain_revisit)

presets_allbosskpdr_upper_norfair_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_names_business_center_revisit, #preset_allbosskpdr_upper_norfair_business_center_revisit)


; Wrecked Ship
presets_allbosskpdr_wrecked_ship_alpha_spark:
    %cm_preset("Alpha Spark", #preset_names_alpha_spark, #preset_allbosskpdr_wrecked_ship_alpha_spark)

presets_allbosskpdr_wrecked_ship_red_tower:
    %cm_preset("Red Tower", #preset_names_red_tower, #preset_allbosskpdr_wrecked_ship_red_tower)

presets_allbosskpdr_wrecked_ship_hellway:
    %cm_preset("Hellway", #preset_names_hellway, #preset_allbosskpdr_wrecked_ship_hellway)

presets_allbosskpdr_wrecked_ship_leaving_power_bombs:
    %cm_preset("Leaving Power Bombs", #preset_names_leaving_power_bombs, #preset_allbosskpdr_wrecked_ship_leaving_power_bombs)

presets_allbosskpdr_wrecked_ship_crateria_elevator:
    %cm_preset("Crateria Elevator", #preset_names_crateria_elevator, #preset_allbosskpdr_wrecked_ship_crateria_elevator)

presets_allbosskpdr_wrecked_ship_entering_wrecked_ship:
    %cm_preset("Entering Wrecked Ship", #preset_names_entering_wrecked_ship, #preset_allbosskpdr_wrecked_ship_entering_wrecked_ship)

presets_allbosskpdr_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_names_phantoon, #preset_allbosskpdr_wrecked_ship_phantoon)

presets_allbosskpdr_wrecked_ship_leaving_phantoon:
    %cm_preset("Leaving Phantoon", #preset_names_leaving_phantoon, #preset_allbosskpdr_wrecked_ship_leaving_phantoon)

presets_allbosskpdr_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_names_wrecked_ship_shaft, #preset_allbosskpdr_wrecked_ship_wrecked_ship_shaft)

presets_allbosskpdr_wrecked_ship_attic:
    %cm_preset("Attic", #preset_names_attic, #preset_allbosskpdr_wrecked_ship_attic)

presets_allbosskpdr_wrecked_ship_bowling_spark:
    %cm_preset("Bowling Spark", #preset_names_bowling_spark, #preset_allbosskpdr_wrecked_ship_bowling_spark)

presets_allbosskpdr_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_names_leaving_gravity, #preset_allbosskpdr_wrecked_ship_leaving_gravity)


; Maridia
presets_allbosskpdr_maridia_red_tower_elevator:
    %cm_preset("Red Tower Elevator", #preset_names_red_tower_elevator, #preset_allbosskpdr_maridia_red_tower_elevator)

presets_allbosskpdr_maridia_breaking_the_tube:
    %cm_preset("Breaking The Tube", #preset_names_breaking_the_tube, #preset_allbosskpdr_maridia_breaking_the_tube)

presets_allbosskpdr_maridia_mt_everest:
    %cm_preset("Mt. Everest", #preset_names_mt_everest, #preset_allbosskpdr_maridia_mt_everest)

presets_allbosskpdr_maridia_botwoon:
    %cm_preset("Botwoon", #preset_names_botwoon, #preset_allbosskpdr_maridia_botwoon)

presets_allbosskpdr_maridia_halfie:
    %cm_preset("Halfie", #preset_names_halfie, #preset_allbosskpdr_maridia_halfie)

presets_allbosskpdr_maridia_draygon:
    %cm_preset("Draygon", #preset_names_draygon, #preset_allbosskpdr_maridia_draygon)

presets_allbosskpdr_maridia_whomple_jump:
    %cm_preset("Whomple Jump", #preset_names_whomple_jump, #preset_allbosskpdr_maridia_whomple_jump)

presets_allbosskpdr_maridia_cac_alley:
    %cm_preset("Cac Alley", #preset_names_cac_alley, #preset_allbosskpdr_maridia_cac_alley)

presets_allbosskpdr_maridia_plasma_spark:
    %cm_preset("Plasma Spark", #preset_names_plasma_spark, #preset_allbosskpdr_maridia_plasma_spark)

presets_allbosskpdr_maridia_plasma_beam:
    %cm_preset("Plasma Beam", #preset_names_plasma_beam, #preset_allbosskpdr_maridia_plasma_beam)

presets_allbosskpdr_maridia_plasma_spark_revisit:
    %cm_preset("Plasma Spark Revisit", #preset_names_plasma_spark_revisit, #preset_allbosskpdr_maridia_plasma_spark_revisit)

presets_allbosskpdr_maridia_sewers:
    %cm_preset("Sewers", #preset_names_sewers, #preset_allbosskpdr_maridia_sewers)


; Upper Norfair Revisit
presets_allbosskpdr_upper_norfair_revisit_ice_beam_hallway:
    %cm_preset("Ice Beam Hallway", #preset_names_ice_beam_hallway, #preset_allbosskpdr_upper_norfair_revisit_ice_beam_hallway)

presets_allbosskpdr_upper_norfair_revisit_ice_maze:
    %cm_preset("Ice Maze", #preset_names_ice_maze, #preset_allbosskpdr_upper_norfair_revisit_ice_maze)

presets_allbosskpdr_upper_norfair_revisit_ice_escape:
    %cm_preset("Ice Escape", #preset_names_ice_escape, #preset_allbosskpdr_upper_norfair_revisit_ice_escape)

presets_allbosskpdr_upper_norfair_revisit_crocomire_speedway:
    %cm_preset("Crocomire Speedway", #preset_names_crocomire_speedway, #preset_allbosskpdr_upper_norfair_revisit_crocomire_speedway)

presets_allbosskpdr_upper_norfair_revisit_crocomire:
    %cm_preset("Crocomire", #preset_names_crocomire, #preset_allbosskpdr_upper_norfair_revisit_crocomire)

presets_allbosskpdr_upper_norfair_revisit_leaving_crocomire:
    %cm_preset("Leaving Crocomire", #preset_names_leaving_crocomire, #preset_allbosskpdr_upper_norfair_revisit_leaving_crocomire)

presets_allbosskpdr_upper_norfair_revisit_kronic_boost:
    %cm_preset("Kronic Boost", #preset_names_kronic_boost, #preset_allbosskpdr_upper_norfair_revisit_kronic_boost)


; Lower Norfair
presets_allbosskpdr_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_names_ln_main_hall, #preset_allbosskpdr_lower_norfair_ln_main_hall)

presets_allbosskpdr_lower_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_names_green_gate_glitch, #preset_allbosskpdr_lower_norfair_green_gate_glitch)

presets_allbosskpdr_lower_norfair_golden_torizo:
    %cm_preset("Golden Torizo", #preset_names_golden_torizo, #preset_allbosskpdr_lower_norfair_golden_torizo)

presets_allbosskpdr_lower_norfair_screw_attack_escape:
    %cm_preset("Screw Attack Escape", #preset_names_screw_attack_escape, #preset_allbosskpdr_lower_norfair_screw_attack_escape)

presets_allbosskpdr_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_names_worst_room_in_the_game, #preset_allbosskpdr_lower_norfair_worst_room_in_the_game)

presets_allbosskpdr_lower_norfair_kihunter_stairs:
    %cm_preset("Kihunter Stairs", #preset_names_kihunter_stairs, #preset_allbosskpdr_lower_norfair_kihunter_stairs)

presets_allbosskpdr_lower_norfair_metal_pirates:
    %cm_preset("Metal Pirates", #preset_names_metal_pirates, #preset_allbosskpdr_lower_norfair_metal_pirates)

presets_allbosskpdr_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_names_ridley, #preset_allbosskpdr_lower_norfair_ridley)

presets_allbosskpdr_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_names_leaving_ridley, #preset_allbosskpdr_lower_norfair_leaving_ridley)

presets_allbosskpdr_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_names_wasteland_revisit, #preset_allbosskpdr_lower_norfair_wasteland_revisit)

presets_allbosskpdr_lower_norfair_fireflea_room:
    %cm_preset("Fireflea Room", #preset_names_fireflea_room, #preset_allbosskpdr_lower_norfair_fireflea_room)

presets_allbosskpdr_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_names_three_musketeers, #preset_allbosskpdr_lower_norfair_three_musketeers)

presets_allbosskpdr_lower_norfair_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_names_bubble_mountain_final, #preset_allbosskpdr_lower_norfair_bubble_mountain_final)


; Spore Spawn
presets_allbosskpdr_spore_spawn_maridia_passthrough:
    %cm_preset("Maridia Passthrough", #preset_names_maridia_passthrough, #preset_allbosskpdr_spore_spawn_maridia_passthrough)

presets_allbosskpdr_spore_spawn_red_tower:
    %cm_preset("Red Tower", #preset_names_red_tower, #preset_allbosskpdr_spore_spawn_red_tower)

presets_allbosskpdr_spore_spawn_lower_green_brinstar:
    %cm_preset("Lower Green Brinstar", #preset_names_lower_green_brinstar, #preset_allbosskpdr_spore_spawn_lower_green_brinstar)

presets_allbosskpdr_spore_spawn_big_pink_up:
    %cm_preset("Big Pink Up", #preset_names_big_pink_up, #preset_allbosskpdr_spore_spawn_big_pink_up)

presets_allbosskpdr_spore_spawn_spore_spawn:
    %cm_preset("Spore Spawn", #preset_names_spore_spawn, #preset_allbosskpdr_spore_spawn_spore_spawn)

presets_allbosskpdr_spore_spawn_big_pink_down:
    %cm_preset("Big Pink Down", #preset_names_big_pink_down, #preset_allbosskpdr_spore_spawn_big_pink_down)

presets_allbosskpdr_spore_spawn_dachora_room_revisit:
    %cm_preset("Dachora Room Revisit", #preset_names_dachora_room_revisit, #preset_allbosskpdr_spore_spawn_dachora_room_revisit)

presets_allbosskpdr_spore_spawn_crateria:
    %cm_preset("Crateria", #preset_names_crateria, #preset_allbosskpdr_spore_spawn_crateria)


; Tourian
presets_allbosskpdr_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_names_metroids_1, #preset_allbosskpdr_tourian_metroids_1)

presets_allbosskpdr_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_names_metroids_2, #preset_allbosskpdr_tourian_metroids_2)

presets_allbosskpdr_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_names_metroids_3, #preset_allbosskpdr_tourian_metroids_3)

presets_allbosskpdr_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_names_metroids_4, #preset_allbosskpdr_tourian_metroids_4)

presets_allbosskpdr_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_names_baby_skip, #preset_allbosskpdr_tourian_baby_skip)

presets_allbosskpdr_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_names_zeb_skip, #preset_allbosskpdr_tourian_zeb_skip)

presets_allbosskpdr_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_names_escape_room_3, #preset_allbosskpdr_tourian_escape_room_3)

presets_allbosskpdr_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_names_escape_parlor, #preset_allbosskpdr_tourian_escape_parlor)

