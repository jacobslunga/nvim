vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use({ 'nvim-treesitter/nvim-treesitter', { run = 'TSUpdate' } })
  use({ 'nvim-treesitter/playground' }) 
  use({ 'ThePrimeagen/harpoon' })
  use({ 'mbbill/undotree' })
  use({ 'tpope/vim-fugitive' })
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      {'neovim/nvim-lspconfig'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }
  use{'github/copilot.vim'}
  use {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  }
  use {'ojroques/nvim-hardline'}
end)
