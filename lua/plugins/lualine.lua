local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  sections = { "error", "warn", "info", "hint" },
  colored = true,
  update_in_insert = false,
}

local diff = {
  "diff",
  colored = true,
  symbols = { added = "+", modified = "~", removed = "-" }, -- changes diff symbols
  cond = hide_in_width,
}

local mode = {
  "mode",
  fmt = function(str)
    return str
  end,
  padding = 1,
}

local filetype = {
  "filetype",
  icons_enabled = true,
  icon = nil,
}

local branch = {
  "branch",
  icons_enabled = true,
  icon = "",
}
-- cool function for progress
-- currently not in use
local progress = function()
  local current_line = vim.fn.line(".")
  local total_lines = vim.fn.line("$")
  local current_col = vim.fn.col(".")
  local chars = {
    "__",
    "▁▁",
    "▂▂",
    "▃▃",
    "▄▄",
    "▅▅",
    "▆▆",
    "▇▇",
    "██",
  }
  local line_ratio = math.floor(current_line / total_lines * 100)
  local index = math.ceil(line_ratio * #chars)
  return "" .. current_line .. "/" .. total_lines .. ":" .. current_col
end

local location = {
  "location",
  fmt = progress,
  padding = 1,
}

local spaces = function()
  return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

lualine.setup({
  options = {
    icons_enabled = true,
    theme = "material-nvim",
    component_separators = { left = "|", right = "|" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = { mode },
    lualine_b = { branch, diff },
    lualine_c = { "filename" },
    -- lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_x = { diagnostics, spaces, "encoding" },
    lualine_y = { filetype },
    lualine_z = { location },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
})
