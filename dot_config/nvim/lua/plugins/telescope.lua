return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>tf", builtin.find_files, { desc = "Files" })
		vim.keymap.set("n", "<leader>tv", builtin.vim_options, { desc = "Vim Options" })
		vim.keymap.set("n", "<leader>tc", builtin.colorscheme, { desc = "Colorschemes" })
	end,
}
