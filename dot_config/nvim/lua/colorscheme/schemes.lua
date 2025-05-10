return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
	},
	{
		"sainnhe/sonokai",
		lazy = false,
	},
	{
		"neanias/everforest-nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("everforest").setup({
				background = "soft",
				transparent_background_level = 0,
				italics = true,
				float_style = "bright",
				spell_foreground = true,
			})
		end,
	},
	{
		"catppuccin/nvim",
		lazy = false,
	},
	{
		"mellow-theme/mellow.nvim",
		lazy = false,
	},
	{
		"rmehri01/onenord.nvim",
		lazy = false,
	},
}
