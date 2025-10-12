PresetsMenuNoDropsKpdr:
    dw #presets_goto_nodropskpdr_early_crateria
    dw #presets_goto_nodropskpdr_230_missile_path
    dw #presets_goto_nodropskpdr_blue_brinstar_missile_path
    dw #presets_goto_nodropskpdr_refill_15_missiles_path
    dw #presets_goto_nodropskpdr_refill_25_missiles_path
    dw #presets_goto_nodropskpdr_speed_wave_power_bombs
;    dw #presets_goto_nodropskpdr_wrecked_ship
;    dw #presets_goto_nodropskpdr_red_brinstar_revisit
;    dw #presets_goto_nodropskpdr_maridia
;    dw #presets_goto_nodropskpdr_upper_norfair_revisit
;    dw #presets_goto_nodropskpdr_lower_norfair
;    dw #presets_goto_nodropskpdr_backtracking
;    dw #presets_goto_nodropskpdr_tourian
    dw #$0000
    %cm_header("PRESETS FOR NO DROPS KPDR")

presets_goto_nodropskpdr_early_crateria:
    %cm_submenu("Early Crateria", #presets_submenu_nodropskpdr_early_crateria)

presets_goto_nodropskpdr_230_missile_path:
    %cm_submenu("230 Missile Path", #presets_submenu_nodropskpdr_230_missile_path)

presets_goto_nodropskpdr_blue_brinstar_missile_path:
    %cm_submenu("Blue Brinstar Missile Path", #presets_submenu_nodropskpdr_blue_brinstar_missile_path)

presets_goto_nodropskpdr_refill_15_missiles_path:
    %cm_submenu("Refill 15 Missiles Path", #presets_submenu_nodropskpdr_refill_15_missiles_path)

presets_goto_nodropskpdr_refill_25_missiles_path:
    %cm_submenu("Refill 25 Missiles Path", #presets_submenu_nodropskpdr_refill_25_missiles_path)

presets_goto_nodropskpdr_speed_wave_power_bombs:
    %cm_submenu("Speed Wave Power Bombs", #presets_submenu_nodropskpdr_speed_wave_power_bombs)

presets_goto_nodropskpdr_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_nodropskpdr_wrecked_ship)

presets_goto_nodropskpdr_red_brinstar_revisit:
    %cm_submenu("Red Brinstar Revisit", #presets_submenu_nodropskpdr_red_brinstar_revisit)

presets_goto_nodropskpdr_maridia:
    %cm_submenu("Maridia", #presets_submenu_nodropskpdr_maridia)

presets_goto_nodropskpdr_upper_norfair_revisit:
    %cm_submenu("Upper Norfair Revisit", #presets_submenu_nodropskpdr_upper_norfair_revisit)

presets_goto_nodropskpdr_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_nodropskpdr_lower_norfair)

presets_goto_nodropskpdr_backtracking:
    %cm_submenu("Backtracking", #presets_submenu_nodropskpdr_backtracking)

presets_goto_nodropskpdr_tourian:
    %cm_submenu("Tourian", #presets_submenu_nodropskpdr_tourian)

presets_submenu_nodropskpdr_early_crateria:
    dw #presets_nodropskpdr_early_crateria_ceres_elevator
    dw #presets_nodropskpdr_early_crateria_ceres_escape
    dw #presets_nodropskpdr_early_crateria_ceres_last_3_rooms
    dw #presets_nodropskpdr_early_crateria_ship
    dw #presets_nodropskpdr_early_crateria_parlor
    dw #presets_nodropskpdr_early_crateria_parlor_downback
    dw #presets_nodropskpdr_early_crateria_climb_down
    dw #presets_nodropskpdr_early_crateria_pit_room
    dw #presets_nodropskpdr_early_crateria_morph
    dw #presets_nodropskpdr_early_crateria_construction_zone
    dw #presets_nodropskpdr_early_crateria_construction_zone_revisit
    dw #$0000
    %cm_header("EARLY CRATERIA")

presets_submenu_nodropskpdr_230_missile_path:
    dw #presets_nodropskpdr_230_missile_path_pit_room_revisit
    dw #presets_nodropskpdr_230_missile_path_climb_up
    dw #presets_nodropskpdr_230_missile_path_parlor_revisit
    dw #presets_nodropskpdr_230_missile_path_flyway
    dw #presets_nodropskpdr_230_missile_path_bomb_torizo
    dw #presets_nodropskpdr_230_missile_path_alcatraz
    dw #presets_nodropskpdr_230_missile_path_230_bombway
    dw #presets_nodropskpdr_230_missile_path_230_bombway_revisit
    dw #presets_nodropskpdr_230_missile_path_terminator
    dw #presets_nodropskpdr_230_missile_path_green_pirate_shaft
    dw #presets_nodropskpdr_230_missile_path_green_brinstar_elevator
    dw #presets_nodropskpdr_230_missile_path_early_supers_missile
    dw #presets_nodropskpdr_230_missile_path_brinstar_reserve_missiles
    dw #presets_nodropskpdr_230_missile_path_early_supers
    dw #$0000
    %cm_header("230 MISSILE PATH")

presets_submenu_nodropskpdr_blue_brinstar_missile_path:
    dw #presets_nodropskpdr_blue_brinstar_missile_path_blue_brinstar_missiles
    dw #presets_nodropskpdr_blue_brinstar_missile_path_pit_room_revisit
    dw #presets_nodropskpdr_blue_brinstar_missile_path_climb_up
    dw #presets_nodropskpdr_blue_brinstar_missile_path_parlor_revisit
    dw #presets_nodropskpdr_blue_brinstar_missile_path_flyway
    dw #presets_nodropskpdr_blue_brinstar_missile_path_bomb_torizo
    dw #presets_nodropskpdr_blue_brinstar_missile_path_alcatraz
    dw #presets_nodropskpdr_blue_brinstar_missile_path_parlor_after_refill
    dw #presets_nodropskpdr_blue_brinstar_missile_path_terminator
    dw #presets_nodropskpdr_blue_brinstar_missile_path_green_pirate_shaft
    dw #presets_nodropskpdr_blue_brinstar_missile_path_green_brinstar_elevator
    dw #presets_nodropskpdr_blue_brinstar_missile_path_early_supers
    dw #$0000
    %cm_header("BLUE BRINSTAR MISSILE PATH")

presets_submenu_nodropskpdr_refill_15_missiles_path:
    dw #presets_nodropskpdr_refill_15_missiles_path_missile_refill
    dw #presets_nodropskpdr_refill_15_missiles_path_leaving_missile_refill
    dw #presets_nodropskpdr_refill_15_missiles_path_dachora_room
    dw #presets_nodropskpdr_refill_15_missiles_path_big_pink
    dw #presets_nodropskpdr_refill_15_missiles_path_leaving_spore_spawn_supers
    dw #presets_nodropskpdr_refill_15_missiles_path_green_hill_zone
    dw #presets_nodropskpdr_refill_15_missiles_path_skree_boost
    dw #presets_nodropskpdr_refill_15_missiles_path_entering_kraids_lair
    dw #presets_nodropskpdr_refill_15_missiles_path_warehouse_zeelas
    dw #presets_nodropskpdr_refill_15_missiles_path_kraid_kihunters
    dw #presets_nodropskpdr_refill_15_missiles_path_minikraid
    dw #presets_nodropskpdr_refill_15_missiles_path_kraid
    dw #presets_nodropskpdr_refill_15_missiles_path_leaving_varia
    dw #presets_nodropskpdr_refill_15_missiles_path_minikraid_revisit
    dw #presets_nodropskpdr_refill_15_missiles_path_kraid_kihunters_revisit
    dw #presets_nodropskpdr_refill_15_missiles_path_business_center_preelev
    dw #presets_nodropskpdr_refill_15_missiles_path_business_center_postelev
    dw #presets_nodropskpdr_refill_15_missiles_path_hijump_etank
    dw #presets_nodropskpdr_refill_15_missiles_path_leaving_hijump
    dw #presets_nodropskpdr_refill_15_missiles_path_business_center_revisit
    dw #$0000
    %cm_header("REFILL 15 MISSILES PATH")

presets_submenu_nodropskpdr_refill_25_missiles_path:
    dw #presets_nodropskpdr_refill_25_missiles_path_missile_refill
    dw #presets_nodropskpdr_refill_25_missiles_path_leaving_missile_refill
    dw #presets_nodropskpdr_refill_25_missiles_path_dachora_room
    dw #presets_nodropskpdr_refill_25_missiles_path_big_pink
    dw #presets_nodropskpdr_refill_25_missiles_path_leaving_spore_spawn_supers
    dw #presets_nodropskpdr_refill_25_missiles_path_green_hill_zone
    dw #presets_nodropskpdr_refill_25_missiles_path_skree_boost
    dw #presets_nodropskpdr_refill_25_missiles_path_entering_kraids_lair
    dw #presets_nodropskpdr_refill_25_missiles_path_warehouse_zeelas
    dw #presets_nodropskpdr_refill_25_missiles_path_kraid_kihunters
    dw #presets_nodropskpdr_refill_25_missiles_path_minikraid
    dw #presets_nodropskpdr_refill_25_missiles_path_kraid
    dw #presets_nodropskpdr_refill_25_missiles_path_leaving_varia
    dw #presets_nodropskpdr_refill_25_missiles_path_minikraid_revisit
    dw #presets_nodropskpdr_refill_25_missiles_path_kraid_kihunters_revisit
    dw #presets_nodropskpdr_refill_25_missiles_path_business_center_preelev
    dw #presets_nodropskpdr_refill_25_missiles_path_business_center_postelev
    dw #presets_nodropskpdr_refill_25_missiles_path_hijump_etank
    dw #presets_nodropskpdr_refill_25_missiles_path_leaving_hijump
    dw #presets_nodropskpdr_refill_25_missiles_path_business_center_revisit
    dw #$0000
    %cm_header("REFILL 25 MISSILES PATH")

presets_submenu_nodropskpdr_speed_wave_power_bombs:
    dw #presets_nodropskpdr_speed_wave_power_bombs_precathedral
    dw #presets_nodropskpdr_speed_wave_power_bombs_cathedral
    dw #presets_nodropskpdr_speed_wave_power_bombs_rising_tide
    dw #presets_nodropskpdr_speed_wave_power_bombs_bubble_mountain
    dw #presets_nodropskpdr_speed_wave_power_bombs_bat_cave
    dw #presets_nodropskpdr_speed_wave_power_bombs_speed_hallway
    dw #presets_nodropskpdr_speed_wave_power_bombs_bat_cave_revisit
    dw #presets_nodropskpdr_speed_wave_power_bombs_single_chamber
    dw #presets_nodropskpdr_speed_wave_power_bombs_double_chamber
    dw #presets_nodropskpdr_speed_wave_power_bombs_double_chamber_revisit
    dw #presets_nodropskpdr_speed_wave_power_bombs_single_chamber_revisit
    dw #presets_nodropskpdr_speed_wave_power_bombs_bubble_mountain_revisit
    dw #presets_nodropskpdr_speed_wave_power_bombs_frog_speedway
    dw #presets_nodropskpdr_speed_wave_power_bombs_heading_to_red_brinstar
    dw #presets_nodropskpdr_speed_wave_power_bombs_alpha_spark
    dw #presets_nodropskpdr_speed_wave_power_bombs_reverse_skree_boost
    dw #presets_nodropskpdr_speed_wave_power_bombs_red_tower_climb
    dw #presets_nodropskpdr_speed_wave_power_bombs_hellway
    dw #presets_nodropskpdr_speed_wave_power_bombs_caterpillars_down
    dw #presets_nodropskpdr_speed_wave_power_bombs_alpha_power_bombs
    dw #presets_nodropskpdr_speed_wave_power_bombs_caterpillars_up
    dw #$0000
    %cm_header("SPEED WAVE POWER BOMBS")

presets_submenu_nodropskpdr_wrecked_ship:
    dw #presets_nodropskpdr_wrecked_ship_crateria_kihunters
    dw #presets_nodropskpdr_wrecked_ship_ocean_fly_setup
    dw #presets_nodropskpdr_wrecked_ship_ocean_spark
    dw #presets_nodropskpdr_wrecked_ship_entering_wrecked_ship
    dw #presets_nodropskpdr_wrecked_ship_basement
    dw #presets_nodropskpdr_wrecked_ship_phantoon
    dw #presets_nodropskpdr_wrecked_ship_leaving_phantoon
    dw #presets_nodropskpdr_wrecked_ship_shaft_to_supers
    dw #presets_nodropskpdr_wrecked_ship_wrecked_ship_shaft
    dw #presets_nodropskpdr_wrecked_ship_attic
    dw #presets_nodropskpdr_wrecked_ship_upper_west_ocean
    dw #presets_nodropskpdr_wrecked_ship_pancakes_and_wavers
    dw #presets_nodropskpdr_wrecked_ship_bowling_spark
    dw #presets_nodropskpdr_wrecked_ship_leaving_gravity
    dw #presets_nodropskpdr_wrecked_ship_moat_ball
    dw #presets_nodropskpdr_wrecked_ship_crateria_kihunters_return
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_nodropskpdr_red_brinstar_revisit:
    dw #presets_nodropskpdr_red_brinstar_revisit_red_brinstar_elevator
    dw #presets_nodropskpdr_red_brinstar_revisit_caterpillars_revisit
    dw #presets_nodropskpdr_red_brinstar_revisit_hellway_revisit
    dw #presets_nodropskpdr_red_brinstar_revisit_red_tower_down
    dw #presets_nodropskpdr_red_brinstar_revisit_skree_boost_final
    dw #presets_nodropskpdr_red_brinstar_revisit_below_spazer_final
    dw #presets_nodropskpdr_red_brinstar_revisit_breaking_the_tube
    dw #$0000
    %cm_header("RED BRINSTAR REVISIT")

presets_submenu_nodropskpdr_maridia:
    dw #presets_nodropskpdr_maridia_fish_tank
    dw #presets_nodropskpdr_maridia_mt_everest
    dw #presets_nodropskpdr_maridia_crab_shaft
    dw #presets_nodropskpdr_maridia_aqueduct
    dw #presets_nodropskpdr_maridia_botwoon_hallway
    dw #presets_nodropskpdr_maridia_botwoon
    dw #presets_nodropskpdr_maridia_botwoon_etank
    dw #presets_nodropskpdr_maridia_halfie_setup
    dw #presets_nodropskpdr_maridia_draygon
    dw #presets_nodropskpdr_maridia_reverse_halfie_spikesuit
    dw #presets_nodropskpdr_maridia_whomple_jump
    dw #presets_nodropskpdr_maridia_cac_alley_east
    dw #presets_nodropskpdr_maridia_cac_alley_west
    dw #presets_nodropskpdr_maridia_plasma_spark
    dw #presets_nodropskpdr_maridia_plasma_climb
    dw #presets_nodropskpdr_maridia_plasma_beam
    dw #presets_nodropskpdr_maridia_plasma_spark_revisit
    dw #presets_nodropskpdr_maridia_toilet
    dw #presets_nodropskpdr_maridia_sewers
    dw #presets_nodropskpdr_maridia_lower_maridia_gate
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_nodropskpdr_upper_norfair_revisit:
    dw #presets_nodropskpdr_upper_norfair_revisit_ice_beam_gates
    dw #presets_nodropskpdr_upper_norfair_revisit_ice_maze_up
    dw #presets_nodropskpdr_upper_norfair_revisit_ice_maze_down
    dw #presets_nodropskpdr_upper_norfair_revisit_ice_escape
    dw #$FFFF
    dw #presets_nodropskpdr_upper_norfair_revisit_purple_shaft_upper
    dw #presets_nodropskpdr_upper_norfair_revisit_magdollite_tunnel_upper
    dw #presets_nodropskpdr_upper_norfair_revisit_kronic_boost_upper
    dw #$FFFF
    dw #presets_nodropskpdr_upper_norfair_revisit_croc_speedway_lower
    dw #presets_nodropskpdr_upper_norfair_revisit_spiky_acid_snakes_lower
    dw #presets_nodropskpdr_upper_norfair_revisit_kronic_boost_lower
    dw #$0000
    %cm_header("UPPER NORFAIR REVISIT")

presets_submenu_nodropskpdr_lower_norfair:
    dw #presets_nodropskpdr_lower_norfair_ln_main_hall
    dw #presets_nodropskpdr_lower_norfair_prepillars
    dw #presets_nodropskpdr_lower_norfair_fast_pillars_setup
    dw #presets_nodropskpdr_lower_norfair_worst_room_in_the_game
    dw #presets_nodropskpdr_lower_norfair_amphitheatre
    dw #presets_nodropskpdr_lower_norfair_kihunter_stairs_down
    dw #presets_nodropskpdr_lower_norfair_wasteland
    dw #presets_nodropskpdr_lower_norfair_metal_ninja_pirates
    dw #presets_nodropskpdr_lower_norfair_plowerhouse
    dw #presets_nodropskpdr_lower_norfair_ridley
    dw #presets_nodropskpdr_lower_norfair_leaving_ridley
    dw #presets_nodropskpdr_lower_norfair_reverse_plowerhouse
    dw #presets_nodropskpdr_lower_norfair_wasteland_revisit
    dw #presets_nodropskpdr_lower_norfair_kihunter_stairs_up
    dw #presets_nodropskpdr_lower_norfair_fireflea_room
    dw #presets_nodropskpdr_lower_norfair_springball_maze
    dw #presets_nodropskpdr_lower_norfair_three_musketeers
    dw #presets_nodropskpdr_lower_norfair_single_chamber_final
    dw #presets_nodropskpdr_lower_norfair_bubble_mountain_final
    dw #presets_nodropskpdr_lower_norfair_business_center_final
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_nodropskpdr_backtracking:
    dw #presets_nodropskpdr_backtracking_maridia_tube_revisit
    dw #presets_nodropskpdr_backtracking_fish_tank_revisit
    dw #presets_nodropskpdr_backtracking_mt_everest_revisit
    dw #presets_nodropskpdr_backtracking_red_brinstar_green_gate
    dw #presets_nodropskpdr_backtracking_crateria_kihunters_final
    dw #presets_nodropskpdr_backtracking_parlor_spacejump
    dw #presets_nodropskpdr_backtracking_terminator_revisit
    dw #presets_nodropskpdr_backtracking_green_pirate_shaft_revisit
    dw #presets_nodropskpdr_backtracking_g4_hallway
    dw #presets_nodropskpdr_backtracking_g4_elevator
    dw #$0000
    %cm_header("BACKTRACKING")

presets_submenu_nodropskpdr_tourian:
    dw #presets_nodropskpdr_tourian_tourian_elevator_room
    dw #presets_nodropskpdr_tourian_metroids_1
    dw #presets_nodropskpdr_tourian_metroids_2
    dw #presets_nodropskpdr_tourian_metroids_3
    dw #presets_nodropskpdr_tourian_metroids_4
    dw #presets_nodropskpdr_tourian_giant_hoppers
    dw #presets_nodropskpdr_tourian_baby_skip
    dw #presets_nodropskpdr_tourian_gadora_room
    dw #presets_nodropskpdr_tourian_zeb_skip
    dw #presets_nodropskpdr_tourian_mother_brain_2
    dw #presets_nodropskpdr_tourian_mother_brain_3
    dw #presets_nodropskpdr_tourian_zebes_escape
    dw #presets_nodropskpdr_tourian_escape_room_3
    dw #presets_nodropskpdr_tourian_escape_room_4
    dw #presets_nodropskpdr_tourian_escape_climb
    dw #presets_nodropskpdr_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")


; Early Crateria
presets_nodropskpdr_early_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_names_ceres_elevator, #preset_nodropskpdr_early_crateria_ceres_elevator)

presets_nodropskpdr_early_crateria_ceres_escape:
    %cm_preset("Ceres Escape", #preset_names_ceres_escape, #preset_nodropskpdr_early_crateria_ceres_escape)

presets_nodropskpdr_early_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_names_ceres_last_3_rooms, #preset_nodropskpdr_early_crateria_ceres_last_3_rooms)

presets_nodropskpdr_early_crateria_ship:
    %cm_preset("Ship", #preset_names_ship, #preset_nodropskpdr_early_crateria_ship)

presets_nodropskpdr_early_crateria_parlor:
    %cm_preset("Parlor", #preset_names_parlor, #preset_nodropskpdr_early_crateria_parlor)

presets_nodropskpdr_early_crateria_parlor_downback:
    %cm_preset("Parlor Downback", #preset_names_parlor_downback, #preset_nodropskpdr_early_crateria_parlor_downback)

presets_nodropskpdr_early_crateria_climb_down:
    %cm_preset("Climb Down", #preset_names_climb_down, #preset_nodropskpdr_early_crateria_climb_down)

presets_nodropskpdr_early_crateria_pit_room:
    %cm_preset("Pit Room", #preset_names_pit_room, #preset_nodropskpdr_early_crateria_pit_room)

presets_nodropskpdr_early_crateria_morph:
    %cm_preset("Morph", #preset_names_morph, #preset_nodropskpdr_early_crateria_morph)

presets_nodropskpdr_early_crateria_construction_zone:
    %cm_preset("Construction Zone", #preset_names_construction_zone, #preset_nodropskpdr_early_crateria_construction_zone)

presets_nodropskpdr_early_crateria_construction_zone_revisit:
    %cm_preset("Construction Zone Revisit", #preset_names_construction_zone_revisit, #preset_nodropskpdr_early_crateria_construction_zone_revisit)


; 230 Missile Path
presets_nodropskpdr_230_missile_path_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_names_pit_room_revisit, #preset_nodropskpdr_230_missile_path_pit_room_revisit)

presets_nodropskpdr_230_missile_path_climb_up:
    %cm_preset("Climb Up", #preset_names_climb_up, #preset_nodropskpdr_230_missile_path_climb_up)

presets_nodropskpdr_230_missile_path_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_names_parlor_revisit, #preset_nodropskpdr_230_missile_path_parlor_revisit)

presets_nodropskpdr_230_missile_path_flyway:
    %cm_preset("Flyway", #preset_names_flyway, #preset_nodropskpdr_230_missile_path_flyway)

presets_nodropskpdr_230_missile_path_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_names_bomb_torizo, #preset_nodropskpdr_230_missile_path_bomb_torizo)

presets_nodropskpdr_230_missile_path_alcatraz:
    %cm_preset("Alcatraz", #preset_names_alcatraz, #preset_nodropskpdr_230_missile_path_alcatraz)

presets_nodropskpdr_230_missile_path_230_bombway:
    %cm_preset("230 Bombway", #preset_names_230_bombway, #preset_nodropskpdr_230_missile_path_230_bombway)

presets_nodropskpdr_230_missile_path_230_bombway_revisit:
    %cm_preset("230 Bombway Revisit", #preset_names_230_bombway_revisit, #preset_nodropskpdr_230_missile_path_230_bombway_revisit)

presets_nodropskpdr_230_missile_path_terminator:
    %cm_preset("Terminator", #preset_names_terminator, #preset_nodropskpdr_230_missile_path_terminator)

presets_nodropskpdr_230_missile_path_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_names_green_pirate_shaft, #preset_nodropskpdr_230_missile_path_green_pirate_shaft)

presets_nodropskpdr_230_missile_path_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_names_green_brinstar_elevator, #preset_nodropskpdr_230_missile_path_green_brinstar_elevator)

presets_nodropskpdr_230_missile_path_early_supers_missile:
    %cm_preset("Early Supers Missile", #preset_names_early_supers_missile, #preset_nodropskpdr_230_missile_path_early_supers_missile)

presets_nodropskpdr_230_missile_path_brinstar_reserve_missiles:
    %cm_preset("Brinstar Reserve Missiles", #preset_names_brinstar_reserve_missiles, #preset_nodropskpdr_230_missile_path_brinstar_reserve_missiles)

presets_nodropskpdr_230_missile_path_early_supers:
    %cm_preset("Early Supers", #preset_names_early_supers, #preset_nodropskpdr_230_missile_path_early_supers)


; Blue Brinstar Missile Path
presets_nodropskpdr_blue_brinstar_missile_path_blue_brinstar_missiles:
    %cm_preset("Blue Brinstar Missiles", #preset_names_blue_brinstar_missiles, #preset_nodropskpdr_blue_brinstar_missile_path_blue_brinstar_missiles)

presets_nodropskpdr_blue_brinstar_missile_path_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_names_pit_room_revisit, #preset_nodropskpdr_blue_brinstar_missile_path_pit_room_revisit)

presets_nodropskpdr_blue_brinstar_missile_path_climb_up:
    %cm_preset("Climb Up", #preset_names_climb_up, #preset_nodropskpdr_blue_brinstar_missile_path_climb_up)

presets_nodropskpdr_blue_brinstar_missile_path_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_names_parlor_revisit, #preset_nodropskpdr_blue_brinstar_missile_path_parlor_revisit)

presets_nodropskpdr_blue_brinstar_missile_path_flyway:
    %cm_preset("Flyway", #preset_names_flyway, #preset_nodropskpdr_blue_brinstar_missile_path_flyway)

presets_nodropskpdr_blue_brinstar_missile_path_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_names_bomb_torizo, #preset_nodropskpdr_blue_brinstar_missile_path_bomb_torizo)

presets_nodropskpdr_blue_brinstar_missile_path_alcatraz:
    %cm_preset("Alcatraz", #preset_names_alcatraz, #preset_nodropskpdr_blue_brinstar_missile_path_alcatraz)

presets_nodropskpdr_blue_brinstar_missile_path_parlor_after_refill:
    %cm_preset("Parlor After Refill", #preset_names_parlor_after_refill, #preset_nodropskpdr_blue_brinstar_missile_path_parlor_after_refill)

presets_nodropskpdr_blue_brinstar_missile_path_terminator:
    %cm_preset("Terminator", #preset_names_terminator, #preset_nodropskpdr_blue_brinstar_missile_path_terminator)

presets_nodropskpdr_blue_brinstar_missile_path_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_names_green_pirate_shaft, #preset_nodropskpdr_blue_brinstar_missile_path_green_pirate_shaft)

presets_nodropskpdr_blue_brinstar_missile_path_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_names_green_brinstar_elevator, #preset_nodropskpdr_blue_brinstar_missile_path_green_brinstar_elevator)

presets_nodropskpdr_blue_brinstar_missile_path_early_supers:
    %cm_preset("Early Supers", #preset_names_early_supers, #preset_nodropskpdr_blue_brinstar_missile_path_early_supers)


; Refill 15 Missiles Path
presets_nodropskpdr_refill_15_missiles_path_missile_refill:
    %cm_preset("Missile Refill", #preset_names_missile_refill, #preset_nodropskpdr_refill_15_missiles_path_missile_refill)

presets_nodropskpdr_refill_15_missiles_path_leaving_missile_refill:
    %cm_preset("Leaving Missile Refill", #preset_names_leaving_missile_refill, #preset_nodropskpdr_refill_15_missiles_path_leaving_missile_refill)

presets_nodropskpdr_refill_15_missiles_path_dachora_room:
    %cm_preset("Dachora Room", #preset_names_dachora_room, #preset_nodropskpdr_refill_15_missiles_path_dachora_room)

presets_nodropskpdr_refill_15_missiles_path_big_pink:
    %cm_preset("Big Pink", #preset_names_big_pink, #preset_nodropskpdr_refill_15_missiles_path_big_pink)

presets_nodropskpdr_refill_15_missiles_path_leaving_spore_spawn_supers:
    %cm_preset("Leaving Spore Spawn Supers", #preset_names_leaving_spore_spawn_supers, #preset_nodropskpdr_refill_15_missiles_path_leaving_spore_spawn_supers)

presets_nodropskpdr_refill_15_missiles_path_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_names_green_hill_zone, #preset_nodropskpdr_refill_15_missiles_path_green_hill_zone)

presets_nodropskpdr_refill_15_missiles_path_skree_boost:
    %cm_preset("Skree Boost", #preset_names_skree_boost, #preset_nodropskpdr_refill_15_missiles_path_skree_boost)

presets_nodropskpdr_refill_15_missiles_path_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_names_entering_kraids_lair, #preset_nodropskpdr_refill_15_missiles_path_entering_kraids_lair)

presets_nodropskpdr_refill_15_missiles_path_warehouse_zeelas:
    %cm_preset("Warehouse Zeelas", #preset_names_warehouse_zeelas, #preset_nodropskpdr_refill_15_missiles_path_warehouse_zeelas)

presets_nodropskpdr_refill_15_missiles_path_kraid_kihunters:
    %cm_preset("Kraid Kihunters", #preset_names_kraid_kihunters, #preset_nodropskpdr_refill_15_missiles_path_kraid_kihunters)

presets_nodropskpdr_refill_15_missiles_path_minikraid:
    %cm_preset("Mini-Kraid", #preset_names_minikraid, #preset_nodropskpdr_refill_15_missiles_path_minikraid)

presets_nodropskpdr_refill_15_missiles_path_kraid:
    %cm_preset("Kraid", #preset_names_kraid, #preset_nodropskpdr_refill_15_missiles_path_kraid)

presets_nodropskpdr_refill_15_missiles_path_leaving_varia:
    %cm_preset("Leaving Varia", #preset_names_leaving_varia, #preset_nodropskpdr_refill_15_missiles_path_leaving_varia)

presets_nodropskpdr_refill_15_missiles_path_minikraid_revisit:
    %cm_preset("Mini-Kraid Revisit", #preset_names_minikraid_revisit, #preset_nodropskpdr_refill_15_missiles_path_minikraid_revisit)

presets_nodropskpdr_refill_15_missiles_path_kraid_kihunters_revisit:
    %cm_preset("Kraid Kihunters Revisit", #preset_names_kraid_kihunters_revisit, #preset_nodropskpdr_refill_15_missiles_path_kraid_kihunters_revisit)

presets_nodropskpdr_refill_15_missiles_path_business_center_preelev:
    %cm_preset("Business Center Pre-Elev", #preset_names_business_center_preelev, #preset_nodropskpdr_refill_15_missiles_path_business_center_preelev)

presets_nodropskpdr_refill_15_missiles_path_business_center_postelev:
    %cm_preset("Business Center Post-Elev", #preset_names_business_center_postelev, #preset_nodropskpdr_refill_15_missiles_path_business_center_postelev)

presets_nodropskpdr_refill_15_missiles_path_hijump_etank:
    %cm_preset("Hi-Jump E-Tank", #preset_names_hijump_etank, #preset_nodropskpdr_refill_15_missiles_path_hijump_etank)

presets_nodropskpdr_refill_15_missiles_path_leaving_hijump:
    %cm_preset("Leaving Hi-Jump", #preset_names_leaving_hijump, #preset_nodropskpdr_refill_15_missiles_path_leaving_hijump)

presets_nodropskpdr_refill_15_missiles_path_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_names_business_center_revisit, #preset_nodropskpdr_refill_15_missiles_path_business_center_revisit)


; Refill 25 Missiles Path
presets_nodropskpdr_refill_25_missiles_path_missile_refill:
    %cm_preset("Missile Refill", #preset_names_missile_refill, #preset_nodropskpdr_refill_25_missiles_path_missile_refill)

presets_nodropskpdr_refill_25_missiles_path_leaving_missile_refill:
    %cm_preset("Leaving Missile Refill", #preset_names_leaving_missile_refill, #preset_nodropskpdr_refill_25_missiles_path_leaving_missile_refill)

presets_nodropskpdr_refill_25_missiles_path_dachora_room:
    %cm_preset("Dachora Room", #preset_names_dachora_room, #preset_nodropskpdr_refill_25_missiles_path_dachora_room)

presets_nodropskpdr_refill_25_missiles_path_big_pink:
    %cm_preset("Big Pink", #preset_names_big_pink, #preset_nodropskpdr_refill_25_missiles_path_big_pink)

presets_nodropskpdr_refill_25_missiles_path_leaving_spore_spawn_supers:
    %cm_preset("Leaving Spore Spawn Supers", #preset_names_leaving_spore_spawn_supers, #preset_nodropskpdr_refill_25_missiles_path_leaving_spore_spawn_supers)

presets_nodropskpdr_refill_25_missiles_path_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_names_green_hill_zone, #preset_nodropskpdr_refill_25_missiles_path_green_hill_zone)

presets_nodropskpdr_refill_25_missiles_path_skree_boost:
    %cm_preset("Skree Boost", #preset_names_skree_boost, #preset_nodropskpdr_refill_25_missiles_path_skree_boost)

presets_nodropskpdr_refill_25_missiles_path_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_names_entering_kraids_lair, #preset_nodropskpdr_refill_25_missiles_path_entering_kraids_lair)

presets_nodropskpdr_refill_25_missiles_path_warehouse_zeelas:
    %cm_preset("Warehouse Zeelas", #preset_names_warehouse_zeelas, #preset_nodropskpdr_refill_25_missiles_path_warehouse_zeelas)

presets_nodropskpdr_refill_25_missiles_path_kraid_kihunters:
    %cm_preset("Kraid Kihunters", #preset_names_kraid_kihunters, #preset_nodropskpdr_refill_25_missiles_path_kraid_kihunters)

presets_nodropskpdr_refill_25_missiles_path_minikraid:
    %cm_preset("Mini-Kraid", #preset_names_minikraid, #preset_nodropskpdr_refill_25_missiles_path_minikraid)

presets_nodropskpdr_refill_25_missiles_path_kraid:
    %cm_preset("Kraid", #preset_names_kraid, #preset_nodropskpdr_refill_25_missiles_path_kraid)

presets_nodropskpdr_refill_25_missiles_path_leaving_varia:
    %cm_preset("Leaving Varia", #preset_names_leaving_varia, #preset_nodropskpdr_refill_25_missiles_path_leaving_varia)

presets_nodropskpdr_refill_25_missiles_path_minikraid_revisit:
    %cm_preset("Mini-Kraid Revisit", #preset_names_minikraid_revisit, #preset_nodropskpdr_refill_25_missiles_path_minikraid_revisit)

presets_nodropskpdr_refill_25_missiles_path_kraid_kihunters_revisit:
    %cm_preset("Kraid Kihunters Revisit", #preset_names_kraid_kihunters_revisit, #preset_nodropskpdr_refill_25_missiles_path_kraid_kihunters_revisit)

presets_nodropskpdr_refill_25_missiles_path_business_center_preelev:
    %cm_preset("Business Center Pre-Elev", #preset_names_business_center_preelev, #preset_nodropskpdr_refill_25_missiles_path_business_center_preelev)

presets_nodropskpdr_refill_25_missiles_path_business_center_postelev:
    %cm_preset("Business Center Post-Elev", #preset_names_business_center_postelev, #preset_nodropskpdr_refill_25_missiles_path_business_center_postelev)

presets_nodropskpdr_refill_25_missiles_path_hijump_etank:
    %cm_preset("Hi-Jump E-Tank", #preset_names_hijump_etank, #preset_nodropskpdr_refill_25_missiles_path_hijump_etank)

presets_nodropskpdr_refill_25_missiles_path_leaving_hijump:
    %cm_preset("Leaving Hi-Jump", #preset_names_leaving_hijump, #preset_nodropskpdr_refill_25_missiles_path_leaving_hijump)

presets_nodropskpdr_refill_25_missiles_path_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_names_business_center_revisit, #preset_nodropskpdr_refill_25_missiles_path_business_center_revisit)


; Speed Wave Power Bombs
presets_nodropskpdr_speed_wave_power_bombs_precathedral:
    %cm_preset("Pre-Cathedral", #preset_names_precathedral, #preset_nodropskpdr_speed_wave_power_bombs_precathedral)

presets_nodropskpdr_speed_wave_power_bombs_cathedral:
    %cm_preset("Cathedral", #preset_names_cathedral, #preset_nodropskpdr_speed_wave_power_bombs_cathedral)

presets_nodropskpdr_speed_wave_power_bombs_rising_tide:
    %cm_preset("Rising Tide", #preset_names_rising_tide, #preset_nodropskpdr_speed_wave_power_bombs_rising_tide)

presets_nodropskpdr_speed_wave_power_bombs_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_names_bubble_mountain, #preset_nodropskpdr_speed_wave_power_bombs_bubble_mountain)

presets_nodropskpdr_speed_wave_power_bombs_bat_cave:
    %cm_preset("Bat Cave", #preset_names_bat_cave, #preset_nodropskpdr_speed_wave_power_bombs_bat_cave)

presets_nodropskpdr_speed_wave_power_bombs_speed_hallway:
    %cm_preset("Speed Hallway", #preset_names_speed_hallway, #preset_nodropskpdr_speed_wave_power_bombs_speed_hallway)

presets_nodropskpdr_speed_wave_power_bombs_bat_cave_revisit:
    %cm_preset("Bat Cave Revisit", #preset_names_bat_cave_revisit, #preset_nodropskpdr_speed_wave_power_bombs_bat_cave_revisit)

presets_nodropskpdr_speed_wave_power_bombs_single_chamber:
    %cm_preset("Single Chamber", #preset_names_single_chamber, #preset_nodropskpdr_speed_wave_power_bombs_single_chamber)

presets_nodropskpdr_speed_wave_power_bombs_double_chamber:
    %cm_preset("Double Chamber", #preset_names_double_chamber, #preset_nodropskpdr_speed_wave_power_bombs_double_chamber)

presets_nodropskpdr_speed_wave_power_bombs_double_chamber_revisit:
    %cm_preset("Double Chamber Revisit", #preset_names_double_chamber_revisit, #preset_nodropskpdr_speed_wave_power_bombs_double_chamber_revisit)

presets_nodropskpdr_speed_wave_power_bombs_single_chamber_revisit:
    %cm_preset("Single Chamber Revisit", #preset_names_single_chamber_revisit, #preset_nodropskpdr_speed_wave_power_bombs_single_chamber_revisit)

presets_nodropskpdr_speed_wave_power_bombs_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_names_bubble_mountain_revisit, #preset_nodropskpdr_speed_wave_power_bombs_bubble_mountain_revisit)

presets_nodropskpdr_speed_wave_power_bombs_frog_speedway:
    %cm_preset("Frog Speedway", #preset_names_frog_speedway, #preset_nodropskpdr_speed_wave_power_bombs_frog_speedway)

presets_nodropskpdr_speed_wave_power_bombs_heading_to_red_brinstar:
    %cm_preset("Heading To Red Brinstar", #preset_names_heading_to_red_brinstar, #preset_nodropskpdr_speed_wave_power_bombs_heading_to_red_brinstar)

presets_nodropskpdr_speed_wave_power_bombs_alpha_spark:
    %cm_preset("Alpha Spark", #preset_names_alpha_spark, #preset_nodropskpdr_speed_wave_power_bombs_alpha_spark)

presets_nodropskpdr_speed_wave_power_bombs_reverse_skree_boost:
    %cm_preset("Reverse Skree Boost", #preset_names_reverse_skree_boost, #preset_nodropskpdr_speed_wave_power_bombs_reverse_skree_boost)

presets_nodropskpdr_speed_wave_power_bombs_red_tower_climb:
    %cm_preset("Red Tower Climb", #preset_names_red_tower_climb, #preset_nodropskpdr_speed_wave_power_bombs_red_tower_climb)

presets_nodropskpdr_speed_wave_power_bombs_hellway:
    %cm_preset("Hellway", #preset_names_hellway, #preset_nodropskpdr_speed_wave_power_bombs_hellway)

presets_nodropskpdr_speed_wave_power_bombs_caterpillars_down:
    %cm_preset("Caterpillars Down", #preset_names_caterpillars_down, #preset_nodropskpdr_speed_wave_power_bombs_caterpillars_down)

presets_nodropskpdr_speed_wave_power_bombs_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_names_alpha_power_bombs, #preset_nodropskpdr_speed_wave_power_bombs_alpha_power_bombs)

presets_nodropskpdr_speed_wave_power_bombs_caterpillars_up:
    %cm_preset("Caterpillars Up", #preset_names_caterpillars_up, #preset_nodropskpdr_speed_wave_power_bombs_caterpillars_up)


; Wrecked Ship
presets_nodropskpdr_wrecked_ship_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_names_crateria_kihunters, #preset_nodropskpdr_wrecked_ship_crateria_kihunters)

presets_nodropskpdr_wrecked_ship_ocean_fly_setup:
    %cm_preset("Ocean Fly Setup", #preset_names_ocean_fly_setup, #preset_nodropskpdr_wrecked_ship_ocean_fly_setup)

presets_nodropskpdr_wrecked_ship_ocean_spark:
    %cm_preset("Ocean Spark", #preset_names_ocean_spark, #preset_nodropskpdr_wrecked_ship_ocean_spark)

presets_nodropskpdr_wrecked_ship_entering_wrecked_ship:
    %cm_preset("Entering Wrecked Ship", #preset_names_entering_wrecked_ship, #preset_nodropskpdr_wrecked_ship_entering_wrecked_ship)

presets_nodropskpdr_wrecked_ship_basement:
    %cm_preset("Basement", #preset_names_basement, #preset_nodropskpdr_wrecked_ship_basement)

presets_nodropskpdr_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_names_phantoon, #preset_nodropskpdr_wrecked_ship_phantoon)

presets_nodropskpdr_wrecked_ship_leaving_phantoon:
    %cm_preset("Leaving Phantoon", #preset_names_leaving_phantoon, #preset_nodropskpdr_wrecked_ship_leaving_phantoon)

presets_nodropskpdr_wrecked_ship_shaft_to_supers:
    %cm_preset("Shaft To Supers", #preset_names_shaft_to_supers, #preset_nodropskpdr_wrecked_ship_shaft_to_supers)

presets_nodropskpdr_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_names_wrecked_ship_shaft, #preset_nodropskpdr_wrecked_ship_wrecked_ship_shaft)

presets_nodropskpdr_wrecked_ship_attic:
    %cm_preset("Attic", #preset_names_attic, #preset_nodropskpdr_wrecked_ship_attic)

presets_nodropskpdr_wrecked_ship_upper_west_ocean:
    %cm_preset("Upper West Ocean", #preset_names_upper_west_ocean, #preset_nodropskpdr_wrecked_ship_upper_west_ocean)

presets_nodropskpdr_wrecked_ship_pancakes_and_wavers:
    %cm_preset("Pancakes and Wavers", #preset_names_pancakes_and_wavers, #preset_nodropskpdr_wrecked_ship_pancakes_and_wavers)

presets_nodropskpdr_wrecked_ship_bowling_spark:
    %cm_preset("Bowling Spark", #preset_names_bowling_spark, #preset_nodropskpdr_wrecked_ship_bowling_spark)

presets_nodropskpdr_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_names_leaving_gravity, #preset_nodropskpdr_wrecked_ship_leaving_gravity)

presets_nodropskpdr_wrecked_ship_moat_ball:
    %cm_preset("Moat Ball", #preset_names_moat_ball, #preset_nodropskpdr_wrecked_ship_moat_ball)

presets_nodropskpdr_wrecked_ship_crateria_kihunters_return:
    %cm_preset("Crateria Kihunters Return", #preset_names_crateria_kihunters_return, #preset_nodropskpdr_wrecked_ship_crateria_kihunters_return)


; Red Brinstar Revisit
presets_nodropskpdr_red_brinstar_revisit_red_brinstar_elevator:
    %cm_preset("Red Brinstar Elevator", #preset_names_red_brinstar_elevator, #preset_nodropskpdr_red_brinstar_revisit_red_brinstar_elevator)

presets_nodropskpdr_red_brinstar_revisit_caterpillars_revisit:
    %cm_preset("Caterpillars Revisit", #preset_names_caterpillars_revisit, #preset_nodropskpdr_red_brinstar_revisit_caterpillars_revisit)

presets_nodropskpdr_red_brinstar_revisit_hellway_revisit:
    %cm_preset("Hellway Revisit", #preset_names_hellway_revisit, #preset_nodropskpdr_red_brinstar_revisit_hellway_revisit)

presets_nodropskpdr_red_brinstar_revisit_red_tower_down:
    %cm_preset("Red Tower Down", #preset_names_red_tower_down, #preset_nodropskpdr_red_brinstar_revisit_red_tower_down)

presets_nodropskpdr_red_brinstar_revisit_skree_boost_final:
    %cm_preset("Skree Boost Final", #preset_names_skree_boost_final, #preset_nodropskpdr_red_brinstar_revisit_skree_boost_final)

presets_nodropskpdr_red_brinstar_revisit_below_spazer_final:
    %cm_preset("Below Spazer Final", #preset_names_below_spazer_final, #preset_nodropskpdr_red_brinstar_revisit_below_spazer_final)

presets_nodropskpdr_red_brinstar_revisit_breaking_the_tube:
    %cm_preset("Breaking The Tube", #preset_names_breaking_the_tube, #preset_nodropskpdr_red_brinstar_revisit_breaking_the_tube)


; Maridia
presets_nodropskpdr_maridia_fish_tank:
    %cm_preset("Fish Tank", #preset_names_fish_tank, #preset_nodropskpdr_maridia_fish_tank)

presets_nodropskpdr_maridia_mt_everest:
    %cm_preset("Mt. Everest", #preset_names_mt_everest, #preset_nodropskpdr_maridia_mt_everest)

presets_nodropskpdr_maridia_crab_shaft:
    %cm_preset("Crab Shaft", #preset_names_crab_shaft, #preset_nodropskpdr_maridia_crab_shaft)

presets_nodropskpdr_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_names_aqueduct, #preset_nodropskpdr_maridia_aqueduct)

presets_nodropskpdr_maridia_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_names_botwoon_hallway, #preset_nodropskpdr_maridia_botwoon_hallway)

presets_nodropskpdr_maridia_botwoon:
    %cm_preset("Botwoon", #preset_names_botwoon, #preset_nodropskpdr_maridia_botwoon)

presets_nodropskpdr_maridia_botwoon_etank:
    %cm_preset("Botwoon E-Tank", #preset_names_botwoon_etank, #preset_nodropskpdr_maridia_botwoon_etank)

presets_nodropskpdr_maridia_halfie_setup:
    %cm_preset("Halfie Setup", #preset_names_halfie_setup, #preset_nodropskpdr_maridia_halfie_setup)

presets_nodropskpdr_maridia_draygon:
    %cm_preset("Draygon", #preset_names_draygon, #preset_nodropskpdr_maridia_draygon)

presets_nodropskpdr_maridia_reverse_halfie_spikesuit:
    %cm_preset("Reverse Halfie (Spikesuit)", #preset_names_reverse_halfie_spikesuit, #preset_nodropskpdr_maridia_reverse_halfie_spikesuit)

presets_nodropskpdr_maridia_whomple_jump:
    %cm_preset("Whomple Jump", #preset_names_whomple_jump, #preset_nodropskpdr_maridia_whomple_jump)

presets_nodropskpdr_maridia_cac_alley_east:
    %cm_preset("Cac Alley East", #preset_names_cac_alley_east, #preset_nodropskpdr_maridia_cac_alley_east)

presets_nodropskpdr_maridia_cac_alley_west:
    %cm_preset("Cac Alley West", #preset_names_cac_alley_west, #preset_nodropskpdr_maridia_cac_alley_west)

presets_nodropskpdr_maridia_plasma_spark:
    %cm_preset("Plasma Spark", #preset_names_plasma_spark, #preset_nodropskpdr_maridia_plasma_spark)

presets_nodropskpdr_maridia_plasma_climb:
    %cm_preset("Plasma Climb", #preset_names_plasma_climb, #preset_nodropskpdr_maridia_plasma_climb)

presets_nodropskpdr_maridia_plasma_beam:
    %cm_preset("Plasma Beam", #preset_names_plasma_beam, #preset_nodropskpdr_maridia_plasma_beam)

presets_nodropskpdr_maridia_plasma_spark_revisit:
    %cm_preset("Plasma Spark Revisit", #preset_names_plasma_spark_revisit, #preset_nodropskpdr_maridia_plasma_spark_revisit)

presets_nodropskpdr_maridia_toilet:
    %cm_preset("Toilet", #preset_names_toilet, #preset_nodropskpdr_maridia_toilet)

presets_nodropskpdr_maridia_sewers:
    %cm_preset("Sewers", #preset_names_sewers, #preset_nodropskpdr_maridia_sewers)

presets_nodropskpdr_maridia_lower_maridia_gate:
    %cm_preset("Lower Maridia Gate", #preset_names_lower_maridia_gate, #preset_nodropskpdr_maridia_lower_maridia_gate)


; Upper Norfair Revisit
presets_nodropskpdr_upper_norfair_revisit_ice_beam_gates:
    %cm_preset("Ice Beam Gates", #preset_names_ice_beam_gates, #preset_nodropskpdr_upper_norfair_revisit_ice_beam_gates)

presets_nodropskpdr_upper_norfair_revisit_ice_maze_up:
    %cm_preset("Ice Maze Up", #preset_names_ice_maze_up, #preset_nodropskpdr_upper_norfair_revisit_ice_maze_up)

presets_nodropskpdr_upper_norfair_revisit_ice_maze_down:
    %cm_preset("Ice Maze Down", #preset_names_ice_maze_down, #preset_nodropskpdr_upper_norfair_revisit_ice_maze_down)

presets_nodropskpdr_upper_norfair_revisit_ice_escape:
    %cm_preset("Ice Escape", #preset_names_ice_escape, #preset_nodropskpdr_upper_norfair_revisit_ice_escape)

presets_nodropskpdr_upper_norfair_revisit_purple_shaft_upper:
    %cm_preset("Purple Shaft (Upper)", #preset_names_purple_shaft_upper, #preset_nodropskpdr_upper_norfair_revisit_purple_shaft_upper)

presets_nodropskpdr_upper_norfair_revisit_magdollite_tunnel_upper:
    %cm_preset("Magdollite Tunnel (Upper)", #preset_names_magdollite_tunnel_upper, #preset_nodropskpdr_upper_norfair_revisit_magdollite_tunnel_upper)

presets_nodropskpdr_upper_norfair_revisit_kronic_boost_upper:
    %cm_preset("Kronic Boost (Upper)", #preset_names_kronic_boost_upper, #preset_nodropskpdr_upper_norfair_revisit_kronic_boost_upper)

presets_nodropskpdr_upper_norfair_revisit_croc_speedway_lower:
    %cm_preset("Croc Speedway (Lower)", #preset_names_croc_speedway_lower, #preset_nodropskpdr_upper_norfair_revisit_croc_speedway_lower)

presets_nodropskpdr_upper_norfair_revisit_spiky_acid_snakes_lower:
    %cm_preset("Spiky Acid Snakes (Lower)", #preset_names_spiky_acid_snakes_lower, #preset_nodropskpdr_upper_norfair_revisit_spiky_acid_snakes_lower)

presets_nodropskpdr_upper_norfair_revisit_kronic_boost_lower:
    %cm_preset("Kronic Boost (Lower)", #preset_names_kronic_boost_lower, #preset_nodropskpdr_upper_norfair_revisit_kronic_boost_lower)


; Lower Norfair
presets_nodropskpdr_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_names_ln_main_hall, #preset_nodropskpdr_lower_norfair_ln_main_hall)

presets_nodropskpdr_lower_norfair_prepillars:
    %cm_preset("Pre-Pillars", #preset_names_prepillars, #preset_nodropskpdr_lower_norfair_prepillars)

presets_nodropskpdr_lower_norfair_fast_pillars_setup:
    %cm_preset("Fast Pillars Setup", #preset_names_fast_pillars_setup, #preset_nodropskpdr_lower_norfair_fast_pillars_setup)

presets_nodropskpdr_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_names_worst_room_in_the_game, #preset_nodropskpdr_lower_norfair_worst_room_in_the_game)

presets_nodropskpdr_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_names_amphitheatre, #preset_nodropskpdr_lower_norfair_amphitheatre)

presets_nodropskpdr_lower_norfair_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_names_kihunter_stairs_down, #preset_nodropskpdr_lower_norfair_kihunter_stairs_down)

presets_nodropskpdr_lower_norfair_wasteland:
    %cm_preset("Wasteland", #preset_names_wasteland, #preset_nodropskpdr_lower_norfair_wasteland)

presets_nodropskpdr_lower_norfair_metal_ninja_pirates:
    %cm_preset("Metal Ninja Pirates", #preset_names_metal_ninja_pirates, #preset_nodropskpdr_lower_norfair_metal_ninja_pirates)

presets_nodropskpdr_lower_norfair_plowerhouse:
    %cm_preset("Plowerhouse", #preset_names_plowerhouse, #preset_nodropskpdr_lower_norfair_plowerhouse)

presets_nodropskpdr_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_names_ridley, #preset_nodropskpdr_lower_norfair_ridley)

presets_nodropskpdr_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_names_leaving_ridley, #preset_nodropskpdr_lower_norfair_leaving_ridley)

presets_nodropskpdr_lower_norfair_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_names_reverse_plowerhouse, #preset_nodropskpdr_lower_norfair_reverse_plowerhouse)

presets_nodropskpdr_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_names_wasteland_revisit, #preset_nodropskpdr_lower_norfair_wasteland_revisit)

presets_nodropskpdr_lower_norfair_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_names_kihunter_stairs_up, #preset_nodropskpdr_lower_norfair_kihunter_stairs_up)

presets_nodropskpdr_lower_norfair_fireflea_room:
    %cm_preset("Fireflea Room", #preset_names_fireflea_room, #preset_nodropskpdr_lower_norfair_fireflea_room)

presets_nodropskpdr_lower_norfair_springball_maze:
    %cm_preset("Springball Maze", #preset_names_springball_maze, #preset_nodropskpdr_lower_norfair_springball_maze)

presets_nodropskpdr_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_names_three_musketeers, #preset_nodropskpdr_lower_norfair_three_musketeers)

presets_nodropskpdr_lower_norfair_single_chamber_final:
    %cm_preset("Single Chamber Final", #preset_names_single_chamber_final, #preset_nodropskpdr_lower_norfair_single_chamber_final)

presets_nodropskpdr_lower_norfair_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_names_bubble_mountain_final, #preset_nodropskpdr_lower_norfair_bubble_mountain_final)

presets_nodropskpdr_lower_norfair_business_center_final:
    %cm_preset("Business Center Final", #preset_names_business_center_final, #preset_nodropskpdr_lower_norfair_business_center_final)


; Backtracking
presets_nodropskpdr_backtracking_maridia_tube_revisit:
    %cm_preset("Maridia Tube Revisit", #preset_names_maridia_tube_revisit, #preset_nodropskpdr_backtracking_maridia_tube_revisit)

presets_nodropskpdr_backtracking_fish_tank_revisit:
    %cm_preset("Fish Tank Revisit", #preset_names_fish_tank_revisit, #preset_nodropskpdr_backtracking_fish_tank_revisit)

presets_nodropskpdr_backtracking_mt_everest_revisit:
    %cm_preset("Mt. Everest Revisit", #preset_names_mt_everest_revisit, #preset_nodropskpdr_backtracking_mt_everest_revisit)

presets_nodropskpdr_backtracking_red_brinstar_green_gate:
    %cm_preset("Red Brinstar Green Gate", #preset_names_red_brinstar_green_gate, #preset_nodropskpdr_backtracking_red_brinstar_green_gate)

presets_nodropskpdr_backtracking_crateria_kihunters_final:
    %cm_preset("Crateria Kihunters Final", #preset_names_crateria_kihunters_final, #preset_nodropskpdr_backtracking_crateria_kihunters_final)

presets_nodropskpdr_backtracking_parlor_spacejump:
    %cm_preset("Parlor Spacejump", #preset_names_parlor_spacejump, #preset_nodropskpdr_backtracking_parlor_spacejump)

presets_nodropskpdr_backtracking_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_names_terminator_revisit, #preset_nodropskpdr_backtracking_terminator_revisit)

presets_nodropskpdr_backtracking_green_pirate_shaft_revisit:
    %cm_preset("Green Pirate Shaft Revisit", #preset_names_green_pirate_shaft_revisit, #preset_nodropskpdr_backtracking_green_pirate_shaft_revisit)

presets_nodropskpdr_backtracking_g4_hallway:
    %cm_preset("G4 Hallway", #preset_names_g4_hallway, #preset_nodropskpdr_backtracking_g4_hallway)

presets_nodropskpdr_backtracking_g4_elevator:
    %cm_preset("G4 Elevator", #preset_names_g4_elevator, #preset_nodropskpdr_backtracking_g4_elevator)


; Tourian
presets_nodropskpdr_tourian_tourian_elevator_room:
    %cm_preset("Tourian Elevator Room", #preset_names_tourian_elevator_room, #preset_nodropskpdr_tourian_tourian_elevator_room)

presets_nodropskpdr_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_names_metroids_1, #preset_nodropskpdr_tourian_metroids_1)

presets_nodropskpdr_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_names_metroids_2, #preset_nodropskpdr_tourian_metroids_2)

presets_nodropskpdr_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_names_metroids_3, #preset_nodropskpdr_tourian_metroids_3)

presets_nodropskpdr_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_names_metroids_4, #preset_nodropskpdr_tourian_metroids_4)

presets_nodropskpdr_tourian_giant_hoppers:
    %cm_preset("Giant Hoppers", #preset_names_giant_hoppers, #preset_nodropskpdr_tourian_giant_hoppers)

presets_nodropskpdr_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_names_baby_skip, #preset_nodropskpdr_tourian_baby_skip)

presets_nodropskpdr_tourian_gadora_room:
    %cm_preset("Gadora Room", #preset_names_gadora_room, #preset_nodropskpdr_tourian_gadora_room)

presets_nodropskpdr_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_names_zeb_skip, #preset_nodropskpdr_tourian_zeb_skip)

presets_nodropskpdr_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_names_mother_brain_2, #preset_nodropskpdr_tourian_mother_brain_2)

presets_nodropskpdr_tourian_mother_brain_3:
    %cm_preset("Mother Brain 3", #preset_names_mother_brain_3, #preset_nodropskpdr_tourian_mother_brain_3)

presets_nodropskpdr_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_names_zebes_escape, #preset_nodropskpdr_tourian_zebes_escape)

presets_nodropskpdr_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_names_escape_room_3, #preset_nodropskpdr_tourian_escape_room_3)

presets_nodropskpdr_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_names_escape_room_4, #preset_nodropskpdr_tourian_escape_room_4)

presets_nodropskpdr_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_names_escape_climb, #preset_nodropskpdr_tourian_escape_climb)

presets_nodropskpdr_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_names_escape_parlor, #preset_nodropskpdr_tourian_escape_parlor)

