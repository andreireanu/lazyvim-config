return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    opts.picker = opts.picker or {}
    opts.picker.sources = opts.picker.sources or {}
    opts.picker.sources.explorer = opts.picker.sources.explorer or {}
    opts.picker.sources.explorer.hidden = true
    opts.picker.sources.explorer.ignored = true
    opts.picker.sources.explorer.watch = true
    opts.picker.sources.projects = {
      confirm = function(picker, item)
        picker:close()
        vim.schedule(function()
          for _, buf in ipairs(vim.api.nvim_list_bufs()) do
            if vim.api.nvim_buf_is_valid(buf) then
              pcall(vim.api.nvim_buf_delete, buf, { force = true })
            end
          end
          vim.cmd("enew")
          vim.cmd("cd " .. vim.fn.fnameescape(item.file))
          Snacks.explorer({ cwd = item.file })
        end)
      end,
    }
    opts.terminal = opts.terminal or {}
    opts.terminal.win = opts.terminal.win or {}
    opts.terminal.win.height = 0.3
    opts.lazygit = opts.lazygit or {}
    opts.lazygit.win = {
      width = 0.95,
      height = 0.95,
    }
    return opts
  end,
}
