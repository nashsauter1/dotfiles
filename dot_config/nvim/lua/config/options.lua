-- For general neovim/vim settings
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.mouse = "" -- set to "a" for all modes mouse usage
vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus" -- sync clipboard
vim.opt.breakindent = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- tabs/spaces
vim.opt.undofile = true -- save undo history
vim.opt.ignorecase = true -- for searching
vim.opt.smartcase = true -- for searching
vim.opt.signcolumn = "auto"
vim.opt.updatetime = 250 -- time before swap update
vim.opt.timeoutlen = 300 -- Displays which-key popup sooner
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.inccommand = "split" -- preview substitutions
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.fileencoding = "utf-8"
vim.opt.termguicolors = true
