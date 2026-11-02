## ASSIGN ID
    execute store result score @s zl.armor_editor.editor_id run scoreboard players get #zl.0 zl.armor_editor.editor_id
##

## SET DATA
    tag @s add zl.armor_editor.editor
    tag @s add zl.armor_editor.editor.selection
    tag @s add zl.armor_editor.editor.selection.helmet
##

## DISPLAY
    scoreboard players set @s zl.armor_editor.editor_slot 4
    data merge entity @s {width:0.5, height:0.5}
##

## REPOSITION
    tp @s ~ ~ ~ ~ ~
##
