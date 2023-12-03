-- Go back to netrw.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Go to Netrw' })

-- Use the lsp to format the current buffer.
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = '[F]ormat' })

