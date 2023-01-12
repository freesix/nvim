local opts = {noremap = ture, silent = true}

local term_opts = {silent = true}

 
local keymap = vim.api.nvim_set_keymap

-- 映射leader键
vim.g.mapleader = " "
vim.g.maplocalleader = " "


keymap("n", "<tab>", ":call VSCodeNotify('whichkey.show')<cr>", opts)
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)

keymap("v", "<tab>", ":call VSCodeNotify('whichkey.show')<cr>", opts)
keymap("v", "J", "5j", opts)
keymap("v", "K", "5k", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)

-----------tab相关------------
keymap("n", "bs", ":call VSCodeNotify('workbench.action.showAllEditors'),<cr>", opts)
keymap("v", "bs", ":call VSCodeNotify('workbench.action.showAllEditors'),<cr>", opts)
-- 关闭当前tab 
keymap("n", "bc", ":call VSCodeNotify('workbench.action.closeActiveEditor'),<cr>", opts)
keymap("v", "bc", ":call VSCodeNotify('workbench.action.closeActiveEditor'),<cr>", opts)
-- 向左拆分当前tab
keymap("n", "bh", ":call VSCodeNotify('workbench.action.moveEditorToLeftGroup'),<cr>", opts)
keymap("v", "bh", ":call VSCodeNotify('workbench.action.moveEditorToLeftGroup'),<cr>", opts)
-- 向右拆分当前tab
keymap("n", "bl", ":call VSCodeNotify('workbench.action.moveEditorToRightGroup'),<cr>", opts)
keymap("v", "bl", ":call VSCodeNotify('workbench.action.moveEditorToRightGroup'),<cr>", opts)
-- 向下拆分当前tab
keymap("n", "bj", ":call VSCodeNotify('workbench.action.moveEditorToBelowGroup'),<cr>", opts)
keymap("v", "bj", ":call VSCodeNotify('workbench.action.moveEditorToBelowGroup'),<cr>", opts)
-- 向上拆分当前tab
keymap("n", "bk", ":call VSCodeNotify('workbench.action.moveEditorToAboveGroup'),<cr>", opts)
keymap("v", "bk", ":call VSCodeNotify('workbench.action.moveEditorToAboveGroup'),<cr>", opts)
-- 关闭其他编辑器
keymap("n", "bo", ":call VSCodeNotify('workbench.action.closeOtherEditors')<cr>", opts)
keymap("v", "bo", ":call VSCodeNotify('workbench.action.closeOtherEditors')<cr>", opts)
-- 合并所有编辑器组
keymap("n", "ba", ":call VSCodeNotify('workbench.action.joinAllGroups')<cr>", opts)
keymap("v", "ba", ":call VSCodeNotify('workbench.action.joinAllGroups')<cr>", opts)
-- 下一个编辑器
keymap("n", "bn", ":call VSCodeNotify('workbench.action.nextEditor')<cr>", opts)
keymap("v", "bn", ":call VSCodeNotify('workbench.action.nextEditor')<cr>", opts)
-- 上一个编辑器
keymap("n", "bp", ":call VSCodeNotify('workbench.action.previousEditor')<cr>", opts)
keymap("v", "bp", ":call VSCodeNotify('workbench.action.previousEditor')<cr>", opts)
-- 新建一个编辑器
keymap("n", "bN", ":call VSCodeNotify('workbench.action.files.newUntitledFile')<cr>", opts)
keymap("v", "bN", ":call VSCodeNotify('workbench.action.files.newUntitledFile')<cr>", opts)   
-- 重新打开关闭的编辑器
keymap("n", "br", ":call VSCodeNotify('workbench.action.reopenClosedEditor')<cr>", opts)
keymap("v", "br", ":call VSCodeNotify('workbench.action.reopenClosedEditor')<cr>", opts)
-- 将当前编辑器在另一个vscode窗口中打开
keymap("n", "bw", ":call VSCodeNotify('workbench.action.files.showOpenedFileInNewWindow')<cr>", opts)
keymap("v", "bw", ":call VSCodeNotify('workbench.action.files.showOpenedFileInNewWindow')<cr>", opts)

-----------文件相关---------
-- 打开最近打开过的文件夹
keymap("n", "fr", ":call VSCodeNotify('workbench.action.openRecent')<cr>", opts)
keymap("v", "fr", ":call VSCodeNotify('workbench.action.openRecent')<cr>", opts)


-----------侧边栏相关---------
--打开侧边栏
keymap("n", "tt", ":call VSCodeNotify('workbench.action.toggleSidebarVisibility')<cr>", opts)
keymap("v", "tt", ":call VSCodeNotify('workbench.action.toggleSidebarVisibility')<cr>", opts)
-- 打开资源管理器
keymap("n", "te", ":call VSCodeNotify('workbench.view.explorer')<cr>", opts)
keymap("v", "te", ":call VSCodeNotify('workbench.view.explorer')<cr>", opts)


-----------格式相关-----------
--格式当前文件
keymap("n", "==", ":call VSCodeNotify('editor.action.formatDocument')<cr>", opts)
keymap("v", "==", ":call VSCodeNotify('editor.action.formatDocument')<cr>", opts)


-----------git相关-----------
-- 切换或者签出分支
keymap("n", "gb", ":call VSCodeNotify('git.checkout')<cr>", opts)
keymap("v", "gb", ":call VSCodeNotify('git.checkout')<cr>", opts)
-- git 提交
keymap("n", "gc", ":call VSCodeNotify('git.commit')<cr>", opts)
keymap("v", "gc", ":call VSCodeNotify('git.commit')<cr>", opts)
-- 删除分支
keymap("n", "gd", ":call VSCodeNotify('git.deleteBranch')<cr>", opts)
keymap("v", "gd", ":call VSCodeNotify('git.deleteBranch')<cr>", opts)
-- 获取分支
keymap("n", "gf", ":call VSCodeNotify('git.fetch')<cr>", opts)
keymap("v", "gf", ":call VSCodeNotify('git.fetch')<cr>", opts)
-- git初始化
keymap("n", "gi", ":call VSCodeNotify('git.init')<cr>", opts)
keymap("v", "gi", ":call VSCodeNotify('git.init')<cr>", opts)
-- 分支合并
keymap("n", "gm", ":call VSCodeNotify('git.merge')<cr>", opts)
keymap("v", "gm", ":call VSCodeNotify('git.merge')<cr>", opts)
-- git提交
keymap("n", "gp", ":call VSCodeNotify('git.publish')<cr>", opts)
keymap("v", "gp", ":call VSCodeNotify('git.publish')<cr>", opts)
-- git状态
keymap("n", "gs", ":call VSCodeNotify('workbench,view,scm')<cr>", opts)
keymap("v", "gs", ":call VSCodeNotify('workbench,view,scm')<cr>", opts)

























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