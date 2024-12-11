PresetsMenuNghyper:
    dw #presets_goto_nghyper_ceres_station
    dw #presets_goto_nghyper_wrecked_ship
    dw #presets_goto_nghyper_red_brinstar
    dw #presets_goto_nghyper_norfair_preridley
    dw #presets_goto_nghyper_norfair_postridley
    dw #presets_goto_nghyper_kraids_lair
    dw #presets_goto_nghyper_maridia
    dw #presets_goto_nghyper_crateria
    dw #presets_goto_nghyper_tourian
    dw #$0000
    %cm_header("PRESETS FOR NG+ HYPER")

presets_goto_nghyper_ceres_station:
    %cm_submenu("Ceres Station", #presets_submenu_nghyper_ceres_station)

presets_goto_nghyper_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_nghyper_wrecked_ship)

presets_goto_nghyper_red_brinstar:
    %cm_submenu("Red Brinstar", #presets_submenu_nghyper_red_brinstar)

presets_goto_nghyper_norfair_preridley:
    %cm_submenu("Norfair Pre-Ridley", #presets_submenu_nghyper_norfair_preridley)

presets_goto_nghyper_norfair_postridley:
    %cm_submenu("Norfair Post-Ridley", #presets_submenu_nghyper_norfair_postridley)

presets_goto_nghyper_kraids_lair:
    %cm_submenu("Kraid's Lair", #presets_submenu_nghyper_kraids_lair)

presets_goto_nghyper_maridia:
    %cm_submenu("Maridia", #presets_submenu_nghyper_maridia)

presets_goto_nghyper_crateria:
    %cm_submenu("Crateria", #presets_submenu_nghyper_crateria)

presets_goto_nghyper_tourian:
    %cm_submenu("Tourian", #presets_submenu_nghyper_tourian)

presets_submenu_nghyper_ceres_station:
    dw #presets_nghyper_ceres_station_ceres_elevator
    dw #presets_nghyper_ceres_station_magnet_stairs
    dw #presets_nghyper_ceres_station_ceres_ridley
    dw #presets_nghyper_ceres_station_ceres_escape
    dw #presets_nghyper_ceres_station_magnet_stairs_escape
    dw #$0000
    %cm_header("CERES STATION")

presets_submenu_nghyper_wrecked_ship:
    dw #presets_nghyper_wrecked_ship_ship
    dw #presets_nghyper_wrecked_ship_moat
    dw #presets_nghyper_wrecked_ship_ocean
    dw #presets_nghyper_wrecked_ship_entering_wrecked_ship
    dw #presets_nghyper_wrecked_ship_basement
    dw #presets_nghyper_wrecked_ship_phantoon
    dw #presets_nghyper_wrecked_ship_leaving_phantoon
    dw #presets_nghyper_wrecked_ship_wrecked_ship_shaft
    dw #presets_nghyper_wrecked_ship_leaving_wrecked_ship
    dw #presets_nghyper_wrecked_ship_kihunters_revisit
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_nghyper_red_brinstar:
    dw #presets_nghyper_red_brinstar_red_brinstar_elevator
    dw #presets_nghyper_red_brinstar_hellway
    dw #presets_nghyper_red_brinstar_red_tower
    dw #presets_nghyper_red_brinstar_bottom_of_red_tower
    dw #presets_nghyper_red_brinstar_breaking_tube
    dw #presets_nghyper_red_brinstar_upper_norfair_elevator
    dw #$0000
    %cm_header("RED BRINSTAR")

presets_submenu_nghyper_norfair_preridley:
    dw #presets_nghyper_norfair_preridley_business_center
    dw #presets_nghyper_norfair_preridley_frog_speedway
    dw #presets_nghyper_norfair_preridley_purple_shaft
    dw #presets_nghyper_norfair_preridley_magdollite_room
    dw #presets_nghyper_norfair_preridley_kronic_boost
    dw #presets_nghyper_norfair_preridley_lower_norfair_elevator
    dw #presets_nghyper_norfair_preridley_ln_main_hall
    dw #presets_nghyper_norfair_preridley_prepillars
    dw #presets_nghyper_norfair_preridley_fast_pillars
    dw #presets_nghyper_norfair_preridley_worst_room_in_the_game
    dw #presets_nghyper_norfair_preridley_amphitheatre
    dw #presets_nghyper_norfair_preridley_kihunter_stairs_down
    dw #presets_nghyper_norfair_preridley_wasteland
    dw #presets_nghyper_norfair_preridley_metal_ninja_pirates
    dw #presets_nghyper_norfair_preridley_plowerhouse
    dw #presets_nghyper_norfair_preridley_ridley
    dw #$0000
    %cm_header("NORFAIR PRE-RIDLEY")

presets_submenu_nghyper_norfair_postridley:
    dw #presets_nghyper_norfair_postridley_leaving_ridley
    dw #presets_nghyper_norfair_postridley_reverse_plowerhouse
    dw #presets_nghyper_norfair_postridley_wasteland_revisit
    dw #presets_nghyper_norfair_postridley_kihunter_stairs_up
    dw #presets_nghyper_norfair_postridley_fire_flea_room
    dw #presets_nghyper_norfair_postridley_springball_maze
    dw #presets_nghyper_norfair_postridley_three_musketeers
    dw #presets_nghyper_norfair_postridley_single_chamber
    dw #presets_nghyper_norfair_postridley_bubble_mountain
    dw #presets_nghyper_norfair_postridley_frog_speedway_revisit
    dw #presets_nghyper_norfair_postridley_business_center_revisit
    dw #$0000
    %cm_header("NORFAIR POST-RIDLEY")

presets_submenu_nghyper_kraids_lair:
    dw #presets_nghyper_kraids_lair_entering_kraids_lair
    dw #presets_nghyper_kraids_lair_warehouse_kihunters
    dw #presets_nghyper_kraids_lair_minikraid_hallway
    dw #presets_nghyper_kraids_lair_kraid
    dw #presets_nghyper_kraids_lair_leaving_kraid
    dw #presets_nghyper_kraids_lair_minikraid_hallway_revisit
    dw #presets_nghyper_kraids_lair_kihunters_revisit_2
    dw #presets_nghyper_kraids_lair_warehouse_zealas
    dw #presets_nghyper_kraids_lair_leaving_kraids_lair
    dw #$0000
    %cm_header("KRAID'S LAIR")

presets_submenu_nghyper_maridia:
    dw #presets_nghyper_maridia_entering_maridia
    dw #presets_nghyper_maridia_main_street
    dw #presets_nghyper_maridia_fish_tank
    dw #presets_nghyper_maridia_mt_everest
    dw #presets_nghyper_maridia_crab_shaft
    dw #presets_nghyper_maridia_aqueduct
    dw #presets_nghyper_maridia_botwoon_hallway
    dw #presets_nghyper_maridia_botwoon
    dw #presets_nghyper_maridia_halfie
    dw #presets_nghyper_maridia_draygon
    dw #presets_nghyper_maridia_spike_suit_colosseum
    dw #presets_nghyper_maridia_womple_jump
    dw #presets_nghyper_maridia_reverse_botwoon_hallway
    dw #presets_nghyper_maridia_aqueduct_revisit
    dw #presets_nghyper_maridia_crab_shaft_revisit
    dw #presets_nghyper_maridia_mt_everest_revisit
    dw #presets_nghyper_maridia_leaving_maridia
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_nghyper_crateria:
    dw #presets_nghyper_crateria_red_brinstar_gate
    dw #presets_nghyper_crateria_crateria_kihunters_final
    dw #presets_nghyper_crateria_landing_site
    dw #presets_nghyper_crateria_terminator_etank
    dw #presets_nghyper_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_nghyper_tourian:
    dw #presets_nghyper_tourian_tourian_elevator_room
    dw #presets_nghyper_tourian_metroids_1
    dw #presets_nghyper_tourian_metroids_2
    dw #presets_nghyper_tourian_metroids_3
    dw #presets_nghyper_tourian_metroids_4
    dw #presets_nghyper_tourian_giant_hoppers
    dw #presets_nghyper_tourian_baby_skip
    dw #presets_nghyper_tourian_gadora_room
    dw #presets_nghyper_tourian_zeb_skip
    dw #presets_nghyper_tourian_mother_brain_2
    dw #presets_nghyper_tourian_zebes_escape
    dw #presets_nghyper_tourian_escape_room_3
    dw #presets_nghyper_tourian_escape_room_4
    dw #presets_nghyper_tourian_escape_climb
    dw #presets_nghyper_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Ceres Station
presets_nghyper_ceres_station_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_nghyper_ceres_station_ceres_elevator)

presets_nghyper_ceres_station_magnet_stairs:
    %cm_preset("Magnet Stairs", #preset_nghyper_ceres_station_magnet_stairs)

presets_nghyper_ceres_station_ceres_ridley:
    %cm_preset("Ceres Ridley", #preset_nghyper_ceres_station_ceres_ridley)

presets_nghyper_ceres_station_ceres_escape:
    %cm_preset("Ceres Escape", #preset_nghyper_ceres_station_ceres_escape)

presets_nghyper_ceres_station_magnet_stairs_escape:
    %cm_preset("Magnet Stairs Escape", #preset_nghyper_ceres_station_magnet_stairs_escape)


; Wrecked Ship
presets_nghyper_wrecked_ship_ship:
    %cm_preset("Ship", #preset_nghyper_wrecked_ship_ship)

presets_nghyper_wrecked_ship_moat:
    %cm_preset("Moat", #preset_nghyper_wrecked_ship_moat)

presets_nghyper_wrecked_ship_ocean:
    %cm_preset("Ocean", #preset_nghyper_wrecked_ship_ocean)

presets_nghyper_wrecked_ship_entering_wrecked_ship:
    %cm_preset("Entering Wrecked Ship", #preset_nghyper_wrecked_ship_entering_wrecked_ship)

presets_nghyper_wrecked_ship_basement:
    %cm_preset("Basement", #preset_nghyper_wrecked_ship_basement)

presets_nghyper_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_nghyper_wrecked_ship_phantoon)

presets_nghyper_wrecked_ship_leaving_phantoon:
    %cm_preset("Leaving Phantoon", #preset_nghyper_wrecked_ship_leaving_phantoon)

presets_nghyper_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_nghyper_wrecked_ship_wrecked_ship_shaft)

presets_nghyper_wrecked_ship_leaving_wrecked_ship:
    %cm_preset("Leaving Wrecked Ship", #preset_nghyper_wrecked_ship_leaving_wrecked_ship)

presets_nghyper_wrecked_ship_kihunters_revisit:
    %cm_preset("Kihunters Revisit", #preset_nghyper_wrecked_ship_kihunters_revisit)


; Red Brinstar
presets_nghyper_red_brinstar_red_brinstar_elevator:
    %cm_preset("Red Brinstar Elevator", #preset_nghyper_red_brinstar_red_brinstar_elevator)

presets_nghyper_red_brinstar_hellway:
    %cm_preset("Hellway", #preset_nghyper_red_brinstar_hellway)

presets_nghyper_red_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_nghyper_red_brinstar_red_tower)

presets_nghyper_red_brinstar_bottom_of_red_tower:
    %cm_preset("Bottom of Red Tower", #preset_nghyper_red_brinstar_bottom_of_red_tower)

presets_nghyper_red_brinstar_breaking_tube:
    %cm_preset("Breaking Tube", #preset_nghyper_red_brinstar_breaking_tube)

presets_nghyper_red_brinstar_upper_norfair_elevator:
    %cm_preset("Upper Norfair Elevator", #preset_nghyper_red_brinstar_upper_norfair_elevator)


; Norfair Pre-Ridley
presets_nghyper_norfair_preridley_business_center:
    %cm_preset("Business Center", #preset_nghyper_norfair_preridley_business_center)

presets_nghyper_norfair_preridley_frog_speedway:
    %cm_preset("Frog Speedway", #preset_nghyper_norfair_preridley_frog_speedway)

presets_nghyper_norfair_preridley_purple_shaft:
    %cm_preset("Purple Shaft", #preset_nghyper_norfair_preridley_purple_shaft)

presets_nghyper_norfair_preridley_magdollite_room:
    %cm_preset("Magdollite Room", #preset_nghyper_norfair_preridley_magdollite_room)

presets_nghyper_norfair_preridley_kronic_boost:
    %cm_preset("Kronic Boost", #preset_nghyper_norfair_preridley_kronic_boost)

presets_nghyper_norfair_preridley_lower_norfair_elevator:
    %cm_preset("Lower Norfair Elevator", #preset_nghyper_norfair_preridley_lower_norfair_elevator)

presets_nghyper_norfair_preridley_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_nghyper_norfair_preridley_ln_main_hall)

presets_nghyper_norfair_preridley_prepillars:
    %cm_preset("Pre-Pillars", #preset_nghyper_norfair_preridley_prepillars)

presets_nghyper_norfair_preridley_fast_pillars:
    %cm_preset("Fast Pillars", #preset_nghyper_norfair_preridley_fast_pillars)

presets_nghyper_norfair_preridley_worst_room_in_the_game:
    %cm_preset("Worst Room in the Game", #preset_nghyper_norfair_preridley_worst_room_in_the_game)

presets_nghyper_norfair_preridley_amphitheatre:
    %cm_preset("Amphitheatre", #preset_nghyper_norfair_preridley_amphitheatre)

presets_nghyper_norfair_preridley_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_nghyper_norfair_preridley_kihunter_stairs_down)

presets_nghyper_norfair_preridley_wasteland:
    %cm_preset("Wasteland", #preset_nghyper_norfair_preridley_wasteland)

presets_nghyper_norfair_preridley_metal_ninja_pirates:
    %cm_preset("Metal Ninja Pirates", #preset_nghyper_norfair_preridley_metal_ninja_pirates)

presets_nghyper_norfair_preridley_plowerhouse:
    %cm_preset("Plowerhouse", #preset_nghyper_norfair_preridley_plowerhouse)

presets_nghyper_norfair_preridley_ridley:
    %cm_preset("Ridley", #preset_nghyper_norfair_preridley_ridley)


; Norfair Post-Ridley
presets_nghyper_norfair_postridley_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_nghyper_norfair_postridley_leaving_ridley)

presets_nghyper_norfair_postridley_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_nghyper_norfair_postridley_reverse_plowerhouse)

presets_nghyper_norfair_postridley_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_nghyper_norfair_postridley_wasteland_revisit)

presets_nghyper_norfair_postridley_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_nghyper_norfair_postridley_kihunter_stairs_up)

presets_nghyper_norfair_postridley_fire_flea_room:
    %cm_preset("Fire Flea Room", #preset_nghyper_norfair_postridley_fire_flea_room)

presets_nghyper_norfair_postridley_springball_maze:
    %cm_preset("Springball Maze", #preset_nghyper_norfair_postridley_springball_maze)

presets_nghyper_norfair_postridley_three_musketeers:
    %cm_preset("Three Musketeers", #preset_nghyper_norfair_postridley_three_musketeers)

presets_nghyper_norfair_postridley_single_chamber:
    %cm_preset("Single Chamber", #preset_nghyper_norfair_postridley_single_chamber)

presets_nghyper_norfair_postridley_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_nghyper_norfair_postridley_bubble_mountain)

presets_nghyper_norfair_postridley_frog_speedway_revisit:
    %cm_preset("Frog Speedway Revisit", #preset_nghyper_norfair_postridley_frog_speedway_revisit)

presets_nghyper_norfair_postridley_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_nghyper_norfair_postridley_business_center_revisit)


; Kraid's Lair
presets_nghyper_kraids_lair_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_nghyper_kraids_lair_entering_kraids_lair)

presets_nghyper_kraids_lair_warehouse_kihunters:
    %cm_preset("Warehouse Kihunters", #preset_nghyper_kraids_lair_warehouse_kihunters)

presets_nghyper_kraids_lair_minikraid_hallway:
    %cm_preset("MiniKraid Hallway", #preset_nghyper_kraids_lair_minikraid_hallway)

presets_nghyper_kraids_lair_kraid:
    %cm_preset("Kraid", #preset_nghyper_kraids_lair_kraid)

presets_nghyper_kraids_lair_leaving_kraid:
    %cm_preset("Leaving Kraid", #preset_nghyper_kraids_lair_leaving_kraid)

presets_nghyper_kraids_lair_minikraid_hallway_revisit:
    %cm_preset("MiniKraid Hallway Revisit", #preset_nghyper_kraids_lair_minikraid_hallway_revisit)

presets_nghyper_kraids_lair_kihunters_revisit_2:
    %cm_preset("Kihunters Revisit", #preset_nghyper_kraids_lair_kihunters_revisit_2)

presets_nghyper_kraids_lair_warehouse_zealas:
    %cm_preset("Warehouse Zealas", #preset_nghyper_kraids_lair_warehouse_zealas)

presets_nghyper_kraids_lair_leaving_kraids_lair:
    %cm_preset("Leaving Kraids Lair", #preset_nghyper_kraids_lair_leaving_kraids_lair)


; Maridia
presets_nghyper_maridia_entering_maridia:
    %cm_preset("Entering Maridia", #preset_nghyper_maridia_entering_maridia)

presets_nghyper_maridia_main_street:
    %cm_preset("Main Street", #preset_nghyper_maridia_main_street)

presets_nghyper_maridia_fish_tank:
    %cm_preset("Fish Tank", #preset_nghyper_maridia_fish_tank)

presets_nghyper_maridia_mt_everest:
    %cm_preset("Mt Everest", #preset_nghyper_maridia_mt_everest)

presets_nghyper_maridia_crab_shaft:
    %cm_preset("Crab Shaft", #preset_nghyper_maridia_crab_shaft)

presets_nghyper_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_nghyper_maridia_aqueduct)

presets_nghyper_maridia_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_nghyper_maridia_botwoon_hallway)

presets_nghyper_maridia_botwoon:
    %cm_preset("Botwoon", #preset_nghyper_maridia_botwoon)

presets_nghyper_maridia_halfie:
    %cm_preset("Halfie", #preset_nghyper_maridia_halfie)

presets_nghyper_maridia_draygon:
    %cm_preset("Draygon", #preset_nghyper_maridia_draygon)

presets_nghyper_maridia_spike_suit_colosseum:
    %cm_preset("Spike Suit Colosseum", #preset_nghyper_maridia_spike_suit_colosseum)

presets_nghyper_maridia_womple_jump:
    %cm_preset("Womple Jump", #preset_nghyper_maridia_womple_jump)

presets_nghyper_maridia_reverse_botwoon_hallway:
    %cm_preset("Reverse Botwoon Hallway", #preset_nghyper_maridia_reverse_botwoon_hallway)

presets_nghyper_maridia_aqueduct_revisit:
    %cm_preset("Aqueduct Revisit", #preset_nghyper_maridia_aqueduct_revisit)

presets_nghyper_maridia_crab_shaft_revisit:
    %cm_preset("Crab Shaft Revisit", #preset_nghyper_maridia_crab_shaft_revisit)

presets_nghyper_maridia_mt_everest_revisit:
    %cm_preset("Mt Everest Revisit", #preset_nghyper_maridia_mt_everest_revisit)

presets_nghyper_maridia_leaving_maridia:
    %cm_preset("Leaving Maridia", #preset_nghyper_maridia_leaving_maridia)


; Crateria
presets_nghyper_crateria_red_brinstar_gate:
    %cm_preset("Red Brinstar Gate", #preset_nghyper_crateria_red_brinstar_gate)

presets_nghyper_crateria_crateria_kihunters_final:
    %cm_preset("Crateria Kihunters Final", #preset_nghyper_crateria_crateria_kihunters_final)

presets_nghyper_crateria_landing_site:
    %cm_preset("Landing Site", #preset_nghyper_crateria_landing_site)

presets_nghyper_crateria_terminator_etank:
    %cm_preset("Terminator E-Tank", #preset_nghyper_crateria_terminator_etank)

presets_nghyper_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_nghyper_crateria_green_pirate_shaft)


; Tourian
presets_nghyper_tourian_tourian_elevator_room:
    %cm_preset("Tourian Elevator Room", #preset_nghyper_tourian_tourian_elevator_room)

presets_nghyper_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_nghyper_tourian_metroids_1)

presets_nghyper_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_nghyper_tourian_metroids_2)

presets_nghyper_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_nghyper_tourian_metroids_3)

presets_nghyper_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_nghyper_tourian_metroids_4)

presets_nghyper_tourian_giant_hoppers:
    %cm_preset("Giant Hoppers", #preset_nghyper_tourian_giant_hoppers)

presets_nghyper_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_nghyper_tourian_baby_skip)

presets_nghyper_tourian_gadora_room:
    %cm_preset("Gadora Room", #preset_nghyper_tourian_gadora_room)

presets_nghyper_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_nghyper_tourian_zeb_skip)

presets_nghyper_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_nghyper_tourian_mother_brain_2)

presets_nghyper_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_nghyper_tourian_zebes_escape)

presets_nghyper_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_nghyper_tourian_escape_room_3)

presets_nghyper_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_nghyper_tourian_escape_room_4)

presets_nghyper_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_nghyper_tourian_escape_climb)

presets_nghyper_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_nghyper_tourian_escape_parlor)


