-- Every Env File should implements methods below

-- getFormatOnSavePattern
-- getTSEnsureList
-- getLSPEnsureList
-- getLSPConfigMap
-- getToolEnsureList
-- getNulllsSources
-- getNeotestAdapters

local enabledEnv = {}

--- @param userConfig UserConfig
local init = function(userConfig)
	table.insert(enabledEnv, require("freesix.env.common")(userConfig))
	if userConfig.lua.enable then
		table.insert(enabledEnv, require("freesix.env.lua")(userConfig.lua))
	end
	if userConfig.clangd.enable then
		table.insert(enabledEnv, require("freesix.env.clangd")(userConfig.clangd))
	end
	if userConfig.cmake.enable then
		table.insert(enabledEnv, require("freesix.env.cmake")(userConfig.cmake))
	end
	if userConfig.bash.enable then
		table.insert(enabledEnv, require("freesix.env.bash")(userConfig.bash))
	end
	if userConfig.python.enable then
		table.insert(enabledEnv, require("freesix.env.python")(userConfig.python))
	end
	if userConfig.json.enable then
		table.insert(enabledEnv, require("freesix.env.json")(userConfig.json))
	end
	if userConfig.yaml.enable then
		table.insert(enabledEnv, require("freesix.env.yaml")(userConfig.yaml))
	end
	if userConfig.markdown.enable then
		table.insert(enabledEnv, require("freesix.env.markdown")(userConfig.markdown))
	end
end

-- loop through enabledEnv list and call envFunc on each Env file
local function collectList(envFunc)
	local list = {}
	for _, env in ipairs(enabledEnv) do
		for _, p in ipairs(env[envFunc]()) do
			if table.indexOf(list, p) == -1 then
				table.insert(list, p)
			end
		end
	end
	return list
end

return {
	init = init,
	getFormatOnSavePattern = function()
		return collectList("getFormatOnSavePattern")
	end,
	getTSEnsureList = function()
		return collectList("getTSEnsureList")
	end,
	getLSPEnsureList = function()
		return collectList("getLSPEnsureList")
	end,
	getToolEnsureList = function()
		return collectList("getToolEnsureList")
	end,
	getLSPConfigMap = function()
		local configMap = {}
		for _, env in ipairs(enabledEnv) do
			for k, v in pairs(env.getLSPConfigMap()) do
				configMap[k] = v
			end
		end
		return configMap
	end,
	getNulllsSources = function()
		return collectList("getNulllsSources")
	end,
	getNeotestAdapters = function()
		return collectList("getNeotestAdapters")
	end,
}

--[[ 

Empty Env template

return function(config)
  return {
    getFormatOnSavePattern = function()
      return {}
    end,

    getTSEnsureList = function()
      return {}
    end,

    getLSPEnsureList = function()
      return {}
    end,

    getLSPConfigMap = function()
      return {}
    end,

    getToolEnsureList = function()
      return {}
    end,

    getNulllsSources = function()
      return {}
    end,

    getNeotestAdapters = function()
      return {}
    end,
  }
end

]]
