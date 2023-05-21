return {
  -- material
  {
    "marko-cerovac/material.nvim",
    lazy = true,
    config = function()
      vim.g.material_style = "deep ocean"
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material",
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
    enabled = false,
  },
}
