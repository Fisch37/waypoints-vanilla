##
 # waypoint_from_book.mcfunction
 # 
 #
 # Created by Fisch37.
##
# Setting up a temporary storage location to create the waypoint into
# Redoing this every time to ensure everything is set correctly
data merge storage fisch37:waypoints {current_waypoint:{name:"",author:"",Pos:[0d,0d,0d],cost:0,dimension:{index:0,name:"Overworld"}}}
# Storing data
data modify storage fisch37:waypoints current_waypoint.name set string entity @s SelectedItem.tag.title
data modify storage fisch37:waypoints current_waypoint.author set string entity @s SelectedItem.tag.author

data modify storage fisch37:waypoints current_waypoint.Pos[0] set from entity @s Pos[0]
data modify storage fisch37:waypoints current_waypoint.Pos[1] set from entity @s Pos[1]
data modify storage fisch37:waypoints current_waypoint.Pos[2] set from entity @s Pos[2]
# Store dimension
execute if dimension minecraft:the_nether run data merge storage fisch37:waypoints {dimension:{index:-1, name:"The Nether"}}
execute if dimension minecraft:the_end run data merge storage fisch37:waypoints {dimension:{index:1, name:"The End"}}
# Copying data into waypoint array
data modify storage fisch37:waypoints waypoints append from storage fisch37:waypoints current_waypoint
# Remove temporary data
data remove storage fisch37:waypoints current_waypoint

function fisch37:waypoints/reset_waypoint_book