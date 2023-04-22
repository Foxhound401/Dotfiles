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



-- LSP Diagnostics Options Setup 
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({name = 'DiagnosticSignError', text = ''})
sign({name = 'DiagnosticSignWarn', text = ''})
sign({name = 'DiagnosticSignHint', text = ''})
sign({name = 'DiagnosticSignInfo', text = ''})

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})


-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
