## ASSIGN ID
    execute store result score @s zl.armor_editor.editor_id run scoreboard players get #zl.0 zl.armor_editor.editor_id
##

## SET DATA
    tag @s add zl.armor_editor.editor
    tag @s add zl.armor_editor.editor.ench_table
    tag @s add zl.armor_editor.editor.ench_table.interaction
##

## INTERACTION DATA
    scoreboard players set @s zl.armor_editor.editor_slot -10
    data merge entity @s { \
        "height": 0.475, \
        "width": 0.6 \
    }
##
