MiniDeps.add({
	source = "nvim-telescope/telescope-fzf-native.nvim",
	hooks = { post_checkout = function() end },
})

MiniDeps.add({
	source = "nvim-telescope/telescope.nvim",
	depends = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-fzf-native.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
})

local telescope = require("telescope")
local actions = require("telescope.actions")
local actions_layout = require("telescope.actions.layout")

telescope.setup({
	defaults = {
		path_display = {
			filename_first = {
				reverse_directories = true,
			},
		},
		initial_mode = "insert",
		mappings = {
			i = {
				["<M-t>"] = actions_layout.toggle_preview,
			},
		},
	},
	pickers = {
		buffers = {
			mappings = {
				n = {
					["<C-r>"] = actions.delete_buffer + actions.move_to_top,
				},
			},
			sort_last_used = true,
			sort_mru = true,
		},
	},
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_ivy(),
		},
	},
})

telescope.load_extension("ui-select")
