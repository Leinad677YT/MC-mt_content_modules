$data modify storage zl.armor_editor:temp rgb.checking set from entity @e[type=minecraft:item_display, tag=zl.armor_editor.editor.selection.$(display), limit=1] item.components."minecraft:dyed_color".rgb
scoreboard players reset @s zl.armor_editor.rgb.red
scoreboard players reset @s zl.armor_editor.rgb.blue
scoreboard players reset @s zl.armor_editor.rgb.green
execute unless data storage zl.armor_editor:temp rgb.checking run return run scoreboard players set @s zl.armor_editor.rgb -1

execute store result score @s zl.armor_editor.rgb run data get storage zl.armor_editor:temp rgb.checking
execute store result score @s zl.armor_editor.rgb.blue store result score @s zl.armor_editor.rgb.green run scoreboard players operation @s zl.armor_editor.rgb.red = @s zl.armor_editor.rgb
scoreboard players operation @s zl.armor_editor.rgb.red /= #65536 l.core.cte
scoreboard players operation @s zl.armor_editor.rgb.green %= #65536 l.core.cte
scoreboard players operation @s zl.armor_editor.rgb.green /= #256 l.core.cte
scoreboard players operation @s zl.armor_editor.rgb.blue %= #256 l.core.cte
