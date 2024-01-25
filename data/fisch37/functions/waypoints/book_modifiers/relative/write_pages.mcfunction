##
 # write_pages.mcfunction
 #
 # This function is the main function of this module.
 # It updates the pages of a teleport book (which is @s)
 # with data from Item.tag.stored_waypoints.
 # Data resolution is immediate to support non-op users.
 #
 # Note that this function should not be called by outside of the book_modifiers module.
 # Use on_floor_rel instead.
##

data modify storage fisch37:waypoints temporary_waypoints set from entity @s Item.tag.stored_waypoints
execute store result score wps_count f37_waypoints_RAM run data get entity @s Item.tag.wps_count
data modify storage fisch37:json templates set from storage fisch37:waypoints/books rel_waypoints
data modify storage fisch37:json resolved_list set value []

function fisch37:waypoints/book_modifiers/relative/_iter_page_generation

data modify entity @s Item.tag.pages set from storage fisch37:json resolved_list
