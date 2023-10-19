##
 # init_rel_tp.mcfunction
 # Sets up and checks a teleport for validity when executed with goto_waypoint_rel.
 # Also executes teleport_action_logic
 # Created by Fisch37.
##

scoreboard players operation target_waypoint f37_waypoints_RAM = @s goto_waypoint_rel
scoreboard players remove target_waypoint f37_waypoints_RAM 1

data modify storage fisch37:waypoints iter_waypoints set from entity @s SelectedItem.tag.stored_waypoints
function fisch37:waypoints/get_waypoint
execute store result score has_sufficient_levels f37_waypoints_RAM run function fisch37:waypoints/check_levels

execute if score has_sufficient_levels f37_waypoints_RAM matches 0 run function fisch37:waypoints/comm_actions/teleport_not_enough_levels
execute if score has_sufficient_levels f37_waypoints_RAM matches 1 run function fisch37:waypoints/teleport_action_logic
# Cleanup
data remove storage fisch37:waypoints target_waypoint