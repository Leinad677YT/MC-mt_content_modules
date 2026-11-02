## UPDATE INDEX
    scoreboard players add @s zl.armor_editor.trim.material 1
    execute store result storage zl.armor_editor:temp trim.material_idx int 1 run scoreboard players operation @s zl.armor_editor.trim.material %= #zl.0 zl.armor_editor.trim.material
##

## GET EDITOR ID
    scoreboard players operation #zl.sync.temp zl.armor_editor.editor_id = @s zl.armor_editor.editor_id
##

## GET SLOT
    data modify storage zl.armor_editor:temp rgb.slot set value "container.0"
    execute if score @s zl.armor_editor.editor_slot matches 1 run data modify storage zl.armor_editor:temp trim.slot set value "armor.feet"
    execute if score @s zl.armor_editor.editor_slot matches 2 run data modify storage zl.armor_editor:temp trim.slot set value "armor.legs"
    execute if score @s zl.armor_editor.editor_slot matches 3 run data modify storage zl.armor_editor:temp trim.slot set value "armor.chest"
    execute if score @s zl.armor_editor.editor_slot matches 4 run data modify storage zl.armor_editor:temp trim.slot set value "armor.head"
    execute if score @s zl.armor_editor.editor_slot matches 5 run data modify storage zl.armor_editor:temp trim.slot set value "weapon.mainhand"
    execute if score @s zl.armor_editor.editor_slot matches 6 run data modify storage zl.armor_editor:temp trim.slot set value "weapon.offhand"
##

## GET PATTERN
    execute store result storage zl.armor_editor:temp trim.pattern_idx int 1 run scoreboard players get @s zl.armor_editor.trim.pattern
    function zl.armor_editor:edit/trim/get_material with storage zl.armor_editor:temp trim
    function zl.armor_editor:edit/trim/get_pattern with storage zl.armor_editor:temp trim
##

## UPDATE TRIM
    scoreboard players operation @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] zl.armor_editor.trim.material = @s zl.armor_editor.trim.material
    execute as @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] run function zl.armor_editor:edit/trim/update with storage zl.armor_editor:temp trim
    function zl.armor_editor:edit/update_displays with storage zl.armor_editor:temp trim
##

## UPDATE MATERIAL LOOP
    execute store result storage zl.armor_editor:temp trim.material_prev int 1 run scoreboard players remove @s zl.armor_editor.trim.material 1
    scoreboard players add @s zl.armor_editor.trim.material 2
    execute store result storage zl.armor_editor:temp trim.material_next int 1 run scoreboard players operation @s zl.armor_editor.trim.material %= #zl.0 zl.armor_editor.trim.material
        execute store result storage zl.armor_editor:temp trim.material_current int 1 run scoreboard players remove @s zl.armor_editor.trim.material 1
    function zl.armor_editor:zaux/get_trim_material_menu with storage zl.armor_editor:temp trim
    execute as @e[type=minecraft:item_display, tag=zl.armor_editor.editor.trim_material, predicate=zl.armor_editor:same_editor] run function zl.armor_editor:edit/trim/update_material_displays with storage zl.armor_editor:temp trim
##

## REENABLE
    data remove storage zl.armor_editor:temp trim
    advancement revoke @s only zl.armor_editor:trim/next_material
##
