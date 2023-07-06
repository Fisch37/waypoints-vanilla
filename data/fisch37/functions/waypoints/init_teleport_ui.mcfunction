##
 # teleport_waypoint.mcfunction
 # Teleports the player to the waypoint specified in their goto_waypoint score (-1)
 #
 # Created by Fisch37.
##

scoreboard players operation target_waypoint f37_waypoints_RAM = @s goto_waypoint
scoreboard players remove target_waypoint f37_waypoints_RAM 1
function fisch37:waypoints/get_waypoint
execute store result score player_levels f37_waypoints_RAM run xp query @s levels
execute store result score wps_cost f37_waypoints_RAM run data get storage fisch37:waypoints target_waypoint.cost
# On Error
execute if score player_levels f37_waypoints_RAM < wps_cost f37_waypoints_RAM run tellraw @s [{"text":"[Waypoints] ","color":"aqua","bold":true},{"text":"You do not have enough levels!","color":"red","bold":false}]
execute if score player_levels f37_waypoints_RAM < wps_cost f37_waypoints_RAM run playsound minecraft:entity.ender_eye.death player @s
# On Success
execute if score player_levels f37_waypoints_RAM >= wps_cost f37_waypoints_RAM run function fisch37:waypoints/teleport_action
# Cleanup
scoreboard players reset @s goto_waypoint
data remove storage fisch37:waypoints target_waypoint