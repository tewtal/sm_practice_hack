PresetsMenuKpdr25:
    dw #presets_goto_kpdr25_crateria
    dw #presets_goto_kpdr25_brinstar
    dw #presets_goto_kpdr25_kraid
    dw #presets_goto_kpdr25_upper_norfair
    dw #presets_goto_kpdr25_red_brinstar
    dw #presets_goto_kpdr25_wrecked_ship
    dw #presets_goto_kpdr25_red_brinstar_revisit
    dw #presets_goto_kpdr25_maridia
    dw #presets_goto_kpdr25_lower_norfair
    dw #presets_goto_kpdr25_backtracking
    dw #presets_goto_kpdr25_tourian
    dw #$0000
    %cm_header("ANY% KPDR - EARLY ICE")

presets_goto_kpdr25_crateria:
    %cm_submenu("Crateria", #presets_submenu_kpdr25_crateria)

presets_goto_kpdr25_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_kpdr25_brinstar)

presets_goto_kpdr25_kraid:
    %cm_submenu("Kraid's Lair", #presets_submenu_kpdr25_kraid)

presets_goto_kpdr25_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_kpdr25_upper_norfair)

presets_goto_kpdr25_red_brinstar:
    %cm_submenu("Red Brinstar", #presets_submenu_kpdr25_red_brinstar)

presets_goto_kpdr25_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_kpdr25_wrecked_ship)

presets_goto_kpdr25_red_brinstar_revisit:
    %cm_submenu("Red Brinstar Revisit", #presets_submenu_kpdr25_red_brinstar_revisit)

presets_goto_kpdr25_maridia:
    %cm_submenu("Maridia", #presets_submenu_kpdr25_maridia)

presets_goto_kpdr25_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_kpdr25_lower_norfair)

presets_goto_kpdr25_backtracking:
    %cm_submenu("Backtracking", #presets_submenu_kpdr25_backtracking)

presets_goto_kpdr25_tourian:
    %cm_submenu("Tourian", #presets_submenu_kpdr25_tourian)

presets_submenu_kpdr25_crateria:
    dw #presets_kpdr25_crateria_ceres_elevator
    dw #presets_kpdr25_crateria_ceres_escape
    dw #presets_kpdr25_crateria_ceres_last_3_rooms
    dw #presets_kpdr25_crateria_ship
    dw #presets_kpdr25_crateria_parlor
    dw #presets_kpdr25_crateria_parlor_downback
    dw #presets_kpdr25_crateria_climb_down
    dw #presets_kpdr25_crateria_pit_room
    dw #presets_kpdr25_crateria_morph
    dw #presets_kpdr25_crateria_construction_zone
    dw #presets_kpdr25_crateria_construction_zone_revisit
    dw #presets_kpdr25_crateria_pit_room_revisit
    dw #presets_kpdr25_crateria_climb_up
    dw #presets_kpdr25_crateria_parlor_revisit
    dw #presets_kpdr25_crateria_flyway
    dw #presets_kpdr25_crateria_bomb_torizo
    dw #presets_kpdr25_crateria_alcatraz
    dw #presets_kpdr25_crateria_terminator
    dw #presets_kpdr25_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_kpdr25_brinstar:
    dw #presets_kpdr25_brinstar_green_brinstar_elevator
    dw #presets_kpdr25_brinstar_early_supers
    dw #presets_kpdr25_brinstar_dachora_room
    dw #presets_kpdr25_brinstar_big_pink
    dw #presets_kpdr25_brinstar_green_hill_zone
    dw #presets_kpdr25_brinstar_noob_bridge
    dw #presets_kpdr25_brinstar_red_tower
    dw #presets_kpdr25_brinstar_skree_boost
    dw #presets_kpdr25_brinstar_below_spazer
    dw #presets_kpdr25_brinstar_spazer
    dw #presets_kpdr25_brinstar_leaving_spazer
    dw #presets_kpdr25_brinstar_passing_through_maridia
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_kpdr25_kraid:
    dw #presets_kpdr25_kraid_entering_kraids_lair
    dw #presets_kpdr25_kraid_warehouse_zeelas
    dw #presets_kpdr25_kraid_kraid_kihunters
    dw #presets_kpdr25_kraid_minikraid
    dw #presets_kpdr25_kraid_fallen_hero
    dw #presets_kpdr25_kraid_kraid
    dw #presets_kpdr25_kraid_leaving_varia
    dw #presets_kpdr25_kraid_arthur_j_metroid
    dw #presets_kpdr25_kraid_minikraid_revisit
    dw #presets_kpdr25_kraid_kraid_kihunters_revisit
    dw #presets_kpdr25_kraid_kraid_etank
    dw #presets_kpdr25_kraid_leaving_kraid_etank
    dw #presets_kpdr25_kraid_business_center_preelev
    dw #$0000
    %cm_header("KRAID'S LAIR")

presets_submenu_kpdr25_upper_norfair:
    dw #presets_kpdr25_upper_norfair_business_center_postelev
    dw #presets_kpdr25_upper_norfair_hijump_etank
    dw #presets_kpdr25_upper_norfair_leaving_hijump
    dw #presets_kpdr25_upper_norfair_business_center_revisit
    dw #presets_kpdr25_upper_norfair_precathedral
    dw #presets_kpdr25_upper_norfair_cathedral
    dw #presets_kpdr25_upper_norfair_rising_tide
    dw #presets_kpdr25_upper_norfair_bubble_mountain
    dw #presets_kpdr25_upper_norfair_bat_cave
    dw #presets_kpdr25_upper_norfair_speed_hallway
    dw #presets_kpdr25_upper_norfair_bat_cave_revisit
    dw #presets_kpdr25_upper_norfair_single_chamber
    dw #presets_kpdr25_upper_norfair_double_chamber
    dw #presets_kpdr25_upper_norfair_double_chamber_revisit
    dw #presets_kpdr25_upper_norfair_single_chamber_revisit
    dw #presets_kpdr25_upper_norfair_bubble_mountain_revisit
    dw #presets_kpdr25_upper_norfair_frog_speedway
    dw #presets_kpdr25_upper_norfair_entering_ice
    dw #presets_kpdr25_upper_norfair_ice_escape
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_kpdr25_red_brinstar:
    dw #presets_kpdr25_red_brinstar_alpha_spark
    dw #presets_kpdr25_red_brinstar_reverse_skree_boost
    dw #presets_kpdr25_red_brinstar_red_tower_climb
    dw #presets_kpdr25_red_brinstar_hellway
    dw #presets_kpdr25_red_brinstar_caterpillars_down
    dw #presets_kpdr25_red_brinstar_alpha_power_bombs
    dw #presets_kpdr25_red_brinstar_caterpillars_up
    dw #$0000
    %cm_header("RED BRINSTAR")

presets_submenu_kpdr25_wrecked_ship:
    dw #presets_kpdr25_wrecked_ship_crateria_kihunters
    dw #presets_kpdr25_wrecked_ship_ocean_fly_setup
    dw #presets_kpdr25_wrecked_ship_ocean_spark
    dw #presets_kpdr25_wrecked_ship_entering_wrecked_ship
    dw #presets_kpdr25_wrecked_ship_basement
    dw #presets_kpdr25_wrecked_ship_phantoon
    dw #presets_kpdr25_wrecked_ship_leaving_phantoon
    dw #presets_kpdr25_wrecked_ship_shaft_to_supers
    dw #presets_kpdr25_wrecked_ship_wrecked_ship_shaft
    dw #presets_kpdr25_wrecked_ship_attic
    dw #presets_kpdr25_wrecked_ship_upper_west_ocean
    dw #presets_kpdr25_wrecked_ship_pancakes_and_wavers
    dw #presets_kpdr25_wrecked_ship_bowling_spark
    dw #presets_kpdr25_wrecked_ship_leaving_gravity
    dw #presets_kpdr25_wrecked_ship_moat_ball
    dw #presets_kpdr25_wrecked_ship_crateria_kihunters_return
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_kpdr25_red_brinstar_revisit:
    dw #presets_kpdr25_red_brinstar_revisit_red_brinstar_elevator
    dw #presets_kpdr25_red_brinstar_revisit_caterpillars_revisit
    dw #presets_kpdr25_red_brinstar_revisit_hellway_revisit
    dw #presets_kpdr25_red_brinstar_revisit_red_tower_down
    dw #presets_kpdr25_red_brinstar_revisit_skree_boost_final
    dw #presets_kpdr25_red_brinstar_revisit_below_spazer_final
    dw #presets_kpdr25_red_brinstar_revisit_breaking_the_tube
    dw #$0000
    %cm_header("RED BRINSTAR REVISIT")

presets_submenu_kpdr25_maridia:
    dw #presets_kpdr25_maridia_fish_tank
    dw #presets_kpdr25_maridia_mt_everest
    dw #presets_kpdr25_maridia_crab_shaft
    dw #presets_kpdr25_maridia_aqueduct
    dw #presets_kpdr25_maridia_botwoon_hallway
    dw #presets_kpdr25_maridia_botwoon
    dw #presets_kpdr25_maridia_botwoon_etank
    dw #presets_kpdr25_maridia_halfie_setup
    dw #presets_kpdr25_maridia_draygon
    dw #presets_kpdr25_maridia_reverse_halfie_spikesuit
    dw #presets_kpdr25_maridia_whomple_jump
    dw #presets_kpdr25_maridia_cac_alley_east
    dw #presets_kpdr25_maridia_cac_alley_west
    dw #presets_kpdr25_maridia_plasma_spark
    dw #presets_kpdr25_maridia_plasma_climb
    dw #presets_kpdr25_maridia_plasma_beam
    dw #presets_kpdr25_maridia_plasma_spark_revisit
    dw #presets_kpdr25_maridia_toilet
    dw #presets_kpdr25_maridia_sewers
    dw #presets_kpdr25_maridia_lower_maridia_gate
    dw #presets_kpdr25_maridia_business_center_revisit
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_kpdr25_lower_norfair:
    dw #presets_kpdr25_lower_norfair_magdollite_tunnel
    dw #presets_kpdr25_lower_norfair_ln_main_hall
    dw #presets_kpdr25_lower_norfair_prepillars
    dw #presets_kpdr25_lower_norfair_fast_pillars_setup
    dw #presets_kpdr25_lower_norfair_worst_room_in_the_game
    dw #presets_kpdr25_lower_norfair_amphitheatre
    dw #presets_kpdr25_lower_norfair_kihunter_stairs_down
    dw #presets_kpdr25_lower_norfair_wasteland
    dw #presets_kpdr25_lower_norfair_metal_ninja_pirates
    dw #presets_kpdr25_lower_norfair_plowerhouse
    dw #presets_kpdr25_lower_norfair_ridley
    dw #presets_kpdr25_lower_norfair_leaving_ridley
    dw #presets_kpdr25_lower_norfair_reverse_plowerhouse
    dw #presets_kpdr25_lower_norfair_wasteland_revisit
    dw #presets_kpdr25_lower_norfair_kihunter_stairs_up
    dw #presets_kpdr25_lower_norfair_fireflea_room
    dw #presets_kpdr25_lower_norfair_springball_maze
    dw #presets_kpdr25_lower_norfair_three_musketeers
    dw #presets_kpdr25_lower_norfair_single_chamber_final
    dw #presets_kpdr25_lower_norfair_bubble_mountain_final
    dw #presets_kpdr25_lower_norfair_business_center_final
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_kpdr25_backtracking:
    dw #presets_kpdr25_backtracking_maridia_tube_revisit
    dw #presets_kpdr25_backtracking_fish_tank_revisit
    dw #presets_kpdr25_backtracking_mt_everest_revisit
    dw #presets_kpdr25_backtracking_red_brinstar_green_gate
    dw #presets_kpdr25_backtracking_crateria_kihunters_final
    dw #presets_kpdr25_backtracking_parlor_spacejump
    dw #presets_kpdr25_backtracking_terminator_revisit
    dw #presets_kpdr25_backtracking_green_pirate_shaft_revisit
    dw #presets_kpdr25_backtracking_g4_hallway
    dw #presets_kpdr25_backtracking_g4_elevator
    dw #$0000
    %cm_header("BACKTRACKING")

presets_submenu_kpdr25_tourian:
    dw #presets_kpdr25_tourian_tourian_elevator_room
    dw #presets_kpdr25_tourian_metroids_1
    dw #presets_kpdr25_tourian_metroids_2
    dw #presets_kpdr25_tourian_metroids_3
    dw #presets_kpdr25_tourian_metroids_4
    dw #presets_kpdr25_tourian_giant_hoppers
    dw #presets_kpdr25_tourian_baby_skip
    dw #presets_kpdr25_tourian_gadora_room
    dw #presets_kpdr25_tourian_zeb_skip
    dw #presets_kpdr25_tourian_mother_brain_2
    dw #presets_kpdr25_tourian_mother_brain_3
    dw #presets_kpdr25_tourian_zebes_escape
    dw #presets_kpdr25_tourian_escape_room_3
    dw #presets_kpdr25_tourian_escape_room_4
    dw #presets_kpdr25_tourian_escape_climb
    dw #presets_kpdr25_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")


; Crateria
presets_kpdr25_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_names_ceres_elevator, #preset_kpdr25_crateria_ceres_elevator)

presets_kpdr25_crateria_ceres_escape:
    %cm_preset("Ceres Escape", #preset_names_ceres_escape, #preset_kpdr25_crateria_ceres_escape)

presets_kpdr25_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_names_ceres_last_3_rooms, #preset_kpdr25_crateria_ceres_last_3_rooms)

presets_kpdr25_crateria_ship:
    %cm_preset("Ship", #preset_names_ship, #preset_kpdr25_crateria_ship)

presets_kpdr25_crateria_parlor:
    %cm_preset("Parlor", #preset_names_parlor, #preset_kpdr25_crateria_parlor)

presets_kpdr25_crateria_parlor_downback:
    %cm_preset("Parlor Downback", #preset_names_parlor_downback, #preset_kpdr25_crateria_parlor_downback)

presets_kpdr25_crateria_climb_down:
    %cm_preset("Climb Down", #preset_names_climb_down, #preset_kpdr25_crateria_climb_down)

presets_kpdr25_crateria_pit_room:
    %cm_preset("Pit Room", #preset_names_pit_room, #preset_kpdr25_crateria_pit_room)

presets_kpdr25_crateria_morph:
    %cm_preset("Morph", #preset_names_morph, #preset_kpdr25_crateria_morph)

presets_kpdr25_crateria_construction_zone:
    %cm_preset("Construction Zone", #preset_names_construction_zone, #preset_kpdr25_crateria_construction_zone)

presets_kpdr25_crateria_construction_zone_revisit:
    %cm_preset("Construction Zone Revisit", #preset_names_construction_zone_revisit, #preset_kpdr25_crateria_construction_zone_revisit)

presets_kpdr25_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_names_pit_room_revisit, #preset_kpdr25_crateria_pit_room_revisit)

presets_kpdr25_crateria_climb_up:
    %cm_preset("Climb Up", #preset_names_climb_up, #preset_kpdr25_crateria_climb_up)

presets_kpdr25_crateria_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_names_parlor_revisit, #preset_kpdr25_crateria_parlor_revisit)

presets_kpdr25_crateria_flyway:
    %cm_preset("Flyway", #preset_names_flyway, #preset_kpdr25_crateria_flyway)

presets_kpdr25_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_names_bomb_torizo, #preset_kpdr25_crateria_bomb_torizo)

presets_kpdr25_crateria_alcatraz:
    %cm_preset("Alcatraz", #preset_names_alcatraz, #preset_kpdr25_crateria_alcatraz)

presets_kpdr25_crateria_terminator:
    %cm_preset("Terminator", #preset_names_terminator, #preset_kpdr25_crateria_terminator)

presets_kpdr25_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_names_green_pirate_shaft, #preset_kpdr25_crateria_green_pirate_shaft)


; Brinstar
presets_kpdr25_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_names_green_brinstar_elevator, #preset_kpdr25_brinstar_green_brinstar_elevator)

presets_kpdr25_brinstar_early_supers:
    %cm_preset("Early Supers", #preset_names_early_supers, #preset_kpdr25_brinstar_early_supers)

presets_kpdr25_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_names_dachora_room, #preset_kpdr25_brinstar_dachora_room)

presets_kpdr25_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_names_big_pink, #preset_kpdr25_brinstar_big_pink)

presets_kpdr25_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_names_green_hill_zone, #preset_kpdr25_brinstar_green_hill_zone)

presets_kpdr25_brinstar_noob_bridge:
    %cm_preset("Noob Bridge", #preset_names_noob_bridge, #preset_kpdr25_brinstar_noob_bridge)

presets_kpdr25_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_names_red_tower, #preset_kpdr25_brinstar_red_tower)

presets_kpdr25_brinstar_skree_boost:
    %cm_preset("Skree Boost", #preset_names_skree_boost, #preset_kpdr25_brinstar_skree_boost)

presets_kpdr25_brinstar_below_spazer:
    %cm_preset("Below Spazer", #preset_names_below_spazer, #preset_kpdr25_brinstar_below_spazer)

presets_kpdr25_brinstar_spazer:
    %cm_preset("Spazer", #preset_names_spazer, #preset_kpdr25_brinstar_spazer)

presets_kpdr25_brinstar_leaving_spazer:
    %cm_preset("Leaving Spazer", #preset_names_leaving_spazer, #preset_kpdr25_brinstar_leaving_spazer)

presets_kpdr25_brinstar_passing_through_maridia:
    %cm_preset("Passing Through Maridia", #preset_names_passing_through_maridia, #preset_kpdr25_brinstar_passing_through_maridia)


; Kraid
presets_kpdr25_kraid_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_names_entering_kraids_lair, #preset_kpdr25_kraid_entering_kraids_lair)

presets_kpdr25_kraid_warehouse_zeelas:
    %cm_preset("Warehouse Zeelas", #preset_names_warehouse_zeelas, #preset_kpdr25_kraid_warehouse_zeelas)

presets_kpdr25_kraid_kraid_kihunters:
    %cm_preset("Kraid Kihunters", #preset_names_kraid_kihunters, #preset_kpdr25_kraid_kraid_kihunters)

presets_kpdr25_kraid_minikraid:
    %cm_preset("Mini-Kraid", #preset_names_minikraid, #preset_kpdr25_kraid_minikraid)

presets_kpdr25_kraid_fallen_hero:
    %cm_preset("Fallen Hero", #preset_names_fallen_hero, #preset_kpdr25_kraid_fallen_hero)

presets_kpdr25_kraid_kraid:
    %cm_preset("Kraid", #preset_names_kraid, #preset_kpdr25_kraid_kraid)

presets_kpdr25_kraid_leaving_varia:
    %cm_preset("Leaving Varia", #preset_names_leaving_varia, #preset_kpdr25_kraid_leaving_varia)

presets_kpdr25_kraid_arthur_j_metroid:
    %cm_preset("Arthur J. Metroid", #preset_names_arthur_j_metroid, #preset_kpdr25_kraid_arthur_j_metroid)

presets_kpdr25_kraid_minikraid_revisit:
    %cm_preset("Mini-Kraid Revisit", #preset_names_minikraid_revisit, #preset_kpdr25_kraid_minikraid_revisit)

presets_kpdr25_kraid_kraid_kihunters_revisit:
    %cm_preset("Kraid Kihunters Revisit", #preset_names_kraid_kihunters_revisit, #preset_kpdr25_kraid_kraid_kihunters_revisit)

presets_kpdr25_kraid_kraid_etank:
    %cm_preset("Kraid E-Tank", #preset_names_kraid_etank, #preset_kpdr25_kraid_kraid_etank)

presets_kpdr25_kraid_leaving_kraid_etank:
    %cm_preset("Leaving Kraid E-Tank", #preset_names_leaving_kraid_etank, #preset_kpdr25_kraid_leaving_kraid_etank)

presets_kpdr25_kraid_business_center_preelev:
    %cm_preset("Business Center Pre-Elev", #preset_names_business_center_preelev, #preset_kpdr25_kraid_business_center_preelev)


; Upper Norfair
presets_kpdr25_upper_norfair_business_center_postelev:
    %cm_preset("Business Center Post-Elev", #preset_names_business_center_postelev, #preset_kpdr25_upper_norfair_business_center_postelev)

presets_kpdr25_upper_norfair_hijump_etank:
    %cm_preset("Hi-Jump E-Tank", #preset_names_hijump_etank, #preset_kpdr25_upper_norfair_hijump_etank)

presets_kpdr25_upper_norfair_leaving_hijump:
    %cm_preset("Leaving Hi-Jump", #preset_names_leaving_hijump, #preset_kpdr25_upper_norfair_leaving_hijump)

presets_kpdr25_upper_norfair_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_names_business_center_revisit, #preset_kpdr25_upper_norfair_business_center_revisit)

presets_kpdr25_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_names_precathedral, #preset_kpdr25_upper_norfair_precathedral)

presets_kpdr25_upper_norfair_cathedral:
    %cm_preset("Cathedral", #preset_names_cathedral, #preset_kpdr25_upper_norfair_cathedral)

presets_kpdr25_upper_norfair_rising_tide:
    %cm_preset("Rising Tide", #preset_names_rising_tide, #preset_kpdr25_upper_norfair_rising_tide)

presets_kpdr25_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_names_bubble_mountain, #preset_kpdr25_upper_norfair_bubble_mountain)

presets_kpdr25_upper_norfair_bat_cave:
    %cm_preset("Bat Cave", #preset_names_bat_cave, #preset_kpdr25_upper_norfair_bat_cave)

presets_kpdr25_upper_norfair_speed_hallway:
    %cm_preset("Speed Hallway", #preset_names_speed_hallway, #preset_kpdr25_upper_norfair_speed_hallway)

presets_kpdr25_upper_norfair_bat_cave_revisit:
    %cm_preset("Bat Cave Revisit", #preset_names_bat_cave_revisit, #preset_kpdr25_upper_norfair_bat_cave_revisit)

presets_kpdr25_upper_norfair_single_chamber:
    %cm_preset("Single Chamber", #preset_names_single_chamber, #preset_kpdr25_upper_norfair_single_chamber)

presets_kpdr25_upper_norfair_double_chamber:
    %cm_preset("Double Chamber", #preset_names_double_chamber, #preset_kpdr25_upper_norfair_double_chamber)

presets_kpdr25_upper_norfair_double_chamber_revisit:
    %cm_preset("Double Chamber Revisit", #preset_names_double_chamber_revisit, #preset_kpdr25_upper_norfair_double_chamber_revisit)

presets_kpdr25_upper_norfair_single_chamber_revisit:
    %cm_preset("Single Chamber Revisit", #preset_names_single_chamber_revisit, #preset_kpdr25_upper_norfair_single_chamber_revisit)

presets_kpdr25_upper_norfair_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_names_bubble_mountain_revisit, #preset_kpdr25_upper_norfair_bubble_mountain_revisit)

presets_kpdr25_upper_norfair_frog_speedway:
    %cm_preset("Frog Speedway", #preset_names_frog_speedway, #preset_kpdr25_upper_norfair_frog_speedway)

presets_kpdr25_upper_norfair_entering_ice:
    %cm_preset("Entering Ice", #preset_names_entering_ice, #preset_kpdr25_upper_norfair_entering_ice)

presets_kpdr25_upper_norfair_ice_escape:
    %cm_preset("Ice Escape", #preset_names_ice_escape, #preset_kpdr25_upper_norfair_ice_escape)


; Red Brinstar
presets_kpdr25_red_brinstar_alpha_spark:
    %cm_preset("Alpha Spark", #preset_names_alpha_spark, #preset_kpdr25_red_brinstar_alpha_spark)

presets_kpdr25_red_brinstar_reverse_skree_boost:
    %cm_preset("Reverse Skree Boost", #preset_names_reverse_skree_boost, #preset_kpdr25_red_brinstar_reverse_skree_boost)

presets_kpdr25_red_brinstar_red_tower_climb:
    %cm_preset("Red Tower Climb", #preset_names_red_tower_climb, #preset_kpdr25_red_brinstar_red_tower_climb)

presets_kpdr25_red_brinstar_hellway:
    %cm_preset("Hellway", #preset_names_hellway, #preset_kpdr25_red_brinstar_hellway)

presets_kpdr25_red_brinstar_caterpillars_down:
    %cm_preset("Caterpillars Down", #preset_names_caterpillars_down, #preset_kpdr25_red_brinstar_caterpillars_down)

presets_kpdr25_red_brinstar_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_names_alpha_power_bombs, #preset_kpdr25_red_brinstar_alpha_power_bombs)

presets_kpdr25_red_brinstar_caterpillars_up:
    %cm_preset("Caterpillars Up", #preset_names_caterpillars_up, #preset_kpdr25_red_brinstar_caterpillars_up)


; Wrecked Ship
presets_kpdr25_wrecked_ship_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_names_crateria_kihunters, #preset_kpdr25_wrecked_ship_crateria_kihunters)

presets_kpdr25_wrecked_ship_ocean_fly_setup:
    %cm_preset("Ocean Fly Setup", #preset_names_ocean_fly_setup, #preset_kpdr25_wrecked_ship_ocean_fly_setup)

presets_kpdr25_wrecked_ship_ocean_spark:
    %cm_preset("Ocean Spark", #preset_names_ocean_spark, #preset_kpdr25_wrecked_ship_ocean_spark)

presets_kpdr25_wrecked_ship_entering_wrecked_ship:
    %cm_preset("Entering Wrecked Ship", #preset_names_entering_wrecked_ship, #preset_kpdr25_wrecked_ship_entering_wrecked_ship)

presets_kpdr25_wrecked_ship_basement:
    %cm_preset("Basement", #preset_names_basement, #preset_kpdr25_wrecked_ship_basement)

presets_kpdr25_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_names_phantoon, #preset_kpdr25_wrecked_ship_phantoon)

presets_kpdr25_wrecked_ship_leaving_phantoon:
    %cm_preset("Leaving Phantoon", #preset_names_leaving_phantoon, #preset_kpdr25_wrecked_ship_leaving_phantoon)

presets_kpdr25_wrecked_ship_shaft_to_supers:
    %cm_preset("Shaft To Supers", #preset_names_shaft_to_supers, #preset_kpdr25_wrecked_ship_shaft_to_supers)

presets_kpdr25_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_names_wrecked_ship_shaft, #preset_kpdr25_wrecked_ship_wrecked_ship_shaft)

presets_kpdr25_wrecked_ship_attic:
    %cm_preset("Attic", #preset_names_attic, #preset_kpdr25_wrecked_ship_attic)

presets_kpdr25_wrecked_ship_upper_west_ocean:
    %cm_preset("Upper West Ocean", #preset_names_upper_west_ocean, #preset_kpdr25_wrecked_ship_upper_west_ocean)

presets_kpdr25_wrecked_ship_pancakes_and_wavers:
    %cm_preset("Pancakes and Wavers", #preset_names_pancakes_and_wavers, #preset_kpdr25_wrecked_ship_pancakes_and_wavers)

presets_kpdr25_wrecked_ship_bowling_spark:
    %cm_preset("Bowling Spark", #preset_names_bowling_spark, #preset_kpdr25_wrecked_ship_bowling_spark)

presets_kpdr25_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_names_leaving_gravity, #preset_kpdr25_wrecked_ship_leaving_gravity)

presets_kpdr25_wrecked_ship_moat_ball:
    %cm_preset("Moat Ball", #preset_names_moat_ball, #preset_kpdr25_wrecked_ship_moat_ball)

presets_kpdr25_wrecked_ship_crateria_kihunters_return:
    %cm_preset("Crateria Kihunters Return", #preset_names_crateria_kihunters_return, #preset_kpdr25_wrecked_ship_crateria_kihunters_return)


; Red Brinstar Revisit
presets_kpdr25_red_brinstar_revisit_red_brinstar_elevator:
    %cm_preset("Red Brinstar Elevator", #preset_names_red_brinstar_elevator, #preset_kpdr25_red_brinstar_revisit_red_brinstar_elevator)

presets_kpdr25_red_brinstar_revisit_caterpillars_revisit:
    %cm_preset("Caterpillars Revisit", #preset_names_caterpillars_revisit, #preset_kpdr25_red_brinstar_revisit_caterpillars_revisit)

presets_kpdr25_red_brinstar_revisit_hellway_revisit:
    %cm_preset("Hellway Revisit", #preset_names_hellway_revisit, #preset_kpdr25_red_brinstar_revisit_hellway_revisit)

presets_kpdr25_red_brinstar_revisit_red_tower_down:
    %cm_preset("Red Tower Down", #preset_names_red_tower_down, #preset_kpdr25_red_brinstar_revisit_red_tower_down)

presets_kpdr25_red_brinstar_revisit_skree_boost_final:
    %cm_preset("Skree Boost Final", #preset_names_skree_boost_final, #preset_kpdr25_red_brinstar_revisit_skree_boost_final)

presets_kpdr25_red_brinstar_revisit_below_spazer_final:
    %cm_preset("Below Spazer Final", #preset_names_below_spazer_final, #preset_kpdr25_red_brinstar_revisit_below_spazer_final)

presets_kpdr25_red_brinstar_revisit_breaking_the_tube:
    %cm_preset("Breaking The Tube", #preset_names_breaking_the_tube, #preset_kpdr25_red_brinstar_revisit_breaking_the_tube)


; Maridia
presets_kpdr25_maridia_fish_tank:
    %cm_preset("Fish Tank", #preset_names_fish_tank, #preset_kpdr25_maridia_fish_tank)

presets_kpdr25_maridia_mt_everest:
    %cm_preset("Mt. Everest", #preset_names_mt_everest, #preset_kpdr25_maridia_mt_everest)

presets_kpdr25_maridia_crab_shaft:
    %cm_preset("Crab Shaft", #preset_names_crab_shaft, #preset_kpdr25_maridia_crab_shaft)

presets_kpdr25_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_names_aqueduct, #preset_kpdr25_maridia_aqueduct)

presets_kpdr25_maridia_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_names_botwoon_hallway, #preset_kpdr25_maridia_botwoon_hallway)

presets_kpdr25_maridia_botwoon:
    %cm_preset("Botwoon", #preset_names_botwoon, #preset_kpdr25_maridia_botwoon)

presets_kpdr25_maridia_botwoon_etank:
    %cm_preset("Botwoon E-Tank", #preset_names_botwoon_etank, #preset_kpdr25_maridia_botwoon_etank)

presets_kpdr25_maridia_halfie_setup:
    %cm_preset("Halfie Setup", #preset_names_halfie_setup, #preset_kpdr25_maridia_halfie_setup)

presets_kpdr25_maridia_draygon:
    %cm_preset("Draygon", #preset_names_draygon, #preset_kpdr25_maridia_draygon)

presets_kpdr25_maridia_reverse_halfie_spikesuit:
    %cm_preset("Reverse Halfie (Spikesuit)", #preset_names_reverse_halfie_spikesuit, #preset_kpdr25_maridia_reverse_halfie_spikesuit)

presets_kpdr25_maridia_whomple_jump:
    %cm_preset("Whomple Jump", #preset_names_whomple_jump, #preset_kpdr25_maridia_whomple_jump)

presets_kpdr25_maridia_cac_alley_east:
    %cm_preset("Cac Alley East", #preset_names_cac_alley_east, #preset_kpdr25_maridia_cac_alley_east)

presets_kpdr25_maridia_cac_alley_west:
    %cm_preset("Cac Alley West", #preset_names_cac_alley_west, #preset_kpdr25_maridia_cac_alley_west)

presets_kpdr25_maridia_plasma_spark:
    %cm_preset("Plasma Spark", #preset_names_plasma_spark, #preset_kpdr25_maridia_plasma_spark)

presets_kpdr25_maridia_plasma_climb:
    %cm_preset("Plasma Climb", #preset_names_plasma_climb, #preset_kpdr25_maridia_plasma_climb)

presets_kpdr25_maridia_plasma_beam:
    %cm_preset("Plasma Beam", #preset_names_plasma_beam, #preset_kpdr25_maridia_plasma_beam)

presets_kpdr25_maridia_plasma_spark_revisit:
    %cm_preset("Plasma Spark Revisit", #preset_names_plasma_spark_revisit, #preset_kpdr25_maridia_plasma_spark_revisit)

presets_kpdr25_maridia_toilet:
    %cm_preset("Toilet", #preset_names_toilet, #preset_kpdr25_maridia_toilet)

presets_kpdr25_maridia_sewers:
    %cm_preset("Sewers", #preset_names_sewers, #preset_kpdr25_maridia_sewers)

presets_kpdr25_maridia_lower_maridia_gate:
    %cm_preset("Lower Maridia Gate", #preset_names_lower_maridia_gate, #preset_kpdr25_maridia_lower_maridia_gate)

presets_kpdr25_maridia_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_names_business_center_revisit, #preset_kpdr25_maridia_business_center_revisit)


; Lower Norfair
presets_kpdr25_lower_norfair_magdollite_tunnel:
    %cm_preset("Magdollite Tunnel", #preset_names_magdollite_tunnel, #preset_kpdr25_lower_norfair_magdollite_tunnel)

presets_kpdr25_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_names_ln_main_hall, #preset_kpdr25_lower_norfair_ln_main_hall)

presets_kpdr25_lower_norfair_prepillars:
    %cm_preset("Pre-Pillars", #preset_names_prepillars, #preset_kpdr25_lower_norfair_prepillars)

presets_kpdr25_lower_norfair_fast_pillars_setup:
    %cm_preset("Fast Pillars Setup", #preset_names_fast_pillars_setup, #preset_kpdr25_lower_norfair_fast_pillars_setup)

presets_kpdr25_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_names_worst_room_in_the_game, #preset_kpdr25_lower_norfair_worst_room_in_the_game)

presets_kpdr25_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_names_amphitheatre, #preset_kpdr25_lower_norfair_amphitheatre)

presets_kpdr25_lower_norfair_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_names_kihunter_stairs_down, #preset_kpdr25_lower_norfair_kihunter_stairs_down)

presets_kpdr25_lower_norfair_wasteland:
    %cm_preset("Wasteland", #preset_names_wasteland, #preset_kpdr25_lower_norfair_wasteland)

presets_kpdr25_lower_norfair_metal_ninja_pirates:
    %cm_preset("Metal Ninja Pirates", #preset_names_metal_ninja_pirates, #preset_kpdr25_lower_norfair_metal_ninja_pirates)

presets_kpdr25_lower_norfair_plowerhouse:
    %cm_preset("Plowerhouse", #preset_names_plowerhouse, #preset_kpdr25_lower_norfair_plowerhouse)

presets_kpdr25_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_names_ridley, #preset_kpdr25_lower_norfair_ridley)

presets_kpdr25_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_names_leaving_ridley, #preset_kpdr25_lower_norfair_leaving_ridley)

presets_kpdr25_lower_norfair_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_names_reverse_plowerhouse, #preset_kpdr25_lower_norfair_reverse_plowerhouse)

presets_kpdr25_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_names_wasteland_revisit, #preset_kpdr25_lower_norfair_wasteland_revisit)

presets_kpdr25_lower_norfair_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_names_kihunter_stairs_up, #preset_kpdr25_lower_norfair_kihunter_stairs_up)

presets_kpdr25_lower_norfair_fireflea_room:
    %cm_preset("Fireflea Room", #preset_names_fireflea_room, #preset_kpdr25_lower_norfair_fireflea_room)

presets_kpdr25_lower_norfair_springball_maze:
    %cm_preset("Springball Maze", #preset_names_springball_maze, #preset_kpdr25_lower_norfair_springball_maze)

presets_kpdr25_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_names_three_musketeers, #preset_kpdr25_lower_norfair_three_musketeers)

presets_kpdr25_lower_norfair_single_chamber_final:
    %cm_preset("Single Chamber Final", #preset_names_single_chamber_final, #preset_kpdr25_lower_norfair_single_chamber_final)

presets_kpdr25_lower_norfair_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_names_bubble_mountain_final, #preset_kpdr25_lower_norfair_bubble_mountain_final)

presets_kpdr25_lower_norfair_business_center_final:
    %cm_preset("Business Center Final", #preset_names_business_center_final, #preset_kpdr25_lower_norfair_business_center_final)


; Backtracking
presets_kpdr25_backtracking_maridia_tube_revisit:
    %cm_preset("Maridia Tube Revisit", #preset_names_maridia_tube_revisit, #preset_kpdr25_backtracking_maridia_tube_revisit)

presets_kpdr25_backtracking_fish_tank_revisit:
    %cm_preset("Fish Tank Revisit", #preset_names_fish_tank_revisit, #preset_kpdr25_backtracking_fish_tank_revisit)

presets_kpdr25_backtracking_mt_everest_revisit:
    %cm_preset("Mt. Everest Revisit", #preset_names_mt_everest_revisit, #preset_kpdr25_backtracking_mt_everest_revisit)

presets_kpdr25_backtracking_red_brinstar_green_gate:
    %cm_preset("Red Brinstar Green Gate", #preset_names_red_brinstar_green_gate, #preset_kpdr25_backtracking_red_brinstar_green_gate)

presets_kpdr25_backtracking_crateria_kihunters_final:
    %cm_preset("Crateria Kihunters Final", #preset_names_crateria_kihunters_final, #preset_kpdr25_backtracking_crateria_kihunters_final)

presets_kpdr25_backtracking_parlor_spacejump:
    %cm_preset("Parlor Spacejump", #preset_names_parlor_spacejump, #preset_kpdr25_backtracking_parlor_spacejump)

presets_kpdr25_backtracking_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_names_terminator_revisit, #preset_kpdr25_backtracking_terminator_revisit)

presets_kpdr25_backtracking_green_pirate_shaft_revisit:
    %cm_preset("Green Pirate Shaft Revisit", #preset_names_green_pirate_shaft_revisit, #preset_kpdr25_backtracking_green_pirate_shaft_revisit)

presets_kpdr25_backtracking_g4_hallway:
    %cm_preset("G4 Hallway", #preset_names_g4_hallway, #preset_kpdr25_backtracking_g4_hallway)

presets_kpdr25_backtracking_g4_elevator:
    %cm_preset("G4 Elevator", #preset_names_g4_elevator, #preset_kpdr25_backtracking_g4_elevator)


; Tourian
presets_kpdr25_tourian_tourian_elevator_room:
    %cm_preset("Tourian Elevator Room", #preset_names_tourian_elevator_room, #preset_kpdr25_tourian_tourian_elevator_room)

presets_kpdr25_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_names_metroids_1, #preset_kpdr25_tourian_metroids_1)

presets_kpdr25_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_names_metroids_2, #preset_kpdr25_tourian_metroids_2)

presets_kpdr25_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_names_metroids_3, #preset_kpdr25_tourian_metroids_3)

presets_kpdr25_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_names_metroids_4, #preset_kpdr25_tourian_metroids_4)

presets_kpdr25_tourian_giant_hoppers:
    %cm_preset("Giant Hoppers", #preset_names_giant_hoppers, #preset_kpdr25_tourian_giant_hoppers)

presets_kpdr25_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_names_baby_skip, #preset_kpdr25_tourian_baby_skip)

presets_kpdr25_tourian_gadora_room:
    %cm_preset("Gadora Room", #preset_names_gadora_room, #preset_kpdr25_tourian_gadora_room)

presets_kpdr25_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_names_zeb_skip, #preset_kpdr25_tourian_zeb_skip)

presets_kpdr25_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_names_mother_brain_2, #preset_kpdr25_tourian_mother_brain_2)

presets_kpdr25_tourian_mother_brain_3:
    %cm_preset("Mother Brain 3", #preset_names_mother_brain_3, #preset_kpdr25_tourian_mother_brain_3)

presets_kpdr25_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_names_zebes_escape, #preset_kpdr25_tourian_zebes_escape)

presets_kpdr25_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_names_escape_room_3, #preset_kpdr25_tourian_escape_room_3)

presets_kpdr25_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_names_escape_room_4, #preset_kpdr25_tourian_escape_room_4)

presets_kpdr25_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_names_escape_climb, #preset_kpdr25_tourian_escape_climb)

presets_kpdr25_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_names_escape_parlor, #preset_kpdr25_tourian_escape_parlor)

