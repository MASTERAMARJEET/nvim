local lspconfig_status, lspconfig = pcall(require, "lspconfig")
local mason_status, mason = pcall(require, "mason")
local mason_lspconfig_status, mason_lspconfig =
  pcall(require, "mason-lspconfig")

if not (lspconfig_status and mason_status and mason_lspconfig_status) then
  return
end

local servers = require("lsp.servers")()
local opts = {
  on_attach = require("lsp.handlers").on_attach,
  capabilities = require("lsp.handlers").capabilities,
}
mason.setup()
mason_lspconfig.setup({
  ensure_installed = servers,
  automatic_installation = true,
})

for _, server in pairs(servers) do
  if server == "jsonls" then
    local jsonls_opts = require("lsp.settings.jsonls")
    opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
  end

  if server == "sumneko_lua" then
    local lua_opts = require("lsp.settings.sumneko_lua")
    opts = vim.tbl_deep_extend("force", lua_opts, opts)
  end

  lspconfig[server].setup(opts)
end
