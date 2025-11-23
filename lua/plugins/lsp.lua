return {
  -- formatters
  {
    -- "jose-elias-alvarez/null-ls.nvim",
    -- opts = function(_, opts)
    --   local nls = require("null-ls")
    --   table.insert(opts.sources, nls.builtins.formatting.black)
    --   table.insert(opts.sources, nls.builtins.formatting.gofmt)
    --   table.insert(opts.sources, nls.builtins.formatting.goimports)
    --   table.insert(opts.sources, nls.builtins.formatting.goimports_reviser)
    --   table.insert(opts.sources, nls.builtins.formatting.golines)
    --   table.insert(opts.sources, nls.builtins.formatting.prettierd)
    --   table.insert(opts.sources, nls.builtins.code_actions.eslint_d)
    --   table.insert(
    --     opts.sources,
    --     nls.builtins.formatting.latexindent.with({
    --       args = { "-g", "/dev/null" },
    --     })
    --   )
    -- end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } }, -- optional: you can also use fzf-lua, snacks, mini-pick instead.
    },
    ft = "python", -- Load when opening Python files
    keys = {
      { "<leader>cv", "<cmd>VenvSelect<cr>" }, -- Open picker on keymap
    },
    opts = { -- this can be an empty lua table - just showing below for clarity.
      search = {}, -- if you add your own searches, they go here.
      options = {}, -- if you add plugin options, they go here.
    },
  },
}
