##
 # replace_item.mcfunction
 #
 # Replaces the signed waypoint creator book with a new waypoint book.
 #
 # Created by Fisch37.
##
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
data modify storage fisch37:macro macro_arguments.dimension_name set from storage fisch37:waypoints current_waypoint.dimension.name
data modify storage fisch37:macro macro_arguments.name set string storage fisch37:macro macro_arguments.name.raw
data modify storage fisch37:macro macro_arguments.description set from storage fisch37:macro macro_arguments.description.raw

function fisch37:waypoints/create_waypoint_book/_macro_set_dynamic_properties with storage fisch37:macro macro_arguments
item modify entity @s weapon.mainhand fisch37:waypoints/add_usage_description
item modify entity @s weapon.mainhand fisch37:waypoints/set_waypoint_info_book