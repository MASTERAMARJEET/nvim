return {
  -- material
  {
    "marko-cerovac/material.nvim",
    enabled = false,
    lazy = true,
    config = function()
      vim.g.material_style = "deep ocean"
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  -- tokyonight
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },

  -- catppuccin
  {
    "catppuccin/nvim",
    enabled = true,
  },
}
