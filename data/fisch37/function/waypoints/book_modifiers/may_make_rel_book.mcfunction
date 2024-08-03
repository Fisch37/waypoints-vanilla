##
 # make_rel_book.mcfunction
 # Converts a book and quill on the floor into a relative teleport book,
 # if possible. Does not check whether @s is a book and quill.
 # Created by Fisch37.
##
execute unless predicate fisch37:waypoints/is_on_crafting run return -1
execute unless entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:echo_shard",Count:8b}}] run return -2
data modify entity @s Item merge value {id:"minecraft:written_book",tag:{display:{Name:'{"text":"Waypoint Book","color":"yellow","italic":false}'},title:"",author:"The Echoing Void"}}
function fisch37:waypoints/book_modifiers/on_floor_rel

kill @e[type=item,distance=..1,limit=1,sort=nearest,nbt={Item:{id:"minecraft:echo_shard",Count:8b}}]
execute run playsound minecraft:block.enchantment_table.use player @a
execute run particle minecraft:witch ~ ~.25 ~ 0 0 0 0.7 75