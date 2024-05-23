return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lua",
		"R-nvim/cmp-r",
		"jmbuhr/otter.nvim",
	},
	config = function()
		local cmp = require("cmp")
		cmp.setup({
			sources = {
				{ name = "nvim_lsp" },
				{ name = "otter" },
				{ name = "cmp_r" },
			},
			completion = { completeopt = "menu,menuone,noinsert" },
			mapping = cmp.mapping.preset.insert({
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
			}),
		})
	end,
}
