vim.cmd([[
  augroup _load_folds
    autocmd!
    autocmd BufWinLeave *.* mkview
    autocmd BufWinEnter *.* silent! loadview
  augroup END


  set foldmethod=manual
]])

vim.cmd([[
  augroup _auto_format
    autocmd!
    autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
  augroup END
]])

vim.cmd([[
  set cc=85
]])

-- Help Vim detect helm filetype
vim.cmd([[
  augroup _helm_filetype
    autocmd BufRead,BufNewFile */templates/*.yaml,*/templates/*.tpl,*.gotmpl,helmfile*.yaml set ft=helm

    autocmd FileType helm setlocal commentstring={{/*\ %s\ */}}
  augroup END
]])

-- gdscript
vim.cmd([[
  augroup _gdscript_filetype
    autocmd BufRead,BufNewFile *.gd,*.godot,*.tres,*.tscn set ft=gdscript
  augroup END
]])
