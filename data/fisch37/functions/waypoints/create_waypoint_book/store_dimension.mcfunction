##
 # store_dimension.mcfunction
 #
 # Stores the dimension of the waypoint.
 #
 # Created by Fisch37.
##

execute at @s if dimension minecraft:the_nether run data modify storage fisch37:waypoints current_waypoint.dimension set value {index:-1, name:"The Nether"}
execute at @s if dimension minecraft:the_end run data modify storage fisch37:waypoints current_waypoint.dimension set value {index:1, name:"The End"}