local ft = require("filetype")

ft.setup({
    overrides = {
        extensions = {
            -- Set the filetype of *.h files to c, NOT cpp
            h = "c",
        },
    },
})
