return {
	{
		"folke/zen-mode.nvim",
		lazy = false,
		config = function()
			vim.keymap.set("n", "<leader>zz", "<cmd>ZenMode<CR>", { noremap = true })
			require("zen-mode").setup({
				window = {
					backdrop = 1,
					width = 0.60,
					height = 1,
					options = {
						signcolumn = "no",
						number = false,
					},
				},
			})
		end,
	},
	-- {
	-- 	"folke/twilight.nvim",
	-- 	opts = {},
	-- },
}
