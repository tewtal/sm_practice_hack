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
    dw #presets_suitless_xray_blue_brin_hopper
    dw #presets_suitless_xray_green_hill_zone_2
    dw #presets_suitless_xray_noob_bridge
    dw #presets_suitless_xray_red_tower
    dw #presets_suitless_xray_xray_dboost
    dw #presets_suitless_xray_xray_2
    dw #presets_suitless_xray_xray_escape
    dw #$0000
    %cm_header("X-RAY")

presets_submenu_suitless_warehouse:
    dw #presets_suitless_warehouse_red_tower_down
    dw #presets_suitless_warehouse_skree_boost
    dw #presets_suitless_warehouse_below_spazer
    dw #presets_suitless_warehouse_below_spazer_2
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
    dw #presets_suitless_upper_norfair_2_croc_pbs
    dw #presets_suitless_upper_norfair_2_croc_shaft_down
    dw #presets_suitless_upper_norfair_2_indiana_jones
    dw #presets_suitless_upper_norfair_2_grapple_escape
    dw #presets_suitless_upper_norfair_2_croc_shaft_up
    dw #presets_suitless_upper_norfair_2_cosine_missile
    dw #presets_suitless_upper_norfair_2_croc_farm
    dw #presets_suitless_upper_norfair_2_croc_revisit
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
    dw #presets_suitless_wrecked_ship_sponge_bath_2
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
    dw #presets_suitless_ridley_ridley_2
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
    dw #presets_suitless_norfair_cleanup_single_chamber_2
    dw #presets_suitless_norfair_cleanup_bubble_mountain_return
    dw #presets_suitless_norfair_cleanup_norfair_reserve_back
    dw #presets_suitless_norfair_cleanup_bubble_mountain_final
    dw #presets_suitless_norfair_cleanup_frog_speedway
    dw #presets_suitless_norfair_cleanup_business_center_final
    dw #$0000
    %cm_header("NORFAIR CLEANUP")

presets_submenu_suitless_final_cleanup:
    dw #presets_suitless_final_cleanup_norfair_elevator
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
    dw #presets_suitless_final_cleanup_230_bombway
    dw #presets_suitless_final_cleanup_230_mockball
    dw #presets_suitless_final_cleanup_parlor_revisit
    dw #presets_suitless_final_cleanup_landing_site_revisit
    dw #presets_suitless_final_cleanup_crateria_pbs
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
    %cm_preset("Ceres Elevator", #preset_suitless_bombs_ceres_elevator)

presets_suitless_bombs_ceres_escape:
    %cm_preset("Ceres Escape", #preset_suitless_bombs_ceres_escape)

presets_suitless_bombs_magnet_stairs:
    %cm_preset("Magnet Stairs", #preset_suitless_bombs_magnet_stairs)

presets_suitless_bombs_escape_elevator:
    %cm_preset("Escape Elevator", #preset_suitless_bombs_escape_elevator)

presets_suitless_bombs_ship:
    %cm_preset("Ship", #preset_suitless_bombs_ship)

presets_suitless_bombs_parlor_down:
    %cm_preset("Parlor Down", #preset_suitless_bombs_parlor_down)

presets_suitless_bombs_climb_down:
    %cm_preset("Climb Down", #preset_suitless_bombs_climb_down)

presets_suitless_bombs_pit_room_down:
    %cm_preset("Pit Room Down", #preset_suitless_bombs_pit_room_down)

presets_suitless_bombs_morph:
    %cm_preset("Morph", #preset_suitless_bombs_morph)

presets_suitless_bombs_construction_zone_down:
    %cm_preset("Construction Zone Down", #preset_suitless_bombs_construction_zone_down)

presets_suitless_bombs_construction_zone_up:
    %cm_preset("Construction Zone Up", #preset_suitless_bombs_construction_zone_up)

presets_suitless_bombs_pit_room_up:
    %cm_preset("Pit Room Up", #preset_suitless_bombs_pit_room_up)

presets_suitless_bombs_climb_up:
    %cm_preset("Climb Up", #preset_suitless_bombs_climb_up)

presets_suitless_bombs_parlor_up:
    %cm_preset("Parlor Up", #preset_suitless_bombs_parlor_up)

presets_suitless_bombs_flyway:
    %cm_preset("Flyway", #preset_suitless_bombs_flyway)

presets_suitless_bombs_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_suitless_bombs_bomb_torizo)


; Power Bombs
presets_suitless_power_bombs_alcatraz:
    %cm_preset("Alcatraz", #preset_suitless_power_bombs_alcatraz)

presets_suitless_power_bombs_terminator:
    %cm_preset("Terminator", #preset_suitless_power_bombs_terminator)

presets_suitless_power_bombs_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_suitless_power_bombs_green_pirate_shaft)

presets_suitless_power_bombs_mushroom_kingdom:
    %cm_preset("Mushroom Kingdom", #preset_suitless_power_bombs_mushroom_kingdom)

presets_suitless_power_bombs_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_suitless_power_bombs_green_brinstar_elevator)

presets_suitless_power_bombs_early_supers:
    %cm_preset("Early Supers", #preset_suitless_power_bombs_early_supers)

presets_suitless_power_bombs_brinstar_reserve:
    %cm_preset("Brinstar Reserve", #preset_suitless_power_bombs_brinstar_reserve)

presets_suitless_power_bombs_reverse_mockball:
    %cm_preset("Reverse Mockball", #preset_suitless_power_bombs_reverse_mockball)

presets_suitless_power_bombs_moondance:
    %cm_preset("Moondance", #preset_suitless_power_bombs_moondance)

presets_suitless_power_bombs_etecoon_beetoms:
    %cm_preset("Etecoon Beetoms", #preset_suitless_power_bombs_etecoon_beetoms)

presets_suitless_power_bombs_etecoon_etank:
    %cm_preset("Etecoon E-Tank", #preset_suitless_power_bombs_etecoon_etank)

presets_suitless_power_bombs_etecoon_dboosts:
    %cm_preset("Etecoon D-Boosts", #preset_suitless_power_bombs_etecoon_dboosts)

presets_suitless_power_bombs_etecoon_climb:
    %cm_preset("Etecoon Climb", #preset_suitless_power_bombs_etecoon_climb)


; X-Ray
presets_suitless_xray_dachora_room_revisit:
    %cm_preset("Dachora Room Revisit", #preset_suitless_xray_dachora_room_revisit)

presets_suitless_xray_big_pink:
    %cm_preset("Big Pink", #preset_suitless_xray_big_pink)

presets_suitless_xray_mission_impossible:
    %cm_preset("Mission Impossible", #preset_suitless_xray_mission_impossible)

presets_suitless_xray_spore_spawn_skip:
    %cm_preset("Spore Spawn Skip", #preset_suitless_xray_spore_spawn_skip)

presets_suitless_xray_spore_spawn_farm_in:
    %cm_preset("Spore Spawn Farm In", #preset_suitless_xray_spore_spawn_farm_in)

presets_suitless_xray_wave_gate:
    %cm_preset("Wave Gate", #preset_suitless_xray_wave_gate)

presets_suitless_xray_wave_gate_out:
    %cm_preset("Wave Gate Out", #preset_suitless_xray_wave_gate_out)

presets_suitless_xray_big_pink_revisit:
    %cm_preset("Big Pink Revisit", #preset_suitless_xray_big_pink_revisit)

presets_suitless_xray_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_suitless_xray_green_hill_zone)

presets_suitless_xray_blue_brin_hopper:
    %cm_preset("Blue Brin Hoppers", #preset_suitless_xray_blue_brin_hopper)

presets_suitless_xray_green_hill_zone_2:
    %cm_preset("Green Hill Zone 2", #preset_suitless_xray_green_hill_zone_2)

presets_suitless_xray_noob_bridge:
    %cm_preset("Noob Bridge", #preset_suitless_xray_noob_bridge)

presets_suitless_xray_red_tower:
    %cm_preset("Red Tower", #preset_suitless_xray_red_tower)

presets_suitless_xray_xray_dboost:
    %cm_preset("X-Ray D-Boost", #preset_suitless_xray_xray_dboost)

presets_suitless_xray_xray_2:
    %cm_preset("X-Ray", #preset_suitless_xray_xray_2)

presets_suitless_xray_xray_escape:
    %cm_preset("X-Ray Escape", #preset_suitless_xray_xray_escape)


; Warehouse
presets_suitless_warehouse_red_tower_down:
    %cm_preset("Red Tower Down", #preset_suitless_warehouse_red_tower_down)

presets_suitless_warehouse_skree_boost:
    %cm_preset("Skree Boost", #preset_suitless_warehouse_skree_boost)

presets_suitless_warehouse_below_spazer:
    %cm_preset("Below Spazer", #preset_suitless_warehouse_below_spazer)

presets_suitless_warehouse_below_spazer_2:
    %cm_preset("Below Spazer 2", #preset_suitless_warehouse_below_spazer_2)

presets_suitless_warehouse_warehouse_entrance:
    %cm_preset("Warehouse Entrance", #preset_suitless_warehouse_warehouse_entrance)

presets_suitless_warehouse_warehouse_zeelas:
    %cm_preset("Warehouse Zeelas", #preset_suitless_warehouse_warehouse_zeelas)

presets_suitless_warehouse_warehouse_kihunters:
    %cm_preset("Warehouse Kihunters", #preset_suitless_warehouse_warehouse_kihunters)

presets_suitless_warehouse_minikraid:
    %cm_preset("Mini-Kraid", #preset_suitless_warehouse_minikraid)

presets_suitless_warehouse_kraid:
    %cm_preset("Kraid", #preset_suitless_warehouse_kraid)

presets_suitless_warehouse_kraid_exit:
    %cm_preset("Kraid Exit", #preset_suitless_warehouse_kraid_exit)

presets_suitless_warehouse_minikraid_revisit:
    %cm_preset("Mini-Kraid Revisit", #preset_suitless_warehouse_minikraid_revisit)

presets_suitless_warehouse_kihunters_revisit:
    %cm_preset("Kihunters Revisit", #preset_suitless_warehouse_kihunters_revisit)

presets_suitless_warehouse_kraid_etank:
    %cm_preset("Kraid E-Tank", #preset_suitless_warehouse_kraid_etank)

presets_suitless_warehouse_kraid_zeelas_revisit:
    %cm_preset("Kraid Zeelas Revisit", #preset_suitless_warehouse_kraid_zeelas_revisit)

presets_suitless_warehouse_mouthball:
    %cm_preset("Mouthball", #preset_suitless_warehouse_mouthball)


; Upper Norfair 1
presets_suitless_upper_norfair_1_ice_mockball:
    %cm_preset("Ice Mockball", #preset_suitless_upper_norfair_1_ice_mockball)

presets_suitless_upper_norfair_1_ice_trippers_in:
    %cm_preset("Ice Trippers In", #preset_suitless_upper_norfair_1_ice_trippers_in)

presets_suitless_upper_norfair_1_ice_snakes_in:
    %cm_preset("Ice Snakes In", #preset_suitless_upper_norfair_1_ice_snakes_in)

presets_suitless_upper_norfair_1_ice_snakes_out:
    %cm_preset("Ice Snakes Out", #preset_suitless_upper_norfair_1_ice_snakes_out)

presets_suitless_upper_norfair_1_ice_escape:
    %cm_preset("Ice Escape", #preset_suitless_upper_norfair_1_ice_escape)

presets_suitless_upper_norfair_1_business_center_down:
    %cm_preset("Business Center Down", #preset_suitless_upper_norfair_1_business_center_down)

presets_suitless_upper_norfair_1_hijump_etank:
    %cm_preset("Hi-Jump E-Tank", #preset_suitless_upper_norfair_1_hijump_etank)

presets_suitless_upper_norfair_1_hijump_boots:
    %cm_preset("Hi-Jump Boots", #preset_suitless_upper_norfair_1_hijump_boots)

presets_suitless_upper_norfair_1_hijump_etank_revisit:
    %cm_preset("Hi-Jump E-Tank Revisit", #preset_suitless_upper_norfair_1_hijump_etank_revisit)

presets_suitless_upper_norfair_1_business_center_up:
    %cm_preset("Business Center Up", #preset_suitless_upper_norfair_1_business_center_up)

presets_suitless_upper_norfair_1_precathedral:
    %cm_preset("Pre-Cathedral", #preset_suitless_upper_norfair_1_precathedral)

presets_suitless_upper_norfair_1_cathedral:
    %cm_preset("Cathedral", #preset_suitless_upper_norfair_1_cathedral)

presets_suitless_upper_norfair_1_rising_tide:
    %cm_preset("Rising Tide", #preset_suitless_upper_norfair_1_rising_tide)

presets_suitless_upper_norfair_1_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_suitless_upper_norfair_1_bubble_mountain)

presets_suitless_upper_norfair_1_bat_cave:
    %cm_preset("Bat Cave", #preset_suitless_upper_norfair_1_bat_cave)

presets_suitless_upper_norfair_1_speed_hallway:
    %cm_preset("Speed Hallway", #preset_suitless_upper_norfair_1_speed_hallway)

presets_suitless_upper_norfair_1_speed_hallway_out:
    %cm_preset("Speed Hallway Out", #preset_suitless_upper_norfair_1_speed_hallway_out)

presets_suitless_upper_norfair_1_bat_cave_out:
    %cm_preset("Bat Cave Out", #preset_suitless_upper_norfair_1_bat_cave_out)

presets_suitless_upper_norfair_1_single_chamber:
    %cm_preset("Single Chamber", #preset_suitless_upper_norfair_1_single_chamber)

presets_suitless_upper_norfair_1_double_chamber:
    %cm_preset("Double Chamber", #preset_suitless_upper_norfair_1_double_chamber)


; Upper Norfair 2
presets_suitless_upper_norfair_2_double_chamber_out:
    %cm_preset("Double Chamber Out", #preset_suitless_upper_norfair_2_double_chamber_out)

presets_suitless_upper_norfair_2_single_chamber_out:
    %cm_preset("Single Chamber Out", #preset_suitless_upper_norfair_2_single_chamber_out)

presets_suitless_upper_norfair_2_bubble_mountain_down:
    %cm_preset("Bubble Mountain Down", #preset_suitless_upper_norfair_2_bubble_mountain_down)

presets_suitless_upper_norfair_2_croc_gate:
    %cm_preset("Croc Gate", #preset_suitless_upper_norfair_2_croc_gate)

presets_suitless_upper_norfair_2_red_pirate_shaft:
    %cm_preset("Red Pirate Shaft", #preset_suitless_upper_norfair_2_red_pirate_shaft)

presets_suitless_upper_norfair_2_acid_snakes_tunnel:
    %cm_preset("Acid Snakes Tunnel", #preset_suitless_upper_norfair_2_acid_snakes_tunnel)

presets_suitless_upper_norfair_2_crocomire:
    %cm_preset("Crocomire", #preset_suitless_upper_norfair_2_crocomire)

presets_suitless_upper_norfair_2_croc_pbs:
    %cm_preset("Croc PBs", #preset_suitless_upper_norfair_2_croc_pbs)

presets_suitless_upper_norfair_2_croc_shaft_down:
    %cm_preset("Croc Shaft Down", #preset_suitless_upper_norfair_2_croc_shaft_down)

presets_suitless_upper_norfair_2_indiana_jones:
    %cm_preset("Indiana Jones", #preset_suitless_upper_norfair_2_indiana_jones)

presets_suitless_upper_norfair_2_grapple_escape:
    %cm_preset("Grapple Escape", #preset_suitless_upper_norfair_2_grapple_escape)

presets_suitless_upper_norfair_2_croc_shaft_up:
    %cm_preset("Croc Shaft Up", #preset_suitless_upper_norfair_2_croc_shaft_up)

presets_suitless_upper_norfair_2_cosine_missile:
    %cm_preset("Cosine Missile", #preset_suitless_upper_norfair_2_cosine_missile)

presets_suitless_upper_norfair_2_croc_farm:
    %cm_preset("Croc Farm", #preset_suitless_upper_norfair_2_croc_farm)

presets_suitless_upper_norfair_2_croc_revisit:
    %cm_preset("Crocomire Revisit", #preset_suitless_upper_norfair_2_croc_revisit)

presets_suitless_upper_norfair_2_croc_speedway_up:
    %cm_preset("Croc Speedway Up", #preset_suitless_upper_norfair_2_croc_speedway_up)

presets_suitless_upper_norfair_2_croc_escape:
    %cm_preset("Croc Escape", #preset_suitless_upper_norfair_2_croc_escape)

presets_suitless_upper_norfair_2_rmode_blue_suit:
    %cm_preset("R-Mode Blue Suit", #preset_suitless_upper_norfair_2_rmode_blue_suit)


; Maridia Pre-Draygon
presets_suitless_maridia_predraygon_maridia_tube:
    %cm_preset("Maridia Tube", #preset_suitless_maridia_predraygon_maridia_tube)

presets_suitless_maridia_predraygon_mt_everest:
    %cm_preset("Mt. Everest", #preset_suitless_maridia_predraygon_mt_everest)

presets_suitless_maridia_predraygon_crab_supers:
    %cm_preset("Crab Supers", #preset_suitless_maridia_predraygon_crab_supers)

presets_suitless_maridia_predraygon_mt_everest_2:
    %cm_preset("Mt. Everest 2", #preset_suitless_maridia_predraygon_mt_everest_2)

presets_suitless_maridia_predraygon_fish_tank:
    %cm_preset("Fish Tank", #preset_suitless_maridia_predraygon_fish_tank)

presets_suitless_maridia_predraygon_mama_turtle:
    %cm_preset("Mama Turtle", #preset_suitless_maridia_predraygon_mama_turtle)

presets_suitless_maridia_predraygon_fish_tank_revisit:
    %cm_preset("Fish Tank Revisit", #preset_suitless_maridia_predraygon_fish_tank_revisit)

presets_suitless_maridia_predraygon_mt_everest_3:
    %cm_preset("Mt. Everest 3", #preset_suitless_maridia_predraygon_mt_everest_3)

presets_suitless_maridia_predraygon_crab_shaft:
    %cm_preset("Crab Shaft", #preset_suitless_maridia_predraygon_crab_shaft)

presets_suitless_maridia_predraygon_aqueduct:
    %cm_preset("Aqueduct", #preset_suitless_maridia_predraygon_aqueduct)

presets_suitless_maridia_predraygon_prebotwoon_hallway:
    %cm_preset("Pre-Botwoon Hallway", #preset_suitless_maridia_predraygon_prebotwoon_hallway)

presets_suitless_maridia_predraygon_botwoon:
    %cm_preset("Botwoon", #preset_suitless_maridia_predraygon_botwoon)

presets_suitless_maridia_predraygon_postbotwoon_hallway:
    %cm_preset("Post-Botwoon Hallway", #preset_suitless_maridia_predraygon_postbotwoon_hallway)

presets_suitless_maridia_predraygon_halfie_climb_room:
    %cm_preset("Halfie Climb Room", #preset_suitless_maridia_predraygon_halfie_climb_room)

presets_suitless_maridia_predraygon_full_halfie:
    %cm_preset("Full Halfie", #preset_suitless_maridia_predraygon_full_halfie)

presets_suitless_maridia_predraygon_precious_room:
    %cm_preset("Precious Room", #preset_suitless_maridia_predraygon_precious_room)

presets_suitless_maridia_predraygon_draygon:
    %cm_preset("Draygon", #preset_suitless_maridia_predraygon_draygon)


; Maridia Cleanup 1
presets_suitless_maridia_cleanup_1_draygon_escape:
    %cm_preset("Draygon Escape", #preset_suitless_maridia_cleanup_1_draygon_escape)

presets_suitless_maridia_cleanup_1_reverse_colosseum:
    %cm_preset("Reverse Colosseum", #preset_suitless_maridia_cleanup_1_reverse_colosseum)

presets_suitless_maridia_cleanup_1_halfie_climb_down:
    %cm_preset("Halfie Climb Down", #preset_suitless_maridia_cleanup_1_halfie_climb_down)

presets_suitless_maridia_cleanup_1_reverse_botwoon_etank:
    %cm_preset("Reverse Botwoon E-Tank", #preset_suitless_maridia_cleanup_1_reverse_botwoon_etank)

presets_suitless_maridia_cleanup_1_aqueduct_revisit:
    %cm_preset("Aqueduct Revisit", #preset_suitless_maridia_cleanup_1_aqueduct_revisit)

presets_suitless_maridia_cleanup_1_left_sand_pit:
    %cm_preset("Left Sand Pit", #preset_suitless_maridia_cleanup_1_left_sand_pit)

presets_suitless_maridia_cleanup_1_west_sand_hall:
    %cm_preset("West Sand Hall", #preset_suitless_maridia_cleanup_1_west_sand_hall)

presets_suitless_maridia_cleanup_1_east_sand_hall:
    %cm_preset("East Sand Hall", #preset_suitless_maridia_cleanup_1_east_sand_hall)

presets_suitless_maridia_cleanup_1_pants_room:
    %cm_preset("Pants Room", #preset_suitless_maridia_cleanup_1_pants_room)

presets_suitless_maridia_cleanup_1_shaktool:
    %cm_preset("Shaktool", #preset_suitless_maridia_cleanup_1_shaktool)

presets_suitless_maridia_cleanup_1_rjump:
    %cm_preset("R-Jump", #preset_suitless_maridia_cleanup_1_rjump)

presets_suitless_maridia_cleanup_1_pants_room_corner:
    %cm_preset("Pants Room Corner", #preset_suitless_maridia_cleanup_1_pants_room_corner)

presets_suitless_maridia_cleanup_1_east_sand_hall_revisit:
    %cm_preset("East Sand Hall Revisit", #preset_suitless_maridia_cleanup_1_east_sand_hall_revisit)

presets_suitless_maridia_cleanup_1_west_sand_hall_revisit:
    %cm_preset("West Sand Hall Revisit", #preset_suitless_maridia_cleanup_1_west_sand_hall_revisit)

presets_suitless_maridia_cleanup_1_crab_hole:
    %cm_preset("Crab Hole", #preset_suitless_maridia_cleanup_1_crab_hole)

presets_suitless_maridia_cleanup_1_crab_ggg:
    %cm_preset("Crab GGG", #preset_suitless_maridia_cleanup_1_crab_ggg)


; Maridia Cleanup 2
presets_suitless_maridia_cleanup_2_main_street_revisit:
    %cm_preset("Main Street Revisit", #preset_suitless_maridia_cleanup_2_main_street_revisit)

presets_suitless_maridia_cleanup_2_fish_tank_sbj:
    %cm_preset("Fish Tank SBJ", #preset_suitless_maridia_cleanup_2_fish_tank_sbj)

presets_suitless_maridia_cleanup_2_mt_everest_final:
    %cm_preset("Mt Everest Final", #preset_suitless_maridia_cleanup_2_mt_everest_final)

presets_suitless_maridia_cleanup_2_crab_shaft_up:
    %cm_preset("Crab Shaft Up", #preset_suitless_maridia_cleanup_2_crab_shaft_up)

presets_suitless_maridia_cleanup_2_beach:
    %cm_preset("Beach", #preset_suitless_maridia_cleanup_2_beach)

presets_suitless_maridia_cleanup_2_swiss_cheese_room:
    %cm_preset("Swiss Cheese Room", #preset_suitless_maridia_cleanup_2_swiss_cheese_room)

presets_suitless_maridia_cleanup_2_watering_hole:
    %cm_preset("Watering Hole", #preset_suitless_maridia_cleanup_2_watering_hole)

presets_suitless_maridia_cleanup_2_swiss_cheese_revisit:
    %cm_preset("Swiss Cheese Revisit", #preset_suitless_maridia_cleanup_2_swiss_cheese_revisit)

presets_suitless_maridia_cleanup_2_beach_revisit:
    %cm_preset("Beach Revisit", #preset_suitless_maridia_cleanup_2_beach_revisit)

presets_suitless_maridia_cleanup_2_crab_shaft_down:
    %cm_preset("Crab Shaft Down", #preset_suitless_maridia_cleanup_2_crab_shaft_down)

presets_suitless_maridia_cleanup_2_aqueduct_final:
    %cm_preset("Aqueduct Final", #preset_suitless_maridia_cleanup_2_aqueduct_final)

presets_suitless_maridia_cleanup_2_right_sand_pit:
    %cm_preset("Right Sand Pit", #preset_suitless_maridia_cleanup_2_right_sand_pit)

presets_suitless_maridia_cleanup_2_east_sand_hall_final:
    %cm_preset("East Sand Hall Final", #preset_suitless_maridia_cleanup_2_east_sand_hall_final)

presets_suitless_maridia_cleanup_2_oasis:
    %cm_preset("Oasis", #preset_suitless_maridia_cleanup_2_oasis)

presets_suitless_maridia_cleanup_2_plasma_spark_room:
    %cm_preset("Plasma Spark Room", #preset_suitless_maridia_cleanup_2_plasma_spark_room)

presets_suitless_maridia_cleanup_2_kassiuz_room_up:
    %cm_preset("Kassiuz Room Up", #preset_suitless_maridia_cleanup_2_kassiuz_room_up)

presets_suitless_maridia_cleanup_2_plasma:
    %cm_preset("Plasma", #preset_suitless_maridia_cleanup_2_plasma)

presets_suitless_maridia_cleanup_2_kassiuz_room_down:
    %cm_preset("Kassiuz Room Down", #preset_suitless_maridia_cleanup_2_kassiuz_room_down)

presets_suitless_maridia_cleanup_2_plasma_spark_revisit:
    %cm_preset("Plasma Spark Revisit", #preset_suitless_maridia_cleanup_2_plasma_spark_revisit)


; Forgotten Highway
presets_suitless_forgotten_highway_thread_the_needle_room:
    %cm_preset("Thread the Needle Room", #preset_suitless_forgotten_highway_thread_the_needle_room)

presets_suitless_forgotten_highway_forgotten_elevator:
    %cm_preset("Forgotten Elevator", #preset_suitless_forgotten_highway_forgotten_elevator)

presets_suitless_forgotten_highway_crab_maze:
    %cm_preset("Crab Maze", #preset_suitless_forgotten_highway_crab_maze)

presets_suitless_forgotten_highway_kago_room:
    %cm_preset("Kago Room", #preset_suitless_forgotten_highway_kago_room)

presets_suitless_forgotten_highway_east_ocean:
    %cm_preset("East Ocean", #preset_suitless_forgotten_highway_east_ocean)

presets_suitless_forgotten_highway_electric_not_death:
    %cm_preset("Electric Not Death", #preset_suitless_forgotten_highway_electric_not_death)

presets_suitless_forgotten_highway_sponge_bath:
    %cm_preset("Sponge Bath", #preset_suitless_forgotten_highway_sponge_bath)

presets_suitless_forgotten_highway_shaft_down:
    %cm_preset("Shaft Down", #preset_suitless_forgotten_highway_shaft_down)

presets_suitless_forgotten_highway_basement:
    %cm_preset("Basement", #preset_suitless_forgotten_highway_basement)

presets_suitless_forgotten_highway_phantoon:
    %cm_preset("Phantoon", #preset_suitless_forgotten_highway_phantoon)


; Wrecked Ship
presets_suitless_wrecked_ship_shaft_to_supers:
    %cm_preset("Shaft to Supers", #preset_suitless_wrecked_ship_shaft_to_supers)

presets_suitless_wrecked_ship_right_supers:
    %cm_preset("Right Supers", #preset_suitless_wrecked_ship_right_supers)

presets_suitless_wrecked_ship_left_supers:
    %cm_preset("Left Supers", #preset_suitless_wrecked_ship_left_supers)

presets_suitless_wrecked_ship_shaft_to_sponge_bath:
    %cm_preset("Shaft to Sponge Bath", #preset_suitless_wrecked_ship_shaft_to_sponge_bath)

presets_suitless_wrecked_ship_sponge_bath_2:
    %cm_preset("Sponge Bath", #preset_suitless_wrecked_ship_sponge_bath_2)

presets_suitless_wrecked_ship_electric_death_room:
    %cm_preset("Electric Death Room", #preset_suitless_wrecked_ship_electric_death_room)

presets_suitless_wrecked_ship_wrecked_ship_etank:
    %cm_preset("Wrecked Ship E-Tank", #preset_suitless_wrecked_ship_wrecked_ship_etank)

presets_suitless_wrecked_ship_electric_death_down:
    %cm_preset("Electric Death Down", #preset_suitless_wrecked_ship_electric_death_down)

presets_suitless_wrecked_ship_spiky_room_revisit:
    %cm_preset("Spiky Room Revisit", #preset_suitless_wrecked_ship_spiky_room_revisit)

presets_suitless_wrecked_ship_shaft_to_attic:
    %cm_preset("Shaft to Attic", #preset_suitless_wrecked_ship_shaft_to_attic)

presets_suitless_wrecked_ship_attic:
    %cm_preset("Attic", #preset_suitless_wrecked_ship_attic)

presets_suitless_wrecked_ship_antispeedrun_robots:
    %cm_preset("Anti-Speedrun Robots", #preset_suitless_wrecked_ship_antispeedrun_robots)

presets_suitless_wrecked_ship_attic_revisit:
    %cm_preset("Attic Revisit", #preset_suitless_wrecked_ship_attic_revisit)

presets_suitless_wrecked_ship_west_ocean:
    %cm_preset("West Ocean", #preset_suitless_wrecked_ship_west_ocean)

presets_suitless_wrecked_ship_puddles:
    %cm_preset("Puddles", #preset_suitless_wrecked_ship_puddles)

presets_suitless_wrecked_ship_bowling:
    %cm_preset("Bowling", #preset_suitless_wrecked_ship_bowling)

presets_suitless_wrecked_ship_postbowling:
    %cm_preset("Post-Bowling", #preset_suitless_wrecked_ship_postbowling)

presets_suitless_wrecked_ship_west_ocean_revisit:
    %cm_preset("West Ocean Revisit", #preset_suitless_wrecked_ship_west_ocean_revisit)

presets_suitless_wrecked_ship_moat:
    %cm_preset("Moat", #preset_suitless_wrecked_ship_moat)

presets_suitless_wrecked_ship_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_suitless_wrecked_ship_crateria_kihunters)

presets_suitless_wrecked_ship_red_tower_elevator:
    %cm_preset("Red Tower Elevator", #preset_suitless_wrecked_ship_red_tower_elevator)


; Red Tower Cleanup
presets_suitless_red_tower_cleanup_beta_power_bombs:
    %cm_preset("Beta Power Bombs", #preset_suitless_red_tower_cleanup_beta_power_bombs)

presets_suitless_red_tower_cleanup_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_suitless_red_tower_cleanup_alpha_power_bombs)

presets_suitless_red_tower_cleanup_caterpillars_up:
    %cm_preset("Caterpillars Up", #preset_suitless_red_tower_cleanup_caterpillars_up)

presets_suitless_red_tower_cleanup_hellway:
    %cm_preset("Hellway", #preset_suitless_red_tower_cleanup_hellway)

presets_suitless_red_tower_cleanup_red_tower_revisit:
    %cm_preset("Red Tower Revisit", #preset_suitless_red_tower_cleanup_red_tower_revisit)

presets_suitless_red_tower_cleanup_skree_boost_revisit:
    %cm_preset("Skree Boost Revisit", #preset_suitless_red_tower_cleanup_skree_boost_revisit)

presets_suitless_red_tower_cleanup_below_spazer_revisit:
    %cm_preset("Below Spazer Revisit", #preset_suitless_red_tower_cleanup_below_spazer_revisit)

presets_suitless_red_tower_cleanup_upper_norfair_elevator:
    %cm_preset("Upper Norfair Elevator", #preset_suitless_red_tower_cleanup_upper_norfair_elevator)

presets_suitless_red_tower_cleanup_ice_gates_revisit:
    %cm_preset("Ice Gates Revisit", #preset_suitless_red_tower_cleanup_ice_gates_revisit)

presets_suitless_red_tower_cleanup_crumble_tower:
    %cm_preset("Crumble Tower", #preset_suitless_red_tower_cleanup_crumble_tower)

presets_suitless_red_tower_cleanup_croc_speedway:
    %cm_preset("Croc Speedway", #preset_suitless_red_tower_cleanup_croc_speedway)

presets_suitless_red_tower_cleanup_nutella_refill:
    %cm_preset("Nutella Refill", #preset_suitless_red_tower_cleanup_nutella_refill)

presets_suitless_red_tower_cleanup_kronic_boost_room:
    %cm_preset("Kronic Boost Room", #preset_suitless_red_tower_cleanup_kronic_boost_room)

presets_suitless_red_tower_cleanup_lava_dive:
    %cm_preset("Lava Dive", #preset_suitless_red_tower_cleanup_lava_dive)


; Ridley
presets_suitless_ridley_lower_norfair_elevator:
    %cm_preset("Lower Norfair Elevator", #preset_suitless_ridley_lower_norfair_elevator)

presets_suitless_ridley_acid_chozo:
    %cm_preset("Acid Chozo", #preset_suitless_ridley_acid_chozo)

presets_suitless_ridley_golden_torizo:
    %cm_preset("Golden Torizo", #preset_suitless_ridley_golden_torizo)

presets_suitless_ridley_screw_attack:
    %cm_preset("Screw Attack", #preset_suitless_ridley_screw_attack)

presets_suitless_ridley_gt_refill_exit:
    %cm_preset("GT Refill Exit", #preset_suitless_ridley_gt_refill_exit)

presets_suitless_ridley_fast_ripper_room:
    %cm_preset("Fast Ripper Room", #preset_suitless_ridley_fast_ripper_room)

presets_suitless_ridley_worst_room_in_the_game:
    %cm_preset("Worst Room in the Game", #preset_suitless_ridley_worst_room_in_the_game)

presets_suitless_ridley_mickey_mouse_room:
    %cm_preset("Mickey Mouse Room", #preset_suitless_ridley_mickey_mouse_room)

presets_suitless_ridley_amphitheatre:
    %cm_preset("Amphitheatre", #preset_suitless_ridley_amphitheatre)

presets_suitless_ridley_firefleas:
    %cm_preset("Firefleas", #preset_suitless_ridley_firefleas)

presets_suitless_ridley_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_suitless_ridley_kihunter_stairs_down)

presets_suitless_ridley_wasteland:
    %cm_preset("Wasteland", #preset_suitless_ridley_wasteland)

presets_suitless_ridley_metal_pirates:
    %cm_preset("Metal Pirates", #preset_suitless_ridley_metal_pirates)

presets_suitless_ridley_plowerhouse:
    %cm_preset("Plowerhouse", #preset_suitless_ridley_plowerhouse)

presets_suitless_ridley_preridley_room:
    %cm_preset("Pre-Ridley Room", #preset_suitless_ridley_preridley_room)

presets_suitless_ridley_ridley_2:
    %cm_preset("Ridley", #preset_suitless_ridley_ridley_2)


; Norfair Cleanup
presets_suitless_norfair_cleanup_ridley_escape:
    %cm_preset("Ridley Escape", #preset_suitless_norfair_cleanup_ridley_escape)

presets_suitless_norfair_cleanup_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_suitless_norfair_cleanup_reverse_plowerhouse)

presets_suitless_norfair_cleanup_reverse_metal_pirates:
    %cm_preset("Reverse Metal Pirates", #preset_suitless_norfair_cleanup_reverse_metal_pirates)

presets_suitless_norfair_cleanup_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_suitless_norfair_cleanup_wasteland_revisit)

presets_suitless_norfair_cleanup_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_suitless_norfair_cleanup_kihunter_stairs_up)

presets_suitless_norfair_cleanup_firefleas_up:
    %cm_preset("Firefleas Up", #preset_suitless_norfair_cleanup_firefleas_up)

presets_suitless_norfair_cleanup_hotarubi_missile_room:
    %cm_preset("Hotarubi Missile Room", #preset_suitless_norfair_cleanup_hotarubi_missile_room)

presets_suitless_norfair_cleanup_hotarubi_revisit:
    %cm_preset("Hotarubi Revisit", #preset_suitless_norfair_cleanup_hotarubi_revisit)

presets_suitless_norfair_cleanup_three_musketeers:
    %cm_preset("Three Musketeers", #preset_suitless_norfair_cleanup_three_musketeers)

presets_suitless_norfair_cleanup_single_chamber_2:
    %cm_preset("Single Chamber", #preset_suitless_norfair_cleanup_single_chamber_2)

presets_suitless_norfair_cleanup_bubble_mountain_return:
    %cm_preset("Bubble Mountain Return", #preset_suitless_norfair_cleanup_bubble_mountain_return)

presets_suitless_norfair_cleanup_norfair_reserve_back:
    %cm_preset("Norfair Reserve Back", #preset_suitless_norfair_cleanup_norfair_reserve_back)

presets_suitless_norfair_cleanup_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_suitless_norfair_cleanup_bubble_mountain_final)

presets_suitless_norfair_cleanup_frog_speedway:
    %cm_preset("Frog Speedway", #preset_suitless_norfair_cleanup_frog_speedway)

presets_suitless_norfair_cleanup_business_center_final:
    %cm_preset("Business Center Final", #preset_suitless_norfair_cleanup_business_center_final)


; Final Cleanup
presets_suitless_final_cleanup_norfair_elevator:
    %cm_preset("Norfair Elevator", #preset_suitless_final_cleanup_norfair_elevator)

presets_suitless_final_cleanup_below_spazer_final:
    %cm_preset("Below Spazer Final", #preset_suitless_final_cleanup_below_spazer_final)

presets_suitless_final_cleanup_red_tower_final:
    %cm_preset("Red Tower Final", #preset_suitless_final_cleanup_red_tower_final)

presets_suitless_final_cleanup_reverse_slinky:
    %cm_preset("Reverse Slinky", #preset_suitless_final_cleanup_reverse_slinky)

presets_suitless_final_cleanup_big_pink_return:
    %cm_preset("Big Pink Return", #preset_suitless_final_cleanup_big_pink_return)

presets_suitless_final_cleanup_waterway:
    %cm_preset("Waterway", #preset_suitless_final_cleanup_waterway)

presets_suitless_final_cleanup_big_pink_final:
    %cm_preset("Big Pink Final", #preset_suitless_final_cleanup_big_pink_final)

presets_suitless_final_cleanup_blue_brin_hoppers_revisit:
    %cm_preset("Blue Brin Hoppers Revisit", #preset_suitless_final_cleanup_blue_brin_hoppers_revisit)

presets_suitless_final_cleanup_construction_zone_revisit:
    %cm_preset("Construction Zone Revisit", #preset_suitless_final_cleanup_construction_zone_revisit)

presets_suitless_final_cleanup_beta_missile_room:
    %cm_preset("Beta Missile Room", #preset_suitless_final_cleanup_beta_missile_room)

presets_suitless_final_cleanup_john_cena_bridge:
    %cm_preset("John Cena Bridge", #preset_suitless_final_cleanup_john_cena_bridge)

presets_suitless_final_cleanup_beta_missile_revisit:
    %cm_preset("Beta Missile Revisit", #preset_suitless_final_cleanup_beta_missile_revisit)

presets_suitless_final_cleanup_pit_room_final:
    %cm_preset("Pit Room Final", #preset_suitless_final_cleanup_pit_room_final)

presets_suitless_final_cleanup_climb_supers:
    %cm_preset("Climb Supers", #preset_suitless_final_cleanup_climb_supers)

presets_suitless_final_cleanup_parlor_return:
    %cm_preset("Parlor Return", #preset_suitless_final_cleanup_parlor_return)

presets_suitless_final_cleanup_230_bombway:
    %cm_preset("230 Bombway", #preset_suitless_final_cleanup_230_bombway)

presets_suitless_final_cleanup_230_mockball:
    %cm_preset("230 Mockball", #preset_suitless_final_cleanup_230_mockball)

presets_suitless_final_cleanup_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_suitless_final_cleanup_parlor_revisit)

presets_suitless_final_cleanup_landing_site_revisit:
    %cm_preset("Landing Site Revisit", #preset_suitless_final_cleanup_landing_site_revisit)

presets_suitless_final_cleanup_crateria_pbs:
    %cm_preset("Crateria PBs", #preset_suitless_final_cleanup_crateria_pbs)

presets_suitless_final_cleanup_gauntlet_entry:
    %cm_preset("Gauntlet Entry", #preset_suitless_final_cleanup_gauntlet_entry)

presets_suitless_final_cleanup_gauntlet_etank:
    %cm_preset("Gauntlet E-Tank", #preset_suitless_final_cleanup_gauntlet_etank)

presets_suitless_final_cleanup_quickdrops:
    %cm_preset("Quickdrops", #preset_suitless_final_cleanup_quickdrops)


; Tourian
presets_suitless_tourian_tourian_elevator:
    %cm_preset("Tourian Elevator", #preset_suitless_tourian_tourian_elevator)

presets_suitless_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_suitless_tourian_metroids_1)

presets_suitless_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_suitless_tourian_metroids_2)

presets_suitless_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_suitless_tourian_metroids_3)

presets_suitless_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_suitless_tourian_metroids_4)

presets_suitless_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_suitless_tourian_baby_skip)

presets_suitless_tourian_gadora_room:
    %cm_preset("Gadora Room", #preset_suitless_tourian_gadora_room)

presets_suitless_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_suitless_tourian_zeb_skip)

presets_suitless_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_suitless_tourian_mother_brain_2)

presets_suitless_tourian_mother_brain_3:
    %cm_preset("Mother Brain 3", #preset_suitless_tourian_mother_brain_3)

presets_suitless_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_suitless_tourian_zebes_escape)

presets_suitless_tourian_blue_bomber:
    %cm_preset("Blue Bomber", #preset_suitless_tourian_blue_bomber)

presets_suitless_tourian_leodox_room:
    %cm_preset("Leodox Room", #preset_suitless_tourian_leodox_room)

presets_suitless_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_suitless_tourian_escape_climb)

presets_suitless_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_suitless_tourian_escape_parlor)

presets_suitless_tourian_landing_site:
    %cm_preset("Landing Site", #preset_suitless_tourian_landing_site)


