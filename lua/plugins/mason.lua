MiniDeps.add({
	source = "williamboman/mason.nvim",
	depends = {
		"neovim/nvim-lspconfig",
	},
})

require("mason").setup({
	registries = {
		"github:mason-org/mason-registry",
		"github:Crashdummyy/mason-registry",
	},
})
