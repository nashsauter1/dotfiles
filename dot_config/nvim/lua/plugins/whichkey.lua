return {
  'folke/which-key.nvim',
  event = "VimEnter",
  config = function()
    require('which-key').setup()
    require('which-key').register {
        ['<leader>t'] = { name = '[T]elescope', _ = 'which_key_ignore' },
        ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
        ['<leader>z'] = { name = '[Z]en', _ = 'which_key_ignore' },
      }
  end,
}
