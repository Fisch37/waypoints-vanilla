##
 # get_waypoint.mcfunction
 # Copies the waypoint at index <f37_waypoints_RAM:target_waypoint> 
 # out of fisch37:waypoints.iter_waypoints into 
 # fisch37:waypoints.target_waypoint
 #
 # Resets f37_waypoints_RAM:target_waypoints to -1 and leaves
 # iter_waypoint with target_waypoint and all before removed
 #
 # Created by Fisch37.
##
data modify storage fisch37:waypoints target_waypoint set value {}
function fisch37:waypoints/_iter_get_waypoint

data remove storage fisch37:waypoints temporary_waypoints