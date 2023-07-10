##
 # waypoint_from_book.mcfunction
 # 
 #
 # Created by Fisch37.
##
# Setting up a temporary storage location to create the waypoint into
# Redoing this every time to ensure everything is set correctly
data merge storage fisch37:waypoints {current_waypoint:{name:"",author:"",Pos:[0,0,0],cost:0,dimension:{index:0,name:"Overworld"}}}
# Storing data
data modify storage fisch37:waypoints current_waypoint.name set string entity @s SelectedItem.tag.title
data modify storage fisch37:waypoints current_waypoint.author set string entity @s SelectedItem.tag.author
# Storing position (y rounded half away from zero)
# (fixes falling through paths etc.)
execute store result storage fisch37:waypoints current_waypoint.Pos[0] int 1 run data get entity @s Pos[0] 1
execute store result score round_in f37_waypoints_RAM run data get entity @s Pos[1] 10
function fisch37:waypoints/rounding/half_away_from_zero
execute store result storage fisch37:waypoints current_waypoint.Pos[1] int 0.1 run scoreboard players get round_out f37_waypoints_RAM
execute store result storage fisch37:waypoints current_waypoint.Pos[2] int 1 run data get entity @s Pos[2] 1
# Store dimension
execute at @s if dimension minecraft:the_nether run data modify storage fisch37:waypoints current_waypoint.dimension set value {index:-1, name:"The Nether"}
execute at @s if dimension minecraft:the_end run data modify storage fisch37:waypoints current_waypoint.dimension set value {index:1, name:"The End"}
# Update global waypoint data
data modify storage fisch37:waypoints waypoints append from storage fisch37:waypoints current_waypoint
scoreboard players add wps_count f37_waypoints_RAM 1

# Replace waypoint book
item replace entity @s weapon.mainhand with written_book{IsWaypoint:1b,display:{Name:'{"text":"Waypoint","color":"aqua","italic":false}',Lore:['{"text":"A book detailing a specific waypoint."}','{"text":"Add it to your collection by combining it with a teleport book"}','{"text":"or duplicate it and share the waypoint with others."}']},title:"Title!",author:"",pages:['[{"text":""},{"nbt":"SelectedItem.tag.waypoint.name","entity":"@s","color":"gold","bold":true,"underlined":true},{"text":"\\nCreated By: ","color":"black"},{"nbt":"SelectedItem.tag.waypoint.author","entity":"@s","color":"gray","italic":true},{"text":"\\nPos: ","color":"dark_aqua"},{"nbt":"SelectedItem.tag.waypoint.dimension.name","entity":"@s","color":"dark_aqua","italic":true},{"text":"/","color":"dark_aqua"},{"nbt":"SelectedItem.tag.waypoint.Pos","entity":"@s","color":"dark_aqua","italic":true},{"text":"\\nCost: ","color":"dark_green"},{"nbt":"SelectedItem.tag.waypoint.cost","entity":"@s","color":"dark_green","italic":true},{"text":"\\nDescription: "},{"nbt":"SelectedItem.tag.waypoint.description","entity":"@s","italic":true}]']} 1
item modify entity @s weapon.mainhand fisch37:waypoints/set_waypoint_info_book

# Remove temporary data
data remove storage fisch37:waypoints current_waypoint
