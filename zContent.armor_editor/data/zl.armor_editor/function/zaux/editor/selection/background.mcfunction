## ASSIGN ID
    execute store result score @s zl.armor_editor.editor_id run scoreboard players get #zl.0 zl.armor_editor.editor_id
##

## SET DATA
    tag @s add zl.armor_editor.editor
    tag @s add zl.armor_editor.editor.selection
    tag @s add zl.armor_editor.editor.selection.background
##

## DISPLAY
    item replace entity @s container.0 with glass
    data merge entity @s {transformation:{scale:[2.6,2.1,0.325]}}
##

## REPOSITION
    tp @s ~ ~ ~ ~ ~
##
