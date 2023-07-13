##
 # reset.mcfunction
 # Creates all book storages, if required
 #
 # Created by Fisch37.
##
scoreboard players set _new_data_version f37_waypoints_RAM 1
execute if score data_version f37_waypoints_RAM > _new_data_version f37_waypoints_RAM run tellraw @a [{"text":"[Waypoints] ","color":"aqua","bold":true},{"text":"Downgrade detected! Depending on the version difference this can cause issues! Downgrades will not occur automatically!","color":"red","bold":false}]
execute if score data_version f37_waypoints_RAM >= _new_data_version f37_waypoints_RAM run return 1


execute unless data storage fisch37:waypoints/books all_waypoints run function fisch37:waypoints/book_modifiers/store_all_wps_nbt
execute unless data storage fisch37:waypoints/books rel_waypoints run function fisch37:waypoints/book_modifiers/store_rel_wps_nbt
scoreboard players operation data_version f37_waypoints_RAM = _new_data_version f37_waypoints_RAM

scoreboard players reset _new_data_version f37_waypoints_RAM
tellraw @a [{"text":"[Waypoints] ","color":"aqua","bold":true},{"text":"Updated data pack!","color":"green","bold":false}]