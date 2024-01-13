--- @param config CmakeConfig
return function(config)
	return {
		getFormatOnSavePattern = function()
			if config.format_on_save then
				return { "CMakeLists.txt" }
			end
			return {}
		end,

		getTSEnsureList = function()
			return { "cmake" }
		end,

		getLSPEnsureList = function()
			return { "cmake" }
		end,

		getLSPConfigMap = function()
			return {
				cmake = require("freesix.lsp.config.cmake"),
			}
		end,

		getToolEnsureList = function()
			-- if config.formatter == "clang-format" then
			-- 	return { "clang-format" }
			-- end
			return {}
		end,

		getNulllsSources = function()
			local null_ls = pRequire("null-ls")
			if not null_ls then
				return {}
			end
			if config.formatter == "clang-format" then
				return { null_ls.builtins.formatting.clang_format }
			end
			return {}
		end,

		getNeotestAdapters = function()
			return {}
		end,
	}
end
