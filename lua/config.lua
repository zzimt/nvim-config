vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.laststatus = 3
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.mouse = nil

vim.g.mapleader = " "

vim.keymap.set("n", "<M-j>", "<cmd>resize +1<CR>", { desc = "Increase horizontal window size" })
vim.keymap.set("n", "<M-k>", "<cmd>resize -1<CR>", { desc = "Decrease horizontal window size" })
vim.keymap.set("n", "<M-l>", "<cmd>vertical resize +1<CR>", { desc = "Increase vertical window size" })
vim.keymap.set("n", "<M-h>", "<cmd>vertical resize -1<CR>", { desc = "Decrease vertical window size" })
vim.keymap.set("n", "<leader>U", vim.pack.update, { desc = "Update plugins" })
