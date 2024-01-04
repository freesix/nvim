return{
  "neovim/nvim-lspconfig",
  
  config = function()
    local lspconfig = require('lspconfig')
    lspconfig.clangd.setup {}
    lspconfig.pyright.setup {}
    lspconfig.tsserver.setup {}
    lspconfig.rust_analyzer.setup {
    -- Server-specific settings. See `:help lspconfig-setup`
    settings = {
    ['rust-analyzer'] = {},
    },
  }
  end
}
