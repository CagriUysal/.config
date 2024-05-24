-- Leader <Space>
vim.g.mapleader = " "

-- Disable netrw (using nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Cursor as good old block
vim.o.guicursor = ""

-- Relative numbers for faster j,k
vim.o.number = true
vim.o.relativenumber = true

-- Indenting
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.breakindent = true
vim.o.wrap = false

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.incsearch = true

-- Color
vim.o.termguicolors = true
vim.o.pumblend = 10

-- Decrease update time
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

vim.o.title = true
vim.o.scrolloff = 10

vim.o.clipboard = "unnamedplus"
vim.wo.signcolumn = "yes"
vim.opt.swapfile = false
-- vim.o.cursorline = true

vim.cmd("syntax sync minlines=10000")
