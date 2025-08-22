return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        -- Bu ayarlar zaten doğruydu, onları koruyoruz
        filetypes = {
          "astro",
          "css",
          "html",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "svelte",
          "vue",
        },
        init_options = {
          userLanguages = {
            astro = "html",
          },
        },

        -- DÜZELTME BURADA: Sunucunun proje kökünü nasıl bulacağını yeniden tanımlıyoruz
        root_dir = function(fname)
          local util = require("lspconfig.util")
          -- Varsayılan arama listesine .mjs ve .mts'yi de ekliyoruz
          local patterns = {
            "tailwind.config.js",
            "tailwind.config.ts",
            "tailwind.config.cjs",
            "tailwind.config.cts",
            "tailwind.config.mjs", -- İşte aradığımız dosya tipi!
            "tailwind.config.mts",
            "postcss.config.js",
            "postcss.config.ts",
            "package.json",
          }
          return util.root_pattern(unpack(patterns))(fname)
        end,
      },
    },
  },
}
