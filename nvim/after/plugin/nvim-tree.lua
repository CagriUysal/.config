local tree = require("nvim-tree")
local api = require("nvim-tree.api")

tree.setup({
	respect_buf_cwd = true,
	view = {
		side = "right",
	},
})

vim.keymap.set("n", "<leader>o", api.tree.toggle, { desc = "[O]pen File Tree" })
vim.keymap.set("n", "<leader>ff", ":NvimTreeFindFile<CR>", { desc = "[F]ind [F]ile in Tree" })

local function open_nvim_tree(data)
	-- buffer is a directory
	local directory = vim.fn.isdirectory(data.file) == 1

	if not directory then
		return
	end

	-- change to the directory
	vim.cmd.cd(data.file)

	-- open the tree
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
