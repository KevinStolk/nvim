return {
	"miversen33/sunglasses.nvim",
	config = function()
		local sunglasses = require("sunglasses")
		sunglasses.setup({
			filter_type = "NOSYNTAX",
			filter_percent = 0.65,
		})
	end,
}
