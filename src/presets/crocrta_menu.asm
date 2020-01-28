PresetsMenuCrocrta:
    dw #presets_goto_crocrta_zebes_asleep
    dw #presets_goto_crocrta_zebes_awake
    dw #presets_goto_crocrta_brinstar
    dw #presets_goto_crocrta_norfair
    dw #$0000
    %cm_header("PRESETS FOR CROCRTA")

presets_goto_crocrta_zebes_asleep:
    %cm_submenu("Zebes Asleep", #presets_submenu_crocrta_zebes_asleep)

presets_goto_crocrta_zebes_awake:
    %cm_submenu("Zebes Awake", #presets_submenu_crocrta_zebes_awake)

presets_goto_crocrta_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_crocrta_brinstar)

presets_goto_crocrta_norfair:
    %cm_submenu("Norfair", #presets_submenu_crocrta_norfair)

presets_submenu_crocrta_zebes_asleep:
    dw #presets_crocrta_zebes_asleep_parlor
    dw #presets_crocrta_zebes_asleep_climb_down
    dw #presets_crocrta_zebes_asleep_pit_room
    dw #presets_crocrta_zebes_asleep_morph
    dw #presets_crocrta_zebes_asleep_construction_zone
    dw #presets_crocrta_zebes_asleep_construction_zone_revisit
    dw #$0000
    %cm_header("ZEBES ASLEEP")

presets_submenu_crocrta_zebes_awake:
    dw #presets_crocrta_zebes_awake_pit_room_revisit
    dw #presets_crocrta_zebes_awake_climb_up
    dw #presets_crocrta_zebes_awake_parlor_revisit
    dw #presets_crocrta_zebes_awake_bomb_torizo
    dw #presets_crocrta_zebes_awake_alcatraz
    dw #presets_crocrta_zebes_awake_terminator
    dw #presets_crocrta_zebes_awake_green_pirate_shaft
    dw #$0000
    %cm_header("ZEBES AWAKE")

presets_submenu_crocrta_brinstar:
    dw #presets_crocrta_brinstar_green_brinstar_elevator
    dw #presets_crocrta_brinstar_early_supers
    dw #presets_crocrta_brinstar_dachora_room
    dw #presets_crocrta_brinstar_big_pink
    dw #presets_crocrta_brinstar_green_hill_zone
    dw #presets_crocrta_brinstar_red_tower
    dw #presets_crocrta_brinstar_skree_boost
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_crocrta_norfair:
    dw #presets_crocrta_norfair_business_center
    dw #presets_crocrta_norfair_hi_jump_etank
    dw #presets_crocrta_norfair_business_center_revisit
    dw #presets_crocrta_norfair_hell_run
    dw #presets_crocrta_norfair_bubble_mountain
    dw #presets_crocrta_norfair_farm_room
    dw #presets_crocrta_norfair_acid_snakes_room
    dw #presets_crocrta_norfair_crocomire
    dw #$0000
    %cm_header("NORFAIR")

; Zebes Asleep
presets_crocrta_zebes_asleep_parlor:
    %cm_preset("Parlor", #preset_crocrta_zebes_asleep_parlor)

presets_crocrta_zebes_asleep_climb_down:
    %cm_preset("Climb Down", #preset_crocrta_zebes_asleep_climb_down)

presets_crocrta_zebes_asleep_pit_room:
    %cm_preset("Pit Room", #preset_crocrta_zebes_asleep_pit_room)

presets_crocrta_zebes_asleep_morph:
    %cm_preset("Morph", #preset_crocrta_zebes_asleep_morph)

presets_crocrta_zebes_asleep_construction_zone:
    %cm_preset("Construction Zone", #preset_crocrta_zebes_asleep_construction_zone)

presets_crocrta_zebes_asleep_construction_zone_revisit:
    %cm_preset("Construction Zone Revisit", #preset_crocrta_zebes_asleep_construction_zone_revisit)


; Zebes Awake
presets_crocrta_zebes_awake_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_crocrta_zebes_awake_pit_room_revisit)

presets_crocrta_zebes_awake_climb_up:
    %cm_preset("Climb Up", #preset_crocrta_zebes_awake_climb_up)

presets_crocrta_zebes_awake_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_crocrta_zebes_awake_parlor_revisit)

presets_crocrta_zebes_awake_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_crocrta_zebes_awake_bomb_torizo)

presets_crocrta_zebes_awake_alcatraz:
    %cm_preset("Alcatraz", #preset_crocrta_zebes_awake_alcatraz)

presets_crocrta_zebes_awake_terminator:
    %cm_preset("Terminator", #preset_crocrta_zebes_awake_terminator)

presets_crocrta_zebes_awake_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_crocrta_zebes_awake_green_pirate_shaft)


; Brinstar
presets_crocrta_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_crocrta_brinstar_green_brinstar_elevator)

presets_crocrta_brinstar_early_supers:
    %cm_preset("Early Supers", #preset_crocrta_brinstar_early_supers)

presets_crocrta_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_crocrta_brinstar_dachora_room)

presets_crocrta_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_crocrta_brinstar_big_pink)

presets_crocrta_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_crocrta_brinstar_green_hill_zone)

presets_crocrta_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_crocrta_brinstar_red_tower)

presets_crocrta_brinstar_skree_boost:
    %cm_preset("Skree Boost", #preset_crocrta_brinstar_skree_boost)


; Norfair
presets_crocrta_norfair_business_center:
    %cm_preset("Business Center", #preset_crocrta_norfair_business_center)

presets_crocrta_norfair_hi_jump_etank:
    %cm_preset("Hi Jump E-tank", #preset_crocrta_norfair_hi_jump_etank)

presets_crocrta_norfair_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_crocrta_norfair_business_center_revisit)

presets_crocrta_norfair_hell_run:
    %cm_preset("Hell Run", #preset_crocrta_norfair_hell_run)

presets_crocrta_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_crocrta_norfair_bubble_mountain)

presets_crocrta_norfair_farm_room:
    %cm_preset("Farm Room", #preset_crocrta_norfair_farm_room)

presets_crocrta_norfair_acid_snakes_room:
    %cm_preset("Acid Snakes Room", #preset_crocrta_norfair_acid_snakes_room)

presets_crocrta_norfair_crocomire:
    %cm_preset("Crocomire", #preset_crocrta_norfair_crocomire)


