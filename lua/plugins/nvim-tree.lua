vim.pack.add({
	{
		src = "https://github.com/nvim-tree/nvim-tree.lua",
	},
	{
		src = "https://github.com/nvim-tree/nvim-web-devicons",
	},
})

require("nvim-tree").setup({
	modified = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = " ",
			info = " ",
			warning = " ",
			error = " ",
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
