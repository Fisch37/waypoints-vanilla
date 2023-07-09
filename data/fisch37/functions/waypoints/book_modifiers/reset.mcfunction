##
 # reset.mcfunction
 # Creates all book storages, if required
 #
 # Created by Fisch37.
##
execute unless data storage fisch37:waypoints/books all_waypoints run function fisch37:waypoints/book_modifiers/store_all_wps_nbt
execute unless data storage fisch37:waypoints/books rel_waypoints run function fisch37:waypoints/book_modifiers/store_rel_wps_nbt