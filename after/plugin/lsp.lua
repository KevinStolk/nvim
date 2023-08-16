local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	"tsserver",
	"eslint",
	"lua_ls",
	"rust_analyzer",
	"tailwindcss",
})

-- Fix Undefined global 'vim'
lsp.configure("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-y>"] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})

-- disable completion with tab
-- this helps with copilot setup
cmp_mappings["<Tab>"] = nil
cmp_mappings["<S-Tab>"] = nil

-- codeium keybindings
vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, {expr = true})
vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, {expr = true})
vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, {expr = true})
vim.keymap.set('i', '<c-cr>', function() return vim.fn['codeium#Accept']() end, {expr = true})


lsp.setup_nvim_cmp({
	mapping = cmp_mappings,
})

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = "E",
		warn = "W",
		hint = "H",
		info = "I",
	},
})

vim.diagnostic.config({
	virtual_text = true,
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	if client.name == "eslint" then
		vim.cmd([[ LspStop eslint ]])
		return
	end

	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
	vim.keymap.set("n", "gi", function()
		vim.lsp.buf.implementation()
	end, opts)
	vim.keymap.set("n", "<leader>gr", function()
		vim.lsp.buf.references()
	end, opts)
	vim.keymap.set("n", "<leader>vws", function()
		vim.lsp.buf.workspace_symbol()
	end, opts)
	vim.keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end, opts)
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.goto_next()
	end, opts)
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.goto_prev()
	end, opts)
	vim.keymap.set("n", "<leader>ca", function()
		vim.lsp.buf.code_action()
	end, opts)
	vim.keymap.set("n", "<leader>rn", function()
		vim.lsp.buf.rename()
	end, opts)
	vim.keymap.set("i", "<C-h>", function()
		vim.lsp.buf.signature_help()
	end, opts)
end)

lsp.setup()
