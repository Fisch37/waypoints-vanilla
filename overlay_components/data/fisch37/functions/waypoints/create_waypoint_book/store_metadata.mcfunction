##
 # store_waypoint_metadata.mcfunction
 #
 # Stores all the non-positional data about a waypoint into current_waypoint.
 #
 # Created by Fisch37.
##
data modify storage fisch37:waypoints/book_content content set from entity @s SelectedItem.components."minecraft:written_book_content"
data modify storage fisch37:waypoints current_waypoint.name set from storage fisch37:waypoints/book_content content.title
data modify storage fisch37:waypoints current_waypoint.author set from storage fisch37:waypoints/book_content content.author
data modify storage fisch37:waypoints current_waypoint.description set from storage fisch37:waypoints/book_content content.pages[1]
execute store result storage fisch37:waypoints current_waypoint.cost int 1 run scoreboard players get wps_default_cost f37_waypoints_RAM