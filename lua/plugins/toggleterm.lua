vim.pack.add({ {
	src = "https://github.com/akinsho/toggleterm.nvim",
} })

require("toggleterm").setup({
	shade_terminals = false,
	start_in_insert = false,
})

vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
vim.keymap.set("n", "<leader>tc", "<cmd>TermNew<CR>", { desc = "Create new terminal" })
vim.keymap.set("n", "<leader>ts", "<cmd>TermSelect<CR>", { desc = "Select terminal" })
vim.keymap.set("n", "<leader>tn", "<cmd>ToggleTermSetName<CR>", { desc = "Set terminal name" })
