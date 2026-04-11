vim.pack.add({
	{
		src = "https://github.com/hrsh7th/nvim-cmp",
	},
	{
		src = "https://github.com/hrsh7th/cmp-nvim-lsp",
	},
	{
		src = "https://github.com/saadparwaiz1/cmp_luasnip",
	},
	{
		src = "https://github.com/FelipeLema/cmp-async-path",
	},
	{
		src = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help",
	},
	{
		src = "https://github.com/L3MON4D3/LuaSnip",
	},
	{
		src = "https://github.com/onsails/lspkind.nvim",
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
