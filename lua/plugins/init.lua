local plugins = {
	"colorschemes.gruvbox",
	"dressing",
	"lsp-config",
	"mason",
	"luasnip",
	"nvim-cmp",
	"conform",
	"lazydev",
	"roslyn",
	"lazygit",
	"nvim-dap",
	"nvim-dap-ui",
	"nvim-tree",
	"nvim-treesitter",
	"telescope",
	"toggleterm",
	"vim-visual-multi",
	"ufo",
	"vim-wordmotion",
	"vim-better-whitespace",
}

for _, plugin in ipairs(plugins) do
	require("plugins." .. plugin)
end
