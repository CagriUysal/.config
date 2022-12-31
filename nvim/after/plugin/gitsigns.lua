local Remap = require("utils.keymap")

local gitsigns = require("gitsigns")

gitsigns.setup({
	on_attach = function(bufnr)
		Remap.nnoremap("<leader>hp", gitsigns.preview_hunk)
		Remap.nnoremap("<leader>hd", gitsigns.diffthis)
	end,
})
