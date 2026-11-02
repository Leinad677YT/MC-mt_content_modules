## UPDATE ALL
    data modify entity @s Glowing set value 0b
    data modify entity @s start_interpolation set value 0
##

## UPDATE THE CORRECT ONE
    # Return and set the position to the background on incorrects
    
    execute unless entity @s[predicate=zl.armor_editor:same_slot] run return run data modify entity @s transformation.translation set value [0.0f,0.0f,0.0f]
    
    data modify entity @s Glowing set value 1b
    
    # IF previously selected, do not reanimate
    execute unless score @s zl.armor_editor.editor_slot = #zl.sync.temp l.core.temp_condition run data modify entity @s transformation.translation set value [0.0f,0.0f,-0.2f]
##