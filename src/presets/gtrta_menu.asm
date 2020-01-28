PresetsMenuGtrta:
    dw #presets_goto_gtrta_crateria
    dw #presets_goto_gtrta_brinstar
    dw #presets_goto_gtrta_bootless_upper_norfair
    dw #presets_goto_gtrta_hi_jump_upper_norfair
    dw #$0000
    %cm_header("PRESETS FOR GTRTA")

presets_goto_gtrta_crateria:
    %cm_submenu("Crateria", #presets_submenu_gtrta_crateria)

presets_goto_gtrta_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_gtrta_brinstar)

presets_goto_gtrta_bootless_upper_norfair:
    %cm_submenu("Bootless Upper Norfair", #presets_submenu_gtrta_bootless_upper_norfair)

presets_goto_gtrta_hi_jump_upper_norfair:
    %cm_submenu("Hi Jump Upper Norfair", #presets_submenu_gtrta_hi_jump_upper_norfair)

presets_submenu_gtrta_crateria:
    dw #presets_gtrta_crateria_parlor
    dw #presets_gtrta_crateria_climb_down
    dw #presets_gtrta_crateria_pit_room
    dw #presets_gtrta_crateria_morph
    dw #presets_gtrta_crateria_construction_zone
    dw #presets_gtrta_crateria_construction_zone_revisit
    dw #presets_gtrta_crateria_pit_room_revisit
    dw #presets_gtrta_crateria_climb_up
    dw #presets_gtrta_crateria_parlor_revisit
    dw #presets_gtrta_crateria_bomb_torizo
    dw #presets_gtrta_crateria_alcatraz
    dw #presets_gtrta_crateria_terminator
    dw #presets_gtrta_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_gtrta_brinstar:
    dw #presets_gtrta_brinstar_green_brinstar_elevator
    dw #presets_gtrta_brinstar_early_supers
    dw #presets_gtrta_brinstar_dachora_room
    dw #presets_gtrta_brinstar_big_pink
    dw #presets_gtrta_brinstar_green_hill_zone
    dw #presets_gtrta_brinstar_red_tower
    dw #presets_gtrta_brinstar_hellway
    dw #presets_gtrta_brinstar_leaving_power_bombs
    dw #presets_gtrta_brinstar_skree_boost
    dw #presets_gtrta_brinstar_entering_kraids_lair
    dw #presets_gtrta_brinstar_baby_kraid_entering
    dw #presets_gtrta_brinstar_kraid
    dw #presets_gtrta_brinstar_baby_kraid_exiting
    dw #presets_gtrta_brinstar_kraid_etank
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_gtrta_bootless_upper_norfair:
    dw #presets_gtrta_bootless_upper_norfair_business_center
    dw #presets_gtrta_bootless_upper_norfair_cathedral
    dw #presets_gtrta_bootless_upper_norfair_bubble_mountain
    dw #presets_gtrta_bootless_upper_norfair_magdollite_tunnel
    dw #presets_gtrta_bootless_upper_norfair_lava_dive
    dw #presets_gtrta_bootless_upper_norfair_ln_main_hall
    dw #presets_gtrta_bootless_upper_norfair_green_gate_glitch
    dw #presets_gtrta_bootless_upper_norfair_golden_torizo
    dw #$0000
    %cm_header("BOOTLESS UPPER NORFAIR")

presets_submenu_gtrta_hi_jump_upper_norfair:
    dw #presets_gtrta_hi_jump_upper_norfair_business_center
    dw #presets_gtrta_hi_jump_upper_norfair_leaving_hi_jump
    dw #presets_gtrta_hi_jump_upper_norfair_precathedral
    dw #presets_gtrta_hi_jump_upper_norfair_bubble_mountain
    dw #presets_gtrta_hi_jump_upper_norfair_magdollite_tunnel
    dw #presets_gtrta_hi_jump_upper_norfair_lava_dive
    dw #presets_gtrta_hi_jump_upper_norfair_ln_main_hall
    dw #presets_gtrta_hi_jump_upper_norfair_green_gate_glitch
    dw #presets_gtrta_hi_jump_upper_norfair_golden_torizo
    dw #$0000
    %cm_header("HI JUMP UPPER NORFAIR")

; Crateria
presets_gtrta_crateria_parlor:
    %cm_preset("Parlor", #preset_gtrta_crateria_parlor)

presets_gtrta_crateria_climb_down:
    %cm_preset("Climb Down", #preset_gtrta_crateria_climb_down)

presets_gtrta_crateria_pit_room:
    %cm_preset("Pit Room", #preset_gtrta_crateria_pit_room)

presets_gtrta_crateria_morph:
    %cm_preset("Morph", #preset_gtrta_crateria_morph)

presets_gtrta_crateria_construction_zone:
    %cm_preset("Construction Zone", #preset_gtrta_crateria_construction_zone)

presets_gtrta_crateria_construction_zone_revisit:
    %cm_preset("Construction Zone Revisit", #preset_gtrta_crateria_construction_zone_revisit)

presets_gtrta_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_gtrta_crateria_pit_room_revisit)

presets_gtrta_crateria_climb_up:
    %cm_preset("Climb Up", #preset_gtrta_crateria_climb_up)

presets_gtrta_crateria_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_gtrta_crateria_parlor_revisit)

presets_gtrta_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_gtrta_crateria_bomb_torizo)

presets_gtrta_crateria_alcatraz:
    %cm_preset("Alcatraz", #preset_gtrta_crateria_alcatraz)

presets_gtrta_crateria_terminator:
    %cm_preset("Terminator", #preset_gtrta_crateria_terminator)

presets_gtrta_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_gtrta_crateria_green_pirate_shaft)


; Brinstar
presets_gtrta_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_gtrta_brinstar_green_brinstar_elevator)

presets_gtrta_brinstar_early_supers:
    %cm_preset("Early Supers", #preset_gtrta_brinstar_early_supers)

presets_gtrta_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_gtrta_brinstar_dachora_room)

presets_gtrta_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_gtrta_brinstar_big_pink)

presets_gtrta_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_gtrta_brinstar_green_hill_zone)

presets_gtrta_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_gtrta_brinstar_red_tower)

presets_gtrta_brinstar_hellway:
    %cm_preset("Hellway", #preset_gtrta_brinstar_hellway)

presets_gtrta_brinstar_leaving_power_bombs:
    %cm_preset("Leaving Power Bombs", #preset_gtrta_brinstar_leaving_power_bombs)

presets_gtrta_brinstar_skree_boost:
    %cm_preset("Skree Boost", #preset_gtrta_brinstar_skree_boost)

presets_gtrta_brinstar_entering_kraids_lair:
    %cm_preset("Entering Kraids Lair", #preset_gtrta_brinstar_entering_kraids_lair)

presets_gtrta_brinstar_baby_kraid_entering:
    %cm_preset("Baby Kraid (Entering)", #preset_gtrta_brinstar_baby_kraid_entering)

presets_gtrta_brinstar_kraid:
    %cm_preset("Kraid", #preset_gtrta_brinstar_kraid)

presets_gtrta_brinstar_baby_kraid_exiting:
    %cm_preset("Baby Kraid (Exiting)", #preset_gtrta_brinstar_baby_kraid_exiting)

presets_gtrta_brinstar_kraid_etank:
    %cm_preset("Kraid E-tank", #preset_gtrta_brinstar_kraid_etank)


; Bootless Upper Norfair
presets_gtrta_bootless_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_gtrta_bootless_upper_norfair_business_center)

presets_gtrta_bootless_upper_norfair_cathedral:
    %cm_preset("Cathedral", #preset_gtrta_bootless_upper_norfair_cathedral)

presets_gtrta_bootless_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_gtrta_bootless_upper_norfair_bubble_mountain)

presets_gtrta_bootless_upper_norfair_magdollite_tunnel:
    %cm_preset("Magdollite Tunnel", #preset_gtrta_bootless_upper_norfair_magdollite_tunnel)

presets_gtrta_bootless_upper_norfair_lava_dive:
    %cm_preset("Lava Dive", #preset_gtrta_bootless_upper_norfair_lava_dive)

presets_gtrta_bootless_upper_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_gtrta_bootless_upper_norfair_ln_main_hall)

presets_gtrta_bootless_upper_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_gtrta_bootless_upper_norfair_green_gate_glitch)

presets_gtrta_bootless_upper_norfair_golden_torizo:
    %cm_preset("Golden Torizo", #preset_gtrta_bootless_upper_norfair_golden_torizo)


; Hi Jump Upper Norfair
presets_gtrta_hi_jump_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_gtrta_hi_jump_upper_norfair_business_center)

presets_gtrta_hi_jump_upper_norfair_leaving_hi_jump:
    %cm_preset("Leaving Hi Jump", #preset_gtrta_hi_jump_upper_norfair_leaving_hi_jump)

presets_gtrta_hi_jump_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_gtrta_hi_jump_upper_norfair_precathedral)

presets_gtrta_hi_jump_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_gtrta_hi_jump_upper_norfair_bubble_mountain)

presets_gtrta_hi_jump_upper_norfair_magdollite_tunnel:
    %cm_preset("Magdollite Tunnel", #preset_gtrta_hi_jump_upper_norfair_magdollite_tunnel)

presets_gtrta_hi_jump_upper_norfair_lava_dive:
    %cm_preset("Lava Dive", #preset_gtrta_hi_jump_upper_norfair_lava_dive)

presets_gtrta_hi_jump_upper_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_gtrta_hi_jump_upper_norfair_ln_main_hall)

presets_gtrta_hi_jump_upper_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_gtrta_hi_jump_upper_norfair_green_gate_glitch)

presets_gtrta_hi_jump_upper_norfair_golden_torizo:
    %cm_preset("Golden Torizo", #preset_gtrta_hi_jump_upper_norfair_golden_torizo)


