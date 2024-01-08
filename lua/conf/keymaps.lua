local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- 定义函数将原函数名变短一些
local keymap = vim.api.nvim_set_keymap

-- 映射leader键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t", 
--   command_mode = "c",


-- Better window navigation
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "J", "5j", opts)
keymap("v", "K", "5k", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)



keymap("n", "Q", ":q<cr>", opts)
keymap("n", "S", ":w<cr>", opts)
keymap("v", "Q", ":q<cr>", opts)
keymap("v", "S", ":w<cr>", opts)


-- Better window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- resize 
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Nvim-tree
keymap("n", "te", ":NvimTreeToggle<cr>", opts)
keymap("n", "tt", ":NvimTreeFocus<cr>", opts)
keymap('n', 'tv', ':vsplit | :NvimTreeFindFile<CR>', opts)
keymap('n', 'th', ':split | :NvimTreeFindFile<CR>', opts)
--keymap("n", "tc", ":NvimTreeCollapse<cr>", opts)
--keymap("n", "tk", ":NvimTreeCollapseKeepBuffers<cr>", opts)

-- bufferline
keymap("n", "bp", ":BufferLineCyclePrev<cr>", opts)
keymap("n", "bn", ":BufferLineCycleNext<cr>", opts)
keymap("n", "bc", ":bdelete!<cr>", opts)


--keymap("n", "tf", ":ToggleTerm direction=float<cr>", opts)
--keymap("t", "<esc>", [[<C-\><C-n>]], opts)
--keymap("t", "<C-h>", [[<Cmd>wincmd h<cr>]], opts)
--keymap("t", "<C-j>", [[<Cmd>wincmd j<cr>]], opts)
--keymap("t", "<C-k>", [[<Cmd>wincmd k<cr>]], opts)
--keymap("t", "<C-l>", [[<Cmd>wincmd l<cr>]], opts)


--keymap("n", "<F5>", "<Cmd>lua require'dap'.continue()<CR>", opts) --开始debug
--keymap("n", "<F6>", " <Cmd>lua require'dap'.step_over()<CR>", opts) --步过
--keymap("n", "<F7>", "<Cmd>lua require'dap'.step_into()<CR>", opts)  --步进
--keymap("n", "<F8>", "<Cmd>lua require'dap'.step_out()<CR>", opts)  --步出
--keymap("n", "<Leader>b", "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
--keymap("n", "<Leader>B", "<Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
--keymap("n", "<Leader>lp", "<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", opts)
--keymap("n", "<Leader>dr", "<Cmd>lua require'dap'.repl.open()<CR>", opts)
--keymap("n", "<Leader>dl", "<Cmd>lua require'dap'.run_last()<CR>", opts)



--keymap("n", "<Leader>fo", ":Telescope oldfiles<cr>", opts)
--keymap("n", "<Leader>fl", ":Telescope live_grep_args<cr>", opts)
--keymap("n", "<Leader>ff", ":Telescope find_files<cr>", opts)
--keymap("n", "<Leader>fb", ":Telescope buffers<cr>", opts)


