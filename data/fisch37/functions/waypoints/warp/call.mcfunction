##
 # call.mcfunction
 # Warps the active player to the position defined in the f37_tp_pos scoreboard.
 # Uses the dimension the command is executed in.
 # The concept is by u/Micalobia whose forum post inspired this solution.
 #
 # Let us hope there are no bugs in this code
 # Created by Fisch37
 # (this is the same method used in my void warp project)
##

teleport @s 0 0 0 ~ ~

execute if score x f37_tp_pos matches 1.. run function fisch37:waypoints/warp/iterate_x
execute if score x f37_tp_pos matches ..-1 run function fisch37:waypoints/warp/iterate_nx

execute if score y f37_tp_pos matches 1.. run function fisch37:waypoints/warp/iterate_y
execute if score y f37_tp_pos matches ..-1 run function fisch37:waypoints/warp/iterate_ny

execute if score z f37_tp_pos matches 1.. run function fisch37:waypoints/warp/iterate_z
execute if score z f37_tp_pos matches ..-1 run function fisch37:waypoints/warp/iterate_nz

scoreboard players reset x f37_tp_pos
scoreboard players reset y f37_tp_pos
scoreboard players reset z f37_tp_pos