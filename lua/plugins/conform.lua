vim.pack.add({ {
	src = "https://github.com/stevearc/conform.nvim",
} })

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		rust = { "rustfmt" },
		cpp = { "clang-format" },
		c = { "clang-format" },
		cs = { "clang-format" },
		css = { "prettier" },
		scss = { "prettier" },
		json = { "prettier" },
		html = { "prettier" },
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		toml = { "taplo" },
	},
})

vim.keymap.set("n", "<leader>F", require("conform").format, { desc = "Format buffer" })
