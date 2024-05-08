local dap = require("dap")
local dapui = require("dapui")

-- Automatically start DAP UI
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

dapui.setup({})

require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
require("dap-python").test_runner = "unittest"

vim.api.nvim_set_keymap("n", "<F5>", '<Cmd>lua require("dap").continue()<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<F10>", '<Cmd>lua require("dap").step_over()<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<F11>", '<Cmd>lua require("dap").step_into()<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<F12>", '<Cmd>lua require("dap").step_out()<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>b", '<Cmd>lua require("dap").toggle_breakpoint()<CR>', { noremap = true })
vim.api.nvim_set_keymap(
	"n",
	"<Leader>B",
	'<Cmd>lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>',
	{ noremap = true }
)
vim.api.nvim_set_keymap("n", "<Leader>lp", '<Cmd>lua require("dap").run_last()<CR>', { noremap = true })
vim.keymap.set("n", "<leader>dm", ":lua require('dap-python').test_method()<CR>")
vim.keymap.set("n", "<leader>dc", ":lua require('dap-python').test_class()<CR>")
