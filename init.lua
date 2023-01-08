if vim.g.vscode then
require ("vscode.vs-keymaps")
else
require ("user.keymaps")
require ("user.options")
require ("user.plugins")
require ("user.conf")
require ("user.dap")
end