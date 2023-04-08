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
	-- Theme
	"folke/tokyonight.nvim",
	{ "catppuccin/nvim", name = "catppuccin" },
	"xiyaowong/transparent.nvim",

	-- LSP
	"neovim/nvim-lspconfig",
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			-- "williamboman/mason-lspconfig.nvim",

			-- Useful status updates for LSP
			"j-hui/fidget.nvim",

			-- Additional lua configuration, makes nvim stuff amazing!
			"folke/neodev.nvim",
		},
	},

	-- Autocompletion
	{
		"hrsh7th/nvim-cmp",
		dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip" }, -- "saadparwaiz1/cmp_luasnip" },
	},

	-- Fuzzy Finder
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- TODO: needed?
	{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- Git
	"tpope/vim-fugitive",
	"lewis6991/gitsigns.nvim",

	-- Statusline
	"nvim-lualine/lualine.nvim",

	-- Highlight, edit, and navigate code
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { "nvim-treesitter/nvim-treesitter-context" },
		config = function()
			pcall(require("nvim-treesitter.install").update({ with_sync = true }))
		end,
	},

	"nvim-tree/nvim-web-devicons",
	"nvim-tree/nvim-tree.lua",

	-- Functionality
	"kylechui/nvim-surround",
	"numToStr/Comment.nvim",
	"ThePrimeagen/harpoon", -- <3
	"windwp/nvim-ts-autotag",
	"windwp/nvim-autopairs",
	"folke/todo-comments.nvim",
	"folke/trouble.nvim",
})
