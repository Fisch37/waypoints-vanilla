##
 # store_position_data.mcfunction
 #
 # Stores position of the waypoint.
 # Y is rounded upward fixing falling through non-full blocks.
 #
 # Created by Fisch37.
##
execute store result storage fisch37:waypoints current_waypoint.Pos[0] int 1 run data get entity @s Pos[0] 1
execute store result score round_in f37_waypoints_RAM run data get entity @s Pos[1] 10
function fisch37:waypoints/rounding/upward
execute store result storage fisch37:waypoints current_waypoint.Pos[1] int 0.1 run scoreboard players get round_out f37_waypoints_RAM
execute store result storage fisch37:waypoints current_waypoint.Pos[2] int 1 run data get entity @s Pos[2] 1

scoreboard players reset round_in f37_waypoints_RAM
scoreboard players reset round_out f37_waypoints_RAM