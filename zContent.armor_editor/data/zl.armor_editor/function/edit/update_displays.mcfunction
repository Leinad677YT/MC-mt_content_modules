## UPDATE ITEM_MAP
    item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.boots, predicate=zl.armor_editor:same_editor] container.0 from entity @n[type=armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] armor.feet
    item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.leggs, predicate=zl.armor_editor:same_editor] container.0 from entity @n[type=armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] armor.legs
    item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.chest, predicate=zl.armor_editor:same_editor] container.0 from entity @n[type=armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] armor.chest
    item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.helmet, predicate=zl.armor_editor:same_editor] container.0 from entity @n[type=armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] armor.head
    item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.mainhand, predicate=zl.armor_editor:same_editor] container.0 from entity @n[type=armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] weapon.mainhand
    item replace entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.offhand, predicate=zl.armor_editor:same_editor] container.0 from entity @n[type=armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] weapon.offhand
##

## UPDATE SELECTED ICON
    $item \
        replace entity @e[type=item_display, tag=zl.armor_editor.editor.selection.selected, predicate=zl.armor_editor:same_editor] container.0 \
        from entity @n[type=armor_stand, tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] $(slot)
##
