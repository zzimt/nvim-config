vim.pack.add({ {
	src = "https://github.com/folke/lazydev.nvim",
} })

require("lazydev").setup({
	library = {
		{ path = "luvit-meta/library", words = { "vim%.uv" } },
	},
})
