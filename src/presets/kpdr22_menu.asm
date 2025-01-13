PresetsMenuKpdr22:
    dw #presets_goto_kpdr22_crateria
    dw #presets_goto_kpdr22_brinstar
    dw #presets_goto_kpdr22_kraid
    dw #presets_goto_kpdr22_upper_norfair
    dw #presets_goto_kpdr22_red_brinstar
    dw #presets_goto_kpdr22_wrecked_ship
    dw #presets_goto_kpdr22_red_brinstar_revisit
    dw #presets_goto_kpdr22_maridia
    dw #presets_goto_kpdr22_upper_norfair_revisit
    dw #presets_goto_kpdr22_lower_norfair
    dw #presets_goto_kpdr22_backtracking
    dw #presets_goto_kpdr22_tourian
    dw #$0000
    %cm_header("PRESETS FOR 4 TANK KPDR")

presets_goto_kpdr22_crateria:
    %cm_submenu("Crateria", #presets_submenu_kpdr22_crateria)

presets_goto_kpdr22_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_kpdr22_brinstar)

presets_goto_kpdr22_kraid:
    %cm_submenu("Kraid's Lair", #presets_submenu_kpdr22_kraid)

presets_goto_kpdr22_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_kpdr22_upper_norfair)

presets_goto_kpdr22_red_brinstar:
    %cm_submenu("Red Brinstar", #presets_submenu_kpdr22_red_brinstar)

presets_goto_kpdr22_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_kpdr22_wrecked_ship)

presets_goto_kpdr22_red_brinstar_revisit:
    %cm_submenu("Red Brinstar Revisit", #presets_submenu_kpdr22_red_brinstar_revisit)

presets_goto_kpdr22_maridia:
    %cm_submenu("Maridia", #presets_submenu_kpdr22_maridia)

presets_goto_kpdr22_upper_norfair_revisit:
    %cm_submenu("Upper Norfair Revisit", #presets_submenu_kpdr22_upper_norfair_revisit)

presets_goto_kpdr22_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_kpdr22_lower_norfair)

presets_goto_kpdr22_backtracking:
    %cm_submenu("Backtracking", #presets_submenu_kpdr22_backtracking)

presets_goto_kpdr22_tourian:
    %cm_submenu("Tourian", #presets_submenu_kpdr22_tourian)

presets_submenu_kpdr22_crateria:
    dw #presets_kpdr22_crateria_ceres_elevator
    dw #presets_kpdr22_crateria_ceres_escape
    dw #presets_kpdr22_crateria_ceres_last_3_rooms
    dw #presets_kpdr22_crateria_ship
    dw #presets_kpdr22_crateria_parlor
    dw #presets_kpdr22_crateria_parlor_downback
    dw #presets_kpdr22_crateria_climb_down
    dw #presets_kpdr22_crateria_pit_room
    dw #presets_kpdr22_crateria_morph
    dw #presets_kpdr22_crateria_construction_zone
    dw #presets_kpdr22_crateria_construction_zone_revisit
    dw #presets_kpdr22_crateria_pit_room_revisit
    dw #presets_kpdr22_crateria_climb_up
    dw #presets_kpdr22_crateria_parlor_revisit
    dw #presets_kpdr22_crateria_flyway
    dw #presets_kpdr22_crateria_bomb_torizo
    dw #presets_kpdr22_crateria_alcatraz
    dw #presets_kpdr22_crateria_terminator
    dw #presets_kpdr22_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_kpdr22_brinstar:
    dw #presets_kpdr22_brinstar_green_brinstar_elevator
    dw #presets_kpdr22_brinstar_early_supers
    dw #presets_kpdr22_brinstar_dachora_room
    dw #presets_kpdr22_brinstar_big_pink
    dw #presets_kpdr22_brinstar_green_hill_zone
    dw #presets_kpdr22_brinstar_noob_bridge
    dw #presets_kpdr22_brinstar_red_tower
    dw #presets_kpdr22_brinstar_skree_boost
    dw #presets_kpdr22_brinstar_below_spazer
    dw #presets_kpdr22_brinstar_passing_through_maridia
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_kpdr22_kraid:
    dw #presets_kpdr22_kraid_entering_kraids_lair
    dw #presets_kpdr22_kraid_warehouse_zeelas
    dw #presets_kpdr22_kraid_kraid_kihunters
    dw #presets_kpdr22_kraid_mini_kraid
    dw #presets_kpdr22_kraid_fallen_hero
    dw #presets_kpdr22_kraid_kraid
    dw #presets_kpdr22_kraid_leaving_varia
    dw #presets_kpdr22_kraid_arthur_j_metroid
    dw #presets_kpdr22_kraid_mini_kraid_revisit
    dw #presets_kpdr22_kraid_kraid_kihunters_revisit
    dw #presets_kpdr22_kraid_kraid_etank
    dw #presets_kpdr22_kraid_leaving_kraid_etank
    dw #presets_kpdr22_kraid_business_center_preelev
    dw #$0000
    %cm_header("KRAID'S LAIR")

presets_submenu_kpdr22_upper_norfair:
    dw #presets_kpdr22_upper_norfair_business_center_postelev
    dw #presets_kpdr22_upper_norfair_hi_jump_etank
    dw #presets_kpdr22_upper_norfair_leaving_hi_jump
    dw #presets_kpdr22_upper_norfair_business_center_revisit
    dw #presets_kpdr22_upper_norfair_precathedral
    dw #presets_kpdr22_upper_norfair_cathedral
    dw #presets_kpdr22_upper_norfair_rising_tide
    dw #presets_kpdr22_upper_norfair_bubble_mountain
    dw #presets_kpdr22_upper_norfair_bat_cave
    dw #presets_kpdr22_upper_norfair_speed_hallway
    dw #presets_kpdr22_upper_norfair_bat_cave_revisit
    dw #presets_kpdr22_upper_norfair_single_chamber
    dw #presets_kpdr22_upper_norfair_double_chamber
    dw #presets_kpdr22_upper_norfair_double_chamber_revisit
    dw #presets_kpdr22_upper_norfair_single_chamber_revisit
    dw #presets_kpdr22_upper_norfair_bubble_mountain_revisit
    dw #presets_kpdr22_upper_norfair_frog_speedway
    dw #presets_kpdr22_upper_norfair_heading_to_red_brinstar
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_kpdr22_red_brinstar:
    dw #presets_kpdr22_red_brinstar_alpha_spark
    dw #presets_kpdr22_red_brinstar_reverse_skree_boost
    dw #presets_kpdr22_red_brinstar_red_tower_climb
    dw #presets_kpdr22_red_brinstar_hellway
    dw #presets_kpdr22_red_brinstar_caterpillars_down
    dw #presets_kpdr22_red_brinstar_alpha_power_bombs
    dw #presets_kpdr22_red_brinstar_caterpillars_up
    dw #$0000
    %cm_header("RED BRINSTAR")

presets_submenu_kpdr22_wrecked_ship:
    dw #presets_kpdr22_wrecked_ship_crateria_kihunters
    dw #presets_kpdr22_wrecked_ship_oceanfly_setup
    dw #presets_kpdr22_wrecked_ship_ocean_spark
    dw #presets_kpdr22_wrecked_ship_entering_wrecked_ship
    dw #presets_kpdr22_wrecked_ship_basement
    dw #presets_kpdr22_wrecked_ship_phantoon
    dw #presets_kpdr22_wrecked_ship_leaving_phantoon
    dw #presets_kpdr22_wrecked_ship_shaft_to_supers
    dw #presets_kpdr22_wrecked_ship_wrecked_ship_shaft
    dw #presets_kpdr22_wrecked_ship_attic
    dw #presets_kpdr22_wrecked_ship_upper_west_ocean
    dw #presets_kpdr22_wrecked_ship_pancakes_and_wavers
    dw #presets_kpdr22_wrecked_ship_bowling_spark
    dw #presets_kpdr22_wrecked_ship_leaving_gravity
    dw #presets_kpdr22_wrecked_ship_moat_ball
    dw #presets_kpdr22_wrecked_ship_crateria_kihunters_return
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_kpdr22_red_brinstar_revisit:
    dw #presets_kpdr22_red_brinstar_revisit_red_brinstar_elevator
    dw #presets_kpdr22_red_brinstar_revisit_caterpillars_revisit
    dw #presets_kpdr22_red_brinstar_revisit_hellway_revisit
    dw #presets_kpdr22_red_brinstar_revisit_red_tower_down
    dw #presets_kpdr22_red_brinstar_revisit_skree_boost_final
    dw #presets_kpdr22_red_brinstar_revisit_below_spazer_final
    dw #presets_kpdr22_red_brinstar_revisit_breaking_tube
    dw #$0000
    %cm_header("RED BRINSTAR REVISIT")

presets_submenu_kpdr22_maridia:
    dw #presets_kpdr22_maridia_fish_tank
    dw #presets_kpdr22_maridia_mt_everest
    dw #presets_kpdr22_maridia_crab_shaft
    dw #presets_kpdr22_maridia_aqueduct
    dw #presets_kpdr22_maridia_botwoon_hallway
    dw #presets_kpdr22_maridia_botwoon
    dw #presets_kpdr22_maridia_botwoon_etank
    dw #presets_kpdr22_maridia_halfie_setup
    dw #presets_kpdr22_maridia_draygon
    dw #presets_kpdr22_maridia_reverse_halfie_spikesuit
    dw #presets_kpdr22_maridia_whomple_jump
    dw #presets_kpdr22_maridia_cac_alley_east
    dw #presets_kpdr22_maridia_cac_alley_west
    dw #presets_kpdr22_maridia_plasma_spark
    dw #presets_kpdr22_maridia_plasma_climb
    dw #presets_kpdr22_maridia_plasma_beam
    dw #presets_kpdr22_maridia_plasma_spark_revisit
    dw #presets_kpdr22_maridia_toilet
    dw #presets_kpdr22_maridia_sewers
    dw #presets_kpdr22_maridia_lower_maridia_gate
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_kpdr22_upper_norfair_revisit:
    dw #presets_kpdr22_upper_norfair_revisit_ice_beam_gates
    dw #presets_kpdr22_upper_norfair_revisit_ice_maze_up
    dw #presets_kpdr22_upper_norfair_revisit_ice_maze_down
    dw #presets_kpdr22_upper_norfair_revisit_ice_escape
    dw #$FFFF
    dw #presets_kpdr22_upper_norfair_revisit_purple_shaft_upper
    dw #presets_kpdr22_upper_norfair_revisit_magdollite_tunnel_upper
    dw #presets_kpdr22_upper_norfair_revisit_kronic_boost_upper
    dw #$FFFF
    dw #presets_kpdr22_upper_norfair_revisit_croc_speedway_lower
    dw #presets_kpdr22_upper_norfair_revisit_spiky_acid_snakes_lower
    dw #presets_kpdr22_upper_norfair_revisit_kronic_boost_lower
    dw #$0000
    %cm_header("UPPER NORFAIR REVISIT")

presets_submenu_kpdr22_lower_norfair:
    dw #presets_kpdr22_lower_norfair_ln_main_hall
    dw #presets_kpdr22_lower_norfair_prepillars
    dw #presets_kpdr22_lower_norfair_worst_room_in_the_game
    dw #presets_kpdr22_lower_norfair_amphitheatre
    dw #presets_kpdr22_lower_norfair_kihunter_stairs_down
    dw #presets_kpdr22_lower_norfair_wasteland
    dw #presets_kpdr22_lower_norfair_metal_ninja_pirates
    dw #presets_kpdr22_lower_norfair_plowerhouse
    dw #presets_kpdr22_lower_norfair_ridley
    dw #presets_kpdr22_lower_norfair_leaving_ridley
    dw #presets_kpdr22_lower_norfair_reverse_plowerhouse
    dw #presets_kpdr22_lower_norfair_wasteland_revisit
    dw #presets_kpdr22_lower_norfair_kihunter_stairs_up
    dw #presets_kpdr22_lower_norfair_fire_flea_room
    dw #presets_kpdr22_lower_norfair_springball_maze
    dw #presets_kpdr22_lower_norfair_three_musketeers
    dw #presets_kpdr22_lower_norfair_single_chamber_final
    dw #presets_kpdr22_lower_norfair_bubble_mountain_final
    dw #presets_kpdr22_lower_norfair_business_center_final
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_kpdr22_backtracking:
    dw #presets_kpdr22_backtracking_maridia_tube_revisit
    dw #presets_kpdr22_backtracking_fish_tank_revisit
    dw #presets_kpdr22_backtracking_mt_everest_revisit
    dw #presets_kpdr22_backtracking_red_brinstar_green_gate
    dw #presets_kpdr22_backtracking_crateria_kihunters_final
    dw #presets_kpdr22_backtracking_parlor_spacejump
    dw #presets_kpdr22_backtracking_terminator_revisit
    dw #presets_kpdr22_backtracking_green_pirate_shaft_revisit
    dw #presets_kpdr22_backtracking_g4_hallway
    dw #presets_kpdr22_backtracking_g4_elevator
    dw #$0000
    %cm_header("BACKTRACKING")

presets_submenu_kpdr22_tourian:
    dw #presets_kpdr22_tourian_tourian_elevator_room
    dw #presets_kpdr22_tourian_metroids_1
    dw #presets_kpdr22_tourian_metroids_2
    dw #presets_kpdr22_tourian_metroids_3
    dw #presets_kpdr22_tourian_metroids_4
    dw #presets_kpdr22_tourian_giant_hoppers
    dw #presets_kpdr22_tourian_baby_skip
    dw #presets_kpdr22_tourian_gadora_room
    dw #presets_kpdr22_tourian_zeb_skip
    dw #presets_kpdr22_tourian_mother_brain_2
    dw #presets_kpdr22_tourian_mother_brain_3
    dw #presets_kpdr22_tourian_zebes_escape
    dw #presets_kpdr22_tourian_escape_room_3
    dw #presets_kpdr22_tourian_escape_room_4
    dw #presets_kpdr22_tourian_escape_climb
    dw #presets_kpdr22_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Crateria
presets_kpdr22_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_kpdr22_crateria_ceres_elevator)

presets_kpdr22_crateria_ceres_escape:
    %cm_preset("Ceres Escape", #preset_kpdr22_crateria_ceres_escape)

presets_kpdr22_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_kpdr22_crateria_ceres_last_3_rooms)

presets_kpdr22_crateria_ship:
    %cm_preset("Ship", #preset_kpdr22_crateria_ship)

presets_kpdr22_crateria_parlor:
    %cm_preset("Parlor", #preset_kpdr22_crateria_parlor)

presets_kpdr22_crateria_parlor_downback:
    %cm_preset("Parlor Downback", #preset_kpdr22_crateria_parlor_downback)

presets_kpdr22_crateria_climb_down:
    %cm_preset("Climb Down", #preset_kpdr22_crateria_climb_down)

presets_kpdr22_crateria_pit_room:
    %cm_preset("Pit Room", #preset_kpdr22_crateria_pit_room)

presets_kpdr22_crateria_morph:
    %cm_preset("Morph", #preset_kpdr22_crateria_morph)

presets_kpdr22_crateria_construction_zone:
    %cm_preset("Construction Zone", #preset_kpdr22_crateria_construction_zone)

presets_kpdr22_crateria_construction_zone_revisit:
    %cm_preset("Construction Zone Revisit", #preset_kpdr22_crateria_construction_zone_revisit)

presets_kpdr22_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_kpdr22_crateria_pit_room_revisit)

presets_kpdr22_crateria_climb_up:
    %cm_preset("Climb Up", #preset_kpdr22_crateria_climb_up)

presets_kpdr22_crateria_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_kpdr22_crateria_parlor_revisit)

presets_kpdr22_crateria_flyway:
    %cm_preset("Flyway", #preset_kpdr22_crateria_flyway)

presets_kpdr22_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_kpdr22_crateria_bomb_torizo)

presets_kpdr22_crateria_alcatraz:
    %cm_preset("Alcatraz", #preset_kpdr22_crateria_alcatraz)

presets_kpdr22_crateria_terminator:
    %cm_preset("Terminator", #preset_kpdr22_crateria_terminator)

presets_kpdr22_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_kpdr22_crateria_green_pirate_shaft)


; Brinstar
presets_kpdr22_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_kpdr22_brinstar_green_brinstar_elevator)

presets_kpdr22_brinstar_early_supers:
    %cm_preset("Early Supers", #preset_kpdr22_brinstar_early_supers)

presets_kpdr22_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_kpdr22_brinstar_dachora_room)

presets_kpdr22_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_kpdr22_brinstar_big_pink)

presets_kpdr22_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_kpdr22_brinstar_green_hill_zone)

presets_kpdr22_brinstar_noob_bridge:
    %cm_preset("Noob Bridge", #preset_kpdr22_brinstar_noob_bridge)

presets_kpdr22_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_kpdr22_brinstar_red_tower)

presets_kpdr22_brinstar_skree_boost:
    %cm_preset("Skree Boost", #preset_kpdr22_brinstar_skree_boost)

presets_kpdr22_brinstar_below_spazer:
    %cm_preset("Below Spazer", #preset_kpdr22_brinstar_below_spazer)

presets_kpdr22_brinstar_passing_through_maridia:
    %cm_preset("Passing Through Maridia", #preset_kpdr22_brinstar_passing_through_maridia)


; Kraid
presets_kpdr22_kraid_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_kpdr22_kraid_entering_kraids_lair)

presets_kpdr22_kraid_warehouse_zeelas:
    %cm_preset("Warehouse Zeelas", #preset_kpdr22_kraid_warehouse_zeelas)

presets_kpdr22_kraid_kraid_kihunters:
    %cm_preset("Kraid Kihunters", #preset_kpdr22_kraid_kraid_kihunters)

presets_kpdr22_kraid_mini_kraid:
    %cm_preset("Mini Kraid", #preset_kpdr22_kraid_mini_kraid)

presets_kpdr22_kraid_fallen_hero:
    %cm_preset("Fallen Hero", #preset_kpdr22_kraid_fallen_hero)

presets_kpdr22_kraid_kraid:
    %cm_preset("Kraid", #preset_kpdr22_kraid_kraid)

presets_kpdr22_kraid_leaving_varia:
    %cm_preset("Leaving Varia", #preset_kpdr22_kraid_leaving_varia)

presets_kpdr22_kraid_arthur_j_metroid:
    %cm_preset("Arthur J. Metroid", #preset_kpdr22_kraid_arthur_j_metroid)

presets_kpdr22_kraid_mini_kraid_revisit:
    %cm_preset("Mini Kraid Revisit", #preset_kpdr22_kraid_mini_kraid_revisit)

presets_kpdr22_kraid_kraid_kihunters_revisit:
    %cm_preset("Kraid Kihunters Revisit", #preset_kpdr22_kraid_kraid_kihunters_revisit)

presets_kpdr22_kraid_kraid_etank:
    %cm_preset("Kraid E-Tank", #preset_kpdr22_kraid_kraid_etank)

presets_kpdr22_kraid_leaving_kraid_etank:
    %cm_preset("Leaving Kraid E-Tank", #preset_kpdr22_kraid_leaving_kraid_etank)

presets_kpdr22_kraid_business_center_preelev:
    %cm_preset("Business Center Pre-Elev", #preset_kpdr22_kraid_business_center_preelev)


; Upper Norfair
presets_kpdr22_upper_norfair_business_center_postelev:
    %cm_preset("Business Center Post-Elev", #preset_kpdr22_upper_norfair_business_center_postelev)

presets_kpdr22_upper_norfair_hi_jump_etank:
    %cm_preset("Hi Jump E-Tank", #preset_kpdr22_upper_norfair_hi_jump_etank)

presets_kpdr22_upper_norfair_leaving_hi_jump:
    %cm_preset("Leaving Hi Jump", #preset_kpdr22_upper_norfair_leaving_hi_jump)

presets_kpdr22_upper_norfair_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_kpdr22_upper_norfair_business_center_revisit)

presets_kpdr22_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_kpdr22_upper_norfair_precathedral)

presets_kpdr22_upper_norfair_cathedral:
    %cm_preset("Cathedral", #preset_kpdr22_upper_norfair_cathedral)

presets_kpdr22_upper_norfair_rising_tide:
    %cm_preset("Rising Tide", #preset_kpdr22_upper_norfair_rising_tide)

presets_kpdr22_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_kpdr22_upper_norfair_bubble_mountain)

presets_kpdr22_upper_norfair_bat_cave:
    %cm_preset("Bat Cave", #preset_kpdr22_upper_norfair_bat_cave)

presets_kpdr22_upper_norfair_speed_hallway:
    %cm_preset("Speed Hallway", #preset_kpdr22_upper_norfair_speed_hallway)

presets_kpdr22_upper_norfair_bat_cave_revisit:
    %cm_preset("Bat Cave Revisit", #preset_kpdr22_upper_norfair_bat_cave_revisit)

presets_kpdr22_upper_norfair_single_chamber:
    %cm_preset("Single Chamber", #preset_kpdr22_upper_norfair_single_chamber)

presets_kpdr22_upper_norfair_double_chamber:
    %cm_preset("Double Chamber", #preset_kpdr22_upper_norfair_double_chamber)

presets_kpdr22_upper_norfair_double_chamber_revisit:
    %cm_preset("Double Chamber Revisit", #preset_kpdr22_upper_norfair_double_chamber_revisit)

presets_kpdr22_upper_norfair_single_chamber_revisit:
    %cm_preset("Single Chamber Revisit", #preset_kpdr22_upper_norfair_single_chamber_revisit)

presets_kpdr22_upper_norfair_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_kpdr22_upper_norfair_bubble_mountain_revisit)

presets_kpdr22_upper_norfair_frog_speedway:
    %cm_preset("Frog Speedway", #preset_kpdr22_upper_norfair_frog_speedway)

presets_kpdr22_upper_norfair_heading_to_red_brinstar:
    %cm_preset("Heading To Red Brinstar", #preset_kpdr22_upper_norfair_heading_to_red_brinstar)


; Red Brinstar
presets_kpdr22_red_brinstar_alpha_spark:
    %cm_preset("Alpha Spark", #preset_kpdr22_red_brinstar_alpha_spark)

presets_kpdr22_red_brinstar_reverse_skree_boost:
    %cm_preset("Reverse Skree Boost", #preset_kpdr22_red_brinstar_reverse_skree_boost)

presets_kpdr22_red_brinstar_red_tower_climb:
    %cm_preset("Red Tower Climb", #preset_kpdr22_red_brinstar_red_tower_climb)

presets_kpdr22_red_brinstar_hellway:
    %cm_preset("Hellway", #preset_kpdr22_red_brinstar_hellway)

presets_kpdr22_red_brinstar_caterpillars_down:
    %cm_preset("Caterpillars Down", #preset_kpdr22_red_brinstar_caterpillars_down)

presets_kpdr22_red_brinstar_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_kpdr22_red_brinstar_alpha_power_bombs)

presets_kpdr22_red_brinstar_caterpillars_up:
    %cm_preset("Caterpillars Up", #preset_kpdr22_red_brinstar_caterpillars_up)


; Wrecked Ship
presets_kpdr22_wrecked_ship_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_kpdr22_wrecked_ship_crateria_kihunters)

presets_kpdr22_wrecked_ship_oceanfly_setup:
    %cm_preset("Oceanfly Setup", #preset_kpdr22_wrecked_ship_oceanfly_setup)

presets_kpdr22_wrecked_ship_ocean_spark:
    %cm_preset("Ocean Spark", #preset_kpdr22_wrecked_ship_ocean_spark)

presets_kpdr22_wrecked_ship_entering_wrecked_ship:
    %cm_preset("Entering Wrecked Ship", #preset_kpdr22_wrecked_ship_entering_wrecked_ship)

presets_kpdr22_wrecked_ship_basement:
    %cm_preset("Basement", #preset_kpdr22_wrecked_ship_basement)

presets_kpdr22_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_kpdr22_wrecked_ship_phantoon)

presets_kpdr22_wrecked_ship_leaving_phantoon:
    %cm_preset("Leaving Phantoon", #preset_kpdr22_wrecked_ship_leaving_phantoon)

presets_kpdr22_wrecked_ship_shaft_to_supers:
    %cm_preset("Shaft To Supers", #preset_kpdr22_wrecked_ship_shaft_to_supers)

presets_kpdr22_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_kpdr22_wrecked_ship_wrecked_ship_shaft)

presets_kpdr22_wrecked_ship_attic:
    %cm_preset("Attic", #preset_kpdr22_wrecked_ship_attic)

presets_kpdr22_wrecked_ship_upper_west_ocean:
    %cm_preset("Upper West Ocean", #preset_kpdr22_wrecked_ship_upper_west_ocean)

presets_kpdr22_wrecked_ship_pancakes_and_wavers:
    %cm_preset("Pancakes and Wavers", #preset_kpdr22_wrecked_ship_pancakes_and_wavers)

presets_kpdr22_wrecked_ship_bowling_spark:
    %cm_preset("Bowling Spark", #preset_kpdr22_wrecked_ship_bowling_spark)

presets_kpdr22_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_kpdr22_wrecked_ship_leaving_gravity)

presets_kpdr22_wrecked_ship_moat_ball:
    %cm_preset("Moat Ball", #preset_kpdr22_wrecked_ship_moat_ball)

presets_kpdr22_wrecked_ship_crateria_kihunters_return:
    %cm_preset("Crateria Kihunters Return", #preset_kpdr22_wrecked_ship_crateria_kihunters_return)


; Red Brinstar Revisit
presets_kpdr22_red_brinstar_revisit_red_brinstar_elevator:
    %cm_preset("Red Brinstar Elevator", #preset_kpdr22_red_brinstar_revisit_red_brinstar_elevator)

presets_kpdr22_red_brinstar_revisit_caterpillars_revisit:
    %cm_preset("Caterpillars Revisit", #preset_kpdr22_red_brinstar_revisit_caterpillars_revisit)

presets_kpdr22_red_brinstar_revisit_hellway_revisit:
    %cm_preset("Hellway Revisit", #preset_kpdr22_red_brinstar_revisit_hellway_revisit)

presets_kpdr22_red_brinstar_revisit_red_tower_down:
    %cm_preset("Red Tower Down", #preset_kpdr22_red_brinstar_revisit_red_tower_down)

presets_kpdr22_red_brinstar_revisit_skree_boost_final:
    %cm_preset("Skree Boost Final", #preset_kpdr22_red_brinstar_revisit_skree_boost_final)

presets_kpdr22_red_brinstar_revisit_below_spazer_final:
    %cm_preset("Below Spazer Final", #preset_kpdr22_red_brinstar_revisit_below_spazer_final)

presets_kpdr22_red_brinstar_revisit_breaking_tube:
    %cm_preset("Breaking Tube", #preset_kpdr22_red_brinstar_revisit_breaking_tube)


; Maridia
presets_kpdr22_maridia_fish_tank:
    %cm_preset("Fish Tank", #preset_kpdr22_maridia_fish_tank)

presets_kpdr22_maridia_mt_everest:
    %cm_preset("Mt. Everest", #preset_kpdr22_maridia_mt_everest)

presets_kpdr22_maridia_crab_shaft:
    %cm_preset("Crab Shaft", #preset_kpdr22_maridia_crab_shaft)

presets_kpdr22_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_kpdr22_maridia_aqueduct)

presets_kpdr22_maridia_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_kpdr22_maridia_botwoon_hallway)

presets_kpdr22_maridia_botwoon:
    %cm_preset("Botwoon", #preset_kpdr22_maridia_botwoon)

presets_kpdr22_maridia_botwoon_etank:
    %cm_preset("Botwoon E-Tank", #preset_kpdr22_maridia_botwoon_etank)

presets_kpdr22_maridia_halfie_setup:
    %cm_preset("Halfie Setup", #preset_kpdr22_maridia_halfie_setup)

presets_kpdr22_maridia_draygon:
    %cm_preset("Draygon", #preset_kpdr22_maridia_draygon)

presets_kpdr22_maridia_reverse_halfie_spikesuit:
    %cm_preset("Reverse Halfie (Spikesuit)", #preset_kpdr22_maridia_reverse_halfie_spikesuit)

presets_kpdr22_maridia_whomple_jump:
    %cm_preset("Whomple Jump", #preset_kpdr22_maridia_whomple_jump)

presets_kpdr22_maridia_cac_alley_east:
    %cm_preset("Cac Alley East", #preset_kpdr22_maridia_cac_alley_east)

presets_kpdr22_maridia_cac_alley_west:
    %cm_preset("Cac Alley West", #preset_kpdr22_maridia_cac_alley_west)

presets_kpdr22_maridia_plasma_spark:
    %cm_preset("Plasma Spark", #preset_kpdr22_maridia_plasma_spark)

presets_kpdr22_maridia_plasma_climb:
    %cm_preset("Plasma Climb", #preset_kpdr22_maridia_plasma_climb)

presets_kpdr22_maridia_plasma_beam:
    %cm_preset("Plasma Beam", #preset_kpdr22_maridia_plasma_beam)

presets_kpdr22_maridia_plasma_spark_revisit:
    %cm_preset("Plasma Spark Revisit", #preset_kpdr22_maridia_plasma_spark_revisit)

presets_kpdr22_maridia_toilet:
    %cm_preset("Toilet", #preset_kpdr22_maridia_toilet)

presets_kpdr22_maridia_sewers:
    %cm_preset("Sewers", #preset_kpdr22_maridia_sewers)

presets_kpdr22_maridia_lower_maridia_gate:
    %cm_preset("Lower Maridia Gate", #preset_kpdr22_maridia_lower_maridia_gate)


; Upper Norfair Revisit
presets_kpdr22_upper_norfair_revisit_ice_beam_gates:
    %cm_preset("Ice Beam Gates", #preset_kpdr22_upper_norfair_revisit_ice_beam_gates)

presets_kpdr22_upper_norfair_revisit_ice_maze_up:
    %cm_preset("Ice Maze Up", #preset_kpdr22_upper_norfair_revisit_ice_maze_up)

presets_kpdr22_upper_norfair_revisit_ice_maze_down:
    %cm_preset("Ice Maze Down", #preset_kpdr22_upper_norfair_revisit_ice_maze_down)

presets_kpdr22_upper_norfair_revisit_ice_escape:
    %cm_preset("Ice Escape", #preset_kpdr22_upper_norfair_revisit_ice_escape)

presets_kpdr22_upper_norfair_revisit_purple_shaft_upper:
    %cm_preset("Purple Shaft (Upper)", #preset_kpdr22_upper_norfair_revisit_purple_shaft_upper)

presets_kpdr22_upper_norfair_revisit_magdollite_tunnel_upper:
    %cm_preset("Magdollite Tunnel (Upper)", #preset_kpdr22_upper_norfair_revisit_magdollite_tunnel_upper)

presets_kpdr22_upper_norfair_revisit_kronic_boost_upper:
    %cm_preset("Kronic Boost (Upper)", #preset_kpdr22_upper_norfair_revisit_kronic_boost_upper)

presets_kpdr22_upper_norfair_revisit_croc_speedway_lower:
    %cm_preset("Croc Speedway (Lower)", #preset_kpdr22_upper_norfair_revisit_croc_speedway_lower)

presets_kpdr22_upper_norfair_revisit_spiky_acid_snakes_lower:
    %cm_preset("Spiky Acid Snakes (Lower)", #preset_kpdr22_upper_norfair_revisit_spiky_acid_snakes_lower)

presets_kpdr22_upper_norfair_revisit_kronic_boost_lower:
    %cm_preset("Kronic Boost (Lower)", #preset_kpdr22_upper_norfair_revisit_kronic_boost_lower)


; Lower Norfair
presets_kpdr22_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_kpdr22_lower_norfair_ln_main_hall)

presets_kpdr22_lower_norfair_prepillars:
    %cm_preset("Pre-Pillars", #preset_kpdr22_lower_norfair_prepillars)

presets_kpdr22_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room in the Game", #preset_kpdr22_lower_norfair_worst_room_in_the_game)

presets_kpdr22_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_kpdr22_lower_norfair_amphitheatre)

presets_kpdr22_lower_norfair_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_kpdr22_lower_norfair_kihunter_stairs_down)

presets_kpdr22_lower_norfair_wasteland:
    %cm_preset("Wasteland", #preset_kpdr22_lower_norfair_wasteland)

presets_kpdr22_lower_norfair_metal_ninja_pirates:
    %cm_preset("Metal Ninja Pirates", #preset_kpdr22_lower_norfair_metal_ninja_pirates)

presets_kpdr22_lower_norfair_plowerhouse:
    %cm_preset("Plowerhouse", #preset_kpdr22_lower_norfair_plowerhouse)

presets_kpdr22_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_kpdr22_lower_norfair_ridley)

presets_kpdr22_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_kpdr22_lower_norfair_leaving_ridley)

presets_kpdr22_lower_norfair_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_kpdr22_lower_norfair_reverse_plowerhouse)

presets_kpdr22_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_kpdr22_lower_norfair_wasteland_revisit)

presets_kpdr22_lower_norfair_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_kpdr22_lower_norfair_kihunter_stairs_up)

presets_kpdr22_lower_norfair_fire_flea_room:
    %cm_preset("Fire Flea Room", #preset_kpdr22_lower_norfair_fire_flea_room)

presets_kpdr22_lower_norfair_springball_maze:
    %cm_preset("Springball Maze", #preset_kpdr22_lower_norfair_springball_maze)

presets_kpdr22_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_kpdr22_lower_norfair_three_musketeers)

presets_kpdr22_lower_norfair_single_chamber_final:
    %cm_preset("Single Chamber Final", #preset_kpdr22_lower_norfair_single_chamber_final)

presets_kpdr22_lower_norfair_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_kpdr22_lower_norfair_bubble_mountain_final)

presets_kpdr22_lower_norfair_business_center_final:
    %cm_preset("Business Center Final", #preset_kpdr22_lower_norfair_business_center_final)


; Backtracking
presets_kpdr22_backtracking_maridia_tube_revisit:
    %cm_preset("Maridia Tube Revisit", #preset_kpdr22_backtracking_maridia_tube_revisit)

presets_kpdr22_backtracking_fish_tank_revisit:
    %cm_preset("Fish Tank Revisit", #preset_kpdr22_backtracking_fish_tank_revisit)

presets_kpdr22_backtracking_mt_everest_revisit:
    %cm_preset("Mt. Everest Revisit", #preset_kpdr22_backtracking_mt_everest_revisit)

presets_kpdr22_backtracking_red_brinstar_green_gate:
    %cm_preset("Red Brinstar Green Gate", #preset_kpdr22_backtracking_red_brinstar_green_gate)

presets_kpdr22_backtracking_crateria_kihunters_final:
    %cm_preset("Crateria Kihunters Final", #preset_kpdr22_backtracking_crateria_kihunters_final)

presets_kpdr22_backtracking_parlor_spacejump:
    %cm_preset("Parlor Spacejump", #preset_kpdr22_backtracking_parlor_spacejump)

presets_kpdr22_backtracking_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_kpdr22_backtracking_terminator_revisit)

presets_kpdr22_backtracking_green_pirate_shaft_revisit:
    %cm_preset("Green Pirate Shaft Revisit", #preset_kpdr22_backtracking_green_pirate_shaft_revisit)

presets_kpdr22_backtracking_g4_hallway:
    %cm_preset("G4 Hallway", #preset_kpdr22_backtracking_g4_hallway)

presets_kpdr22_backtracking_g4_elevator:
    %cm_preset("G4 Elevator", #preset_kpdr22_backtracking_g4_elevator)


; Tourian
presets_kpdr22_tourian_tourian_elevator_room:
    %cm_preset("Tourian Elevator Room", #preset_kpdr22_tourian_tourian_elevator_room)

presets_kpdr22_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_kpdr22_tourian_metroids_1)

presets_kpdr22_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_kpdr22_tourian_metroids_2)

presets_kpdr22_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_kpdr22_tourian_metroids_3)

presets_kpdr22_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_kpdr22_tourian_metroids_4)

presets_kpdr22_tourian_giant_hoppers:
    %cm_preset("Giant Hoppers", #preset_kpdr22_tourian_giant_hoppers)

presets_kpdr22_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_kpdr22_tourian_baby_skip)

presets_kpdr22_tourian_gadora_room:
    %cm_preset("Gadora Room", #preset_kpdr22_tourian_gadora_room)

presets_kpdr22_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_kpdr22_tourian_zeb_skip)

presets_kpdr22_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_kpdr22_tourian_mother_brain_2)

presets_kpdr22_tourian_mother_brain_3:
    %cm_preset("Mother Brain 3", #preset_kpdr22_tourian_mother_brain_3)

presets_kpdr22_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_kpdr22_tourian_zebes_escape)

presets_kpdr22_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_kpdr22_tourian_escape_room_3)

presets_kpdr22_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_kpdr22_tourian_escape_room_4)

presets_kpdr22_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_kpdr22_tourian_escape_climb)

presets_kpdr22_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_kpdr22_tourian_escape_parlor)


