MiniDeps.add({
	source = "nvim-mini/mini.hues",
})

require("mini.hues").setup({
	background = "#222222",
	foreground = "#eeeeee",

	-- Number of hues used for non-base colors
	n_hues = 8,

	-- Saturation. One of 'low', 'lowmedium', 'medium', 'mediumhigh', 'high'.
	saturation = "medium",

	-- Accent color. One of: 'bg', 'fg', 'red', 'orange', 'yellow', 'green',
	-- 'cyan', 'azure', 'blue', 'purple'
	accent = "bg",

	-- Plugin integrations. Use `default = false` to disable all integrations.
	-- Also can be set per plugin (see |MiniHues.config|).
	plugins = { default = true },

	-- Whether to auto adjust highlight groups based on certain events
	autoadjust = true,
})
