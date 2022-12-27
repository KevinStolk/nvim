local keymap = vim.keymap.set

vim.g.mapleader = " "
vim.g.mapllocalleader = " "

keymap("n", "<leader>pv", vim.cmd.Ex)

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Increment/decrement
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

-- Do not yank with x
keymap("n", "x", '"_x')

-- Select all
keymap("n", "<C-a>", "gg<S-v>G<CR>zz")

-- New tab and close tab
keymap("n", "te", ":tabedit")
keymap("n", "tc", ":tabclose")

-- Quit insert vim
keymap("i", "<C-c>", "<Esc>")
keymap("n", "sq", ":q<CR>")

-- Split window
keymap("n", "ss", ":split<Return><C-w>w")
keymap("n", "sv", ":vsplit<Return><C-w>w")

-- Move between windows
-- keymap("n", "<Space>", "<C-w>w")
keymap("", "sh", "<C-w>h")
keymap("", "sk", "<C-w>k")
keymap("", "sj", "<C-w>j")
keymap("", "sl", "<C-w>l")

-- Resize window
keymap("n", "<C-w><left>", "<C-w><")
keymap("n", "<C-w><right>", "<C-w>>")
keymap("n", "<C-w><up>", "<C-w>+")
keymap("n", "<C-w><down>", "<C-w>-")

-- greatest remap ever
keymap("x", "<leader>p", '"_dP')

-- global yank
keymap("n", "<leader>y", '"+y')
keymap("v", "<leader>y", '"+y')
keymap("n", "<leader>Y", '"+Y')
keymap("n", "<leaer>d", '"_d')
keymap("v", "<leader>d", '"_d')

keymap("n", "Q", "<nop>")
keymap("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap("n", "<leader>f", function()
	vim.lsp.buf.format()
end)

keymap("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap("n", "<leader>j", "<cmd>lprev<CR>zz")

-- keyword rename
keymap("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- make file executable
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Plugins
keymap("n", "<leader>re", "<Plug>RestNvim")
keymap("n", "<leader>rep", "<Plug>RestNvimPreview")
keymap("n", "<leader>rel", "<Plug>RestNvimLast")

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>")

-- Comment
keymap("n", "<leader>/", "<Plug>(comment_toggle_linewise_current)")
keymap("x", "<leader>/", "<Plug>(comment_toggle_linewise_visual)")

keymap("n", "J", "mzJ`z")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
