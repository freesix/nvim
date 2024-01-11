return{
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
