return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "lua", "query", "javascript", "html" },
      sync_installed = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

--[[
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_intalled = {
    "c",
    "json",
    "javascript",
    "yaml",
    "html",
    "css",
    "markdown",
    "markdown_inline",
    "bash",
    "lua",
    "dockerfile",
    "gitignore"
  },
  auto_install = true,
}
]]
