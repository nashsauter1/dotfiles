return{
  { "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    ft = "norg",
    opts = {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.norg.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.norg.dirman"] = { -- Manages Neorg workspaces 
          config = {
            workspaces = {
              notes = "~/Documents/neorg/notes",
            },
          },
        },
        ["core.export"] = {
          config = {
            export_dir = "~/Documents/neorg/export"
          },
        },
      },
    },
    dependencies = { {"nvim-lua/plenary.nvim"} },
  }
}
