require("lazy").setup({
	"folke/which-key.nvim",
	"tpope/vim-sleuth", -- enforces consistent tabs/spaces in file,
	"numToStr/Comment.nvim", -- type gcc,
	-- 'HiPhish/rainbow-delimiters.nvim',

	require("plugins.telescope"),
	require("plugins.whichkey"),
	require("plugins.mini"),
	require("plugins.leap"),
	require("plugins.lazygit"),
	require("plugins.zen"),
	require("plugins.colorizer"),
	require("plugins.treesitter"),
	require("plugins.mason"),
	require("plugins.conform"),
	require("plugins.ibl"),
	require("plugins.r"),
	require("plugins.cmp"),

	require("colorscheme.mellow"),
	require("colorscheme.onenord"),
})