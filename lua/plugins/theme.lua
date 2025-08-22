return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- Arkaplanı tamamen şeffaf yapar
    transparent = true,

    -- Diğer arayüz elemanlarını da (yan menüler, pop-up pencereler) şeffaf yapar
    styles = {
      floats = "transparent",
      sidebars = "transparent",
    },
  },
}
