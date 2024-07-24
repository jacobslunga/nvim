vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use({ 'nvim-treesitter/nvim-treesitter', { run = 'TSUpdate' } })
  use({ 'nvim-treesitter/playground' })
  use({ 'nvim-treesitter/nvim-treesitter-context' })
  use({ 'ThePrimeagen/harpoon' })
  use({ 'mbbill/undotree' })
  use({ 'tpope/vim-fugitive' })
  use({ 'tpope/vim-commentary' })
  use{'github/copilot.vim'}
  use {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  }
  use 'kihachi2000/yash.nvim'
  use 'tjdevries/colorbuddy.vim'
  use 'norcalli/nvim-colorizer.lua'
  use 'tjdevries/gruvbuddy.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use { 'ellisonleao/gruvbox.nvim' }
  use 'bluz71/vim-nightfly-colors'
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-buffer'
  use 'Mofiqul/dracula.nvim'
end)
