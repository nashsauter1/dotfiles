return {
	"folke/zen-mode.nvim",
	config = function()
		vim.keymap.set("n", "<leader>zz", "<cmd>ZenMode<CR>", { noremap = true })
		require("zen-mode").setup({
			window = {
				backdrop = 0.90,
				width = 0.80,
				height = 0.90,
				options = {
					signcolumn = "no",
					number = false,
				},
			},
		})
	end,
}
