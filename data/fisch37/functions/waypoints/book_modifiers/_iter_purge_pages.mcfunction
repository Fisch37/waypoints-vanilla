##
 # _iter_purge_pages.mcfunction
 # Recursive function. Removes a set amount of pages from the back of @s
 # (purge count to be stored in <purge_i:f37_waypoints_RAM>)
 # Created by Fisch37.
##

data remove entity @s Item.tag.pages[-1]
scoreboard players remove purge_i f37_waypoints_RAM 1

execute if score purge_i f37_waypoints_RAM matches 1.. run function fisch37:waypoints/book_modifiers/_iter_purge_pages