## IF PLAYER IS ONLINE ADD DIRECTLY
    $scoreboard players set $(name) zl.armor_editor.editor_id $(editor)
    $execute if entity $(name) run return run function zl.armor_editor:player/enable_generic {name:$(name),editor:$(editor)}
##

## IF ITS NOT ADD TO QUERY
    # if exists query to revoke access, remove it
    $data remove storage zl.armor_editor:query pending[{name:"$(name)"}].disable_editor[{name:"$(name)",editor:"$(editor)"}]
    # if exists already, do nothing
    $execute if data storage zl.armor_editor:query pending[{name:"$(name)"}].enable_editor[{name:"$(name)",editor:"$(editor)"}] run return fail
    # if does not exist, but name does, append
    $execute if data storage zl.armor_editor:query pending[{name:"$(name)"}] run return run data modify storage zl.armor_editor:query pending[{name:"$(name)"}].enable_editor append value {name:"$(name)",editor:"$(editor)"}
    # append name and query
    $data modify storage zl.armor_editor:query pending append value {name:"$(name)",enable_editor:[{name:"$(name)",editor:"$(tag)"}]}
##