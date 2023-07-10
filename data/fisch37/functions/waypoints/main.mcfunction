##
 # main.mcfunction
 # waypoints
 #
 # Created by Fisch37.
##
execute as @a if predicate fisch37:waypoints/holds_set_waypoint_book run function fisch37:waypoints/waypoint_from_book

scoreboard players enable @a goto_waypoint
execute as @a[scores={goto_waypoint=1..}] run function fisch37:waypoints/init_teleport_ui

scoreboard players enable @a goto_waypoint_rel
execute as @a[scores={goto_waypoint_rel=1..}] if predicate fisch37:waypoints/holds_rel_book run function fisch37:waypoints/init_rel_tp
execute as @a[scores={goto_waypoint_rel=1..}] unless predicate fisch37:waypoints/holds_rel_book run tellraw @s [{"text":"[Waypoints] ","color":"aqua","bold":true},{"text":"This trigger can only be used with a customized teleport book! If you were, don't hold the teleport book in your off-hand.","color":"red","bold":false}]
scoreboard players reset @a[scores={goto_waypoint_rel=1..}] goto_waypoint_rel

execute as @e[type=item,predicate=fisch37:waypoints/can_rel_add_pages] at @s if entity @e[type=item,nbt={Item:{tag:{IsWaypoint:1b}}},distance=..1] run function fisch37:waypoints/add_waypoint_to_book