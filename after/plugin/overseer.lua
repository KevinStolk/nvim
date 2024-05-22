local status, overseer = pcall(require, "overseer")
if not status then
	return
end

overseer.setup({
	templates = { "builtin", "user.run_script" },
})

vim.api.nvim_create_user_command("WatchRun", function()
	local overseer_cmd = require("overseer")
	overseer_cmd.run_template({ name = "run script" }, function(task)
		if task then
			task:add_component({ "restart_on_save", paths = { vim.fn.expand("%:p") } })
			local main_win = vim.api.nvim_get_current_win()
			overseer.run_action(task, "open vsplit")
			vim.api.nvim_set_current_win(main_win)
		else
			vim.notify("WatchRun not supported for filetype " .. vim.bo.filetype, vim.log.levels.ERROR)
		end
	end)
end, {})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "*.go" },
	callback = function()
		vim.cmd("WatchRun")
	end,
})
