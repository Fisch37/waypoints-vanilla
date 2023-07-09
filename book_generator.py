"""
Creates the NBT data for a waypoint book
"""

from string import Template
from typing import Iterable

page_types: list[tuple[str,str]] = [
    ("waypoints_page", '\'[{"nbt":"waypoints[$i].name","storage":"fisch37:waypoints","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger goto_waypoint set $j"}},{"text":"\\\\nCreated By: ","color":"black","bold":false,"underlined":false},{"nbt":"waypoints[$i].author","storage":"fisch37:waypoints","color":"gray","bold":false,"italic":true,"underlined":false},{"text":"\\\\nPos: ","color":"dark_aqua","bold":false,"underlined":false},{"nbt":"waypoints[$i].dimension.name","storage":"fisch37:waypoints","color":"dark_aqua","bold":false,"italic":true,"underlined":false},{"text":": ","color":"dark_aqua","bold":false,"underlined":false},{"nbt":"waypoints[$i].Pos","storage":"fisch37:waypoints","color":"dark_aqua","bold":false,"italic":true,"underlined":false},{"text":"\\\\nCost: ","color":"dark_green","bold":false,"underlined":false},{"nbt":"waypoints[$i].cost","storage":"fisch37:waypoints","color":"dark_green","bold":false,"italic":true,"underlined":false},{"text":"\\\\nDescription: ","color":"black","bold":false,"underlined":false},{"nbt":"waypoints[$i].description","storage":"fisch37:waypoints","color":"black","bold":false,"italic":true,"underlined":false}]\''),
    ("relative_page", '\'[{"nbt":"SelectedItem.tag.stored_waypoints[$i].name","entity":"@s","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger goto_waypoint set 1"}},{"text":"\\\\nCreated By: ","color":"black","bold":false,"underlined":false},{"nbt":"SelectedItem.tag.stored_waypoints[$i].author","storage":"fisch37:waypoints","color":"gray","bold":false,"italic":true,"underlined":false},{"text":"\\\\nPos: ","color":"dark_aqua","bold":false,"underlined":false},{"nbt":"SelectedItem.tag.stored_waypoints[$i].dimension.name","storage":"fisch37:waypoints","color":"dark_aqua","bold":false,"italic":true,"underlined":false},{"text":": ","color":"dark_aqua","bold":false,"underlined":false},{"nbt":"SelectedItem.tag.stored_waypoints[$i].Pos","storage":"fisch37:waypoints","color":"dark_aqua","bold":false,"italic":true,"underlined":false},{"text":"\\\\nCost: ","color":"dark_green","bold":false,"underlined":false},{"nbt":"SelectedItem.tag.stored_waypoints[$i].cost","storage":"fisch37:waypoints","color":"dark_green","bold":false,"italic":true,"underlined":false},{"text":"\\\\nDescription: ","color":"black","bold":false,"underlined":false},{"nbt":"SelectedItem.tag.stored_waypoints[$i].description","storage":"fisch37:waypoints","color":"black","bold":false,"italic":true,"underlined":false}]\'')
]


def single_page(i: int,*,page_template: str) -> str:
    return Template(page_template).substitute(i=i,j=i+1)

def nbt_from_pages(pages: Iterable[str], page_count: int):
    return '{author:"",title:"",page_count:'+str(page_count)+',pages:['+",".join(pages)+'],resolved:0b}'

def _int_input(
        prompt: str = "", 
        extra_condition = lambda s: True,
        error_prompt: str = "Passed value not an integer."
    ):
    while True:
        try:
            integer = int(input(prompt))
            if not extra_condition: raise ValueError
        except ValueError:
            print(error_prompt)
        else:
            return integer

def main():
    page_count = _int_input(
        "Enter the amount of pages to generate: ",
        lambda s: int(s) > 0,
        "Could not intepret passed value as a valid page count"
    )
    for i, (name, _) in enumerate(page_types):
        print(f"{i}: {name}")
    template_name, template = page_types[
        _int_input(
            "Please select one of the page templates above:",
            lambda s: 0 <= int(s) < len(page_types),
            "The passed value is not in the possible types"
        )]
    
    s = nbt_from_pages(
        (
            single_page(i,page_template=template) 
            for i in range(page_count)
        ),
        page_count
    )
    with open(f"raw_snbt_{template_name}.txt","w") as file:
        file.write(s)

    with open("reset_waypoint_list_book.json","w") as file:
        from json import dump
        dump({
            "function": "set_nbt",
            "tag": s
        },file)

if __name__ == "__main__": main()