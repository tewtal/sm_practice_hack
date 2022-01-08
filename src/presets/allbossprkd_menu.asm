PresetsMenuAllbossprkd:
    dw #presets_goto_allbossprkd_crateria
    dw #presets_goto_allbossprkd_brinstar
    dw #presets_goto_allbossprkd_wrecked_ship
    dw #presets_goto_allbossprkd_upper_norfair
    dw #presets_goto_allbossprkd_lower_norfair
    dw #presets_goto_allbossprkd_upper_norfair_revisit
    dw #presets_goto_allbossprkd_kraids_lair
    dw #presets_goto_allbossprkd_maridia
    dw #presets_goto_allbossprkd_tourian
    dw #$0000
    %cm_header("PRESETS FOR ALL BOSS PRKD")

presets_goto_allbossprkd_crateria:
    %cm_submenu("Crateria", #presets_submenu_allbossprkd_crateria)

presets_goto_allbossprkd_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_allbossprkd_brinstar)

presets_goto_allbossprkd_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_allbossprkd_wrecked_ship)

presets_goto_allbossprkd_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_allbossprkd_upper_norfair)

presets_goto_allbossprkd_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_allbossprkd_lower_norfair)

presets_goto_allbossprkd_upper_norfair_revisit:
    %cm_submenu("Upper Norfair Revisit", #presets_submenu_allbossprkd_upper_norfair_revisit)

presets_goto_allbossprkd_kraids_lair:
    %cm_submenu("Kraids Lair", #presets_submenu_allbossprkd_kraids_lair)

presets_goto_allbossprkd_maridia:
    %cm_submenu("Maridia", #presets_submenu_allbossprkd_maridia)

presets_goto_allbossprkd_tourian:
    %cm_submenu("Tourian", #presets_submenu_allbossprkd_tourian)

presets_submenu_allbossprkd_crateria:
    dw #presets_allbossprkd_crateria_ceres_elevator
    dw #presets_allbossprkd_crateria_ceres_last_3_rooms
    dw #presets_allbossprkd_crateria_ship
    dw #presets_allbossprkd_crateria_pit_room
    dw #presets_allbossprkd_crateria_morph
    dw #presets_allbossprkd_crateria_pit_room_revisit
    dw #presets_allbossprkd_crateria_climb
    dw #presets_allbossprkd_crateria_parlor
    dw #presets_allbossprkd_crateria_bomb_torizo
    dw #presets_allbossprkd_crateria_terminator
    dw #presets_allbossprkd_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_allbossprkd_brinstar:
    dw #presets_allbossprkd_brinstar_green_brinstar_elevator
    dw #presets_allbossprkd_brinstar_dachora_room
    dw #presets_allbossprkd_brinstar_big_pink
    dw #presets_allbossprkd_brinstar_spore_spawn
    dw #presets_allbossprkd_brinstar_sporefall
    dw #presets_allbossprkd_brinstar_big_pink_revisit
    dw #presets_allbossprkd_brinstar_red_tower
    dw #presets_allbossprkd_brinstar_hellway
    dw #presets_allbossprkd_brinstar_leaving_power_bombs
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_allbossprkd_wrecked_ship:
    dw #presets_allbossprkd_wrecked_ship_moat
    dw #presets_allbossprkd_wrecked_ship_ocean
    dw #presets_allbossprkd_wrecked_ship_entering_wrecked_ship
    dw #presets_allbossprkd_wrecked_ship_phantoon
    dw #presets_allbossprkd_wrecked_ship_wrecked_ship_shaft
    dw #presets_allbossprkd_wrecked_ship_attic
    dw #presets_allbossprkd_wrecked_ship_bowling_alley
    dw #presets_allbossprkd_wrecked_ship_leaving_gravity
    dw #presets_allbossprkd_wrecked_ship_red_tower_elevator
    dw #presets_allbossprkd_wrecked_ship_red_tower_descent
    dw #presets_allbossprkd_wrecked_ship_spazer
    dw #presets_allbossprkd_wrecked_ship_breaking_tube
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_allbossprkd_upper_norfair:
    dw #presets_allbossprkd_upper_norfair_business_center
    dw #presets_allbossprkd_upper_norfair_hi_jump_etank
    dw #presets_allbossprkd_upper_norfair_leaving_hi_jump
    dw #presets_allbossprkd_upper_norfair_ice_beam_hallway
    dw #presets_allbossprkd_upper_norfair_ice_maze
    dw #presets_allbossprkd_upper_norfair_ice_escape
    dw #presets_allbossprkd_upper_norfair_precathedral
    dw #presets_allbossprkd_upper_norfair_bubble_mountain
    dw #presets_allbossprkd_upper_norfair_single_chamber
    dw #presets_allbossprkd_upper_norfair_double_chamber_revisit
    dw #presets_allbossprkd_upper_norfair_volcano_room
    dw #presets_allbossprkd_upper_norfair_lava_spark
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_allbossprkd_lower_norfair:
    dw #presets_allbossprkd_lower_norfair_ln_main_hall
    dw #presets_allbossprkd_lower_norfair_green_gate_glitch
    dw #presets_allbossprkd_lower_norfair_golden_torizo
    dw #presets_allbossprkd_lower_norfair_screw_attack_escape
    dw #presets_allbossprkd_lower_norfair_worst_room_in_the_game
    dw #presets_allbossprkd_lower_norfair_amphitheatre
    dw #presets_allbossprkd_lower_norfair_kihunter_stairs
    dw #presets_allbossprkd_lower_norfair_wasteland
    dw #presets_allbossprkd_lower_norfair_metal_pirates
    dw #presets_allbossprkd_lower_norfair_ridley
    dw #presets_allbossprkd_lower_norfair_leaving_ridley
    dw #presets_allbossprkd_lower_norfair_wasteland_revisit
    dw #presets_allbossprkd_lower_norfair_kihunter_stairs_revisit
    dw #presets_allbossprkd_lower_norfair_fire_flea_room
    dw #presets_allbossprkd_lower_norfair_three_musketeers
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_allbossprkd_upper_norfair_revisit:
    dw #presets_allbossprkd_upper_norfair_revisit_bubble_mountain_revisit
    dw #presets_allbossprkd_upper_norfair_revisit_red_pirate_shaft
    dw #presets_allbossprkd_upper_norfair_revisit_acid_snakes_tunnel
    dw #presets_allbossprkd_upper_norfair_revisit_crocomire
    dw #presets_allbossprkd_upper_norfair_revisit_leaving_crocomire
    dw #presets_allbossprkd_upper_norfair_revisit_crocomire_escape
    dw #presets_allbossprkd_upper_norfair_revisit_business_center_revisit
    dw #$0000
    %cm_header("UPPER NORFAIR REVISIT")

presets_submenu_allbossprkd_kraids_lair:
    dw #presets_allbossprkd_kraids_lair_entering_kraids_lair
    dw #presets_allbossprkd_kraids_lair_baby_kraid_entering
    dw #presets_allbossprkd_kraids_lair_kraid
    dw #presets_allbossprkd_kraids_lair_baby_kraid_entering_2
    dw #presets_allbossprkd_kraids_lair_leaving_kraids_lair
    dw #$0000
    %cm_header("KRAIDS LAIR")

presets_submenu_allbossprkd_maridia:
    dw #presets_allbossprkd_maridia_mt_everest
    dw #presets_allbossprkd_maridia_aqueduct
    dw #presets_allbossprkd_maridia_botwoon
    dw #presets_allbossprkd_maridia_halfie
    dw #presets_allbossprkd_maridia_draygon
    dw #presets_allbossprkd_maridia_womple_jump
    dw #presets_allbossprkd_maridia_reverse_botwoon_hallway
    dw #presets_allbossprkd_maridia_aqueduct_revisit
    dw #presets_allbossprkd_maridia_mt_everest_revisit
    dw #presets_allbossprkd_maridia_red_brinstar_gate
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_allbossprkd_tourian:
    dw #presets_allbossprkd_tourian_crateria_kihunters
    dw #presets_allbossprkd_tourian_terminator_revisit
    dw #presets_allbossprkd_tourian_metroids_1
    dw #presets_allbossprkd_tourian_metroids_2
    dw #presets_allbossprkd_tourian_metroids_3
    dw #presets_allbossprkd_tourian_metroids_4
    dw #presets_allbossprkd_tourian_baby_skip
    dw #presets_allbossprkd_tourian_gadora_room
    dw #presets_allbossprkd_tourian_zeb_skip
    dw #presets_allbossprkd_tourian_escape_room_3
    dw #presets_allbossprkd_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Crateria
presets_allbossprkd_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_allbossprkd_crateria_ceres_elevator)

presets_allbossprkd_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_allbossprkd_crateria_ceres_last_3_rooms)

presets_allbossprkd_crateria_ship:
    %cm_preset("Ship", #preset_allbossprkd_crateria_ship)

presets_allbossprkd_crateria_pit_room:
    %cm_preset("Pit Room", #preset_allbossprkd_crateria_pit_room)

presets_allbossprkd_crateria_morph:
    %cm_preset("Morph", #preset_allbossprkd_crateria_morph)

presets_allbossprkd_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_allbossprkd_crateria_pit_room_revisit)

presets_allbossprkd_crateria_climb:
    %cm_preset("Climb", #preset_allbossprkd_crateria_climb)

presets_allbossprkd_crateria_parlor:
    %cm_preset("Parlor", #preset_allbossprkd_crateria_parlor)

presets_allbossprkd_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_allbossprkd_crateria_bomb_torizo)

presets_allbossprkd_crateria_terminator:
    %cm_preset("Terminator", #preset_allbossprkd_crateria_terminator)

presets_allbossprkd_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_allbossprkd_crateria_green_pirate_shaft)


; Brinstar
presets_allbossprkd_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_allbossprkd_brinstar_green_brinstar_elevator)

presets_allbossprkd_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_allbossprkd_brinstar_dachora_room)

presets_allbossprkd_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_allbossprkd_brinstar_big_pink)

presets_allbossprkd_brinstar_spore_spawn:
    %cm_preset("Spore Spawn", #preset_allbossprkd_brinstar_spore_spawn)

presets_allbossprkd_brinstar_sporefall:
    %cm_preset("Sporefall", #preset_allbossprkd_brinstar_sporefall)

presets_allbossprkd_brinstar_big_pink_revisit:
    %cm_preset("Big Pink Revisit", #preset_allbossprkd_brinstar_big_pink_revisit)

presets_allbossprkd_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_allbossprkd_brinstar_red_tower)

presets_allbossprkd_brinstar_hellway:
    %cm_preset("Hellway", #preset_allbossprkd_brinstar_hellway)

presets_allbossprkd_brinstar_leaving_power_bombs:
    %cm_preset("Leaving Power Bombs", #preset_allbossprkd_brinstar_leaving_power_bombs)


; Wrecked Ship
presets_allbossprkd_wrecked_ship_moat:
    %cm_preset("Moat", #preset_allbossprkd_wrecked_ship_moat)

presets_allbossprkd_wrecked_ship_ocean:
    %cm_preset("Ocean", #preset_allbossprkd_wrecked_ship_ocean)

presets_allbossprkd_wrecked_ship_entering_wrecked_ship:
    %cm_preset("Entering Wrecked Ship", #preset_allbossprkd_wrecked_ship_entering_wrecked_ship)

presets_allbossprkd_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_allbossprkd_wrecked_ship_phantoon)

presets_allbossprkd_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_allbossprkd_wrecked_ship_wrecked_ship_shaft)

presets_allbossprkd_wrecked_ship_attic:
    %cm_preset("Attic", #preset_allbossprkd_wrecked_ship_attic)

presets_allbossprkd_wrecked_ship_bowling_alley:
    %cm_preset("Bowling Alley", #preset_allbossprkd_wrecked_ship_bowling_alley)

presets_allbossprkd_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_allbossprkd_wrecked_ship_leaving_gravity)

presets_allbossprkd_wrecked_ship_red_tower_elevator:
    %cm_preset("Red Tower Elevator", #preset_allbossprkd_wrecked_ship_red_tower_elevator)

presets_allbossprkd_wrecked_ship_red_tower_descent:
    %cm_preset("Red Tower Descent", #preset_allbossprkd_wrecked_ship_red_tower_descent)

presets_allbossprkd_wrecked_ship_spazer:
    %cm_preset("Spazer", #preset_allbossprkd_wrecked_ship_spazer)

presets_allbossprkd_wrecked_ship_breaking_tube:
    %cm_preset("Breaking Tube", #preset_allbossprkd_wrecked_ship_breaking_tube)


; Upper Norfair
presets_allbossprkd_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_allbossprkd_upper_norfair_business_center)

presets_allbossprkd_upper_norfair_hi_jump_etank:
    %cm_preset("Hi Jump E-tank", #preset_allbossprkd_upper_norfair_hi_jump_etank)

presets_allbossprkd_upper_norfair_leaving_hi_jump:
    %cm_preset("Leaving Hi Jump", #preset_allbossprkd_upper_norfair_leaving_hi_jump)

presets_allbossprkd_upper_norfair_ice_beam_hallway:
    %cm_preset("Ice Beam Hallway", #preset_allbossprkd_upper_norfair_ice_beam_hallway)

presets_allbossprkd_upper_norfair_ice_maze:
    %cm_preset("Ice Maze", #preset_allbossprkd_upper_norfair_ice_maze)

presets_allbossprkd_upper_norfair_ice_escape:
    %cm_preset("Ice Escape", #preset_allbossprkd_upper_norfair_ice_escape)

presets_allbossprkd_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_allbossprkd_upper_norfair_precathedral)

presets_allbossprkd_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_allbossprkd_upper_norfair_bubble_mountain)

presets_allbossprkd_upper_norfair_single_chamber:
    %cm_preset("Single Chamber", #preset_allbossprkd_upper_norfair_single_chamber)

presets_allbossprkd_upper_norfair_double_chamber_revisit:
    %cm_preset("Double Chamber Revisit", #preset_allbossprkd_upper_norfair_double_chamber_revisit)

presets_allbossprkd_upper_norfair_volcano_room:
    %cm_preset("Volcano Room", #preset_allbossprkd_upper_norfair_volcano_room)

presets_allbossprkd_upper_norfair_lava_spark:
    %cm_preset("Lava Spark", #preset_allbossprkd_upper_norfair_lava_spark)


; Lower Norfair
presets_allbossprkd_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_allbossprkd_lower_norfair_ln_main_hall)

presets_allbossprkd_lower_norfair_green_gate_glitch:
    %cm_preset("Green Gate Glitch", #preset_allbossprkd_lower_norfair_green_gate_glitch)

presets_allbossprkd_lower_norfair_golden_torizo:
    %cm_preset("Golden Torizo", #preset_allbossprkd_lower_norfair_golden_torizo)

presets_allbossprkd_lower_norfair_screw_attack_escape:
    %cm_preset("Screw Attack Escape", #preset_allbossprkd_lower_norfair_screw_attack_escape)

presets_allbossprkd_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room in the Game", #preset_allbossprkd_lower_norfair_worst_room_in_the_game)

presets_allbossprkd_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_allbossprkd_lower_norfair_amphitheatre)

presets_allbossprkd_lower_norfair_kihunter_stairs:
    %cm_preset("Kihunter Stairs", #preset_allbossprkd_lower_norfair_kihunter_stairs)

presets_allbossprkd_lower_norfair_wasteland:
    %cm_preset("Wasteland", #preset_allbossprkd_lower_norfair_wasteland)

presets_allbossprkd_lower_norfair_metal_pirates:
    %cm_preset("Metal Pirates", #preset_allbossprkd_lower_norfair_metal_pirates)

presets_allbossprkd_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_allbossprkd_lower_norfair_ridley)

presets_allbossprkd_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_allbossprkd_lower_norfair_leaving_ridley)

presets_allbossprkd_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_allbossprkd_lower_norfair_wasteland_revisit)

presets_allbossprkd_lower_norfair_kihunter_stairs_revisit:
    %cm_preset("Kihunter Stairs Revisit", #preset_allbossprkd_lower_norfair_kihunter_stairs_revisit)

presets_allbossprkd_lower_norfair_fire_flea_room:
    %cm_preset("Fire Flea Room", #preset_allbossprkd_lower_norfair_fire_flea_room)

presets_allbossprkd_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_allbossprkd_lower_norfair_three_musketeers)


; Upper Norfair Revisit
presets_allbossprkd_upper_norfair_revisit_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_allbossprkd_upper_norfair_revisit_bubble_mountain_revisit)

presets_allbossprkd_upper_norfair_revisit_red_pirate_shaft:
    %cm_preset("Red Pirate Shaft", #preset_allbossprkd_upper_norfair_revisit_red_pirate_shaft)

presets_allbossprkd_upper_norfair_revisit_acid_snakes_tunnel:
    %cm_preset("Acid Snakes Tunnel", #preset_allbossprkd_upper_norfair_revisit_acid_snakes_tunnel)

presets_allbossprkd_upper_norfair_revisit_crocomire:
    %cm_preset("Crocomire", #preset_allbossprkd_upper_norfair_revisit_crocomire)

presets_allbossprkd_upper_norfair_revisit_leaving_crocomire:
    %cm_preset("Leaving Crocomire", #preset_allbossprkd_upper_norfair_revisit_leaving_crocomire)

presets_allbossprkd_upper_norfair_revisit_crocomire_escape:
    %cm_preset("Crocomire Escape", #preset_allbossprkd_upper_norfair_revisit_crocomire_escape)

presets_allbossprkd_upper_norfair_revisit_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_allbossprkd_upper_norfair_revisit_business_center_revisit)


; Kraids Lair
presets_allbossprkd_kraids_lair_entering_kraids_lair:
    %cm_preset("Entering Kraids Lair", #preset_allbossprkd_kraids_lair_entering_kraids_lair)

presets_allbossprkd_kraids_lair_baby_kraid_entering:
    %cm_preset("Baby Kraid (Entering)", #preset_allbossprkd_kraids_lair_baby_kraid_entering)

presets_allbossprkd_kraids_lair_kraid:
    %cm_preset("Kraid", #preset_allbossprkd_kraids_lair_kraid)

presets_allbossprkd_kraids_lair_baby_kraid_entering_2:
    %cm_preset("Baby Kraid (Entering)", #preset_allbossprkd_kraids_lair_baby_kraid_entering_2)

presets_allbossprkd_kraids_lair_leaving_kraids_lair:
    %cm_preset("Leaving Kraids Lair", #preset_allbossprkd_kraids_lair_leaving_kraids_lair)


; Maridia
presets_allbossprkd_maridia_mt_everest:
    %cm_preset("Mt Everest", #preset_allbossprkd_maridia_mt_everest)

presets_allbossprkd_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_allbossprkd_maridia_aqueduct)

presets_allbossprkd_maridia_botwoon:
    %cm_preset("Botwoon", #preset_allbossprkd_maridia_botwoon)

presets_allbossprkd_maridia_halfie:
    %cm_preset("Halfie", #preset_allbossprkd_maridia_halfie)

presets_allbossprkd_maridia_draygon:
    %cm_preset("Draygon", #preset_allbossprkd_maridia_draygon)

presets_allbossprkd_maridia_womple_jump:
    %cm_preset("Womple Jump", #preset_allbossprkd_maridia_womple_jump)

presets_allbossprkd_maridia_reverse_botwoon_hallway:
    %cm_preset("Reverse Botwoon Hallway", #preset_allbossprkd_maridia_reverse_botwoon_hallway)

presets_allbossprkd_maridia_aqueduct_revisit:
    %cm_preset("Aqueduct Revisit", #preset_allbossprkd_maridia_aqueduct_revisit)

presets_allbossprkd_maridia_mt_everest_revisit:
    %cm_preset("Mt Everest Revisit", #preset_allbossprkd_maridia_mt_everest_revisit)

presets_allbossprkd_maridia_red_brinstar_gate:
    %cm_preset("Red Brinstar Gate", #preset_allbossprkd_maridia_red_brinstar_gate)


; Tourian
presets_allbossprkd_tourian_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_allbossprkd_tourian_crateria_kihunters)

presets_allbossprkd_tourian_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_allbossprkd_tourian_terminator_revisit)

presets_allbossprkd_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_allbossprkd_tourian_metroids_1)

presets_allbossprkd_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_allbossprkd_tourian_metroids_2)

presets_allbossprkd_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_allbossprkd_tourian_metroids_3)

presets_allbossprkd_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_allbossprkd_tourian_metroids_4)

presets_allbossprkd_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_allbossprkd_tourian_baby_skip)

presets_allbossprkd_tourian_gadora_room:
    %cm_preset("Gadora Room", #preset_allbossprkd_tourian_gadora_room)

presets_allbossprkd_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_allbossprkd_tourian_zeb_skip)

presets_allbossprkd_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_allbossprkd_tourian_escape_room_3)

presets_allbossprkd_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_allbossprkd_tourian_escape_parlor)


