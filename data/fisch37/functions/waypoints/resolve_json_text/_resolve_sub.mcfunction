##
 # _resolve_sub.mcfunction
 # 
 # The purpose of this function is to avoid a lot of @e
 # It does all the actual copying stuff but with the text display as @s
##

data modify entity @s text set string storage fisch37:json raw
data modify storage fisch37:json resolved set string entity @s text
kill @s
