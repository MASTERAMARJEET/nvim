--[[ require("plugins.tokyonight") ]]
require("plugins.material")
vim.g.material_style = "deep ocean"
vim.cmd([[
try
  colorscheme material
  " colorscheme tokyonight
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
