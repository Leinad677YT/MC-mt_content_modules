## ASSIGN ID
    execute store result score @s zl.armor_editor.editor_id run scoreboard players get #zl.0 zl.armor_editor.editor_id
##

## SET DATA
    tag @s add zl.armor_editor.editor
    tag @s add zl.armor_editor.editor.trim_pattern
    tag @s add zl.armor_editor.editor.trim_pattern.prev_display
##

## DYE DISPLAYS
    item replace entity @s container.0 with minecraft:structure_void
    data merge entity @s { \
        "transformation": {scale:[.5,.5,.5],translation:[.0,-.0125,-.03]}, \
        "billboard": "center", \
        "interpolation_duration": 5, \
        "teleport_duration": 5, \
        "start_interpolation": 0 \
    }
##

## REPOSITION
    tp @s ~ ~ ~ ~ ~
##
