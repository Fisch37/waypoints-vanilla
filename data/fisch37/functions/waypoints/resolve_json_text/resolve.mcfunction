##
 # resolve.mcfunction
 #
 # Resolves a json string stored in fisch37:json.raw and pastes it into fisch37:json.resolved
 #
 #
##
# FIXME: Figure out why this logs ERROR "Display entityNot a string" and WTF that means
execute positioned 0 -70 0 summon minecraft:text_display run function fisch37:waypoints/resolve_json_text/_resolve_sub
