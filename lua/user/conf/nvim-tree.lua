-- https://github.com/kyazdani42/nvim-tree.lua
--
-- bmv :bulk_move
-- <C-J> :cd
-- F :clear_live_filter
-- q :close
-- <BS> :close_node
-- W :collapse_all
-- c :copy
-- gy :copy_absolute_path
-- y :copy_name
-- Y :copy_path
-- a :creat
-- x :cut
-- - :dir_up
-- <cr> :edit
-- o :edit
-- <C-e> :edit_in_place
-- E :expand_all
-- K :first_sibling
-- <C-r> :full_rename
-- J :last_sibling
-- f :live_filter
-- ]e :next_diga_item
-- ]c "next_git_item
-- > :next_sibling
-- P :parent_node
-- p :paste
-- [e :prev_diag_item
-- [c :prev_git_item
-- < :prie_slbling_item
-- <Tab> :preview
-- R :refresh
-- d :remove
-- r :rename
-- . :run_file_command
-- S :search_node
-- <C-x> :split
-- s :system_open
-- <C-t> :tabnew
-- U :toggle_custom
-- H :toggle_dotfiles
-- <C-k> :toggle_file_info
-- I :toggle_git_ignored
-- g? :toggle_help
-- m :toggle_mark
-- D :trash
-- <C-v> :vsplit
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true



local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  view = {
    width = 30,
    side = "left",
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
  },
}

--nvim-web-deviconas
require'nvim-web-devicons'.get_icons()

require "nvim-tree.events".on_file_created(function(file) vim.cmd("edit " .. file.fname) end)
-- with absolute path
-- require"nvim-tree.events".on_file_created(function(file) vim.cmd("edit "..vim.fn.fnamemodify(file.fname, ":p")) end)

-- auto close feature
-- vim.cmd(
--   [[
--     autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
-- ]]
-- )
