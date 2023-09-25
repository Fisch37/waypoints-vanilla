##
 # reset.mcfunction
 # Creates all book storages, if required
 #
 # Created by Fisch37.
##
scoreboard players set _new_data_version f37_waypoints_RAM 2
execute if score data_version f37_waypoints_RAM > _new_data_version f37_waypoints_RAM run tellraw @a [{"text":"[Waypoints] ","color":"aqua","bold":true},{"text":"Downgrade detected! Depending on the version difference this can cause issues! Downgrades will not occur automatically!","color":"red","bold":false}]
execute if score data_version f37_waypoints_RAM >= _new_data_version f37_waypoints_RAM run return 1


function #fisch37:waypoints/book_modifiers
scoreboard players operation data_version f37_waypoints_RAM = _new_data_version f37_waypoints_RAM

scoreboard players reset _new_data_version f37_waypoints_RAM
tellraw @a [{"text":"[Waypoints] ","color":"aqua","bold":true},{"text":"Updated data pack!","color":"green","bold":false}]