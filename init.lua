if vim.g.vscode then
require ("vscode.vs-keymaps")
else
require ("freesix").setup({})
--require ("user.lazy")
--require ("user.plugins")
--require ("user.conf")
--require ("user.dap")
end
