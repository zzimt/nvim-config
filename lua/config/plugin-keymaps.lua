-- telescope
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

-- nvim-tree
vim.keymap.set("n", "<leader>et", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle explorer" })
vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>", { desc = "Focus explorer" })
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh explorer" })
vim.keymap.set("n", "<M-,>", "<cmd>NvimTreeResize -1<CR>", { desc = "Decrement explorer width" })
vim.keymap.set("n", "<M-.>", "<cmd>NvimTreeResize +1<CR>", { desc = "Increment explorer width" })

-- lazygit
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit" })

-- lsp
vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "<leader>ga", vim.lsp.buf.code_action, { desc = "Display code actions" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>gf", vim.diagnostic.open_float, { desc = "Line diagnostics" })

-- conform
vim.keymap.set("n", "<leader>F", require("conform").format, { desc = "Format buffer" })

-- nvim-dap
vim.keymap.set("n", "<leader>dc", "<cmd>DapContinue<CR>", { desc = "Debugger continue" })
vim.keymap.set("n", "<leader>ds", "<cmd>DapStepOver<CR>", { desc = "Debugger step over" })
vim.keymap.set("n", "<leader>di", "<cmd>DapStepInto<CR>", { desc = "Debugger step into" })
vim.keymap.set("n", "<leader>do", "<cmd>DapStepOut<CR>", { desc = "Debugger step out" })
vim.keymap.set("n", "<leader>dt", "<cmd>DapTerminate<CR>", { desc = "Debugger terminate" })
vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint" })

-- nvim-dap-ui
local dapui = require("dapui")
vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Debugger toggle UI" })

-- toggleterm
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
vim.keymap.set("n", "<leader>tc", "<cmd>TermNew<CR>", { desc = "Create new terminal" })
vim.keymap.set("n", "<leader>ts", "<cmd>TermSelect<CR>", { desc = "Select terminal" })
vim.keymap.set("n", "<leader>tn", "<cmd>ToggleTermSetName<CR>", { desc = "Set terminal name" })

-- ufo
vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
vim.keymap.set("n", "zr", require("ufo").openFoldsExceptKinds, { desc = "Open folds except kinds" })
vim.keymap.set("n", "zm", require("ufo").closeFoldsWith, { desc = "Close folds with" })

-- luasnip
local ls = require("luasnip")
vim.keymap.set({ "i", "s" }, "<C-J>", function()
	ls.jump(1)
end, { desc = "Jump to next snippet location" })
vim.keymap.set({ "i", "s" }, "<C-K>", function()
	ls.jump(-1)
end, { desc = "Jump to previous snippet location" })
vim.keymap.set({ "i", "s" }, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { desc = "Change snippet choice" })
