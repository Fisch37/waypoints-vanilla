##
 # replace_item.mcfunction
 #
 # Replaces the signed waypoint creator book with a new waypoint book.
 #
 # Created by Fisch37.
##

item replace entity @s weapon.mainhand with written_book{IsWaypoint:1b,display:{Name:'{"text":"Waypoint","color":"aqua","italic":false}',Lore:['{"text":"A book detailing a specific waypoint."}','{"text":"Add it to your collection by combining it with a teleport book"}','{"text":"or duplicate it and share the waypoint with others."}']},title:"Title!",author:"",pages:['[{"text":""},{"nbt":"SelectedItem.tag.waypoint.name","entity":"@s","color":"gold","bold":true,"underlined":true},{"text":"\\nCreated By: ","color":"black"},{"nbt":"SelectedItem.tag.waypoint.author","entity":"@s","color":"gray","italic":true},{"text":"\\nPos: ","color":"dark_aqua"},{"nbt":"SelectedItem.tag.waypoint.dimension.name","entity":"@s","color":"dark_aqua","italic":true},{"text":"/","color":"dark_aqua"},{"nbt":"SelectedItem.tag.waypoint.Pos","entity":"@s","color":"dark_aqua","italic":true},{"text":"\\nCost: ","color":"dark_green"},{"nbt":"SelectedItem.tag.waypoint.cost","entity":"@s","color":"dark_green","italic":true},{"text":"\\nDescription: "},{"nbt":"SelectedItem.tag.waypoint.description","entity":"@s","italic":true,"interpret": true}]']} 1
item modify entity @s weapon.mainhand fisch37:waypoints/set_waypoint_info_book