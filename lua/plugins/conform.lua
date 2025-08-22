return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      astro = { "prettier" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
    },
    format_on_save = {
      timeout_ms = 1000,
      lsp_fallback = true,
    },
  },
}
