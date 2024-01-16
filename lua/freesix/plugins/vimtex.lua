-- PDF Viewer:
-- http://manpages.ubuntu.com/manpages/trusty/man5/zathurarc.5.html

-- vim.cmd("synctex enable")
vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_view_general_viewer = "zathura"
vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
-- vim.g.vimtex_view_general_options_latexmk = "-reuse-instance"

vim.g.vimtex_quickfix_mode = false
vim.g.vimtex_syntax_enabled = true

vim.g.vimtex_compiler_latexmk_engines = {
	_ = "-xelatex",
}
vim.g.tex_comment_nospell = 1
vim.g.vimtex_compiler_progname = "nvr"
vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]

vim.g["vimtex_log_ignore"] = {
	"Underfull",
	"Overfull",
	"specifier changed to",
	"Token not allowed in a PDF string",
}

-- vim.g["tex_flavor"] = "latex"
--
-- vim.g["vimtex_view_method"] = "zathura"
-- vim.g["vimtex_quickfix_mode"] = 0
-- vim.g["vimtex_view_enabled"] = 1
-- vim.g["vimtex_view_automatic"] = 1
--
-- -- Ignore mappings
-- vim.g["vimtex_mappings_enabled"] = 1
--
-- -- Auto Indent
-- vim.g["vimtex_indent_enabled"] = 0
--
-- -- Syntax highlighting
-- vim.g["vimtex_syntax_enabled"] = 1
--
-- -- Error suppression:
-- -- https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt
--
-- vim.g["vimtex_log_ignore"] = {
-- 	"Underfull",
-- 	"Overfull",
-- 	"specifier changed to",
-- 	"Token not allowed in a PDF string",
-- }
--
-- vim.g["vimtex_context_pdf_viewer"] = "zathura"

-- vim.g['vimtex_complete_enabled'] = 1
-- vim.g['vimtex_compiler_progname'] = 'nvr'
-- vim.g['vimtex_complete_close_braces'] = 1

-- require("cmp_vimtex").setup({
-- 	additional_information = {
-- 		info_in_menu = true,
-- 		info_in_window = true,
-- 		info_max_length = 60,
-- 		match_against_info = true,
-- 		symbols_in_menu = true,
-- 	},
-- 	bibtex_parser = {
-- 		enabled = true,
-- 	},
-- })
