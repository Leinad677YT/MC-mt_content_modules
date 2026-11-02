## CLEAR VALUE
    execute if score @s zl.armor_editor.rgb matches -1 run return run data modify storage zl.armor_editor:temp rgb.color set value -1
##

## CALCULATE VALUE
    scoreboard players operation #temp zl.armor_editor.rgb.red = @s zl.armor_editor.rgb.red
    scoreboard players operation #temp zl.armor_editor.rgb.red *= #65536 l.core.cte
    scoreboard players operation #temp zl.armor_editor.rgb.green = @s zl.armor_editor.rgb.green
    scoreboard players operation #temp zl.armor_editor.rgb.green *= #256 l.core.cte
    scoreboard players operation @s zl.armor_editor.rgb = #temp zl.armor_editor.rgb.red
    scoreboard players operation @s zl.armor_editor.rgb += #temp zl.armor_editor.rgb.green
    execute store result storage zl.armor_editor:temp rgb.color int 1 run scoreboard players operation @s zl.armor_editor.rgb += @s zl.armor_editor.rgb.blue
##

