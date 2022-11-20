if vim.g.vscode then
    require('base')
    require('remap')
else
    require('base')
    require('remap')
    require('highlights')
    require('plugins')
end
