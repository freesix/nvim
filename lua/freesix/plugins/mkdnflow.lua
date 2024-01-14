-- TODO:
local mkdnflow = pRequire("mkdnflow")
local cfg = require("freesix").config.markdown

if mkdnflow and cfg and cfg.enable then
	mkdnflow.setup({
		modules = {
			maps = false,
		},
		filetypes = { md = true, mdx = true, markdown = true },
		links = {
			style = "markdown",
			implicit_extension = nil,
			transform_implicit = false,
			transform_explicit = function(text)
				text = text:gsub(" ", "-")
				text = text:lower()
				text = os.date("%Y-%m-%d-") .. text
				return text
			end,
		},
	})

	local mkdnflowGroup = vim.api.nvim_create_augroup("mkdnflowGroup", {
		clear = true,
	})
	vim.api.nvim_create_autocmd("FileType", {
		group = mkdnflowGroup,
		pattern = { "markdown", "md", "mdx" },
		callback = function()
			local opts = { buffer = vim.api.nvim_get_current_buf() }
			keymap("n", cfg.mkdnflow.next_link, ":MkdnNextLink<CR>", opts)
			keymap("n", cfg.mkdnflow.prev_link, ":MkdnPrevLink<CR>", opts)
			keymap("n", cfg.mkdnflow.prev_heading, ":MkdnPrevHeading<CR>", opts)
			keymap("n", cfg.mkdnflow.next_heading, ":MkdnNextHeading<CR>", opts)
			keymap("n", cfg.mkdnflow.go_back, ":MkdnGoBack<CR>", opts)
			keymap("n", cfg.mkdnflow.follow_link, ":MkdnFollowLink<CR>", opts)
			keymap("n", cfg.mkdnflow.toggle_item, ":MkdnToggleToDo<CR>", opts)
			keymap({ "n", "x" }, cfg.mkdnflow.follow_link, ":MkdnFollowLink<CR>", opts)
			local lsp = require("fressxi").config.lsp
			keymap("n", lsp.code_action, ":lua vim.lsp.buf.code_action()<CR>", opts)
			keymap("n", lsp.format, ":lua vim.lsp.buf.format({ async = true })<CR>", opts)
		end,
	})
end
