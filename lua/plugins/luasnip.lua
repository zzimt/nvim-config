MiniDeps.add({
	source = "L3MON4D3/LuaSnip",
})

require("luasnip.loaders.from_vscode").load({
	paths = "./snippets",
})
