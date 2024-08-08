##
 # init.mcfunction
 #
 # Initial call for create_waypoint_book category.
 # Executes all other functions in this category.
 # 
 # Created by Fisch37.
##
# Setting up a temporary storage location to create the waypoint into
# Redoing this every time to ensure everything is set correctly
function fisch37:waypoints/create_waypoint_book/set_default_values
# Store data into current_waypoint
function fisch37:waypoints/create_waypoint_book/store_metadata
function fisch37:waypoints/create_waypoint_book/store_position_data
function fisch37:waypoints/create_waypoint_book/store_dimension

function fisch37:waypoints/create_waypoint_book/store_global_data

function fisch37:waypoints/create_waypoint_book/replace_item

# Cleanup
data remove storage fisch37:waypoints current_waypoint