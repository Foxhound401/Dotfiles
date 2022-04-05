vim.cmd([[
  augroup _load_folds
    autocmd!
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent! loadview
  augroup END
]])
