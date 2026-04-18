vim.pack.add({ {
	src = "https://github.com/navarasu/onedark.nvim",
} })

require("onedark").setup({
	style = "dark",
	transparent = false,
	term_colors = true,
	ending_tildes = false,
	cmp_itemkind_reverse = false,

	code_style = {
		comments = "italic",
		keywords = "none",
		functions = "none",
		strings = "none",
		variables = "none",
	},

	colors = {},
	highlights = {},

	diagnostics = {
		darker = false,
		undercurl = true,
		background = true,
	},
})

require("onedark").load()
