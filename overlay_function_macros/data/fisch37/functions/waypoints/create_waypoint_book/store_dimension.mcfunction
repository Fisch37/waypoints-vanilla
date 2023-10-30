##
 # store_dimension.mcfunction
 #
 # Stores the dimension of the waypoint.
 # This overlay implements support for custom dimensions using the dimension.id field.
 #
 # Created by Fisch37.
##

# The 1.20.2 overlay supports custom dimensions.
# The following changes provide that support.
data modify storage fisch37:waypoints current_waypoint.dimension.id set from entity @s Dimension
data modify storage fisch37:waypoints current_waypoint.dimension.name set from entity @s Dimension
# Still setting dimension indices as to preserve backwards compatibility
# (will possibly be removed in 1.21 releases)
execute at @s if dimension minecraft:overworld run data modify storage fisch37:waypoints current_waypoint.dimension merge value {index:0,name:"Overworld"}
execute at @s if dimension minecraft:the_nether run data modify storage fisch37:waypoints current_waypoint.dimension.name set value {index:-1,name:"The Nether"}
execute at @s if dimension minecraft:the_end run data modify storage fisch37:waypoints current_waypoint.dimension.name set value {index:1,name:"The End"}