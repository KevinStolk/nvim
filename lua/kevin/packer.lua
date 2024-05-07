vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use({
        "nvim-telescope/telescope.nvim",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use({ "nvim-telescope/telescope-file-browser.nvim" })

    -- Colorschemes
    use("rose-pine/neovim")
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")
    use("lunarvim/darkplus.nvim")
    use("catppuccin/nvim")
    use("scottmckendry/cyberdream.nvim")
    use("ivanhernandez/pompeii")
    use("scottmckendry/cyberdream.nvim")
    use("zaldih/themery.nvim")

    -- Git
    use("lewis6991/gitsigns.nvim")
    use("APZelos/blamer.nvim")
    use("sindrets/diffview.nvim")

    use("p00f/nvim-ts-rainbow")
    use("windwp/nvim-autopairs")
    use("JoosepAlviste/nvim-ts-context-commentstring")
    use("windwp/nvim-ts-autotag")
    use("numToStr/Comment.nvim")
    use("folke/zen-mode.nvim")
    use("akinsho/toggleterm.nvim")
    use("folke/todo-comments.nvim")
    use("lukas-reineke/indent-blankline.nvim")
    --[[ use("norcalli/nvim-colorizer.lua") ]]
    use("brenoprata10/nvim-highlight-colors")
    use({
        "roobert/tailwindcss-colorizer-cmp.nvim",
        config = function()
            require("tailwindcss-colorizer-cmp").setup({
                color_square_width = 2,
            })
        end,
    })
    use("uga-rosa/ccc.nvim")
    --[[ use("nvim-lualine/lualine.nvim") ]]
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("nvim-treesitter/playground")
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } }
    }
    use("theprimeagen/vim-be-good")
    use("akinsho/bufferline.nvim")
    use("vimwiki/vimwiki")
    use("mg978/vim-visual-multi")
    use("max397574/better-escape.nvim")
    use("stevearc/conform.nvim")
    use("stevearc/overseer.nvim")
    use("stevearc/oil.nvim")
    use("smjonas/inc-rename.nvim")
    use("aznhe21/actions-preview.nvim")
    use("miversen33/sunglasses.nvim")
    use("koenverburg/peepsight.nvim")
    use("Djancyp/cheat-sheet")
    use({
        "iamcco/markdown-preview.nvim",
        run = function()
            vim.fn["mkdp#util#install"]()
        end,
    })
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use({
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "pmizio/typescript-tools.nvim" },

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
