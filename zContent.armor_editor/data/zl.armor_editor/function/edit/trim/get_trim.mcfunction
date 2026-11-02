## GET IDS
    data modify storage zl.armor_editor:temp trim.pattern set from storage zl.armor_editor:data pattern[0].pattern_id
    data modify storage zl.armor_editor:temp trim.material set from storage zl.armor_editor:data trim_mat[0].material_id 
    scoreboard players set @s zl.armor_editor.trim.pattern 0
    scoreboard players set @s zl.armor_editor.trim.material 0
    $data modify storage zl.armor_editor:temp trim merge from entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.$(display), limit=1] item.components."minecraft:trim"
    function zl.armor_editor:zaux/get_trim_ids with storage zl.armor_editor:temp trim
##

## UPDATE MATERIAL LOOP
    execute store result storage zl.armor_editor:temp trim.material_prev int 1 run scoreboard players remove @s zl.armor_editor.trim.material 1
    scoreboard players add @s zl.armor_editor.trim.material 2
    execute store result storage zl.armor_editor:temp trim.material_next int 1 run scoreboard players operation @s zl.armor_editor.trim.material %= #zl.0 zl.armor_editor.trim.material
    execute store result storage zl.armor_editor:temp trim.material_current int 1 run scoreboard players remove @s zl.armor_editor.trim.material 1
    function zl.armor_editor:zaux/get_trim_material_menu with storage zl.armor_editor:temp trim
    execute as @e[type=minecraft:item_display, tag=zl.armor_editor.editor.trim_material, predicate=zl.armor_editor:same_editor] run function zl.armor_editor:edit/trim/update_material_displays with storage zl.armor_editor:temp trim
##

## UPDATE PATTERN LOOP
    execute store result storage zl.armor_editor:temp trim.pattern_prev int 1 run scoreboard players remove @s zl.armor_editor.trim.pattern 1
    scoreboard players add @s zl.armor_editor.trim.pattern 2
    execute store result storage zl.armor_editor:temp trim.pattern_next int 1 run scoreboard players operation @s zl.armor_editor.trim.pattern %= #zl.0 zl.armor_editor.trim.pattern
    execute store result storage zl.armor_editor:temp trim.pattern_current int 1 run scoreboard players remove @s zl.armor_editor.trim.pattern 1
    function zl.armor_editor:zaux/get_trim_pattern_menu with storage zl.armor_editor:temp trim
    execute as @e[type=minecraft:item_display, tag=zl.armor_editor.editor.trim_pattern, predicate=zl.armor_editor:same_editor] run function zl.armor_editor:edit/trim/update_pattern_displays with storage zl.armor_editor:temp trim
##

## SET UPDATED TRIMS
    scoreboard players operation @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] zl.armor_editor.trim.material = @s zl.armor_editor.trim.material
    scoreboard players operation @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] zl.armor_editor.trim.pattern = @s zl.armor_editor.trim.pattern
##
