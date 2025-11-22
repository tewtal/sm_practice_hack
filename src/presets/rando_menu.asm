PresetsMenuRando:
    dw #presets_goto_rando_crateria
    dw #presets_goto_rando_gauntlet
    dw #presets_goto_rando_green_brinstar
    dw #presets_goto_rando_red_brinstar
    dw #presets_goto_rando_crocomire
    dw #presets_goto_rando_four_bosses
    dw #presets_goto_rando_upper_norfair
    dw #presets_goto_rando_lower_norfair
    dw #presets_goto_rando_west_maridia
    dw #presets_goto_rando_east_maridia
    dw #presets_goto_rando_wrecked_ship
    dw #presets_goto_rando_tourian
    dw #$0000
    %cm_header("PRESETS FOR RANDOMIZERS")

presets_goto_rando_crateria:
    %cm_submenu("Crateria", #presets_submenu_rando_crateria)

presets_goto_rando_gauntlet:
    %cm_submenu("Gauntlet", #presets_submenu_rando_gauntlet)

presets_goto_rando_green_brinstar:
    %cm_submenu("Green Brinstar", #presets_submenu_rando_green_brinstar)

presets_goto_rando_red_brinstar:
    %cm_submenu("Red Brinstar", #presets_submenu_rando_red_brinstar)

presets_goto_rando_crocomire:
    %cm_submenu("Crocomire", #presets_submenu_rando_crocomire)

presets_goto_rando_four_bosses:
    %cm_submenu("Four Bosses", #presets_submenu_rando_four_bosses)

presets_goto_rando_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_rando_upper_norfair)

presets_goto_rando_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_rando_lower_norfair)

presets_goto_rando_west_maridia:
    %cm_submenu("West Maridia", #presets_submenu_rando_west_maridia)

presets_goto_rando_east_maridia:
    %cm_submenu("East Maridia", #presets_submenu_rando_east_maridia)

presets_goto_rando_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_rando_wrecked_ship)

presets_goto_rando_tourian:
    %cm_submenu("Tourian", #presets_submenu_rando_tourian)

presets_submenu_rando_crateria:
    dw #presets_rando_crateria_ceiling_morph
    dw #presets_rando_crateria_taco_tank
    dw #presets_rando_crateria_meme_route
    dw #presets_rando_crateria_billy_mays
    dw #presets_rando_crateria_billy_mays_return
    dw #presets_rando_crateria_climb_short_charge
    dw #presets_rando_crateria_old_mb_short_charge
    dw #presets_rando_crateria_old_mb_screw_attack
    dw #presets_rando_crateria_climb_hijump_boots
    dw #presets_rando_crateria_climb_supers
    dw #presets_rando_crateria_bomb_torizo_speed_escape
    dw #presets_rando_crateria_alcatraz_hijump_boots
    dw #presets_rando_crateria_ibj_to_power_bombs
    dw #presets_rando_crateria_ibj_with_hijump_boots
    dw #presets_rando_crateria_moat_cwj
    dw #presets_rando_crateria_moat_hbj
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_rando_gauntlet:
    dw #presets_rando_gauntlet_entry
    dw #presets_rando_gauntlet_entry_with_hijump
    dw #presets_rando_gauntlet_entry_with_speed_booster
    dw #presets_rando_gauntlet_first_half
    dw #presets_rando_gauntlet_first_half_with_hijump
    dw #presets_rando_gauntlet_second_half
    dw #presets_rando_gauntlet_second_half_with_hijump
    dw #presets_rando_gauntlet_halfway_return
    dw #presets_rando_gauntlet_halfway_with_hijump
    dw #presets_rando_gauntlet_quickdrops
    dw #$0000
    %cm_header("GAUNTLET")

presets_submenu_rando_green_brinstar:
    dw #presets_rando_green_brinstar_popeil_missiles_with_screw
    dw #presets_rando_green_brinstar_etecoon_supers
    dw #presets_rando_green_brinstar_over_dachora_pit
    dw #presets_rando_green_brinstar_spore_spawn_fight
    dw #presets_rando_green_brinstar_spore_spawn_backdoor
    dw #presets_rando_green_brinstar_wave_gate_glitch
    dw #presets_rando_green_brinstar_wave_gate_with_hijump
    dw #presets_rando_green_brinstar_gravless_speedway
    dw #presets_rando_green_brinstar_blue_gate_glitch
    dw #$0000
    %cm_header("GREEN BRINSTAR")

presets_submenu_rando_red_brinstar:
    dw #presets_rando_red_brinstar_hero_shot
    dw #presets_rando_red_brinstar_alpha_power_bombs
    dw #presets_rando_red_brinstar_beta_power_bombs
    dw #presets_rando_red_brinstar_early_xray_0tank
    dw #presets_rando_red_brinstar_early_xray_2tank
    dw #presets_rando_red_brinstar_xray_return_0tank
    dw #presets_rando_red_brinstar_xray_return_2tank
    dw #presets_rando_red_brinstar_breaking_the_tube
    dw #presets_rando_red_brinstar_tube_jump_from_left
    dw #presets_rando_red_brinstar_left_jump_with_speed
    dw #presets_rando_red_brinstar_tube_jump_from_right
    dw #presets_rando_red_brinstar_right_jump_with_speed
    dw #$0000
    %cm_header("RED BRINSTAR")

presets_submenu_rando_crocomire:
    dw #presets_rando_crocomire_low_ammo_fight
    dw #presets_rando_crocomire_fight_with_charge
    dw #presets_rando_crocomire_crocomire_etank
    dw #presets_rando_crocomire_etank_return
    dw #presets_rando_crocomire_ripper_dboost
    dw #presets_rando_crocomire_green_gate_glitch
    dw #presets_rando_crocomire_jump_room_short_charge
    dw #presets_rando_crocomire_jump_room_ibj
    dw #presets_rando_crocomire_ibj_with_hijump_boots
    dw #$0000
    %cm_header("CROCOMIRE")

presets_submenu_rando_four_bosses:
    dw #presets_rando_four_bosses_kraid_2_3
    dw #presets_rando_four_bosses_kraid_all_missiles
    dw #presets_rando_four_bosses_phantoon_0tank
    dw #presets_rando_four_bosses_phantoon_5_missiles
    dw #presets_rando_four_bosses_suitless_draygon
    dw #presets_rando_four_bosses_grapple_escape_hijump
    dw #presets_rando_four_bosses_grapple_escape_hijumpless
    dw #presets_rando_four_bosses_double_springball_jump
    dw #presets_rando_four_bosses_xray_climb
    dw #presets_rando_four_bosses_ridley_30_25_5_ammo
    dw #presets_rando_four_bosses_ridley_10_20_15_ammo
    dw #presets_rando_four_bosses_ridley_low_hp
    dw #presets_rando_four_bosses_ridley_low_ice
    dw #presets_rando_four_bosses_ridley_suitless
    dw #$0000
    %cm_header("FOUR BOSSES")

presets_submenu_rando_upper_norfair:
    dw #presets_rando_upper_norfair_ice_hellrun
    dw #presets_rando_upper_norfair_ice_return
    dw #presets_rando_upper_norfair_crumble_shaft
    dw #presets_rando_upper_norfair_crumble_shaft_up
    dw #presets_rando_upper_norfair_cathedral_2tank_hijump
    dw #presets_rando_upper_norfair_cathedral_3tank
    dw #presets_rando_upper_norfair_mountain_to_kronic
    dw #presets_rando_upper_norfair_kronic_to_mountain
    dw #presets_rando_upper_norfair_speedless_speedway
    dw #presets_rando_upper_norfair_crocomire_escape
    dw #presets_rando_upper_norfair_bubble_mountain_up
    dw #presets_rando_upper_norfair_bubble_mountain_dboost
    dw #presets_rando_upper_norfair_norfair_reserve_2tank
    dw #presets_rando_upper_norfair_norfair_reserve_room
    dw #presets_rando_upper_norfair_norfair_reserve_return
    dw #presets_rando_upper_norfair_bat_cave_farm
    dw #presets_rando_upper_norfair_speed_booster_hellrun
    dw #presets_rando_upper_norfair_speed_booster_return
    dw #presets_rando_upper_norfair_wave_beam_hellrun
    dw #presets_rando_upper_norfair_wave_beam_return
    dw #presets_rando_upper_norfair_from_ln_hellrun
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_rando_lower_norfair:
    dw #presets_rando_lower_norfair_lava_spark
    dw #presets_rando_lower_norfair_lava_dive_with_hijump
    dw #presets_rando_lower_norfair_lava_dive_with_gravity
    dw #presets_rando_lower_norfair_lava_dive
    dw #presets_rando_lower_norfair_fast_pillars
    dw #presets_rando_lower_norfair_green_gate_glitch
    dw #presets_rando_lower_norfair_screw_attack_escape
    dw #presets_rando_lower_norfair_worst_room_in_the_game
    dw #presets_rando_lower_norfair_metal_pirates
    dw #presets_rando_lower_norfair_reverse_amphitheatre
    dw #presets_rando_lower_norfair_three_musketeers
    dw #presets_rando_lower_norfair_back_to_back_hellrun
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_rando_west_maridia:
    dw #presets_rando_west_maridia_crab_hole_gravity_jump
    dw #presets_rando_west_maridia_crab_hole_double_sbj
    dw #presets_rando_west_maridia_gate_glitch_suitless
    dw #presets_rando_west_maridia_mainstreet_suitless
    dw #presets_rando_west_maridia_mainstreet_short_charge
    dw #presets_rando_west_maridia_mt_everest_suitless
    dw #presets_rando_west_maridia_mt_everest_gravity_jump
    dw #presets_rando_west_maridia_mt_everest_1st_wall_jump
    dw #presets_rando_west_maridia_mt_everest_2nd_wall_jump
    dw #presets_rando_west_maridia_crab_shaft_suitless
    dw #presets_rando_west_maridia_crab_shaft_entry
    dw #presets_rando_west_maridia_mama_turtle_unmorph_entry
    dw #presets_rando_west_maridia_mama_turtle_double_sbj
    dw #presets_rando_west_maridia_mama_turtle_spark
    dw #presets_rando_west_maridia_mama_turtle_ibj
    dw #$0000
    %cm_header("WEST MARIDIA")

presets_submenu_rando_east_maridia:
    dw #presets_rando_east_maridia_early_suitless_escape
    dw #presets_rando_east_maridia_suitless_aqueduct
    dw #presets_rando_east_maridia_snail_clip
    dw #presets_rando_east_maridia_mochtroid_ice_clip
    dw #presets_rando_east_maridia_bombs_cf_clip
    dw #presets_rando_east_maridia_suitless_cf_clip
    dw #presets_rando_east_maridia_suitless_jump_morphs
    dw #presets_rando_east_maridia_suitless_halfie_climb
    dw #presets_rando_east_maridia_suitless_colosseum
    dw #presets_rando_east_maridia_suitless_return
    dw #presets_rando_east_maridia_suitless_cac_alley
    dw #presets_rando_east_maridia_plasma_speed_booster
    dw #presets_rando_east_maridia_plasma_pseudoscrew
    dw #presets_rando_east_maridia_shaktool_hijump_entry
    dw #presets_rando_east_maridia_shaktool_suitless_entry
    dw #presets_rando_east_maridia_shaktool_puyo_ice_clip
    dw #presets_rando_east_maridia_shaktool_cf_clip
    dw #$0000
    %cm_header("EAST MARIDIA")

presets_submenu_rando_wrecked_ship:
    dw #presets_rando_wrecked_ship_east_ocean_with_springball
    dw #presets_rando_wrecked_ship_east_ocean_with_ice
    dw #presets_rando_wrecked_ship_east_ocean_return
    dw #presets_rando_wrecked_ship_wrecked_ship_etank
    dw #presets_rando_wrecked_ship_spiky_room_to_main_shaft
    dw #presets_rando_wrecked_ship_spiky_room_to_east_ocean
    dw #presets_rando_wrecked_ship_sponge_bath
    dw #presets_rando_wrecked_ship_attic
    dw #presets_rando_wrecked_ship_sky_missiles
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_rando_tourian:
    dw #presets_rando_tourian_metroids_1
    dw #presets_rando_tourian_metroids_2
    dw #presets_rando_tourian_metroids_3
    dw #presets_rando_tourian_metroids_4
    dw #presets_rando_tourian_blue_hoppers
    dw #presets_rando_tourian_baby_skip
    dw #presets_rando_tourian_after_baby_skip
    dw #presets_rando_tourian_ice_zeb_skip
    dw #presets_rando_tourian_speed_zeb_skip
    dw #presets_rando_tourian_mother_brain_all_missiles
    dw #presets_rando_tourian_mother_brain_all_supers
    dw #presets_rando_tourian_zebes_escape
    dw #presets_rando_tourian_escape_room_3
    dw #presets_rando_tourian_escape_room_4
    dw #presets_rando_tourian_escape_climb
    dw #presets_rando_tourian_escape_climb_with_hijump
    dw #$0000
    %cm_header("TOURIAN")


; Crateria
presets_rando_crateria_ceiling_morph:
    %cm_preset("Ceiling Morph", #preset_names_ceiling_morph, #preset_rando_crateria_ceiling_morph)

presets_rando_crateria_taco_tank:
    %cm_preset("Taco Tank", #preset_names_taco_tank, #preset_rando_crateria_taco_tank)

presets_rando_crateria_meme_route:
    %cm_preset("Meme Route", #preset_names_meme_route, #preset_rando_crateria_meme_route)

presets_rando_crateria_billy_mays:
    %cm_preset("Billy Mays", #preset_names_billy_mays, #preset_rando_crateria_billy_mays)

presets_rando_crateria_billy_mays_return:
    %cm_preset("Billy Mays Return", #preset_names_billy_mays_return, #preset_rando_crateria_billy_mays_return)

presets_rando_crateria_climb_short_charge:
    %cm_preset("Climb Short Charge", #preset_names_climb_short_charge, #preset_rando_crateria_climb_short_charge)

presets_rando_crateria_old_mb_short_charge:
    %cm_preset("Old MB Short Charge", #preset_names_old_mb_short_charge, #preset_rando_crateria_old_mb_short_charge)

presets_rando_crateria_old_mb_screw_attack:
    %cm_preset("Old MB Screw Attack", #preset_names_old_mb_screw_attack, #preset_rando_crateria_old_mb_screw_attack)

presets_rando_crateria_climb_hijump_boots:
    %cm_preset("Climb Hi-Jump Boots", #preset_names_climb_hijump_boots, #preset_rando_crateria_climb_hijump_boots)

presets_rando_crateria_climb_supers:
    %cm_preset("Climb Supers", #preset_names_climb_supers, #preset_rando_crateria_climb_supers)

presets_rando_crateria_bomb_torizo_speed_escape:
    %cm_preset("Bomb Torizo Speed Escape", #preset_names_bomb_torizo_speed_escape, #preset_rando_crateria_bomb_torizo_speed_escape)

presets_rando_crateria_alcatraz_hijump_boots:
    %cm_preset("Alcatraz Hi-Jump Boots", #preset_names_alcatraz_hijump_boots, #preset_rando_crateria_alcatraz_hijump_boots)

presets_rando_crateria_ibj_to_power_bombs:
    %cm_preset("IBJ to Power Bombs", #preset_names_ibj_to_power_bombs, #preset_rando_crateria_ibj_to_power_bombs)

presets_rando_crateria_ibj_with_hijump_boots:
    %cm_preset("IBJ with Hi-Jump Boots", #preset_names_ibj_with_hijump_boots, #preset_rando_crateria_ibj_with_hijump_boots)

presets_rando_crateria_moat_cwj:
    %cm_preset("Moat CWJ", #preset_names_moat_cwj, #preset_rando_crateria_moat_cwj)

presets_rando_crateria_moat_hbj:
    %cm_preset("Moat HBJ", #preset_names_moat_hbj, #preset_rando_crateria_moat_hbj)


; Gauntlet
presets_rando_gauntlet_entry:
    %cm_preset("Entry", #preset_names_entry, #preset_rando_gauntlet_entry)

presets_rando_gauntlet_entry_with_hijump:
    %cm_preset("Entry with Hi-Jump", #preset_names_entry_with_hijump, #preset_rando_gauntlet_entry_with_hijump)

presets_rando_gauntlet_entry_with_speed_booster:
    %cm_preset("Entry with Speed Booster", #preset_names_entry_with_speed_booster, #preset_rando_gauntlet_entry_with_speed_booster)

presets_rando_gauntlet_first_half:
    %cm_preset("First Half", #preset_names_first_half, #preset_rando_gauntlet_first_half)

presets_rando_gauntlet_first_half_with_hijump:
    %cm_preset("First Half with Hi-Jump", #preset_names_first_half_with_hijump, #preset_rando_gauntlet_first_half_with_hijump)

presets_rando_gauntlet_second_half:
    %cm_preset("Second Half", #preset_names_second_half, #preset_rando_gauntlet_second_half)

presets_rando_gauntlet_second_half_with_hijump:
    %cm_preset("Second Half with Hi-Jump", #preset_names_second_half_with_hijump, #preset_rando_gauntlet_second_half_with_hijump)

presets_rando_gauntlet_halfway_return:
    %cm_preset("Halfway Return", #preset_names_halfway_return, #preset_rando_gauntlet_halfway_return)

presets_rando_gauntlet_halfway_with_hijump:
    %cm_preset("Halfway with Hi-Jump", #preset_names_halfway_with_hijump, #preset_rando_gauntlet_halfway_with_hijump)

presets_rando_gauntlet_quickdrops:
    %cm_preset("Quickdrops", #preset_names_quickdrops, #preset_rando_gauntlet_quickdrops)


; Green Brinstar
presets_rando_green_brinstar_popeil_missiles_with_screw:
    %cm_preset("Popeil Missiles with Screw", #preset_names_popeil_missiles_with_screw, #preset_rando_green_brinstar_popeil_missiles_with_screw)

presets_rando_green_brinstar_etecoon_supers:
    %cm_preset("Etecoon Supers", #preset_names_etecoon_supers, #preset_rando_green_brinstar_etecoon_supers)

presets_rando_green_brinstar_over_dachora_pit:
    %cm_preset("Over Dachora Pit", #preset_names_over_dachora_pit, #preset_rando_green_brinstar_over_dachora_pit)

presets_rando_green_brinstar_spore_spawn_fight:
    %cm_preset("Spore Spawn Fight", #preset_names_spore_spawn_fight, #preset_rando_green_brinstar_spore_spawn_fight)

presets_rando_green_brinstar_spore_spawn_backdoor:
    %cm_preset("Spore Spawn Backdoor", #preset_names_spore_spawn_backdoor, #preset_rando_green_brinstar_spore_spawn_backdoor)

presets_rando_green_brinstar_wave_gate_glitch:
    %cm_preset("Wave Gate Glitch", #preset_names_wave_gate_glitch, #preset_rando_green_brinstar_wave_gate_glitch)

presets_rando_green_brinstar_wave_gate_with_hijump:
    %cm_preset("Wave Gate with Hi-Jump", #preset_names_wave_gate_with_hijump, #preset_rando_green_brinstar_wave_gate_with_hijump)

presets_rando_green_brinstar_gravless_speedway:
    %cm_preset("Gravless Speedway", #preset_names_gravless_speedway, #preset_rando_green_brinstar_gravless_speedway)

presets_rando_green_brinstar_blue_gate_glitch:
    %cm_preset("Blue Gate Glitch", #preset_names_blue_gate_glitch, #preset_rando_green_brinstar_blue_gate_glitch)


; Red Brinstar
presets_rando_red_brinstar_hero_shot:
    %cm_preset("Hero Shot", #preset_names_hero_shot, #preset_rando_red_brinstar_hero_shot)

presets_rando_red_brinstar_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_names_alpha_power_bombs, #preset_rando_red_brinstar_alpha_power_bombs)

presets_rando_red_brinstar_beta_power_bombs:
    %cm_preset("Beta Power Bombs", #preset_names_beta_power_bombs, #preset_rando_red_brinstar_beta_power_bombs)

presets_rando_red_brinstar_early_xray_0tank:
    %cm_preset("Early X-Ray 0-Tank", #preset_names_early_xray_0tank, #preset_rando_red_brinstar_early_xray_0tank)

presets_rando_red_brinstar_early_xray_2tank:
    %cm_preset("Early X-Ray 2-Tank", #preset_names_early_xray_2tank, #preset_rando_red_brinstar_early_xray_2tank)

presets_rando_red_brinstar_xray_return_0tank:
    %cm_preset("X-Ray Return 0-Tank", #preset_names_xray_return_0tank, #preset_rando_red_brinstar_xray_return_0tank)

presets_rando_red_brinstar_xray_return_2tank:
    %cm_preset("X-Ray Return 2-Tank", #preset_names_xray_return_2tank, #preset_rando_red_brinstar_xray_return_2tank)

presets_rando_red_brinstar_breaking_the_tube:
    %cm_preset("Breaking The Tube", #preset_names_breaking_the_tube, #preset_rando_red_brinstar_breaking_the_tube)

presets_rando_red_brinstar_tube_jump_from_left:
    %cm_preset("Tube Jump From Left", #preset_names_tube_jump_from_left, #preset_rando_red_brinstar_tube_jump_from_left)

presets_rando_red_brinstar_left_jump_with_speed:
    %cm_preset("Left Jump with Speed", #preset_names_left_jump_with_speed, #preset_rando_red_brinstar_left_jump_with_speed)

presets_rando_red_brinstar_tube_jump_from_right:
    %cm_preset("Tube Jump From Right", #preset_names_tube_jump_from_right, #preset_rando_red_brinstar_tube_jump_from_right)

presets_rando_red_brinstar_right_jump_with_speed:
    %cm_preset("Right Jump with Speed", #preset_names_right_jump_with_speed, #preset_rando_red_brinstar_right_jump_with_speed)


; Crocomire
presets_rando_crocomire_low_ammo_fight:
    %cm_preset("Low Ammo Fight", #preset_names_low_ammo_fight, #preset_rando_crocomire_low_ammo_fight)

presets_rando_crocomire_fight_with_charge:
    %cm_preset("Fight With Charge", #preset_names_fight_with_charge, #preset_rando_crocomire_fight_with_charge)

presets_rando_crocomire_crocomire_etank:
    %cm_preset("Crocomire E-Tank", #preset_names_crocomire_etank, #preset_rando_crocomire_crocomire_etank)

presets_rando_crocomire_etank_return:
    %cm_preset("E-Tank Return", #preset_names_etank_return, #preset_rando_crocomire_etank_return)

presets_rando_crocomire_ripper_dboost:
    %cm_preset("Ripper D-Boost", #preset_names_ripper_dboost, #preset_rando_crocomire_ripper_dboost)

presets_rando_crocomire_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_names_green_gate_glitch, #preset_rando_crocomire_green_gate_glitch)

presets_rando_crocomire_jump_room_short_charge:
    %cm_preset("Jump Room Short Charge", #preset_names_jump_room_short_charge, #preset_rando_crocomire_jump_room_short_charge)

presets_rando_crocomire_jump_room_ibj:
    %cm_preset("Jump Room IBJ", #preset_names_jump_room_ibj, #preset_rando_crocomire_jump_room_ibj)

presets_rando_crocomire_ibj_with_hijump_boots:
    %cm_preset("IBJ with Hi-Jump Boots", #preset_names_ibj_with_hijump_boots, #preset_rando_crocomire_ibj_with_hijump_boots)


; Four Bosses
presets_rando_four_bosses_kraid_2_3:
    %cm_preset("Kraid 2+3", #preset_names_kraid_2_3, #preset_rando_four_bosses_kraid_2_3)

presets_rando_four_bosses_kraid_all_missiles:
    %cm_preset("Kraid All Missiles", #preset_names_kraid_all_missiles, #preset_rando_four_bosses_kraid_all_missiles)

presets_rando_four_bosses_phantoon_0tank:
    %cm_preset("Phantoon 0-Tank", #preset_names_phantoon_0tank, #preset_rando_four_bosses_phantoon_0tank)

presets_rando_four_bosses_phantoon_5_missiles:
    %cm_preset("Phantoon 5 Missiles", #preset_names_phantoon_5_missiles, #preset_rando_four_bosses_phantoon_5_missiles)

presets_rando_four_bosses_suitless_draygon:
    %cm_preset("Suitless Draygon", #preset_names_suitless_draygon, #preset_rando_four_bosses_suitless_draygon)

presets_rando_four_bosses_grapple_escape_hijump:
    %cm_preset("Grapple Escape Hi-Jump", #preset_names_grapple_escape_hijump, #preset_rando_four_bosses_grapple_escape_hijump)

presets_rando_four_bosses_grapple_escape_hijumpless:
    %cm_preset("Grapple Escape Hi-Jumpless", #preset_names_grapple_escape_hijumpless, #preset_rando_four_bosses_grapple_escape_hijumpless)

presets_rando_four_bosses_double_springball_jump:
    %cm_preset("Double Springball Jump", #preset_names_double_springball_jump, #preset_rando_four_bosses_double_springball_jump)

presets_rando_four_bosses_xray_climb:
    %cm_preset("X-Ray Climb", #preset_names_xray_climb, #preset_rando_four_bosses_xray_climb)

presets_rando_four_bosses_ridley_30_25_5_ammo:
    %cm_preset("Ridley 30+25+5 Ammo", #preset_names_ridley_30_25_5_ammo, #preset_rando_four_bosses_ridley_30_25_5_ammo)

presets_rando_four_bosses_ridley_10_20_15_ammo:
    %cm_preset("Ridley 10+20+15 Ammo", #preset_names_ridley_10_20_15_ammo, #preset_rando_four_bosses_ridley_10_20_15_ammo)

presets_rando_four_bosses_ridley_low_hp:
    %cm_preset("Ridley Low HP", #preset_names_ridley_low_hp, #preset_rando_four_bosses_ridley_low_hp)

presets_rando_four_bosses_ridley_low_ice:
    %cm_preset("Ridley Low Ice", #preset_names_ridley_low_ice, #preset_rando_four_bosses_ridley_low_ice)

presets_rando_four_bosses_ridley_suitless:
    %cm_preset("Ridley Suitless", #preset_names_ridley_suitless, #preset_rando_four_bosses_ridley_suitless)


; Upper Norfair
presets_rando_upper_norfair_ice_hellrun:
    %cm_preset("Ice Hellrun", #preset_names_ice_hellrun, #preset_rando_upper_norfair_ice_hellrun)

presets_rando_upper_norfair_ice_return:
    %cm_preset("Ice Return", #preset_names_ice_return, #preset_rando_upper_norfair_ice_return)

presets_rando_upper_norfair_crumble_shaft:
    %cm_preset("Crumble Shaft", #preset_names_crumble_shaft, #preset_rando_upper_norfair_crumble_shaft)

presets_rando_upper_norfair_crumble_shaft_up:
    %cm_preset("Crumble Shaft Up", #preset_names_crumble_shaft_up, #preset_rando_upper_norfair_crumble_shaft_up)

presets_rando_upper_norfair_cathedral_2tank_hijump:
    %cm_preset("Cathedral 2-Tank Hi-Jump", #preset_names_cathedral_2tank_hijump, #preset_rando_upper_norfair_cathedral_2tank_hijump)

presets_rando_upper_norfair_cathedral_3tank:
    %cm_preset("Cathedral 3-Tank", #preset_names_cathedral_3tank, #preset_rando_upper_norfair_cathedral_3tank)

presets_rando_upper_norfair_mountain_to_kronic:
    %cm_preset("Mountain To Kronic", #preset_names_mountain_to_kronic, #preset_rando_upper_norfair_mountain_to_kronic)

presets_rando_upper_norfair_kronic_to_mountain:
    %cm_preset("Kronic To Mountain", #preset_names_kronic_to_mountain, #preset_rando_upper_norfair_kronic_to_mountain)

presets_rando_upper_norfair_speedless_speedway:
    %cm_preset("Speedless Speedway", #preset_names_speedless_speedway, #preset_rando_upper_norfair_speedless_speedway)

presets_rando_upper_norfair_crocomire_escape:
    %cm_preset("Crocomire Escape", #preset_names_crocomire_escape, #preset_rando_upper_norfair_crocomire_escape)

presets_rando_upper_norfair_bubble_mountain_up:
    %cm_preset("Bubble Mountain Up", #preset_names_bubble_mountain_up, #preset_rando_upper_norfair_bubble_mountain_up)

presets_rando_upper_norfair_bubble_mountain_dboost:
    %cm_preset("Bubble Mountain D-Boost", #preset_names_bubble_mountain_dboost, #preset_rando_upper_norfair_bubble_mountain_dboost)

presets_rando_upper_norfair_norfair_reserve_2tank:
    %cm_preset("Norfair Reserve 2-Tank", #preset_names_norfair_reserve_2tank, #preset_rando_upper_norfair_norfair_reserve_2tank)

presets_rando_upper_norfair_norfair_reserve_room:
    %cm_preset("Norfair Reserve Room", #preset_names_norfair_reserve_room, #preset_rando_upper_norfair_norfair_reserve_room)

presets_rando_upper_norfair_norfair_reserve_return:
    %cm_preset("Norfair Reserve Return", #preset_names_norfair_reserve_return, #preset_rando_upper_norfair_norfair_reserve_return)

presets_rando_upper_norfair_bat_cave_farm:
    %cm_preset("Bat Cave Farm", #preset_names_bat_cave_farm, #preset_rando_upper_norfair_bat_cave_farm)

presets_rando_upper_norfair_speed_booster_hellrun:
    %cm_preset("Speed Booster Hellrun", #preset_names_speed_booster_hellrun, #preset_rando_upper_norfair_speed_booster_hellrun)

presets_rando_upper_norfair_speed_booster_return:
    %cm_preset("Speed Booster Return", #preset_names_speed_booster_return, #preset_rando_upper_norfair_speed_booster_return)

presets_rando_upper_norfair_wave_beam_hellrun:
    %cm_preset("Wave Beam Hellrun", #preset_names_wave_beam_hellrun, #preset_rando_upper_norfair_wave_beam_hellrun)

presets_rando_upper_norfair_wave_beam_return:
    %cm_preset("Wave Beam Return", #preset_names_wave_beam_return, #preset_rando_upper_norfair_wave_beam_return)

presets_rando_upper_norfair_from_ln_hellrun:
    %cm_preset("From LN Hellrun", #preset_names_from_ln_hellrun, #preset_rando_upper_norfair_from_ln_hellrun)


; Lower Norfair
presets_rando_lower_norfair_lava_spark:
    %cm_preset("Lava Spark", #preset_names_lava_spark, #preset_rando_lower_norfair_lava_spark)

presets_rando_lower_norfair_lava_dive_with_hijump:
    %cm_preset("Lava Dive with Hi-Jump", #preset_names_lava_dive_with_hijump, #preset_rando_lower_norfair_lava_dive_with_hijump)

presets_rando_lower_norfair_lava_dive_with_gravity:
    %cm_preset("Lava Dive with Gravity", #preset_names_lava_dive_with_gravity, #preset_rando_lower_norfair_lava_dive_with_gravity)

presets_rando_lower_norfair_lava_dive:
    %cm_preset("Lava Dive", #preset_names_lava_dive, #preset_rando_lower_norfair_lava_dive)

presets_rando_lower_norfair_fast_pillars:
    %cm_preset("Fast Pillars", #preset_names_fast_pillars, #preset_rando_lower_norfair_fast_pillars)

presets_rando_lower_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_names_green_gate_glitch, #preset_rando_lower_norfair_green_gate_glitch)

presets_rando_lower_norfair_screw_attack_escape:
    %cm_preset("Screw Attack Escape", #preset_names_screw_attack_escape, #preset_rando_lower_norfair_screw_attack_escape)

presets_rando_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_names_worst_room_in_the_game, #preset_rando_lower_norfair_worst_room_in_the_game)

presets_rando_lower_norfair_metal_pirates:
    %cm_preset("Metal Pirates", #preset_names_metal_pirates, #preset_rando_lower_norfair_metal_pirates)

presets_rando_lower_norfair_reverse_amphitheatre:
    %cm_preset("Reverse Amphitheatre", #preset_names_reverse_amphitheatre, #preset_rando_lower_norfair_reverse_amphitheatre)

presets_rando_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_names_three_musketeers, #preset_rando_lower_norfair_three_musketeers)

presets_rando_lower_norfair_back_to_back_hellrun:
    %cm_preset("Back To Back Hellrun", #preset_names_back_to_back_hellrun, #preset_rando_lower_norfair_back_to_back_hellrun)


; West Maridia
presets_rando_west_maridia_crab_hole_gravity_jump:
    %cm_preset("Crab Hole Gravity Jump", #preset_names_crab_hole_gravity_jump, #preset_rando_west_maridia_crab_hole_gravity_jump)

presets_rando_west_maridia_crab_hole_double_sbj:
    %cm_preset("Crab Hole Double SBJ", #preset_names_crab_hole_double_sbj, #preset_rando_west_maridia_crab_hole_double_sbj)

presets_rando_west_maridia_gate_glitch_suitless:
    %cm_preset("Gate Glitch Suitless", #preset_names_gate_glitch_suitless, #preset_rando_west_maridia_gate_glitch_suitless)

presets_rando_west_maridia_mainstreet_suitless:
    %cm_preset("Mainstreet Suitless", #preset_names_mainstreet_suitless, #preset_rando_west_maridia_mainstreet_suitless)

presets_rando_west_maridia_mainstreet_short_charge:
    %cm_preset("Mainstreet Short Charge", #preset_names_mainstreet_short_charge, #preset_rando_west_maridia_mainstreet_short_charge)

presets_rando_west_maridia_mt_everest_suitless:
    %cm_preset("Mt. Everest Suitless", #preset_names_mt_everest_suitless, #preset_rando_west_maridia_mt_everest_suitless)

presets_rando_west_maridia_mt_everest_gravity_jump:
    %cm_preset("Mt. Everest Gravity Jump", #preset_names_mt_everest_gravity_jump, #preset_rando_west_maridia_mt_everest_gravity_jump)

presets_rando_west_maridia_mt_everest_1st_wall_jump:
    %cm_preset("Mt. Everest 1st Wall Jump", #preset_names_mt_everest_1st_wall_jump, #preset_rando_west_maridia_mt_everest_1st_wall_jump)

presets_rando_west_maridia_mt_everest_2nd_wall_jump:
    %cm_preset("Mt. Everest 2nd Wall Jump", #preset_names_mt_everest_2nd_wall_jump, #preset_rando_west_maridia_mt_everest_2nd_wall_jump)

presets_rando_west_maridia_crab_shaft_suitless:
    %cm_preset("Crab Shaft Suitless", #preset_names_crab_shaft_suitless, #preset_rando_west_maridia_crab_shaft_suitless)

presets_rando_west_maridia_crab_shaft_entry:
    %cm_preset("Crab Shaft Entry", #preset_names_crab_shaft_entry, #preset_rando_west_maridia_crab_shaft_entry)

presets_rando_west_maridia_mama_turtle_unmorph_entry:
    %cm_preset("Mama Turtle Unmorph Entry", #preset_names_mama_turtle_unmorph_entry, #preset_rando_west_maridia_mama_turtle_unmorph_entry)

presets_rando_west_maridia_mama_turtle_double_sbj:
    %cm_preset("Mama Turtle Double SBJ", #preset_names_mama_turtle_double_sbj, #preset_rando_west_maridia_mama_turtle_double_sbj)

presets_rando_west_maridia_mama_turtle_spark:
    %cm_preset("Mama Turtle Spark", #preset_names_mama_turtle_spark, #preset_rando_west_maridia_mama_turtle_spark)

presets_rando_west_maridia_mama_turtle_ibj:
    %cm_preset("Mama Turtle IBJ", #preset_names_mama_turtle_ibj, #preset_rando_west_maridia_mama_turtle_ibj)


; East Maridia
presets_rando_east_maridia_early_suitless_escape:
    %cm_preset("Early Suitless Escape", #preset_names_early_suitless_escape, #preset_rando_east_maridia_early_suitless_escape)

presets_rando_east_maridia_suitless_aqueduct:
    %cm_preset("Suitless Aqueduct", #preset_names_suitless_aqueduct, #preset_rando_east_maridia_suitless_aqueduct)

presets_rando_east_maridia_snail_clip:
    %cm_preset("Snail Clip", #preset_names_snail_clip, #preset_rando_east_maridia_snail_clip)

presets_rando_east_maridia_mochtroid_ice_clip:
    %cm_preset("Mochtroid Ice Clip", #preset_names_mochtroid_ice_clip, #preset_rando_east_maridia_mochtroid_ice_clip)

presets_rando_east_maridia_bombs_cf_clip:
    %cm_preset("Bombs CF Clip", #preset_names_bombs_cf_clip, #preset_rando_east_maridia_bombs_cf_clip)

presets_rando_east_maridia_suitless_cf_clip:
    %cm_preset("Suitless CF Clip", #preset_names_suitless_cf_clip, #preset_rando_east_maridia_suitless_cf_clip)

presets_rando_east_maridia_suitless_jump_morphs:
    %cm_preset("Suitless Jump Morphs", #preset_names_suitless_jump_morphs, #preset_rando_east_maridia_suitless_jump_morphs)

presets_rando_east_maridia_suitless_halfie_climb:
    %cm_preset("Suitless Halfie Climb", #preset_names_suitless_halfie_climb, #preset_rando_east_maridia_suitless_halfie_climb)

presets_rando_east_maridia_suitless_colosseum:
    %cm_preset("Suitless Colosseum", #preset_names_suitless_colosseum, #preset_rando_east_maridia_suitless_colosseum)

presets_rando_east_maridia_suitless_return:
    %cm_preset("Suitless Return", #preset_names_suitless_return, #preset_rando_east_maridia_suitless_return)

presets_rando_east_maridia_suitless_cac_alley:
    %cm_preset("Suitless Cac Alley", #preset_names_suitless_cac_alley, #preset_rando_east_maridia_suitless_cac_alley)

presets_rando_east_maridia_plasma_speed_booster:
    %cm_preset("Plasma Speed Booster", #preset_names_plasma_speed_booster, #preset_rando_east_maridia_plasma_speed_booster)

presets_rando_east_maridia_plasma_pseudoscrew:
    %cm_preset("Plasma Pseudo-Screw", #preset_names_plasma_pseudoscrew, #preset_rando_east_maridia_plasma_pseudoscrew)

presets_rando_east_maridia_shaktool_hijump_entry:
    %cm_preset("Shaktool Hi-Jump Entry", #preset_names_shaktool_hijump_entry, #preset_rando_east_maridia_shaktool_hijump_entry)

presets_rando_east_maridia_shaktool_suitless_entry:
    %cm_preset("Shaktool Suitless Entry", #preset_names_shaktool_suitless_entry, #preset_rando_east_maridia_shaktool_suitless_entry)

presets_rando_east_maridia_shaktool_puyo_ice_clip:
    %cm_preset("Shaktool Puyo Ice Clip", #preset_names_shaktool_puyo_ice_clip, #preset_rando_east_maridia_shaktool_puyo_ice_clip)

presets_rando_east_maridia_shaktool_cf_clip:
    %cm_preset("Shaktool CF Clip", #preset_names_shaktool_cf_clip, #preset_rando_east_maridia_shaktool_cf_clip)


; Wrecked Ship
presets_rando_wrecked_ship_east_ocean_with_springball:
    %cm_preset("East Ocean with Springball", #preset_names_east_ocean_with_springball, #preset_rando_wrecked_ship_east_ocean_with_springball)

presets_rando_wrecked_ship_east_ocean_with_ice:
    %cm_preset("East Ocean with Ice", #preset_names_east_ocean_with_ice, #preset_rando_wrecked_ship_east_ocean_with_ice)

presets_rando_wrecked_ship_east_ocean_return:
    %cm_preset("East Ocean Return", #preset_names_east_ocean_return, #preset_rando_wrecked_ship_east_ocean_return)

presets_rando_wrecked_ship_wrecked_ship_etank:
    %cm_preset("Wrecked Ship E-Tank", #preset_names_wrecked_ship_etank, #preset_rando_wrecked_ship_wrecked_ship_etank)

presets_rando_wrecked_ship_spiky_room_to_main_shaft:
    %cm_preset("Spiky Room To Main Shaft", #preset_names_spiky_room_to_main_shaft, #preset_rando_wrecked_ship_spiky_room_to_main_shaft)

presets_rando_wrecked_ship_spiky_room_to_east_ocean:
    %cm_preset("Spiky Room To East Ocean", #preset_names_spiky_room_to_east_ocean, #preset_rando_wrecked_ship_spiky_room_to_east_ocean)

presets_rando_wrecked_ship_sponge_bath:
    %cm_preset("Sponge Bath", #preset_names_sponge_bath, #preset_rando_wrecked_ship_sponge_bath)

presets_rando_wrecked_ship_attic:
    %cm_preset("Attic", #preset_names_attic, #preset_rando_wrecked_ship_attic)

presets_rando_wrecked_ship_sky_missiles:
    %cm_preset("Sky Missiles", #preset_names_sky_missiles, #preset_rando_wrecked_ship_sky_missiles)


; Tourian
presets_rando_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_names_metroids_1, #preset_rando_tourian_metroids_1)

presets_rando_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_names_metroids_2, #preset_rando_tourian_metroids_2)

presets_rando_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_names_metroids_3, #preset_rando_tourian_metroids_3)

presets_rando_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_names_metroids_4, #preset_rando_tourian_metroids_4)

presets_rando_tourian_blue_hoppers:
    %cm_preset("Blue Hoppers", #preset_names_blue_hoppers, #preset_rando_tourian_blue_hoppers)

presets_rando_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_names_baby_skip, #preset_rando_tourian_baby_skip)

presets_rando_tourian_after_baby_skip:
    %cm_preset("After Baby Skip", #preset_names_after_baby_skip, #preset_rando_tourian_after_baby_skip)

presets_rando_tourian_ice_zeb_skip:
    %cm_preset("Ice Zeb Skip", #preset_names_ice_zeb_skip, #preset_rando_tourian_ice_zeb_skip)

presets_rando_tourian_speed_zeb_skip:
    %cm_preset("Speed Zeb Skip", #preset_names_speed_zeb_skip, #preset_rando_tourian_speed_zeb_skip)

presets_rando_tourian_mother_brain_all_missiles:
    %cm_preset("Mother Brain All Missiles", #preset_names_mother_brain_all_missiles, #preset_rando_tourian_mother_brain_all_missiles)

presets_rando_tourian_mother_brain_all_supers:
    %cm_preset("Mother Brain All Supers", #preset_names_mother_brain_all_supers, #preset_rando_tourian_mother_brain_all_supers)

presets_rando_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_names_zebes_escape, #preset_rando_tourian_zebes_escape)

presets_rando_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_names_escape_room_3, #preset_rando_tourian_escape_room_3)

presets_rando_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_names_escape_room_4, #preset_rando_tourian_escape_room_4)

presets_rando_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_names_escape_climb, #preset_rando_tourian_escape_climb)

presets_rando_tourian_escape_climb_with_hijump:
    %cm_preset("Escape Climb with Hi-Jump", #preset_names_escape_climb_with_hijump, #preset_rando_tourian_escape_climb_with_hijump)

