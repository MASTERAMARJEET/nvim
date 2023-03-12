return {
  {
    "rcarriga/nvim-notify",
    opts = { render = "compact", top_down = false },
  },
  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local icons = require("lazyvim.config").icons
      return {
        sections = {
          lualine_c = {
            {
              "diagnostics",
              symbols = {
                error = icons.diagnostics.Error,
                warn = icons.diagnostics.Warn,
                info = icons.diagnostics.Info,
                hint = icons.diagnostics.Hint,
              },
            },
            { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
            { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
          },
        },
      }
    end,
  },

  -- lsp symbol navigation
  {
    "SmiteshP/nvim-navic",
    enabled = false,
  },
}
