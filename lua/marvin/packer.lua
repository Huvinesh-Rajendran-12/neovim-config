-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})
  use({'theprimeagen/harpoon'})
  use({'mbbill/undotree'})
  use({'tpope/vim-fugitive'})
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
  use({'vimwiki/vimwiki'})
  use({'alvan/vim-closetag'})
  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }
  use({
      "neanias/everforest-nvim",
      -- Optional; default configuration will be used if setup isn't called.
      config = function()
          require("everforest").setup()
      end,
  })
  use({
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
  })
  use({"elentok/format-on-save.nvim"})
end)
