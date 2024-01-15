local dap = pRequire("dap")
local dapui = pRequire("dapui")
local vt = pRequire("nvim-dap-virtual-text")
local neodev = pRequire("neodev")

if dap and dapui and vt and neodev then
	local cfg = require("freesix").config

	require("freesix.dap.nvim-dap.ui")

	neodev.setup({
		library = { plugins = { "nvim-dap-ui" }, type = true },
	})

	vt.setup({
		commented = true,
	})

	dapui.setup({
		element_mappings = {
			scopes = {
				open = "<CR>",
				edit = "e",
				expand = "o",
				repl = "r",
			},
		},
		layouts = {
			{
				elements = {
					-- Elements can be strings or table with id and size keys.
					{ id = "scopes", size = 0.4 },
					"stacks",
					"watches",
					"breakpoints",
					"console",
				},
				size = 0.35, -- 40 columns
				position = "left",
			},
			{
				elements = {
					"repl",
				},
				size = 0.25, -- 25% of total lines
				position = "bottom",
			},
		},
		floating = {
			max_height = nil, -- These can be integers or a float between 0 and 1.
			max_width = nil, -- Floats will be treated as percentage of your screen.
			border = "rounded", -- Border style. Can be "single", "double" or "rounded"
			mappings = {
				close = { "q", "<Esc>" },
			},
		},
	})

	dap.listeners.after.event_initialized["dapui_config"] = function()
		dapui.open()
	end
	dap.listeners.before.event_terminated["dapui_config"] = function()
		dapui.close()
	end
	dap.listeners.before.event_exited["dapui_config"] = function()
		dapui.close()
	end

	if cfg.clangd and cfg.clangd.enable then
		require("freesix.dap.nvim-dap.config.cpp").setup()
	end
	-- if cfg.lua and cfg.lua.enable then
	-- 	require("freesix.dap.nvim-dap.config.lua").setup()
	-- end
	--
	-- if cfg.frontend and cfg.frontend.enable then
	-- 	require("freesix.dap.nvim-dap.config.vscode-js")
	-- end

	require("freesix.dap.nvim-dap.common-config").keyAttach()
end
