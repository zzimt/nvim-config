vim.pack.add({
	{
		src = "https://github.com/nvim-tree/nvim-tree.lua",
	},
	{
		src = "https://github.com/nvim-tree/nvim-web-devicons",
	},
})

require("nvim-tree").setup({
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

local nt_api = require("nvim-tree.api")

nt_api.events.subscribe(nt_api.events.Event.TreeOpen, function()
	local tree_winid = nt_api.tree.winid()

	if tree_winid ~= nil then
		vim.api.nvim_set_option_value("statusline", " ", { win = tree_winid })
	end
end)
