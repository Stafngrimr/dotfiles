 return {
  { 
    'Mofiqul/dracula.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function()
      vim.cmd([[colorscheme dracula]])
    end,    
  },
  
  {
    'crispybaccoon/evergarden',
    priority = 1000,
    lazy = true,
    config = function()
      vim.cmd([[colorscheme evergarden]])
    end,
  },

  {
    'srcery-colors/srcery-vim',
    priority = 1000,
    lazy = true,
    config = function()
      vim.cmd([[colorscheme srcery]])
    end,
  }
}
