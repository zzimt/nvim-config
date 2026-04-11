vim.pack.add({ {
	src = "https://github.com/L3MON4D3/LuaSnip",
} })

require("luasnip.loaders.from_vscode").load({
	paths = "./snippets",
})
