## GET EDITOR ID AND SLOT
    scoreboard players operation #zl.sync.temp zl.armor_editor.editor_id = @s zl.armor_editor.editor_id
    scoreboard players operation #zl.sync.temp zl.armor_editor.editor_slot = @s zl.armor_editor.editor_slot
##

## PLAYSOUND
    playsound minecraft:block.enchantment_table.use ambient @s[tag=!l.core.silent] ~ ~ ~ 0.8 0.4 1
##

## SET MENU DISPLAYS
    function zl.armor_editor:edit/update_component {components:{"!enchantment_glint_override":{}}}
    item modify entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.ench_table, predicate=zl.armor_editor:same_editor] container.0 {function:"set_components",components:{"enchantment_glint_override":false}}
##

## REENABLE
    advancement revoke @s only zl.armor_editor:remove_force_glint
##
