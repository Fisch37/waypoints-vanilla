##
 # _reduce_levels_iter.mcfunction
 # 
 #
 # Created by .
##
execute if score wps_cost f37_waypoints_RAM matches 64.. run xp add @s -64 levels
execute if score wps_cost f37_waypoints_RAM matches 64.. run scoreboard players remove wps_cost f37_waypoints_RAM 64

execute if score wps_cost f37_waypoints_RAM matches 32.. run xp add @s -32 levels
execute if score wps_cost f37_waypoints_RAM matches 32.. run scoreboard players remove wps_cost f37_waypoints_RAM 32

execute if score wps_cost f37_waypoints_RAM matches 16.. run xp add @s -16 levels
execute if score wps_cost f37_waypoints_RAM matches 16.. run scoreboard players remove wps_cost f37_waypoints_RAM 16

execute if score wps_cost f37_waypoints_RAM matches 8.. run xp add @s -8 levels
execute if score wps_cost f37_waypoints_RAM matches 8.. run scoreboard players remove wps_cost f37_waypoints_RAM 8

execute if score wps_cost f37_waypoints_RAM matches 4.. run xp add @s -4 levels
execute if score wps_cost f37_waypoints_RAM matches 4.. run scoreboard players remove wps_cost f37_waypoints_RAM 4

execute if score wps_cost f37_waypoints_RAM matches 2.. run xp add @s -2 levels
execute if score wps_cost f37_waypoints_RAM matches 2.. run scoreboard players remove wps_cost f37_waypoints_RAM 2

execute if score wps_cost f37_waypoints_RAM matches 1.. run xp add @s -1 levels
execute if score wps_cost f37_waypoints_RAM matches 1.. run scoreboard players remove wps_cost f37_waypoints_RAM 1


execute if score wps_cost f37_waypoints_RAM matches 1.. run function fisch37:waypoints/_iter_reduce_levels