## GET EDITOR ID AND SLOT
    scoreboard players operation #zl.sync.temp zl.armor_editor.editor_id = @s zl.armor_editor.editor_id
    scoreboard players operation #zl.sync.temp zl.armor_editor.editor_slot = @s zl.armor_editor.editor_slot
##

## PLAYSOUND
    playsound minecraft:block.enchantment_table.use ambient @s[tag=!l.core.silent] ~ ~ ~ 0.8 0.4 1
##

## GET AUX BOOL FOR FASTER CHECKS
    execute store result score #zl.sync.temp zl.armor_editor.main if items entity @n[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0 *[enchantment_glint_override=true]
##

## SET MENU DISPLAYS
    execute if score #zl.sync.temp zl.armor_editor.main matches 1 run \
        function zl.armor_editor:edit/update_component {components:{"enchantment_glint_override":false}}
    execute if score #zl.sync.temp zl.armor_editor.main matches 1 run \
        item modify entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.ench_table, predicate=zl.armor_editor:same_editor] container.0 {type:"set_components",components:{"enchantment_glint_override":false}}

    execute unless score #zl.sync.temp zl.armor_editor.main matches 1 run \
        function zl.armor_editor:edit/update_component {components:{"enchantment_glint_override":true}}
    execute unless score #zl.sync.temp zl.armor_editor.main matches 1 run \
        item modify entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.ench_table, predicate=zl.armor_editor:same_editor] container.0 {type:"set_components",components:{"enchantment_glint_override":true}}
##

## REENABLE
    advancement revoke @s only zl.armor_editor:toggle_glint
##
