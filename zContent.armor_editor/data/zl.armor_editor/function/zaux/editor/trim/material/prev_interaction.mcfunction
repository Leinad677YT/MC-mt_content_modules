## ASSIGN ID
    execute store result score @s zl.armor_editor.editor_id run scoreboard players get #zl.0 zl.armor_editor.editor_id
##

## SET DATA
    tag @s add zl.armor_editor.editor
    tag @s add zl.armor_editor.editor.trim_pattern
    tag @s add zl.armor_editor.editor.trim_pattern.prev
    tag @s add zl.armor_editor.editor.trim_pattern.prev.interaction
##

## INTERACTION DATA
    scoreboard players set @s zl.armor_editor.editor_slot -5
    data merge entity @s { \
        "height": 0.25, \
        "width": 0.25 \
    }
##
