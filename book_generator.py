"""
Creates the NBT data for a waypoint book
"""

from string import Template
from typing import Iterable

waypoints_page = '\'[{"nbt":"waypoints[$i].name","storage":"fisch37:waypoints","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger goto_waypoint set $j"}},{"text":"\\\\nCreated By: ","color":"black","bold":false,"underlined":false},{"nbt":"waypoints[$i].author","storage":"fisch37:waypoints","color":"gray","bold":false,"italic":true,"underlined":false},{"text":"\\\\nPos: ","color":"dark_aqua","bold":false,"underlined":false},{"nbt":"waypoints[$i].dimension.name","storage":"fisch37:waypoints","color":"dark_aqua","bold":false,"italic":true,"underlined":false},{"text":": ","color":"dark_aqua","bold":false,"underlined":false},{"nbt":"waypoints[$i].Pos","storage":"fisch37:waypoints","color":"dark_aqua","bold":false,"italic":true,"underlined":false},{"text":"\\\\nCost: ","color":"dark_green","bold":false,"underlined":false},{"nbt":"waypoints[$i].cost","storage":"fisch37:waypoints","color":"dark_green","bold":false,"italic":true,"underlined":false},{"text":"\\\\nDescription: ","color":"black","bold":false,"underlined":false},{"nbt":"waypoints[$i].description","storage":"fisch37:waypoints","color":"black","bold":false,"italic":true,"underlined":false}]\''
relative_page = '\'[{"nbt":"SelectedItem.tag.stored_waypoints[$i].name","entity":"@s","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger goto_waypoint set 1"}},{"text":"\\\\nCreated By: ","color":"black","bold":false,"underlined":false},{"nbt":"SelectedItem.tag.stored_waypoints[$i].author","storage":"fisch37:waypoints","color":"gray","bold":false,"italic":true,"underlined":false},{"text":"\\\\nPos: ","color":"dark_aqua","bold":false,"underlined":false},{"nbt":"SelectedItem.tag.stored_waypoints[$i].dimension.name","storage":"fisch37:waypoints","color":"dark_aqua","bold":false,"italic":true,"underlined":false},{"text":": ","color":"dark_aqua","bold":false,"underlined":false},{"nbt":"SelectedItem.tag.stored_waypoints[$i].Pos","storage":"fisch37:waypoints","color":"dark_aqua","bold":false,"italic":true,"underlined":false},{"text":"\\\\nCost: ","color":"dark_green","bold":false,"underlined":false},{"nbt":"SelectedItem.tag.stored_waypoints[$i].cost","storage":"fisch37:waypoints","color":"dark_green","bold":false,"italic":true,"underlined":false},{"text":"\\\\nDescription: ","color":"black","bold":false,"underlined":false},{"nbt":"SelectedItem.tag.stored_waypoints[$i].description","storage":"fisch37:waypoints","color":"black","bold":false,"italic":true,"underlined":false}]\''

def single_page(i: int) -> str:
    return Template(waypoints_page).substitute(i=i,j=i+1)

def nbt_from_pages(pages: Iterable[str]):
    return '{author:"",title:"",pages:['+",".join(pages)+'],resolved:0b}'

page_count = 1
s = nbt_from_pages(single_page(i) for i in range(page_count))
with open("complete_book_nbt.txt","w") as file:
    file.write(s)

with open("reset_waypoint_list_book.json","w") as file:
    from json import dump
    dump({
        "function": "set_nbt",
        "tag": s
    },file)