return {
	{ "kyazdani42/nvim-web-devicons" },
	{ "moll/vim-bbye" },
	{ "nvim-lua/plenary.nvim" },

	-- nvim-tree
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("freesix.plugins.nvim-tree")
		end,
	},

	-- bufferline
	{
		"akinsho/bufferline.nvim",
		config = function()
			require("freesix.plugins.bufferline")
		end,
	},

	-- lualine
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("freesix.plugins.lualine")
		end,
	},

	-- indent-blankline
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("freesix.plugins.indent-blankline")
		end,
	},

	-- alpha.nvim
	{
		"goolord/alpha-nvim",
		config = function()
			require("freesix.plugins.alpha")
		end,
	},

	-- Comment
	{ "JoosepAlviste/nvim-ts-context-commentstring" },
	{
		"numToStr/Comment.nvim",
		config = function()
			require("freesix.plugins.comment")
		end,
	},

	-- nvim-notify
	{
		"rcarriga/nvim-notify",
		config = function()
			require("freesix.plugins.nvim-notify")
		end,
	},

	-- fidget.nvim 左下角消息提示
	{
		"j-hui/fidget.nvim",
		tag = "legacy",
		config = function()
			require("freesix.plugins.fidget")
		end,
	},

	-- telescope
	-- telescope extensions
	{ "LinArcX/telescope-env.nvim" },
	{ "nvim-telescope/telescope-ui-select.nvim" },
	{ "nvim-telescope/telescope-live-grep-args.nvim" },
	{
		"nvim-telescope/telescope.nvim",
		-- opt = true,
		-- cmd = "Telescope",
		config = function()
			require("freesix.plugins.telescope")
		end,
	},

	-- toggleterm
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("freesix.plugins.toggleterm")
		end,
	},

	-- treesitter
	{
		"HiPhish/rainbow-delimiters.nvim",
		config = function()
			require("freesix.plugins.rainbow-delimiters")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
		config = function()
			require("freesix.plugins.treesitter")
		end,
	},
	{ "windwp/nvim-ts-autotag" },
	{ "nvim-treesitter/nvim-treesitter-refactor" },
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	{ "RRethy/nvim-treesitter-endwise" },

	------------------ Code formatter -------------------------------------------

	-- { "mhartington/formatter.nvim" },
	{ "jose-elias-alvarez/null-ls.nvim" },
	------------------ LSP ------------------------------------------------------

	-- Installer
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "WhoIsSethDaniel/mason-tool-installer.nvim" },
	-- Lspconfig
	{ "neovim/nvim-lspconfig" },
	-- Completion engine
	{ "hrsh7th/nvim-cmp" },
	-- Snippet engine
	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip" },
	-- Completion sources
	{ "hrsh7th/cmp-vsnip" },
	{ "hrsh7th/cmp-nvim-lsp" }, -- { name = nvim_lsp }
	{ "hrsh7th/cmp-buffer" }, -- { name = 'buffer' },
	{ "hrsh7th/cmp-path" }, -- { name = 'path' }
	{ "hrsh7th/cmp-cmdline" }, -- { name = 'cmdline' }
	{ "hrsh7th/cmp-nvim-lsp-signature-help" }, -- { name = 'nvim_lsp_signature_help' }
	-- common snippets
	{ "rafamadriz/friendly-snippets" },
	-- UI improvement
	{ "onsails/lspkind-nvim" },

	------------------ dap -------------------------------------
	{ "mfussenegger/nvim-dap" },
	{ "theHamsta/nvim-dap-virtual-text" },
	{ "rcarriga/nvim-dap-ui" },
	{ "folke/neodev.nvim" },

	------------------ Markdown -------------------------------------------------
	{
		"jakewvincent/mkdnflow.nvim",
		-- ft = { "markdown" }, -- lazy load
		config = function()
			require("freesix.plugins.mkdnflow")
		end,
	},

	{
		"iamcco/markdown-preview.nvim",
		enabled = true,
		-- enabled = function()
		-- 	local cfg = require("freesix").config.markdown
		-- 	return cfg and cfg.enable
		-- end,
		config = function()
			require("freesix.plugins.markdown-preview")
		end,
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
		-- build = function()
		-- 	vim.fn["mkdp#util#install"]()
		-- end,
	},

	------------------- latex -----------------------------
	{
		"lervag/vimtex",
		config = function()
			require("freesix.plugins.vimtex")
		end,
	},

	---------------------- colorschemes--------------------
	-- tokyonight
	{
		"folke/tokyonight.nvim",
		config = function()
			require("freesix.plugins.tokyonight")
		end,
	},

	-- {
	-- "Mofiqul/vscode.nvim",
	-- config = function()
	--     require("freesix.plugins.vscode")
	-- end
	-- }
}
