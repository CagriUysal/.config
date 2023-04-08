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
		config = function()
			require("mason").setup()
		end,
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

	-- Shows possible key bindings
	{
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup()
		end,
	},

	-- Surround selections
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup()
		end,
	},

	-- Toogle line comments
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	-- Highlight and search for todo comments
	{
		"folke/todo-comments.nvim",
		config = function()
			require("todo-comments").setup()
		end,
	},

	-- A pretty list for showing lists.
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup()
		end,
	},

	-- Autoclose and autorename html tag
	{
		"windwp/nvim-ts-autotag",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},

	-- Autopair supports multiple characters
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({
				disable_filetype = { "TelescopePrompt", "vim" },
			})
		end,
	},

	-- <3
	"ThePrimeagen/harpoon",
})
