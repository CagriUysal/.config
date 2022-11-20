return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- themes
  use 'folke/tokyonight.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'

  -- snippet engine
  use 'L3MON4D3/LuaSnip' 

  -- auto completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'windwp/nvim-ts-autotag'  
  use 'windwp/nvim-autopairs'

  -- fuzzy-finder (telescope)
  use {
      'nvim-telescope/telescope.nvim', 
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- tree-sitter (for syntax highlighting)
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  }

end)
