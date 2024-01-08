return{
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = { "c", "cmake", "cpp", "markdown", "python", "luau" }, -- 语法高亮的语言
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end
}
