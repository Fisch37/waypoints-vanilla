##
 # may_make_waypoint_book.mcfunction
 # Converts a book and quill into a waypoint creator book, if possible.
 # Does not check for @s being a book and quill.
 #
 # Created by Fisch37.
##
execute unless predicate fisch37:waypoints/is_on_crafting run return -1
execute unless entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}] run return -2
data modify entity @s Item merge value {tag:{display:{Name:'{"text":"Waypoint Creator","color":"aqua","italic":false}'},IsWaypointBook:1b,Enchantments:[{}],pages:["Sign this book to create a new waypoint, with the book title as the waypoint name."]}}

kill @e[type=item,distance=..1,limit=1,sort=nearest,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}}]
execute run playsound minecraft:block.enchantment_table.use player @a
execute run particle minecraft:witch ~ ~.25 ~ 0 0 0 0.7 75