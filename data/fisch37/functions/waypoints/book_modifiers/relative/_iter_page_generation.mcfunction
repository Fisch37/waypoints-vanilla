##
 # _iter_page_generation.mcfunction
 #
##

execute if score wps_count f37_waypoints_RAM matches ..0 run return 0
# Failsafe for wps_count > 128 (or other value if implementation changed)
execute unless data storage fisch37:json templates[0] run return 1

data modify storage fisch37:json raw set from storage fisch37:json templates[0]
function fisch37:waypoints/resolve_json_text/resolve
data modify storage fisch37:json resolved_list append from storage fisch37:json resolved

data remove storage fisch37:json templates[0]
scoreboard players remove wps_count f37_waypoints_RAM 1
function fisch37:waypoints/book_modifiers/relative/_iter_page_generation