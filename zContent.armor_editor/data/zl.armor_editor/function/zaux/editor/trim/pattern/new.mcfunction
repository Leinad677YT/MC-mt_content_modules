## LOOP DISPLAYS
    execute positioned ^-.25 ^ ^.125 positioned ~ ~.30 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/trim/pattern/prev
    execute positioned ^.000 ^ ^-.10 positioned ~ ~.6 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/trim/pattern/current
    execute positioned ^.250 ^ ^.125 positioned ~ ~.30 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/trim/pattern/next
##

## INTERACTIONS
    # prev
    execute positioned ^-.25 ^ ^ positioned ~ ~-.15 ~ summon minecraft:interaction run function zl.armor_editor:zaux/editor/trim/pattern/prev_interaction
    execute positioned ^-.25 ^ ^ positioned ~ ~-.16 ~ summon minecraft:text_display run function zl.armor_editor:zaux/editor/trim/prev_display

    # next
    execute positioned ^.250 ^ ^ positioned ~ ~-.15 ~ summon minecraft:interaction run function zl.armor_editor:zaux/editor/trim/pattern/next_interaction
    execute positioned ^.250 ^ ^ positioned ~ ~-.16 ~ summon minecraft:text_display run function zl.armor_editor:zaux/editor/trim/next_display
##
