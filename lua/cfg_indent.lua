local indent = require("indent_blankline")

indent.setup({
--    enabled = false,
    max_indent_increase = 1,

    use_treesitter = true,
    show_current_context = true,
    show_current_context_start = true,

    show_first_indent_level = false,
    show_trailing_blankline_indent = false,

    show_end_of_line = false,

    show_foldtext = false,
})
