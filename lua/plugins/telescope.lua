return {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim',
                   "LinArcX/telescope-env.nvim" , -- 查看环境变量的
                   "nvim-telescope/telescope-ui-select.nvim" ,
                   "nvim-telescope/telescope-live-grep-args.nvim",
                   "nvim-telescope/telescope-fzy-native.nvim"},
  
  config = function()
    require('telescope').setup({
      defaults = {
        initial_mode = "insert",
        -- vertical , center , cursor
        layout_strategy = "horizontal",
      },
          
      pickers = {
        find_files = {
          -- theme = "dropdown", -- can be : dropdown, cursor, ivy
        },
      },

      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({
            -- even more opts
            initial_mode = "normal",
          }),
        },
        live_grep_args = {
          auto_quoting = false, -- enable/disable auto-quoting
          -- mappings = { -- extend mappings
          --   i = {
          --     ["<C-k>"] = lga_actions.quote_prompt(),
          --   },
          -- },
        },
      },
    }) 

  -- This will load fzy_native and have it override the default file sorter
  require('telescope').load_extension('fzy_native')
  require('telescope').load_extension('env') 
  require('telescope').load_extension('ui-select')
  -- pcall(telescope.load_extension, "env")
  -- -- To get ui-select loaded and working with telescope, you need to call
  -- -- load_extension, somewhere after setup function:
  -- pcall(telescope.load_extension, "ui-select")
  require('telescope').load_extension('live_grep_args')
  -- pcall(telescope.load_extension, "live_grep_args")
  end
}
