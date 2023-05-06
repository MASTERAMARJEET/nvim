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
        options = {
          section_separators = "",
          component_separators = "",
        },
        sections = {
          lualine_b = { { "branch", separator = "|" }, "diff" },
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
            { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
          },
        },
      }
    end,
  },

  -- indent guides for Neovim
  { "lukas-reineke/indent-blankline.nvim", enabled = false },

  -- lsp symbol navigation
  { "SmiteshP/nvim-navic", enabled = false },

  -- noicer ui
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        enabled = false,
        view = "cmdline",
        format = {
          cmdline = {
            conceal = false,
          },
          search_down = {
            conceal = false,
          },
          search_up = {
            conceal = false,
          },
          filter = {
            conceal = false,
          },
          lua = {
            conceal = false,
          },
          help = {
            conceal = false,
          },
        },
      },
      messages = {
        enabled = false,
      },
      routes = {
        {
          view = "notify",
          filter = { event = "msg_showmode" },
        },
        {
          filter = {
            event = "msg_show",
            kind = "",
            find = "written",
          },
          opts = { skip = true },
        },
      },
      ---@class NoiceConfigViews: table<string, NoiceViewOptions>
      views = {
        mini = {
          backend = "mini",
          relative = "editor",
          align = "message-right",
          timeout = 2000,
          reverse = true,
          focusable = false,
          position = {
            row = vim.fn.winheight(0) - 1,
            col = "100%",
            -- col = 0,
          },
          size = "auto",
          border = {
            style = "none",
          },
          zindex = 60,
          win_options = {
            winblend = 30,
            winhighlight = {
              Normal = "NoiceMini",
              IncSearch = "",
              CurSearch = "",
              Search = "",
            },
          },
        },
      },
    },
  },
}
