##
 # round_upward.mcfunction
 # 
 # Rounds to the nearest integer upward
 # This means: abs(x)*10-floor(abs(x))*10) >= 5 ? top(x)*10 : floor(x)*10
 # (
 #  The method used is more similar to this:
 #  y := abs(x)
 #  sign(x) * ((y*10)-floor(y)*10 >= 5 ? top(y)*10 : floor(y)*10)
 #
 # Created by Fisch37.
##
# Correct round_in to always be positive (while storing the sign)
scoreboard players set round_sign f37_waypoints_RAM 1
execute if score round_in f37_waypoints_RAM matches ..0 run scoreboard players set round_sign f37_waypoints_RAM -1
scoreboard players operation round_in f37_waypoints_RAM *= round_sign f37_waypoints_RAM
# Call half-away from zero logic
# (the logic is exactly the same once round_in is defined to be >=0)
function fisch37:waypoints/rounding/half_away_from_zero
# Correct sign
scoreboard players operation round_out f37_waypoints_RAM *= round_sign f37_waypoints_RAM
# Cleanup
scoreboard players reset round_sign f37_waypoints_RAM