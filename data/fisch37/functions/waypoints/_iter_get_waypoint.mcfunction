##
 # _iter_get_waypoint.mcfunction
 # Iteration of the get_waypoint loop
 # 
 # Created by .
##
# Loop completion action
execute if score target_waypoint f37_waypoints_RAM matches 0 run data modify storage fisch37:waypoints target_waypoint set from storage fisch37:waypoints temporary_waypoints[0]
# Loop iteration action
data remove storage fisch37:waypoints temporary_waypoints[0]
scoreboard players remove target_waypoint f37_waypoints_RAM 1
# Loop goto (yes, it's technically recursion)
execute if score target_waypoint f37_waypoints_RAM matches 0.. run function fisch37:waypoints/_iter_get_waypoint