##
 # reduce_levels.mcfunction
 # 
 # High-level interface for arbitrary level reduction.
 # 
 # Created by Fisch37.
##
data modify storage fisch37:waypoints macro_arguments set value {}
execute store result storage fisch37:waypoints macro_arguments.levels int 1 run scoreboard players get wps_cost f37_waypoints_RAM
function fisch37:waypoints/_macro_reduce_levels with storage fisch37:waypoints macro_arguments