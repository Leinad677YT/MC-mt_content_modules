## IF DOESNT EXIST SCHEDULE FOR NAME RETURN
    $execute unless data storage zl.whitelist:query pending[{name:"$(name)"}] run return fail
##

## PENDING DATA EXISTS

    ## ADD TO WHITELISTS
        $data modify storage zl.whitelist:query temp_loop set from storage zl.whitelist:query pending[{name:"$(name)"}].add_whitelist
        execute if data storage zl.whitelist:query temp_loop[0] run function zl.whitelist:zaux/whitelist_loop_add with storage zl.whitelist:query temp_loop[-1]
        $data remove storage zl.whitelist:query pending[{name:"$(name)"}].add_whitelist
    ##

    ## REMOVE FROM WHITELISTS
        $data modify storage zl.whitelist:query temp_loop set from storage zl.whitelist:query pending[{name:"$(name)"}].remove_whitelist
        execute if data storage zl.whitelist:query temp_loop[0] run function zl.whitelist:zaux/whitelist_loop_remove with storage zl.whitelist:query temp_loop[-1]
        $data remove storage zl.whitelist:query pending[{name:"$(name)"}].add_whitelist
    ##

    ## ADD TAGS
        $data modify storage zl.whitelist:query temp_loop set from storage zl.whitelist:query pending[{name:"$(name)"}].add_tag
        execute if data storage zl.whitelist:query temp_loop[0] run function zl.whitelist:zaux/tag_loop_add with storage zl.whitelist:query temp_loop[-1]
        $data remove storage zl.whitelist:query pending[{name:"$(name)"}].add_whitelist
    ##

    ## REMOVE TAGS
        $data modify storage zl.whitelist:query temp_loop set from storage zl.whitelist:query pending[{name:"$(name)"}].remove_tag
        execute if data storage zl.whitelist:query temp_loop[0] run function zl.whitelist:zaux/tag_loop_remove with storage zl.whitelist:query temp_loop[-1]
        $data remove storage zl.whitelist:query pending[{name:"$(name)"}].add_whitelist
    ##


    ## REMOVE QUERY
        $data remove storage zl.whitelist:query pending[{name:"$(name)"}]
    ##

##