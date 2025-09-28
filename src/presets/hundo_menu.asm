PresetsMenuHundo:
    dw #presets_goto_hundo_bombs
    dw #presets_goto_hundo_kraid
    dw #presets_goto_hundo_speed_booster
    dw #presets_goto_hundo_ice_beam
    dw #presets_goto_hundo_phantoon
    dw #presets_goto_hundo_gravity
    dw #presets_goto_hundo_brinstar_cleanup
    dw #presets_goto_hundo_mama_turtle_etank
    dw #presets_goto_hundo_maridia_beach
    dw #presets_goto_hundo_draygon
    dw #presets_goto_hundo_maridia_cleanup
    dw #presets_goto_hundo_golden_torizo
    dw #presets_goto_hundo_ridley
    dw #presets_goto_hundo_crocomire
    dw #presets_goto_hundo_final_cleanup
    dw #presets_goto_hundo_tourian
    dw #$0000
    %cm_header("100% ITEMS - LATE CROC")

presets_goto_hundo_bombs:
    %cm_submenu("Bombs", #presets_submenu_hundo_bombs)

presets_goto_hundo_kraid:
    %cm_submenu("Kraid", #presets_submenu_hundo_kraid)

presets_goto_hundo_speed_booster:
    %cm_submenu("Speed Booster", #presets_submenu_hundo_speed_booster)

presets_goto_hundo_ice_beam:
    %cm_submenu("Ice Beam", #presets_submenu_hundo_ice_beam)

presets_goto_hundo_phantoon:
    %cm_submenu("Phantoon", #presets_submenu_hundo_phantoon)

presets_goto_hundo_gravity:
    %cm_submenu("Gravity", #presets_submenu_hundo_gravity)

presets_goto_hundo_brinstar_cleanup:
    %cm_submenu("Brinstar Cleanup", #presets_submenu_hundo_brinstar_cleanup)

presets_goto_hundo_mama_turtle_etank:
    %cm_submenu("Mama Turtle E-Tank", #presets_submenu_hundo_mama_turtle_etank)

presets_goto_hundo_maridia_beach:
    %cm_submenu("Maridia Beach", #presets_submenu_hundo_maridia_beach)

presets_goto_hundo_draygon:
    %cm_submenu("Draygon", #presets_submenu_hundo_draygon)

presets_goto_hundo_maridia_cleanup:
    %cm_submenu("Maridia Cleanup", #presets_submenu_hundo_maridia_cleanup)

presets_goto_hundo_golden_torizo:
    %cm_submenu("Golden Torizo", #presets_submenu_hundo_golden_torizo)

presets_goto_hundo_ridley:
    %cm_submenu("Ridley", #presets_submenu_hundo_ridley)

presets_goto_hundo_crocomire:
    %cm_submenu("Crocomire", #presets_submenu_hundo_crocomire)

presets_goto_hundo_final_cleanup:
    %cm_submenu("Final Cleanup", #presets_submenu_hundo_final_cleanup)

presets_goto_hundo_tourian:
    %cm_submenu("Tourian", #presets_submenu_hundo_tourian)

presets_submenu_hundo_bombs:
    dw #presets_hundo_bombs_ceres_elevator
    dw #presets_hundo_bombs_ceres_escape
    dw #presets_hundo_bombs_ceres_last_3_rooms
    dw #presets_hundo_bombs_ship
    dw #presets_hundo_bombs_parlor
    dw #presets_hundo_bombs_climb_down
    dw #presets_hundo_bombs_pit_room
    dw #presets_hundo_bombs_morph
    dw #presets_hundo_bombs_construction_zone_down
    dw #presets_hundo_bombs_construction_zone_up
    dw #presets_hundo_bombs_pit_room_revisit
    dw #presets_hundo_bombs_climb_up
    dw #presets_hundo_bombs_parlor_revisit
    dw #presets_hundo_bombs_flyway
    dw #presets_hundo_bombs_bomb_torizo
    dw #$0000
    %cm_header("BOMBS")

presets_submenu_hundo_kraid:
    dw #presets_hundo_kraid_alcatraz
    dw #presets_hundo_kraid_terminator
    dw #presets_hundo_kraid_green_pirate_shaft
    dw #presets_hundo_kraid_elevator
    dw #presets_hundo_kraid_early_supers
    dw #presets_hundo_kraid_reverse_mockball
    dw #presets_hundo_kraid_dachora_room
    dw #presets_hundo_kraid_big_pink
    dw #presets_hundo_kraid_green_hill_zone
    dw #presets_hundo_kraid_red_tower
    dw #presets_hundo_kraid_skree_boost
    dw #presets_hundo_kraid_kraid_entry
    dw #presets_hundo_kraid_kraid_kihunter_room
    dw #presets_hundo_kraid_kraid
    dw #presets_hundo_kraid_leaving_varia
    dw #presets_hundo_kraid_leaving_kraid_hallway
    dw #presets_hundo_kraid_leaving_kraid_etank
    dw #$0000
    %cm_header("KRAID")

presets_submenu_hundo_speed_booster:
    dw #presets_hundo_speed_booster_business_center
    dw #presets_hundo_speed_booster_hijump_boots
    dw #presets_hundo_speed_booster_business_center_climb
    dw #presets_hundo_speed_booster_cathedral_entrance
    dw #presets_hundo_speed_booster_cathedral
    dw #presets_hundo_speed_booster_rising_tide
    dw #presets_hundo_speed_booster_bubble_mountain
    dw #presets_hundo_speed_booster_bat_cave
    dw #presets_hundo_speed_booster_leaving_speed_booster
    dw #$0000
    %cm_header("SPEED BOOSTER")

presets_submenu_hundo_ice_beam:
    dw #presets_hundo_ice_beam_single_chamber
    dw #presets_hundo_ice_beam_double_chamber
    dw #presets_hundo_ice_beam_double_chamber_revisit
    dw #presets_hundo_ice_beam_bubble_mountain_revisit
    dw #presets_hundo_ice_beam_business_center_climb_ice
    dw #presets_hundo_ice_beam_ice_beam_gate_room
    dw #presets_hundo_ice_beam_ice_beam_snake_room
    dw #presets_hundo_ice_beam_ice_beam_snake_room_revisit
    dw #presets_hundo_ice_beam_ice_beam_gate_room_escape
    dw #presets_hundo_ice_beam_business_center_elevator
    dw #$0000
    %cm_header("ICE BEAM")

presets_submenu_hundo_phantoon:
    dw #presets_hundo_phantoon_alpha_spark
    dw #presets_hundo_phantoon_red_tower_revisit
    dw #presets_hundo_phantoon_hellway
    dw #presets_hundo_phantoon_leaving_alpha_power_bombs
    dw #presets_hundo_phantoon_kihunter_room
    dw #presets_hundo_phantoon_ocean_fly
    dw #presets_hundo_phantoon_phantoon
    dw #$0000
    %cm_header("PHANTOON")

presets_submenu_hundo_gravity:
    dw #presets_hundo_gravity_ws_shaft_up_to_supers
    dw #presets_hundo_gravity_ws_right_supers
    dw #presets_hundo_gravity_leaving_ws_left_supers
    dw #presets_hundo_gravity_spiky_room_of_death
    dw #presets_hundo_gravity_ws_etank
    dw #presets_hundo_gravity_spiky_room_of_death_revisit
    dw #presets_hundo_gravity_ws_shaft_up_to_attic
    dw #presets_hundo_gravity_attic
    dw #presets_hundo_gravity_ws_robot_missiles
    dw #presets_hundo_gravity_attic_revisit
    dw #presets_hundo_gravity_sky_missiles
    dw #presets_hundo_gravity_bowling
    dw #presets_hundo_gravity_leaving_gravity
    dw #$0000
    %cm_header("GRAVITY")

presets_submenu_hundo_brinstar_cleanup:
    dw #presets_hundo_brinstar_cleanup_crateria_power_bombs
    dw #presets_hundo_brinstar_cleanup_ship_room
    dw #presets_hundo_brinstar_cleanup_gauntlet_etank
    dw #presets_hundo_brinstar_cleanup_green_pirate_shaft
    dw #presets_hundo_brinstar_cleanup_green_shaft_revisit
    dw #presets_hundo_brinstar_cleanup_green_brinstar_beetoms
    dw #presets_hundo_brinstar_cleanup_etecoon_energy_tank_room
    dw #presets_hundo_brinstar_cleanup_etecoon_room
    dw #presets_hundo_brinstar_cleanup_dachora_room_revisit
    dw #presets_hundo_brinstar_cleanup_big_pink_revisit
    dw #presets_hundo_brinstar_cleanup_mission_impossible
    dw #presets_hundo_brinstar_cleanup_pink_brinstar_etank
    dw #presets_hundo_brinstar_cleanup_spore_spawn_supers
    dw #presets_hundo_brinstar_cleanup_waterway_etank
    dw #$0000
    %cm_header("BRINSTAR CLEANUP")

presets_submenu_hundo_mama_turtle_etank:
    dw #presets_hundo_mama_turtle_etank_big_pink_charge_escape
    dw #presets_hundo_mama_turtle_etank_green_hill_zone_revisit
    dw #presets_hundo_mama_turtle_etank_blockbuster
    dw #presets_hundo_mama_turtle_etank_breaking_the_tube
    dw #presets_hundo_mama_turtle_etank_main_street
    dw #presets_hundo_mama_turtle_etank_fish_tank
    dw #presets_hundo_mama_turtle_etank_mama_turtle_etank
    dw #presets_hundo_mama_turtle_etank_fish_tank_revisit
    dw #$0000
    %cm_header("MAMA TURTLE E-TANK")

presets_submenu_hundo_maridia_beach:
    dw #presets_hundo_maridia_beach_crab_supers
    dw #presets_hundo_maridia_beach_mt_everest
    dw #presets_hundo_maridia_beach_beach_missiles
    dw #presets_hundo_maridia_beach_maridia_bug_room
    dw #presets_hundo_maridia_beach_watering_hole
    dw #presets_hundo_maridia_beach_maridia_bug_room_revisit
    dw #presets_hundo_maridia_beach_beach_revisit
    dw #$0000
    %cm_header("MARIDIA BEACH")

presets_submenu_hundo_draygon:
    dw #presets_hundo_draygon_aqueduct
    dw #presets_hundo_draygon_botwoon
    dw #presets_hundo_draygon_full_halfie
    dw #presets_hundo_draygon_draygon_missiles
    dw #presets_hundo_draygon_draygon
    dw #presets_hundo_draygon_draygon_escape
    dw #$0000
    %cm_header("DRAYGON")

presets_submenu_hundo_maridia_cleanup:
    dw #presets_hundo_maridia_cleanup_aqueduct_revisit
    dw #presets_hundo_maridia_cleanup_right_sand_pit
    dw #presets_hundo_maridia_cleanup_puyo_ice_clip_springball
    dw #presets_hundo_maridia_cleanup_shaktool
    dw #presets_hundo_maridia_cleanup_shaktool_revisit
    dw #presets_hundo_maridia_cleanup_east_sand_hall
    dw #presets_hundo_maridia_cleanup_kassiuz_room
    dw #presets_hundo_maridia_cleanup_plasma
    dw #presets_hundo_maridia_cleanup_kassiuz_room_revisit
    dw #presets_hundo_maridia_cleanup_plasma_spark_room_down
    dw #presets_hundo_maridia_cleanup_cac_alley
    dw #presets_hundo_maridia_cleanup_aqueduct_final_visit
    dw #presets_hundo_maridia_cleanup_left_sand_pit
    dw #presets_hundo_maridia_cleanup_leaving_maridia
    dw #$0000
    %cm_header("MARIDIA CLEANUP")

presets_submenu_hundo_golden_torizo:
    dw #presets_hundo_golden_torizo_kraid_entrance_revisit
    dw #presets_hundo_golden_torizo_kraid_missiles
    dw #presets_hundo_golden_torizo_kraid_missiles_escape
    dw #presets_hundo_golden_torizo_ice_missiles
    dw #presets_hundo_golden_torizo_croc_speedway
    dw #presets_hundo_golden_torizo_kronic_boost
    dw #presets_hundo_golden_torizo_blue_fireball
    dw #presets_hundo_golden_torizo_golden_torizo
    dw #$0000
    %cm_header("GOLDEN TORIZO")

presets_submenu_hundo_ridley:
    dw #presets_hundo_ridley_fast_ripper_room
    dw #presets_hundo_ridley_worst_room_in_the_game
    dw #presets_hundo_ridley_mickey_mouse_missiles
    dw #presets_hundo_ridley_amphitheatre
    dw #presets_hundo_ridley_kihunter_shaft_down
    dw #presets_hundo_ridley_wasteland_down
    dw #presets_hundo_ridley_ninja_pirates
    dw #presets_hundo_ridley_plowerhouse_room
    dw #presets_hundo_ridley_ridley
    dw #presets_hundo_ridley_ridley_escape
    dw #presets_hundo_ridley_wasteland_up
    dw #presets_hundo_ridley_kihunter_shaft_up
    dw #presets_hundo_ridley_firefleas_room
    dw #presets_hundo_ridley_hotarubi_special
    dw #presets_hundo_ridley_3_musketeers
    dw #$0000
    %cm_header("RIDLEY")

presets_submenu_hundo_crocomire:
    dw #presets_hundo_crocomire_bubble_mountain_revisit
    dw #presets_hundo_crocomire_norfair_reserve
    dw #presets_hundo_crocomire_bubble_mountain_cleanup
    dw #presets_hundo_crocomire_red_pirate_shaft
    dw #presets_hundo_crocomire_crocomire
    dw #presets_hundo_crocomire_grapple_shaft_down
    dw #presets_hundo_crocomire_grapple_shaft_up
    dw #presets_hundo_crocomire_crocomire_room_revisit
    dw #presets_hundo_crocomire_croc_escape
    dw #presets_hundo_crocomire_business_center_climb_final
    dw #$0000
    %cm_header("CROCOMIRE")

presets_submenu_hundo_final_cleanup:
    dw #presets_hundo_final_cleanup_below_spazer
    dw #presets_hundo_final_cleanup_red_tower_xray
    dw #presets_hundo_final_cleanup_red_brinstar_firefleas
    dw #presets_hundo_final_cleanup_leaving_xray
    dw #presets_hundo_final_cleanup_reverse_slinky
    dw #presets_hundo_final_cleanup_retro_brinstar_hoppers
    dw #presets_hundo_final_cleanup_retro_brinstar_etank
    dw #presets_hundo_final_cleanup_billy_mays
    dw #presets_hundo_final_cleanup_billy_mays_escape
    dw #presets_hundo_final_cleanup_retro_brinstar_escape
    dw #presets_hundo_final_cleanup_pit_room_missiles
    dw #presets_hundo_final_cleanup_climb_supers
    dw #presets_hundo_final_cleanup_the_last_missiles
    dw #presets_hundo_final_cleanup_the_last_missiles_escape
    dw #$0000
    %cm_header("FINAL CLEANUP")

presets_submenu_hundo_tourian:
    dw #presets_hundo_tourian_metroids_1
    dw #presets_hundo_tourian_metroids_2
    dw #presets_hundo_tourian_metroids_3
    dw #presets_hundo_tourian_metroids_4
    dw #presets_hundo_tourian_baby_skip
    dw #presets_hundo_tourian_after_baby_skip
    dw #presets_hundo_tourian_zeb_skip
    dw #presets_hundo_tourian_mother_brain_2
    dw #presets_hundo_tourian_zebes_escape
    dw #presets_hundo_tourian_escape_room_3
    dw #presets_hundo_tourian_escape_room_4
    dw #presets_hundo_tourian_escape_climb
    dw #presets_hundo_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")


; Bombs
presets_hundo_bombs_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_hundo_bombs_ceres_elevator)

presets_hundo_bombs_ceres_escape:
    %cm_preset("Ceres Escape", #preset_hundo_bombs_ceres_escape)

presets_hundo_bombs_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_hundo_bombs_ceres_last_3_rooms)

presets_hundo_bombs_ship:
    %cm_preset("Ship", #preset_hundo_bombs_ship)

presets_hundo_bombs_parlor:
    %cm_preset("Parlor", #preset_hundo_bombs_parlor)

presets_hundo_bombs_climb_down:
    %cm_preset("Climb Down", #preset_hundo_bombs_climb_down)

presets_hundo_bombs_pit_room:
    %cm_preset("Pit Room", #preset_hundo_bombs_pit_room)

presets_hundo_bombs_morph:
    %cm_preset("Morph", #preset_hundo_bombs_morph)

presets_hundo_bombs_construction_zone_down:
    %cm_preset("Construction Zone Down", #preset_hundo_bombs_construction_zone_down)

presets_hundo_bombs_construction_zone_up:
    %cm_preset("Construction Zone Up", #preset_hundo_bombs_construction_zone_up)

presets_hundo_bombs_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_hundo_bombs_pit_room_revisit)

presets_hundo_bombs_climb_up:
    %cm_preset("Climb Up", #preset_hundo_bombs_climb_up)

presets_hundo_bombs_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_hundo_bombs_parlor_revisit)

presets_hundo_bombs_flyway:
    %cm_preset("Flyway", #preset_hundo_bombs_flyway)

presets_hundo_bombs_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_hundo_bombs_bomb_torizo)


; Kraid
presets_hundo_kraid_alcatraz:
    %cm_preset("Alcatraz", #preset_hundo_kraid_alcatraz)

presets_hundo_kraid_terminator:
    %cm_preset("Terminator", #preset_hundo_kraid_terminator)

presets_hundo_kraid_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_hundo_kraid_green_pirate_shaft)

presets_hundo_kraid_elevator:
    %cm_preset("Elevator", #preset_hundo_kraid_elevator)

presets_hundo_kraid_early_supers:
    %cm_preset("Early Supers", #preset_hundo_kraid_early_supers)

presets_hundo_kraid_reverse_mockball:
    %cm_preset("Reverse Mockball", #preset_hundo_kraid_reverse_mockball)

presets_hundo_kraid_dachora_room:
    %cm_preset("Dachora Room", #preset_hundo_kraid_dachora_room)

presets_hundo_kraid_big_pink:
    %cm_preset("Big Pink", #preset_hundo_kraid_big_pink)

presets_hundo_kraid_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_hundo_kraid_green_hill_zone)

presets_hundo_kraid_red_tower:
    %cm_preset("Red Tower", #preset_hundo_kraid_red_tower)

presets_hundo_kraid_skree_boost:
    %cm_preset("Skree Boost", #preset_hundo_kraid_skree_boost)

presets_hundo_kraid_kraid_entry:
    %cm_preset("Kraid Entry", #preset_hundo_kraid_kraid_entry)

presets_hundo_kraid_kraid_kihunter_room:
    %cm_preset("Kraid Kihunter Room", #preset_hundo_kraid_kraid_kihunter_room)

presets_hundo_kraid_kraid:
    %cm_preset("Kraid", #preset_hundo_kraid_kraid)

presets_hundo_kraid_leaving_varia:
    %cm_preset("Leaving Varia", #preset_hundo_kraid_leaving_varia)

presets_hundo_kraid_leaving_kraid_hallway:
    %cm_preset("Leaving Kraid Hallway", #preset_hundo_kraid_leaving_kraid_hallway)

presets_hundo_kraid_leaving_kraid_etank:
    %cm_preset("Leaving Kraid E-Tank", #preset_hundo_kraid_leaving_kraid_etank)


; Speed Booster
presets_hundo_speed_booster_business_center:
    %cm_preset("Business Center", #preset_hundo_speed_booster_business_center)

presets_hundo_speed_booster_hijump_boots:
    %cm_preset("Hi-Jump Boots", #preset_hundo_speed_booster_hijump_boots)

presets_hundo_speed_booster_business_center_climb:
    %cm_preset("Business Center Climb", #preset_hundo_speed_booster_business_center_climb)

presets_hundo_speed_booster_cathedral_entrance:
    %cm_preset("Cathedral Entrance", #preset_hundo_speed_booster_cathedral_entrance)

presets_hundo_speed_booster_cathedral:
    %cm_preset("Cathedral", #preset_hundo_speed_booster_cathedral)

presets_hundo_speed_booster_rising_tide:
    %cm_preset("Rising Tide", #preset_hundo_speed_booster_rising_tide)

presets_hundo_speed_booster_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_hundo_speed_booster_bubble_mountain)

presets_hundo_speed_booster_bat_cave:
    %cm_preset("Bat Cave", #preset_hundo_speed_booster_bat_cave)

presets_hundo_speed_booster_leaving_speed_booster:
    %cm_preset("Leaving Speed Booster", #preset_hundo_speed_booster_leaving_speed_booster)


; Ice Beam
presets_hundo_ice_beam_single_chamber:
    %cm_preset("Single Chamber", #preset_hundo_ice_beam_single_chamber)

presets_hundo_ice_beam_double_chamber:
    %cm_preset("Double Chamber", #preset_hundo_ice_beam_double_chamber)

presets_hundo_ice_beam_double_chamber_revisit:
    %cm_preset("Double Chamber Revisit", #preset_hundo_ice_beam_double_chamber_revisit)

presets_hundo_ice_beam_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_hundo_ice_beam_bubble_mountain_revisit)

presets_hundo_ice_beam_business_center_climb_ice:
    %cm_preset("Business Center Climb Ice", #preset_hundo_ice_beam_business_center_climb_ice)

presets_hundo_ice_beam_ice_beam_gate_room:
    %cm_preset("Ice Beam Gate Room", #preset_hundo_ice_beam_ice_beam_gate_room)

presets_hundo_ice_beam_ice_beam_snake_room:
    %cm_preset("Ice Beam Snake Room", #preset_hundo_ice_beam_ice_beam_snake_room)

presets_hundo_ice_beam_ice_beam_snake_room_revisit:
    %cm_preset("Ice Beam Snake Room Revisit", #preset_hundo_ice_beam_ice_beam_snake_room_revisit)

presets_hundo_ice_beam_ice_beam_gate_room_escape:
    %cm_preset("Ice Beam Gate Room Escape", #preset_hundo_ice_beam_ice_beam_gate_room_escape)

presets_hundo_ice_beam_business_center_elevator:
    %cm_preset("Business Center Elevator", #preset_hundo_ice_beam_business_center_elevator)


; Phantoon
presets_hundo_phantoon_alpha_spark:
    %cm_preset("Alpha Spark", #preset_hundo_phantoon_alpha_spark)

presets_hundo_phantoon_red_tower_revisit:
    %cm_preset("Red Tower Revisit", #preset_hundo_phantoon_red_tower_revisit)

presets_hundo_phantoon_hellway:
    %cm_preset("Hellway", #preset_hundo_phantoon_hellway)

presets_hundo_phantoon_leaving_alpha_power_bombs:
    %cm_preset("Leaving Alpha Power Bombs", #preset_hundo_phantoon_leaving_alpha_power_bombs)

presets_hundo_phantoon_kihunter_room:
    %cm_preset("Kihunter Room", #preset_hundo_phantoon_kihunter_room)

presets_hundo_phantoon_ocean_fly:
    %cm_preset("Ocean Fly", #preset_hundo_phantoon_ocean_fly)

presets_hundo_phantoon_phantoon:
    %cm_preset("Phantoon", #preset_hundo_phantoon_phantoon)


; Gravity
presets_hundo_gravity_ws_shaft_up_to_supers:
    %cm_preset("WS Shaft Up To Supers", #preset_hundo_gravity_ws_shaft_up_to_supers)

presets_hundo_gravity_ws_right_supers:
    %cm_preset("WS Right Supers", #preset_hundo_gravity_ws_right_supers)

presets_hundo_gravity_leaving_ws_left_supers:
    %cm_preset("Leaving WS Left Supers", #preset_hundo_gravity_leaving_ws_left_supers)

presets_hundo_gravity_spiky_room_of_death:
    %cm_preset("Spiky Room of Death", #preset_hundo_gravity_spiky_room_of_death)

presets_hundo_gravity_ws_etank:
    %cm_preset("WS E-Tank", #preset_hundo_gravity_ws_etank)

presets_hundo_gravity_spiky_room_of_death_revisit:
    %cm_preset("Spiky Room of Death Revisit", #preset_hundo_gravity_spiky_room_of_death_revisit)

presets_hundo_gravity_ws_shaft_up_to_attic:
    %cm_preset("WS Shaft Up To Attic", #preset_hundo_gravity_ws_shaft_up_to_attic)

presets_hundo_gravity_attic:
    %cm_preset("Attic", #preset_hundo_gravity_attic)

presets_hundo_gravity_ws_robot_missiles:
    %cm_preset("WS Robot Missiles", #preset_hundo_gravity_ws_robot_missiles)

presets_hundo_gravity_attic_revisit:
    %cm_preset("Attic Revisit", #preset_hundo_gravity_attic_revisit)

presets_hundo_gravity_sky_missiles:
    %cm_preset("Sky Missiles", #preset_hundo_gravity_sky_missiles)

presets_hundo_gravity_bowling:
    %cm_preset("Bowling", #preset_hundo_gravity_bowling)

presets_hundo_gravity_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_hundo_gravity_leaving_gravity)


; Brinstar Cleanup
presets_hundo_brinstar_cleanup_crateria_power_bombs:
    %cm_preset("Crateria Power Bombs", #preset_hundo_brinstar_cleanup_crateria_power_bombs)

presets_hundo_brinstar_cleanup_ship_room:
    %cm_preset("Ship Room", #preset_hundo_brinstar_cleanup_ship_room)

presets_hundo_brinstar_cleanup_gauntlet_etank:
    %cm_preset("Gauntlet E-Tank", #preset_hundo_brinstar_cleanup_gauntlet_etank)

presets_hundo_brinstar_cleanup_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_hundo_brinstar_cleanup_green_pirate_shaft)

presets_hundo_brinstar_cleanup_green_shaft_revisit:
    %cm_preset("Green Shaft Revisit", #preset_hundo_brinstar_cleanup_green_shaft_revisit)

presets_hundo_brinstar_cleanup_green_brinstar_beetoms:
    %cm_preset("Green Brinstar Beetoms", #preset_hundo_brinstar_cleanup_green_brinstar_beetoms)

presets_hundo_brinstar_cleanup_etecoon_energy_tank_room:
    %cm_preset("Etecoon Energy Tank Room", #preset_hundo_brinstar_cleanup_etecoon_energy_tank_room)

presets_hundo_brinstar_cleanup_etecoon_room:
    %cm_preset("Etecoon Room", #preset_hundo_brinstar_cleanup_etecoon_room)

presets_hundo_brinstar_cleanup_dachora_room_revisit:
    %cm_preset("Dachora Room Revisit", #preset_hundo_brinstar_cleanup_dachora_room_revisit)

presets_hundo_brinstar_cleanup_big_pink_revisit:
    %cm_preset("Big Pink Revisit", #preset_hundo_brinstar_cleanup_big_pink_revisit)

presets_hundo_brinstar_cleanup_mission_impossible:
    %cm_preset("Mission Impossible", #preset_hundo_brinstar_cleanup_mission_impossible)

presets_hundo_brinstar_cleanup_pink_brinstar_etank:
    %cm_preset("Pink Brinstar E-Tank", #preset_hundo_brinstar_cleanup_pink_brinstar_etank)

presets_hundo_brinstar_cleanup_spore_spawn_supers:
    %cm_preset("Spore Spawn Supers", #preset_hundo_brinstar_cleanup_spore_spawn_supers)

presets_hundo_brinstar_cleanup_waterway_etank:
    %cm_preset("Waterway E-Tank", #preset_hundo_brinstar_cleanup_waterway_etank)


; Mama Turtle E-Tank
presets_hundo_mama_turtle_etank_big_pink_charge_escape:
    %cm_preset("Big Pink Charge Escape", #preset_hundo_mama_turtle_etank_big_pink_charge_escape)

presets_hundo_mama_turtle_etank_green_hill_zone_revisit:
    %cm_preset("Green Hill Zone Revisit", #preset_hundo_mama_turtle_etank_green_hill_zone_revisit)

presets_hundo_mama_turtle_etank_blockbuster:
    %cm_preset("Blockbuster", #preset_hundo_mama_turtle_etank_blockbuster)

presets_hundo_mama_turtle_etank_breaking_the_tube:
    %cm_preset("Breaking The Tube", #preset_hundo_mama_turtle_etank_breaking_the_tube)

presets_hundo_mama_turtle_etank_main_street:
    %cm_preset("Main Street", #preset_hundo_mama_turtle_etank_main_street)

presets_hundo_mama_turtle_etank_fish_tank:
    %cm_preset("Fish Tank", #preset_hundo_mama_turtle_etank_fish_tank)

presets_hundo_mama_turtle_etank_mama_turtle_etank:
    %cm_preset("Mama Turtle E-Tank", #preset_hundo_mama_turtle_etank_mama_turtle_etank)

presets_hundo_mama_turtle_etank_fish_tank_revisit:
    %cm_preset("Fish Tank Revisit", #preset_hundo_mama_turtle_etank_fish_tank_revisit)


; Maridia Beach
presets_hundo_maridia_beach_crab_supers:
    %cm_preset("Crab Supers", #preset_hundo_maridia_beach_crab_supers)

presets_hundo_maridia_beach_mt_everest:
    %cm_preset("Mt. Everest", #preset_hundo_maridia_beach_mt_everest)

presets_hundo_maridia_beach_beach_missiles:
    %cm_preset("Beach Missiles", #preset_hundo_maridia_beach_beach_missiles)

presets_hundo_maridia_beach_maridia_bug_room:
    %cm_preset("Maridia Bug Room", #preset_hundo_maridia_beach_maridia_bug_room)

presets_hundo_maridia_beach_watering_hole:
    %cm_preset("Watering Hole", #preset_hundo_maridia_beach_watering_hole)

presets_hundo_maridia_beach_maridia_bug_room_revisit:
    %cm_preset("Maridia Bug Room Revisit", #preset_hundo_maridia_beach_maridia_bug_room_revisit)

presets_hundo_maridia_beach_beach_revisit:
    %cm_preset("Beach Revisit", #preset_hundo_maridia_beach_beach_revisit)


; Draygon
presets_hundo_draygon_aqueduct:
    %cm_preset("Aqueduct", #preset_hundo_draygon_aqueduct)

presets_hundo_draygon_botwoon:
    %cm_preset("Botwoon", #preset_hundo_draygon_botwoon)

presets_hundo_draygon_full_halfie:
    %cm_preset("Full Halfie", #preset_hundo_draygon_full_halfie)

presets_hundo_draygon_draygon_missiles:
    %cm_preset("Draygon Missiles", #preset_hundo_draygon_draygon_missiles)

presets_hundo_draygon_draygon:
    %cm_preset("Draygon", #preset_hundo_draygon_draygon)

presets_hundo_draygon_draygon_escape:
    %cm_preset("Draygon Escape", #preset_hundo_draygon_draygon_escape)


; Maridia Cleanup
presets_hundo_maridia_cleanup_aqueduct_revisit:
    %cm_preset("Aqueduct Revisit", #preset_hundo_maridia_cleanup_aqueduct_revisit)

presets_hundo_maridia_cleanup_right_sand_pit:
    %cm_preset("Right Sand Pit", #preset_hundo_maridia_cleanup_right_sand_pit)

presets_hundo_maridia_cleanup_puyo_ice_clip_springball:
    %cm_preset("Puyo Ice Clip (Springball)", #preset_hundo_maridia_cleanup_puyo_ice_clip_springball)

presets_hundo_maridia_cleanup_shaktool:
    %cm_preset("Shaktool", #preset_hundo_maridia_cleanup_shaktool)

presets_hundo_maridia_cleanup_shaktool_revisit:
    %cm_preset("Shaktool Revisit", #preset_hundo_maridia_cleanup_shaktool_revisit)

presets_hundo_maridia_cleanup_east_sand_hall:
    %cm_preset("East Sand Hall", #preset_hundo_maridia_cleanup_east_sand_hall)

presets_hundo_maridia_cleanup_kassiuz_room:
    %cm_preset("Kassiuz Room", #preset_hundo_maridia_cleanup_kassiuz_room)

presets_hundo_maridia_cleanup_plasma:
    %cm_preset("Plasma", #preset_hundo_maridia_cleanup_plasma)

presets_hundo_maridia_cleanup_kassiuz_room_revisit:
    %cm_preset("Kassiuz Room Revisit", #preset_hundo_maridia_cleanup_kassiuz_room_revisit)

presets_hundo_maridia_cleanup_plasma_spark_room_down:
    %cm_preset("Plasma Spark Room Down", #preset_hundo_maridia_cleanup_plasma_spark_room_down)

presets_hundo_maridia_cleanup_cac_alley:
    %cm_preset("Cac Alley", #preset_hundo_maridia_cleanup_cac_alley)

presets_hundo_maridia_cleanup_aqueduct_final_visit:
    %cm_preset("Aqueduct Final Visit", #preset_hundo_maridia_cleanup_aqueduct_final_visit)

presets_hundo_maridia_cleanup_left_sand_pit:
    %cm_preset("Left Sand Pit", #preset_hundo_maridia_cleanup_left_sand_pit)

presets_hundo_maridia_cleanup_leaving_maridia:
    %cm_preset("Leaving Maridia", #preset_hundo_maridia_cleanup_leaving_maridia)


; Golden Torizo
presets_hundo_golden_torizo_kraid_entrance_revisit:
    %cm_preset("Kraid Entrance Revisit", #preset_hundo_golden_torizo_kraid_entrance_revisit)

presets_hundo_golden_torizo_kraid_missiles:
    %cm_preset("Kraid Missiles", #preset_hundo_golden_torizo_kraid_missiles)

presets_hundo_golden_torizo_kraid_missiles_escape:
    %cm_preset("Kraid Missiles Escape", #preset_hundo_golden_torizo_kraid_missiles_escape)

presets_hundo_golden_torizo_ice_missiles:
    %cm_preset("Ice Missiles", #preset_hundo_golden_torizo_ice_missiles)

presets_hundo_golden_torizo_croc_speedway:
    %cm_preset("Croc Speedway", #preset_hundo_golden_torizo_croc_speedway)

presets_hundo_golden_torizo_kronic_boost:
    %cm_preset("Kronic Boost", #preset_hundo_golden_torizo_kronic_boost)

presets_hundo_golden_torizo_blue_fireball:
    %cm_preset("Blue Fireball", #preset_hundo_golden_torizo_blue_fireball)

presets_hundo_golden_torizo_golden_torizo:
    %cm_preset("Golden Torizo", #preset_hundo_golden_torizo_golden_torizo)


; Ridley
presets_hundo_ridley_fast_ripper_room:
    %cm_preset("Fast Ripper Room", #preset_hundo_ridley_fast_ripper_room)

presets_hundo_ridley_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_hundo_ridley_worst_room_in_the_game)

presets_hundo_ridley_mickey_mouse_missiles:
    %cm_preset("Mickey Mouse Missiles", #preset_hundo_ridley_mickey_mouse_missiles)

presets_hundo_ridley_amphitheatre:
    %cm_preset("Amphitheatre", #preset_hundo_ridley_amphitheatre)

presets_hundo_ridley_kihunter_shaft_down:
    %cm_preset("Kihunter Shaft Down", #preset_hundo_ridley_kihunter_shaft_down)

presets_hundo_ridley_wasteland_down:
    %cm_preset("Wasteland Down", #preset_hundo_ridley_wasteland_down)

presets_hundo_ridley_ninja_pirates:
    %cm_preset("Ninja Pirates", #preset_hundo_ridley_ninja_pirates)

presets_hundo_ridley_plowerhouse_room:
    %cm_preset("Plowerhouse Room", #preset_hundo_ridley_plowerhouse_room)

presets_hundo_ridley_ridley:
    %cm_preset("Ridley", #preset_hundo_ridley_ridley)

presets_hundo_ridley_ridley_escape:
    %cm_preset("Ridley Escape", #preset_hundo_ridley_ridley_escape)

presets_hundo_ridley_wasteland_up:
    %cm_preset("Wasteland Up", #preset_hundo_ridley_wasteland_up)

presets_hundo_ridley_kihunter_shaft_up:
    %cm_preset("Kihunter Shaft Up", #preset_hundo_ridley_kihunter_shaft_up)

presets_hundo_ridley_firefleas_room:
    %cm_preset("Firefleas Room", #preset_hundo_ridley_firefleas_room)

presets_hundo_ridley_hotarubi_special:
    %cm_preset("Hotarubi Special", #preset_hundo_ridley_hotarubi_special)

presets_hundo_ridley_3_musketeers:
    %cm_preset("3 Musketeers", #preset_hundo_ridley_3_musketeers)


; Crocomire
presets_hundo_crocomire_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_hundo_crocomire_bubble_mountain_revisit)

presets_hundo_crocomire_norfair_reserve:
    %cm_preset("Norfair Reserve", #preset_hundo_crocomire_norfair_reserve)

presets_hundo_crocomire_bubble_mountain_cleanup:
    %cm_preset("Bubble Mountain Cleanup", #preset_hundo_crocomire_bubble_mountain_cleanup)

presets_hundo_crocomire_red_pirate_shaft:
    %cm_preset("Red Pirate Shaft", #preset_hundo_crocomire_red_pirate_shaft)

presets_hundo_crocomire_crocomire:
    %cm_preset("Crocomire", #preset_hundo_crocomire_crocomire)

presets_hundo_crocomire_grapple_shaft_down:
    %cm_preset("Grapple Shaft Down", #preset_hundo_crocomire_grapple_shaft_down)

presets_hundo_crocomire_grapple_shaft_up:
    %cm_preset("Grapple Shaft Up", #preset_hundo_crocomire_grapple_shaft_up)

presets_hundo_crocomire_crocomire_room_revisit:
    %cm_preset("Crocomire Room Revisit", #preset_hundo_crocomire_crocomire_room_revisit)

presets_hundo_crocomire_croc_escape:
    %cm_preset("Croc Escape", #preset_hundo_crocomire_croc_escape)

presets_hundo_crocomire_business_center_climb_final:
    %cm_preset("Business Center Climb Final", #preset_hundo_crocomire_business_center_climb_final)


; Final Cleanup
presets_hundo_final_cleanup_below_spazer:
    %cm_preset("Below Spazer", #preset_hundo_final_cleanup_below_spazer)

presets_hundo_final_cleanup_red_tower_xray:
    %cm_preset("Red Tower X-Ray", #preset_hundo_final_cleanup_red_tower_xray)

presets_hundo_final_cleanup_red_brinstar_firefleas:
    %cm_preset("Red Brinstar Firefleas", #preset_hundo_final_cleanup_red_brinstar_firefleas)

presets_hundo_final_cleanup_leaving_xray:
    %cm_preset("Leaving X-Ray", #preset_hundo_final_cleanup_leaving_xray)

presets_hundo_final_cleanup_reverse_slinky:
    %cm_preset("Reverse Slinky", #preset_hundo_final_cleanup_reverse_slinky)

presets_hundo_final_cleanup_retro_brinstar_hoppers:
    %cm_preset("Retro Brinstar Hoppers", #preset_hundo_final_cleanup_retro_brinstar_hoppers)

presets_hundo_final_cleanup_retro_brinstar_etank:
    %cm_preset("Retro Brinstar E-Tank", #preset_hundo_final_cleanup_retro_brinstar_etank)

presets_hundo_final_cleanup_billy_mays:
    %cm_preset("Billy Mays", #preset_hundo_final_cleanup_billy_mays)

presets_hundo_final_cleanup_billy_mays_escape:
    %cm_preset("Billy Mays Escape", #preset_hundo_final_cleanup_billy_mays_escape)

presets_hundo_final_cleanup_retro_brinstar_escape:
    %cm_preset("Retro Brinstar Escape", #preset_hundo_final_cleanup_retro_brinstar_escape)

presets_hundo_final_cleanup_pit_room_missiles:
    %cm_preset("Pit Room Missiles", #preset_hundo_final_cleanup_pit_room_missiles)

presets_hundo_final_cleanup_climb_supers:
    %cm_preset("Climb Supers", #preset_hundo_final_cleanup_climb_supers)

presets_hundo_final_cleanup_the_last_missiles:
    %cm_preset("The Last Missiles", #preset_hundo_final_cleanup_the_last_missiles)

presets_hundo_final_cleanup_the_last_missiles_escape:
    %cm_preset("The Last Missiles Escape", #preset_hundo_final_cleanup_the_last_missiles_escape)


; Tourian
presets_hundo_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_hundo_tourian_metroids_1)

presets_hundo_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_hundo_tourian_metroids_2)

presets_hundo_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_hundo_tourian_metroids_3)

presets_hundo_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_hundo_tourian_metroids_4)

presets_hundo_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_hundo_tourian_baby_skip)

presets_hundo_tourian_after_baby_skip:
    %cm_preset("After Baby Skip", #preset_hundo_tourian_after_baby_skip)

presets_hundo_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_hundo_tourian_zeb_skip)

presets_hundo_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_hundo_tourian_mother_brain_2)

presets_hundo_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_hundo_tourian_zebes_escape)

presets_hundo_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_hundo_tourian_escape_room_3)

presets_hundo_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_hundo_tourian_escape_room_4)

presets_hundo_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_hundo_tourian_escape_climb)

presets_hundo_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_hundo_tourian_escape_parlor)

