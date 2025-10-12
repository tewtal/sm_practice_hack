PresetsMenu14speed:
    dw #presets_goto_14speed_crateria
    dw #presets_goto_14speed_brinstar
    dw #presets_goto_14speed_wrecked_ship
    dw #presets_goto_14speed_brinstar_revisit
    dw #presets_goto_14speed_upper_norfair
    dw #presets_goto_14speed_lower_norfair
    dw #presets_goto_14speed_maridia
    dw #presets_goto_14speed_tourian
    dw #$0000
    %cm_header("PRESETS FOR 14% SPEED")

presets_goto_14speed_crateria:
    %cm_submenu("Crateria", #presets_submenu_14speed_crateria)

presets_goto_14speed_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_14speed_brinstar)

presets_goto_14speed_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_14speed_wrecked_ship)

presets_goto_14speed_brinstar_revisit:
    %cm_submenu("Brinstar Revisit", #presets_submenu_14speed_brinstar_revisit)

presets_goto_14speed_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_14speed_upper_norfair)

presets_goto_14speed_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_14speed_lower_norfair)

presets_goto_14speed_maridia:
    %cm_submenu("Maridia", #presets_submenu_14speed_maridia)

presets_goto_14speed_tourian:
    %cm_submenu("Tourian", #presets_submenu_14speed_tourian)

presets_submenu_14speed_crateria:
    dw #presets_14speed_crateria_ceres_elevator
    dw #presets_14speed_crateria_ceres_escape
    dw #presets_14speed_crateria_ceres_last_3_rooms
    dw #presets_14speed_crateria_ship
    dw #presets_14speed_crateria_parlor
    dw #presets_14speed_crateria_parlor_downback
    dw #presets_14speed_crateria_climb_down
    dw #presets_14speed_crateria_pit_room
    dw #presets_14speed_crateria_morph
    dw #presets_14speed_crateria_construction_zone_down
    dw #presets_14speed_crateria_construction_zone_up
    dw #presets_14speed_crateria_pit_room_revisit
    dw #presets_14speed_crateria_climb_up
    dw #presets_14speed_crateria_parlor_revisit
    dw #presets_14speed_crateria_flyway
    dw #presets_14speed_crateria_bomb_torizo
    dw #presets_14speed_crateria_alcatraz
    dw #presets_14speed_crateria_terminator
    dw #presets_14speed_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_14speed_brinstar:
    dw #presets_14speed_brinstar_green_brinstar_elevator
    dw #presets_14speed_brinstar_big_pink
    dw #presets_14speed_brinstar_red_tower
    dw #presets_14speed_brinstar_hellway
    dw #presets_14speed_brinstar_caterpillar_room
    dw #presets_14speed_brinstar_leaving_power_bombs
    dw #presets_14speed_brinstar_kihunter_room
    dw #presets_14speed_brinstar_moat
    dw #presets_14speed_brinstar_ocean
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_14speed_wrecked_ship:
    dw #presets_14speed_wrecked_ship_wrecked_ship_shaft
    dw #presets_14speed_wrecked_ship_phantoon
    dw #presets_14speed_wrecked_ship_wrecked_ship_supers
    dw #presets_14speed_wrecked_ship_shaft_revisit
    dw #presets_14speed_wrecked_ship_attic
    dw #presets_14speed_wrecked_ship_bowling_alley_path
    dw #presets_14speed_wrecked_ship_bowling_alley
    dw #presets_14speed_wrecked_ship_leaving_gravity
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_14speed_brinstar_revisit:
    dw #presets_14speed_brinstar_revisit_red_tower_elevator
    dw #presets_14speed_brinstar_revisit_breaking_the_tube
    dw #presets_14speed_brinstar_revisit_entering_kraids_lair
    dw #presets_14speed_brinstar_revisit_minikraid
    dw #presets_14speed_brinstar_revisit_kraid
    dw #presets_14speed_brinstar_revisit_minikraid_revisit
    dw #presets_14speed_brinstar_revisit_kraid_etank
    dw #$0000
    %cm_header("BRINSTAR REVISIT")

presets_submenu_14speed_upper_norfair:
    dw #presets_14speed_upper_norfair_precathedral
    dw #presets_14speed_upper_norfair_bubble_mountain
    dw #presets_14speed_upper_norfair_bubble_mountain_revisit
    dw #presets_14speed_upper_norfair_magdollite_room
    dw #presets_14speed_upper_norfair_lava_spark
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_14speed_lower_norfair:
    dw #presets_14speed_lower_norfair_ln_main_hall
    dw #presets_14speed_lower_norfair_pillars
    dw #presets_14speed_lower_norfair_worst_room_in_the_game
    dw #presets_14speed_lower_norfair_amphitheatre
    dw #presets_14speed_lower_norfair_kihunter_stairs
    dw #presets_14speed_lower_norfair_wasteland
    dw #presets_14speed_lower_norfair_metal_pirates
    dw #presets_14speed_lower_norfair_ridley_farming_room
    dw #presets_14speed_lower_norfair_ridley
    dw #presets_14speed_lower_norfair_leaving_ridley
    dw #presets_14speed_lower_norfair_wasteland_revisit
    dw #presets_14speed_lower_norfair_kihunter_stairs_revisit
    dw #presets_14speed_lower_norfair_fireflea_room
    dw #presets_14speed_lower_norfair_three_musketeers
    dw #presets_14speed_lower_norfair_bubble_mountain_revisit
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_14speed_maridia:
    dw #presets_14speed_maridia_entering_maridia
    dw #presets_14speed_maridia_mt_everest
    dw #presets_14speed_maridia_aqueduct
    dw #presets_14speed_maridia_botwoon
    dw #presets_14speed_maridia_botwoon_etank_room
    dw #presets_14speed_maridia_colosseum
    dw #presets_14speed_maridia_draygon
    dw #presets_14speed_maridia_colosseum_revisit
    dw #presets_14speed_maridia_reverse_botwoon
    dw #presets_14speed_maridia_aqueduct_revisit
    dw #presets_14speed_maridia_everest_revisit
    dw #presets_14speed_maridia_red_tower_green_gate
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_14speed_tourian:
    dw #presets_14speed_tourian_kihunter_room_revisit
    dw #presets_14speed_tourian_terminator_revisit
    dw #presets_14speed_tourian_pirate_shaft_revisit
    dw #presets_14speed_tourian_metroids_1
    dw #presets_14speed_tourian_metroids_2
    dw #presets_14speed_tourian_metroids_3
    dw #presets_14speed_tourian_metroids_4
    dw #presets_14speed_tourian_doors_and_refills
    dw #presets_14speed_tourian_zeb_skip
    dw #presets_14speed_tourian_mother_brain_2
    dw #presets_14speed_tourian_mother_brain_3
    dw #presets_14speed_tourian_zebes_escape
    dw #presets_14speed_tourian_escape_room_3
    dw #presets_14speed_tourian_escape_room_4
    dw #presets_14speed_tourian_escape_climb
    dw #presets_14speed_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")


; Crateria
presets_14speed_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_names_ceres_elevator, #preset_14speed_crateria_ceres_elevator)

presets_14speed_crateria_ceres_escape:
    %cm_preset("Ceres Escape", #preset_names_ceres_escape, #preset_14speed_crateria_ceres_escape)

presets_14speed_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_names_ceres_last_3_rooms, #preset_14speed_crateria_ceres_last_3_rooms)

presets_14speed_crateria_ship:
    %cm_preset("Ship", #preset_names_ship, #preset_14speed_crateria_ship)

presets_14speed_crateria_parlor:
    %cm_preset("Parlor", #preset_names_parlor, #preset_14speed_crateria_parlor)

presets_14speed_crateria_parlor_downback:
    %cm_preset("Parlor Downback", #preset_names_parlor_downback, #preset_14speed_crateria_parlor_downback)

presets_14speed_crateria_climb_down:
    %cm_preset("Climb Down", #preset_names_climb_down, #preset_14speed_crateria_climb_down)

presets_14speed_crateria_pit_room:
    %cm_preset("Pit Room", #preset_names_pit_room, #preset_14speed_crateria_pit_room)

presets_14speed_crateria_morph:
    %cm_preset("Morph", #preset_names_morph, #preset_14speed_crateria_morph)

presets_14speed_crateria_construction_zone_down:
    %cm_preset("Construction Zone Down", #preset_names_construction_zone_down, #preset_14speed_crateria_construction_zone_down)

presets_14speed_crateria_construction_zone_up:
    %cm_preset("Construction Zone Up", #preset_names_construction_zone_up, #preset_14speed_crateria_construction_zone_up)

presets_14speed_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_names_pit_room_revisit, #preset_14speed_crateria_pit_room_revisit)

presets_14speed_crateria_climb_up:
    %cm_preset("Climb Up", #preset_names_climb_up, #preset_14speed_crateria_climb_up)

presets_14speed_crateria_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_names_parlor_revisit, #preset_14speed_crateria_parlor_revisit)

presets_14speed_crateria_flyway:
    %cm_preset("Flyway", #preset_names_flyway, #preset_14speed_crateria_flyway)

presets_14speed_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_names_bomb_torizo, #preset_14speed_crateria_bomb_torizo)

presets_14speed_crateria_alcatraz:
    %cm_preset("Alcatraz", #preset_names_alcatraz, #preset_14speed_crateria_alcatraz)

presets_14speed_crateria_terminator:
    %cm_preset("Terminator", #preset_names_terminator, #preset_14speed_crateria_terminator)

presets_14speed_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_names_green_pirate_shaft, #preset_14speed_crateria_green_pirate_shaft)


; Brinstar
presets_14speed_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_names_green_brinstar_elevator, #preset_14speed_brinstar_green_brinstar_elevator)

presets_14speed_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_names_big_pink, #preset_14speed_brinstar_big_pink)

presets_14speed_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_names_red_tower, #preset_14speed_brinstar_red_tower)

presets_14speed_brinstar_hellway:
    %cm_preset("Hellway", #preset_names_hellway, #preset_14speed_brinstar_hellway)

presets_14speed_brinstar_caterpillar_room:
    %cm_preset("Caterpillar Room", #preset_names_caterpillar_room, #preset_14speed_brinstar_caterpillar_room)

presets_14speed_brinstar_leaving_power_bombs:
    %cm_preset("Leaving Power Bombs", #preset_names_leaving_power_bombs, #preset_14speed_brinstar_leaving_power_bombs)

presets_14speed_brinstar_kihunter_room:
    %cm_preset("Kihunter Room", #preset_names_kihunter_room, #preset_14speed_brinstar_kihunter_room)

presets_14speed_brinstar_moat:
    %cm_preset("Moat", #preset_names_moat, #preset_14speed_brinstar_moat)

presets_14speed_brinstar_ocean:
    %cm_preset("Ocean", #preset_names_ocean, #preset_14speed_brinstar_ocean)


; Wrecked Ship
presets_14speed_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_names_wrecked_ship_shaft, #preset_14speed_wrecked_ship_wrecked_ship_shaft)

presets_14speed_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_names_phantoon, #preset_14speed_wrecked_ship_phantoon)

presets_14speed_wrecked_ship_wrecked_ship_supers:
    %cm_preset("Wrecked Ship Supers", #preset_names_wrecked_ship_supers, #preset_14speed_wrecked_ship_wrecked_ship_supers)

presets_14speed_wrecked_ship_shaft_revisit:
    %cm_preset("Shaft Revisit", #preset_names_shaft_revisit, #preset_14speed_wrecked_ship_shaft_revisit)

presets_14speed_wrecked_ship_attic:
    %cm_preset("Attic", #preset_names_attic, #preset_14speed_wrecked_ship_attic)

presets_14speed_wrecked_ship_bowling_alley_path:
    %cm_preset("Bowling Alley Path", #preset_names_bowling_alley_path, #preset_14speed_wrecked_ship_bowling_alley_path)

presets_14speed_wrecked_ship_bowling_alley:
    %cm_preset("Bowling Alley", #preset_names_bowling_alley, #preset_14speed_wrecked_ship_bowling_alley)

presets_14speed_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_names_leaving_gravity, #preset_14speed_wrecked_ship_leaving_gravity)


; Brinstar Revisit
presets_14speed_brinstar_revisit_red_tower_elevator:
    %cm_preset("Red Tower Elevator", #preset_names_red_tower_elevator, #preset_14speed_brinstar_revisit_red_tower_elevator)

presets_14speed_brinstar_revisit_breaking_the_tube:
    %cm_preset("Breaking The Tube", #preset_names_breaking_the_tube, #preset_14speed_brinstar_revisit_breaking_the_tube)

presets_14speed_brinstar_revisit_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_names_entering_kraids_lair, #preset_14speed_brinstar_revisit_entering_kraids_lair)

presets_14speed_brinstar_revisit_minikraid:
    %cm_preset("Mini-Kraid", #preset_names_minikraid, #preset_14speed_brinstar_revisit_minikraid)

presets_14speed_brinstar_revisit_kraid:
    %cm_preset("Kraid", #preset_names_kraid, #preset_14speed_brinstar_revisit_kraid)

presets_14speed_brinstar_revisit_minikraid_revisit:
    %cm_preset("Mini-Kraid Revisit", #preset_names_minikraid_revisit, #preset_14speed_brinstar_revisit_minikraid_revisit)

presets_14speed_brinstar_revisit_kraid_etank:
    %cm_preset("Kraid E-Tank", #preset_names_kraid_etank, #preset_14speed_brinstar_revisit_kraid_etank)


; Upper Norfair
presets_14speed_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_names_precathedral, #preset_14speed_upper_norfair_precathedral)

presets_14speed_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_names_bubble_mountain, #preset_14speed_upper_norfair_bubble_mountain)

presets_14speed_upper_norfair_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_names_bubble_mountain_revisit, #preset_14speed_upper_norfair_bubble_mountain_revisit)

presets_14speed_upper_norfair_magdollite_room:
    %cm_preset("Magdollite Room", #preset_names_magdollite_room, #preset_14speed_upper_norfair_magdollite_room)

presets_14speed_upper_norfair_lava_spark:
    %cm_preset("Lava Spark", #preset_names_lava_spark, #preset_14speed_upper_norfair_lava_spark)


; Lower Norfair
presets_14speed_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_names_ln_main_hall, #preset_14speed_lower_norfair_ln_main_hall)

presets_14speed_lower_norfair_pillars:
    %cm_preset("Pillars", #preset_names_pillars, #preset_14speed_lower_norfair_pillars)

presets_14speed_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_names_worst_room_in_the_game, #preset_14speed_lower_norfair_worst_room_in_the_game)

presets_14speed_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_names_amphitheatre, #preset_14speed_lower_norfair_amphitheatre)

presets_14speed_lower_norfair_kihunter_stairs:
    %cm_preset("Kihunter Stairs", #preset_names_kihunter_stairs, #preset_14speed_lower_norfair_kihunter_stairs)

presets_14speed_lower_norfair_wasteland:
    %cm_preset("Wasteland", #preset_names_wasteland, #preset_14speed_lower_norfair_wasteland)

presets_14speed_lower_norfair_metal_pirates:
    %cm_preset("Metal Pirates", #preset_names_metal_pirates, #preset_14speed_lower_norfair_metal_pirates)

presets_14speed_lower_norfair_ridley_farming_room:
    %cm_preset("Ridley Farming Room", #preset_names_ridley_farming_room, #preset_14speed_lower_norfair_ridley_farming_room)

presets_14speed_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_names_ridley, #preset_14speed_lower_norfair_ridley)

presets_14speed_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_names_leaving_ridley, #preset_14speed_lower_norfair_leaving_ridley)

presets_14speed_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_names_wasteland_revisit, #preset_14speed_lower_norfair_wasteland_revisit)

presets_14speed_lower_norfair_kihunter_stairs_revisit:
    %cm_preset("Kihunter Stairs Revisit", #preset_names_kihunter_stairs_revisit, #preset_14speed_lower_norfair_kihunter_stairs_revisit)

presets_14speed_lower_norfair_fireflea_room:
    %cm_preset("Fireflea Room", #preset_names_fireflea_room, #preset_14speed_lower_norfair_fireflea_room)

presets_14speed_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_names_three_musketeers, #preset_14speed_lower_norfair_three_musketeers)

presets_14speed_lower_norfair_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_names_bubble_mountain_revisit, #preset_14speed_lower_norfair_bubble_mountain_revisit)


; Maridia
presets_14speed_maridia_entering_maridia:
    %cm_preset("Entering Maridia", #preset_names_entering_maridia, #preset_14speed_maridia_entering_maridia)

presets_14speed_maridia_mt_everest:
    %cm_preset("Mt. Everest", #preset_names_mt_everest, #preset_14speed_maridia_mt_everest)

presets_14speed_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_names_aqueduct, #preset_14speed_maridia_aqueduct)

presets_14speed_maridia_botwoon:
    %cm_preset("Botwoon", #preset_names_botwoon, #preset_14speed_maridia_botwoon)

presets_14speed_maridia_botwoon_etank_room:
    %cm_preset("Botwoon E-Tank Room", #preset_names_botwoon_etank_room, #preset_14speed_maridia_botwoon_etank_room)

presets_14speed_maridia_colosseum:
    %cm_preset("Colosseum", #preset_names_colosseum, #preset_14speed_maridia_colosseum)

presets_14speed_maridia_draygon:
    %cm_preset("Draygon", #preset_names_draygon, #preset_14speed_maridia_draygon)

presets_14speed_maridia_colosseum_revisit:
    %cm_preset("Colosseum Revisit", #preset_names_colosseum_revisit, #preset_14speed_maridia_colosseum_revisit)

presets_14speed_maridia_reverse_botwoon:
    %cm_preset("Reverse Botwoon", #preset_names_reverse_botwoon, #preset_14speed_maridia_reverse_botwoon)

presets_14speed_maridia_aqueduct_revisit:
    %cm_preset("Aqueduct Revisit", #preset_names_aqueduct_revisit, #preset_14speed_maridia_aqueduct_revisit)

presets_14speed_maridia_everest_revisit:
    %cm_preset("Everest Revisit", #preset_names_everest_revisit, #preset_14speed_maridia_everest_revisit)

presets_14speed_maridia_red_tower_green_gate:
    %cm_preset("Red Tower Green Gate", #preset_names_red_tower_green_gate, #preset_14speed_maridia_red_tower_green_gate)


; Tourian
presets_14speed_tourian_kihunter_room_revisit:
    %cm_preset("Kihunter Room Revisit", #preset_names_kihunter_room_revisit, #preset_14speed_tourian_kihunter_room_revisit)

presets_14speed_tourian_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_names_terminator_revisit, #preset_14speed_tourian_terminator_revisit)

presets_14speed_tourian_pirate_shaft_revisit:
    %cm_preset("Pirate Shaft Revisit", #preset_names_pirate_shaft_revisit, #preset_14speed_tourian_pirate_shaft_revisit)

presets_14speed_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_names_metroids_1, #preset_14speed_tourian_metroids_1)

presets_14speed_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_names_metroids_2, #preset_14speed_tourian_metroids_2)

presets_14speed_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_names_metroids_3, #preset_14speed_tourian_metroids_3)

presets_14speed_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_names_metroids_4, #preset_14speed_tourian_metroids_4)

presets_14speed_tourian_doors_and_refills:
    %cm_preset("Doors and Refills", #preset_names_doors_and_refills, #preset_14speed_tourian_doors_and_refills)

presets_14speed_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_names_zeb_skip, #preset_14speed_tourian_zeb_skip)

presets_14speed_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_names_mother_brain_2, #preset_14speed_tourian_mother_brain_2)

presets_14speed_tourian_mother_brain_3:
    %cm_preset("Mother Brain 3", #preset_names_mother_brain_3, #preset_14speed_tourian_mother_brain_3)

presets_14speed_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_names_zebes_escape, #preset_14speed_tourian_zebes_escape)

presets_14speed_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_names_escape_room_3, #preset_14speed_tourian_escape_room_3)

presets_14speed_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_names_escape_room_4, #preset_14speed_tourian_escape_room_4)

presets_14speed_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_names_escape_climb, #preset_14speed_tourian_escape_climb)

presets_14speed_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_names_escape_parlor, #preset_14speed_tourian_escape_parlor)

