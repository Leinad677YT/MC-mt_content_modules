## SET MENU DISPLAYS
    $item modify entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0 {function:"minecraft:set_components",components:$(components)}
    $item modify entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection, predicate=zl.armor_editor:same_editor, predicate=zl.armor_editor:same_slot] container.0 {function:"minecraft:set_components",components:$(components)}
##

## SET ARMOR STANDS BASED OFF SLOT
    ## BOOTS
        $execute if score @s zl.armor_editor.editor_slot matches 1 run return run item modify entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] armor.feet {function:"minecraft:set_components",components:$(components)}
    ##

    ## LEGGS
        $execute if score @s zl.armor_editor.editor_slot matches 2 run return run item modify entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] armor.legs {function:"minecraft:set_components",components:$(components)}
    ##

    ## CHEST
        $execute if score @s zl.armor_editor.editor_slot matches 3 run return run item modify entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] armor.chest {function:"minecraft:set_components",components:$(components)}
    ##

    ## HELMET
        $execute if score @s zl.armor_editor.editor_slot matches 4 run return run item modify entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] armor.head {function:"minecraft:set_components",components:$(components)}
    ##

    ## MAINHAND
        $execute if score @s zl.armor_editor.editor_slot matches 5 run return run item modify entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] weapon.mainhand {function:"minecraft:set_components",components:$(components)}
    ##

    ## OFFHAND
        $execute if score @s zl.armor_editor.editor_slot matches 6 run return run item modify entity @e[type=minecraft:armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] weapon.offhand {function:"minecraft:set_components",components:$(components)}
    ##
##
