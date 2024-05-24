local gitsigns = require("gitsigns")
local diff_view = require("diffview")

gitsigns.setup({
	on_attach = function()
		vim.keymap.set("n", "<leader>gph", gitsigns.preview_hunk, { desc = "[G]it [P]review [H]unk" })
		vim.keymap.set("n", "<leader>grh", gitsigns.reset_hunk, { desc = "[G]it [R]eset [H]unk" })
		vim.keymap.set("n", "<leader>gd", gitsigns.diffthis, { desc = "[G]it [D]iff" })
		vim.keymap.set("n", "<leader>gbl", gitsigns.blame_line, { desc = "[G]it [B]lame [L]ine" })
	end,
})

vim.keymap.set("n", "<leader>gs", "<cmd>vertical Git<CR>", { desc = "[G]it [S]tatus" })
vim.keymap.set("n", "<leader>gm", "<cmd>Gvdiffsplit master<CR>")
vim.keymap.set("n", "<leader>gfh", "<cmd>DiffviewFileHistory %<CR>", { desc = "[G]it [F]ile [H]istory" })

-- diff_view.setup({
-- 	keymaps = {
-- 		disable_defaults = true,
-- 	},
-- })
