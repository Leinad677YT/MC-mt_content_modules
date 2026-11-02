## HAND DISPLAYS
    execute summon minecraft:item_display run function zl.armor_editor:zaux/editor/selection/background

    execute positioned ^.50 ^ ^ positioned ~ ~-.3 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/selection/mainhand_display
    execute positioned ^-.5 ^ ^ positioned ~ ~-.3 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/selection/offhand_display
##

## INTERACTIONS
    execute positioned ^.50 ^ ^ positioned ~ ~-.3 ~ summon minecraft:interaction run function zl.armor_editor:zaux/editor/selection/mainhand_interaction
    execute positioned ^-.5 ^ ^ positioned ~ ~-.3 ~ summon minecraft:interaction run function zl.armor_editor:zaux/editor/selection/offhand_interaction
##
