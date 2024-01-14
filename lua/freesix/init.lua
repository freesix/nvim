local M = {}
M.version = "v0.0.1"

M.config = require("freesix.config")

function M.setup(user_config)
	require("freesix.options")
	require("freesix.utils.global")
	M.config = vim.tbl_deep_extend("force", M.config, user_config)
	require("freesix.env").init(M.config)
	require("freesix.keymaps")
	local lazyManager = require("freesix.lazy")
	if not lazyManager.avaliable() then
		lazyManager.install()
	end
	lazyManager.setup()

	require("freesix.colorscheme").reset()
	require("freesix.lsp")
	require("freesix.cmp")

	require("freesix.utils.color-preview")
	require("freesix.autocmds")
	require("freesix.format")
	if M.config.fix_windows_clipboard then
		require("utils.fix-yank")
	end
end

return M
