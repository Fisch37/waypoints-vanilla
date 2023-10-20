##
 # get_waypoint.mcfunction
 #
 # Copies the waypoint at index <f37_waypoints_RAM:target_waypoint> 
 # out of fisch37:waypoints.iter_waypoints into 
 # fisch37:waypoints.target_waypoint
 #
 # Resets f37_waypoints_RAM:target_waypoints to -1
 #
 # Rewritten to use function macros
 #
 # Created by Fisch37.
## 
data modify storage fisch37:waypoints macro_arguments set value {}
execute store result storage fisch37:waypoints macro_arguments.index int 1 run scoreboard players get target_waypoint f37_waypoints_RAM
function fisch37:waypoints/_macro_get_waypoint with storage fisch37:waypoints macro_arguments