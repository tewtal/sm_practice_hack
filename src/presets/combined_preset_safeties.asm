
preset_safeties_sram_table:
    dw #!sram_safeties_enabled_kpdr
    dw #!sram_safeties_enabled_phantoonfirst
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #!sram_safeties_enabled_100map
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000

preset_safeties_definition_table:
    dw #preset_kpdr_safeties_definition
    dw #preset_phantoonfirst_safeties_definition
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #preset_100map_safeties_definition
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000
    dw #$0000

preset_kpdr_zeb_skip_skip_definition:
    ; Stage 0: Retro Missiles
    db !SAFETIES_CMD_MISSILE|!SAFETIES_COMBO_FLAG
    db #$03, #$10
    db !SAFETIES_CMD_DOOR
    db #$06, #$04

    ; Stage 1: Early Supers Missiles
    db !SAFETIES_CMD_MISSILE
    db #$01, #$80

    ; Stage 2: Cathedral Missiles
    db !SAFETIES_CMD_MISSILE
    db #$06, #$02

    ; Stage 3: Bubble Mountain Missiles
    db !SAFETIES_CMD_MISSILE
    db #$00, #$02

    ; Stage 4: Speed Missiles
    db !SAFETIES_CMD_MISSILE
    db #$08, #$02

    ; Stage 5: Alpha PB Missiles
    db !SAFETIES_CMD_MISSILE
    db #$05, #$02

    ; Stage 6: Precious Missiles
    db !SAFETIES_CMD_MISSILE
    db #$12, #$80

    ; Stage 7: Hotarubi Missiles
    db !SAFETIES_CMD_MISSILE
    db #$09, #$04

    ; Stage 8: Zebetites Destroyed
    db !SAFETIES_CMD_EVENT
    db #$00, #$20

preset_kpdr_safeties_definition:
    ; Safety 00000001: Zeb Skip Skip
    db !SAFETIES_CMD_STAGED
    dw #preset_kpdr_zeb_skip_skip_definition

    ; Safety 00000002: Spazer
    db !SAFETIES_CMD_BEAM|!SAFETIES_COMBO_FLAG
    db #$04, #$05, #$04
    db !SAFETIES_CMD_DOOR
    db #$07, #$80

    ; Safety 00000004: Hi-Jump First
    db !SAFETIES_CMD_ETANK|!SAFETIES_COMBO_FLAG
    db #$07, #$01
    db !SAFETIES_CMD_ITEM_HI|!SAFETIES_COMBO_FLAG
    db #$01, #$06, #$20
    db !SAFETIES_CMD_MISSILE|!SAFETIES_COMBO_FLAG
    db #$06, #$80
    db !SAFETIES_CMD_DOOR|!SAFETIES_COMBO_FLAG
    db #$09, #$20
    db !SAFETIES_CMD_DOOR
    db #$0A, #$01

    ; Safety 00000008: Kraid E-Tank
    db !SAFETIES_CMD_ETANK|!SAFETIES_COMBO_FLAG
    db #$05, #$08
    db !SAFETIES_CMD_DOOR
    db #$08, #$03

    ; Safety 00000010: HJB Missiles
    db !SAFETIES_CMD_MISSILE
    db #$06, #$80

    ; Safety 00000020: Grapple
    db !SAFETIES_CMD_ITEM_HI|!SAFETIES_COMBO_FLAG
    db #$40, #$07, #$10
    db !SAFETIES_CMD_ETANK|!SAFETIES_COMBO_FLAG
    db #$06, #$10
    db !SAFETIES_CMD_PB|!SAFETIES_COMBO_FLAG
    db #$07, #$02
    db !SAFETIES_CMD_EVENT|!SAFETIES_COMBO_FLAG
    db #$0A, #$02
    db !SAFETIES_CMD_DOOR|!SAFETIES_COMBO_FLAG
    db #$09, #$C0
    db !SAFETIES_CMD_DOOR
    db #$0A, #$02

    ; Safety 00000040: Early Ice
    db !SAFETIES_CMD_BEAM|!SAFETIES_COMBO_FLAG
    db #$02, #$06, #$04
    db !SAFETIES_CMD_DOOR
    db #$09, #$08

    ; Safety 00000080: Alpha Spark Skip
    db !SAFETIES_CMD_ADJUST

    ; Safety 00000100: Spend Yellow Door PB
    db !SAFETIES_CMD_DOOR
    db #$01, #$40

    ; Safety 00000200: Moat Missiles
    db !SAFETIES_CMD_MISSILE
    db #$00, #$10

    ; Safety 00000400: Ocean Fly Skip
    db !SAFETIES_CMD_ADJUST

    ; Safety 00000800: Healthsaver Spark
    db !SAFETIES_CMD_ADJUST

    ; Safety 00001000: Phantoon X-Factor
    db !SAFETIES_CMD_ADJUST

    ; Safety 00002000: Sloaters Refill
    db !SAFETIES_CMD_DOOR
    db #$07, #$01

    ; Safety 00004000: Mama Turtle E-Tank
    db !SAFETIES_CMD_ETANK|!SAFETIES_COMBO_FLAG
    db #$11, #$04
    db !SAFETIES_CMD_DOOR
    db #$11, #$40

    ; Safety 00008000: Crab Supers
    db !SAFETIES_CMD_SUPER
    db #$11, #$02

    ; Safety 00010000: Botwoon X-Factor
    db !SAFETIES_CMD_ADJUST

    ; Safety 00020000: Aqueduct Missiles
    db !SAFETIES_CMD_MISSILE
    db #$12, #$10

    ; Safety 00040000: Aqueduct Supers
    db !SAFETIES_CMD_SUPER
    db #$12, #$20

    ; Safety 00080000: Halfie Savings
    db !SAFETIES_CMD_ADJUST

    ; Safety 00100000: Safer Draygon
    db !SAFETIES_CMD_ADJUST

    ; Safety 00200000: Whomple Savings
    db !SAFETIES_CMD_ADJUST

    ; Safety 00400000: Plasma Spark Skip
    db !SAFETIES_CMD_ADJUST

    ; Safety 00800000: Southern Route
    db !SAFETIES_CMD_NOP

    ; Safety 01000000: Screw Attack
    db !SAFETIES_CMD_ITEM_LO|!SAFETIES_COMBO_FLAG
    db #$08, #$09, #$80
    db !SAFETIES_CMD_EVENT|!SAFETIES_COMBO_FLAG
    db #$01, #$10
    db !SAFETIES_CMD_EVENT|!SAFETIES_COMBO_FLAG
    db #$0A, #$04
    db !SAFETIES_CMD_DOOR
    db #$0B, #$02

    ; Safety 02000000: Blue Pillars
    db !SAFETIES_CMD_ADJUST

    ; Safety 04000000: Slow Pillars
    db !SAFETIES_CMD_ADJUST

    ; Safety 08000000: Fireflea E-Tank
    db !SAFETIES_CMD_ETANK
    db #$0A, #$01

    ; Safety 10000000: Ridley E-Tank
    db !SAFETIES_CMD_ETANK|!SAFETIES_COMBO_FLAG
    db #$09, #$40
    db !SAFETIES_CMD_DOOR
    db #$0B, #$08

    ; Done KPDR Safeties
    db !SAFETIES_CMD_DONE

preset_phantoonfirst_safeties_definition:
    ; Safety 000001: Brinstar Reserve
    db !SAFETIES_CMD_RTANK|!SAFETIES_COMBO_FLAG
    db #$02, #$02
    db !SAFETIES_CMD_DOOR
    db #$04, #$40

    ; Safety 000002: Early Supers Missiles
    db !SAFETIES_CMD_MISSILE
    db #$01, #$80

    ; Safety 000004: Right Side Supers
    db !SAFETIES_CMD_SUPER
    db #$10, #$40

    ; Safety 000008: PKRD
    db !SAFETIES_CMD_ITEM_LO|!SAFETIES_COMBO_FLAG
    db #$01, #$06, #$01
    db !SAFETIES_CMD_EVENT|!SAFETIES_COMBO_FLAG
    db #$09, #$01
    db !SAFETIES_CMD_DOOR
    db #$08, #$EC

    ; Safety 000010: PKRD + E-Tank
    db !SAFETIES_CMD_ETANK|!SAFETIES_COMBO_FLAG
    db #$05, #$08
    db !SAFETIES_CMD_DOOR
    db #$08, #$03

    ; Safety 000020: HJB Missiles
    db !SAFETIES_CMD_MISSILE
    db #$06, #$80

    ; Safety 000040: Wave Missiles
    db !SAFETIES_CMD_MISSILE
    db #$08, #$08

    ; Safety 000080: Varia + Gravity Jump
    db !SAFETIES_CMD_ADJUST

    ; Safety 000100: Ridley X-Factor
    db !SAFETIES_CMD_ADJUST

    ; Safety 000200: Slow Pillars
    db !SAFETIES_CMD_ADJUST

    ; Safety 000400: Fireflea E-Tank
    db !SAFETIES_CMD_ETANK
    db #$0A, #$01

    ; Safety 000800: Ridley E-Tank
    db !SAFETIES_CMD_ETANK|!SAFETIES_COMBO_FLAG
    db #$09, #$40
    db !SAFETIES_CMD_DOOR
    db #$0B, #$08

    ; Safety 001000: Kraid E-Tank
    db !SAFETIES_CMD_ETANK|!SAFETIES_COMBO_FLAG
    db #$05, #$08
    db !SAFETIES_CMD_DOOR
    db #$08, #$03

    ; Safety 002000: Mt. Everest Spark Skip
    db !SAFETIES_CMD_ADJUST

    ; Safety 004000: Botwoon E-Tank
    db !SAFETIES_CMD_ETANK
    db #$13, #$01

    ; Safety 008000: Halfie Savings
    db !SAFETIES_CMD_ADJUST

    ; Safety 010000: Space Jump
    db !SAFETIES_CMD_ITEM_HI|!SAFETIES_COMBO_FLAG
    db #$02, #$13, #$04
    db !SAFETIES_CMD_DOOR
    db #$13, #$80

    ; Safety 020000: Reverse Spark Skip
    db !SAFETIES_CMD_ADJUST

    ; Done Phantoon First Safeties
    db !SAFETIES_CMD_DONE

preset_100map_safeties_definition:
    ; Safety 01: Spazer
    db !SAFETIES_CMD_BEAM
    db #$04, #$05, #$04

    ; Done Mapo Safeties
    db !SAFETIES_CMD_DONE

