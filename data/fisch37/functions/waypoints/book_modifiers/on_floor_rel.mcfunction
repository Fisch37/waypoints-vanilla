##
 # on_floor_rel.mcfunction
 # Resets the resolution of a relative waypoint book
 # 
 # Created by Fisch37.
##
data modify entity @s Item.tag merge from storage fisch37:waypoints/books rel_waypoints

# TODO: Somehow implement things to actually have a decent page count.
scoreboard players set target_page_count f37_waypoints_RAM 1
function fisch37:waypoints/book_modifiers/purge_pages