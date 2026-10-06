return {
  "windwp/nvim-autopairs",
  opts = function(_, opts)
    opts.disable_filetype = { "rust" }
    return opts
  end,
}
