vim.opt.shell            = '/bin/sh'
vim.opt.mouse            = 'a'
vim.opt.expandtab        = true                    -- tabs instead of spaces
vim.opt.shiftwidth       = 4                       -- shift 4 spaces when tab
vim.opt.tabstop          = 4                       -- 1 tab == 4 spaces
vim.opt.softtabstop      = 4                       -- same
vim.opt.smartindent      = true                    -- autoindent new lines
vim.opt.wrap             = false
vim.opt.splitbelow       = true
vim.opt_splitright       = true
vim.opt.smd              = true
vim.opt.number           = true
vim.opt.termguicolors    = true
vim.opt.ignorecase       = true
vim.opt.showmatch        = true                    -- highlight matching parenthesis
vim.opt.textwidth        = 0
vim.opt.colorcolumn      = '81'
vim.opt.completeopt      = 'menu,menuone,noselect'
vim.opt.clipboard        = 'unnamedplus'           -- copy/paste to system clipboard
vim.opt.hidden           = true
vim.opt.signcolumn       = 'no'                    -- disable signscolumn
vim.g.mapleader          = ','

require('cfg_packer')         -- Load plugins manager
require('cfg_filetype')       -- filetype loader and override
require('cfg_catppucin')      -- Load and configure colors
require('cfg_lualine')        -- Load and configure statusline
require('cfg_treesitter')     -- Syntax highlighting
require('cfg_completion')     -- Completion
require('cfg_lsp')            -- LSP (must be after completion)
require('cfg_specs')          -- Cursor highlight
require('cfg_todo')           -- Todo highlights
require('cfg_column')         -- Limit column
require('cfg_scrollview')     -- Scrollbar
require('cfg_comment')        -- Comment code out
require('cfg_gitsigns')       -- Git line highlighting
require('cfg_barbar')         -- Normal tabs
require('cfg_neoclip')        -- Clipboard
require('cfg_telescope')      -- Finder
require('cfg_indent')         -- Indentation guides
require('cfg_autopairs')

vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd l<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'n', 'n:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'N:lua require("specs").show_specs()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-j>', '<C-d>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', '<C-u>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>;', ':exe "normal A;"<cr>', { noremap = true, silent = true })

--[[ Esc to clear search ]]--
vim.api.nvim_set_keymap('n', '<Esc>', ':noh<cr>', { noremap = true, silent = true })

--[[ Builtin ]]--
vim.api.nvim_set_keymap('n', '<leader>ff', ':lua require(\'telescope.builtin\').find_files()<cr>',
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':lua require(\'telescope.builtin\').live_grep()<cr>',
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':lua require(\'telescope.builtin\').buffers()<cr>',
                        { noremap = true, silent = true })

--[[ LSP ]]--
vim.api.nvim_set_keymap('n', '<leader>fd', ':lua require(\'telescope.builtin\').lsp_definitions()<cr>',
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fr', ':lua require(\'telescope.builtin\').lsp_references()<cr>',
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fs', ':lua require(\'telescope.builtin\').lsp_dynamic_workspace_symbols()<cr>',
                        { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fl', ':lua require(\'telescope.builtin\').lsp_document_diagnostics()<cr>',
                        { noremap = true, silent = true })

--[[ Clipboard ]]--
vim.api.nvim_set_keymap('n', '<leader>cc', ':lua require(\'telescope\').extensions.neoclip.default()<cr>',
                        { noremap = true, silent = true })
