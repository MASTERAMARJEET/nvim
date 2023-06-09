local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the installs.lua file
local packer_sync = vim.api.nvim_create_augroup("packer_sync", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  group = packer_sync,
  pattern = "installs.lua",
  command = "source <afile> | PackerSync",
})

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

local util = require("packer.util")

-- Have packer use a popup window
packer.init({
  compile_path = util.join_paths(
    vim.fn.stdpath("config"),
    "lua",
    "packer_compiled.lua"
  ),
  display = {
    open_fn = function()
      return util.float({ border = "rounded" })
    end,
  },
})
return packer.startup(function(use)
  use({ "wbthomason/packer.nvim" }) -- Have packer manage itself

  -- USED BY OTHER PLUGINS
  use({ "nvim-tree/nvim-web-devicons" })
  use({ "nvim-lua/popup.nvim" })
  use({ "nvim-lua/plenary.nvim" })

  -- CMP PLUGINS
  use({ "hrsh7th/nvim-cmp" })
  use({ "hrsh7th/cmp-buffer" })
  use({ "hrsh7th/cmp-path" })
  --[[ use({ "hrsh7th/cmp-cmdline" }) ]]
  use({ "saadparwaiz1/cmp_luasnip" })
  use({ "hrsh7th/cmp-nvim-lsp" })
  use({ "hrsh7th/cmp-nvim-lua" })

  -- LSP
  use({ "neovim/nvim-lspconfig" })
  use({ "williamboman/mason.nvim" })
  use({ "williamboman/mason-lspconfig.nvim" })
  use({ "tamago324/nlsp-settings.nvim" })
  use({ "jose-elias-alvarez/null-ls.nvim" })
  --[[ use({ "glepnir/lspsaga.nvim" }) ]]

  -- SNIPPETS
  use({ "L3MON4D3/LuaSnip" }) --snippet engine
  use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

  -- TREESITTER
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })
  use({ "JoosepAlviste/nvim-ts-context-commentstring" })

  -- TELESCOPE
  use({ "nvim-telescope/telescope.nvim" })
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use({ "ahmedkhalf/project.nvim" })

  -- MISCS
  use({ "lewis6991/impatient.nvim" })
  use({ "antoinemadec/FixCursorHold.nvim" }) -- This is needed to fix lsp doc highlight
  use({ "folke/which-key.nvim" })

  -- BETTER UI
  use({ "nvim-tree/nvim-tree.lua" })
  use({ "nvim-lualine/lualine.nvim" })
  use({
    "akinsho/bufferline.nvim",
    requires = { "moll/vim-bbye" },
  })
  use({ "akinsho/toggleterm.nvim" })
  use({ "goolord/alpha-nvim" })

  -- COLORSCHEMES
  use({ "marko-cerovac/material.nvim" })
  use({ "folke/tokyonight.nvim" })

  -- CODE EASY
  use({ "numToStr/Comment.nvim" })
  use({ "windwp/nvim-autopairs" })

  -- Git
  use({ "lewis6991/gitsigns.nvim" })

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
