vim.pack.add({ {
	src = "https://github.com/neovim/nvim-lspconfig",
} })

local lsps = {
	"rust_analyzer",
	"basedpyright",
	"clangd",
	"lua_ls",
}

for _, lsp in ipairs(lsps) do
	vim.lsp.enable(lsp)
end

vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.HINT] = " ",
			[vim.diagnostic.severity.INFO] = " ",
		},
	},
	virtual_text = { true, prefix = "●" },
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "<leader>ga", vim.lsp.buf.code_action, { desc = "Display code actions" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>gf", vim.diagnostic.open_float, { desc = "Line diagnostics" })
