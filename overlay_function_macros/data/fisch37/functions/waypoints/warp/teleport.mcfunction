##
 # teleport.mcfunction
 #
 # Function macro implementing universal teleports.
 # This macro requires three numerical argument x, y, and z as well as 
 # one string dimension being the resource location of the targeted 
 # dimension.
##
# WARN: If carelessly modified this may be an XSS if someone manages to
# corrupt the dimension data. Further investigation may be needed.
# NOTE: This function is an XSS-vulnerability IF there is a bug allowing arbitrary modification of book/storage nbt
# Consider: dimension:"minecraft:overworld if function [...]" for 1.21+
$execute in $(dimension) run tp @s $(x) $(y) $(z)