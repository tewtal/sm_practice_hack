PresetsMenu:
    dw #presets_goto_bombs
    dw #presets_goto_pbs
    dw #presets_goto_grav
    dw #presets_goto_cath
    dw #presets_goto_rid
    dw #presets_goto_kraid
    dw #presets_goto_dray
    dw #presets_goto_g4
    dw #presets_goto_tou
    dw #$0000
    %cm_header("PRESETS")

presets_goto_bombs:
    %cm_submenu("Bombs", #presets_submenu_bombs)

presets_goto_pbs:
    %cm_submenu("Power Bombs", #presets_submenu_pbs)

presets_goto_grav:
    %cm_submenu("Gravity Suit", #presets_submenu_grav)

presets_goto_cath:
    %cm_submenu("Cathedral", #presets_submenu_cath)

presets_goto_rid:
    %cm_submenu("Ridley", #presets_submenu_rid)

presets_goto_kraid:
    %cm_submenu("Kraid", #presets_submenu_kraid)

presets_goto_dray:
    %cm_submenu("Draygon", #presets_submenu_dray)

presets_goto_g4:
    %cm_submenu("Golden 4", #presets_submenu_g4)

presets_goto_tou:
    %cm_submenu("Tourian", #presets_submenu_tou)

presets_submenu_bombs:
    dw #presets_bombs_elevator
    dw #presets_bombs_last_3_rooms
    dw #presets_bombs_ship
    dw #presets_bombs_parlor_down
    dw #presets_bombs_morph
    dw #presets_bombs_pit_room
    dw #presets_bombs_climb
    dw #presets_bombs_parlor_up
    dw #presets_bombs_bomb_torizo
    dw #$0000
    %cm_header("BOMBS")

presets_submenu_pbs:
    dw #presets_pbs_alcatraz
    dw #presets_pbs_terminator
    dw #presets_pbs_pirates_shaft
    dw #presets_pbs_elevator
    dw #presets_pbs_early_supers
    dw #presets_pbs_dachora_room
    dw #presets_pbs_big_pink
    dw #presets_pbs_green_hill_zone
    dw #presets_pbs_red_tower
    dw #presets_pbs_hellway
    dw #presets_pbs_caterpillar_room_down
    dw #$0000
    %cm_header("POWER BOMBS")

presets_submenu_grav:
    dw #presets_grav_caterpillar_room_up
    dw #presets_grav_kihunter_room
    dw #presets_grav_moat
    dw #presets_grav_wrecked_ship_enter
    dw #presets_grav_phantoon
    dw #presets_grav_wrecked_ship_climb
    dw #presets_grav_attic
    dw #presets_grav_bowling_alley_farm
    dw #presets_grav_grav
    dw #$0000
    %cm_header("GRAVITY SUIT")

presets_submenu_cath:
    dw #presets_cath_kihunter_room
    dw #presets_cath_caterpillar_room
    dw #presets_cath_red_tower
    dw #presets_cath_bat_room
    dw #presets_cath_glass_tunnel
    dw #presets_cath_business_center
    dw #presets_cath_hi_jump
    dw #presets_cath_business_center_climb
    dw #presets_cath_ice_beam_snake_room
    dw #presets_cath_ice_escape
    dw #presets_cath_cathedral_entrance
    dw #$0000
    %cm_header("CATHEDRAL")

presets_submenu_rid:
    dw #presets_rid_cathedral
    dw #presets_rid_bubble_mountain
    dw #presets_rid_bat_cave
    dw #presets_rid_bat_cave_revisited
    dw #presets_rid_single_chamber
    dw #presets_rid_double_chamber
    dw #presets_rid_double_chamber_revisited
    dw #presets_rid_kronic_boost_room
    dw #presets_rid_lavaspark
    dw #presets_rid_elevator
    dw #presets_rid_fast_pillars
    dw #presets_rid_writg
    dw #presets_rid_amphitheatre
    dw #presets_rid_kihunter_shaft
    dw #presets_rid_wasteland
    dw #presets_rid_metal_pirates
    dw #presets_rid_farming_room
    dw #presets_rid_ridley
    dw #$0000
    %cm_header("RIDLEY")

presets_submenu_kraid:
    dw #presets_kraid_farming_room
    dw #presets_kraid_wasteland
    dw #presets_kraid_kihunter_shaft
    dw #presets_kraid_fireflea_room
    dw #presets_kraid_three_muskateers_room
    dw #presets_kraid_single_chamber
    dw #presets_kraid_bubble_mountain
    dw #presets_kraid_frog_speedway
    dw #presets_kraid_warehouse_entrance
    dw #presets_kraid_zeela_room
    dw #presets_kraid_baby_kraid
    dw #presets_kraid_kraid
    dw #$0000
    %cm_header("KRAID")

presets_submenu_dray:
    dw #presets_dray_baby_kraid
    dw #presets_dray_warehouse_entrance
    dw #presets_dray_glass_tunnel
    dw #presets_dray_fish_tank
    dw #presets_dray_crab_shaft
    dw #presets_dray_botwoon_hallway
    dw #presets_dray_botwoon
    dw #presets_dray_halfie_climb
    dw #presets_dray_draygon
    dw #$0000
    %cm_header("DRAYGON")

presets_submenu_g4:
    dw #presets_g4_precious_room
    dw #presets_g4_halfie_climb
    dw #presets_g4_botwoon_hallway
    dw #presets_g4_crab_shaft
    dw #presets_g4_mt_everest
    dw #presets_g4_caterpillar_room
    dw #presets_g4_kihunter_room
    dw #presets_g4_parlor
    dw #presets_g4_terminator
    dw #presets_g4_golden_four
    dw #$0000
    %cm_header("GOLDEN 4")

presets_submenu_tou:
    dw #presets_tou_enter_tourian
    dw #presets_tou_m1
    dw #presets_tou_m2
    dw #presets_tou_m3
    dw #presets_tou_m4
    dw #presets_tou_baby_skip
    dw #presets_tou_tourian_eye_door
    dw #presets_tou_escape_room_3
    dw #presets_tou_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Bombs
presets_bombs_elevator:
    %cm_preset("Ceres elevator", #preset_bombs_elevator)

presets_bombs_last_3_rooms:
    %cm_preset("Ceres Last 3 rooms", #preset_bombs_last_3_rooms)

presets_bombs_ship:
    %cm_preset("Ship", #preset_bombs_ship)

presets_bombs_parlor_down:
    %cm_preset("Parlor down", #preset_bombs_parlor_down)

presets_bombs_morph:
    %cm_preset("Morph", #preset_bombs_morph)

presets_bombs_pit_room:
    %cm_preset("Pit Room", #preset_bombs_pit_room)

presets_bombs_climb:
    %cm_preset("Climb", #preset_bombs_climb)

presets_bombs_parlor_up:
    %cm_preset("Parlor up", #preset_bombs_parlor_up)

presets_bombs_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_bombs_bomb_torizo)


; Power Bombs
presets_pbs_alcatraz:
    %cm_preset("Alcatraz", #preset_pbs_alcatraz)

presets_pbs_terminator:
    %cm_preset("Terminator", #preset_pbs_terminator)

presets_pbs_pirates_shaft:
    %cm_preset("Pirates Shaft", #preset_pbs_pirates_shaft)

presets_pbs_elevator:
    %cm_preset("Elevator", #preset_pbs_elevator)

presets_pbs_early_supers:
    %cm_preset("Early Supers", #preset_pbs_early_supers)

presets_pbs_dachora_room:
    %cm_preset("Dachora Room", #preset_pbs_dachora_room)

presets_pbs_big_pink:
    %cm_preset("Big Pink", #preset_pbs_big_pink)

presets_pbs_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_pbs_green_hill_zone)

presets_pbs_red_tower:
    %cm_preset("Red Tower", #preset_pbs_red_tower)

presets_pbs_hellway:
    %cm_preset("Hellway", #preset_pbs_hellway)

presets_pbs_caterpillar_room_down:
    %cm_preset("Caterpillar Room down", #preset_pbs_caterpillar_room_down)


; Gravity Suit
presets_grav_caterpillar_room_up:
    %cm_preset("Caterpillar Room up", #preset_grav_caterpillar_room_up)

presets_grav_kihunter_room:
    %cm_preset("Kihunter Room", #preset_grav_kihunter_room)

presets_grav_moat:
    %cm_preset("Moat", #preset_grav_moat)

presets_grav_wrecked_ship_enter:
    %cm_preset("Wrecked Ship Enter", #preset_grav_wrecked_ship_enter)

presets_grav_phantoon:
    %cm_preset("Phantoon", #preset_grav_phantoon)

presets_grav_wrecked_ship_climb:
    %cm_preset("Wrecked Ship Climb", #preset_grav_wrecked_ship_climb)

presets_grav_attic:
    %cm_preset("Attic", #preset_grav_attic)

presets_grav_bowling_alley_farm:
    %cm_preset("Bowling Alley farm", #preset_grav_bowling_alley_farm)

presets_grav_grav:
    %cm_preset("Grav", #preset_grav_grav)


; Cathedral
presets_cath_kihunter_room:
    %cm_preset("Kihunter Room", #preset_cath_kihunter_room)

presets_cath_caterpillar_room:
    %cm_preset("Caterpillar Room", #preset_cath_caterpillar_room)

presets_cath_red_tower:
    %cm_preset("Red Tower", #preset_cath_red_tower)

presets_cath_bat_room:
    %cm_preset("Bat Room", #preset_cath_bat_room)

presets_cath_glass_tunnel:
    %cm_preset("Glass Tunnel", #preset_cath_glass_tunnel)

presets_cath_business_center:
    %cm_preset("Business Center", #preset_cath_business_center)

presets_cath_hi_jump:
    %cm_preset("Hi Jump", #preset_cath_hi_jump)

presets_cath_business_center_climb:
    %cm_preset("Business Center climb", #preset_cath_business_center_climb)

presets_cath_ice_beam_snake_room:
    %cm_preset("Ice Beam Snake Room", #preset_cath_ice_beam_snake_room)

presets_cath_ice_escape:
    %cm_preset("Ice Escape", #preset_cath_ice_escape)

presets_cath_cathedral_entrance:
    %cm_preset("Cathedral Entrance", #preset_cath_cathedral_entrance)


; Ridley
presets_rid_cathedral:
    %cm_preset("Cathedral", #preset_rid_cathedral)

presets_rid_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_rid_bubble_mountain)

presets_rid_bat_cave:
    %cm_preset("Bat Cave", #preset_rid_bat_cave)

presets_rid_bat_cave_revisited:
    %cm_preset("Bat Cave revisited", #preset_rid_bat_cave_revisited)

presets_rid_single_chamber:
    %cm_preset("Single Chamber", #preset_rid_single_chamber)

presets_rid_double_chamber:
    %cm_preset("Double Chamber", #preset_rid_double_chamber)

presets_rid_double_chamber_revisited:
    %cm_preset("Double Chamber revisited", #preset_rid_double_chamber_revisited)

presets_rid_kronic_boost_room:
    %cm_preset("Volcano Room", #preset_rid_kronic_boost_room)

presets_rid_lavaspark:
    %cm_preset("Lavaspark", #preset_rid_lavaspark)

presets_rid_elevator:
    %cm_preset("LN Elevator", #preset_rid_elevator)

presets_rid_fast_pillars:
    %cm_preset("Fast Pillars", #preset_rid_fast_pillars)

presets_rid_writg:
    %cm_preset("WRITG", #preset_rid_writg)

presets_rid_amphitheatre:
    %cm_preset("Amphitheatre", #preset_rid_amphitheatre)

presets_rid_kihunter_shaft:
    %cm_preset("Kihunter shaft", #preset_rid_kihunter_shaft)

presets_rid_wasteland:
    %cm_preset("Wasteland", #preset_rid_wasteland)

presets_rid_metal_pirates:
    %cm_preset("Metal Pirates", #preset_rid_metal_pirates)

presets_rid_farming_room:
    %cm_preset("Ridley Farming Room", #preset_rid_farming_room)

presets_rid_ridley:
    %cm_preset("Ridley", #preset_rid_ridley)


; Kraid
presets_kraid_farming_room:
    %cm_preset("Ridley Farming Room", #preset_kraid_farming_room)

presets_kraid_wasteland:
    %cm_preset("Wasteland", #preset_kraid_wasteland)

presets_kraid_kihunter_shaft:
    %cm_preset("Kihunter shaft", #preset_kraid_kihunter_shaft)

presets_kraid_fireflea_room:
    %cm_preset("Fireflea Room", #preset_kraid_fireflea_room)

presets_kraid_three_muskateers_room:
    %cm_preset("Three Muskateers Room", #preset_kraid_three_muskateers_room)

presets_kraid_single_chamber:
    %cm_preset("Single Chamber", #preset_kraid_single_chamber)

presets_kraid_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_kraid_bubble_mountain)

presets_kraid_frog_speedway:
    %cm_preset("Frog Speedway", #preset_kraid_frog_speedway)

presets_kraid_warehouse_entrance:
    %cm_preset("Warehouse Entrance", #preset_kraid_warehouse_entrance)

presets_kraid_zeela_room:
    %cm_preset("Zeela Room", #preset_kraid_zeela_room)

presets_kraid_baby_kraid:
    %cm_preset("Baby Kraid", #preset_kraid_baby_kraid)

presets_kraid_kraid:
    %cm_preset("Kraid", #preset_kraid_kraid)


; Draygon
presets_dray_baby_kraid:
    %cm_preset("Baby Kraid", #preset_dray_baby_kraid)

presets_dray_warehouse_entrance:
    %cm_preset("Warehouse Entrance", #preset_dray_warehouse_entrance)

presets_dray_glass_tunnel:
    %cm_preset("Glass Tunnel", #preset_dray_glass_tunnel)

presets_dray_fish_tank:
    %cm_preset("Fish Tank", #preset_dray_fish_tank)

presets_dray_crab_shaft:
    %cm_preset("Crab Shaft", #preset_dray_crab_shaft)

presets_dray_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_dray_botwoon_hallway)

presets_dray_botwoon:
    %cm_preset("Botwoon", #preset_dray_botwoon)

presets_dray_halfie_climb:
    %cm_preset("Halfie Climb", #preset_dray_halfie_climb)

presets_dray_draygon:
    %cm_preset("Draygon", #preset_dray_draygon)


; Golden 4
presets_g4_precious_room:
    %cm_preset("Precious Room", #preset_g4_precious_room)

presets_g4_halfie_climb:
    %cm_preset("Halfie Climb", #preset_g4_halfie_climb)

presets_g4_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_g4_botwoon_hallway)

presets_g4_crab_shaft:
    %cm_preset("Crab Shaft", #preset_g4_crab_shaft)

presets_g4_mt_everest:
    %cm_preset("Mt Everest", #preset_g4_mt_everest)

presets_g4_caterpillar_room:
    %cm_preset("Caterpillar Room", #preset_g4_caterpillar_room)

presets_g4_kihunter_room:
    %cm_preset("Kihunter Room", #preset_g4_kihunter_room)

presets_g4_parlor:
    %cm_preset("Parlor", #preset_g4_parlor)

presets_g4_terminator:
    %cm_preset("Terminator", #preset_g4_terminator)

presets_g4_golden_four:
    %cm_preset("Golden Four", #preset_g4_golden_four)


; Tourian
presets_tou_enter_tourian:
    %cm_preset("Enter Tourian", #preset_tou_enter_tourian)

presets_tou_m1:
    %cm_preset("M1", #preset_tou_m1)

presets_tou_m2:
    %cm_preset("M2", #preset_tou_m2)

presets_tou_m3:
    %cm_preset("M3", #preset_tou_m3)

presets_tou_m4:
    %cm_preset("M4", #preset_tou_m4)

presets_tou_baby_skip:
    %cm_preset("Baby Skip", #preset_tou_baby_skip)

presets_tou_tourian_eye_door:
    %cm_preset("Tourian Eye Door", #preset_tou_tourian_eye_door)

presets_tou_escape_room_3:
    %cm_preset("Escape Room 3", #preset_tou_escape_room_3)

presets_tou_escape_parlor:
    %cm_preset("Escape Parlor", #preset_tou_escape_parlor)


