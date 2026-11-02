## UPDATE COLOR
    scoreboard players add @s zl.armor_editor.rgb.blue 1
    execute if score @s zl.armor_editor.rgb.blue matches 256.. run advancement revoke @s only zl.armor_editor:dye/more_blue
    execute if score @s zl.armor_editor.rgb.blue matches 256.. run return run scoreboard players set @s zl.armor_editor.rgb.blue 255
##

## GET EDITOR ID
    scoreboard players operation #zl.sync.temp zl.armor_editor.editor_id = @s zl.armor_editor.editor_id
##

## GET SLOT
    data modify storage zl.armor_editor:temp rgb.slot set value "container.0"
    execute if score @s zl.armor_editor.editor_slot matches 1 run data modify storage zl.armor_editor:temp rgb.slot set value "armor.feet"
    execute if score @s zl.armor_editor.editor_slot matches 2 run data modify storage zl.armor_editor:temp rgb.slot set value "armor.legs"
    execute if score @s zl.armor_editor.editor_slot matches 3 run data modify storage zl.armor_editor:temp rgb.slot set value "armor.chest"
    execute if score @s zl.armor_editor.editor_slot matches 4 run data modify storage zl.armor_editor:temp rgb.slot set value "armor.head"
    execute if score @s zl.armor_editor.editor_slot matches 5 run data modify storage zl.armor_editor:temp rgb.slot set value "weapon.mainhand"
    execute if score @s zl.armor_editor.editor_slot matches 6 run data modify storage zl.armor_editor:temp rgb.slot set value "weapon.offhand"
##

## UPDATE DYE
    scoreboard players reset @s zl.armor_editor.rgb
    function zl.armor_editor:edit/dye/calculate_rgb
    function zl.armor_editor:edit/dye/update with storage zl.armor_editor:temp rgb
##

## REENABLE
    data remove storage zl.armor_editor:temp rgb
    advancement revoke @s only zl.armor_editor:dye/more_blue
##