local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
--  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
 augroup packer_user_config
   autocmd!
   autocmd BufWritePost plugins.lua source <afile> | PackerSync
 augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    -- open_fn = function()
    --   return require("packer.util").float { border = "rounded" }
    -- end,
  },
}


--  useage
-- use {
--   "myusername/example",        -- The plugin location string
--   -- The following keys are all optional
--   disable = boolean,           -- Mark a plugin as inactive
--   as = string,                 -- Specifies an alias under which to install the plugin
--   installer = function,        -- Specifies custom installer. See "custom installers" below.
--   updater = function,          -- Specifies custom updater. See "custom installers" below.
--   after = string or list,      -- Specifies plugins to load before this plugin. See "sequencing" below
--   rtp = string,                -- Specifies a subdirectory of the plugin to add to runtimepath.
--   opt = boolean,               -- Manually marks a plugin as optional.
--   branch = string,             -- Specifies a git branch to use
--   tag = string,                -- Specifies a git tag to use. Supports "*" for "latest tag"
--   commit = string,             -- Specifies a git commit to use
--   lock = boolean,              -- Skip updating this plugin in updates/syncs. Still cleans.
--   run = string, function, or table, -- Post-update/install hook. See "update/install hooks".
--   requires = string or list,   -- Specifies plugin dependencies. See "dependencies".
--   rocks = string or list,      -- Specifies Luarocks dependencies for the plugin
--   config = string or function, -- Specifies code to run after this plugin is loaded.
--   -- The setup key implies opt = true
--   setup = string or function,  -- Specifies code to run before this plugin is loaded.
--   -- The following keys all imply lazy-loading and imply opt = true
--   cmd = string or list,        -- Specifies commands which load this plugin. Can be an autocmd pattern.
--   ft = string or list,         -- Specifies filetypes which load this plugin.
--   keys = string or list,       -- Specifies maps which load this plugin. See "Keybindings".
--   event = string or list,      -- Specifies autocommand events which load this plugin.
--   fn = string or list          -- Specifies functions which load this plugin.
--   cond = string, function, or list of strings/functions,   -- Specifies a conditional test to load this plugin
--   module = string or list      -- Specifies Lua module names for require. When requiring a string which starts
--                                -- with one of these module names, the plugin will be loaded.
--   module_pattern = string/list -- Specifies Lua pattern of Lua module names for require. When
--   requiring a string which matches one of these patterns, the plugin will be loaded.
-- }
--i-
-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "lewis6991/impatient.nvim" -- Speed up loading Lua modules    TODO: figure out how to use this
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "rcarriga/nvim-notify" -- notify
  use "kyazdani42/nvim-web-devicons" -- icons

  -- Telescope
use {
  "nvim-telescope/telescope.nvim", tag='0.1.0',
  requires = {
    { "nvim-telescope/telescope-live-grep-args.nvim" },
  },
  config = function()
    require("telescope").load_extension("live_grep_args")
  end
}

 
use {
  'nvim-telescope/telescope-fzf-native.nvim',
  run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
}

  -- use {
  --   "nvim-telescope/telescope-frecency.nvim",
  --   requires = {"tami5/sqlite.lua"}   -- NOTE: need to install sqlite lib
  -- }
use "nvim-telescope/telescope-ui-select.nvim"
use "nvim-telescope/telescope-rg.nvim"
  -- use "MattesGroeger/vim-bookmarks"--书签
  -- use "tom-anders/telescope-vim-bookmarks.nvim"--联合telescope的一些书签操作
use "nvim-telescope/telescope-dap.nvim"


-- 目录树
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}


-- 代码支持
use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
}

-- 让类和函数置顶
use 'nvim-treesitter/nvim-treesitter-context'

-- 状态栏
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

-- LSP
use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
}

use{
    "glepnir/lspsaga.nvim",
    branch = "main",
}
-- cmp
use {
  "hrsh7th/nvim-cmp",
    -- commit = "4f1358e659d51c69055ac935e618b684cf4f1429",
   } -- The completion plugin
use "hrsh7th/cmp-buffer" -- buffer completions
use "hrsh7th/cmp-path" -- path completions
use "hrsh7th/cmp-cmdline" -- cmdline completions
use "saadparwaiz1/cmp_luasnip" -- snippet completions
use "hrsh7th/cmp-nvim-lsp"


-- 主题
--use "rafamadriz/neon"
use "ellisonleao/gruvbox.nvim"

-- indent line
use "lukas-reineke/indent-blankline.nvim"

  -- snippets
use "L3MON4D3/LuaSnip" --snippet engine
use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

-- tab 
-- using packer.nvim
use {'akinsho/bufferline.nvim', tag = "v3.*",}


-- which key
use "folke/which-key.nvim"

use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
use "theHamsta/nvim-dap-virtual-text"

--注释
use 'numToStr/Comment.nvim'

-- git
use {
  'lewis6991/gitsigns.nvim',
  -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
}

-- markdown
--use 'davidgranstrom/nvim-markdown-preview'

-- jupyter
--use 'szymonmaszke/vimpyter'
--use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
