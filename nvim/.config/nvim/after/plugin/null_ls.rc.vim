if !exists('g:lspconfig')
  finish
endif

lua <<EOF
local null_ls = require('null-ls')

local custom_on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Mappings.
  local opts = { noremap=true, silent= true }
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)


  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

local sources = {
  null_ls.builtins.diagnostics.eslint,
  null_ls.builtins.code_actions.eslint,
  null_ls.builtins.formatting.prettier,
  null_ls.builtins.formatting.stylua.with({
    filetypes = { "lua" }
    }),
  null_ls.builtins.formatting.black,

}

null_ls.setup({
  sources = sources,
  on_attach = custom_on_attach
})

EOF
