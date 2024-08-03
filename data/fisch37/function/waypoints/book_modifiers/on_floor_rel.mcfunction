##
 # on_floor_rel.mcfunction
 # Re-resolves a relative waypoint book
 # 
 # Created by Fisch37.
##
data modify entity @s Item.tag.RelativeWaypoints set value 1b
function fisch37:waypoints/book_modifiers/relative/write_pages