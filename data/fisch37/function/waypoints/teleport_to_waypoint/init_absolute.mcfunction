##
 # init_absolute.mcfunction
 # Teleports the player to the waypoint specified in their goto_waypoint score (-1)
 # found in the global waypoint storage
 #
 # Created by Fisch37.
##

scoreboard players operation target_waypoint f37_waypoints_RAM = @s goto_waypoint
scoreboard players remove target_waypoint f37_waypoints_RAM 1

data modify storage fisch37:waypoints iter_waypoints set from storage fisch37:waypoints waypoints
function fisch37:waypoints/teleport_to_waypoint/with_level_check