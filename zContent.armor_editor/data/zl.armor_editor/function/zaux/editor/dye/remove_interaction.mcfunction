## ASSIGN ID
    execute store result score @s zl.armor_editor.editor_id run scoreboard players get #zl.0 zl.armor_editor.editor_id
##

## SET DATA
    tag @s add zl.armor_editor.editor
    tag @s add zl.armor_editor.editor.dye_remove
    tag @s add zl.armor_editor.editor.dye_remove.interaction
##

## INTERACTION DATA
    scoreboard players set @s zl.armor_editor.editor_slot -2
    data merge entity @s { \
        "height": 0.25, \
        "width": 0.25 \
    }
##
