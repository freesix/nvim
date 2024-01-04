if vim.g.vscode then
require ("vscode.vs-keymaps")
else
require ("conf.options")
require ("conf.keymaps")
require ("conf.lazy")
--require ("user.options")
--require ("user.lazy")
--require ("user.plugins")
--require ("user.conf")
--require ("user.dap")
end
