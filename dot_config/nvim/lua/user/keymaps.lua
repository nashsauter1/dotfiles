local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<S-h>", "<C-w><C-h>", opts)
keymap("n", "<S-j>", "<C-w><C-j>", opts)
keymap("n", "<S-k>", "<C-w><C-k>", opts)
keymap("n", "<S-l>", "<C-w><C-l>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<C-l>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Telescope
-- vim.keymap.set('n', '<leader>tf', ":Telescope find_files<cr>", opts)
-- vim.keymap.set('n', '<leader>tg', ":Telescope live_grep<cr>", opts)
-- vim.keymap.set('n', '<leader>tb', ":Telescope buffers<cr>", opts)
-- vim.keymap.set('n', '<leader>tc', ":Telescope bibtex<cr>", opts)

-- LSP
-- keymap("n", "K", vim.lsp.buf.hover, { buffer = 0 })
