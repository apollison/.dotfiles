return {
  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  {
    -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    dependencies = {
      'echasnovski/mini.icons',
    },
    opts = {},
    config = function()
      -- document existing key chains
      require('which-key').add({
        { '<leader>c', group = '[C]ode' },
        { '<leader>c_', hidden = true },
        { '<leader>d', group = '[D]ocument' },
        { '<leader>d_', hidden = true },
        --{ '<leader>g', group = '[G]it' },
        --{ '<leader>g_', hidden = true },
        { '<leader>h', group = 'More git' },
        { '<leader>h_', hidden = true },
        { '<leader>r', group = '[R]ename' },
        { '<leader>r_', hidden = true },
        { '<leader>s', group = '[S]earch' },
        { '<leader>s_', hidden = true },
        { '<leader>w', group = '[W]orkspace' },
        { '<leader>w_', hidden = true },
      })
    end,
  },
}
