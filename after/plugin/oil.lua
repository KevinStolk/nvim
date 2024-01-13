local status, oil = pcall(require, "oil")
if not status then
	return
end
oil.setup({
	--[[ keymaps = { ]]
	--[[     ["<CR>"] = "actions.select", ]]
	--[[     ["<C-s>"] = "actions.select_vsplit", ]]
	--[[     ["<C-h>"] = "actions.select_split", ]]
	--[[     ["<C-t>"] = "actions.select_tab", ]]
	--[[     ["<C-p>"] = "actions.preview", ]]
	--[[     ["<C-c>"] = "actions.close", ]]
	--[[     ["<C-l>"] = "actions.refresh", ]]
	--[[     ["-"] = "actions.parent", ]]
	--[[     ["_"] = "actions.open_cwd", ]]
	--[[     ["`"] = "actions.cd", ]]
	--[[     ["~"] = "actions.tcd", ]]
	--[[     ["g."] = "actions.toggle_hidden", ]]
	--[[ }, ]]
})
