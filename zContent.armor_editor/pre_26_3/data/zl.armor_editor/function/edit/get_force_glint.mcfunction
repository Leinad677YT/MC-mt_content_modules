$execute store result score #zl.sync.temp zl.armor_editor.main if items entity @n[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.$(display), predicate=zl.armor_editor:same_editor] container.0 *[enchantment_glint_override=true]
    
execute if score #zl.sync.temp zl.armor_editor.main matches 1 run return run \
    item modify entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.ench_table, predicate=zl.armor_editor:same_editor] container.0 {function:"set_components",components:{"enchantment_glint_override":true}}

item modify entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.ench_table, predicate=zl.armor_editor:same_editor] container.0 {function:"set_components",components:{"enchantment_glint_override":false}}