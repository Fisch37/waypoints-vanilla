##
 # teleport_waypoint.mcfunction
 # Teleports the player to the waypoint specified in their goto_waypoint score (-1)
 #
 # Created by Fisch37.
##

scoreboard players operation target_waypoint f37_waypoints_RAM = @s goto_waypoint
scoreboard players remove target_waypoint f37_waypoints_RAM 1
data modify storage fisch37:waypoints iter_waypoints set from storage fisch37:waypoints waypoints
function fisch37:waypoints/get_waypoint
execute store result score has_sufficient_levels f37_waypoints_RAM run function fisch37:waypoints/check_levels

execute if score has_sufficient_levels f37_waypoints_RAM matches 0 run function fisch37:waypoints/comm_actions/teleport_not_enough_levels
execute if score has_sufficient_levels f37_waypoints_RAM matches 1 run function fisch37:waypoints/teleport_action_logic
# Cleanup
scoreboard players reset @s goto_waypoint
data remove storage fisch37:waypoints target_waypoint