return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      default = function()
        return { "lsp", "path", "buffer" }
      end,
    },
    completion = {
      accept = {
        auto_brackets = {
          enabled = true,
        },
      },
      documentation = {
        window = {
          border = "rounded",
        },
      },
      menu = {
        border = "rounded",
      },
    },
    keymap = {
      ["<C-j>"] = { "scroll_documentation_down", "fallback" },
      ["<C-k>"] = { "scroll_documentation_up", "fallback" },
      ["<Esc>"] = { "cancel", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
      ["<S-k>"] = { "select_prev", "fallback" },
      ["<S-j>"] = { "select_next", "fallback" },
    },
  },
}
