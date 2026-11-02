$scoreboard players reset @a[scores={zl.armor_editor.editor_id=$(editor)}] zl.armor_editor.editor_id
$data remove storage zl.armor_editor:editors list[{id:$(editor)}]
$kill @e[tag=zl.armor_editor.editor,scores={zl.armor_editor.editor_id=$(editor)}]