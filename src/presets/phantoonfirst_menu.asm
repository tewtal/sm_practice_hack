PresetsMenuPhantoonFirst:
    dw #presets_goto_phantoonfirst_crateria
    dw #presets_goto_phantoonfirst_brinstar
    dw #presets_goto_phantoonfirst_wrecked_ship
    dw #presets_goto_phantoonfirst_red_brinstar_revisit
    dw #presets_dynamic_phantoonfirst_un_kraid
    dw #presets_dynamic_phantoonfirst_ln_un
    dw #presets_dynamic_phantoonfirst_kraid_ln
    dw #presets_goto_phantoonfirst_maridia
    dw #presets_goto_phantoonfirst_backtracking
    dw #presets_goto_phantoonfirst_tourian
    dw #$FFFF
    dw #presets_goto_phantoonfirst_safeties
    dw #$0000
    %cm_header("PRESETS FOR PHANTOON FIRST")

presets_dynamic_phantoonfirst_un_kraid:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_category_preset_pkrd
    dw #presets_goto_phantoonfirst_upper_norfair
    dw #presets_goto_phantoonfirst_kraid_before_ridley

presets_dynamic_phantoonfirst_ln_un:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_category_preset_pkrd
    dw #presets_goto_phantoonfirst_lower_norfair
    dw #presets_goto_phantoonfirst_upper_norfair

presets_dynamic_phantoonfirst_kraid_ln:
    dw !ACTION_DYNAMIC
    dl #!ram_cm_category_preset_pkrd
    dw #presets_goto_phantoonfirst_kraid
    dw #presets_goto_phantoonfirst_lower_norfair

presets_goto_phantoonfirst_crateria:
    %cm_submenu("Crateria", #presets_submenu_phantoonfirst_crateria)

presets_goto_phantoonfirst_brinstar:
    %cm_submenu("Brinstar", #presets_submenu_phantoonfirst_brinstar)

presets_goto_phantoonfirst_wrecked_ship:
    %cm_submenu("Wrecked Ship", #presets_submenu_phantoonfirst_wrecked_ship)

presets_goto_phantoonfirst_red_brinstar_revisit:
    %cm_jsl("Red Brinstar Revisit", #.routine, #presets_submenu_phantoonfirst_red_brinstar_revisit)
  .routine
    LDA !sram_safeties_enabled_phantoonfirst : BIT #$0008 : BEQ .done
    LDY #presets_submenu_phantoonfirst_red_brinstar_revisit_pkrd
  .done
    JML action_submenu

presets_goto_phantoonfirst_kraid_before_ridley:
    %cm_jsl("Kraid Before Ridley", #.routine, #presets_submenu_phantoonfirst_kraid_before_ridley)
  .routine
    LDA !sram_safeties_enabled_phantoonfirst : BIT #$0010 : BEQ .done
    LDY #presets_submenu_phantoonfirst_kraid_before_ridley_etank
  .done
    JML action_submenu

presets_goto_phantoonfirst_upper_norfair:
    %cm_submenu("Upper Norfair", #presets_submenu_phantoonfirst_upper_norfair)

presets_goto_phantoonfirst_lower_norfair:
    %cm_submenu("Lower Norfair", #presets_submenu_phantoonfirst_lower_norfair)

presets_goto_phantoonfirst_kraid:
    %cm_jsl("Kraid", #.routine, #presets_submenu_phantoonfirst_kraid)
  .routine
    LDA !sram_safeties_enabled_phantoonfirst : BIT #$1000 : BEQ .done
    LDY #presets_submenu_phantoonfirst_kraid_etank
  .done
    JML action_submenu

presets_goto_phantoonfirst_maridia:
    %cm_submenu("Maridia", #presets_submenu_phantoonfirst_maridia)

presets_goto_phantoonfirst_backtracking:
    %cm_submenu("Backtracking", #presets_submenu_phantoonfirst_backtracking)

presets_goto_phantoonfirst_tourian:
    %cm_submenu("Tourian", #presets_submenu_phantoonfirst_tourian)

presets_goto_phantoonfirst_safeties:
    %cm_submenu("Safeties and Strategies", #presets_submenu_phantoonfirst_safeties)

presets_submenu_phantoonfirst_crateria:
    dw #presets_phantoonfirst_crateria_ceres_elevator
    dw #presets_phantoonfirst_crateria_ceres_escape
    dw #presets_phantoonfirst_crateria_ceres_last_3_rooms
    dw #presets_phantoonfirst_crateria_ship
    dw #presets_phantoonfirst_crateria_parlor
    dw #presets_phantoonfirst_crateria_parlor_downback
    dw #presets_phantoonfirst_crateria_climb_down
    dw #presets_phantoonfirst_crateria_pit_room
    dw #presets_phantoonfirst_crateria_morph
    dw #presets_phantoonfirst_crateria_construction_zone_down
    dw #presets_phantoonfirst_crateria_construction_zone_up
    dw #presets_phantoonfirst_crateria_pit_room_revisit
    dw #presets_phantoonfirst_crateria_climb_up
    dw #presets_phantoonfirst_crateria_parlor_revisit
    dw #presets_phantoonfirst_crateria_flyway
    dw #presets_phantoonfirst_crateria_bomb_torizo
    dw #presets_phantoonfirst_crateria_alcatraz
    dw #presets_phantoonfirst_crateria_terminator
    dw #presets_phantoonfirst_crateria_green_pirate_shaft
    dw #$0000
    %cm_header("CRATERIA")

presets_submenu_phantoonfirst_brinstar:
    dw #presets_phantoonfirst_brinstar_green_brinstar_elevator
    dw #presets_phantoonfirst_brinstar_early_supers
    dw #presets_phantoonfirst_brinstar_dachora_room
    dw #presets_phantoonfirst_brinstar_big_pink
    dw #presets_phantoonfirst_brinstar_green_hill_zone
    dw #presets_phantoonfirst_brinstar_noob_bridge
    dw #presets_phantoonfirst_brinstar_red_tower
    dw #presets_phantoonfirst_brinstar_hellway
    dw #presets_phantoonfirst_brinstar_caterpillars_down
    dw #presets_phantoonfirst_brinstar_alpha_power_bombs
    dw #presets_phantoonfirst_brinstar_caterpillars_up
    dw #presets_phantoonfirst_brinstar_crateria_kihunters
    dw #presets_phantoonfirst_brinstar_continuous_wall_jump
    dw #presets_phantoonfirst_brinstar_horizontal_bomb_jump
    dw #presets_phantoonfirst_brinstar_ocean
    dw #$0000
    %cm_header("BRINSTAR")

presets_submenu_phantoonfirst_wrecked_ship:
    dw #presets_phantoonfirst_wrecked_ship_shaft_down
    dw #presets_phantoonfirst_wrecked_ship_basement
    dw #presets_phantoonfirst_wrecked_ship_phantoon
    dw #presets_phantoonfirst_wrecked_ship_leaving_phantoon
    dw #presets_phantoonfirst_wrecked_ship_shaft_to_supers
    dw #presets_phantoonfirst_wrecked_ship_shaft_up
    dw #presets_phantoonfirst_wrecked_ship_attic
    dw #presets_phantoonfirst_wrecked_ship_upper_west_ocean
    dw #presets_phantoonfirst_wrecked_ship_pancakes_and_wavers
    dw #presets_phantoonfirst_wrecked_ship_bowling_alley
    dw #presets_phantoonfirst_wrecked_ship_leaving_gravity
    dw #presets_phantoonfirst_wrecked_ship_reverse_moat
    dw #presets_phantoonfirst_wrecked_ship_crateria_kihunters_return
    dw #$0000
    %cm_header("WRECKED SHIP")

presets_submenu_phantoonfirst_red_brinstar_revisit:
    dw #presets_phantoonfirst_red_brinstar_revisit_red_brinstar_elevator
    dw #presets_phantoonfirst_red_brinstar_revisit_caterpillars_revisit
    dw #presets_phantoonfirst_red_brinstar_revisit_hellway_revisit
    dw #presets_phantoonfirst_red_brinstar_revisit_red_tower_down
    dw #presets_phantoonfirst_red_brinstar_revisit_skree_boost
    dw #presets_phantoonfirst_red_brinstar_revisit_below_spazer
    dw #presets_phantoonfirst_red_brinstar_revisit_leaving_spazer
    dw #presets_phantoonfirst_red_brinstar_revisit_breaking_the_tube
    dw #presets_phantoonfirst_red_brinstar_revisit_business_center_preelev
    dw #$0000
    %cm_header("RED BRINSTAR REVISIT")

presets_submenu_phantoonfirst_red_brinstar_revisit_pkrd:
    dw #presets_phantoonfirst_red_brinstar_revisit_red_brinstar_elevator
    dw #presets_phantoonfirst_red_brinstar_revisit_caterpillars_revisit
    dw #presets_phantoonfirst_red_brinstar_revisit_hellway_revisit
    dw #presets_phantoonfirst_red_brinstar_revisit_red_tower_down
    dw #presets_phantoonfirst_red_brinstar_revisit_skree_boost
    dw #presets_phantoonfirst_red_brinstar_revisit_below_spazer
    dw #presets_phantoonfirst_red_brinstar_revisit_leaving_spazer
    dw #presets_phantoonfirst_red_brinstar_revisit_breaking_the_tube
    dw #$0000
    %cm_header("RED BRINSTAR REVISIT")

presets_submenu_phantoonfirst_kraid_before_ridley:
    dw #presets_phantoonfirst_kraid_before_ridley_entering_kraids_lair
    dw #presets_phantoonfirst_kraid_before_ridley_kraid_kihunters
    dw #presets_phantoonfirst_kraid_before_ridley_minikraid
    dw #presets_phantoonfirst_kraid_before_ridley_kraid
    dw #presets_phantoonfirst_kraid_before_ridley_leaving_varia
    dw #presets_phantoonfirst_kraid_before_ridley_minikraid_revisit
    dw #presets_phantoonfirst_kraid_before_ridley_kraid_kihunters_revisit
    dw #presets_phantoonfirst_kraid_before_ridley_leaving_kraids_lair
    dw #presets_phantoonfirst_kraid_before_ridley_business_center_preelev
    dw #$0000
    %cm_header("KRAID BEFORE RIDLEY")

presets_submenu_phantoonfirst_kraid_before_ridley_etank:
    dw #presets_phantoonfirst_kraid_before_ridley_entering_kraids_lair
    dw #presets_phantoonfirst_kraid_before_ridley_kraid_kihunters
    dw #presets_phantoonfirst_kraid_before_ridley_minikraid
    dw #presets_phantoonfirst_kraid_before_ridley_kraid
    dw #presets_phantoonfirst_kraid_before_ridley_leaving_varia
    dw #presets_phantoonfirst_kraid_before_ridley_minikraid_revisit
    dw #presets_phantoonfirst_kraid_before_ridley_kraid_kihunters_revisit
    dw #presets_phantoonfirst_kraid_before_ridley_kraid_etank
    dw #presets_phantoonfirst_kraid_before_ridley_leaving_kraid_etank
    dw #presets_phantoonfirst_kraid_before_ridley_leaving_kraids_lair
    dw #presets_phantoonfirst_kraid_before_ridley_business_center_preelev
    dw #$0000
    %cm_header("KRAID BEFORE RIDLEY")

presets_submenu_phantoonfirst_upper_norfair:
    dw #presets_phantoonfirst_upper_norfair_business_center_postelev
    dw #presets_phantoonfirst_upper_norfair_hijump_etank
    dw #presets_phantoonfirst_upper_norfair_leaving_hijump
    dw #presets_phantoonfirst_upper_norfair_business_center_revisit
    dw #presets_phantoonfirst_upper_norfair_ice_beam_gates
    dw #presets_phantoonfirst_upper_norfair_ice_maze_up
    dw #presets_phantoonfirst_upper_norfair_ice_maze_down
    dw #presets_phantoonfirst_upper_norfair_ice_escape
    dw #presets_phantoonfirst_upper_norfair_precathedral
    dw #presets_phantoonfirst_upper_norfair_cathedral
    dw #presets_phantoonfirst_upper_norfair_rising_tide
    dw #presets_phantoonfirst_upper_norfair_bubble_mountain
    dw #presets_phantoonfirst_upper_norfair_bat_cave
    dw #presets_phantoonfirst_upper_norfair_leaving_speedbooster
    dw #presets_phantoonfirst_upper_norfair_single_chamber
    dw #presets_phantoonfirst_upper_norfair_double_chamber
    dw #presets_phantoonfirst_upper_norfair_double_chamber_revisit
    dw #presets_phantoonfirst_upper_norfair_single_chamber_revisit
    dw #presets_phantoonfirst_upper_norfair_volcano_room
    dw #presets_phantoonfirst_upper_norfair_kronic_boost
    dw #presets_phantoonfirst_upper_norfair_lava_spark
    dw #$0000
    %cm_header("UPPER NORFAIR")

presets_submenu_phantoonfirst_lower_norfair:
    dw #presets_phantoonfirst_lower_norfair_ln_main_hall
    dw #presets_phantoonfirst_lower_norfair_prepillars
    dw #presets_phantoonfirst_lower_norfair_worst_room_in_the_game
    dw #presets_phantoonfirst_lower_norfair_amphitheatre
    dw #presets_phantoonfirst_lower_norfair_kihunter_stairs_down
    dw #presets_phantoonfirst_lower_norfair_wasteland
    dw #presets_phantoonfirst_lower_norfair_metal_ninja_pirates
    dw #presets_phantoonfirst_lower_norfair_plowerhouse
    dw #presets_phantoonfirst_lower_norfair_ridley_farming_room
    dw #presets_phantoonfirst_lower_norfair_ridley
    dw #presets_phantoonfirst_lower_norfair_leaving_ridley
    dw #presets_phantoonfirst_lower_norfair_reverse_plowerhouse
    dw #presets_phantoonfirst_lower_norfair_wasteland_revisit
    dw #presets_phantoonfirst_lower_norfair_kihunter_stairs_up
    dw #presets_phantoonfirst_lower_norfair_fireflea_room
    dw #presets_phantoonfirst_lower_norfair_springball_maze
    dw #presets_phantoonfirst_lower_norfair_three_musketeers
    dw #presets_phantoonfirst_lower_norfair_single_chamber_final
    dw #presets_phantoonfirst_lower_norfair_bubble_mountain_final
    dw #presets_phantoonfirst_lower_norfair_frog_speedway
    dw #presets_phantoonfirst_lower_norfair_business_center_final
    dw #$0000
    %cm_header("LOWER NORFAIR")

presets_submenu_phantoonfirst_kraid:
    dw #presets_phantoonfirst_kraid_entering_kraids_lair
    dw #presets_phantoonfirst_kraid_kraid_kihunters
    dw #presets_phantoonfirst_kraid_minikraid
    dw #presets_phantoonfirst_kraid_kraid
    dw #presets_phantoonfirst_kraid_leaving_varia
    dw #presets_phantoonfirst_kraid_minikraid_revisit
    dw #presets_phantoonfirst_kraid_kraid_kihunters_revisit
    dw #presets_phantoonfirst_kraid_leaving_kraids_lair
    dw #$0000
    %cm_header("KRAID")

presets_submenu_phantoonfirst_kraid_etank:
    dw #presets_phantoonfirst_kraid_entering_kraids_lair
    dw #presets_phantoonfirst_kraid_kraid_kihunters
    dw #presets_phantoonfirst_kraid_minikraid
    dw #presets_phantoonfirst_kraid_kraid
    dw #presets_phantoonfirst_kraid_leaving_varia
    dw #presets_phantoonfirst_kraid_minikraid_revisit
    dw #presets_phantoonfirst_kraid_kraid_kihunters_revisit
    dw #presets_phantoonfirst_kraid_kraid_etank
    dw #presets_phantoonfirst_kraid_leaving_kraid_etank
    dw #presets_phantoonfirst_kraid_leaving_kraids_lair
    dw #$0000
    %cm_header("KRAID")

presets_submenu_phantoonfirst_maridia:
    dw #presets_phantoonfirst_maridia_maridia_tube_revisit
    dw #presets_phantoonfirst_maridia_fish_tank
    dw #presets_phantoonfirst_maridia_mt_everest
    dw #presets_phantoonfirst_maridia_crab_shaft
    dw #presets_phantoonfirst_maridia_aqueduct
    dw #presets_phantoonfirst_maridia_botwoon_hallway
    dw #presets_phantoonfirst_maridia_botwoon
    dw #presets_phantoonfirst_maridia_botwoon_etank
    dw #presets_phantoonfirst_maridia_halfie_setup
    dw #presets_phantoonfirst_maridia_draygon
    dw #presets_phantoonfirst_maridia_spikesuit_reverse_halfie
    dw #presets_phantoonfirst_maridia_reverse_colosseum
    dw #presets_phantoonfirst_maridia_reverse_halfie_climb
    dw #presets_phantoonfirst_maridia_reverse_botwoon_etank
    dw #presets_phantoonfirst_maridia_reverse_botwoon_hallway
    dw #presets_phantoonfirst_maridia_reverse_crab_shaft
    dw #presets_phantoonfirst_maridia_mt_everest_revisit
    dw #$0000
    %cm_header("MARIDIA")

presets_submenu_phantoonfirst_backtracking:
    dw #presets_phantoonfirst_backtracking_red_brinstar_green_gate
    dw #presets_phantoonfirst_backtracking_crateria_kihunters_final
    dw #presets_phantoonfirst_backtracking_parlor_return
    dw #presets_phantoonfirst_backtracking_terminator_revisit
    dw #presets_phantoonfirst_backtracking_green_pirate_shaft_revisit
    dw #presets_phantoonfirst_backtracking_g4_hallway
    dw #presets_phantoonfirst_backtracking_g4_elevator
    dw #$0000
    %cm_header("BACKTRACKING")

presets_submenu_phantoonfirst_tourian:
    dw #presets_phantoonfirst_tourian_tourian_elevator_room
    dw #presets_phantoonfirst_tourian_metroids_1
    dw #presets_phantoonfirst_tourian_metroids_2
    dw #presets_phantoonfirst_tourian_metroids_3
    dw #presets_phantoonfirst_tourian_metroids_4
    dw #presets_phantoonfirst_tourian_giant_hoppers
    dw #presets_phantoonfirst_tourian_baby_skip
    dw #presets_phantoonfirst_tourian_gadora_room
    dw #presets_phantoonfirst_tourian_rinka_shaft
    dw #presets_phantoonfirst_tourian_zeb_skip
    dw #presets_phantoonfirst_tourian_mother_brain_2
    dw #presets_phantoonfirst_tourian_mother_brain_3
    dw #presets_phantoonfirst_tourian_zebes_escape
    dw #presets_phantoonfirst_tourian_escape_room_3
    dw #presets_phantoonfirst_tourian_escape_room_4
    dw #presets_phantoonfirst_tourian_escape_climb
    dw #presets_phantoonfirst_tourian_escape_parlor
    dw #$0000
    %cm_header("TOURIAN")

presets_submenu_phantoonfirst_safeties:
    dw #presets_phantoonfirst_safeties_brinstar_reserve
    dw #presets_phantoonfirst_safeties_early_supers_missiles
    dw #presets_phantoonfirst_safeties_right_side_supers
    dw #presets_phantoonfirst_safeties_pkrd
    dw #presets_phantoonfirst_safeties_hjb_missiles
    dw #presets_phantoonfirst_safeties_wave_missiles
    dw #presets_phantoonfirst_safeties_varia_gravity_jump
    dw #presets_phantoonfirst_safeties_ridley_beam_fight
    dw #presets_phantoonfirst_safeties_slow_pillars
    dw #presets_phantoonfirst_safeties_fireflea_etank
    dw #presets_phantoonfirst_safeties_ridley_etank
    dw #presets_phantoonfirst_safeties_kraid_etank
    dw #presets_phantoonfirst_safeties_mt_everest_spark_skip
    dw #presets_phantoonfirst_safeties_botwoon_etank
    dw #presets_phantoonfirst_safeties_halfie_savings
    dw #presets_phantoonfirst_safeties_space_jump
    dw #presets_phantoonfirst_safeties_reverse_spark_skip
    dw #$0000
    %cm_header("SAFETIES AND STRATEGIES")

presets_phantoonfirst_safeties_brinstar_reserve:
    %cm_toggle_bit("Brinstar Reserve", !sram_safeties_enabled_phantoonfirst, #$0001, #0)

presets_phantoonfirst_safeties_early_supers_missiles:
    %cm_toggle_bit("Early Supers Missiles", !sram_safeties_enabled_phantoonfirst, #$0002, #0)

presets_phantoonfirst_safeties_right_side_supers:
    %cm_toggle_bit("Right Side Supers", !sram_safeties_enabled_phantoonfirst, #$0004, #0)

presets_phantoonfirst_safeties_pkrd:
    %cm_toggle_bit("PKRD", !sram_safeties_enabled_phantoonfirst, #$0008, .routine)
  .routine
    ; PKRD required by Varia + Gravity Jump
    BIT #$0008 : BNE .update
    AND #$FF7F : STA !sram_safeties_enabled_phantoonfirst
  .update
    AND #$0008 : LSR #3 : STA !ram_cm_category_preset_pkrd
    LDA !sram_safeties_enabled_phantoonfirst
    JMP presets_phantoonfirst_safeties_kraid_etank_routine

presets_phantoonfirst_safeties_hjb_missiles:
    %cm_toggle_bit("HJB Missiles", !sram_safeties_enabled_phantoonfirst, #$0020, #0)

presets_phantoonfirst_safeties_wave_missiles:
    %cm_toggle_bit("Wave Missiles", !sram_safeties_enabled_phantoonfirst, #$0040, #0)

presets_phantoonfirst_safeties_varia_gravity_jump:
    %cm_toggle_bit("Varia + Gravity Jump", !sram_safeties_enabled_phantoonfirst, #$0080, .routine)
  .routine
    ; Varia + Gravity Jump requires PKRD
    BIT #$0080 : BEQ .end
    ORA #$0008 : STA !sram_safeties_enabled_phantoonfirst
    JMP presets_phantoonfirst_safeties_pkrd_update
  .end
    RTL

presets_phantoonfirst_safeties_ridley_beam_fight:
    %cm_toggle_bit_inverted("Ridley Beam Fight", !sram_safeties_enabled_phantoonfirst, #$0100, #0)

presets_phantoonfirst_safeties_slow_pillars:
    %cm_toggle_bit("Slow Pillars", !sram_safeties_enabled_phantoonfirst, #$0200, #0)

presets_phantoonfirst_safeties_fireflea_etank:
    %cm_toggle_bit("Fireflea E-Tank", !sram_safeties_enabled_phantoonfirst, #$0400, .routine)
  .routine
    ; At least one E-Tank is required (enable Botwoon E-Tank and disable Mt. Everest Spark Skip if necessary)
    BIT #$5C10 : BNE .end
    ORA #$4000 : AND #$DFFF : STA !sram_safeties_enabled_phantoonfirst
  .end
    RTL

presets_phantoonfirst_safeties_ridley_etank:
    %cm_toggle_bit("Ridley E-Tank", !sram_safeties_enabled_phantoonfirst, #$0800, presets_phantoonfirst_safeties_fireflea_etank_routine)

presets_phantoonfirst_safeties_kraid_etank:
    %cm_toggle_bit("Kraid E-Tank", !sram_safeties_enabled_phantoonfirst, #$1010, .routine)
  .routine
    ; Enable either regular or PKRD E-Tank
    BIT #$1010 : BEQ presets_phantoonfirst_safeties_fireflea_etank_routine
    BIT #$0008 : BNE .pkrd
    ; Regular Kraid E-Tank also prevents Mt. Everest Spark Skip
    AND #$DFEF : ORA #$1000 : STA !sram_safeties_enabled_phantoonfirst
    RTL
  .pkrd
    AND #$EFFF : ORA #$0010 : STA !sram_safeties_enabled_phantoonfirst
  .end
    RTL

presets_phantoonfirst_safeties_mt_everest_spark_skip:
    %cm_toggle_bit("Mt. Everest Spark Skip", !sram_safeties_enabled_phantoonfirst, #$2000, .routine)
  .routine
    ; Mt. Everest Spark Skip requires no E-Tank collected after Ridley E-Tank
    BIT #$2000 : BEQ .end
    AND #$AFFF : STA !sram_safeties_enabled_phantoonfirst
    JMP presets_phantoonfirst_safeties_botwoon_etank_off
  .end
    RTL

presets_phantoonfirst_safeties_botwoon_etank:
    %cm_toggle_bit("Botwoon E-Tank", !sram_safeties_enabled_phantoonfirst, #$4000, .routine)
  .routine
    ; Botwoon E-Tank prevents Mt. Everest Spark Skip
    BIT #$4000 : BEQ .off
    AND #$DFFF : STA !sram_safeties_enabled_phantoonfirst
    RTL
  .off
    ; At least one E-Tank is required (enable Ridley E-Tank if necessary)
    BIT #$5C10 : BNE .end
    ORA #$0800 : STA !sram_safeties_enabled_phantoonfirst
  .end
    RTL

presets_phantoonfirst_safeties_halfie_savings:
    %cm_toggle_bit("Halfie Savings", !sram_safeties_enabled_phantoonfirst, #$8000, #0)

presets_phantoonfirst_safeties_space_jump:
    %cm_toggle_bit("Space Jump", !sram_safeties_enabled_phantoonfirst+$2, #$0001, .routine)
  .routine
    ; Space Jump requires Reverse Spark Skip
    BIT #$0001 : BEQ .end
    ORA #$0002 : STA !sram_safeties_enabled_phantoonfirst+$2
  .end
    RTL

presets_phantoonfirst_safeties_reverse_spark_skip:
    %cm_toggle_bit("Reverse Spark Skip", !sram_safeties_enabled_phantoonfirst+$2, #$0002, .routine)
  .routine
    ; Reverse Spark Skip required by Space Jump
    BIT #$0002 : BNE .end
    AND #$FFFE : STA !sram_safeties_enabled_phantoonfirst+$2
  .end
    RTL


; Crateria
presets_phantoonfirst_crateria_ceres_elevator:
    %cm_preset("Ceres Elevator", #preset_names_ceres_elevator, #preset_phantoonfirst_crateria_ceres_elevator)

presets_phantoonfirst_crateria_ceres_escape:
    %cm_preset("Ceres Escape", #preset_names_ceres_escape, #preset_phantoonfirst_crateria_ceres_escape)

presets_phantoonfirst_crateria_ceres_last_3_rooms:
    %cm_preset("Ceres Last 3 Rooms", #preset_names_ceres_last_3_rooms, #preset_phantoonfirst_crateria_ceres_last_3_rooms)

presets_phantoonfirst_crateria_ship:
    %cm_preset("Ship", #preset_names_ship, #preset_phantoonfirst_crateria_ship)

presets_phantoonfirst_crateria_parlor:
    %cm_preset("Parlor", #preset_names_parlor, #preset_phantoonfirst_crateria_parlor)

presets_phantoonfirst_crateria_parlor_downback:
    %cm_preset("Parlor Downback", #preset_names_parlor_downback, #preset_phantoonfirst_crateria_parlor_downback)

presets_phantoonfirst_crateria_climb_down:
    %cm_preset("Climb Down", #preset_names_climb_down, #preset_phantoonfirst_crateria_climb_down)

presets_phantoonfirst_crateria_pit_room:
    %cm_preset("Pit Room", #preset_names_pit_room, #preset_phantoonfirst_crateria_pit_room)

presets_phantoonfirst_crateria_morph:
    %cm_preset("Morph", #preset_names_morph, #preset_phantoonfirst_crateria_morph)

presets_phantoonfirst_crateria_construction_zone_down:
    %cm_preset("Construction Zone Down", #preset_names_construction_zone_down, #preset_phantoonfirst_crateria_construction_zone_down)

presets_phantoonfirst_crateria_construction_zone_up:
    %cm_preset("Construction Zone Up", #preset_names_construction_zone_up, #preset_phantoonfirst_crateria_construction_zone_up)

presets_phantoonfirst_crateria_pit_room_revisit:
    %cm_preset("Pit Room Revisit", #preset_names_pit_room_revisit, #preset_phantoonfirst_crateria_pit_room_revisit)

presets_phantoonfirst_crateria_climb_up:
    %cm_preset("Climb Up", #preset_names_climb_up, #preset_phantoonfirst_crateria_climb_up)

presets_phantoonfirst_crateria_parlor_revisit:
    %cm_preset("Parlor Revisit", #preset_names_parlor_revisit, #preset_phantoonfirst_crateria_parlor_revisit)

presets_phantoonfirst_crateria_flyway:
    %cm_preset("Flyway", #preset_names_flyway, #preset_phantoonfirst_crateria_flyway)

presets_phantoonfirst_crateria_bomb_torizo:
    %cm_preset("Bomb Torizo", #preset_names_bomb_torizo, #preset_phantoonfirst_crateria_bomb_torizo)

presets_phantoonfirst_crateria_alcatraz:
    %cm_preset("Alcatraz", #preset_names_alcatraz, #preset_phantoonfirst_crateria_alcatraz)

presets_phantoonfirst_crateria_terminator:
    %cm_preset("Terminator", #preset_names_terminator, #preset_phantoonfirst_crateria_terminator)

presets_phantoonfirst_crateria_green_pirate_shaft:
    %cm_preset("Green Pirate Shaft", #preset_names_green_pirate_shaft, #preset_phantoonfirst_crateria_green_pirate_shaft)


; Brinstar
presets_phantoonfirst_brinstar_green_brinstar_elevator:
    %cm_preset("Green Brinstar Elevator", #preset_names_green_brinstar_elevator, #preset_phantoonfirst_brinstar_green_brinstar_elevator)

presets_phantoonfirst_brinstar_early_supers:
    %cm_preset("Early Supers", #preset_names_early_supers, #preset_phantoonfirst_brinstar_early_supers)

presets_phantoonfirst_brinstar_dachora_room:
    %cm_preset("Dachora Room", #preset_names_dachora_room, #preset_phantoonfirst_brinstar_dachora_room)

presets_phantoonfirst_brinstar_big_pink:
    %cm_preset("Big Pink", #preset_names_big_pink, #preset_phantoonfirst_brinstar_big_pink)

presets_phantoonfirst_brinstar_green_hill_zone:
    %cm_preset("Green Hill Zone", #preset_names_green_hill_zone, #preset_phantoonfirst_brinstar_green_hill_zone)

presets_phantoonfirst_brinstar_noob_bridge:
    %cm_preset("Noob Bridge", #preset_names_noob_bridge, #preset_phantoonfirst_brinstar_noob_bridge)

presets_phantoonfirst_brinstar_red_tower:
    %cm_preset("Red Tower", #preset_names_red_tower, #preset_phantoonfirst_brinstar_red_tower)

presets_phantoonfirst_brinstar_hellway:
    %cm_preset("Hellway", #preset_names_hellway, #preset_phantoonfirst_brinstar_hellway)

presets_phantoonfirst_brinstar_caterpillars_down:
    %cm_preset("Caterpillars Down", #preset_names_caterpillars_down, #preset_phantoonfirst_brinstar_caterpillars_down)

presets_phantoonfirst_brinstar_alpha_power_bombs:
    %cm_preset("Alpha Power Bombs", #preset_names_alpha_power_bombs, #preset_phantoonfirst_brinstar_alpha_power_bombs)

presets_phantoonfirst_brinstar_caterpillars_up:
    %cm_preset("Caterpillars Up", #preset_names_caterpillars_up, #preset_phantoonfirst_brinstar_caterpillars_up)

presets_phantoonfirst_brinstar_crateria_kihunters:
    %cm_preset("Crateria Kihunters", #preset_names_crateria_kihunters, #preset_phantoonfirst_brinstar_crateria_kihunters)

presets_phantoonfirst_brinstar_continuous_wall_jump:
    %cm_preset("Continuous Wall Jump", #preset_names_continuous_wall_jump, #preset_phantoonfirst_brinstar_continuous_wall_jump)

presets_phantoonfirst_brinstar_horizontal_bomb_jump:
    %cm_preset("Horizontal Bomb Jump", #preset_names_horizontal_bomb_jump, #preset_phantoonfirst_brinstar_horizontal_bomb_jump)

presets_phantoonfirst_brinstar_ocean:
    %cm_preset("Ocean", #preset_names_ocean, #preset_phantoonfirst_brinstar_ocean)


; Wrecked Ship
presets_phantoonfirst_wrecked_ship_shaft_down:
    %cm_preset("Shaft Down", #preset_names_shaft_down, #preset_phantoonfirst_wrecked_ship_shaft_down)

presets_phantoonfirst_wrecked_ship_basement:
    %cm_preset("Basement", #preset_names_basement, #preset_phantoonfirst_wrecked_ship_basement)

presets_phantoonfirst_wrecked_ship_phantoon:
    %cm_preset("Phantoon", #preset_names_phantoon, #preset_phantoonfirst_wrecked_ship_phantoon)

presets_phantoonfirst_wrecked_ship_leaving_phantoon:
    %cm_preset("Leaving Phantoon", #preset_names_leaving_phantoon, #preset_phantoonfirst_wrecked_ship_leaving_phantoon)

presets_phantoonfirst_wrecked_ship_shaft_to_supers:
    %cm_preset("Shaft To Supers", #preset_names_shaft_to_supers, #preset_phantoonfirst_wrecked_ship_shaft_to_supers)

presets_phantoonfirst_wrecked_ship_shaft_up:
    %cm_preset("Shaft Up", #preset_names_shaft_up, #preset_phantoonfirst_wrecked_ship_shaft_up)

presets_phantoonfirst_wrecked_ship_attic:
    %cm_preset("Attic", #preset_names_attic, #preset_phantoonfirst_wrecked_ship_attic)

presets_phantoonfirst_wrecked_ship_upper_west_ocean:
    %cm_preset("Upper West Ocean", #preset_names_upper_west_ocean, #preset_phantoonfirst_wrecked_ship_upper_west_ocean)

presets_phantoonfirst_wrecked_ship_pancakes_and_wavers:
    %cm_preset("Pancakes and Wavers", #preset_names_pancakes_and_wavers, #preset_phantoonfirst_wrecked_ship_pancakes_and_wavers)

presets_phantoonfirst_wrecked_ship_bowling_alley:
    %cm_preset("Bowling Alley", #preset_names_bowling_alley, #preset_phantoonfirst_wrecked_ship_bowling_alley)

presets_phantoonfirst_wrecked_ship_leaving_gravity:
    %cm_preset("Leaving Gravity", #preset_names_leaving_gravity, #preset_phantoonfirst_wrecked_ship_leaving_gravity)

presets_phantoonfirst_wrecked_ship_reverse_moat:
    %cm_preset("Reverse Moat", #preset_names_reverse_moat, #preset_phantoonfirst_wrecked_ship_reverse_moat)

presets_phantoonfirst_wrecked_ship_crateria_kihunters_return:
    %cm_preset("Crateria Kihunters Return", #preset_names_crateria_kihunters_return, #preset_phantoonfirst_wrecked_ship_crateria_kihunters_return)


; Red Brinstar Revisit
presets_phantoonfirst_red_brinstar_revisit_red_brinstar_elevator:
    %cm_preset("Red Brinstar Elevator", #preset_names_red_brinstar_elevator, #preset_phantoonfirst_red_brinstar_revisit_red_brinstar_elevator)

presets_phantoonfirst_red_brinstar_revisit_caterpillars_revisit:
    %cm_preset("Caterpillars Revisit", #preset_names_caterpillars_revisit, #preset_phantoonfirst_red_brinstar_revisit_caterpillars_revisit)

presets_phantoonfirst_red_brinstar_revisit_hellway_revisit:
    %cm_preset("Hellway Revisit", #preset_names_hellway_revisit, #preset_phantoonfirst_red_brinstar_revisit_hellway_revisit)

presets_phantoonfirst_red_brinstar_revisit_red_tower_down:
    %cm_preset("Red Tower Down", #preset_names_red_tower_down, #preset_phantoonfirst_red_brinstar_revisit_red_tower_down)

presets_phantoonfirst_red_brinstar_revisit_skree_boost:
    %cm_preset("Skree Boost", #preset_names_skree_boost, #preset_phantoonfirst_red_brinstar_revisit_skree_boost)

presets_phantoonfirst_red_brinstar_revisit_below_spazer:
    %cm_preset("Below Spazer", #preset_names_below_spazer, #preset_phantoonfirst_red_brinstar_revisit_below_spazer)

presets_phantoonfirst_red_brinstar_revisit_leaving_spazer:
    %cm_preset("Leaving Spazer", #preset_names_leaving_spazer, #preset_phantoonfirst_red_brinstar_revisit_leaving_spazer)

presets_phantoonfirst_red_brinstar_revisit_breaking_the_tube:
    %cm_preset("Breaking The Tube", #preset_names_breaking_the_tube, #preset_phantoonfirst_red_brinstar_revisit_breaking_the_tube)

presets_phantoonfirst_red_brinstar_revisit_business_center_preelev:
    %cm_preset("Business Center Pre-Elev", #preset_names_business_center_preelev, #preset_phantoonfirst_red_brinstar_revisit_business_center_preelev)


; Kraid Before Ridley
presets_phantoonfirst_kraid_before_ridley_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_names_entering_kraids_lair, #preset_phantoonfirst_kraid_before_ridley_entering_kraids_lair)

presets_phantoonfirst_kraid_before_ridley_kraid_kihunters:
    %cm_preset("Kraid Kihunters", #preset_names_kraid_kihunters, #preset_phantoonfirst_kraid_before_ridley_kraid_kihunters)

presets_phantoonfirst_kraid_before_ridley_minikraid:
    %cm_preset("Mini-Kraid", #preset_names_minikraid, #preset_phantoonfirst_kraid_before_ridley_minikraid)

presets_phantoonfirst_kraid_before_ridley_kraid:
    %cm_preset("Kraid", #preset_names_kraid, #preset_phantoonfirst_kraid_before_ridley_kraid)

presets_phantoonfirst_kraid_before_ridley_leaving_varia:
    %cm_preset("Leaving Varia", #preset_names_leaving_varia, #preset_phantoonfirst_kraid_before_ridley_leaving_varia)

presets_phantoonfirst_kraid_before_ridley_minikraid_revisit:
    %cm_preset("Mini-Kraid Revisit", #preset_names_minikraid_revisit, #preset_phantoonfirst_kraid_before_ridley_minikraid_revisit)

presets_phantoonfirst_kraid_before_ridley_kraid_kihunters_revisit:
    %cm_preset("Kraid Kihunters Revisit", #preset_names_kraid_kihunters_revisit, #preset_phantoonfirst_kraid_before_ridley_kraid_kihunters_revisit)

presets_phantoonfirst_kraid_before_ridley_kraid_etank:
    %cm_preset("Kraid E-Tank", #preset_names_kraid_etank, #preset_phantoonfirst_kraid_before_ridley_kraid_etank)

presets_phantoonfirst_kraid_before_ridley_leaving_kraid_etank:
    %cm_preset("Leaving Kraid E-Tank", #preset_names_leaving_kraid_etank, #preset_phantoonfirst_kraid_before_ridley_leaving_kraid_etank)

presets_phantoonfirst_kraid_before_ridley_leaving_kraids_lair:
    %cm_preset("Leaving Kraid's Lair", #preset_names_leaving_kraids_lair, #preset_phantoonfirst_kraid_before_ridley_leaving_kraids_lair)

presets_phantoonfirst_kraid_before_ridley_business_center_preelev:
    %cm_preset("Business Center Pre-Elev", #preset_names_business_center_preelev, #preset_phantoonfirst_kraid_before_ridley_business_center_preelev)


; Upper Norfair
presets_phantoonfirst_upper_norfair_business_center_postelev:
    %cm_preset("Business Center Post-Elev", #preset_names_business_center_postelev, #preset_phantoonfirst_upper_norfair_business_center_postelev)

presets_phantoonfirst_upper_norfair_hijump_etank:
    %cm_preset("Hi-Jump E-Tank", #preset_names_hijump_etank, #preset_phantoonfirst_upper_norfair_hijump_etank)

presets_phantoonfirst_upper_norfair_leaving_hijump:
    %cm_preset("Leaving Hi-Jump", #preset_names_leaving_hijump, #preset_phantoonfirst_upper_norfair_leaving_hijump)

presets_phantoonfirst_upper_norfair_business_center_revisit:
    %cm_preset("Business Center Revisit", #preset_names_business_center_revisit, #preset_phantoonfirst_upper_norfair_business_center_revisit)

presets_phantoonfirst_upper_norfair_ice_beam_gates:
    %cm_preset("Ice Beam Gates", #preset_names_ice_beam_gates, #preset_phantoonfirst_upper_norfair_ice_beam_gates)

presets_phantoonfirst_upper_norfair_ice_maze_up:
    %cm_preset("Ice Maze Up", #preset_names_ice_maze_up, #preset_phantoonfirst_upper_norfair_ice_maze_up)

presets_phantoonfirst_upper_norfair_ice_maze_down:
    %cm_preset("Ice Maze Down", #preset_names_ice_maze_down, #preset_phantoonfirst_upper_norfair_ice_maze_down)

presets_phantoonfirst_upper_norfair_ice_escape:
    %cm_preset("Ice Escape", #preset_names_ice_escape, #preset_phantoonfirst_upper_norfair_ice_escape)

presets_phantoonfirst_upper_norfair_precathedral:
    %cm_preset("Pre-Cathedral", #preset_names_precathedral, #preset_phantoonfirst_upper_norfair_precathedral)

presets_phantoonfirst_upper_norfair_cathedral:
    %cm_preset("Cathedral", #preset_names_cathedral, #preset_phantoonfirst_upper_norfair_cathedral)

presets_phantoonfirst_upper_norfair_rising_tide:
    %cm_preset("Rising Tide", #preset_names_rising_tide, #preset_phantoonfirst_upper_norfair_rising_tide)

presets_phantoonfirst_upper_norfair_bubble_mountain:
    %cm_preset("Bubble Mountain", #preset_names_bubble_mountain, #preset_phantoonfirst_upper_norfair_bubble_mountain)

presets_phantoonfirst_upper_norfair_bat_cave:
    %cm_preset("Bat Cave", #preset_names_bat_cave, #preset_phantoonfirst_upper_norfair_bat_cave)

presets_phantoonfirst_upper_norfair_leaving_speedbooster:
    %cm_preset("Leaving Speedbooster", #preset_names_leaving_speedbooster, #preset_phantoonfirst_upper_norfair_leaving_speedbooster)

presets_phantoonfirst_upper_norfair_single_chamber:
    %cm_preset("Single Chamber", #preset_names_single_chamber, #preset_phantoonfirst_upper_norfair_single_chamber)

presets_phantoonfirst_upper_norfair_double_chamber:
    %cm_preset("Double Chamber", #preset_names_double_chamber, #preset_phantoonfirst_upper_norfair_double_chamber)

presets_phantoonfirst_upper_norfair_double_chamber_revisit:
    %cm_preset("Double Chamber Revisit", #preset_names_double_chamber_revisit, #preset_phantoonfirst_upper_norfair_double_chamber_revisit)

presets_phantoonfirst_upper_norfair_single_chamber_revisit:
    %cm_preset("Single Chamber Revisit", #preset_names_single_chamber_revisit, #preset_phantoonfirst_upper_norfair_single_chamber_revisit)

presets_phantoonfirst_upper_norfair_volcano_room:
    %cm_preset("Volcano Room", #preset_names_volcano_room, #preset_phantoonfirst_upper_norfair_volcano_room)

presets_phantoonfirst_upper_norfair_kronic_boost:
    %cm_preset("Kronic Boost", #preset_names_kronic_boost, #preset_phantoonfirst_upper_norfair_kronic_boost)

presets_phantoonfirst_upper_norfair_lava_spark:
    %cm_preset("Lava Spark", #preset_names_lava_spark, #preset_phantoonfirst_upper_norfair_lava_spark)


; Lower Norfair
presets_phantoonfirst_lower_norfair_ln_main_hall:
    %cm_preset("LN Main Hall", #preset_names_ln_main_hall, #preset_phantoonfirst_lower_norfair_ln_main_hall)

presets_phantoonfirst_lower_norfair_prepillars:
    %cm_preset("Pre-Pillars", #preset_names_prepillars, #preset_phantoonfirst_lower_norfair_prepillars)

presets_phantoonfirst_lower_norfair_worst_room_in_the_game:
    %cm_preset("Worst Room In The Game", #preset_names_worst_room_in_the_game, #preset_phantoonfirst_lower_norfair_worst_room_in_the_game)

presets_phantoonfirst_lower_norfair_amphitheatre:
    %cm_preset("Amphitheatre", #preset_names_amphitheatre, #preset_phantoonfirst_lower_norfair_amphitheatre)

presets_phantoonfirst_lower_norfair_kihunter_stairs_down:
    %cm_preset("Kihunter Stairs Down", #preset_names_kihunter_stairs_down, #preset_phantoonfirst_lower_norfair_kihunter_stairs_down)

presets_phantoonfirst_lower_norfair_wasteland:
    %cm_preset("Wasteland", #preset_names_wasteland, #preset_phantoonfirst_lower_norfair_wasteland)

presets_phantoonfirst_lower_norfair_metal_ninja_pirates:
    %cm_preset("Metal Ninja Pirates", #preset_names_metal_ninja_pirates, #preset_phantoonfirst_lower_norfair_metal_ninja_pirates)

presets_phantoonfirst_lower_norfair_plowerhouse:
    %cm_preset("Plowerhouse", #preset_names_plowerhouse, #preset_phantoonfirst_lower_norfair_plowerhouse)

presets_phantoonfirst_lower_norfair_ridley_farming_room:
    %cm_preset("Ridley Farming Room", #preset_names_ridley_farming_room, #preset_phantoonfirst_lower_norfair_ridley_farming_room)

presets_phantoonfirst_lower_norfair_ridley:
    %cm_preset("Ridley", #preset_names_ridley, #preset_phantoonfirst_lower_norfair_ridley)

presets_phantoonfirst_lower_norfair_leaving_ridley:
    %cm_preset("Leaving Ridley", #preset_names_leaving_ridley, #preset_phantoonfirst_lower_norfair_leaving_ridley)

presets_phantoonfirst_lower_norfair_reverse_plowerhouse:
    %cm_preset("Reverse Plowerhouse", #preset_names_reverse_plowerhouse, #preset_phantoonfirst_lower_norfair_reverse_plowerhouse)

presets_phantoonfirst_lower_norfair_wasteland_revisit:
    %cm_preset("Wasteland Revisit", #preset_names_wasteland_revisit, #preset_phantoonfirst_lower_norfair_wasteland_revisit)

presets_phantoonfirst_lower_norfair_kihunter_stairs_up:
    %cm_preset("Kihunter Stairs Up", #preset_names_kihunter_stairs_up, #preset_phantoonfirst_lower_norfair_kihunter_stairs_up)

presets_phantoonfirst_lower_norfair_fireflea_room:
    %cm_preset("Fireflea Room", #preset_names_fireflea_room, #preset_phantoonfirst_lower_norfair_fireflea_room)

presets_phantoonfirst_lower_norfair_springball_maze:
    %cm_preset("Springball Maze", #preset_names_springball_maze, #preset_phantoonfirst_lower_norfair_springball_maze)

presets_phantoonfirst_lower_norfair_three_musketeers:
    %cm_preset("Three Musketeers", #preset_names_three_musketeers, #preset_phantoonfirst_lower_norfair_three_musketeers)

presets_phantoonfirst_lower_norfair_single_chamber_final:
    %cm_preset("Single Chamber Final", #preset_names_single_chamber_final, #preset_phantoonfirst_lower_norfair_single_chamber_final)

presets_phantoonfirst_lower_norfair_bubble_mountain_final:
    %cm_preset("Bubble Mountain Final", #preset_names_bubble_mountain_final, #preset_phantoonfirst_lower_norfair_bubble_mountain_final)

presets_phantoonfirst_lower_norfair_frog_speedway:
    %cm_preset("Frog Speedway", #preset_names_frog_speedway, #preset_phantoonfirst_lower_norfair_frog_speedway)

presets_phantoonfirst_lower_norfair_business_center_final:
    %cm_preset("Business Center Final", #preset_names_business_center_final, #preset_phantoonfirst_lower_norfair_business_center_final)


; Kraid
presets_phantoonfirst_kraid_entering_kraids_lair:
    %cm_preset("Entering Kraid's Lair", #preset_names_entering_kraids_lair, #preset_phantoonfirst_kraid_entering_kraids_lair)

presets_phantoonfirst_kraid_kraid_kihunters:
    %cm_preset("Kraid Kihunters", #preset_names_kraid_kihunters, #preset_phantoonfirst_kraid_kraid_kihunters)

presets_phantoonfirst_kraid_minikraid:
    %cm_preset("Mini-Kraid", #preset_names_minikraid, #preset_phantoonfirst_kraid_minikraid)

presets_phantoonfirst_kraid_kraid:
    %cm_preset("Kraid", #preset_names_kraid, #preset_phantoonfirst_kraid_kraid)

presets_phantoonfirst_kraid_leaving_varia:
    %cm_preset("Leaving Varia", #preset_names_leaving_varia, #preset_phantoonfirst_kraid_leaving_varia)

presets_phantoonfirst_kraid_minikraid_revisit:
    %cm_preset("Mini-Kraid Revisit", #preset_names_minikraid_revisit, #preset_phantoonfirst_kraid_minikraid_revisit)

presets_phantoonfirst_kraid_kraid_kihunters_revisit:
    %cm_preset("Kraid Kihunters Revisit", #preset_names_kraid_kihunters_revisit, #preset_phantoonfirst_kraid_kraid_kihunters_revisit)

presets_phantoonfirst_kraid_kraid_etank:
    %cm_preset("Kraid E-Tank", #preset_names_kraid_etank, #preset_phantoonfirst_kraid_kraid_etank)

presets_phantoonfirst_kraid_leaving_kraid_etank:
    %cm_preset("Leaving Kraid E-Tank", #preset_names_leaving_kraid_etank, #preset_phantoonfirst_kraid_leaving_kraid_etank)

presets_phantoonfirst_kraid_leaving_kraids_lair:
    %cm_preset("Leaving Kraid's Lair", #preset_names_leaving_kraids_lair, #preset_phantoonfirst_kraid_leaving_kraids_lair)


; Maridia
presets_phantoonfirst_maridia_maridia_tube_revisit:
    %cm_preset("Maridia Tube Revisit", #preset_names_maridia_tube_revisit, #preset_phantoonfirst_maridia_maridia_tube_revisit)

presets_phantoonfirst_maridia_fish_tank:
    %cm_preset("Fish Tank", #preset_names_fish_tank, #preset_phantoonfirst_maridia_fish_tank)

presets_phantoonfirst_maridia_mt_everest:
    %cm_preset("Mt. Everest", #preset_names_mt_everest, #preset_phantoonfirst_maridia_mt_everest)

presets_phantoonfirst_maridia_crab_shaft:
    %cm_preset("Crab Shaft", #preset_names_crab_shaft, #preset_phantoonfirst_maridia_crab_shaft)

presets_phantoonfirst_maridia_aqueduct:
    %cm_preset("Aqueduct", #preset_names_aqueduct, #preset_phantoonfirst_maridia_aqueduct)

presets_phantoonfirst_maridia_botwoon_hallway:
    %cm_preset("Botwoon Hallway", #preset_names_botwoon_hallway, #preset_phantoonfirst_maridia_botwoon_hallway)

presets_phantoonfirst_maridia_botwoon:
    %cm_preset("Botwoon", #preset_names_botwoon, #preset_phantoonfirst_maridia_botwoon)

presets_phantoonfirst_maridia_botwoon_etank:
    %cm_preset("Botwoon E-Tank", #preset_names_botwoon_etank, #preset_phantoonfirst_maridia_botwoon_etank)

presets_phantoonfirst_maridia_halfie_setup:
    %cm_preset("Halfie Setup", #preset_names_halfie_setup, #preset_phantoonfirst_maridia_halfie_setup)

presets_phantoonfirst_maridia_draygon:
    %cm_preset("Draygon", #preset_names_draygon, #preset_phantoonfirst_maridia_draygon)

presets_phantoonfirst_maridia_spikesuit_reverse_halfie:
    %cm_preset("Spikesuit Reverse Halfie", #preset_names_spikesuit_reverse_halfie, #preset_phantoonfirst_maridia_spikesuit_reverse_halfie)

presets_phantoonfirst_maridia_reverse_colosseum:
    %cm_preset("Reverse Colosseum", #preset_names_reverse_colosseum, #preset_phantoonfirst_maridia_reverse_colosseum)

presets_phantoonfirst_maridia_reverse_halfie_climb:
    %cm_preset("Reverse Halfie Climb", #preset_names_reverse_halfie_climb, #preset_phantoonfirst_maridia_reverse_halfie_climb)

presets_phantoonfirst_maridia_reverse_botwoon_etank:
    %cm_preset("Reverse Botwoon E-Tank", #preset_names_reverse_botwoon_etank, #preset_phantoonfirst_maridia_reverse_botwoon_etank)

presets_phantoonfirst_maridia_reverse_botwoon_hallway:
    %cm_preset("Reverse Botwoon Hallway", #preset_names_reverse_botwoon_hallway, #preset_phantoonfirst_maridia_reverse_botwoon_hallway)

presets_phantoonfirst_maridia_reverse_crab_shaft:
    %cm_preset("Reverse Crab Shaft", #preset_names_reverse_crab_shaft, #preset_phantoonfirst_maridia_reverse_crab_shaft)

presets_phantoonfirst_maridia_mt_everest_revisit:
    %cm_preset("Mt. Everest Revisit", #preset_names_mt_everest_revisit, #preset_phantoonfirst_maridia_mt_everest_revisit)


; Backtracking
presets_phantoonfirst_backtracking_red_brinstar_green_gate:
    %cm_preset("Red Brinstar Green Gate", #preset_names_red_brinstar_green_gate, #preset_phantoonfirst_backtracking_red_brinstar_green_gate)

presets_phantoonfirst_backtracking_crateria_kihunters_final:
    %cm_preset("Crateria Kihunters Final", #preset_names_crateria_kihunters_final, #preset_phantoonfirst_backtracking_crateria_kihunters_final)

presets_phantoonfirst_backtracking_parlor_return:
    %cm_preset("Parlor Return", #preset_names_parlor_return, #preset_phantoonfirst_backtracking_parlor_return)

presets_phantoonfirst_backtracking_terminator_revisit:
    %cm_preset("Terminator Revisit", #preset_names_terminator_revisit, #preset_phantoonfirst_backtracking_terminator_revisit)

presets_phantoonfirst_backtracking_green_pirate_shaft_revisit:
    %cm_preset("Green Pirate Shaft Revisit", #preset_names_green_pirate_shaft_revisit, #preset_phantoonfirst_backtracking_green_pirate_shaft_revisit)

presets_phantoonfirst_backtracking_g4_hallway:
    %cm_preset("G4 Hallway", #preset_names_g4_hallway, #preset_phantoonfirst_backtracking_g4_hallway)

presets_phantoonfirst_backtracking_g4_elevator:
    %cm_preset("G4 Elevator", #preset_names_g4_elevator, #preset_phantoonfirst_backtracking_g4_elevator)


; Tourian
presets_phantoonfirst_tourian_tourian_elevator_room:
    %cm_preset("Tourian Elevator Room", #preset_names_tourian_elevator_room, #preset_phantoonfirst_tourian_tourian_elevator_room)

presets_phantoonfirst_tourian_metroids_1:
    %cm_preset("Metroids 1", #preset_names_metroids_1, #preset_phantoonfirst_tourian_metroids_1)

presets_phantoonfirst_tourian_metroids_2:
    %cm_preset("Metroids 2", #preset_names_metroids_2, #preset_phantoonfirst_tourian_metroids_2)

presets_phantoonfirst_tourian_metroids_3:
    %cm_preset("Metroids 3", #preset_names_metroids_3, #preset_phantoonfirst_tourian_metroids_3)

presets_phantoonfirst_tourian_metroids_4:
    %cm_preset("Metroids 4", #preset_names_metroids_4, #preset_phantoonfirst_tourian_metroids_4)

presets_phantoonfirst_tourian_giant_hoppers:
    %cm_preset("Giant Hoppers", #preset_names_giant_hoppers, #preset_phantoonfirst_tourian_giant_hoppers)

presets_phantoonfirst_tourian_baby_skip:
    %cm_preset("Baby Skip", #preset_names_baby_skip, #preset_phantoonfirst_tourian_baby_skip)

presets_phantoonfirst_tourian_gadora_room:
    %cm_preset("Gadora Room", #preset_names_gadora_room, #preset_phantoonfirst_tourian_gadora_room)

presets_phantoonfirst_tourian_rinka_shaft:
    %cm_preset("Rinka Shaft", #preset_names_rinka_shaft, #preset_phantoonfirst_tourian_rinka_shaft)

presets_phantoonfirst_tourian_zeb_skip:
    %cm_preset("Zeb Skip", #preset_names_zeb_skip, #preset_phantoonfirst_tourian_zeb_skip)

presets_phantoonfirst_tourian_mother_brain_2:
    %cm_preset("Mother Brain 2", #preset_names_mother_brain_2, #preset_phantoonfirst_tourian_mother_brain_2)

presets_phantoonfirst_tourian_mother_brain_3:
    %cm_preset("Mother Brain 3", #preset_names_mother_brain_3, #preset_phantoonfirst_tourian_mother_brain_3)

presets_phantoonfirst_tourian_zebes_escape:
    %cm_preset("Zebes Escape", #preset_names_zebes_escape, #preset_phantoonfirst_tourian_zebes_escape)

presets_phantoonfirst_tourian_escape_room_3:
    %cm_preset("Escape Room 3", #preset_names_escape_room_3, #preset_phantoonfirst_tourian_escape_room_3)

presets_phantoonfirst_tourian_escape_room_4:
    %cm_preset("Escape Room 4", #preset_names_escape_room_4, #preset_phantoonfirst_tourian_escape_room_4)

presets_phantoonfirst_tourian_escape_climb:
    %cm_preset("Escape Climb", #preset_names_escape_climb, #preset_phantoonfirst_tourian_escape_climb)

presets_phantoonfirst_tourian_escape_parlor:
    %cm_preset("Escape Parlor", #preset_names_escape_parlor, #preset_phantoonfirst_tourian_escape_parlor)

