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
vim.g.netrw_fastbrowse   = 0
vim.o.sessionoptions     = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

vim.filetype.add({
    extension = {
        h = "c",
        asm = "nasm",
        S = "asm",
    },
})

require('packer_init')
require('catppucin_init')
require('lualine_init')
require('treesitter_init')
require('cmp_init')
require('todo-comments_init')
require('leap_init')
require('scrollview_init')
require('gitsigns_init')
require('barbar_init')
require('neoclip_init')
require('telescope_init')

vim.cmd[[
fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias("W","w")
call SetupCommandAlias("Q","q")
]]

vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd l<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<A-j>', '<C-d>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', '<C-u>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>;', ':exe "normal A;"<cr>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>.', '/<c-r>=expand("<cword>")<CR><CR>N', { noremap = true, silent = true })

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
