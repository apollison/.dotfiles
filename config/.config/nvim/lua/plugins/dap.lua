return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'leoluz/nvim-dap-go',
  },
  config = function()
    require('dap-go').setup()

    local dap, dapui = require("dap"), require("dapui")
    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set('n', '<leader>dt', dap.toggle_breakpoint, { desc = '[T]oggle breakpoint' })
    vim.keymap.set('n', '<leader>dc', dap.continue, { desc = '[C]ontinue dap' })
    vim.keymap.set('n', '<leader>ds', dap.step_over, { desc = '[S]tep over' })
  end,
}
