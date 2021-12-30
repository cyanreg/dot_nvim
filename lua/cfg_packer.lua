vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use { 'wbthomason/packer.nvim' }
    use { 'hoob3rt/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
    use { 'catppuccin/nvim', as = "catppuccin" }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', branch = 'master' }
    use { 'nvim-treesitter/nvim-treesitter-refactor', requires = 'nvim-treesitter/nvim-treesitter' }
    use { 'nvim-treesitter/nvim-treesitter-textobjects', requires = 'nvim-treesitter/nvim-treesitter' }
    use { 'neovim/nvim-lspconfig' }
    use { 'folke/todo-comments.nvim' }
    use { 'JoosepAlviste/nvim-ts-context-commentstring' }
    use { 'https://github.com/numToStr/Comment.nvim' }
    use { 'p00f/nvim-ts-rainbow' }
    use { 'edluffy/specs.nvim' }
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim', opt = false } }
    use { 'romgrk/barbar.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = false } }
    use { 'yamatsum/nvim-cursorline' }
    use { 'dstein64/nvim-scrollview' }
    use { 'L3MON4D3/LuaSnip' }
    use { 'hrsh7th/nvim-cmp', requires = { 'hrsh7th/cmp-nvim-lsp', opt = true } }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'ggandor/lightspeed.nvim' }
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'lukas-reineke/virt-column.nvim' }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim', opt = false },
                                                        { 'kyazdani42/nvim-web-devicons', opt = false },
                                                        { 'nvim-telescope/telescope-fzf-native.nvim', opt = true } } }
end)
