local lua_line = require("lualine")

lua_line.setup({
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "filename" },
	},
	options = {
		theme = "kanagawa-wave",
	},
})
