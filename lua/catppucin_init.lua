local colors = require("catppuccin.palettes").get_palette() -- fetch colors from g:catppuccin_flavour palette

require("catppuccin").setup({
    transparency = false,
    term_colors  = true,
    compile = {
        enabled = true,
        path = vim.fn.stdpath "cache" .. "/catppuccin"
    },
    custom_highlights = {

    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
        },
        lsp_trouble = false,
        lsp_saga = false,
        coc_nvim = false,
        gitgutter = false,
        gitsigns = true,
        telescope = true,
        nvimtree = {
            enabled = false,
            show_root = false,
        },
        which_key = false,
        indent_blankline = {
            enabled = true,
            colored_indent_levels = false,
        },
        dashboard = false,
        neogit = false,
        leap = true,
        vim_sneak = false,
        fern = false,
        barbar = true,
        bufferline = false,
        markdown = true,
        lightspeed = false,
        ts_rainbow = true,
        hop = false,
        cmp = true,
        notify = false,
        telekasten = false,
    }
})

vim.cmd[[ colorscheme catppuccin ]]
