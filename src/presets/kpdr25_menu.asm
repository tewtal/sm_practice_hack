PresetsMenuKpdr25:
    dw #presets_goto_kpdr25_bombs
    dw #presets_goto_kpdr25_kraid
    dw #presets_goto_kpdr25_upper_norfair
    dw #presets_goto_kpdr25_wrecked_ship
    dw #presets_goto_kpdr25_maridia
    dw #presets_goto_kpdr25_lower_norfair
    dw #presets_goto_kpdr25_golden_4
    dw #presets_goto_kpdr25_tourian
    dw #$0000
    %cm_header("ANY% KPDR - EARLY ICE")

presets_goto_kpdr25_bombs:
    %cm_submenu("Bombs", #presets_submenu_kpdr25_bombs)

presets_goto_kpdr25_kraid:
    %cm_submenu("Kraid", #presets_submenu_kpdr25_kraid)

presets_goto_kpdr25_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_kpdr25_upper_norfair)

presets_goto_kpdr25_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_kpdr25_wrecked_ship)

presets_goto_kpdr25_maridia:
    %cm_submenu("Maridia", #presets_submenu_kpdr25_maridia)

presets_goto_kpdr25_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_kpdr25_lower_norfair)

presets_goto_kpdr25_golden_4:
    %cm_submenu("Golden 4", #presets_submenu_kpdr25_golden_4)

presets_goto_kpdr25_tourian:
    %cm_submenu("Tourian", #presets_submenu_kpdr25_tourian)

presets_submenu_kpdr25_bombs:
    dw #presets_kpdr25_bombs_ceres_elevator
    dw #presets_kpdr25_bombs_ceres_last_3_rooms
    dw #presets_kpdr25_bombs_ship
    dw #presets_kpdr25_bombs_morph
    dw #presets_kpdr25_bombs_climb
    dw #presets_kpdr25_bombs_bomb_torizo
    dw #presets_kpdr25_bombs_terminator
    dw #$0000
    %cm_header("BOMBS")

presets_submenu_kpdr25_kraid:
    dw #presets_kpdr25_kraid_green_brinstar_elevator
    dw #presets_kpdr25_kraid_green_hills
    dw #presets_kpdr25_kraid_spazer
    dw #presets_kpdr25_kraid_warehouse_entrance
    dw #presets_kpdr25_kraid_kraid_2
    dw #presets_kpdr25_kraid_baby_kraid_exiting
    dw #presets_kpdr25_kraid_kraid_etank
    dw #$0000
    %cm_header("KRAID")

presets_submenu_kpdr25_upper_norfair:
    dw #presets_kpdr25_upper_norfair_business_center
    dw #presets_kpdr25_upper_norfair_precathedral
    dw #presets_kpdr25_upper_norfair_bubble_mountain
    dw #presets_kpdr25_upper_norfair_speed_hallway
    dw #presets_kpdr25_upper_norfair_single_chamber
    dw #presets_kpdr25_upper_norfair_leaving_wave
    dw #presets_kpdr25_upper_norfair_entering_ice
    dw #presets_kpdr25_upper_norfair_ice_escape
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_kpdr25_wrecked_ship:
    dw #presets_kpdr25_wrecked_ship_alpha_spark
    dw #presets_kpdr25_wrecked_ship_red_tower
    dw #presets_kpdr25_wrecked_ship_hellway
    dw #presets_kpdr25_wrecked_ship_post_power_bombs
    dw #presets_kpdr25_wrecked_ship_premoat
    dw #presets_kpdr25_wrecked_ship_phantoon
    dw #presets_kpdr25_wrecked_ship_ws_shaft
    dw #presets_kpdr25_wrecked_ship_attic
    dw #presets_kpdr25_wrecked_ship_pre_bowling
    dw #presets_kpdr25_wrecked_ship_impulse_mockball
    dw #presets_kpdr25_wrecked_ship_hellway_return
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_kpdr25_maridia:
    dw #presets_kpdr25_maridia_the_tube
    dw #presets_kpdr25_maridia_botwoon
    dw #presets_kpdr25_maridia_halfie
    dw #presets_kpdr25_maridia_draygon
    dw #presets_kpdr25_maridia_whomple_jump
    dw #presets_kpdr25_maridia_plasma_spark_room
    dw #presets_kpdr25_maridia_plasma_spark_revisit
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_kpdr25_lower_norfair:
    dw #presets_kpdr25_lower_norfair_business_center_revisit
    dw #presets_kpdr25_lower_norfair_magdollite_tunnel
    dw #presets_kpdr25_lower_norfair_ln_elevator
    dw #presets_kpdr25_lower_norfair_fast_pillars
    dw #presets_kpdr25_lower_norfair_kihunter_stairs
    dw #presets_kpdr25_lower_norfair_metal_pirates
    dw #presets_kpdr25_lower_norfair_ridley
    dw #presets_kpdr25_lower_norfair_ridley_etank
    dw #presets_kpdr25_lower_norfair_wasteland_revisit
    dw #presets_kpdr25_lower_norfair_fireflea_room
    dw #presets_kpdr25_lower_norfair_three_musketeers
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_kpdr25_golden_4:
    dw #presets_kpdr25_golden_4_frog_speedway
    dw #presets_kpdr25_golden_4_maridia_tube_revisit
    dw #presets_kpdr25_golden_4_premoat_revisit
    dw #presets_kpdr25_golden_4_terminator_revisit
    dw #presets_kpdr25_golden_4_g4_elevator
    dw #$0000
    %cm_header("GOLDEN 4")

presets_submenu_kpdr25_tourian:
    dw #presets_kpdr25_tourian_metroids_1
    dw #presets_kpdr25_tourian_metroids_2
    dw #presets_kpdr25_tourian_metroids_3
    dw #presets_kpdr25_tourian_metroids_4
    dw #presets_kpdr25_tourian_baby_skip
    dw #presets_kpdr25_tourian_zeb_skip
    dw #presets_kpdr25_tourian_escape_room_3
    dw #presets_kpdr25_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Bombs
presets_kpdr25_bombs_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_kpdr25_bombs_ceres_elevator)

presets_kpdr25_bombs_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_kpdr25_bombs_ceres_last_3_rooms)

presets_kpdr25_bombs_ship:
    %cm_preset("Ship", #preset_kpdr25_bombs_ship)

presets_kpdr25_bombs_morph:
    %cm_preset("Morph", #preset_kpdr25_bombs_morph)

presets_kpdr25_bombs_climb:
    %cm_preset("Climb", #preset_kpdr25_bombs_climb)

presets_kpdr25_bombs_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_kpdr25_bombs_bomb_torizo)

presets_kpdr25_bombs_terminator:
    %cm_preset("Terminator", #preset_kpdr25_bombs_terminator)


; Kraid
presets_kpdr25_kraid_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_kpdr25_kraid_green_brinstar_elevator)

presets_kpdr25_kraid_green_hills:
    %cm_preset("Green Hills", #preset_kpdr25_kraid_green_hills)

presets_kpdr25_kraid_spazer:
    %cm_preset("Spazer", #preset_kpdr25_kraid_spazer)

presets_kpdr25_kraid_warehouse_entrance:
    %cm_preset("Warehouse Entrance", #preset_kpdr25_kraid_warehouse_entrance)

presets_kpdr25_kraid_kraid_2:
    %cm_preset("Kraid", #preset_kpdr25_kraid_kraid_2)

presets_kpdr25_kraid_baby_kraid_exiting:
    %cm_preset("Baby Kraid (Exiting)", #preset_kpdr25_kraid_baby_kraid_exiting)

presets_kpdr25_kraid_kraid_etank:
    %cm_preset("Kraid E-tank", #preset_kpdr25_kraid_kraid_etank)


; Upper Norfair
presets_kpdr25_upper_norfair_business_center:
    %cm_preset("Business Center", #preset_kpdr25_upper_norfair_business_center)

presets_kpdr25_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_kpdr25_upper_norfair_precathedral)

presets_kpdr25_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_kpdr25_upper_norfair_bubble_mountain)

presets_kpdr25_upper_norfair_speed_hallway:
    %cm_preset("Speed Hallway", #preset_kpdr25_upper_norfair_speed_hallway)

presets_kpdr25_upper_norfair_single_chamber:
    %cm_preset("Single Chamber", #preset_kpdr25_upper_norfair_single_chamber)

presets_kpdr25_upper_norfair_leaving_wave:
    %cm_preset("Leaving Wave", #preset_kpdr25_upper_norfair_leaving_wave)

presets_kpdr25_upper_norfair_entering_ice:
    %cm_preset("Entering Ice", #preset_kpdr25_upper_norfair_entering_ice)

presets_kpdr25_upper_norfair_ice_escape:
    %cm_preset("Ice Escape", #preset_kpdr25_upper_norfair_ice_escape)


; Wrecked Ship
presets_kpdr25_wrecked_ship_alpha_spark:
    %cm_preset("Alpha Spark", #preset_kpdr25_wrecked_ship_alpha_spark)

presets_kpdr25_wrecked_ship_red_tower:
    %cm_preset("Red Tower", #preset_kpdr25_wrecked_ship_red_tower)

presets_kpdr25_wrecked_ship_hellway:
    %cm_preset("Hellway", #preset_kpdr25_wrecked_ship_hellway)

presets_kpdr25_wrecked_ship_post_power_bombs:
    %cm_preset("Post Power Bombs", #preset_kpdr25_wrecked_ship_post_power_bombs)

presets_kpdr25_wrecked_ship_premoat:
    %cm_preset("Pre-Moat", #preset_kpdr25_wrecked_ship_premoat)

presets_kpdr25_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_kpdr25_wrecked_ship_phantoon)

presets_kpdr25_wrecked_ship_ws_shaft:
    %cm_preset("WS Shaft", #preset_kpdr25_wrecked_ship_ws_shaft)

presets_kpdr25_wrecked_ship_attic:
    %cm_preset("Attic", #preset_kpdr25_wrecked_ship_attic)

presets_kpdr25_wrecked_ship_pre_bowling:
    %cm_preset("Pre Bowling", #preset_kpdr25_wrecked_ship_pre_bowling)

presets_kpdr25_wrecked_ship_impulse_mockball:
    %cm_preset("Impulse Mockball", #preset_kpdr25_wrecked_ship_impulse_mockball)

presets_kpdr25_wrecked_ship_hellway_return:
    %cm_preset("Hellway Return", #preset_kpdr25_wrecked_ship_hellway_return)


; Maridia
presets_kpdr25_maridia_the_tube:
    %cm_preset("The Tube", #preset_kpdr25_maridia_the_tube)

presets_kpdr25_maridia_botwoon:
    %cm_preset("Botwoon", #preset_kpdr25_maridia_botwoon)

presets_kpdr25_maridia_halfie:
    %cm_preset("Halfie", #preset_kpdr25_maridia_halfie)

presets_kpdr25_maridia_draygon:
    %cm_preset("Draygon", #preset_kpdr25_maridia_draygon)

presets_kpdr25_maridia_whomple_jump:
    %cm_preset("Whomple Jump", #preset_kpdr25_maridia_whomple_jump)

presets_kpdr25_maridia_plasma_spark_room:
    %cm_preset("Plasma Spark Room", #preset_kpdr25_maridia_plasma_spark_room)

presets_kpdr25_maridia_plasma_spark_revisit:
    %cm_preset("Plasma Spark Revisit", #preset_kpdr25_maridia_plasma_spark_revisit)


; Lower Norfair
presets_kpdr25_lower_norfair_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_kpdr25_lower_norfair_business_center_revisit)

presets_kpdr25_lower_norfair_magdollite_tunnel:
    %cm_preset("Magdollite Tunnel", #preset_kpdr25_lower_norfair_magdollite_tunnel)

presets_kpdr25_lower_norfair_ln_elevator:
    %cm_preset("LN Elevator", #preset_kpdr25_lower_norfair_ln_elevator)

presets_kpdr25_lower_norfair_fast_pillars:
    %cm_preset("Fast Pillars", #preset_kpdr25_lower_norfair_fast_pillars)

presets_kpdr25_lower_norfair_kihunter_stairs:
    %cm_preset("Kihunter Stairs", #preset_kpdr25_lower_norfair_kihunter_stairs)

presets_kpdr25_lower_norfair_metal_pirates:
    %cm_preset("Metal Pirates", #preset_kpdr25_lower_norfair_metal_pirates)

presets_kpdr25_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_kpdr25_lower_norfair_ridley)

presets_kpdr25_lower_norfair_ridley_etank:
    %cm_preset("Ridley E-tank", #preset_kpdr25_lower_norfair_ridley_etank)

presets_kpdr25_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_kpdr25_lower_norfair_wasteland_revisit)

presets_kpdr25_lower_norfair_fireflea_room:
    %cm_preset("Fireflea Room", #preset_kpdr25_lower_norfair_fireflea_room)

presets_kpdr25_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_kpdr25_lower_norfair_three_musketeers)


; Golden 4
presets_kpdr25_golden_4_frog_speedway:
    %cm_preset("Frog Speedway", #preset_kpdr25_golden_4_frog_speedway)

presets_kpdr25_golden_4_maridia_tube_revisit:
    %cm_preset("Maridia Tube Revisit", #preset_kpdr25_golden_4_maridia_tube_revisit)

presets_kpdr25_golden_4_premoat_revisit:
    %cm_preset("Pre-Moat Revisit", #preset_kpdr25_golden_4_premoat_revisit)

presets_kpdr25_golden_4_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_kpdr25_golden_4_terminator_revisit)

presets_kpdr25_golden_4_g4_elevator:
    %cm_preset("G4 Elevator", #preset_kpdr25_golden_4_g4_elevator)


; Tourian
presets_kpdr25_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_kpdr25_tourian_metroids_1)

presets_kpdr25_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_kpdr25_tourian_metroids_2)

presets_kpdr25_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_kpdr25_tourian_metroids_3)

presets_kpdr25_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_kpdr25_tourian_metroids_4)

presets_kpdr25_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_kpdr25_tourian_baby_skip)

presets_kpdr25_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_kpdr25_tourian_zeb_skip)

presets_kpdr25_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_kpdr25_tourian_escape_room_3)

presets_kpdr25_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_kpdr25_tourian_escape_parlor)


