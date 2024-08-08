# WARN: This has an injection attack with $(description)
$item modify entity @s weapon.mainhand [\
    {\
        function:"set_book_cover",\
        author:'$(author)',\
        title:'$(name)',\ 
    },\
    {\
        function:"set_name",\
        entity: "this",\
        name: {storage: "fisch37:macro", nbt:"macro_arguments.name", interpret: false}\
    },\
    { function: "set_written_book_pages", mode: "replace_all", pages: \
        [[\
            {text: ""},\
            {text: '$(name)', color: "gold",bold: true, underlined: true},\
            {nbt:"linebreak", storage:"fisch37:utils", interpret: true},\
            {text: 'Created By: ', color: "black"},\
            {text: '$(author)', color: "gray", italic: true},\
            {nbt:"linebreak", storage:"fisch37:utils", interpret: true},\
            {text: "Pos: ", color: "dark_aqua"},\
            {text: '$(dimension_name)', color: "dark_aqua", italic: true},\
            {text: "/", color: "dark_aqua"},\
            {text: '$(Pos)', color: "dark_aqua", italic: true},\
            {nbt:"linebreak", storage:"fisch37:utils", interpret: true},\
            {text: "Cost: ", color: "dark_green"},\
            {text: '$(cost)', color: "dark_green"},\
            {nbt:"linebreak", storage:"fisch37:utils", interpret: true},\
            {text: "Description: "},\
            {text: $(description), italic: true}\
        ]]\
    },\
    {\
        function:"set_lore",\
        entity: "this",\
        mode: "replace_all",\
        lore: [{storage: "fisch37:macro", nbt: "macro_arguments.description", color: white}]\
    }\
]