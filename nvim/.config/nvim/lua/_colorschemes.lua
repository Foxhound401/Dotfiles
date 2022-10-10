-- vim.cmd([[
-- try
--   " colorscheme onehalfdark
--   " colorscheme gruvbox
--   colorscheme tokyonight
-- catch /^Vim\%((\a\+)\)\=:E185/
--   colorscheme gruvbox
--   set background=dark
-- endtry
-- ]])
-- 
--

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd([[
  colorscheme oxocarbon
]])
