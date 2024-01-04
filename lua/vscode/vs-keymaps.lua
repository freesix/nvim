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
-- 打开搜索
keymap("n", "ts", ":call VSCodeNotify('workbench.view.search')<cr>", opts)
keymap("v", "ts", ":call VSCodeNotify('workbench.view.search')<cr>", opts)
-- 打开测试单元
keymap("n", "tu", ":call VSCodeNotify('workbench.view.extension.test')<cr>", opts)
keymap("v", "tu", ":call VSCodeNotify('workbench.view.extension.test')<cr>", opts)
-- 打开远程侧边
keymap("n", "tr", ":call VSCodeNotify('workbench.view.remote')<cr>", opts)
keymap("v", "tr", ":call VSCodeNotify('workbench.view.remote')<cr>", opts)
-- 打开扩展侧边
keymap("n", "tx", ":call VSCodeNotify('workbench.view.extensions')<cr>", opts)
keymap("v", "tx", ":call VSCodeNotify('workbench.view.extensions')<cr>", opts)
-- 打开latex侧边
keymap("n", "tl", ":call VSCodeNotify('workbench.view.extension.latex-workshop-activitybar')<cr>", opts)
keymap("v", "tl", ":call VSCodeNotify('workbench.view.extension.latex-workshop-activitybar')<cr>", opts)
-- 打开问题侧边
keymap("n", "tp", ":call VSCodeNotify('workbench.view.problems')<cr>", opts)
keymap("v", "tp", ":call VSCodeNotify('workbench.actions.view.problems')<cr>", opts)
-- 打开输出
keymap("n", "to", ":call VSCodeNotify('workbench.action.output.toggleOutput')<cr>", opts)
keymap("v", "to", ":call VSCodeNotify('workbench.action.output.toggleOutput')<cr>", opts)
-- 打开Copilot
keymap("n", "tC", ":call VSCodeNotify('workbench.action.openQuickChat.copilot')<cr>", opts)
keymap("v", "tC", ":call VSCodeNotify('workbench.action.openQuickChat.copilot')<cr>", opts)
-- 打开debug控制台
keymap("n", "td", ":call VSCodeNotify('workbench.debug.action.toggleRepl')<cr>", opts)
keymap("v", "td", ":call VSCodeNotify('workbench.debug.action.toggleRepl')<cr>", opts)
-- 打开bar
keymap("n", "tb", ":call VSCodeNotify('workbench.action.toggleActivityBarVisibility')<cr>", opts)
keymap("v", "tb", ":call VSCodeNotify('workbench.action.toggleActivityBarVisibility')<cr>", opts)
-- 是否显示tab
keymap("n", "tT", ":call VSCodeNotify('workbench.action.toggleTabsVisibility')<cr>", opts)
keymap("v", "tT", ":call VSCodeNotify('workbench.action.toggleTabsVisibility')<cr>", opts)
-- 最大化面板(仅当面板居中对齐时才支持)
keymap("n", "tm", ":call VSCodeNotify('workbench.action.toggleMaximizedPanel')<cr>", opts)
keymap("v", "tm", ":call VSCodeNotify('workbench.action.toggleMaximizedPanel')<cr>", opts)
-- 进入禅模式
keymap("n", "tz", ":call VSCodeNotify('workbench.action.toggleZenMode')<cr>", opts)
keymap("v", "tz", ":call VSCodeNotify('workbench.action.toggleZenMode')<cr>", opts)
-- 关闭面板
keymap("n", "tc", ":call VSCodeNotify('workbench.action.closePanel')<cr>", opts)    
keymap("v", "tc", ":call VSCodeNotify('workbench.action.closePanel')<cr>", opts)   


-----------窗口相关-----------
-- 拆分编辑器在下边
keymap("n", "wj", ":call VSCodeNotify('workbench.action.splitEditorDown')<cr>", opts)
keymap("v", "wj", ":call VSCodeNotify('workbench.action.splitEditorDown')<cr>", opts)
-- 拆分编辑器在右边
keymap("n", "wl", ":call VSCodeNotify('workbench.action.splitEditorRight')<cr>", opts)
keymap("v", "wl", ":call VSCodeNotify('workbench.action.splitEditorRight')<cr>", opts)
-- 拆分编辑器在上边
keymap("n", "wk", ":call VSCodeNotify('workbench.action.splitEditorUp')<cr>", opts)
keymap("v", "wk", ":call VSCodeNotify('workbench.action.splitEditorUp')<cr>", opts)
-- 拆分编辑器在左边
keymap("n", "wh", ":call VSCodeNotify('workbench.action.splitEditorLeft')<cr>", opts)
keymap("v", "wh", ":call VSCodeNotify('workbench.action.splitEditorLeft')<cr>", opts)
-- 光标移动到左边窗口
keymap("n", "<leader>h", ":call VSCodeNotify('workbench.action.focusLeftGroup')<cr>", opts)
keymap("v", "<leader>h", ":call VSCodeNotify('workbench.action.focusLeftGroup')<cr>", opts)
-- 光标移动到下边窗口
keymap("n", "<leader>j", ":call VSCodeNotify('workbench.action.focusBelowGroup')<cr>", opts)
keymap("v", "<leader>j", ":call VSCodeNotify('workbench.action.focusBelowGroup')<cr>", opts)
-- 光标移动到上边窗口

keymap("v", "<leader>k", ":call VSCodeNotify('workbench.action.focusAboveGroup')<cr>", opts)
-- 光标移动到右边窗口
keymap("n", "<leader>l", ":call VSCodeNotify('workbench.action.focusRightGroup')<cr>", opts)
keymap("v", "<leader>l", ":call VSCodeNotify('workbench.action.focusRightGroup')<cr>", opts)
-- 最大化当前编辑器
keymap("n", "wm", ":call VSCodeNotify('workbench.action.toggleEditorWidths')<cr>", opts)
keymap("v", "wm", ":call VSCodeNotify('workbench.action.toggleEditorWidths')<cr>", opts)
-- 恢复编辑器大小
keymap("n", "wr", ":call VSCodeNotify('workbench.action.evenEditorWidths')<cr>", opts)
keymap("v", "wr", ":call VSCodeNotify('workbench.action.evenEditorWidths')<cr>", opts)


----------debug相关----------
-- 设置断点
keymap("n", "db", ":call VSCodeNotify('editor.debug.action.toggleBreakpoint')<cr>", opts)
keymap("v", "db", ":call VSCodeNotify('editor.debug.action.toggleBreakpoint')<cr>", opts)
-- 跳转到光标
keymap("n", "dj", ":call VSCodeNotify('debug.jumpToCursor')<cr>", opts)
keymap("v", "dj", ":call VSCodeNotify('debug.jumpToCursor')<cr>", opts)
-- 转到debug控制台
keymap("n", "dr", ":call VSCodeNotify('workbench.debug.action.toggleRepl')<cr>", opts)
keymap("v", "dr", ":call VSCodeNotify('workbench.debug.action.toggleRepl')<cr>", opts)
-- 转到watch窗口
keymap("n", "dw", ":call VSCodeNotify('workbench.debug.action.focusWatchView')<cr>", opts)
keymap("v", "dw", ":call VSCodeNotify('workbench.debug.action.focusWatchView')<cr>", opts)
-- 将选中添加到watch窗口
keymap("n", "da", ":call VSCodeNotify('editor.debug.action.selectionTowatch')<cr>", opts)
keymap("v", "da", ":call VSCodeNotify('editor.debug.action.selectionTowatch')<cr>", opts)

----------搜索相关-----------
-- 在整个项目中搜索选中
keymap("n", "ss", ":call VSCodeNotify('editor.action.addSelectionToNextFindMatch')<cr>:call VSCodeNotify('workbench.action.findInFiles')<cr>", opts)
keymap("v", "ss", ":call VSCodeNotify('editor.action.addSelectionToNextFindMatch')<cr>:call VSCodeNotify('workbench.action.findInFiles')<cr>", opts)
-- 在当前编辑器中搜索
keymap("n", "sf", ":call VSCodeNotify('actions.find')<cr>", opts)
keymap("v", "sf", ":call VSCodeNotify('actions.find')<cr>", opts)


-----------调整页面相关大小----------
-- 调大字体大小
keymap("n", "=+", ":call VSCodeNotify('editor.action.fontZoomIn')<cr>", opts)
keymap("v", "=+", ":call VSCodeNotify('editor.action.fontZoomIn')<cr>", opts)
-- 调小字体大小
keymap("n", "=-", ":call VSCodeNotify('editor.action.fontZoomOut')<cr>", opts)
keymap("v", "=-", ":call VSCodeNotify('editor.action.fontZoomOut')<cr>", opts)
-- 恢复字体大小
keymap("n", "=r", ":call VSCodeNotify('editor.action.fontZoomReset')<cr>", opts)
keymap("v", "=r", ":call VSCodeNotify('editor.action.fontZoomReset')<cr>", opts)
-- 调整图片大小
-----------格式相关-----------
--格式当前文件  
keymap("n", "==", ":call VSCodeNotify('editor.action.formatDocument')<cr>", opts)
keymap("v", "==", ":call VSCodeNotify('editor.action.formatDocument')<cr>", opts)


-----------vscode窗口有关----------
-- 重启vscode
keymap("n", "rr", ":call VSCodeNotify('workbench.action.reloadWindow')<cr>", opts)
keymap("v", "rr", ":call VSCodeNotify('workbench.action.reloadWindow')<cr>", opts)
-- 关闭VScode
keymap("n", "rc", ":call VSCodeNotify('workbench.action.closeWindow')<cr>", opts)
keymap("v", "rc", ":call VSCodeNotify('workbench.action.closeWindow')<cr>", opts)
-- 重新打开一个vscode窗口
keymap("n", "rn", ":call VSCodeNotify('workbench.action.newWindow')<cr>", opts)
keymap("v", "rn", ":call VSCodeNotify('workbench.action.newWindow')<cr>", opts)


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



-----------函数定义声明跳转等操作---------------
-- 转到定义 
keymap("n", "<leader>gd", ":call VSCodeNotify('editor.action.revealDefinition')<cr>", opts)
keymap("v", "<leader>gd", ":call VSCodeNotify('editor.action.revealDefinition')<cr>", opts)
-- 速览定义
keymap("n", "<leader>pd", ":call VSCodeNotify('editor.action.peekDefinition')<cr>", opts)       
keymap("v", "<leader>pd", ":call VSCodeNotify('editor.action.peekDefinition')<cr>", opts)       
-- 显示定义预览悬停
keymap("n", "<leader>sd", ":call VSCodeNotify('editor.action.showDefinitionPreviewHover')<cr>", opts)
keymap("v", "<leader>sd", ":call VSCodeNotify('editor.action.showDefinitionPreviewHover')<cr>", opts)
-- 查看声明
keymap("n", "<leader>pl", ":call VSCodeNotify('editor.action.peekDeclaration')<cr>", opts)
keymap("v", "<leader>pl", ":call VSCodeNotify('editor.action.peekDeclaration')<cr>", opts)
-- 转到声明
keymap("n", "<leader>gl", ":call VSCodeNotify('editor.action.revealDeclaration')<cr>", opts)
keymap("v", "<leader>gl", ":call VSCodeNotify('editor.action.revealDeclaration')<cr>", opts)



------------latex相关----------------
-- 在tab打开latex的pdf
keymap("n", "mlt", ":call VSCodeNotify('latex-workshop.tab')<cr>", opts)
keymap("v", "mlt", ":call VSCodeNotify('latex-workshop.tab')<cr>", opts)
-- 在浏览器中打开latex的pdf
keymap("n", "mlw", ":call VSCodeNotify('latex-workshop.viewInBrowser')<cr>", opts)
keymap("v", "mlw", ":call VSCodeNotify('latex-workshop.viewInBrowser')<cr>", opts)
-- 编译当前latex文件
keymap("n", "mlb", ":call VSCodeNotify('latex-workshop.build')<cr>", opts)
keymap("v", "mlb", ":call VSCodeNotify('latex-workshop.build')<cr>", opts)
-- 显示latex编译log日志
keymap("n", "mll", ":call VSCodeNotify('latex-workshop.compilerlog')<cr>", opts)
keymap("v", "mll", ":call VSCodeNotify('latex-workshop.compilerlog')<cr>", opts)
-- 跳转到聚焦到对应pdf处
keymap("n", "mls", ":call VSCodeNotify('latex-workshop.synctex')<cr>", opts)
keymap("v", "mls", ":call VSCodeNotify('latex-workshop.synctex')<cr>", opts)


-----------markdown相关---------------
-- 在侧边打开markdown预览
keymap("n", "mt", ":call VSCodeNotify('markdown.showPreviewToSide')<cr>", opts)
keymap("v", "mt", ":call VSCodeNotify('markdown.showPreviewToSide')<cr>", opts)
-- 打开预览
keymap("n", "mp", ":call VSCodeNotify('markdown.showPreview')<cr>", opts)
keymap("v", "mp", ":call VSCodeNotify('markdown.showPreview')<cr>", opts)
-- 同步（编译）当前markdown
keymap("n", "mb", ":call VSCodeNotify('markdown.preview.refresh')<cr>", opts)
keymap("v", "mb", ":call VSCodeNotify('markdown.preview.refresh')<cr>", opts)
-- 显示源
keymap("n", "ms", ":call VSCodeNotify('markdown.showSource')<cr>", opts)
keymap("v", "ms", ":call VSCodeNotify('markdown.showSource')<cr>", opts)


----------快速移动插件-----------------
-- 移动到单词前，这里采用nn快捷键是因为这个没有其他占用
keymap("n", "nn", ":call VSCodeNotify('jump-extension.jump-to-the-start-of-a-word')<cr>", opts)
keymap("v", "nn", ":call VSCodeNotify('jump-extension.jump-to-the-start-of-a-word')<cr>", opts)


----------折叠资源文件----------------
keymap("n", "ee", ":call VSCodeNotify('workbench.files.action.collapseExplorerFolders')<cr>", opts)
keymap("v", "ee", ":call VSCodeNotify('workbench.files.action.collapseExplorerFolders')<cr>", opts)
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