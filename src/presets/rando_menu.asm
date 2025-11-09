PresetsMenuRando:
    dw #presets_goto_rando_crateria
    dw #presets_goto_rando_gauntlet
    dw #presets_goto_rando_green_brinstar
    dw #presets_goto_rando_red_brinstar
    dw #presets_goto_rando_crocomire
    dw #presets_goto_rando_four_bosses
    dw #presets_goto_rando_upper_norfair
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

