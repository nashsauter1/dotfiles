return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"bibtex",
				"clojure",
				"csv",
				"html",
				"latex",
				"markdown",
				"markdown_inline",
				"python",
				"r",
				"rnoweb",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<Leader>sn", -- set to `false` to disable one of the mappings
					node_incremental = "<Leader>si",
					scope_incremental = "<Leader>ss",
					node_decremental = "<Leader>sd",
				},
			},
		})
	end,
}
