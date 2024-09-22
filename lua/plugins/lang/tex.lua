return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        texlab = {
          settings = {
            auxDirectory = ".",
            texlab = {
              build = {
                args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
                executable = "latexmk",
                forwardSearchAfter = false,
                onSave = true,
              },
              chktex = {
                onEdit = false,
                onOpenAndSave = true,
              },
              diagnosticsDelay = 100,
              forwardSearch = {
                executable = "zathura",
                args = { "--synctex-forward", "%l:%f", "%p" },
              },
              latexFormatter = "none",
            },
          },
        },
      },
    },
  },
}
