vim.pack.add({ {
	src = "https://github.com/nvim-treesitter/nvim-treesitter",
	version = "main",
} })

require("nvim-treesitter").setup({
	install_dir = vim.fn.stdpath("data") .. "/site",
})

require("nvim-treesitter").install({
	"c",
	"cpp",
	"lua",
	"markdown",
	"rust",
	"json",
	"javascript",
	"jsx",
	"typescript",
	"tsx",
	"go",
	"gomod",
	"gosum",
	"latex",
})

vim.api.nvim_create_autocmd("FileType", {
	callback = function(args)
		pcall(vim.treesitter.start, args.buf)
	end,
})
