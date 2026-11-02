## IF NO EDITOR => ERROR
    $execute unless data storage zl.armor_editor:editors list[{id:$(editor)}] run \
        return run tellraw @a [{"text": "[!] ", "color":"#aa2200"},{"translate": "leinad.zl.armor_editor.no_such_editor.tellraw", "fallback": "Editor %1$s does not exist", "color":"#ff4400", "with": [{"text": "$(editor)","color":"white"}]}]
##

## IF MT IS LOADED => USE CALLBACKS
    $execute if function l.user:misc/is_mt_loaded run return run function zl.armor_editor:player/enable_mt with {editor:$(editor),name:$(name)}
##

## IF NO PLAYER => ERROR
    $execute unless entity $(name) run \
        return run tellraw @a [{"text": "[!] ", "color":"#aa2200"},{"translate": "leinad.zl.armor_editor.no_such_player.tellraw", "fallback": "Player %1$s does not exist", "color":"#ff4400", "with": [{"text": "$(name)","color":"white"}]}]
##

## TRUST PLAYER FOR EDITOR
    $function zl.armor_editor:player/enable_generic {name:"$(name)", editor:"$(editor)"}
##