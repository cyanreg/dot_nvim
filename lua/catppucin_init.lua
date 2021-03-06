require("catppuccin").setup({
    transparency = false,
    term_colors  = true,
    styles = {
        comments  = "NONE",
        functions = "NONE",
        keywords  = "bold",
        strings   = "NONE",
        variables = "NONE",
    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors      = "italic",
                hints       = "italic",
                warnings    = "italic",
                information = "italic",
            },
            underlines = {
                errors      = "underline",
                hints       = "underline",
                warnings    = "underline",
                information = "underline",
            }
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

--[[
local cp_api = require("catppuccin.api.colors")
local err, colors = cp_api.get_colors("catppuccin")

if err.status then -- good
    catppuccin.remap({
        bg = "#121017"
    })
end
]]--

vim.cmd[[ colorscheme catppuccin ]]
