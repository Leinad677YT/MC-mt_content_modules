## IF NULL, REMOVE TRIM
    $execute unless score @s zl.armor_editor.trim.pattern matches 1.. run return run item modify entity @s $(slot) {type:"set_components",components:{"!trim":{}}}
##

## OTHERWISE SET NEW
    $item modify entity @s $(slot) {type:"set_components",components:{"minecraft:trim":{pattern:"$(pattern)",material:"$(material)"}}}
##
