data modify storage fisch37:waypoints macro_arguments set value {}
execute store result storage fisch37:waypoints macro_arguments.x double 1 run data get storage fisch37:waypoints target_waypoint.Pos[0]
execute store result storage fisch37:waypoints macro_arguments.y double 1 run data get storage fisch37:waypoints target_waypoint.Pos[1]
execute store result storage fisch37:waypoints macro_arguments.z double 1 run data get storage fisch37:waypoints target_waypoint.Pos[2]
execute unless data storage fisch37:waypoints target_waypoint.dimension.id run function fisch37:waypoints/translate_dim_index_to_id
data modify storage fisch37:waypoints macro_arguments.dimension set string storage fisch37:waypoints target_waypoint.dimension.id
function fisch37:waypoints/warp/teleport with storage fisch37:waypoints macro_arguments