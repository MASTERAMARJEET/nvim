return {
  ["a"] = { "<cmd>Alpha<cr>", "Alpha" },
  ["b"] = { "<cmd>lua _TELESCOPE('buffers', 'dropdown')<cr>", "Buffers" },
  ["e"] = {
    "<cmd>lua require('nvim-tree').toggle(false, false)<cr>",
    "Explorer",
  },
  ["w"] = { "<cmd>w!<CR>", "Save" },
  ["q"] = { "<cmd>q!<CR>", "Quit" },
  ["c"] = { "<cmd>Bdelete!<CR>", "Close Buffer" },
  ["h"] = { "<cmd>nohlsearch<CR>", "No Highlight" },
  ["f"] = {
    "<cmd>lua _TELESCOPE('find_files', 'dropdown')<cr>",
    "Find files",
  },
  ["F"] = { "<cmd>lua _TELESCOPE('live_grep', 'ivy')<cr>", "Find Text" },

  P = {
    name = "Packer",
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    s = { "<cmd>PackerSync<cr>", "Sync" },
    S = { "<cmd>PackerStatus<cr>", "Status" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },

  g = {
    name = "Git",
    g = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "Lazygit" },
    j = { "<cmd>lua require('gitsigns').next_hunk()<cr>", "Next Hunk" },
    k = { "<cmd>lua require('gitsigns').prev_hunk()<cr>", "Prev Hunk" },
    l = { "<cmd>lua require('gitsigns').blame_line()<cr>", "Blame" },
    p = { "<cmd>lua require('gitsigns').preview_hunk()<cr>", "Preview Hunk" },
    r = { "<cmd>lua require('gitsigns').reset_hunk()<cr>", "Reset Hunk" },
    R = { "<cmd>lua require('gitsigns').reset_buffer()<cr>", "Reset Buffer" },
    S = { "<cmd>lua require('gitsigns').stage_hunk()<cr>", "Stage Hunk" },
    u = {
      "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
      "Undo Stage Hunk",
    },
    s = { "<cmd>lua _TELESCOPE('git_status')<cr>", "Open changed file" },
    b = { "<cmd>lua _TELESCOPE('git_branches')<cr>", "Checkout branch" },
    d = { "<cmd>Gitsigns diffthis HEAD<cr>", "Diff" },
  },

  l = {
    name = "LSP",
    d = {
      "<cmd>lua _TELESCOPE('diagnostics', 'ivy')<cr>",
      "Workspace Diagnostics",
    },
    f = { "<cmd>lua vim.lsp.buf.format({async = true})<cr>", "Format" },
    i = { "<cmd>LspInfo<cr>", "Info" },
    I = { "<cmd>Mason<cr>", "Installer Info" },
    j = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "Next Diagnostic" },
    k = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Prev Diagnostic" },
    l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
    q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
    s = {
      "<cmd>lua _TELESCOPE('lsp_document_symbols')<cr>",
      "Document Symbols",
    },
    S = {
      "<cmd>lua _TELESCOPE('lsp_dynamic_workspace_symbols')<cr>",
      "Workspace Symbols",
    },
  },
  s = {
    name = "Search",
    c = { "<cmd>lua _TELESCOPE('colorscheme')<cr>", "Colorscheme" },
    h = { "<cmd>lua _TELESCOPE('help_tags')<cr>", "Find Help" },
    M = { "<cmd>lua _TELESCOPE('man_pages')<cr>", "Man Pages" },
    r = { "<cmd>lua _TELESCOPE('oldfiles')<cr>", "Open Recent File" },
    R = { "<cmd>lua _TELESCOPE('registers')<cr>", "Registers" },
    k = { "<cmd>lua _TELESCOPE('keymaps')<cr>", "Keymaps" },
    C = { "<cmd>lua _TELESCOPE('commands')<cr>", "Commands" },
  },

  t = {
    name = "Terminal",
    n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
    u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
    t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
    p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
    s = { "<cmd>lua _SPOTIFY_TOGGLE()<cr>", "Spotify" },
    f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
    h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
    v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
  },
}
