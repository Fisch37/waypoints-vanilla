##
 # _macro_get_waypoint.mcfunction
 #
 # Macro function to get a waypoint at an index. 
 # Leaves its result at target_waypoint in storage.
 #
 # Created by Fisch37.
##
$data modify storage fisch37:waypoints target_waypoint set from storage fisch37:waypoints iter_waypoints[$(index)]