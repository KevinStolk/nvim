vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-file-browser.nvim" })

	-- Colorschemes
	use("rose-pine/neovim")
	use("gruvbox-community/gruvbox")
	use("folke/tokyonight.nvim")
	use("lunarvim/darkplus.nvim")
	use("bluz71/vim-nightfly-colors")

	-- Git
	use("lewis6991/gitsigns.nvim")
    use("APZelos/blamer.nvim")

	use("p00f/nvim-ts-rainbow")
	use("windwp/nvim-autopairs")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("windwp/nvim-ts-autotag")
	use("numToStr/Comment.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("folke/zen-mode.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	--[[ use("norcalli/nvim-colorizer.lua") ]]
    use("brenoprata10/nvim-highlight-colors")
	use("akinsho/toggleterm.nvim")
	use("nvim-lualine/lualine.nvim")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("David-Kunz/markid")
	use("nvim-treesitter/playground")
	use("theprimeagen/harpoon") -- Godsend
	use("theprimeagen/vim-be-good")
	use("Exafunction/codeium.vim")
	use("akinsho/bufferline.nvim")
	use("vimwiki/vimwiki")
    use("mg979/vim-visual-multi")
	use("Djancyp/cheat-sheet")
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use({
		"NTBBloodbath/rest.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use("jose-elias-alvarez/null-ls.nvim")
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})
end)
