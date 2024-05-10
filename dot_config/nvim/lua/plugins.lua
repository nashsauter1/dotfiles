return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      -- vim.cmd([[colorscheme catppuccin-frappe]])
      integrations = {
        leap = true,
        dashboard = true,
        beacon = true,
        mason = true,
        fern = true,
        markdown = true,
        telescope = true
      }
    end,
  },
  { "sainnhe/sonokai",
  lazy = false,
  priority = 900,
  config = function ()
    -- vim.cmd([[colorscheme sonokai]])
  end
},
{ "shaunsingh/nord.nvim",
config = function ()
    vim.cmd([[let g:nord_disable_background = v:true]])
    vim.cmd([[colorscheme nord]])
  end
},

  -- General Plugins
  "nvim-lua/plenary.nvim",
  { "windwp/nvim-autopairs", config = true },
  "kyazdani42/nvim-web-devicons",
  { "numToStr/Comment.nvim", config = true },
  { "akinsho/bufferline.nvim", config = true },
  { "voldikss/vim-floaterm", cmd = "FloatermNew" },

  -- File Management
  "lambdalisue/fern.vim",
  { 'glepnir/dashboard-nvim', event = 'VimEnter', config = true },

  -- Writing Plugins
  { "reedes/vim-pencil", ft = "markdown" },
  { "folke/todo-comments.nvim", config = true },

  -- Movement
  { "ggandor/leap.nvim", config = function()
    require('leap').add_default_mappings()
  end },
  "danilamihailov/beacon.nvim",

  -- LSP
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim", config = true },
  { "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").ltex.setup {
        settings = {
          ltex = {filetypes = {"markdown", "md"}}
        }
      }
      -- require("lspconfig").sumneko_lua.setup {}
      -- require("lspconfig").pyright.setup {}
      -- require("lspconfig").black.setup {}
      -- require("lspconfig").bashls.setup {}
    end },

}
