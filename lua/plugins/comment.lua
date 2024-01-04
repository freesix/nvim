return{
  'numToStr/Comment.nvim',
  lazy = false,

  config = function()
    require("Comment").setup({
      {
      ---Add a space b/w comment and the line
      padding = true,
      ---Whether the cursor should stay at its position
      sticky = true,
      ---Lines to be ignored while (un)comment
      ignore = nil,
      ---Enable keybindings
      ---NOTE: If given `false` then the plugin won't create any mappings
      mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = false,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = false,
      },
      ---Function to call before (un)comment
      pre_hook = nil,
      ---Function to call after (un)comment
      post_hook = nil
    }
  })

  local api = require('Comment.api')
  -- Toggle current line (linewise) using C-/
  vim.keymap.set('n', '<C-_>', api.toggle.linewise.current)

  -- Toggle current line (blockwise) using C-\
  vim.keymap.set('n', '<C-\\>', api.toggle.blockwise.current)

  -- Toggle lines (linewise) with dot-repeat support
  -- Example: <leader>gc3j will comment 4 lines
  vim.keymap.set(
        'n', '<leader>gc', api.call('toggle.linewise', 'g@'),
        { expr = true }
  )

  -- Toggle lines (blockwise) with dot-repeat support
  -- Example: <leader>gb3j will comment 4 lines
  vim.keymap.set(
        'n', '<leader>gb', api.call('toggle.blockwise', 'g@'),
        { expr = true }
  )

  local esc = vim.api.nvim_replace_termcodes(
        '<ESC>', true, false, true
  )

    -- Toggle selection (linewise)
  vim.keymap.set('x', '<C-_>', function()
      vim.api.nvim_feedkeys(esc, 'nx', false)
      api.toggle.linewise(vim.fn.visualmode())
  end)

  -- Toggle selection (blockwise)
  vim.keymap.set('x', '<C-\\>', function()
      vim.api.nvim_feedkeys(esc, 'nx', false)
      api.toggle.blockwise(vim.fn.visualmode())
  end)

  end
}

