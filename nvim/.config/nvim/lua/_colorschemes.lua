vim.cmd([[
try
  " colorscheme onehalfdark
  " colorscheme gruvbox
  colorscheme tokyonight
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme gruvbox
  set background=dark
endtry
]])

-- vim.cmd([[
--   " gray
--   highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
--   " blue
--   highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
--   highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
--   " light blue
--   highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
--   highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
--   highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
--   " pink
--   highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
--   highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
--   " front
--   highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
--   highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
--   highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4
--
--   "Pmenu
--   highlight! Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#282c34 gui=NONE
--   highlight! PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
-- ]])
