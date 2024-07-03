return  {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup({
      api = {
        host = 'codeium.corp.tanium.com',
        portal_url = 'codeium.corp.tanium.com',
      },
      enterprise_mode = true,
    })
  end
  }

