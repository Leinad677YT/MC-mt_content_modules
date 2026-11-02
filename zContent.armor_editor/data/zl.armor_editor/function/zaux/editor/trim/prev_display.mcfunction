## ASSIGN ID
    execute store result score @s zl.armor_editor.editor_id run scoreboard players get #zl.0 zl.armor_editor.editor_id
##

## SET DATA
    tag @s add zl.armor_editor.editor
    tag @s add zl.armor_editor.editor.trim.prev
    tag @s add zl.armor_editor.editor.trim.prev_display
##

## DISPLAY DATA
    data merge entity @s { \
        "text": {text:"<"}, \
        "billboard": "vertical" \
    }
##
