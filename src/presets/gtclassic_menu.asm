PresetsMenuGtclassic:
    dw #presets_goto_gtclassic_crateria
    dw #presets_goto_gtclassic_brinstar
    dw #presets_goto_gtclassic_kraids_lair
    dw #presets_goto_gtclassic_bootless_upper_norfair
    dw #presets_goto_gtclassic_hijump_upper_norfair
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

presets_goto_gtclassic_kraids_lair:
    %cm_submenu("Kraid's Lair", #presets_submenu_gtclassic_kraids_lair)

presets_goto_gtclassic_bootless_upper_norfair:
    %cm_submenu("Bootless Upper Norfair", #presets_submenu_gtclassic_bootless_upper_norfair)

presets_goto_gtclassic_hijump_upper_norfair:
    %cm_submenu("Hi-Jump Upper Norfair", #presets_submenu_gtclassic_hijump_upper_norfair)

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
    dw #presets_gtclassic_crateria_ceres_escape
    dw #presets_gtclassic_crateria_ceres_last_3_rooms
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
    dw #presets_gtclassic_brinstar_breaking_the_tube
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_gtclassic_kraids_lair:
    dw #presets_gtclassic_kraids_lair_entering_kraids_lair
    dw #presets_gtclassic_kraids_lair_kraid_kihunters
    dw #presets_gtclassic_kraids_lair_minikraid
    dw #presets_gtclassic_kraids_lair_kraid
    dw #presets_gtclassic_kraids_lair_leaving_varia
    dw #presets_gtclassic_kraids_lair_minikraid_revisit
    dw #presets_gtclassic_kraids_lair_kraid_kihunters_revisit
    dw #presets_gtclassic_kraids_lair_kraid_etank
    dw #presets_gtclassic_kraids_lair_leaving_kraids_lair
    dw #$0000
    %cm_header("KRAID'S LAIR")

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

presets_submenu_gtclassic_hijump_upper_norfair:
    dw #presets_gtclassic_hijump_upper_norfair_business_center
    dw #presets_gtclassic_hijump_upper_norfair_hijump_etank
    dw #presets_gtclassic_hijump_upper_norfair_leaving_hijump
    dw #presets_gtclassic_hijump_upper_norfair_business_center_revisit
    dw #presets_gtclassic_hijump_upper_norfair_precathedral
    dw #presets_gtclassic_hijump_upper_norfair_cathedral
    dw #presets_gtclassic_hijump_upper_norfair_rising_tide
    dw #presets_gtclassic_hijump_upper_norfair_bubble_mountain
    dw #presets_gtclassic_hijump_upper_norfair_magdollite_tunnel
    dw #presets_gtclassic_hijump_upper_norfair_kronic_room
    dw #presets_gtclassic_hijump_upper_norfair_lava_dive
    dw #presets_gtclassic_hijump_upper_norfair_ln_main_hall
    dw #presets_gtclassic_hijump_upper_norfair_prepillars
    dw #presets_gtclassic_hijump_upper_norfair_green_gate_glitch
    dw #presets_gtclassic_hijump_upper_norfair_gt_code
    dw #$0000
    %cm_header("HI-JUMP UPPER NORFAIR")

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
    dw #presets_gtclassic_maridia_whomple_jump
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
    dw #presets_gtclassic_wrecked_ship_green_pirate_shaft
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
    dw #presets_gtclassic_tourian_gadora_room
    dw #presets_gtclassic_tourian_zeb_skip
    dw #presets_gtclassic_tourian_mother_brain_2
    dw #presets_gtclassic_tourian_zebes_escape
    dw #presets_gtclassic_tourian_escape_room_3
    dw #presets_gtclassic_tourian_escape_room_4
    dw #presets_gtclassic_tourian_escape_climb
    dw #presets_gtclassic_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")


; Crateria
presets_gtclassic_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_names_ceres_elevator, #preset_gtclassic_crateria_ceres_elevator)

presets_gtclassic_crateria_ceres_escape:
    %cm_preset("Ceres Escape", #preset_names_ceres_escape, #preset_gtclassic_crateria_ceres_escape)

presets_gtclassic_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_names_ceres_last_3_rooms, #preset_gtclassic_crateria_ceres_last_3_rooms)

presets_gtclassic_crateria_ship:
    %cm_preset("Ship", #preset_names_ship, #preset_gtclassic_crateria_ship)

presets_gtclassic_crateria_parlor:
    %cm_preset("Parlor", #preset_names_parlor, #preset_gtclassic_crateria_parlor)

presets_gtclassic_crateria_parlor_downback:
    %cm_preset("Parlor Downback", #preset_names_parlor_downback, #preset_gtclassic_crateria_parlor_downback)

presets_gtclassic_crateria_climb_down:
    %cm_preset("Climb Down", #preset_names_climb_down, #preset_gtclassic_crateria_climb_down)

presets_gtclassic_crateria_pit_room:
    %cm_preset("Pit Room", #preset_names_pit_room, #preset_gtclassic_crateria_pit_room)

presets_gtclassic_crateria_morph:
    %cm_preset("Morph", #preset_names_morph, #preset_gtclassic_crateria_morph)

presets_gtclassic_crateria_construction_zone_down:
    %cm_preset("Construction Zone Down", #preset_names_construction_zone_down, #preset_gtclassic_crateria_construction_zone_down)

presets_gtclassic_crateria_construction_zone_up:
    %cm_preset("Construction Zone Up", #preset_names_construction_zone_up, #preset_gtclassic_crateria_construction_zone_up)

presets_gtclassic_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_names_pit_room_revisit, #preset_gtclassic_crateria_pit_room_revisit)

presets_gtclassic_crateria_climb_up:
    %cm_preset("Climb Up", #preset_names_climb_up, #preset_gtclassic_crateria_climb_up)

presets_gtclassic_crateria_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_names_parlor_revisit, #preset_gtclassic_crateria_parlor_revisit)

presets_gtclassic_crateria_flyway:
    %cm_preset("Flyway", #preset_names_flyway, #preset_gtclassic_crateria_flyway)

presets_gtclassic_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_names_bomb_torizo, #preset_gtclassic_crateria_bomb_torizo)

presets_gtclassic_crateria_alcatraz:
    %cm_preset("Alcatraz", #preset_names_alcatraz, #preset_gtclassic_crateria_alcatraz)

presets_gtclassic_crateria_terminator:
    %cm_preset("Terminator", #preset_names_terminator, #preset_gtclassic_crateria_terminator)

presets_gtclassic_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_names_green_pirate_shaft, #preset_gtclassic_crateria_green_pirate_shaft)


; Brinstar
presets_gtclassic_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_names_green_brinstar_elevator, #preset_gtclassic_brinstar_green_brinstar_elevator)

presets_gtclassic_brinstar_early_supers:
    %cm_preset("Early Supers", #preset_names_early_supers, #preset_gtclassic_brinstar_early_supers)

presets_gtclassic_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_names_dachora_room, #preset_gtclassic_brinstar_dachora_room)

presets_gtclassic_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_names_big_pink, #preset_gtclassic_brinstar_big_pink)

presets_gtclassic_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_names_green_hill_zone, #preset_gtclassic_brinstar_green_hill_zone)

presets_gtclassic_brinstar_noob_bridge:
    %cm_preset("Noob Bridge", #preset_names_noob_bridge, #preset_gtclassic_brinstar_noob_bridge)

presets_gtclassic_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_names_red_tower, #preset_gtclassic_brinstar_red_tower)

presets_gtclassic_brinstar_hellway:
    %cm_preset("Hellway", #preset_names_hellway, #preset_gtclassic_brinstar_hellway)

presets_gtclassic_brinstar_caterpillars_down:
    %cm_preset("Caterpillars Down", #preset_names_caterpillars_down, #preset_gtclassic_brinstar_caterpillars_down)

presets_gtclassic_brinstar_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_names_alpha_power_bombs, #preset_gtclassic_brinstar_alpha_power_bombs)

presets_gtclassic_brinstar_caterpillars_up:
    %cm_preset("Caterpillars Up", #preset_names_caterpillars_up, #preset_gtclassic_brinstar_caterpillars_up)

presets_gtclassic_brinstar_reverse_hellway:
    %cm_preset("Reverse Hellway", #preset_names_reverse_hellway, #preset_gtclassic_brinstar_reverse_hellway)

presets_gtclassic_brinstar_red_tower_down:
    %cm_preset("Red Tower Down", #preset_names_red_tower_down, #preset_gtclassic_brinstar_red_tower_down)

presets_gtclassic_brinstar_skree_boost:
    %cm_preset("Skree Boost", #preset_names_skree_boost, #preset_gtclassic_brinstar_skree_boost)

presets_gtclassic_brinstar_below_spazer:
    %cm_preset("Below Spazer", #preset_names_below_spazer, #preset_gtclassic_brinstar_below_spazer)

presets_gtclassic_brinstar_breaking_the_tube:
    %cm_preset("Breaking The Tube", #preset_names_breaking_the_tube, #preset_gtclassic_brinstar_breaking_the_tube)


; Kraid's Lair
presets_gtclassic_kraids_lair_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_names_entering_kraids_lair, #preset_gtclassic_kraids_lair_entering_kraids_lair)

presets_gtclassic_kraids_lair_kraid_kihunters:
    %cm_preset("Kraid Kihunters", #preset_names_kraid_kihunters, #preset_gtclassic_kraids_lair_kraid_kihunters)

presets_gtclassic_kraids_lair_minikraid:
    %cm_preset("Mini-Kraid", #preset_names_minikraid, #preset_gtclassic_kraids_lair_minikraid)

presets_gtclassic_kraids_lair_kraid:
    %cm_preset("Kraid", #preset_names_kraid, #preset_gtclassic_kraids_lair_kraid)

presets_gtclassic_kraids_lair_leaving_varia:
    %cm_preset("Leaving Varia", #preset_names_leaving_varia, #preset_gtclassic_kraids_lair_leaving_varia)

presets_gtclassic_kraids_lair_minikraid_revisit:
    %cm_preset("Mini-Kraid Revisit", #preset_names_minikraid_revisit, #preset_gtclassic_kraids_lair_minikraid_revisit)

presets_gtclassic_kraids_lair_kraid_kihunters_revisit:
    %cm_preset("Kraid Kihunters Revisit", #preset_names_kraid_kihunters_revisit, #preset_gtclassic_kraids_lair_kraid_kihunters_revisit)

presets_gtclassic_kraids_lair_kraid_etank:
    %cm_preset("Kraid E-Tank", #preset_names_kraid_etank, #preset_gtclassic_kraids_lair_kraid_etank)

presets_gtclassic_kraids_lair_leaving_kraids_lair:
    %cm_preset("Leaving Kraid's Lair", #preset_names_leaving_kraids_lair, #preset_gtclassic_kraids_lair_leaving_kraids_lair)


; Bootless Upper Norfair
presets_gtclassic_bootless_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_names_business_center, #preset_gtclassic_bootless_upper_norfair_business_center)

presets_gtclassic_bootless_upper_norfair_cathedral:
    %cm_preset("Cathedral", #preset_names_cathedral, #preset_gtclassic_bootless_upper_norfair_cathedral)

presets_gtclassic_bootless_upper_norfair_rising_tide:
    %cm_preset("Rising Tide", #preset_names_rising_tide, #preset_gtclassic_bootless_upper_norfair_rising_tide)

presets_gtclassic_bootless_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_names_bubble_mountain, #preset_gtclassic_bootless_upper_norfair_bubble_mountain)

presets_gtclassic_bootless_upper_norfair_magdollite_tunnel:
    %cm_preset("Magdollite Tunnel", #preset_names_magdollite_tunnel, #preset_gtclassic_bootless_upper_norfair_magdollite_tunnel)

presets_gtclassic_bootless_upper_norfair_kronic_room:
    %cm_preset("Kronic Room", #preset_names_kronic_room, #preset_gtclassic_bootless_upper_norfair_kronic_room)

presets_gtclassic_bootless_upper_norfair_lava_dive:
    %cm_preset("Lava Dive", #preset_names_lava_dive, #preset_gtclassic_bootless_upper_norfair_lava_dive)

presets_gtclassic_bootless_upper_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_names_ln_main_hall, #preset_gtclassic_bootless_upper_norfair_ln_main_hall)

presets_gtclassic_bootless_upper_norfair_prepillars:
    %cm_preset("Pre-Pillars", #preset_names_prepillars, #preset_gtclassic_bootless_upper_norfair_prepillars)

presets_gtclassic_bootless_upper_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_names_green_gate_glitch, #preset_gtclassic_bootless_upper_norfair_green_gate_glitch)

presets_gtclassic_bootless_upper_norfair_gt_code:
    %cm_preset("GT Code", #preset_names_gt_code, #preset_gtclassic_bootless_upper_norfair_gt_code)


; Hi-Jump Upper Norfair
presets_gtclassic_hijump_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_names_business_center, #preset_gtclassic_hijump_upper_norfair_business_center)

presets_gtclassic_hijump_upper_norfair_hijump_etank:
    %cm_preset("Hi-Jump E-Tank", #preset_names_hijump_etank, #preset_gtclassic_hijump_upper_norfair_hijump_etank)

presets_gtclassic_hijump_upper_norfair_leaving_hijump:
    %cm_preset("Leaving Hi-Jump", #preset_names_leaving_hijump, #preset_gtclassic_hijump_upper_norfair_leaving_hijump)

presets_gtclassic_hijump_upper_norfair_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_names_business_center_revisit, #preset_gtclassic_hijump_upper_norfair_business_center_revisit)

presets_gtclassic_hijump_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_names_precathedral, #preset_gtclassic_hijump_upper_norfair_precathedral)

presets_gtclassic_hijump_upper_norfair_cathedral:
    %cm_preset("Cathedral", #preset_names_cathedral, #preset_gtclassic_hijump_upper_norfair_cathedral)

presets_gtclassic_hijump_upper_norfair_rising_tide:
    %cm_preset("Rising Tide", #preset_names_rising_tide, #preset_gtclassic_hijump_upper_norfair_rising_tide)

presets_gtclassic_hijump_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_names_bubble_mountain, #preset_gtclassic_hijump_upper_norfair_bubble_mountain)

presets_gtclassic_hijump_upper_norfair_magdollite_tunnel:
    %cm_preset("Magdollite Tunnel", #preset_names_magdollite_tunnel, #preset_gtclassic_hijump_upper_norfair_magdollite_tunnel)

presets_gtclassic_hijump_upper_norfair_kronic_room:
    %cm_preset("Kronic Room", #preset_names_kronic_room, #preset_gtclassic_hijump_upper_norfair_kronic_room)

presets_gtclassic_hijump_upper_norfair_lava_dive:
    %cm_preset("Lava Dive", #preset_names_lava_dive, #preset_gtclassic_hijump_upper_norfair_lava_dive)

presets_gtclassic_hijump_upper_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_names_ln_main_hall, #preset_gtclassic_hijump_upper_norfair_ln_main_hall)

presets_gtclassic_hijump_upper_norfair_prepillars:
    %cm_preset("Pre-Pillars", #preset_names_prepillars, #preset_gtclassic_hijump_upper_norfair_prepillars)

presets_gtclassic_hijump_upper_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_names_green_gate_glitch, #preset_gtclassic_hijump_upper_norfair_green_gate_glitch)

presets_gtclassic_hijump_upper_norfair_gt_code:
    %cm_preset("GT Code", #preset_names_gt_code, #preset_gtclassic_hijump_upper_norfair_gt_code)


; Lower Norfair
presets_gtclassic_lower_norfair_leaving_golden_torizo:
    %cm_preset("Leaving Golden Torizo", #preset_names_leaving_golden_torizo, #preset_gtclassic_lower_norfair_leaving_golden_torizo)

presets_gtclassic_lower_norfair_green_gate_revisit:
    %cm_preset("Green Gate Revisit", #preset_names_green_gate_revisit, #preset_gtclassic_lower_norfair_green_gate_revisit)

presets_gtclassic_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_names_worst_room_in_the_game, #preset_gtclassic_lower_norfair_worst_room_in_the_game)

presets_gtclassic_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_names_amphitheatre, #preset_gtclassic_lower_norfair_amphitheatre)

presets_gtclassic_lower_norfair_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_names_kihunter_stairs_down, #preset_gtclassic_lower_norfair_kihunter_stairs_down)

presets_gtclassic_lower_norfair_wasteland:
    %cm_preset("Wasteland", #preset_names_wasteland, #preset_gtclassic_lower_norfair_wasteland)

presets_gtclassic_lower_norfair_metal_ninja_pirates:
    %cm_preset("Metal Ninja Pirates", #preset_names_metal_ninja_pirates, #preset_gtclassic_lower_norfair_metal_ninja_pirates)

presets_gtclassic_lower_norfair_plowerhouse:
    %cm_preset("Plowerhouse", #preset_names_plowerhouse, #preset_gtclassic_lower_norfair_plowerhouse)

presets_gtclassic_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_names_ridley, #preset_gtclassic_lower_norfair_ridley)

presets_gtclassic_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_names_leaving_ridley, #preset_gtclassic_lower_norfair_leaving_ridley)

presets_gtclassic_lower_norfair_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_names_reverse_plowerhouse, #preset_gtclassic_lower_norfair_reverse_plowerhouse)

presets_gtclassic_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_names_wasteland_revisit, #preset_gtclassic_lower_norfair_wasteland_revisit)

presets_gtclassic_lower_norfair_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_names_kihunter_stairs_up, #preset_gtclassic_lower_norfair_kihunter_stairs_up)

presets_gtclassic_lower_norfair_fireflea_room:
    %cm_preset("Fireflea Room", #preset_names_fireflea_room, #preset_gtclassic_lower_norfair_fireflea_room)

presets_gtclassic_lower_norfair_springball_maze:
    %cm_preset("Springball Maze", #preset_names_springball_maze, #preset_gtclassic_lower_norfair_springball_maze)

presets_gtclassic_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_names_three_musketeers, #preset_gtclassic_lower_norfair_three_musketeers)

presets_gtclassic_lower_norfair_single_chamber_final:
    %cm_preset("Single Chamber Final", #preset_names_single_chamber_final, #preset_gtclassic_lower_norfair_single_chamber_final)

presets_gtclassic_lower_norfair_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_names_bubble_mountain_final, #preset_gtclassic_lower_norfair_bubble_mountain_final)

presets_gtclassic_lower_norfair_frog_speedway:
    %cm_preset("Frog Speedway", #preset_names_frog_speedway, #preset_gtclassic_lower_norfair_frog_speedway)

presets_gtclassic_lower_norfair_business_center_final:
    %cm_preset("Business Center Final", #preset_names_business_center_final, #preset_gtclassic_lower_norfair_business_center_final)


; Maridia
presets_gtclassic_maridia_maridia_tube_revisit:
    %cm_preset("Maridia Tube Revisit", #preset_names_maridia_tube_revisit, #preset_gtclassic_maridia_maridia_tube_revisit)

presets_gtclassic_maridia_fish_tank:
    %cm_preset("Fish Tank", #preset_names_fish_tank, #preset_gtclassic_maridia_fish_tank)

presets_gtclassic_maridia_mt_everest:
    %cm_preset("Mt. Everest", #preset_names_mt_everest, #preset_gtclassic_maridia_mt_everest)

presets_gtclassic_maridia_crab_shaft:
    %cm_preset("Crab Shaft", #preset_names_crab_shaft, #preset_gtclassic_maridia_crab_shaft)

presets_gtclassic_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_names_aqueduct, #preset_gtclassic_maridia_aqueduct)

presets_gtclassic_maridia_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_names_botwoon_hallway, #preset_gtclassic_maridia_botwoon_hallway)

presets_gtclassic_maridia_botwoon:
    %cm_preset("Botwoon", #preset_names_botwoon, #preset_gtclassic_maridia_botwoon)

presets_gtclassic_maridia_halfie_setup:
    %cm_preset("Halfie Setup", #preset_names_halfie_setup, #preset_gtclassic_maridia_halfie_setup)

presets_gtclassic_maridia_draygon:
    %cm_preset("Draygon", #preset_names_draygon, #preset_gtclassic_maridia_draygon)

presets_gtclassic_maridia_reverse_halfie_spikesuit:
    %cm_preset("Reverse Halfie (Spikesuit)", #preset_names_reverse_halfie_spikesuit, #preset_gtclassic_maridia_reverse_halfie_spikesuit)

presets_gtclassic_maridia_whomple_jump:
    %cm_preset("Whomple Jump", #preset_names_whomple_jump, #preset_gtclassic_maridia_whomple_jump)

presets_gtclassic_maridia_reverse_halfie_climb:
    %cm_preset("Reverse Halfie Climb", #preset_names_reverse_halfie_climb, #preset_gtclassic_maridia_reverse_halfie_climb)

presets_gtclassic_maridia_reverse_botwoon_etank:
    %cm_preset("Reverse Botwoon E-Tank", #preset_names_reverse_botwoon_etank, #preset_gtclassic_maridia_reverse_botwoon_etank)

presets_gtclassic_maridia_reverse_botwoon_hallway:
    %cm_preset("Reverse Botwoon Hallway", #preset_names_reverse_botwoon_hallway, #preset_gtclassic_maridia_reverse_botwoon_hallway)

presets_gtclassic_maridia_aqueduct_revisit:
    %cm_preset("Aqueduct Revisit", #preset_names_aqueduct_revisit, #preset_gtclassic_maridia_aqueduct_revisit)

presets_gtclassic_maridia_reverse_crab_shaft:
    %cm_preset("Reverse Crab Shaft", #preset_names_reverse_crab_shaft, #preset_gtclassic_maridia_reverse_crab_shaft)

presets_gtclassic_maridia_mt_everest_revisit:
    %cm_preset("Mt. Everest Revisit", #preset_names_mt_everest_revisit, #preset_gtclassic_maridia_mt_everest_revisit)

presets_gtclassic_maridia_red_brinstar_green_gate:
    %cm_preset("Red Brinstar Green Gate", #preset_names_red_brinstar_green_gate, #preset_gtclassic_maridia_red_brinstar_green_gate)


; Wrecked Ship
presets_gtclassic_wrecked_ship_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_names_crateria_kihunters, #preset_gtclassic_wrecked_ship_crateria_kihunters)

presets_gtclassic_wrecked_ship_moat:
    %cm_preset("Moat", #preset_names_moat, #preset_gtclassic_wrecked_ship_moat)

presets_gtclassic_wrecked_ship_ocean:
    %cm_preset("Ocean", #preset_names_ocean, #preset_gtclassic_wrecked_ship_ocean)

presets_gtclassic_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_names_wrecked_ship_shaft, #preset_gtclassic_wrecked_ship_wrecked_ship_shaft)

presets_gtclassic_wrecked_ship_basement:
    %cm_preset("Basement", #preset_names_basement, #preset_gtclassic_wrecked_ship_basement)

presets_gtclassic_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_names_phantoon, #preset_gtclassic_wrecked_ship_phantoon)

presets_gtclassic_wrecked_ship_shaft_climb:
    %cm_preset("Shaft Climb", #preset_names_shaft_climb, #preset_gtclassic_wrecked_ship_shaft_climb)

presets_gtclassic_wrecked_ship_ocean_revisit:
    %cm_preset("Ocean Revisit", #preset_names_ocean_revisit, #preset_gtclassic_wrecked_ship_ocean_revisit)

presets_gtclassic_wrecked_ship_crateria_kihunters_revisit:
    %cm_preset("Crateria Kihunters Revisit", #preset_names_crateria_kihunters_revisit, #preset_gtclassic_wrecked_ship_crateria_kihunters_revisit)

presets_gtclassic_wrecked_ship_parlor_return:
    %cm_preset("Parlor Return", #preset_names_parlor_return, #preset_gtclassic_wrecked_ship_parlor_return)

presets_gtclassic_wrecked_ship_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_names_terminator_revisit, #preset_gtclassic_wrecked_ship_terminator_revisit)

presets_gtclassic_wrecked_ship_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_names_green_pirate_shaft, #preset_gtclassic_wrecked_ship_green_pirate_shaft)

presets_gtclassic_wrecked_ship_g4_elevator:
    %cm_preset("G4 Elevator", #preset_names_g4_elevator, #preset_gtclassic_wrecked_ship_g4_elevator)


; Tourian
presets_gtclassic_tourian_tourian_elevator_room:
    %cm_preset("Tourian Elevator Room", #preset_names_tourian_elevator_room, #preset_gtclassic_tourian_tourian_elevator_room)

presets_gtclassic_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_names_metroids_1, #preset_gtclassic_tourian_metroids_1)

presets_gtclassic_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_names_metroids_2, #preset_gtclassic_tourian_metroids_2)

presets_gtclassic_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_names_metroids_3, #preset_gtclassic_tourian_metroids_3)

presets_gtclassic_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_names_metroids_4, #preset_gtclassic_tourian_metroids_4)

presets_gtclassic_tourian_giant_hoppers:
    %cm_preset("Giant Hoppers", #preset_names_giant_hoppers, #preset_gtclassic_tourian_giant_hoppers)

presets_gtclassic_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_names_baby_skip, #preset_gtclassic_tourian_baby_skip)

presets_gtclassic_tourian_gadora_room:
    %cm_preset("Gadora Room", #preset_names_gadora_room, #preset_gtclassic_tourian_gadora_room)

presets_gtclassic_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_names_zeb_skip, #preset_gtclassic_tourian_zeb_skip)

presets_gtclassic_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_names_mother_brain_2, #preset_gtclassic_tourian_mother_brain_2)

presets_gtclassic_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_names_zebes_escape, #preset_gtclassic_tourian_zebes_escape)

presets_gtclassic_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_names_escape_room_3, #preset_gtclassic_tourian_escape_room_3)

presets_gtclassic_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_names_escape_room_4, #preset_gtclassic_tourian_escape_room_4)

presets_gtclassic_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_names_escape_climb, #preset_gtclassic_tourian_escape_climb)

presets_gtclassic_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_names_escape_parlor, #preset_gtclassic_tourian_escape_parlor)

