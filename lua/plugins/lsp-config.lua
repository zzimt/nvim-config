MiniDeps.add({
	source = "neovim/nvim-lspconfig",
})

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
