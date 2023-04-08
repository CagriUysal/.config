local gitsigns = require("gitsigns")

gitsigns.setup({
	on_attach = function()
		vim.keymap.set("n", "<leader>gph", gitsigns.preview_hunk, { desc = "[G]it [P]review [H]unk" })
		vim.keymap.set("n", "<leader>gd", gitsigns.diffthis, { desc = "[G]it [D]iff" })
	end,
})
