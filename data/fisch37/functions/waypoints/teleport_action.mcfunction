##
 # teleport_action.mcfunction
 # Actually calls the teleport function on the player
 # 
 # Created by Fisch37.
##
function fisch37:waypoints/_iter_reduce_levels
execute store result score x f37_tp_pos run data get storage fisch37:waypoints target_waypoint.Pos[0]
execute store result score y f37_tp_pos run data get storage fisch37:waypoints target_waypoint.Pos[1]
execute store result score z f37_tp_pos run data get storage fisch37:waypoints target_waypoint.Pos[2]
scoreboard players reset dimension_index f37_waypoints_RAM
execute store result score dimension_index f37_waypoints_RAM run data get storage fisch37:waypoints target_waypoint.dimension.index
# Run depending on the dimension. This is what makes this datapack incompatible with custom dimensions. Yay
execute if score dimension_index f37_waypoints_RAM matches -1 in minecraft:the_nether run function fisch37:waypoints/warp/call
execute if score dimension_index f37_waypoints_RAM matches 0 in minecraft:overworld run function fisch37:waypoints/warp/call
execute if score dimension_index f37_waypoints_RAM matches 1 in minecraft:the_end run function fisch37:waypoints/warp/call

playsound entity.enderman.teleport player @s
tellraw @s [{"text":"[Waypoints] ","color":"aqua","bold":true},{"text":"Welcome to ","color":"white","bold":false},{"nbt":"target_waypoint.name","storage":"fisch37:waypoints","color":"gray","italic":true,"bold":false}]