return {
	"nvim-telescope/telescope.nvim",
	lazy = false,
	-- cmd = "Telescope",
	dependencies = { "nvim-lua/plenary.nvim", "andrew-george/telescope-themes" },
	config = function()
		local builtin = require("telescope.builtin")
		require("telescope").setup({
			defaults = {
				extensions_list = { "themes" },
			},
			extensions = {
				themes = {
					enable_previewer = true,
					enable_live_preview = true,
					persist = {
						enabled = true,
						path = vim.fn.stdpath("config") .. "/lua/colorscheme/current.lua",
					},
				},
			},
		})
		vim.keymap.set("n", "<leader>tf", builtin.find_files, { desc = "Files" })
		vim.keymap.set("n", "<leader>tv", builtin.vim_options, { desc = "Vim Options" })
		vim.keymap.set("n", "<leader>td", builtin.colorscheme, { desc = "Colorschemes Demo" })
		vim.keymap.set("n", "<leader>tc", ":Telescope themes<CR>", { desc = "Colorschemes Switch" })
		require("telescope").load_extension("themes")
	end,
}
