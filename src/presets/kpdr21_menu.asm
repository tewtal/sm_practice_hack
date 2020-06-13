PresetsMenuKpdr21:
    dw #presets_goto_kpdr21_crateria
    dw #presets_goto_kpdr21_brinstar
    dw #presets_goto_kpdr21_upper_norfair
    dw #presets_goto_kpdr21_wrecked_ship
    dw #presets_goto_kpdr21_maridia
    dw #presets_goto_kpdr21_lower_norfair
    dw #presets_goto_kpdr21_tourian
    dw #$0000
    %cm_header("PRESETS FOR ANY KPDR")

presets_goto_kpdr21_crateria:
    %cm_submenu("Crateria", #presets_submenu_kpdr21_crateria)

presets_goto_kpdr21_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_kpdr21_brinstar)

presets_goto_kpdr21_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_kpdr21_upper_norfair)

presets_goto_kpdr21_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_kpdr21_wrecked_ship)

presets_goto_kpdr21_maridia:
    %cm_submenu("Maridia", #presets_submenu_kpdr21_maridia)

presets_goto_kpdr21_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_kpdr21_lower_norfair)

presets_goto_kpdr21_tourian:
    %cm_submenu("Tourian", #presets_submenu_kpdr21_tourian)

presets_submenu_kpdr21_crateria:
    dw #presets_kpdr21_crateria_ceres_elevator
    dw #presets_kpdr21_crateria_ceres_last_3_rooms
    dw #presets_kpdr21_crateria_ship
    dw #presets_kpdr21_crateria_pit_room
    dw #presets_kpdr21_crateria_morph
    dw #presets_kpdr21_crateria_pit_room_revisit
    dw #presets_kpdr21_crateria_climb
    dw #presets_kpdr21_crateria_parlor
    dw #presets_kpdr21_crateria_bomb_torizo
    dw #presets_kpdr21_crateria_terminator
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_kpdr21_brinstar:
    dw #presets_kpdr21_brinstar_green_brinstar_elevator
    dw #presets_kpdr21_brinstar_dachora_room
    dw #presets_kpdr21_brinstar_big_pink
    dw #presets_kpdr21_brinstar_red_tower
    dw #presets_kpdr21_brinstar_entering_kraids_lair
    dw #presets_kpdr21_brinstar_baby_kraid_entering
    dw #presets_kpdr21_brinstar_kraid
    dw #presets_kpdr21_brinstar_baby_kraid_exiting
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_kpdr21_upper_norfair:
    dw #presets_kpdr21_upper_norfair_business_center
    dw #presets_kpdr21_upper_norfair_hi_jump_etank
    dw #presets_kpdr21_upper_norfair_leaving_hi_jump
    dw #presets_kpdr21_upper_norfair_precathedral
    dw #presets_kpdr21_upper_norfair_bubble_mountain
    dw #presets_kpdr21_upper_norfair_single_chamber
    dw #presets_kpdr21_upper_norfair_double_chamber_revisit
    dw #presets_kpdr21_upper_norfair_bubble_mountain_revisit
    dw #presets_kpdr21_upper_norfair_business_center_revisit
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_kpdr21_wrecked_ship:
    dw #presets_kpdr21_wrecked_ship_alpha_spark
    dw #presets_kpdr21_wrecked_ship_red_tower_2
    dw #presets_kpdr21_wrecked_ship_hellway
    dw #presets_kpdr21_wrecked_ship_leaving_power_bombs
    dw #presets_kpdr21_wrecked_ship_crateria_elevator
    dw #presets_kpdr21_wrecked_ship_entering_wrecked_ship
    dw #presets_kpdr21_wrecked_ship_phantoon
    dw #presets_kpdr21_wrecked_ship_leaving_phantoon
    dw #presets_kpdr21_wrecked_ship_wrecked_ship_shaft
    dw #presets_kpdr21_wrecked_ship_attic
    dw #presets_kpdr21_wrecked_ship_bowling_spark
    dw #presets_kpdr21_wrecked_ship_leaving_gravity
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_kpdr21_maridia:
    dw #presets_kpdr21_maridia_red_tower_elevator
    dw #presets_kpdr21_maridia_breaking_tube
    dw #presets_kpdr21_maridia_mt_everest
    dw #presets_kpdr21_maridia_botwoon
    dw #presets_kpdr21_maridia_halfie
    dw #presets_kpdr21_maridia_draygon
    dw #presets_kpdr21_maridia_womple_jump
    dw #presets_kpdr21_maridia_cac_alley
    dw #presets_kpdr21_maridia_plasma_spark
    dw #presets_kpdr21_maridia_plasma_beam
    dw #presets_kpdr21_maridia_plasma_spark_revisit
    dw #presets_kpdr21_maridia_sewers
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_kpdr21_lower_norfair:
    dw #presets_kpdr21_lower_norfair_ice_beam
    dw #presets_kpdr21_lower_norfair_ice_escape
    dw #presets_kpdr21_lower_norfair_crocomire_speedway
    dw #presets_kpdr21_lower_norfair_kronic_boost
    dw #presets_kpdr21_lower_norfair_ln_main_hall
    dw #presets_kpdr21_lower_norfair_worst_room_in_the_game
    dw #presets_kpdr21_lower_norfair_kihunter_stairs
    dw #presets_kpdr21_lower_norfair_metal_pirates
    dw #presets_kpdr21_lower_norfair_ridley
    dw #presets_kpdr21_lower_norfair_leaving_ridley
    dw #presets_kpdr21_lower_norfair_wasteland_revisit
    dw #presets_kpdr21_lower_norfair_fire_flea_room
    dw #presets_kpdr21_lower_norfair_three_musketeers
    dw #presets_kpdr21_lower_norfair_bubble_mountain_rerevisit
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_kpdr21_tourian:
    dw #presets_kpdr21_tourian_maridia_passthrough
    dw #presets_kpdr21_tourian_crateria_passthrough
    dw #presets_kpdr21_tourian_terminator_revisit
    dw #presets_kpdr21_tourian_metroids_1
    dw #presets_kpdr21_tourian_metroids_2
    dw #presets_kpdr21_tourian_metroids_3
    dw #presets_kpdr21_tourian_metroids_4
    dw #presets_kpdr21_tourian_baby_skip
    dw #presets_kpdr21_tourian_zeb_skip
    dw #presets_kpdr21_tourian_escape_room_3
    dw #presets_kpdr21_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Crateria
presets_kpdr21_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_kpdr21_crateria_ceres_elevator)

presets_kpdr21_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_kpdr21_crateria_ceres_last_3_rooms)

presets_kpdr21_crateria_ship:
    %cm_preset("Ship", #preset_kpdr21_crateria_ship)

presets_kpdr21_crateria_pit_room:
    %cm_preset("Pit Room", #preset_kpdr21_crateria_pit_room)

presets_kpdr21_crateria_morph:
    %cm_preset("Morph", #preset_kpdr21_crateria_morph)

presets_kpdr21_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_kpdr21_crateria_pit_room_revisit)

presets_kpdr21_crateria_climb:
    %cm_preset("Climb", #preset_kpdr21_crateria_climb)

presets_kpdr21_crateria_parlor:
    %cm_preset("Parlor", #preset_kpdr21_crateria_parlor)

presets_kpdr21_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_kpdr21_crateria_bomb_torizo)

presets_kpdr21_crateria_terminator:
    %cm_preset("Terminator", #preset_kpdr21_crateria_terminator)


; Brinstar
presets_kpdr21_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_kpdr21_brinstar_green_brinstar_elevator)

presets_kpdr21_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_kpdr21_brinstar_dachora_room)

presets_kpdr21_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_kpdr21_brinstar_big_pink)

presets_kpdr21_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_kpdr21_brinstar_red_tower)

presets_kpdr21_brinstar_entering_kraids_lair:
    %cm_preset("Entering Kraids Lair", #preset_kpdr21_brinstar_entering_kraids_lair)

presets_kpdr21_brinstar_baby_kraid_entering:
    %cm_preset("Baby Kraid (Entering)", #preset_kpdr21_brinstar_baby_kraid_entering)

presets_kpdr21_brinstar_kraid:
    %cm_preset("Kraid", #preset_kpdr21_brinstar_kraid)

presets_kpdr21_brinstar_baby_kraid_exiting:
    %cm_preset("Baby Kraid (Exiting)", #preset_kpdr21_brinstar_baby_kraid_exiting)


; Upper Norfair
presets_kpdr21_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_kpdr21_upper_norfair_business_center)

presets_kpdr21_upper_norfair_hi_jump_etank:
    %cm_preset("Hi Jump E-tank", #preset_kpdr21_upper_norfair_hi_jump_etank)

presets_kpdr21_upper_norfair_leaving_hi_jump:
    %cm_preset("Leaving Hi Jump", #preset_kpdr21_upper_norfair_leaving_hi_jump)

presets_kpdr21_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_kpdr21_upper_norfair_precathedral)

presets_kpdr21_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_kpdr21_upper_norfair_bubble_mountain)

presets_kpdr21_upper_norfair_single_chamber:
    %cm_preset("Single Chamber", #preset_kpdr21_upper_norfair_single_chamber)

presets_kpdr21_upper_norfair_double_chamber_revisit:
    %cm_preset("Double Chamber Revisit", #preset_kpdr21_upper_norfair_double_chamber_revisit)

presets_kpdr21_upper_norfair_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_kpdr21_upper_norfair_bubble_mountain_revisit)

presets_kpdr21_upper_norfair_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_kpdr21_upper_norfair_business_center_revisit)


; Wrecked Ship
presets_kpdr21_wrecked_ship_alpha_spark:
    %cm_preset("Alpha Spark", #preset_kpdr21_wrecked_ship_alpha_spark)

presets_kpdr21_wrecked_ship_red_tower_2:
    %cm_preset("Red Tower", #preset_kpdr21_wrecked_ship_red_tower_2)

presets_kpdr21_wrecked_ship_hellway:
    %cm_preset("Hellway", #preset_kpdr21_wrecked_ship_hellway)

presets_kpdr21_wrecked_ship_leaving_power_bombs:
    %cm_preset("Leaving Power Bombs", #preset_kpdr21_wrecked_ship_leaving_power_bombs)

presets_kpdr21_wrecked_ship_crateria_elevator:
    %cm_preset("Crateria Elevator", #preset_kpdr21_wrecked_ship_crateria_elevator)

presets_kpdr21_wrecked_ship_entering_wrecked_ship:
    %cm_preset("Entering Wrecked Ship", #preset_kpdr21_wrecked_ship_entering_wrecked_ship)

presets_kpdr21_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_kpdr21_wrecked_ship_phantoon)

presets_kpdr21_wrecked_ship_leaving_phantoon:
    %cm_preset("Leaving Phantoon", #preset_kpdr21_wrecked_ship_leaving_phantoon)

presets_kpdr21_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_kpdr21_wrecked_ship_wrecked_ship_shaft)

presets_kpdr21_wrecked_ship_attic:
    %cm_preset("Attic", #preset_kpdr21_wrecked_ship_attic)

presets_kpdr21_wrecked_ship_bowling_spark:
    %cm_preset("Bowling Spark", #preset_kpdr21_wrecked_ship_bowling_spark)

presets_kpdr21_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_kpdr21_wrecked_ship_leaving_gravity)


; Maridia
presets_kpdr21_maridia_red_tower_elevator:
    %cm_preset("Red Tower Elevator", #preset_kpdr21_maridia_red_tower_elevator)

presets_kpdr21_maridia_breaking_tube:
    %cm_preset("Breaking Tube", #preset_kpdr21_maridia_breaking_tube)

presets_kpdr21_maridia_mt_everest:
    %cm_preset("Mt Everest", #preset_kpdr21_maridia_mt_everest)

presets_kpdr21_maridia_botwoon:
    %cm_preset("Botwoon", #preset_kpdr21_maridia_botwoon)

presets_kpdr21_maridia_halfie:
    %cm_preset("Halfie", #preset_kpdr21_maridia_halfie)

presets_kpdr21_maridia_draygon:
    %cm_preset("Draygon", #preset_kpdr21_maridia_draygon)

presets_kpdr21_maridia_womple_jump:
    %cm_preset("Womple Jump", #preset_kpdr21_maridia_womple_jump)

presets_kpdr21_maridia_cac_alley:
    %cm_preset("Cac Alley", #preset_kpdr21_maridia_cac_alley)

presets_kpdr21_maridia_plasma_spark:
    %cm_preset("Plasma Spark", #preset_kpdr21_maridia_plasma_spark)

presets_kpdr21_maridia_plasma_beam:
    %cm_preset("Plasma Beam", #preset_kpdr21_maridia_plasma_beam)

presets_kpdr21_maridia_plasma_spark_revisit:
    %cm_preset("Plasma Spark Revisit", #preset_kpdr21_maridia_plasma_spark_revisit)

presets_kpdr21_maridia_sewers:
    %cm_preset("Sewers", #preset_kpdr21_maridia_sewers)


; Lower Norfair
presets_kpdr21_lower_norfair_ice_beam:
    %cm_preset("Ice Beam", #preset_kpdr21_lower_norfair_ice_beam)

presets_kpdr21_lower_norfair_ice_escape:
    %cm_preset("Ice Escape", #preset_kpdr21_lower_norfair_ice_escape)

presets_kpdr21_lower_norfair_crocomire_speedway:
    %cm_preset("Crocomire Speedway", #preset_kpdr21_lower_norfair_crocomire_speedway)

presets_kpdr21_lower_norfair_kronic_boost:
    %cm_preset("Kronic Boost", #preset_kpdr21_lower_norfair_kronic_boost)

presets_kpdr21_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_kpdr21_lower_norfair_ln_main_hall)

presets_kpdr21_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room in the Game", #preset_kpdr21_lower_norfair_worst_room_in_the_game)

presets_kpdr21_lower_norfair_kihunter_stairs:
    %cm_preset("Kihunter Stairs", #preset_kpdr21_lower_norfair_kihunter_stairs)

presets_kpdr21_lower_norfair_metal_pirates:
    %cm_preset("Metal Pirates", #preset_kpdr21_lower_norfair_metal_pirates)

presets_kpdr21_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_kpdr21_lower_norfair_ridley)

presets_kpdr21_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_kpdr21_lower_norfair_leaving_ridley)

presets_kpdr21_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_kpdr21_lower_norfair_wasteland_revisit)

presets_kpdr21_lower_norfair_fire_flea_room:
    %cm_preset("Fire Flea Room", #preset_kpdr21_lower_norfair_fire_flea_room)

presets_kpdr21_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_kpdr21_lower_norfair_three_musketeers)

presets_kpdr21_lower_norfair_bubble_mountain_rerevisit:
    %cm_preset("Bubble Mountain ReRevisit", #preset_kpdr21_lower_norfair_bubble_mountain_rerevisit)


; Tourian
presets_kpdr21_tourian_maridia_passthrough:
    %cm_preset("Maridia Passthrough", #preset_kpdr21_tourian_maridia_passthrough)

presets_kpdr21_tourian_crateria_passthrough:
    %cm_preset("Crateria Passthrough", #preset_kpdr21_tourian_crateria_passthrough)

presets_kpdr21_tourian_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_kpdr21_tourian_terminator_revisit)

presets_kpdr21_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_kpdr21_tourian_metroids_1)

presets_kpdr21_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_kpdr21_tourian_metroids_2)

presets_kpdr21_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_kpdr21_tourian_metroids_3)

presets_kpdr21_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_kpdr21_tourian_metroids_4)

presets_kpdr21_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_kpdr21_tourian_baby_skip)

presets_kpdr21_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_kpdr21_tourian_zeb_skip)

presets_kpdr21_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_kpdr21_tourian_escape_room_3)

presets_kpdr21_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_kpdr21_tourian_escape_parlor)


