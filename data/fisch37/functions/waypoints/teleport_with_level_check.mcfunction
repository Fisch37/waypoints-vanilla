##
 # teleport_with_level_check.mcfunction
 #
 # Runs as soon as the relevant waypoints have been copied to 
 # iter_waypoints
 # (continuing from init_teleport_ui and init_rel_tp).
 #
 # Checks if a player has enough levels to teleport and completes the
 # teleport or sends an error. Also cleans up after the two calling
 # functions
 #
 # Created by Fisch37.
##
function fisch37:waypoints/get_waypoint
execute store result score has_sufficient_levels f37_waypoints_RAM run function fisch37:waypoints/check_levels

execute if score has_sufficient_levels f37_waypoints_RAM matches 0 run function fisch37:waypoints/comm_actions/teleport_not_enough_levels
execute if score has_sufficient_levels f37_waypoints_RAM matches 1 run function fisch37:waypoints/teleport_action_logic

# Cleanup
scoreboard players reset @s goto_waypoint
data remove storage fisch37:waypoints target_waypoint
scoreboard players reset player_levels f37_waypoints_RAM
scoreboard players reset wps_cost f37_waypoints_RAM
scoreboard players reset has_sufficient_levels f37_waypoints_RAM