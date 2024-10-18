vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    -- or                            , branch = "0.1.x",
    requires = { {"nvim-lua/plenary.nvim"} }
  }
  use({ "rose-pine/neovim", as = "rose-pine" })
  use({ "nvim-treesitter/nvim-treesitter", { run = "TSUpdate" } })
  use{"nvim-treesitter/nvim-treesitter-context"}
  use({ "nvim-treesitter/playground" })
  use({ "ThePrimeagen/harpoon" })
  use({ "mbbill/undotree" })
  use({ "tpope/vim-fugitive" })
  use({ "tpope/vim-commentary" })
  use "nvim-tree/nvim-web-devicons"
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use "hrsh7th/cmp-nvim-lua"
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp", -- LSP completion
      "hrsh7th/cmp-buffer",   -- Buffer word completion
      "hrsh7th/cmp-path",     -- Path completion
    }
  }
  use "rstacruz/vim-closer"
  use "morhetz/gruvbox"
  use "folke/tokyonight.nvim"
  use 'navarasu/onedark.nvim'
  use 'sakshamgupta05/vim-todo-highlight'
end)
