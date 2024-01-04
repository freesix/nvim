return{
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "c" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}
