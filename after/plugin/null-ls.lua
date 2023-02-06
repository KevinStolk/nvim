local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })

-- https://github.com/prettier-solidity/prettier-plugin-solidity
null_ls.setup({
	on_attach = function(client, bufnr)
		--[[ if client.server_capabilities.documentFormattingProvider then ]]
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ buffer = bufnr, group = augroup_format })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup_format,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
	debug = false,
	sources = {
		formatting.prettier.with({
			extra_filetypes = {
				"toml",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"vue",
				"css",
				"scss",
				"less",
				"html",
				"json",
				"jsonc",
				"yaml",
				"markdown",
				"graphql",
				"svelte",
			},
			extra_arg = { "--no-semi", "--single-quote", "--jsx-single-quote", "--tsx-single-quote" },
		}),
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
		formatting.google_java_format,
		diagnostics.flake8,
		diagnostics.zsh,
	},
})
