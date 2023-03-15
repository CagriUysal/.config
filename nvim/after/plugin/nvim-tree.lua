local tree = require("nvim-tree")
local api = require("nvim-tree.api")
local Remap = require("utils.keymap")

tree.setup({
	respect_buf_cwd = true,
	view = {
		side = "right",
	},
})

Remap.nnoremap("<leader>p", api.tree.toggle)
Remap.nnoremap("<leader>fp", ":NvimTreeFindFile<CR>")

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
