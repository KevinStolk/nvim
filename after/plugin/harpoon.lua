-- Old harpoon config
--[[ local mark = require('harpoon.mark') ]]
--[[ local ui = require('harpoon.ui') ]]
--[[]]
--[[ vim.keymap.set('n', '<leader>a', mark.add_file) ]]
--[[ vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu) ]]
--[[]]
--[[ vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end) ]]
--[[ vim.keymap.set('n', '<C-t>', function() ui.nav_file(2) end) ]]
--[[ vim.keymap.set('n', '<C-n>', function() ui.nav_file(3) end) ]]
--[[ vim.keymap.set('n', '<C-s>', function() ui.nav_file(3) end) ]]

local harpoon = require("harpoon")

harpoon:setup({
    settings = {
        save_on_toggle = true,
        sync_on_ui_close = true
    }
})

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next bffers stored within Harpoon list
vim.keymap.set("n", "<Tab>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<S-Tab>", function() harpoon:list():next() end)
