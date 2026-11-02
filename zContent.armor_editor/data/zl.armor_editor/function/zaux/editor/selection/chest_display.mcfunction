## ASSIGN ID
    execute store result score @s zl.armor_editor.editor_id run scoreboard players get #zl.0 zl.armor_editor.editor_id
##

## SET DATA
    tag @s add zl.armor_editor.editor
    tag @s add zl.armor_editor.editor.selection
    tag @s add zl.armor_editor.editor.selection.chest
##

## DISPLAY
    scoreboard players set @s zl.armor_editor.editor_slot 3
    data merge entity @s {interpolation_duration:5,teleport_duration:5, item_display:ground,transformation:{scale:[2,2,2]}}
##

## REPOSITION
    tp @s ~ ~ ~ ~ ~
##
