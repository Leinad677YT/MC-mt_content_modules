## ADD DIRECTLY
    function zl.armor_editor:player/enable_mt with storage zl.armor_editor:query temp_loop[-1]
##

## REITERATE
    data remove storage zl.armor_editor:query temp_loop[-1]
    execute if data storage zl.armor_editor:query temp_loop[0] run function zl.armor_editor:zaux/editor_loop_enable_player with storage zl.armor_editor:query temp_loop[-1]
##