vim.pack.add({ {
	src = "https://github.com/L3MON4D3/LuaSnip",
} })

require("luasnip.loaders.from_vscode").load({
	paths = "./snippets",
})

local ls = require("luasnip")
vim.keymap.set({ "i", "s" }, "<C-J>", function()
	ls.jump(1)
end, { desc = "Jump to next snippet location" })
vim.keymap.set({ "i", "s" }, "<C-K>", function()
	ls.jump(-1)
end, { desc = "Jump to previous snippet location" })
vim.keymap.set({ "i", "s" }, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { desc = "Change snippet choice" })
