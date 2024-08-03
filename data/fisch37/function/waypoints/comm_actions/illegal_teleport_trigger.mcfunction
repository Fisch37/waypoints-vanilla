##
 # illegal_teleport_trigger.mcfunction
 # 
 # Tells SELF that they cannot use goto_waypoint_rel currently.
 #
 # Created by Fisch37.
##
tellraw @s [{"text":"[Waypoints] ","color":"aqua","bold":true},{"text":"This trigger can only be used with a customized teleport book! If you were, don't hold the teleport book in your off-hand.","color":"red","bold":false}]