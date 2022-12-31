local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

toggleterm.setup({
  size = 15,
  open_mapping = [[<c-\>]],
  hide_numbers = false,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 0,
  start_in_insert = true,
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
})

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, count = 2 })

local watch = Terminal:new({ count = 9 })
function _WATCH_TOGGLE()
  watch:toggle()
end

function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

local node = Terminal:new({ cmd = "node", hidden = true, count = 3 })

function _NODE_TOGGLE()
  node:toggle()
end

local ncdu = Terminal:new({ cmd = "ncdu", hidden = true, count = 4 })

function _NCDU_TOGGLE()
  ncdu:toggle()
end

local htop = Terminal:new({ cmd = "htop", hidden = true, count = 5 })

function _HTOP_TOGGLE()
  htop:toggle()
end

local python = Terminal:new({ cmd = "python", hidden = true, count = 6 })

function _PYTHON_TOGGLE()
  python:toggle()
end

local spotify = Terminal:new({ cmd = "spt", hidden = true, count = 7 })

function _SPOTIFY_TOGGLE()
  spotify:toggle()
end
