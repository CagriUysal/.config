-- leader <Space>
vim.g.mapleader = " "

-- cursor block
vim.opt.guicursor = ""

-- relative numbers for faster j,k
vim.opt.number = true
vim.opt.relativenumber = true

-- indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- color
vim.opt.termguicolors = true
vim.opt.pumblend = 10

vim.opt.title = true
vim.opt.wrap = false
vim.opt.scrolloff = 10

-- disable netrw (using nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
