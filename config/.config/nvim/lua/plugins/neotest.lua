return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-go",
    "nvim-neotest/neotest-python",
  },
  config = function()
    -- get neotest namespace (api call creates or returns namespace)
    local neotest_ns = vim.api.nvim_create_namespace("neotest")
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message =
          diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
          return message
        end,
      },
    }, neotest_ns)

    local neo = require('neotest')
    neo.setup({
      adapters = {
        require("neotest-go")({
          dap = { justMyCode = false },
        })
      },
    })

    vim.keymap.set('n', '<leader>tt', neo.run.run, {desc = "Run [T]est"})
    vim.keymap.set('n', '<leader>ts', neo.summary.toggle, {desc = "Toggle Test [S]ummary"})
    vim.keymap.set('n', '<leader>tn', neo.jump.next, {desc = "[N]ext Test"})
    vim.keymap.set('n', '<leader>tp', neo.jump.prev, {desc = "[P]rev Test"})
    vim.keymap.set('n', '<leader>to', function ()
      require("neotest").output.open({ enter = true })
    end, {desc = "[O]pen test results"})
  end,
}
