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
-- fontsize config
vim.g.neovide_scale_factor = 0.65

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha ]]
require("catppuccin").setup()
vim.cmd(
  "colorscheme catppuccin"
)


