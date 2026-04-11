vim.pack.add({
	{
		src = "https://github.com/nvim-telescope/telescope.nvim",
	},
	{
		src = "https://github.com/nvim-lua/plenary.nvim",
	},
	{
		src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
	},
	{
		src = "https://github.com/nvim-telescope/telescope-ui-select.nvim",
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

local builtin = require("telescope.builtin")
local theme = require("telescope.themes").get_ivy()
local function themed(tbuiltin)
	return function()
		tbuiltin(theme)
	end
end
vim.keymap.set("n", "<leader>ff", themed(builtin.find_files), { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", themed(builtin.live_grep), { desc = "Grep files" })
vim.keymap.set("n", "<leader>fb", themed(builtin.buffers), { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", themed(builtin.help_tags), { desc = "Find help tags" })
vim.keymap.set("n", "<leader>fd", themed(builtin.diagnostics), { desc = "Display diagnostics" })
vim.keymap.set("n", "<leader>fsd", themed(builtin.lsp_document_symbols), { desc = "Display document symbols" })
vim.keymap.set("n", "<leader>fsw", themed(builtin.lsp_workspace_symbols), { desc = "Display workspace symbols" })
vim.keymap.set("n", "<leader>fr", themed(builtin.lsp_references), { desc = "Find references" })
vim.keymap.set("n", "<leader>fci", themed(builtin.lsp_incoming_calls), { desc = "Find incoming calls" })
vim.keymap.set("n", "<leader>fco", themed(builtin.lsp_outgoing_calls), { desc = "Find outgoing calls" })
vim.keymap.set("n", "<leader>fk", themed(builtin.keymaps), { desc = "Display keymaps" })
