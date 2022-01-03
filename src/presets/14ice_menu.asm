PresetsMenu14ice:
    dw #presets_goto_14ice_crateria
    dw #presets_goto_14ice_brinstar
    dw #presets_goto_14ice_wrecked_ship
    dw #presets_goto_14ice_brinstar_revisit
    dw #presets_goto_14ice_upper_norfair
    dw #presets_goto_14ice_lower_norfair
    dw #presets_goto_14ice_maridia
    dw #presets_goto_14ice_tourian
    dw #$0000
    %cm_header("PRESETS FOR 14% ICE")

presets_goto_14ice_crateria:
    %cm_submenu("Crateria", #presets_submenu_14ice_crateria)

presets_goto_14ice_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_14ice_brinstar)

presets_goto_14ice_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_14ice_wrecked_ship)

presets_goto_14ice_brinstar_revisit:
    %cm_submenu("Brinstar Revisit", #presets_submenu_14ice_brinstar_revisit)

presets_goto_14ice_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_14ice_upper_norfair)

presets_goto_14ice_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_14ice_lower_norfair)

presets_goto_14ice_maridia:
    %cm_submenu("Maridia", #presets_submenu_14ice_maridia)

presets_goto_14ice_tourian:
    %cm_submenu("Tourian", #presets_submenu_14ice_tourian)

presets_submenu_14ice_crateria:
    dw #presets_14ice_crateria_ceres_elevator
    dw #presets_14ice_crateria_ceres_last_3_rooms
    dw #presets_14ice_crateria_ship
    dw #presets_14ice_crateria_morph
    dw #presets_14ice_crateria_climb
    dw #presets_14ice_crateria_bomb_torizo
    dw #presets_14ice_crateria_terminator
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_14ice_brinstar:
    dw #presets_14ice_brinstar_green_brinstar_elevator
    dw #presets_14ice_brinstar_big_pink
    dw #presets_14ice_brinstar_red_tower
    dw #presets_14ice_brinstar_hellway
    dw #presets_14ice_brinstar_caterpillar_room
    dw #presets_14ice_brinstar_leaving_power_bombs
    dw #presets_14ice_brinstar_kihunter_room
    dw #presets_14ice_brinstar_moat
    dw #presets_14ice_brinstar_ocean
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_14ice_wrecked_ship:
    dw #presets_14ice_wrecked_ship_wrecked_ship_shaft
    dw #presets_14ice_wrecked_ship_phantoon
    dw #presets_14ice_wrecked_ship_wrecked_ship_supers
    dw #presets_14ice_wrecked_ship_shaft_revisit
    dw #presets_14ice_wrecked_ship_attic
    dw #presets_14ice_wrecked_ship_bowling_alley_path
    dw #presets_14ice_wrecked_ship_bowling_alley
    dw #presets_14ice_wrecked_ship_leaving_gravity
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_14ice_brinstar_revisit:
    dw #presets_14ice_brinstar_revisit_red_tower_elevator
    dw #presets_14ice_brinstar_revisit_breaking_tube
    dw #presets_14ice_brinstar_revisit_entering_kraids_lair
    dw #presets_14ice_brinstar_revisit_baby_kraid_entering
    dw #presets_14ice_brinstar_revisit_kraid
    dw #presets_14ice_brinstar_revisit_baby_kraid_exiting
    dw #presets_14ice_brinstar_revisit_kraid_etank
    dw #$0000
    %cm_header("BRINSTAR REVISIT")

presets_submenu_14ice_upper_norfair:
    dw #presets_14ice_upper_norfair_ice_beam
    dw #presets_14ice_upper_norfair_ice_escape
    dw #presets_14ice_upper_norfair_precathedral
    dw #presets_14ice_upper_norfair_bubble_mountain
    dw #presets_14ice_upper_norfair_magdollite_room
    dw #presets_14ice_upper_norfair_kronic_boost
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_14ice_lower_norfair:
    dw #presets_14ice_lower_norfair_ln_main_hall
    dw #presets_14ice_lower_norfair_pillars
    dw #presets_14ice_lower_norfair_worst_room
    dw #presets_14ice_lower_norfair_amphitheatre
    dw #presets_14ice_lower_norfair_kihunter_stairs
    dw #presets_14ice_lower_norfair_wasteland
    dw #presets_14ice_lower_norfair_metal_pirates
    dw #presets_14ice_lower_norfair_ridley
    dw #presets_14ice_lower_norfair_leaving_ridley
    dw #presets_14ice_lower_norfair_wasteland_revisit
    dw #presets_14ice_lower_norfair_kihunter_stairs_revisit
    dw #presets_14ice_lower_norfair_fireflea_room
    dw #presets_14ice_lower_norfair_three_musketeers
    dw #presets_14ice_lower_norfair_bubble_mountain_revisit
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_14ice_maridia:
    dw #presets_14ice_maridia_entering_maridia
    dw #presets_14ice_maridia_mt_everest
    dw #presets_14ice_maridia_ice_clip
    dw #presets_14ice_maridia_botwoon
    dw #presets_14ice_maridia_botwoon_etank_room
    dw #presets_14ice_maridia_colosseum
    dw #presets_14ice_maridia_draygon
    dw #presets_14ice_maridia_colosseum_revisit
    dw #presets_14ice_maridia_reverse_botwoon
    dw #presets_14ice_maridia_aqueduct_revisit
    dw #presets_14ice_maridia_everest_revisit
    dw #presets_14ice_maridia_red_tower_green_gate
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_14ice_tourian:
    dw #presets_14ice_tourian_kihunter_room_revisit
    dw #presets_14ice_tourian_terminator_revisit
    dw #presets_14ice_tourian_pirate_shaft_revisit
    dw #presets_14ice_tourian_metroids_1
    dw #presets_14ice_tourian_metroids_2
    dw #presets_14ice_tourian_metroids_3
    dw #presets_14ice_tourian_metroids_4
    dw #presets_14ice_tourian_baby
    dw #presets_14ice_tourian_zeb_skip
    dw #presets_14ice_tourian_escape_room_3
    dw #presets_14ice_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Crateria
presets_14ice_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_14ice_crateria_ceres_elevator)

presets_14ice_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_14ice_crateria_ceres_last_3_rooms)

presets_14ice_crateria_ship:
    %cm_preset("Ship", #preset_14ice_crateria_ship)

presets_14ice_crateria_morph:
    %cm_preset("Morph", #preset_14ice_crateria_morph)

presets_14ice_crateria_climb:
    %cm_preset("Climb", #preset_14ice_crateria_climb)

presets_14ice_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_14ice_crateria_bomb_torizo)

presets_14ice_crateria_terminator:
    %cm_preset("Terminator", #preset_14ice_crateria_terminator)


; Brinstar
presets_14ice_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_14ice_brinstar_green_brinstar_elevator)

presets_14ice_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_14ice_brinstar_big_pink)

presets_14ice_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_14ice_brinstar_red_tower)

presets_14ice_brinstar_hellway:
    %cm_preset("Hellway", #preset_14ice_brinstar_hellway)

presets_14ice_brinstar_caterpillar_room:
    %cm_preset("Caterpillar Room", #preset_14ice_brinstar_caterpillar_room)

presets_14ice_brinstar_leaving_power_bombs:
    %cm_preset("Leaving Power Bombs", #preset_14ice_brinstar_leaving_power_bombs)

presets_14ice_brinstar_kihunter_room:
    %cm_preset("Kihunter Room", #preset_14ice_brinstar_kihunter_room)

presets_14ice_brinstar_moat:
    %cm_preset("Moat", #preset_14ice_brinstar_moat)

presets_14ice_brinstar_ocean:
    %cm_preset("Ocean", #preset_14ice_brinstar_ocean)


; Wrecked Ship
presets_14ice_wrecked_ship_wrecked_ship_shaft:
    %cm_preset("Wrecked Ship Shaft", #preset_14ice_wrecked_ship_wrecked_ship_shaft)

presets_14ice_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_14ice_wrecked_ship_phantoon)

presets_14ice_wrecked_ship_wrecked_ship_supers:
    %cm_preset("Wrecked Ship Supers", #preset_14ice_wrecked_ship_wrecked_ship_supers)

presets_14ice_wrecked_ship_shaft_revisit:
    %cm_preset("Shaft Revisit", #preset_14ice_wrecked_ship_shaft_revisit)

presets_14ice_wrecked_ship_attic:
    %cm_preset("Attic", #preset_14ice_wrecked_ship_attic)

presets_14ice_wrecked_ship_bowling_alley_path:
    %cm_preset("Bowling Alley Path", #preset_14ice_wrecked_ship_bowling_alley_path)

presets_14ice_wrecked_ship_bowling_alley:
    %cm_preset("Bowling Alley", #preset_14ice_wrecked_ship_bowling_alley)

presets_14ice_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_14ice_wrecked_ship_leaving_gravity)


; Brinstar Revisit
presets_14ice_brinstar_revisit_red_tower_elevator:
    %cm_preset("Red Tower Elevator", #preset_14ice_brinstar_revisit_red_tower_elevator)

presets_14ice_brinstar_revisit_breaking_tube:
    %cm_preset("Breaking Tube", #preset_14ice_brinstar_revisit_breaking_tube)

presets_14ice_brinstar_revisit_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_14ice_brinstar_revisit_entering_kraids_lair)

presets_14ice_brinstar_revisit_baby_kraid_entering:
    %cm_preset("Baby Kraid (Entering)", #preset_14ice_brinstar_revisit_baby_kraid_entering)

presets_14ice_brinstar_revisit_kraid:
    %cm_preset("Kraid", #preset_14ice_brinstar_revisit_kraid)

presets_14ice_brinstar_revisit_baby_kraid_exiting:
    %cm_preset("Baby Kraid (Exiting)", #preset_14ice_brinstar_revisit_baby_kraid_exiting)

presets_14ice_brinstar_revisit_kraid_etank:
    %cm_preset("Kraid E-tank", #preset_14ice_brinstar_revisit_kraid_etank)


; Upper Norfair
presets_14ice_upper_norfair_ice_beam:
    %cm_preset("Ice Beam", #preset_14ice_upper_norfair_ice_beam)

presets_14ice_upper_norfair_ice_escape:
    %cm_preset("Ice Escape", #preset_14ice_upper_norfair_ice_escape)

presets_14ice_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_14ice_upper_norfair_precathedral)

presets_14ice_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_14ice_upper_norfair_bubble_mountain)

presets_14ice_upper_norfair_magdollite_room:
    %cm_preset("Magdollite Room", #preset_14ice_upper_norfair_magdollite_room)

presets_14ice_upper_norfair_kronic_boost:
    %cm_preset("Kronic Boost", #preset_14ice_upper_norfair_kronic_boost)


; Lower Norfair
presets_14ice_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_14ice_lower_norfair_ln_main_hall)

presets_14ice_lower_norfair_pillars:
    %cm_preset("Pillars", #preset_14ice_lower_norfair_pillars)

presets_14ice_lower_norfair_worst_room:
    %cm_preset("Worst Room", #preset_14ice_lower_norfair_worst_room)

presets_14ice_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_14ice_lower_norfair_amphitheatre)

presets_14ice_lower_norfair_kihunter_stairs:
    %cm_preset("Kihunter Stairs", #preset_14ice_lower_norfair_kihunter_stairs)

presets_14ice_lower_norfair_wasteland:
    %cm_preset("Wasteland", #preset_14ice_lower_norfair_wasteland)

presets_14ice_lower_norfair_metal_pirates:
    %cm_preset("Metal Pirates", #preset_14ice_lower_norfair_metal_pirates)

presets_14ice_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_14ice_lower_norfair_ridley)

presets_14ice_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_14ice_lower_norfair_leaving_ridley)

presets_14ice_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_14ice_lower_norfair_wasteland_revisit)

presets_14ice_lower_norfair_kihunter_stairs_revisit:
    %cm_preset("Kihunter Stairs Revisit", #preset_14ice_lower_norfair_kihunter_stairs_revisit)

presets_14ice_lower_norfair_fireflea_room:
    %cm_preset("Fireflea Room", #preset_14ice_lower_norfair_fireflea_room)

presets_14ice_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_14ice_lower_norfair_three_musketeers)

presets_14ice_lower_norfair_bubble_mountain_revisit:
    %cm_preset("Bubble Mountain Revisit", #preset_14ice_lower_norfair_bubble_mountain_revisit)


; Maridia
presets_14ice_maridia_entering_maridia:
    %cm_preset("Entering Maridia", #preset_14ice_maridia_entering_maridia)

presets_14ice_maridia_mt_everest:
    %cm_preset("Mt Everest", #preset_14ice_maridia_mt_everest)

presets_14ice_maridia_ice_clip:
    %cm_preset("Ice Clip", #preset_14ice_maridia_ice_clip)

presets_14ice_maridia_botwoon:
    %cm_preset("Botwoon", #preset_14ice_maridia_botwoon)

presets_14ice_maridia_botwoon_etank_room:
    %cm_preset("Botwoon E-tank Room", #preset_14ice_maridia_botwoon_etank_room)

presets_14ice_maridia_colosseum:
    %cm_preset("Colosseum", #preset_14ice_maridia_colosseum)

presets_14ice_maridia_draygon:
    %cm_preset("Draygon", #preset_14ice_maridia_draygon)

presets_14ice_maridia_colosseum_revisit:
    %cm_preset("Colosseum Revisit", #preset_14ice_maridia_colosseum_revisit)

presets_14ice_maridia_reverse_botwoon:
    %cm_preset("Reverse Botwoon", #preset_14ice_maridia_reverse_botwoon)

presets_14ice_maridia_aqueduct_revisit:
    %cm_preset("Aqueduct Revisit", #preset_14ice_maridia_aqueduct_revisit)

presets_14ice_maridia_everest_revisit:
    %cm_preset("Everest Revisit", #preset_14ice_maridia_everest_revisit)

presets_14ice_maridia_red_tower_green_gate:
    %cm_preset("Red Tower Green Gate", #preset_14ice_maridia_red_tower_green_gate)


; Tourian
presets_14ice_tourian_kihunter_room_revisit:
    %cm_preset("Kihunter Room Revisit", #preset_14ice_tourian_kihunter_room_revisit)

presets_14ice_tourian_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_14ice_tourian_terminator_revisit)

presets_14ice_tourian_pirate_shaft_revisit:
    %cm_preset("Pirate Shaft Revisit", #preset_14ice_tourian_pirate_shaft_revisit)

presets_14ice_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_14ice_tourian_metroids_1)

presets_14ice_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_14ice_tourian_metroids_2)

presets_14ice_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_14ice_tourian_metroids_3)

presets_14ice_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_14ice_tourian_metroids_4)

presets_14ice_tourian_baby:
    %cm_preset("Baby", #preset_14ice_tourian_baby)

presets_14ice_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_14ice_tourian_zeb_skip)

presets_14ice_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_14ice_tourian_escape_room_3)

presets_14ice_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_14ice_tourian_escape_parlor)


