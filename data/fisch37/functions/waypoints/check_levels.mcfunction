##
 # check_levels.mcfunction
 # Checks whether the current player has enough levels for the target_waypoint.
 # Returns 0 if false and 1 if true
 # Created by Fisch37.
##
execute if entity @s[gamemode=creative] run return 1


execute store result score player_levels f37_waypoints_RAM run xp query @s levels
execute store result score wps_cost f37_waypoints_RAM run data get storage fisch37:waypoints target_waypoint.cost
execute if score player_levels f37_waypoints_RAM >= wps_cost f37_waypoints_RAM run return 1
# Technically not required, but inconsistencies suck
return 0