PresetsMenuRbo:
    dw #presets_goto_rbo_bombs
    dw #presets_goto_rbo_brinstar
    dw #presets_goto_rbo_shopping_single_maridia
    dw #presets_goto_rbo_shopping_double_maridia
    dw #presets_goto_rbo_cleanup_single_maridia
    dw #presets_goto_rbo_cleanup_double_maridia
    dw #presets_goto_rbo_icecroc_single_maridia
    dw #presets_goto_rbo_maridia_double_maridia
    dw #presets_goto_rbo_lower_norfair_segment
    dw #presets_goto_rbo_ln_entry_single_maridia
    dw #presets_goto_rbo_ln_entry_double_maridia
    dw #presets_goto_rbo_ridley
    dw #presets_goto_rbo_ln_escape_single_maridia
    dw #presets_goto_rbo_ln_escape_double_maridia
    dw #presets_goto_rbo_maridia
    dw #presets_goto_rbo_wrecked_ship
    dw #presets_goto_rbo_kraidg4
    dw #presets_goto_rbo_tourian
    dw #$0000
    %cm_header("PRESETS FOR RBO")

presets_goto_rbo_bombs:
    %cm_submenu("Bombs", #presets_submenu_rbo_bombs)

presets_goto_rbo_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_rbo_brinstar)

presets_goto_rbo_shopping_single_maridia:
    %cm_submenu("Shopping  (Single Maridia)", #presets_submenu_rbo_shopping_single_maridia)

presets_goto_rbo_shopping_double_maridia:
    %cm_submenu("Shopping  (Double Maridia)", #presets_submenu_rbo_shopping_double_maridia)

presets_goto_rbo_cleanup_single_maridia:
    %cm_submenu("Cleanup   (Single Maridia)", #presets_submenu_rbo_cleanup_single_maridia)

presets_goto_rbo_cleanup_double_maridia:
    %cm_submenu("Cleanup   (Double Maridia)", #presets_submenu_rbo_cleanup_double_maridia)

presets_goto_rbo_icecroc_single_maridia:
    %cm_submenu("Ice-Croc  (Single Maridia)", #presets_submenu_rbo_icecroc_single_maridia)

presets_goto_rbo_maridia_double_maridia:
    %cm_submenu("Maridia   (Double Maridia)", #presets_submenu_rbo_maridia_double_maridia)

presets_goto_rbo_lower_norfair_segment:
    %cm_submenu("LN Segment", #presets_submenu_rbo_lower_norfair_segment)

presets_goto_rbo_ln_entry_single_maridia:
    %cm_submenu("LN Entry  (Single Maridia)", #presets_submenu_rbo_ln_entry_single_maridia)

presets_goto_rbo_ln_entry_double_maridia:
    %cm_submenu("LN Entry  (Double Maridia)", #presets_submenu_rbo_ln_entry_double_maridia)

presets_goto_rbo_ridley:
    %cm_submenu("Ridley", #presets_submenu_rbo_ridley)

presets_goto_rbo_ln_escape_single_maridia:
    %cm_submenu("LN Escape (Single Maridia)", #presets_submenu_rbo_ln_escape_single_maridia)

presets_goto_rbo_ln_escape_double_maridia:
    %cm_submenu("LN Escape (Double Maridia)", #presets_submenu_rbo_ln_escape_double_maridia)

presets_goto_rbo_maridia:
    %cm_submenu("Maridia", #presets_submenu_rbo_maridia)

presets_goto_rbo_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_rbo_wrecked_ship)

presets_goto_rbo_kraidg4:
    %cm_submenu("Kraid-G4", #presets_submenu_rbo_kraidg4)

presets_goto_rbo_tourian:
    %cm_submenu("Tourian", #presets_submenu_rbo_tourian)

presets_submenu_rbo_bombs:
    dw #presets_rbo_bombs_ceres_elevator
    dw #presets_rbo_bombs_ceres_escape
    dw #presets_rbo_bombs_ceres_last_3_rooms
    dw #presets_rbo_bombs_ship
    dw #presets_rbo_bombs_parlor_down
    dw #presets_rbo_bombs_climb_down
    dw #presets_rbo_bombs_pit_room
    dw #presets_rbo_bombs_morph
    dw #presets_rbo_bombs_construction_zone_down
    dw #presets_rbo_bombs_construction_zone_up
    dw #presets_rbo_bombs_pit_room_revisit
    dw #presets_rbo_bombs_retro_etank
    dw #presets_rbo_bombs_taco_tank_optional
    dw #presets_rbo_bombs_pit_room_final_visit
    dw #presets_rbo_bombs_climb_up
    dw #presets_rbo_bombs_parlor_up
    dw #presets_rbo_bombs_flyway
    dw #presets_rbo_bombs_bomb_torizo
    dw #presets_rbo_bombs_alcatraz
    dw #presets_rbo_bombs_terminator
    dw #presets_rbo_bombs_green_pirate_shaft
    dw #$0000
    %cm_header("BOMBS")

presets_submenu_rbo_brinstar:
    dw #presets_rbo_brinstar_green_brinstar_elevator
    dw #presets_rbo_brinstar_early_supers_reserve
    dw #presets_rbo_brinstar_early_supers_collection
    dw #presets_rbo_brinstar_dachora_room
    dw #presets_rbo_brinstar_big_pink
    dw #presets_rbo_brinstar_green_hill_zone
    dw #presets_rbo_brinstar_noob_bridge
    dw #presets_rbo_brinstar_red_tower
    dw #$FFFF
    dw #presets_rbo_brinstar_hellway_1x_maridia
    dw #presets_rbo_brinstar_alpha_power_bombs_1m
    dw #presets_rbo_brinstar_reverse_hellway_1m
    dw #presets_rbo_brinstar_red_tower_moonfalls_1m
    dw #presets_rbo_brinstar_spazer_1m
    dw #presets_rbo_brinstar_norfair_elevator_1m
    dw #$FFFF
    dw #presets_rbo_brinstar_spazer_2x_maridia
    dw #presets_rbo_brinstar_norfair_elevator_2m
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_rbo_shopping_single_maridia:
    dw #presets_rbo_shopping_single_maridia_hijump_boots
    dw #presets_rbo_shopping_single_maridia_business_center_up
    dw #presets_rbo_shopping_single_maridia_first_hell_run
    dw #presets_rbo_shopping_single_maridia_bubble_mountain
    dw #presets_rbo_shopping_single_maridia_bat_cave_farm_1
    dw #presets_rbo_shopping_single_maridia_leaving_speed_farm_2
    dw #presets_rbo_shopping_single_maridia_wave_beam_entry
    dw #presets_rbo_shopping_single_maridia_wave_escape
    dw #presets_rbo_shopping_single_maridia_heading_to_business_center
    dw #presets_rbo_shopping_single_maridia_leaving_norfair
    dw #$0000
    %cm_header("SHOPPING (SINGLE MARIDIA)")

presets_submenu_rbo_shopping_double_maridia:
    dw #presets_rbo_shopping_double_maridia_hijump_boots
    dw #presets_rbo_shopping_double_maridia_business_center_up
    dw #presets_rbo_shopping_double_maridia_first_hell_run
    dw #presets_rbo_shopping_double_maridia_bubble_mountain
    dw #presets_rbo_shopping_double_maridia_bat_cave_farm_1
    dw #presets_rbo_shopping_double_maridia_leaving_speed_farm_2
    dw #presets_rbo_shopping_double_maridia_wave_beam_entry
    dw #presets_rbo_shopping_double_maridia_wave_escape
    dw #presets_rbo_shopping_double_maridia_heading_to_croc
    dw #presets_rbo_shopping_double_maridia_nutella_refill
    dw #presets_rbo_shopping_double_maridia_croc_power_bombs
    dw #presets_rbo_shopping_double_maridia_leaving_grapple
    dw #presets_rbo_shopping_double_maridia_leaving_croc
    dw #presets_rbo_shopping_double_maridia_ice_entry
    dw #presets_rbo_shopping_double_maridia_leaving_ice
    dw #presets_rbo_shopping_double_maridia_ice_escape
    dw #presets_rbo_shopping_double_maridia_leaving_norfair
    dw #$0000
    %cm_header("SHOPPING (DOUBLE MARIDIA)")

presets_submenu_rbo_cleanup_single_maridia:
    dw #presets_rbo_cleanup_single_maridia_red_tower_up
    dw #presets_rbo_cleanup_single_maridia_green_brinstar_backdoor
    dw #presets_rbo_cleanup_single_maridia_big_pink
    dw #presets_rbo_cleanup_single_maridia_spore_spawn_supers
    dw #presets_rbo_cleanup_single_maridia_spore_spawn_supers_escape
    dw #presets_rbo_cleanup_single_maridia_wave_gate_etank
    dw #presets_rbo_cleanup_single_maridia_dachora_room
    dw #presets_rbo_cleanup_single_maridia_green_shaft_down
    dw #presets_rbo_cleanup_single_maridia_etecoon_supers
    dw #presets_rbo_cleanup_single_maridia_etecoon_pbs_optional
    dw #presets_rbo_cleanup_single_maridia_green_shaft_up
    dw #presets_rbo_cleanup_single_maridia_reverse_terminator
    dw #presets_rbo_cleanup_single_maridia_climb_supers_moonfall
    dw #presets_rbo_cleanup_single_maridia_pit_room_shortcharge
    dw #presets_rbo_cleanup_single_maridia_retro_brinstar_power_bombs
    dw #presets_rbo_cleanup_single_maridia_blockbuster
    dw #$0000
    %cm_header("CLEANUP (SINGLE MARIDIA)")

presets_submenu_rbo_cleanup_double_maridia:
    dw #presets_rbo_cleanup_double_maridia_red_tower_up
    dw #presets_rbo_cleanup_double_maridia_hellway
    dw #presets_rbo_cleanup_double_maridia_alpha_power_bombs
    dw #presets_rbo_cleanup_double_maridia_beta_power_bombs
    dw #presets_rbo_cleanup_double_maridia_crateria_kihunters
    dw #presets_rbo_cleanup_double_maridia_crateria_power_bombs
    dw #presets_rbo_cleanup_double_maridia_gauntlet_wraparound_shot
    dw #presets_rbo_cleanup_double_maridia_gauntlet_etank
    dw #presets_rbo_cleanup_double_maridia_parlor_down
    dw #presets_rbo_cleanup_double_maridia_climb_supers
    dw #presets_rbo_cleanup_double_maridia_terminator_revisit
    dw #presets_rbo_cleanup_double_maridia_green_brinstar_revisit
    dw #presets_rbo_cleanup_double_maridia_leaving_etecoons
    dw #presets_rbo_cleanup_double_maridia_spore_spawn_supers
    dw #presets_rbo_cleanup_double_maridia_spore_spawn_supers_escape
    dw #presets_rbo_cleanup_double_maridia_wave_gate_etank
    dw #presets_rbo_cleanup_double_maridia_waterway_etank
    dw #presets_rbo_cleanup_double_maridia_leaving_waterway
    dw #presets_rbo_cleanup_double_maridia_blue_brinstar_power_bombs
    dw #presets_rbo_cleanup_double_maridia_blockbuster
    dw #$0000
    %cm_header("CLEANUP (DOUBLE MARIDIA)")

presets_submenu_rbo_icecroc_single_maridia:
    dw #presets_rbo_icecroc_single_maridia_ice_entry
    dw #presets_rbo_icecroc_single_maridia_leaving_ice
    dw #presets_rbo_icecroc_single_maridia_ice_escape
    dw #presets_rbo_icecroc_single_maridia_croc_shaft_moonfall
    dw #presets_rbo_icecroc_single_maridia_croc_speedway
    dw #presets_rbo_icecroc_single_maridia_croc
    dw #presets_rbo_icecroc_single_maridia_grapple_shaft_down
    dw #presets_rbo_icecroc_single_maridia_grapple_escape
    dw #presets_rbo_icecroc_single_maridia_grapple_shaft_up
    dw #presets_rbo_icecroc_single_maridia_croc_revisit
    dw #$0000
    %cm_header("ICE-CROC (SINGLE MARIDIA)")

presets_submenu_rbo_maridia_double_maridia:
    dw #presets_rbo_maridia_double_maridia_maridia_entry
    dw #presets_rbo_maridia_double_maridia_mount_everest
    dw #presets_rbo_maridia_double_maridia_leaving_crab_supers
    dw #presets_rbo_maridia_double_maridia_mama_turtle
    dw #presets_rbo_maridia_double_maridia_leaving_mama_turtle
    dw #presets_rbo_maridia_double_maridia_maridia_exit
    dw #$0000
    %cm_header("MARIDIA (DOUBLE MARIDIA)")

presets_submenu_rbo_lower_norfair_segment:
    dw #presets_rbo_lower_norfair_segment_ln_20_supers_7_1_ridley
    dw #presets_rbo_lower_norfair_segment_ln_20_supers_8_1_ridley
    dw #$FFFF
    dw #presets_rbo_lower_norfair_segment_ln_25_supers_7_1_ridley
    dw #presets_rbo_lower_norfair_segment_ln_25_supers_8_1_ridley
    dw #presets_rbo_lower_norfair_segment_ln_25_supers_9_1_ridley
    dw #presets_rbo_lower_norfair_segment_ln_25_supers_9_2_ridley
    dw #$FFFF
    dw #presets_rbo_lower_norfair_segment_ln_30_supers_7_1_ridley
    dw #presets_rbo_lower_norfair_segment_ln_30_supers_8_1_ridley
    dw #presets_rbo_lower_norfair_segment_ln_30_supers_9_1_ridley
    dw #presets_rbo_lower_norfair_segment_ln_30_supers_10_1_ridley
    dw #presets_rbo_lower_norfair_segment_ln_30_supers_11_1_ridley
    dw #$FFFF
    dw #presets_rbo_lower_norfair_segment_ln_35_supers_8_1_ridley
    dw #presets_rbo_lower_norfair_segment_ln_35_supers_9_1_ridley
    dw #presets_rbo_lower_norfair_segment_ln_35_supers_10_1_ridley
    dw #presets_rbo_lower_norfair_segment_ln_35_supers_11_1_ridley
    dw #presets_rbo_lower_norfair_segment_ln_35_supers_11_2_ridley
    dw #$0000
    %cm_header("LOWER NORFAIR SEGMENT")

presets_submenu_rbo_ln_entry_single_maridia:
    dw #presets_rbo_ln_entry_single_maridia_lava_dive
    dw #presets_rbo_ln_entry_single_maridia_ln_main_hall
    dw #presets_rbo_ln_entry_single_maridia_green_gate_glitch
    dw #presets_rbo_ln_entry_single_maridia_golden_torizo
    dw #presets_rbo_ln_entry_single_maridia_energy_refill_escape
    dw #presets_rbo_ln_entry_single_maridia_fast_pillars
    dw #presets_rbo_ln_entry_single_maridia_worst_room_in_the_game
    dw #presets_rbo_ln_entry_single_maridia_amphitheatre
    dw #presets_rbo_ln_entry_single_maridia_firefleas_entry
    dw #presets_rbo_ln_entry_single_maridia_kihunter_stairs_down
    dw #presets_rbo_ln_entry_single_maridia_ninja_pirates
    dw #presets_rbo_ln_entry_single_maridia_preridley
    dw #$0000
    %cm_header("LN ENTRY (SINGLE MARIDIA)")

presets_submenu_rbo_ln_entry_double_maridia:
    dw #presets_rbo_ln_entry_double_maridia_lava_dive
    dw #presets_rbo_ln_entry_double_maridia_ln_main_hall
    dw #presets_rbo_ln_entry_double_maridia_green_gate_glitch
    dw #presets_rbo_ln_entry_double_maridia_golden_torizo
    dw #presets_rbo_ln_entry_double_maridia_energy_refill_escape
    dw #presets_rbo_ln_entry_double_maridia_fast_pillars
    dw #presets_rbo_ln_entry_double_maridia_worst_room_in_the_game
    dw #presets_rbo_ln_entry_double_maridia_amphitheatre
    dw #presets_rbo_ln_entry_double_maridia_firefleas_entry
    dw #presets_rbo_ln_entry_double_maridia_kihunter_stairs_down
    dw #presets_rbo_ln_entry_double_maridia_ninja_pirates
    dw #presets_rbo_ln_entry_double_maridia_preridley
    dw #$0000
    %cm_header("LN ENTRY (DOUBLE MARIDIA)")

presets_submenu_rbo_ridley:
    dw #presets_rbo_ridley_ridley_20_supers_7_1
    dw #presets_rbo_ridley_ridley_20_supers_8_1
    dw #$FFFF
    dw #presets_rbo_ridley_ridley_25_supers_7_1
    dw #presets_rbo_ridley_ridley_25_supers_8_1
    dw #presets_rbo_ridley_ridley_25_supers_9_1
    dw #presets_rbo_ridley_ridley_25_supers_9_2
    dw #$FFFF
    dw #presets_rbo_ridley_ridley_30_supers_7_1
    dw #presets_rbo_ridley_ridley_30_supers_8_1
    dw #presets_rbo_ridley_ridley_30_supers_9_1
    dw #presets_rbo_ridley_ridley_30_supers_10_1
    dw #presets_rbo_ridley_ridley_30_supers_11_1
    dw #$FFFF
    dw #presets_rbo_ridley_ridley_35_supers_8_1
    dw #presets_rbo_ridley_ridley_35_supers_9_1
    dw #presets_rbo_ridley_ridley_35_supers_10_1
    dw #presets_rbo_ridley_ridley_35_supers_11_1
    dw #presets_rbo_ridley_ridley_35_supers_11_2
    dw #$0000
    %cm_header("RIDLEY")

presets_submenu_rbo_ln_escape_single_maridia:
    dw #presets_rbo_ln_escape_single_maridia_ridley_etank
    dw #presets_rbo_ln_escape_single_maridia_postridley
    dw #presets_rbo_ln_escape_single_maridia_firefleas
    dw #presets_rbo_ln_escape_single_maridia_firefleas_exit
    dw #presets_rbo_ln_escape_single_maridia_3_musketeers
    dw #presets_rbo_ln_escape_single_maridia_single_chamber
    dw #presets_rbo_ln_escape_single_maridia_croc_gate_farm
    dw #presets_rbo_ln_escape_single_maridia_business_center
    dw #presets_rbo_ln_escape_single_maridia_maridia_entry
    dw #$FFFF
    dw #presets_rbo_ln_escape_single_maridia_3_musketeers_spikesuit
    dw #presets_rbo_ln_escape_single_maridia_single_chamber_spikesuit
    dw #presets_rbo_ln_escape_single_maridia_croc_gate_farm_spikesuit
    dw #presets_rbo_ln_escape_single_maridia_business_center_spikesuit
    dw #presets_rbo_ln_escape_single_maridia_maridia_entry_spikesuit
    dw #$0000
    %cm_header("LN ESCAPE (SINGLE MARIDIA)")

presets_submenu_rbo_ln_escape_double_maridia:
    dw #presets_rbo_ln_escape_double_maridia_ridley_etank
    dw #presets_rbo_ln_escape_double_maridia_postridley
    dw #presets_rbo_ln_escape_double_maridia_firefleas
    dw #presets_rbo_ln_escape_double_maridia_firefleas_exit
    dw #presets_rbo_ln_escape_double_maridia_3_musketeers
    dw #presets_rbo_ln_escape_double_maridia_single_chamber
    dw #presets_rbo_ln_escape_double_maridia_croc_gate_farm
    dw #presets_rbo_ln_escape_double_maridia_business_center
    dw #presets_rbo_ln_escape_double_maridia_maridia_entry
    dw #$FFFF
    dw #presets_rbo_ln_escape_double_maridia_3_musketeers_spikesuit
    dw #presets_rbo_ln_escape_double_maridia_single_chamber_spikesuit
    dw #presets_rbo_ln_escape_double_maridia_croc_gate_farm_spikesuit
    dw #presets_rbo_ln_escape_double_maridia_business_center_spikesuit
    dw #presets_rbo_ln_escape_double_maridia_maridia_entry_spikesuit
    dw #$0000
    %cm_header("LN ESCAPE (DOUBLE MARIDIA)")

presets_submenu_rbo_maridia:
    dw #presets_rbo_maridia_mount_everest_spikesuit
    dw #presets_rbo_maridia_aqueduct_spikesuit
    dw #presets_rbo_maridia_botwoon_clip_spikesuit
    dw #presets_rbo_maridia_botwoon_spikesuit
    dw #presets_rbo_maridia_postbotwoon_spikesuit
    dw #$FFFF
    dw #presets_rbo_maridia_mount_everest
    dw #presets_rbo_maridia_aqueduct
    dw #presets_rbo_maridia_botwoon_clip
    dw #presets_rbo_maridia_botwoon
    dw #presets_rbo_maridia_postbotwoon
    dw #presets_rbo_maridia_colosseum
    dw #presets_rbo_maridia_draygon
    dw #presets_rbo_maridia_draygon_escape
    dw #presets_rbo_maridia_reverse_colosseum
    dw #presets_rbo_maridia_cac_alley
    dw #presets_rbo_maridia_plasma_spark_room
    dw #presets_rbo_maridia_kassiuz_room
    dw #presets_rbo_maridia_plasma_screw_attack_strat
    dw #presets_rbo_maridia_leaving_maridia
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_rbo_wrecked_ship:
    dw #presets_rbo_wrecked_ship_forgotten_highway
    dw #presets_rbo_wrecked_ship_east_ocean
    dw #presets_rbo_wrecked_ship_wrecked_ship_backdoor_entry
    dw #presets_rbo_wrecked_ship_ws_shaft_down
    dw #presets_rbo_wrecked_ship_phantoon
    dw #presets_rbo_wrecked_ship_ws_shaft_up
    dw #presets_rbo_wrecked_ship_west_ocean
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_rbo_kraidg4:
    dw #presets_rbo_kraidg4_kihunters_room_down
    dw #presets_rbo_kraidg4_red_brinstar_elevator_down
    dw #presets_rbo_kraidg4_red_tower_screwfall
    dw #presets_rbo_kraidg4_kraid_entry
    dw #presets_rbo_kraidg4_kraid_hallway
    dw #presets_rbo_kraidg4_kraid
    dw #presets_rbo_kraidg4_kraid_hallway_exit
    dw #presets_rbo_kraidg4_kraid_escape
    dw #presets_rbo_kraidg4_red_tower_up
    dw #presets_rbo_kraidg4_kihunters_room_up
    dw #presets_rbo_kraidg4_ship_room
    dw #presets_rbo_kraidg4_terminator
    dw #presets_rbo_kraidg4_g4
    dw #$0000
    %cm_header("KRAID-G4")

presets_submenu_rbo_tourian:
    dw #presets_rbo_tourian_metroids
    dw #presets_rbo_tourian_metroids_2
    dw #presets_rbo_tourian_metroids_3
    dw #presets_rbo_tourian_metroids_4
    dw #presets_rbo_tourian_baby_skip
    dw #presets_rbo_tourian_zeb_skip
    dw #presets_rbo_tourian_mother_brain_2
    dw #presets_rbo_tourian_zebes_escape
    dw #presets_rbo_tourian_escape_room_3
    dw #presets_rbo_tourian_escape_room_4
    dw #presets_rbo_tourian_escape_climb
    dw #presets_rbo_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")


; Bombs
presets_rbo_bombs_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_rbo_bombs_ceres_elevator)

presets_rbo_bombs_ceres_escape:
    %cm_preset("Ceres Escape", #preset_rbo_bombs_ceres_escape)

presets_rbo_bombs_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_rbo_bombs_ceres_last_3_rooms)

presets_rbo_bombs_ship:
    %cm_preset("Ship", #preset_rbo_bombs_ship)

presets_rbo_bombs_parlor_down:
    %cm_preset("Parlor Down", #preset_rbo_bombs_parlor_down)

presets_rbo_bombs_climb_down:
    %cm_preset("Climb Down", #preset_rbo_bombs_climb_down)

presets_rbo_bombs_pit_room:
    %cm_preset("Pit Room", #preset_rbo_bombs_pit_room)

presets_rbo_bombs_morph:
    %cm_preset("Morph", #preset_rbo_bombs_morph)

presets_rbo_bombs_construction_zone_down:
    %cm_preset("Construction Zone Down", #preset_rbo_bombs_construction_zone_down)

presets_rbo_bombs_construction_zone_up:
    %cm_preset("Construction Zone Up", #preset_rbo_bombs_construction_zone_up)

presets_rbo_bombs_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_rbo_bombs_pit_room_revisit)

presets_rbo_bombs_retro_etank:
    %cm_preset("Retro E-Tank", #preset_rbo_bombs_retro_etank)

presets_rbo_bombs_taco_tank_optional:
    %cm_preset("Taco Tank (Optional)", #preset_rbo_bombs_taco_tank_optional)

presets_rbo_bombs_pit_room_final_visit:
    %cm_preset("Pit Room Final Visit", #preset_rbo_bombs_pit_room_final_visit)

presets_rbo_bombs_climb_up:
    %cm_preset("Climb Up", #preset_rbo_bombs_climb_up)

presets_rbo_bombs_parlor_up:
    %cm_preset("Parlor Up", #preset_rbo_bombs_parlor_up)

presets_rbo_bombs_flyway:
    %cm_preset("Flyway", #preset_rbo_bombs_flyway)

presets_rbo_bombs_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_rbo_bombs_bomb_torizo)

presets_rbo_bombs_alcatraz:
    %cm_preset("Alcatraz", #preset_rbo_bombs_alcatraz)

presets_rbo_bombs_terminator:
    %cm_preset("Terminator", #preset_rbo_bombs_terminator)

presets_rbo_bombs_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_rbo_bombs_green_pirate_shaft)


; Brinstar
presets_rbo_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_rbo_brinstar_green_brinstar_elevator)

presets_rbo_brinstar_early_supers_reserve:
    %cm_preset("Early Supers Reserve", #preset_rbo_brinstar_early_supers_reserve)

presets_rbo_brinstar_early_supers_collection:
    %cm_preset("Early Supers Collection", #preset_rbo_brinstar_early_supers_collection)

presets_rbo_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_rbo_brinstar_dachora_room)

presets_rbo_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_rbo_brinstar_big_pink)

presets_rbo_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_rbo_brinstar_green_hill_zone)

presets_rbo_brinstar_noob_bridge:
    %cm_preset("Noob Bridge", #preset_rbo_brinstar_noob_bridge)

presets_rbo_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_rbo_brinstar_red_tower)

presets_rbo_brinstar_hellway_1x_maridia:
    %cm_preset("Hellway (1x Maridia)", #preset_rbo_brinstar_hellway_1x_maridia)

presets_rbo_brinstar_alpha_power_bombs_1m:
    %cm_preset("Alpha Power Bombs (1M)", #preset_rbo_brinstar_alpha_power_bombs_1m)

presets_rbo_brinstar_reverse_hellway_1m:
    %cm_preset("Reverse Hellway (1M)", #preset_rbo_brinstar_reverse_hellway_1m)

presets_rbo_brinstar_red_tower_moonfalls_1m:
    %cm_preset("Red Tower Moonfalls (1M)", #preset_rbo_brinstar_red_tower_moonfalls_1m)

presets_rbo_brinstar_spazer_1m:
    %cm_preset("Spazer (1M)", #preset_rbo_brinstar_spazer_1m)

presets_rbo_brinstar_norfair_elevator_1m:
    %cm_preset("Norfair Elevator (1M)", #preset_rbo_brinstar_norfair_elevator_1m)

presets_rbo_brinstar_spazer_2x_maridia:
    %cm_preset("Spazer (2x Maridia)", #preset_rbo_brinstar_spazer_2x_maridia)

presets_rbo_brinstar_norfair_elevator_2m:
    %cm_preset("Norfair Elevator (2M)", #preset_rbo_brinstar_norfair_elevator_2m)


; Shopping (Single Maridia)
presets_rbo_shopping_single_maridia_hijump_boots:
    %cm_preset("Hi-Jump Boots", #preset_rbo_shopping_single_maridia_hijump_boots)

presets_rbo_shopping_single_maridia_business_center_up:
    %cm_preset("Business Center Up", #preset_rbo_shopping_single_maridia_business_center_up)

presets_rbo_shopping_single_maridia_first_hell_run:
    %cm_preset("First Hell Run", #preset_rbo_shopping_single_maridia_first_hell_run)

presets_rbo_shopping_single_maridia_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_rbo_shopping_single_maridia_bubble_mountain)

presets_rbo_shopping_single_maridia_bat_cave_farm_1:
    %cm_preset("Bat Cave (Farm 1)", #preset_rbo_shopping_single_maridia_bat_cave_farm_1)

presets_rbo_shopping_single_maridia_leaving_speed_farm_2:
    %cm_preset("Leaving Speed (Farm 2)", #preset_rbo_shopping_single_maridia_leaving_speed_farm_2)

presets_rbo_shopping_single_maridia_wave_beam_entry:
    %cm_preset("Wave Beam Entry", #preset_rbo_shopping_single_maridia_wave_beam_entry)

presets_rbo_shopping_single_maridia_wave_escape:
    %cm_preset("Wave Escape", #preset_rbo_shopping_single_maridia_wave_escape)

presets_rbo_shopping_single_maridia_heading_to_business_center:
    %cm_preset("Heading To Business Center", #preset_rbo_shopping_single_maridia_heading_to_business_center)

presets_rbo_shopping_single_maridia_leaving_norfair:
    %cm_preset("Leaving Norfair", #preset_rbo_shopping_single_maridia_leaving_norfair)


; Shopping (Double Maridia)
presets_rbo_shopping_double_maridia_hijump_boots:
    %cm_preset("Hi-Jump Boots", #preset_rbo_shopping_double_maridia_hijump_boots)

presets_rbo_shopping_double_maridia_business_center_up:
    %cm_preset("Business Center Up", #preset_rbo_shopping_double_maridia_business_center_up)

presets_rbo_shopping_double_maridia_first_hell_run:
    %cm_preset("First Hell Run", #preset_rbo_shopping_double_maridia_first_hell_run)

presets_rbo_shopping_double_maridia_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_rbo_shopping_double_maridia_bubble_mountain)

presets_rbo_shopping_double_maridia_bat_cave_farm_1:
    %cm_preset("Bat Cave (Farm 1)", #preset_rbo_shopping_double_maridia_bat_cave_farm_1)

presets_rbo_shopping_double_maridia_leaving_speed_farm_2:
    %cm_preset("Leaving Speed (Farm 2)", #preset_rbo_shopping_double_maridia_leaving_speed_farm_2)

presets_rbo_shopping_double_maridia_wave_beam_entry:
    %cm_preset("Wave Beam Entry", #preset_rbo_shopping_double_maridia_wave_beam_entry)

presets_rbo_shopping_double_maridia_wave_escape:
    %cm_preset("Wave Escape", #preset_rbo_shopping_double_maridia_wave_escape)

presets_rbo_shopping_double_maridia_heading_to_croc:
    %cm_preset("Heading To Croc", #preset_rbo_shopping_double_maridia_heading_to_croc)

presets_rbo_shopping_double_maridia_nutella_refill:
    %cm_preset("Nutella Refill", #preset_rbo_shopping_double_maridia_nutella_refill)

presets_rbo_shopping_double_maridia_croc_power_bombs:
    %cm_preset("Croc Power Bombs", #preset_rbo_shopping_double_maridia_croc_power_bombs)

presets_rbo_shopping_double_maridia_leaving_grapple:
    %cm_preset("Leaving Grapple", #preset_rbo_shopping_double_maridia_leaving_grapple)

presets_rbo_shopping_double_maridia_leaving_croc:
    %cm_preset("Leaving Croc", #preset_rbo_shopping_double_maridia_leaving_croc)

presets_rbo_shopping_double_maridia_ice_entry:
    %cm_preset("Ice Entry", #preset_rbo_shopping_double_maridia_ice_entry)

presets_rbo_shopping_double_maridia_leaving_ice:
    %cm_preset("Leaving Ice", #preset_rbo_shopping_double_maridia_leaving_ice)

presets_rbo_shopping_double_maridia_ice_escape:
    %cm_preset("Ice Escape", #preset_rbo_shopping_double_maridia_ice_escape)

presets_rbo_shopping_double_maridia_leaving_norfair:
    %cm_preset("Leaving Norfair", #preset_rbo_shopping_double_maridia_leaving_norfair)


; Cleanup (Single Maridia)
presets_rbo_cleanup_single_maridia_red_tower_up:
    %cm_preset("Red Tower Up", #preset_rbo_cleanup_single_maridia_red_tower_up)

presets_rbo_cleanup_single_maridia_green_brinstar_backdoor:
    %cm_preset("Green Brinstar Backdoor", #preset_rbo_cleanup_single_maridia_green_brinstar_backdoor)

presets_rbo_cleanup_single_maridia_big_pink:
    %cm_preset("Big Pink", #preset_rbo_cleanup_single_maridia_big_pink)

presets_rbo_cleanup_single_maridia_spore_spawn_supers:
    %cm_preset("Spore Spawn Supers", #preset_rbo_cleanup_single_maridia_spore_spawn_supers)

presets_rbo_cleanup_single_maridia_spore_spawn_supers_escape:
    %cm_preset("Spore Spawn Supers Escape", #preset_rbo_cleanup_single_maridia_spore_spawn_supers_escape)

presets_rbo_cleanup_single_maridia_wave_gate_etank:
    %cm_preset("Wave Gate E-Tank", #preset_rbo_cleanup_single_maridia_wave_gate_etank)

presets_rbo_cleanup_single_maridia_dachora_room:
    %cm_preset("Dachora Room", #preset_rbo_cleanup_single_maridia_dachora_room)

presets_rbo_cleanup_single_maridia_green_shaft_down:
    %cm_preset("Green Shaft Down", #preset_rbo_cleanup_single_maridia_green_shaft_down)

presets_rbo_cleanup_single_maridia_etecoon_supers:
    %cm_preset("Etecoon Supers", #preset_rbo_cleanup_single_maridia_etecoon_supers)

presets_rbo_cleanup_single_maridia_etecoon_pbs_optional:
    %cm_preset("Etecoon PBs (Optional)", #preset_rbo_cleanup_single_maridia_etecoon_pbs_optional)

presets_rbo_cleanup_single_maridia_green_shaft_up:
    %cm_preset("Green Shaft Up", #preset_rbo_cleanup_single_maridia_green_shaft_up)

presets_rbo_cleanup_single_maridia_reverse_terminator:
    %cm_preset("Reverse Terminator", #preset_rbo_cleanup_single_maridia_reverse_terminator)

presets_rbo_cleanup_single_maridia_climb_supers_moonfall:
    %cm_preset("Climb Supers Moonfall", #preset_rbo_cleanup_single_maridia_climb_supers_moonfall)

presets_rbo_cleanup_single_maridia_pit_room_shortcharge:
    %cm_preset("Pit Room Shortcharge", #preset_rbo_cleanup_single_maridia_pit_room_shortcharge)

presets_rbo_cleanup_single_maridia_retro_brinstar_power_bombs:
    %cm_preset("Retro Brinstar Power Bombs", #preset_rbo_cleanup_single_maridia_retro_brinstar_power_bombs)

presets_rbo_cleanup_single_maridia_blockbuster:
    %cm_preset("Blockbuster", #preset_rbo_cleanup_single_maridia_blockbuster)


; Cleanup (Double Maridia)
presets_rbo_cleanup_double_maridia_red_tower_up:
    %cm_preset("Red Tower Up", #preset_rbo_cleanup_double_maridia_red_tower_up)

presets_rbo_cleanup_double_maridia_hellway:
    %cm_preset("Hellway", #preset_rbo_cleanup_double_maridia_hellway)

presets_rbo_cleanup_double_maridia_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_rbo_cleanup_double_maridia_alpha_power_bombs)

presets_rbo_cleanup_double_maridia_beta_power_bombs:
    %cm_preset("Beta Power Bombs", #preset_rbo_cleanup_double_maridia_beta_power_bombs)

presets_rbo_cleanup_double_maridia_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_rbo_cleanup_double_maridia_crateria_kihunters)

presets_rbo_cleanup_double_maridia_crateria_power_bombs:
    %cm_preset("Crateria Power Bombs", #preset_rbo_cleanup_double_maridia_crateria_power_bombs)

presets_rbo_cleanup_double_maridia_gauntlet_wraparound_shot:
    %cm_preset("Gauntlet Wraparound Shot", #preset_rbo_cleanup_double_maridia_gauntlet_wraparound_shot)

presets_rbo_cleanup_double_maridia_gauntlet_etank:
    %cm_preset("Gauntlet E-Tank", #preset_rbo_cleanup_double_maridia_gauntlet_etank)

presets_rbo_cleanup_double_maridia_parlor_down:
    %cm_preset("Parlor Down", #preset_rbo_cleanup_double_maridia_parlor_down)

presets_rbo_cleanup_double_maridia_climb_supers:
    %cm_preset("Climb Supers", #preset_rbo_cleanup_double_maridia_climb_supers)

presets_rbo_cleanup_double_maridia_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_rbo_cleanup_double_maridia_terminator_revisit)

presets_rbo_cleanup_double_maridia_green_brinstar_revisit:
    %cm_preset("Green Brinstar Revisit", #preset_rbo_cleanup_double_maridia_green_brinstar_revisit)

presets_rbo_cleanup_double_maridia_leaving_etecoons:
    %cm_preset("Leaving Etecoons", #preset_rbo_cleanup_double_maridia_leaving_etecoons)

presets_rbo_cleanup_double_maridia_spore_spawn_supers:
    %cm_preset("Spore Spawn Supers", #preset_rbo_cleanup_double_maridia_spore_spawn_supers)

presets_rbo_cleanup_double_maridia_spore_spawn_supers_escape:
    %cm_preset("Spore Spawn Supers Escape", #preset_rbo_cleanup_double_maridia_spore_spawn_supers_escape)

presets_rbo_cleanup_double_maridia_wave_gate_etank:
    %cm_preset("Wave Gate E-Tank", #preset_rbo_cleanup_double_maridia_wave_gate_etank)

presets_rbo_cleanup_double_maridia_waterway_etank:
    %cm_preset("Waterway E-Tank", #preset_rbo_cleanup_double_maridia_waterway_etank)

presets_rbo_cleanup_double_maridia_leaving_waterway:
    %cm_preset("Leaving Waterway", #preset_rbo_cleanup_double_maridia_leaving_waterway)

presets_rbo_cleanup_double_maridia_blue_brinstar_power_bombs:
    %cm_preset("Blue Brinstar Power Bombs", #preset_rbo_cleanup_double_maridia_blue_brinstar_power_bombs)

presets_rbo_cleanup_double_maridia_blockbuster:
    %cm_preset("Blockbuster", #preset_rbo_cleanup_double_maridia_blockbuster)


; Ice-Croc (Single Maridia)
presets_rbo_icecroc_single_maridia_ice_entry:
    %cm_preset("Ice Entry", #preset_rbo_icecroc_single_maridia_ice_entry)

presets_rbo_icecroc_single_maridia_leaving_ice:
    %cm_preset("Leaving Ice", #preset_rbo_icecroc_single_maridia_leaving_ice)

presets_rbo_icecroc_single_maridia_ice_escape:
    %cm_preset("Ice Escape", #preset_rbo_icecroc_single_maridia_ice_escape)

presets_rbo_icecroc_single_maridia_croc_shaft_moonfall:
    %cm_preset("Croc Shaft Moonfall", #preset_rbo_icecroc_single_maridia_croc_shaft_moonfall)

presets_rbo_icecroc_single_maridia_croc_speedway:
    %cm_preset("Croc Speedway", #preset_rbo_icecroc_single_maridia_croc_speedway)

presets_rbo_icecroc_single_maridia_croc:
    %cm_preset("Croc", #preset_rbo_icecroc_single_maridia_croc)

presets_rbo_icecroc_single_maridia_grapple_shaft_down:
    %cm_preset("Grapple Shaft Down", #preset_rbo_icecroc_single_maridia_grapple_shaft_down)

presets_rbo_icecroc_single_maridia_grapple_escape:
    %cm_preset("Grapple Escape", #preset_rbo_icecroc_single_maridia_grapple_escape)

presets_rbo_icecroc_single_maridia_grapple_shaft_up:
    %cm_preset("Grapple Shaft Up", #preset_rbo_icecroc_single_maridia_grapple_shaft_up)

presets_rbo_icecroc_single_maridia_croc_revisit:
    %cm_preset("Croc Revisit", #preset_rbo_icecroc_single_maridia_croc_revisit)


; Maridia (Double Maridia)
presets_rbo_maridia_double_maridia_maridia_entry:
    %cm_preset("Maridia Entry", #preset_rbo_maridia_double_maridia_maridia_entry)

presets_rbo_maridia_double_maridia_mount_everest:
    %cm_preset("Mount Everest", #preset_rbo_maridia_double_maridia_mount_everest)

presets_rbo_maridia_double_maridia_leaving_crab_supers:
    %cm_preset("Leaving Crab Supers", #preset_rbo_maridia_double_maridia_leaving_crab_supers)

presets_rbo_maridia_double_maridia_mama_turtle:
    %cm_preset("Mama Turtle", #preset_rbo_maridia_double_maridia_mama_turtle)

presets_rbo_maridia_double_maridia_leaving_mama_turtle:
    %cm_preset("Leaving Mama Turtle", #preset_rbo_maridia_double_maridia_leaving_mama_turtle)

presets_rbo_maridia_double_maridia_maridia_exit:
    %cm_preset("Maridia Exit", #preset_rbo_maridia_double_maridia_maridia_exit)


; Lower Norfair Segment
presets_rbo_lower_norfair_segment_ln_20_supers_7_1_ridley:
    %cm_preset("LN (20 Supers  7+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_20_supers_7_1_ridley)

presets_rbo_lower_norfair_segment_ln_20_supers_8_1_ridley:
    %cm_preset("LN (20 Supers  8+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_20_supers_8_1_ridley)

presets_rbo_lower_norfair_segment_ln_25_supers_7_1_ridley:
    %cm_preset("LN (25 Supers  7+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_25_supers_7_1_ridley)

presets_rbo_lower_norfair_segment_ln_25_supers_8_1_ridley:
    %cm_preset("LN (25 Supers  8+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_25_supers_8_1_ridley)

presets_rbo_lower_norfair_segment_ln_25_supers_9_1_ridley:
    %cm_preset("LN (25 Supers  9+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_25_supers_9_1_ridley)

presets_rbo_lower_norfair_segment_ln_25_supers_9_2_ridley:
    %cm_preset("LN (25 Supers  9+2 Ridley)", #preset_rbo_lower_norfair_segment_ln_25_supers_9_2_ridley)

presets_rbo_lower_norfair_segment_ln_30_supers_7_1_ridley:
    %cm_preset("LN (30 Supers  7+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_30_supers_7_1_ridley)

presets_rbo_lower_norfair_segment_ln_30_supers_8_1_ridley:
    %cm_preset("LN (30 Supers  8+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_30_supers_8_1_ridley)

presets_rbo_lower_norfair_segment_ln_30_supers_9_1_ridley:
    %cm_preset("LN (30 Supers  9+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_30_supers_9_1_ridley)

presets_rbo_lower_norfair_segment_ln_30_supers_10_1_ridley:
    %cm_preset("LN (30 Supers 10+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_30_supers_10_1_ridley)

presets_rbo_lower_norfair_segment_ln_30_supers_11_1_ridley:
    %cm_preset("LN (30 Supers 11+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_30_supers_11_1_ridley)

presets_rbo_lower_norfair_segment_ln_35_supers_8_1_ridley:
    %cm_preset("LN (35 Supers  8+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_35_supers_8_1_ridley)

presets_rbo_lower_norfair_segment_ln_35_supers_9_1_ridley:
    %cm_preset("LN (35 Supers  9+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_35_supers_9_1_ridley)

presets_rbo_lower_norfair_segment_ln_35_supers_10_1_ridley:
    %cm_preset("LN (35 Supers 10+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_35_supers_10_1_ridley)

presets_rbo_lower_norfair_segment_ln_35_supers_11_1_ridley:
    %cm_preset("LN (35 Supers 11+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_35_supers_11_1_ridley)

presets_rbo_lower_norfair_segment_ln_35_supers_11_2_ridley:
    %cm_preset("LN (35 Supers 11+2 Ridley)", #preset_rbo_lower_norfair_segment_ln_35_supers_11_2_ridley)


; LN Entry (Single Maridia)
presets_rbo_ln_entry_single_maridia_lava_dive:
    %cm_preset("Lava Dive", #preset_rbo_ln_entry_single_maridia_lava_dive)

presets_rbo_ln_entry_single_maridia_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_rbo_ln_entry_single_maridia_ln_main_hall)

presets_rbo_ln_entry_single_maridia_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_rbo_ln_entry_single_maridia_green_gate_glitch)

presets_rbo_ln_entry_single_maridia_golden_torizo:
    %cm_preset("Golden Torizo", #preset_rbo_ln_entry_single_maridia_golden_torizo)

presets_rbo_ln_entry_single_maridia_energy_refill_escape:
    %cm_preset("Energy Refill Escape", #preset_rbo_ln_entry_single_maridia_energy_refill_escape)

presets_rbo_ln_entry_single_maridia_fast_pillars:
    %cm_preset("Fast Pillars", #preset_rbo_ln_entry_single_maridia_fast_pillars)

presets_rbo_ln_entry_single_maridia_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_rbo_ln_entry_single_maridia_worst_room_in_the_game)

presets_rbo_ln_entry_single_maridia_amphitheatre:
    %cm_preset("Amphitheatre", #preset_rbo_ln_entry_single_maridia_amphitheatre)

presets_rbo_ln_entry_single_maridia_firefleas_entry:
    %cm_preset("Firefleas Entry", #preset_rbo_ln_entry_single_maridia_firefleas_entry)

presets_rbo_ln_entry_single_maridia_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_rbo_ln_entry_single_maridia_kihunter_stairs_down)

presets_rbo_ln_entry_single_maridia_ninja_pirates:
    %cm_preset("Ninja Pirates", #preset_rbo_ln_entry_single_maridia_ninja_pirates)

presets_rbo_ln_entry_single_maridia_preridley:
    %cm_preset("Pre-Ridley", #preset_rbo_ln_entry_single_maridia_preridley)


; LN Entry (Double Maridia)
presets_rbo_ln_entry_double_maridia_lava_dive:
    %cm_preset("Lava Dive", #preset_rbo_ln_entry_double_maridia_lava_dive)

presets_rbo_ln_entry_double_maridia_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_rbo_ln_entry_double_maridia_ln_main_hall)

presets_rbo_ln_entry_double_maridia_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_rbo_ln_entry_double_maridia_green_gate_glitch)

presets_rbo_ln_entry_double_maridia_golden_torizo:
    %cm_preset("Golden Torizo", #preset_rbo_ln_entry_double_maridia_golden_torizo)

presets_rbo_ln_entry_double_maridia_energy_refill_escape:
    %cm_preset("Energy Refill Escape", #preset_rbo_ln_entry_double_maridia_energy_refill_escape)

presets_rbo_ln_entry_double_maridia_fast_pillars:
    %cm_preset("Fast Pillars", #preset_rbo_ln_entry_double_maridia_fast_pillars)

presets_rbo_ln_entry_double_maridia_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_rbo_ln_entry_double_maridia_worst_room_in_the_game)

presets_rbo_ln_entry_double_maridia_amphitheatre:
    %cm_preset("Amphitheatre", #preset_rbo_ln_entry_double_maridia_amphitheatre)

presets_rbo_ln_entry_double_maridia_firefleas_entry:
    %cm_preset("Firefleas Entry", #preset_rbo_ln_entry_double_maridia_firefleas_entry)

presets_rbo_ln_entry_double_maridia_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_rbo_ln_entry_double_maridia_kihunter_stairs_down)

presets_rbo_ln_entry_double_maridia_ninja_pirates:
    %cm_preset("Ninja Pirates", #preset_rbo_ln_entry_double_maridia_ninja_pirates)

presets_rbo_ln_entry_double_maridia_preridley:
    %cm_preset("Pre-Ridley", #preset_rbo_ln_entry_double_maridia_preridley)


; Ridley
presets_rbo_ridley_ridley_20_supers_7_1:
    %cm_preset("Ridley (20 Supers  7+1)", #preset_rbo_ridley_ridley_20_supers_7_1)

presets_rbo_ridley_ridley_20_supers_8_1:
    %cm_preset("Ridley (20 Supers  8+1)", #preset_rbo_ridley_ridley_20_supers_8_1)

presets_rbo_ridley_ridley_25_supers_7_1:
    %cm_preset("Ridley (25 Supers  7+1)", #preset_rbo_ridley_ridley_25_supers_7_1)

presets_rbo_ridley_ridley_25_supers_8_1:
    %cm_preset("Ridley (25 Supers  8+1)", #preset_rbo_ridley_ridley_25_supers_8_1)

presets_rbo_ridley_ridley_25_supers_9_1:
    %cm_preset("Ridley (25 Supers  9+1)", #preset_rbo_ridley_ridley_25_supers_9_1)

presets_rbo_ridley_ridley_25_supers_9_2:
    %cm_preset("Ridley (25 Supers  9+2)", #preset_rbo_ridley_ridley_25_supers_9_2)

presets_rbo_ridley_ridley_30_supers_7_1:
    %cm_preset("Ridley (30 Supers  7+1)", #preset_rbo_ridley_ridley_30_supers_7_1)

presets_rbo_ridley_ridley_30_supers_8_1:
    %cm_preset("Ridley (30 Supers  8+1)", #preset_rbo_ridley_ridley_30_supers_8_1)

presets_rbo_ridley_ridley_30_supers_9_1:
    %cm_preset("Ridley (30 Supers  9+1)", #preset_rbo_ridley_ridley_30_supers_9_1)

presets_rbo_ridley_ridley_30_supers_10_1:
    %cm_preset("Ridley (30 Supers 10+1)", #preset_rbo_ridley_ridley_30_supers_10_1)

presets_rbo_ridley_ridley_30_supers_11_1:
    %cm_preset("Ridley (30 Supers 11+1)", #preset_rbo_ridley_ridley_30_supers_11_1)

presets_rbo_ridley_ridley_35_supers_8_1:
    %cm_preset("Ridley (35 Supers  8+1)", #preset_rbo_ridley_ridley_35_supers_8_1)

presets_rbo_ridley_ridley_35_supers_9_1:
    %cm_preset("Ridley (35 Supers  9+1)", #preset_rbo_ridley_ridley_35_supers_9_1)

presets_rbo_ridley_ridley_35_supers_10_1:
    %cm_preset("Ridley (35 Supers 10+1)", #preset_rbo_ridley_ridley_35_supers_10_1)

presets_rbo_ridley_ridley_35_supers_11_1:
    %cm_preset("Ridley (35 Supers 11+1)", #preset_rbo_ridley_ridley_35_supers_11_1)

presets_rbo_ridley_ridley_35_supers_11_2:
    %cm_preset("Ridley (35 Supers 11+2)", #preset_rbo_ridley_ridley_35_supers_11_2)


; LN Escape (Single Maridia)
presets_rbo_ln_escape_single_maridia_ridley_etank:
    %cm_preset("Ridley E-Tank", #preset_rbo_ln_escape_single_maridia_ridley_etank)

presets_rbo_ln_escape_single_maridia_postridley:
    %cm_preset("Post-Ridley", #preset_rbo_ln_escape_single_maridia_postridley)

presets_rbo_ln_escape_single_maridia_firefleas:
    %cm_preset("Firefleas", #preset_rbo_ln_escape_single_maridia_firefleas)

presets_rbo_ln_escape_single_maridia_firefleas_exit:
    %cm_preset("Firefleas Exit", #preset_rbo_ln_escape_single_maridia_firefleas_exit)

presets_rbo_ln_escape_single_maridia_3_musketeers:
    %cm_preset("3 Musketeers", #preset_rbo_ln_escape_single_maridia_3_musketeers)

presets_rbo_ln_escape_single_maridia_single_chamber:
    %cm_preset("Single Chamber", #preset_rbo_ln_escape_single_maridia_single_chamber)

presets_rbo_ln_escape_single_maridia_croc_gate_farm:
    %cm_preset("Croc Gate Farm", #preset_rbo_ln_escape_single_maridia_croc_gate_farm)

presets_rbo_ln_escape_single_maridia_business_center:
    %cm_preset("Business Center", #preset_rbo_ln_escape_single_maridia_business_center)

presets_rbo_ln_escape_single_maridia_maridia_entry:
    %cm_preset("Maridia Entry", #preset_rbo_ln_escape_single_maridia_maridia_entry)

presets_rbo_ln_escape_single_maridia_3_musketeers_spikesuit:
    %cm_preset("3 Musketeers (Spikesuit)", #preset_rbo_ln_escape_single_maridia_3_musketeers_spikesuit)

presets_rbo_ln_escape_single_maridia_single_chamber_spikesuit:
    %cm_preset("Single Chamber (Spikesuit)", #preset_rbo_ln_escape_single_maridia_single_chamber_spikesuit)

presets_rbo_ln_escape_single_maridia_croc_gate_farm_spikesuit:
    %cm_preset("Croc Gate Farm (Spikesuit)", #preset_rbo_ln_escape_single_maridia_croc_gate_farm_spikesuit)

presets_rbo_ln_escape_single_maridia_business_center_spikesuit:
    %cm_preset("Business Center (Spikesuit)", #preset_rbo_ln_escape_single_maridia_business_center_spikesuit)

presets_rbo_ln_escape_single_maridia_maridia_entry_spikesuit:
    %cm_preset("Maridia Entry (Spikesuit)", #preset_rbo_ln_escape_single_maridia_maridia_entry_spikesuit)


; LN Escape (Double Maridia)
presets_rbo_ln_escape_double_maridia_ridley_etank:
    %cm_preset("Ridley E-Tank", #preset_rbo_ln_escape_double_maridia_ridley_etank)

presets_rbo_ln_escape_double_maridia_postridley:
    %cm_preset("Post-Ridley", #preset_rbo_ln_escape_double_maridia_postridley)

presets_rbo_ln_escape_double_maridia_firefleas:
    %cm_preset("Firefleas", #preset_rbo_ln_escape_double_maridia_firefleas)

presets_rbo_ln_escape_double_maridia_firefleas_exit:
    %cm_preset("Firefleas Exit", #preset_rbo_ln_escape_double_maridia_firefleas_exit)

presets_rbo_ln_escape_double_maridia_3_musketeers:
    %cm_preset("3 Musketeers", #preset_rbo_ln_escape_double_maridia_3_musketeers)

presets_rbo_ln_escape_double_maridia_single_chamber:
    %cm_preset("Single Chamber", #preset_rbo_ln_escape_double_maridia_single_chamber)

presets_rbo_ln_escape_double_maridia_croc_gate_farm:
    %cm_preset("Croc Gate Farm", #preset_rbo_ln_escape_double_maridia_croc_gate_farm)

presets_rbo_ln_escape_double_maridia_business_center:
    %cm_preset("Business Center", #preset_rbo_ln_escape_double_maridia_business_center)

presets_rbo_ln_escape_double_maridia_maridia_entry:
    %cm_preset("Maridia Entry", #preset_rbo_ln_escape_double_maridia_maridia_entry)

presets_rbo_ln_escape_double_maridia_3_musketeers_spikesuit:
    %cm_preset("3 Musketeers (Spikesuit)", #preset_rbo_ln_escape_double_maridia_3_musketeers_spikesuit)

presets_rbo_ln_escape_double_maridia_single_chamber_spikesuit:
    %cm_preset("Single Chamber (Spikesuit)", #preset_rbo_ln_escape_double_maridia_single_chamber_spikesuit)

presets_rbo_ln_escape_double_maridia_croc_gate_farm_spikesuit:
    %cm_preset("Croc Gate Farm (Spikesuit)", #preset_rbo_ln_escape_double_maridia_croc_gate_farm_spikesuit)

presets_rbo_ln_escape_double_maridia_business_center_spikesuit:
    %cm_preset("Business Center (Spikesuit)", #preset_rbo_ln_escape_double_maridia_business_center_spikesuit)

presets_rbo_ln_escape_double_maridia_maridia_entry_spikesuit:
    %cm_preset("Maridia Entry (Spikesuit)", #preset_rbo_ln_escape_double_maridia_maridia_entry_spikesuit)


; Maridia
presets_rbo_maridia_mount_everest_spikesuit:
    %cm_preset("Mount Everest (Spikesuit)", #preset_rbo_maridia_mount_everest_spikesuit)

presets_rbo_maridia_aqueduct_spikesuit:
    %cm_preset("Aqueduct (Spikesuit)", #preset_rbo_maridia_aqueduct_spikesuit)

presets_rbo_maridia_botwoon_clip_spikesuit:
    %cm_preset("Botwoon Clip (Spikesuit)", #preset_rbo_maridia_botwoon_clip_spikesuit)

presets_rbo_maridia_botwoon_spikesuit:
    %cm_preset("Botwoon (Spikesuit)", #preset_rbo_maridia_botwoon_spikesuit)

presets_rbo_maridia_postbotwoon_spikesuit:
    %cm_preset("Post-Botwoon (Spikesuit)", #preset_rbo_maridia_postbotwoon_spikesuit)

presets_rbo_maridia_mount_everest:
    %cm_preset("Mount Everest", #preset_rbo_maridia_mount_everest)

presets_rbo_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_rbo_maridia_aqueduct)

presets_rbo_maridia_botwoon_clip:
    %cm_preset("Botwoon Clip", #preset_rbo_maridia_botwoon_clip)

presets_rbo_maridia_botwoon:
    %cm_preset("Botwoon", #preset_rbo_maridia_botwoon)

presets_rbo_maridia_postbotwoon:
    %cm_preset("Post-Botwoon", #preset_rbo_maridia_postbotwoon)

presets_rbo_maridia_colosseum:
    %cm_preset("Colosseum", #preset_rbo_maridia_colosseum)

presets_rbo_maridia_draygon:
    %cm_preset("Draygon", #preset_rbo_maridia_draygon)

presets_rbo_maridia_draygon_escape:
    %cm_preset("Draygon Escape", #preset_rbo_maridia_draygon_escape)

presets_rbo_maridia_reverse_colosseum:
    %cm_preset("Reverse Colosseum", #preset_rbo_maridia_reverse_colosseum)

presets_rbo_maridia_cac_alley:
    %cm_preset("Cac Alley", #preset_rbo_maridia_cac_alley)

presets_rbo_maridia_plasma_spark_room:
    %cm_preset("Plasma Spark Room", #preset_rbo_maridia_plasma_spark_room)

presets_rbo_maridia_kassiuz_room:
    %cm_preset("Kassiuz Room", #preset_rbo_maridia_kassiuz_room)

presets_rbo_maridia_plasma_screw_attack_strat:
    %cm_preset("Plasma (Screw Attack Strat)", #preset_rbo_maridia_plasma_screw_attack_strat)

presets_rbo_maridia_leaving_maridia:
    %cm_preset("Leaving Maridia", #preset_rbo_maridia_leaving_maridia)


; Wrecked Ship
presets_rbo_wrecked_ship_forgotten_highway:
    %cm_preset("Forgotten Highway", #preset_rbo_wrecked_ship_forgotten_highway)

presets_rbo_wrecked_ship_east_ocean:
    %cm_preset("East Ocean", #preset_rbo_wrecked_ship_east_ocean)

presets_rbo_wrecked_ship_wrecked_ship_backdoor_entry:
    %cm_preset("Wrecked Ship Backdoor Entry", #preset_rbo_wrecked_ship_wrecked_ship_backdoor_entry)

presets_rbo_wrecked_ship_ws_shaft_down:
    %cm_preset("WS Shaft Down", #preset_rbo_wrecked_ship_ws_shaft_down)

presets_rbo_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_rbo_wrecked_ship_phantoon)

presets_rbo_wrecked_ship_ws_shaft_up:
    %cm_preset("WS Shaft Up", #preset_rbo_wrecked_ship_ws_shaft_up)

presets_rbo_wrecked_ship_west_ocean:
    %cm_preset("West Ocean", #preset_rbo_wrecked_ship_west_ocean)


; Kraid-G4
presets_rbo_kraidg4_kihunters_room_down:
    %cm_preset("Kihunters Room Down", #preset_rbo_kraidg4_kihunters_room_down)

presets_rbo_kraidg4_red_brinstar_elevator_down:
    %cm_preset("Red Brinstar Elevator Down", #preset_rbo_kraidg4_red_brinstar_elevator_down)

presets_rbo_kraidg4_red_tower_screwfall:
    %cm_preset("Red Tower Screwfall", #preset_rbo_kraidg4_red_tower_screwfall)

presets_rbo_kraidg4_kraid_entry:
    %cm_preset("Kraid Entry", #preset_rbo_kraidg4_kraid_entry)

presets_rbo_kraidg4_kraid_hallway:
    %cm_preset("Kraid Hallway", #preset_rbo_kraidg4_kraid_hallway)

presets_rbo_kraidg4_kraid:
    %cm_preset("Kraid", #preset_rbo_kraidg4_kraid)

presets_rbo_kraidg4_kraid_hallway_exit:
    %cm_preset("Kraid Hallway Exit", #preset_rbo_kraidg4_kraid_hallway_exit)

presets_rbo_kraidg4_kraid_escape:
    %cm_preset("Kraid Escape", #preset_rbo_kraidg4_kraid_escape)

presets_rbo_kraidg4_red_tower_up:
    %cm_preset("Red Tower Up", #preset_rbo_kraidg4_red_tower_up)

presets_rbo_kraidg4_kihunters_room_up:
    %cm_preset("Kihunters Room Up", #preset_rbo_kraidg4_kihunters_room_up)

presets_rbo_kraidg4_ship_room:
    %cm_preset("Ship Room", #preset_rbo_kraidg4_ship_room)

presets_rbo_kraidg4_terminator:
    %cm_preset("Terminator", #preset_rbo_kraidg4_terminator)

presets_rbo_kraidg4_g4:
    %cm_preset("G4", #preset_rbo_kraidg4_g4)


; Tourian
presets_rbo_tourian_metroids:
    %cm_preset("Metroids", #preset_rbo_tourian_metroids)

presets_rbo_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_rbo_tourian_metroids_2)

presets_rbo_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_rbo_tourian_metroids_3)

presets_rbo_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_rbo_tourian_metroids_4)

presets_rbo_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_rbo_tourian_baby_skip)

presets_rbo_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_rbo_tourian_zeb_skip)

presets_rbo_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_rbo_tourian_mother_brain_2)

presets_rbo_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_rbo_tourian_zebes_escape)

presets_rbo_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_rbo_tourian_escape_room_3)

presets_rbo_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_rbo_tourian_escape_room_4)

presets_rbo_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_rbo_tourian_escape_climb)

presets_rbo_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_rbo_tourian_escape_parlor)

