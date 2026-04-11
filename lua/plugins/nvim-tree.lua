vim.pack.add({
	{
		src = "https://github.com/nvim-tree/nvim-tree.lua",
	},
	{
		src = "https://github.com/nvim-tree/nvim-web-devicons",
	},
})

local signs = require("diagnostic-signs")

require("nvim-tree").setup({
	modified = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = signs.hint .. " ",
			info = signs.info .. " ",
			warning = signs.warning .. " ",
			error = signs.error .. " ",
		},
	},
	sync_root_with_cwd = true,
	filters = {
		git_ignored = false,
	},
	actions = {
		open_file = {
			resize_window = false,
		},
	},
})

vim.keymap.set("n", "<leader>et", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle explorer" })
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>", { desc = "Focus explorer" })
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh explorer" })
vim.keymap.set("n", "<M-,>", "<cmd>NvimTreeResize -1<CR>", { desc = "Decrement explorer width" })
vim.keymap.set("n", "<M-.>", "<cmd>NvimTreeResize +1<CR>", { desc = "Increment explorer width" })
