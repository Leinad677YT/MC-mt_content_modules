## GET EDITOR ID
    scoreboard players operation #zl.sync.temp zl.armor_editor.editor_id = @s zl.armor_editor.editor_id
##

## PLAYSOUND
    playsound minecraft:block.anvil.place ambient @s[tag=!l.core.silent] ~ ~ ~ 0.3 0.4 0
##

## UPDATE THE CLOSEST DISPLAY FOR LATER CLONING
    data modify entity @n[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] item.components."minecraft:enchantments" merge from entity @s SelectedItem.components."minecraft:stored_enchantments"
##

## REENABLE
    advancement revoke @s only zl.armor_editor:interact_anvil
##

## UPDATE DISPLAYS BASED OFF SLOT
    ## BOOTS
        execute if score @s zl.armor_editor.editor_slot matches 1 run \
            item replace entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] armor.feet \
                    from entity @n[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0

        execute if score @s zl.armor_editor.editor_slot matches 1 run \
            item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0 \
                    from entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor, limit=1] armor.feet

        execute if score @s zl.armor_editor.editor_slot matches 1 run return run \
            item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.boots, predicate=zl.armor_editor:same_editor] container.0 \
                    from entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor, limit=1] container.0

    ##

    ## LEGGS
        execute if score @s zl.armor_editor.editor_slot matches 2 run \
            item replace entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] armor.legs \
                    from entity @n[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0

        execute if score @s zl.armor_editor.editor_slot matches 2 run \
            item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0 \
                    from entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor, limit=1] armor.legs

        execute if score @s zl.armor_editor.editor_slot matches 2 run return run \
            item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.leggs, predicate=zl.armor_editor:same_editor] container.0 \
                    from entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor, limit=1] container.0
    ##

    ## CHEST
        execute if score @s zl.armor_editor.editor_slot matches 3 run \
            item replace entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] armor.chest \
                    from entity @n[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0

        execute if score @s zl.armor_editor.editor_slot matches 3 run \
            item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0 \
                    from entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor, limit=1] armor.chest

        execute if score @s zl.armor_editor.editor_slot matches 3 run return run \
            item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.chest, predicate=zl.armor_editor:same_editor] container.0 \
                    from entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor, limit=1] container.0
    ##

    ## HELMET
        execute if score @s zl.armor_editor.editor_slot matches 4 run \
            item replace entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] armor.head \
                    from entity @n[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0

        execute if score @s zl.armor_editor.editor_slot matches 4 run \
            item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0 \
                    from entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor, limit=1] armor.head

        execute if score @s zl.armor_editor.editor_slot matches 4 run return run \
            item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.helmet, predicate=zl.armor_editor:same_editor] container.0 \
                    from entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor, limit=1] container.0
    ##

    ## MAINHAND
        execute if score @s zl.armor_editor.editor_slot matches 5 run \
            item replace entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] weapon.mainhand \
                    from entity @n[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0

        execute if score @s zl.armor_editor.editor_slot matches 5 run \
            item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0 \
                    from entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor, limit=1] weapon.mainhand

        execute if score @s zl.armor_editor.editor_slot matches 5 run return run \
            item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.mainhand, predicate=zl.armor_editor:same_editor] container.0 \
                    from entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor, limit=1] container.0
    ##

    ## OFFHAND
        execute if score @s zl.armor_editor.editor_slot matches 6 run \
            item replace entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] weapon.offhand \
                    from entity @n[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0

        execute if score @s zl.armor_editor.editor_slot matches 6 run \
            item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0 \
                    from entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor, limit=1] weapon.offhand

        execute if score @s zl.armor_editor.editor_slot matches 6 run return run \
            item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.offhand, predicate=zl.armor_editor:same_editor] container.0 \
                    from entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor, limit=1] container.0
    ##
##
