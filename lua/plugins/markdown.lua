return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      local prev = opts.enabled
      opts.enabled = function()
        if vim.bo.filetype == "markdown" then
          return false
        end
        if type(prev) == "function" then
          return prev()
        end
        if prev ~= nil then
          return prev
        end
        return true
      end
      return opts
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    keys = {
      { "<leader>cp", "<cmd>MarkdownPreviewToggle<cr>", ft = "markdown", desc = "Markdown Preview" },
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.icons" },
    opts = {},
  },
}
