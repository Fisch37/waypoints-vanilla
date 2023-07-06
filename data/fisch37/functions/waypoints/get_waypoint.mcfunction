##
 # get_waypoint.mcfunction
 # Copies the waypoint at index <f37_waypoints_RAM:target_waypoint> 
 # out of fisch37:waypoints.waypoints into fisch37:waypoints.target_waypoint
 # Resets f37_waypoints_RAM:target_waypoints to -1
 #
 # Created by Fisch37.
##
data modify storage fisch37:waypoints temporary_waypoints set from storage fisch37:waypoints waypoints
data modify storage fisch37:waypoints target_waypoint set value {}
function fisch37:waypoints/_iter_get_waypoint

data remove storage fisch37:waypoints temporary_waypoints