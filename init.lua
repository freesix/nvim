if vim.g.vscode then
	require("vscode.vs-keymaps")
else
	require("freesix").setup({
		clangd = {
			enable = true,
		},
		cmake = {
			enable = true,
		},
		python = {
			enable = true,
		},
	})

	--require ("user.lazy")
	--require ("user.plugins")
	--require ("user.conf")
	--require ("user.dap")
end
