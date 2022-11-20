local Remap = require('keymap')
local cmp = require('cmp')


-- diagnostics
Remap.nnoremap('<leader>e', vim.diagnostic.open_float)
Remap.nnoremap('[e', vim.diagnostic.goto_prev)
Remap.nnoremap(']e', vim.diagnostic.goto_next)
Remap.nnoremap('<leader>q', vim.diagnostic.setloclist)

local on_attach = function(client, bufnr)
    -- TODO: format on save
    --
    -- Mappings. 
    Remap.nnoremap('gd', vim.lsp.buf.definition)
    Remap.nnoremap('gD', vim.lsp.buf.declaration)
    Remap.nnoremap('<C-h>', vim.lsp.buf.hover)
    Remap.nnoremap('gi', vim.lsp.buf.implementation)
    Remap.nnoremap('<leader>ca', vim.lsp.buf.code_action)
end

-- Auto complete
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    },
    sources = cmp.config.sources({
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
        -- {name = 'buffer'},
    }),
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        ['<C-CR>'] = cmp.mapping.complete({
            config = {
                sources = {
                    { name = 'nvim_lsp' }  
                }
            }
        })
    })
})



--- ** Language Servers **
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- typescript
require('lspconfig').tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities 
}

