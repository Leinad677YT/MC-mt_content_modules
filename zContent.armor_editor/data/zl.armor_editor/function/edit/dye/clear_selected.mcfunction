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

## PLAYSOUND
    playsound minecraft:entity.player.splash neutral @s[tag=!l.core.silent] ~ ~ ~ 0.1 0.4 0
##

## UPDATE DYE
    function zl.armor_editor:edit/dye/clear with storage zl.armor_editor:temp rgb
    scoreboard players set @s zl.armor_editor.rgb -1
    scoreboard players set @s zl.armor_editor.rgb.red 0
    scoreboard players set @s zl.armor_editor.rgb.green 0
    scoreboard players set @s zl.armor_editor.rgb.blue 0
##

## REENABLE
    data remove storage zl.armor_editor:temp rgb
    advancement revoke @s only zl.armor_editor:dye/clear
##
