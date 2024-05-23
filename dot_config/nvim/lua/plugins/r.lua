return {
	{
		"R-nvim/R.nvim",
		lazy = false,
		config = function()
			local opts = {
				R_args = { "--quiet", "--no-save" },
				-- external_term = true,
			}
			require("r").setup(opts)
		end,
	},
	{
		"quarto-dev/quarto-nvim",
		dependencies = {
			{ "jmbuhr/otter.nvim" },
			{ "jpalardy/vim-slime" },
		},
		-- opts = {
		-- 	codeRunner = {
		-- 		enabled = true,
		-- 		default_method = "slime", -- 'molten' or 'slime'
		-- 		ft_runners = { r = "slime" }, -- filetype to runner, ie. `{ python = "molten" }`.
		-- 		never_run = { "yaml" }, -- filetypes which are never sent to a code runner
		-- 	},
		-- },
		config = function()
			local runner = require("quarto.runner")
			vim.keymap.set("n", "<Leader>rc", runner.run_cell, { desc = "run cell", silent = true })
			vim.keymap.set("n", "<Leader>ra", runner.run_above, { desc = "run cell and above", silent = true })
			vim.keymap.set("n", "<Leader>rA", runner.run_all, { desc = "run all cells", silent = true })
			vim.keymap.set("n", "<Leader>rl", runner.run_line, { desc = "run line", silent = true })
			vim.keymap.set("v", "<Leader>r", runner.run_range, { desc = "run visual range", silent = true })
		end,
	},
	-- {
	-- 	"jpalardy/vim-slime",
	-- 	init = function()
	-- 		vim.g.slime_target = "screen"
	-- 		-- vim.g.slime_no_mappings = 1
	-- 	end,
	-- },
}
