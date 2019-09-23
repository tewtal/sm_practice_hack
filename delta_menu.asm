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
    dw #presets_g4_enter_tourian
    dw #$0000
    %cm_header("GOLDEN 4")

presets_submenu_tou:
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
    %cm_delta("Ceres elevator", #delta_bombs_elevator)

presets_bombs_last_3_rooms:
    %cm_delta("Ceres Last 3 rooms", #delta_bombs_last_3_rooms)

presets_bombs_ship:
    %cm_delta("Ship", #delta_bombs_ship)

presets_bombs_parlor_down:
    %cm_delta("Parlor down", #delta_bombs_parlor_down)

presets_bombs_morph:
    %cm_delta("Morph", #delta_bombs_morph)

presets_bombs_pit_room:
    %cm_delta("Pit Room", #delta_bombs_pit_room)

presets_bombs_climb:
    %cm_delta("Climb", #delta_bombs_climb)

presets_bombs_parlor_up:
    %cm_delta("Parlor up", #delta_bombs_parlor_up)

presets_bombs_bomb_torizo:
    %cm_delta("Bomb Torizo", #delta_bombs_bomb_torizo)


; Power Bombs
presets_pbs_alcatraz:
    %cm_delta("Alcatraz", #delta_pbs_alcatraz)

presets_pbs_terminator:
    %cm_delta("Terminator", #delta_pbs_terminator)

presets_pbs_pirates_shaft:
    %cm_delta("Pirates Shaft", #delta_pbs_pirates_shaft)

presets_pbs_elevator:
    %cm_delta("Elevator", #delta_pbs_elevator)

presets_pbs_early_supers:
    %cm_delta("Early Supers", #delta_pbs_early_supers)

presets_pbs_dachora_room:
    %cm_delta("Dachora Room", #delta_pbs_dachora_room)

presets_pbs_big_pink:
    %cm_delta("Big Pink", #delta_pbs_big_pink)

presets_pbs_green_hill_zone:
    %cm_delta("Green Hill Zone", #delta_pbs_green_hill_zone)

presets_pbs_red_tower:
    %cm_delta("Red Tower", #delta_pbs_red_tower)

presets_pbs_hellway:
    %cm_delta("Hellway", #delta_pbs_hellway)

presets_pbs_caterpillar_room_down:
    %cm_delta("Caterpillar Room down", #delta_pbs_caterpillar_room_down)


; Gravity Suit
presets_grav_caterpillar_room_up:
    %cm_delta("Caterpillar Room up", #delta_grav_caterpillar_room_up)

presets_grav_kihunter_room:
    %cm_delta("Kihunter Room", #delta_grav_kihunter_room)

presets_grav_moat:
    %cm_delta("Moat", #delta_grav_moat)

presets_grav_wrecked_ship_enter:
    %cm_delta("Wrecked Ship Enter", #delta_grav_wrecked_ship_enter)

presets_grav_phantoon:
    %cm_delta("Phantoon", #delta_grav_phantoon)

presets_grav_wrecked_ship_climb:
    %cm_delta("Wrecked Ship Climb", #delta_grav_wrecked_ship_climb)

presets_grav_attic:
    %cm_delta("Attic", #delta_grav_attic)

presets_grav_bowling_alley_farm:
    %cm_delta("Bowling Alley farm", #delta_grav_bowling_alley_farm)

presets_grav_grav:
    %cm_delta("Grav", #delta_grav_grav)


; Cathedral
presets_cath_kihunter_room:
    %cm_delta("Kihunter Room", #delta_cath_kihunter_room)

presets_cath_caterpillar_room:
    %cm_delta("Caterpillar Room", #delta_cath_caterpillar_room)

presets_cath_red_tower:
    %cm_delta("Red Tower", #delta_cath_red_tower)

presets_cath_bat_room:
    %cm_delta("Bat Room", #delta_cath_bat_room)

presets_cath_glass_tunnel:
    %cm_delta("Glass Tunnel", #delta_cath_glass_tunnel)

presets_cath_business_center:
    %cm_delta("Business Center", #delta_cath_business_center)

presets_cath_hi_jump:
    %cm_delta("Hi Jump", #delta_cath_hi_jump)

presets_cath_business_center_climb:
    %cm_delta("Business Center climb", #delta_cath_business_center_climb)

presets_cath_ice_beam_snake_room:
    %cm_delta("Ice Beam Snake Room", #delta_cath_ice_beam_snake_room)

presets_cath_ice_escape:
    %cm_delta("Ice Escape", #delta_cath_ice_escape)

presets_cath_cathedral_entrance:
    %cm_delta("Cathedral Entrance", #delta_cath_cathedral_entrance)


; Ridley
presets_rid_cathedral:
    %cm_delta("Cathedral", #delta_rid_cathedral)

presets_rid_bubble_mountain:
    %cm_delta("Bubble Mountain", #delta_rid_bubble_mountain)

presets_rid_bat_cave:
    %cm_delta("Bat Cave", #delta_rid_bat_cave)

presets_rid_bat_cave_revisited:
    %cm_delta("Bat Cave revisited", #delta_rid_bat_cave_revisited)

presets_rid_single_chamber:
    %cm_delta("Single Chamber", #delta_rid_single_chamber)

presets_rid_double_chamber:
    %cm_delta("Double Chamber", #delta_rid_double_chamber)

presets_rid_double_chamber_revisited:
    %cm_delta("Double Chamber revisited", #delta_rid_double_chamber_revisited)

presets_rid_kronic_boost_room:
    %cm_delta("Volcano Room", #delta_rid_kronic_boost_room)

presets_rid_lavaspark:
    %cm_delta("Lavaspark", #delta_rid_lavaspark)

presets_rid_elevator:
    %cm_delta("LN Elevator", #delta_rid_elevator)

presets_rid_fast_pillars:
    %cm_delta("Fast Pillars", #delta_rid_fast_pillars)

presets_rid_writg:
    %cm_delta("WRITG", #delta_rid_writg)

presets_rid_amphitheatre:
    %cm_delta("Amphitheatre", #delta_rid_amphitheatre)

presets_rid_kihunter_shaft:
    %cm_delta("Kihunter shaft", #delta_rid_kihunter_shaft)

presets_rid_wasteland:
    %cm_delta("Wasteland", #delta_rid_wasteland)

presets_rid_metal_pirates:
    %cm_delta("Metal Pirates", #delta_rid_metal_pirates)

presets_rid_farming_room:
    %cm_delta("Ridley Farming Room", #delta_rid_farming_room)

presets_rid_ridley:
    %cm_delta("Ridley", #delta_rid_ridley)


; Kraid
presets_kraid_farming_room:
    %cm_delta("Ridley Farming Room", #delta_kraid_farming_room)

presets_kraid_wasteland:
    %cm_delta("Wasteland", #delta_kraid_wasteland)

presets_kraid_kihunter_shaft:
    %cm_delta("Kihunter shaft", #delta_kraid_kihunter_shaft)

presets_kraid_fireflea_room:
    %cm_delta("Fireflea Room", #delta_kraid_fireflea_room)

presets_kraid_three_muskateers_room:
    %cm_delta("Three Muskateers Room", #delta_kraid_three_muskateers_room)

presets_kraid_single_chamber:
    %cm_delta("Single Chamber", #delta_kraid_single_chamber)

presets_kraid_bubble_mountain:
    %cm_delta("Bubble Mountain", #delta_kraid_bubble_mountain)

presets_kraid_frog_speedway:
    %cm_delta("Frog Speedway", #delta_kraid_frog_speedway)

presets_kraid_warehouse_entrance:
    %cm_delta("Warehouse Entrance", #delta_kraid_warehouse_entrance)

presets_kraid_zeela_room:
    %cm_delta("Zeela Room", #delta_kraid_zeela_room)

presets_kraid_baby_kraid:
    %cm_delta("Baby Kraid", #delta_kraid_baby_kraid)

presets_kraid_kraid:
    %cm_delta("Kraid", #delta_kraid_kraid)


; Draygon
presets_dray_baby_kraid:
    %cm_delta("Baby Kraid", #delta_dray_baby_kraid)

presets_dray_warehouse_entrance:
    %cm_delta("Warehouse Entrance", #delta_dray_warehouse_entrance)

presets_dray_glass_tunnel:
    %cm_delta("Glass Tunnel", #delta_dray_glass_tunnel)

presets_dray_fish_tank:
    %cm_delta("Fish Tank", #delta_dray_fish_tank)

presets_dray_crab_shaft:
    %cm_delta("Crab Shaft", #delta_dray_crab_shaft)

presets_dray_botwoon_hallway:
    %cm_delta("Botwoon Hallway", #delta_dray_botwoon_hallway)

presets_dray_botwoon:
    %cm_delta("Botwoon", #delta_dray_botwoon)

presets_dray_halfie_climb:
    %cm_delta("Halfie Climb", #delta_dray_halfie_climb)

presets_dray_draygon:
    %cm_delta("Draygon", #delta_dray_draygon)


; Golden 4
presets_g4_precious_room:
    %cm_delta("Precious Room", #delta_g4_precious_room)

presets_g4_halfie_climb:
    %cm_delta("Halfie Climb", #delta_g4_halfie_climb)

presets_g4_botwoon_hallway:
    %cm_delta("Botwoon Hallway", #delta_g4_botwoon_hallway)

presets_g4_crab_shaft:
    %cm_delta("Crab Shaft", #delta_g4_crab_shaft)

presets_g4_mt_everest:
    %cm_delta("Mt Everest", #delta_g4_mt_everest)

presets_g4_caterpillar_room:
    %cm_delta("Caterpillar Room", #delta_g4_caterpillar_room)

presets_g4_kihunter_room:
    %cm_delta("Kihunter Room", #delta_g4_kihunter_room)

presets_g4_parlor:
    %cm_delta("Parlor", #delta_g4_parlor)

presets_g4_terminator:
    %cm_delta("Terminator", #delta_g4_terminator)

presets_g4_golden_four:
    %cm_delta("Golden Four", #delta_g4_golden_four)

presets_g4_enter_tourian:
    %cm_delta("Enter Tourian", #delta_g4_enter_tourian)


; Tourian
presets_tou_m1:
    %cm_delta("M1", #delta_tou_m1)

presets_tou_m2:
    %cm_delta("M2", #delta_tou_m2)

presets_tou_m3:
    %cm_delta("M3", #delta_tou_m3)

presets_tou_m4:
    %cm_delta("M4", #delta_tou_m4)

presets_tou_baby_skip:
    %cm_delta("Baby Skip", #delta_tou_baby_skip)

presets_tou_tourian_eye_door:
    %cm_delta("Tourian Eye Door", #delta_tou_tourian_eye_door)

presets_tou_escape_room_3:
    %cm_delta("Escape Room 3", #delta_tou_escape_room_3)

presets_tou_escape_parlor:
    %cm_delta("Escape Parlor", #delta_tou_escape_parlor)


