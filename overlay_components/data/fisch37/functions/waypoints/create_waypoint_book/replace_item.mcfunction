##
 # replace_item.mcfunction
 #
 # Replaces the signed waypoint creator book with a new waypoint book.
 #
 # Created by Fisch37.
##
# FIXME: This raises a huge java exception. Works anyway though! WTF
data modify storage fisch37:json raw set value '[\
    {"text":""},\
    {"nbt":"current_waypoint.name","storage":"fisch37:waypoints","color":"gold","bold":true,"underlined":true},\
    {"text":"\\nCreated By: ","color":"black"},\
    {"nbt":"current_waypoint.author","storage":"fisch37:waypoints","color":"gray","italic":true},\
    {"text":"\\nPos: ","color":"dark_aqua"},\
    {"nbt":"current_waypoint.dimension.name","storage":"fisch37:waypoints","color":"dark_aqua","italic":true},\
    {"text":"/","color":"dark_aqua"},\
    {"nbt":"current_waypoint.Pos","storage":"fisch37:waypoints","color":"dark_aqua","italic":true},\
    {"text":"\\nCost: ","color":"dark_green"},\
    {"nbt":"current_waypoint.cost","storage":"fisch37:waypoints","color":"dark_green","italic":true},\
    {"text":"\\nDescription: "},\
    {"nbt":"current_waypoint.description","storage":"fisch37:waypoints","italic":true,"interpret": true}\
]'
function fisch37:waypoints/resolve_json_text/resolve

item replace entity @s weapon.mainhand with written_book[\
    custom_data={IsWaypoint:1b},\
    item_name='"Waypoint"',\
    rarity=rare,\
    lore=[\
        '{"text":"A book detailing a specific waypoint."}',\
        '{"text":"Add it to your collection by combining it with a teleport book"}',\
        '{"text":"or duplicate it and share the waypoint with others."}',\
    ],\
    written_book_content={title:"Waypoint Book", author:""}\
]

data modify storage fisch37:macro macro_arguments set value {}
data modify storage fisch37:macro macro_arguments.page set from storage fisch37:json resolved
data modify storage fisch37:macro macro_arguments merge from storage fisch37:waypoints current_waypoint

function fisch37:waypoints/create_waypoint_book/_macro_set_dynamic_properties with storage fisch37:macro macro_arguments