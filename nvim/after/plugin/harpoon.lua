local Remap = require("utils.keymap")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

Remap.nnoremap("<leader>a", mark.add_file)
Remap.nnoremap("<C-e>", ui.toggle_quick_menu)
