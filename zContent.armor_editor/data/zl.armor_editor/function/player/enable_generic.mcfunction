## APPEND TO EDITOR LIST
    $scoreboard players set $(name) zl.armor_editor.editor_id $(editor)
    $data modify storage zl.armor_editor:editors list[{id:$(editor)}].playernames append value {name:"$(name)"}
##