; ---------------
; RAM Watch Menus
; ---------------

ih_prepare_ram_watch_menu:
{
    TDC : STA !ram_cm_watch_enemy_property : STA !ram_cm_watch_enemy_index
    STA !ram_cm_watch_enemy_side

    ; See if we can better initialize enemy properties and indices
    LDA !ram_watch_left : CMP #!ENEMY_ID : BCC .checkright
    CMP #(!ENEMY_ID+$800) : BCS .checkright
    BRA .found_enemy_ram

  .checkright
    LDA !ram_watch_right : CMP #!ENEMY_ID : BCC .submenu
    CMP #(!ENEMY_ID+$800) : BCS .submenu

  .found_enemy_ram
    SEC : SBC #!ENEMY_ID : STA !ram_cm_watch_enemy_index
    AND #$003E : LSR : STA !ram_cm_watch_enemy_property
    LDA !ram_cm_watch_enemy_index : AND #$07C0
    ASL #2 : XBA : STA !ram_cm_watch_enemy_index

  .submenu
    %setmenubank()
    JML action_submenu
}

RAMWatchMenu:
    dw ramwatch_enable
    dw ramwatch_bank
    dw ramwatch_write_mode
    dw ramwatch_goto_common
    dw #$FFFF
    dw ramwatch_left_address
    dw ramwatch_left_index
    dw ramwatch_left_value
    dw ramwatch_execute_left
    dw ramwatch_lock_left
    dw #$FFFF
    dw ramwatch_right_address
    dw ramwatch_right_index
    dw ramwatch_right_value
    dw ramwatch_execute_right
    dw ramwatch_lock_right
    dw #$FFFF
    dw ramwatch_display
    dw #$0000
    %cm_header("READ AND WRITE TO MEMORY")

ramwatch_goto_common:
    %cm_submenu("Select Common Addresses", #RAMWatchCommonMenu)

RAMWatchCommonMenu:
    dw ramwatch_common_enemy
    dw ramwatch_common_samus1
    dw ramwatch_common_samus2
    dw ramwatch_common_plm
    dw ramwatch_common_proj
    dw ramwatch_common_misc
    dw #$0000
    %cm_header("CHOOSE RAM CATEGORY")

ramwatch_common_enemy:
    %cm_submenu("Enemy Addresses", #RAMWatchCommonEnemyMenu)

ramwatch_common_samus1:
    %cm_submenu("Samus Addresses 1", #RAMWatchCommonSamusMenu1)

ramwatch_common_samus2:
    %cm_submenu("Samus Addresses 2", #RAMWatchCommonSamusMenu2)

ramwatch_common_plm:
    %cm_submenu("PLM Addresses", #RAMWatchCommonPlmMenu)

ramwatch_common_proj:
    %cm_submenu("Projectile Addresses", #RAMWatchCommonProjMenu)

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
    db #$28, "  LEFT ADDR", #$FF
    db #$28, " RIGHT ADDR", #$FF
    db #$FF

ramwatch_common_enemy_apply:
    %cm_jsl("Apply to RAM Watch", .routine, #$0000)
  .routine
    LDA !ram_cm_watch_enemy_index
    XBA : LSR #2 : TAX ; index * 40h = X

    LDA !ram_cm_watch_enemy_side : BEQ .left

    TXA : STA !ram_watch_right_index
    LDA !ram_cm_watch_enemy_property : ASL
    CLC : ADC #!ENEMY_ID : STA !ram_watch_right
    BRA .done

  .left
    TXA : STA !ram_watch_left_index
    LDA !ram_cm_watch_enemy_property : ASL
    CLC : ADC #!ENEMY_ID : STA !ram_watch_left

  .done
    LDA #$007E : STA !ram_watch_bank
    LDY #RAMWatchMenu
    LDA !MENU_STACK_INDEX : SEC : SBC #$0004 : STA !MENU_STACK_INDEX
    JSL cm_previous_menu
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
    dw ramwatch_common_samus_0B2D
    dw ramwatch_common_samus_0B2E
    dw ramwatch_common_samus_0B32
    dw ramwatch_common_samus_0B34
    dw ramwatch_common_samus_0B36
    dw ramwatch_common_samus_0B3F
    dw ramwatch_common_samus_0B42
    dw ramwatch_common_samus_0B44
    dw ramwatch_common_samus_0B46
    dw ramwatch_common_samus_0B48
    dw ramwatch_common_samus_0A68
    dw ramwatch_common_samus_0ACC
    dw ramwatch_common_samus_0CCC
    dw #$0000
    %cm_header("SELECT FROM SAMUS RAM")

ramwatch_common_samus_09C2:
    %cm_jsl("Samus Energy", action_select_common_address, #!SAMUS_HP)

ramwatch_common_samus_09A2:
    %cm_jsl("Equipped Items", action_select_common_address, #!SAMUS_ITEMS_EQUIPPED)

ramwatch_common_samus_09A4:
    %cm_jsl("Collected Items", action_select_common_address, #!SAMUS_ITEMS_COLLECTED)

ramwatch_common_samus_09A6:
    %cm_jsl("Equipped Beams", action_select_common_address, #!SAMUS_BEAMS_EQUIPPED)

ramwatch_common_samus_09A8:
    %cm_jsl("Collected Beams", action_select_common_address, #!SAMUS_BEAMS_COLLECTED)

ramwatch_common_samus_0A1C:
    %cm_jsl("Pose", action_select_common_address, #!SAMUS_POSE)

ramwatch_common_samus_0A1E:
    %cm_jsl("Pose X Direction", action_select_common_address, #!SAMUS_POSE_DIRECTION)

ramwatch_common_samus_0A1F:
    %cm_jsl("Movement Type", action_select_common_address, #!SAMUS_MOVEMENT_TYPE)

ramwatch_common_samus_0A4C:
    %cm_jsl("Subunit Energy", action_select_common_address, #!SAMUS_SUBUNIT_ENERGY)

ramwatch_common_samus_0A94:
    %cm_jsl("Animation Frame Timer", action_select_common_address, #!SAMUS_ANIMATION_TIMER)

ramwatch_common_samus_0A96:
    %cm_jsl("Animation Frame", action_select_common_address, #!SAMUS_ANIMATION_FRAME)

ramwatch_common_samus_0AA2:
    %cm_jsl("Shinespark Delay Timer", action_select_common_address, #!SAMUS_SHINESPARK_DELAY_TIMER)

ramwatch_common_samus_0CCE:
    %cm_jsl("Projectile Counter", action_select_common_address, #!SAMUS_PROJECTILE_TIMER)

ramwatch_common_samus_0CD2:
    %cm_jsl("Bomb Counter", action_select_common_address, #!SAMUS_BOMB_COUNTER)

ramwatch_common_samus_0CD4:
    %cm_jsl("Bomb Spread Charge Timer", action_select_common_address, #!SAMUS_BOMB_SPREAD_CHARGE_TIMER)

ramwatch_common_samus_0CE2:
    %cm_jsl("Power Bomb X Position", action_select_common_address, #!SAMUS_POWER_BOMB_X)

ramwatch_common_samus_0CE4:
    %cm_jsl("Power Bomb Y Position", action_select_common_address, #!SAMUS_POWER_BOMB_Y)

ramwatch_common_samus_0DEC:
    %cm_jsl("CF + Draygon Grab Counter", action_select_common_address, #$0DEC)

ramwatch_common_samus_18A8:
    %cm_jsl("I-Frame Timer", action_select_common_address, #!SAMUS_IFRAME_TIMER)

ramwatch_common_samus_18AA:
    %cm_jsl("Knockback Timer", action_select_common_address, #!SAMUS_KNOCKBACK_TIMER)

ramwatch_common_samus_0AF4:
    %cm_jsl("Auto-Jump Timer", action_select_common_address, #!SAMUS_AUTO_JUMP_TIMER)

ramwatch_common_samus_0AF6:
    %cm_jsl("X Position", action_select_common_address, #!SAMUS_X)

ramwatch_common_samus_0AF8:
    %cm_jsl("X Subposition", action_select_common_address, #!SAMUS_X_SUBPX)

ramwatch_common_samus_0AFA:
    %cm_jsl("Y Position", action_select_common_address, #!SAMUS_Y)

ramwatch_common_samus_0AFC:
    %cm_jsl("Y Subposition", action_select_common_address, #!SAMUS_Y_SUBPX)

ramwatch_common_samus_0AFE:
    %cm_jsl("Hitbox X Radius", action_select_common_address, #!SAMUS_X_RADIUS)

ramwatch_common_samus_0B00:
    %cm_jsl("Hitbox Y Radius", action_select_common_address, #!SAMUS_Y_RADIUS)

ramwatch_common_samus_0B2C:
    %cm_jsl("Y Subspeed", action_select_common_address, #!SAMUS_Y_SUBSPEED)

ramwatch_common_samus_0B2D:
    %cm_jsl("Y Speed Combined", action_select_common_address, #!SAMUS_Y_SPEEDCOMBINED)

ramwatch_common_samus_0B2E:
    %cm_jsl("Y Speed", action_select_common_address, #!SAMUS_Y_SPEED)

ramwatch_common_samus_0B32:
    %cm_jsl("Y Subacceleration", action_select_common_address, #!SAMUS_Y_SUBACCELERATION)

ramwatch_common_samus_0B34:
    %cm_jsl("Y Acceleration", action_select_common_address, #!SAMUS_Y_ACCELERATION)

ramwatch_common_samus_0B36:
    %cm_jsl("Y Direction", action_select_common_address, #!SAMUS_Y_DIRECTION)

ramwatch_common_samus_0B3F:
    %cm_jsl("Speed Boost (Dash) Counter", action_select_common_address, #!SAMUS_DASH_COUNTER)

ramwatch_common_samus_0B42:
    %cm_jsl("X Extra Run Speed", action_select_common_address, #!SAMUS_X_RUNSPEED)

ramwatch_common_samus_0B44:
    %cm_jsl("X Extra Run Subspeed", action_select_common_address, #!SAMUS_X_SUBRUNSPEED)

ramwatch_common_samus_0B46:
    %cm_jsl("X Base Speed", action_select_common_address, #!SAMUS_X_MOMENTUM)

ramwatch_common_samus_0B48:
    %cm_jsl("X Base Subspeed", action_select_common_address, #!SAMUS_X_SUBMOMENTUM)

ramwatch_common_samus_0A68:
    %cm_jsl("Shine Timer", action_select_common_address, #!SAMUS_SHINE_TIMER)

ramwatch_common_samus_0ACC:
    %cm_jsl("Shine Timer Type", action_select_common_address, #!SAMUS_SHINE_TIMER_TYPE)

ramwatch_common_samus_0CCC:
    %cm_jsl("Cooldown Timer", action_select_common_address, #!SAMUS_COOLDOWN)

RAMWatchCommonPlmMenu:
    dw ramwatch_common_plm_1C23
    dw ramwatch_common_plm_1C27
    dw ramwatch_common_plm_1C29
    dw ramwatch_common_plm_1C2B
    dw ramwatch_common_plm_1C85
    dw ramwatch_common_plm_1CD5
    dw ramwatch_common_plm_1D25
    dw ramwatch_common_plm_1D75
    dw ramwatch_common_plm_1DC5
    dw ramwatch_common_plm_1E15
    dw ramwatch_common_plm_1E65
    dw #$0000
    %cm_header("SELECT FROM PLM RAM")

ramwatch_common_plm_1C23:
    %cm_jsl("PLM Flag", action_select_common_address, #$1C23)

ramwatch_common_plm_1C27:
    %cm_jsl("Current ID", action_select_common_address, #$1C27)

ramwatch_common_plm_1C29:
    %cm_jsl("Current X", action_select_common_address, #$1C29)

ramwatch_common_plm_1C2B:
    %cm_jsl("Current Y", action_select_common_address, #$1C2B)

ramwatch_common_plm_1C85:
    %cm_jsl("Last ID", action_select_common_address, #$1C85)

ramwatch_common_plm_1CD5:
    %cm_jsl("Last Block", action_select_common_address, #$1CD5)

ramwatch_common_plm_1D25:
    %cm_jsl("Last Preinstruction", action_select_common_address, #$1D25)

ramwatch_common_plm_1D75:
    %cm_jsl("Last Instruction", action_select_common_address, #$1D75)

ramwatch_common_plm_1DC5:
    %cm_jsl("Last Timer", action_select_common_address, #$1DC5)

ramwatch_common_plm_1E15:
    %cm_jsl("Last Room Argument", action_select_common_address, #$1E15)

ramwatch_common_plm_1E65:
    %cm_jsl("Last Variable", action_select_common_address, #$1E65)

RAMWatchCommonProjMenu:
    dw ramwatch_common_proj_198D
    dw ramwatch_common_proj_1991
    dw ramwatch_common_proj_1993
    dw ramwatch_common_proj_19B9
    dw ramwatch_common_proj_19DD
    dw ramwatch_common_proj_1A01
    dw ramwatch_common_proj_1A25
    dw ramwatch_common_proj_1A49
    dw ramwatch_common_proj_1A6D
    dw ramwatch_common_proj_1A91
    dw ramwatch_common_proj_1AB5
    dw ramwatch_common_proj_1AD9
    dw ramwatch_common_proj_1AFD
    dw ramwatch_common_proj_1B21
    dw ramwatch_common_proj_1B45
    dw ramwatch_common_proj_1B69
    dw ramwatch_common_proj_1B8D
    dw ramwatch_common_proj_1BB1
    dw ramwatch_common_proj_1BD5
    dw ramwatch_common_proj_1BF9
    dw ramwatch_common_proj_1C1D
    dw #$0000
    %cm_header("SELECT FROM PROJECTILE RAM")

ramwatch_common_proj_198D:
    %cm_jsl("Projectiles Flag", action_select_common_address, #$198D)

ramwatch_common_proj_1991:
    %cm_jsl("Current Index", action_select_common_address, #$1991)

ramwatch_common_proj_1993:
    %cm_jsl("Current Init Parameter", action_select_common_address, #$1993)

ramwatch_common_proj_19B9:
    %cm_jsl("Last ID", action_select_common_address, #$19B9)

ramwatch_common_proj_19DD:
    %cm_jsl("Last Graphics Index", action_select_common_address, #$19DD)

ramwatch_common_proj_1A01:
    %cm_jsl("Last Timer", action_select_common_address, #$1A01)

ramwatch_common_proj_1A25:
    %cm_jsl("Last Preinstruction", action_select_common_address, #$1A25)

ramwatch_common_proj_1A49:
    %cm_jsl("Last Sub X", action_select_common_address, #$1A49)

ramwatch_common_proj_1A6D:
    %cm_jsl("Last X", action_select_common_address, #$1A6D)

ramwatch_common_proj_1A91:
    %cm_jsl("Last Sub Y", action_select_common_address, #$1A91)

ramwatch_common_proj_1AB5:
    %cm_jsl("Last Y", action_select_common_address, #$1AB5)

ramwatch_common_proj_1AD9:
    %cm_jsl("Last X Velocity", action_select_common_address, #$1AD9)

ramwatch_common_proj_1AFD:
    %cm_jsl("Last Y Velocity", action_select_common_address, #$1AFD)

ramwatch_common_proj_1B21:
    %cm_jsl("Last Variable 1", action_select_common_address, #$1B21)

ramwatch_common_proj_1B45:
    %cm_jsl("Last Variable 2", action_select_common_address, #$1B45)

ramwatch_common_proj_1B69:
    %cm_jsl("Last Instruction", action_select_common_address, #$1B69)

ramwatch_common_proj_1B8D:
    %cm_jsl("Last Spritemap", action_select_common_address, #$1B8D)

ramwatch_common_proj_1BB1:
    %cm_jsl("Last Instruction Timer", action_select_common_address, #$1BB1)

ramwatch_common_proj_1BD5:
    %cm_jsl("Last Radius", action_select_common_address, #$1BD5)

ramwatch_common_proj_1BF9:
    %cm_jsl("Last Properties", action_select_common_address, #$1BF9)

ramwatch_common_proj_1C1D:
    %cm_jsl("Last Type", action_select_common_address, #$1C1D)

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
    dw #$0000
    %cm_header("SELECT FROM MISC RAM")

ramwatch_common_misc_05E5:
    %cm_jsl("RNG Seed Value", action_select_common_address, #!CACHED_RANDOM_NUMBER)

ramwatch_common_misc_079B:
    %cm_jsl("Room ID", action_select_common_address, #!ROOM_ID)

ramwatch_common_misc_0998:
    %cm_jsl("Game State", action_select_common_address, #!GAMEMODE)

ramwatch_common_misc_09DA:
    %cm_jsl("Game Time, Frames", action_select_common_address, #!IGT_FRAMES)

ramwatch_common_misc_09DC:
    %cm_jsl("Game Time, Seconds", action_select_common_address, #!IGT_SECONDS)

ramwatch_common_misc_09DE:
    %cm_jsl("Game Time, Minutes", action_select_common_address, #!IGT_MINUTES)

ramwatch_common_misc_09E0:
    %cm_jsl("Game Time, Hours", action_select_common_address, #!IGT_HOURS)

ramwatch_common_misc_0E50:
    %cm_jsl("Room Enemies Killed", action_select_common_address, #!ENEMY_KILLS_COUNTER)

ramwatch_common_misc_0E52:
    %cm_jsl("Enemy Kills to Unlock Door", action_select_common_address, #!ENEMY_KILLS_UNLOCK)

ramwatch_common_misc_1840:
    %cm_jsl("Earthquake Timer", action_select_common_address, #!EARTHQUAKE_TIMER)

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
    TDC : STA !ram_watch_left_index : STA !ram_watch_bank
    BRA ramwatch_common_addr_done

ramwatch_common_addr2:
    %cm_jsl("Address 2 (Right)", .routine, #$0000)
  .routine
    LDA !ram_cm_watch_common_address : STA !ram_watch_right
    TDC : STA !ram_watch_right_index : STA !ram_watch_bank

ramwatch_common_addr_done:
    LDY #RAMWatchMenu
    LDA !MENU_STACK_INDEX : SEC : SBC #$0006 : STA !MENU_STACK_INDEX
    JSL cm_previous_menu
    JSL ih_prepare_ram_watch_menu
    %sfxconfirm()
    RTL

ramwatch_common_back:
    %cm_jsl("Go Back", .routine, #0)
  .routine
    LDA !MENU_STACK_INDEX : SEC : SBC #$0004 : STA !MENU_STACK_INDEX
    JSL cm_previous_menu
    RTL

ramwatch_enable:
    %cm_jsl("Turn On RAM Watch", #action_HUD_ramwatch, #$0000)

ramwatch_bank:
    %cm_numfield_hex("Select Bank", !ram_watch_bank, 0, 255, 1, 4, #0)

ramwatch_write_mode:
    dw !ACTION_CHOICE
    dl #!ram_watch_write_mode
    dw #$0000
    db #$28, "Write Mode", #$FF
    db #$28, "16BIT HI+LO", #$FF
    db #$28, "    8BIT LO", #$FF
    db #$FF

ramwatch_left_address:
    %cm_numfield_hex_word("Left Address", !ram_watch_left, #$FFFF, #0)

ramwatch_left_index:
    %cm_numfield_hex_word("Left Offset", !ram_watch_left_index, #$FFFF, #0)

ramwatch_left_value:
    %cm_numfield_hex_word("Left Value", !ram_watch_edit_left, #$FFFF, #0)

ramwatch_right_address:
    %cm_numfield_hex_word("Right Address", !ram_watch_right, #$FFFF, #0)

ramwatch_right_index:
    %cm_numfield_hex_word("Right Offset", !ram_watch_right_index, #$FFFF, #0)

ramwatch_right_value:
    %cm_numfield_hex_word("Right Value", !ram_watch_edit_right, #$FFFF, #0)

ramwatch_execute_left:
    %cm_jsl("Write to Left Address", #.routine, #$0000)
  .routine
    LDA !ram_watch_left : CLC : ADC !ram_watch_left_index : STA $C1
    LDA !ram_watch_bank : STA $C3
    LDA !ram_watch_write_mode : BEQ .setValue
    %a8()
  .setValue
    LDA !ram_watch_edit_left : STA [$C1]
    %a16()
    BRA action_HUD_ramwatch

ramwatch_execute_right:
    %cm_jsl("Write to Right Address", #.routine, #$0000)
  .routine
    LDA !ram_watch_right : CLC : ADC !ram_watch_right_index : STA $C1
    LDA !ram_watch_bank : STA $C3
    LDA !ram_watch_write_mode : BEQ .setValue
    %a8()
  .setValue
    LDA !ram_watch_edit_right : STA [$C1]
    %a16()
    BRA action_HUD_ramwatch

ramwatch_lock_left:
    %cm_toggle("Lock Left Value", !ram_watch_edit_lock_left, #$01, #action_HUD_ramwatch)

ramwatch_lock_right:
    %cm_toggle("Lock Right Value", !ram_watch_edit_lock_right, #$01, #action_HUD_ramwatch)

action_HUD_ramwatch:
{
    LDA !sram_display_mode : CMP !IH_MODE_ROOMSTRAT_INDEX : BNE .notSuperHUD
    LDA !sram_room_strat : BEQ .superHUD
  .notSuperHUD
    LDA !IH_MODE_RAMWATCH_INDEX : STA !sram_display_mode
    %sfxconfirm()
    JML init_print_segment_timer

  .superHUD
    LDA !IH_SUPERHUD_RAMWATCH_BOTTOM_INDEX : STA !sram_superhud_bottom
    %sfxconfirm()
    JML init_print_segment_timer
}

ramwatch_display:
    dw !ACTION_RAM_WATCH ; menu action index
table ../resources/header.tbl
    db #$28, "      LEFT      RIGHT", #$FF
table ../resources/normal.tbl

