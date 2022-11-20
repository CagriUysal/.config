local Remap = require("keymap")

Remap.nnoremap("<leader>p", "<cmd>Ex<CR>")     
Remap.nnoremap("<leader><CR>", ":so ~/.config/nvim/init.lua<CR>")

-- evil exists
Remap.inoremap("jj", "<Esc>")

-- yank to clipboard
Remap.vnoremap("<leader>c", "\"*y")
-- paste without changing buffer value
Remap.vnoremap("<leader>p", "\"_dP")

-- Center screen when jumping
Remap.nnoremap("<C-u>", "<C-u>zz")
Remap.nnoremap("<C-d>", "<C-d>zz")
Remap.nnoremap("n", "nzz")
Remap.nnoremap("N", "Nzz")
