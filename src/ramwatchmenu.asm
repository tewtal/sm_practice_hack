; ---------------
; RAM Watch Menus
; ---------------

ih_prepare_ram_watch_menu:
    LDA !ram_watch_left : XBA : AND #$00FF : STA !ram_cm_watch_left_hi
    LDA !ram_watch_left : AND #$00FF : STA !ram_cm_watch_left_lo
    LDA !ram_watch_right : XBA : AND #$00FF : STA !ram_cm_watch_right_hi
    LDA !ram_watch_right : AND #$00FF : STA !ram_cm_watch_right_lo
    LDA !ram_watch_edit_left : XBA : AND #$00FF : STA !ram_cm_watch_edit_left_hi
    LDA !ram_watch_edit_left : AND #$00FF : STA !ram_cm_watch_edit_left_lo
    LDA !ram_watch_edit_right : XBA : AND #$00FF : STA !ram_cm_watch_edit_right_hi
    LDA !ram_watch_edit_right : AND #$00FF : STA !ram_cm_watch_edit_right_lo
    LDA !ram_watch_left_index : XBA : AND #$00FF : STA !ram_cm_watch_left_index_hi
    LDA !ram_watch_left_index : AND #$00FF : STA !ram_cm_watch_left_index_lo
    LDA !ram_watch_right_index : XBA : AND #$00FF : STA !ram_cm_watch_right_index_hi
    LDA !ram_watch_right_index : AND #$00FF : STA !ram_cm_watch_right_index_lo
    LDA #$0000 : STA !ram_cm_watch_enemy_property : STA !ram_cm_watch_enemy_index
    STA !ram_cm_watch_enemy_side

    ; See if we can better initialize enemy properties and indices
    LDA !ram_watch_left : CMP #$0F78 : BCC .checkright : CMP #$1778 : BCS .checkright
    BRA .found_enemy_ram

  .checkright
    LDA !ram_watch_right : CMP #$0F78 : BCC .submenu : CMP #$1778 : BCS .submenu

  .found_enemy_ram
    SEC : SBC #$0F78 : STA !ram_cm_watch_enemy_index
    AND #$003E : LSR : STA !ram_cm_watch_enemy_property
    LDA !ram_cm_watch_enemy_index : AND #$07C0
    ASL #2 : XBA : STA !ram_cm_watch_enemy_index

  .submenu
    %setmenubank()
    JML action_submenu

RAMWatchMenu:
    dw ramwatch_enable
    dw ramwatch_bank
    dw ramwatch_write_mode
    dw ramwatch_goto_common
    dw #$FFFF
    dw ramwatch_left_hi
    dw ramwatch_left_lo
    dw ramwatch_left_index_hi
    dw ramwatch_left_index_lo
    dw ramwatch_left_edit_hi
    dw ramwatch_left_edit_lo
    dw ramwatch_execute_left
    dw ramwatch_lock_left
    dw #$FFFF
    dw ramwatch_right_hi
    dw ramwatch_right_lo
    dw ramwatch_right_index_hi
    dw ramwatch_right_index_lo
    dw ramwatch_right_edit_hi
    dw ramwatch_right_edit_lo
    dw ramwatch_execute_right
    dw ramwatch_lock_right
    dw #$0000
    %cm_header("READ AND WRITE TO MEMORY")

ramwatch_goto_common:
    %cm_submenu("Select Common Addresses", #RAMWatchCommonMenu)

RAMWatchCommonMenu:
    dw ramwatch_common_enemy
    dw ramwatch_common_samus1
    dw ramwatch_common_samus2
    dw ramwatch_common_misc
    dw #$0000
    %cm_header("CHOOSE RAM CATEGORY")

ramwatch_common_enemy:
    %cm_submenu("Enemy Addresses", #RAMWatchCommonEnemyMenu)

ramwatch_common_samus1:
    %cm_submenu("Samus Addresses 1", #RAMWatchCommonSamusMenu1)

ramwatch_common_samus2:
    %cm_submenu("Samus Addresses 2", #RAMWatchCommonSamusMenu2)

ramwatch_common_misc:
    %cm_submenu("Misc Addresses", #RAMWatchCommonMiscMenu)

RAMWatchCommonEnemyMenu:
    dw ramwatch_common_enemy_side
    dw ramwatch_common_enemy_apply
    dw #$FFFF
    dw ramwatch_common_enemy_property
    dw ramwatch_common_enemy_index
    dw #$0000
    %cm_header("SELECT FROM ENEMY RAM")

ramwatch_common_enemy_side:
    dw !ACTION_CHOICE
    dl #!ram_cm_watch_enemy_side
    dw #$0000
    db #$28, "RAM Watch Slot", #$FF
    db #$28, "  ADDRESS 1", #$FF
    db #$28, "  ADDRESS 2", #$FF
    db #$FF

ramwatch_common_enemy_apply:
    %cm_jsl("Apply to RAM Watch", .routine, #$0000)
  .routine
    LDA !ram_cm_watch_enemy_index
    XBA : LSR #2 : TAX ; index * 40h = X

    LDA !ram_cm_watch_enemy_side : BEQ .left

    TXA : STA !ram_watch_right_index
    LDA !ram_cm_watch_enemy_property : ASL
    CLC : ADC #$0F78 : STA !ram_watch_right
    BRA .done

  .left
    TXA : STA !ram_watch_left_index
    LDA !ram_cm_watch_enemy_property : ASL
    CLC : ADC #$0F78 : STA !ram_watch_left

  .done
    LDA #$0000 : STA !ram_watch_bank
    LDY #RAMWatchMenu
    LDA !ram_cm_stack_index : DEC #4
    STA !ram_cm_stack_index
    JSL cm_go_back
    JSL cm_calculate_max
    JSL ih_prepare_ram_watch_menu
    %sfxconfirm()
    RTL

ramwatch_common_enemy_property:
    dw !ACTION_CHOICE
    dl #!ram_cm_watch_enemy_property
    dw #$0000
    db #$28, "Set to Enemy", #$FF
    db #$28, "         ID", #$FF
    db #$28, " X POSITION", #$FF
    db #$28, "   X SUBPOS", #$FF
    db #$28, " Y POSITION", #$FF
    db #$28, "   Y SUBPOS", #$FF
    db #$28, "   X RADIUS", #$FF
    db #$28, "   Y RADIUS", #$FF
    db #$28, " PROPERTIES", #$FF
    db #$28, "EXTRA PROPS", #$FF
    db #$28, " AI HANDLER", #$FF
    db #$28, "     HEALTH", #$FF
    db #$28, "  SPRITEMAP", #$FF
    db #$28, "    COUNTER", #$FF
    db #$28, " INIT PARAM", #$FF
    db #$28, "      TIMER", #$FF
    db #$28, "PALETTE IDX", #$FF
    db #$28, "   VRAM IDX", #$FF
    db #$28, "      LAYER", #$FF
    db #$28, "FLASH TIMER", #$FF
    db #$28, "FROZE TIMER", #$FF
    db #$28, "   I FRAMES", #$FF
    db #$28, "SHAKE TIMER", #$FF
    db #$28, "FRAME COUNT", #$FF
    db #$28, "       BANK", #$FF
    db #$28, "   AI VAR 0", #$FF
    db #$28, "   AI VAR 1", #$FF
    db #$28, "   AI VAR 2", #$FF
    db #$28, "   AI VAR 3", #$FF
    db #$28, "   AI VAR 4", #$FF
    db #$28, "   AI VAR 5", #$FF
    db #$28, "    PARAM 1", #$FF
    db #$28, "    PARAM 2", #$FF
    db #$FF

ramwatch_common_enemy_index:
    %cm_numfield_hex("Set to Enemy Index", !ram_cm_watch_enemy_index, 0, 31, 1, 8, #$0000)

RAMWatchCommonSamusMenu1:
    dw ramwatch_common_samus_09C2
    dw ramwatch_common_samus_09A2
    dw ramwatch_common_samus_09A4
    dw ramwatch_common_samus_09A6
    dw ramwatch_common_samus_09A8
    dw ramwatch_common_samus_0A1C
    dw ramwatch_common_samus_0A1E
    dw ramwatch_common_samus_0A1F
    dw ramwatch_common_samus_0A4C
    dw ramwatch_common_samus_0A94
    dw ramwatch_common_samus_0A96
    dw ramwatch_common_samus_0AA2
    dw ramwatch_common_samus_0CCE
    dw ramwatch_common_samus_0CD2
    dw ramwatch_common_samus_0CD4
    dw ramwatch_common_samus_0CE2
    dw ramwatch_common_samus_0CE4
    dw ramwatch_common_samus_0DEC
    dw ramwatch_common_samus_18A8
    dw ramwatch_common_samus_18AA
    dw #$0000
    %cm_header("SELECT FROM SAMUS RAM")

RAMWatchCommonSamusMenu2:
    dw ramwatch_common_samus_0AF4
    dw ramwatch_common_samus_0AF6
    dw ramwatch_common_samus_0AF8
    dw ramwatch_common_samus_0AFA
    dw ramwatch_common_samus_0AFC
    dw ramwatch_common_samus_0AFE
    dw ramwatch_common_samus_0B00
    dw ramwatch_common_samus_0B2C
    dw ramwatch_common_samus_0B2E
    dw ramwatch_common_samus_0B32
    dw ramwatch_common_samus_0B34
    dw ramwatch_common_samus_0B36
    dw ramwatch_common_samus_0B3F
    dw ramwatch_common_samus_0B42
    dw ramwatch_common_samus_0B44
    dw ramwatch_common_samus_0B46
    dw ramwatch_common_samus_0B48
    dw ramwatch_common_samus_0CCC
    dw #$0000
    %cm_header("SELECT FROM SAMUS RAM")
    %cm_header("ALSO SEE INFOHUD MODES")

ramwatch_common_samus_09C2:
    %cm_jsl("Samus Energy", action_select_common_address, #$09C2)

ramwatch_common_samus_09A2:
    %cm_jsl("Equipped Items", action_select_common_address, #$09A2)

ramwatch_common_samus_09A4:
    %cm_jsl("Collected Items", action_select_common_address, #$09A4)

ramwatch_common_samus_09A6:
    %cm_jsl("Equipped Beams", action_select_common_address, #$09A6)

ramwatch_common_samus_09A8:
    %cm_jsl("Collected Beams", action_select_common_address, #$09A8)

ramwatch_common_samus_0A1C:
    %cm_jsl("Pose", action_select_common_address, #$0A1C)

ramwatch_common_samus_0A1E:
    %cm_jsl("Pose X Direction", action_select_common_address, #$0A1E)

ramwatch_common_samus_0A1F:
    %cm_jsl("Movement Type", action_select_common_address, #$0A1F)

ramwatch_common_samus_0A4C:
    %cm_jsl("Subunit Energy", action_select_common_address, #$0A4C)

ramwatch_common_samus_0A94:
    %cm_jsl("Animation Frame Timer", action_select_common_address, #$0A94)

ramwatch_common_samus_0A96:
    %cm_jsl("Animation Frame", action_select_common_address, #$0A96)

ramwatch_common_samus_0AA2:
    %cm_jsl("Shinespark Delay Timer", action_select_common_address, #$0AA2)

ramwatch_common_samus_0CCE:
    %cm_jsl("Projectile Counter", action_select_common_address, #$0CCE)

ramwatch_common_samus_0CD2:
    %cm_jsl("Bomb Counter", action_select_common_address, #$0CD2)

ramwatch_common_samus_0CD4:
    %cm_jsl("Bomb Spread Charge Timer", action_select_common_address, #$0CD4)

ramwatch_common_samus_0CE2:
    %cm_jsl("Power Bomb X Position", action_select_common_address, #$0CE2)

ramwatch_common_samus_0CE4:
    %cm_jsl("Power Bomb Y Position", action_select_common_address, #$0CE4)

ramwatch_common_samus_0DEC:
    %cm_jsl("CF + Draygon Grab Counter", action_select_common_address, #$0DEC)

ramwatch_common_samus_18A8:
    %cm_jsl("I-Frame Timer", action_select_common_address, #$18A8)

ramwatch_common_samus_18AA:
    %cm_jsl("Knockback Timer", action_select_common_address, #$18AA)

ramwatch_common_samus_0AF4:
    %cm_jsl("Auto-Jump Timer", action_select_common_address, #$0AF4)

ramwatch_common_samus_0AF6:
    %cm_jsl("X Position", action_select_common_address, #$0AF6)

ramwatch_common_samus_0AF8:
    %cm_jsl("X Subposition", action_select_common_address, #$0AF8)

ramwatch_common_samus_0AFA:
    %cm_jsl("Y Position", action_select_common_address, #$0AFA)

ramwatch_common_samus_0AFC:
    %cm_jsl("Y Subposition", action_select_common_address, #$0AFC)

ramwatch_common_samus_0AFE:
    %cm_jsl("Hitbox X Radius", action_select_common_address, #$0AFE)

ramwatch_common_samus_0B00:
    %cm_jsl("Hitbox Y Radius", action_select_common_address, #$0B00)

ramwatch_common_samus_0B2C:
    %cm_jsl("Y Subspeed", action_select_common_address, #$0B2C)

ramwatch_common_samus_0B2E:
    %cm_jsl("Y Speed", action_select_common_address, #$0B2E)

ramwatch_common_samus_0B32:
    %cm_jsl("Y Subacceleration", action_select_common_address, #$0B32)

ramwatch_common_samus_0B34:
    %cm_jsl("Y Acceleration", action_select_common_address, #$0B34)

ramwatch_common_samus_0B36:
    %cm_jsl("Y Direction", action_select_common_address, #$0B36)

ramwatch_common_samus_0B3F:
    %cm_jsl("Speed Boost (Dash) Counter", action_select_common_address, #$0B3F)

ramwatch_common_samus_0B42:
    %cm_jsl("X Extra Run Speed", action_select_common_address, #$0B42)

ramwatch_common_samus_0B44:
    %cm_jsl("X Extra Run Subspeed", action_select_common_address, #$0B44)

ramwatch_common_samus_0B46:
    %cm_jsl("X Base Speed", action_select_common_address, #$0B46)

ramwatch_common_samus_0B48:
    %cm_jsl("X Base Subspeed", action_select_common_address, #$0B48)

ramwatch_common_samus_0CCC:
    %cm_jsl("Cooldown Timer", action_select_common_address, #$0CCC)

RAMWatchCommonMiscMenu:
    dw ramwatch_common_misc_05E5
    dw ramwatch_common_misc_079B
    dw ramwatch_common_misc_0998
    dw ramwatch_common_misc_09DA
    dw ramwatch_common_misc_09DC
    dw ramwatch_common_misc_09DE
    dw ramwatch_common_misc_09E0
    dw ramwatch_common_misc_0E50
    dw ramwatch_common_misc_0E52
    dw ramwatch_common_misc_1840
    dw ramwatch_common_misc_1842
    dw #$0000
    %cm_header("SELECT FROM MISC RAM")

ramwatch_common_misc_05E5:
    %cm_jsl("RNG Seed Value", action_select_common_address, #$05E5)

ramwatch_common_misc_079B:
    %cm_jsl("Room ID", action_select_common_address, #$079B)

ramwatch_common_misc_0998:
    %cm_jsl("Game State", action_select_common_address, #$0998)

ramwatch_common_misc_09DA:
    %cm_jsl("Game Time, Frames", action_select_common_address, #$09DA)

ramwatch_common_misc_09DC:
    %cm_jsl("Game Time, Seconds", action_select_common_address, #$09DC)

ramwatch_common_misc_09DE:
    %cm_jsl("Game Time, Minutes", action_select_common_address, #$09DE)

ramwatch_common_misc_09E0:
    %cm_jsl("Game Time, Hours", action_select_common_address, #$09E0)

ramwatch_common_misc_0E50:
    %cm_jsl("Room Enemies Killed", action_select_common_address, #$0E50)

ramwatch_common_misc_0E52:
    %cm_jsl("Enemy Kills to Unlock Door", action_select_common_address, #$0E50)

ramwatch_common_misc_1840:
    %cm_jsl("Earthquake Timer", action_select_common_address, #$1840)

ramwatch_common_misc_1842:
    %cm_jsl("Frame Counter", action_select_common_address, #$1842)

action_select_common_address:
{
    TYA : STA !ram_cm_watch_common_address
    LDY #RAMWatchCommonConfirm : %setmenubank()
    JML action_submenu
}

RAMWatchCommonConfirm:
    dw ramwatch_common_addr1
    dw ramwatch_common_addr2
    dw ramwatch_common_back
    dw #$0000
    %cm_header("SELECT HUD POSITION")

ramwatch_common_addr1:
    %cm_jsl("Address 1 (Left)", .routine, #$0000)
  .routine
    LDA !ram_cm_watch_common_address : STA !ram_watch_left
    LDA #$0000
    STA !ram_watch_left_index : STA !ram_watch_bank
    BRA ramwatch_common_addr_done

ramwatch_common_addr2:
    %cm_jsl("Address 2 (Right)", .routine, #$0000)
  .routine
    LDA !ram_cm_watch_common_address : STA !ram_watch_right
    LDA #$0000
    STA !ram_watch_right_index : STA !ram_watch_bank

ramwatch_common_addr_done:
    LDY #RAMWatchMenu
    LDA !ram_cm_stack_index : DEC #6
    STA !ram_cm_stack_index
    JSL cm_go_back
    JSL cm_calculate_max
    JSL ih_prepare_ram_watch_menu
    %sfxconfirm()
    RTL

ramwatch_common_back:
    %cm_jsl("Go Back", .routine, #0)
  .routine
    LDA !ram_cm_stack_index : DEC #4
    STA !ram_cm_stack_index
    JSL cm_go_back
    JSL cm_calculate_max
    RTL

ramwatch_enable:
    %cm_jsl("Turn On RAM Watch", .routine, #!IH_MODE_RAMWATCH_INDEX)
  .routine
    TYA : STA !sram_display_mode
    %sfxconfirm()
    RTL

ramwatch_bank:
    dw !ACTION_CHOICE
    dl #!ram_watch_bank
    dw #$0000
    db #$28, "Select Bank", #$FF
    db #$28, "        $7E", #$FF
    db #$28, "        $7F", #$FF
    db #$28, "       SRAM", #$FF
    db #$FF

ramwatch_write_mode:
    dw !ACTION_CHOICE
    dl #!ram_watch_write_mode
    dw #$0000
    db #$28, "Write Mode", #$FF
    db #$28, "16BIT HI+LO", #$FF
    db #$28, "    8BIT LO", #$FF
    db #$FF

ramwatch_left_hi:
    %cm_numfield_hex("Address 1 High", !ram_cm_watch_left_hi, 0, 255, 1, 8, #.routine)
  .routine
    XBA : ORA !ram_cm_watch_left_lo
    STA !ram_watch_left
    RTL

ramwatch_left_lo:
    %cm_numfield_hex("Address 1 Low", !ram_cm_watch_left_lo, 0, 255, 1, 8, #.routine)
  .routine
    XBA : ORA !ram_cm_watch_left_hi
    XBA : STA !ram_watch_left
    RTL

ramwatch_left_index_hi:
    %cm_numfield_hex("Offset 1 High", !ram_cm_watch_left_index_hi, 0, 255, 1, 8, #.routine)
  .routine
    XBA : ORA !ram_cm_watch_left_index_lo
    STA !ram_watch_left_index
    RTL

ramwatch_left_index_lo:
    %cm_numfield_hex("Offset 1 Low", !ram_cm_watch_left_index_lo, 0, 255, 1, 8, #.routine)
  .routine
    XBA : ORA !ram_cm_watch_left_index_hi
    XBA : STA !ram_watch_left_index
    RTL

ramwatch_left_edit_hi:
    %cm_numfield_hex("Value 1 High", !ram_cm_watch_edit_left_hi, 0, 255, 1, 8, #.routine)
  .routine
    XBA : ORA !ram_cm_watch_edit_left_lo
    STA !ram_watch_edit_left
    RTL

ramwatch_left_edit_lo:
    %cm_numfield_hex("Value 1 Low", !ram_cm_watch_edit_left_lo, 0, 255, 1, 8, #.routine)
  .routine
    XBA : ORA !ram_cm_watch_edit_left_hi
    XBA : STA !ram_watch_edit_left
    RTL

ramwatch_right_hi:
    %cm_numfield_hex("Address 2 High", !ram_cm_watch_right_hi, 0, 255, 1, 8, #.routine)
  .routine
    XBA : ORA !ram_cm_watch_right_lo
    STA !ram_watch_right
    RTL

ramwatch_right_lo:
    %cm_numfield_hex("Address 2 Low", !ram_cm_watch_right_lo, 0, 255, 1, 8, #.routine)
  .routine
    XBA : ORA !ram_cm_watch_right_hi
    XBA : STA !ram_watch_right
    RTL

ramwatch_right_index_hi:
    %cm_numfield_hex("Offset 2 High", !ram_cm_watch_right_index_hi, 0, 255, 1, 8, #.routine)
  .routine
    XBA : ORA !ram_cm_watch_right_index_lo
    STA !ram_watch_right_index
    RTL

ramwatch_right_index_lo:
    %cm_numfield_hex("Offset 2 Low", !ram_cm_watch_right_index_lo, 0, 255, 1, 8, #.routine)
  .routine
    XBA : ORA !ram_cm_watch_right_index_hi
    XBA : STA !ram_watch_right_index
    RTL

ramwatch_right_edit_hi:
    %cm_numfield_hex("Value 2 High", !ram_cm_watch_edit_right_hi, 0, 255, 1, 8, #.routine)
  .routine
    XBA : ORA !ram_cm_watch_edit_right_lo
    STA !ram_watch_edit_right
    RTL

ramwatch_right_edit_lo:
    %cm_numfield_hex("Value 2 Low", !ram_cm_watch_edit_right_lo, 0, 255, 1, 8, #.routine)
  .routine
    XBA : ORA !ram_cm_watch_edit_right_hi
    XBA : STA !ram_watch_edit_right
    RTL

ramwatch_execute_left:
    %cm_jsl("Write to Address 1", #action_ramwatch_edit_left, #$0000)

ramwatch_execute_right:
    %cm_jsl("Write to Address 2", #action_ramwatch_edit_right, #$0000)

ramwatch_lock_left:
    %cm_toggle("Lock Value 1", !ram_watch_edit_lock_left, #$0001, #action_HUD_ramwatch)

ramwatch_lock_right:
    %cm_toggle("Lock Value 2", !ram_watch_edit_lock_right, #$0001, #action_HUD_ramwatch)

action_ramwatch_edit_left:
{
    LDA !ram_watch_left : CLC : ADC !ram_watch_left_index : STA $C1
    LDA !ram_watch_bank : BEQ .bank7E
    CMP #$0001 : BEQ .bank7F
    LDA #$0070 : BRA +
  .bank7E
    LDA #$007E : BRA +
  .bank7F
    LDA #$007F
+   STA $C3
    LDA !ram_watch_write_mode : BEQ +
    %a8()
+   LDA !ram_watch_edit_left : STA [$C1]
    %a16()
    LDA #!IH_MODE_RAMWATCH_INDEX : STA !sram_display_mode
    %sfxconfirm()
    RTL
}

action_ramwatch_edit_right:
{
    LDA !ram_watch_right : CLC : ADC !ram_watch_right_index : STA $C1
    LDA !ram_watch_bank : BEQ .bank7E
    CMP #$0001 : BEQ .bank7F
    LDA #$0070 : BRA +
  .bank7E
    LDA #$007E : BRA +
  .bank7F
    LDA #$007F
+   STA $C3
    LDA !ram_watch_write_mode : BEQ +
    %a8()
+   LDA !ram_watch_edit_right : STA [$C1]
    %a16()
    LDA #!IH_MODE_RAMWATCH_INDEX : STA !sram_display_mode
    %sfxconfirm()
    RTL
}

action_HUD_ramwatch:
{
    LDA #!IH_MODE_RAMWATCH_INDEX : STA !sram_display_mode
    RTL
}

