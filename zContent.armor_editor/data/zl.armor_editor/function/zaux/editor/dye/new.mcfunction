## DYE DISPLAYS
    execute positioned ^-.1 ^ ^ positioned ~ ~.3 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/dye/red
    execute positioned ^.000 ^ ^ positioned ~ ~.3 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/dye/green
    execute positioned ^.1 ^ ^ positioned ~ ~.3 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/dye/blue
##

## INTERACTIONS
    # add
    execute positioned ~ ~-.40 ~ summon minecraft:interaction run function zl.armor_editor:zaux/editor/dye/add_interaction
    execute positioned ~ ~-.41 ~ summon minecraft:text_display run function zl.armor_editor:zaux/editor/dye/add_display

    # remove
    execute positioned ~ ~-.80 ~ summon minecraft:interaction run function zl.armor_editor:zaux/editor/dye/remove_interaction
    execute positioned ~ ~-.81 ~ summon minecraft:text_display run function zl.armor_editor:zaux/editor/dye/remove_display

    # clear
    execute positioned ~ ~-1.4 ~ summon minecraft:interaction run function zl.armor_editor:zaux/editor/dye/clear_interaction
    execute positioned ~ ~-1.2 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/dye/clear_display
##
