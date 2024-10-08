return {
   "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")
  
local hide_in_width = function() 
	return vim.fn.winwidth(0) > 80 
 end
 local diagnostics = {
 	"diagnostics", 
 	sources = { "nvim_diagnostic" }, 
 	sections = { "error", "warn" }, 
 	symbols = { error = " ", warn = " " }, 
 	colored = false, 
 	always_visible = true, 
 } 
 local diff = { 
 	"diff", 
 	colored = false, 
 	symbols = { added = "", modified = "", removed = "" }, -- changes diff symbols ]]
 	cond = hide_in_width, 
 } 
 local filetype = { 
 	"filetype", 
 	icons_enabled = true, 
 } 
 local location = { 
 	"location", 
 	padding = 0, 
 } 
 local spaces = function() 
 	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth") 
 end 

 lualine.setup({ 
 	options = { 
 		globalstatus = true, 
 		icons_enabled = true, 
 		theme = "auto", 
 		component_separators = { left = "", right = "" }, 
 		section_separators = { left = "", right = "" }, 
 		disabled_filetypes = { "alpha", "dashboard" }, 
 		always_divide_middle = true, 
 		fmt = string.lower, 
 	}, 
 	sections = { 
 		lualine_a = { "mode" }, 
 		lualine_b = { "branch" }, 
 		lualine_c = { diagnostics }, 
 		lualine_x = { {lazy_status.updates, cond = lazy_status.has_updates, color = { fg="#ff9e64"}, }, diff, spaces, "encoding", filetype }, 
 		lualine_y = { location }, 
 		lualine_z = { "progress" }, 
}, 
})
end,

}
