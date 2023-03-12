-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local options = {
  backup = false, -- creates a backup file
  cmdheight = 1, -- more space in the neovim command line for displaying messages
  laststatus = 3, -- common statusline for all windows
  -- winbar = "%f%m",
  showtabline = 2, -- always show tabs
  completeopt = { "menuone", "noselect" }, -- better completion experience
  conceallevel = 0, -- so that `` is visible in markdown files
  fileencoding = "utf-8", -- the encoding written to a file
  foldmethod = "expr", -- folding, set to "expr" for treesitter based folding
  foldexpr = "nvim_treesitter#foldexpr()", -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
  foldlevel = 5,
  hlsearch = false, -- highlight all matches on previous search pattern
  incsearch = true,
  ignorecase = true, -- ignore case in search patterns
  smartcase = true,
  list = true, -- show special charcaters for tab and trailing spaces
  listchars = { tab = "→ ", trail = "¬" },
  -- listchars = {"tab" ="↦ ","trail"="¬"},
  -- listchars = {"tab" ="» ","trail"="¬"},
  mouse = "a", -- allow the mouse to be used in neovim
  pumheight = 10, -- pop up menu height
  showmode = false, -- we don't need to see things like -- INSERT -- anymore
  smartindent = true, -- make indenting smarter again
  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
  swapfile = false, -- creates a swapfile
  termguicolors = true, -- set term gui colors (most terminals support this)
  timeoutlen = 300, -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true, -- enable persistent undo
  updatetime = 100, -- faster completion (4000ms default)
  writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  breakindent = true,
  autoindent = true,
  expandtab = true, -- convert tabs to spaces
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  tabstop = 2, -- insert 2 spaces for a tab
  cursorline = true, -- highlight the current line
  colorcolumn = { 80, 100 }, -- set a column line at 80 and 100 chars
  number = true, -- set numbered lines
  relativenumber = true, -- set relative numbered lines
  numberwidth = 2, -- set number column width to 2 {default 4}
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  wrap = false, -- display lines as one long line
  scrolloff = 8,
  sidescrolloff = 8,
  spelllang = "en",
  guifont = "monospace:h17", -- the font used in graphical neovim applications

  autowrite = true, -- Enable auto write
  clipboard = "unnamedplus", -- Sync with system clipboard
  confirm = true, -- Confirm to save changes before exiting modified buffer
  formatoptions = "jcroqlnt", -- tcqj
  grepformat = "%f:%l:%c:%m",
  grepprg = "rg, --vimgrep",
  inccommand = "nosplit", -- preview incremental substitute
  pumblend = 10, -- Popup blend
  sessionoptions = { "buffers", "curdir", "tabpages", "winsize" },
  shiftround = true, -- Round indent
  undolevels = 10000,
  wildmode = "longest:full,full", -- Command-line completion mode
  winminwidth = 5, -- Minimum window width
}
vim.opt.shortmess:append("c")

for k, v in pairs(options) do
  vim.opt[k] = v
end
