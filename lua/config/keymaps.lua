vim.g.mapleader = " "

vim.keymap.set("n", "<M-j>", "<cmd>resize +1<CR>", { desc = "Increase horizontal window size" })
vim.keymap.set("n", "<M-k>", "<cmd>resize -1<CR>", { desc = "Decrease horizontal window size" })
vim.keymap.set("n", "<M-l>", "<cmd>vertical resize +1<CR>", { desc = "Increase vertical window size" })
vim.keymap.set("n", "<M-h>", "<cmd>vertical resize -1<CR>", { desc = "Decrease vertical window size" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")
