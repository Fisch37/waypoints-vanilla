##
 # main.mcfunction
 # waypoints
 #
 # Created by Fisch37.
##
execute as @a if predicate fisch37:waypoints/holds_set_waypoint_book run function fisch37:waypoints/create_waypoint_book/init

scoreboard players enable @a[predicate=fisch37:waypoints/may_teleport_anywhere] goto_waypoint
execute as @a[scores={goto_waypoint=1..}] run function fisch37:waypoints/init_teleport_ui
# Neccessary for players switching from a book
scoreboard players reset @a[predicate=!fisch37:waypoints/may_teleport_anywhere] goto_waypoint

scoreboard players enable @a goto_waypoint_rel
execute as @a[scores={goto_waypoint_rel=1..}] if predicate fisch37:waypoints/holds_rel_book run function fisch37:waypoints/init_rel_tp
execute as @a[scores={goto_waypoint_rel=1..}] unless predicate fisch37:waypoints/holds_rel_book run function fisch37:waypoints/comm_actions/illegal_teleport_trigger
scoreboard players reset @a[scores={goto_waypoint_rel=1..}] goto_waypoint_rel

execute as @e[type=item,predicate=fisch37:waypoints/can_rel_add_pages] at @s if entity @e[type=item,nbt={Item:{tag:{IsWaypoint:1b}}},distance=..1] run function fisch37:waypoints/add_waypoint_to_book

execute as @e[type=item,nbt={Item:{id:"minecraft:writable_book"}}] at @s run function fisch37:waypoints/book_modifiers/may_make_rel_book
execute as @e[type=item,nbt={Item:{id:"minecraft:writable_book"}}] at @s run function fisch37:waypoints/book_modifiers/may_make_waypoint_book