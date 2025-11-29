local custom_filename = require("lualine.components.filename"):extend()

function custom_filename:init(options)
  custom_filename.super.init(self, options)
  self.options.path = 1
end

function custom_filename:update_status()
  if vim.bo.filetype == "toggleterm" then
    return "Terminal " .. vim.b.toggle_number
  end
  return custom_filename.super.update_status(self)
end

return {
  -- toggleterm
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 15,
      open_mapping = [[<c-\>]],
      hide_numbers = false,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 0,
      start_in_insert = false,
      insert_mappings = true,
      persist_size = true,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        height = math.ceil(vim.o.lines * 0.85),
        width = math.ceil(vim.o.columns * 0.9),
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
      winbar = {
        enabled = true,
      },
    },
    keys = {
      {
        "<C-\\>",
        "<cmd>ToggleTerm",
        desc = "Show/Hide terminal",
      },
      {
        "<leader>tf",
        "<cmd>ToggleTerm direction=float<cr>",
        desc = "Float",
      },
      {
        "<leader>th",
        "<cmd>ToggleTerm direction=horizontal size=15<cr>",
        desc = "Horizontal",
      },
      {
        "<leader>tv",
        "<cmd>ToggleTerm direction=vertical size=80<cr>",
        desc = "Vertical",
      },
      { "<leader>tr", "<cmd>ToggleTermSetName<cr>", desc = "Rename Terminal" },
    },
  },
}
