PresetsMenuGtmax:
    dw #presets_goto_gtmax_crateria
    dw #presets_goto_gtmax_brinstar
    dw #presets_goto_gtmax_kraid
    dw #presets_goto_gtmax_upper_norfair
    dw #presets_goto_gtmax_lower_norfair
    dw #presets_goto_gtmax_upper_norfair_and_kraid
    dw #presets_goto_gtmax_maridia_predraygon
    dw #presets_goto_gtmax_maridia_postdraygon
    dw #presets_goto_gtmax_wrecked_ship
    dw #presets_goto_gtmax_brinstar_cleanup_1
    dw #presets_goto_gtmax_brinstar_cleanup_2
    dw #presets_goto_gtmax_tourian
    dw #$0000
    %cm_header("PRESETS FOR GT MAX%")

presets_goto_gtmax_crateria:
    %cm_submenu("Crateria", #presets_submenu_gtmax_crateria)

presets_goto_gtmax_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_gtmax_brinstar)

presets_goto_gtmax_kraid:
    %cm_submenu("Kraid's Lair", #presets_submenu_gtmax_kraid)

presets_goto_gtmax_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_gtmax_upper_norfair)

presets_goto_gtmax_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_gtmax_lower_norfair)

presets_goto_gtmax_upper_norfair_and_kraid:
    %cm_submenu("Upper Norfair and Kraid", #presets_submenu_gtmax_upper_norfair_and_kraid)

presets_goto_gtmax_maridia_predraygon:
    %cm_submenu("Maridia Pre-Draygon", #presets_submenu_gtmax_maridia_predraygon)

presets_goto_gtmax_maridia_postdraygon:
    %cm_submenu("Maridia Post-Draygon", #presets_submenu_gtmax_maridia_postdraygon)

presets_goto_gtmax_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_gtmax_wrecked_ship)

presets_goto_gtmax_brinstar_cleanup_1:
    %cm_submenu("Brinstar Cleanup 1", #presets_submenu_gtmax_brinstar_cleanup_1)

presets_goto_gtmax_brinstar_cleanup_2:
    %cm_submenu("Brinstar Cleanup 2", #presets_submenu_gtmax_brinstar_cleanup_2)

presets_goto_gtmax_tourian:
    %cm_submenu("Tourian", #presets_submenu_gtmax_tourian)

presets_submenu_gtmax_crateria:
    dw #presets_gtmax_crateria_ceres_elevator
    dw #presets_gtmax_crateria_ceres_escape
    dw #presets_gtmax_crateria_ceres_last_3_rooms
    dw #presets_gtmax_crateria_ship
    dw #presets_gtmax_crateria_parlor
    dw #presets_gtmax_crateria_parlor_downback
    dw #presets_gtmax_crateria_climb_down
    dw #presets_gtmax_crateria_pit_room
    dw #presets_gtmax_crateria_morph
    dw #presets_gtmax_crateria_construction_zone_down
    dw #presets_gtmax_crateria_construction_zone_up
    dw #presets_gtmax_crateria_pit_room_revisit
    dw #presets_gtmax_crateria_climb_up
    dw #presets_gtmax_crateria_parlor_flyway
    dw #presets_gtmax_crateria_flyway
    dw #presets_gtmax_crateria_bomb_torizo
    dw #presets_gtmax_crateria_alcatraz
    dw #presets_gtmax_crateria_terminator
    dw #presets_gtmax_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_gtmax_brinstar:
    dw #presets_gtmax_brinstar_green_brinstar_elevator
    dw #presets_gtmax_brinstar_early_supers
    dw #presets_gtmax_brinstar_dachora_room
    dw #presets_gtmax_brinstar_big_pink
    dw #presets_gtmax_brinstar_green_hill_zone
    dw #presets_gtmax_brinstar_noob_bridge
    dw #presets_gtmax_brinstar_red_tower_up
    dw #presets_gtmax_brinstar_hellway
    dw #presets_gtmax_brinstar_caterpillars_down
    dw #presets_gtmax_brinstar_alpha_power_bombs
    dw #presets_gtmax_brinstar_caterpillars_up
    dw #presets_gtmax_brinstar_reverse_hellway
    dw #presets_gtmax_brinstar_red_tower_down
    dw #presets_gtmax_brinstar_skree_boost
    dw #presets_gtmax_brinstar_below_spazer
    dw #presets_gtmax_brinstar_breaking_tube
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_gtmax_kraid:
    dw #presets_gtmax_kraid_entering_kraids_lair
    dw #presets_gtmax_kraid_kraid_kihunters
    dw #presets_gtmax_kraid_mini_kraid
    dw #presets_gtmax_kraid_kraid_2
    dw #presets_gtmax_kraid_leaving_varia
    dw #presets_gtmax_kraid_mini_kraid_revisit
    dw #presets_gtmax_kraid_kraid_kihunters_revisit
    dw #presets_gtmax_kraid_leaving_kraids_lair
    dw #$0000
    %cm_header("KRAID'S LAIR")

presets_submenu_gtmax_upper_norfair:
    dw #presets_gtmax_upper_norfair_business_center
    dw #presets_gtmax_upper_norfair_hijump_etank_room
    dw #presets_gtmax_upper_norfair_leaving_hijump
    dw #presets_gtmax_upper_norfair_business_center_revisit
    dw #presets_gtmax_upper_norfair_precathedral
    dw #presets_gtmax_upper_norfair_cathedral
    dw #presets_gtmax_upper_norfair_rising_tide
    dw #presets_gtmax_upper_norfair_bubble_mountain
    dw #presets_gtmax_upper_norfair_magdollite_tunnel
    dw #presets_gtmax_upper_norfair_kronic_room
    dw #presets_gtmax_upper_norfair_lava_dive
    dw #presets_gtmax_upper_norfair_ln_main_hall
    dw #presets_gtmax_upper_norfair_prepillars
    dw #presets_gtmax_upper_norfair_green_gate_glitch
    dw #presets_gtmax_upper_norfair_gt_code
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_gtmax_lower_norfair:
    dw #presets_gtmax_lower_norfair_leaving_golden_torizo
    dw #presets_gtmax_lower_norfair_green_gate_revisit
    dw #presets_gtmax_lower_norfair_ln_main_hall_revisit
    dw #presets_gtmax_lower_norfair_green_gate_final
    dw #presets_gtmax_lower_norfair_worst_room_in_the_game
    dw #presets_gtmax_lower_norfair_mickey_mouse_missiles
    dw #presets_gtmax_lower_norfair_amphitheatre
    dw #presets_gtmax_lower_norfair_kihunter_stairs_down
    dw #presets_gtmax_lower_norfair_wasteland
    dw #presets_gtmax_lower_norfair_metal_ninja_pirates
    dw #presets_gtmax_lower_norfair_plowerhouse
    dw #presets_gtmax_lower_norfair_ridley
    dw #presets_gtmax_lower_norfair_leaving_ridley_etank
    dw #presets_gtmax_lower_norfair_reverse_plowerhouse
    dw #presets_gtmax_lower_norfair_wasteland_revisit
    dw #presets_gtmax_lower_norfair_kihunter_stairs_up
    dw #presets_gtmax_lower_norfair_fireflea_room
    dw #presets_gtmax_lower_norfair_springball_maze
    dw #presets_gtmax_lower_norfair_three_muskateers
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_gtmax_upper_norfair_and_kraid:
    dw #presets_gtmax_upper_norfair_and_kraid_single_chamber
    dw #presets_gtmax_upper_norfair_and_kraid_double_chamber
    dw #presets_gtmax_upper_norfair_and_kraid_bat_cave
    dw #presets_gtmax_upper_norfair_and_kraid_bat_cave_revisit
    dw #presets_gtmax_upper_norfair_and_kraid_bubble_mountain_revisit
    dw #presets_gtmax_upper_norfair_and_kraid_leaving_norfair_reserve
    dw #presets_gtmax_upper_norfair_and_kraid_bubble_mountain_final
    dw #presets_gtmax_upper_norfair_and_kraid_cathedral_revisit
    dw #presets_gtmax_upper_norfair_and_kraid_ice_gate_room
    dw #presets_gtmax_upper_norfair_and_kraid_crocomire
    dw #presets_gtmax_upper_norfair_and_kraid_leaving_crocomire
    dw #presets_gtmax_upper_norfair_and_kraid_grapple_shaft_down
    dw #presets_gtmax_upper_norfair_and_kraid_sine_missiles
    dw #presets_gtmax_upper_norfair_and_kraid_crocomire_revisit
    dw #presets_gtmax_upper_norfair_and_kraid_croc_escape_super_gate
    dw #presets_gtmax_upper_norfair_and_kraid_hijump_etank_revisit
    dw #presets_gtmax_upper_norfair_and_kraid_business_center_final
    dw #presets_gtmax_upper_norfair_and_kraid_kraid_revisit
    dw #presets_gtmax_upper_norfair_and_kraid_kraid_etank
    dw #presets_gtmax_upper_norfair_and_kraid_kraid_kihunters_final
    dw #$0000
    %cm_header("UPPER NORFAIR AND KRAID")

presets_submenu_gtmax_maridia_predraygon:
    dw #presets_gtmax_maridia_predraygon_maridia_tube_revisit
    dw #presets_gtmax_maridia_predraygon_fish_tank
    dw #presets_gtmax_maridia_predraygon_tatori_room
    dw #presets_gtmax_maridia_predraygon_mt_everest_and_crab_supers
    dw #presets_gtmax_maridia_predraygon_crab_shaft
    dw #presets_gtmax_maridia_predraygon_path_to_watering_hole
    dw #presets_gtmax_maridia_predraygon_beach_exit
    dw #presets_gtmax_maridia_predraygon_crab_shaft_revisit
    dw #presets_gtmax_maridia_predraygon_botwoon_hallway
    dw #presets_gtmax_maridia_predraygon_botwoon
    dw #presets_gtmax_maridia_predraygon_halfie_setup
    dw #presets_gtmax_maridia_predraygon_precious_room
    dw #presets_gtmax_maridia_predraygon_draygon
    dw #$0000
    %cm_header("MARIDIA PRE-DRAYGON")

presets_submenu_gtmax_maridia_postdraygon:
    dw #presets_gtmax_maridia_postdraygon_reverse_halfie
    dw #presets_gtmax_maridia_postdraygon_womple_jump
    dw #presets_gtmax_maridia_postdraygon_reverse_botwoon_etank
    dw #presets_gtmax_maridia_postdraygon_aqueduct_ammo
    dw #presets_gtmax_maridia_postdraygon_right_sandpit
    dw #presets_gtmax_maridia_postdraygon_oasis_and_sewer
    dw #presets_gtmax_maridia_postdraygon_maridia_ggg
    dw #presets_gtmax_maridia_postdraygon_left_sandpit
    dw #presets_gtmax_maridia_postdraygon_maridia_ggg_revisit
    dw #presets_gtmax_maridia_postdraygon_mt_everest_exit
    dw #presets_gtmax_maridia_postdraygon_red_brinstar_green_gate
    dw #presets_gtmax_maridia_postdraygon_leaving_alpha_power_bombs
    dw #presets_gtmax_maridia_postdraygon_beta_power_bombs
    dw #$0000
    %cm_header("MARIDIA POST-DRAYGON")

presets_submenu_gtmax_wrecked_ship:
    dw #presets_gtmax_wrecked_ship_crateria_kihunters
    dw #presets_gtmax_wrecked_ship_moat
    dw #presets_gtmax_wrecked_ship_ocean
    dw #presets_gtmax_wrecked_ship_enter_wrecked_ship
    dw #presets_gtmax_wrecked_ship_basement
    dw #presets_gtmax_wrecked_ship_phantoon
    dw #presets_gtmax_wrecked_ship_shaft_to_supers
    dw #presets_gtmax_wrecked_ship_east_supers
    dw #presets_gtmax_wrecked_ship_west_supers
    dw #presets_gtmax_wrecked_ship_sponge_bath
    dw #presets_gtmax_wrecked_ship_leaving_ws_etank
    dw #presets_gtmax_wrecked_ship_reverse_spiky_room
    dw #presets_gtmax_wrecked_ship_shaft_to_attic
    dw #presets_gtmax_wrecked_ship_attic
    dw #presets_gtmax_wrecked_ship_antispeedrun_robots
    dw #presets_gtmax_wrecked_ship_attic_revisit
    dw #presets_gtmax_wrecked_ship_pancake_room
    dw #presets_gtmax_wrecked_ship_bowling_spark
    dw #presets_gtmax_wrecked_ship_ocean_revisit
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_gtmax_brinstar_cleanup_1:
    dw #presets_gtmax_brinstar_cleanup_1_crateria_power_bombs
    dw #presets_gtmax_brinstar_cleanup_1_landing_site_revisit
    dw #presets_gtmax_brinstar_cleanup_1_gauntlet_etank
    dw #presets_gtmax_brinstar_cleanup_1_crumble_blocks
    dw #presets_gtmax_brinstar_cleanup_1_kago_mushroom_room
    dw #presets_gtmax_brinstar_cleanup_1_green_brinstar_revisit
    dw #presets_gtmax_brinstar_cleanup_1_brinstar_reserve_tank
    dw #presets_gtmax_brinstar_cleanup_1_reverse_mockball
    dw #presets_gtmax_brinstar_cleanup_1_green_shaft_descent
    dw #presets_gtmax_brinstar_cleanup_1_green_brinstar_beetoms
    dw #presets_gtmax_brinstar_cleanup_1_etecoon_etank_room
    dw #presets_gtmax_brinstar_cleanup_1_etecoon_room
    dw #presets_gtmax_brinstar_cleanup_1_green_shaft_final
    dw #presets_gtmax_brinstar_cleanup_1_dachora_room_revisit
    dw #presets_gtmax_brinstar_cleanup_1_big_pink_revisit
    dw #presets_gtmax_brinstar_cleanup_1_mission_impossible
    dw #presets_gtmax_brinstar_cleanup_1_leaving_pink_etank
    dw #presets_gtmax_brinstar_cleanup_1_leaving_spore_spawn_supers
    dw #presets_gtmax_brinstar_cleanup_1_waterway_etank
    dw #$0000
    %cm_header("BRINSTAR CLEANUP 1")

presets_submenu_gtmax_brinstar_cleanup_2:
    dw #presets_gtmax_brinstar_cleanup_2_green_hills_revisit
    dw #presets_gtmax_brinstar_cleanup_2_blue_brinstar_hoppers
    dw #presets_gtmax_brinstar_cleanup_2_billy_mays
    dw #presets_gtmax_brinstar_cleanup_2_leaving_blue_brinstar
    dw #presets_gtmax_brinstar_cleanup_2_pit_room_final_spark
    dw #presets_gtmax_brinstar_cleanup_2_climb_supers
    dw #presets_gtmax_brinstar_cleanup_2_to_final_missiles
    dw #presets_gtmax_brinstar_cleanup_2_parlor_missiles
    dw #presets_gtmax_brinstar_cleanup_2_parlor_again
    dw #presets_gtmax_brinstar_cleanup_2_terminator_etank
    dw #$0000
    %cm_header("BRINSTAR CLEANUP 2")

presets_submenu_gtmax_tourian:
    dw #presets_gtmax_tourian_tourian_elevator_room
    dw #presets_gtmax_tourian_metroids_1
    dw #presets_gtmax_tourian_metroids_2
    dw #presets_gtmax_tourian_metroids_3
    dw #presets_gtmax_tourian_metroids_4
    dw #presets_gtmax_tourian_giant_hoppers
    dw #presets_gtmax_tourian_baby_skip
    dw #presets_gtmax_tourian_gadora_room
    dw #presets_gtmax_tourian_zeb_skip
    dw #presets_gtmax_tourian_mother_brain_2
    dw #presets_gtmax_tourian_zebes_escape
    dw #presets_gtmax_tourian_escape_room_3
    dw #presets_gtmax_tourian_escape_room_4
    dw #presets_gtmax_tourian_escape_climb
    dw #presets_gtmax_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Crateria
presets_gtmax_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_gtmax_crateria_ceres_elevator)

presets_gtmax_crateria_ceres_escape:
    %cm_preset("Ceres Escape", #preset_gtmax_crateria_ceres_escape)

presets_gtmax_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 rooms", #preset_gtmax_crateria_ceres_last_3_rooms)

presets_gtmax_crateria_ship:
    %cm_preset("Ship", #preset_gtmax_crateria_ship)

presets_gtmax_crateria_parlor:
    %cm_preset("Parlor", #preset_gtmax_crateria_parlor)

presets_gtmax_crateria_parlor_downback:
    %cm_preset("Parlor Downback", #preset_gtmax_crateria_parlor_downback)

presets_gtmax_crateria_climb_down:
    %cm_preset("Climb Down", #preset_gtmax_crateria_climb_down)

presets_gtmax_crateria_pit_room:
    %cm_preset("Pit Room", #preset_gtmax_crateria_pit_room)

presets_gtmax_crateria_morph:
    %cm_preset("Morph", #preset_gtmax_crateria_morph)

presets_gtmax_crateria_construction_zone_down:
    %cm_preset("Construction Zone Down", #preset_gtmax_crateria_construction_zone_down)

presets_gtmax_crateria_construction_zone_up:
    %cm_preset("Construction Zone Up", #preset_gtmax_crateria_construction_zone_up)

presets_gtmax_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_gtmax_crateria_pit_room_revisit)

presets_gtmax_crateria_climb_up:
    %cm_preset("Climb Up", #preset_gtmax_crateria_climb_up)

presets_gtmax_crateria_parlor_flyway:
    %cm_preset("Parlor Flyway", #preset_gtmax_crateria_parlor_flyway)

presets_gtmax_crateria_flyway:
    %cm_preset("Flyway", #preset_gtmax_crateria_flyway)

presets_gtmax_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_gtmax_crateria_bomb_torizo)

presets_gtmax_crateria_alcatraz:
    %cm_preset("Alcatraz", #preset_gtmax_crateria_alcatraz)

presets_gtmax_crateria_terminator:
    %cm_preset("Terminator", #preset_gtmax_crateria_terminator)

presets_gtmax_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_gtmax_crateria_green_pirate_shaft)


; Brinstar
presets_gtmax_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_gtmax_brinstar_green_brinstar_elevator)

presets_gtmax_brinstar_early_supers:
    %cm_preset("Early Supers", #preset_gtmax_brinstar_early_supers)

presets_gtmax_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_gtmax_brinstar_dachora_room)

presets_gtmax_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_gtmax_brinstar_big_pink)

presets_gtmax_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_gtmax_brinstar_green_hill_zone)

presets_gtmax_brinstar_noob_bridge:
    %cm_preset("Noob Bridge", #preset_gtmax_brinstar_noob_bridge)

presets_gtmax_brinstar_red_tower_up:
    %cm_preset("Red Tower Up", #preset_gtmax_brinstar_red_tower_up)

presets_gtmax_brinstar_hellway:
    %cm_preset("Hellway", #preset_gtmax_brinstar_hellway)

presets_gtmax_brinstar_caterpillars_down:
    %cm_preset("Caterpillars Down", #preset_gtmax_brinstar_caterpillars_down)

presets_gtmax_brinstar_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_gtmax_brinstar_alpha_power_bombs)

presets_gtmax_brinstar_caterpillars_up:
    %cm_preset("Caterpillars Up", #preset_gtmax_brinstar_caterpillars_up)

presets_gtmax_brinstar_reverse_hellway:
    %cm_preset("Reverse Hellway", #preset_gtmax_brinstar_reverse_hellway)

presets_gtmax_brinstar_red_tower_down:
    %cm_preset("Red Tower Down", #preset_gtmax_brinstar_red_tower_down)

presets_gtmax_brinstar_skree_boost:
    %cm_preset("Skree Boost", #preset_gtmax_brinstar_skree_boost)

presets_gtmax_brinstar_below_spazer:
    %cm_preset("Below Spazer", #preset_gtmax_brinstar_below_spazer)

presets_gtmax_brinstar_breaking_tube:
    %cm_preset("Breaking Tube", #preset_gtmax_brinstar_breaking_tube)


; Kraid's Lair
presets_gtmax_kraid_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_gtmax_kraid_entering_kraids_lair)

presets_gtmax_kraid_kraid_kihunters:
    %cm_preset("Kraid Kihunters", #preset_gtmax_kraid_kraid_kihunters)

presets_gtmax_kraid_mini_kraid:
    %cm_preset("Mini Kraid", #preset_gtmax_kraid_mini_kraid)

presets_gtmax_kraid_kraid_2:
    %cm_preset("Kraid", #preset_gtmax_kraid_kraid_2)

presets_gtmax_kraid_leaving_varia:
    %cm_preset("Leaving Varia", #preset_gtmax_kraid_leaving_varia)

presets_gtmax_kraid_mini_kraid_revisit:
    %cm_preset("Mini Kraid Revisit", #preset_gtmax_kraid_mini_kraid_revisit)

presets_gtmax_kraid_kraid_kihunters_revisit:
    %cm_preset("Kraid Kihunters Revisit", #preset_gtmax_kraid_kraid_kihunters_revisit)

presets_gtmax_kraid_leaving_kraids_lair:
    %cm_preset("Leaving Kraid's Lair", #preset_gtmax_kraid_leaving_kraids_lair)


; Upper Norfair
presets_gtmax_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_gtmax_upper_norfair_business_center)

presets_gtmax_upper_norfair_hijump_etank_room:
    %cm_preset("Hi-Jump E-Tank Room", #preset_gtmax_upper_norfair_hijump_etank_room)

presets_gtmax_upper_norfair_leaving_hijump:
    %cm_preset("Leaving Hi-Jump", #preset_gtmax_upper_norfair_leaving_hijump)

presets_gtmax_upper_norfair_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_gtmax_upper_norfair_business_center_revisit)

presets_gtmax_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_gtmax_upper_norfair_precathedral)

presets_gtmax_upper_norfair_cathedral:
    %cm_preset("Cathedral", #preset_gtmax_upper_norfair_cathedral)

presets_gtmax_upper_norfair_rising_tide:
    %cm_preset("Rising Tide", #preset_gtmax_upper_norfair_rising_tide)

presets_gtmax_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_gtmax_upper_norfair_bubble_mountain)

presets_gtmax_upper_norfair_magdollite_tunnel:
    %cm_preset("Magdollite Tunnel", #preset_gtmax_upper_norfair_magdollite_tunnel)

presets_gtmax_upper_norfair_kronic_room:
    %cm_preset("Kronic Room", #preset_gtmax_upper_norfair_kronic_room)

presets_gtmax_upper_norfair_lava_dive:
    %cm_preset("Lava Dive", #preset_gtmax_upper_norfair_lava_dive)

presets_gtmax_upper_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_gtmax_upper_norfair_ln_main_hall)

presets_gtmax_upper_norfair_prepillars:
    %cm_preset("Pre-Pillars", #preset_gtmax_upper_norfair_prepillars)

presets_gtmax_upper_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_gtmax_upper_norfair_green_gate_glitch)

presets_gtmax_upper_norfair_gt_code:
    %cm_preset("GT Code", #preset_gtmax_upper_norfair_gt_code)


; Lower Norfair
presets_gtmax_lower_norfair_leaving_golden_torizo:
    %cm_preset("Leaving Golden Torizo", #preset_gtmax_lower_norfair_leaving_golden_torizo)

presets_gtmax_lower_norfair_green_gate_revisit:
    %cm_preset("Green Gate Revisit", #preset_gtmax_lower_norfair_green_gate_revisit)

presets_gtmax_lower_norfair_ln_main_hall_revisit:
    %cm_preset("LN Main Hall Revisit", #preset_gtmax_lower_norfair_ln_main_hall_revisit)

presets_gtmax_lower_norfair_green_gate_final:
    %cm_preset("Green Gate Final", #preset_gtmax_lower_norfair_green_gate_final)

presets_gtmax_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room in the Game", #preset_gtmax_lower_norfair_worst_room_in_the_game)

presets_gtmax_lower_norfair_mickey_mouse_missiles:
    %cm_preset("Mickey Mouse Missiles", #preset_gtmax_lower_norfair_mickey_mouse_missiles)

presets_gtmax_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_gtmax_lower_norfair_amphitheatre)

presets_gtmax_lower_norfair_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_gtmax_lower_norfair_kihunter_stairs_down)

presets_gtmax_lower_norfair_wasteland:
    %cm_preset("Wasteland", #preset_gtmax_lower_norfair_wasteland)

presets_gtmax_lower_norfair_metal_ninja_pirates:
    %cm_preset("Metal Ninja Pirates", #preset_gtmax_lower_norfair_metal_ninja_pirates)

presets_gtmax_lower_norfair_plowerhouse:
    %cm_preset("Plowerhouse", #preset_gtmax_lower_norfair_plowerhouse)

presets_gtmax_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_gtmax_lower_norfair_ridley)

presets_gtmax_lower_norfair_leaving_ridley_etank:
    %cm_preset("Leaving Ridley E-Tank", #preset_gtmax_lower_norfair_leaving_ridley_etank)

presets_gtmax_lower_norfair_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_gtmax_lower_norfair_reverse_plowerhouse)

presets_gtmax_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_gtmax_lower_norfair_wasteland_revisit)

presets_gtmax_lower_norfair_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_gtmax_lower_norfair_kihunter_stairs_up)

presets_gtmax_lower_norfair_fireflea_room:
    %cm_preset("Fireflea Room", #preset_gtmax_lower_norfair_fireflea_room)

presets_gtmax_lower_norfair_springball_maze:
    %cm_preset("Springball Maze", #preset_gtmax_lower_norfair_springball_maze)

presets_gtmax_lower_norfair_three_muskateers:
    %cm_preset("Three Muskateers", #preset_gtmax_lower_norfair_three_muskateers)


; Upper Norfair and Kraid
presets_gtmax_upper_norfair_and_kraid_single_chamber:
    %cm_preset("Single Chamber", #preset_gtmax_upper_norfair_and_kraid_single_chamber)

presets_gtmax_upper_norfair_and_kraid_double_chamber:
    %cm_preset("Double Chamber", #preset_gtmax_upper_norfair_and_kraid_double_chamber)

presets_gtmax_upper_norfair_and_kraid_bat_cave:
    %cm_preset("Bat Cave", #preset_gtmax_upper_norfair_and_kraid_bat_cave)

presets_gtmax_upper_norfair_and_kraid_bat_cave_revisit:
    %cm_preset("Bat Cave Revisit", #preset_gtmax_upper_norfair_and_kraid_bat_cave_revisit)

presets_gtmax_upper_norfair_and_kraid_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_gtmax_upper_norfair_and_kraid_bubble_mountain_revisit)

presets_gtmax_upper_norfair_and_kraid_leaving_norfair_reserve:
    %cm_preset("Leaving Norfair Reserve", #preset_gtmax_upper_norfair_and_kraid_leaving_norfair_reserve)

presets_gtmax_upper_norfair_and_kraid_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_gtmax_upper_norfair_and_kraid_bubble_mountain_final)

presets_gtmax_upper_norfair_and_kraid_cathedral_revisit:
    %cm_preset("Cathedral Revisit", #preset_gtmax_upper_norfair_and_kraid_cathedral_revisit)

presets_gtmax_upper_norfair_and_kraid_ice_gate_room:
    %cm_preset("Ice Gate Room", #preset_gtmax_upper_norfair_and_kraid_ice_gate_room)

presets_gtmax_upper_norfair_and_kraid_crocomire:
    %cm_preset("Crocomire", #preset_gtmax_upper_norfair_and_kraid_crocomire)

presets_gtmax_upper_norfair_and_kraid_leaving_crocomire:
    %cm_preset("Leaving Crocomire", #preset_gtmax_upper_norfair_and_kraid_leaving_crocomire)

presets_gtmax_upper_norfair_and_kraid_grapple_shaft_down:
    %cm_preset("Grapple Shaft Down", #preset_gtmax_upper_norfair_and_kraid_grapple_shaft_down)

presets_gtmax_upper_norfair_and_kraid_sine_missiles:
    %cm_preset("Sine Missiles", #preset_gtmax_upper_norfair_and_kraid_sine_missiles)

presets_gtmax_upper_norfair_and_kraid_crocomire_revisit:
    %cm_preset("Crocomire Revisit", #preset_gtmax_upper_norfair_and_kraid_crocomire_revisit)

presets_gtmax_upper_norfair_and_kraid_croc_escape_super_gate:
    %cm_preset("Croc Escape Super Gate", #preset_gtmax_upper_norfair_and_kraid_croc_escape_super_gate)

presets_gtmax_upper_norfair_and_kraid_hijump_etank_revisit:
    %cm_preset("Hi-Jump E-Tank Revisit", #preset_gtmax_upper_norfair_and_kraid_hijump_etank_revisit)

presets_gtmax_upper_norfair_and_kraid_business_center_final:
    %cm_preset("Business Center Final", #preset_gtmax_upper_norfair_and_kraid_business_center_final)

presets_gtmax_upper_norfair_and_kraid_kraid_revisit:
    %cm_preset("Kraid Revisit", #preset_gtmax_upper_norfair_and_kraid_kraid_revisit)

presets_gtmax_upper_norfair_and_kraid_kraid_etank:
    %cm_preset("Kraid E-Tank", #preset_gtmax_upper_norfair_and_kraid_kraid_etank)

presets_gtmax_upper_norfair_and_kraid_kraid_kihunters_final:
    %cm_preset("Kraid Kihunters Final", #preset_gtmax_upper_norfair_and_kraid_kraid_kihunters_final)


; Maridia Pre-Draygon
presets_gtmax_maridia_predraygon_maridia_tube_revisit:
    %cm_preset("Maridia Tube Revisit", #preset_gtmax_maridia_predraygon_maridia_tube_revisit)

presets_gtmax_maridia_predraygon_fish_tank:
    %cm_preset("Fish Tank", #preset_gtmax_maridia_predraygon_fish_tank)

presets_gtmax_maridia_predraygon_tatori_room:
    %cm_preset("Tatori Room", #preset_gtmax_maridia_predraygon_tatori_room)

presets_gtmax_maridia_predraygon_mt_everest_and_crab_supers:
    %cm_preset("Mt Everest and Crab Supers", #preset_gtmax_maridia_predraygon_mt_everest_and_crab_supers)

presets_gtmax_maridia_predraygon_crab_shaft:
    %cm_preset("Crab Shaft", #preset_gtmax_maridia_predraygon_crab_shaft)

presets_gtmax_maridia_predraygon_path_to_watering_hole:
    %cm_preset("Path to Watering Hole", #preset_gtmax_maridia_predraygon_path_to_watering_hole)

presets_gtmax_maridia_predraygon_beach_exit:
    %cm_preset("Beach Exit", #preset_gtmax_maridia_predraygon_beach_exit)

presets_gtmax_maridia_predraygon_crab_shaft_revisit:
    %cm_preset("Crab Shaft Revisit", #preset_gtmax_maridia_predraygon_crab_shaft_revisit)

presets_gtmax_maridia_predraygon_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_gtmax_maridia_predraygon_botwoon_hallway)

presets_gtmax_maridia_predraygon_botwoon:
    %cm_preset("Botwoon", #preset_gtmax_maridia_predraygon_botwoon)

presets_gtmax_maridia_predraygon_halfie_setup:
    %cm_preset("Halfie Setup", #preset_gtmax_maridia_predraygon_halfie_setup)

presets_gtmax_maridia_predraygon_precious_room:
    %cm_preset("Precious Room", #preset_gtmax_maridia_predraygon_precious_room)

presets_gtmax_maridia_predraygon_draygon:
    %cm_preset("Draygon", #preset_gtmax_maridia_predraygon_draygon)


; Maridia Post-Draygon
presets_gtmax_maridia_postdraygon_reverse_halfie:
    %cm_preset("Reverse Halfie", #preset_gtmax_maridia_postdraygon_reverse_halfie)

presets_gtmax_maridia_postdraygon_womple_jump:
    %cm_preset("Womple Jump", #preset_gtmax_maridia_postdraygon_womple_jump)

presets_gtmax_maridia_postdraygon_reverse_botwoon_etank:
    %cm_preset("Reverse Botwoon E-Tank", #preset_gtmax_maridia_postdraygon_reverse_botwoon_etank)

presets_gtmax_maridia_postdraygon_aqueduct_ammo:
    %cm_preset("Aqueduct Ammo", #preset_gtmax_maridia_postdraygon_aqueduct_ammo)

presets_gtmax_maridia_postdraygon_right_sandpit:
    %cm_preset("Right Sandpit", #preset_gtmax_maridia_postdraygon_right_sandpit)

presets_gtmax_maridia_postdraygon_oasis_and_sewer:
    %cm_preset("Oasis and Sewer", #preset_gtmax_maridia_postdraygon_oasis_and_sewer)

presets_gtmax_maridia_postdraygon_maridia_ggg:
    %cm_preset("Maridia GGG", #preset_gtmax_maridia_postdraygon_maridia_ggg)

presets_gtmax_maridia_postdraygon_left_sandpit:
    %cm_preset("Left Sandpit", #preset_gtmax_maridia_postdraygon_left_sandpit)

presets_gtmax_maridia_postdraygon_maridia_ggg_revisit:
    %cm_preset("Maridia GGG Revisit", #preset_gtmax_maridia_postdraygon_maridia_ggg_revisit)

presets_gtmax_maridia_postdraygon_mt_everest_exit:
    %cm_preset("Mt Everest Exit", #preset_gtmax_maridia_postdraygon_mt_everest_exit)

presets_gtmax_maridia_postdraygon_red_brinstar_green_gate:
    %cm_preset("Red Brinstar Green Gate", #preset_gtmax_maridia_postdraygon_red_brinstar_green_gate)

presets_gtmax_maridia_postdraygon_leaving_alpha_power_bombs:
    %cm_preset("Leaving Alpha Power Bombs", #preset_gtmax_maridia_postdraygon_leaving_alpha_power_bombs)

presets_gtmax_maridia_postdraygon_beta_power_bombs:
    %cm_preset("Beta Power Bombs", #preset_gtmax_maridia_postdraygon_beta_power_bombs)


; Wrecked Ship
presets_gtmax_wrecked_ship_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_gtmax_wrecked_ship_crateria_kihunters)

presets_gtmax_wrecked_ship_moat:
    %cm_preset("Moat", #preset_gtmax_wrecked_ship_moat)

presets_gtmax_wrecked_ship_ocean:
    %cm_preset("Ocean", #preset_gtmax_wrecked_ship_ocean)

presets_gtmax_wrecked_ship_enter_wrecked_ship:
    %cm_preset("Enter Wrecked Ship", #preset_gtmax_wrecked_ship_enter_wrecked_ship)

presets_gtmax_wrecked_ship_basement:
    %cm_preset("Basement", #preset_gtmax_wrecked_ship_basement)

presets_gtmax_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_gtmax_wrecked_ship_phantoon)

presets_gtmax_wrecked_ship_shaft_to_supers:
    %cm_preset("Shaft to Supers", #preset_gtmax_wrecked_ship_shaft_to_supers)

presets_gtmax_wrecked_ship_east_supers:
    %cm_preset("East Supers", #preset_gtmax_wrecked_ship_east_supers)

presets_gtmax_wrecked_ship_west_supers:
    %cm_preset("West Supers", #preset_gtmax_wrecked_ship_west_supers)

presets_gtmax_wrecked_ship_sponge_bath:
    %cm_preset("Sponge Bath", #preset_gtmax_wrecked_ship_sponge_bath)

presets_gtmax_wrecked_ship_leaving_ws_etank:
    %cm_preset("Leaving WS E-Tank", #preset_gtmax_wrecked_ship_leaving_ws_etank)

presets_gtmax_wrecked_ship_reverse_spiky_room:
    %cm_preset("Reverse Spiky Room", #preset_gtmax_wrecked_ship_reverse_spiky_room)

presets_gtmax_wrecked_ship_shaft_to_attic:
    %cm_preset("Shaft to Attic", #preset_gtmax_wrecked_ship_shaft_to_attic)

presets_gtmax_wrecked_ship_attic:
    %cm_preset("Attic", #preset_gtmax_wrecked_ship_attic)

presets_gtmax_wrecked_ship_antispeedrun_robots:
    %cm_preset("Anti-Speedrun Robots", #preset_gtmax_wrecked_ship_antispeedrun_robots)

presets_gtmax_wrecked_ship_attic_revisit:
    %cm_preset("Attic Revisit", #preset_gtmax_wrecked_ship_attic_revisit)

presets_gtmax_wrecked_ship_pancake_room:
    %cm_preset("Pancake Room", #preset_gtmax_wrecked_ship_pancake_room)

presets_gtmax_wrecked_ship_bowling_spark:
    %cm_preset("Bowling Spark", #preset_gtmax_wrecked_ship_bowling_spark)

presets_gtmax_wrecked_ship_ocean_revisit:
    %cm_preset("Ocean Revisit", #preset_gtmax_wrecked_ship_ocean_revisit)


; Brinstar Cleanup 1
presets_gtmax_brinstar_cleanup_1_crateria_power_bombs:
    %cm_preset("Crateria Power Bombs", #preset_gtmax_brinstar_cleanup_1_crateria_power_bombs)

presets_gtmax_brinstar_cleanup_1_landing_site_revisit:
    %cm_preset("Landing Site Revisit", #preset_gtmax_brinstar_cleanup_1_landing_site_revisit)

presets_gtmax_brinstar_cleanup_1_gauntlet_etank:
    %cm_preset("Gauntlet E-Tank", #preset_gtmax_brinstar_cleanup_1_gauntlet_etank)

presets_gtmax_brinstar_cleanup_1_crumble_blocks:
    %cm_preset("Crumble Blocks", #preset_gtmax_brinstar_cleanup_1_crumble_blocks)

presets_gtmax_brinstar_cleanup_1_kago_mushroom_room:
    %cm_preset("Kago Mushroom Room", #preset_gtmax_brinstar_cleanup_1_kago_mushroom_room)

presets_gtmax_brinstar_cleanup_1_green_brinstar_revisit:
    %cm_preset("Green Brinstar Revisit", #preset_gtmax_brinstar_cleanup_1_green_brinstar_revisit)

presets_gtmax_brinstar_cleanup_1_brinstar_reserve_tank:
    %cm_preset("Brinstar Reserve Tank", #preset_gtmax_brinstar_cleanup_1_brinstar_reserve_tank)

presets_gtmax_brinstar_cleanup_1_reverse_mockball:
    %cm_preset("Reverse Mockball", #preset_gtmax_brinstar_cleanup_1_reverse_mockball)

presets_gtmax_brinstar_cleanup_1_green_shaft_descent:
    %cm_preset("Green Shaft Descent", #preset_gtmax_brinstar_cleanup_1_green_shaft_descent)

presets_gtmax_brinstar_cleanup_1_green_brinstar_beetoms:
    %cm_preset("Green Brinstar Beetoms", #preset_gtmax_brinstar_cleanup_1_green_brinstar_beetoms)

presets_gtmax_brinstar_cleanup_1_etecoon_etank_room:
    %cm_preset("Etecoon E-Tank Room", #preset_gtmax_brinstar_cleanup_1_etecoon_etank_room)

presets_gtmax_brinstar_cleanup_1_etecoon_room:
    %cm_preset("Etecoon Room", #preset_gtmax_brinstar_cleanup_1_etecoon_room)

presets_gtmax_brinstar_cleanup_1_green_shaft_final:
    %cm_preset("Green Shaft Final", #preset_gtmax_brinstar_cleanup_1_green_shaft_final)

presets_gtmax_brinstar_cleanup_1_dachora_room_revisit:
    %cm_preset("Dachora Room Revisit", #preset_gtmax_brinstar_cleanup_1_dachora_room_revisit)

presets_gtmax_brinstar_cleanup_1_big_pink_revisit:
    %cm_preset("Big Pink Revisit", #preset_gtmax_brinstar_cleanup_1_big_pink_revisit)

presets_gtmax_brinstar_cleanup_1_mission_impossible:
    %cm_preset("Mission Impossible", #preset_gtmax_brinstar_cleanup_1_mission_impossible)

presets_gtmax_brinstar_cleanup_1_leaving_pink_etank:
    %cm_preset("Leaving Pink E-Tank", #preset_gtmax_brinstar_cleanup_1_leaving_pink_etank)

presets_gtmax_brinstar_cleanup_1_leaving_spore_spawn_supers:
    %cm_preset("Leaving Spore Spawn Supers", #preset_gtmax_brinstar_cleanup_1_leaving_spore_spawn_supers)

presets_gtmax_brinstar_cleanup_1_waterway_etank:
    %cm_preset("Waterway E-Tank", #preset_gtmax_brinstar_cleanup_1_waterway_etank)


; Brinstar Cleanup 2
presets_gtmax_brinstar_cleanup_2_green_hills_revisit:
    %cm_preset("Green Hills Revisit", #preset_gtmax_brinstar_cleanup_2_green_hills_revisit)

presets_gtmax_brinstar_cleanup_2_blue_brinstar_hoppers:
    %cm_preset("Blue Brinstar Hoppers", #preset_gtmax_brinstar_cleanup_2_blue_brinstar_hoppers)

presets_gtmax_brinstar_cleanup_2_billy_mays:
    %cm_preset("Billy Mays", #preset_gtmax_brinstar_cleanup_2_billy_mays)

presets_gtmax_brinstar_cleanup_2_leaving_blue_brinstar:
    %cm_preset("Leaving Blue Brinstar", #preset_gtmax_brinstar_cleanup_2_leaving_blue_brinstar)

presets_gtmax_brinstar_cleanup_2_pit_room_final_spark:
    %cm_preset("Pit Room Final (Spark)", #preset_gtmax_brinstar_cleanup_2_pit_room_final_spark)

presets_gtmax_brinstar_cleanup_2_climb_supers:
    %cm_preset("Climb Supers", #preset_gtmax_brinstar_cleanup_2_climb_supers)

presets_gtmax_brinstar_cleanup_2_to_final_missiles:
    %cm_preset("To Final Missiles", #preset_gtmax_brinstar_cleanup_2_to_final_missiles)

presets_gtmax_brinstar_cleanup_2_parlor_missiles:
    %cm_preset("Parlor Missiles", #preset_gtmax_brinstar_cleanup_2_parlor_missiles)

presets_gtmax_brinstar_cleanup_2_parlor_again:
    %cm_preset("Parlor Again", #preset_gtmax_brinstar_cleanup_2_parlor_again)

presets_gtmax_brinstar_cleanup_2_terminator_etank:
    %cm_preset("Terminator E-tank", #preset_gtmax_brinstar_cleanup_2_terminator_etank)


; Tourian
presets_gtmax_tourian_tourian_elevator_room:
    %cm_preset("Tourian Elevator Room", #preset_gtmax_tourian_tourian_elevator_room)

presets_gtmax_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_gtmax_tourian_metroids_1)

presets_gtmax_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_gtmax_tourian_metroids_2)

presets_gtmax_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_gtmax_tourian_metroids_3)

presets_gtmax_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_gtmax_tourian_metroids_4)

presets_gtmax_tourian_giant_hoppers:
    %cm_preset("Giant Hoppers", #preset_gtmax_tourian_giant_hoppers)

presets_gtmax_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_gtmax_tourian_baby_skip)

presets_gtmax_tourian_gadora_room:
    %cm_preset("Gadora Room", #preset_gtmax_tourian_gadora_room)

presets_gtmax_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_gtmax_tourian_zeb_skip)

presets_gtmax_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_gtmax_tourian_mother_brain_2)

presets_gtmax_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_gtmax_tourian_zebes_escape)

presets_gtmax_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_gtmax_tourian_escape_room_3)

presets_gtmax_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_gtmax_tourian_escape_room_4)

presets_gtmax_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_gtmax_tourian_escape_climb)

presets_gtmax_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_gtmax_tourian_escape_parlor)


