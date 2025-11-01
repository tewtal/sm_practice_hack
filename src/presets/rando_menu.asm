PresetsMenuRando:
    dw #presets_goto_rando_crateria
    dw #presets_goto_rando_gauntlet
    dw #$0000
    %cm_header("PRESETS FOR RANDOMIZERS")

presets_goto_rando_crateria:
    %cm_submenu("Crateria", #presets_submenu_rando_crateria)

presets_goto_rando_gauntlet:
    %cm_submenu("Gauntlet", #presets_submenu_rando_gauntlet)

presets_submenu_rando_crateria:
    dw #presets_rando_crateria_ceiling_morph
    dw #presets_rando_crateria_taco_tank
    dw #presets_rando_crateria_meme_route
    dw #presets_rando_crateria_billy_mays
    dw #presets_rando_crateria_billy_mays_escape
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
    dw #presets_rando_gauntlet_halfway_escape
    dw #presets_rando_gauntlet_halfway_with_hijump
    dw #presets_rando_gauntlet_quickdrops
    dw #$0000
    %cm_header("GAUNTLET")


; Crateria
presets_rando_crateria_ceiling_morph:
    %cm_preset("Ceiling Morph", #preset_names_ceiling_morph, #preset_rando_crateria_ceiling_morph)

presets_rando_crateria_taco_tank:
    %cm_preset("Taco Tank", #preset_names_taco_tank, #preset_rando_crateria_taco_tank)

presets_rando_crateria_meme_route:
    %cm_preset("Meme Route", #preset_names_meme_route, #preset_rando_crateria_meme_route)

presets_rando_crateria_billy_mays:
    %cm_preset("Billy Mays", #preset_names_billy_mays, #preset_rando_crateria_billy_mays)

presets_rando_crateria_billy_mays_escape:
    %cm_preset("Billy Mays Escape", #preset_names_billy_mays_escape, #preset_rando_crateria_billy_mays_escape)

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

presets_rando_gauntlet_halfway_escape:
    %cm_preset("Halfway Escape", #preset_names_halfway_escape, #preset_rando_gauntlet_halfway_escape)

presets_rando_gauntlet_halfway_with_hijump:
    %cm_preset("Halfway with Hi-Jump", #preset_names_halfway_with_hijump, #preset_rando_gauntlet_halfway_with_hijump)

presets_rando_gauntlet_quickdrops:
    %cm_preset("Quickdrops", #preset_names_quickdrops, #preset_rando_gauntlet_quickdrops)

