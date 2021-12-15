vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use { 'wbthomason/packer.nvim' }
    use { 'hoob3rt/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
    use { 'catppuccin/nvim' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', branch = '0.5-compat' }
    use { 'neovim/nvim-lspconfig' }
    use { 'b3nj5m1n/kommentary' }
    use { 'p00f/nvim-ts-rainbow' }
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim', opt = false } }
    use { 'romgrk/barbar.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = false } }
    use { 'yamatsum/nvim-cursorline' }
    use { 'L3MON4D3/LuaSnip' }
    use { 'hrsh7th/nvim-cmp', requires = { 'hrsh7th/cmp-nvim-lsp', opt = true } }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'ggandor/lightspeed.nvim' }
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { 'nvim-telescope/telescope.nvim', commit = '80cdb00b221f69348afc4fb4b701f51eb8dd3120', requires = { { 'nvim-lua/plenary.nvim', opt = false },
                                                        { 'kyazdani42/nvim-web-devicons', opt = false },
                                                        { 'nvim-telescope/telescope-fzf-native.nvim', opt = true } } }
end)
