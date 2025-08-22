-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- HTML ve Astro dosyalarında sanal indent/ghost text göstergesini kapat
-- HTML / Astro dosyaları için özel ayarlar
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "html", "astro" },
  callback = function()
    -- 1️⃣ Tab ve indent ayarları
    -- 2️⃣ Sanal göstergeleri ve ---- işaretlerini kapatma

    -- Eğer LazyVim indent pluginini devre dışı bırakmak istiyorsan:
    -- vim.g.loaded_indent_blankline = 1
    -- vim.g.loaded_ibl = 1
  end,
})
