local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>m", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-i>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

-- vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end)
-- vim.keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
--
-- vim.keymap.set("n", "<leader>hh", function() harpoon:list():select(1) end)
-- vim.keymap.set("n", "<leader>hj", function() harpoon:list():select(2) end)
-- vim.keymap.set("n", "<leader>hk", function() harpoon:list():select(3) end)
-- vim.keymap.set("n", "<leader>hl", function() harpoon:list():select(4) end)
