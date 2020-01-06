PresetsMenuGtclassic:
    dw #presets_goto_gtclassic_crateria
    dw #presets_goto_gtclassic_brinstar
    dw #presets_goto_gtclassic_bootless_upper_norfair
    dw #presets_goto_gtclassic_hi_jump_upper_norfair
    dw #presets_goto_gtclassic_lower_norfair
    dw #presets_goto_gtclassic_maridia
    dw #presets_goto_gtclassic_wrecked_ship
    dw #presets_goto_gtclassic_tourian
    dw #$0000
    %cm_header("PRESETS FOR GT CLASSIC")

presets_goto_gtclassic_crateria:
    %cm_submenu("Crateria", #presets_submenu_gtclassic_crateria)

presets_goto_gtclassic_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_gtclassic_brinstar)

presets_goto_gtclassic_bootless_upper_norfair:
    %cm_submenu("Bootless Upper Norfair", #presets_submenu_gtclassic_bootless_upper_norfair)

presets_goto_gtclassic_hi_jump_upper_norfair:
    %cm_submenu("Hi Jump Upper Norfair", #presets_submenu_gtclassic_hi_jump_upper_norfair)

presets_goto_gtclassic_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_gtclassic_lower_norfair)

presets_goto_gtclassic_maridia:
    %cm_submenu("Maridia", #presets_submenu_gtclassic_maridia)

presets_goto_gtclassic_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_gtclassic_wrecked_ship)

presets_goto_gtclassic_tourian:
    %cm_submenu("Tourian", #presets_submenu_gtclassic_tourian)

presets_submenu_gtclassic_crateria:
    dw #presets_gtclassic_crateria_ceres_elevator
    dw #presets_gtclassic_crateria_ceres_last_3_rooms
    dw #presets_gtclassic_crateria_ship
    dw #presets_gtclassic_crateria_morph
    dw #presets_gtclassic_crateria_climb
    dw #presets_gtclassic_crateria_bomb_torizo
    dw #presets_gtclassic_crateria_terminator
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_gtclassic_brinstar:
    dw #presets_gtclassic_brinstar_green_brinstar_elevator
    dw #presets_gtclassic_brinstar_big_pink
    dw #presets_gtclassic_brinstar_red_tower
    dw #presets_gtclassic_brinstar_hellway
    dw #presets_gtclassic_brinstar_leaving_power_bombs
    dw #presets_gtclassic_brinstar_breaking_tube
    dw #presets_gtclassic_brinstar_baby_kraid_entering
    dw #presets_gtclassic_brinstar_kraid
    dw #presets_gtclassic_brinstar_baby_kraid_exiting
    dw #presets_gtclassic_brinstar_kraid_etank
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_gtclassic_bootless_upper_norfair:
    dw #presets_gtclassic_bootless_upper_norfair_business_center
    dw #presets_gtclassic_bootless_upper_norfair_precathedral
    dw #presets_gtclassic_bootless_upper_norfair_bubble_mountain
    dw #presets_gtclassic_bootless_upper_norfair_magdollite_tunnel
    dw #presets_gtclassic_bootless_upper_norfair_lava_dive
    dw #presets_gtclassic_bootless_upper_norfair_ln_main_hall
    dw #presets_gtclassic_bootless_upper_norfair_green_gate_glitch
    dw #presets_gtclassic_bootless_upper_norfair_gt_code
    dw #$0000
    %cm_header("BOOTLESS UPPER NORFAIR")

presets_submenu_gtclassic_hi_jump_upper_norfair:
    dw #presets_gtclassic_hi_jump_upper_norfair_business_center
    dw #presets_gtclassic_hi_jump_upper_norfair_leaving_hi_jump
    dw #presets_gtclassic_hi_jump_upper_norfair_precathedral
    dw #presets_gtclassic_hi_jump_upper_norfair_bubble_mountain
    dw #presets_gtclassic_hi_jump_upper_norfair_magdollite_tunnel
    dw #presets_gtclassic_hi_jump_upper_norfair_lava_dive
    dw #presets_gtclassic_hi_jump_upper_norfair_ln_main_hall
    dw #presets_gtclassic_hi_jump_upper_norfair_green_gate_glitch
    dw #presets_gtclassic_hi_jump_upper_norfair_gt_code
    dw #$0000
    %cm_header("HI JUMP UPPER NORFAIR")

presets_submenu_gtclassic_lower_norfair:
    dw #presets_gtclassic_lower_norfair_leaving_golden_torizo
    dw #presets_gtclassic_lower_norfair_green_gate_revisit
    dw #presets_gtclassic_lower_norfair_worst_room
    dw #presets_gtclassic_lower_norfair_kihunter_stairs
    dw #presets_gtclassic_lower_norfair_metal_pirates
    dw #presets_gtclassic_lower_norfair_ridley
    dw #presets_gtclassic_lower_norfair_reverse_plowerhouse
    dw #presets_gtclassic_lower_norfair_wasteland_revisit
    dw #presets_gtclassic_lower_norfair_fireflea_room
    dw #presets_gtclassic_lower_norfair_three_musketeers
    dw #presets_gtclassic_lower_norfair_bubble_mountain_revisit
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_gtclassic_maridia:
    dw #presets_gtclassic_maridia_entering_maridia
    dw #presets_gtclassic_maridia_mt_everest
    dw #presets_gtclassic_maridia_botwoon
    dw #presets_gtclassic_maridia_halfie
    dw #presets_gtclassic_maridia_draygon
    dw #presets_gtclassic_maridia_womple_jump
    dw #presets_gtclassic_maridia_reverse_botwoon
    dw #presets_gtclassic_maridia_aqueduct_revisit
    dw #presets_gtclassic_maridia_red_tower_green_gate
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_gtclassic_wrecked_ship:
    dw #presets_gtclassic_wrecked_ship_premoat
    dw #presets_gtclassic_wrecked_ship_ocean
    dw #presets_gtclassic_wrecked_ship_phantoon
    dw #presets_gtclassic_wrecked_ship_ws_shaft
    dw #presets_gtclassic_wrecked_ship_ocean_revisit
    dw #presets_gtclassic_wrecked_ship_terminator_revisit
    dw #presets_gtclassic_wrecked_ship_g4_elevator
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_gtclassic_tourian:
    dw #presets_gtclassic_tourian_metroids_1
    dw #presets_gtclassic_tourian_metroids_2
    dw #presets_gtclassic_tourian_metroids_3
    dw #presets_gtclassic_tourian_metroids_4
    dw #presets_gtclassic_tourian_baby_skip
    dw #presets_gtclassic_tourian_zeb_skip
    dw #presets_gtclassic_tourian_escape_room_3
    dw #presets_gtclassic_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Crateria
presets_gtclassic_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_gtclassic_crateria_ceres_elevator)

presets_gtclassic_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_gtclassic_crateria_ceres_last_3_rooms)

presets_gtclassic_crateria_ship:
    %cm_preset("Ship", #preset_gtclassic_crateria_ship)

presets_gtclassic_crateria_morph:
    %cm_preset("Morph", #preset_gtclassic_crateria_morph)

presets_gtclassic_crateria_climb:
    %cm_preset("Climb", #preset_gtclassic_crateria_climb)

presets_gtclassic_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_gtclassic_crateria_bomb_torizo)

presets_gtclassic_crateria_terminator:
    %cm_preset("Terminator", #preset_gtclassic_crateria_terminator)


; Brinstar
presets_gtclassic_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_gtclassic_brinstar_green_brinstar_elevator)

presets_gtclassic_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_gtclassic_brinstar_big_pink)

presets_gtclassic_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_gtclassic_brinstar_red_tower)

presets_gtclassic_brinstar_hellway:
    %cm_preset("Hellway", #preset_gtclassic_brinstar_hellway)

presets_gtclassic_brinstar_leaving_power_bombs:
    %cm_preset("Leaving Power Bombs", #preset_gtclassic_brinstar_leaving_power_bombs)

presets_gtclassic_brinstar_breaking_tube:
    %cm_preset("Breaking Tube", #preset_gtclassic_brinstar_breaking_tube)

presets_gtclassic_brinstar_baby_kraid_entering:
    %cm_preset("Baby Kraid (Entering)", #preset_gtclassic_brinstar_baby_kraid_entering)

presets_gtclassic_brinstar_kraid:
    %cm_preset("Kraid", #preset_gtclassic_brinstar_kraid)

presets_gtclassic_brinstar_baby_kraid_exiting:
    %cm_preset("Baby Kraid (Exiting)", #preset_gtclassic_brinstar_baby_kraid_exiting)

presets_gtclassic_brinstar_kraid_etank:
    %cm_preset("Kraid E-tank", #preset_gtclassic_brinstar_kraid_etank)


; Bootless Upper Norfair
presets_gtclassic_bootless_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_gtclassic_bootless_upper_norfair_business_center)

presets_gtclassic_bootless_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_gtclassic_bootless_upper_norfair_precathedral)

presets_gtclassic_bootless_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_gtclassic_bootless_upper_norfair_bubble_mountain)

presets_gtclassic_bootless_upper_norfair_magdollite_tunnel:
    %cm_preset("Magdollite Tunnel", #preset_gtclassic_bootless_upper_norfair_magdollite_tunnel)

presets_gtclassic_bootless_upper_norfair_lava_dive:
    %cm_preset("Lava Dive", #preset_gtclassic_bootless_upper_norfair_lava_dive)

presets_gtclassic_bootless_upper_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_gtclassic_bootless_upper_norfair_ln_main_hall)

presets_gtclassic_bootless_upper_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_gtclassic_bootless_upper_norfair_green_gate_glitch)

presets_gtclassic_bootless_upper_norfair_gt_code:
    %cm_preset("GT Code", #preset_gtclassic_bootless_upper_norfair_gt_code)


; Hi Jump Upper Norfair
presets_gtclassic_hi_jump_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_gtclassic_hi_jump_upper_norfair_business_center)

presets_gtclassic_hi_jump_upper_norfair_leaving_hi_jump:
    %cm_preset("Leaving Hi Jump", #preset_gtclassic_hi_jump_upper_norfair_leaving_hi_jump)

presets_gtclassic_hi_jump_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_gtclassic_hi_jump_upper_norfair_precathedral)

presets_gtclassic_hi_jump_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_gtclassic_hi_jump_upper_norfair_bubble_mountain)

presets_gtclassic_hi_jump_upper_norfair_magdollite_tunnel:
    %cm_preset("Magdollite Tunnel", #preset_gtclassic_hi_jump_upper_norfair_magdollite_tunnel)

presets_gtclassic_hi_jump_upper_norfair_lava_dive:
    %cm_preset("Lava Dive", #preset_gtclassic_hi_jump_upper_norfair_lava_dive)

presets_gtclassic_hi_jump_upper_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_gtclassic_hi_jump_upper_norfair_ln_main_hall)

presets_gtclassic_hi_jump_upper_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_gtclassic_hi_jump_upper_norfair_green_gate_glitch)

presets_gtclassic_hi_jump_upper_norfair_gt_code:
    %cm_preset("GT Code", #preset_gtclassic_hi_jump_upper_norfair_gt_code)


; Lower Norfair
presets_gtclassic_lower_norfair_leaving_golden_torizo:
    %cm_preset("Leaving Golden Torizo", #preset_gtclassic_lower_norfair_leaving_golden_torizo)

presets_gtclassic_lower_norfair_green_gate_revisit:
    %cm_preset("Green Gate Revisit", #preset_gtclassic_lower_norfair_green_gate_revisit)

presets_gtclassic_lower_norfair_worst_room:
    %cm_preset("Worst Room", #preset_gtclassic_lower_norfair_worst_room)

presets_gtclassic_lower_norfair_kihunter_stairs:
    %cm_preset("Kihunter Stairs", #preset_gtclassic_lower_norfair_kihunter_stairs)

presets_gtclassic_lower_norfair_metal_pirates:
    %cm_preset("Metal Pirates", #preset_gtclassic_lower_norfair_metal_pirates)

presets_gtclassic_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_gtclassic_lower_norfair_ridley)

presets_gtclassic_lower_norfair_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_gtclassic_lower_norfair_reverse_plowerhouse)

presets_gtclassic_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_gtclassic_lower_norfair_wasteland_revisit)

presets_gtclassic_lower_norfair_fireflea_room:
    %cm_preset("Fireflea Room", #preset_gtclassic_lower_norfair_fireflea_room)

presets_gtclassic_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_gtclassic_lower_norfair_three_musketeers)

presets_gtclassic_lower_norfair_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_gtclassic_lower_norfair_bubble_mountain_revisit)


; Maridia
presets_gtclassic_maridia_entering_maridia:
    %cm_preset("Entering Maridia", #preset_gtclassic_maridia_entering_maridia)

presets_gtclassic_maridia_mt_everest:
    %cm_preset("Mt Everest", #preset_gtclassic_maridia_mt_everest)

presets_gtclassic_maridia_botwoon:
    %cm_preset("Botwoon", #preset_gtclassic_maridia_botwoon)

presets_gtclassic_maridia_halfie:
    %cm_preset("Halfie", #preset_gtclassic_maridia_halfie)

presets_gtclassic_maridia_draygon:
    %cm_preset("Draygon", #preset_gtclassic_maridia_draygon)

presets_gtclassic_maridia_womple_jump:
    %cm_preset("Womple Jump", #preset_gtclassic_maridia_womple_jump)

presets_gtclassic_maridia_reverse_botwoon:
    %cm_preset("Reverse Botwoon", #preset_gtclassic_maridia_reverse_botwoon)

presets_gtclassic_maridia_aqueduct_revisit:
    %cm_preset("Aqueduct Revisit", #preset_gtclassic_maridia_aqueduct_revisit)

presets_gtclassic_maridia_red_tower_green_gate:
    %cm_preset("Red Tower Green Gate", #preset_gtclassic_maridia_red_tower_green_gate)


; Wrecked Ship
presets_gtclassic_wrecked_ship_premoat:
    %cm_preset("Pre-Moat", #preset_gtclassic_wrecked_ship_premoat)

presets_gtclassic_wrecked_ship_ocean:
    %cm_preset("Ocean", #preset_gtclassic_wrecked_ship_ocean)

presets_gtclassic_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_gtclassic_wrecked_ship_phantoon)

presets_gtclassic_wrecked_ship_ws_shaft:
    %cm_preset("WS Shaft", #preset_gtclassic_wrecked_ship_ws_shaft)

presets_gtclassic_wrecked_ship_ocean_revisit:
    %cm_preset("Ocean Revisit", #preset_gtclassic_wrecked_ship_ocean_revisit)

presets_gtclassic_wrecked_ship_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_gtclassic_wrecked_ship_terminator_revisit)

presets_gtclassic_wrecked_ship_g4_elevator:
    %cm_preset("G4 Elevator", #preset_gtclassic_wrecked_ship_g4_elevator)


; Tourian
presets_gtclassic_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_gtclassic_tourian_metroids_1)

presets_gtclassic_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_gtclassic_tourian_metroids_2)

presets_gtclassic_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_gtclassic_tourian_metroids_3)

presets_gtclassic_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_gtclassic_tourian_metroids_4)

presets_gtclassic_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_gtclassic_tourian_baby_skip)

presets_gtclassic_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_gtclassic_tourian_zeb_skip)

presets_gtclassic_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_gtclassic_tourian_escape_room_3)

presets_gtclassic_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_gtclassic_tourian_escape_parlor)


