vim.pack.add({ {
	src = "https://github.com/stevearc/dressing.nvim",
} })

require("dressing").setup({
	input = {
		enabled = true,
		border = "single",
	},
	select = {
		enabled = false,
	},
})
