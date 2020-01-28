PresetsMenuSsrta:
    dw #presets_goto_ssrta_zebes_asleep
    dw #presets_goto_ssrta_zebes_awake
    dw #presets_goto_ssrta_brinstar_missiles
    dw #presets_goto_ssrta_brinstar_supers
    dw #$0000
    %cm_header("PRESETS FOR SS RTA")

presets_goto_ssrta_zebes_asleep:
    %cm_submenu("Zebes Asleep", #presets_submenu_ssrta_zebes_asleep)

presets_goto_ssrta_zebes_awake:
    %cm_submenu("Zebes Awake", #presets_submenu_ssrta_zebes_awake)

presets_goto_ssrta_brinstar_missiles:
    %cm_submenu("Brinstar Missiles", #presets_submenu_ssrta_brinstar_missiles)

presets_goto_ssrta_brinstar_supers:
    %cm_submenu("Brinstar Supers", #presets_submenu_ssrta_brinstar_supers)

presets_submenu_ssrta_zebes_asleep:
    dw #presets_ssrta_zebes_asleep_parlor
    dw #presets_ssrta_zebes_asleep_climb_down
    dw #presets_ssrta_zebes_asleep_pit_room
    dw #presets_ssrta_zebes_asleep_morph
    dw #presets_ssrta_zebes_asleep_construction_zone
    dw #presets_ssrta_zebes_asleep_construction_zone_revisit
    dw #$0000
    %cm_header("ZEBES ASLEEP")

presets_submenu_ssrta_zebes_awake:
    dw #presets_ssrta_zebes_awake_pit_room_revisit
    dw #presets_ssrta_zebes_awake_climb_up
    dw #presets_ssrta_zebes_awake_parlor_revisit
    dw #presets_ssrta_zebes_awake_bomb_torizo
    dw #presets_ssrta_zebes_awake_alcatraz
    dw #presets_ssrta_zebes_awake_terminator
    dw #presets_ssrta_zebes_awake_green_pirate_shaft
    dw #$0000
    %cm_header("ZEBES AWAKE")

presets_submenu_ssrta_brinstar_missiles:
    dw #presets_ssrta_brinstar_missiles_green_brinstar_elevator
    dw #presets_ssrta_brinstar_missiles_dachora_room
    dw #presets_ssrta_brinstar_missiles_big_pink
    dw #presets_ssrta_brinstar_missiles_kihunter_guards
    dw #presets_ssrta_brinstar_missiles_spore_spawn
    dw #presets_ssrta_brinstar_missiles_spore_spawn_shaft
    dw #$0000
    %cm_header("BRINSTAR MISSILES")

presets_submenu_ssrta_brinstar_supers:
    dw #presets_ssrta_brinstar_supers_green_brinstar_elevator
    dw #presets_ssrta_brinstar_supers_early_supers
    dw #presets_ssrta_brinstar_supers_dachora_room
    dw #presets_ssrta_brinstar_supers_big_pink
    dw #presets_ssrta_brinstar_supers_kihunter_guards
    dw #presets_ssrta_brinstar_supers_spore_spawn
    dw #presets_ssrta_brinstar_supers_spore_spawn_shaft
    dw #$0000
    %cm_header("BRINSTAR SUPERS")

; Zebes Asleep
presets_ssrta_zebes_asleep_parlor:
    %cm_preset("Parlor", #preset_ssrta_zebes_asleep_parlor)

presets_ssrta_zebes_asleep_climb_down:
    %cm_preset("Climb Down", #preset_ssrta_zebes_asleep_climb_down)

presets_ssrta_zebes_asleep_pit_room:
    %cm_preset("Pit Room", #preset_ssrta_zebes_asleep_pit_room)

presets_ssrta_zebes_asleep_morph:
    %cm_preset("Morph", #preset_ssrta_zebes_asleep_morph)

presets_ssrta_zebes_asleep_construction_zone:
    %cm_preset("Construction Zone", #preset_ssrta_zebes_asleep_construction_zone)

presets_ssrta_zebes_asleep_construction_zone_revisit:
    %cm_preset("Construction Zone Revisit", #preset_ssrta_zebes_asleep_construction_zone_revisit)


; Zebes Awake
presets_ssrta_zebes_awake_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_ssrta_zebes_awake_pit_room_revisit)

presets_ssrta_zebes_awake_climb_up:
    %cm_preset("Climb Up", #preset_ssrta_zebes_awake_climb_up)

presets_ssrta_zebes_awake_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_ssrta_zebes_awake_parlor_revisit)

presets_ssrta_zebes_awake_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_ssrta_zebes_awake_bomb_torizo)

presets_ssrta_zebes_awake_alcatraz:
    %cm_preset("Alcatraz", #preset_ssrta_zebes_awake_alcatraz)

presets_ssrta_zebes_awake_terminator:
    %cm_preset("Terminator", #preset_ssrta_zebes_awake_terminator)

presets_ssrta_zebes_awake_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_ssrta_zebes_awake_green_pirate_shaft)


; Brinstar Missiles
presets_ssrta_brinstar_missiles_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_ssrta_brinstar_missiles_green_brinstar_elevator)

presets_ssrta_brinstar_missiles_dachora_room:
    %cm_preset("Dachora Room", #preset_ssrta_brinstar_missiles_dachora_room)

presets_ssrta_brinstar_missiles_big_pink:
    %cm_preset("Big Pink", #preset_ssrta_brinstar_missiles_big_pink)

presets_ssrta_brinstar_missiles_kihunter_guards:
    %cm_preset("Kihunter Guards", #preset_ssrta_brinstar_missiles_kihunter_guards)

presets_ssrta_brinstar_missiles_spore_spawn:
    %cm_preset("Spore Spawn", #preset_ssrta_brinstar_missiles_spore_spawn)

presets_ssrta_brinstar_missiles_spore_spawn_shaft:
    %cm_preset("Spore Spawn Shaft", #preset_ssrta_brinstar_missiles_spore_spawn_shaft)


; Brinstar Supers
presets_ssrta_brinstar_supers_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_ssrta_brinstar_supers_green_brinstar_elevator)

presets_ssrta_brinstar_supers_early_supers:
    %cm_preset("Early Supers", #preset_ssrta_brinstar_supers_early_supers)

presets_ssrta_brinstar_supers_dachora_room:
    %cm_preset("Dachora Room", #preset_ssrta_brinstar_supers_dachora_room)

presets_ssrta_brinstar_supers_big_pink:
    %cm_preset("Big Pink", #preset_ssrta_brinstar_supers_big_pink)

presets_ssrta_brinstar_supers_kihunter_guards:
    %cm_preset("Kihunter Guards", #preset_ssrta_brinstar_supers_kihunter_guards)

presets_ssrta_brinstar_supers_spore_spawn:
    %cm_preset("Spore Spawn", #preset_ssrta_brinstar_supers_spore_spawn)

presets_ssrta_brinstar_supers_spore_spawn_shaft:
    %cm_preset("Spore Spawn Shaft", #preset_ssrta_brinstar_supers_spore_spawn_shaft)


