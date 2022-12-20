local ts = require("nvim-treesitter.configs")

ts.setup({
	ensure_installed = {
		"tsx",
		"html",
		"json",
		"lua",
		"javascript",
		"go",
	},
	highlight = {
		enable = true,
		disable = {},
	},
})

-- auto-tag
require("nvim-ts-autotag").setup()

-- auto-pair
require("nvim-autopairs").setup({
	disable_filetype = { "TelescopePrompt", "vim" },
})
