vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

local augroup = vim.api.nvim_create_augroup
local DasGroup = augroup('DasGroup', {})

local autocmd = vim.api.nvim_create_autocmd

-- Trim trailing whitespace on save.
autocmd({"BufWritePre"}, {
    group = DasGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

