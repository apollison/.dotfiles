return {
  'ThePrimeagen/git-worktree.nvim',
  config = function()
    local tele = require("telescope")
    tele.load_extension("git_worktree")
    vim.keymap.set('n', '<leader>gws', tele.extensions.git_worktree.git_worktrees, { desc = 'git worktree search' })
    vim.keymap.set('n', '<leader>gwc', tele.extensions.git_worktree.create_git_worktree, { desc = 'git worktree create' })

    local wt = require("git-worktree")
    wt.on_tree_change(function(op, metadata)
      if op == wt.Operations.Switch then
        print("Switched from " .. metadata.prev_path .. " to " .. metadata.path)

        -- Change the cwd to the new worktree dir.
        vim.api.nvim_set_current_dir(metadata.path)

        -- Load any local config files for vim.
        local config_file = metadata.path .. '/.nvim.lua'
        local f = io.open(config_file, 'r')
        if f then
          dofile(metadata.path .. '/.nvim.lua')
          print('Loaded .nvim.lua config file')
          f:close()
        end
      end
    end)
  end,
}
