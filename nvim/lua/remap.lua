local Remap = require("utils.keymap")

-- Remap.nnoremap("<leader>p", "<cmd>Ex<CR>")
Remap.nnoremap("<leader><CR>", ":so ~/.config/nvim/init.lua<CR>")

-- evil exists
-- Remap.inoremap("jj", "<Esc>") -- lets try <C-[>

-- yank to clipboard
Remap.vnoremap("<leader>c", '"*y')
-- paste without changing buffer value
Remap.vnoremap("<leader>p", '"_dP')

-- Center screen when jumping
Remap.nnoremap("<C-u>", "<C-u>zz")
Remap.nnoremap("<C-d>", "<C-d>zz")
Remap.nnoremap("n", "nzz")
Remap.nnoremap("N", "Nzz")
Remap.nnoremap("*", "*zz")

-- lovely <3
Remap.vnoremap("J", ":m '>+1<CR>gv=gv")
Remap.vnoremap("K", ":m '<-2<CR>gv=gv")
