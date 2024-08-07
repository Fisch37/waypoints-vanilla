item modify entity @s weapon.mainhand [\
    {\
        function:"set_book_cover",\
        author:"$(author)",\
        title:"$(name)",\ 
    },\
    {\
        function:"set_written_book_pages",\
        mode: "replace_all",\
        pages: [\
            "$(page)"\
        ]\
    },\
    { function:"set_lore", mode: "replace_all", lore: ["$(description)"]}\
]