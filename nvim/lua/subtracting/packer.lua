-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
 
  use('rebelot/kanagawa.nvim')
--use('rose-pine/neovim')
  use('nvim-treesitter/nvim-treesitter')
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use{
	  'williamboman/mason.nvim',
	  'williamboman/mason-lspconfig.nvim',
	  'neovim/nvim-lspconfig',
  }
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  -- Uncomment these if you want to manage LSP servers from neovim
		  -- {'williamboman/mason.nvim'},
		  -- {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
  }
end)
