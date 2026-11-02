## ASSIGN ID
    execute store result score @s zl.armor_editor.editor_id run scoreboard players get #zl.0 zl.armor_editor.editor_id
##

## SET DATA
    tag @s add zl.armor_editor.editor
    tag @s add zl.armor_editor.editor.selection
    tag @s add zl.armor_editor.editor.selection.selected
##

## DISPLAY
    data merge entity @s {interpolation_duration:5,teleport_duration:5, item_display:ground,transformation:{scale:[3,3,3]}}
##

## REPOSITION
    tp @s ~ ~ ~ ~ ~
##
