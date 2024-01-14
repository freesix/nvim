--- @param config CmakeConfig
return function(config)
	return {
		getFormatOnSavePattern = function()
			if config.format_on_save then
				return { "*.cmake" }
			end
			return {}
		end,

		getTSEnsureList = function()
			return { "cmake" }
		end,

		getLSPEnsureList = function()
			return { "cmake-language-server" }
		end,

		getLSPConfigMap = function()
			return {
				cmake = require("freesix.lsp.config.cmake"),
			}
		end,

		getToolEnsureList = function()
			if config.formatter == "cmakelang" then
				return { "cmakelang" }
			end
			return {}
		end,

		getNulllsSources = function()
			local null_ls = pRequire("null-ls")
			if not null_ls then
				return {}
			end
			if config.formatter == "cmakelang" then
				return { null_ls.builtins.formatting.cmakelang }
			end
			return {}
		end,

		getNeotestAdapters = function()
			return {}
		end,
	}
end
