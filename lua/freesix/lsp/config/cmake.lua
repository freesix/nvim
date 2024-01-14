local common = require("freesix.lsp.common-config")
local opts = {

	capabilities = common.capabilities,
	flags = common.flags,

	cmd = "cmake-language-server",
	filetype = { "cmake" },
	init_options = {
		buildDirectory = "build",
	},
	on_attach = function(client, bufnr)
		common.disableFormat(client)
		common.keyAttach(bufnr)
	end,
}

return {
	on_setup = function(server)
		server.setup(opts)
	end,
}
