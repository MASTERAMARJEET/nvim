local colors = require("material.colors")
require("material").setup({
  contrast = {
    terminal = false, -- Enable contrast for the built-in terminal
    filetypes = { -- Specify which filetypes get the contrasted (darker) background
      "terminal", -- Darker terminal background
      "packer", -- Darker packer background
      "qf", -- Darker qf list background
      "cmdline",
    },
    sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = true, -- Enable contrast for floating windows
    line_numbers = true, -- Enable contrast background for line numbers
    sign_column = true, -- Enable contrast background for the sign column
    cursor_line = true, -- Enable darker background for the cursor --[[ line ]]
    non_current_windows = false, -- Enable darker background for non-current windows
    popup_menu = true, -- Enable lighter background for the popup menu
  },
  styles = { -- Give comments style such as bold, italic, underline etc.
    comments = { italic = true },
    strings = { --[[ bold = true ]]
    },
    keywords = { --[[ underline = true ]]
    },
    functions = { --[[ bold = true, undercurl = true ]]
    },
    variables = {},
    operators = {},
    types = {},
  },
  plugins = { -- Uncomment the plugins that you use to highlight them
    -- Available plugins:
    -- "dap",
    -- "dashboard",
    "gitsigns",
    -- "hop",
    -- "indent-blankline",
    -- "lspsaga",
    -- "mini",
    -- "neogit",
    "nvim-cmp",
    -- "nvim-navic",
    "nvim-tree",
    -- "sneak",
    "telescope",
    -- "trouble",
    "which-key",
  },

  borders = true, -- Enable borders between verticaly split windows

  popup_menu = "dark", -- Popup menu style ( can be: 'dark', 'light', 'colorful' or 'stealth' )

  high_visibility = {
    lighter = false, -- Enable higher contrast text for lighter style
    darker = true, -- Enable higher contrast text for darker style
  },

  disable = {
    borders = false, -- Disable borders between verticaly split windows
    background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
    term_colors = false, -- Prevent the theme from setting terminal colors
    eob_lines = false, -- Hide the end-of-buffer lines
  },

  lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )

  async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

  custom_highlights = {
    LspReferenceText = { bold = true },
  }, -- Overwrite highlights with your own
})
