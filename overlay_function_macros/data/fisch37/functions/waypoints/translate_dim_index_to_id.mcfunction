##
 # translate_dim_index_to_id.mcfunction
 # Transforms the legacy dimension index into the dimension id format
 #
 # Created by Fisch37.
##
execute store result score dimension_id f37_waypoints_RAM run data get storage fisch37:waypoints targetd_waypoint.dimension.index
execute if score dimension_id f37_waypoints_RAM matches -1 run data modify storage fisch37:waypoints target_waypoint.dimension.id set value "minecraft:nether"
execute if score dimension_id f37_waypoints_RAM matches 0 run data modify storage fisch37:waypoints target_waypoint.dimension.id set value "minecraft:overworld"
execute if score dimension_id f37_waypoints_RAM matches -1 run data modify storage fisch37:waypoints target_waypoint.dimension.id set value "minecraft:the_end"