## TELLRAW
    tellraw @a[tag=l.core.tellraw] [{"text":"[+] ","color":"#00e1ff"},{"translate":"leinad.zl.armor_editor.tellraw.load","fallback":"Ingame armor editor has been loaded","color":"#00c8c8"}]
##

## ADD SCOREBOARDS

    ## CORE
        scoreboard objectives add l.core.temp_condition dummy
        scoreboard objectives add l.core.cte dummy
            scoreboard players set #0 l.core.cte 0
            scoreboard players set #255 l.core.cte 255
            scoreboard players set #256 l.core.cte 256
            scoreboard players set #65536 l.core.cte 65536
    ##

    ## FUNCTIONALITY
        scoreboard objectives add zl.armor_editor.editor_id dummy
        scoreboard objectives add zl.armor_editor.editor_slot dummy
        scoreboard objectives add zl.armor_editor.rgb dummy
        scoreboard objectives add zl.armor_editor.rgb.red dummy
        scoreboard objectives add zl.armor_editor.rgb.green dummy
        scoreboard objectives add zl.armor_editor.rgb.blue dummy
        scoreboard objectives add zl.armor_editor.trim.pattern dummy
        scoreboard objectives add zl.armor_editor.trim.material dummy
        scoreboard objectives add zl.armor_editor.main dummy
    ##
##

## LOAD TRIM MATERIALS
    data remove storage zl.armor_editor:data trim_mat[]
    scoreboard players set #zl.0 zl.armor_editor.trim.material -1
    function #zl.user:armor_editor/load_trim_material
    tellraw @a[tag=l.core.tellraw] [ \
        {"translate": "leinad.null", "fallback": "[%1$s] ", "color": "#00e1ff", "with":[{"text": "^", "color": "#00c8c8"}]}, \
        { \
            "translate": "leinad.zl.armor_editor.tellraw.loaded_trim_materials", "fallback": "Loaded trim materials: %1$s", "color": "dark_gray", \
            "with": [{"score": {"name": "#zl.0","objective": "zl.armor_editor.trim.material"}}]}]
##

## LOAD TRIM PATTERNS
    data remove storage zl.armor_editor:data pattern[]
    data modify storage zl.armor_editor:data pattern append value { \
        "index": 0, \
        "menu_model":"minecraft:barrier", \
        "pattern_id":"tide", \
        "added_by":"vanilla" \
    }
    scoreboard players set #zl.0 zl.armor_editor.trim.pattern 0
    function #zl.user:armor_editor/load_trim_pattern
    execute store result score #zl.0 zl.armor_editor.trim.pattern if data storage zl.armor_editor:data pattern[]
    tellraw @a[tag=l.core.tellraw] [ \
        {"translate": "leinad.null", "fallback": "[%1$s] ", "color": "#00e1ff", "with":[{"text": "^", "color": "#00c8c8"}]}, \
        { \
            "translate":"leinad.zl.armor_editor.tellraw.loaded_trim_patterns","fallback":"Loaded trim patterns: %1$s", "color": "dark_gray", \
            "with": [{"score": {"name": "#zl.0","objective": "zl.armor_editor.trim.pattern"}}] \
        } \
    ]
##

## LOAD STORAGE
    data get storage zl.armor_editor:editors list
##