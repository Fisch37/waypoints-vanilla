##
 # init_rel_tp.mcfunction
 # Sets up and checks a teleport for validity when executed with goto_waypoint_rel.
 # Also executes teleport_action_logic
 # Created by Fisch37.
##

scoreboard players operation target_waypoint f37_waypoints_RAM = @s goto_waypoint_rel
scoreboard players remove target_waypoint f37_waypoints_RAM 1

data modify storage fisch37:waypoints iter_waypoints set from entity @s SelectedItem.tag.stored_waypoints
function fisch37:waypoints/teleport_with_level_check