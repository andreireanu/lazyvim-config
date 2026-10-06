return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.enabled = opts.enabled or function()
      return vim.bo.filetype ~= "markdown"
    end
    return opts
  end,
}
