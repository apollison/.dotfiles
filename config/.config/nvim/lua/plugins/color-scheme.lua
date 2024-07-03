-- return {
--   -- Theme inspired by Atom
--   --'navarasu/onedark.nvim',
--   --'phanviet/vim-monokai-pro',
--   --'tanvirtin/monokai.nvim',
--   'rose-pine/neovim',
--   priority = 1000,
--   config = function()
--     vim.cmd.colorscheme 'rose-pine'
--   end,
-- }

-- return {
--   'catppuccin/nvim',
--   name = 'catppuccin',
--   priority = 1000,
--   config = function()
--     vim.cmd.colorscheme 'catppuccin-mocha'
--   end,
-- }

-- return {
--   'ellisonleao/gruvbox.nvim',
--   priority = 1000,
--   config = function()
--     local c = require('gruvbox')
--     c.config.contrast = 'hard'
--     vim.o.background = "dark"
--     vim.cmd([[colorscheme gruvbox]])
--   end,
-- }

-- return {
--   'sainnhe/sonokai',
--   priority = 1000,
--   config = function()
--     -- found these two lets on the interwebs, dunno if they work.
--     -- vim.g.sonokai_style = 'maia'
--     -- vim.g.sonokai_style = 'shusia'
--     vim.g.sonokai_better_performance = 1
--     -- vim.g.sonokai_colors_override = { 'bg0': ['#1e222a', '235'], 'bg2': ['#282c34', '236'] }
--     vim.g.sonokai_colors_override = {
--         bg_dim = {'#181819', '232'},
--         bg0 = {'#181819', '235'},
--         bg1 = {'#181819', '236'},
--         bg2 = {'#181819', '236'},
--         bg3 = {'#181819', '237'},
--         bg4 = {'#181819', '237'},
--     }
--       -- vim.g.sonokai_transparent_background = 1
--     vim.cmd.colorscheme 'sonokai'
--   end,
-- }

return {
  'loctvl842/monokai-pro.nvim',
  priority = 1000,
  config = function()
    require('monokai-pro').setup({
      -- default is pro. Also can be classic | octagon | machine | ristretto | spectrum
      filter = 'spectrum',
    })
    vim.cmd.colorscheme 'monokai-pro'
  end,
}
