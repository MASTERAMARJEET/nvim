local mode = require("keymaps.helpers").mode
return {
  { mode.normal, "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>" },
  { mode.normal, "gd", "<cmd>lua vim.lsp.buf.definition()<CR>" },
  { mode.normal, "K", "<cmd>lua vim.lsp.buf.hover()<CR>" },
  { mode.normal, "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>" },
  { mode.normal, "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>" },
  { mode.normal, "gr", "<cmd>lua vim.lsp.buf.rename()<CR>" },
  { mode.normal, "gR", "<cmd>lua vim.lsp.buf.references()<CR>" },
  { mode.normal, "g.", "<cmd>lua vim.lsp.buf.code_action()<CR>" },
  {
    mode.normal,
    "[d",
    '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>',
  },
  {
    mode.normal,
    "gk",
    '<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>',
  },
  {
    mode.normal,
    "]d",
    '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>',
  },
}
