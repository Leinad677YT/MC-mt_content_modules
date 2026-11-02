## ASSIGN ID
    execute store result score @s zl.armor_editor.editor_id run scoreboard players get #zl.0 zl.armor_editor.editor_id
##

## SET DATA
    tag @s add zl.armor_editor.editor
    tag @s add zl.armor_editor.editor.anvil
    tag @s add zl.armor_editor.editor.anvil.display
##

## DYE DISPLAYS
    item replace entity @s container.0 with minecraft:anvil
    data merge entity @s { \
        "transformation": {scale:[.6,.6,.6]}, \
        "billboard": "fixed", \
        "interpolation_duration": 5, \
        "teleport_duration": 5, \
        "start_interpolation": 0 \
    }
##

## REPOSITION
    tp @s ~ ~ ~ ~90 ~
##
