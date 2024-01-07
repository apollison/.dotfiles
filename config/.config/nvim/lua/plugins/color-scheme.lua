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

return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = function()
    vim.o.background = "dark"
    vim.cmd([[colorscheme gruvbox]])
  end,
  opts = {},
}

