local status, code_actions = pcall(require, "actions-preview")
if not status then
	return
end
code_actions.setup({
	vim.keymap.set({ "v", "n" }, "<leader>ca", require("actions-preview").code_actions),
})
