##
 # teleport_not_enough_levels.mcfunction
 # Sent if a teleport was attempted with insufficient levels.
 # 
 # Created by Fisch37.
##
tellraw @s [{"text":"[Waypoints] ","color":"aqua","bold":true},{"text":"You do not have enough levels!","color":"red","bold":false}]
execute at @s run playsound minecraft:entity.ender_eye.death player @s