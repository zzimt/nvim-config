MiniDeps.add({
	source = "hrsh7th/nvim-cmp",
	depends = {
		"hrsh7th/cmp-nvim-lsp",
		"saadparwaiz1/cmp_luasnip",
		"FelipeLema/cmp-async-path",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"L3MON4D3/LuaSnip",
		"onsails/lspkind.nvim",
	},
})

local luasnip = require("luasnip")
local cmp = require("cmp")
cmp.setup({
	completion = {
		completeopt = "menu,menuone,noinsert",
		menu = { border = "rounded" },
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-u>"] = cmp.mapping.scroll_docs(-4), -- Up
		["<C-d>"] = cmp.mapping.scroll_docs(4), -- Down
		["<Tab>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "async_path" },
		{ name = "nvim_lsp_signature_help" },
	},
	window = {
		completion = cmp.config.window.bordered({
			winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
			col_offset = -3,
			side_padding = 0,
		}),
		documentation = cmp.config.window.bordered({
			winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
			col_offset = 0,
			side_padding = 0,
		}),
	},
	formatting = {
		expandable_indicator = true,
		fields = { "icon", "abbr", "menu" },
		format = function(entry, vim_item)
			local kind = require("lspkind").cmp_format({ mode = "symbol", maxwidth = 50 })(entry, vim_item)
			local strings = vim.split(kind.icon, "%s", { trimempty = true })
			kind.icon = " " .. (strings[1] or "") .. " "
			return kind
		end,
	},
})
