##
 # replace_item.mcfunction
 #
 # Replaces the signed waypoint creator book with a new waypoint book.
 #
 # Created by Fisch37.
##
# FIXME: This raises a huge java exception. Works anyway though! WTF
data modify storage fisch37:json raw set value '[{"text":""},{"nbt":"current_waypoint.name","storage":"fisch37:waypoints","color":"gold","bold":true,"underlined":true},{"text":"\\nCreated By: ","color":"black"},{"nbt":"current_waypoint.author","storage":"fisch37:waypoints","color":"gray","italic":true},{"text":"\\nPos: ","color":"dark_aqua"},{"nbt":"current_waypoint.dimension.name","storage":"fisch37:waypoints","color":"dark_aqua","italic":true},{"text":"/","color":"dark_aqua"},{"nbt":"current_waypoint.Pos","storage":"fisch37:waypoints","color":"dark_aqua","italic":true},{"text":"\\nCost: ","color":"dark_green"},{"nbt":"current_waypoint.cost","storage":"fisch37:waypoints","color":"dark_green","italic":true},{"text":"\\nDescription: "},{"nbt":"current_waypoint.description","storage":"fisch37:waypoints","italic":true,"interpret": true}]'
function fisch37:waypoints/resolve_json_text/resolve

item replace entity @s weapon.mainhand with written_book{IsWaypoint:1b,display:{Name:'{"text":"Waypoint","color":"aqua","italic":false}',Lore:['{"text":"A book detailing a specific waypoint."}','{"text":"Add it to your collection by combining it with a teleport book"}','{"text":"or duplicate it and share the waypoint with others."}']},title:"Title!",author:"",pages:[]} 1
item modify entity @s weapon.mainhand fisch37:waypoints/set_waypoint_info_book
item modify entity @s weapon.mainhand fisch37:waypoints/set_waypoint_book_page