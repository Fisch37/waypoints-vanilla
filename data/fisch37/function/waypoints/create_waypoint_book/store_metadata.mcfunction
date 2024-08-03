##
 # store_waypoint_metadata.mcfunction
 #
 # Stores all the non-positional data about a waypoint into current_waypoint.
 #
 # Created by Fisch37.
##
data modify storage fisch37:waypoints current_waypoint.name set string entity @s SelectedItem.tag.title
data modify storage fisch37:waypoints current_waypoint.author set string entity @s SelectedItem.tag.author
data modify storage fisch37:waypoints current_waypoint.description set string entity @s SelectedItem.tag.pages[1]
execute store result storage fisch37:waypoints current_waypoint.cost int 1 run scoreboard players get wps_default_cost f37_waypoints_RAM