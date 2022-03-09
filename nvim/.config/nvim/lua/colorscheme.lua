vim.cmd([[
try
  colorscheme onehalfdark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme gruvbox
  set background=dark
endtry
]])
