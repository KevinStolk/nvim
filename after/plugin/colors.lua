local colorscheme = "rose-pine"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end

require("nvim-highlight-colors").setup {
	render = 'background', -- or 'foreground' or 'first_column'
	enable_named_colors = true,
	enable_tailwind = true,
	custom_colors = {
		{label = '%-%-theme%-font%-color', color = '#fff'},
		{label = '%-%-theme%-background%-color', color = '#23222f'},
		{label = '%-%-theme%-primary%-color', color = '#0f1219'},
		{label = '%-%-theme%-secondary%-color', color = '#5a5d64'},
		{label = '%-%-theme%-contrast%-color', color = '#fff'},
		{label = '%-%-theme%-accent%-color', color = '#55678e'},
	}
}

require("rose-pine").setup({
	disable_background = true,
})

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
	--[[ vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#2B79A0" }) ]]
	--[[ vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" }) ]]
	--[[ vim.api.nvim_set_hl(0, "LineNr", { fg = "#5eacd3" }) ]]
end

ColorTerm()
