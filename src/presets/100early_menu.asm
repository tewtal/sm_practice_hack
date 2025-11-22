PresetsMenu100early:
    dw #presets_goto_100early_crateria
    dw #presets_goto_100early_brinstar
    dw #presets_goto_100early_speed_booster
    dw #presets_goto_100early_grapple
    dw #presets_goto_100early_red_tower_and_crateria
    dw #presets_goto_100early_wrecked_ship
    dw #presets_goto_100early_brinstar_cleanup
    dw #presets_goto_100early_maridia_predraygon
    dw #presets_goto_100early_maridia_postdraygon
    dw #presets_goto_100early_kraidicekronic
    dw #presets_goto_100early_lower_norfair
    dw #presets_goto_100early_final_cleanup
    dw #presets_goto_100early_tourian
    dw #$0000
    %cm_header("100% ITEMS - EARLY CROC")

presets_goto_100early_crateria:
    %cm_submenu("Crateria", #presets_submenu_100early_crateria)

presets_goto_100early_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_100early_brinstar)

presets_goto_100early_speed_booster:
    %cm_submenu("Speed Booster", #presets_submenu_100early_speed_booster)

presets_goto_100early_grapple:
    %cm_submenu("Grapple", #presets_submenu_100early_grapple)

presets_goto_100early_red_tower_and_crateria:
    %cm_submenu("Red Tower and Crateria", #presets_submenu_100early_red_tower_and_crateria)

presets_goto_100early_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_100early_wrecked_ship)

presets_goto_100early_brinstar_cleanup:
    %cm_submenu("Brinstar Cleanup", #presets_submenu_100early_brinstar_cleanup)

presets_goto_100early_maridia_predraygon:
    %cm_submenu("Maridia Pre-Draygon", #presets_submenu_100early_maridia_predraygon)

presets_goto_100early_maridia_postdraygon:
    %cm_submenu("Maridia Post-Draygon", #presets_submenu_100early_maridia_postdraygon)

presets_goto_100early_kraidicekronic:
    %cm_submenu("Kraid-Ice-Kronic", #presets_submenu_100early_kraidicekronic)

presets_goto_100early_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_100early_lower_norfair)

presets_goto_100early_final_cleanup:
    %cm_submenu("Final Cleanup", #presets_submenu_100early_final_cleanup)

presets_goto_100early_tourian:
    %cm_submenu("Tourian", #presets_submenu_100early_tourian)

presets_submenu_100early_crateria:
    dw #presets_100early_crateria_ceres_elevator
    dw #presets_100early_crateria_ceres_escape
    dw #presets_100early_crateria_ceres_last_3_rooms
    dw #presets_100early_crateria_ship
    dw #presets_100early_crateria_parlor
    dw #presets_100early_crateria_climb_down
    dw #presets_100early_crateria_pit_room
    dw #presets_100early_crateria_morph
    dw #presets_100early_crateria_construction_zone_down
    dw #presets_100early_crateria_construction_zone_up
    dw #presets_100early_crateria_pit_room_revisit
    dw #presets_100early_crateria_climb_up
    dw #presets_100early_crateria_parlor_revisit
    dw #presets_100early_crateria_flyway
    dw #presets_100early_crateria_bomb_torizo
    dw #presets_100early_crateria_alcatraz
    dw #presets_100early_crateria_terminator
    dw #presets_100early_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_100early_brinstar:
    dw #presets_100early_brinstar_green_brinstar
    dw #presets_100early_brinstar_early_supers
    dw #presets_100early_brinstar_reverse_mockball
    dw #presets_100early_brinstar_dachora_room
    dw #presets_100early_brinstar_big_pink
    dw #presets_100early_brinstar_green_hill_zone
    dw #presets_100early_brinstar_red_tower
    dw #presets_100early_brinstar_skree_boost
    dw #presets_100early_brinstar_kraid_entry
    dw #presets_100early_brinstar_kraid_kihunter_room
    dw #presets_100early_brinstar_kraid
    dw #presets_100early_brinstar_leaving_varia
    dw #presets_100early_brinstar_leaving_kraid_hallway
    dw #presets_100early_brinstar_leaving_kraid_etank
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_100early_speed_booster:
    dw #presets_100early_speed_booster_business_center
    dw #presets_100early_speed_booster_hijump_boots
    dw #presets_100early_speed_booster_business_center_climb
    dw #presets_100early_speed_booster_cathedral_entrance
    dw #presets_100early_speed_booster_cathedral
    dw #presets_100early_speed_booster_rising_tide
    dw #presets_100early_speed_booster_bubble_mountain
    dw #presets_100early_speed_booster_bat_cave
    dw #presets_100early_speed_booster_leaving_speed_booster
    dw #$0000
    %cm_header("SPEED BOOSTER")

presets_submenu_100early_grapple:
    dw #presets_100early_grapple_single_chamber
    dw #presets_100early_grapple_double_chamber
    dw #presets_100early_grapple_double_chamber_revisit
    dw #presets_100early_grapple_bubble_mountain_revisit
    dw #presets_100early_grapple_red_pirate_shaft
    dw #presets_100early_grapple_crocomire
    dw #presets_100early_grapple_postcrocomire
    dw #presets_100early_grapple_leaving_power_bombs
    dw #presets_100early_grapple_postcrocomire_jump_room
    dw #presets_100early_grapple_leaving_grapple
    dw #presets_100early_grapple_postcrocomire_missiles
    dw #presets_100early_grapple_crocomire_revisit
    dw #presets_100early_grapple_crocomire_escape
    dw #presets_100early_grapple_business_center_return
    dw #$0000
    %cm_header("GRAPPLE")

presets_submenu_100early_red_tower_and_crateria:
    dw #presets_100early_red_tower_and_crateria_warehouse_elevator
    dw #presets_100early_red_tower_and_crateria_red_tower_climb
    dw #presets_100early_red_tower_and_crateria_hellway
    dw #presets_100early_red_tower_and_crateria_alpha_power_bombs
    dw #presets_100early_red_tower_and_crateria_elevator_room_ascent
    dw #presets_100early_red_tower_and_crateria_beta_power_bombs
    dw #presets_100early_red_tower_and_crateria_crateria_kihunters
    dw #presets_100early_red_tower_and_crateria_ocean_fly
    dw #presets_100early_red_tower_and_crateria_the_moat
    dw #presets_100early_red_tower_and_crateria_ocean_spark
    dw #$0000
    %cm_header("RED TOWER AND CRATERIA")

presets_submenu_100early_wrecked_ship:
    dw #presets_100early_wrecked_ship_enter_wrecked_ship
    dw #presets_100early_wrecked_ship_phantoon
    dw #presets_100early_wrecked_ship_leaving_phantoon
    dw #presets_100early_wrecked_ship_east_supers
    dw #presets_100early_wrecked_ship_leaving_west_supers
    dw #presets_100early_wrecked_ship_spiky_room_of_death
    dw #presets_100early_wrecked_ship_wrecked_ship_etank
    dw #presets_100early_wrecked_ship_spiky_room_revisit
    dw #presets_100early_wrecked_ship_shaft_ascent
    dw #presets_100early_wrecked_ship_attic
    dw #presets_100early_wrecked_ship_attic_missiles
    dw #presets_100early_wrecked_ship_attic_revisit
    dw #presets_100early_wrecked_ship_sky_missiles
    dw #presets_100early_wrecked_ship_bowling_alley_path
    dw #presets_100early_wrecked_ship_bowling_alley
    dw #presets_100early_wrecked_ship_leaving_gravity
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_100early_brinstar_cleanup:
    dw #presets_100early_brinstar_cleanup_landing_site
    dw #presets_100early_brinstar_cleanup_gauntlet_spark
    dw #presets_100early_brinstar_cleanup_gauntlet_etank
    dw #presets_100early_brinstar_cleanup_leaving_gauntlet
    dw #presets_100early_brinstar_cleanup_green_brinstar_elevator
    dw #presets_100early_brinstar_cleanup_green_brinstar_beetoms
    dw #presets_100early_brinstar_cleanup_etecoon_etank_room
    dw #presets_100early_brinstar_cleanup_etecoon_room
    dw #presets_100early_brinstar_cleanup_dachora_room_revisit
    dw #presets_100early_brinstar_cleanup_big_pink_revisit
    dw #presets_100early_brinstar_cleanup_big_pink_power_bombs
    dw #presets_100early_brinstar_cleanup_big_pink_hopper_room
    dw #presets_100early_brinstar_cleanup_spore_spawn_supers
    dw #presets_100early_brinstar_cleanup_waterway_etank
    dw #presets_100early_brinstar_cleanup_green_hill_zone_revisit
    dw #presets_100early_brinstar_cleanup_blockbuster
    dw #$0000
    %cm_header("BRINSTAR CLEANUP")

presets_submenu_100early_maridia_predraygon:
    dw #presets_100early_maridia_predraygon_main_street
    dw #presets_100early_maridia_predraygon_fish_tank
    dw #presets_100early_maridia_predraygon_mama_turtle_etank
    dw #presets_100early_maridia_predraygon_fish_tank_revisit
    dw #presets_100early_maridia_predraygon_mt_everest
    dw #presets_100early_maridia_predraygon_beach_missiles
    dw #presets_100early_maridia_predraygon_west_beach
    dw #presets_100early_maridia_predraygon_watering_hole
    dw #presets_100early_maridia_predraygon_west_beach_revisit
    dw #presets_100early_maridia_predraygon_beach_missiles_revisit
    dw #presets_100early_maridia_predraygon_aqueduct
    dw #presets_100early_maridia_predraygon_botwoon
    dw #presets_100early_maridia_predraygon_full_halfie
    dw #presets_100early_maridia_predraygon_draygon_missiles
    dw #presets_100early_maridia_predraygon_draygon
    dw #$0000
    %cm_header("MARIDIA PRE-DRAYGON")

presets_submenu_100early_maridia_postdraygon:
    dw #presets_100early_maridia_postdraygon_reverse_halfie
    dw #presets_100early_maridia_postdraygon_reverse_botwoon_etank
    dw #presets_100early_maridia_postdraygon_east_sand_pit
    dw #presets_100early_maridia_postdraygon_pants_room
    dw #presets_100early_maridia_postdraygon_shaktool
    dw #presets_100early_maridia_postdraygon_shaktool_revisit
    dw #presets_100early_maridia_postdraygon_east_sand_hall
    dw #presets_100early_maridia_postdraygon_plasma_spark_room
    dw #presets_100early_maridia_postdraygon_kassiuz_room
    dw #presets_100early_maridia_postdraygon_plasma
    dw #presets_100early_maridia_postdraygon_leaving_plasma
    dw #presets_100early_maridia_postdraygon_leaving_kassiuz
    dw #presets_100early_maridia_postdraygon_cac_alley
    dw #presets_100early_maridia_postdraygon_botwoon_etank
    dw #presets_100early_maridia_postdraygon_aqueduct_final
    dw #presets_100early_maridia_postdraygon_west_sand_pit
    dw #presets_100early_maridia_postdraygon_thread_the_needle
    dw #$0000
    %cm_header("MARIDIA POST-DRAYGON")

presets_submenu_100early_kraidicekronic:
    dw #presets_100early_kraidicekronic_kraid_entrance_revisit
    dw #presets_100early_kraidicekronic_kraid_missiles
    dw #presets_100early_kraidicekronic_kraid_missiles_escape
    dw #presets_100early_kraidicekronic_ice_beam_gate_room
    dw #presets_100early_kraidicekronic_ice_beam_snake_room
    dw #presets_100early_kraidicekronic_snake_room_revisit
    dw #presets_100early_kraidicekronic_ice_escape
    dw #presets_100early_kraidicekronic_crumble_shaft_missiles
    dw #presets_100early_kraidicekronic_crocomire_speedway
    dw #presets_100early_kraidicekronic_kronic_boost
    dw #$0000
    %cm_header("KRAID-ICE-KRONIC")

presets_submenu_100early_lower_norfair:
    dw #presets_100early_lower_norfair_ln_main_hall
    dw #presets_100early_lower_norfair_golden_torizo
    dw #presets_100early_lower_norfair_leaving_golden_torizo
    dw #presets_100early_lower_norfair_fast_ripper_room
    dw #presets_100early_lower_norfair_worst_room_in_the_game
    dw #presets_100early_lower_norfair_mickey_mouse_missiles
    dw #presets_100early_lower_norfair_amphitheatre
    dw #presets_100early_lower_norfair_red_kihunter_shaft
    dw #presets_100early_lower_norfair_ninja_pirates
    dw #presets_100early_lower_norfair_plowerhouse_room
    dw #presets_100early_lower_norfair_ridley
    dw #presets_100early_lower_norfair_ridley_escape
    dw #presets_100early_lower_norfair_wasteland_revisit
    dw #presets_100early_lower_norfair_kihunter_shaft_revisit
    dw #presets_100early_lower_norfair_firefleas_room
    dw #presets_100early_lower_norfair_springball_maze
    dw #presets_100early_lower_norfair_three_musketeers
    dw #presets_100early_lower_norfair_bubble_mountain_return
    dw #presets_100early_lower_norfair_norfair_reserve
    dw #presets_100early_lower_norfair_bubble_mountain_final
    dw #presets_100early_lower_norfair_business_center_final
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_100early_final_cleanup:
    dw #presets_100early_final_cleanup_below_spazer
    dw #presets_100early_final_cleanup_red_tower_xray
    dw #presets_100early_final_cleanup_xray_passage
    dw #presets_100early_final_cleanup_xray_passage_return
    dw #presets_100early_final_cleanup_reverse_slinky
    dw #presets_100early_final_cleanup_retro_brinstar_hoppers
    dw #presets_100early_final_cleanup_retro_brinstar_etank
    dw #presets_100early_final_cleanup_boulder_room
    dw #presets_100early_final_cleanup_leaving_billy_mays
    dw #presets_100early_final_cleanup_retro_brinstar_escape
    dw #presets_100early_final_cleanup_old_tourian_missiles
    dw #presets_100early_final_cleanup_climb_supers
    dw #presets_100early_final_cleanup_parlor_missiles
    dw #presets_100early_final_cleanup_leaving_parlor_missiles
    dw #presets_100early_final_cleanup_terminator_revisit
    dw #$0000
    %cm_header("FINAL CLEANUP")

presets_submenu_100early_tourian:
    dw #presets_100early_tourian_metroids_1
    dw #presets_100early_tourian_metroids_2
    dw #presets_100early_tourian_metroids_3
    dw #presets_100early_tourian_metroids_4
    dw #presets_100early_tourian_baby_skip
    dw #presets_100early_tourian_after_baby_skip
    dw #presets_100early_tourian_zeb_skip
    dw #presets_100early_tourian_mother_brain_2
    dw #presets_100early_tourian_zebes_escape
    dw #presets_100early_tourian_escape_room_3
    dw #presets_100early_tourian_escape_room_4
    dw #presets_100early_tourian_escape_climb
    dw #presets_100early_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")


; Crateria
presets_100early_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_names_ceres_elevator, #preset_100early_crateria_ceres_elevator)

presets_100early_crateria_ceres_escape:
    %cm_preset("Ceres Escape", #preset_names_ceres_escape, #preset_100early_crateria_ceres_escape)

presets_100early_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_names_ceres_last_3_rooms, #preset_100early_crateria_ceres_last_3_rooms)

presets_100early_crateria_ship:
    %cm_preset("Ship", #preset_names_ship, #preset_100early_crateria_ship)

presets_100early_crateria_parlor:
    %cm_preset("Parlor", #preset_names_parlor, #preset_100early_crateria_parlor)

presets_100early_crateria_climb_down:
    %cm_preset("Climb Down", #preset_names_climb_down, #preset_100early_crateria_climb_down)

presets_100early_crateria_pit_room:
    %cm_preset("Pit Room", #preset_names_pit_room, #preset_100early_crateria_pit_room)

presets_100early_crateria_morph:
    %cm_preset("Morph", #preset_names_morph, #preset_100early_crateria_morph)

presets_100early_crateria_construction_zone_down:
    %cm_preset("Construction Zone Down", #preset_names_construction_zone_down, #preset_100early_crateria_construction_zone_down)

presets_100early_crateria_construction_zone_up:
    %cm_preset("Construction Zone Up", #preset_names_construction_zone_up, #preset_100early_crateria_construction_zone_up)

presets_100early_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_names_pit_room_revisit, #preset_100early_crateria_pit_room_revisit)

presets_100early_crateria_climb_up:
    %cm_preset("Climb Up", #preset_names_climb_up, #preset_100early_crateria_climb_up)

presets_100early_crateria_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_names_parlor_revisit, #preset_100early_crateria_parlor_revisit)

presets_100early_crateria_flyway:
    %cm_preset("Flyway", #preset_names_flyway, #preset_100early_crateria_flyway)

presets_100early_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_names_bomb_torizo, #preset_100early_crateria_bomb_torizo)

presets_100early_crateria_alcatraz:
    %cm_preset("Alcatraz", #preset_names_alcatraz, #preset_100early_crateria_alcatraz)

presets_100early_crateria_terminator:
    %cm_preset("Terminator", #preset_names_terminator, #preset_100early_crateria_terminator)

presets_100early_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_names_green_pirate_shaft, #preset_100early_crateria_green_pirate_shaft)


; Brinstar
presets_100early_brinstar_green_brinstar:
    %cm_preset("Green Brinstar", #preset_names_green_brinstar, #preset_100early_brinstar_green_brinstar)

presets_100early_brinstar_early_supers:
    %cm_preset("Early Supers", #preset_names_early_supers, #preset_100early_brinstar_early_supers)

presets_100early_brinstar_reverse_mockball:
    %cm_preset("Reverse Mockball", #preset_names_reverse_mockball, #preset_100early_brinstar_reverse_mockball)

presets_100early_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_names_dachora_room, #preset_100early_brinstar_dachora_room)

presets_100early_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_names_big_pink, #preset_100early_brinstar_big_pink)

presets_100early_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_names_green_hill_zone, #preset_100early_brinstar_green_hill_zone)

presets_100early_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_names_red_tower, #preset_100early_brinstar_red_tower)

presets_100early_brinstar_skree_boost:
    %cm_preset("Skree Boost", #preset_names_skree_boost, #preset_100early_brinstar_skree_boost)

presets_100early_brinstar_kraid_entry:
    %cm_preset("Kraid Entry", #preset_names_kraid_entry, #preset_100early_brinstar_kraid_entry)

presets_100early_brinstar_kraid_kihunter_room:
    %cm_preset("Kraid Kihunter Room", #preset_names_kraid_kihunter_room, #preset_100early_brinstar_kraid_kihunter_room)

presets_100early_brinstar_kraid:
    %cm_preset("Kraid", #preset_names_kraid, #preset_100early_brinstar_kraid)

presets_100early_brinstar_leaving_varia:
    %cm_preset("Leaving Varia", #preset_names_leaving_varia, #preset_100early_brinstar_leaving_varia)

presets_100early_brinstar_leaving_kraid_hallway:
    %cm_preset("Leaving Kraid Hallway", #preset_names_leaving_kraid_hallway, #preset_100early_brinstar_leaving_kraid_hallway)

presets_100early_brinstar_leaving_kraid_etank:
    %cm_preset("Leaving Kraid E-Tank", #preset_names_leaving_kraid_etank, #preset_100early_brinstar_leaving_kraid_etank)


; Speed Booster
presets_100early_speed_booster_business_center:
    %cm_preset("Business Center", #preset_names_business_center, #preset_100early_speed_booster_business_center)

presets_100early_speed_booster_hijump_boots:
    %cm_preset("Hi-Jump Boots", #preset_names_hijump_boots, #preset_100early_speed_booster_hijump_boots)

presets_100early_speed_booster_business_center_climb:
    %cm_preset("Business Center Climb", #preset_names_business_center_climb, #preset_100early_speed_booster_business_center_climb)

presets_100early_speed_booster_cathedral_entrance:
    %cm_preset("Cathedral Entrance", #preset_names_cathedral_entrance, #preset_100early_speed_booster_cathedral_entrance)

presets_100early_speed_booster_cathedral:
    %cm_preset("Cathedral", #preset_names_cathedral, #preset_100early_speed_booster_cathedral)

presets_100early_speed_booster_rising_tide:
    %cm_preset("Rising Tide", #preset_names_rising_tide, #preset_100early_speed_booster_rising_tide)

presets_100early_speed_booster_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_names_bubble_mountain, #preset_100early_speed_booster_bubble_mountain)

presets_100early_speed_booster_bat_cave:
    %cm_preset("Bat Cave", #preset_names_bat_cave, #preset_100early_speed_booster_bat_cave)

presets_100early_speed_booster_leaving_speed_booster:
    %cm_preset("Leaving Speed Booster", #preset_names_leaving_speed_booster, #preset_100early_speed_booster_leaving_speed_booster)


; Grapple
presets_100early_grapple_single_chamber:
    %cm_preset("Single Chamber", #preset_names_single_chamber, #preset_100early_grapple_single_chamber)

presets_100early_grapple_double_chamber:
    %cm_preset("Double Chamber", #preset_names_double_chamber, #preset_100early_grapple_double_chamber)

presets_100early_grapple_double_chamber_revisit:
    %cm_preset("Double Chamber Revisit", #preset_names_double_chamber_revisit, #preset_100early_grapple_double_chamber_revisit)

presets_100early_grapple_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_names_bubble_mountain_revisit, #preset_100early_grapple_bubble_mountain_revisit)

presets_100early_grapple_red_pirate_shaft:
    %cm_preset("Red Pirate Shaft", #preset_names_red_pirate_shaft, #preset_100early_grapple_red_pirate_shaft)

presets_100early_grapple_crocomire:
    %cm_preset("Crocomire", #preset_names_crocomire, #preset_100early_grapple_crocomire)

presets_100early_grapple_postcrocomire:
    %cm_preset("Post-Crocomire", #preset_names_postcrocomire, #preset_100early_grapple_postcrocomire)

presets_100early_grapple_leaving_power_bombs:
    %cm_preset("Leaving Power Bombs", #preset_names_leaving_power_bombs, #preset_100early_grapple_leaving_power_bombs)

presets_100early_grapple_postcrocomire_jump_room:
    %cm_preset("Post-Crocomire Jump Room", #preset_names_postcrocomire_jump_room, #preset_100early_grapple_postcrocomire_jump_room)

presets_100early_grapple_leaving_grapple:
    %cm_preset("Leaving Grapple", #preset_names_leaving_grapple, #preset_100early_grapple_leaving_grapple)

presets_100early_grapple_postcrocomire_missiles:
    %cm_preset("Post-Crocomire Missiles", #preset_names_postcrocomire_missiles, #preset_100early_grapple_postcrocomire_missiles)

presets_100early_grapple_crocomire_revisit:
    %cm_preset("Crocomire Revisit", #preset_names_crocomire_revisit, #preset_100early_grapple_crocomire_revisit)

presets_100early_grapple_crocomire_escape:
    %cm_preset("Crocomire Escape", #preset_names_crocomire_escape, #preset_100early_grapple_crocomire_escape)

presets_100early_grapple_business_center_return:
    %cm_preset("Business Center Return", #preset_names_business_center_return, #preset_100early_grapple_business_center_return)


; Red Tower and Crateria
presets_100early_red_tower_and_crateria_warehouse_elevator:
    %cm_preset("Warehouse Elevator", #preset_names_warehouse_elevator, #preset_100early_red_tower_and_crateria_warehouse_elevator)

presets_100early_red_tower_and_crateria_red_tower_climb:
    %cm_preset("Red Tower Climb", #preset_names_red_tower_climb, #preset_100early_red_tower_and_crateria_red_tower_climb)

presets_100early_red_tower_and_crateria_hellway:
    %cm_preset("Hellway", #preset_names_hellway, #preset_100early_red_tower_and_crateria_hellway)

presets_100early_red_tower_and_crateria_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_names_alpha_power_bombs, #preset_100early_red_tower_and_crateria_alpha_power_bombs)

presets_100early_red_tower_and_crateria_elevator_room_ascent:
    %cm_preset("Elevator Room Ascent", #preset_names_elevator_room_ascent, #preset_100early_red_tower_and_crateria_elevator_room_ascent)

presets_100early_red_tower_and_crateria_beta_power_bombs:
    %cm_preset("Beta Power Bombs", #preset_names_beta_power_bombs, #preset_100early_red_tower_and_crateria_beta_power_bombs)

presets_100early_red_tower_and_crateria_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_names_crateria_kihunters, #preset_100early_red_tower_and_crateria_crateria_kihunters)

presets_100early_red_tower_and_crateria_ocean_fly:
    %cm_preset("Ocean Fly", #preset_names_ocean_fly, #preset_100early_red_tower_and_crateria_ocean_fly)

presets_100early_red_tower_and_crateria_the_moat:
    %cm_preset("The Moat", #preset_names_the_moat, #preset_100early_red_tower_and_crateria_the_moat)

presets_100early_red_tower_and_crateria_ocean_spark:
    %cm_preset("Ocean Spark", #preset_names_ocean_spark, #preset_100early_red_tower_and_crateria_ocean_spark)


; Wrecked Ship
presets_100early_wrecked_ship_enter_wrecked_ship:
    %cm_preset("Enter Wrecked Ship", #preset_names_enter_wrecked_ship, #preset_100early_wrecked_ship_enter_wrecked_ship)

presets_100early_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_names_phantoon, #preset_100early_wrecked_ship_phantoon)

presets_100early_wrecked_ship_leaving_phantoon:
    %cm_preset("Leaving Phantoon", #preset_names_leaving_phantoon, #preset_100early_wrecked_ship_leaving_phantoon)

presets_100early_wrecked_ship_east_supers:
    %cm_preset("East Supers", #preset_names_east_supers, #preset_100early_wrecked_ship_east_supers)

presets_100early_wrecked_ship_leaving_west_supers:
    %cm_preset("Leaving West Supers", #preset_names_leaving_west_supers, #preset_100early_wrecked_ship_leaving_west_supers)

presets_100early_wrecked_ship_spiky_room_of_death:
    %cm_preset("Spiky Room of Death", #preset_names_spiky_room_of_death, #preset_100early_wrecked_ship_spiky_room_of_death)

presets_100early_wrecked_ship_wrecked_ship_etank:
    %cm_preset("Wrecked Ship E-Tank", #preset_names_wrecked_ship_etank, #preset_100early_wrecked_ship_wrecked_ship_etank)

presets_100early_wrecked_ship_spiky_room_revisit:
    %cm_preset("Spiky Room Revisit", #preset_names_spiky_room_revisit, #preset_100early_wrecked_ship_spiky_room_revisit)

presets_100early_wrecked_ship_shaft_ascent:
    %cm_preset("Shaft Ascent", #preset_names_shaft_ascent, #preset_100early_wrecked_ship_shaft_ascent)

presets_100early_wrecked_ship_attic:
    %cm_preset("Attic", #preset_names_attic, #preset_100early_wrecked_ship_attic)

presets_100early_wrecked_ship_attic_missiles:
    %cm_preset("Attic Missiles", #preset_names_attic_missiles, #preset_100early_wrecked_ship_attic_missiles)

presets_100early_wrecked_ship_attic_revisit:
    %cm_preset("Attic Revisit", #preset_names_attic_revisit, #preset_100early_wrecked_ship_attic_revisit)

presets_100early_wrecked_ship_sky_missiles:
    %cm_preset("Sky Missiles", #preset_names_sky_missiles, #preset_100early_wrecked_ship_sky_missiles)

presets_100early_wrecked_ship_bowling_alley_path:
    %cm_preset("Bowling Alley Path", #preset_names_bowling_alley_path, #preset_100early_wrecked_ship_bowling_alley_path)

presets_100early_wrecked_ship_bowling_alley:
    %cm_preset("Bowling Alley", #preset_names_bowling_alley, #preset_100early_wrecked_ship_bowling_alley)

presets_100early_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_names_leaving_gravity, #preset_100early_wrecked_ship_leaving_gravity)


; Brinstar Cleanup
presets_100early_brinstar_cleanup_landing_site:
    %cm_preset("Landing Site", #preset_names_landing_site, #preset_100early_brinstar_cleanup_landing_site)

presets_100early_brinstar_cleanup_gauntlet_spark:
    %cm_preset("Gauntlet Spark", #preset_names_gauntlet_spark, #preset_100early_brinstar_cleanup_gauntlet_spark)

presets_100early_brinstar_cleanup_gauntlet_etank:
    %cm_preset("Gauntlet E-Tank", #preset_names_gauntlet_etank, #preset_100early_brinstar_cleanup_gauntlet_etank)

presets_100early_brinstar_cleanup_leaving_gauntlet:
    %cm_preset("Leaving Gauntlet", #preset_names_leaving_gauntlet, #preset_100early_brinstar_cleanup_leaving_gauntlet)

presets_100early_brinstar_cleanup_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_names_green_brinstar_elevator, #preset_100early_brinstar_cleanup_green_brinstar_elevator)

presets_100early_brinstar_cleanup_green_brinstar_beetoms:
    %cm_preset("Green Brinstar Beetoms", #preset_names_green_brinstar_beetoms, #preset_100early_brinstar_cleanup_green_brinstar_beetoms)

presets_100early_brinstar_cleanup_etecoon_etank_room:
    %cm_preset("Etecoon E-Tank Room", #preset_names_etecoon_etank_room, #preset_100early_brinstar_cleanup_etecoon_etank_room)

presets_100early_brinstar_cleanup_etecoon_room:
    %cm_preset("Etecoon Room", #preset_names_etecoon_room, #preset_100early_brinstar_cleanup_etecoon_room)

presets_100early_brinstar_cleanup_dachora_room_revisit:
    %cm_preset("Dachora Room Revisit", #preset_names_dachora_room_revisit, #preset_100early_brinstar_cleanup_dachora_room_revisit)

presets_100early_brinstar_cleanup_big_pink_revisit:
    %cm_preset("Big Pink Revisit", #preset_names_big_pink_revisit, #preset_100early_brinstar_cleanup_big_pink_revisit)

presets_100early_brinstar_cleanup_big_pink_power_bombs:
    %cm_preset("Big Pink Power Bombs", #preset_names_big_pink_power_bombs, #preset_100early_brinstar_cleanup_big_pink_power_bombs)

presets_100early_brinstar_cleanup_big_pink_hopper_room:
    %cm_preset("Big Pink Hopper Room", #preset_names_big_pink_hopper_room, #preset_100early_brinstar_cleanup_big_pink_hopper_room)

presets_100early_brinstar_cleanup_spore_spawn_supers:
    %cm_preset("Spore Spawn Supers", #preset_names_spore_spawn_supers, #preset_100early_brinstar_cleanup_spore_spawn_supers)

presets_100early_brinstar_cleanup_waterway_etank:
    %cm_preset("Waterway E-Tank", #preset_names_waterway_etank, #preset_100early_brinstar_cleanup_waterway_etank)

presets_100early_brinstar_cleanup_green_hill_zone_revisit:
    %cm_preset("Green Hill Zone Revisit", #preset_names_green_hill_zone_revisit, #preset_100early_brinstar_cleanup_green_hill_zone_revisit)

presets_100early_brinstar_cleanup_blockbuster:
    %cm_preset("Blockbuster", #preset_names_blockbuster, #preset_100early_brinstar_cleanup_blockbuster)


; Maridia Pre-Draygon
presets_100early_maridia_predraygon_main_street:
    %cm_preset("Main Street", #preset_names_main_street, #preset_100early_maridia_predraygon_main_street)

presets_100early_maridia_predraygon_fish_tank:
    %cm_preset("Fish Tank", #preset_names_fish_tank, #preset_100early_maridia_predraygon_fish_tank)

presets_100early_maridia_predraygon_mama_turtle_etank:
    %cm_preset("Mama Turtle E-Tank", #preset_names_mama_turtle_etank, #preset_100early_maridia_predraygon_mama_turtle_etank)

presets_100early_maridia_predraygon_fish_tank_revisit:
    %cm_preset("Fish Tank Revisit", #preset_names_fish_tank_revisit, #preset_100early_maridia_predraygon_fish_tank_revisit)

presets_100early_maridia_predraygon_mt_everest:
    %cm_preset("Mt. Everest", #preset_names_mt_everest, #preset_100early_maridia_predraygon_mt_everest)

presets_100early_maridia_predraygon_beach_missiles:
    %cm_preset("Beach Missiles", #preset_names_beach_missiles, #preset_100early_maridia_predraygon_beach_missiles)

presets_100early_maridia_predraygon_west_beach:
    %cm_preset("West Beach", #preset_names_west_beach, #preset_100early_maridia_predraygon_west_beach)

presets_100early_maridia_predraygon_watering_hole:
    %cm_preset("Watering Hole", #preset_names_watering_hole, #preset_100early_maridia_predraygon_watering_hole)

presets_100early_maridia_predraygon_west_beach_revisit:
    %cm_preset("West Beach Revisit", #preset_names_west_beach_revisit, #preset_100early_maridia_predraygon_west_beach_revisit)

presets_100early_maridia_predraygon_beach_missiles_revisit:
    %cm_preset("Beach Missiles Revisit", #preset_names_beach_missiles_revisit, #preset_100early_maridia_predraygon_beach_missiles_revisit)

presets_100early_maridia_predraygon_aqueduct:
    %cm_preset("Aqueduct", #preset_names_aqueduct, #preset_100early_maridia_predraygon_aqueduct)

presets_100early_maridia_predraygon_botwoon:
    %cm_preset("Botwoon", #preset_names_botwoon, #preset_100early_maridia_predraygon_botwoon)

presets_100early_maridia_predraygon_full_halfie:
    %cm_preset("Full Halfie", #preset_names_full_halfie, #preset_100early_maridia_predraygon_full_halfie)

presets_100early_maridia_predraygon_draygon_missiles:
    %cm_preset("Draygon Missiles", #preset_names_draygon_missiles, #preset_100early_maridia_predraygon_draygon_missiles)

presets_100early_maridia_predraygon_draygon:
    %cm_preset("Draygon", #preset_names_draygon, #preset_100early_maridia_predraygon_draygon)


; Maridia Post-Draygon
presets_100early_maridia_postdraygon_reverse_halfie:
    %cm_preset("Reverse Halfie", #preset_names_reverse_halfie, #preset_100early_maridia_postdraygon_reverse_halfie)

presets_100early_maridia_postdraygon_reverse_botwoon_etank:
    %cm_preset("Reverse Botwoon E-Tank", #preset_names_reverse_botwoon_etank, #preset_100early_maridia_postdraygon_reverse_botwoon_etank)

presets_100early_maridia_postdraygon_east_sand_pit:
    %cm_preset("East Sand Pit", #preset_names_east_sand_pit, #preset_100early_maridia_postdraygon_east_sand_pit)

presets_100early_maridia_postdraygon_pants_room:
    %cm_preset("Pants Room", #preset_names_pants_room, #preset_100early_maridia_postdraygon_pants_room)

presets_100early_maridia_postdraygon_shaktool:
    %cm_preset("Shaktool", #preset_names_shaktool, #preset_100early_maridia_postdraygon_shaktool)

presets_100early_maridia_postdraygon_shaktool_revisit:
    %cm_preset("Shaktool Revisit", #preset_names_shaktool_revisit, #preset_100early_maridia_postdraygon_shaktool_revisit)

presets_100early_maridia_postdraygon_east_sand_hall:
    %cm_preset("East Sand Hall", #preset_names_east_sand_hall, #preset_100early_maridia_postdraygon_east_sand_hall)

presets_100early_maridia_postdraygon_plasma_spark_room:
    %cm_preset("Plasma Spark Room", #preset_names_plasma_spark_room, #preset_100early_maridia_postdraygon_plasma_spark_room)

presets_100early_maridia_postdraygon_kassiuz_room:
    %cm_preset("Kassiuz Room", #preset_names_kassiuz_room, #preset_100early_maridia_postdraygon_kassiuz_room)

presets_100early_maridia_postdraygon_plasma:
    %cm_preset("Plasma", #preset_names_plasma, #preset_100early_maridia_postdraygon_plasma)

presets_100early_maridia_postdraygon_leaving_plasma:
    %cm_preset("Leaving Plasma", #preset_names_leaving_plasma, #preset_100early_maridia_postdraygon_leaving_plasma)

presets_100early_maridia_postdraygon_leaving_kassiuz:
    %cm_preset("Leaving Kassiuz", #preset_names_leaving_kassiuz, #preset_100early_maridia_postdraygon_leaving_kassiuz)

presets_100early_maridia_postdraygon_cac_alley:
    %cm_preset("Cac Alley", #preset_names_cac_alley, #preset_100early_maridia_postdraygon_cac_alley)

presets_100early_maridia_postdraygon_botwoon_etank:
    %cm_preset("Botwoon E-Tank", #preset_names_botwoon_etank, #preset_100early_maridia_postdraygon_botwoon_etank)

presets_100early_maridia_postdraygon_aqueduct_final:
    %cm_preset("Aqueduct Final", #preset_names_aqueduct_final, #preset_100early_maridia_postdraygon_aqueduct_final)

presets_100early_maridia_postdraygon_west_sand_pit:
    %cm_preset("West Sand Pit", #preset_names_west_sand_pit, #preset_100early_maridia_postdraygon_west_sand_pit)

presets_100early_maridia_postdraygon_thread_the_needle:
    %cm_preset("Thread the Needle", #preset_names_thread_the_needle, #preset_100early_maridia_postdraygon_thread_the_needle)


; Kraid-Ice-Kronic
presets_100early_kraidicekronic_kraid_entrance_revisit:
    %cm_preset("Kraid Entrance Revisit", #preset_names_kraid_entrance_revisit, #preset_100early_kraidicekronic_kraid_entrance_revisit)

presets_100early_kraidicekronic_kraid_missiles:
    %cm_preset("Kraid Missiles", #preset_names_kraid_missiles, #preset_100early_kraidicekronic_kraid_missiles)

presets_100early_kraidicekronic_kraid_missiles_escape:
    %cm_preset("Kraid Missiles Escape", #preset_names_kraid_missiles_escape, #preset_100early_kraidicekronic_kraid_missiles_escape)

presets_100early_kraidicekronic_ice_beam_gate_room:
    %cm_preset("Ice Beam Gate Room", #preset_names_ice_beam_gate_room, #preset_100early_kraidicekronic_ice_beam_gate_room)

presets_100early_kraidicekronic_ice_beam_snake_room:
    %cm_preset("Ice Beam Snake Room", #preset_names_ice_beam_snake_room, #preset_100early_kraidicekronic_ice_beam_snake_room)

presets_100early_kraidicekronic_snake_room_revisit:
    %cm_preset("Snake Room Revisit", #preset_names_snake_room_revisit, #preset_100early_kraidicekronic_snake_room_revisit)

presets_100early_kraidicekronic_ice_escape:
    %cm_preset("Ice Escape", #preset_names_ice_escape, #preset_100early_kraidicekronic_ice_escape)

presets_100early_kraidicekronic_crumble_shaft_missiles:
    %cm_preset("Crumble Shaft Missiles", #preset_names_crumble_shaft_missiles, #preset_100early_kraidicekronic_crumble_shaft_missiles)

presets_100early_kraidicekronic_crocomire_speedway:
    %cm_preset("Crocomire Speedway", #preset_names_crocomire_speedway, #preset_100early_kraidicekronic_crocomire_speedway)

presets_100early_kraidicekronic_kronic_boost:
    %cm_preset("Kronic Boost", #preset_names_kronic_boost, #preset_100early_kraidicekronic_kronic_boost)


; Lower Norfair
presets_100early_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_names_ln_main_hall, #preset_100early_lower_norfair_ln_main_hall)

presets_100early_lower_norfair_golden_torizo:
    %cm_preset("Golden Torizo", #preset_names_golden_torizo, #preset_100early_lower_norfair_golden_torizo)

presets_100early_lower_norfair_leaving_golden_torizo:
    %cm_preset("Leaving Golden Torizo", #preset_names_leaving_golden_torizo, #preset_100early_lower_norfair_leaving_golden_torizo)

presets_100early_lower_norfair_fast_ripper_room:
    %cm_preset("Fast Ripper Room", #preset_names_fast_ripper_room, #preset_100early_lower_norfair_fast_ripper_room)

presets_100early_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_names_worst_room_in_the_game, #preset_100early_lower_norfair_worst_room_in_the_game)

presets_100early_lower_norfair_mickey_mouse_missiles:
    %cm_preset("Mickey Mouse Missiles", #preset_names_mickey_mouse_missiles, #preset_100early_lower_norfair_mickey_mouse_missiles)

presets_100early_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_names_amphitheatre, #preset_100early_lower_norfair_amphitheatre)

presets_100early_lower_norfair_red_kihunter_shaft:
    %cm_preset("Red Kihunter Shaft", #preset_names_red_kihunter_shaft, #preset_100early_lower_norfair_red_kihunter_shaft)

presets_100early_lower_norfair_ninja_pirates:
    %cm_preset("Ninja Pirates", #preset_names_ninja_pirates, #preset_100early_lower_norfair_ninja_pirates)

presets_100early_lower_norfair_plowerhouse_room:
    %cm_preset("Plowerhouse Room", #preset_names_plowerhouse_room, #preset_100early_lower_norfair_plowerhouse_room)

presets_100early_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_names_ridley, #preset_100early_lower_norfair_ridley)

presets_100early_lower_norfair_ridley_escape:
    %cm_preset("Ridley Escape", #preset_names_ridley_escape, #preset_100early_lower_norfair_ridley_escape)

presets_100early_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_names_wasteland_revisit, #preset_100early_lower_norfair_wasteland_revisit)

presets_100early_lower_norfair_kihunter_shaft_revisit:
    %cm_preset("Kihunter Shaft Revisit", #preset_names_kihunter_shaft_revisit, #preset_100early_lower_norfair_kihunter_shaft_revisit)

presets_100early_lower_norfair_firefleas_room:
    %cm_preset("Firefleas Room", #preset_names_firefleas_room, #preset_100early_lower_norfair_firefleas_room)

presets_100early_lower_norfair_springball_maze:
    %cm_preset("Springball Maze", #preset_names_springball_maze, #preset_100early_lower_norfair_springball_maze)

presets_100early_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_names_three_musketeers, #preset_100early_lower_norfair_three_musketeers)

presets_100early_lower_norfair_bubble_mountain_return:
    %cm_preset("Bubble Mountain Return", #preset_names_bubble_mountain_return, #preset_100early_lower_norfair_bubble_mountain_return)

presets_100early_lower_norfair_norfair_reserve:
    %cm_preset("Norfair Reserve", #preset_names_norfair_reserve, #preset_100early_lower_norfair_norfair_reserve)

presets_100early_lower_norfair_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_names_bubble_mountain_final, #preset_100early_lower_norfair_bubble_mountain_final)

presets_100early_lower_norfair_business_center_final:
    %cm_preset("Business Center Final", #preset_names_business_center_final, #preset_100early_lower_norfair_business_center_final)


; Final Cleanup
presets_100early_final_cleanup_below_spazer:
    %cm_preset("Below Spazer", #preset_names_below_spazer, #preset_100early_final_cleanup_below_spazer)

presets_100early_final_cleanup_red_tower_xray:
    %cm_preset("Red Tower X-Ray", #preset_names_red_tower_xray, #preset_100early_final_cleanup_red_tower_xray)

presets_100early_final_cleanup_xray_passage:
    %cm_preset("X-Ray Passage", #preset_names_xray_passage, #preset_100early_final_cleanup_xray_passage)

presets_100early_final_cleanup_xray_passage_return:
    %cm_preset("X-Ray Passage Return", #preset_names_xray_passage_return, #preset_100early_final_cleanup_xray_passage_return)

presets_100early_final_cleanup_reverse_slinky:
    %cm_preset("Reverse Slinky", #preset_names_reverse_slinky, #preset_100early_final_cleanup_reverse_slinky)

presets_100early_final_cleanup_retro_brinstar_hoppers:
    %cm_preset("Retro Brinstar Hoppers", #preset_names_retro_brinstar_hoppers, #preset_100early_final_cleanup_retro_brinstar_hoppers)

presets_100early_final_cleanup_retro_brinstar_etank:
    %cm_preset("Retro Brinstar E-Tank", #preset_names_retro_brinstar_etank, #preset_100early_final_cleanup_retro_brinstar_etank)

presets_100early_final_cleanup_boulder_room:
    %cm_preset("Boulder Room", #preset_names_boulder_room, #preset_100early_final_cleanup_boulder_room)

presets_100early_final_cleanup_leaving_billy_mays:
    %cm_preset("Leaving Billy Mays", #preset_names_leaving_billy_mays, #preset_100early_final_cleanup_leaving_billy_mays)

presets_100early_final_cleanup_retro_brinstar_escape:
    %cm_preset("Retro Brinstar Escape", #preset_names_retro_brinstar_escape, #preset_100early_final_cleanup_retro_brinstar_escape)

presets_100early_final_cleanup_old_tourian_missiles:
    %cm_preset("Old Tourian Missiles", #preset_names_old_tourian_missiles, #preset_100early_final_cleanup_old_tourian_missiles)

presets_100early_final_cleanup_climb_supers:
    %cm_preset("Climb Supers", #preset_names_climb_supers, #preset_100early_final_cleanup_climb_supers)

presets_100early_final_cleanup_parlor_missiles:
    %cm_preset("Parlor Missiles", #preset_names_parlor_missiles, #preset_100early_final_cleanup_parlor_missiles)

presets_100early_final_cleanup_leaving_parlor_missiles:
    %cm_preset("Leaving Parlor Missiles", #preset_names_leaving_parlor_missiles, #preset_100early_final_cleanup_leaving_parlor_missiles)

presets_100early_final_cleanup_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_names_terminator_revisit, #preset_100early_final_cleanup_terminator_revisit)


; Tourian
presets_100early_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_names_metroids_1, #preset_100early_tourian_metroids_1)

presets_100early_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_names_metroids_2, #preset_100early_tourian_metroids_2)

presets_100early_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_names_metroids_3, #preset_100early_tourian_metroids_3)

presets_100early_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_names_metroids_4, #preset_100early_tourian_metroids_4)

presets_100early_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_names_baby_skip, #preset_100early_tourian_baby_skip)

presets_100early_tourian_after_baby_skip:
    %cm_preset("After Baby Skip", #preset_names_after_baby_skip, #preset_100early_tourian_after_baby_skip)

presets_100early_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_names_zeb_skip, #preset_100early_tourian_zeb_skip)

presets_100early_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_names_mother_brain_2, #preset_100early_tourian_mother_brain_2)

presets_100early_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_names_zebes_escape, #preset_100early_tourian_zebes_escape)

presets_100early_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_names_escape_room_3, #preset_100early_tourian_escape_room_3)

presets_100early_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_names_escape_room_4, #preset_100early_tourian_escape_room_4)

presets_100early_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_names_escape_climb, #preset_100early_tourian_escape_climb)

presets_100early_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_names_escape_parlor, #preset_100early_tourian_escape_parlor)

