local treesitter = require('nvim-treesitter.configs')

treesitter.setup({
    ensure_installed = { "c", "lua", "latex" }, -- one of "all", "maintained", or a list
    ignore_install = { },        -- List of parsers to ignore installing
    highlight = {
        enable = true,         -- false will disable the whole extension
        disable = { "rust" },  -- list of language that will be disabled
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil
    }
})
