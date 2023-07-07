##
 # on_floor_all.mcfunction
 # Modifies an item to contain all existing waypoints.
 # Purges empty pages of the book.
 # Created by Fisch37.
##
data modify entity @s Item.tag merge from storage fisch37:waypoints/books all_waypoints

function fisch37:waypoints/book_modifiers/purge_pages