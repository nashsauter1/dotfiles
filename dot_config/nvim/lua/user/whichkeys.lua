local wk = require("which-key")

wk.register({
  t = {
    name = "Telescope",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    c = { "<cmd>Telescope bibtex<cr>", "Bibtex" },
    t = { "<cmd>Telescope treesitter<cr>", "Treesitter" },
    m = { "<cmd>Telescope marks<cr>", "Marks" },
  },
  f = {
    name = "Files",
    l = { "<cmd>!ls .<cr>", "LS" },
    f = { "<cmd>Fern .<cr>", "Fern (Window)" },
    d = { "<cmd>Fern . -drawer -toggle<cr>", "Fern (Drawer)" },
  },
  s = {
    name = "Splits",
    v = { "<cmd>vsp .<cr>", "Vertical Split" },
    h = { "<cmd>sp .<cr>", "Horizontal Split" },
    o = { "<cmd>only<cr>", "Only" },
    c = { "<cmd>close<cr>", "Close" },
    r = { "<C-W><C-R>", "Rotate" },
    t = { "<C-W>K", "Move to Top" },
    b = { "<C-W>H", "Move to Left" },
    w = { "<C-W>=", "Equalize" },
  },
  b = {
    name = "Buffers",
    v = { "<cmd>vsp term://zsh", "Terminal" },
    t = { "<cmd>tabnew<cr>", "New Tab" },
    n = { "<cmd>tabnext<cr>", "Next Tab" },
  },
  w = {
    name = "Writing",
    z = { "<cmd>ZenMode<cr>", "Zen Mode" },
    p = { "<cmd>TogglePencil<cr>", "Toggle Pencil" },
    d = { "<cmd>!pandoc template.yaml paper.md -o paper.pdf --citeproc --pdf-engine=xelatex<cr>", "Pandoc" },
    o = { "<cmd>!open paper.pdf<cr>", "Open Paper" },
  },
  m = {
    name = "Mason",
    m = { "<cmd>Mason<cr>", "Mason" },
    i = { "<cmd>MasonInstall ", "Install" },
  },
  l = {
    name = "LSP",
    l = { "<cmd>lua vim.lsp.buf.format{ async = true }<CR>", "Format" },
  },
  c = {
    name = "Codeium",
    d = { "<cmd>Codeium Disable<CR>", "Disable" },
    e = { "<cmd>Codeium Enable<CR>", "Enable" },
    n = { "<cmd>call codeium#CycleCompletions(1)<CR>", "Next" },
    p = { "<cmd>call codeium#CycleCompletions(-1)<CR>", "Previous" },
  },
  o = {
    name = "FloatTerm",
    l = { "<cmd>FloatermNew --height=0.75 --width=0.75 lazygit<CR>", "LazyGit" },
    o = { "<cmd>FloatermNew<CR>", "New" },
    v = { "<cmd>FloatermNew --wintype=vsplit --width=0.4<CR>", "Split" },
    t = { "<cmd>FloatermToggle<CR>", "Toggle" },
  }

}, { prefix = "<leader>" })
