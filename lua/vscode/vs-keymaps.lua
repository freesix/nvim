local opts = {noremap = ture, silent = true}

local term_opts = {silent = true}

 
local keymap = vim.api.nvim_set_keymap

-- 映射leader键
vim.g.mapleader = " "
vim.g.maplocalleader = " "


keymap("n", "<leader>", ":call VSCodeNotify('whichkey.show')<cr>", opts)
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)