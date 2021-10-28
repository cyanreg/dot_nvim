local catppuccino = require("catppuccino")

catppuccino.setup({
    -- colorscheme = "dark_catppuccino",
    -- colorscheme = "neon_latte",
    colorscheme = "soft_manilo",
    -- colorscheme = "light_melya",
    transparency = false,
    term_colors = true,
    styles = {
        comments = "NONE",
        functions = "NONE",
        keywords = "bold",
        strings = "NONE",
        variables = "NONE",
    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = "italic",
                hints = "italic",
                warnings = "italic",
                information = "italic",
            },
            underlines = {
                errors = "underline",
                hints = "underline",
                warnings = "underline",
                information = "underline",
            }
        },
        lsp_trouble = false,
        lsp_saga = false,
        gitgutter = false,
        gitsigns = true,
        telescope = true,
        nvimtree = {
            enabled = false,
            show_root = false,
        },
        which_key = false,
        indent_blankline = {
            enabled = false,
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
    }
})

local cp_api = require("catppuccino.api.colors")
local err, colors = cp_api.get_colors("soft_manilo")

if err.status then -- good
    catppuccino.remap({
        bg = "#29272d"
    })
end

vim.cmd[[colorscheme catppuccino]]
