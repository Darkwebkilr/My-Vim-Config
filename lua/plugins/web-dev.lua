return {
  -- LSP (Language Server Protocol) Configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Inside your web-dev.lua -> "neovim/nvim-lspconfig" -> opts
      servers = {
        tsserver = {},
        html = {},
        cssls = {},
        emmet_ls = {},
        astro = {
          settings = {
            typescript = {
              tsdk = "./node_modules/typescript/lib",
            },
          },
        },
        -- Updated Tailwind CSS configuration
        tailwindcss = {
          filetypes = {
            "astro",
            "html",
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "svelte",
          },
        },
      },
    },
  },

  -- Treesitter (Syntax Highlighting)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "html",
        "css",
        "json",
        "astro",
      },
    },
  },

  -- Conform (Code Formatting)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescriptreact = { "prettierd" },
        html = { "prettierd" },
        css = { "prettierd" },
        json = { "prettierd" },
        astro = { "prettierd" },
      },
    },
  },
}
