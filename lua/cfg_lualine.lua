local lualine = require('lualine')

lualine.setup({
    options = {
        icons_enabled = true,
        theme = 'catppuccin',
        component_separators = { '', '' },
        section_separators = { '', '' },
        disabled_filetypes = { }
    },
    filetype_names = {
        TelescopePrompt = 'Telescope',
        dashboard = 'Dashboard',
        packer = 'Packer',
        fzf = 'FZF',
        alpha = 'Alpha'
    }, -- shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )
    sections = {
        lualine_a = { 'mode'     },
        lualine_b = { 'branch'   },
        lualine_c = { 'filename' },
        lualine_x = { 'diagnostics', 'diff' },
        lualine_y = { 'encoding', 'fileformat', 'filetype' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = { },
        lualine_b = { },
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = { 'filetype' },
        lualine_z = { }
    },
    tabline = {},
    extensions = { 'fzf' }
})
