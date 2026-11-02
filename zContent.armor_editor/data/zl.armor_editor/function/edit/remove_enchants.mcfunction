## GET EDITOR ID AND SLOT
    scoreboard players operation #zl.sync.temp zl.armor_editor.editor_id = @s zl.armor_editor.editor_id
    scoreboard players operation #zl.sync.temp zl.armor_editor.editor_slot = @s zl.armor_editor.editor_slot
##

## PLAYSOUND
    playsound minecraft:block.grindstone.use ambient @s[tag=!l.core.silent] ~ ~ ~ 0.8 0.4 1
##

## UPDATE
    function zl.armor_editor:edit/update_component {components:{"enchantments":{}}}
##

## REENABLE
    advancement revoke @s only zl.armor_editor:interact_grindstone
##
