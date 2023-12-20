-- Go back to netrw.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Go to Netrw' })

-- Use the lsp to format the current buffer.
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = '[F]ormat' })

-- neovim.test mappings.
vim.keymap.set('n', '<leader>tt', require("neotest").run.run, {desc = "Run [T]est"})
vim.keymap.set('n', '<leader>ts', require("neotest").summary.toggle, {desc = "Toggle [T]est [S]ummary"})
vim.keymap.set('n', '<leader>tn', require("neotest").jump.next, {desc = "Next Test"})
vim.keymap.set('n', '<leader>tp', require("neotest").jump.prev, {desc = "Prev Test"})

-- git-worktree mappings
-- local gt = require('git-worktree')
-- vim.keymap.set('n', '<leader>wc', gt.create_worktree(''), {desc = "Prev Test"})

local tele = require("telescope")
tele.load_extension("git_worktree")
vim.keymap.set('n', '<leader>gws', tele.extensions.git_worktree.git_worktrees, { desc = 'git worktree search' })
vim.keymap.set('n', '<leader>gwc', tele.extensions.git_worktree.create_git_worktree, { desc = 'git worktree create' })

