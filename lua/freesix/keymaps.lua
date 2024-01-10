local cfg = require("freesix").config
local keys = cfg.keys
if not keys then
  return
end

vim.g.mapleader = keys.leader_key
vim.g.maplocalleader = keys.leader_key

keymap({"n", "v"}, keys.n_save, ":w<cr>")
keymap({"n", "v"}, keys.n_force_quit, ":q<cr>")

keymap({"n", "v"}, keys.n_v_5j, "5j")
keymap({"n", "v"}, keys.n_v_5k, "5k")
keymap({"n", "v"}, keys.n_v_front, "^")
keymap({"n", "v"}, keys.n_v_back, "$")

keymap("n", "s", "")
keymap("n", keys.n_window_left, "<C-w>h")
keymap("n", keys.n_window_right, "<C-w>l")
keymap("n", keys.n_window_up, "<C-w>k")
keymap("n", keys.n_window_down, "<C-w>j")

keymap("n", keys.n_resize_up, ":resize +2<cr>")
keymap("n", keys.n_resize_down, ":resize -2<cr>")
keymap("n", keys.n_resize_left, ":vertical resize +2<cr>")
keymap("n", keys.n_resize_right, ":vertical resize -2<cr>")

-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

