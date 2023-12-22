return {
  'ThePrimeagen/git-worktree.nvim',
  config = function()
    local tele = require("telescope")
    tele.load_extension("git_worktree")
    vim.keymap.set('n', '<leader>gws', tele.extensions.git_worktree.git_worktrees, { desc = 'git worktree search' })
    vim.keymap.set('n', '<leader>gwc', tele.extensions.git_worktree.create_git_worktree, { desc = 'git worktree create' })
  end,
}

