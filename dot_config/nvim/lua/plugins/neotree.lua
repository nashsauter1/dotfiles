return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "main",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	keys = {
		{ "<Leader>wt", "<cmd>Neotree toggle<cr>", desc = "Neotree Split View" },
		{ "<Leader>wf", "<cmd>Neotree position=current<cr>", desc = "Neotree Full View" },
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			window = {
				width = 25,
			},
			filesystem = {
				hijack_netrw_behavior = "open_current",
			},
		})
	end,
}
