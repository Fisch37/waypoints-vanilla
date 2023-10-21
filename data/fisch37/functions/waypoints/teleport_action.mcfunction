##
 # teleport_action.mcfunction
 # Actually calls the teleport
 # 
 # Created by Fisch37. 
##

execute store result score x f37_tp_pos run data get storage fisch37:waypoints target_waypoint.Pos[0]
execute store result score y f37_tp_pos run data get storage fisch37:waypoints target_waypoint.Pos[1]
execute store result score z f37_tp_pos run data get storage fisch37:waypoints target_waypoint.Pos[2]
scoreboard players reset dimension_index f37_waypoints_RAM
execute store result score dimension_index f37_waypoints_RAM run data get storage fisch37:waypoints target_waypoint.dimension.index
# Run depending on the dimension. This is what makes this datapack incompatible with custom dimensions. Yay
execute if score dimension_index f37_waypoints_RAM matches -1 in minecraft:the_nether run function fisch37:waypoints/warp/call
execute if score dimension_index f37_waypoints_RAM matches 0 in minecraft:overworld run function fisch37:waypoints/warp/call
execute if score dimension_index f37_waypoints_RAM matches 1 in minecraft:the_end run function fisch37:waypoints/warp/call

# Cleanup
# (f37_tp_pos is completely reset by waypoints/warp/call)
scoreboard players reset dimension_index f37_waypoints_RAM