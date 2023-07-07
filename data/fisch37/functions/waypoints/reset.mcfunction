##
 # reset.mcfunction
 # waypoints
 #
 # Created by Fisch37.
##
execute unless data storage fisch37:waypoints waypoints run data merge storage fisch37:waypoints {waypoints:[]}
execute unless data storage fisch37:waypoints/books all_waypoints run function fisch37:waypoints/book_modifiers/store_all_wps_nbt
scoreboard objectives add f37_waypoints_RAM dummy
scoreboard objectives add goto_waypoint trigger
scoreboard objectives add f37_tp_pos dummy