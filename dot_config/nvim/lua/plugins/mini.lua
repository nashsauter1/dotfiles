return {
	"echasnovski/mini.nvim",
	config = function()
		require("mini.ai").setup({ n_lines = 50 })
		-- require('mini.animate').setup()
		require("mini.pairs").setup()
		require("mini.statusline").setup()
	end,
}
