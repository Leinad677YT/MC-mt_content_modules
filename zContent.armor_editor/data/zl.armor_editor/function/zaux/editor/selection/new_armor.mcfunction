## ARMOR DISPLAYS
    execute summon minecraft:item_display run function zl.armor_editor:zaux/editor/selection/background

    execute positioned ^-.5 ^ ^ positioned ~ ~-.8 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/selection/boots_display
    execute positioned ^-.5 ^ ^ positioned ~ ~.20 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/selection/leggs_display
    execute positioned ^.50 ^ ^ positioned ~ ~.20 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/selection/chest_display
    execute positioned ^.50 ^ ^ positioned ~ ~-.8 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/selection/helmet_display
##

## INTERACTIONS
    execute positioned ^-.5 ^ ^ positioned ~ ~-.85 ~ summon minecraft:interaction run function zl.armor_editor:zaux/editor/selection/boots_interaction
    execute positioned ^-.5 ^ ^ positioned ~ ~.05 ~ summon minecraft:interaction run function zl.armor_editor:zaux/editor/selection/leggs_interaction
    execute positioned ^.50 ^ ^ positioned ~ ~.05 ~ summon minecraft:interaction run function zl.armor_editor:zaux/editor/selection/chest_interaction
    execute positioned ^.50 ^ ^ positioned ~ ~-.85 ~ summon minecraft:interaction run function zl.armor_editor:zaux/editor/selection/helmet_interaction
##
