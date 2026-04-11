vim.pack.add({ {
	src = "https://github.com/stevearc/conform.nvim",
} })

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		rust = { "rustfmt" },
		javascript = { "biome" },
		cpp = { "clang-format" },
		c = { "clang-format" },
		cs = { "clang-format" },
		css = { "prettierd" },
		scss = { "prettierd" },
		json = { "prettierd" },
		html = { "prettierd" },
		toml = { "taplo" },
	},
})
