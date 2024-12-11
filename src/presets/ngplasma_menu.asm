PresetsMenuNgplasma:
    dw #presets_goto_ngplasma_ceres_station
    dw #presets_goto_ngplasma_wrecked_ship
    dw #presets_goto_ngplasma_red_brinstar
    dw #presets_goto_ngplasma_norfair_preridley
    dw #presets_goto_ngplasma_norfair_postridley
    dw #presets_goto_ngplasma_kraids_lair
    dw #presets_goto_ngplasma_maridia
    dw #presets_goto_ngplasma_crateria
    dw #presets_goto_ngplasma_tourian
    dw #$0000
    %cm_header("PRESETS FOR NG+ PLASMA")

presets_goto_ngplasma_ceres_station:
    %cm_submenu("Ceres Station", #presets_submenu_ngplasma_ceres_station)

presets_goto_ngplasma_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_ngplasma_wrecked_ship)

presets_goto_ngplasma_red_brinstar:
    %cm_submenu("Red Brinstar", #presets_submenu_ngplasma_red_brinstar)

presets_goto_ngplasma_norfair_preridley:
    %cm_submenu("Norfair Pre-Ridley", #presets_submenu_ngplasma_norfair_preridley)

presets_goto_ngplasma_norfair_postridley:
    %cm_submenu("Norfair Post-Ridley", #presets_submenu_ngplasma_norfair_postridley)

presets_goto_ngplasma_kraids_lair:
    %cm_submenu("Kraid's Lair", #presets_submenu_ngplasma_kraids_lair)

presets_goto_ngplasma_maridia:
    %cm_submenu("Maridia", #presets_submenu_ngplasma_maridia)

presets_goto_ngplasma_crateria:
    %cm_submenu("Crateria", #presets_submenu_ngplasma_crateria)

presets_goto_ngplasma_tourian:
    %cm_submenu("Tourian", #presets_submenu_ngplasma_tourian)

presets_submenu_ngplasma_ceres_station:
    dw #presets_ngplasma_ceres_station_ceres_elevator
    dw #presets_ngplasma_ceres_station_magnet_stairs
    dw #presets_ngplasma_ceres_station_ceres_ridley
    dw #presets_ngplasma_ceres_station_ceres_escape
    dw #presets_ngplasma_ceres_station_magnet_stairs_escape
    dw #$0000
    %cm_header("CERES STATION")

presets_submenu_ngplasma_wrecked_ship:
    dw #presets_ngplasma_wrecked_ship_ship
    dw #presets_ngplasma_wrecked_ship_moat
    dw #presets_ngplasma_wrecked_ship_ocean
    dw #presets_ngplasma_wrecked_ship_entering_wrecked_ship
    dw #presets_ngplasma_wrecked_ship_basement
    dw #presets_ngplasma_wrecked_ship_phantoon
    dw #presets_ngplasma_wrecked_ship_leaving_phantoon
    dw #presets_ngplasma_wrecked_ship_wrecked_ship_shaft
    dw #presets_ngplasma_wrecked_ship_leaving_wrecked_ship
    dw #presets_ngplasma_wrecked_ship_kihunters_revisit
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_ngplasma_red_brinstar:
    dw #presets_ngplasma_red_brinstar_red_brinstar_elevator
    dw #presets_ngplasma_red_brinstar_hellway
    dw #presets_ngplasma_red_brinstar_red_tower
    dw #presets_ngplasma_red_brinstar_bottom_of_red_tower
    dw #presets_ngplasma_red_brinstar_breaking_tube
    dw #presets_ngplasma_red_brinstar_upper_norfair_elevator
    dw #$0000
    %cm_header("RED BRINSTAR")

presets_submenu_ngplasma_norfair_preridley:
    dw #presets_ngplasma_norfair_preridley_business_center
    dw #presets_ngplasma_norfair_preridley_frog_speedway
    dw #presets_ngplasma_norfair_preridley_purple_shaft
    dw #presets_ngplasma_norfair_preridley_magdollite_room
    dw #presets_ngplasma_norfair_preridley_kronic_boost
    dw #presets_ngplasma_norfair_preridley_lower_norfair_elevator
    dw #presets_ngplasma_norfair_preridley_ln_main_hall
    dw #presets_ngplasma_norfair_preridley_prepillars
    dw #presets_ngplasma_norfair_preridley_fast_pillars
    dw #presets_ngplasma_norfair_preridley_worst_room_in_the_game
    dw #presets_ngplasma_norfair_preridley_amphitheatre
    dw #presets_ngplasma_norfair_preridley_kihunter_stairs_down
    dw #presets_ngplasma_norfair_preridley_wasteland
    dw #presets_ngplasma_norfair_preridley_metal_ninja_pirates
    dw #presets_ngplasma_norfair_preridley_plowerhouse
    dw #presets_ngplasma_norfair_preridley_ridley
    dw #$0000
    %cm_header("NORFAIR PRE-RIDLEY")

presets_submenu_ngplasma_norfair_postridley:
    dw #presets_ngplasma_norfair_postridley_leaving_ridley
    dw #presets_ngplasma_norfair_postridley_reverse_plowerhouse
    dw #presets_ngplasma_norfair_postridley_wasteland_revisit
    dw #presets_ngplasma_norfair_postridley_kihunter_stairs_up
    dw #presets_ngplasma_norfair_postridley_fire_flea_room
    dw #presets_ngplasma_norfair_postridley_springball_maze
    dw #presets_ngplasma_norfair_postridley_three_musketeers
    dw #presets_ngplasma_norfair_postridley_single_chamber
    dw #presets_ngplasma_norfair_postridley_bubble_mountain
    dw #presets_ngplasma_norfair_postridley_frog_speedway_revisit
    dw #presets_ngplasma_norfair_postridley_business_center_revisit
    dw #$0000
    %cm_header("NORFAIR POST-RIDLEY")

presets_submenu_ngplasma_kraids_lair:
    dw #presets_ngplasma_kraids_lair_entering_kraids_lair
    dw #presets_ngplasma_kraids_lair_warehouse_kihunters
    dw #presets_ngplasma_kraids_lair_minikraid_hallway
    dw #presets_ngplasma_kraids_lair_kraid
    dw #presets_ngplasma_kraids_lair_leaving_kraid
    dw #presets_ngplasma_kraids_lair_minikraid_hallway_revisit
    dw #presets_ngplasma_kraids_lair_kihunters_revisit_2
    dw #presets_ngplasma_kraids_lair_warehouse_zealas
    dw #presets_ngplasma_kraids_lair_leaving_kraids_lair
    dw #$0000
    %cm_header("KRAID'S LAIR")

presets_submenu_ngplasma_maridia:
    dw #presets_ngplasma_maridia_entering_maridia
    dw #presets_ngplasma_maridia_main_street
    dw #presets_ngplasma_maridia_fish_tank
    dw #presets_ngplasma_maridia_mt_everest
    dw #presets_ngplasma_maridia_crab_shaft
    dw #presets_ngplasma_maridia_aqueduct
    dw #presets_ngplasma_maridia_botwoon_hallway
    dw #presets_ngplasma_maridia_botwoon
    dw #presets_ngplasma_maridia_halfie
    dw #presets_ngplasma_maridia_draygon
    dw #presets_ngplasma_maridia_spike_suit_colosseum
    dw #presets_ngplasma_maridia_womple_jump
    dw #presets_ngplasma_maridia_reverse_botwoon_hallway
    dw #presets_ngplasma_maridia_aqueduct_revisit
    dw #presets_ngplasma_maridia_crab_shaft_revisit
    dw #presets_ngplasma_maridia_mt_everest_revisit
    dw #presets_ngplasma_maridia_leaving_maridia
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_ngplasma_crateria:
    dw #presets_ngplasma_crateria_red_brinstar_gate
    dw #presets_ngplasma_crateria_crateria_kihunters_final
    dw #presets_ngplasma_crateria_landing_site
    dw #presets_ngplasma_crateria_terminator_etank
    dw #presets_ngplasma_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_ngplasma_tourian:
    dw #presets_ngplasma_tourian_tourian_elevator_room
    dw #presets_ngplasma_tourian_metroids_1
    dw #presets_ngplasma_tourian_metroids_2
    dw #presets_ngplasma_tourian_metroids_3
    dw #presets_ngplasma_tourian_metroids_4
    dw #presets_ngplasma_tourian_giant_hoppers
    dw #presets_ngplasma_tourian_baby_skip
    dw #presets_ngplasma_tourian_gadora_room
    dw #presets_ngplasma_tourian_zeb_skip
    dw #presets_ngplasma_tourian_mother_brain_2
    dw #presets_ngplasma_tourian_zebes_escape
    dw #presets_ngplasma_tourian_escape_room_3
    dw #presets_ngplasma_tourian_escape_room_4
    dw #presets_ngplasma_tourian_escape_climb
    dw #presets_ngplasma_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Ceres Station
presets_ngplasma_ceres_station_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_ngplasma_ceres_station_ceres_elevator)

presets_ngplasma_ceres_station_magnet_stairs:
    %cm_preset("Magnet Stairs", #preset_ngplasma_ceres_station_magnet_stairs)

presets_ngplasma_ceres_station_ceres_ridley:
    %cm_preset("Ceres Ridley", #preset_ngplasma_ceres_station_ceres_ridley)

presets_ngplasma_ceres_station_ceres_escape:
    %cm_preset("Ceres Escape", #preset_ngplasma_ceres_station_ceres_escape)

presets_ngplasma_ceres_station_magnet_stairs_escape:
    %cm_preset("Magnet Stairs Escape", #preset_ngplasma_ceres_station_magnet_stairs_escape)


; Wrecked Ship
presets_ngplasma_wrecked_ship_ship:
    %cm_preset("Ship", #preset_ngplasma_wrecked_ship_ship)

presets_ngplasma_wrecked_ship_moat:
    %cm_preset("Moat", #preset_ngplasma_wrecked_ship_moat)

presets_ngplasma_wrecked_ship_ocean:
    %cm_preset("Ocean", #preset_ngplasma_wrecked_ship_ocean)

presets_ngplasma_wrecked_ship_entering_wrecked_ship:
    %cm_preset("Entering Wrecked Ship", #preset_ngplasma_wrecked_ship_entering_wrecked_ship)

presets_ngplasma_wrecked_ship_basement:
    %cm_preset("Basement", #preset_ngplasma_wrecked_ship_basement)

presets_ngplasma_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_ngplasma_wrecked_ship_phantoon)

presets_ngplasma_wrecked_ship_leaving_phantoon:
    %cm_preset("Leaving Phantoon", #preset_ngplasma_wrecked_ship_leaving_phantoon)

presets_ngplasma_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_ngplasma_wrecked_ship_wrecked_ship_shaft)

presets_ngplasma_wrecked_ship_leaving_wrecked_ship:
    %cm_preset("Leaving Wrecked Ship", #preset_ngplasma_wrecked_ship_leaving_wrecked_ship)

presets_ngplasma_wrecked_ship_kihunters_revisit:
    %cm_preset("Kihunters Revisit", #preset_ngplasma_wrecked_ship_kihunters_revisit)


; Red Brinstar
presets_ngplasma_red_brinstar_red_brinstar_elevator:
    %cm_preset("Red Brinstar Elevator", #preset_ngplasma_red_brinstar_red_brinstar_elevator)

presets_ngplasma_red_brinstar_hellway:
    %cm_preset("Hellway", #preset_ngplasma_red_brinstar_hellway)

presets_ngplasma_red_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_ngplasma_red_brinstar_red_tower)

presets_ngplasma_red_brinstar_bottom_of_red_tower:
    %cm_preset("Bottom of Red Tower", #preset_ngplasma_red_brinstar_bottom_of_red_tower)

presets_ngplasma_red_brinstar_breaking_tube:
    %cm_preset("Breaking Tube", #preset_ngplasma_red_brinstar_breaking_tube)

presets_ngplasma_red_brinstar_upper_norfair_elevator:
    %cm_preset("Upper Norfair Elevator", #preset_ngplasma_red_brinstar_upper_norfair_elevator)


; Norfair Pre-Ridley
presets_ngplasma_norfair_preridley_business_center:
    %cm_preset("Business Center", #preset_ngplasma_norfair_preridley_business_center)

presets_ngplasma_norfair_preridley_frog_speedway:
    %cm_preset("Frog Speedway", #preset_ngplasma_norfair_preridley_frog_speedway)

presets_ngplasma_norfair_preridley_purple_shaft:
    %cm_preset("Purple Shaft", #preset_ngplasma_norfair_preridley_purple_shaft)

presets_ngplasma_norfair_preridley_magdollite_room:
    %cm_preset("Magdollite Room", #preset_ngplasma_norfair_preridley_magdollite_room)

presets_ngplasma_norfair_preridley_kronic_boost:
    %cm_preset("Kronic Boost", #preset_ngplasma_norfair_preridley_kronic_boost)

presets_ngplasma_norfair_preridley_lower_norfair_elevator:
    %cm_preset("Lower Norfair Elevator", #preset_ngplasma_norfair_preridley_lower_norfair_elevator)

presets_ngplasma_norfair_preridley_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_ngplasma_norfair_preridley_ln_main_hall)

presets_ngplasma_norfair_preridley_prepillars:
    %cm_preset("Pre-Pillars", #preset_ngplasma_norfair_preridley_prepillars)

presets_ngplasma_norfair_preridley_fast_pillars:
    %cm_preset("Fast Pillars", #preset_ngplasma_norfair_preridley_fast_pillars)

presets_ngplasma_norfair_preridley_worst_room_in_the_game:
    %cm_preset("Worst Room in the Game", #preset_ngplasma_norfair_preridley_worst_room_in_the_game)

presets_ngplasma_norfair_preridley_amphitheatre:
    %cm_preset("Amphitheatre", #preset_ngplasma_norfair_preridley_amphitheatre)

presets_ngplasma_norfair_preridley_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_ngplasma_norfair_preridley_kihunter_stairs_down)

presets_ngplasma_norfair_preridley_wasteland:
    %cm_preset("Wasteland", #preset_ngplasma_norfair_preridley_wasteland)

presets_ngplasma_norfair_preridley_metal_ninja_pirates:
    %cm_preset("Metal Ninja Pirates", #preset_ngplasma_norfair_preridley_metal_ninja_pirates)

presets_ngplasma_norfair_preridley_plowerhouse:
    %cm_preset("Plowerhouse", #preset_ngplasma_norfair_preridley_plowerhouse)

presets_ngplasma_norfair_preridley_ridley:
    %cm_preset("Ridley", #preset_ngplasma_norfair_preridley_ridley)


; Norfair Post-Ridley
presets_ngplasma_norfair_postridley_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_ngplasma_norfair_postridley_leaving_ridley)

presets_ngplasma_norfair_postridley_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_ngplasma_norfair_postridley_reverse_plowerhouse)

presets_ngplasma_norfair_postridley_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_ngplasma_norfair_postridley_wasteland_revisit)

presets_ngplasma_norfair_postridley_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_ngplasma_norfair_postridley_kihunter_stairs_up)

presets_ngplasma_norfair_postridley_fire_flea_room:
    %cm_preset("Fire Flea Room", #preset_ngplasma_norfair_postridley_fire_flea_room)

presets_ngplasma_norfair_postridley_springball_maze:
    %cm_preset("Springball Maze", #preset_ngplasma_norfair_postridley_springball_maze)

presets_ngplasma_norfair_postridley_three_musketeers:
    %cm_preset("Three Musketeers", #preset_ngplasma_norfair_postridley_three_musketeers)

presets_ngplasma_norfair_postridley_single_chamber:
    %cm_preset("Single Chamber", #preset_ngplasma_norfair_postridley_single_chamber)

presets_ngplasma_norfair_postridley_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_ngplasma_norfair_postridley_bubble_mountain)

presets_ngplasma_norfair_postridley_frog_speedway_revisit:
    %cm_preset("Frog Speedway Revisit", #preset_ngplasma_norfair_postridley_frog_speedway_revisit)

presets_ngplasma_norfair_postridley_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_ngplasma_norfair_postridley_business_center_revisit)


; Kraid's Lair
presets_ngplasma_kraids_lair_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_ngplasma_kraids_lair_entering_kraids_lair)

presets_ngplasma_kraids_lair_warehouse_kihunters:
    %cm_preset("Warehouse Kihunters", #preset_ngplasma_kraids_lair_warehouse_kihunters)

presets_ngplasma_kraids_lair_minikraid_hallway:
    %cm_preset("MiniKraid Hallway", #preset_ngplasma_kraids_lair_minikraid_hallway)

presets_ngplasma_kraids_lair_kraid:
    %cm_preset("Kraid", #preset_ngplasma_kraids_lair_kraid)

presets_ngplasma_kraids_lair_leaving_kraid:
    %cm_preset("Leaving Kraid", #preset_ngplasma_kraids_lair_leaving_kraid)

presets_ngplasma_kraids_lair_minikraid_hallway_revisit:
    %cm_preset("MiniKraid Hallway Revisit", #preset_ngplasma_kraids_lair_minikraid_hallway_revisit)

presets_ngplasma_kraids_lair_kihunters_revisit_2:
    %cm_preset("Kihunters Revisit", #preset_ngplasma_kraids_lair_kihunters_revisit_2)

presets_ngplasma_kraids_lair_warehouse_zealas:
    %cm_preset("Warehouse Zealas", #preset_ngplasma_kraids_lair_warehouse_zealas)

presets_ngplasma_kraids_lair_leaving_kraids_lair:
    %cm_preset("Leaving Kraids Lair", #preset_ngplasma_kraids_lair_leaving_kraids_lair)


; Maridia
presets_ngplasma_maridia_entering_maridia:
    %cm_preset("Entering Maridia", #preset_ngplasma_maridia_entering_maridia)

presets_ngplasma_maridia_main_street:
    %cm_preset("Main Street", #preset_ngplasma_maridia_main_street)

presets_ngplasma_maridia_fish_tank:
    %cm_preset("Fish Tank", #preset_ngplasma_maridia_fish_tank)

presets_ngplasma_maridia_mt_everest:
    %cm_preset("Mt Everest", #preset_ngplasma_maridia_mt_everest)

presets_ngplasma_maridia_crab_shaft:
    %cm_preset("Crab Shaft", #preset_ngplasma_maridia_crab_shaft)

presets_ngplasma_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_ngplasma_maridia_aqueduct)

presets_ngplasma_maridia_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_ngplasma_maridia_botwoon_hallway)

presets_ngplasma_maridia_botwoon:
    %cm_preset("Botwoon", #preset_ngplasma_maridia_botwoon)

presets_ngplasma_maridia_halfie:
    %cm_preset("Halfie", #preset_ngplasma_maridia_halfie)

presets_ngplasma_maridia_draygon:
    %cm_preset("Draygon", #preset_ngplasma_maridia_draygon)

presets_ngplasma_maridia_spike_suit_colosseum:
    %cm_preset("Spike Suit Colosseum", #preset_ngplasma_maridia_spike_suit_colosseum)

presets_ngplasma_maridia_womple_jump:
    %cm_preset("Womple Jump", #preset_ngplasma_maridia_womple_jump)

presets_ngplasma_maridia_reverse_botwoon_hallway:
    %cm_preset("Reverse Botwoon Hallway", #preset_ngplasma_maridia_reverse_botwoon_hallway)

presets_ngplasma_maridia_aqueduct_revisit:
    %cm_preset("Aqueduct Revisit", #preset_ngplasma_maridia_aqueduct_revisit)

presets_ngplasma_maridia_crab_shaft_revisit:
    %cm_preset("Crab Shaft Revisit", #preset_ngplasma_maridia_crab_shaft_revisit)

presets_ngplasma_maridia_mt_everest_revisit:
    %cm_preset("Mt Everest Revisit", #preset_ngplasma_maridia_mt_everest_revisit)

presets_ngplasma_maridia_leaving_maridia:
    %cm_preset("Leaving Maridia", #preset_ngplasma_maridia_leaving_maridia)


; Crateria
presets_ngplasma_crateria_red_brinstar_gate:
    %cm_preset("Red Brinstar Gate", #preset_ngplasma_crateria_red_brinstar_gate)

presets_ngplasma_crateria_crateria_kihunters_final:
    %cm_preset("Crateria Kihunters Final", #preset_ngplasma_crateria_crateria_kihunters_final)

presets_ngplasma_crateria_landing_site:
    %cm_preset("Landing Site", #preset_ngplasma_crateria_landing_site)

presets_ngplasma_crateria_terminator_etank:
    %cm_preset("Terminator E-Tank", #preset_ngplasma_crateria_terminator_etank)

presets_ngplasma_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_ngplasma_crateria_green_pirate_shaft)


; Tourian
presets_ngplasma_tourian_tourian_elevator_room:
    %cm_preset("Tourian Elevator Room", #preset_ngplasma_tourian_tourian_elevator_room)

presets_ngplasma_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_ngplasma_tourian_metroids_1)

presets_ngplasma_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_ngplasma_tourian_metroids_2)

presets_ngplasma_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_ngplasma_tourian_metroids_3)

presets_ngplasma_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_ngplasma_tourian_metroids_4)

presets_ngplasma_tourian_giant_hoppers:
    %cm_preset("Giant Hoppers", #preset_ngplasma_tourian_giant_hoppers)

presets_ngplasma_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_ngplasma_tourian_baby_skip)

presets_ngplasma_tourian_gadora_room:
    %cm_preset("Gadora Room", #preset_ngplasma_tourian_gadora_room)

presets_ngplasma_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_ngplasma_tourian_zeb_skip)

presets_ngplasma_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_ngplasma_tourian_mother_brain_2)

presets_ngplasma_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_ngplasma_tourian_zebes_escape)

presets_ngplasma_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_ngplasma_tourian_escape_room_3)

presets_ngplasma_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_ngplasma_tourian_escape_room_4)

presets_ngplasma_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_ngplasma_tourian_escape_climb)

presets_ngplasma_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_ngplasma_tourian_escape_parlor)


