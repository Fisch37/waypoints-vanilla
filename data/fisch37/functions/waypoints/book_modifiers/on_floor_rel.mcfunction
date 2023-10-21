##
 # on_floor_rel.mcfunction
 # Resets the resolution of a relative waypoint book
 # 
 # Created by Fisch37.
##
data modify entity @s Item.tag merge from storage fisch37:waypoints/books rel_waypoints

execute store result score target_page_count f37_waypoints_RAM run data get entity @s Item.tag.wps_count 1
function fisch37:waypoints/book_modifiers/purge_pages

scoreboard players reset target_page_count f37_waypoints_RAM