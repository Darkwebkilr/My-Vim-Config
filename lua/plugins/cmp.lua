return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  },
  opts = function(_, opts)
    local cmp = require("cmp")

    opts.completion = {
      completeopt = "menu,menuone,noselect",
      keyword_length = 2, -- en az 2 harf yazınca öneri gelsin
    }

    opts.performance = {
      debounce = 120, -- yazım sonrası bekleme
      throttle = 60, -- CPU yükünü azaltır
      fetching_timeout = 200,
      max_view_entries = 40, -- çok fazla öneriyi gizle
    }

    opts.experimental = {
      ghost_text = true, -- inline öneri (VS Code gibi)
    }

    opts.sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "path" },
      {
        name = "buffer",
        option = {
          keyword_length = 3,
          max_item_count = 5, -- buffer kaynaklarını kısıtla
        },
      },
    })

    return opts
  end,
}
