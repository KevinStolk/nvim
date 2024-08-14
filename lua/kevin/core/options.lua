vim.cmd("let g:netrw_liststyle = 3")
vim.scriptencoding = "utf-8"
local opt = vim.opt
opt.showmode = false

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.showcmd = true
opt.cmdheight = 1

opt.smartindent = true

opt.wrap = false
opt.hlsearch = false
opt.undofile = true
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

-- line numbers
opt.relativenumber = true
opt.number = true
-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
-- line wrapping
opt.wrap = false
-- search settings
opt.ignorecase = true
opt.smartcase = true
-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
-- split windows
opt.splitright = true
opt.splitbelow = true
-- turn off swapfile
opt.swapfile = false

opt.updatetime = 50

opt.colorcolumn = "80"

vim.g.blamer_enabled = 1
-- Use 'q' to quit from common plugins
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "qf", "help", "man", "lspinfo", "spectre_panel", "lir" },
	callback = function()
		vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR>
      set nobuflisted
    ]])
	end,
})
