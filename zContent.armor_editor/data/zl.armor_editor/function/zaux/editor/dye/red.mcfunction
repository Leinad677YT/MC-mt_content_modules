## ASSIGN ID
    execute store result score @s zl.armor_editor.editor_id run scoreboard players get #zl.0 zl.armor_editor.editor_id
##

## SET DATA
    tag @s add zl.armor_editor.editor
    tag @s add zl.armor_editor.editor.dye_red
##

## DYE DISPLAYS
    item replace entity @s container.0 with minecraft:red_dye
    data merge entity @s { \
        "transformation": {scale:[.5,.5,.5],translation:[-.1,-.0125,.03]}, \
        "billboard": "center", \
        "interpolation_duration": 5, \
        "teleport_duration": 5, \
        "start_interpolation": 0 \
    }
##

## REPOSITION
    tp @s ~ ~ ~ ~ ~
##
