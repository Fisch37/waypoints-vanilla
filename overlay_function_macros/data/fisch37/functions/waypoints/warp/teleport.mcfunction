##
 # teleport.mcfunction
 #
 # Function macro implementing universal teleports.
 # This macro requires three numerical argument x, y, and z as well as 
 # one string dimension being the resource location of the targeted 
 # dimension.
##
$execute in $(dimension) run tp @s $(x) $(y) $(z)

return 1

# This piece of magic prevents an ACE when creative players import arbitrary data.
# It was conceived by DorkOrc on the MC Commands Discord and it is beautiful.
# Because of the return above, this code never executes. 
# But! It will be parsed when the macro is applied. 
# Since /clone is completely restricted by the other arguments, only a valid dimension 
# will allow this function to run without raising a macro parsing error.
# https://discord.com/channels/154777837382008833/1269359091525091358/1269364958668525680
# for his explanation
$clone from $(dimension) 0 -10000 0 -10000 0 -10000 0
