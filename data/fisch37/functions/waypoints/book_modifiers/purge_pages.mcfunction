##
 # purge_pages.mcfunction
 # Purges empty pages from a book
 #
 # Created by Fisch37.
##

execute store result score purge_i f37_waypoints_RAM run data get entity @s Item.tag.page_count
scoreboard players operation purge_i f37_waypoints_RAM -= wps_count f37_waypoints_RAM
execute if score purge_i f37_waypoints_RAM matches 1.. run function fisch37:waypoints/book_modifiers/_iter_purge_pages
execute store result entity @s Item.tag.page_count int 1 run scoreboard players get wps_count f37_waypoints_RAM