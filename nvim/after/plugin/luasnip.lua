local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

vim.keymap.set({ "i", "s" }, "<C-k>", function()
	ls.jump(1)
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-l>", function()
	ls.jump(-1)
end, { silent = true })

ls.add_snippets("all", {
	s("ternary", {
		i(1, "cond"),
		t(" ? "),
		i(2, "then"),
		t(" : "),
		i(3, "else"),
	}),

	s({ trig = "af", name = "arrow function" }, {
		t("("),
		i(1, "args"),
		t(") => { "),
		i(2),
		t(" }"),
	}),

	s({ trig = "aaf", name = "async arrow function" }, {
		t("async ("),
		i(1, "args"),
		t(") => { "),
		i(2),
		t(" }"),
	}),

	s({ trig = "vt", name = "vue template" }, {
		t({ "<script></script>", "<template></template>", "<style></style>" }),
	}),
})
