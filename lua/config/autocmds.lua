-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "tex" },
  group = augroup("ft_tex"),
  callback = function()
    vim.o.spell = true
    vim.keymap.set("n", "<leader>o", function()
      -- Open pdf viewer
      local file_name = vim.fn.expand("%:r") .. ".pdf"
      local command = "zathura " .. file_name .. " &"
      vim.fn.system(command)
    end, { buffer = true })
  end,
})

-- Restore session for current dir
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  group = augroup("session"),
  callback = function()
    if vim.fn.argc() == 0 and vim.api.nvim_buf_get_name(0) == "" then
      vim.schedule(function()
        require("persistence").load()
      end)
    end
  end,
})
