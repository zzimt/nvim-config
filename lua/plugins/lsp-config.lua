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

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
	virtual_text = { true, prefix = "●" },
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
