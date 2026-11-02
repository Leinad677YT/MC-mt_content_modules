data modify storage zl.armor_editor:data trim_mat append value { \
    "menu_model":"minecraft:iron_ingot", \
    "material_id":"minecraft:iron", \
    "added_by":"vanilla" \
}
execute store result storage zl.armor_editor:data trim_mat[-1].id int 1 \
    run scoreboard players add #zl.0 zl.armor_editor.trim.material 1

data modify storage zl.armor_editor:data trim_mat append value { \
    "menu_model":"minecraft:copper_ingot", \
    "material_id":"minecraft:copper", \
    "added_by":"vanilla" \
}
execute store result storage zl.armor_editor:data trim_mat[-1].id int 1 \
    run scoreboard players add #zl.0 zl.armor_editor.trim.material 1

data modify storage zl.armor_editor:data trim_mat append value { \
    "menu_model":"minecraft:gold_ingot", \
    "material_id":"minecraft:gold", \
    "added_by":"vanilla" \
}
execute store result storage zl.armor_editor:data trim_mat[-1].id int 1 \
    run scoreboard players add #zl.0 zl.armor_editor.trim.material 1

data modify storage zl.armor_editor:data trim_mat append value { \
    "menu_model":"minecraft:netherite_ingot", \
    "material_id":"minecraft:netherite", \
    "added_by":"vanilla" \
}
execute store result storage zl.armor_editor:data trim_mat[-1].id int 1 \
    run scoreboard players add #zl.0 zl.armor_editor.trim.material 1

data modify storage zl.armor_editor:data trim_mat append value { \
    "menu_model":"minecraft:diamond", \
    "material_id":"minecraft:diamond", \
    "added_by":"vanilla" \
}
execute store result storage zl.armor_editor:data trim_mat[-1].id int 1 \
    run scoreboard players add #zl.0 zl.armor_editor.trim.material 1

data modify storage zl.armor_editor:data trim_mat append value { \
    "menu_model":"minecraft:emerald", \
    "material_id":"minecraft:emerald", \
    "added_by":"vanilla" \
}
execute store result storage zl.armor_editor:data trim_mat[-1].id int 1 \
    run scoreboard players add #zl.0 zl.armor_editor.trim.material 1

data modify storage zl.armor_editor:data trim_mat append value { \
    "menu_model":"minecraft:amethyst_shard", \
    "material_id":"minecraft:amethyst", \
    "added_by":"vanilla" \
}
execute store result storage zl.armor_editor:data trim_mat[-1].id int 1 \
    run scoreboard players add #zl.0 zl.armor_editor.trim.material 1

data modify storage zl.armor_editor:data trim_mat append value { \
    "menu_model":"minecraft:quartz", \
    "material_id":"minecraft:quartz", \
    "added_by":"vanilla" \
}
execute store result storage zl.armor_editor:data trim_mat[-1].id int 1 \
    run scoreboard players add #zl.0 zl.armor_editor.trim.material 1

data modify storage zl.armor_editor:data trim_mat append value { \
    "menu_model":"minecraft:lapis_lazuli", \
    "material_id":"minecraft:lapis", \
    "added_by":"vanilla" \
}
execute store result storage zl.armor_editor:data trim_mat[-1].id int 1 \
    run scoreboard players add #zl.0 zl.armor_editor.trim.material 1

data modify storage zl.armor_editor:data trim_mat append value { \
    "menu_model":"minecraft:redstone", \
    "material_id":"minecraft:redstone", \
    "added_by":"vanilla" \
}
execute store result storage zl.armor_editor:data trim_mat[-1].id int 1 \
    run scoreboard players add #zl.0 zl.armor_editor.trim.material 1
