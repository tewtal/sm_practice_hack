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
    dw #presets_100early_speed_booster_hijump
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
    dw #presets_100early_grapple_double_chamber_revisited
    dw #presets_100early_grapple_bubble_mountain_revisited
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
    dw #presets_100early_red_tower_and_crateria_oceanfly
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
    dw #presets_100early_brinstar_cleanup_green_hills_revisit
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
    dw #presets_100early_maridia_postdraygon_return_halfie
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
    dw #presets_100early_lower_norfair_three_muskateers
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
    %cm_preset("Ceres Elevator", #preset_100early_crateria_ceres_elevator)

presets_100early_crateria_ceres_escape:
    %cm_preset("Ceres Escape", #preset_100early_crateria_ceres_escape)

presets_100early_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 rooms", #preset_100early_crateria_ceres_last_3_rooms)

presets_100early_crateria_ship:
    %cm_preset("Ship", #preset_100early_crateria_ship)

presets_100early_crateria_parlor:
    %cm_preset("Parlor", #preset_100early_crateria_parlor)

presets_100early_crateria_climb_down:
    %cm_preset("Climb Down", #preset_100early_crateria_climb_down)

presets_100early_crateria_pit_room:
    %cm_preset("Pit Room", #preset_100early_crateria_pit_room)

presets_100early_crateria_morph:
    %cm_preset("Morph", #preset_100early_crateria_morph)

presets_100early_crateria_construction_zone_down:
    %cm_preset("Construction Zone Down", #preset_100early_crateria_construction_zone_down)

presets_100early_crateria_construction_zone_up:
    %cm_preset("Construction Zone Up", #preset_100early_crateria_construction_zone_up)

presets_100early_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_100early_crateria_pit_room_revisit)

presets_100early_crateria_climb_up:
    %cm_preset("Climb Up", #preset_100early_crateria_climb_up)

presets_100early_crateria_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_100early_crateria_parlor_revisit)

presets_100early_crateria_flyway:
    %cm_preset("Flyway", #preset_100early_crateria_flyway)

presets_100early_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_100early_crateria_bomb_torizo)

presets_100early_crateria_alcatraz:
    %cm_preset("Alcatraz", #preset_100early_crateria_alcatraz)

presets_100early_crateria_terminator:
    %cm_preset("Terminator", #preset_100early_crateria_terminator)

presets_100early_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_100early_crateria_green_pirate_shaft)


; Brinstar
presets_100early_brinstar_green_brinstar:
    %cm_preset("Green Brinstar", #preset_100early_brinstar_green_brinstar)

presets_100early_brinstar_early_supers:
    %cm_preset("Early Supers", #preset_100early_brinstar_early_supers)

presets_100early_brinstar_reverse_mockball:
    %cm_preset("Reverse Mockball", #preset_100early_brinstar_reverse_mockball)

presets_100early_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_100early_brinstar_dachora_room)

presets_100early_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_100early_brinstar_big_pink)

presets_100early_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_100early_brinstar_green_hill_zone)

presets_100early_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_100early_brinstar_red_tower)

presets_100early_brinstar_skree_boost:
    %cm_preset("Skree Boost", #preset_100early_brinstar_skree_boost)

presets_100early_brinstar_kraid_entry:
    %cm_preset("Kraid Entry", #preset_100early_brinstar_kraid_entry)

presets_100early_brinstar_kraid_kihunter_room:
    %cm_preset("Kraid Kihunter Room", #preset_100early_brinstar_kraid_kihunter_room)

presets_100early_brinstar_kraid:
    %cm_preset("Kraid", #preset_100early_brinstar_kraid)

presets_100early_brinstar_leaving_varia:
    %cm_preset("Leaving Varia", #preset_100early_brinstar_leaving_varia)

presets_100early_brinstar_leaving_kraid_hallway:
    %cm_preset("Leaving Kraid Hallway", #preset_100early_brinstar_leaving_kraid_hallway)

presets_100early_brinstar_leaving_kraid_etank:
    %cm_preset("Leaving Kraid E-Tank", #preset_100early_brinstar_leaving_kraid_etank)


; Speed Booster
presets_100early_speed_booster_business_center:
    %cm_preset("Business Center", #preset_100early_speed_booster_business_center)

presets_100early_speed_booster_hijump:
    %cm_preset("Hi-Jump", #preset_100early_speed_booster_hijump)

presets_100early_speed_booster_business_center_climb:
    %cm_preset("Business Center Climb", #preset_100early_speed_booster_business_center_climb)

presets_100early_speed_booster_cathedral_entrance:
    %cm_preset("Cathedral Entrance", #preset_100early_speed_booster_cathedral_entrance)

presets_100early_speed_booster_cathedral:
    %cm_preset("Cathedral", #preset_100early_speed_booster_cathedral)

presets_100early_speed_booster_rising_tide:
    %cm_preset("Rising Tide", #preset_100early_speed_booster_rising_tide)

presets_100early_speed_booster_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_100early_speed_booster_bubble_mountain)

presets_100early_speed_booster_bat_cave:
    %cm_preset("Bat Cave", #preset_100early_speed_booster_bat_cave)

presets_100early_speed_booster_leaving_speed_booster:
    %cm_preset("Leaving Speed Booster", #preset_100early_speed_booster_leaving_speed_booster)


; Grapple
presets_100early_grapple_single_chamber:
    %cm_preset("Single Chamber", #preset_100early_grapple_single_chamber)

presets_100early_grapple_double_chamber:
    %cm_preset("Double Chamber", #preset_100early_grapple_double_chamber)

presets_100early_grapple_double_chamber_revisited:
    %cm_preset("Double Chamber Revisited", #preset_100early_grapple_double_chamber_revisited)

presets_100early_grapple_bubble_mountain_revisited:
    %cm_preset("Bubble Mountain Revisited", #preset_100early_grapple_bubble_mountain_revisited)

presets_100early_grapple_red_pirate_shaft:
    %cm_preset("Red Pirate Shaft", #preset_100early_grapple_red_pirate_shaft)

presets_100early_grapple_crocomire:
    %cm_preset("Crocomire", #preset_100early_grapple_crocomire)

presets_100early_grapple_postcrocomire:
    %cm_preset("Post-Crocomire", #preset_100early_grapple_postcrocomire)

presets_100early_grapple_leaving_power_bombs:
    %cm_preset("Leaving Power Bombs", #preset_100early_grapple_leaving_power_bombs)

presets_100early_grapple_postcrocomire_jump_room:
    %cm_preset("Post-Crocomire Jump Room", #preset_100early_grapple_postcrocomire_jump_room)

presets_100early_grapple_leaving_grapple:
    %cm_preset("Leaving Grapple", #preset_100early_grapple_leaving_grapple)

presets_100early_grapple_postcrocomire_missiles:
    %cm_preset("Post-Crocomire Missiles", #preset_100early_grapple_postcrocomire_missiles)

presets_100early_grapple_crocomire_revisit:
    %cm_preset("Crocomire Revisit", #preset_100early_grapple_crocomire_revisit)

presets_100early_grapple_crocomire_escape:
    %cm_preset("Crocomire Escape", #preset_100early_grapple_crocomire_escape)

presets_100early_grapple_business_center_return:
    %cm_preset("Business Center Return", #preset_100early_grapple_business_center_return)


; Red Tower and Crateria
presets_100early_red_tower_and_crateria_warehouse_elevator:
    %cm_preset("Warehouse Elevator", #preset_100early_red_tower_and_crateria_warehouse_elevator)

presets_100early_red_tower_and_crateria_red_tower_climb:
    %cm_preset("Red Tower Climb", #preset_100early_red_tower_and_crateria_red_tower_climb)

presets_100early_red_tower_and_crateria_hellway:
    %cm_preset("Hellway", #preset_100early_red_tower_and_crateria_hellway)

presets_100early_red_tower_and_crateria_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_100early_red_tower_and_crateria_alpha_power_bombs)

presets_100early_red_tower_and_crateria_elevator_room_ascent:
    %cm_preset("Elevator Room Ascent", #preset_100early_red_tower_and_crateria_elevator_room_ascent)

presets_100early_red_tower_and_crateria_beta_power_bombs:
    %cm_preset("Beta Power Bombs", #preset_100early_red_tower_and_crateria_beta_power_bombs)

presets_100early_red_tower_and_crateria_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_100early_red_tower_and_crateria_crateria_kihunters)

presets_100early_red_tower_and_crateria_oceanfly:
    %cm_preset("Oceanfly", #preset_100early_red_tower_and_crateria_oceanfly)

presets_100early_red_tower_and_crateria_the_moat:
    %cm_preset("The Moat", #preset_100early_red_tower_and_crateria_the_moat)

presets_100early_red_tower_and_crateria_ocean_spark:
    %cm_preset("Ocean Spark", #preset_100early_red_tower_and_crateria_ocean_spark)


; Wrecked Ship
presets_100early_wrecked_ship_enter_wrecked_ship:
    %cm_preset("Enter Wrecked Ship", #preset_100early_wrecked_ship_enter_wrecked_ship)

presets_100early_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_100early_wrecked_ship_phantoon)

presets_100early_wrecked_ship_leaving_phantoon:
    %cm_preset("Leaving Phantoon", #preset_100early_wrecked_ship_leaving_phantoon)

presets_100early_wrecked_ship_east_supers:
    %cm_preset("East Supers", #preset_100early_wrecked_ship_east_supers)

presets_100early_wrecked_ship_leaving_west_supers:
    %cm_preset("Leaving West Supers", #preset_100early_wrecked_ship_leaving_west_supers)

presets_100early_wrecked_ship_spiky_room_of_death:
    %cm_preset("Spiky Room of Death", #preset_100early_wrecked_ship_spiky_room_of_death)

presets_100early_wrecked_ship_wrecked_ship_etank:
    %cm_preset("Wrecked Ship E-Tank", #preset_100early_wrecked_ship_wrecked_ship_etank)

presets_100early_wrecked_ship_spiky_room_revisit:
    %cm_preset("Spiky Room Revisit", #preset_100early_wrecked_ship_spiky_room_revisit)

presets_100early_wrecked_ship_shaft_ascent:
    %cm_preset("Shaft Ascent", #preset_100early_wrecked_ship_shaft_ascent)

presets_100early_wrecked_ship_attic:
    %cm_preset("Attic", #preset_100early_wrecked_ship_attic)

presets_100early_wrecked_ship_attic_missiles:
    %cm_preset("Attic Missiles", #preset_100early_wrecked_ship_attic_missiles)

presets_100early_wrecked_ship_attic_revisit:
    %cm_preset("Attic Revisit", #preset_100early_wrecked_ship_attic_revisit)

presets_100early_wrecked_ship_sky_missiles:
    %cm_preset("Sky Missiles", #preset_100early_wrecked_ship_sky_missiles)

presets_100early_wrecked_ship_bowling_alley_path:
    %cm_preset("Bowling Alley Path", #preset_100early_wrecked_ship_bowling_alley_path)

presets_100early_wrecked_ship_bowling_alley:
    %cm_preset("Bowling Alley", #preset_100early_wrecked_ship_bowling_alley)

presets_100early_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_100early_wrecked_ship_leaving_gravity)


; Brinstar Cleanup
presets_100early_brinstar_cleanup_landing_site:
    %cm_preset("Landing Site", #preset_100early_brinstar_cleanup_landing_site)

presets_100early_brinstar_cleanup_gauntlet_spark:
    %cm_preset("Gauntlet Spark", #preset_100early_brinstar_cleanup_gauntlet_spark)

presets_100early_brinstar_cleanup_gauntlet_etank:
    %cm_preset("Gauntlet E-Tank", #preset_100early_brinstar_cleanup_gauntlet_etank)

presets_100early_brinstar_cleanup_leaving_gauntlet:
    %cm_preset("Leaving Gauntlet", #preset_100early_brinstar_cleanup_leaving_gauntlet)

presets_100early_brinstar_cleanup_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_100early_brinstar_cleanup_green_brinstar_elevator)

presets_100early_brinstar_cleanup_green_brinstar_beetoms:
    %cm_preset("Green Brinstar Beetoms", #preset_100early_brinstar_cleanup_green_brinstar_beetoms)

presets_100early_brinstar_cleanup_etecoon_etank_room:
    %cm_preset("Etecoon E-Tank Room", #preset_100early_brinstar_cleanup_etecoon_etank_room)

presets_100early_brinstar_cleanup_etecoon_room:
    %cm_preset("Etecoon Room", #preset_100early_brinstar_cleanup_etecoon_room)

presets_100early_brinstar_cleanup_dachora_room_revisit:
    %cm_preset("Dachora Room Revisit", #preset_100early_brinstar_cleanup_dachora_room_revisit)

presets_100early_brinstar_cleanup_big_pink_revisit:
    %cm_preset("Big Pink Revisit", #preset_100early_brinstar_cleanup_big_pink_revisit)

presets_100early_brinstar_cleanup_big_pink_power_bombs:
    %cm_preset("Big Pink Power Bombs", #preset_100early_brinstar_cleanup_big_pink_power_bombs)

presets_100early_brinstar_cleanup_big_pink_hopper_room:
    %cm_preset("Big Pink Hopper Room", #preset_100early_brinstar_cleanup_big_pink_hopper_room)

presets_100early_brinstar_cleanup_spore_spawn_supers:
    %cm_preset("Spore Spawn Supers", #preset_100early_brinstar_cleanup_spore_spawn_supers)

presets_100early_brinstar_cleanup_waterway_etank:
    %cm_preset("Waterway E-Tank", #preset_100early_brinstar_cleanup_waterway_etank)

presets_100early_brinstar_cleanup_green_hills_revisit:
    %cm_preset("Green Hills Revisit", #preset_100early_brinstar_cleanup_green_hills_revisit)

presets_100early_brinstar_cleanup_blockbuster:
    %cm_preset("Blockbuster", #preset_100early_brinstar_cleanup_blockbuster)


; Maridia Pre-Draygon
presets_100early_maridia_predraygon_main_street:
    %cm_preset("Main Street", #preset_100early_maridia_predraygon_main_street)

presets_100early_maridia_predraygon_fish_tank:
    %cm_preset("Fish Tank", #preset_100early_maridia_predraygon_fish_tank)

presets_100early_maridia_predraygon_mama_turtle_etank:
    %cm_preset("Mama Turtle E-Tank", #preset_100early_maridia_predraygon_mama_turtle_etank)

presets_100early_maridia_predraygon_fish_tank_revisit:
    %cm_preset("Fish Tank Revisit", #preset_100early_maridia_predraygon_fish_tank_revisit)

presets_100early_maridia_predraygon_mt_everest:
    %cm_preset("Mt Everest", #preset_100early_maridia_predraygon_mt_everest)

presets_100early_maridia_predraygon_beach_missiles:
    %cm_preset("Beach Missiles", #preset_100early_maridia_predraygon_beach_missiles)

presets_100early_maridia_predraygon_west_beach:
    %cm_preset("West Beach", #preset_100early_maridia_predraygon_west_beach)

presets_100early_maridia_predraygon_watering_hole:
    %cm_preset("Watering Hole", #preset_100early_maridia_predraygon_watering_hole)

presets_100early_maridia_predraygon_west_beach_revisit:
    %cm_preset("West Beach Revisit", #preset_100early_maridia_predraygon_west_beach_revisit)

presets_100early_maridia_predraygon_beach_missiles_revisit:
    %cm_preset("Beach Missiles Revisit", #preset_100early_maridia_predraygon_beach_missiles_revisit)

presets_100early_maridia_predraygon_aqueduct:
    %cm_preset("Aqueduct", #preset_100early_maridia_predraygon_aqueduct)

presets_100early_maridia_predraygon_botwoon:
    %cm_preset("Botwoon", #preset_100early_maridia_predraygon_botwoon)

presets_100early_maridia_predraygon_full_halfie:
    %cm_preset("Full Halfie", #preset_100early_maridia_predraygon_full_halfie)

presets_100early_maridia_predraygon_draygon_missiles:
    %cm_preset("Draygon Missiles", #preset_100early_maridia_predraygon_draygon_missiles)

presets_100early_maridia_predraygon_draygon:
    %cm_preset("Draygon", #preset_100early_maridia_predraygon_draygon)


; Maridia Post-Draygon
presets_100early_maridia_postdraygon_return_halfie:
    %cm_preset("Return Halfie", #preset_100early_maridia_postdraygon_return_halfie)

presets_100early_maridia_postdraygon_reverse_botwoon_etank:
    %cm_preset("Reverse Botwoon E-Tank", #preset_100early_maridia_postdraygon_reverse_botwoon_etank)

presets_100early_maridia_postdraygon_east_sand_pit:
    %cm_preset("East Sand Pit", #preset_100early_maridia_postdraygon_east_sand_pit)

presets_100early_maridia_postdraygon_pants_room:
    %cm_preset("Pants Room", #preset_100early_maridia_postdraygon_pants_room)

presets_100early_maridia_postdraygon_shaktool:
    %cm_preset("Shaktool", #preset_100early_maridia_postdraygon_shaktool)

presets_100early_maridia_postdraygon_shaktool_revisit:
    %cm_preset("Shaktool Revisit", #preset_100early_maridia_postdraygon_shaktool_revisit)

presets_100early_maridia_postdraygon_east_sand_hall:
    %cm_preset("East Sand Hall", #preset_100early_maridia_postdraygon_east_sand_hall)

presets_100early_maridia_postdraygon_plasma_spark_room:
    %cm_preset("Plasma Spark Room", #preset_100early_maridia_postdraygon_plasma_spark_room)

presets_100early_maridia_postdraygon_kassiuz_room:
    %cm_preset("Kassiuz Room", #preset_100early_maridia_postdraygon_kassiuz_room)

presets_100early_maridia_postdraygon_plasma:
    %cm_preset("Plasma", #preset_100early_maridia_postdraygon_plasma)

presets_100early_maridia_postdraygon_leaving_plasma:
    %cm_preset("Leaving Plasma", #preset_100early_maridia_postdraygon_leaving_plasma)

presets_100early_maridia_postdraygon_leaving_kassiuz:
    %cm_preset("Leaving Kassiuz", #preset_100early_maridia_postdraygon_leaving_kassiuz)

presets_100early_maridia_postdraygon_cac_alley:
    %cm_preset("Cac Alley", #preset_100early_maridia_postdraygon_cac_alley)

presets_100early_maridia_postdraygon_botwoon_etank:
    %cm_preset("Botwoon E-Tank", #preset_100early_maridia_postdraygon_botwoon_etank)

presets_100early_maridia_postdraygon_aqueduct_final:
    %cm_preset("Aqueduct Final", #preset_100early_maridia_postdraygon_aqueduct_final)

presets_100early_maridia_postdraygon_west_sand_pit:
    %cm_preset("West Sand Pit", #preset_100early_maridia_postdraygon_west_sand_pit)

presets_100early_maridia_postdraygon_thread_the_needle:
    %cm_preset("Thread the Needle", #preset_100early_maridia_postdraygon_thread_the_needle)


; Kraid-Ice-Kronic
presets_100early_kraidicekronic_kraid_entrance_revisit:
    %cm_preset("Kraid Entrance Revisit", #preset_100early_kraidicekronic_kraid_entrance_revisit)

presets_100early_kraidicekronic_kraid_missiles:
    %cm_preset("Kraid Missiles", #preset_100early_kraidicekronic_kraid_missiles)

presets_100early_kraidicekronic_kraid_missiles_escape:
    %cm_preset("Kraid Missiles Escape", #preset_100early_kraidicekronic_kraid_missiles_escape)

presets_100early_kraidicekronic_ice_beam_gate_room:
    %cm_preset("Ice Beam Gate Room", #preset_100early_kraidicekronic_ice_beam_gate_room)

presets_100early_kraidicekronic_ice_beam_snake_room:
    %cm_preset("Ice Beam Snake Room", #preset_100early_kraidicekronic_ice_beam_snake_room)

presets_100early_kraidicekronic_snake_room_revisit:
    %cm_preset("Snake Room Revisit", #preset_100early_kraidicekronic_snake_room_revisit)

presets_100early_kraidicekronic_ice_escape:
    %cm_preset("Ice Escape", #preset_100early_kraidicekronic_ice_escape)

presets_100early_kraidicekronic_crumble_shaft_missiles:
    %cm_preset("Crumble Shaft Missiles", #preset_100early_kraidicekronic_crumble_shaft_missiles)

presets_100early_kraidicekronic_crocomire_speedway:
    %cm_preset("Crocomire Speedway", #preset_100early_kraidicekronic_crocomire_speedway)

presets_100early_kraidicekronic_kronic_boost:
    %cm_preset("Kronic Boost", #preset_100early_kraidicekronic_kronic_boost)


; Lower Norfair
presets_100early_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_100early_lower_norfair_ln_main_hall)

presets_100early_lower_norfair_golden_torizo:
    %cm_preset("Golden Torizo", #preset_100early_lower_norfair_golden_torizo)

presets_100early_lower_norfair_leaving_golden_torizo:
    %cm_preset("Leaving Golden Torizo", #preset_100early_lower_norfair_leaving_golden_torizo)

presets_100early_lower_norfair_fast_ripper_room:
    %cm_preset("Fast Ripper Room", #preset_100early_lower_norfair_fast_ripper_room)

presets_100early_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room in the Game", #preset_100early_lower_norfair_worst_room_in_the_game)

presets_100early_lower_norfair_mickey_mouse_missiles:
    %cm_preset("Mickey Mouse Missiles", #preset_100early_lower_norfair_mickey_mouse_missiles)

presets_100early_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_100early_lower_norfair_amphitheatre)

presets_100early_lower_norfair_red_kihunter_shaft:
    %cm_preset("Red Kihunter Shaft", #preset_100early_lower_norfair_red_kihunter_shaft)

presets_100early_lower_norfair_ninja_pirates:
    %cm_preset("Ninja Pirates", #preset_100early_lower_norfair_ninja_pirates)

presets_100early_lower_norfair_plowerhouse_room:
    %cm_preset("Plowerhouse Room", #preset_100early_lower_norfair_plowerhouse_room)

presets_100early_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_100early_lower_norfair_ridley)

presets_100early_lower_norfair_ridley_escape:
    %cm_preset("Ridley Escape", #preset_100early_lower_norfair_ridley_escape)

presets_100early_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_100early_lower_norfair_wasteland_revisit)

presets_100early_lower_norfair_kihunter_shaft_revisit:
    %cm_preset("Kihunter Shaft Revisit", #preset_100early_lower_norfair_kihunter_shaft_revisit)

presets_100early_lower_norfair_firefleas_room:
    %cm_preset("Firefleas Room", #preset_100early_lower_norfair_firefleas_room)

presets_100early_lower_norfair_springball_maze:
    %cm_preset("Springball Maze", #preset_100early_lower_norfair_springball_maze)

presets_100early_lower_norfair_three_muskateers:
    %cm_preset("Three Muskateers", #preset_100early_lower_norfair_three_muskateers)

presets_100early_lower_norfair_bubble_mountain_return:
    %cm_preset("Bubble Mountain Return", #preset_100early_lower_norfair_bubble_mountain_return)

presets_100early_lower_norfair_norfair_reserve:
    %cm_preset("Norfair Reserve", #preset_100early_lower_norfair_norfair_reserve)

presets_100early_lower_norfair_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_100early_lower_norfair_bubble_mountain_final)

presets_100early_lower_norfair_business_center_final:
    %cm_preset("Business Center Final", #preset_100early_lower_norfair_business_center_final)


; Final Cleanup
presets_100early_final_cleanup_below_spazer:
    %cm_preset("Below Spazer", #preset_100early_final_cleanup_below_spazer)

presets_100early_final_cleanup_red_tower_xray:
    %cm_preset("Red Tower X-Ray", #preset_100early_final_cleanup_red_tower_xray)

presets_100early_final_cleanup_xray_passage:
    %cm_preset("X-Ray Passage", #preset_100early_final_cleanup_xray_passage)

presets_100early_final_cleanup_xray_passage_return:
    %cm_preset("X-Ray Passage Return", #preset_100early_final_cleanup_xray_passage_return)

presets_100early_final_cleanup_reverse_slinky:
    %cm_preset("Reverse Slinky", #preset_100early_final_cleanup_reverse_slinky)

presets_100early_final_cleanup_retro_brinstar_hoppers:
    %cm_preset("Retro Brinstar Hoppers", #preset_100early_final_cleanup_retro_brinstar_hoppers)

presets_100early_final_cleanup_retro_brinstar_etank:
    %cm_preset("Retro Brinstar E-Tank", #preset_100early_final_cleanup_retro_brinstar_etank)

presets_100early_final_cleanup_boulder_room:
    %cm_preset("Boulder Room", #preset_100early_final_cleanup_boulder_room)

presets_100early_final_cleanup_leaving_billy_mays:
    %cm_preset("Leaving Billy Mays", #preset_100early_final_cleanup_leaving_billy_mays)

presets_100early_final_cleanup_retro_brinstar_escape:
    %cm_preset("Retro Brinstar Escape", #preset_100early_final_cleanup_retro_brinstar_escape)

presets_100early_final_cleanup_old_tourian_missiles:
    %cm_preset("Old Tourian Missiles", #preset_100early_final_cleanup_old_tourian_missiles)

presets_100early_final_cleanup_climb_supers:
    %cm_preset("Climb Supers", #preset_100early_final_cleanup_climb_supers)

presets_100early_final_cleanup_parlor_missiles:
    %cm_preset("Parlor Missiles", #preset_100early_final_cleanup_parlor_missiles)

presets_100early_final_cleanup_leaving_parlor_missiles:
    %cm_preset("Leaving Parlor Missiles", #preset_100early_final_cleanup_leaving_parlor_missiles)

presets_100early_final_cleanup_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_100early_final_cleanup_terminator_revisit)


; Tourian
presets_100early_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_100early_tourian_metroids_1)

presets_100early_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_100early_tourian_metroids_2)

presets_100early_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_100early_tourian_metroids_3)

presets_100early_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_100early_tourian_metroids_4)

presets_100early_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_100early_tourian_baby_skip)

presets_100early_tourian_after_baby_skip:
    %cm_preset("After Baby Skip", #preset_100early_tourian_after_baby_skip)

presets_100early_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_100early_tourian_zeb_skip)

presets_100early_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_100early_tourian_mother_brain_2)

presets_100early_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_100early_tourian_zebes_escape)

presets_100early_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_100early_tourian_escape_room_3)

presets_100early_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_100early_tourian_escape_room_4)

presets_100early_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_100early_tourian_escape_climb)

presets_100early_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_100early_tourian_escape_parlor)


