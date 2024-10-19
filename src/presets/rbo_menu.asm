PresetsMenuRbo:
    dw #presets_goto_rbo_bombs
    dw #presets_goto_rbo_brinstar
    dw #presets_goto_rbo_shopping_2n1m
    dw #presets_goto_rbo_shopping_2n2m
    dw #presets_goto_rbo_cleanup_2n1m
    dw #presets_goto_rbo_cleanup_2n2m
    dw #presets_goto_rbo_ice_croc_2n1m
    dw #presets_goto_rbo_maridia_2n2m
    dw #presets_goto_rbo_lower_norfair_segment
    dw #presets_goto_rbo_ln_entry_2n1m
    dw #presets_goto_rbo_ln_entry_2n2m
    dw #presets_goto_rbo_ridley
    dw #presets_goto_rbo_ln_escape_2n1m
    dw #presets_goto_rbo_ln_escape_2n2m
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

presets_goto_rbo_shopping_2n1m:
    %cm_submenu("Shopping  (Single Maridia)", #presets_submenu_rbo_shopping_2n1m)

presets_goto_rbo_shopping_2n2m:
    %cm_submenu("Shopping  (Double Maridia)", #presets_submenu_rbo_shopping_2n2m)

presets_goto_rbo_cleanup_2n1m:
    %cm_submenu("Cleanup   (Single Maridia)", #presets_submenu_rbo_cleanup_2n1m)

presets_goto_rbo_cleanup_2n2m:
    %cm_submenu("Cleanup   (Double Maridia)", #presets_submenu_rbo_cleanup_2n2m)

presets_goto_rbo_ice_croc_2n1m:
    %cm_submenu("Ice-Croc  (Single Maridia)", #presets_submenu_rbo_ice_croc_2n1m)

presets_goto_rbo_maridia_2n2m:
    %cm_submenu("Maridia   (Double Maridia)", #presets_submenu_rbo_maridia_2n2m)

presets_goto_rbo_lower_norfair_segment:
    %cm_submenu("LN Segment", #presets_submenu_rbo_lower_norfair_segment)

presets_goto_rbo_ln_entry_2n1m:
    %cm_submenu("LN Entry  (Single Maridia)", #presets_submenu_rbo_ln_entry_2n1m)

presets_goto_rbo_ln_entry_2n2m:
    %cm_submenu("LN Entry  (Double Maridia)", #presets_submenu_rbo_ln_entry_2n2m)

presets_goto_rbo_ridley:
    %cm_submenu("Ridley", #presets_submenu_rbo_ridley)

presets_goto_rbo_ln_escape_2n1m:
    %cm_submenu("LN Escape (Single Maridia)", #presets_submenu_rbo_ln_escape_2n1m)

presets_goto_rbo_ln_escape_2n2m:
    %cm_submenu("LN Escape (Double Maridia)", #presets_submenu_rbo_ln_escape_2n2m)

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
    dw #presets_rbo_bombs_taco_tank
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
    dw #presets_rbo_brinstar_hellway_2n1m
    dw #presets_rbo_brinstar_alpha_pbs_2n1m
    dw #presets_rbo_brinstar_reverse_hellway_2n1m
    dw #presets_rbo_brinstar_red_tower_moonfalls_2n1m
    dw #presets_rbo_brinstar_spazer_2n1m
    dw #presets_rbo_brinstar_norfair_elevator_2n1m
    dw #$FFFF
    dw #presets_rbo_brinstar_spazer_2n2m
    dw #presets_rbo_brinstar_norfair_elevator_2n2m
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_rbo_shopping_2n1m:
    dw #presets_rbo_shopping_high_jump_2n1m
    dw #presets_rbo_shopping_business_center_up_2n1m
    dw #presets_rbo_shopping_first_hell_run_2n1m
    dw #presets_rbo_shopping_bubble_mountain_2n1m
    dw #presets_rbo_shopping_bat_cave_farm_2n1m
    dw #presets_rbo_shopping_leaving_speed_farm_2n1m
    dw #presets_rbo_shopping_wave_beam_entry_2n1m
    dw #presets_rbo_shopping_wave_escape_2n1m
    dw #presets_rbo_shopping_heading_to_business_center_2n1m
    dw #presets_rbo_shopping_leaving_norfair_2n1m
    dw #$0000
    %cm_header("SHOPPING (SINGLE MARIDIA)")

presets_submenu_rbo_shopping_2n2m:
    dw #presets_rbo_shopping_high_jump_2n2m
    dw #presets_rbo_shopping_business_center_up_2n2m
    dw #presets_rbo_shopping_first_hell_run_2n2m
    dw #presets_rbo_shopping_bubble_mountain_2n2m
    dw #presets_rbo_shopping_bat_cave_farm_2n2m
    dw #presets_rbo_shopping_leaving_speed_farm_2n2m
    dw #presets_rbo_shopping_wave_beam_entry_2n2m
    dw #presets_rbo_shopping_wave_escape_2n2m
    dw #presets_rbo_shopping_heading_to_croc_2n2m
    dw #presets_rbo_shopping_nutella_refill_2n2m
    dw #presets_rbo_shopping_croc_power_bombs_2n2m
    dw #presets_rbo_shopping_leaving_grapple_2n2m
    dw #presets_rbo_shopping_leaving_croc_2n2m
    dw #presets_rbo_shopping_ice_beam_entry_2n2m
    dw #presets_rbo_shopping_leaving_ice_2n2m
    dw #presets_rbo_shopping_ice_escape_2n2m
    dw #presets_rbo_shopping_leaving_norfair_2n2m
    dw #$0000
    %cm_header("SHOPPING (DOUBLE MARIDIA)")

presets_submenu_rbo_cleanup_2n1m:
    dw #presets_rbo_cleanup_red_tower_up_2n1m
    dw #presets_rbo_cleanup_green_brinstar_backdoor_2n1m
    dw #presets_rbo_cleanup_big_pink_2n1m
    dw #presets_rbo_cleanup_spore_spawn_supers_2n1m
    dw #presets_rbo_cleanup_spore_spawn_supers_escape_2n1m
    dw #presets_rbo_cleanup_wave_gate_etank_2n1m
    dw #presets_rbo_cleanup_dachora_room_2n1m
    dw #presets_rbo_cleanup_green_shaft_down_2n1m
    dw #presets_rbo_cleanup_etecoon_supers_2n1m
    dw #presets_rbo_cleanup_etecoon_power_bombs_2n1m
    dw #presets_rbo_cleanup_green_shaft_up_2n1m
    dw #presets_rbo_cleanup_reverse_terminator_2n1m
    dw #presets_rbo_cleanup_climb_supers_moonfall_2n1m
    dw #presets_rbo_cleanup_pit_room_shortcharge_2n1m
    dw #presets_rbo_cleanup_retro_brinstar_powerbombs_2n1m
    dw #presets_rbo_cleanup_blockbuster_2n1m
    dw #$0000
    %cm_header("CLEANUP (SINGLE MARIDIA)")

presets_submenu_rbo_cleanup_2n2m:
    dw #presets_rbo_cleanup_red_tower_up_2n2m
    dw #presets_rbo_cleanup_hellway_2n2m
    dw #presets_rbo_cleanup_alpha_pbs_2n2m
    dw #presets_rbo_cleanup_beta_pbs_2n2m
    dw #presets_rbo_cleanup_crateria_kihunters_2n2m
    dw #presets_rbo_cleanup_crateria_pbs_2n2m
    dw #presets_rbo_cleanup_gauntlet_wraparound_shot_2n2m
    dw #presets_rbo_cleanup_gauntlet_etank_2n2m
    dw #presets_rbo_cleanup_parlor_down_2n2m
    dw #presets_rbo_cleanup_climb_supers_2n2m
    dw #presets_rbo_cleanup_terminator_revisit_2n2m
    dw #presets_rbo_cleanup_green_brinstar_revisit_2n2m
    dw #presets_rbo_cleanup_leaving_etecoons_2n2m
    dw #presets_rbo_cleanup_spore_spawn_supers_2n2m
    dw #presets_rbo_cleanup_spore_spawn_supers_escape_2n2m
    dw #presets_rbo_cleanup_wave_gate_etank_2n2m
    dw #presets_rbo_cleanup_waterway_etank_2n2m
    dw #presets_rbo_cleanup_leaving_waterway_2n2m
    dw #presets_rbo_cleanup_blue_brinstar_pbs_2n2m
    dw #presets_rbo_cleanup_blockbuster_2n2m
    dw #$0000
    %cm_header("CLEANUP (DOUBLE MARIDIA)")

presets_submenu_rbo_ice_croc_2n1m:
    dw #presets_rbo_ice_croc_ice_beam_entry_2n1m
    dw #presets_rbo_ice_croc_leaving_ice_2n1m
    dw #presets_rbo_ice_croc_ice_escape_2n1m
    dw #presets_rbo_ice_croc_croc_shaft_moonfall_2n1m
    dw #presets_rbo_ice_croc_croc_speedway_2n1m
    dw #presets_rbo_ice_croc_croc_2n1m
    dw #presets_rbo_ice_croc_grapple_shaft_down_2n1m
    dw #presets_rbo_ice_croc_grapple_escape_2n1m
    dw #presets_rbo_ice_croc_grapple_shaft_up_2n1m
    dw #presets_rbo_ice_croc_croc_revisit_2n1m
    dw #$0000
    %cm_header("ICE-CROC (SINGLE MARIDIA)")

presets_submenu_rbo_maridia_2n2m:
    dw #presets_rbo_maridia_maridia_entry_2n2m
    dw #presets_rbo_maridia_mount_everest_2n2m
    dw #presets_rbo_maridia_leaving_crab_supers_2n2m
    dw #presets_rbo_maridia_mama_turtle_2n2m
    dw #presets_rbo_maridia_leaving_mama_turtle_2n2m
    dw #presets_rbo_maridia_maridia_exit_2n2m
    dw #$0000
    %cm_header("MARIDIA (DOUBLE MARIDIA)")

presets_submenu_rbo_lower_norfair_segment:
    dw #presets_rbo_lower_norfair_segment_ln_20_7_1
    dw #presets_rbo_lower_norfair_segment_ln_20_8_1
    dw #$FFFF
    dw #presets_rbo_lower_norfair_segment_ln_25_7_1
    dw #presets_rbo_lower_norfair_segment_ln_25_8_1
    dw #presets_rbo_lower_norfair_segment_ln_25_9_1
    dw #presets_rbo_lower_norfair_segment_ln_25_9_2
    dw #$FFFF
    dw #presets_rbo_lower_norfair_segment_ln_30_7_1
    dw #presets_rbo_lower_norfair_segment_ln_30_8_1
    dw #presets_rbo_lower_norfair_segment_ln_30_9_1
    dw #presets_rbo_lower_norfair_segment_ln_30_10_1
    dw #presets_rbo_lower_norfair_segment_ln_30_11_1
    dw #$FFFF
    dw #presets_rbo_lower_norfair_segment_ln_35_8_1
    dw #presets_rbo_lower_norfair_segment_ln_35_9_1
    dw #presets_rbo_lower_norfair_segment_ln_35_10_1
    dw #presets_rbo_lower_norfair_segment_ln_35_11_1
    dw #presets_rbo_lower_norfair_segment_ln_35_11_2
    dw #$0000
    %cm_header("LOWER NORFAIR SEGMENT")

presets_submenu_rbo_ln_entry_2n1m:
    dw #presets_rbo_ln_entry_lava_dive_2n1m
    dw #presets_rbo_ln_entry_ln_main_hall_2n1m
    dw #presets_rbo_ln_entry_green_gate_glitch_2n1m
    dw #presets_rbo_ln_entry_golden_torizo_2n1m
    dw #presets_rbo_ln_entry_energy_refill_escape_2n1m
    dw #presets_rbo_ln_entry_fast_pillars_2n1m
    dw #presets_rbo_ln_entry_writg_2n1m
    dw #presets_rbo_ln_entry_amphitheater_2n1m
    dw #presets_rbo_ln_entry_firefleas_entry_2n1m
    dw #presets_rbo_ln_entry_kihunter_stairs_down_2n1m
    dw #presets_rbo_ln_entry_ninja_pirates_2n1m
    dw #presets_rbo_ln_entry_preridley_2n1m
    dw #$0000
    %cm_header("LN ENTRY (SINGLE MARIDIA)")

presets_submenu_rbo_ln_entry_2n2m:
    dw #presets_rbo_ln_entry_lava_dive_2n2m
    dw #presets_rbo_ln_entry_ln_main_hall_2n2m
    dw #presets_rbo_ln_entry_green_gate_glitch_2n2m
    dw #presets_rbo_ln_entry_golden_torizo_2n2m
    dw #presets_rbo_ln_entry_energy_refill_escape_2n2m
    dw #presets_rbo_ln_entry_fast_pillars_2n2m
    dw #presets_rbo_ln_entry_writg_2n2m
    dw #presets_rbo_ln_entry_amphitheater_2n2m
    dw #presets_rbo_ln_entry_firefleas_entry_2n2m
    dw #presets_rbo_ln_entry_kihunter_stairs_down_2n2m
    dw #presets_rbo_ln_entry_ninja_pirates_2n2m
    dw #presets_rbo_ln_entry_preridley_2n2m
    dw #$0000
    %cm_header("LN ENTRY (DOUBLE MARIDIA)")

presets_submenu_rbo_ridley:
    dw #presets_rbo_ridley_ridley_20_7_1
    dw #presets_rbo_ridley_ridley_20_8_1
    dw #$FFFF
    dw #presets_rbo_ridley_ridley_25_7_1
    dw #presets_rbo_ridley_ridley_25_8_1
    dw #presets_rbo_ridley_ridley_25_9_1
    dw #presets_rbo_ridley_ridley_25_9_2
    dw #$FFFF
    dw #presets_rbo_ridley_ridley_30_7_1
    dw #presets_rbo_ridley_ridley_30_8_1
    dw #presets_rbo_ridley_ridley_30_9_1
    dw #presets_rbo_ridley_ridley_30_10_1
    dw #presets_rbo_ridley_ridley_30_11_1
    dw #$FFFF
    dw #presets_rbo_ridley_ridley_35_8_1
    dw #presets_rbo_ridley_ridley_35_9_1
    dw #presets_rbo_ridley_ridley_35_10_1
    dw #presets_rbo_ridley_ridley_35_11_1
    dw #presets_rbo_ridley_ridley_35_11_2
    dw #$0000
    %cm_header("RIDLEY")

presets_submenu_rbo_ln_escape_2n1m:
    dw #presets_rbo_ln_escape_ridley_etank_2n1m
    dw #presets_rbo_ln_escape_postridley_2n1m
    dw #presets_rbo_ln_escape_firefleas_2n1m
    dw #presets_rbo_ln_escape_firefleas_exit_2n1m
    dw #presets_rbo_ln_escape_3_musketeers_2n1m
    dw #presets_rbo_ln_escape_single_chamber_2n1m
    dw #presets_rbo_ln_escape_croc_gate_farm_2n1m
    dw #presets_rbo_ln_escape_business_center_2n1m
    dw #presets_rbo_ln_escape_maridia_entry_2n1m
    dw #$FFFF
    dw #presets_rbo_ln_escape_3_musketeers_spikesuit_2n1m
    dw #presets_rbo_ln_escape_single_chamber_spikesuit_2n1m
    dw #presets_rbo_ln_escape_croc_gate_farm_spikesuit_2n1m
    dw #presets_rbo_ln_escape_business_center_spikesuit_2n1m
    dw #presets_rbo_ln_escape_maridia_entry_spikesuit_2n1m
    dw #$0000
    %cm_header("LN ESCAPE (SINGLE MARIDIA)")

presets_submenu_rbo_ln_escape_2n2m:
    dw #presets_rbo_ln_escape_ridley_etank_2n2m
    dw #presets_rbo_ln_escape_postridley_2n2m
    dw #presets_rbo_ln_escape_firefleas_2n2m
    dw #presets_rbo_ln_escape_firefleas_exit_2n2m
    dw #presets_rbo_ln_escape_3_musketeers_2n2m
    dw #presets_rbo_ln_escape_single_chamber_2n2m
    dw #presets_rbo_ln_escape_croc_gate_farm_2n2m
    dw #presets_rbo_ln_escape_business_center_2n2m
    dw #presets_rbo_ln_escape_maridia_entry_2n2m
    dw #$FFFF
    dw #presets_rbo_ln_escape_3_musketeers_spikesuit_2n2m
    dw #presets_rbo_ln_escape_single_chamber_spikesuit_2n2m
    dw #presets_rbo_ln_escape_croc_gate_farm_spikesuit_2n2m
    dw #presets_rbo_ln_escape_business_center_spikesuit_2n2m
    dw #presets_rbo_ln_escape_maridia_entry_spikesuit_2n2m
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
    dw #presets_rbo_kraidg4_red_tower_moonfall_screw_attack
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
    %cm_preset("Ceres Last 3 rooms", #preset_rbo_bombs_ceres_last_3_rooms)

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

presets_rbo_bombs_taco_tank:
    %cm_preset("Taco Tank (Optional)", #preset_rbo_bombs_taco_tank)

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

presets_rbo_brinstar_hellway_2n1m:
    %cm_preset("Hellway (1x Maridia)", #preset_rbo_brinstar_hellway_2n1m)

presets_rbo_brinstar_alpha_pbs_2n1m:
    %cm_preset("Alpha PBs (1M)", #preset_rbo_brinstar_alpha_pbs_2n1m)

presets_rbo_brinstar_reverse_hellway_2n1m:
    %cm_preset("Reverse Hellway (1M)", #preset_rbo_brinstar_reverse_hellway_2n1m)

presets_rbo_brinstar_red_tower_moonfalls_2n1m:
    %cm_preset("Red Tower Moonfalls (1M)", #preset_rbo_brinstar_red_tower_moonfalls_2n1m)

presets_rbo_brinstar_spazer_2n1m:
    %cm_preset("Spazer (1M)", #preset_rbo_brinstar_spazer_2n1m)

presets_rbo_brinstar_norfair_elevator_2n1m:
    %cm_preset("Norfair Elevator (1M)", #preset_rbo_brinstar_norfair_elevator_2n1m)

presets_rbo_brinstar_spazer_2n2m:
    %cm_preset("Spazer (2x Maridia)", #preset_rbo_brinstar_spazer_2n2m)

presets_rbo_brinstar_norfair_elevator_2n2m:
    %cm_preset("Norfair Elevator (2M)", #preset_rbo_brinstar_norfair_elevator_2n2m)


; Shopping (Single Maridia)
presets_rbo_shopping_high_jump_2n1m:
    %cm_preset("High Jump", #preset_rbo_shopping_high_jump_2n1m)

presets_rbo_shopping_business_center_up_2n1m:
    %cm_preset("Business Center Up", #preset_rbo_shopping_business_center_up_2n1m)

presets_rbo_shopping_first_hell_run_2n1m:
    %cm_preset("First Hell Run", #preset_rbo_shopping_first_hell_run_2n1m)

presets_rbo_shopping_bubble_mountain_2n1m:
    %cm_preset("Bubble Mountain", #preset_rbo_shopping_bubble_mountain_2n1m)

presets_rbo_shopping_bat_cave_farm_2n1m:
    %cm_preset("Bat Cave (Farm 1)", #preset_rbo_shopping_bat_cave_farm_2n1m)

presets_rbo_shopping_leaving_speed_farm_2n1m:
    %cm_preset("Leaving Speed (Farm 2)", #preset_rbo_shopping_leaving_speed_farm_2n1m)

presets_rbo_shopping_wave_beam_entry_2n1m:
    %cm_preset("Wave Beam Entry", #preset_rbo_shopping_wave_beam_entry_2n1m)

presets_rbo_shopping_wave_escape_2n1m:
    %cm_preset("Wave Escape", #preset_rbo_shopping_wave_escape_2n1m)

presets_rbo_shopping_heading_to_business_center_2n1m:
    %cm_preset("Heading To Business Center", #preset_rbo_shopping_heading_to_business_center_2n1m)

presets_rbo_shopping_leaving_norfair_2n1m:
    %cm_preset("Leaving Norfair", #preset_rbo_shopping_leaving_norfair_2n1m)


; Shopping (Double Maridia)
presets_rbo_shopping_high_jump_2n2m:
    %cm_preset("High Jump", #preset_rbo_shopping_high_jump_2n2m)

presets_rbo_shopping_business_center_up_2n2m:
    %cm_preset("Business Center Up", #preset_rbo_shopping_business_center_up_2n2m)

presets_rbo_shopping_first_hell_run_2n2m:
    %cm_preset("First Hell Run", #preset_rbo_shopping_first_hell_run_2n2m)

presets_rbo_shopping_bubble_mountain_2n2m:
    %cm_preset("Bubble Mountain", #preset_rbo_shopping_bubble_mountain_2n2m)

presets_rbo_shopping_bat_cave_farm_2n2m:
    %cm_preset("Bat Cave (Farm 1)", #preset_rbo_shopping_bat_cave_farm_2n2m)

presets_rbo_shopping_leaving_speed_farm_2n2m:
    %cm_preset("Leaving Speed (Farm 2)", #preset_rbo_shopping_leaving_speed_farm_2n2m)

presets_rbo_shopping_wave_beam_entry_2n2m:
    %cm_preset("Wave Beam Entry", #preset_rbo_shopping_wave_beam_entry_2n2m)

presets_rbo_shopping_wave_escape_2n2m:
    %cm_preset("Wave Escape", #preset_rbo_shopping_wave_escape_2n2m)

presets_rbo_shopping_heading_to_croc_2n2m:
    %cm_preset("Heading To Croc", #preset_rbo_shopping_heading_to_croc_2n2m)

presets_rbo_shopping_nutella_refill_2n2m:
    %cm_preset("Nutella Refill", #preset_rbo_shopping_nutella_refill_2n2m)

presets_rbo_shopping_croc_power_bombs_2n2m:
    %cm_preset("Croc Power Bombs", #preset_rbo_shopping_croc_power_bombs_2n2m)

presets_rbo_shopping_leaving_grapple_2n2m:
    %cm_preset("Leaving Grapple", #preset_rbo_shopping_leaving_grapple_2n2m)

presets_rbo_shopping_leaving_croc_2n2m:
    %cm_preset("Leaving Croc", #preset_rbo_shopping_leaving_croc_2n2m)

presets_rbo_shopping_ice_beam_entry_2n2m:
    %cm_preset("Ice Beam", #preset_rbo_shopping_ice_beam_entry_2n2m)

presets_rbo_shopping_leaving_ice_2n2m:
    %cm_preset("Leaving Ice", #preset_rbo_shopping_leaving_ice_2n2m)

presets_rbo_shopping_ice_escape_2n2m:
    %cm_preset("Ice Escape", #preset_rbo_shopping_ice_escape_2n2m)

presets_rbo_shopping_leaving_norfair_2n2m:
    %cm_preset("Leaving Norfair", #preset_rbo_shopping_leaving_norfair_2n2m)


; Cleanup (Single Maridia)
presets_rbo_cleanup_red_tower_up_2n1m:
    %cm_preset("Red Tower Up", #preset_rbo_cleanup_red_tower_up_2n1m)

presets_rbo_cleanup_green_brinstar_backdoor_2n1m:
    %cm_preset("Green Brinstar Backdoor", #preset_rbo_cleanup_green_brinstar_backdoor_2n1m)

presets_rbo_cleanup_big_pink_2n1m:
    %cm_preset("Big Pink", #preset_rbo_cleanup_big_pink_2n1m)

presets_rbo_cleanup_spore_spawn_supers_2n1m:
    %cm_preset("Spore Spawn Supers", #preset_rbo_cleanup_spore_spawn_supers_2n1m)

presets_rbo_cleanup_spore_spawn_supers_escape_2n1m:
    %cm_preset("Spore Spawn Supers Escape", #preset_rbo_cleanup_spore_spawn_supers_escape_2n1m)

presets_rbo_cleanup_wave_gate_etank_2n1m:
    %cm_preset("Wave Gate E-Tank", #preset_rbo_cleanup_wave_gate_etank_2n1m)

presets_rbo_cleanup_dachora_room_2n1m:
    %cm_preset("Dachora Room", #preset_rbo_cleanup_dachora_room_2n1m)

presets_rbo_cleanup_green_shaft_down_2n1m:
    %cm_preset("Green Shaft Down", #preset_rbo_cleanup_green_shaft_down_2n1m)

presets_rbo_cleanup_etecoon_supers_2n1m:
    %cm_preset("Etecoon Supers", #preset_rbo_cleanup_etecoon_supers_2n1m)

presets_rbo_cleanup_etecoon_power_bombs_2n1m:
    %cm_preset("Etecoon PBs (Optional)", #preset_rbo_cleanup_etecoon_power_bombs_2n1m)

presets_rbo_cleanup_green_shaft_up_2n1m:
    %cm_preset("Green Shaft Up", #preset_rbo_cleanup_green_shaft_up_2n1m)

presets_rbo_cleanup_reverse_terminator_2n1m:
    %cm_preset("Reverse Terminator", #preset_rbo_cleanup_reverse_terminator_2n1m)

presets_rbo_cleanup_climb_supers_moonfall_2n1m:
    %cm_preset("Climb Supers Moonfall", #preset_rbo_cleanup_climb_supers_moonfall_2n1m)

presets_rbo_cleanup_pit_room_shortcharge_2n1m:
    %cm_preset("Pit Room Shortcharge", #preset_rbo_cleanup_pit_room_shortcharge_2n1m)

presets_rbo_cleanup_retro_brinstar_powerbombs_2n1m:
    %cm_preset("Retro Brinstar Powerbombs", #preset_rbo_cleanup_retro_brinstar_powerbombs_2n1m)

presets_rbo_cleanup_blockbuster_2n1m:
    %cm_preset("Blockbuster", #preset_rbo_cleanup_blockbuster_2n1m)


; Cleanup (Single Maridia)
presets_rbo_cleanup_red_tower_up_2n2m:
    %cm_preset("Red Tower Up", #preset_rbo_cleanup_red_tower_up_2n2m)

presets_rbo_cleanup_hellway_2n2m:
    %cm_preset("Hellway", #preset_rbo_cleanup_hellway_2n2m)

presets_rbo_cleanup_alpha_pbs_2n2m:
    %cm_preset("Alpha PBs", #preset_rbo_cleanup_alpha_pbs_2n2m)

presets_rbo_cleanup_beta_pbs_2n2m:
    %cm_preset("Beta PBs", #preset_rbo_cleanup_beta_pbs_2n2m)

presets_rbo_cleanup_crateria_kihunters_2n2m:
    %cm_preset("Crateria Kihunters", #preset_rbo_cleanup_crateria_kihunters_2n2m)

presets_rbo_cleanup_crateria_pbs_2n2m:
    %cm_preset("Crateria PBs", #preset_rbo_cleanup_crateria_pbs_2n2m)

presets_rbo_cleanup_gauntlet_wraparound_shot_2n2m:
    %cm_preset("Gauntlet Wraparound Shot", #preset_rbo_cleanup_gauntlet_wraparound_shot_2n2m)

presets_rbo_cleanup_gauntlet_etank_2n2m:
    %cm_preset("Gauntlet E-Tank", #preset_rbo_cleanup_gauntlet_etank_2n2m)

presets_rbo_cleanup_parlor_down_2n2m:
    %cm_preset("Parlor Down", #preset_rbo_cleanup_parlor_down_2n2m)

presets_rbo_cleanup_climb_supers_2n2m:
    %cm_preset("Climb Supers", #preset_rbo_cleanup_climb_supers_2n2m)

presets_rbo_cleanup_terminator_revisit_2n2m:
    %cm_preset("Terminator Revisit", #preset_rbo_cleanup_terminator_revisit_2n2m)

presets_rbo_cleanup_green_brinstar_revisit_2n2m:
    %cm_preset("Green Brinstar Revisit", #preset_rbo_cleanup_green_brinstar_revisit_2n2m)

presets_rbo_cleanup_leaving_etecoons_2n2m:
    %cm_preset("Leaving Etecoons", #preset_rbo_cleanup_leaving_etecoons_2n2m)

presets_rbo_cleanup_spore_spawn_supers_2n2m:
    %cm_preset("Spore Spawn Supers", #preset_rbo_cleanup_spore_spawn_supers_2n2m)

presets_rbo_cleanup_spore_spawn_supers_escape_2n2m:
    %cm_preset("Spore Spawn Supers Escape", #preset_rbo_cleanup_spore_spawn_supers_escape_2n2m)

presets_rbo_cleanup_wave_gate_etank_2n2m:
    %cm_preset("Wave Gate E-Tank", #preset_rbo_cleanup_wave_gate_etank_2n2m)

presets_rbo_cleanup_waterway_etank_2n2m:
    %cm_preset("Waterway E-Tank", #preset_rbo_cleanup_waterway_etank_2n2m)

presets_rbo_cleanup_leaving_waterway_2n2m:
    %cm_preset("Leaving Waterway", #preset_rbo_cleanup_leaving_waterway_2n2m)

presets_rbo_cleanup_blue_brinstar_pbs_2n2m:
    %cm_preset("Blue Brinstar PBs", #preset_rbo_cleanup_blue_brinstar_pbs_2n2m)

presets_rbo_cleanup_blockbuster_2n2m:
    %cm_preset("Blockbuster", #preset_rbo_cleanup_blockbuster_2n2m)


; Ice-Croc (Single Maridia)
presets_rbo_ice_croc_ice_beam_entry_2n1m:
    %cm_preset("Ice Entry", #preset_rbo_ice_croc_ice_beam_entry_2n1m)

presets_rbo_ice_croc_leaving_ice_2n1m:
    %cm_preset("Leaving Ice", #preset_rbo_ice_croc_leaving_ice_2n1m)

presets_rbo_ice_croc_ice_escape_2n1m:
    %cm_preset("Ice Escape", #preset_rbo_ice_croc_ice_escape_2n1m)

presets_rbo_ice_croc_croc_shaft_moonfall_2n1m:
    %cm_preset("Croc Shaft Moonfall", #preset_rbo_ice_croc_croc_shaft_moonfall_2n1m)

presets_rbo_ice_croc_croc_speedway_2n1m:
    %cm_preset("Croc Speedway", #preset_rbo_ice_croc_croc_speedway_2n1m)

presets_rbo_ice_croc_croc_2n1m:
    %cm_preset("Croc", #preset_rbo_ice_croc_croc_2n1m)

presets_rbo_ice_croc_grapple_shaft_down_2n1m:
    %cm_preset("Grapple Shaft Down", #preset_rbo_ice_croc_grapple_shaft_down_2n1m)

presets_rbo_ice_croc_grapple_escape_2n1m:
    %cm_preset("Grapple Escape", #preset_rbo_ice_croc_grapple_escape_2n1m)

presets_rbo_ice_croc_grapple_shaft_up_2n1m:
    %cm_preset("Grapple Shaft Up", #preset_rbo_ice_croc_grapple_shaft_up_2n1m)

presets_rbo_ice_croc_croc_revisit_2n1m:
    %cm_preset("Croc Revisit", #preset_rbo_ice_croc_croc_revisit_2n1m)


; Maridia (Double Maridia)
presets_rbo_maridia_maridia_entry_2n2m:
    %cm_preset("Maridia Entry", #preset_rbo_maridia_maridia_entry_2n2m)

presets_rbo_maridia_mount_everest_2n2m:
    %cm_preset("Mount Everest", #preset_rbo_maridia_mount_everest_2n2m)

presets_rbo_maridia_leaving_crab_supers_2n2m:
    %cm_preset("Leaving Crab Supers", #preset_rbo_maridia_leaving_crab_supers_2n2m)

presets_rbo_maridia_mama_turtle_2n2m:
    %cm_preset("Mama Turtle", #preset_rbo_maridia_mama_turtle_2n2m)

presets_rbo_maridia_leaving_mama_turtle_2n2m:
    %cm_preset("Leaving Mama Turtle", #preset_rbo_maridia_leaving_mama_turtle_2n2m)

presets_rbo_maridia_maridia_exit_2n2m:
    %cm_preset("Maridia Exit", #preset_rbo_maridia_maridia_exit_2n2m)


; Lower Norfair Segment
presets_rbo_lower_norfair_segment_ln_20_7_1:
    %cm_preset("LN (20 Supers  7+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_20_7_1)

presets_rbo_lower_norfair_segment_ln_20_8_1:
    %cm_preset("LN (20 Supers  8+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_20_8_1)

presets_rbo_lower_norfair_segment_ln_25_7_1:
    %cm_preset("LN (25 Supers  7+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_25_7_1)

presets_rbo_lower_norfair_segment_ln_25_8_1:
    %cm_preset("LN (25 Supers  8+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_25_8_1)

presets_rbo_lower_norfair_segment_ln_25_9_1:
    %cm_preset("LN (25 Supers  9+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_25_9_1)

presets_rbo_lower_norfair_segment_ln_25_9_2:
    %cm_preset("LN (25 Supers  9+2 Ridley)", #preset_rbo_lower_norfair_segment_ln_25_9_2)

presets_rbo_lower_norfair_segment_ln_30_7_1:
    %cm_preset("LN (30 Supers  7+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_30_7_1)

presets_rbo_lower_norfair_segment_ln_30_8_1:
    %cm_preset("LN (30 Supers  8+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_30_8_1)

presets_rbo_lower_norfair_segment_ln_30_9_1:
    %cm_preset("LN (30 Supers  9+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_30_9_1)

presets_rbo_lower_norfair_segment_ln_30_10_1:
    %cm_preset("LN (30 Supers 10+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_30_10_1)

presets_rbo_lower_norfair_segment_ln_30_11_1:
    %cm_preset("LN (30 Supers 11+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_30_11_1)

presets_rbo_lower_norfair_segment_ln_35_8_1:
    %cm_preset("LN (35 Supers  8+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_35_8_1)

presets_rbo_lower_norfair_segment_ln_35_9_1:
    %cm_preset("LN (35 Supers  9+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_35_9_1)

presets_rbo_lower_norfair_segment_ln_35_10_1:
    %cm_preset("LN (35 Supers 10+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_35_10_1)

presets_rbo_lower_norfair_segment_ln_35_11_1:
    %cm_preset("LN (35 Supers 11+1 Ridley)", #preset_rbo_lower_norfair_segment_ln_35_11_1)

presets_rbo_lower_norfair_segment_ln_35_11_2:
    %cm_preset("LN (35 Supers 11+2 Ridley)", #preset_rbo_lower_norfair_segment_ln_35_11_2)


; LN Entry (Single Maridia)
presets_rbo_ln_entry_lava_dive_2n1m:
    %cm_preset("Lava Dive", #preset_rbo_ln_entry_lava_dive_2n1m)

presets_rbo_ln_entry_ln_main_hall_2n1m:
    %cm_preset("LN Main Hall", #preset_rbo_ln_entry_ln_main_hall_2n1m)

presets_rbo_ln_entry_green_gate_glitch_2n1m:
    %cm_preset("Green Gate Glitch", #preset_rbo_ln_entry_green_gate_glitch_2n1m)

presets_rbo_ln_entry_golden_torizo_2n1m:
    %cm_preset("Golden Torizo", #preset_rbo_ln_entry_golden_torizo_2n1m)

presets_rbo_ln_entry_energy_refill_escape_2n1m:
    %cm_preset("Energy Refill Escape", #preset_rbo_ln_entry_energy_refill_escape_2n1m)

presets_rbo_ln_entry_fast_pillars_2n1m:
    %cm_preset("Fast Pillars", #preset_rbo_ln_entry_fast_pillars_2n1m)

presets_rbo_ln_entry_writg_2n1m:
    %cm_preset("WRITG", #preset_rbo_ln_entry_writg_2n1m)

presets_rbo_ln_entry_amphitheater_2n1m:
    %cm_preset("Amphitheater", #preset_rbo_ln_entry_amphitheater_2n1m)

presets_rbo_ln_entry_firefleas_entry_2n1m:
    %cm_preset("Firefleas Entry", #preset_rbo_ln_entry_firefleas_entry_2n1m)

presets_rbo_ln_entry_kihunter_stairs_down_2n1m:
    %cm_preset("Kihunter Stairs Down", #preset_rbo_ln_entry_kihunter_stairs_down_2n1m)

presets_rbo_ln_entry_ninja_pirates_2n1m:
    %cm_preset("Ninja Pirates", #preset_rbo_ln_entry_ninja_pirates_2n1m)

presets_rbo_ln_entry_preridley_2n1m:
    %cm_preset("Pre-Ridley", #preset_rbo_ln_entry_preridley_2n1m)


; LN Entry (Double Maridia)
presets_rbo_ln_entry_lava_dive_2n2m:
    %cm_preset("Lava Dive", #preset_rbo_ln_entry_lava_dive_2n2m)

presets_rbo_ln_entry_ln_main_hall_2n2m:
    %cm_preset("LN Main Hall", #preset_rbo_ln_entry_ln_main_hall_2n2m)

presets_rbo_ln_entry_green_gate_glitch_2n2m:
    %cm_preset("Green Gate Glitch", #preset_rbo_ln_entry_green_gate_glitch_2n2m)

presets_rbo_ln_entry_golden_torizo_2n2m:
    %cm_preset("Golden Torizo", #preset_rbo_ln_entry_golden_torizo_2n2m)

presets_rbo_ln_entry_energy_refill_escape_2n2m:
    %cm_preset("Energy Refill Escape", #preset_rbo_ln_entry_energy_refill_escape_2n2m)

presets_rbo_ln_entry_fast_pillars_2n2m:
    %cm_preset("Fast Pillars", #preset_rbo_ln_entry_fast_pillars_2n2m)

presets_rbo_ln_entry_writg_2n2m:
    %cm_preset("WRITG", #preset_rbo_ln_entry_writg_2n2m)

presets_rbo_ln_entry_amphitheater_2n2m:
    %cm_preset("Amphitheater", #preset_rbo_ln_entry_amphitheater_2n2m)

presets_rbo_ln_entry_firefleas_entry_2n2m:
    %cm_preset("Firefleas Entry", #preset_rbo_ln_entry_firefleas_entry_2n2m)

presets_rbo_ln_entry_kihunter_stairs_down_2n2m:
    %cm_preset("Kihunter Stairs Down", #preset_rbo_ln_entry_kihunter_stairs_down_2n2m)

presets_rbo_ln_entry_ninja_pirates_2n2m:
    %cm_preset("Ninja Pirates", #preset_rbo_ln_entry_ninja_pirates_2n2m)

presets_rbo_ln_entry_preridley_2n2m:
    %cm_preset("Pre-Ridley", #preset_rbo_ln_entry_preridley_2n2m)


; Ridley
presets_rbo_ridley_ridley_20_7_1:
    %cm_preset("Ridley (20 Supers  7+1)", #preset_rbo_ridley_ridley_20_7_1)

presets_rbo_ridley_ridley_20_8_1:
    %cm_preset("Ridley (20 Supers  8+1)", #preset_rbo_ridley_ridley_20_8_1)

presets_rbo_ridley_ridley_25_7_1:
    %cm_preset("Ridley (25 Supers  7+1)", #preset_rbo_ridley_ridley_25_7_1)

presets_rbo_ridley_ridley_25_8_1:
    %cm_preset("Ridley (25 Supers  8+1)", #preset_rbo_ridley_ridley_25_8_1)

presets_rbo_ridley_ridley_25_9_1:
    %cm_preset("Ridley (25 Supers  9+1)", #preset_rbo_ridley_ridley_25_9_1)

presets_rbo_ridley_ridley_25_9_2:
    %cm_preset("Ridley (25 Supers  9+2)", #preset_rbo_ridley_ridley_25_9_2)

presets_rbo_ridley_ridley_30_7_1:
    %cm_preset("Ridley (30 Supers  7+1)", #preset_rbo_ridley_ridley_30_7_1)

presets_rbo_ridley_ridley_30_8_1:
    %cm_preset("Ridley (30 Supers  8+1)", #preset_rbo_ridley_ridley_30_8_1)

presets_rbo_ridley_ridley_30_9_1:
    %cm_preset("Ridley (30 Supers  9+1)", #preset_rbo_ridley_ridley_30_9_1)

presets_rbo_ridley_ridley_30_10_1:
    %cm_preset("Ridley (30 Supers 10+1)", #preset_rbo_ridley_ridley_30_10_1)

presets_rbo_ridley_ridley_30_11_1:
    %cm_preset("Ridley (30 Supers 11+1)", #preset_rbo_ridley_ridley_30_11_1)

presets_rbo_ridley_ridley_35_8_1:
    %cm_preset("Ridley (35 Supers  8+1)", #preset_rbo_ridley_ridley_35_8_1)

presets_rbo_ridley_ridley_35_9_1:
    %cm_preset("Ridley (35 Supers  9+1)", #preset_rbo_ridley_ridley_35_9_1)

presets_rbo_ridley_ridley_35_10_1:
    %cm_preset("Ridley (35 Supers 10+1)", #preset_rbo_ridley_ridley_35_10_1)

presets_rbo_ridley_ridley_35_11_1:
    %cm_preset("Ridley (35 Supers 11+1)", #preset_rbo_ridley_ridley_35_11_1)

presets_rbo_ridley_ridley_35_11_2:
    %cm_preset("Ridley (35 Supers 11+2)", #preset_rbo_ridley_ridley_35_11_2)


; LN Escape (Single Maridia)
presets_rbo_ln_escape_ridley_etank_2n1m:
    %cm_preset("Ridley E-Tank", #preset_rbo_ln_escape_ridley_etank_2n1m)

presets_rbo_ln_escape_postridley_2n1m:
    %cm_preset("Post-Ridley", #preset_rbo_ln_escape_postridley_2n1m)

presets_rbo_ln_escape_firefleas_2n1m:
    %cm_preset("Firefleas", #preset_rbo_ln_escape_firefleas_2n1m)

presets_rbo_ln_escape_firefleas_exit_2n1m:
    %cm_preset("Firefleas Exit", #preset_rbo_ln_escape_firefleas_exit_2n1m)

presets_rbo_ln_escape_3_musketeers_2n1m:
    %cm_preset("3 Musketeers", #preset_rbo_ln_escape_3_musketeers_2n1m)

presets_rbo_ln_escape_single_chamber_2n1m:
    %cm_preset("Single Chamber", #preset_rbo_ln_escape_single_chamber_2n1m)

presets_rbo_ln_escape_croc_gate_farm_2n1m:
    %cm_preset("Croc Gate Farm", #preset_rbo_ln_escape_croc_gate_farm_2n1m)

presets_rbo_ln_escape_business_center_2n1m:
    %cm_preset("Business Center", #preset_rbo_ln_escape_business_center_2n1m)

presets_rbo_ln_escape_maridia_entry_2n1m:
    %cm_preset("Maridia Entry", #preset_rbo_ln_escape_maridia_entry_2n1m)

presets_rbo_ln_escape_3_musketeers_spikesuit_2n1m:
    %cm_preset("3 Musketeers (Spikesuit)", #preset_rbo_ln_escape_3_musketeers_spikesuit_2n1m)

presets_rbo_ln_escape_single_chamber_spikesuit_2n1m:
    %cm_preset("Single Chamber (Spikesuit)", #preset_rbo_ln_escape_single_chamber_spikesuit_2n1m)

presets_rbo_ln_escape_croc_gate_farm_spikesuit_2n1m:
    %cm_preset("Croc Gate Farm (Spikesuit)", #preset_rbo_ln_escape_croc_gate_farm_spikesuit_2n1m)

presets_rbo_ln_escape_business_center_spikesuit_2n1m:
    %cm_preset("Business Center (Spikesuit)", #preset_rbo_ln_escape_business_center_spikesuit_2n1m)

presets_rbo_ln_escape_maridia_entry_spikesuit_2n1m:
    %cm_preset("Maridia Entry (Spikesuit)", #preset_rbo_ln_escape_maridia_entry_spikesuit_2n1m)


; LN Escape (Double Maridia)
presets_rbo_ln_escape_ridley_etank_2n2m:
    %cm_preset("Ridley E-Tank", #preset_rbo_ln_escape_ridley_etank_2n2m)

presets_rbo_ln_escape_postridley_2n2m:
    %cm_preset("Post-Ridley", #preset_rbo_ln_escape_postridley_2n2m)

presets_rbo_ln_escape_firefleas_2n2m:
    %cm_preset("Firefleas", #preset_rbo_ln_escape_firefleas_2n2m)

presets_rbo_ln_escape_firefleas_exit_2n2m:
    %cm_preset("Firefleas Exit", #preset_rbo_ln_escape_firefleas_exit_2n2m)

presets_rbo_ln_escape_3_musketeers_2n2m:
    %cm_preset("3 Musketeers", #preset_rbo_ln_escape_3_musketeers_2n2m)

presets_rbo_ln_escape_single_chamber_2n2m:
    %cm_preset("Single Chamber", #preset_rbo_ln_escape_single_chamber_2n2m)

presets_rbo_ln_escape_croc_gate_farm_2n2m:
    %cm_preset("Croc Gate Farm", #preset_rbo_ln_escape_croc_gate_farm_2n2m)

presets_rbo_ln_escape_business_center_2n2m:
    %cm_preset("Business Center", #preset_rbo_ln_escape_business_center_2n2m)

presets_rbo_ln_escape_maridia_entry_2n2m:
    %cm_preset("Maridia Entry", #preset_rbo_ln_escape_maridia_entry_2n2m)

presets_rbo_ln_escape_3_musketeers_spikesuit_2n2m:
    %cm_preset("3 Musketeers (Spikesuit)", #preset_rbo_ln_escape_3_musketeers_spikesuit_2n2m)

presets_rbo_ln_escape_single_chamber_spikesuit_2n2m:
    %cm_preset("Single Chamber (Spikesuit)", #preset_rbo_ln_escape_single_chamber_spikesuit_2n2m)

presets_rbo_ln_escape_croc_gate_farm_spikesuit_2n2m:
    %cm_preset("Croc Gate Farm (Spikesuit)", #preset_rbo_ln_escape_croc_gate_farm_spikesuit_2n2m)

presets_rbo_ln_escape_business_center_spikesuit_2n2m:
    %cm_preset("Business Center (Spikesuit)", #preset_rbo_ln_escape_business_center_spikesuit_2n2m)

presets_rbo_ln_escape_maridia_entry_spikesuit_2n2m:
    %cm_preset("Maridia Entry (Spikesuit)", #preset_rbo_ln_escape_maridia_entry_spikesuit_2n2m)


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

presets_rbo_kraidg4_red_tower_moonfall_screw_attack:
    %cm_preset("Red Tower Screwfall", #preset_rbo_kraidg4_red_tower_moonfall_screw_attack)

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


