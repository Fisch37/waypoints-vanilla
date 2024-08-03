##
 # store_global_data.mcfunction
 # 
 # Stores the waypoint in the global scope.
 # (this functionality is semi-deprecated and it's availability may be removed)
 #
 # Created by Fisch37.
##
data modify storage fisch37:waypoints waypoints append from storage fisch37:waypoints current_waypoint
scoreboard players add wps_count f37_waypoints_RAM 1