local finder = require('telescope')

finder.setup({
    defaults = {
        
    },
    pickers = {
        find_files = {
        },
    },
})
require('telescope').load_extension('fzf')
