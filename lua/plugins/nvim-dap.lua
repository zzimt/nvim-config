vim.pack.add({ {
	src = "https://github.com/mfussenegger/nvim-dap",
} })

local dap = require("dap")

dap.adapters.cppdbg = {
	id = "cppdbg",
	type = "executable",
	command = "/home/daniil/Bin/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
}

dap.configurations.cpp = {
	{
		name = "Launch file",
		type = "cppdbg",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopAtEntry = true,
	},
	{
		name = "Attach to gdbserver :1234",
		type = "cppdbg",
		request = "launch",
		MIMode = "gdb",
		miDebuggerServerAddress = "localhost:1234",
		miDebuggerPath = "/usr/bin/gdb",
		cwd = "${workspaceFolder}",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
	},
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

vim.keymap.set("n", "<leader>dc", "<cmd>DapContinue<CR>", { desc = "Debugger continue" })
vim.keymap.set("n", "<leader>ds", "<cmd>DapStepOver<CR>", { desc = "Debugger step over" })
vim.keymap.set("n", "<leader>di", "<cmd>DapStepInto<CR>", { desc = "Debugger step into" })
vim.keymap.set("n", "<leader>do", "<cmd>DapStepOut<CR>", { desc = "Debugger step out" })
vim.keymap.set("n", "<leader>dt", "<cmd>DapTerminate<CR>", { desc = "Debugger terminate" })
vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint" })
