PresetsMenuGtclassic:
    dw #presets_goto_gtclassic_crateria
    dw #presets_goto_gtclassic_brinstar
    dw #presets_goto_gtclassic_kraid
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

presets_goto_gtclassic_kraid:
    %cm_submenu("Kraid", #presets_submenu_gtclassic_kraid)

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
    dw #presets_gtclassic_crateria_ship
    dw #presets_gtclassic_crateria_parlor
    dw #presets_gtclassic_crateria_parlor_downback
    dw #presets_gtclassic_crateria_climb_down
    dw #presets_gtclassic_crateria_pit_room
    dw #presets_gtclassic_crateria_morph
    dw #presets_gtclassic_crateria_construction_zone_down
    dw #presets_gtclassic_crateria_construction_zone_up
    dw #presets_gtclassic_crateria_pit_room_revisit
    dw #presets_gtclassic_crateria_climb_up
    dw #presets_gtclassic_crateria_parlor_revisit
    dw #presets_gtclassic_crateria_flyway
    dw #presets_gtclassic_crateria_bomb_torizo
    dw #presets_gtclassic_crateria_alcatraz
    dw #presets_gtclassic_crateria_terminator
    dw #presets_gtclassic_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_gtclassic_brinstar:
    dw #presets_gtclassic_brinstar_green_brinstar_elevator
    dw #presets_gtclassic_brinstar_early_supers
    dw #presets_gtclassic_brinstar_dachora_room
    dw #presets_gtclassic_brinstar_big_pink
    dw #presets_gtclassic_brinstar_green_hill_zone
    dw #presets_gtclassic_brinstar_noob_bridge
    dw #presets_gtclassic_brinstar_red_tower
    dw #presets_gtclassic_brinstar_hellway
    dw #presets_gtclassic_brinstar_caterpillars_down
    dw #presets_gtclassic_brinstar_alpha_power_bombs
    dw #presets_gtclassic_brinstar_caterpillars_up
    dw #presets_gtclassic_brinstar_reverse_hellway
    dw #presets_gtclassic_brinstar_red_tower_down
    dw #presets_gtclassic_brinstar_skree_boost
    dw #presets_gtclassic_brinstar_below_spazer
    dw #presets_gtclassic_brinstar_breaking_tube
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_gtclassic_kraid:
    dw #presets_gtclassic_kraid_entering_kraids_lair
    dw #presets_gtclassic_kraid_kraid_kihunters
    dw #presets_gtclassic_kraid_mini_kraid
    dw #presets_gtclassic_kraid_kraid_2
    dw #presets_gtclassic_kraid_leaving_varia
    dw #presets_gtclassic_kraid_mini_kraid_revisit
    dw #presets_gtclassic_kraid_kraid_kihunters_revisit
    dw #presets_gtclassic_kraid_kraid_etank
    dw #presets_gtclassic_kraid_leaving_kraids_lair
    dw #$0000
    %cm_header("KRAID")

presets_submenu_gtclassic_bootless_upper_norfair:
    dw #presets_gtclassic_bootless_upper_norfair_business_center
    dw #presets_gtclassic_bootless_upper_norfair_cathedral
    dw #presets_gtclassic_bootless_upper_norfair_rising_tide
    dw #presets_gtclassic_bootless_upper_norfair_bubble_mountain
    dw #presets_gtclassic_bootless_upper_norfair_magdollite_tunnel
    dw #presets_gtclassic_bootless_upper_norfair_kronic_room
    dw #presets_gtclassic_bootless_upper_norfair_lava_dive
    dw #presets_gtclassic_bootless_upper_norfair_ln_main_hall
    dw #presets_gtclassic_bootless_upper_norfair_prepillars
    dw #presets_gtclassic_bootless_upper_norfair_green_gate_glitch
    dw #presets_gtclassic_bootless_upper_norfair_gt_code
    dw #$0000
    %cm_header("BOOTLESS UPPER NORFAIR")

presets_submenu_gtclassic_hi_jump_upper_norfair:
    dw #presets_gtclassic_hi_jump_upper_norfair_business_center
    dw #presets_gtclassic_hi_jump_upper_norfair_hi_jump_etank
    dw #presets_gtclassic_hi_jump_upper_norfair_leaving_hi_jump
    dw #presets_gtclassic_hi_jump_upper_norfair_business_center_revisit
    dw #presets_gtclassic_hi_jump_upper_norfair_precathedral
    dw #presets_gtclassic_hi_jump_upper_norfair_cathedral
    dw #presets_gtclassic_hi_jump_upper_norfair_rising_tide
    dw #presets_gtclassic_hi_jump_upper_norfair_bubble_mountain
    dw #presets_gtclassic_hi_jump_upper_norfair_magdollite_tunnel
    dw #presets_gtclassic_hi_jump_upper_norfair_kronic_room
    dw #presets_gtclassic_hi_jump_upper_norfair_lava_dive
    dw #presets_gtclassic_hi_jump_upper_norfair_ln_main_hall
    dw #presets_gtclassic_hi_jump_upper_norfair_prepillars
    dw #presets_gtclassic_hi_jump_upper_norfair_green_gate_glitch
    dw #presets_gtclassic_hi_jump_upper_norfair_gt_code
    dw #$0000
    %cm_header("HI JUMP UPPER NORFAIR")

presets_submenu_gtclassic_lower_norfair:
    dw #presets_gtclassic_lower_norfair_leaving_golden_torizo
    dw #presets_gtclassic_lower_norfair_green_gate_revisit
    dw #presets_gtclassic_lower_norfair_worst_room_in_the_game
    dw #presets_gtclassic_lower_norfair_amphitheatre
    dw #presets_gtclassic_lower_norfair_kihunter_stairs_down
    dw #presets_gtclassic_lower_norfair_wasteland
    dw #presets_gtclassic_lower_norfair_metal_ninja_pirates
    dw #presets_gtclassic_lower_norfair_plowerhouse
    dw #presets_gtclassic_lower_norfair_ridley
    dw #presets_gtclassic_lower_norfair_leaving_ridley
    dw #presets_gtclassic_lower_norfair_reverse_plowerhouse
    dw #presets_gtclassic_lower_norfair_wasteland_revisit
    dw #presets_gtclassic_lower_norfair_kihunter_stairs_up
    dw #presets_gtclassic_lower_norfair_fireflea_room
    dw #presets_gtclassic_lower_norfair_springball_maze
    dw #presets_gtclassic_lower_norfair_three_musketeers
    dw #presets_gtclassic_lower_norfair_single_chamber_final
    dw #presets_gtclassic_lower_norfair_bubble_mountain_final
    dw #presets_gtclassic_lower_norfair_frog_speedway
    dw #presets_gtclassic_lower_norfair_business_center_final
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_gtclassic_maridia:
    dw #presets_gtclassic_maridia_maridia_tube_revisit
    dw #presets_gtclassic_maridia_fish_tank
    dw #presets_gtclassic_maridia_mt_everest
    dw #presets_gtclassic_maridia_crab_shaft
    dw #presets_gtclassic_maridia_aqueduct
    dw #presets_gtclassic_maridia_botwoon_hallway
    dw #presets_gtclassic_maridia_botwoon
    dw #presets_gtclassic_maridia_halfie_setup
    dw #presets_gtclassic_maridia_draygon
    dw #presets_gtclassic_maridia_reverse_halfie_spikesuit
    dw #presets_gtclassic_maridia_womple_jump
    dw #presets_gtclassic_maridia_reverse_halfie_climb
    dw #presets_gtclassic_maridia_reverse_botwoon_etank
    dw #presets_gtclassic_maridia_reverse_botwoon_hallway
    dw #presets_gtclassic_maridia_aqueduct_revisit
    dw #presets_gtclassic_maridia_reverse_crab_shaft
    dw #presets_gtclassic_maridia_mt_everest_revisit
    dw #presets_gtclassic_maridia_red_brinstar_green_gate
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_gtclassic_wrecked_ship:
    dw #presets_gtclassic_wrecked_ship_crateria_kihunters
    dw #presets_gtclassic_wrecked_ship_moat
    dw #presets_gtclassic_wrecked_ship_ocean
    dw #presets_gtclassic_wrecked_ship_wrecked_ship_shaft
    dw #presets_gtclassic_wrecked_ship_basement
    dw #presets_gtclassic_wrecked_ship_phantoon
    dw #presets_gtclassic_wrecked_ship_shaft_climb
    dw #presets_gtclassic_wrecked_ship_ocean_revisit
    dw #presets_gtclassic_wrecked_ship_crateria_kihunters_revisit
    dw #presets_gtclassic_wrecked_ship_parlor_return
    dw #presets_gtclassic_wrecked_ship_terminator_revisit
    dw #presets_gtclassic_wrecked_ship_green_pirate_shaft_2
    dw #presets_gtclassic_wrecked_ship_g4_elevator
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_gtclassic_tourian:
    dw #presets_gtclassic_tourian_tourian_elevator_room
    dw #presets_gtclassic_tourian_metroids_1
    dw #presets_gtclassic_tourian_metroids_2
    dw #presets_gtclassic_tourian_metroids_3
    dw #presets_gtclassic_tourian_metroids_4
    dw #presets_gtclassic_tourian_giant_hoppers
    dw #presets_gtclassic_tourian_baby_skip
    dw #presets_gtclassic_tourian_gedora_room
    dw #presets_gtclassic_tourian_zeb_skip
    dw #presets_gtclassic_tourian_escape_room_3
    dw #presets_gtclassic_tourian_escape_room_4
    dw #presets_gtclassic_tourian_climb_spark
    dw #presets_gtclassic_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Crateria
presets_gtclassic_crateria_ship:
    %cm_preset("Ship", #preset_gtclassic_crateria_ship)

presets_gtclassic_crateria_parlor:
    %cm_preset("Parlor", #preset_gtclassic_crateria_parlor)

presets_gtclassic_crateria_parlor_downback:
    %cm_preset("Parlor Downback", #preset_gtclassic_crateria_parlor_downback)

presets_gtclassic_crateria_climb_down:
    %cm_preset("Climb Down", #preset_gtclassic_crateria_climb_down)

presets_gtclassic_crateria_pit_room:
    %cm_preset("Pit Room", #preset_gtclassic_crateria_pit_room)

presets_gtclassic_crateria_morph:
    %cm_preset("Morph", #preset_gtclassic_crateria_morph)

presets_gtclassic_crateria_construction_zone_down:
    %cm_preset("Construction Zone Down", #preset_gtclassic_crateria_construction_zone_down)

presets_gtclassic_crateria_construction_zone_up:
    %cm_preset("Construction Zone Up", #preset_gtclassic_crateria_construction_zone_up)

presets_gtclassic_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_gtclassic_crateria_pit_room_revisit)

presets_gtclassic_crateria_climb_up:
    %cm_preset("Climb Up", #preset_gtclassic_crateria_climb_up)

presets_gtclassic_crateria_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_gtclassic_crateria_parlor_revisit)

presets_gtclassic_crateria_flyway:
    %cm_preset("Flyway", #preset_gtclassic_crateria_flyway)

presets_gtclassic_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_gtclassic_crateria_bomb_torizo)

presets_gtclassic_crateria_alcatraz:
    %cm_preset("Alcatraz", #preset_gtclassic_crateria_alcatraz)

presets_gtclassic_crateria_terminator:
    %cm_preset("Terminator", #preset_gtclassic_crateria_terminator)

presets_gtclassic_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_gtclassic_crateria_green_pirate_shaft)


; Brinstar
presets_gtclassic_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_gtclassic_brinstar_green_brinstar_elevator)

presets_gtclassic_brinstar_early_supers:
    %cm_preset("Early Supers", #preset_gtclassic_brinstar_early_supers)

presets_gtclassic_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_gtclassic_brinstar_dachora_room)

presets_gtclassic_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_gtclassic_brinstar_big_pink)

presets_gtclassic_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_gtclassic_brinstar_green_hill_zone)

presets_gtclassic_brinstar_noob_bridge:
    %cm_preset("Noob Bridge", #preset_gtclassic_brinstar_noob_bridge)

presets_gtclassic_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_gtclassic_brinstar_red_tower)

presets_gtclassic_brinstar_hellway:
    %cm_preset("Hellway", #preset_gtclassic_brinstar_hellway)

presets_gtclassic_brinstar_caterpillars_down:
    %cm_preset("Caterpillars Down", #preset_gtclassic_brinstar_caterpillars_down)

presets_gtclassic_brinstar_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_gtclassic_brinstar_alpha_power_bombs)

presets_gtclassic_brinstar_caterpillars_up:
    %cm_preset("Caterpillars Up", #preset_gtclassic_brinstar_caterpillars_up)

presets_gtclassic_brinstar_reverse_hellway:
    %cm_preset("Reverse Hellway", #preset_gtclassic_brinstar_reverse_hellway)

presets_gtclassic_brinstar_red_tower_down:
    %cm_preset("Red Tower Down", #preset_gtclassic_brinstar_red_tower_down)

presets_gtclassic_brinstar_skree_boost:
    %cm_preset("Skree Boost", #preset_gtclassic_brinstar_skree_boost)

presets_gtclassic_brinstar_below_spazer:
    %cm_preset("Below Spazer", #preset_gtclassic_brinstar_below_spazer)

presets_gtclassic_brinstar_breaking_tube:
    %cm_preset("Breaking Tube", #preset_gtclassic_brinstar_breaking_tube)


; Kraid
presets_gtclassic_kraid_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_gtclassic_kraid_entering_kraids_lair)

presets_gtclassic_kraid_kraid_kihunters:
    %cm_preset("Kraid Kihunters", #preset_gtclassic_kraid_kraid_kihunters)

presets_gtclassic_kraid_mini_kraid:
    %cm_preset("Mini Kraid", #preset_gtclassic_kraid_mini_kraid)

presets_gtclassic_kraid_kraid_2:
    %cm_preset("Kraid", #preset_gtclassic_kraid_kraid_2)

presets_gtclassic_kraid_leaving_varia:
    %cm_preset("Leaving Varia", #preset_gtclassic_kraid_leaving_varia)

presets_gtclassic_kraid_mini_kraid_revisit:
    %cm_preset("Mini Kraid Revisit", #preset_gtclassic_kraid_mini_kraid_revisit)

presets_gtclassic_kraid_kraid_kihunters_revisit:
    %cm_preset("Kraid Kihunters Revisit", #preset_gtclassic_kraid_kraid_kihunters_revisit)

presets_gtclassic_kraid_kraid_etank:
    %cm_preset("Kraid E-tank", #preset_gtclassic_kraid_kraid_etank)

presets_gtclassic_kraid_leaving_kraids_lair:
    %cm_preset("Leaving Kraids Lair", #preset_gtclassic_kraid_leaving_kraids_lair)


; Bootless Upper Norfair
presets_gtclassic_bootless_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_gtclassic_bootless_upper_norfair_business_center)

presets_gtclassic_bootless_upper_norfair_cathedral:
    %cm_preset("Cathedral", #preset_gtclassic_bootless_upper_norfair_cathedral)

presets_gtclassic_bootless_upper_norfair_rising_tide:
    %cm_preset("Rising Tide", #preset_gtclassic_bootless_upper_norfair_rising_tide)

presets_gtclassic_bootless_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_gtclassic_bootless_upper_norfair_bubble_mountain)

presets_gtclassic_bootless_upper_norfair_magdollite_tunnel:
    %cm_preset("Magdollite Tunnel", #preset_gtclassic_bootless_upper_norfair_magdollite_tunnel)

presets_gtclassic_bootless_upper_norfair_kronic_room:
    %cm_preset("Kronic Room", #preset_gtclassic_bootless_upper_norfair_kronic_room)

presets_gtclassic_bootless_upper_norfair_lava_dive:
    %cm_preset("Lava Dive", #preset_gtclassic_bootless_upper_norfair_lava_dive)

presets_gtclassic_bootless_upper_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_gtclassic_bootless_upper_norfair_ln_main_hall)

presets_gtclassic_bootless_upper_norfair_prepillars:
    %cm_preset("Pre-Pillars", #preset_gtclassic_bootless_upper_norfair_prepillars)

presets_gtclassic_bootless_upper_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_gtclassic_bootless_upper_norfair_green_gate_glitch)

presets_gtclassic_bootless_upper_norfair_gt_code:
    %cm_preset("GT Code", #preset_gtclassic_bootless_upper_norfair_gt_code)


; Hi Jump Upper Norfair
presets_gtclassic_hi_jump_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_gtclassic_hi_jump_upper_norfair_business_center)

presets_gtclassic_hi_jump_upper_norfair_hi_jump_etank:
    %cm_preset("Hi Jump E-tank", #preset_gtclassic_hi_jump_upper_norfair_hi_jump_etank)

presets_gtclassic_hi_jump_upper_norfair_leaving_hi_jump:
    %cm_preset("Leaving Hi Jump", #preset_gtclassic_hi_jump_upper_norfair_leaving_hi_jump)

presets_gtclassic_hi_jump_upper_norfair_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_gtclassic_hi_jump_upper_norfair_business_center_revisit)

presets_gtclassic_hi_jump_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_gtclassic_hi_jump_upper_norfair_precathedral)

presets_gtclassic_hi_jump_upper_norfair_cathedral:
    %cm_preset("Cathedral", #preset_gtclassic_hi_jump_upper_norfair_cathedral)

presets_gtclassic_hi_jump_upper_norfair_rising_tide:
    %cm_preset("Rising Tide", #preset_gtclassic_hi_jump_upper_norfair_rising_tide)

presets_gtclassic_hi_jump_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_gtclassic_hi_jump_upper_norfair_bubble_mountain)

presets_gtclassic_hi_jump_upper_norfair_magdollite_tunnel:
    %cm_preset("Magdollite Tunnel", #preset_gtclassic_hi_jump_upper_norfair_magdollite_tunnel)

presets_gtclassic_hi_jump_upper_norfair_kronic_room:
    %cm_preset("Kronic Room", #preset_gtclassic_hi_jump_upper_norfair_kronic_room)

presets_gtclassic_hi_jump_upper_norfair_lava_dive:
    %cm_preset("Lava Dive", #preset_gtclassic_hi_jump_upper_norfair_lava_dive)

presets_gtclassic_hi_jump_upper_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_gtclassic_hi_jump_upper_norfair_ln_main_hall)

presets_gtclassic_hi_jump_upper_norfair_prepillars:
    %cm_preset("Pre-Pillars", #preset_gtclassic_hi_jump_upper_norfair_prepillars)

presets_gtclassic_hi_jump_upper_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_gtclassic_hi_jump_upper_norfair_green_gate_glitch)

presets_gtclassic_hi_jump_upper_norfair_gt_code:
    %cm_preset("GT Code", #preset_gtclassic_hi_jump_upper_norfair_gt_code)


; Lower Norfair
presets_gtclassic_lower_norfair_leaving_golden_torizo:
    %cm_preset("Leaving Golden Torizo", #preset_gtclassic_lower_norfair_leaving_golden_torizo)

presets_gtclassic_lower_norfair_green_gate_revisit:
    %cm_preset("Green Gate Revisit", #preset_gtclassic_lower_norfair_green_gate_revisit)

presets_gtclassic_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room in the Game", #preset_gtclassic_lower_norfair_worst_room_in_the_game)

presets_gtclassic_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_gtclassic_lower_norfair_amphitheatre)

presets_gtclassic_lower_norfair_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_gtclassic_lower_norfair_kihunter_stairs_down)

presets_gtclassic_lower_norfair_wasteland:
    %cm_preset("Wasteland", #preset_gtclassic_lower_norfair_wasteland)

presets_gtclassic_lower_norfair_metal_ninja_pirates:
    %cm_preset("Metal Ninja Pirates", #preset_gtclassic_lower_norfair_metal_ninja_pirates)

presets_gtclassic_lower_norfair_plowerhouse:
    %cm_preset("Plowerhouse", #preset_gtclassic_lower_norfair_plowerhouse)

presets_gtclassic_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_gtclassic_lower_norfair_ridley)

presets_gtclassic_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_gtclassic_lower_norfair_leaving_ridley)

presets_gtclassic_lower_norfair_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_gtclassic_lower_norfair_reverse_plowerhouse)

presets_gtclassic_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_gtclassic_lower_norfair_wasteland_revisit)

presets_gtclassic_lower_norfair_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_gtclassic_lower_norfair_kihunter_stairs_up)

presets_gtclassic_lower_norfair_fireflea_room:
    %cm_preset("Fireflea Room", #preset_gtclassic_lower_norfair_fireflea_room)

presets_gtclassic_lower_norfair_springball_maze:
    %cm_preset("Springball Maze", #preset_gtclassic_lower_norfair_springball_maze)

presets_gtclassic_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_gtclassic_lower_norfair_three_musketeers)

presets_gtclassic_lower_norfair_single_chamber_final:
    %cm_preset("Single Chamber Final", #preset_gtclassic_lower_norfair_single_chamber_final)

presets_gtclassic_lower_norfair_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_gtclassic_lower_norfair_bubble_mountain_final)

presets_gtclassic_lower_norfair_frog_speedway:
    %cm_preset("Frog Speedway", #preset_gtclassic_lower_norfair_frog_speedway)

presets_gtclassic_lower_norfair_business_center_final:
    %cm_preset("Business Center Final", #preset_gtclassic_lower_norfair_business_center_final)


; Maridia
presets_gtclassic_maridia_maridia_tube_revisit:
    %cm_preset("Maridia Tube Revisit", #preset_gtclassic_maridia_maridia_tube_revisit)

presets_gtclassic_maridia_fish_tank:
    %cm_preset("Fish Tank", #preset_gtclassic_maridia_fish_tank)

presets_gtclassic_maridia_mt_everest:
    %cm_preset("Mt Everest", #preset_gtclassic_maridia_mt_everest)

presets_gtclassic_maridia_crab_shaft:
    %cm_preset("Crab Shaft", #preset_gtclassic_maridia_crab_shaft)

presets_gtclassic_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_gtclassic_maridia_aqueduct)

presets_gtclassic_maridia_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_gtclassic_maridia_botwoon_hallway)

presets_gtclassic_maridia_botwoon:
    %cm_preset("Botwoon", #preset_gtclassic_maridia_botwoon)

presets_gtclassic_maridia_halfie_setup:
    %cm_preset("Halfie Setup", #preset_gtclassic_maridia_halfie_setup)

presets_gtclassic_maridia_draygon:
    %cm_preset("Draygon", #preset_gtclassic_maridia_draygon)

presets_gtclassic_maridia_reverse_halfie_spikesuit:
    %cm_preset("Reverse Halfie (Spikesuit)", #preset_gtclassic_maridia_reverse_halfie_spikesuit)

presets_gtclassic_maridia_womple_jump:
    %cm_preset("Womple Jump", #preset_gtclassic_maridia_womple_jump)

presets_gtclassic_maridia_reverse_halfie_climb:
    %cm_preset("Reverse Halfie Climb", #preset_gtclassic_maridia_reverse_halfie_climb)

presets_gtclassic_maridia_reverse_botwoon_etank:
    %cm_preset("Reverse Botwoon E-tank", #preset_gtclassic_maridia_reverse_botwoon_etank)

presets_gtclassic_maridia_reverse_botwoon_hallway:
    %cm_preset("Reverse Botwoon Hallway", #preset_gtclassic_maridia_reverse_botwoon_hallway)

presets_gtclassic_maridia_aqueduct_revisit:
    %cm_preset("Aqueduct Revisit", #preset_gtclassic_maridia_aqueduct_revisit)

presets_gtclassic_maridia_reverse_crab_shaft:
    %cm_preset("Reverse Crab Shaft", #preset_gtclassic_maridia_reverse_crab_shaft)

presets_gtclassic_maridia_mt_everest_revisit:
    %cm_preset("Mt Everest Revisit", #preset_gtclassic_maridia_mt_everest_revisit)

presets_gtclassic_maridia_red_brinstar_green_gate:
    %cm_preset("Red Brinstar Green Gate", #preset_gtclassic_maridia_red_brinstar_green_gate)


; Wrecked Ship
presets_gtclassic_wrecked_ship_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_gtclassic_wrecked_ship_crateria_kihunters)

presets_gtclassic_wrecked_ship_moat:
    %cm_preset("Moat", #preset_gtclassic_wrecked_ship_moat)

presets_gtclassic_wrecked_ship_ocean:
    %cm_preset("Ocean", #preset_gtclassic_wrecked_ship_ocean)

presets_gtclassic_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_gtclassic_wrecked_ship_wrecked_ship_shaft)

presets_gtclassic_wrecked_ship_basement:
    %cm_preset("Basement", #preset_gtclassic_wrecked_ship_basement)

presets_gtclassic_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_gtclassic_wrecked_ship_phantoon)

presets_gtclassic_wrecked_ship_shaft_climb:
    %cm_preset("Shaft Climb", #preset_gtclassic_wrecked_ship_shaft_climb)

presets_gtclassic_wrecked_ship_ocean_revisit:
    %cm_preset("Ocean Revisit", #preset_gtclassic_wrecked_ship_ocean_revisit)

presets_gtclassic_wrecked_ship_crateria_kihunters_revisit:
    %cm_preset("Crateria Kihunters Revisit", #preset_gtclassic_wrecked_ship_crateria_kihunters_revisit)

presets_gtclassic_wrecked_ship_parlor_return:
    %cm_preset("Parlor Return", #preset_gtclassic_wrecked_ship_parlor_return)

presets_gtclassic_wrecked_ship_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_gtclassic_wrecked_ship_terminator_revisit)

presets_gtclassic_wrecked_ship_green_pirate_shaft_2:
    %cm_preset("Green Pirate Shaft", #preset_gtclassic_wrecked_ship_green_pirate_shaft_2)

presets_gtclassic_wrecked_ship_g4_elevator:
    %cm_preset("G4 Elevator", #preset_gtclassic_wrecked_ship_g4_elevator)


; Tourian
presets_gtclassic_tourian_tourian_elevator_room:
    %cm_preset("Tourian Elevator Room", #preset_gtclassic_tourian_tourian_elevator_room)

presets_gtclassic_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_gtclassic_tourian_metroids_1)

presets_gtclassic_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_gtclassic_tourian_metroids_2)

presets_gtclassic_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_gtclassic_tourian_metroids_3)

presets_gtclassic_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_gtclassic_tourian_metroids_4)

presets_gtclassic_tourian_giant_hoppers:
    %cm_preset("Giant Hoppers", #preset_gtclassic_tourian_giant_hoppers)

presets_gtclassic_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_gtclassic_tourian_baby_skip)

presets_gtclassic_tourian_gedora_room:
    %cm_preset("Gedora Room", #preset_gtclassic_tourian_gedora_room)

presets_gtclassic_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_gtclassic_tourian_zeb_skip)

presets_gtclassic_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_gtclassic_tourian_escape_room_3)

presets_gtclassic_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_gtclassic_tourian_escape_room_4)

presets_gtclassic_tourian_climb_spark:
    %cm_preset("Climb Spark", #preset_gtclassic_tourian_climb_spark)

presets_gtclassic_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_gtclassic_tourian_escape_parlor)


