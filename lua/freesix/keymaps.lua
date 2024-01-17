local cfg = require("freesix").config
local keys = cfg.keys
if not keys then
	return
end

vim.g.mapleader = keys.leader_key
vim.g.maplocalleader = keys.leader_key

keymap({ "n", "v" }, keys.n_save, ":w<cr>")
keymap({ "n", "v" }, keys.n_force_quit, ":q<cr>")

keymap({ "n", "v" }, keys.n_v_5j, "5j")
keymap({ "n", "v" }, keys.n_v_5k, "5k")
keymap({ "n", "v" }, keys.n_v_front, "^")
keymap({ "n", "v" }, keys.n_v_back, "$")

keymap("n", "s", "")
keymap({ "n", "t" }, keys.n_window_left, "<Cmd> wincmd h<cr>")
keymap({ "n", "t" }, keys.n_window_right, "<Cmd> wincmd l<cr>")
keymap({ "n", "t" }, keys.n_window_up, "<Cmd> wincmd k<cr>")
keymap({ "n", "t" }, keys.n_window_down, "<Cmd> wincmd j<cr>")

keymap("n", keys.n_resize_up, ":resize +2<cr>")
keymap("n", keys.n_resize_down, ":resize -2<cr>")
keymap("n", keys.n_resize_left, ":vertical resize +2<cr>")
keymap("n", keys.n_resize_right, ":vertical resize -2<cr>")

-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- super tab
if cfg.s_tab ~= nil and cfg.s_tab.enable then
	local tkey = cfg.s_tab.keys
	keymap("n", tkey.split, "<CMD>tab split<CR>")
	keymap("n", tkey.close, "<CMD>tabclose<CR>")
	keymap("n", tkey.next, "<CMD>tabnext<CR>")
	keymap("n", tkey.prev, "<CMD>tabprev<CR>")
	keymap("n", tkey.first, "<CMD>tabfirst<CR>")
	keymap("n", tkey.last, "<CMD>tablast<CR>")
end
