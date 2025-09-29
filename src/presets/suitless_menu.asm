PresetsMenuSuitless:
    dw #presets_goto_suitless_bombs
    dw #presets_goto_suitless_power_bombs
    dw #presets_goto_suitless_xray
    dw #presets_goto_suitless_warehouse
    dw #presets_goto_suitless_upper_norfair_1
    dw #presets_goto_suitless_upper_norfair_2
    dw #presets_goto_suitless_maridia_predraygon
    dw #presets_goto_suitless_maridia_cleanup_1
    dw #presets_goto_suitless_maridia_cleanup_2
    dw #presets_goto_suitless_forgotten_highway
    dw #presets_goto_suitless_wrecked_ship
    dw #presets_goto_suitless_red_tower_cleanup
    dw #presets_goto_suitless_ridley
    dw #presets_goto_suitless_norfair_cleanup
    dw #presets_goto_suitless_final_cleanup
    dw #presets_goto_suitless_tourian
    dw #$0000
    %cm_header("PRESETS FOR SUITLESS")

presets_goto_suitless_bombs:
    %cm_submenu("Bombs", #presets_submenu_suitless_bombs)

presets_goto_suitless_power_bombs:
    %cm_submenu("Power Bombs", #presets_submenu_suitless_power_bombs)

presets_goto_suitless_xray:
    %cm_submenu("X-Ray", #presets_submenu_suitless_xray)

presets_goto_suitless_warehouse:
    %cm_submenu("Warehouse", #presets_submenu_suitless_warehouse)

presets_goto_suitless_upper_norfair_1:
    %cm_submenu("Upper Norfair 1", #presets_submenu_suitless_upper_norfair_1)

presets_goto_suitless_upper_norfair_2:
    %cm_submenu("Upper Norfair 2", #presets_submenu_suitless_upper_norfair_2)

presets_goto_suitless_maridia_predraygon:
    %cm_submenu("Maridia Pre-Draygon", #presets_submenu_suitless_maridia_predraygon)

presets_goto_suitless_maridia_cleanup_1:
    %cm_submenu("Maridia Cleanup 1", #presets_submenu_suitless_maridia_cleanup_1)

presets_goto_suitless_maridia_cleanup_2:
    %cm_submenu("Maridia Cleanup 2", #presets_submenu_suitless_maridia_cleanup_2)

presets_goto_suitless_forgotten_highway:
    %cm_submenu("Forgotten Highway", #presets_submenu_suitless_forgotten_highway)

presets_goto_suitless_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_suitless_wrecked_ship)

presets_goto_suitless_red_tower_cleanup:
    %cm_submenu("Red Tower Cleanup", #presets_submenu_suitless_red_tower_cleanup)

presets_goto_suitless_ridley:
    %cm_submenu("Ridley", #presets_submenu_suitless_ridley)

presets_goto_suitless_norfair_cleanup:
    %cm_submenu("Norfair Cleanup", #presets_submenu_suitless_norfair_cleanup)

presets_goto_suitless_final_cleanup:
    %cm_submenu("Final Cleanup", #presets_submenu_suitless_final_cleanup)

presets_goto_suitless_tourian:
    %cm_submenu("Tourian", #presets_submenu_suitless_tourian)

presets_submenu_suitless_bombs:
    dw #presets_suitless_bombs_ceres_elevator
    dw #presets_suitless_bombs_ceres_escape
    dw #presets_suitless_bombs_magnet_stairs
    dw #presets_suitless_bombs_escape_elevator
    dw #presets_suitless_bombs_ship
    dw #presets_suitless_bombs_parlor_down
    dw #presets_suitless_bombs_climb_down
    dw #presets_suitless_bombs_pit_room_down
    dw #presets_suitless_bombs_morph
    dw #presets_suitless_bombs_construction_zone_down
    dw #presets_suitless_bombs_construction_zone_up
    dw #presets_suitless_bombs_pit_room_up
    dw #presets_suitless_bombs_climb_up
    dw #presets_suitless_bombs_parlor_up
    dw #presets_suitless_bombs_flyway
    dw #presets_suitless_bombs_bomb_torizo
    dw #$0000
    %cm_header("BOMBS")

presets_submenu_suitless_power_bombs:
    dw #presets_suitless_power_bombs_alcatraz
    dw #presets_suitless_power_bombs_terminator
    dw #presets_suitless_power_bombs_green_pirate_shaft
    dw #presets_suitless_power_bombs_mushroom_kingdom
    dw #presets_suitless_power_bombs_green_brinstar_elevator
    dw #presets_suitless_power_bombs_early_supers
    dw #presets_suitless_power_bombs_brinstar_reserve
    dw #presets_suitless_power_bombs_reverse_mockball
    dw #presets_suitless_power_bombs_moondance
    dw #presets_suitless_power_bombs_etecoon_beetoms
    dw #presets_suitless_power_bombs_etecoon_etank
    dw #presets_suitless_power_bombs_etecoon_dboosts
    dw #presets_suitless_power_bombs_etecoon_climb
    dw #$0000
    %cm_header("POWER BOMBS")

presets_submenu_suitless_xray:
    dw #presets_suitless_xray_dachora_room_revisit
    dw #presets_suitless_xray_big_pink
    dw #presets_suitless_xray_mission_impossible
    dw #presets_suitless_xray_spore_spawn_skip
    dw #presets_suitless_xray_spore_spawn_farm_in
    dw #presets_suitless_xray_wave_gate
    dw #presets_suitless_xray_wave_gate_out
    dw #presets_suitless_xray_big_pink_revisit
    dw #presets_suitless_xray_green_hill_zone
    dw #presets_suitless_xray_blue_brin_hoppers
    dw #presets_suitless_xray_green_hill_zone_revisit
    dw #presets_suitless_xray_noob_bridge
    dw #presets_suitless_xray_red_tower
    dw #presets_suitless_xray_xray_dboost
    dw #presets_suitless_xray_xray
    dw #presets_suitless_xray_xray_escape
    dw #$0000
    %cm_header("X-RAY")

presets_submenu_suitless_warehouse:
    dw #presets_suitless_warehouse_red_tower_down
    dw #presets_suitless_warehouse_skree_boost
    dw #presets_suitless_warehouse_below_spazer
    dw #presets_suitless_warehouse_below_spazer_revisit
    dw #presets_suitless_warehouse_warehouse_entrance
    dw #presets_suitless_warehouse_warehouse_zeelas
    dw #presets_suitless_warehouse_warehouse_kihunters
    dw #presets_suitless_warehouse_minikraid
    dw #presets_suitless_warehouse_kraid
    dw #presets_suitless_warehouse_kraid_exit
    dw #presets_suitless_warehouse_minikraid_revisit
    dw #presets_suitless_warehouse_kihunters_revisit
    dw #presets_suitless_warehouse_kraid_etank
    dw #presets_suitless_warehouse_kraid_zeelas_revisit
    dw #presets_suitless_warehouse_mouthball
    dw #$0000
    %cm_header("WAREHOUSE")

presets_submenu_suitless_upper_norfair_1:
    dw #presets_suitless_upper_norfair_1_ice_mockball
    dw #presets_suitless_upper_norfair_1_ice_trippers_in
    dw #presets_suitless_upper_norfair_1_ice_snakes_in
    dw #presets_suitless_upper_norfair_1_ice_snakes_out
    dw #presets_suitless_upper_norfair_1_ice_escape
    dw #presets_suitless_upper_norfair_1_business_center_down
    dw #presets_suitless_upper_norfair_1_hijump_etank
    dw #presets_suitless_upper_norfair_1_hijump_boots
    dw #presets_suitless_upper_norfair_1_hijump_etank_revisit
    dw #presets_suitless_upper_norfair_1_business_center_up
    dw #presets_suitless_upper_norfair_1_precathedral
    dw #presets_suitless_upper_norfair_1_cathedral
    dw #presets_suitless_upper_norfair_1_rising_tide
    dw #presets_suitless_upper_norfair_1_bubble_mountain
    dw #presets_suitless_upper_norfair_1_bat_cave
    dw #presets_suitless_upper_norfair_1_speed_hallway
    dw #presets_suitless_upper_norfair_1_speed_hallway_out
    dw #presets_suitless_upper_norfair_1_bat_cave_out
    dw #presets_suitless_upper_norfair_1_single_chamber
    dw #presets_suitless_upper_norfair_1_double_chamber
    dw #$0000
    %cm_header("UPPER NORFAIR 1")

presets_submenu_suitless_upper_norfair_2:
    dw #presets_suitless_upper_norfair_2_double_chamber_out
    dw #presets_suitless_upper_norfair_2_single_chamber_out
    dw #presets_suitless_upper_norfair_2_bubble_mountain_down
    dw #presets_suitless_upper_norfair_2_croc_gate
    dw #presets_suitless_upper_norfair_2_red_pirate_shaft
    dw #presets_suitless_upper_norfair_2_acid_snakes_tunnel
    dw #presets_suitless_upper_norfair_2_crocomire
    dw #presets_suitless_upper_norfair_2_croc_power_bombs
    dw #presets_suitless_upper_norfair_2_croc_shaft_down
    dw #presets_suitless_upper_norfair_2_indiana_jones
    dw #presets_suitless_upper_norfair_2_grapple_escape
    dw #presets_suitless_upper_norfair_2_croc_shaft_up
    dw #presets_suitless_upper_norfair_2_cosine_missile
    dw #presets_suitless_upper_norfair_2_croc_farm
    dw #presets_suitless_upper_norfair_2_crocomire_revisit
    dw #presets_suitless_upper_norfair_2_croc_speedway_up
    dw #presets_suitless_upper_norfair_2_croc_escape
    dw #presets_suitless_upper_norfair_2_rmode_blue_suit
    dw #$0000
    %cm_header("UPPER NORFAIR 2")

presets_submenu_suitless_maridia_predraygon:
    dw #presets_suitless_maridia_predraygon_maridia_tube
    dw #presets_suitless_maridia_predraygon_mt_everest
    dw #presets_suitless_maridia_predraygon_crab_supers
    dw #presets_suitless_maridia_predraygon_mt_everest_2
    dw #presets_suitless_maridia_predraygon_fish_tank
    dw #presets_suitless_maridia_predraygon_mama_turtle
    dw #presets_suitless_maridia_predraygon_fish_tank_revisit
    dw #presets_suitless_maridia_predraygon_mt_everest_3
    dw #presets_suitless_maridia_predraygon_crab_shaft
    dw #presets_suitless_maridia_predraygon_aqueduct
    dw #presets_suitless_maridia_predraygon_prebotwoon_hallway
    dw #presets_suitless_maridia_predraygon_botwoon
    dw #presets_suitless_maridia_predraygon_postbotwoon_hallway
    dw #presets_suitless_maridia_predraygon_halfie_climb_room
    dw #presets_suitless_maridia_predraygon_full_halfie
    dw #presets_suitless_maridia_predraygon_precious_room
    dw #presets_suitless_maridia_predraygon_draygon
    dw #$0000
    %cm_header("MARIDIA PRE-DRAYGON")

presets_submenu_suitless_maridia_cleanup_1:
    dw #presets_suitless_maridia_cleanup_1_draygon_escape
    dw #presets_suitless_maridia_cleanup_1_reverse_colosseum
    dw #presets_suitless_maridia_cleanup_1_halfie_climb_down
    dw #presets_suitless_maridia_cleanup_1_reverse_botwoon_etank
    dw #presets_suitless_maridia_cleanup_1_aqueduct_revisit
    dw #presets_suitless_maridia_cleanup_1_left_sand_pit
    dw #presets_suitless_maridia_cleanup_1_west_sand_hall
    dw #presets_suitless_maridia_cleanup_1_east_sand_hall
    dw #presets_suitless_maridia_cleanup_1_pants_room
    dw #presets_suitless_maridia_cleanup_1_shaktool
    dw #presets_suitless_maridia_cleanup_1_rjump
    dw #presets_suitless_maridia_cleanup_1_pants_room_corner
    dw #presets_suitless_maridia_cleanup_1_east_sand_hall_revisit
    dw #presets_suitless_maridia_cleanup_1_west_sand_hall_revisit
    dw #presets_suitless_maridia_cleanup_1_crab_hole
    dw #presets_suitless_maridia_cleanup_1_crab_ggg
    dw #$0000
    %cm_header("MARIDIA CLEANUP 1")

presets_submenu_suitless_maridia_cleanup_2:
    dw #presets_suitless_maridia_cleanup_2_main_street_revisit
    dw #presets_suitless_maridia_cleanup_2_fish_tank_sbj
    dw #presets_suitless_maridia_cleanup_2_mt_everest_final
    dw #presets_suitless_maridia_cleanup_2_crab_shaft_up
    dw #presets_suitless_maridia_cleanup_2_beach
    dw #presets_suitless_maridia_cleanup_2_swiss_cheese_room
    dw #presets_suitless_maridia_cleanup_2_watering_hole
    dw #presets_suitless_maridia_cleanup_2_swiss_cheese_revisit
    dw #presets_suitless_maridia_cleanup_2_beach_revisit
    dw #presets_suitless_maridia_cleanup_2_crab_shaft_down
    dw #presets_suitless_maridia_cleanup_2_aqueduct_final
    dw #presets_suitless_maridia_cleanup_2_right_sand_pit
    dw #presets_suitless_maridia_cleanup_2_east_sand_hall_final
    dw #presets_suitless_maridia_cleanup_2_oasis
    dw #presets_suitless_maridia_cleanup_2_plasma_spark_room
    dw #presets_suitless_maridia_cleanup_2_kassiuz_room_up
    dw #presets_suitless_maridia_cleanup_2_plasma
    dw #presets_suitless_maridia_cleanup_2_kassiuz_room_down
    dw #presets_suitless_maridia_cleanup_2_plasma_spark_revisit
    dw #$0000
    %cm_header("MARIDIA CLEANUP 2")

presets_submenu_suitless_forgotten_highway:
    dw #presets_suitless_forgotten_highway_thread_the_needle_room
    dw #presets_suitless_forgotten_highway_forgotten_elevator
    dw #presets_suitless_forgotten_highway_crab_maze
    dw #presets_suitless_forgotten_highway_kago_room
    dw #presets_suitless_forgotten_highway_east_ocean
    dw #presets_suitless_forgotten_highway_electric_not_death
    dw #presets_suitless_forgotten_highway_sponge_bath
    dw #presets_suitless_forgotten_highway_shaft_down
    dw #presets_suitless_forgotten_highway_basement
    dw #presets_suitless_forgotten_highway_phantoon
    dw #$0000
    %cm_header("FORGOTTEN HIGHWAY")

presets_submenu_suitless_wrecked_ship:
    dw #presets_suitless_wrecked_ship_shaft_to_supers
    dw #presets_suitless_wrecked_ship_right_supers
    dw #presets_suitless_wrecked_ship_left_supers
    dw #presets_suitless_wrecked_ship_shaft_to_sponge_bath
    dw #presets_suitless_wrecked_ship_sponge_bath
    dw #presets_suitless_wrecked_ship_electric_death_room
    dw #presets_suitless_wrecked_ship_wrecked_ship_etank
    dw #presets_suitless_wrecked_ship_electric_death_down
    dw #presets_suitless_wrecked_ship_spiky_room_revisit
    dw #presets_suitless_wrecked_ship_shaft_to_attic
    dw #presets_suitless_wrecked_ship_attic
    dw #presets_suitless_wrecked_ship_antispeedrun_robots
    dw #presets_suitless_wrecked_ship_attic_revisit
    dw #presets_suitless_wrecked_ship_west_ocean
    dw #presets_suitless_wrecked_ship_puddles
    dw #presets_suitless_wrecked_ship_bowling
    dw #presets_suitless_wrecked_ship_postbowling
    dw #presets_suitless_wrecked_ship_west_ocean_revisit
    dw #presets_suitless_wrecked_ship_moat
    dw #presets_suitless_wrecked_ship_crateria_kihunters
    dw #presets_suitless_wrecked_ship_red_tower_elevator
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_suitless_red_tower_cleanup:
    dw #presets_suitless_red_tower_cleanup_beta_power_bombs
    dw #presets_suitless_red_tower_cleanup_alpha_power_bombs
    dw #presets_suitless_red_tower_cleanup_caterpillars_up
    dw #presets_suitless_red_tower_cleanup_hellway
    dw #presets_suitless_red_tower_cleanup_red_tower_revisit
    dw #presets_suitless_red_tower_cleanup_skree_boost_revisit
    dw #presets_suitless_red_tower_cleanup_below_spazer_revisit
    dw #presets_suitless_red_tower_cleanup_upper_norfair_elevator
    dw #presets_suitless_red_tower_cleanup_ice_gates_revisit
    dw #presets_suitless_red_tower_cleanup_crumble_tower
    dw #presets_suitless_red_tower_cleanup_croc_speedway
    dw #presets_suitless_red_tower_cleanup_nutella_refill
    dw #presets_suitless_red_tower_cleanup_kronic_boost_room
    dw #presets_suitless_red_tower_cleanup_lava_dive
    dw #$0000
    %cm_header("RED TOWER CLEANUP")

presets_submenu_suitless_ridley:
    dw #presets_suitless_ridley_lower_norfair_elevator
    dw #presets_suitless_ridley_acid_chozo
    dw #presets_suitless_ridley_golden_torizo
    dw #presets_suitless_ridley_screw_attack
    dw #presets_suitless_ridley_gt_refill_exit
    dw #presets_suitless_ridley_fast_ripper_room
    dw #presets_suitless_ridley_worst_room_in_the_game
    dw #presets_suitless_ridley_mickey_mouse_room
    dw #presets_suitless_ridley_amphitheatre
    dw #presets_suitless_ridley_firefleas
    dw #presets_suitless_ridley_kihunter_stairs_down
    dw #presets_suitless_ridley_wasteland
    dw #presets_suitless_ridley_metal_pirates
    dw #presets_suitless_ridley_plowerhouse
    dw #presets_suitless_ridley_preridley_room
    dw #presets_suitless_ridley_ridley
    dw #$0000
    %cm_header("RIDLEY")

presets_submenu_suitless_norfair_cleanup:
    dw #presets_suitless_norfair_cleanup_ridley_escape
    dw #presets_suitless_norfair_cleanup_reverse_plowerhouse
    dw #presets_suitless_norfair_cleanup_reverse_metal_pirates
    dw #presets_suitless_norfair_cleanup_wasteland_revisit
    dw #presets_suitless_norfair_cleanup_kihunter_stairs_up
    dw #presets_suitless_norfair_cleanup_firefleas_up
    dw #presets_suitless_norfair_cleanup_hotarubi_missile_room
    dw #presets_suitless_norfair_cleanup_hotarubi_revisit
    dw #presets_suitless_norfair_cleanup_three_musketeers
    dw #presets_suitless_norfair_cleanup_single_chamber
    dw #presets_suitless_norfair_cleanup_bubble_mountain_return
    dw #presets_suitless_norfair_cleanup_norfair_reserve_back
    dw #presets_suitless_norfair_cleanup_bubble_mountain_final
    dw #presets_suitless_norfair_cleanup_frog_speedway
    dw #presets_suitless_norfair_cleanup_business_center_final
    dw #presets_suitless_norfair_cleanup_norfair_elevator
    dw #$0000
    %cm_header("NORFAIR CLEANUP")

presets_submenu_suitless_final_cleanup:
    dw #presets_suitless_final_cleanup_below_spazer_final
    dw #presets_suitless_final_cleanup_red_tower_final
    dw #presets_suitless_final_cleanup_reverse_slinky
    dw #presets_suitless_final_cleanup_big_pink_return
    dw #presets_suitless_final_cleanup_waterway
    dw #presets_suitless_final_cleanup_big_pink_final
    dw #presets_suitless_final_cleanup_blue_brin_hoppers_revisit
    dw #presets_suitless_final_cleanup_construction_zone_revisit
    dw #presets_suitless_final_cleanup_beta_missile_room
    dw #presets_suitless_final_cleanup_john_cena_bridge
    dw #presets_suitless_final_cleanup_beta_missile_revisit
    dw #presets_suitless_final_cleanup_pit_room_final
    dw #presets_suitless_final_cleanup_climb_supers
    dw #presets_suitless_final_cleanup_parlor_return
    dw #presets_suitless_final_cleanup_230_mockball
    dw #presets_suitless_final_cleanup_parlor_revisit
    dw #presets_suitless_final_cleanup_landing_site_revisit
    dw #presets_suitless_final_cleanup_crateria_power_bombs
    dw #presets_suitless_final_cleanup_gauntlet_entry
    dw #presets_suitless_final_cleanup_gauntlet_etank
    dw #presets_suitless_final_cleanup_quickdrops
    dw #$0000
    %cm_header("FINAL CLEANUP")

presets_submenu_suitless_tourian:
    dw #presets_suitless_tourian_tourian_elevator
    dw #presets_suitless_tourian_metroids_1
    dw #presets_suitless_tourian_metroids_2
    dw #presets_suitless_tourian_metroids_3
    dw #presets_suitless_tourian_metroids_4
    dw #presets_suitless_tourian_baby_skip
    dw #presets_suitless_tourian_gadora_room
    dw #presets_suitless_tourian_zeb_skip
    dw #presets_suitless_tourian_mother_brain_2
    dw #presets_suitless_tourian_mother_brain_3
    dw #presets_suitless_tourian_zebes_escape
    dw #presets_suitless_tourian_blue_bomber
    dw #presets_suitless_tourian_leodox_room
    dw #presets_suitless_tourian_escape_climb
    dw #presets_suitless_tourian_escape_parlor
    dw #presets_suitless_tourian_landing_site
    dw #$0000
    %cm_header("TOURIAN")


; Bombs
presets_suitless_bombs_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_names_ceres_elevator, #preset_suitless_bombs_ceres_elevator)

presets_suitless_bombs_ceres_escape:
    %cm_preset("Ceres Escape", #preset_names_ceres_escape, #preset_suitless_bombs_ceres_escape)

presets_suitless_bombs_magnet_stairs:
    %cm_preset("Magnet Stairs", #preset_names_magnet_stairs, #preset_suitless_bombs_magnet_stairs)

presets_suitless_bombs_escape_elevator:
    %cm_preset("Escape Elevator", #preset_names_escape_elevator, #preset_suitless_bombs_escape_elevator)

presets_suitless_bombs_ship:
    %cm_preset("Ship", #preset_names_ship, #preset_suitless_bombs_ship)

presets_suitless_bombs_parlor_down:
    %cm_preset("Parlor Down", #preset_names_parlor_down, #preset_suitless_bombs_parlor_down)

presets_suitless_bombs_climb_down:
    %cm_preset("Climb Down", #preset_names_climb_down, #preset_suitless_bombs_climb_down)

presets_suitless_bombs_pit_room_down:
    %cm_preset("Pit Room Down", #preset_names_pit_room_down, #preset_suitless_bombs_pit_room_down)

presets_suitless_bombs_morph:
    %cm_preset("Morph", #preset_names_morph, #preset_suitless_bombs_morph)

presets_suitless_bombs_construction_zone_down:
    %cm_preset("Construction Zone Down", #preset_names_construction_zone_down, #preset_suitless_bombs_construction_zone_down)

presets_suitless_bombs_construction_zone_up:
    %cm_preset("Construction Zone Up", #preset_names_construction_zone_up, #preset_suitless_bombs_construction_zone_up)

presets_suitless_bombs_pit_room_up:
    %cm_preset("Pit Room Up", #preset_names_pit_room_up, #preset_suitless_bombs_pit_room_up)

presets_suitless_bombs_climb_up:
    %cm_preset("Climb Up", #preset_names_climb_up, #preset_suitless_bombs_climb_up)

presets_suitless_bombs_parlor_up:
    %cm_preset("Parlor Up", #preset_names_parlor_up, #preset_suitless_bombs_parlor_up)

presets_suitless_bombs_flyway:
    %cm_preset("Flyway", #preset_names_flyway, #preset_suitless_bombs_flyway)

presets_suitless_bombs_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_names_bomb_torizo, #preset_suitless_bombs_bomb_torizo)


; Power Bombs
presets_suitless_power_bombs_alcatraz:
    %cm_preset("Alcatraz", #preset_names_alcatraz, #preset_suitless_power_bombs_alcatraz)

presets_suitless_power_bombs_terminator:
    %cm_preset("Terminator", #preset_names_terminator, #preset_suitless_power_bombs_terminator)

presets_suitless_power_bombs_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_names_green_pirate_shaft, #preset_suitless_power_bombs_green_pirate_shaft)

presets_suitless_power_bombs_mushroom_kingdom:
    %cm_preset("Mushroom Kingdom", #preset_names_mushroom_kingdom, #preset_suitless_power_bombs_mushroom_kingdom)

presets_suitless_power_bombs_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_names_green_brinstar_elevator, #preset_suitless_power_bombs_green_brinstar_elevator)

presets_suitless_power_bombs_early_supers:
    %cm_preset("Early Supers", #preset_names_early_supers, #preset_suitless_power_bombs_early_supers)

presets_suitless_power_bombs_brinstar_reserve:
    %cm_preset("Brinstar Reserve", #preset_names_brinstar_reserve, #preset_suitless_power_bombs_brinstar_reserve)

presets_suitless_power_bombs_reverse_mockball:
    %cm_preset("Reverse Mockball", #preset_names_reverse_mockball, #preset_suitless_power_bombs_reverse_mockball)

presets_suitless_power_bombs_moondance:
    %cm_preset("Moondance", #preset_names_moondance, #preset_suitless_power_bombs_moondance)

presets_suitless_power_bombs_etecoon_beetoms:
    %cm_preset("Etecoon Beetoms", #preset_names_etecoon_beetoms, #preset_suitless_power_bombs_etecoon_beetoms)

presets_suitless_power_bombs_etecoon_etank:
    %cm_preset("Etecoon E-Tank", #preset_names_etecoon_etank, #preset_suitless_power_bombs_etecoon_etank)

presets_suitless_power_bombs_etecoon_dboosts:
    %cm_preset("Etecoon D-Boosts", #preset_names_etecoon_dboosts, #preset_suitless_power_bombs_etecoon_dboosts)

presets_suitless_power_bombs_etecoon_climb:
    %cm_preset("Etecoon Climb", #preset_names_etecoon_climb, #preset_suitless_power_bombs_etecoon_climb)


; X-Ray
presets_suitless_xray_dachora_room_revisit:
    %cm_preset("Dachora Room Revisit", #preset_names_dachora_room_revisit, #preset_suitless_xray_dachora_room_revisit)

presets_suitless_xray_big_pink:
    %cm_preset("Big Pink", #preset_names_big_pink, #preset_suitless_xray_big_pink)

presets_suitless_xray_mission_impossible:
    %cm_preset("Mission Impossible", #preset_names_mission_impossible, #preset_suitless_xray_mission_impossible)

presets_suitless_xray_spore_spawn_skip:
    %cm_preset("Spore Spawn Skip", #preset_names_spore_spawn_skip, #preset_suitless_xray_spore_spawn_skip)

presets_suitless_xray_spore_spawn_farm_in:
    %cm_preset("Spore Spawn Farm In", #preset_names_spore_spawn_farm_in, #preset_suitless_xray_spore_spawn_farm_in)

presets_suitless_xray_wave_gate:
    %cm_preset("Wave Gate", #preset_names_wave_gate, #preset_suitless_xray_wave_gate)

presets_suitless_xray_wave_gate_out:
    %cm_preset("Wave Gate Out", #preset_names_wave_gate_out, #preset_suitless_xray_wave_gate_out)

presets_suitless_xray_big_pink_revisit:
    %cm_preset("Big Pink Revisit", #preset_names_big_pink_revisit, #preset_suitless_xray_big_pink_revisit)

presets_suitless_xray_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_names_green_hill_zone, #preset_suitless_xray_green_hill_zone)

presets_suitless_xray_blue_brin_hoppers:
    %cm_preset("Blue Brin Hoppers", #preset_names_blue_brin_hoppers, #preset_suitless_xray_blue_brin_hoppers)

presets_suitless_xray_green_hill_zone_revisit:
    %cm_preset("Green Hill Zone Revisit", #preset_names_green_hill_zone_revisit, #preset_suitless_xray_green_hill_zone_revisit)

presets_suitless_xray_noob_bridge:
    %cm_preset("Noob Bridge", #preset_names_noob_bridge, #preset_suitless_xray_noob_bridge)

presets_suitless_xray_red_tower:
    %cm_preset("Red Tower", #preset_names_red_tower, #preset_suitless_xray_red_tower)

presets_suitless_xray_xray_dboost:
    %cm_preset("X-Ray D-Boost", #preset_names_xray_dboost, #preset_suitless_xray_xray_dboost)

presets_suitless_xray_xray:
    %cm_preset("X-Ray", #preset_names_xray, #preset_suitless_xray_xray)

presets_suitless_xray_xray_escape:
    %cm_preset("X-Ray Escape", #preset_names_xray_escape, #preset_suitless_xray_xray_escape)


; Warehouse
presets_suitless_warehouse_red_tower_down:
    %cm_preset("Red Tower Down", #preset_names_red_tower_down, #preset_suitless_warehouse_red_tower_down)

presets_suitless_warehouse_skree_boost:
    %cm_preset("Skree Boost", #preset_names_skree_boost, #preset_suitless_warehouse_skree_boost)

presets_suitless_warehouse_below_spazer:
    %cm_preset("Below Spazer", #preset_names_below_spazer, #preset_suitless_warehouse_below_spazer)

presets_suitless_warehouse_below_spazer_revisit:
    %cm_preset("Below Spazer Revisit", #preset_names_below_spazer_revisit, #preset_suitless_warehouse_below_spazer_revisit)

presets_suitless_warehouse_warehouse_entrance:
    %cm_preset("Warehouse Entrance", #preset_names_warehouse_entrance, #preset_suitless_warehouse_warehouse_entrance)

presets_suitless_warehouse_warehouse_zeelas:
    %cm_preset("Warehouse Zeelas", #preset_names_warehouse_zeelas, #preset_suitless_warehouse_warehouse_zeelas)

presets_suitless_warehouse_warehouse_kihunters:
    %cm_preset("Warehouse Kihunters", #preset_names_warehouse_kihunters, #preset_suitless_warehouse_warehouse_kihunters)

presets_suitless_warehouse_minikraid:
    %cm_preset("Mini-Kraid", #preset_names_minikraid, #preset_suitless_warehouse_minikraid)

presets_suitless_warehouse_kraid:
    %cm_preset("Kraid", #preset_names_kraid, #preset_suitless_warehouse_kraid)

presets_suitless_warehouse_kraid_exit:
    %cm_preset("Kraid Exit", #preset_names_kraid_exit, #preset_suitless_warehouse_kraid_exit)

presets_suitless_warehouse_minikraid_revisit:
    %cm_preset("Mini-Kraid Revisit", #preset_names_minikraid_revisit, #preset_suitless_warehouse_minikraid_revisit)

presets_suitless_warehouse_kihunters_revisit:
    %cm_preset("Kihunters Revisit", #preset_names_kihunters_revisit, #preset_suitless_warehouse_kihunters_revisit)

presets_suitless_warehouse_kraid_etank:
    %cm_preset("Kraid E-Tank", #preset_names_kraid_etank, #preset_suitless_warehouse_kraid_etank)

presets_suitless_warehouse_kraid_zeelas_revisit:
    %cm_preset("Kraid Zeelas Revisit", #preset_names_kraid_zeelas_revisit, #preset_suitless_warehouse_kraid_zeelas_revisit)

presets_suitless_warehouse_mouthball:
    %cm_preset("Mouthball", #preset_names_mouthball, #preset_suitless_warehouse_mouthball)


; Upper Norfair 1
presets_suitless_upper_norfair_1_ice_mockball:
    %cm_preset("Ice Mockball", #preset_names_ice_mockball, #preset_suitless_upper_norfair_1_ice_mockball)

presets_suitless_upper_norfair_1_ice_trippers_in:
    %cm_preset("Ice Trippers In", #preset_names_ice_trippers_in, #preset_suitless_upper_norfair_1_ice_trippers_in)

presets_suitless_upper_norfair_1_ice_snakes_in:
    %cm_preset("Ice Snakes In", #preset_names_ice_snakes_in, #preset_suitless_upper_norfair_1_ice_snakes_in)

presets_suitless_upper_norfair_1_ice_snakes_out:
    %cm_preset("Ice Snakes Out", #preset_names_ice_snakes_out, #preset_suitless_upper_norfair_1_ice_snakes_out)

presets_suitless_upper_norfair_1_ice_escape:
    %cm_preset("Ice Escape", #preset_names_ice_escape, #preset_suitless_upper_norfair_1_ice_escape)

presets_suitless_upper_norfair_1_business_center_down:
    %cm_preset("Business Center Down", #preset_names_business_center_down, #preset_suitless_upper_norfair_1_business_center_down)

presets_suitless_upper_norfair_1_hijump_etank:
    %cm_preset("Hi-Jump E-Tank", #preset_names_hijump_etank, #preset_suitless_upper_norfair_1_hijump_etank)

presets_suitless_upper_norfair_1_hijump_boots:
    %cm_preset("Hi-Jump Boots", #preset_names_hijump_boots, #preset_suitless_upper_norfair_1_hijump_boots)

presets_suitless_upper_norfair_1_hijump_etank_revisit:
    %cm_preset("Hi-Jump E-Tank Revisit", #preset_names_hijump_etank_revisit, #preset_suitless_upper_norfair_1_hijump_etank_revisit)

presets_suitless_upper_norfair_1_business_center_up:
    %cm_preset("Business Center Up", #preset_names_business_center_up, #preset_suitless_upper_norfair_1_business_center_up)

presets_suitless_upper_norfair_1_precathedral:
    %cm_preset("Pre-Cathedral", #preset_names_precathedral, #preset_suitless_upper_norfair_1_precathedral)

presets_suitless_upper_norfair_1_cathedral:
    %cm_preset("Cathedral", #preset_names_cathedral, #preset_suitless_upper_norfair_1_cathedral)

presets_suitless_upper_norfair_1_rising_tide:
    %cm_preset("Rising Tide", #preset_names_rising_tide, #preset_suitless_upper_norfair_1_rising_tide)

presets_suitless_upper_norfair_1_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_names_bubble_mountain, #preset_suitless_upper_norfair_1_bubble_mountain)

presets_suitless_upper_norfair_1_bat_cave:
    %cm_preset("Bat Cave", #preset_names_bat_cave, #preset_suitless_upper_norfair_1_bat_cave)

presets_suitless_upper_norfair_1_speed_hallway:
    %cm_preset("Speed Hallway", #preset_names_speed_hallway, #preset_suitless_upper_norfair_1_speed_hallway)

presets_suitless_upper_norfair_1_speed_hallway_out:
    %cm_preset("Speed Hallway Out", #preset_names_speed_hallway_out, #preset_suitless_upper_norfair_1_speed_hallway_out)

presets_suitless_upper_norfair_1_bat_cave_out:
    %cm_preset("Bat Cave Out", #preset_names_bat_cave_out, #preset_suitless_upper_norfair_1_bat_cave_out)

presets_suitless_upper_norfair_1_single_chamber:
    %cm_preset("Single Chamber", #preset_names_single_chamber, #preset_suitless_upper_norfair_1_single_chamber)

presets_suitless_upper_norfair_1_double_chamber:
    %cm_preset("Double Chamber", #preset_names_double_chamber, #preset_suitless_upper_norfair_1_double_chamber)


; Upper Norfair 2
presets_suitless_upper_norfair_2_double_chamber_out:
    %cm_preset("Double Chamber Out", #preset_names_double_chamber_out, #preset_suitless_upper_norfair_2_double_chamber_out)

presets_suitless_upper_norfair_2_single_chamber_out:
    %cm_preset("Single Chamber Out", #preset_names_single_chamber_out, #preset_suitless_upper_norfair_2_single_chamber_out)

presets_suitless_upper_norfair_2_bubble_mountain_down:
    %cm_preset("Bubble Mountain Down", #preset_names_bubble_mountain_down, #preset_suitless_upper_norfair_2_bubble_mountain_down)

presets_suitless_upper_norfair_2_croc_gate:
    %cm_preset("Croc Gate", #preset_names_croc_gate, #preset_suitless_upper_norfair_2_croc_gate)

presets_suitless_upper_norfair_2_red_pirate_shaft:
    %cm_preset("Red Pirate Shaft", #preset_names_red_pirate_shaft, #preset_suitless_upper_norfair_2_red_pirate_shaft)

presets_suitless_upper_norfair_2_acid_snakes_tunnel:
    %cm_preset("Acid Snakes Tunnel", #preset_names_acid_snakes_tunnel, #preset_suitless_upper_norfair_2_acid_snakes_tunnel)

presets_suitless_upper_norfair_2_crocomire:
    %cm_preset("Crocomire", #preset_names_crocomire, #preset_suitless_upper_norfair_2_crocomire)

presets_suitless_upper_norfair_2_croc_power_bombs:
    %cm_preset("Croc Power Bombs", #preset_names_croc_power_bombs, #preset_suitless_upper_norfair_2_croc_power_bombs)

presets_suitless_upper_norfair_2_croc_shaft_down:
    %cm_preset("Croc Shaft Down", #preset_names_croc_shaft_down, #preset_suitless_upper_norfair_2_croc_shaft_down)

presets_suitless_upper_norfair_2_indiana_jones:
    %cm_preset("Indiana Jones", #preset_names_indiana_jones, #preset_suitless_upper_norfair_2_indiana_jones)

presets_suitless_upper_norfair_2_grapple_escape:
    %cm_preset("Grapple Escape", #preset_names_grapple_escape, #preset_suitless_upper_norfair_2_grapple_escape)

presets_suitless_upper_norfair_2_croc_shaft_up:
    %cm_preset("Croc Shaft Up", #preset_names_croc_shaft_up, #preset_suitless_upper_norfair_2_croc_shaft_up)

presets_suitless_upper_norfair_2_cosine_missile:
    %cm_preset("Cosine Missile", #preset_names_cosine_missile, #preset_suitless_upper_norfair_2_cosine_missile)

presets_suitless_upper_norfair_2_croc_farm:
    %cm_preset("Croc Farm", #preset_names_croc_farm, #preset_suitless_upper_norfair_2_croc_farm)

presets_suitless_upper_norfair_2_crocomire_revisit:
    %cm_preset("Crocomire Revisit", #preset_names_crocomire_revisit, #preset_suitless_upper_norfair_2_crocomire_revisit)

presets_suitless_upper_norfair_2_croc_speedway_up:
    %cm_preset("Croc Speedway Up", #preset_names_croc_speedway_up, #preset_suitless_upper_norfair_2_croc_speedway_up)

presets_suitless_upper_norfair_2_croc_escape:
    %cm_preset("Croc Escape", #preset_names_croc_escape, #preset_suitless_upper_norfair_2_croc_escape)

presets_suitless_upper_norfair_2_rmode_blue_suit:
    %cm_preset("R-Mode Blue Suit", #preset_names_rmode_blue_suit, #preset_suitless_upper_norfair_2_rmode_blue_suit)


; Maridia Pre-Draygon
presets_suitless_maridia_predraygon_maridia_tube:
    %cm_preset("Maridia Tube", #preset_names_maridia_tube, #preset_suitless_maridia_predraygon_maridia_tube)

presets_suitless_maridia_predraygon_mt_everest:
    %cm_preset("Mt. Everest", #preset_names_mt_everest, #preset_suitless_maridia_predraygon_mt_everest)

presets_suitless_maridia_predraygon_crab_supers:
    %cm_preset("Crab Supers", #preset_names_crab_supers, #preset_suitless_maridia_predraygon_crab_supers)

presets_suitless_maridia_predraygon_mt_everest_2:
    %cm_preset("Mt. Everest 2", #preset_names_mt_everest_2, #preset_suitless_maridia_predraygon_mt_everest_2)

presets_suitless_maridia_predraygon_fish_tank:
    %cm_preset("Fish Tank", #preset_names_fish_tank, #preset_suitless_maridia_predraygon_fish_tank)

presets_suitless_maridia_predraygon_mama_turtle:
    %cm_preset("Mama Turtle", #preset_names_mama_turtle, #preset_suitless_maridia_predraygon_mama_turtle)

presets_suitless_maridia_predraygon_fish_tank_revisit:
    %cm_preset("Fish Tank Revisit", #preset_names_fish_tank_revisit, #preset_suitless_maridia_predraygon_fish_tank_revisit)

presets_suitless_maridia_predraygon_mt_everest_3:
    %cm_preset("Mt. Everest 3", #preset_names_mt_everest_3, #preset_suitless_maridia_predraygon_mt_everest_3)

presets_suitless_maridia_predraygon_crab_shaft:
    %cm_preset("Crab Shaft", #preset_names_crab_shaft, #preset_suitless_maridia_predraygon_crab_shaft)

presets_suitless_maridia_predraygon_aqueduct:
    %cm_preset("Aqueduct", #preset_names_aqueduct, #preset_suitless_maridia_predraygon_aqueduct)

presets_suitless_maridia_predraygon_prebotwoon_hallway:
    %cm_preset("Pre-Botwoon Hallway", #preset_names_prebotwoon_hallway, #preset_suitless_maridia_predraygon_prebotwoon_hallway)

presets_suitless_maridia_predraygon_botwoon:
    %cm_preset("Botwoon", #preset_names_botwoon, #preset_suitless_maridia_predraygon_botwoon)

presets_suitless_maridia_predraygon_postbotwoon_hallway:
    %cm_preset("Post-Botwoon Hallway", #preset_names_postbotwoon_hallway, #preset_suitless_maridia_predraygon_postbotwoon_hallway)

presets_suitless_maridia_predraygon_halfie_climb_room:
    %cm_preset("Halfie Climb Room", #preset_names_halfie_climb_room, #preset_suitless_maridia_predraygon_halfie_climb_room)

presets_suitless_maridia_predraygon_full_halfie:
    %cm_preset("Full Halfie", #preset_names_full_halfie, #preset_suitless_maridia_predraygon_full_halfie)

presets_suitless_maridia_predraygon_precious_room:
    %cm_preset("Precious Room", #preset_names_precious_room, #preset_suitless_maridia_predraygon_precious_room)

presets_suitless_maridia_predraygon_draygon:
    %cm_preset("Draygon", #preset_names_draygon, #preset_suitless_maridia_predraygon_draygon)


; Maridia Cleanup 1
presets_suitless_maridia_cleanup_1_draygon_escape:
    %cm_preset("Draygon Escape", #preset_names_draygon_escape, #preset_suitless_maridia_cleanup_1_draygon_escape)

presets_suitless_maridia_cleanup_1_reverse_colosseum:
    %cm_preset("Reverse Colosseum", #preset_names_reverse_colosseum, #preset_suitless_maridia_cleanup_1_reverse_colosseum)

presets_suitless_maridia_cleanup_1_halfie_climb_down:
    %cm_preset("Halfie Climb Down", #preset_names_halfie_climb_down, #preset_suitless_maridia_cleanup_1_halfie_climb_down)

presets_suitless_maridia_cleanup_1_reverse_botwoon_etank:
    %cm_preset("Reverse Botwoon E-Tank", #preset_names_reverse_botwoon_etank, #preset_suitless_maridia_cleanup_1_reverse_botwoon_etank)

presets_suitless_maridia_cleanup_1_aqueduct_revisit:
    %cm_preset("Aqueduct Revisit", #preset_names_aqueduct_revisit, #preset_suitless_maridia_cleanup_1_aqueduct_revisit)

presets_suitless_maridia_cleanup_1_left_sand_pit:
    %cm_preset("Left Sand Pit", #preset_names_left_sand_pit, #preset_suitless_maridia_cleanup_1_left_sand_pit)

presets_suitless_maridia_cleanup_1_west_sand_hall:
    %cm_preset("West Sand Hall", #preset_names_west_sand_hall, #preset_suitless_maridia_cleanup_1_west_sand_hall)

presets_suitless_maridia_cleanup_1_east_sand_hall:
    %cm_preset("East Sand Hall", #preset_names_east_sand_hall, #preset_suitless_maridia_cleanup_1_east_sand_hall)

presets_suitless_maridia_cleanup_1_pants_room:
    %cm_preset("Pants Room", #preset_names_pants_room, #preset_suitless_maridia_cleanup_1_pants_room)

presets_suitless_maridia_cleanup_1_shaktool:
    %cm_preset("Shaktool", #preset_names_shaktool, #preset_suitless_maridia_cleanup_1_shaktool)

presets_suitless_maridia_cleanup_1_rjump:
    %cm_preset("R-Jump", #preset_names_rjump, #preset_suitless_maridia_cleanup_1_rjump)

presets_suitless_maridia_cleanup_1_pants_room_corner:
    %cm_preset("Pants Room Corner", #preset_names_pants_room_corner, #preset_suitless_maridia_cleanup_1_pants_room_corner)

presets_suitless_maridia_cleanup_1_east_sand_hall_revisit:
    %cm_preset("East Sand Hall Revisit", #preset_names_east_sand_hall_revisit, #preset_suitless_maridia_cleanup_1_east_sand_hall_revisit)

presets_suitless_maridia_cleanup_1_west_sand_hall_revisit:
    %cm_preset("West Sand Hall Revisit", #preset_names_west_sand_hall_revisit, #preset_suitless_maridia_cleanup_1_west_sand_hall_revisit)

presets_suitless_maridia_cleanup_1_crab_hole:
    %cm_preset("Crab Hole", #preset_names_crab_hole, #preset_suitless_maridia_cleanup_1_crab_hole)

presets_suitless_maridia_cleanup_1_crab_ggg:
    %cm_preset("Crab GGG", #preset_names_crab_ggg, #preset_suitless_maridia_cleanup_1_crab_ggg)


; Maridia Cleanup 2
presets_suitless_maridia_cleanup_2_main_street_revisit:
    %cm_preset("Main Street Revisit", #preset_names_main_street_revisit, #preset_suitless_maridia_cleanup_2_main_street_revisit)

presets_suitless_maridia_cleanup_2_fish_tank_sbj:
    %cm_preset("Fish Tank SBJ", #preset_names_fish_tank_sbj, #preset_suitless_maridia_cleanup_2_fish_tank_sbj)

presets_suitless_maridia_cleanup_2_mt_everest_final:
    %cm_preset("Mt. Everest Final", #preset_names_mt_everest_final, #preset_suitless_maridia_cleanup_2_mt_everest_final)

presets_suitless_maridia_cleanup_2_crab_shaft_up:
    %cm_preset("Crab Shaft Up", #preset_names_crab_shaft_up, #preset_suitless_maridia_cleanup_2_crab_shaft_up)

presets_suitless_maridia_cleanup_2_beach:
    %cm_preset("Beach", #preset_names_beach, #preset_suitless_maridia_cleanup_2_beach)

presets_suitless_maridia_cleanup_2_swiss_cheese_room:
    %cm_preset("Swiss Cheese Room", #preset_names_swiss_cheese_room, #preset_suitless_maridia_cleanup_2_swiss_cheese_room)

presets_suitless_maridia_cleanup_2_watering_hole:
    %cm_preset("Watering Hole", #preset_names_watering_hole, #preset_suitless_maridia_cleanup_2_watering_hole)

presets_suitless_maridia_cleanup_2_swiss_cheese_revisit:
    %cm_preset("Swiss Cheese Revisit", #preset_names_swiss_cheese_revisit, #preset_suitless_maridia_cleanup_2_swiss_cheese_revisit)

presets_suitless_maridia_cleanup_2_beach_revisit:
    %cm_preset("Beach Revisit", #preset_names_beach_revisit, #preset_suitless_maridia_cleanup_2_beach_revisit)

presets_suitless_maridia_cleanup_2_crab_shaft_down:
    %cm_preset("Crab Shaft Down", #preset_names_crab_shaft_down, #preset_suitless_maridia_cleanup_2_crab_shaft_down)

presets_suitless_maridia_cleanup_2_aqueduct_final:
    %cm_preset("Aqueduct Final", #preset_names_aqueduct_final, #preset_suitless_maridia_cleanup_2_aqueduct_final)

presets_suitless_maridia_cleanup_2_right_sand_pit:
    %cm_preset("Right Sand Pit", #preset_names_right_sand_pit, #preset_suitless_maridia_cleanup_2_right_sand_pit)

presets_suitless_maridia_cleanup_2_east_sand_hall_final:
    %cm_preset("East Sand Hall Final", #preset_names_east_sand_hall_final, #preset_suitless_maridia_cleanup_2_east_sand_hall_final)

presets_suitless_maridia_cleanup_2_oasis:
    %cm_preset("Oasis", #preset_names_oasis, #preset_suitless_maridia_cleanup_2_oasis)

presets_suitless_maridia_cleanup_2_plasma_spark_room:
    %cm_preset("Plasma Spark Room", #preset_names_plasma_spark_room, #preset_suitless_maridia_cleanup_2_plasma_spark_room)

presets_suitless_maridia_cleanup_2_kassiuz_room_up:
    %cm_preset("Kassiuz Room Up", #preset_names_kassiuz_room_up, #preset_suitless_maridia_cleanup_2_kassiuz_room_up)

presets_suitless_maridia_cleanup_2_plasma:
    %cm_preset("Plasma", #preset_names_plasma, #preset_suitless_maridia_cleanup_2_plasma)

presets_suitless_maridia_cleanup_2_kassiuz_room_down:
    %cm_preset("Kassiuz Room Down", #preset_names_kassiuz_room_down, #preset_suitless_maridia_cleanup_2_kassiuz_room_down)

presets_suitless_maridia_cleanup_2_plasma_spark_revisit:
    %cm_preset("Plasma Spark Revisit", #preset_names_plasma_spark_revisit, #preset_suitless_maridia_cleanup_2_plasma_spark_revisit)


; Forgotten Highway
presets_suitless_forgotten_highway_thread_the_needle_room:
    %cm_preset("Thread the Needle Room", #preset_names_thread_the_needle_room, #preset_suitless_forgotten_highway_thread_the_needle_room)

presets_suitless_forgotten_highway_forgotten_elevator:
    %cm_preset("Forgotten Elevator", #preset_names_forgotten_elevator, #preset_suitless_forgotten_highway_forgotten_elevator)

presets_suitless_forgotten_highway_crab_maze:
    %cm_preset("Crab Maze", #preset_names_crab_maze, #preset_suitless_forgotten_highway_crab_maze)

presets_suitless_forgotten_highway_kago_room:
    %cm_preset("Kago Room", #preset_names_kago_room, #preset_suitless_forgotten_highway_kago_room)

presets_suitless_forgotten_highway_east_ocean:
    %cm_preset("East Ocean", #preset_names_east_ocean, #preset_suitless_forgotten_highway_east_ocean)

presets_suitless_forgotten_highway_electric_not_death:
    %cm_preset("Electric Not Death", #preset_names_electric_not_death, #preset_suitless_forgotten_highway_electric_not_death)

presets_suitless_forgotten_highway_sponge_bath:
    %cm_preset("Sponge Bath", #preset_names_sponge_bath, #preset_suitless_forgotten_highway_sponge_bath)

presets_suitless_forgotten_highway_shaft_down:
    %cm_preset("Shaft Down", #preset_names_shaft_down, #preset_suitless_forgotten_highway_shaft_down)

presets_suitless_forgotten_highway_basement:
    %cm_preset("Basement", #preset_names_basement, #preset_suitless_forgotten_highway_basement)

presets_suitless_forgotten_highway_phantoon:
    %cm_preset("Phantoon", #preset_names_phantoon, #preset_suitless_forgotten_highway_phantoon)


; Wrecked Ship
presets_suitless_wrecked_ship_shaft_to_supers:
    %cm_preset("Shaft To Supers", #preset_names_shaft_to_supers, #preset_suitless_wrecked_ship_shaft_to_supers)

presets_suitless_wrecked_ship_right_supers:
    %cm_preset("Right Supers", #preset_names_right_supers, #preset_suitless_wrecked_ship_right_supers)

presets_suitless_wrecked_ship_left_supers:
    %cm_preset("Left Supers", #preset_names_left_supers, #preset_suitless_wrecked_ship_left_supers)

presets_suitless_wrecked_ship_shaft_to_sponge_bath:
    %cm_preset("Shaft to Sponge Bath", #preset_names_shaft_to_sponge_bath, #preset_suitless_wrecked_ship_shaft_to_sponge_bath)

presets_suitless_wrecked_ship_sponge_bath:
    %cm_preset("Sponge Bath", #preset_names_sponge_bath, #preset_suitless_wrecked_ship_sponge_bath)

presets_suitless_wrecked_ship_electric_death_room:
    %cm_preset("Electric Death Room", #preset_names_electric_death_room, #preset_suitless_wrecked_ship_electric_death_room)

presets_suitless_wrecked_ship_wrecked_ship_etank:
    %cm_preset("Wrecked Ship E-Tank", #preset_names_wrecked_ship_etank, #preset_suitless_wrecked_ship_wrecked_ship_etank)

presets_suitless_wrecked_ship_electric_death_down:
    %cm_preset("Electric Death Down", #preset_names_electric_death_down, #preset_suitless_wrecked_ship_electric_death_down)

presets_suitless_wrecked_ship_spiky_room_revisit:
    %cm_preset("Spiky Room Revisit", #preset_names_spiky_room_revisit, #preset_suitless_wrecked_ship_spiky_room_revisit)

presets_suitless_wrecked_ship_shaft_to_attic:
    %cm_preset("Shaft to Attic", #preset_names_shaft_to_attic, #preset_suitless_wrecked_ship_shaft_to_attic)

presets_suitless_wrecked_ship_attic:
    %cm_preset("Attic", #preset_names_attic, #preset_suitless_wrecked_ship_attic)

presets_suitless_wrecked_ship_antispeedrun_robots:
    %cm_preset("Anti-Speedrun Robots", #preset_names_antispeedrun_robots, #preset_suitless_wrecked_ship_antispeedrun_robots)

presets_suitless_wrecked_ship_attic_revisit:
    %cm_preset("Attic Revisit", #preset_names_attic_revisit, #preset_suitless_wrecked_ship_attic_revisit)

presets_suitless_wrecked_ship_west_ocean:
    %cm_preset("West Ocean", #preset_names_west_ocean, #preset_suitless_wrecked_ship_west_ocean)

presets_suitless_wrecked_ship_puddles:
    %cm_preset("Puddles", #preset_names_puddles, #preset_suitless_wrecked_ship_puddles)

presets_suitless_wrecked_ship_bowling:
    %cm_preset("Bowling", #preset_names_bowling, #preset_suitless_wrecked_ship_bowling)

presets_suitless_wrecked_ship_postbowling:
    %cm_preset("Post-Bowling", #preset_names_postbowling, #preset_suitless_wrecked_ship_postbowling)

presets_suitless_wrecked_ship_west_ocean_revisit:
    %cm_preset("West Ocean Revisit", #preset_names_west_ocean_revisit, #preset_suitless_wrecked_ship_west_ocean_revisit)

presets_suitless_wrecked_ship_moat:
    %cm_preset("Moat", #preset_names_moat, #preset_suitless_wrecked_ship_moat)

presets_suitless_wrecked_ship_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_names_crateria_kihunters, #preset_suitless_wrecked_ship_crateria_kihunters)

presets_suitless_wrecked_ship_red_tower_elevator:
    %cm_preset("Red Tower Elevator", #preset_names_red_tower_elevator, #preset_suitless_wrecked_ship_red_tower_elevator)


; Red Tower Cleanup
presets_suitless_red_tower_cleanup_beta_power_bombs:
    %cm_preset("Beta Power Bombs", #preset_names_beta_power_bombs, #preset_suitless_red_tower_cleanup_beta_power_bombs)

presets_suitless_red_tower_cleanup_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_names_alpha_power_bombs, #preset_suitless_red_tower_cleanup_alpha_power_bombs)

presets_suitless_red_tower_cleanup_caterpillars_up:
    %cm_preset("Caterpillars Up", #preset_names_caterpillars_up, #preset_suitless_red_tower_cleanup_caterpillars_up)

presets_suitless_red_tower_cleanup_hellway:
    %cm_preset("Hellway", #preset_names_hellway, #preset_suitless_red_tower_cleanup_hellway)

presets_suitless_red_tower_cleanup_red_tower_revisit:
    %cm_preset("Red Tower Revisit", #preset_names_red_tower_revisit, #preset_suitless_red_tower_cleanup_red_tower_revisit)

presets_suitless_red_tower_cleanup_skree_boost_revisit:
    %cm_preset("Skree Boost Revisit", #preset_names_skree_boost_revisit, #preset_suitless_red_tower_cleanup_skree_boost_revisit)

presets_suitless_red_tower_cleanup_below_spazer_revisit:
    %cm_preset("Below Spazer Revisit", #preset_names_below_spazer_revisit, #preset_suitless_red_tower_cleanup_below_spazer_revisit)

presets_suitless_red_tower_cleanup_upper_norfair_elevator:
    %cm_preset("Upper Norfair Elevator", #preset_names_upper_norfair_elevator, #preset_suitless_red_tower_cleanup_upper_norfair_elevator)

presets_suitless_red_tower_cleanup_ice_gates_revisit:
    %cm_preset("Ice Gates Revisit", #preset_names_ice_gates_revisit, #preset_suitless_red_tower_cleanup_ice_gates_revisit)

presets_suitless_red_tower_cleanup_crumble_tower:
    %cm_preset("Crumble Tower", #preset_names_crumble_tower, #preset_suitless_red_tower_cleanup_crumble_tower)

presets_suitless_red_tower_cleanup_croc_speedway:
    %cm_preset("Croc Speedway", #preset_names_croc_speedway, #preset_suitless_red_tower_cleanup_croc_speedway)

presets_suitless_red_tower_cleanup_nutella_refill:
    %cm_preset("Nutella Refill", #preset_names_nutella_refill, #preset_suitless_red_tower_cleanup_nutella_refill)

presets_suitless_red_tower_cleanup_kronic_boost_room:
    %cm_preset("Kronic Boost Room", #preset_names_kronic_boost_room, #preset_suitless_red_tower_cleanup_kronic_boost_room)

presets_suitless_red_tower_cleanup_lava_dive:
    %cm_preset("Lava Dive", #preset_names_lava_dive, #preset_suitless_red_tower_cleanup_lava_dive)


; Ridley
presets_suitless_ridley_lower_norfair_elevator:
    %cm_preset("Lower Norfair Elevator", #preset_names_lower_norfair_elevator, #preset_suitless_ridley_lower_norfair_elevator)

presets_suitless_ridley_acid_chozo:
    %cm_preset("Acid Chozo", #preset_names_acid_chozo, #preset_suitless_ridley_acid_chozo)

presets_suitless_ridley_golden_torizo:
    %cm_preset("Golden Torizo", #preset_names_golden_torizo, #preset_suitless_ridley_golden_torizo)

presets_suitless_ridley_screw_attack:
    %cm_preset("Screw Attack", #preset_names_screw_attack, #preset_suitless_ridley_screw_attack)

presets_suitless_ridley_gt_refill_exit:
    %cm_preset("GT Refill Exit", #preset_names_gt_refill_exit, #preset_suitless_ridley_gt_refill_exit)

presets_suitless_ridley_fast_ripper_room:
    %cm_preset("Fast Ripper Room", #preset_names_fast_ripper_room, #preset_suitless_ridley_fast_ripper_room)

presets_suitless_ridley_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_names_worst_room_in_the_game, #preset_suitless_ridley_worst_room_in_the_game)

presets_suitless_ridley_mickey_mouse_room:
    %cm_preset("Mickey Mouse Room", #preset_names_mickey_mouse_room, #preset_suitless_ridley_mickey_mouse_room)

presets_suitless_ridley_amphitheatre:
    %cm_preset("Amphitheatre", #preset_names_amphitheatre, #preset_suitless_ridley_amphitheatre)

presets_suitless_ridley_firefleas:
    %cm_preset("Firefleas", #preset_names_firefleas, #preset_suitless_ridley_firefleas)

presets_suitless_ridley_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_names_kihunter_stairs_down, #preset_suitless_ridley_kihunter_stairs_down)

presets_suitless_ridley_wasteland:
    %cm_preset("Wasteland", #preset_names_wasteland, #preset_suitless_ridley_wasteland)

presets_suitless_ridley_metal_pirates:
    %cm_preset("Metal Pirates", #preset_names_metal_pirates, #preset_suitless_ridley_metal_pirates)

presets_suitless_ridley_plowerhouse:
    %cm_preset("Plowerhouse", #preset_names_plowerhouse, #preset_suitless_ridley_plowerhouse)

presets_suitless_ridley_preridley_room:
    %cm_preset("Pre-Ridley Room", #preset_names_preridley_room, #preset_suitless_ridley_preridley_room)

presets_suitless_ridley_ridley:
    %cm_preset("Ridley", #preset_names_ridley, #preset_suitless_ridley_ridley)


; Norfair Cleanup
presets_suitless_norfair_cleanup_ridley_escape:
    %cm_preset("Ridley Escape", #preset_names_ridley_escape, #preset_suitless_norfair_cleanup_ridley_escape)

presets_suitless_norfair_cleanup_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_names_reverse_plowerhouse, #preset_suitless_norfair_cleanup_reverse_plowerhouse)

presets_suitless_norfair_cleanup_reverse_metal_pirates:
    %cm_preset("Reverse Metal Pirates", #preset_names_reverse_metal_pirates, #preset_suitless_norfair_cleanup_reverse_metal_pirates)

presets_suitless_norfair_cleanup_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_names_wasteland_revisit, #preset_suitless_norfair_cleanup_wasteland_revisit)

presets_suitless_norfair_cleanup_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_names_kihunter_stairs_up, #preset_suitless_norfair_cleanup_kihunter_stairs_up)

presets_suitless_norfair_cleanup_firefleas_up:
    %cm_preset("Firefleas Up", #preset_names_firefleas_up, #preset_suitless_norfair_cleanup_firefleas_up)

presets_suitless_norfair_cleanup_hotarubi_missile_room:
    %cm_preset("Hotarubi Missile Room", #preset_names_hotarubi_missile_room, #preset_suitless_norfair_cleanup_hotarubi_missile_room)

presets_suitless_norfair_cleanup_hotarubi_revisit:
    %cm_preset("Hotarubi Revisit", #preset_names_hotarubi_revisit, #preset_suitless_norfair_cleanup_hotarubi_revisit)

presets_suitless_norfair_cleanup_three_musketeers:
    %cm_preset("Three Musketeers", #preset_names_three_musketeers, #preset_suitless_norfair_cleanup_three_musketeers)

presets_suitless_norfair_cleanup_single_chamber:
    %cm_preset("Single Chamber", #preset_names_single_chamber, #preset_suitless_norfair_cleanup_single_chamber)

presets_suitless_norfair_cleanup_bubble_mountain_return:
    %cm_preset("Bubble Mountain Return", #preset_names_bubble_mountain_return, #preset_suitless_norfair_cleanup_bubble_mountain_return)

presets_suitless_norfair_cleanup_norfair_reserve_back:
    %cm_preset("Norfair Reserve Back", #preset_names_norfair_reserve_back, #preset_suitless_norfair_cleanup_norfair_reserve_back)

presets_suitless_norfair_cleanup_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_names_bubble_mountain_final, #preset_suitless_norfair_cleanup_bubble_mountain_final)

presets_suitless_norfair_cleanup_frog_speedway:
    %cm_preset("Frog Speedway", #preset_names_frog_speedway, #preset_suitless_norfair_cleanup_frog_speedway)

presets_suitless_norfair_cleanup_business_center_final:
    %cm_preset("Business Center Final", #preset_names_business_center_final, #preset_suitless_norfair_cleanup_business_center_final)

presets_suitless_norfair_cleanup_norfair_elevator:
    %cm_preset("Norfair Elevator", #preset_names_norfair_elevator, #preset_suitless_norfair_cleanup_norfair_elevator)


; Final Cleanup
presets_suitless_final_cleanup_below_spazer_final:
    %cm_preset("Below Spazer Final", #preset_names_below_spazer_final, #preset_suitless_final_cleanup_below_spazer_final)

presets_suitless_final_cleanup_red_tower_final:
    %cm_preset("Red Tower Final", #preset_names_red_tower_final, #preset_suitless_final_cleanup_red_tower_final)

presets_suitless_final_cleanup_reverse_slinky:
    %cm_preset("Reverse Slinky", #preset_names_reverse_slinky, #preset_suitless_final_cleanup_reverse_slinky)

presets_suitless_final_cleanup_big_pink_return:
    %cm_preset("Big Pink Return", #preset_names_big_pink_return, #preset_suitless_final_cleanup_big_pink_return)

presets_suitless_final_cleanup_waterway:
    %cm_preset("Waterway", #preset_names_waterway, #preset_suitless_final_cleanup_waterway)

presets_suitless_final_cleanup_big_pink_final:
    %cm_preset("Big Pink Final", #preset_names_big_pink_final, #preset_suitless_final_cleanup_big_pink_final)

presets_suitless_final_cleanup_blue_brin_hoppers_revisit:
    %cm_preset("Blue Brin Hoppers Revisit", #preset_names_blue_brin_hoppers_revisit, #preset_suitless_final_cleanup_blue_brin_hoppers_revisit)

presets_suitless_final_cleanup_construction_zone_revisit:
    %cm_preset("Construction Zone Revisit", #preset_names_construction_zone_revisit, #preset_suitless_final_cleanup_construction_zone_revisit)

presets_suitless_final_cleanup_beta_missile_room:
    %cm_preset("Beta Missile Room", #preset_names_beta_missile_room, #preset_suitless_final_cleanup_beta_missile_room)

presets_suitless_final_cleanup_john_cena_bridge:
    %cm_preset("John Cena Bridge", #preset_names_john_cena_bridge, #preset_suitless_final_cleanup_john_cena_bridge)

presets_suitless_final_cleanup_beta_missile_revisit:
    %cm_preset("Beta Missile Revisit", #preset_names_beta_missile_revisit, #preset_suitless_final_cleanup_beta_missile_revisit)

presets_suitless_final_cleanup_pit_room_final:
    %cm_preset("Pit Room Final", #preset_names_pit_room_final, #preset_suitless_final_cleanup_pit_room_final)

presets_suitless_final_cleanup_climb_supers:
    %cm_preset("Climb Supers", #preset_names_climb_supers, #preset_suitless_final_cleanup_climb_supers)

presets_suitless_final_cleanup_parlor_return:
    %cm_preset("Parlor Return", #preset_names_parlor_return, #preset_suitless_final_cleanup_parlor_return)

presets_suitless_final_cleanup_230_mockball:
    %cm_preset("230 Mockball", #preset_names_230_mockball, #preset_suitless_final_cleanup_230_mockball)

presets_suitless_final_cleanup_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_names_parlor_revisit, #preset_suitless_final_cleanup_parlor_revisit)

presets_suitless_final_cleanup_landing_site_revisit:
    %cm_preset("Landing Site Revisit", #preset_names_landing_site_revisit, #preset_suitless_final_cleanup_landing_site_revisit)

presets_suitless_final_cleanup_crateria_power_bombs:
    %cm_preset("Crateria Power Bombs", #preset_names_crateria_power_bombs, #preset_suitless_final_cleanup_crateria_power_bombs)

presets_suitless_final_cleanup_gauntlet_entry:
    %cm_preset("Gauntlet Entry", #preset_names_gauntlet_entry, #preset_suitless_final_cleanup_gauntlet_entry)

presets_suitless_final_cleanup_gauntlet_etank:
    %cm_preset("Gauntlet E-Tank", #preset_names_gauntlet_etank, #preset_suitless_final_cleanup_gauntlet_etank)

presets_suitless_final_cleanup_quickdrops:
    %cm_preset("Quickdrops", #preset_names_quickdrops, #preset_suitless_final_cleanup_quickdrops)


; Tourian
presets_suitless_tourian_tourian_elevator:
    %cm_preset("Tourian Elevator", #preset_names_tourian_elevator, #preset_suitless_tourian_tourian_elevator)

presets_suitless_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_names_metroids_1, #preset_suitless_tourian_metroids_1)

presets_suitless_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_names_metroids_2, #preset_suitless_tourian_metroids_2)

presets_suitless_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_names_metroids_3, #preset_suitless_tourian_metroids_3)

presets_suitless_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_names_metroids_4, #preset_suitless_tourian_metroids_4)

presets_suitless_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_names_baby_skip, #preset_suitless_tourian_baby_skip)

presets_suitless_tourian_gadora_room:
    %cm_preset("Gadora Room", #preset_names_gadora_room, #preset_suitless_tourian_gadora_room)

presets_suitless_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_names_zeb_skip, #preset_suitless_tourian_zeb_skip)

presets_suitless_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_names_mother_brain_2, #preset_suitless_tourian_mother_brain_2)

presets_suitless_tourian_mother_brain_3:
    %cm_preset("Mother Brain 3", #preset_names_mother_brain_3, #preset_suitless_tourian_mother_brain_3)

presets_suitless_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_names_zebes_escape, #preset_suitless_tourian_zebes_escape)

presets_suitless_tourian_blue_bomber:
    %cm_preset("Blue Bomber", #preset_names_blue_bomber, #preset_suitless_tourian_blue_bomber)

presets_suitless_tourian_leodox_room:
    %cm_preset("Leodox Room", #preset_names_leodox_room, #preset_suitless_tourian_leodox_room)

presets_suitless_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_names_escape_climb, #preset_suitless_tourian_escape_climb)

presets_suitless_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_names_escape_parlor, #preset_suitless_tourian_escape_parlor)

presets_suitless_tourian_landing_site:
    %cm_preset("Landing Site", #preset_names_landing_site, #preset_suitless_tourian_landing_site)

