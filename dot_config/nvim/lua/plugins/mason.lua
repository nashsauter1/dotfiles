return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		config = function()
			require("mason-lspconfig").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("lspconfig").lua_ls.setup({})
			require("lspconfig").pyright.setup({})
			require("lspconfig").marksman.setup({
				filetypes = { "markdown", "quarto" },
			})
			require("lspconfig").r_language_server.setup({})
		end,
	},
}
