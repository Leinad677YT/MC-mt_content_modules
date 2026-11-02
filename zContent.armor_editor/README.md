# Ingame armor editor

## Content

This pack adds an ingame armor editor and visualizer. It's aimed for creators that want to quickly see how an armor set would look like.

> [!TIP]
> There is support for adding more trims to the pool (or removing them, except for the no-trim special pattern) see the function calls inside [](#specification) for more info. If you want to see how many patterns or materials have been loaded, tag yourself with the `l.core.tellraw` tag.

> [!TIP]
> You can remove the interaction sounds by tagging yourself with `l.core.silent`.

> [!NOTE]
> There are more planned features like a dye visuallizer (almost implemented inside the code if you dig a little), changing the base equipment items via the anvil or making the loops use item models instead of raw ids, but I cannot implement them at this moment. Feel free to contact me on discord @leinad677yt for feedback or questions.

### General HowTo

An editor consists of 3 main areas, two are on the sides and one at the center. The easiest ones to understand are the side ones, so I'll start with them:

#### Right area

This area consists of 2 parts, divided vertically.

The one on top is a display that shows you which equipment piece is selected.

The lower one, consists of an armor piece selector. Here, armor on the armorstand will be displayed. To select one of it's slots, simply right click it. To set your current settings to the ones on the armor piece, right click again on it. To copy settings from another equipment piece, left click on it while having the one you want to override selected.

#### Left area

This area is very similar to the right area, except that it also has some interactable tools.

The lower half consists of a selector that works exactly like the armor one, except that it is used for hand items (mainhand and offhand).

On top of it, there are 3 "blocks" whose interactions apply changes that are not transferable with the copy mechanic:
- **Enchantment table:** right click on it to toggle the `minecraft:enchantment_glint_override` component of the selected item, left click to block it with `!minecraft:enchantment_glint_override`.
    > Enchanted books work fine for example.
- **Anvil:** right or left click on it with an item that has a `minecraft:stored_enchantments` component to merge it's contents into the selected item. This works with illegal enchantments as well.
- **Grindstone:** right or left click on it to remove all enchantments from the selected item, even curses.

#### Center area

Here lies the armor stand, a trim selector and a dye editor. To change the available items, simply swap them on the armorstand.

Iterate over the trim list by using the `<` `>` arrows on the pattern or material loops at the left, both of which will affect the selected item.

Change the dye of the selected item by right clicking on the `+` or `-` with a **red**, **green** or **blue** _dye_. To remove the dye component entirely, click on the water bucket display.

### Specification
- **function**
    - `zl.user:armor_editor/create_editor`
        > Creates a new full editor with a new id. It's data will reside under `zl.armor_editor:editors list[-1]` until a new one is created, which would append the other one to the list.
        > The editor will come with an armor stand, a display for the currently selected item, selection for armor and hand items, enchantment related toggles and a menu to change trims and dyes.
    - `zl.user:armor_editor/remove_editor`
        > Called with the editor id as `$(editor)`
        > Removes the editor with id `$(editor)`, including all it's related data and entities (if loaded). Also removes selection to it for all online players.
    - `zl.user:armor_editor/enable_player`
        > Called with the editor id as `$(editor)` and the player name as `$(name)`
        > Enables a player to interact with an editor, giving them full access. This works even if the editor does not exist.  
        > If your world has multiplayer template loaded and the player cannot be found online, this will queue the enabling until someone joins under the nickname.
    - `zl.user:player/disable_player`
        > Called with the editor id as `$(editor)` and the player name as `$(name)`
        > Disables a player from interacting with an editor, removing from them any access except from the stand interactions. This works even if the editor does not exist.  
        > If your world has multiplayer template loaded and the player cannot be found online, this will queue the disabling until someone joins under the nickname.
- **function call**
    - `#zl.user:armor_editor/load_trim_pattern`  
        > Meant to load more trim patterns on the loop. Add functions on this tag that append data to `storage zl.armor_editor:data trim_pattern` to make them appear on the iterable list.
        > Data should have the following minimal structure:
        ```json
            {
                "menu_model": <item id>,
                "pattern_id": <trim material id>,
                "added_by": <pack_id>
            }
        ```
        > Where `menu_model` is the **namespaced item id** that will be put on the menu display of the loop to represent it, `pattern_id` the namespaced id of the **trim pattern** and `added_by` the pack id of the pack that added it.
    - `#zl.user:armor_editor/load_trim_material`  
        > Meant to load more trim materials on the loop. Add functions on this tag that append data to `storage zl.armor_editor:data trim_mat` to make them appear on the iterable list.
        > Data should have the following minimal structure:
        ```json
            {
                "menu_model": <item id>,
                "material_id": <trim material id>,
                "added_by": <pack_id>
            }
        ```
        > Where `menu_model` is the **namespaced item id** that will be put on the menu display of the loop to represent it, `material_id` the namespaced id of the **trim material** and `added_by` the pack id of the pack that added it.
- **scoreboard objective**
    - `zl.armor_editor.editor_id`
        > All entities on the same editor share the same value on this score, which matches the editor id on the storage data. **Online** players can also be enabled by setting their score on this objective to the id of the editor.
- **entity tag**
    - `zl.armor_editor.editor`
        > Present on all entities that form editors. Depending on the function they serve, more speciallized tags can exist, such as `zl.armor.editor.selection` for all selection related displays and interactions.

> [!WARNING]
> Everything here that happens when a player is not online does not work with internal IDs, so if they change their nickname while having a pending editor enabling query, it will not update for them, and, **in the case that someone else joins under their old nick, they will be the ones enabled**. Be careful with queried updates!
