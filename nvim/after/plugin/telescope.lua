local Remap = require("keymap")
local builtin = require("telescope.builtin")

-- pickers
Remap.nnoremap("<C-p>", function()
	builtin.find_files({ hidden = true, file_ignore_patterns = { ".git/" } })
end) -- search files
Remap.nnoremap("<leader>ff", builtin.live_grep) -- search for string (grep)
Remap.nnoremap("<leader>fw", builtin.grep_string) -- search for word under the cursor
Remap.nnoremap("<leader>ht", builtin.help_tags) -- search helps

-- git stuff (<leader>g prefixed)
Remap.nnoremap("<leader>gs", builtin.git_branches) -- switch to branch (lists branches)
Remap.nnoremap("<leader>gd", builtin.git_status) -- show diff
