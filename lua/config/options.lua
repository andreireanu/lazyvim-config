-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.relativenumber = false
vim.opt.number = true
vim.opt.spell = false
vim.opt.conceallevel = 0
vim.diagnostic.config({
  float = {
    wrap = true,
    max_width = 80,
    border = "rounded",
  },
})
vim.o.updatetime = 250
vim.o.winborder = "rounded"
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})
