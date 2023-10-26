vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Evil exists
vim.keymap.set("i", "jj", "<Esc>")

-- Copy to clipboard
-- vim.keymap.set("v", "<leader>c", '"*y')

-- Paste without changing buffer value
vim.keymap.set("v", "<leader>p", '"_dP')

-- Center screen when jumping
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "*", "*zz")

-- Move blocks in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>t", ":tabnew %<CR>")
