return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- themes
	use("folke/tokyonight.nvim")

	-- lsp
	use("neovim/nvim-lspconfig")

	-- snippet engine
	use("L3MON4D3/LuaSnip")

	-- auto completion
	use({ "williamboman/mason.nvim" })
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- fuzzy-finder (telescope)
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-tree/nvim-web-devicons")
	use("nvim-tree/nvim-tree.lua")

	-- tree-sitter (for syntax highlighting)
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- lua-line
	use("nvim-lualine/lualine.nvim")

	-- functionality
	use("kylechui/nvim-surround")
	use("numToStr/Comment.nvim")
	use("ThePrimeagen/harpoon") -- <3
	use("windwp/nvim-ts-autotag")
	use("windwp/nvim-autopairs")
	use("folke/todo-comments.nvim")
	use("ellisonleao/glow.nvim")
	use("folke/trouble.nvim")

	-- git
	use("tpope/vim-fugitive")
	use("lewis6991/gitsigns.nvim")
end)
