## UPDATE VISUALLY
    scoreboard players operation #zl.sync.temp zl.armor_editor.editor_id = @s zl.armor_editor.editor_id
    item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0 from entity @n[type=armor_stand,distance= ..10,tag=zl.armor_editor.editor.stand] armor.head
##

## PLAYSOUND
    execute unless score @s zl.armor_editor.editor_slot matches 4 run playsound minecraft:block.netherite_block.break ambient @s ~ ~ ~ 1 1.2
    execute if score @s zl.armor_editor.editor_slot matches 4 run function zl.armor_editor:edit/dye/get_rgb {display:"helmet"}
    execute if score @s zl.armor_editor.editor_slot matches 4 run function zl.armor_editor:edit/trim/get_trim {display:"helmet"}
    execute if score @s zl.armor_editor.editor_slot matches 4 run playsound minecraft:block.amethyst_block.step neutral @s[tag=!l.core.silent] ~ ~ ~ 0.1 0.4 0
##

## UPDATE DISPLAY OVERLAY
    scoreboard players operation #zl.sync.temp l.core.temp_condition = @s zl.armor_editor.editor_slot
    scoreboard players set #zl.sync.temp zl.armor_editor.editor_slot 4
    scoreboard players set @s zl.armor_editor.editor_slot 4
    execute as @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection, predicate=zl.armor_editor:same_editor] run function zl.armor_editor:edit/selection/set_selected
##

## SET SLOT AS BOOTS FOR LATER
    scoreboard players set @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] zl.armor_editor.editor_slot 4
##

## REENABLE
    data remove storage zl.armor_editor:temp rgb
    data remove storage zl.armor_editor:temp trim
    advancement revoke @s only zl.armor_editor:slot/select_helmet requirement
##
