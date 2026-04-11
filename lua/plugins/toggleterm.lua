vim.pack.add({ {
	src = "https://github.com/akinsho/toggleterm.nvim",
} })

require("toggleterm").setup({
	shade_terminals = false,
	start_in_insert = false,
})
