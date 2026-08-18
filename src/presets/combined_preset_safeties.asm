
preset_safeties_sram_table:
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25
    dw #!sram_safeties_kpdr20
    dw #!sram_safeties_kpdr25

preset_safeties_definition_table:
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition
    dw #preset_kpdr_safeties_definition

preset_kpdr_safeties_definition:
    ; Safety 0001: Spazer
    db !SAFETIES_CMD_BEAM|!SAFETIES_COMBO_FLAG
    db #$04, #$05, #$04
    db !SAFETIES_CMD_DOOR
    db #$07, #$80

    ; Safety 0002: Kraid E-Tank
    db !SAFETIES_CMD_ETANK|!SAFETIES_COMBO_FLAG
    db #$05, #$08
    db !SAFETIES_CMD_DOOR
    db #$08, #$02

    ; Safety 0004: HJB Missiles
    db !SAFETIES_CMD_MISSILE
    db #$06, #$80

    ; Safety 0008: Speed Missiles
    db !SAFETIES_CMD_MISSILE
    db #$08, #$02

    ; Safety 0010: Grapple
    db !SAFETIES_CMD_ITEM_HI|!SAFETIES_COMBO_FLAG
    db #$40, #$07, #$10
    db !SAFETIES_CMD_EVENT|!SAFETIES_COMBO_FLAG
    db #$0A, #$02
    db !SAFETIES_CMD_DOOR
    db #$09, #$C0

    ; Safety 0020: Crocomire E-Tank
    db !SAFETIES_CMD_ETANK|!SAFETIES_COMBO_FLAG
    db #$06, #$10
    db !SAFETIES_CMD_EVENT|!SAFETIES_COMBO_FLAG
    db #$0A, #$02
    db !SAFETIES_CMD_DOOR
    db #$09, #$C0

    ; Safety 0040: Sloaters Refill
    db !SAFETIES_CMD_DOOR
    db #$07, #$01

    ; Safety 0080: Moat Missiles
    db !SAFETIES_CMD_MISSILE
    db #$00, #$10

    ; Safety 0100: Crab Supers
    db !SAFETIES_CMD_SUPER
    db #$11, #$02

    ; Safety 0200: Aqueduct Missiles
    db !SAFETIES_CMD_MISSILE
    db #$12, #$10

    ; Safety 0400: Aqueduct Supers
    db !SAFETIES_CMD_SUPER
    db #$12, #$20

    ; Safety 0800: Nutella Refill
    db !SAFETIES_CMD_ADJUST

    ; Safety 1000: Screw Attack
    db !SAFETIES_CMD_ITEM_LO|!SAFETIES_COMBO_FLAG
    db #$08, #$09, #$80
    db !SAFETIES_CMD_EVENT|!SAFETIES_COMBO_FLAG
    db #$0A, #$04
    db !SAFETIES_CMD_DOOR
    db #$0B, #$02

    ; Safety 2000: Ridley E-Tank
    db !SAFETIES_CMD_ETANK|!SAFETIES_COMBO_FLAG
    db #$09, #$40
    db !SAFETIES_CMD_DOOR
    db #$0B, #$08

    ; Safety 4000: Baby Skip Skip
    db !SAFETIES_CMD_ADJUST

    ; Safety 8000: Nothing
    db !SAFETIES_CMD_NOP

