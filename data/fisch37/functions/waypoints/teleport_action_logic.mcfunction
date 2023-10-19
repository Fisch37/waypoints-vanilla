##
 # teleport_action_logic.mcfunction
 # Does some fancy logic around the actual teleport.
 # Reduces the amount of levels, calls teleport_action, sound, 
 # particles, a chat message.
 # 
 # Created by Fisch37.
##
execute unless entity @s[gamemode=creative] run function fisch37:waypoints/_iter_reduce_levels

function fisch37:waypoints/teleport_action

# NOTE: Sound and particles can be unreliable at great distances.
#       This might be fixed incidentally when implementing function macros.
execute at @s run playsound entity.enderman.teleport player @s
execute at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1 100 force
tellraw @s [{"text":"[Waypoints] ","color":"aqua","bold":true},{"text":"Welcome to ","color":"white","bold":false},{"nbt":"target_waypoint.name","storage":"fisch37:waypoints","color":"gray","italic":true,"bold":false}]