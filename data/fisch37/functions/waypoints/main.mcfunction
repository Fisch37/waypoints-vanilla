##
 # main.mcfunction
 # waypoints
 #
 # Created by Fisch37.
##
execute as @a if predicate fisch37:waypoints/holds_set_waypoint_book run function fisch37:waypoints/waypoint_from_book

scoreboard players enable @a goto_waypoint
execute as @a[scores={goto_waypoint=1..}] run function fisch37:waypoints/init_teleport_ui