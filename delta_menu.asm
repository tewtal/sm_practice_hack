PresetsMenu:
dw #$0000, #load_menu, #seg_ceres, #str_seg_ceres
dw #$0000, #load_menu, #seg_bombs, #str_seg_bombs
dw #$FFFF

seg_ceres:
dw #$0000, #load_delta, #delta_ceres_elevator, #str_step_ceres_elevator
dw #$0000, #load_delta, #delta_ceres_ridley, #str_step_ceres_ridley
dw #$0000, #load_delta, #delta_ceres_last_3_screens, #str_step_ceres_last_3_screens
dw #$FFFF

seg_bombs:
dw #$0000, #load_delta, #delta_bombs_ship, #str_step_bombs_ship
dw #$0000, #load_delta, #delta_bombs_morph, #str_step_bombs_morph
dw #$0000, #load_delta, #delta_bombs_pit_backtrack, #str_step_bombs_pit_backtrack
dw #$0000, #load_delta, #delta_bombs_climb, #str_step_bombs_climb
dw #$0000, #load_delta, #delta_bombs_parlor, #str_step_bombs_parlor
dw #$0000, #load_delta, #delta_bombs_bomb_torizo, #str_step_bombs_bomb_torizo
dw #$FFFF

str_seg_ceres: db "CERES", #$00
str_step_ceres_elevator: db "ELEVATOR", #$00
str_step_ceres_ridley: db "RIDLEY", #$00
str_step_ceres_last_3_screens: db "LAST 3 SCREENS", #$00

str_seg_bombs: db "BOMBS", #$00
str_step_bombs_ship: db "SHIP", #$00
str_step_bombs_morph: db "MORPH", #$00
str_step_bombs_pit_backtrack: db "PIT BACKTRACK", #$00
str_step_bombs_climb: db "CLIMB", #$00
str_step_bombs_parlor: db "PARLOR", #$00
str_step_bombs_bomb_torizo: db "BOMB TORIZO", #$00
