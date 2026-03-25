MiniDeps.add({
	source = "stevearc/dressing.nvim",
})

require("dressing").setup({
	input = {
		enabled = true,
		border = "single",
	},
	select = {
		enabled = false,
	},
})
