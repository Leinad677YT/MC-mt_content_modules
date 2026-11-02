execute if score @s zl.armor_editor.rgb matches -1 run return run function zl.armor_editor:edit/dye/clear with storage zl.armor_editor:temp rgb

## UPDATE ITEM
    $item modify entity @e[type=minecraft:armor_stand,tag=zl.armor_editor.editor.stand, predicate=zl.armor_editor:same_editor] $(slot) {function:"minecraft:set_components",components:{dyed_color:{rgb:$(color)}}}
##

## UPDATE DYE VISUALIZER
    $item modify entity @e[type=minecraft:item_display,tag=zl.armor_editor.editor.visual_dye, predicate=zl.armor_editor:same_editor] container.0 {function:"minecraft:set_components",components:{dyed_color:{rgb:$(color)}}}
##

## GIVE FEEDBACK
    playsound minecraft:block.amethyst_block.step neutral @s[tag=!l.core.silent] ~ ~ ~ 0.1 0.4 0
##

## TRIGGER UPDATE
    function zl.armor_editor:edit/update_displays with storage zl.armor_editor:temp rgb
##
