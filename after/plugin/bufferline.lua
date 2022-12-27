local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		mode = "tabs",
		separator_style = "slant",
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true,
	},
	-- highlights = {
	-- 	separator = {
	-- 		fg = "#3c3836",
	-- 		bg = "#282828",
	-- 	},
	-- 	separator_selected = {
	-- 		fg = "#3c3836",
	-- 	},
	-- 	background = {
	-- 		fg = "#657b83",
	-- 		bg = "#3c3836",
	-- 	},
	-- 	buffer_selected = {
	-- 		fg = "#fdf6e3",
	-- 		undercurl = true,
	-- 	},
	-- 	fill = {
	-- 		bg = "#3c3836",
	-- 	},
	-- },
})

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
