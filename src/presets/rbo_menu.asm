PresetsMenuRbo:
    dw #presets_goto_rbo_bombs
    dw #presets_goto_rbo_brinstar
    dw #presets_goto_rbo_norfair_first_visit
    dw #presets_goto_rbo_brinstar_cleanup
    dw #presets_goto_rbo_norfair_second_visit
    dw #presets_goto_rbo_lower_norfair
    dw #presets_goto_rbo_norfair_escape
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

presets_goto_rbo_norfair_first_visit:
    %cm_submenu("Norfair (First Visit)", #presets_submenu_rbo_norfair_first_visit)

presets_goto_rbo_brinstar_cleanup:
    %cm_submenu("Brinstar Cleanup", #presets_submenu_rbo_brinstar_cleanup)

presets_goto_rbo_norfair_second_visit:
    %cm_submenu("Norfair (Second Visit)", #presets_submenu_rbo_norfair_second_visit)

presets_goto_rbo_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_rbo_lower_norfair)

presets_goto_rbo_norfair_escape:
    %cm_submenu("Norfair Escape", #presets_submenu_rbo_norfair_escape)

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
    dw #presets_rbo_bombs_morph
    dw #presets_rbo_bombs_pit_room
    dw #presets_rbo_bombs_retro_etank
    dw #presets_rbo_bombs_climb
    dw #presets_rbo_bombs_parlor_up
    dw #presets_rbo_bombs_bomb_torizo
    dw #presets_rbo_bombs_alcatraz
    dw #presets_rbo_bombs_terminator
    dw #$0000
    %cm_header("BOMBS")

presets_submenu_rbo_brinstar:
    dw #presets_rbo_brinstar_green_brinstar_elevator
    dw #presets_rbo_brinstar_early_supers_reserve
    dw #presets_rbo_brinstar_early_supers_collection
    dw #presets_rbo_brinstar_dachora_room
    dw #presets_rbo_brinstar_big_pink
    dw #presets_rbo_brinstar_green_hill_zone
    dw #presets_rbo_brinstar_red_tower_up
    dw #presets_rbo_brinstar_hellway
    dw #presets_rbo_brinstar_alpha_pbs
    dw #presets_rbo_brinstar_reverse_hellway
    dw #presets_rbo_brinstar_red_tower_moonfalls
    dw #presets_rbo_brinstar_spazer
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_rbo_norfair_first_visit:
    dw #presets_rbo_norfair_first_visit_norfair_elevator
    dw #presets_rbo_norfair_first_visit_high_jump
    dw #presets_rbo_norfair_first_visit_business_center_up
    dw #presets_rbo_norfair_first_visit_first_hell_run
    dw #presets_rbo_norfair_first_visit_bubble_mountain
    dw #presets_rbo_norfair_first_visit_bat_cave_speed_farm
    dw #presets_rbo_norfair_first_visit_leaving_speed_speed_farm_2
    dw #presets_rbo_norfair_first_visit_wave_escape
    dw #$0000
    %cm_header("NORFAIR (FIRST VISIT)")

presets_submenu_rbo_brinstar_cleanup:
    dw #presets_rbo_brinstar_cleanup_alpha_spark
    dw #presets_rbo_brinstar_cleanup_red_tower_up_2
    dw #presets_rbo_brinstar_cleanup_green_brinstar_backdoor
    dw #presets_rbo_brinstar_cleanup_big_pink_cleanup_1
    dw #presets_rbo_brinstar_cleanup_spore_spawn_supers
    dw #presets_rbo_brinstar_cleanup_spore_spawn_supers_escape
    dw #presets_rbo_brinstar_cleanup_wave_gate_etank
    dw #presets_rbo_brinstar_cleanup_dachora_room_2
    dw #presets_rbo_brinstar_cleanup_green_shaft_down
    dw #presets_rbo_brinstar_cleanup_etecoon_supers
    dw #presets_rbo_brinstar_cleanup_etecoon_power_bombs_optional
    dw #presets_rbo_brinstar_cleanup_green_shaft_up
    dw #presets_rbo_brinstar_cleanup_reverse_terminator
    dw #presets_rbo_brinstar_cleanup_climb_supers_moonfall
    dw #presets_rbo_brinstar_cleanup_pit_room_shortcharge
    dw #presets_rbo_brinstar_cleanup_retro_brinstar_powerbombs
    dw #presets_rbo_brinstar_cleanup_ball_buster
    dw #$0000
    %cm_header("BRINSTAR CLEANUP")

presets_submenu_rbo_norfair_second_visit:
    dw #presets_rbo_norfair_second_visit_ice_entry
    dw #presets_rbo_norfair_second_visit_ice_escape
    dw #presets_rbo_norfair_second_visit_ice_escape_2
    dw #presets_rbo_norfair_second_visit_croc_shaft_moonfall
    dw #presets_rbo_norfair_second_visit_croc_speedway
    dw #presets_rbo_norfair_second_visit_croc
    dw #presets_rbo_norfair_second_visit_grapple_shaft_down
    dw #presets_rbo_norfair_second_visit_grapple_escape
    dw #presets_rbo_norfair_second_visit_grapple_shaft_up
    dw #presets_rbo_norfair_second_visit_croc_revisit
    dw #presets_rbo_norfair_second_visit_lava_dive_grapple_room
    dw #presets_rbo_norfair_second_visit_lava_dive_entry_room
    dw #$0000
    %cm_header("NORFAIR (SECOND VISIT)")

presets_submenu_rbo_lower_norfair:
    dw #presets_rbo_lower_norfair_entry_room
    dw #presets_rbo_lower_norfair_green_gate_glitch
    dw #presets_rbo_lower_norfair_golden_torizo
    dw #presets_rbo_lower_norfair_energy_refill_escape
    dw #presets_rbo_lower_norfair_fast_pillars
    dw #presets_rbo_lower_norfair_writg
    dw #presets_rbo_lower_norfair_amphitheater
    dw #presets_rbo_lower_norfair_firefleas_entry
    dw #presets_rbo_lower_norfair_kihunter_stairs_down
    dw #presets_rbo_lower_norfair_ninja_pirates
    dw #presets_rbo_lower_norfair_preridley
    dw #presets_rbo_lower_norfair_ridley
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_rbo_norfair_escape:
    dw #presets_rbo_norfair_escape_ridley_etank
    dw #presets_rbo_norfair_escape_postridley
    dw #presets_rbo_norfair_escape_firefleas
    dw #presets_rbo_norfair_escape_firefleas_exit_spikesuit
    dw #presets_rbo_norfair_escape_3_musketeers
    dw #presets_rbo_norfair_escape_3_musketeers_exit
    dw #presets_rbo_norfair_escape_croc_gate_farm
    dw #presets_rbo_norfair_escape_business_center_up_2
    dw #$0000
    %cm_header("NORFAIR ESCAPE")

presets_submenu_rbo_maridia:
    dw #presets_rbo_maridia_maridia_entry_spikesuit
    dw #presets_rbo_maridia_mt_everest
    dw #presets_rbo_maridia_aqueduct
    dw #presets_rbo_maridia_prebotwoon_ice_clip
    dw #presets_rbo_maridia_botwoon
    dw #presets_rbo_maridia_postbotwoon_shinespark
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
    dw #presets_rbo_kraidg4_red_tower_up_3
    dw #presets_rbo_kraidg4_kihunters_room_up
    dw #presets_rbo_kraidg4_ship_room
    dw #presets_rbo_kraidg4_terminator_2
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

presets_rbo_bombs_morph:
    %cm_preset("Morph", #preset_rbo_bombs_morph)

presets_rbo_bombs_pit_room:
    %cm_preset("Pit Room", #preset_rbo_bombs_pit_room)

presets_rbo_bombs_retro_etank:
    %cm_preset("Retro E-Tank", #preset_rbo_bombs_retro_etank)

presets_rbo_bombs_climb:
    %cm_preset("Climb", #preset_rbo_bombs_climb)

presets_rbo_bombs_parlor_up:
    %cm_preset("Parlor Up", #preset_rbo_bombs_parlor_up)

presets_rbo_bombs_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_rbo_bombs_bomb_torizo)

presets_rbo_bombs_alcatraz:
    %cm_preset("Alcatraz", #preset_rbo_bombs_alcatraz)

presets_rbo_bombs_terminator:
    %cm_preset("Terminator", #preset_rbo_bombs_terminator)


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

presets_rbo_brinstar_red_tower_up:
    %cm_preset("Red Tower (Up)", #preset_rbo_brinstar_red_tower_up)

presets_rbo_brinstar_hellway:
    %cm_preset("Hellway", #preset_rbo_brinstar_hellway)

presets_rbo_brinstar_alpha_pbs:
    %cm_preset("Alpha PBs", #preset_rbo_brinstar_alpha_pbs)

presets_rbo_brinstar_reverse_hellway:
    %cm_preset("Reverse Hellway", #preset_rbo_brinstar_reverse_hellway)

presets_rbo_brinstar_red_tower_moonfalls:
    %cm_preset("Red Tower Moonfalls", #preset_rbo_brinstar_red_tower_moonfalls)

presets_rbo_brinstar_spazer:
    %cm_preset("Spazer", #preset_rbo_brinstar_spazer)


; Norfair (First Visit)
presets_rbo_norfair_first_visit_norfair_elevator:
    %cm_preset("Norfair Elevator", #preset_rbo_norfair_first_visit_norfair_elevator)

presets_rbo_norfair_first_visit_high_jump:
    %cm_preset("High Jump", #preset_rbo_norfair_first_visit_high_jump)

presets_rbo_norfair_first_visit_business_center_up:
    %cm_preset("Business Center (Up)", #preset_rbo_norfair_first_visit_business_center_up)

presets_rbo_norfair_first_visit_first_hell_run:
    %cm_preset("First Hell Run", #preset_rbo_norfair_first_visit_first_hell_run)

presets_rbo_norfair_first_visit_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_rbo_norfair_first_visit_bubble_mountain)

presets_rbo_norfair_first_visit_bat_cave_speed_farm:
    %cm_preset("Bat Cave (Farm 1)", #preset_rbo_norfair_first_visit_bat_cave_speed_farm)

presets_rbo_norfair_first_visit_leaving_speed_speed_farm_2:
    %cm_preset("Leaving Speed (Farm 2)", #preset_rbo_norfair_first_visit_leaving_speed_speed_farm_2)

presets_rbo_norfair_first_visit_wave_escape:
    %cm_preset("Wave Escape", #preset_rbo_norfair_first_visit_wave_escape)


; Brinstar Cleanup
presets_rbo_brinstar_cleanup_alpha_spark:
    %cm_preset("Alpha Spark", #preset_rbo_brinstar_cleanup_alpha_spark)

presets_rbo_brinstar_cleanup_red_tower_up_2:
    %cm_preset("Red Tower (Up)", #preset_rbo_brinstar_cleanup_red_tower_up_2)

presets_rbo_brinstar_cleanup_green_brinstar_backdoor:
    %cm_preset("Green Brinstar (Backdoor)", #preset_rbo_brinstar_cleanup_green_brinstar_backdoor)

presets_rbo_brinstar_cleanup_big_pink_cleanup_1:
    %cm_preset("Big Pink (Cleanup 1)", #preset_rbo_brinstar_cleanup_big_pink_cleanup_1)

presets_rbo_brinstar_cleanup_spore_spawn_supers:
    %cm_preset("Spore Spawn Supers", #preset_rbo_brinstar_cleanup_spore_spawn_supers)

presets_rbo_brinstar_cleanup_spore_spawn_supers_escape:
    %cm_preset("Spore Spawn Supers (Escape)", #preset_rbo_brinstar_cleanup_spore_spawn_supers_escape)

presets_rbo_brinstar_cleanup_wave_gate_etank:
    %cm_preset("Wave Gate E-Tank", #preset_rbo_brinstar_cleanup_wave_gate_etank)

presets_rbo_brinstar_cleanup_dachora_room_2:
    %cm_preset("Dachora Room 2", #preset_rbo_brinstar_cleanup_dachora_room_2)

presets_rbo_brinstar_cleanup_green_shaft_down:
    %cm_preset("Green Shaft (Down)", #preset_rbo_brinstar_cleanup_green_shaft_down)

presets_rbo_brinstar_cleanup_etecoon_supers:
    %cm_preset("Etecoon Supers", #preset_rbo_brinstar_cleanup_etecoon_supers)

presets_rbo_brinstar_cleanup_etecoon_power_bombs_optional:
    %cm_preset("Etecoon PBs (Optional)", #preset_rbo_brinstar_cleanup_etecoon_power_bombs_optional)

presets_rbo_brinstar_cleanup_green_shaft_up:
    %cm_preset("Green Shaft (Up)", #preset_rbo_brinstar_cleanup_green_shaft_up)

presets_rbo_brinstar_cleanup_reverse_terminator:
    %cm_preset("Reverse Terminator", #preset_rbo_brinstar_cleanup_reverse_terminator)

presets_rbo_brinstar_cleanup_climb_supers_moonfall:
    %cm_preset("Climb Supers Moonfall", #preset_rbo_brinstar_cleanup_climb_supers_moonfall)

presets_rbo_brinstar_cleanup_pit_room_shortcharge:
    %cm_preset("Pit Room Shortcharge", #preset_rbo_brinstar_cleanup_pit_room_shortcharge)

presets_rbo_brinstar_cleanup_retro_brinstar_powerbombs:
    %cm_preset("Retro Brinstar Powerbombs", #preset_rbo_brinstar_cleanup_retro_brinstar_powerbombs)

presets_rbo_brinstar_cleanup_ball_buster:
    %cm_preset("Ball Buster", #preset_rbo_brinstar_cleanup_ball_buster)


; Norfair (Second Visit)
presets_rbo_norfair_second_visit_ice_entry:
    %cm_preset("Ice Entry", #preset_rbo_norfair_second_visit_ice_entry)

presets_rbo_norfair_second_visit_ice_escape:
    %cm_preset("Ice Escape", #preset_rbo_norfair_second_visit_ice_escape)

presets_rbo_norfair_second_visit_ice_escape_2:
    %cm_preset("Ice Escape 2", #preset_rbo_norfair_second_visit_ice_escape_2)

presets_rbo_norfair_second_visit_croc_shaft_moonfall:
    %cm_preset("Croc Shaft Moonfall", #preset_rbo_norfair_second_visit_croc_shaft_moonfall)

presets_rbo_norfair_second_visit_croc_speedway:
    %cm_preset("Croc Speedway", #preset_rbo_norfair_second_visit_croc_speedway)

presets_rbo_norfair_second_visit_croc:
    %cm_preset("Croc", #preset_rbo_norfair_second_visit_croc)

presets_rbo_norfair_second_visit_grapple_shaft_down:
    %cm_preset("Grapple Shaft (Down)", #preset_rbo_norfair_second_visit_grapple_shaft_down)

presets_rbo_norfair_second_visit_grapple_escape:
    %cm_preset("Grapple Escape", #preset_rbo_norfair_second_visit_grapple_escape)

presets_rbo_norfair_second_visit_grapple_shaft_up:
    %cm_preset("Grapple Shaft (Up)", #preset_rbo_norfair_second_visit_grapple_shaft_up)

presets_rbo_norfair_second_visit_croc_revisit:
    %cm_preset("Croc (Re-visit)", #preset_rbo_norfair_second_visit_croc_revisit)

presets_rbo_norfair_second_visit_lava_dive_grapple_room:
    %cm_preset("Lava Dive (Grapple Room)", #preset_rbo_norfair_second_visit_lava_dive_grapple_room)

presets_rbo_norfair_second_visit_lava_dive_entry_room:
    %cm_preset("Lava Dive (Entry Room)", #preset_rbo_norfair_second_visit_lava_dive_entry_room)


; Lower Norfair
presets_rbo_lower_norfair_entry_room:
    %cm_preset("Entry Room", #preset_rbo_lower_norfair_entry_room)

presets_rbo_lower_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_rbo_lower_norfair_green_gate_glitch)

presets_rbo_lower_norfair_golden_torizo:
    %cm_preset("Golden Torizo", #preset_rbo_lower_norfair_golden_torizo)

presets_rbo_lower_norfair_energy_refill_escape:
    %cm_preset("Energy Refill (Escape)", #preset_rbo_lower_norfair_energy_refill_escape)

presets_rbo_lower_norfair_fast_pillars:
    %cm_preset("Fast Pillars", #preset_rbo_lower_norfair_fast_pillars)

presets_rbo_lower_norfair_writg:
    %cm_preset("WRITG", #preset_rbo_lower_norfair_writg)

presets_rbo_lower_norfair_amphitheater:
    %cm_preset("Amphitheater", #preset_rbo_lower_norfair_amphitheater)

presets_rbo_lower_norfair_firefleas_entry:
    %cm_preset("Firefleas Entry", #preset_rbo_lower_norfair_firefleas_entry)

presets_rbo_lower_norfair_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs (Down)", #preset_rbo_lower_norfair_kihunter_stairs_down)

presets_rbo_lower_norfair_ninja_pirates:
    %cm_preset("Ninja Pirates", #preset_rbo_lower_norfair_ninja_pirates)

presets_rbo_lower_norfair_preridley:
    %cm_preset("Pre-Ridley", #preset_rbo_lower_norfair_preridley)

presets_rbo_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_rbo_lower_norfair_ridley)


; Norfair Escape
presets_rbo_norfair_escape_ridley_etank:
    %cm_preset("Ridley E-Tank", #preset_rbo_norfair_escape_ridley_etank)

presets_rbo_norfair_escape_postridley:
    %cm_preset("Post-Ridley", #preset_rbo_norfair_escape_postridley)

presets_rbo_norfair_escape_firefleas:
    %cm_preset("Firefleas", #preset_rbo_norfair_escape_firefleas)

presets_rbo_norfair_escape_firefleas_exit_spikesuit:
    %cm_preset("Firefleas Exit (Spikesuit)", #preset_rbo_norfair_escape_firefleas_exit_spikesuit)

presets_rbo_norfair_escape_3_musketeers:
    %cm_preset("3 Musketeers", #preset_rbo_norfair_escape_3_musketeers)

presets_rbo_norfair_escape_3_musketeers_exit:
    %cm_preset("3 Musketeers Exit", #preset_rbo_norfair_escape_3_musketeers_exit)

presets_rbo_norfair_escape_croc_gate_farm:
    %cm_preset("Croc Gate Farm", #preset_rbo_norfair_escape_croc_gate_farm)

presets_rbo_norfair_escape_business_center_up_2:
    %cm_preset("Business Center (Up)", #preset_rbo_norfair_escape_business_center_up_2)


; Maridia
presets_rbo_maridia_maridia_entry_spikesuit:
    %cm_preset("Maridia Entry (Spikesuit)", #preset_rbo_maridia_maridia_entry_spikesuit)

presets_rbo_maridia_mt_everest:
    %cm_preset("Mt. Everest", #preset_rbo_maridia_mt_everest)

presets_rbo_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_rbo_maridia_aqueduct)

presets_rbo_maridia_prebotwoon_ice_clip:
    %cm_preset("Pre-Botwoon (Ice Clip)", #preset_rbo_maridia_prebotwoon_ice_clip)

presets_rbo_maridia_botwoon:
    %cm_preset("Botwoon", #preset_rbo_maridia_botwoon)

presets_rbo_maridia_postbotwoon_shinespark:
    %cm_preset("Post-Botwoon (Shinespark)", #preset_rbo_maridia_postbotwoon_shinespark)

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
    %cm_preset("WS Shaft (Down)", #preset_rbo_wrecked_ship_ws_shaft_down)

presets_rbo_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_rbo_wrecked_ship_phantoon)

presets_rbo_wrecked_ship_ws_shaft_up:
    %cm_preset("WS Shaft (Up)", #preset_rbo_wrecked_ship_ws_shaft_up)

presets_rbo_wrecked_ship_west_ocean:
    %cm_preset("West Ocean", #preset_rbo_wrecked_ship_west_ocean)


; Kraid-G4
presets_rbo_kraidg4_kihunters_room_down:
    %cm_preset("Kihunters Room (Down)", #preset_rbo_kraidg4_kihunters_room_down)

presets_rbo_kraidg4_red_brinstar_elevator_down:
    %cm_preset("Red Brinstar Elevator (Down)", #preset_rbo_kraidg4_red_brinstar_elevator_down)

presets_rbo_kraidg4_red_tower_moonfall_screw_attack:
    %cm_preset("Red Tower Screwfall", #preset_rbo_kraidg4_red_tower_moonfall_screw_attack)

presets_rbo_kraidg4_kraid_entry:
    %cm_preset("Kraid Entry", #preset_rbo_kraidg4_kraid_entry)

presets_rbo_kraidg4_kraid_hallway:
    %cm_preset("Kraid Hallway", #preset_rbo_kraidg4_kraid_hallway)

presets_rbo_kraidg4_kraid:
    %cm_preset("Kraid", #preset_rbo_kraidg4_kraid)

presets_rbo_kraidg4_kraid_hallway_exit:
    %cm_preset("Kraid Hallway (Exit)", #preset_rbo_kraidg4_kraid_hallway_exit)

presets_rbo_kraidg4_kraid_escape:
    %cm_preset("Kraid Escape", #preset_rbo_kraidg4_kraid_escape)

presets_rbo_kraidg4_red_tower_up_3:
    %cm_preset("Red Tower (Up)", #preset_rbo_kraidg4_red_tower_up_3)

presets_rbo_kraidg4_kihunters_room_up:
    %cm_preset("Kihunters Room (Up)", #preset_rbo_kraidg4_kihunters_room_up)

presets_rbo_kraidg4_ship_room:
    %cm_preset("Ship Room", #preset_rbo_kraidg4_ship_room)

presets_rbo_kraidg4_terminator_2:
    %cm_preset("Terminator", #preset_rbo_kraidg4_terminator_2)

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


