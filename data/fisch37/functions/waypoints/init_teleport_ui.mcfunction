##
 # teleport_waypoint.mcfunction
 # Teleports the player to the waypoint specified in their goto_waypoint score (-1)
 #
 # Created by Fisch37.
##

scoreboard players operation target_waypoint f37_waypoints_RAM = @s goto_waypoint
scoreboard players remove target_waypoint f37_waypoints_RAM 1

data modify storage fisch37:waypoints iter_waypoints set from storage fisch37:waypoints waypoints
function fisch37:waypoints/teleport_with_level_check