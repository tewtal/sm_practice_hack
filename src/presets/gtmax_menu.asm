PresetsMenuGtmax:
    dw #presets_goto_gtmax_crateria
    dw #presets_goto_gtmax_brinstar
    dw #presets_goto_gtmax_kraids_lair
    dw #presets_goto_gtmax_upper_norfair
    dw #presets_goto_gtmax_lower_norfair
    dw #presets_goto_gtmax_upper_norfair_and_kraid
    dw #presets_goto_gtmax_maridia_predraygon
    dw #presets_goto_gtmax_maridia_postdraygon
    dw #presets_goto_gtmax_wrecked_ship
    dw #presets_goto_gtmax_brinstar_cleanup
    dw #presets_goto_gtmax_blue_brinstar_cleanup
    dw #presets_goto_gtmax_tourian
    dw #$0000
    %cm_header("PRESETS FOR GT MAX%")

presets_goto_gtmax_crateria:
    %cm_submenu("Crateria", #presets_submenu_gtmax_crateria)

presets_goto_gtmax_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_gtmax_brinstar)

presets_goto_gtmax_kraids_lair:
    %cm_submenu("Kraid's Lair", #presets_submenu_gtmax_kraids_lair)

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

presets_goto_gtmax_brinstar_cleanup:
    %cm_submenu("Brinstar Cleanup", #presets_submenu_gtmax_brinstar_cleanup)

presets_goto_gtmax_blue_brinstar_cleanup:
    %cm_submenu("Blue Brinstar Cleanup", #presets_submenu_gtmax_blue_brinstar_cleanup)

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
    dw #presets_gtmax_brinstar_breaking_the_tube
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_gtmax_kraids_lair:
    dw #presets_gtmax_kraids_lair_entering_kraids_lair
    dw #presets_gtmax_kraids_lair_kraid_kihunters
    dw #presets_gtmax_kraids_lair_minikraid
    dw #presets_gtmax_kraids_lair_kraid
    dw #presets_gtmax_kraids_lair_leaving_varia
    dw #presets_gtmax_kraids_lair_minikraid_revisit
    dw #presets_gtmax_kraids_lair_kraid_kihunters_revisit
    dw #presets_gtmax_kraids_lair_leaving_kraids_lair
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
    dw #presets_gtmax_lower_norfair_three_musketeers
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
    dw #presets_gtmax_maridia_postdraygon_whomple_jump
    dw #presets_gtmax_maridia_postdraygon_reverse_botwoon_etank
    dw #presets_gtmax_maridia_postdraygon_aqueduct_ammo
    dw #presets_gtmax_maridia_postdraygon_right_sand_pit
    dw #presets_gtmax_maridia_postdraygon_oasis_and_sewer
    dw #presets_gtmax_maridia_postdraygon_maridia_ggg
    dw #presets_gtmax_maridia_postdraygon_left_sand_pit
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

presets_submenu_gtmax_brinstar_cleanup:
    dw #presets_gtmax_brinstar_cleanup_crateria_power_bombs
    dw #presets_gtmax_brinstar_cleanup_landing_site_revisit
    dw #presets_gtmax_brinstar_cleanup_gauntlet_etank
    dw #presets_gtmax_brinstar_cleanup_crumble_blocks
    dw #presets_gtmax_brinstar_cleanup_kago_mushroom_room
    dw #presets_gtmax_brinstar_cleanup_green_brinstar_revisit
    dw #presets_gtmax_brinstar_cleanup_brinstar_reserve_tank
    dw #presets_gtmax_brinstar_cleanup_reverse_mockball
    dw #presets_gtmax_brinstar_cleanup_green_shaft_descent
    dw #presets_gtmax_brinstar_cleanup_green_brinstar_beetoms
    dw #presets_gtmax_brinstar_cleanup_etecoon_etank_room
    dw #presets_gtmax_brinstar_cleanup_etecoon_room
    dw #presets_gtmax_brinstar_cleanup_green_shaft_final
    dw #presets_gtmax_brinstar_cleanup_dachora_room_revisit
    dw #presets_gtmax_brinstar_cleanup_big_pink_revisit
    dw #presets_gtmax_brinstar_cleanup_mission_impossible
    dw #presets_gtmax_brinstar_cleanup_leaving_pink_etank
    dw #presets_gtmax_brinstar_cleanup_leaving_spore_spawn_supers
    dw #presets_gtmax_brinstar_cleanup_waterway_etank
    dw #$0000
    %cm_header("BRINSTAR CLEANUP")

presets_submenu_gtmax_blue_brinstar_cleanup:
    dw #presets_gtmax_blue_brinstar_cleanup_green_hill_zone_revisit
    dw #presets_gtmax_blue_brinstar_cleanup_blue_brinstar_hoppers
    dw #presets_gtmax_blue_brinstar_cleanup_billy_mays
    dw #presets_gtmax_blue_brinstar_cleanup_leaving_blue_brinstar
    dw #presets_gtmax_blue_brinstar_cleanup_pit_room_final_spark
    dw #presets_gtmax_blue_brinstar_cleanup_climb_supers
    dw #presets_gtmax_blue_brinstar_cleanup_to_final_missiles
    dw #presets_gtmax_blue_brinstar_cleanup_parlor_missiles
    dw #presets_gtmax_blue_brinstar_cleanup_parlor_again
    dw #presets_gtmax_blue_brinstar_cleanup_terminator_etank
    dw #$0000
    %cm_header("BLUE BRINSTAR CLEANUP")

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
    %cm_preset("Ceres Elevator", #preset_names_ceres_elevator, #preset_gtmax_crateria_ceres_elevator)

presets_gtmax_crateria_ceres_escape:
    %cm_preset("Ceres Escape", #preset_names_ceres_escape, #preset_gtmax_crateria_ceres_escape)

presets_gtmax_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_names_ceres_last_3_rooms, #preset_gtmax_crateria_ceres_last_3_rooms)

presets_gtmax_crateria_ship:
    %cm_preset("Ship", #preset_names_ship, #preset_gtmax_crateria_ship)

presets_gtmax_crateria_parlor:
    %cm_preset("Parlor", #preset_names_parlor, #preset_gtmax_crateria_parlor)

presets_gtmax_crateria_parlor_downback:
    %cm_preset("Parlor Downback", #preset_names_parlor_downback, #preset_gtmax_crateria_parlor_downback)

presets_gtmax_crateria_climb_down:
    %cm_preset("Climb Down", #preset_names_climb_down, #preset_gtmax_crateria_climb_down)

presets_gtmax_crateria_pit_room:
    %cm_preset("Pit Room", #preset_names_pit_room, #preset_gtmax_crateria_pit_room)

presets_gtmax_crateria_morph:
    %cm_preset("Morph", #preset_names_morph, #preset_gtmax_crateria_morph)

presets_gtmax_crateria_construction_zone_down:
    %cm_preset("Construction Zone Down", #preset_names_construction_zone_down, #preset_gtmax_crateria_construction_zone_down)

presets_gtmax_crateria_construction_zone_up:
    %cm_preset("Construction Zone Up", #preset_names_construction_zone_up, #preset_gtmax_crateria_construction_zone_up)

presets_gtmax_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_names_pit_room_revisit, #preset_gtmax_crateria_pit_room_revisit)

presets_gtmax_crateria_climb_up:
    %cm_preset("Climb Up", #preset_names_climb_up, #preset_gtmax_crateria_climb_up)

presets_gtmax_crateria_parlor_flyway:
    %cm_preset("Parlor Flyway", #preset_names_parlor_flyway, #preset_gtmax_crateria_parlor_flyway)

presets_gtmax_crateria_flyway:
    %cm_preset("Flyway", #preset_names_flyway, #preset_gtmax_crateria_flyway)

presets_gtmax_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_names_bomb_torizo, #preset_gtmax_crateria_bomb_torizo)

presets_gtmax_crateria_alcatraz:
    %cm_preset("Alcatraz", #preset_names_alcatraz, #preset_gtmax_crateria_alcatraz)

presets_gtmax_crateria_terminator:
    %cm_preset("Terminator", #preset_names_terminator, #preset_gtmax_crateria_terminator)

presets_gtmax_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_names_green_pirate_shaft, #preset_gtmax_crateria_green_pirate_shaft)


; Brinstar
presets_gtmax_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_names_green_brinstar_elevator, #preset_gtmax_brinstar_green_brinstar_elevator)

presets_gtmax_brinstar_early_supers:
    %cm_preset("Early Supers", #preset_names_early_supers, #preset_gtmax_brinstar_early_supers)

presets_gtmax_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_names_dachora_room, #preset_gtmax_brinstar_dachora_room)

presets_gtmax_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_names_big_pink, #preset_gtmax_brinstar_big_pink)

presets_gtmax_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_names_green_hill_zone, #preset_gtmax_brinstar_green_hill_zone)

presets_gtmax_brinstar_noob_bridge:
    %cm_preset("Noob Bridge", #preset_names_noob_bridge, #preset_gtmax_brinstar_noob_bridge)

presets_gtmax_brinstar_red_tower_up:
    %cm_preset("Red Tower Up", #preset_names_red_tower_up, #preset_gtmax_brinstar_red_tower_up)

presets_gtmax_brinstar_hellway:
    %cm_preset("Hellway", #preset_names_hellway, #preset_gtmax_brinstar_hellway)

presets_gtmax_brinstar_caterpillars_down:
    %cm_preset("Caterpillars Down", #preset_names_caterpillars_down, #preset_gtmax_brinstar_caterpillars_down)

presets_gtmax_brinstar_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_names_alpha_power_bombs, #preset_gtmax_brinstar_alpha_power_bombs)

presets_gtmax_brinstar_caterpillars_up:
    %cm_preset("Caterpillars Up", #preset_names_caterpillars_up, #preset_gtmax_brinstar_caterpillars_up)

presets_gtmax_brinstar_reverse_hellway:
    %cm_preset("Reverse Hellway", #preset_names_reverse_hellway, #preset_gtmax_brinstar_reverse_hellway)

presets_gtmax_brinstar_red_tower_down:
    %cm_preset("Red Tower Down", #preset_names_red_tower_down, #preset_gtmax_brinstar_red_tower_down)

presets_gtmax_brinstar_skree_boost:
    %cm_preset("Skree Boost", #preset_names_skree_boost, #preset_gtmax_brinstar_skree_boost)

presets_gtmax_brinstar_below_spazer:
    %cm_preset("Below Spazer", #preset_names_below_spazer, #preset_gtmax_brinstar_below_spazer)

presets_gtmax_brinstar_breaking_the_tube:
    %cm_preset("Breaking The Tube", #preset_names_breaking_the_tube, #preset_gtmax_brinstar_breaking_the_tube)


; Kraid's Lair
presets_gtmax_kraids_lair_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_names_entering_kraids_lair, #preset_gtmax_kraids_lair_entering_kraids_lair)

presets_gtmax_kraids_lair_kraid_kihunters:
    %cm_preset("Kraid Kihunters", #preset_names_kraid_kihunters, #preset_gtmax_kraids_lair_kraid_kihunters)

presets_gtmax_kraids_lair_minikraid:
    %cm_preset("Mini-Kraid", #preset_names_minikraid, #preset_gtmax_kraids_lair_minikraid)

presets_gtmax_kraids_lair_kraid:
    %cm_preset("Kraid", #preset_names_kraid, #preset_gtmax_kraids_lair_kraid)

presets_gtmax_kraids_lair_leaving_varia:
    %cm_preset("Leaving Varia", #preset_names_leaving_varia, #preset_gtmax_kraids_lair_leaving_varia)

presets_gtmax_kraids_lair_minikraid_revisit:
    %cm_preset("Mini-Kraid Revisit", #preset_names_minikraid_revisit, #preset_gtmax_kraids_lair_minikraid_revisit)

presets_gtmax_kraids_lair_kraid_kihunters_revisit:
    %cm_preset("Kraid Kihunters Revisit", #preset_names_kraid_kihunters_revisit, #preset_gtmax_kraids_lair_kraid_kihunters_revisit)

presets_gtmax_kraids_lair_leaving_kraids_lair:
    %cm_preset("Leaving Kraid's Lair", #preset_names_leaving_kraids_lair, #preset_gtmax_kraids_lair_leaving_kraids_lair)


; Upper Norfair
presets_gtmax_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_names_business_center, #preset_gtmax_upper_norfair_business_center)

presets_gtmax_upper_norfair_hijump_etank_room:
    %cm_preset("Hi-Jump E-Tank Room", #preset_names_hijump_etank_room, #preset_gtmax_upper_norfair_hijump_etank_room)

presets_gtmax_upper_norfair_leaving_hijump:
    %cm_preset("Leaving Hi-Jump", #preset_names_leaving_hijump, #preset_gtmax_upper_norfair_leaving_hijump)

presets_gtmax_upper_norfair_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_names_business_center_revisit, #preset_gtmax_upper_norfair_business_center_revisit)

presets_gtmax_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_names_precathedral, #preset_gtmax_upper_norfair_precathedral)

presets_gtmax_upper_norfair_cathedral:
    %cm_preset("Cathedral", #preset_names_cathedral, #preset_gtmax_upper_norfair_cathedral)

presets_gtmax_upper_norfair_rising_tide:
    %cm_preset("Rising Tide", #preset_names_rising_tide, #preset_gtmax_upper_norfair_rising_tide)

presets_gtmax_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_names_bubble_mountain, #preset_gtmax_upper_norfair_bubble_mountain)

presets_gtmax_upper_norfair_magdollite_tunnel:
    %cm_preset("Magdollite Tunnel", #preset_names_magdollite_tunnel, #preset_gtmax_upper_norfair_magdollite_tunnel)

presets_gtmax_upper_norfair_kronic_room:
    %cm_preset("Kronic Room", #preset_names_kronic_room, #preset_gtmax_upper_norfair_kronic_room)

presets_gtmax_upper_norfair_lava_dive:
    %cm_preset("Lava Dive", #preset_names_lava_dive, #preset_gtmax_upper_norfair_lava_dive)

presets_gtmax_upper_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_names_ln_main_hall, #preset_gtmax_upper_norfair_ln_main_hall)

presets_gtmax_upper_norfair_prepillars:
    %cm_preset("Pre-Pillars", #preset_names_prepillars, #preset_gtmax_upper_norfair_prepillars)

presets_gtmax_upper_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_names_green_gate_glitch, #preset_gtmax_upper_norfair_green_gate_glitch)

presets_gtmax_upper_norfair_gt_code:
    %cm_preset("GT Code", #preset_names_gt_code, #preset_gtmax_upper_norfair_gt_code)


; Lower Norfair
presets_gtmax_lower_norfair_leaving_golden_torizo:
    %cm_preset("Leaving Golden Torizo", #preset_names_leaving_golden_torizo, #preset_gtmax_lower_norfair_leaving_golden_torizo)

presets_gtmax_lower_norfair_green_gate_revisit:
    %cm_preset("Green Gate Revisit", #preset_names_green_gate_revisit, #preset_gtmax_lower_norfair_green_gate_revisit)

presets_gtmax_lower_norfair_ln_main_hall_revisit:
    %cm_preset("LN Main Hall Revisit", #preset_names_ln_main_hall_revisit, #preset_gtmax_lower_norfair_ln_main_hall_revisit)

presets_gtmax_lower_norfair_green_gate_final:
    %cm_preset("Green Gate Final", #preset_names_green_gate_final, #preset_gtmax_lower_norfair_green_gate_final)

presets_gtmax_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_names_worst_room_in_the_game, #preset_gtmax_lower_norfair_worst_room_in_the_game)

presets_gtmax_lower_norfair_mickey_mouse_missiles:
    %cm_preset("Mickey Mouse Missiles", #preset_names_mickey_mouse_missiles, #preset_gtmax_lower_norfair_mickey_mouse_missiles)

presets_gtmax_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_names_amphitheatre, #preset_gtmax_lower_norfair_amphitheatre)

presets_gtmax_lower_norfair_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_names_kihunter_stairs_down, #preset_gtmax_lower_norfair_kihunter_stairs_down)

presets_gtmax_lower_norfair_wasteland:
    %cm_preset("Wasteland", #preset_names_wasteland, #preset_gtmax_lower_norfair_wasteland)

presets_gtmax_lower_norfair_metal_ninja_pirates:
    %cm_preset("Metal Ninja Pirates", #preset_names_metal_ninja_pirates, #preset_gtmax_lower_norfair_metal_ninja_pirates)

presets_gtmax_lower_norfair_plowerhouse:
    %cm_preset("Plowerhouse", #preset_names_plowerhouse, #preset_gtmax_lower_norfair_plowerhouse)

presets_gtmax_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_names_ridley, #preset_gtmax_lower_norfair_ridley)

presets_gtmax_lower_norfair_leaving_ridley_etank:
    %cm_preset("Leaving Ridley E-Tank", #preset_names_leaving_ridley_etank, #preset_gtmax_lower_norfair_leaving_ridley_etank)

presets_gtmax_lower_norfair_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_names_reverse_plowerhouse, #preset_gtmax_lower_norfair_reverse_plowerhouse)

presets_gtmax_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_names_wasteland_revisit, #preset_gtmax_lower_norfair_wasteland_revisit)

presets_gtmax_lower_norfair_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_names_kihunter_stairs_up, #preset_gtmax_lower_norfair_kihunter_stairs_up)

presets_gtmax_lower_norfair_fireflea_room:
    %cm_preset("Fireflea Room", #preset_names_fireflea_room, #preset_gtmax_lower_norfair_fireflea_room)

presets_gtmax_lower_norfair_springball_maze:
    %cm_preset("Springball Maze", #preset_names_springball_maze, #preset_gtmax_lower_norfair_springball_maze)

presets_gtmax_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_names_three_musketeers, #preset_gtmax_lower_norfair_three_musketeers)


; Upper Norfair and Kraid
presets_gtmax_upper_norfair_and_kraid_single_chamber:
    %cm_preset("Single Chamber", #preset_names_single_chamber, #preset_gtmax_upper_norfair_and_kraid_single_chamber)

presets_gtmax_upper_norfair_and_kraid_double_chamber:
    %cm_preset("Double Chamber", #preset_names_double_chamber, #preset_gtmax_upper_norfair_and_kraid_double_chamber)

presets_gtmax_upper_norfair_and_kraid_bat_cave:
    %cm_preset("Bat Cave", #preset_names_bat_cave, #preset_gtmax_upper_norfair_and_kraid_bat_cave)

presets_gtmax_upper_norfair_and_kraid_bat_cave_revisit:
    %cm_preset("Bat Cave Revisit", #preset_names_bat_cave_revisit, #preset_gtmax_upper_norfair_and_kraid_bat_cave_revisit)

presets_gtmax_upper_norfair_and_kraid_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_names_bubble_mountain_revisit, #preset_gtmax_upper_norfair_and_kraid_bubble_mountain_revisit)

presets_gtmax_upper_norfair_and_kraid_leaving_norfair_reserve:
    %cm_preset("Leaving Norfair Reserve", #preset_names_leaving_norfair_reserve, #preset_gtmax_upper_norfair_and_kraid_leaving_norfair_reserve)

presets_gtmax_upper_norfair_and_kraid_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_names_bubble_mountain_final, #preset_gtmax_upper_norfair_and_kraid_bubble_mountain_final)

presets_gtmax_upper_norfair_and_kraid_cathedral_revisit:
    %cm_preset("Cathedral Revisit", #preset_names_cathedral_revisit, #preset_gtmax_upper_norfair_and_kraid_cathedral_revisit)

presets_gtmax_upper_norfair_and_kraid_ice_gate_room:
    %cm_preset("Ice Gate Room", #preset_names_ice_gate_room, #preset_gtmax_upper_norfair_and_kraid_ice_gate_room)

presets_gtmax_upper_norfair_and_kraid_crocomire:
    %cm_preset("Crocomire", #preset_names_crocomire, #preset_gtmax_upper_norfair_and_kraid_crocomire)

presets_gtmax_upper_norfair_and_kraid_leaving_crocomire:
    %cm_preset("Leaving Crocomire", #preset_names_leaving_crocomire, #preset_gtmax_upper_norfair_and_kraid_leaving_crocomire)

presets_gtmax_upper_norfair_and_kraid_grapple_shaft_down:
    %cm_preset("Grapple Shaft Down", #preset_names_grapple_shaft_down, #preset_gtmax_upper_norfair_and_kraid_grapple_shaft_down)

presets_gtmax_upper_norfair_and_kraid_sine_missiles:
    %cm_preset("Sine Missiles", #preset_names_sine_missiles, #preset_gtmax_upper_norfair_and_kraid_sine_missiles)

presets_gtmax_upper_norfair_and_kraid_crocomire_revisit:
    %cm_preset("Crocomire Revisit", #preset_names_crocomire_revisit, #preset_gtmax_upper_norfair_and_kraid_crocomire_revisit)

presets_gtmax_upper_norfair_and_kraid_croc_escape_super_gate:
    %cm_preset("Croc Escape Super Gate", #preset_names_croc_escape_super_gate, #preset_gtmax_upper_norfair_and_kraid_croc_escape_super_gate)

presets_gtmax_upper_norfair_and_kraid_hijump_etank_revisit:
    %cm_preset("Hi-Jump E-Tank Revisit", #preset_names_hijump_etank_revisit, #preset_gtmax_upper_norfair_and_kraid_hijump_etank_revisit)

presets_gtmax_upper_norfair_and_kraid_business_center_final:
    %cm_preset("Business Center Final", #preset_names_business_center_final, #preset_gtmax_upper_norfair_and_kraid_business_center_final)

presets_gtmax_upper_norfair_and_kraid_kraid_revisit:
    %cm_preset("Kraid Revisit", #preset_names_kraid_revisit, #preset_gtmax_upper_norfair_and_kraid_kraid_revisit)

presets_gtmax_upper_norfair_and_kraid_kraid_etank:
    %cm_preset("Kraid E-Tank", #preset_names_kraid_etank, #preset_gtmax_upper_norfair_and_kraid_kraid_etank)

presets_gtmax_upper_norfair_and_kraid_kraid_kihunters_final:
    %cm_preset("Kraid Kihunters Final", #preset_names_kraid_kihunters_final, #preset_gtmax_upper_norfair_and_kraid_kraid_kihunters_final)


; Maridia Pre-Draygon
presets_gtmax_maridia_predraygon_maridia_tube_revisit:
    %cm_preset("Maridia Tube Revisit", #preset_names_maridia_tube_revisit, #preset_gtmax_maridia_predraygon_maridia_tube_revisit)

presets_gtmax_maridia_predraygon_fish_tank:
    %cm_preset("Fish Tank", #preset_names_fish_tank, #preset_gtmax_maridia_predraygon_fish_tank)

presets_gtmax_maridia_predraygon_tatori_room:
    %cm_preset("Tatori Room", #preset_names_tatori_room, #preset_gtmax_maridia_predraygon_tatori_room)

presets_gtmax_maridia_predraygon_mt_everest_and_crab_supers:
    %cm_preset("Mt. Everest and Crab Supers", #preset_names_mt_everest_and_crab_supers, #preset_gtmax_maridia_predraygon_mt_everest_and_crab_supers)

presets_gtmax_maridia_predraygon_crab_shaft:
    %cm_preset("Crab Shaft", #preset_names_crab_shaft, #preset_gtmax_maridia_predraygon_crab_shaft)

presets_gtmax_maridia_predraygon_path_to_watering_hole:
    %cm_preset("Path to Watering Hole", #preset_names_path_to_watering_hole, #preset_gtmax_maridia_predraygon_path_to_watering_hole)

presets_gtmax_maridia_predraygon_beach_exit:
    %cm_preset("Beach Exit", #preset_names_beach_exit, #preset_gtmax_maridia_predraygon_beach_exit)

presets_gtmax_maridia_predraygon_crab_shaft_revisit:
    %cm_preset("Crab Shaft Revisit", #preset_names_crab_shaft_revisit, #preset_gtmax_maridia_predraygon_crab_shaft_revisit)

presets_gtmax_maridia_predraygon_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_names_botwoon_hallway, #preset_gtmax_maridia_predraygon_botwoon_hallway)

presets_gtmax_maridia_predraygon_botwoon:
    %cm_preset("Botwoon", #preset_names_botwoon, #preset_gtmax_maridia_predraygon_botwoon)

presets_gtmax_maridia_predraygon_halfie_setup:
    %cm_preset("Halfie Setup", #preset_names_halfie_setup, #preset_gtmax_maridia_predraygon_halfie_setup)

presets_gtmax_maridia_predraygon_precious_room:
    %cm_preset("Precious Room", #preset_names_precious_room, #preset_gtmax_maridia_predraygon_precious_room)

presets_gtmax_maridia_predraygon_draygon:
    %cm_preset("Draygon", #preset_names_draygon, #preset_gtmax_maridia_predraygon_draygon)


; Maridia Post-Draygon
presets_gtmax_maridia_postdraygon_reverse_halfie:
    %cm_preset("Reverse Halfie", #preset_names_reverse_halfie, #preset_gtmax_maridia_postdraygon_reverse_halfie)

presets_gtmax_maridia_postdraygon_whomple_jump:
    %cm_preset("Whomple Jump", #preset_names_whomple_jump, #preset_gtmax_maridia_postdraygon_whomple_jump)

presets_gtmax_maridia_postdraygon_reverse_botwoon_etank:
    %cm_preset("Reverse Botwoon E-Tank", #preset_names_reverse_botwoon_etank, #preset_gtmax_maridia_postdraygon_reverse_botwoon_etank)

presets_gtmax_maridia_postdraygon_aqueduct_ammo:
    %cm_preset("Aqueduct Ammo", #preset_names_aqueduct_ammo, #preset_gtmax_maridia_postdraygon_aqueduct_ammo)

presets_gtmax_maridia_postdraygon_right_sand_pit:
    %cm_preset("Right Sand Pit", #preset_names_right_sand_pit, #preset_gtmax_maridia_postdraygon_right_sand_pit)

presets_gtmax_maridia_postdraygon_oasis_and_sewer:
    %cm_preset("Oasis and Sewer", #preset_names_oasis_and_sewer, #preset_gtmax_maridia_postdraygon_oasis_and_sewer)

presets_gtmax_maridia_postdraygon_maridia_ggg:
    %cm_preset("Maridia GGG", #preset_names_maridia_ggg, #preset_gtmax_maridia_postdraygon_maridia_ggg)

presets_gtmax_maridia_postdraygon_left_sand_pit:
    %cm_preset("Left Sand Pit", #preset_names_left_sand_pit, #preset_gtmax_maridia_postdraygon_left_sand_pit)

presets_gtmax_maridia_postdraygon_maridia_ggg_revisit:
    %cm_preset("Maridia GGG Revisit", #preset_names_maridia_ggg_revisit, #preset_gtmax_maridia_postdraygon_maridia_ggg_revisit)

presets_gtmax_maridia_postdraygon_mt_everest_exit:
    %cm_preset("Mt. Everest Exit", #preset_names_mt_everest_exit, #preset_gtmax_maridia_postdraygon_mt_everest_exit)

presets_gtmax_maridia_postdraygon_red_brinstar_green_gate:
    %cm_preset("Red Brinstar Green Gate", #preset_names_red_brinstar_green_gate, #preset_gtmax_maridia_postdraygon_red_brinstar_green_gate)

presets_gtmax_maridia_postdraygon_leaving_alpha_power_bombs:
    %cm_preset("Leaving Alpha Power Bombs", #preset_names_leaving_alpha_power_bombs, #preset_gtmax_maridia_postdraygon_leaving_alpha_power_bombs)

presets_gtmax_maridia_postdraygon_beta_power_bombs:
    %cm_preset("Beta Power Bombs", #preset_names_beta_power_bombs, #preset_gtmax_maridia_postdraygon_beta_power_bombs)


; Wrecked Ship
presets_gtmax_wrecked_ship_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_names_crateria_kihunters, #preset_gtmax_wrecked_ship_crateria_kihunters)

presets_gtmax_wrecked_ship_moat:
    %cm_preset("Moat", #preset_names_moat, #preset_gtmax_wrecked_ship_moat)

presets_gtmax_wrecked_ship_ocean:
    %cm_preset("Ocean", #preset_names_ocean, #preset_gtmax_wrecked_ship_ocean)

presets_gtmax_wrecked_ship_enter_wrecked_ship:
    %cm_preset("Enter Wrecked Ship", #preset_names_enter_wrecked_ship, #preset_gtmax_wrecked_ship_enter_wrecked_ship)

presets_gtmax_wrecked_ship_basement:
    %cm_preset("Basement", #preset_names_basement, #preset_gtmax_wrecked_ship_basement)

presets_gtmax_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_names_phantoon, #preset_gtmax_wrecked_ship_phantoon)

presets_gtmax_wrecked_ship_shaft_to_supers:
    %cm_preset("Shaft To Supers", #preset_names_shaft_to_supers, #preset_gtmax_wrecked_ship_shaft_to_supers)

presets_gtmax_wrecked_ship_east_supers:
    %cm_preset("East Supers", #preset_names_east_supers, #preset_gtmax_wrecked_ship_east_supers)

presets_gtmax_wrecked_ship_west_supers:
    %cm_preset("West Supers", #preset_names_west_supers, #preset_gtmax_wrecked_ship_west_supers)

presets_gtmax_wrecked_ship_sponge_bath:
    %cm_preset("Sponge Bath", #preset_names_sponge_bath, #preset_gtmax_wrecked_ship_sponge_bath)

presets_gtmax_wrecked_ship_leaving_ws_etank:
    %cm_preset("Leaving WS E-Tank", #preset_names_leaving_ws_etank, #preset_gtmax_wrecked_ship_leaving_ws_etank)

presets_gtmax_wrecked_ship_reverse_spiky_room:
    %cm_preset("Reverse Spiky Room", #preset_names_reverse_spiky_room, #preset_gtmax_wrecked_ship_reverse_spiky_room)

presets_gtmax_wrecked_ship_shaft_to_attic:
    %cm_preset("Shaft to Attic", #preset_names_shaft_to_attic, #preset_gtmax_wrecked_ship_shaft_to_attic)

presets_gtmax_wrecked_ship_attic:
    %cm_preset("Attic", #preset_names_attic, #preset_gtmax_wrecked_ship_attic)

presets_gtmax_wrecked_ship_antispeedrun_robots:
    %cm_preset("Anti-Speedrun Robots", #preset_names_antispeedrun_robots, #preset_gtmax_wrecked_ship_antispeedrun_robots)

presets_gtmax_wrecked_ship_attic_revisit:
    %cm_preset("Attic Revisit", #preset_names_attic_revisit, #preset_gtmax_wrecked_ship_attic_revisit)

presets_gtmax_wrecked_ship_pancake_room:
    %cm_preset("Pancake Room", #preset_names_pancake_room, #preset_gtmax_wrecked_ship_pancake_room)

presets_gtmax_wrecked_ship_bowling_spark:
    %cm_preset("Bowling Spark", #preset_names_bowling_spark, #preset_gtmax_wrecked_ship_bowling_spark)

presets_gtmax_wrecked_ship_ocean_revisit:
    %cm_preset("Ocean Revisit", #preset_names_ocean_revisit, #preset_gtmax_wrecked_ship_ocean_revisit)


; Brinstar Cleanup
presets_gtmax_brinstar_cleanup_crateria_power_bombs:
    %cm_preset("Crateria Power Bombs", #preset_names_crateria_power_bombs, #preset_gtmax_brinstar_cleanup_crateria_power_bombs)

presets_gtmax_brinstar_cleanup_landing_site_revisit:
    %cm_preset("Landing Site Revisit", #preset_names_landing_site_revisit, #preset_gtmax_brinstar_cleanup_landing_site_revisit)

presets_gtmax_brinstar_cleanup_gauntlet_etank:
    %cm_preset("Gauntlet E-Tank", #preset_names_gauntlet_etank, #preset_gtmax_brinstar_cleanup_gauntlet_etank)

presets_gtmax_brinstar_cleanup_crumble_blocks:
    %cm_preset("Crumble Blocks", #preset_names_crumble_blocks, #preset_gtmax_brinstar_cleanup_crumble_blocks)

presets_gtmax_brinstar_cleanup_kago_mushroom_room:
    %cm_preset("Kago Mushroom Room", #preset_names_kago_mushroom_room, #preset_gtmax_brinstar_cleanup_kago_mushroom_room)

presets_gtmax_brinstar_cleanup_green_brinstar_revisit:
    %cm_preset("Green Brinstar Revisit", #preset_names_green_brinstar_revisit, #preset_gtmax_brinstar_cleanup_green_brinstar_revisit)

presets_gtmax_brinstar_cleanup_brinstar_reserve_tank:
    %cm_preset("Brinstar Reserve Tank", #preset_names_brinstar_reserve_tank, #preset_gtmax_brinstar_cleanup_brinstar_reserve_tank)

presets_gtmax_brinstar_cleanup_reverse_mockball:
    %cm_preset("Reverse Mockball", #preset_names_reverse_mockball, #preset_gtmax_brinstar_cleanup_reverse_mockball)

presets_gtmax_brinstar_cleanup_green_shaft_descent:
    %cm_preset("Green Shaft Descent", #preset_names_green_shaft_descent, #preset_gtmax_brinstar_cleanup_green_shaft_descent)

presets_gtmax_brinstar_cleanup_green_brinstar_beetoms:
    %cm_preset("Green Brinstar Beetoms", #preset_names_green_brinstar_beetoms, #preset_gtmax_brinstar_cleanup_green_brinstar_beetoms)

presets_gtmax_brinstar_cleanup_etecoon_etank_room:
    %cm_preset("Etecoon E-Tank Room", #preset_names_etecoon_etank_room, #preset_gtmax_brinstar_cleanup_etecoon_etank_room)

presets_gtmax_brinstar_cleanup_etecoon_room:
    %cm_preset("Etecoon Room", #preset_names_etecoon_room, #preset_gtmax_brinstar_cleanup_etecoon_room)

presets_gtmax_brinstar_cleanup_green_shaft_final:
    %cm_preset("Green Shaft Final", #preset_names_green_shaft_final, #preset_gtmax_brinstar_cleanup_green_shaft_final)

presets_gtmax_brinstar_cleanup_dachora_room_revisit:
    %cm_preset("Dachora Room Revisit", #preset_names_dachora_room_revisit, #preset_gtmax_brinstar_cleanup_dachora_room_revisit)

presets_gtmax_brinstar_cleanup_big_pink_revisit:
    %cm_preset("Big Pink Revisit", #preset_names_big_pink_revisit, #preset_gtmax_brinstar_cleanup_big_pink_revisit)

presets_gtmax_brinstar_cleanup_mission_impossible:
    %cm_preset("Mission Impossible", #preset_names_mission_impossible, #preset_gtmax_brinstar_cleanup_mission_impossible)

presets_gtmax_brinstar_cleanup_leaving_pink_etank:
    %cm_preset("Leaving Pink E-Tank", #preset_names_leaving_pink_etank, #preset_gtmax_brinstar_cleanup_leaving_pink_etank)

presets_gtmax_brinstar_cleanup_leaving_spore_spawn_supers:
    %cm_preset("Leaving Spore Spawn Supers", #preset_names_leaving_spore_spawn_supers, #preset_gtmax_brinstar_cleanup_leaving_spore_spawn_supers)

presets_gtmax_brinstar_cleanup_waterway_etank:
    %cm_preset("Waterway E-Tank", #preset_names_waterway_etank, #preset_gtmax_brinstar_cleanup_waterway_etank)


; Blue Brinstar Cleanup
presets_gtmax_blue_brinstar_cleanup_green_hill_zone_revisit:
    %cm_preset("Green Hill Zone Revisit", #preset_names_green_hill_zone_revisit, #preset_gtmax_blue_brinstar_cleanup_green_hill_zone_revisit)

presets_gtmax_blue_brinstar_cleanup_blue_brinstar_hoppers:
    %cm_preset("Blue Brinstar Hoppers", #preset_names_blue_brinstar_hoppers, #preset_gtmax_blue_brinstar_cleanup_blue_brinstar_hoppers)

presets_gtmax_blue_brinstar_cleanup_billy_mays:
    %cm_preset("Billy Mays", #preset_names_billy_mays, #preset_gtmax_blue_brinstar_cleanup_billy_mays)

presets_gtmax_blue_brinstar_cleanup_leaving_blue_brinstar:
    %cm_preset("Leaving Blue Brinstar", #preset_names_leaving_blue_brinstar, #preset_gtmax_blue_brinstar_cleanup_leaving_blue_brinstar)

presets_gtmax_blue_brinstar_cleanup_pit_room_final_spark:
    %cm_preset("Pit Room Final (Spark)", #preset_names_pit_room_final_spark, #preset_gtmax_blue_brinstar_cleanup_pit_room_final_spark)

presets_gtmax_blue_brinstar_cleanup_climb_supers:
    %cm_preset("Climb Supers", #preset_names_climb_supers, #preset_gtmax_blue_brinstar_cleanup_climb_supers)

presets_gtmax_blue_brinstar_cleanup_to_final_missiles:
    %cm_preset("To Final Missiles", #preset_names_to_final_missiles, #preset_gtmax_blue_brinstar_cleanup_to_final_missiles)

presets_gtmax_blue_brinstar_cleanup_parlor_missiles:
    %cm_preset("Parlor Missiles", #preset_names_parlor_missiles, #preset_gtmax_blue_brinstar_cleanup_parlor_missiles)

presets_gtmax_blue_brinstar_cleanup_parlor_again:
    %cm_preset("Parlor Again", #preset_names_parlor_again, #preset_gtmax_blue_brinstar_cleanup_parlor_again)

presets_gtmax_blue_brinstar_cleanup_terminator_etank:
    %cm_preset("Terminator E-Tank", #preset_names_terminator_etank, #preset_gtmax_blue_brinstar_cleanup_terminator_etank)


; Tourian
presets_gtmax_tourian_tourian_elevator_room:
    %cm_preset("Tourian Elevator Room", #preset_names_tourian_elevator_room, #preset_gtmax_tourian_tourian_elevator_room)

presets_gtmax_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_names_metroids_1, #preset_gtmax_tourian_metroids_1)

presets_gtmax_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_names_metroids_2, #preset_gtmax_tourian_metroids_2)

presets_gtmax_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_names_metroids_3, #preset_gtmax_tourian_metroids_3)

presets_gtmax_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_names_metroids_4, #preset_gtmax_tourian_metroids_4)

presets_gtmax_tourian_giant_hoppers:
    %cm_preset("Giant Hoppers", #preset_names_giant_hoppers, #preset_gtmax_tourian_giant_hoppers)

presets_gtmax_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_names_baby_skip, #preset_gtmax_tourian_baby_skip)

presets_gtmax_tourian_gadora_room:
    %cm_preset("Gadora Room", #preset_names_gadora_room, #preset_gtmax_tourian_gadora_room)

presets_gtmax_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_names_zeb_skip, #preset_gtmax_tourian_zeb_skip)

presets_gtmax_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_names_mother_brain_2, #preset_gtmax_tourian_mother_brain_2)

presets_gtmax_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_names_zebes_escape, #preset_gtmax_tourian_zebes_escape)

presets_gtmax_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_names_escape_room_3, #preset_gtmax_tourian_escape_room_3)

presets_gtmax_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_names_escape_room_4, #preset_gtmax_tourian_escape_room_4)

presets_gtmax_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_names_escape_climb, #preset_gtmax_tourian_escape_climb)

presets_gtmax_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_names_escape_parlor, #preset_gtmax_tourian_escape_parlor)

