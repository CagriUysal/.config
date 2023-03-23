local Remap = require("utils.keymap")
local telescope = require("telescope")
local builtin = require("telescope.builtin")
local dev_icons = require("nvim-web-devicons")

-- pickers
Remap.nnoremap("<C-p>", function()
	builtin.find_files({ hidden = true, file_ignore_patterns = { ".git/" } })
end) -- search files
Remap.nnoremap("<leader>lg", builtin.live_grep) -- search for string (grep)
Remap.nnoremap("<leader>gs", builtin.grep_string) -- search for word under the cursor
Remap.nnoremap("<leader>ht", builtin.help_tags) -- search helps
Remap.nnoremap("<leader>re", builtin.resume) -- resume with identical state

-- git stuff (<leader>g prefixed) Remap.nnoremap("<leader>gs", builtin.git_branches) -- switch to branch (lists branches)

dev_icons.setup({})
