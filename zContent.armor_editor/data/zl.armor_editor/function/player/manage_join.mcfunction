## IF DOESNT EXIST SCHEDULE FOR NAME RETURN
    $execute unless data storage zl.armor_editor:query pending[{name:"$(name)"}] run return fail
##

## PENDING DATA EXISTS

    ## ADD TO EDITORS
        $data modify storage zl.armor_editor:query temp_loop set from storage zl.armor_editor:query pending[{name:"$(name)"}].enable_editor
        execute if data storage zl.armor_editor:query temp_loop[0] run function zl.armor_editor:zaux/editor_loop_enable_player with storage zl.armor_editor:query temp_loop[-1]
        $data remove storage zl.armor_editor:query pending[{name:"$(name)"}].enable_editor
    ##

    ## REMOVE FROM WHITELISTS
        $data modify storage zl.armor_editor:query temp_loop set from storage zl.armor_editor:query pending[{name:"$(name)"}].disable_editor
        execute if data storage zl.armor_editor:query temp_loop[0] run function zl.armor_editor:zaux/editor_loop_disable_player with storage zl.armor_editor:query temp_loop[-1]
        $data remove storage zl.armor_editor:query pending[{name:"$(name)"}].disable_editor
    ##

    ## REMOVE QUERY
        data remove storage zl.whitelist:query pending[{name:"$(name)"}]
    ##

##