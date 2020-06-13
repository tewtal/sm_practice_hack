PresetsMenuPrkd:
    dw #presets_goto_prkd_bombs
    dw #presets_goto_prkd_power_bombs
    dw #presets_goto_prkd_gravity_suit
    dw #presets_goto_prkd_cathedral
    dw #presets_goto_prkd_ridley
    dw #presets_goto_prkd_kraid
    dw #presets_goto_prkd_draygon
    dw #presets_goto_prkd_golden_4
    dw #presets_goto_prkd_tourian
    dw #$0000
    %cm_header("PRESETS FOR ANY PRKD")

presets_goto_prkd_bombs:
    %cm_submenu("Bombs", #presets_submenu_prkd_bombs)

presets_goto_prkd_power_bombs:
    %cm_submenu("Power Bombs", #presets_submenu_prkd_power_bombs)

presets_goto_prkd_gravity_suit:
    %cm_submenu("Gravity Suit", #presets_submenu_prkd_gravity_suit)

presets_goto_prkd_cathedral:
    %cm_submenu("Cathedral", #presets_submenu_prkd_cathedral)

presets_goto_prkd_ridley:
    %cm_submenu("Ridley", #presets_submenu_prkd_ridley)

presets_goto_prkd_kraid:
    %cm_submenu("Kraid", #presets_submenu_prkd_kraid)

presets_goto_prkd_draygon:
    %cm_submenu("Draygon", #presets_submenu_prkd_draygon)

presets_goto_prkd_golden_4:
    %cm_submenu("Golden 4", #presets_submenu_prkd_golden_4)

presets_goto_prkd_tourian:
    %cm_submenu("Tourian", #presets_submenu_prkd_tourian)

presets_submenu_prkd_bombs:
    dw #presets_prkd_bombs_elevator
    dw #presets_prkd_bombs_ceres_last_3_rooms
    dw #presets_prkd_bombs_ship
    dw #presets_prkd_bombs_parlor_down
    dw #presets_prkd_bombs_morph
    dw #presets_prkd_bombs_pit_room
    dw #presets_prkd_bombs_climb
    dw #presets_prkd_bombs_parlor_up
    dw #presets_prkd_bombs_bomb_torizo
    dw #$0000
    %cm_header("BOMBS")

presets_submenu_prkd_power_bombs:
    dw #presets_prkd_power_bombs_alcatraz
    dw #presets_prkd_power_bombs_terminator
    dw #presets_prkd_power_bombs_pirates_shaft
    dw #presets_prkd_power_bombs_elevator_2
    dw #presets_prkd_power_bombs_early_supers
    dw #presets_prkd_power_bombs_dachora_room
    dw #presets_prkd_power_bombs_big_pink
    dw #presets_prkd_power_bombs_green_hill_zone
    dw #presets_prkd_power_bombs_red_tower
    dw #presets_prkd_power_bombs_hellway
    dw #presets_prkd_power_bombs_caterpillar_room_down
    dw #$0000
    %cm_header("POWER BOMBS")

presets_submenu_prkd_gravity_suit:
    dw #presets_prkd_gravity_suit_caterpillar_room_up
    dw #presets_prkd_gravity_suit_kihunter_room
    dw #presets_prkd_gravity_suit_moat
    dw #presets_prkd_gravity_suit_wrecked_ship_enter
    dw #presets_prkd_gravity_suit_phantoon
    dw #presets_prkd_gravity_suit_wrecked_ship_climb
    dw #presets_prkd_gravity_suit_attic
    dw #presets_prkd_gravity_suit_bowling_alley_farm
    dw #presets_prkd_gravity_suit_grav
    dw #$0000
    %cm_header("GRAVITY SUIT")

presets_submenu_prkd_cathedral:
    dw #presets_prkd_cathedral_kihunter_room_2
    dw #presets_prkd_cathedral_caterpillar_room
    dw #presets_prkd_cathedral_red_tower_2
    dw #presets_prkd_cathedral_bat_room
    dw #presets_prkd_cathedral_glass_tunnel
    dw #presets_prkd_cathedral_business_center
    dw #presets_prkd_cathedral_hi_jump
    dw #presets_prkd_cathedral_business_center_climb
    dw #presets_prkd_cathedral_ice_beam_snake_room
    dw #presets_prkd_cathedral_ice_escape
    dw #presets_prkd_cathedral_cathedral_entrance
    dw #$0000
    %cm_header("CATHEDRAL")

presets_submenu_prkd_ridley:
    dw #presets_prkd_ridley_cathedral_2
    dw #presets_prkd_ridley_bubble_mountain
    dw #presets_prkd_ridley_bat_cave
    dw #presets_prkd_ridley_bat_cave_revisited
    dw #presets_prkd_ridley_single_chamber
    dw #presets_prkd_ridley_double_chamber
    dw #presets_prkd_ridley_double_chamber_revisited
    dw #presets_prkd_ridley_volcano_room
    dw #presets_prkd_ridley_lavaspark
    dw #presets_prkd_ridley_ln_elevator
    dw #presets_prkd_ridley_fast_pillars
    dw #presets_prkd_ridley_writg
    dw #presets_prkd_ridley_amphitheatre
    dw #presets_prkd_ridley_kihunter_shaft
    dw #presets_prkd_ridley_wasteland
    dw #presets_prkd_ridley_metal_pirates
    dw #presets_prkd_ridley_ridley_farming_room
    dw #presets_prkd_ridley_ridley_2
    dw #$0000
    %cm_header("RIDLEY")

presets_submenu_prkd_kraid:
    dw #presets_prkd_kraid_ridley_farming_room_2
    dw #presets_prkd_kraid_wasteland_2
    dw #presets_prkd_kraid_kihunter_shaft_2
    dw #presets_prkd_kraid_fireflea_room
    dw #presets_prkd_kraid_three_muskateers_room
    dw #presets_prkd_kraid_single_chamber_2
    dw #presets_prkd_kraid_bubble_mountain_2
    dw #presets_prkd_kraid_frog_speedway
    dw #presets_prkd_kraid_warehouse_entrance
    dw #presets_prkd_kraid_zeela_room
    dw #presets_prkd_kraid_baby_kraid
    dw #presets_prkd_kraid_kraid_2
    dw #$0000
    %cm_header("KRAID")

presets_submenu_prkd_draygon:
    dw #presets_prkd_draygon_baby_kraid_2
    dw #presets_prkd_draygon_warehouse_entrance_2
    dw #presets_prkd_draygon_glass_tunnel_2
    dw #presets_prkd_draygon_fish_tank
    dw #presets_prkd_draygon_crab_shaft
    dw #presets_prkd_draygon_botwoon_hallway
    dw #presets_prkd_draygon_botwoon
    dw #presets_prkd_draygon_halfie_climb
    dw #presets_prkd_draygon_draygon_2
    dw #$0000
    %cm_header("DRAYGON")

presets_submenu_prkd_golden_4:
    dw #presets_prkd_golden_4_precious_room
    dw #presets_prkd_golden_4_halfie_climb_2
    dw #presets_prkd_golden_4_botwoon_hallway_2
    dw #presets_prkd_golden_4_crab_shaft_2
    dw #presets_prkd_golden_4_mt_everest
    dw #presets_prkd_golden_4_caterpillar_room_2
    dw #presets_prkd_golden_4_kihunter_room_3
    dw #presets_prkd_golden_4_parlor
    dw #presets_prkd_golden_4_terminator_2
    dw #presets_prkd_golden_4_golden_four
    dw #$0000
    %cm_header("GOLDEN 4")

presets_submenu_prkd_tourian:
    dw #presets_prkd_tourian_enter_tourian
    dw #presets_prkd_tourian_m1
    dw #presets_prkd_tourian_m2
    dw #presets_prkd_tourian_m3
    dw #presets_prkd_tourian_m4
    dw #presets_prkd_tourian_baby_skip
    dw #presets_prkd_tourian_tourian_eye_door
    dw #presets_prkd_tourian_escape_room_3
    dw #presets_prkd_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

; Bombs
presets_prkd_bombs_elevator:
    %cm_preset("Elevator", #preset_prkd_bombs_elevator)

presets_prkd_bombs_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 rooms", #preset_prkd_bombs_ceres_last_3_rooms)

presets_prkd_bombs_ship:
    %cm_preset("Ship", #preset_prkd_bombs_ship)

presets_prkd_bombs_parlor_down:
    %cm_preset("Parlor down", #preset_prkd_bombs_parlor_down)

presets_prkd_bombs_morph:
    %cm_preset("Morph", #preset_prkd_bombs_morph)

presets_prkd_bombs_pit_room:
    %cm_preset("Pit Room", #preset_prkd_bombs_pit_room)

presets_prkd_bombs_climb:
    %cm_preset("Climb", #preset_prkd_bombs_climb)

presets_prkd_bombs_parlor_up:
    %cm_preset("Parlor up", #preset_prkd_bombs_parlor_up)

presets_prkd_bombs_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_prkd_bombs_bomb_torizo)


; Power Bombs
presets_prkd_power_bombs_alcatraz:
    %cm_preset("Alcatraz", #preset_prkd_power_bombs_alcatraz)

presets_prkd_power_bombs_terminator:
    %cm_preset("Terminator", #preset_prkd_power_bombs_terminator)

presets_prkd_power_bombs_pirates_shaft:
    %cm_preset("Pirates Shaft", #preset_prkd_power_bombs_pirates_shaft)

presets_prkd_power_bombs_elevator_2:
    %cm_preset("Elevator", #preset_prkd_power_bombs_elevator_2)

presets_prkd_power_bombs_early_supers:
    %cm_preset("Early Supers", #preset_prkd_power_bombs_early_supers)

presets_prkd_power_bombs_dachora_room:
    %cm_preset("Dachora Room", #preset_prkd_power_bombs_dachora_room)

presets_prkd_power_bombs_big_pink:
    %cm_preset("Big Pink", #preset_prkd_power_bombs_big_pink)

presets_prkd_power_bombs_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_prkd_power_bombs_green_hill_zone)

presets_prkd_power_bombs_red_tower:
    %cm_preset("Red Tower", #preset_prkd_power_bombs_red_tower)

presets_prkd_power_bombs_hellway:
    %cm_preset("Hellway", #preset_prkd_power_bombs_hellway)

presets_prkd_power_bombs_caterpillar_room_down:
    %cm_preset("Caterpillar Room down", #preset_prkd_power_bombs_caterpillar_room_down)


; Gravity Suit
presets_prkd_gravity_suit_caterpillar_room_up:
    %cm_preset("Caterpillar Room up", #preset_prkd_gravity_suit_caterpillar_room_up)

presets_prkd_gravity_suit_kihunter_room:
    %cm_preset("Kihunter Room", #preset_prkd_gravity_suit_kihunter_room)

presets_prkd_gravity_suit_moat:
    %cm_preset("Moat", #preset_prkd_gravity_suit_moat)

presets_prkd_gravity_suit_wrecked_ship_enter:
    %cm_preset("Wrecked Ship Enter", #preset_prkd_gravity_suit_wrecked_ship_enter)

presets_prkd_gravity_suit_phantoon:
    %cm_preset("Phantoon", #preset_prkd_gravity_suit_phantoon)

presets_prkd_gravity_suit_wrecked_ship_climb:
    %cm_preset("Wrecked Ship Climb", #preset_prkd_gravity_suit_wrecked_ship_climb)

presets_prkd_gravity_suit_attic:
    %cm_preset("Attic", #preset_prkd_gravity_suit_attic)

presets_prkd_gravity_suit_bowling_alley_farm:
    %cm_preset("Bowling Alley farm", #preset_prkd_gravity_suit_bowling_alley_farm)

presets_prkd_gravity_suit_grav:
    %cm_preset("Grav", #preset_prkd_gravity_suit_grav)


; Cathedral
presets_prkd_cathedral_kihunter_room_2:
    %cm_preset("Kihunter Room", #preset_prkd_cathedral_kihunter_room_2)

presets_prkd_cathedral_caterpillar_room:
    %cm_preset("Caterpillar Room", #preset_prkd_cathedral_caterpillar_room)

presets_prkd_cathedral_red_tower_2:
    %cm_preset("Red Tower", #preset_prkd_cathedral_red_tower_2)

presets_prkd_cathedral_bat_room:
    %cm_preset("Bat Room", #preset_prkd_cathedral_bat_room)

presets_prkd_cathedral_glass_tunnel:
    %cm_preset("Glass Tunnel", #preset_prkd_cathedral_glass_tunnel)

presets_prkd_cathedral_business_center:
    %cm_preset("Business Center", #preset_prkd_cathedral_business_center)

presets_prkd_cathedral_hi_jump:
    %cm_preset("Hi Jump", #preset_prkd_cathedral_hi_jump)

presets_prkd_cathedral_business_center_climb:
    %cm_preset("Business Center climb", #preset_prkd_cathedral_business_center_climb)

presets_prkd_cathedral_ice_beam_snake_room:
    %cm_preset("Ice Beam Snake Room", #preset_prkd_cathedral_ice_beam_snake_room)

presets_prkd_cathedral_ice_escape:
    %cm_preset("Ice Escape", #preset_prkd_cathedral_ice_escape)

presets_prkd_cathedral_cathedral_entrance:
    %cm_preset("Cathedral Entrance", #preset_prkd_cathedral_cathedral_entrance)


; Ridley
presets_prkd_ridley_cathedral_2:
    %cm_preset("Cathedral", #preset_prkd_ridley_cathedral_2)

presets_prkd_ridley_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_prkd_ridley_bubble_mountain)

presets_prkd_ridley_bat_cave:
    %cm_preset("Bat Cave", #preset_prkd_ridley_bat_cave)

presets_prkd_ridley_bat_cave_revisited:
    %cm_preset("Bat Cave revisited", #preset_prkd_ridley_bat_cave_revisited)

presets_prkd_ridley_single_chamber:
    %cm_preset("Single Chamber", #preset_prkd_ridley_single_chamber)

presets_prkd_ridley_double_chamber:
    %cm_preset("Double Chamber", #preset_prkd_ridley_double_chamber)

presets_prkd_ridley_double_chamber_revisited:
    %cm_preset("Double Chamber revisited", #preset_prkd_ridley_double_chamber_revisited)

presets_prkd_ridley_volcano_room:
    %cm_preset("Volcano Room", #preset_prkd_ridley_volcano_room)

presets_prkd_ridley_lavaspark:
    %cm_preset("Lavaspark", #preset_prkd_ridley_lavaspark)

presets_prkd_ridley_ln_elevator:
    %cm_preset("LN Elevator", #preset_prkd_ridley_ln_elevator)

presets_prkd_ridley_fast_pillars:
    %cm_preset("Fast Pillars", #preset_prkd_ridley_fast_pillars)

presets_prkd_ridley_writg:
    %cm_preset("WRITG", #preset_prkd_ridley_writg)

presets_prkd_ridley_amphitheatre:
    %cm_preset("Amphitheatre", #preset_prkd_ridley_amphitheatre)

presets_prkd_ridley_kihunter_shaft:
    %cm_preset("Kihunter shaft", #preset_prkd_ridley_kihunter_shaft)

presets_prkd_ridley_wasteland:
    %cm_preset("Wasteland", #preset_prkd_ridley_wasteland)

presets_prkd_ridley_metal_pirates:
    %cm_preset("Metal Pirates", #preset_prkd_ridley_metal_pirates)

presets_prkd_ridley_ridley_farming_room:
    %cm_preset("Ridley Farming Room", #preset_prkd_ridley_ridley_farming_room)

presets_prkd_ridley_ridley_2:
    %cm_preset("Ridley", #preset_prkd_ridley_ridley_2)


; Kraid
presets_prkd_kraid_ridley_farming_room_2:
    %cm_preset("Ridley Farming Room", #preset_prkd_kraid_ridley_farming_room_2)

presets_prkd_kraid_wasteland_2:
    %cm_preset("Wasteland", #preset_prkd_kraid_wasteland_2)

presets_prkd_kraid_kihunter_shaft_2:
    %cm_preset("Kihunter shaft", #preset_prkd_kraid_kihunter_shaft_2)

presets_prkd_kraid_fireflea_room:
    %cm_preset("Fireflea Room", #preset_prkd_kraid_fireflea_room)

presets_prkd_kraid_three_muskateers_room:
    %cm_preset("Three Muskateers Room", #preset_prkd_kraid_three_muskateers_room)

presets_prkd_kraid_single_chamber_2:
    %cm_preset("Single Chamber", #preset_prkd_kraid_single_chamber_2)

presets_prkd_kraid_bubble_mountain_2:
    %cm_preset("Bubble Mountain", #preset_prkd_kraid_bubble_mountain_2)

presets_prkd_kraid_frog_speedway:
    %cm_preset("Frog Speedway", #preset_prkd_kraid_frog_speedway)

presets_prkd_kraid_warehouse_entrance:
    %cm_preset("Warehouse Entrance", #preset_prkd_kraid_warehouse_entrance)

presets_prkd_kraid_zeela_room:
    %cm_preset("Zeela Room", #preset_prkd_kraid_zeela_room)

presets_prkd_kraid_baby_kraid:
    %cm_preset("Baby Kraid", #preset_prkd_kraid_baby_kraid)

presets_prkd_kraid_kraid_2:
    %cm_preset("Kraid", #preset_prkd_kraid_kraid_2)


; Draygon
presets_prkd_draygon_baby_kraid_2:
    %cm_preset("Baby Kraid", #preset_prkd_draygon_baby_kraid_2)

presets_prkd_draygon_warehouse_entrance_2:
    %cm_preset("Warehouse Entrance", #preset_prkd_draygon_warehouse_entrance_2)

presets_prkd_draygon_glass_tunnel_2:
    %cm_preset("Glass Tunnel", #preset_prkd_draygon_glass_tunnel_2)

presets_prkd_draygon_fish_tank:
    %cm_preset("Fish Tank", #preset_prkd_draygon_fish_tank)

presets_prkd_draygon_crab_shaft:
    %cm_preset("Crab Shaft", #preset_prkd_draygon_crab_shaft)

presets_prkd_draygon_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_prkd_draygon_botwoon_hallway)

presets_prkd_draygon_botwoon:
    %cm_preset("Botwoon", #preset_prkd_draygon_botwoon)

presets_prkd_draygon_halfie_climb:
    %cm_preset("Halfie Climb", #preset_prkd_draygon_halfie_climb)

presets_prkd_draygon_draygon_2:
    %cm_preset("Draygon", #preset_prkd_draygon_draygon_2)


; Golden 4
presets_prkd_golden_4_precious_room:
    %cm_preset("Precious Room", #preset_prkd_golden_4_precious_room)

presets_prkd_golden_4_halfie_climb_2:
    %cm_preset("Halfie Climb", #preset_prkd_golden_4_halfie_climb_2)

presets_prkd_golden_4_botwoon_hallway_2:
    %cm_preset("Botwoon Hallway", #preset_prkd_golden_4_botwoon_hallway_2)

presets_prkd_golden_4_crab_shaft_2:
    %cm_preset("Crab Shaft", #preset_prkd_golden_4_crab_shaft_2)

presets_prkd_golden_4_mt_everest:
    %cm_preset("Mt Everest", #preset_prkd_golden_4_mt_everest)

presets_prkd_golden_4_caterpillar_room_2:
    %cm_preset("Caterpillar Room", #preset_prkd_golden_4_caterpillar_room_2)

presets_prkd_golden_4_kihunter_room_3:
    %cm_preset("Kihunter Room", #preset_prkd_golden_4_kihunter_room_3)

presets_prkd_golden_4_parlor:
    %cm_preset("Parlor", #preset_prkd_golden_4_parlor)

presets_prkd_golden_4_terminator_2:
    %cm_preset("Terminator", #preset_prkd_golden_4_terminator_2)

presets_prkd_golden_4_golden_four:
    %cm_preset("Golden Four", #preset_prkd_golden_4_golden_four)


; Tourian
presets_prkd_tourian_enter_tourian:
    %cm_preset("Enter Tourian", #preset_prkd_tourian_enter_tourian)

presets_prkd_tourian_m1:
    %cm_preset("M1", #preset_prkd_tourian_m1)

presets_prkd_tourian_m2:
    %cm_preset("M2", #preset_prkd_tourian_m2)

presets_prkd_tourian_m3:
    %cm_preset("M3", #preset_prkd_tourian_m3)

presets_prkd_tourian_m4:
    %cm_preset("M4", #preset_prkd_tourian_m4)

presets_prkd_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_prkd_tourian_baby_skip)

presets_prkd_tourian_tourian_eye_door:
    %cm_preset("Tourian Eye Door", #preset_prkd_tourian_tourian_eye_door)

presets_prkd_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_prkd_tourian_escape_room_3)

presets_prkd_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_prkd_tourian_escape_parlor)


