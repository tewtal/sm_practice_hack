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
    %cm_submenu("Kraid/G4", #presets_submenu_rbo_kraidg4)

presets_goto_rbo_tourian:
    %cm_submenu("Tourian", #presets_submenu_rbo_tourian)

presets_submenu_rbo_bombs:
    dw #presets_rbo_bombs_parlor_down
    dw #presets_rbo_bombs_pit_room
    dw #presets_rbo_bombs_retro_etank
    dw #presets_rbo_bombs_climb
    dw #presets_rbo_bombs_parlor_up
    dw #presets_rbo_bombs_alcatraz
    dw #presets_rbo_bombs_terminator
    dw #$0000
    %cm_header("BOMBS")

presets_submenu_rbo_brinstar:
    dw #presets_rbo_brinstar_green_brinstar_elevator
    dw #presets_rbo_brinstar_early_supers_reserve
    dw #presets_rbo_brinstar_early_supers_collection
    dw #presets_rbo_brinstar_big_pink
    dw #presets_rbo_brinstar_red_tower_up
    dw #presets_rbo_brinstar_reverse_hellway
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_rbo_norfair_first_visit:
    dw #presets_rbo_norfair_first_visit_norfair_elevator
    dw #presets_rbo_norfair_first_visit_high_jump
    dw #presets_rbo_norfair_first_visit_first_hell_run
    dw #presets_rbo_norfair_first_visit_bubble_mountain
    dw #presets_rbo_norfair_first_visit_bat_cave_speed_farm
    dw #presets_rbo_norfair_first_visit_wave_escape
    dw #$0000
    %cm_header("NORFAIR (FIRST VISIT)")

presets_submenu_rbo_brinstar_cleanup:
    dw #presets_rbo_brinstar_cleanup_alpha_spark
    dw #presets_rbo_brinstar_cleanup_spore_spawn_supers
    dw #presets_rbo_brinstar_cleanup_dachora_room
    dw #presets_rbo_brinstar_cleanup_green_shaft_down
    dw #presets_rbo_brinstar_cleanup_etecoon_supers
    dw #presets_rbo_brinstar_cleanup_green_shaft_up
    dw #presets_rbo_brinstar_cleanup_reverse_terminator
    dw #presets_rbo_brinstar_cleanup_climb_supers_moonfall
    dw #presets_rbo_brinstar_cleanup_retro_brinstar_powerbombs
    dw #presets_rbo_brinstar_cleanup_ball_buster
    dw #$0000
    %cm_header("BRINSTAR CLEANUP")

presets_submenu_rbo_norfair_second_visit:
    dw #presets_rbo_norfair_second_visit_ice_entry
    dw #presets_rbo_norfair_second_visit_ice_escape
    dw #presets_rbo_norfair_second_visit_croc_shaft_moonfall
    dw #presets_rbo_norfair_second_visit_croc
    dw #presets_rbo_norfair_second_visit_grapple_escape
    dw #presets_rbo_norfair_second_visit_lava_dive_grapple_room
    dw #presets_rbo_norfair_second_visit_lava_dive_entry_room
    dw #$0000
    %cm_header("NORFAIR (SECOND VISIT)")

presets_submenu_rbo_lower_norfair:
    dw #presets_rbo_lower_norfair_green_gate_glitch
    dw #presets_rbo_lower_norfair_golden_torizo
    dw #presets_rbo_lower_norfair_energy_refill_escape
    dw #presets_rbo_lower_norfair_writg
    dw #presets_rbo_lower_norfair_kihunter_stairs_down
    dw #presets_rbo_lower_norfair_ninja_pirates
    dw #presets_rbo_lower_norfair_ridley
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_rbo_norfair_escape:
    dw #presets_rbo_norfair_escape_postridley
    dw #presets_rbo_norfair_escape_firefleas_exit_spikesuit
    dw #presets_rbo_norfair_escape_3_muskateers
    dw #presets_rbo_norfair_escape_croc_gate_farm
    dw #$0000
    %cm_header("NORFAIR ESCAPE")

presets_submenu_rbo_maridia:
    dw #presets_rbo_maridia_maridia_entry_spikesuit
    dw #presets_rbo_maridia_aqueduct
    dw #presets_rbo_maridia_botwoon
    dw #presets_rbo_maridia_colosseum
    dw #presets_rbo_maridia_draygon
    dw #presets_rbo_maridia_draygon_escape
    dw #presets_rbo_maridia_plasma_screw_attack_strat
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_rbo_wrecked_ship:
    dw #presets_rbo_wrecked_ship_forgotten_highway
    dw #presets_rbo_wrecked_ship_east_ocean
    dw #presets_rbo_wrecked_ship_wrecked_ship_backdoor_entry
    dw #presets_rbo_wrecked_ship_phantoon
    dw #presets_rbo_wrecked_ship_ws_shaft_up
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_rbo_kraidg4:
    dw #presets_rbo_kraidg4_kihunters_room_down
    dw #presets_rbo_kraidg4_kraid_entry
    dw #presets_rbo_kraidg4_kraid_hallway
    dw #presets_rbo_kraidg4_kraid_hallway_exit
    dw #presets_rbo_kraidg4_kraid_escape
    dw #presets_rbo_kraidg4_kihunters_room_up
    dw #$0000
    %cm_header("KRAID/G4")

presets_submenu_rbo_tourian:
    dw #presets_rbo_tourian_metroids
    dw #presets_rbo_tourian_baby_skip
    dw #presets_rbo_tourian_zeb_skip
    dw #presets_rbo_tourian_escape_room_3
    dw #presets_rbo_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Bombs
presets_rbo_bombs_parlor_down:
    %cm_preset("Parlor Down", #preset_rbo_bombs_parlor_down)

presets_rbo_bombs_pit_room:
    %cm_preset("Pit Room", #preset_rbo_bombs_pit_room)

presets_rbo_bombs_retro_etank:
    %cm_preset("Retro E-Tank", #preset_rbo_bombs_retro_etank)

presets_rbo_bombs_climb:
    %cm_preset("Climb", #preset_rbo_bombs_climb)

presets_rbo_bombs_parlor_up:
    %cm_preset("Parlor Up", #preset_rbo_bombs_parlor_up)

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

presets_rbo_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_rbo_brinstar_big_pink)

presets_rbo_brinstar_red_tower_up:
    %cm_preset("Red Tower (Up)", #preset_rbo_brinstar_red_tower_up)

presets_rbo_brinstar_reverse_hellway:
    %cm_preset("Reverse Hellway", #preset_rbo_brinstar_reverse_hellway)


; Norfair (First Visit)
presets_rbo_norfair_first_visit_norfair_elevator:
    %cm_preset("Norfair Elevator", #preset_rbo_norfair_first_visit_norfair_elevator)

presets_rbo_norfair_first_visit_high_jump:
    %cm_preset("High Jump", #preset_rbo_norfair_first_visit_high_jump)

presets_rbo_norfair_first_visit_first_hell_run:
    %cm_preset("First Hell Run", #preset_rbo_norfair_first_visit_first_hell_run)

presets_rbo_norfair_first_visit_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_rbo_norfair_first_visit_bubble_mountain)

presets_rbo_norfair_first_visit_bat_cave_speed_farm:
    %cm_preset("Bat Cave (Speed Farm)", #preset_rbo_norfair_first_visit_bat_cave_speed_farm)

presets_rbo_norfair_first_visit_wave_escape:
    %cm_preset("Wave Escape", #preset_rbo_norfair_first_visit_wave_escape)


; Brinstar Cleanup
presets_rbo_brinstar_cleanup_alpha_spark:
    %cm_preset("Alpha Spark", #preset_rbo_brinstar_cleanup_alpha_spark)

presets_rbo_brinstar_cleanup_spore_spawn_supers:
    %cm_preset("Spore Spawn Supers", #preset_rbo_brinstar_cleanup_spore_spawn_supers)

presets_rbo_brinstar_cleanup_dachora_room:
    %cm_preset("Dachora Room", #preset_rbo_brinstar_cleanup_dachora_room)

presets_rbo_brinstar_cleanup_green_shaft_down:
    %cm_preset("Green Shaft (Down)", #preset_rbo_brinstar_cleanup_green_shaft_down)

presets_rbo_brinstar_cleanup_etecoon_supers:
    %cm_preset("Etecoon Supers", #preset_rbo_brinstar_cleanup_etecoon_supers)

presets_rbo_brinstar_cleanup_green_shaft_up:
    %cm_preset("Green Shaft (Up)", #preset_rbo_brinstar_cleanup_green_shaft_up)

presets_rbo_brinstar_cleanup_reverse_terminator:
    %cm_preset("Reverse Terminator", #preset_rbo_brinstar_cleanup_reverse_terminator)

presets_rbo_brinstar_cleanup_climb_supers_moonfall:
    %cm_preset("Climb Supers Moonfall", #preset_rbo_brinstar_cleanup_climb_supers_moonfall)

presets_rbo_brinstar_cleanup_retro_brinstar_powerbombs:
    %cm_preset("Retro Brinstar Powerbombs", #preset_rbo_brinstar_cleanup_retro_brinstar_powerbombs)

presets_rbo_brinstar_cleanup_ball_buster:
    %cm_preset("Ball Buster", #preset_rbo_brinstar_cleanup_ball_buster)


; Norfair (Second Visit)
presets_rbo_norfair_second_visit_ice_entry:
    %cm_preset("Ice Entry", #preset_rbo_norfair_second_visit_ice_entry)

presets_rbo_norfair_second_visit_ice_escape:
    %cm_preset("Ice Escape", #preset_rbo_norfair_second_visit_ice_escape)

presets_rbo_norfair_second_visit_croc_shaft_moonfall:
    %cm_preset("Croc Shaft Moonfall", #preset_rbo_norfair_second_visit_croc_shaft_moonfall)

presets_rbo_norfair_second_visit_croc:
    %cm_preset("Croc", #preset_rbo_norfair_second_visit_croc)

presets_rbo_norfair_second_visit_grapple_escape:
    %cm_preset("Grapple Escape", #preset_rbo_norfair_second_visit_grapple_escape)

presets_rbo_norfair_second_visit_lava_dive_grapple_room:
    %cm_preset("Lava Dive (Grapple Room)", #preset_rbo_norfair_second_visit_lava_dive_grapple_room)

presets_rbo_norfair_second_visit_lava_dive_entry_room:
    %cm_preset("Lava Dive (Entry Room)", #preset_rbo_norfair_second_visit_lava_dive_entry_room)


; Lower Norfair
presets_rbo_lower_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_rbo_lower_norfair_green_gate_glitch)

presets_rbo_lower_norfair_golden_torizo:
    %cm_preset("Golden Torizo", #preset_rbo_lower_norfair_golden_torizo)

presets_rbo_lower_norfair_energy_refill_escape:
    %cm_preset("Energy Refill (Escape)", #preset_rbo_lower_norfair_energy_refill_escape)

presets_rbo_lower_norfair_writg:
    %cm_preset("WRITG", #preset_rbo_lower_norfair_writg)

presets_rbo_lower_norfair_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs (Down)", #preset_rbo_lower_norfair_kihunter_stairs_down)

presets_rbo_lower_norfair_ninja_pirates:
    %cm_preset("Ninja Pirates", #preset_rbo_lower_norfair_ninja_pirates)

presets_rbo_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_rbo_lower_norfair_ridley)


; Norfair Escape
presets_rbo_norfair_escape_postridley:
    %cm_preset("Post-Ridley", #preset_rbo_norfair_escape_postridley)

presets_rbo_norfair_escape_firefleas_exit_spikesuit:
    %cm_preset("Firefleas Exit (Spikesuit)", #preset_rbo_norfair_escape_firefleas_exit_spikesuit)

presets_rbo_norfair_escape_3_muskateers:
    %cm_preset("3 Muskateers", #preset_rbo_norfair_escape_3_muskateers)

presets_rbo_norfair_escape_croc_gate_farm:
    %cm_preset("Croc Gate Farm", #preset_rbo_norfair_escape_croc_gate_farm)


; Maridia
presets_rbo_maridia_maridia_entry_spikesuit:
    %cm_preset("Maridia Entry (Spikesuit)", #preset_rbo_maridia_maridia_entry_spikesuit)

presets_rbo_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_rbo_maridia_aqueduct)

presets_rbo_maridia_botwoon:
    %cm_preset("Botwoon", #preset_rbo_maridia_botwoon)

presets_rbo_maridia_colosseum:
    %cm_preset("Colosseum", #preset_rbo_maridia_colosseum)

presets_rbo_maridia_draygon:
    %cm_preset("Draygon", #preset_rbo_maridia_draygon)

presets_rbo_maridia_draygon_escape:
    %cm_preset("Draygon Escape", #preset_rbo_maridia_draygon_escape)

presets_rbo_maridia_plasma_screw_attack_strat:
    %cm_preset("Plasma (Screw Attack Strat)", #preset_rbo_maridia_plasma_screw_attack_strat)


; Wrecked Ship
presets_rbo_wrecked_ship_forgotten_highway:
    %cm_preset("Forgotten Highway", #preset_rbo_wrecked_ship_forgotten_highway)

presets_rbo_wrecked_ship_east_ocean:
    %cm_preset("East Ocean", #preset_rbo_wrecked_ship_east_ocean)

presets_rbo_wrecked_ship_wrecked_ship_backdoor_entry:
    %cm_preset("Wrecked Ship Backdoor Entry", #preset_rbo_wrecked_ship_wrecked_ship_backdoor_entry)

presets_rbo_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_rbo_wrecked_ship_phantoon)

presets_rbo_wrecked_ship_ws_shaft_up:
    %cm_preset("WS Shaft (Up)", #preset_rbo_wrecked_ship_ws_shaft_up)


; Kraid/G4
presets_rbo_kraidg4_kihunters_room_down:
    %cm_preset("Kihunters Room (Down)", #preset_rbo_kraidg4_kihunters_room_down)

presets_rbo_kraidg4_kraid_entry:
    %cm_preset("Kraid Entry", #preset_rbo_kraidg4_kraid_entry)

presets_rbo_kraidg4_kraid_hallway:
    %cm_preset("Kraid Hallway", #preset_rbo_kraidg4_kraid_hallway)

presets_rbo_kraidg4_kraid_hallway_exit:
    %cm_preset("Kraid Hallway (Exit)", #preset_rbo_kraidg4_kraid_hallway_exit)

presets_rbo_kraidg4_kraid_escape:
    %cm_preset("Kraid Escape", #preset_rbo_kraidg4_kraid_escape)

presets_rbo_kraidg4_kihunters_room_up:
    %cm_preset("Kihunters Room (Up)", #preset_rbo_kraidg4_kihunters_room_up)


; Tourian
presets_rbo_tourian_metroids:
    %cm_preset("Metroids", #preset_rbo_tourian_metroids)

presets_rbo_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_rbo_tourian_baby_skip)

presets_rbo_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_rbo_tourian_zeb_skip)

presets_rbo_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_rbo_tourian_escape_room_3)

presets_rbo_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_rbo_tourian_escape_parlor)


