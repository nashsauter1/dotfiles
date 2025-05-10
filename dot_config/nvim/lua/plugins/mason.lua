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
			require("lspconfig").lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
			require("lspconfig").pyright.setup({})
			require("lspconfig").marksman.setup({
				filetypes = { "markdown", "quarto" },
			})
			require("lspconfig").r_language_server.setup({})
			require("lspconfig").bashls.setup({})
			require("lspconfig").cssls.setup({})
			require("lspconfig").html.setup({})
			require("lspconfig").biome.setup({})
			-- require("lspconfig").vale_ls.setup({
			-- 	filetypes = { "markdown", "quarto" },
			-- })
		end,
	},
}
