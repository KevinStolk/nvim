local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end

--vim.cmd("let g:gruvbox_transparent_bg = 1")
vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.g.gruvbox_invert_selection = "0"

function ColorTerm(color)
	color = color or colorscheme
	vim.cmd.colorscheme(color)

	-- HL
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2B79A0" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#5eacd3" })
end

ColorTerm()
