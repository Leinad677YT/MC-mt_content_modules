## UPDATE ITEM
    $item modify entity @e[type=minecraft:armor_stand,tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] $(slot) {type:"minecraft:set_components",components:{"!dyed_color":{}}}
##

## UPDATE DYE VISUALIZER
    item modify entity @e[type=minecraft:item_display,tag=zl.armor_editor.editor.visual_dye, predicate=zl.armor_editor:same_editor] container.0 {type:"minecraft:set_components",components:{"!dyed_color":{}}}
##

## TRIGGER UPDATE
    function zl.armor_editor:edit/update_displays with storage zl.armor_editor:temp rgb
##
