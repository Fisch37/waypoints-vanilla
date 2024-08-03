# (x*10)-floor(x)*10 >= 5 ? top(x)*10 : floor(x)*10

scoreboard players set TEN f37_waypoints_RAM 10

scoreboard players operation round_out f37_waypoints_RAM = round_in f37_waypoints_RAM

scoreboard players operation round_out f37_waypoints_RAM /= TEN f37_waypoints_RAM
scoreboard players operation round_out f37_waypoints_RAM *= TEN f37_waypoints_RAM

scoreboard players operation round_in f37_waypoints_RAM -= round_out f37_waypoints_RAM

execute if score round_in f37_waypoints_RAM matches 5.. run scoreboard players add round_out f37_waypoints_RAM 10