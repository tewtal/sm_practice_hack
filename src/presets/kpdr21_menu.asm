PresetsMenuKpdr21:
    dw #presets_goto_kpdr21_crateria
    dw #presets_goto_kpdr21_brinstar
    dw #presets_goto_kpdr21_upper_norfair
    dw #presets_goto_kpdr21_red_brinstar
    dw #presets_goto_kpdr21_wrecked_ship
    dw #presets_goto_kpdr21_red_brinstar_final
    dw #presets_goto_kpdr21_maridia
    dw #presets_goto_kpdr21_upper_norfair_revisit
    dw #presets_goto_kpdr21_lower_norfair
    dw #presets_goto_kpdr21_backtracking
    dw #presets_goto_kpdr21_tourian
    dw #$0000
    %cm_header("PRESETS FOR ANY KPDR")

presets_goto_kpdr21_crateria:
    %cm_submenu("Crateria", #presets_submenu_kpdr21_crateria)

presets_goto_kpdr21_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_kpdr21_brinstar)

presets_goto_kpdr21_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_kpdr21_upper_norfair)

presets_goto_kpdr21_red_brinstar:
    %cm_submenu("Red Brinstar", #presets_submenu_kpdr21_red_brinstar)

presets_goto_kpdr21_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_kpdr21_wrecked_ship)

presets_goto_kpdr21_red_brinstar_final:
    %cm_submenu("Red Brinstar Final", #presets_submenu_kpdr21_red_brinstar_final)

presets_goto_kpdr21_maridia:
    %cm_submenu("Maridia", #presets_submenu_kpdr21_maridia)

presets_goto_kpdr21_upper_norfair_revisit:
    %cm_submenu("Upper Norfair Revisit", #presets_submenu_kpdr21_upper_norfair_revisit)

presets_goto_kpdr21_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_kpdr21_lower_norfair)

presets_goto_kpdr21_backtracking:
    %cm_submenu("Backtracking", #presets_submenu_kpdr21_backtracking)

presets_goto_kpdr21_tourian:
    %cm_submenu("Tourian", #presets_submenu_kpdr21_tourian)

presets_submenu_kpdr21_crateria:
    dw #presets_kpdr21_crateria_ship
    dw #presets_kpdr21_crateria_parlor
    dw #presets_kpdr21_crateria_parlor_downback
    dw #presets_kpdr21_crateria_climb_down
    dw #presets_kpdr21_crateria_pit_room
    dw #presets_kpdr21_crateria_morph
    dw #presets_kpdr21_crateria_construction_zone
    dw #presets_kpdr21_crateria_construction_zone_revisit
    dw #presets_kpdr21_crateria_pit_room_revisit
    dw #presets_kpdr21_crateria_climb_up
    dw #presets_kpdr21_crateria_parlor_revisit
    dw #presets_kpdr21_crateria_flyway
    dw #presets_kpdr21_crateria_bomb_torizo
    dw #presets_kpdr21_crateria_alcatraz
    dw #presets_kpdr21_crateria_terminator
    dw #presets_kpdr21_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_kpdr21_brinstar:
    dw #presets_kpdr21_brinstar_green_brinstar_elevator
    dw #presets_kpdr21_brinstar_early_supers
    dw #presets_kpdr21_brinstar_dachora_room
    dw #presets_kpdr21_brinstar_big_pink
    dw #presets_kpdr21_brinstar_green_hill_zone
    dw #presets_kpdr21_brinstar_noob_bridge
    dw #presets_kpdr21_brinstar_red_tower
    dw #presets_kpdr21_brinstar_skree_boost
    dw #presets_kpdr21_brinstar_below_spazer
    dw #presets_kpdr21_brinstar_entering_kraids_lair
    dw #presets_kpdr21_brinstar_kraid_kihunters
    dw #presets_kpdr21_brinstar_mini_kraid
    dw #presets_kpdr21_brinstar_kraid
    dw #presets_kpdr21_brinstar_leaving_varia
    dw #presets_kpdr21_brinstar_mini_kraid_revisit
    dw #presets_kpdr21_brinstar_kraid_kihunters_revisit
    dw #presets_kpdr21_brinstar_kraid_etank
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_kpdr21_upper_norfair:
    dw #presets_kpdr21_upper_norfair_business_center
    dw #presets_kpdr21_upper_norfair_hi_jump_etank
    dw #presets_kpdr21_upper_norfair_leaving_hi_jump
    dw #presets_kpdr21_upper_norfair_business_center_2
    dw #presets_kpdr21_upper_norfair_precathedral
    dw #presets_kpdr21_upper_norfair_cathedral
    dw #presets_kpdr21_upper_norfair_rising_tide
    dw #presets_kpdr21_upper_norfair_bubble_mountain
    dw #presets_kpdr21_upper_norfair_bat_cave
    dw #presets_kpdr21_upper_norfair_single_chamber
    dw #presets_kpdr21_upper_norfair_double_chamber
    dw #presets_kpdr21_upper_norfair_double_chamber_revisit
    dw #presets_kpdr21_upper_norfair_single_chamber_revisit
    dw #presets_kpdr21_upper_norfair_bubble_mountain_revisit
    dw #presets_kpdr21_upper_norfair_frog_speedway
    dw #presets_kpdr21_upper_norfair_business_center_3
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_kpdr21_red_brinstar:
    dw #presets_kpdr21_red_brinstar_alpha_spark
    dw #presets_kpdr21_red_brinstar_reverse_skree_boost
    dw #presets_kpdr21_red_brinstar_red_tower_climb
    dw #presets_kpdr21_red_brinstar_hellway
    dw #presets_kpdr21_red_brinstar_caterpillars_down
    dw #presets_kpdr21_red_brinstar_alpha_power_bombs
    dw #presets_kpdr21_red_brinstar_caterpillars_up
    dw #$0000
    %cm_header("RED BRINSTAR")

presets_submenu_kpdr21_wrecked_ship:
    dw #presets_kpdr21_wrecked_ship_crateria_kihunters
    dw #presets_kpdr21_wrecked_ship_oceanfly_setup
    dw #presets_kpdr21_wrecked_ship_ocean_spark
    dw #presets_kpdr21_wrecked_ship_entering_wrecked_ship
    dw #presets_kpdr21_wrecked_ship_basement
    dw #presets_kpdr21_wrecked_ship_phantoon
    dw #presets_kpdr21_wrecked_ship_leaving_phantoon
    dw #presets_kpdr21_wrecked_ship_shaft_to_supers
    dw #presets_kpdr21_wrecked_ship_wrecked_ship_shaft
    dw #presets_kpdr21_wrecked_ship_attic
    dw #presets_kpdr21_wrecked_ship_upper_west_ocean
    dw #presets_kpdr21_wrecked_ship_pancakes_and_wavers
    dw #presets_kpdr21_wrecked_ship_bowling_spark
    dw #presets_kpdr21_wrecked_ship_leaving_gravity
    dw #presets_kpdr21_wrecked_ship_moat_ball
    dw #presets_kpdr21_wrecked_ship_crateria_kihunters_return
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_kpdr21_red_brinstar_final:
    dw #presets_kpdr21_red_brinstar_final_red_tower_elevator
    dw #presets_kpdr21_red_brinstar_final_hellway_revisit
    dw #presets_kpdr21_red_brinstar_final_red_tower_down
    dw #presets_kpdr21_red_brinstar_final_skree_boost_final
    dw #presets_kpdr21_red_brinstar_final_below_spazer_final
    dw #$0000
    %cm_header("RED BRINSTAR FINAL")

presets_submenu_kpdr21_maridia:
    dw #presets_kpdr21_maridia_breaking_tube
    dw #presets_kpdr21_maridia_fish_tank
    dw #presets_kpdr21_maridia_mt_everest
    dw #presets_kpdr21_maridia_crab_shaft
    dw #presets_kpdr21_maridia_aqueduct
    dw #presets_kpdr21_maridia_botwoon_hallway
    dw #presets_kpdr21_maridia_botwoon
    dw #presets_kpdr21_maridia_botwoon_etank
    dw #presets_kpdr21_maridia_halfie_setup
    dw #presets_kpdr21_maridia_draygon
    dw #presets_kpdr21_maridia_reverse_halfie_spikesuit
    dw #presets_kpdr21_maridia_womple_jump
    dw #presets_kpdr21_maridia_cac_alley_east
    dw #presets_kpdr21_maridia_cac_alley_west
    dw #presets_kpdr21_maridia_plasma_spark
    dw #presets_kpdr21_maridia_plasma_climb
    dw #presets_kpdr21_maridia_plasma_beam
    dw #presets_kpdr21_maridia_plasma_spark_revisit
    dw #presets_kpdr21_maridia_toilet
    dw #presets_kpdr21_maridia_sewers
    dw #presets_kpdr21_maridia_lower_maridia_gate
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_kpdr21_upper_norfair_revisit:
    dw #presets_kpdr21_upper_norfair_revisit_ice_beam_gates
    dw #presets_kpdr21_upper_norfair_revisit_ice_maze_up
    dw #presets_kpdr21_upper_norfair_revisit_ice_maze_down
    dw #presets_kpdr21_upper_norfair_revisit_ice_escape
    dw #presets_kpdr21_upper_norfair_revisit_purple_shaft_upper
    dw #presets_kpdr21_upper_norfair_revisit_magdollite_tunnel_upper
    dw #presets_kpdr21_upper_norfair_revisit_kronic_boost_upper
    dw #presets_kpdr21_upper_norfair_revisit_croc_speedway_lower
    dw #presets_kpdr21_upper_norfair_revisit_spiky_acid_snakes_lower
    dw #presets_kpdr21_upper_norfair_revisit_kronic_boost_lower
    dw #$0000
    %cm_header("UPPER NORFAIR REVISIT")

presets_submenu_kpdr21_lower_norfair:
    dw #presets_kpdr21_lower_norfair_ln_main_hall
    dw #presets_kpdr21_lower_norfair_prepillars
    dw #presets_kpdr21_lower_norfair_worst_room_in_the_game
    dw #presets_kpdr21_lower_norfair_amphitheatre
    dw #presets_kpdr21_lower_norfair_kihunter_stairs_down
    dw #presets_kpdr21_lower_norfair_wasteland
    dw #presets_kpdr21_lower_norfair_metal_ninja_pirates
    dw #presets_kpdr21_lower_norfair_plowerhouse
    dw #presets_kpdr21_lower_norfair_ridley
    dw #presets_kpdr21_lower_norfair_leaving_ridley
    dw #presets_kpdr21_lower_norfair_reverse_plowerhouse
    dw #presets_kpdr21_lower_norfair_wasteland_revisit
    dw #presets_kpdr21_lower_norfair_kihunter_stairs_up
    dw #presets_kpdr21_lower_norfair_fire_flea_room
    dw #presets_kpdr21_lower_norfair_springball_maze
    dw #presets_kpdr21_lower_norfair_three_musketeers
    dw #presets_kpdr21_lower_norfair_single_chamber_final
    dw #presets_kpdr21_lower_norfair_bubble_mountain_final
    dw #presets_kpdr21_lower_norfair_business_center_final
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_kpdr21_backtracking:
    dw #presets_kpdr21_backtracking_maridia_tube_revisit
    dw #presets_kpdr21_backtracking_fish_tank_revisit
    dw #presets_kpdr21_backtracking_mt_everest_revisit_revisit
    dw #presets_kpdr21_backtracking_red_brinstar_green_gate
    dw #presets_kpdr21_backtracking_crateria_kihunters_final
    dw #presets_kpdr21_backtracking_parlor_spacejump
    dw #presets_kpdr21_backtracking_terminator_revisit
    dw #presets_kpdr21_backtracking_green_pirate_shaft_revisit
    dw #$0000
    %cm_header("BACKTRACKING")

presets_submenu_kpdr21_tourian:
    dw #presets_kpdr21_tourian_metroids_1
    dw #presets_kpdr21_tourian_metroids_2
    dw #presets_kpdr21_tourian_metroids_3
    dw #presets_kpdr21_tourian_metroids_4
    dw #presets_kpdr21_tourian_giant_hoppers
    dw #presets_kpdr21_tourian_baby_skip
    dw #presets_kpdr21_tourian_gedora_room
    dw #presets_kpdr21_tourian_zeb_skip
    dw #presets_kpdr21_tourian_escape_room_3
    dw #presets_kpdr21_tourian_climb_spark
    dw #presets_kpdr21_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Crateria
presets_kpdr21_crateria_ship:
    %cm_preset("Ship", #preset_kpdr21_crateria_ship)

presets_kpdr21_crateria_parlor:
    %cm_preset("Parlor", #preset_kpdr21_crateria_parlor)

presets_kpdr21_crateria_parlor_downback:
    %cm_preset("Parlor Downback", #preset_kpdr21_crateria_parlor_downback)

presets_kpdr21_crateria_climb_down:
    %cm_preset("Climb Down", #preset_kpdr21_crateria_climb_down)

presets_kpdr21_crateria_pit_room:
    %cm_preset("Pit Room", #preset_kpdr21_crateria_pit_room)

presets_kpdr21_crateria_morph:
    %cm_preset("Morph", #preset_kpdr21_crateria_morph)

presets_kpdr21_crateria_construction_zone:
    %cm_preset("Construction Zone", #preset_kpdr21_crateria_construction_zone)

presets_kpdr21_crateria_construction_zone_revisit:
    %cm_preset("Construction Zone Revisit", #preset_kpdr21_crateria_construction_zone_revisit)

presets_kpdr21_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_kpdr21_crateria_pit_room_revisit)

presets_kpdr21_crateria_climb_up:
    %cm_preset("Climb Up", #preset_kpdr21_crateria_climb_up)

presets_kpdr21_crateria_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_kpdr21_crateria_parlor_revisit)

presets_kpdr21_crateria_flyway:
    %cm_preset("Flyway", #preset_kpdr21_crateria_flyway)

presets_kpdr21_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_kpdr21_crateria_bomb_torizo)

presets_kpdr21_crateria_alcatraz:
    %cm_preset("Alcatraz", #preset_kpdr21_crateria_alcatraz)

presets_kpdr21_crateria_terminator:
    %cm_preset("Terminator", #preset_kpdr21_crateria_terminator)

presets_kpdr21_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_kpdr21_crateria_green_pirate_shaft)


; Brinstar
presets_kpdr21_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_kpdr21_brinstar_green_brinstar_elevator)

presets_kpdr21_brinstar_early_supers:
    %cm_preset("Early Supers", #preset_kpdr21_brinstar_early_supers)

presets_kpdr21_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_kpdr21_brinstar_dachora_room)

presets_kpdr21_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_kpdr21_brinstar_big_pink)

presets_kpdr21_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_kpdr21_brinstar_green_hill_zone)

presets_kpdr21_brinstar_noob_bridge:
    %cm_preset("Noob Bridge", #preset_kpdr21_brinstar_noob_bridge)

presets_kpdr21_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_kpdr21_brinstar_red_tower)

presets_kpdr21_brinstar_skree_boost:
    %cm_preset("Skree Boost", #preset_kpdr21_brinstar_skree_boost)

presets_kpdr21_brinstar_below_spazer:
    %cm_preset("Below Spazer", #preset_kpdr21_brinstar_below_spazer)

presets_kpdr21_brinstar_entering_kraids_lair:
    %cm_preset("Entering Kraids Lair", #preset_kpdr21_brinstar_entering_kraids_lair)

presets_kpdr21_brinstar_kraid_kihunters:
    %cm_preset("Kraid Kihunters", #preset_kpdr21_brinstar_kraid_kihunters)

presets_kpdr21_brinstar_mini_kraid:
    %cm_preset("Mini Kraid", #preset_kpdr21_brinstar_mini_kraid)

presets_kpdr21_brinstar_kraid:
    %cm_preset("Kraid", #preset_kpdr21_brinstar_kraid)

presets_kpdr21_brinstar_leaving_varia:
    %cm_preset("Leaving Varia", #preset_kpdr21_brinstar_leaving_varia)

presets_kpdr21_brinstar_mini_kraid_revisit:
    %cm_preset("Mini Kraid Revisit", #preset_kpdr21_brinstar_mini_kraid_revisit)

presets_kpdr21_brinstar_kraid_kihunters_revisit:
    %cm_preset("Kraid Kihunters Revisit", #preset_kpdr21_brinstar_kraid_kihunters_revisit)

presets_kpdr21_brinstar_kraid_etank:
    %cm_preset("Kraid E-tank", #preset_kpdr21_brinstar_kraid_etank)


; Upper Norfair
presets_kpdr21_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_kpdr21_upper_norfair_business_center)

presets_kpdr21_upper_norfair_hi_jump_etank:
    %cm_preset("Hi Jump E-tank", #preset_kpdr21_upper_norfair_hi_jump_etank)

presets_kpdr21_upper_norfair_leaving_hi_jump:
    %cm_preset("Leaving Hi Jump", #preset_kpdr21_upper_norfair_leaving_hi_jump)

presets_kpdr21_upper_norfair_business_center_2:
    %cm_preset("Business Center 2", #preset_kpdr21_upper_norfair_business_center_2)

presets_kpdr21_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_kpdr21_upper_norfair_precathedral)

presets_kpdr21_upper_norfair_cathedral:
    %cm_preset("Cathedral", #preset_kpdr21_upper_norfair_cathedral)

presets_kpdr21_upper_norfair_rising_tide:
    %cm_preset("Rising Tide", #preset_kpdr21_upper_norfair_rising_tide)

presets_kpdr21_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_kpdr21_upper_norfair_bubble_mountain)

presets_kpdr21_upper_norfair_bat_cave:
    %cm_preset("Bat Cave", #preset_kpdr21_upper_norfair_bat_cave)

presets_kpdr21_upper_norfair_single_chamber:
    %cm_preset("Single Chamber", #preset_kpdr21_upper_norfair_single_chamber)

presets_kpdr21_upper_norfair_double_chamber:
    %cm_preset("Double Chamber", #preset_kpdr21_upper_norfair_double_chamber)

presets_kpdr21_upper_norfair_double_chamber_revisit:
    %cm_preset("Double Chamber Revisit", #preset_kpdr21_upper_norfair_double_chamber_revisit)

presets_kpdr21_upper_norfair_single_chamber_revisit:
    %cm_preset("Single Chamber Revisit", #preset_kpdr21_upper_norfair_single_chamber_revisit)

presets_kpdr21_upper_norfair_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_kpdr21_upper_norfair_bubble_mountain_revisit)

presets_kpdr21_upper_norfair_frog_speedway:
    %cm_preset("Frog Speedway", #preset_kpdr21_upper_norfair_frog_speedway)

presets_kpdr21_upper_norfair_business_center_3:
    %cm_preset("Business Center 3", #preset_kpdr21_upper_norfair_business_center_3)


; Red Brinstar
presets_kpdr21_red_brinstar_alpha_spark:
    %cm_preset("Alpha Spark", #preset_kpdr21_red_brinstar_alpha_spark)

presets_kpdr21_red_brinstar_reverse_skree_boost:
    %cm_preset("Reverse Skree Boost", #preset_kpdr21_red_brinstar_reverse_skree_boost)

presets_kpdr21_red_brinstar_red_tower_climb:
    %cm_preset("Red Tower Climb", #preset_kpdr21_red_brinstar_red_tower_climb)

presets_kpdr21_red_brinstar_hellway:
    %cm_preset("Hellway", #preset_kpdr21_red_brinstar_hellway)

presets_kpdr21_red_brinstar_caterpillars_down:
    %cm_preset("Caterpillars Down", #preset_kpdr21_red_brinstar_caterpillars_down)

presets_kpdr21_red_brinstar_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_kpdr21_red_brinstar_alpha_power_bombs)

presets_kpdr21_red_brinstar_caterpillars_up:
    %cm_preset("Caterpillars Up", #preset_kpdr21_red_brinstar_caterpillars_up)


; Wrecked Ship
presets_kpdr21_wrecked_ship_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_kpdr21_wrecked_ship_crateria_kihunters)

presets_kpdr21_wrecked_ship_oceanfly_setup:
    %cm_preset("Oceanfly Setup", #preset_kpdr21_wrecked_ship_oceanfly_setup)

presets_kpdr21_wrecked_ship_ocean_spark:
    %cm_preset("Ocean Spark", #preset_kpdr21_wrecked_ship_ocean_spark)

presets_kpdr21_wrecked_ship_entering_wrecked_ship:
    %cm_preset("Entering Wrecked Ship", #preset_kpdr21_wrecked_ship_entering_wrecked_ship)

presets_kpdr21_wrecked_ship_basement:
    %cm_preset("Basement", #preset_kpdr21_wrecked_ship_basement)

presets_kpdr21_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_kpdr21_wrecked_ship_phantoon)

presets_kpdr21_wrecked_ship_leaving_phantoon:
    %cm_preset("Leaving Phantoon", #preset_kpdr21_wrecked_ship_leaving_phantoon)

presets_kpdr21_wrecked_ship_shaft_to_supers:
    %cm_preset("Shaft to Supers", #preset_kpdr21_wrecked_ship_shaft_to_supers)

presets_kpdr21_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_kpdr21_wrecked_ship_wrecked_ship_shaft)

presets_kpdr21_wrecked_ship_attic:
    %cm_preset("Attic", #preset_kpdr21_wrecked_ship_attic)

presets_kpdr21_wrecked_ship_upper_west_ocean:
    %cm_preset("Upper West Ocean", #preset_kpdr21_wrecked_ship_upper_west_ocean)

presets_kpdr21_wrecked_ship_pancakes_and_wavers:
    %cm_preset("Pancakes and Wavers", #preset_kpdr21_wrecked_ship_pancakes_and_wavers)

presets_kpdr21_wrecked_ship_bowling_spark:
    %cm_preset("Bowling Spark", #preset_kpdr21_wrecked_ship_bowling_spark)

presets_kpdr21_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_kpdr21_wrecked_ship_leaving_gravity)

presets_kpdr21_wrecked_ship_moat_ball:
    %cm_preset("Moat Ball", #preset_kpdr21_wrecked_ship_moat_ball)

presets_kpdr21_wrecked_ship_crateria_kihunters_return:
    %cm_preset("Crateria Kihunters Return", #preset_kpdr21_wrecked_ship_crateria_kihunters_return)


; Red Brinstar Final
presets_kpdr21_red_brinstar_final_red_tower_elevator:
    %cm_preset("Red Tower Elevator", #preset_kpdr21_red_brinstar_final_red_tower_elevator)

presets_kpdr21_red_brinstar_final_hellway_revisit:
    %cm_preset("Hellway Revisit", #preset_kpdr21_red_brinstar_final_hellway_revisit)

presets_kpdr21_red_brinstar_final_red_tower_down:
    %cm_preset("Red Tower Down", #preset_kpdr21_red_brinstar_final_red_tower_down)

presets_kpdr21_red_brinstar_final_skree_boost_final:
    %cm_preset("Skree Boost Final", #preset_kpdr21_red_brinstar_final_skree_boost_final)

presets_kpdr21_red_brinstar_final_below_spazer_final:
    %cm_preset("Below Spazer Final", #preset_kpdr21_red_brinstar_final_below_spazer_final)


; Maridia
presets_kpdr21_maridia_breaking_tube:
    %cm_preset("Breaking Tube", #preset_kpdr21_maridia_breaking_tube)

presets_kpdr21_maridia_fish_tank:
    %cm_preset("Fish Tank", #preset_kpdr21_maridia_fish_tank)

presets_kpdr21_maridia_mt_everest:
    %cm_preset("Mt Everest", #preset_kpdr21_maridia_mt_everest)

presets_kpdr21_maridia_crab_shaft:
    %cm_preset("Crab Shaft", #preset_kpdr21_maridia_crab_shaft)

presets_kpdr21_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_kpdr21_maridia_aqueduct)

presets_kpdr21_maridia_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_kpdr21_maridia_botwoon_hallway)

presets_kpdr21_maridia_botwoon:
    %cm_preset("Botwoon", #preset_kpdr21_maridia_botwoon)

presets_kpdr21_maridia_botwoon_etank:
    %cm_preset("Botwoon E-tank", #preset_kpdr21_maridia_botwoon_etank)

presets_kpdr21_maridia_halfie_setup:
    %cm_preset("Halfie Setup", #preset_kpdr21_maridia_halfie_setup)

presets_kpdr21_maridia_draygon:
    %cm_preset("Draygon", #preset_kpdr21_maridia_draygon)

presets_kpdr21_maridia_reverse_halfie_spikesuit:
    %cm_preset("Reverse Halfie (Spikesuit)", #preset_kpdr21_maridia_reverse_halfie_spikesuit)

presets_kpdr21_maridia_womple_jump:
    %cm_preset("Womple Jump", #preset_kpdr21_maridia_womple_jump)

presets_kpdr21_maridia_cac_alley_east:
    %cm_preset("Cac Alley East", #preset_kpdr21_maridia_cac_alley_east)

presets_kpdr21_maridia_cac_alley_west:
    %cm_preset("Cac Alley West", #preset_kpdr21_maridia_cac_alley_west)

presets_kpdr21_maridia_plasma_spark:
    %cm_preset("Plasma Spark", #preset_kpdr21_maridia_plasma_spark)

presets_kpdr21_maridia_plasma_climb:
    %cm_preset("Plasma Climb", #preset_kpdr21_maridia_plasma_climb)

presets_kpdr21_maridia_plasma_beam:
    %cm_preset("Plasma Beam", #preset_kpdr21_maridia_plasma_beam)

presets_kpdr21_maridia_plasma_spark_revisit:
    %cm_preset("Plasma Spark Revisit", #preset_kpdr21_maridia_plasma_spark_revisit)

presets_kpdr21_maridia_toilet:
    %cm_preset("Toilet", #preset_kpdr21_maridia_toilet)

presets_kpdr21_maridia_sewers:
    %cm_preset("Sewers", #preset_kpdr21_maridia_sewers)

presets_kpdr21_maridia_lower_maridia_gate:
    %cm_preset("Lower Maridia Gate", #preset_kpdr21_maridia_lower_maridia_gate)


; Upper Norfair Revisit
presets_kpdr21_upper_norfair_revisit_ice_beam_gates:
    %cm_preset("Ice Beam Gates", #preset_kpdr21_upper_norfair_revisit_ice_beam_gates)

presets_kpdr21_upper_norfair_revisit_ice_maze_up:
    %cm_preset("Ice Maze Up", #preset_kpdr21_upper_norfair_revisit_ice_maze_up)

presets_kpdr21_upper_norfair_revisit_ice_maze_down:
    %cm_preset("Ice Maze Down", #preset_kpdr21_upper_norfair_revisit_ice_maze_down)

presets_kpdr21_upper_norfair_revisit_ice_escape:
    %cm_preset("Ice Escape", #preset_kpdr21_upper_norfair_revisit_ice_escape)

presets_kpdr21_upper_norfair_revisit_purple_shaft_upper:
    %cm_preset("Purple Shaft (Upper)", #preset_kpdr21_upper_norfair_revisit_purple_shaft_upper)

presets_kpdr21_upper_norfair_revisit_magdollite_tunnel_upper:
    %cm_preset("Magdollite Tunnel (Upper)", #preset_kpdr21_upper_norfair_revisit_magdollite_tunnel_upper)

presets_kpdr21_upper_norfair_revisit_kronic_boost_upper:
    %cm_preset("Kronic Boost (Upper)", #preset_kpdr21_upper_norfair_revisit_kronic_boost_upper)

presets_kpdr21_upper_norfair_revisit_croc_speedway_lower:
    %cm_preset("Croc Speedway (Lower)", #preset_kpdr21_upper_norfair_revisit_croc_speedway_lower)

presets_kpdr21_upper_norfair_revisit_spiky_acid_snakes_lower:
    %cm_preset("Spiky Acid Snakes (Lower)", #preset_kpdr21_upper_norfair_revisit_spiky_acid_snakes_lower)

presets_kpdr21_upper_norfair_revisit_kronic_boost_lower:
    %cm_preset("Kronic Boost (Lower)", #preset_kpdr21_upper_norfair_revisit_kronic_boost_lower)


; Lower Norfair
presets_kpdr21_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_kpdr21_lower_norfair_ln_main_hall)

presets_kpdr21_lower_norfair_prepillars:
    %cm_preset("Pre-Pillars", #preset_kpdr21_lower_norfair_prepillars)

presets_kpdr21_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room in the Game", #preset_kpdr21_lower_norfair_worst_room_in_the_game)

presets_kpdr21_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_kpdr21_lower_norfair_amphitheatre)

presets_kpdr21_lower_norfair_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_kpdr21_lower_norfair_kihunter_stairs_down)

presets_kpdr21_lower_norfair_wasteland:
    %cm_preset("Wasteland", #preset_kpdr21_lower_norfair_wasteland)

presets_kpdr21_lower_norfair_metal_ninja_pirates:
    %cm_preset("Metal Ninja Pirates", #preset_kpdr21_lower_norfair_metal_ninja_pirates)

presets_kpdr21_lower_norfair_plowerhouse:
    %cm_preset("Plowerhouse", #preset_kpdr21_lower_norfair_plowerhouse)

presets_kpdr21_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_kpdr21_lower_norfair_ridley)

presets_kpdr21_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_kpdr21_lower_norfair_leaving_ridley)

presets_kpdr21_lower_norfair_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_kpdr21_lower_norfair_reverse_plowerhouse)

presets_kpdr21_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_kpdr21_lower_norfair_wasteland_revisit)

presets_kpdr21_lower_norfair_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_kpdr21_lower_norfair_kihunter_stairs_up)

presets_kpdr21_lower_norfair_fire_flea_room:
    %cm_preset("Fire Flea Room", #preset_kpdr21_lower_norfair_fire_flea_room)

presets_kpdr21_lower_norfair_springball_maze:
    %cm_preset("Springball Maze", #preset_kpdr21_lower_norfair_springball_maze)

presets_kpdr21_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_kpdr21_lower_norfair_three_musketeers)

presets_kpdr21_lower_norfair_single_chamber_final:
    %cm_preset("Single Chamber Final", #preset_kpdr21_lower_norfair_single_chamber_final)

presets_kpdr21_lower_norfair_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_kpdr21_lower_norfair_bubble_mountain_final)

presets_kpdr21_lower_norfair_business_center_final:
    %cm_preset("Business Center Final", #preset_kpdr21_lower_norfair_business_center_final)


; Backtracking
presets_kpdr21_backtracking_maridia_tube_revisit:
    %cm_preset("Maridia Tube Revisit", #preset_kpdr21_backtracking_maridia_tube_revisit)

presets_kpdr21_backtracking_fish_tank_revisit:
    %cm_preset("Fish Tank Revisit", #preset_kpdr21_backtracking_fish_tank_revisit)

presets_kpdr21_backtracking_mt_everest_revisit_revisit:
    %cm_preset("Mt Everest Revisit Revisit", #preset_kpdr21_backtracking_mt_everest_revisit_revisit)

presets_kpdr21_backtracking_red_brinstar_green_gate:
    %cm_preset("Red Brinstar Green Gate", #preset_kpdr21_backtracking_red_brinstar_green_gate)

presets_kpdr21_backtracking_crateria_kihunters_final:
    %cm_preset("Crateria Kihunters Final", #preset_kpdr21_backtracking_crateria_kihunters_final)

presets_kpdr21_backtracking_parlor_spacejump:
    %cm_preset("Parlor Spacejump", #preset_kpdr21_backtracking_parlor_spacejump)

presets_kpdr21_backtracking_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_kpdr21_backtracking_terminator_revisit)

presets_kpdr21_backtracking_green_pirate_shaft_revisit:
    %cm_preset("Green Pirate Shaft Revisit", #preset_kpdr21_backtracking_green_pirate_shaft_revisit)


; Tourian
presets_kpdr21_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_kpdr21_tourian_metroids_1)

presets_kpdr21_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_kpdr21_tourian_metroids_2)

presets_kpdr21_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_kpdr21_tourian_metroids_3)

presets_kpdr21_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_kpdr21_tourian_metroids_4)

presets_kpdr21_tourian_giant_hoppers:
    %cm_preset("Giant Hoppers", #preset_kpdr21_tourian_giant_hoppers)

presets_kpdr21_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_kpdr21_tourian_baby_skip)

presets_kpdr21_tourian_gedora_room:
    %cm_preset("Gedora Room", #preset_kpdr21_tourian_gedora_room)

presets_kpdr21_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_kpdr21_tourian_zeb_skip)

presets_kpdr21_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_kpdr21_tourian_escape_room_3)

presets_kpdr21_tourian_climb_spark:
    %cm_preset("Climb Spark", #preset_kpdr21_tourian_climb_spark)

presets_kpdr21_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_kpdr21_tourian_escape_parlor)


