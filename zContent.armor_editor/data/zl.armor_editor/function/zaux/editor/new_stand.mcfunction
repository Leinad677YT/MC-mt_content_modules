## ASSIGN ID
    execute store result score @s zl.armor_editor.editor_id store result storage zl.armor_editor:temp new_editor.id int 1 run scoreboard players add #zl.0 zl.armor_editor.editor_id 1
##

## SET DATA
    tag @s add zl.armor_editor.editor
    tag @s add zl.armor_editor.editor.stand
    scoreboard players set @s zl.armor_editor.editor_slot 1
    data modify storage zl.armor_editor:temp new_editor.slot set value "armor.feet"
##

## ARMORSTAND SPECIFIC DATA
    data merge entity @s { \
        "Invulnerable": true, \
        "NoBasePlate": true, \
        "ShowArms": true, \
        "NoGravity": true, \
        "Silent": true \
    }
##

## REPOSITION
    tp @s ~ ~ ~ ~ ~
##
