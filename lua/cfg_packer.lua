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

    use { 'windwp/nvim-autopairs' }

    -- Completion
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/cmp-calc' }
    use { 'hrsh7th/cmp-nvim-lsp-document-symbol' }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'onsails/lspkind-nvim' }

    use { 'ggandor/lightspeed.nvim' }
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'lukas-reineke/virt-column.nvim' }

    use { 'AckslD/nvim-neoclip.lua' }

    use { 'nathom/filetype.nvim' }

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim', opt = false },
                                                        { 'kyazdani42/nvim-web-devicons', opt = false },
                                                        { 'nvim-telescope/telescope-fzf-native.nvim', opt = true } } }
end)
