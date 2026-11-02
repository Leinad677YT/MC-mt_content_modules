## SUMMON STAND
    execute positioned ^-.125 ^ ^ positioned ~ ~.5 ~ rotated ~180 ~ summon minecraft:armor_stand run function zl.armor_editor:zaux/editor/new_stand
##

## CREATE EDITOR DATA
    data modify storage zl.armor_editor:editors list append from storage zl.armor_editor:temp new_editor
##

## CREATE DYE MODULE
    execute rotated ~ 0 positioned ^-1.125 ^ ^ positioned ~ ~2 ~ rotated ~180 0 run function zl.armor_editor:zaux/editor/dye/new with storage zl.armor_editor:temp new_editor
##

## CREATE TRIM MODULE
    execute rotated ~ 0 positioned ^1.5 ^ ^ positioned ~ ~2. ~ rotated ~180 0 run function zl.armor_editor:zaux/editor/trim/pattern/new with storage zl.armor_editor:temp new_editor
    execute rotated ~ 0 positioned ^1.5 ^ ^ positioned ~ ~.7 ~ rotated ~180 0 run function zl.armor_editor:zaux/editor/trim/material/new with storage zl.armor_editor:temp new_editor
##

## CREATE ARMOR SELECTION MODULE
    execute rotated ~ 0 positioned ^-3.125 ^ ^-1 positioned ~ ~1.5 ~ rotated ~22.5 ~ run function zl.armor_editor:zaux/editor/selection/new_armor with storage zl.armor_editor:temp new_editor
##

## CREATE SELECTED DISPLAY
    execute rotated ~ 0 positioned ^-3.125 ^ ^-1 positioned ~ ~2.75 ~ rotated ~22.5 ~ summon minecraft:item_display run function zl.armor_editor:zaux/editor/selection/selected with storage zl.armor_editor:temp new_editor
##

## CREATE OTHER SELECTION MODULE
    execute rotated ~ 0 positioned ^3.5 ^ ^-1 positioned ~ ~1.5 ~ rotated ~-22.5 ~ run function zl.armor_editor:zaux/editor/selection/new_other with storage zl.armor_editor:temp new_editor
##

## CREATE MISC
    execute rotated ~ 0 positioned ^3.5 ^ ^-1 positioned ~ ~3.65 ~ rotated ~-22.5 ~ run function zl.armor_editor:zaux/editor/misc/new with storage zl.armor_editor:temp new_editor
##

## CLEAR TEMP DATA
    data remove storage zl.armor_editor:temp new_editor
##