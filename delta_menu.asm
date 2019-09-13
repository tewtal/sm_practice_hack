PresetsMenu:
    dw #presets_goto_ceres
    dw #presets_goto_bombs
    dw #$0000
    %cm_header("PRESETS")

presets_goto_ceres:
    %cm_submenu("Ceres", #presets_submenu_ceres)

presets_goto_bombs:
    %cm_submenu("Bombs", #presets_submenu_bombs)

presets_submenu_ceres:
    dw #presets_ceres_elevator
    dw #presets_ceres_ridley
    dw #presets_ceres_last_3_screens
    dw #$0000
    %cm_header("CERES")

presets_submenu_bombs:
    dw #presets_bombs_ship
    dw #presets_bombs_morph
    dw #presets_bombs_pit_backtrack
    dw #presets_bombs_climb
    dw #presets_bombs_parlor
    dw #presets_bombs_bomb_torizo
    dw #$0000
    %cm_header("BOMBS")

; Ceres
presets_ceres_elevator:
    %cm_delta("Elevator", #delta_ceres_elevator)

presets_ceres_ridley:
    %cm_delta("Ridley", #delta_ceres_ridley)

presets_ceres_last_3_screens:
    %cm_delta("Last 3 screens", #delta_ceres_last_3_screens)


; Bombs
presets_bombs_ship:
    %cm_delta("Ship", #delta_bombs_ship)

presets_bombs_morph:
    %cm_delta("Morph", #delta_bombs_morph)

presets_bombs_pit_backtrack:
    %cm_delta("Pit backtrack", #delta_bombs_pit_backtrack)

presets_bombs_climb:
    %cm_delta("Climb", #delta_bombs_climb)

presets_bombs_parlor:
    %cm_delta("Parlor", #delta_bombs_parlor)

presets_bombs_bomb_torizo:
    %cm_delta("Bomb Torizo", #delta_bombs_bomb_torizo)


