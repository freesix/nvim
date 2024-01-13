local UserConfig = {

	colorscheme = "tokyonight",
	max_highlight_line_count = 10000,
	enable_imselect = false,
	enable_very_magic_search = false,
	fix_windows_clipboard = false,

	---@class Commonkeys
	keys = {
		leader_key = " ",
		-- quick save / quite
		n_save = "S", -- :w
		n_force_quit = "Q", -- :qa!
		-- quick move
		n_v_5j = "J",
		n_v_5k = "K",
		n_v_front = "H",
		n_v_back = "L",

		-- n_v_10k = "<C-u>",
		-- n_v_10j = "<C-d>",
		-- Better window navigation
		n_window_left = "<leader>h",
		n_window_right = "<leader>l",
		n_window_up = "<leader>k",
		n_window_down = "<leader>j",

		-- resize
		n_resize_up = "<C-Up>",
		n_resize_down = "<C-Down>",
		n_resize_left = "<C-Left>",
		n_resize_right = "<C-Right>",

		fold = {
			open = "zo",
			close = "zc",
		},
		terminal_to_normal = "<Esc>",
	},

	---@class BufferLineConfig
	bufferLine = {
		enable = true,
		keys = {
			-- left / right cycle
			prev = "bp",
			next = "bn",
			-- close current buffer
			close = "bc",
			-- close = "<leader>bc",
			-- close all left / right tabs
			close_left = "<leader>bh",
			close_right = "<leader>bl",
			-- close all other tabs
			close_others = "<leader>bo",
			close_pick = "bp",
		},
	},

	---@class NvimTreeConfig
	nvimTree = {
		enable = true,
		keys = {
			toggle = { "te" },
			focus = { "tt" },
			refresh = "R",
			-- open / close --
			edit = { "o", "<2-LeftMouse>" },
			close = "<BS>", -- close parent folder
			system_open = "<CR>",
			vsplit = "sv",
			split = "sh",
			tabnew = "st",
			-- movement --
			parent_node = "P",
			first_sibling = "K",
			last_sibling = "J",
			cd = ">",
			dir_up = "<",
			-- file toggle --
			toggle_git_ignored = "i", --.gitignore (git enable)
			toggle_dotfiles = ".", -- Hide (dotfiles)
			toggle_custom = "u", -- togglle custom config
			-- file operate --
			create = "a",
			remove = "d",
			rename = "r",
			cut = "x",
			copy = "c",
			paste = "p",
			copy_name = "y",
			copy_path = "Y",
			copy_absolute_path = "gy",
			toggle_file_info = "gh",
		},
	},

	---@class CommentConfig
	comment = {
		enable = true,
		-- normal mode
		toggler = {
			line = "<C-_>", -- line comment
			block = "<C-\\>", -- block comment
		},
		-- visual mode
		opleader = {
			line = "<C-_>",
			block = "<C-\\>",
		},
	},

	---@class NotifyConfig
	notify = {
		enable = true,
		---@type number in millionsecond
		timeout = 3000,
		---@type 'fade' | 'static' | 'slide'
		stages = "fade",
		---@type  'defalut' | 'minimal' | 'simple'
		render = "minimal",
	},

	---@class TelescopeConfig
	telescope = {
		enable = true,
		keys = {
			find_files = { "bs" },
			live_grep = "<C-f>",
			-- super find  "xx" -tmd ---@see telescope-live-grep-args.nvim
			live_grep_args = "ss",
			-- up and down
			move_selection_next = "<C-j>",
			move_selection_previous = "<C-k>",
			-- history 搜索历史
			cycle_history_next = "<Down>",
			cycle_history_prev = "<Up>",
			-- close window
			close = "<esc>",
			-- scrolling in preview window
			preview_scrolling_up = "<C-u>",
			preview_scrolling_down = "<C-d>",
		},
	},

	---@class ToggleTermConfig
	toggleterm = {
		-- enable 3 builtin terminal <leader>t a/b/c
		enable = true,
		toggle_float_window = "<leader>tf",
		toggle_float_window_command = nil,
		toggle_side_window = "<leader>ts",
		toggle_side_window_command = nil,
		toggle_bottom_window = "<leader>tb",
		toggle_bottom_window_command = nil,
	},

	---@class CMPConfig
	cmp = {
		enable = true,
		-- enable copilot cmp
		copilot = false,
		-- run ':Copilot auth' for the first time
		keys = {
			confirm = "<CR>",
			select_next_item = "<C-j>",
			select_prev_item = "<C-k>",
			scroll_doc_up = "<C-u>",
			scroll_doc_down = "<C-d>",
			complete = "<A-.>",
			abort = "<A-,>",
			-- luasnip
			snip_jump_next = "<C-l>",
			snip_jump_prev = "<C-h>",
			snip_next_choice = "<C-j>",
			snip_prev_choice = "<C-k>",
			copilot_panel = "<leader>cpp",
		},
	},

	---@class LSPConfig
	lsp = {
		-- jumps to the declaration
		definition = "gd",
		-- jumps to the declaration, many servers do not implement this method
		declaration = false,
		-- displays hover information
		hover = "sh",
		-- lists all the implementations
		implementation = "gi",
		-- lists all the references to the symbol
		references = "gr",

		rename = "<leader>rn",
		code_action = "<leader>ca",
		format = "<leader>f",
		-- diagnostic
		open_flow = "gp",
		goto_next = "gj",
		goto_prev = "gk",
		list = "gl",
	},

	------------------------------------
	-- Languages config
	------------------------------------

	---@class FrontendConfig
	frontend = {
		enable = false,
		linter = "eslint_d",
		---@type "eslint_d" | "prettier" | "tsserver"
		formatter = "tsserver",
		format_on_save = false,
		cspell = false,
		tailwindcss = true,
		prisma = false,
		-- vue will take over typescript lsp
		vue = false,
		-- extra lsp command provided by typescript.nvim
		typescript = {
			keys = {
				ts_organize = "gs",
				ts_rename_file = "gR",
				ts_add_missing_import = "ga",
				ts_remove_unused = "gu",
				ts_fix_all = "gf",
				ts_goto_source = "gD",
			},
		},
	},

	---@class ClangdConfig
	clangd = {
		enable = false,
		lsp = "clangd",
		-- linter = "clangd-tidy",
		formatter = "clang-format",
		format_on_save = false,
	},

	---@class CmakeConfig
	cmake = {
		enable = false,
		lsp = "cmake",
		-- linter = "clangd-tidy",
		formatter = "",
		format_on_save = false,
	},

	---@class LuaConfig
	lua = {
		enable = true,
		lsp = "lua_ls",
		formatter = "stylua",
		format_on_save = true,
	},

	---@class BashConfig
	bash = {
		enable = false,
		lsp = "bashls",
		--  brew install shfmt
		formatter = "shfmt",
		format_on_save = false,
	},

	---@class PythonConfig
	python = {
		enable = false,
		-- can be pylsp or pyright
		lsp = "pylsp",
		-- pip install black
		-- asdf reshim python
		formatter = "black",
		format_on_save = false,
	},

	---@class JsonConfig
	json = {
		enable = false,
		lsp = "jsonls",
		-- npm install -g fixjson
		---@type "fixjson" | "prettier"
		formatter = "fixjson",
		format_on_save = false,
	},

	---@class MarkdownConfig
	markdown = {
		enable = false,
		mkdnflow = {
			next_link = "gn",
			prev_link = "gp",
			next_heading = "gj",
			prev_heading = "gk",
			go_back = "<C-o>",
			follow_link = "gd",
			toggle_item = "tt",
		},
		formatter = "prettier",
		format_on_save = false,
	},

	---@class YamlConfig
	yaml = {
		enable = false,
		lsp = "yamlls",
		---@type "prettier" | false
		formatter = "prettier",
		format_on_save = false,
	},

	---@class GitConfig
	git = {
		enable = true,
		code_actions = "gitsigns",
		-- sign display
		signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
		numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
		linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
		word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
		current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
	},

	---@class MirrorConfig
	mirror = {
		-- treesitter = "https://github.com/",
		treesitter = false,
		packer = "https://github.com/",
		-- TODO: LSP DAP mirror config
		-- carefully change these value
	},
}

return UserConfig
