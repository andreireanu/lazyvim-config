return {
  "Julian/lean.nvim",
  event = { "BufReadPre *.lean", "BufNewFile *.lean" },
  dependencies = {},
  opts = {
    mappings = true,
    infoview = {
      orientation = "horizontal",
      height = 0.25,
    },
  },
}
