## UPDATE LOADED DATA OF PLAYER
    function zl.armor_editor:edit/dye/get_rgb {display:"mainhand"}
    function zl.armor_editor:edit/trim/get_trim {display:"mainhand"}
##

## GET SLOT
    data modify storage zl.armor_editor:temp trim.slot set value "container.0"
    execute if score @s zl.armor_editor.editor_slot matches 1 run data modify storage zl.armor_editor:temp trim.slot set value "armor.feet"
    execute if score @s zl.armor_editor.editor_slot matches 2 run data modify storage zl.armor_editor:temp trim.slot set value "armor.legs"
    execute if score @s zl.armor_editor.editor_slot matches 3 run data modify storage zl.armor_editor:temp trim.slot set value "armor.chest"
    execute if score @s zl.armor_editor.editor_slot matches 4 run data modify storage zl.armor_editor:temp trim.slot set value "armor.head"
    execute if score @s zl.armor_editor.editor_slot matches 5 run data modify storage zl.armor_editor:temp trim.slot set value "weapon.mainhand"
    execute if score @s zl.armor_editor.editor_slot matches 6 run data modify storage zl.armor_editor:temp trim.slot set value "weapon.offhand"

    data modify storage zl.armor_editor:temp rgb.slot set from storage zl.armor_editor:temp trim.slot
##

## UPDATE TRIM
    execute as @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] run function zl.armor_editor:edit/trim/update with storage zl.armor_editor:temp trim
##

## UPDATE DYE
    function zl.armor_editor:edit/dye/calculate_rgb
    function zl.armor_editor:edit/dye/update with storage zl.armor_editor:temp rgb
##

## TRIGGER UPDATE
    function zl.armor_editor:edit/update_displays with storage zl.armor_editor:temp rgb
    function zl.armor_editor:edit/get_force_glint {display:"mainhand"}
##

## REENABLE
    data remove storage zl.armor_editor:temp rgb
    data remove storage zl.armor_editor:temp trim
    advancement revoke @s only zl.armor_editor:slot/get_mainhand
##
