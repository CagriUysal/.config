local Remap = require("utils.keymap")
local telescope = require("telescope")
local builtin = require("telescope.builtin")
local dev_icons = require("nvim-web-devicons")

-- pickers
Remap.nnoremap("<C-p>", function()
	builtin.find_files({ hidden = true, file_ignore_patterns = { ".git/" } })
end) -- search files
Remap.nnoremap("<leader>ff", builtin.live_grep) -- search for string (grep)
Remap.nnoremap("<leader>fw", builtin.grep_string) -- search for word under the cursor
Remap.nnoremap("<leader>ht", builtin.help_tags) -- search helps

-- git stuff (<leader>g prefixed)
Remap.nnoremap("<leader>gs", builtin.git_branches) -- switch to branch (lists branches)

-- file browser
Remap.nnoremap("<leader>p", function()
	telescope.extensions.file_browser.file_browser({
		initial_mode = "normal",
		previewer = false,
	})
end)

telescope.load_extension("file_browser")

telescope.setup({
	extentions = {
		file_browser = {
			path = "%:p:h",
			cwd_to_path = true,
			hijack_netrw = true,
			mappings = {
				["n"] = {
					["/"] = function()
						vim.cmd("startinsert")
					end,
				},
			},
		},
	},
})

dev_icons.setup({})
