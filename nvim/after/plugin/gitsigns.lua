local Remap = require("utils.keymap")

local gitsigns = require("gitsigns")

gitsigns.setup({
	on_attach = function(bufnr)
		Remap.nnoremap("<leader>gsh", gitsigns.preview_hunk)
		Remap.nnoremap("<leader>gsd", gitsigns.diffthis)
	end,
})
