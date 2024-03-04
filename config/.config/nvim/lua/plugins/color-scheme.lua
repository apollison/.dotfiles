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

return {
  'sainnhe/sonokai',
  priority = 1000,
  config = function()
    -- found these two lets on the interwebs, dunno if they work.
    -- let g:sonokai_style = 'maia'
    -- let g:sonokai_better_performance = 1
    vim.cmd.colorscheme 'sonokai'
  end,
}
