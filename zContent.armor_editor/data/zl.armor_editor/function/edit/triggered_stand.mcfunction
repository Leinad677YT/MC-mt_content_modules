## GET EDITOR ID
    scoreboard players operation #zl.sync.temp zl.armor_editor.editor_id = @s zl.armor_editor.editor_id
##

## GET SLOT
    execute if score @s zl.armor_editor.editor_slot matches 1 run data modify storage zl.armor_editor:temp stand.slot set value "armor.feet"
    execute if score @s zl.armor_editor.editor_slot matches 2 run data modify storage zl.armor_editor:temp stand.slot set value "armor.legs"
    execute if score @s zl.armor_editor.editor_slot matches 3 run data modify storage zl.armor_editor:temp stand.slot set value "armor.chest"
    execute if score @s zl.armor_editor.editor_slot matches 4 run data modify storage zl.armor_editor:temp stand.slot set value "armor.head"
    execute if score @s zl.armor_editor.editor_slot matches 5 run data modify storage zl.armor_editor:temp stand.slot set value "weapon.mainhand"
##

## UPDATE THE EDITOR
    function zl.armor_editor:edit/update_displays with storage zl.armor_editor:temp stand
    function zl.armor_editor:edit/get_force_glint {display:"selected"}
##

## PLAYSOUND
    playsound minecraft:item.armor.equip_generic neutral @a[distance=0..50] ~ ~ ~ 1 1 0
##

## REENABLE
    data remove storage zl.armor_editor:temp stand
    advancement revoke @s only zl.armor_editor:interacted_stand default
##
