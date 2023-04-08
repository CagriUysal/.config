local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- themes
	"folke/tokyonight.nvim",
	{ "catppuccin/nvim", name = "catppuccin" },
	"xiyaowong/transparent.nvim",

	-- lsp
	"neovim/nvim-lspconfig",

	-- snippet engine
	"L3MON4D3/LuaSnip",

	-- auto completion
	"williamboman/mason.nvim",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",

	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	"folke/neodev.nvim",

	-- functionality
	"kylechui/nvim-surround",
	"numToStr/Comment.nvim",
	"ThePrimeagen/harpoon", -- <3
	"windwp/nvim-ts-autotag",
	"windwp/nvim-autopairs",
	"folke/todo-comments.nvim",
	"ellisonleao/glow.nvim",
	"folke/trouble.nvim",

	-- fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},

	-- git
	"tpope/vim-fugitive",
	"lewis6991/gitsigns.nvim",
	"sindrets/diffview.nvim",

	-- lua-line
	"nvim-lualine/lualine.nvim",

	-- tree-sitter (for syntax highlighting)
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	},
	"nvim-treesitter/nvim-treesitter-context",

	"nvim-tree/nvim-web-devicons",
	"nvim-tree/nvim-tree.lua",
})
