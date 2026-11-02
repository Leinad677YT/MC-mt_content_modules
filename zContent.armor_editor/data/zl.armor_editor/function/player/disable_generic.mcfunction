## REMOVE FROM EDITOR LIST
    $scoreboard players reset $(name) zl.armor_editor.editor_id
    $data remove storage zl.armor_editor:editors list[{id:"$(editor)"}].playernames[{name:"$(name)"}]
##