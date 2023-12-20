require('apollison.settings')
require('apollison.keymaps')

local augroup = vim.api.nvim_create_augroup
local DasGroup = augroup('DasGroup', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd({"BufWritePre"}, {
    group = DasGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

