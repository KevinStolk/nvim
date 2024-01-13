local status, escape = pcall(require, "better_escape")
if not status then
	return
end
escape.setup({
	mapping = { "jk" },
	timeout = vim.o.timeoutlen,
	clear_empty_lines = false,
	keys = "<Esc>",
})
