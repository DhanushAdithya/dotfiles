local plugins = {
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		event = "VeryLazy",
		opts = function()
			return require("custom.configs.null-ls")
		end,
	},
	-- {
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	config = function()
	-- 		require("nvim-treesitter.install").compilers = { "zig" }
	-- 	end,
	-- },
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"gopls",
				"typescript-language-server",
				"lua-language-server",
				"elm-language-server",
				"clangd",
				"pyright",
				"mypy",
				"ruff",
				"prettierd",
				"eslint_d",
			},
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = require("custom.configs.nvimtree"),
	},
}

return plugins
