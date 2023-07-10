##
 # add_waypoint_to_book.mcfunction
 # Logic for merging a waypoint from a book to relative waypoint book.
 # Executor is the relative waypoint book.
 # Created by Fisch37.
##
execute unless data entity @s Item.tag.stored_waypoints run data merge entity @s {Item:{tag:{stored_waypoints:[]}}}
data modify entity @s Item.tag.stored_waypoints append from entity @e[limit=1,sort=nearest,nbt={Item:{tag:{IsWaypoint:1b}}},distance=..1] Item.tag.waypoint

execute store result score rel_wps_count f37_waypoints_RAM run data get entity @s Item.tag.wps_count 1
scoreboard players add rel_wps_count f37_waypoints_RAM 1
execute store result entity @s Item.tag.wps_count int 1 run scoreboard players get rel_wps_count f37_waypoints_RAM

function fisch37:waypoints/book_modifiers/on_floor_rel
kill @e[limit=1,sort=nearest,type=item,nbt={Item:{tag:{IsWaypoint:1b}}},distance=..1]
execute at @s run playsound minecraft:block.enchantment_table.use player @a
execute at @s run particle minecraft:enchant ~ ~1.5 ~ 0 0 0 3 100