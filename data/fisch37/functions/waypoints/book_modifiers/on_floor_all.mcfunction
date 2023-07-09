##
 # on_floor_all.mcfunction
 # Modifies an item to contain all existing waypoints.
 # Purges empty pages of the book.
 # Created by Fisch37.
##
data modify entity @s Item.tag merge from storage fisch37:waypoints/books all_waypoints

scoreboard players operation target_page_count f37_waypoints_RAM = wps_count f37_waypoints_RAM
function fisch37:waypoints/book_modifiers/purge_pages