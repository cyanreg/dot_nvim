local git_hl = require('gitsigns')

git_hl.setup({
    signcolumn = false,
    numhl      = true,
    linehl     = false,
    word_diff  = false,
    yadm = {
        enable = false
    },
})
