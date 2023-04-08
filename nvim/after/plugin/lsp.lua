local lspconfig = require("lspconfig")
local cmp = require("cmp")

-- diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[e", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]e", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

local on_attach = function(client, bufnr)
	-- Mappings.
	vim.keymap.set("n", "gd", vim.lsp.buf.definition)
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
	vim.keymap.set("n", "<C-h>", vim.lsp.buf.hover)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
end

-- Auto complete
cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		-- {name = 'buffer'},
	}),
	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = cmp.mapping.confirm({ select = true }),
		["<C-CR>"] = cmp.mapping.complete({
			config = {
				sources = {
					{ name = "nvim_lsp" },
				},
			},
		}),
	}),
})

require("neodev").setup({
	-- add any options here, or leave empty to use the default settings
})

--- ** Language Servers **
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.tsserver.setup({ on_attach = on_attach, capabilities = capabilities })
lspconfig.gopls.setup({ on_attach = on_attach, capabilities = capabilities })
lspconfig.cssls.setup({ on_attach = on_attach, capabilities = capabilities })
lspconfig.lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			completion = {
				callSnippet = "Replace",
			},
		},
	},
})
