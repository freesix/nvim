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

keymap("v", "<leader>", ":call VSCodeNotify('whichkey.show')<cr>", opts)
keymap("v", "J", "5j", opts)
keymap("v", "K", "5k", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)


-- vim的复制到系统剪切板
vim.cmd [[
let s:clip = '/mnt/c/Windows/System32/clip.exe' 
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
]]